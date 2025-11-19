uint64_t std::__hash_node_destructor<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *>>>::operator()[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 8) == 1)
  {
    v4 = *(a2 + 72);
    if (v4)
    {
      v4(0, a2 + 40, 0, 0);
    }

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return result;
  }

  v5 = **v3;

  return std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *>>>::deallocate[abi:ne200100](v5, a2);
}

uint64_t std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *(**a1 + 16);

  return v3();
}

uint64_t AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(AMCP::DAL::Ring_Buffer_Base *this, uint64_t a2)
{
  result = *(a2 + 88);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *this = 2;
  *(this + 1) = v5;
  *(this + 2) = 0;
  *(this + 24) = v6;
  return result;
}

BOOL caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(uint64_t a1, void *a2, void *a3)
{
  v3 = a3;
  v6 = (a3 + 5);
  result = AMCP::DAL::DAL_Time::operator<(a3, (a3 + 5));
  if (!result)
  {
    *a1 = *v3;
    v13 = *(v3 + 3);
    *(a1 + 16) = *(v3 + 2);
    *(a1 + 24) = v13;
    v14 = *(v3 + 4);
    *(a1 + 32) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 40) = *v6;
    v15 = *(v6 + 2);
    v16 = *(v3 + 8);
    v12 = *(v3 + 9);
    goto LABEL_17;
  }

  result = AMCP::DAL::DAL_Time::operator<(a2, (a2 + 5));
  if (!result)
  {
    *a1 = *a2;
    v17 = a2[3];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = v17;
    v18 = a2[4];
    *(a1 + 32) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 40) = *(a2 + 5);
    v15 = a2[7];
    v16 = a2[8];
    v12 = a2[9];
LABEL_17:
    *(a1 + 56) = v15;
    *(a1 + 64) = v16;
    goto LABEL_18;
  }

  if (AMCP::DAL::DAL_Time::operator<(v3, a2))
  {
    v3 = a2;
  }

  result = AMCP::DAL::DAL_Time::operator<((a2 + 5), v6);
  if (result)
  {
    v8 = (a2 + 5);
  }

  else
  {
    v8 = v6;
  }

  *a1 = *v3;
  v9 = *(v3 + 3);
  *(a1 + 16) = *(v3 + 2);
  *(a1 + 24) = v9;
  v10 = *(v3 + 4);
  *(a1 + 32) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *v8;
  v11 = *(v8 + 3);
  *(a1 + 56) = *(v8 + 2);
  *(a1 + 64) = v11;
  v12 = *(v8 + 4);
LABEL_18:
  *(a1 + 72) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v3 -= 96;
        std::__destroy_at[abi:ne200100]<AMCP::DAL::Buffer_Time_Translator::Translation_Range,0>(v3);
      }

      while (v3 != v2);
      v5 = *a1;
      v4 = **a1;
    }

    v1[1] = v2;
    if (0xAAAAAAAAAAAAAAABLL * ((v5[2] - v4) >> 5) < 0x2AAAAAAAAAAAAABLL && (v7 = *MEMORY[0x1E69E3C08]) != 0)
    {

      caulk::rt_safe_memory_resource::rt_deallocate(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void std::__destroy_at[abi:ne200100]<AMCP::DAL::Buffer_Time_Translator::Translation_Range,0>(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *(v3 - 1);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v8 = *(v3 - 3);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v9 = *(v3 - 8);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        v3 -= 112;
      }

      while (v3 != v2);
      v5 = *a1;
      v4 = **a1;
    }

    v1[1] = v2;
    if ((0x6DB6DB6DB6DB6DB7 * ((v5[2] - v4) >> 4)) < 0x24924924924924ALL && (v10 = *MEMORY[0x1E69E3C08]) != 0)
    {

      caulk::rt_safe_memory_resource::rt_deallocate(v10, v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void AMCP::DAL::PCM_File_Handler::get_name(AMCP::DAL::PCM_File_Handler *this@<X0>, std::string *a2@<X8>)
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

__n128 AMCP::DAL::PCM_File_Handler::get_format@<Q0>(AMCP::DAL::PCM_File_Handler *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 8);
  v3 = *(this + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(this + 5);
  return result;
}

OpaqueExtAudioFile *AMCP::DAL::PCM_File_Reader::close(AMCP::DAL::PCM_File_Reader *this)
{
  result = *(this + 6);
  if (result)
  {
    result = ExtAudioFileDispose(result);
    *(this + 6) = 0;
  }

  return result;
}

void AMCP::DAL::PCM_File_Reader::read_data(ExtAudioFileRef *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v89 = *MEMORY[0x1E69E9840];
  if (!a1[6])
  {
    v52 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v52 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v54 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v53 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      v55 = *v54;
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    else
    {
      v55 = *v54;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_File_Reader.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 88;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_audio_File != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v55, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_File_Reader::Read: m_audio_File is null", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v72);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("PCM_File_Reader::Read: m_audio_File is null", &ioData);
    std::logic_error::logic_error(&v59, &ioData);
    v59.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(__p, &v59);
    *&__p[24] = 0;
    *&__p[32] = 0;
    *&v76 = 0;
    DWORD2(v76) = -1;
    *__p = &unk_1F5991430;
    *&__p[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, __p);
    v82 = "virtual File_Read_Result AMCP::DAL::PCM_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
    *&v83 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_File_Reader.cpp";
    DWORD2(v83) = 88;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v61);
  }

  AMCP::DAL::Writable_Range::get_direct_write_ranges(&v72, a2);
  v7 = v72;
  v6 = v73;
  if (v72 == v73)
  {
    goto LABEL_43;
  }

  v8 = 0;
  do
  {
    v9 = *(v7 + 16);
    *buf = *v7;
    v10 = *(v7 + 40);
    v82 = *(v7 + 32);
    *&buf[16] = v9;
    v11 = *(v7 + 48);
    *&v83 = v10;
    *(&v83 + 1) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(v7 + 56);
    v13 = *(v7 + 80);
    v85 = *(v7 + 72);
    v84 = v12;
    v14 = *(v7 + 88);
    *&v86 = v13;
    *(&v86 + 1) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v7 + 96);
    v16 = *(v7 + 104);
    v87 = v15;
    v88 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = v87;
      v17 = v88;
    }

    else
    {
      v17 = 0;
    }

    v19 = *buf;
    v18 = *&buf[8];
    AMCP::DAL::Writable_Range::Direct_Write_Range::get_audio_buffer_list(&ioData, v15, v17);
    v20 = vcvtmd_s64_f64(v18 - v19);
    ioNumberFrames = v20;
    v21 = ExtAudioFileRead(a1[6], &ioNumberFrames, ioData.__r_.__value_.__l.__data_);
    if (v21)
    {
      v40 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v40 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v21);
      }

      v42 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v41 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        v43 = *v42;
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      else
      {
        v43 = *v42;
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "PCM_File_Reader.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 98;
        *&__p[18] = 2080;
        *&__p[20] = "not (the_error == noErr)";
        _os_log_error_impl(&dword_1DE1F9000, v43, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_File_Reader::PCM_File_Reader: reading the data failed", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v70);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("PCM_File_Reader::PCM_File_Reader: reading the data failed", &v59);
      std::logic_error::logic_error(&v64, &v59);
      v64.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v65, &v64);
      v67 = 0uLL;
      v68 = 0;
      v69 = -1;
      v65.__vftable = &unk_1F5991430;
      v66 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v65);
      *&__p[32] = "virtual File_Read_Result AMCP::DAL::PCM_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
      *&v76 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_File_Reader.cpp";
      DWORD2(v76) = 98;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v63);
    }

    v22 = ioNumberFrames;
    if (ioNumberFrames > v20)
    {
      v44 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v44 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v21);
      }

      v46 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v45 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        v47 = *v46;
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      else
      {
        v47 = *v46;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "PCM_File_Reader.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 99;
        *&__p[18] = 2080;
        *&__p[20] = "not (the_frames_read <= the_frames_to_read)";
        _os_log_error_impl(&dword_1DE1F9000, v47, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v70);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v59);
      std::logic_error::logic_error(&v64, &v59);
      v64.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v65, &v64);
      v67 = 0uLL;
      v68 = 0;
      v69 = -1;
      v65.__vftable = &unk_1F5991430;
      v66 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v65);
      *&__p[32] = "virtual File_Read_Result AMCP::DAL::PCM_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
      *&v76 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_File_Reader.cpp";
      DWORD2(v76) = 99;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v63);
    }

    if (!ioNumberFrames)
    {
      v48 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v48 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v21);
      }

      v50 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v49 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        v51 = *v50;
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      else
      {
        v51 = *v50;
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "PCM_File_Reader.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 100;
        *&__p[18] = 2080;
        *&__p[20] = "not (the_frames_read > 0)";
        _os_log_error_impl(&dword_1DE1F9000, v51, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v70);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v59);
      std::logic_error::logic_error(&v64, &v59);
      v64.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v65, &v64);
      v67 = 0uLL;
      v68 = 0;
      v69 = -1;
      v65.__vftable = &unk_1F5991430;
      v66 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v65);
      *&__p[32] = "virtual File_Read_Result AMCP::DAL::PCM_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
      *&v76 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_File_Reader.cpp";
      DWORD2(v76) = 100;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v63);
    }

    if (ioNumberFrames != v20)
    {
      v65 = *&buf[16];
      v66 = v82;
      v23 = v83;
      v67 = v83;
      v24 = *(&v83 + 1);
      if (*(&v83 + 1))
      {
        atomic_fetch_add_explicit((*(&v83 + 1) + 8), 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      else
      {
        *(&v23 + 1) = 0;
      }

      LODWORD(v59.__r_.__value_.__l.__data_) = 2;
      *&v59.__r_.__value_.__r.__words[1] = COERCE_UNSIGNED_INT64(v22);
      v60 = v23;
      boost::operators_impl::operator+(&v61, &v65, &v59);
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(__p, &v65, &v61);
      *&buf[16] = *__p;
      v82 = *&__p[16];
      v25 = *&__p[24];
      *&__p[24] = 0;
      *&__p[32] = 0;
      v26 = *(&v83 + 1);
      v83 = v25;
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v84 = v76;
      v85 = v77;
      v27 = v78;
      v78 = 0uLL;
      v28 = *(&v86 + 1);
      v86 = v27;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        if (*(&v78 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v78 + 1));
        }
      }

      if (*&__p[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
      }

      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      if (*(&v60 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v60 + 1));
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v57, "file_reader_node");
    v29 = v57;
    v74[0] = v58;
    *(v74 + 7) = *(&v58 + 7);
    v30 = HIBYTE(v58);
    v57 = 0;
    v58 = 0uLL;
    *__p = 0;
    *&__p[8] = v29;
    *&__p[16] = v74[0];
    *&__p[23] = *(v74 + 7);
    __p[31] = v30;
    v74[0] = 0;
    *(v74 + 7) = 0;
    *&__p[32] = 0;
    LODWORD(v76) = 0;
    AMCP::DAL::Writable_Range::commit_direct_write(*(a2 + 80), __p, buf);
    v31 = ioNumberFrames;
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&ioData, 0);
    std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&ioData.__r_.__value_.__l.__size_);
    if (v88)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    if (*(&v86 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v86 + 1));
    }

    if (*(&v83 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v83 + 1));
    }

    v8 += v31;
    v7 += 112;
  }

  while (v7 != v6);
  if (!v8)
  {
LABEL_43:
    *a3 = 0;
    *(a3 + 80) = 0;
  }

  else
  {
    *__p = *a2;
    v32 = *(a2 + 24);
    *&__p[16] = *(a2 + 16);
    *&__p[24] = v32;
    v33 = *(a2 + 32);
    *&__p[32] = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v56 = v32;
      *(&v56 + 1) = v33;
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v56 = v32;
    }

    LODWORD(ioData.__r_.__value_.__l.__data_) = 2;
    *&ioData.__r_.__value_.__l.__size_ = v8;
    ioData.__r_.__value_.__r.__words[2] = 0;
    v80 = v56;
    boost::operators_impl::operator+(&v65, __p, &ioData);
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, __p, &v65);
    if (*(&v67 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v67 + 1));
    }

    if (*(&v80 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v80 + 1));
    }

    *a3 = *buf;
    v34 = *&buf[24];
    *(a3 + 16) = *&buf[16];
    *(a3 + 24) = v34;
    v35 = v82;
    *(a3 + 32) = v82;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(a3 + 40) = v83;
    v36 = *(&v84 + 1);
    *(a3 + 56) = v84;
    *(a3 + 64) = v36;
    v37 = v85;
    *(a3 + 72) = v85;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v38 = v85;
      *(a3 + 80) = 1;
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }
    }

    else
    {
      *(a3 + 80) = 1;
    }

    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v82);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }
  }

  *buf = &v72;
  std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
  v39 = *MEMORY[0x1E69E9840];
}

void sub_1DE2F5E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (a62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a62);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  *(v63 - 240) = &a42;
  std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100]((v63 - 240));
  _Unwind_Resume(a1);
}

AMCP::DAL::DAL_Time *boost::operators_impl::operator+(AMCP::DAL::DAL_Time *a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 2) = *(a2 + 16);
  *(a1 + 3) = v3;
  v4 = *(a2 + 32);
  *(a1 + 4) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return AMCP::DAL::DAL_Time::operator+=(a1, a3);
}

void sub_1DE2F6084(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v4 = v2;
    v3 = result[4];
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v3 + 48))(v3, &v4);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::DAL::PCM_File_Reader::~PCM_File_Reader(AMCP::DAL::PCM_File_Reader *this)
{
  AMCP::DAL::PCM_File_Reader::~PCM_File_Reader(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5965388;
  v2 = *(this + 6);
  if (v2)
  {
    ExtAudioFileDispose(v2);
    *(this + 6) = 0;
  }

  *this = &unk_1F5991568;
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }
}

__n128 AMCP::DAL::DAL_Settings::at_or<std::string>(std::string *a1, void *a2, void *a3, __n128 *a4)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, a3);
  if (v6)
  {

    AMCP::Thing::convert_to<std::string>(a1, (v6 + 5));
  }

  else
  {
    result = *a4;
    *&a1->__r_.__value_.__l.__data_ = *a4;
    a1->__r_.__value_.__r.__words[2] = a4[1].n128_u64[0];
    a4->n128_u64[1] = 0;
    a4[1].n128_u64[0] = 0;
    a4->n128_u64[0] = 0;
  }

  return result;
}

__n128 boost::enable_error_info<std::system_error>(std::runtime_error *a1, uint64_t a2)
{
  v3 = std::runtime_error::runtime_error(a1, a2);
  result = *(a2 + 16);
  v3[1] = result;
  v3[3].n128_u64[0] = 0;
  v3[3].n128_u64[1] = 0;
  v3[4].n128_u32[0] = -1;
  v3->n128_u64[0] = &unk_1F5991520;
  v3[2].n128_u64[0] = &unk_1F5991548;
  v3[2].n128_u64[1] = 0;
  return result;
}

uint64_t boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = &unk_1F5992140;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = (MEMORY[0x1E69E5510] + 16);
  v4[1] = *(a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  *(a1 + 32) = &unk_1F59921B8;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  *a1 = &unk_1F5991480;
  *(a1 + 32) = &unk_1F59914B8;
  *(a1 + 72) = &unk_1F59914F0;
  v11 = 0;
  v7 = *(a2 + 40);
  if (v7)
  {
    (*(*v7 + 40))(&v10);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(&v11, v10);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v10);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt((a1 + 40), v8);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v11);
  return a1;
}

{
  *(a1 + 72) = &unk_1F5992140;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = (MEMORY[0x1E69E5510] + 16);
  v4[1] = *(a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 32) = &unk_1F59921B8;
  *(a1 + 40) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  *a1 = &unk_1F5991480;
  *(a1 + 32) = &unk_1F59914B8;
  *(a1 + 72) = &unk_1F59914F0;
  return a1;
}

void sub_1DE2F64DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(v10);
  _Unwind_Resume(a1);
}

void sub_1DE2F667C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(uint64_t a1)
{
  *(a1 + 32) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 32) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1E12C1730);
}

void boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(uint64_t a1)
{
  *(a1 + 32) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 32) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 32) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1E12C1730);
}

void virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(void *a1)
{
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(a1 + *(*a1 - 40));
}

{
  v1 = a1 + *(*a1 - 40);
  *(v1 + 4) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v1 + 5);

  std::runtime_error::~runtime_error(v1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x50uLL);
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(exception, a1);
}

void sub_1DE2F6C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(v10);
  MEMORY[0x1E12C1730](v10, v11);
  _Unwind_Resume(a1);
}

void non-virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(void *a1)
{
  v1 = (a1 - 4);
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void non-virtual thunk toboost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(void *a1)
{
  v1 = (a1 - 4);
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = (a1 - 4);
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void *std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void ADS::SliderControl::SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, int a7, _DWORD *a8, _DWORD *a9, uint64_t a10)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a4 == 1935962738)
  {
    if (a7 != 8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_SliderControl.cpp";
        v25 = 1024;
        v26 = 142;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SliderControl::GetPropertyData: wrong size for the data for kAudioSliderControlPropertyRange", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    v15 = *(a1 + 120);
    v11 = (a1 + 120);
    *buf = a1 + 120;
    v16 = (*(v15 + 16))(a1 + 120);
    buf[8] = v16;
    v11[23] = *a8;
    v11[24] = a8[1];
    *a9 = 1;
    v17 = *(v11 - 1);
    LODWORD(v22) = 1935962738;
    HIDWORD(v22) = v17;
    v23 = 0;
    std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, &v22);
    if (!v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    (*(*v11 + 24))(v11);
LABEL_9:
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  if (*a4 == 1935962742)
  {
    if (a7 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_SliderControl.cpp";
        v25 = 1024;
        v26 = 128;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SliderControl::GetPropertyData: wrong size for the data for kAudioSliderControlPropertyValue", buf, 0x12u);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      *v20 = off_1F5991DD8;
      v20[2] = 561211770;
    }

    v12 = *(a1 + 120);
    v11 = (a1 + 120);
    *buf = a1 + 120;
    v13 = (*(v12 + 16))(a1 + 120);
    buf[8] = v13;
    v11[22] = *a8;
    *a9 = 1;
    v14 = *(v11 - 1);
    LODWORD(v22) = 1935962742;
    HIDWORD(v22) = v14;
    v23 = 0;
    std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, &v22);
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v19 = *MEMORY[0x1E69E9840];

  ADS::BaseObject::SetPropertyData(a1, a2);
}

void sub_1DE2F72D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

ADS::BaseObject *ADS::SliderControl::GetPropertyData(ADS::SliderControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6, unsigned int a7, unsigned int *a8, _DWORD *a9)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4->mSelector == 1935962738)
  {
    if (a7 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "ADS_SliderControl.cpp";
        v18 = 1024;
        v19 = 108;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SliderControl::GetPropertyData: not enough space for the return value of kAudioSliderControlPropertyRange", &v16, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    v10 = (this + 120);
    result = (*(*(this + 15) + 16))(this + 120);
    *a9 = v10[23];
    a9[1] = v10[24];
    *a8 = 8;
    if (!result)
    {
      goto LABEL_9;
    }

LABEL_8:
    result = (*(*v10 + 24))(v10);
LABEL_9:
    v12 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (a4->mSelector == 1935962742)
  {
    if (a7 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "ADS_SliderControl.cpp";
        v18 = 1024;
        v19 = 99;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SliderControl::GetPropertyData: not enough space for the return value of kAudioSliderControlPropertyValue", &v16, 0x12u);
      }

      v14 = __cxa_allocate_exception(0x10uLL);
      *v14 = off_1F5991DD8;
      v14[2] = 561211770;
    }

    v10 = (this + 120);
    result = (*(*(this + 15) + 16))(this + 120);
    *a9 = v10[22];
    *a8 = 4;
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = *MEMORY[0x1E69E9840];

  return ADS::Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE2F7624(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ADS::SliderControl::GetPropertyDataSize(ADS::SliderControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6)
{
  mSelector = a4->mSelector;
  v7 = 4;
  if (a4->mSelector <= 1935962737)
  {
    if (mSelector != 1667591277 && mSelector != 1668506480)
    {
      return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
    }

    return v7;
  }

  if (mSelector == 1935962742)
  {
    return v7;
  }

  if (mSelector == 1935962738)
  {
    return 8;
  }

  return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
}

uint64_t ADS::SliderControl::IsPropertySettable(ADS::SliderControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  if (a4->mSelector > 1935962737)
  {
    if (mSelector == 1935962738 || mSelector == 1935962742)
    {
      return 1;
    }
  }

  else if (mSelector == 1667591277 || mSelector == 1668506480)
  {
    return 0;
  }

  return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
}

uint64_t ADS::SliderControl::HasProperty(ADS::SliderControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  if (a4->mSelector > 1935962737)
  {
    v5 = mSelector == 1935962738;
    v6 = 1935962742;
  }

  else
  {
    v5 = mSelector == 1667591277;
    v6 = 1668506480;
  }

  if (v5 || mSelector == v6)
  {
    return 1;
  }

  else
  {
    return ADS::BaseObject::HasProperty(this, a2, a3, a4);
  }
}

void ADS::SliderControl::~SliderControl(ADS::SliderControl *this)
{
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));
  ADS::BaseObject::~BaseObject(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));

  ADS::BaseObject::~BaseObject(this);
}

semaphore_t *ca::sync::semaphore::semaphore(semaphore_t *semaphore)
{
  *semaphore = 0;
  *(semaphore + 4) = 0;
  v2 = semaphore_create(*MEMORY[0x1E69E9A60], semaphore, 0, 0);
  ca::mach::throw_if_mach_error("semaphore_create", v2);
  *(semaphore + 4) = 1;
  *(semaphore + 1) = 0;
  return semaphore;
}

void ca::sync::semaphore::~semaphore(ca::sync::semaphore *this)
{
  v1 = atomic_load(this + 2);
  if (v1 < *(this + 3))
  {
    __assert_rtn("~semaphore", "semaphore.cpp", 22, "mCounter >= mOriginalCounter");
  }

  if (*(this + 4) == 1)
  {
    if (*this)
    {
      semaphore_destroy(*MEMORY[0x1E69E9A60], *this);
    }
  }
}

void AMCP::Meta::Device::~Device(AMCP::Meta::Device *this)
{
  AMCP::Meta::Device::~Device(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5965470;
  std::condition_variable::~condition_variable(this + 6);
  std::condition_variable::~condition_variable(this + 5);
  std::mutex::~mutex((this + 176));
  v9 = (this + 136);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 112);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v2 = *(this + 13);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  *this = &unk_1F59748E8;
  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void AMCP::Meta::Device::update_cached_properties_from_composition(AMCP::Meta::Device *this)
{
  v2 = *(this + 10);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  while (v4 != v5)
  {
    Audio_Sub_Device_Description::Audio_Sub_Device_Description(&v44, v4);
    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(Mutable, v44);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (v45)
    {
      CFRelease(v45);
    }

    if (v44)
    {
      CFRelease(v44);
    }

    v4 += 56;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&v44, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v6 = *(this + 6);
  *(this + 6) = v44;
  v44 = v6;
  if (v6)
  {
    CFRelease(v6);
  }

  Aggregate_Device_Description::get_master_subdevice_uid(&v44, *(*(this + 10) + 40));
  if (v44)
  {
    CFRelease(v44);
    Aggregate_Device_Description::get_master_subdevice_uid(&v44, *(*(this + 10) + 40));
    v7 = *(this + 12);
    *(this + 12) = v44;
    v44 = v7;
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v8 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  v44 = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = v8;
  v7 = *(this + 12);
  *(this + 12) = v9;
  v44 = v7;
  if (v7)
  {
LABEL_21:
    CFRelease(v7);
  }

LABEL_22:
  Aggregate_Device_Description::get_clock_device_uid(&v44, *(*(this + 10) + 48));
  if (v44)
  {
    CFRelease(v44);
    Aggregate_Device_Description::get_clock_device_uid(&v44, *(*(this + 10) + 48));
    v10 = *(this + 13);
    *(this + 13) = v44;
    v44 = v10;
    if (!v10)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v11 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  v44 = v11;
  if (!v11)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
    __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v12 = v11;
  v10 = *(this + 13);
  *(this + 13) = v12;
  v44 = v10;
  if (v10)
  {
LABEL_27:
    CFRelease(v10);
  }

LABEL_28:
  if (!*(this + 12))
  {
    return;
  }

  v13 = *(this + 6);
  if (v13)
  {
    Count = CFArrayGetCount(*(this + 6));
    v15 = Count;
    v16 = *(this + 6);
    if (v16)
    {
      v17 = CFArrayGetCount(*(this + 6));
      if (!v15)
      {
        goto LABEL_67;
      }

      goto LABEL_34;
    }

    v17 = 0;
    if (Count)
    {
LABEL_34:
      v18 = 0;
      while (1)
      {
        if (v13 == v16 && v17 == v18)
        {
          goto LABEL_67;
        }

        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v43, v13, v18);
        v19 = v43;
        if (v43)
        {
          v20 = CFGetTypeID(v43);
          TypeID = CFStringGetTypeID();
          v22 = v19;
          if (v20 != TypeID)
          {
            v36 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v36, "Could not construct");
            __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }

        else
        {
          v22 = 0;
        }

        applesauce::CF::StringRef::from_get(&v42, v22);
        v23 = *(this + 12);
        if (!v23)
        {
          v35 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v35, "Could not construct");
          __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(&v44, v23);
        if (!v42)
        {
          v34 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v34, "Could not construct");
          __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, v42);
        v24 = HIBYTE(v46);
        if (SHIBYTE(v46) >= 0)
        {
          v25 = HIBYTE(v46);
        }

        else
        {
          v25 = v45;
        }

        v26 = v41;
        v27 = v41;
        if ((v41 & 0x80u) != 0)
        {
          v26 = __p[1];
        }

        if (v25 != v26)
        {
          break;
        }

        if (SHIBYTE(v46) >= 0)
        {
          v28 = &v44;
        }

        else
        {
          v28 = v44;
        }

        if ((v41 & 0x80u) == 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        v30 = memcmp(v28, v29, v25) == 0;
        if (v27 < 0)
        {
          goto LABEL_58;
        }

LABEL_59:
        if (v24 < 0)
        {
          operator delete(v44);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        if (v19)
        {
          CFRelease(v19);
        }

        if (v30)
        {
          return;
        }

        if (v15 == ++v18)
        {
          goto LABEL_67;
        }
      }

      v30 = 0;
      if ((v41 & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

LABEL_58:
      operator delete(__p[0]);
      v24 = HIBYTE(v46);
      goto LABEL_59;
    }
  }

LABEL_67:
  v31 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  v44 = v31;
  if (!v31)
  {
    v37 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v37, "Could not construct");
    __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v32 = v31;
  v33 = *(this + 12);
  *(this + 12) = v32;
  v44 = v33;
  if (v33)
  {
    CFRelease(v33);
  }
}

void std::shared_mutex::~shared_mutex[abi:ne200100](uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

void *Aggregate_Device_Description::get_master_subdevice_uid(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void *Aggregate_Device_Description::get_clock_device_uid(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

CFTypeRef applesauce::CF::details::at_to<applesauce::CF::TypeRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = CFRetain(ValueAtIndex);
  *a1 = v7;
  return result;
}

void std::vector<Audio_Sub_Device_Description>::__init_with_size[abi:ne200100]<Audio_Sub_Device_Description*,Audio_Sub_Device_Description*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      std::allocator<Audio_Sub_Device_Description>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t Audio_Sub_Device_Description::Audio_Sub_Device_Description(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    CFRetain(*(a2 + 8));
  }

  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  if (v6)
  {
    CFRetain(*(a2 + 16));
  }

  *(a1 + 16) = v6;
  v7 = *(a2 + 24);
  if (v7)
  {
    CFRetain(*(a2 + 24));
  }

  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v8;
  return a1;
}

void std::vector<Audio_Sub_Device_Description>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        Audio_Sub_Device_Description::~Audio_Sub_Device_Description((v4 - 56));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void Audio_Sub_Device_Description::~Audio_Sub_Device_Description(Audio_Sub_Device_Description *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void std::allocator<Audio_Sub_Device_Description>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Aggregate_Device_Description::~Aggregate_Device_Description(Aggregate_Device_Description *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
  }

  v7 = (this + 16);
  std::vector<Audio_Sub_Device_Description>::__destroy_vector::operator()[abi:ne200100](&v7);
  v6 = *(this + 1);
  if (v6)
  {
    CFRelease(v6);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void std::__shared_ptr_emplace<Aggregate_Device_Description>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59654D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Meta::Device::update_subdevices(AMCP::Meta::Device *this)
{
  v104 = *MEMORY[0x1E69E9840];
  *(this + 8) = *(this + 7);
  v2 = *(this + 10);
  *buf = &unk_1F5966348;
  *&buf[8] = this;
  *&v101[4] = buf;
  Aggregate_Device_Description::for_each_subdevice(*(v2 + 16), *(v2 + 24), buf);
  std::__function::__value_func<void ()(Audio_Sub_Device_Description &)>::~__value_func[abi:ne200100](buf);
  v3 = *(this + 12);
  if (v3)
  {
    applesauce::CF::convert_to<std::string,0>(buf, v3);
    if ((v101[3] & 0x80000000) != 0)
    {
      v4 = *&buf[8] != 0;
      operator delete(*buf);
    }

    else
    {
      v4 = v101[3] != 0;
    }
  }

  else
  {
    v4 = 0;
  }

  master_subdevice_uid = Aggregate_Device_Description::get_master_subdevice_uid(__dst, *(*(this + 10) + 40));
  v6 = __dst[0];
  if (__dst[0])
  {
    Aggregate_Device_Description::get_master_subdevice_uid(&v102, *(*(this + 10) + 40));
    v7 = v102;
    if (!v102)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(buf, v102);
    if ((v101[3] & 0x80000000) != 0)
    {
      v8 = *&buf[8] != 0;
      operator delete(*buf);
    }

    else
    {
      v8 = v101[3] != 0;
    }

    CFRelease(v7);
    CFRelease(v6);
    if (!v4 && v8)
    {
      Aggregate_Device_Description::get_master_subdevice_uid(buf, *(*(this + 10) + 40));
      master_subdevice_uid = *(this + 12);
      *(this + 12) = *buf;
      *buf = master_subdevice_uid;
      if (master_subdevice_uid)
      {
        CFRelease(master_subdevice_uid);
      }

      goto LABEL_22;
    }
  }

  else
  {
    v8 = 0;
  }

  if (!v4 && !v8)
  {
    v9 = *(this + 7);
    if (v9 != *(this + 8))
    {
      AMCP::Core::Broker::fetch_core(buf, *(*(this + 1) + 16), *v9);
      if (*buf)
      {
        AMCP::Core::Core::get_simple_required_property<1969841184u>(__dst, *buf);
        v10 = *(this + 12);
        *(this + 12) = __dst[0];
        __dst[0] = v10;
        if (v10)
        {
          CFRelease(v10);
        }
      }

      master_subdevice_uid = *&buf[8];
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }
  }

LABEL_22:
  v11 = (this + 104);
  if (*(this + 13))
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(master_subdevice_uid);
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

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      if (!*v11)
      {
        v88 = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(v88);
        __cxa_throw(v88, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(__dst, *v11);
      if (v98 >= 0)
      {
        v80 = __dst;
      }

      else
      {
        v80 = __dst[0];
      }

      *buf = 136315650;
      *&buf[4] = "Meta_Device_Core.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 454;
      v100 = 2080;
      *v101 = v80;
      _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d Pick clock device. Previous clock was: %s", buf, 0x1Cu);
      if (SHIBYTE(v98) < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  Aggregate_Device_Description::get_clock_device_uid(&v102, *(*(this + 10) + 48));
  v16 = *(this + 12);
  if (v16)
  {
    CFRetain(*(this + 12));
  }

  v17 = 0;
  *(&v102 + 1) = v16;
  while (1)
  {
    v18 = *(&v102 + v17);
    if (v18)
    {
      break;
    }

LABEL_39:
    v17 += 8;
    if (v17 == 16)
    {
      v19 = 1;
      goto LABEL_54;
    }
  }

  CFRetain(*(&v102 + v17));
  cf = v18;
  AMCP::Meta::Device::get_device_core(&v93, *(*(this + 1) + 16), &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v93 || AMCP::Core::Core::get_simple_required_property<1668047219u>(v93) == 1633773415)
  {
    if (v94)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v94);
    }

    goto LABEL_39;
  }

  v20 = *v11;
  v21 = *(&v102 + v17);
  *v11 = v21;
  if (v21)
  {
    v21 = CFRetain(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v22 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v21);
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

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v83 = applesauce::CF::StringRef::operator->(this + 13);
    applesauce::CF::convert_to<std::string,0>(__dst, *v83);
    v84 = v98 >= 0 ? __dst : __dst[0];
    *buf = 136315650;
    *&buf[4] = "Meta_Device_Core.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 468;
    v100 = 2080;
    *v101 = v84;
    _os_log_debug_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEBUG, "%32s:%-5d New clock: %s", buf, 0x1Cu);
    if (SHIBYTE(v98) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if (v94)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v94);
  }

  v19 = 0;
LABEL_54:
  for (i = 8; i != -8; i -= 8)
  {
    v27 = *(&v102 + i);
    if (v27)
    {
      CFRelease(v27);
    }
  }

  if (v19)
  {
    v28 = *(this + 7);
    v29 = *(this + 8);
    while (v28 != v29)
    {
      AMCP::Core::Broker::fetch_core(&v102, *(*(this + 1) + 16), *v28);
      if (v102)
      {
        AMCP::Core::Core::get_simple_required_property<1969841184u>(buf, v102);
        v30 = *v11;
        v31 = *buf;
        *v11 = *buf;
        *buf = v30;
        if (v30)
        {
          CFRelease(v30);
          v31 = *v11;
        }

        if (v31)
        {
          v72 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v72 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v30);
          }

          v74 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v73 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
            v75 = *v74;
            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
          }

          else
          {
            v75 = *v74;
          }

          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            v85 = applesauce::CF::StringRef::operator->(this + 13);
            applesauce::CF::convert_to<std::string,0>(__dst, *v85);
            v86 = v98 >= 0 ? __dst : __dst[0];
            *buf = 136315650;
            *&buf[4] = "Meta_Device_Core.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 483;
            v100 = 2080;
            *v101 = v86;
            _os_log_debug_impl(&dword_1DE1F9000, v75, OS_LOG_TYPE_DEBUG, "%32s:%-5d New clock: %s", buf, 0x1Cu);
            if (SHIBYTE(v98) < 0)
            {
              operator delete(__dst[0]);
            }
          }

          if (*(&v102 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v102 + 1));
          }

          goto LABEL_77;
        }
      }

      if (*(&v102 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v102 + 1));
      }

      ++v28;
    }

    v32 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    *buf = v32;
    if (!v32)
    {
      v90 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v90, "Could not construct");
      __cxa_throw(v90, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v33 = *v11;
    *v11 = v32;
    *buf = v33;
    if (v33)
    {
      CFRelease(v33);
    }

    v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v34 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v32);
    }

    v36 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = *v36;
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    else
    {
      v37 = *v36;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      Aggregate_Device_Description::get_uid(&v102, **(this + 10));
      v81 = v102;
      if (!v102)
      {
        v91 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v91, "Could not construct");
        __cxa_throw(v91, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(__dst, v102);
      if (v98 >= 0)
      {
        v82 = __dst;
      }

      else
      {
        v82 = __dst[0];
      }

      *buf = 136315650;
      *&buf[4] = "Meta_Device_Core.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 490;
      v100 = 2080;
      *v101 = v82;
      _os_log_debug_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_DEBUG, "%32s:%-5d No viable clock device available for aggregate: %s", buf, 0x1Cu);
      if (SHIBYTE(v98) < 0)
      {
        operator delete(__dst[0]);
      }

      CFRelease(v81);
    }
  }

LABEL_77:
  v38 = *v11;
  if (v38)
  {
    CFRetain(v38);
  }

  *&v102 = v38;
  AMCP::Meta::Device::get_device_core(buf, *(*(this + 1) + 16), &v102);
  if (v102)
  {
    CFRelease(v102);
  }

  if (*buf)
  {
    __dst[0] = 0x676C6F626E737274;
    LODWORD(__dst[1]) = 0;
    v39 = AMCP::Core::Core::call_operation_function<double>(*buf, __dst);
    if (v39 != *(this + 20))
    {
      *(this + 20) = v39;
    }
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (*(this + 7) == *(this + 8))
  {
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 14);
    v71 = *MEMORY[0x1E69E9840];

    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 17);
  }

  else
  {
    Aggregate_Device_Description::is_stacked(buf, *(*(this + 10) + 64));
    v40 = *buf;
    if (!*buf)
    {
      goto LABEL_98;
    }

    Aggregate_Device_Description::is_stacked(__dst, *(*(this + 10) + 64));
    v41 = __dst[0];
    if (!__dst[0])
    {
      v89 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v89, "Could not construct");
      __cxa_throw(v89, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v42 = applesauce::CF::convert_to<BOOL,0>(__dst[0]);
    CFRelease(v41);
    CFRelease(v40);
    if (v42)
    {
      AMCP::Core::Broker::fetch_core(&v102, *(*(this + 1) + 16), **(this + 7));
      AMCP::Core::Core::get_simple_required_property<1937009955u>(buf, v102, 0x6F757470u);
      v43 = *buf;
      if (*buf != *&buf[8])
      {
        v44 = **buf;
        LODWORD(v93) = **buf;
        __dst[1] = 0;
        v98 = 0;
        __dst[0] = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(__dst, &v93, &v93 + 4, 1uLL);
        v45 = __dst[0];
        AMCP::Meta::Device::remove_meta_streams_if_not_found(this + 14, __dst[0], __dst[1]);
        if (v45)
        {
          operator delete(v45);
        }

        AMCP::Core::Broker::fetch_core(__dst, *(*(this + 1) + 16), v44);
        if (__dst[0])
        {
          v46 = *(this + 14);
          v47 = *(this + 15);
          if (v46 != v47)
          {
            while (*(*v46 + 8) != v44)
            {
              v46 += 2;
              if (v46 == v47)
              {
                goto LABEL_166;
              }
            }
          }

          if (v46 == v47)
          {
LABEL_166:
            v78 = *(this + 8);
            if (*(&v78 + 1))
            {
              atomic_fetch_add_explicit((*(&v78 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }

          v76 = *v46;
          v77 = v46[1];
          if (v77)
          {
            atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::Meta::Stream::update_core(v76);
          if (v77)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v77);
          }
        }

        if (__dst[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__dst[1]);
        }
      }

      if (v43)
      {
        operator delete(v43);
      }

      if (*(&v102 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v102 + 1));
      }
    }

    else
    {
LABEL_98:
      v98 = 0;
      v48 = 0uLL;
      *__dst = 0u;
      v103 = 0;
      v102 = 0u;
      v49 = *(this + 7);
      v50 = *(this + 8);
      if (v49 != v50)
      {
        do
        {
          AMCP::Core::Broker::fetch_core(&cf, *(*(this + 1) + 16), *v49);
          v51 = cf;
          AMCP::Core::Core::get_simple_required_property<1937009955u>(buf, cf, 0x696E7074u);
          v52 = *buf;
          std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(__dst, __dst[1], *buf, *&buf[8], (*&buf[8] - *buf) >> 2);
          AMCP::Core::Core::get_simple_required_property<1937009955u>(&v93, v51, 0x6F757470u);
          v53 = v93;
          std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(&v102, *(&v102 + 1), v93, v94, (v94 - v93) >> 2);
          if (v53)
          {
            operator delete(v53);
          }

          if (v52)
          {
            operator delete(v52);
          }

          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          ++v49;
        }

        while (v49 != v50);
        v48 = *__dst;
      }

      v54 = v48;
      AMCP::Meta::Device::remove_meta_streams_if_not_found(this + 17, v48, *(&v48 + 1));
      v55 = *(&v102 + 1);
      __p = v102;
      AMCP::Meta::Device::remove_meta_streams_if_not_found(this + 14, v102, *(&v102 + 1));
      if (v54 != *(&v54 + 1))
      {
        v56 = 1;
        v57 = v54;
        do
        {
          AMCP::Core::Broker::fetch_core(&v93, *(*(this + 1) + 16), *v57);
          if (v93)
          {
            AMCP::Core::Core::get_simple_required_property<1718444404u>(buf, v93);
            v58 = *(this + 17);
            v59 = *(this + 18);
            if (v58 != v59)
            {
              while (*(*v58 + 8) != *v57)
              {
                v58 += 2;
                if (v58 == v59)
                {
                  goto LABEL_119;
                }
              }
            }

            if (v58 == v59)
            {
LABEL_119:
              v62 = *(this + 8);
              if (*(&v62 + 1))
              {
                atomic_fetch_add_explicit((*(&v62 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              operator new();
            }

            v60 = *v58;
            v61 = v58[1];
            if (v61)
            {
              atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *(v60 + 9) = v56;
            AMCP::Meta::Stream::update_core(v60);
            if (v61)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v61);
            }

            v56 += *&v101[8];
          }

          if (v94)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v94);
          }

          ++v57;
        }

        while (v57 != *(&v54 + 1));
      }

      if (__p != v55)
      {
        v63 = 1;
        v64 = __p;
        do
        {
          v65 = *v64;
          AMCP::Core::Broker::fetch_core(&v93, *(*(this + 1) + 16), *v64);
          if (v93)
          {
            AMCP::Core::Core::get_simple_required_property<1718444404u>(buf, v93);
            v66 = *(this + 14);
            v67 = *(this + 15);
            if (v66 != v67)
            {
              while (*(*v66 + 8) != v65)
              {
                v66 += 2;
                if (v66 == v67)
                {
                  goto LABEL_139;
                }
              }
            }

            if (v66 == v67)
            {
LABEL_139:
              v70 = *(this + 8);
              if (*(&v70 + 1))
              {
                atomic_fetch_add_explicit((*(&v70 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              operator new();
            }

            v68 = *v66;
            v69 = v66[1];
            if (v69)
            {
              atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *(v68 + 9) = v63;
            AMCP::Meta::Stream::update_core(v68);
            if (v69)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v69);
            }

            v63 += *&v101[8];
          }

          if (v94)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v94);
          }

          ++v64;
        }

        while (v64 != v55);
      }

      if (__p)
      {
        operator delete(__p);
      }

      if (v54)
      {
        operator delete(v54);
      }
    }

    v79 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE2F9474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *Aggregate_Device_Description::is_stacked(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void AMCP::Meta::Device::remove_meta_streams_if_not_found(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4;
  v17 = 0;
  v18 = 0;
  __p = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, a2, a3, (a3 - a2) >> 2);
  if (v5 != v4)
  {
    v7 = v5;
    while (__p != v17)
    {
      v8 = __p;
      while (*v8 != *(*v7 + 32))
      {
        if (++v8 == v17)
        {
          v5 = v7;
          goto LABEL_10;
        }
      }

      v7 += 2;
      if (v7 == v4)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_10:
  if (v5 != v4)
  {
    v9 = v5 + 2;
    v6 = v5;
    while (v9 != v4)
    {
      v10 = __p;
      if (__p != v17)
      {
        while (*v10 != *(*v9 + 32))
        {
          if (++v10 == v17)
          {
            goto LABEL_20;
          }
        }

        v11 = *v9;
        *v9 = 0;
        v9[1] = 0;
        v12 = v6[1];
        *v6 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v6 += 2;
      }

LABEL_20:
      v9 += 2;
    }
  }

LABEL_21:
  v13 = a1[1];
  if (v6 != v13)
  {
    while (v13 != v6)
    {
      v14 = *(v13 - 1);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v13 -= 2;
    }

    a1[1] = v6;
  }

  v15 = __p;
  if (__p)
  {

    operator delete(v15);
  }
}

void std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 2;
    if (v14)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v14);
    }

    v32 = 4 * v15;
    v33 = 4 * a5;
    v34 = (4 * v15);
    do
    {
      v35 = *v6++;
      *v34++ = v35;
      v33 -= 4;
    }

    while (v33);
    memcpy((v32 + 4 * a5), __dst, *(a1 + 8) - __dst);
    v36 = *a1;
    v37 = v32 + 4 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v38 = (__dst - v36);
    v39 = (v32 - (__dst - v36));
    memcpy(v39, v36, v38);
    v40 = *a1;
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v40)
    {

      operator delete(v40);
    }

    return;
  }

  v16 = v10 - __dst;
  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v28 = &__dst[4 * a5];
    v29 = &v10[-4 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 4;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v28);
    }

    v27 = 4 * a5;
    v25 = __dst;
    v26 = v6;
    goto LABEL_29;
  }

  v19 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[4 * a5];
    v22 = &v10[v19];
    if (&v20[-4 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -4 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 4;
        v23 += 4;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[4 * a5], __dst, v20 - v21);
    }

    if (v10 != __dst)
    {
      v25 = __dst;
      v26 = v6;
      v27 = v10 - __dst;
LABEL_29:

      memmove(v25, v26, v27);
    }
  }
}

__n128 AMCP::Core::Core::get_simple_required_property<1718444404u>(uint64_t a1, AMCP::Core::Core *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v16 = 0x676C6F62666D6174;
  v17 = 0;
  has_property = AMCP::Core::Core::has_property(this, &v16);
  if (!has_property)
  {
    goto LABEL_14;
  }

  AMCP::Core::Core::find_operation(&v20, this, &v16);
  v5 = v20;
  if (!v20)
  {
    goto LABEL_9;
  }

  v6 = AMCP::Implementation::get_type_marker<std::function<CA::StreamDescription ()(void)>>();
  if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
  {
    AMCP::Core::Operation::call_function<CA::StreamDescription>(buf, v5);
    v7 = 0;
    LOBYTE(v5) = buf[0];
    v26 = *&buf[1];
    *v27 = *&buf[17];
    *&v27[15] = *&buf[32];
    goto LABEL_10;
  }

  v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v8))
  {
    AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v5);
    AMCP::Thing::convert_to<CA::StreamDescription>(__p, buf);
    LOBYTE(v5) = __p[0];
    v26 = *&__p[1];
    *v27 = *v19;
    *&v27[15] = *&v19[15];
    if (*&buf[32])
    {
      (*&buf[32])(0, buf, 0, 0);
    }

    v7 = 0;
  }

  else
  {
LABEL_9:
    v7 = 1;
  }

LABEL_10:
  has_property = v21;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v7)
  {
LABEL_14:
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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
      v19[6] = 4;
      strcpy(__p, "fmat");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      *&buf[18] = 2080;
      *&buf[20] = "optional_value.operator BOOL() == true";
      *&buf[28] = 2080;
      *&buf[30] = __p;
      *&buf[38] = 1024;
      v23 = 1735159650;
      v24 = 1024;
      v25 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if ((v19[6] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    abort();
  }

  *a1 = v5;
  result = v26;
  v10 = *v27;
  *(a1 + 1) = v26;
  *(a1 + 17) = v10;
  *(a1 + 32) = *&v27[15];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE2F9E20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void std::__shared_ptr_emplace<AMCP::Meta::Stream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59663D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Core::Operation::call_function<CA::StreamDescription>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<CA::StreamDescription ()(void)>>();
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = CA::StreamDescription, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<CA::StreamDescription ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = CA::StreamDescription, Argument_Types = <>]";
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

void sub_1DE2FA490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<CA::StreamDescription ()(void)>>()
{
  v0 = &HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = &HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = &HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return v0[49];
}

uint64_t AMCP::Meta::Device::get_device_core(void *a1, std::__shared_mutex_base *a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F59662C8;
  v5[1] = a3;
  v5[3] = v5;
  AMCP::Core::Broker::fetch_first_core_if (a1, a2, v5);
  result = std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

double AMCP::Core::Core::call_operation_function<double>(AMCP::Address *a1, unsigned int *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v29 = "Core.h";
      v30 = 1024;
      v31 = 198;
      v32 = 2080;
      v33 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  AMCP::Core::Core::find_operation(&v26, a1, a2);
  if (!v26)
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
      v29 = "Core.h";
      v30 = 1024;
      v31 = 202;
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
    v34 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = double, Argument_Types = <>]";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v36 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  AMCP::Core::Operation::call_function<double>(v26);
  v5 = v4;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1DE2FA96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, std::__shared_weak_count *a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v37 - 144);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v36)
  {
    __cxa_free_exception(v35);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a33);
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Device::get_device_core(applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Meta::Device::get_device_core(applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device15get_device_coreEN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::Meta::Device::get_device_core(applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Meta::Device::get_device_core(applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x61646576, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1969841184u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t std::__function::__func<AMCP::Meta::Device::get_device_core(applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Meta::Device::get_device_core(applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59662C8;
  a2[1] = v2;
  return result;
}

void *Aggregate_Device_Description::get_uid(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

uint64_t Aggregate_Device_Description::for_each_subdevice(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *(a3 + 24);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v6 + 48))(v6, v5);
      v5 += 56;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(Audio_Sub_Device_Description &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Meta::Device::assemble_active_subdevice_list(void)::$_0,std::allocator<AMCP::Meta::Device::assemble_active_subdevice_list(void)::$_0>,void ()(Audio_Sub_Device_Description &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device30assemble_active_subdevice_listEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::assemble_active_subdevice_list(void)::$_0,std::allocator<AMCP::Meta::Device::assemble_active_subdevice_list(void)::$_0>,void ()(Audio_Sub_Device_Description &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v48 = v4;
  AMCP::Meta::Device::get_device_core(&v49, *(v3[1] + 16), &v48);
  if (v48)
  {
    CFRelease(v48);
  }

  v5 = v49;
  if (v49)
  {
    if (AMCP::Core::Core::get_simple_required_property<1668047219u>(v49) != 1633773415)
    {
      v6 = *v5;
      v8 = v3[8];
      v7 = v3[9];
      if (v8 >= v7)
      {
        v10 = v3[7];
        v11 = v8 - v10;
        v12 = (v8 - v10) >> 2;
        v13 = v12 + 1;
        if ((v12 + 1) >> 62)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v14 = v7 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (v8 - v10) >> 2;
        v17 = (4 * v12);
        v18 = (4 * v12 - 4 * v16);
        *v17 = v6;
        v9 = v17 + 1;
        memcpy(v18, v10, v11);
        v19 = v3[7];
        v3[7] = v18;
        v3[8] = v9;
        v3[9] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = v6;
        v9 = v8 + 4;
      }

      v3[8] = v9;
    }

    v37 = 0x676C6F626C6E616DLL;
    v38 = 0;
    AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&cf, v5, &v37);
    v20 = v47;
    if (v47 == 1)
    {
      v21 = *(a2 + 8);
      v22 = cf;
      *(a2 + 8) = cf;
      if (v22)
      {
        CFRetain(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    AMCP::Core::Core::get_simple_required_property<1937009955u>(&v44, v5, 0x696E7074u);
    AMCP::Core::Core::get_simple_required_property<1937009955u>(&v42, v5, 0x6F757470u);
    v23 = v44;
    v24 = v45;
    if (v44 == v45)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0;
      v26 = v44;
      do
      {
        AMCP::Core::Broker::fetch_core(&valuePtr, *(v3[1] + 16), *v26);
        if (valuePtr)
        {
          AMCP::Core::Core::get_simple_required_property<1718444404u>(&v37, valuePtr);
          v25 += v39;
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        ++v26;
      }

      while (v26 != v24);
    }

    LODWORD(valuePtr) = v25;
    v27 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v37 = v27;
    if (!v27)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v28 = *(a2 + 16);
    *(a2 + 16) = v27;
    v37 = v28;
    if (v28)
    {
      CFRelease(v28);
    }

    v29 = v42;
    v30 = v43;
    if (v42 == v43)
    {
      v31 = 0;
    }

    else
    {
      v31 = 0;
      v32 = v42;
      do
      {
        AMCP::Core::Broker::fetch_core(&valuePtr, *(v3[1] + 16), *v32);
        if (valuePtr)
        {
          AMCP::Core::Core::get_simple_required_property<1718444404u>(&v37, valuePtr);
          v31 += v39;
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        ++v32;
      }

      while (v32 != v30);
    }

    LODWORD(valuePtr) = v31;
    v33 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v37 = v33;
    if (!v33)
    {
      v36 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v36, "Could not construct");
      __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v34 = *(a2 + 24);
    *(a2 + 24) = v33;
    v37 = v34;
    if (v34)
    {
      CFRelease(v34);
    }

    if (v29)
    {
      operator delete(v29);
    }

    if (v23)
    {
      operator delete(v23);
    }

    if (v20 && cf)
    {
      CFRelease(cf);
    }
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }
}

void sub_1DE2FB090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v24 = *(v22 - 72);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Meta::Device::assemble_active_subdevice_list(void)::$_0,std::allocator<AMCP::Meta::Device::assemble_active_subdevice_list(void)::$_0>,void ()(Audio_Sub_Device_Description &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5966348;
  a2[1] = v2;
  return result;
}

void sub_1DE2FB2C4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE2FB3F0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Meta::Device::update_core_common(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  Aggregate_Device_Description::get_name(&v5, *(*(a1 + 80) + 8));
  v2 = v5;
  if (v5)
  {
    Aggregate_Device_Description::get_name(&cf, *(*(a1 + 80) + 8));
    CFRelease(v2);
  }

  else
  {
    cf = CFStringCreateWithBytes(0, "Meta Device", 11, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v6 = 0x676C6F626C6E616DLL;
  LODWORD(v7) = 0;
  AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(&v5, &v6, cf);
}

void sub_1DE2FC8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, const void *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void *Aggregate_Device_Description::get_name(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(double const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 47);
}

uint64_t std::__function::__value_func<void ()(double const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_setter<double>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE2FCED8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<CA::ValueRangeList ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 55);
}

uint64_t std::__function::__value_func<CA::ValueRangeList ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<CA::ValueRangeList ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE2FD204(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_1DE2FD364(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__value_func<CA::ChannelLayout ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<CA::ChannelLayout ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE2FD63C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<applesauce::CF::ArrayRef ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 24);
}

uint64_t std::__function::__value_func<applesauce::CF::ArrayRef ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<applesauce::CF::ArrayRef ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::ArrayRef const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 26);
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::ArrayRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(applesauce::CF::ArrayRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<applesauce::CF::DictionaryRef ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 59);
}

uint64_t std::__function::__value_func<applesauce::CF::DictionaryRef ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<applesauce::CF::DictionaryRef ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE2FDC40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::DictionaryRef const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 61);
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE2FDF6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::StringRef const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 40);
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE2FE298(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(uint64_t a1, std::__shared_weak_count *this, uint64_t a3, int a4)
{
  v10 = *MEMORY[0x1E69E9840];
  std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v5, a1, this);
  v6 = a4;
  v7 = 1819569763;
  v8 = a4;
  v9 = 0;
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE2FE430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(uint64_t a1, std::__shared_weak_count *this, uint64_t a3, int a4)
{
  v10 = *MEMORY[0x1E69E9840];
  std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v5, a1, this);
  v6 = a4;
  v7 = 1935763060;
  v8 = a4;
  v9 = 0;
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE2FE600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE4$_16"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16>,BOOL ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5966248;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5966248;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_16>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5966248;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE4$_15"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59661C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59661C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59661C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE4$_14"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14>,BOOL ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5966148;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5966148;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_14>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5966148;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device35make_clock_device_delegate_propertyILj1935763060EEEvRNS_4Core13Operation_SetEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 104);
  if (v3)
  {
    CFRetain(*(v2 + 104));
  }

  cf = v3;
  AMCP::Meta::Device::get_device_core(&v9, *(*(v2 + 8) + 16), &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    v4 = *(a1 + 24);
    v7[0] = 1935763060;
    v7[1] = v4;
    v7[2] = 0;
    v5 = AMCP::Core::Core::call_operation_function<unsigned int>(v9, v7);
  }

  else
  {
    v5 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v5;
}

void sub_1DE2FED58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Core::Core::call_operation_function<unsigned int>(AMCP::Address *a1, unsigned int *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      v28 = "Core.h";
      v29 = 1024;
      v30 = 198;
      v31 = 2080;
      v32 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  AMCP::Core::Core::find_operation(&v25, a1, a2);
  if (!v25)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      v28 = "Core.h";
      v29 = 1024;
      v30 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v16);
    std::runtime_error::runtime_error(&v17, &v16);
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v33 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = unsigned int, Argument_Types = <>]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v35 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v4 = AMCP::Core::Operation::call_function<unsigned int>(v25);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE2FF0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 145));
  v27 = *(v25 - 136);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59660C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59660C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1935763060u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59660C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device35make_clock_device_delegate_propertyILj1819569763EEEvRNS_4Core13Operation_SetEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 104);
  if (v3)
  {
    CFRetain(*(v2 + 104));
  }

  cf = v3;
  AMCP::Meta::Device::get_device_core(&v9, *(*(v2 + 8) + 16), &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    v4 = *(a1 + 24);
    v7[0] = 1819569763;
    v7[1] = v4;
    v7[2] = 0;
    v5 = AMCP::Core::Core::call_operation_function<unsigned int>(v9, v7);
  }

  else
  {
    v5 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v5;
}

void sub_1DE2FF410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5966048;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5966048;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1},std::allocator<void AMCP::Meta::Device::make_clock_device_delegate_property<1819569763u>(AMCP::Core::Operation_Set &,unsigned int)::{lambda(void)#1}>,unsigned int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5966048;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3>,void ()(applesauce::CF::StringRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  cf[15] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  cf[0] = v3;
  v4 = *(a1 + 8);
  std::__shared_mutex_base::lock((v4 + 176));
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(*(a1 + 8) + 104), cf);
  std::__shared_mutex_base::unlock((v4 + 176));
  if (v5)
  {
    operator new();
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE2FF7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a20);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a10);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a16);
  applesauce::CF::StringRef::~StringRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEENK3$_3clEN10applesauce2CF9StringRefEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if (!is_valid)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
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
      *v17 = 136315650;
      *&v17[4] = "Meta_Device_Core.cpp";
      v18 = 1024;
      v19 = 369;
      v20 = 2080;
      v21 = "expiration_check.is_valid()";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", v17, 0x1Cu);
    }

    abort();
  }

  v3 = (**(a1 + 40) + 176);
  *v17 = v3;
  v17[8] = 1;
  std::__shared_mutex_base::lock(v3);
  v4 = *(a1 + 48);
  v5 = **(a1 + 40);
  v6 = *(v5 + 104);
  v7 = *v4;
  *(v5 + 104) = *v4;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v8 = **(a1 + 40);
  v9 = *(v8 + 80);
  v10 = *(v8 + 104);
  if (!v10)
  {
    v11 = *(v9 + 48);
    *(v9 + 48) = 0;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  CFRetain(*(v8 + 104));
  v11 = *(v9 + 48);
  *(v9 + 48) = v10;
  CFRetain(v10);
  if (v11)
  {
LABEL_10:
    CFRelease(v11);
  }

LABEL_11:
  if (v10)
  {
    CFRelease(v10);
  }

  AMCP::Meta::Device::update_cached_properties_from_composition(**(a1 + 40));
  AMCP::Meta::Device::update_subdevices(**(a1 + 40));
  AMCP::Meta::Device::update_core(**(a1 + 40));
  std::__shared_mutex_base::unlock(v3);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE2FFA80(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Meta::Device::update_core(AMCP::Meta::Device *this)
{
  AMCP::Core::Broker::fetch_core(&v2, *(*(this + 1) + 16), *(this + 10));
  if (v2)
  {
    AMCP::Meta::Device::update_core_common(this);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1DE2FFBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

uint64_t std::unique_lock<caulk::concurrent::shared_spin_lock>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    caulk::concurrent::shared_spin_lock::unlock(*a1);
  }

  return a1;
}

void *AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(AMCP::Core::Core *a1, const AMCP::Address *a2, unsigned int *a3)
{
  if (!AMCP::Core::Core::has_property(a1, a2))
  {
    return *a3;
  }

  AMCP::Core::Core::find_operation(&v13, a1, a2);
  v6 = v13;
  if (v13)
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<unsigned int ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7))
    {
      v6 = AMCP::Core::Operation::call_function<unsigned int>(v6);
LABEL_5:
      v8 = 0;
      goto LABEL_10;
    }

    v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v9))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v11, v6);
      v6 = AMCP::Thing::convert_to<unsigned int>(v11);
      if (v12)
      {
        v12(0, v11, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v8 = 1;
LABEL_10:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v8)
  {
    return *a3;
  }

  return v6;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5965FB8;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965FB8;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965FB8;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3>,void ()(applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5965F48;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5965F48;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_3>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5965F48;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13>,applesauce::CF::StringRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE4$_13"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13>,applesauce::CF::StringRef ()(void)>::operator()@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  v4 = *(v3 + 104);
  if (v4)
  {
    result = CFRetain(*(v3 + 104));
  }

  *a2 = v4;
  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13>,applesauce::CF::StringRef ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13>,applesauce::CF::StringRef ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13>,applesauce::CF::StringRef ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5965EC8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965EC8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_13>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965EC8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIN10applesauce2CF9StringRefEEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  AMCP::Thing::convert_to<applesauce::CF::StringRef>(&cf, a2);
  v3 = AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::StringRef const&)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>((a1 + 8), v3);
  if (!v4)
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
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const applesauce::CF::StringRef &>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::StringRef const&)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const applesauce::CF::StringRef &>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE3007E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a11)
  {
    a12 = a11;
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597B108;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597B108;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597B108;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(applesauce::CF::StringRef const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::StringRef const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::StringRef const&)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(applesauce::CF::StringRef const&)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(applesauce::CF::StringRef const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,void ()(applesauce::CF::StringRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  cf[15] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  cf[0] = v3;
  v4 = *(a1 + 8);
  std::__shared_mutex_base::lock((v4 + 176));
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(*(a1 + 8) + 96), cf);
  std::__shared_mutex_base::unlock((v4 + 176));
  if (v5)
  {
    operator new();
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE300E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a20);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a10);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a16);
  applesauce::CF::StringRef::~StringRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEENK3$_2clEN10applesauce2CF9StringRefEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if (!is_valid)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
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
      *v17 = 136315650;
      *&v17[4] = "Meta_Device_Core.cpp";
      v18 = 1024;
      v19 = 339;
      v20 = 2080;
      v21 = "expiration_check.is_valid()";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", v17, 0x1Cu);
    }

    abort();
  }

  v3 = (**(a1 + 40) + 176);
  *v17 = v3;
  v17[8] = 1;
  std::__shared_mutex_base::lock(v3);
  v4 = *(a1 + 48);
  v5 = **(a1 + 40);
  v6 = *(v5 + 96);
  v7 = *v4;
  *(v5 + 96) = *v4;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v8 = **(a1 + 40);
  v9 = *(v8 + 80);
  v10 = *(v8 + 96);
  if (!v10)
  {
    v11 = *(v9 + 40);
    *(v9 + 40) = 0;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  CFRetain(*(v8 + 96));
  v11 = *(v9 + 40);
  *(v9 + 40) = v10;
  CFRetain(v10);
  if (v11)
  {
LABEL_10:
    CFRelease(v11);
  }

LABEL_11:
  if (v10)
  {
    CFRelease(v10);
  }

  AMCP::Meta::Device::update_cached_properties_from_composition(**(a1 + 40));
  AMCP::Meta::Device::update_subdevices(**(a1 + 40));
  AMCP::Meta::Device::update_core(**(a1 + 40));
  std::__shared_mutex_base::unlock(v3);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE3010A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5965E38;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965E38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::operator() const(applesauce::CF::StringRef)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965E38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,void ()(applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5965DC8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5965DC8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5965DC8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE4$_12"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::operator()@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  v4 = *(v3 + 96);
  if (v4)
  {
    result = CFRetain(*(v3 + 96));
  }

  *a2 = v4;
  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5965D48;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965D48;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965D48;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIN10applesauce2CF13DictionaryRefEEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  AMCP::Thing::convert_to<applesauce::CF::DictionaryRef>(&cf, a2);
  v3 = AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::DictionaryRef const&)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>((a1 + 8), v3);
  if (!v4)
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
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const applesauce::CF::DictionaryRef &>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::DictionaryRef const&)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const applesauce::CF::DictionaryRef &>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE301B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a11)
  {
    a12 = a11;
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5980DB0;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5980DB0;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5980DB0;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(applesauce::CF::DictionaryRef const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::DictionaryRef const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::DictionaryRef const&)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(applesauce::CF::DictionaryRef const&)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(applesauce::CF::DictionaryRef const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(applesauce::CF::DictionaryRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = a1 + 8;
  cf = v3;
  v5 = (*(a1 + 8) + 176);
  v22.data = v5;
  LOBYTE(v22.length) = 1;
  std::__shared_mutex_base::lock(v5);
  v7 = *(*v4 + 80);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  if (cf)
  {
    CFRetain(cf);
    v22.isa = cf;
    v6 = applesauce::CF::details::has_key<__CFString const*&>(cf, @"uid");
    if (v6)
    {
      applesauce::CF::details::find_at_key<applesauce::CF::StringRef,__CFString const*&>(buf, cf, @"uid");
      v8 = v17[0];
      v17[0] = *buf;
      *buf = v8;
      if (v8)
      {
        CFRelease(v8);
      }

      Aggregate_Device_Description::fill_out_optional_strings(v17, &v22);
      Aggregate_Device_Description::fill_out_optional_BOOLeans(v17, &v22);
      memset(buf, 0, sizeof(buf));
      Aggregate_Device_Description::fill_out_subdevice_list(v17, cf, buf);
      v22.info = buf;
      std::vector<Audio_Sub_Device_Description>::__destroy_vector::operator()[abi:ne200100](&v22.info);
      goto LABEL_16;
    }
  }

  else
  {
    v22.isa = 0;
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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "Aggregate_Device_Description.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 118;
    _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Unable to construct aggregate with no UID", buf, 0x12u);
  }

LABEL_16:
  if (v22.isa)
  {
    CFRelease(v22.isa);
  }

  Aggregate_Device_Description::get_composition_dictionary(buf, v7);
  Aggregate_Device_Description::get_composition_dictionary(&v22.info, v17);
  info = v22.info;
  v14 = (*buf | v22.info) == 0;
  if (*buf && v22.info)
  {
    v14 = CFEqual(*buf, v22.info) != 0;
    info = v22.info;
  }

  if (info)
  {
    CFRelease(info);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  Aggregate_Device_Description::~Aggregate_Device_Description(v17);
  std::__shared_mutex_base::unlock(v5);
  if (!v14)
  {
    operator new();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1DE302354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEENK3$_1clEN10applesauce2CF13DictionaryRefEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if (!is_valid)
  {
    v40 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v40 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
    }

    v42 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v41 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      v43 = *v42;
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    else
    {
      v43 = *v42;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Meta_Device_Core.cpp";
      v56 = 1024;
      v57 = 310;
      v58 = 2080;
      v59 = "expiration_check.is_valid()";
      _os_log_error_impl(&dword_1DE1F9000, v43, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", buf, 0x1Cu);
    }

    abort();
  }

  v3 = (**(a1 + 40) + 176);
  std::__shared_mutex_base::lock(v3);
  v4 = *(a1 + 48);
  v5 = *(**(a1 + 40) + 80);
  v6 = *v4;
  if (*v4)
  {
    CFRetain(*v4);
  }

  v48 = v6;
  memset(&v54.info, 0, 24);
  std::vector<Audio_Sub_Device_Description>::__init_with_size[abi:ne200100]<Audio_Sub_Device_Description*,Audio_Sub_Device_Description*>(&v54.info, *(v5 + 16), *(v5 + 24), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 24) - *(v5 + 16)) >> 3));
  v8 = *(v5 + 16);
    ;
  }

  *(v5 + 24) = v8;
  if (!v6)
  {
    v54.isa = 0;
    goto LABEL_71;
  }

  CFRetain(v6);
  v54.isa = v6;
  if (!applesauce::CF::details::has_key<__CFString const*&>(v6, @"uid"))
  {
    goto LABEL_71;
  }

  applesauce::CF::details::find_at_key<applesauce::CF::StringRef,__CFString const*&>(&cf, v6, @"uid");
  v9 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cf, v5);
  if (v9)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      v9 = AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(v11 + 16);
    switch(v13)
    {
      case 1:
        v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v22 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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

        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_63;
        }

        if (!*v5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v30 = v51;
        applesauce::CF::convert_to<std::string,0>(v51, *v5);
        if (v52 < 0)
        {
          v30 = v51[0];
        }

        if (!cf)
        {
          v46 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v46, "Could not construct");
          __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, cf);
        if (v50 >= 0)
        {
          v31 = __p;
        }

        else
        {
          v31 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "Aggregate_Device_Description.cpp";
        v56 = 1024;
        v57 = 250;
        v58 = 2080;
        v59 = v30;
        v60 = 2080;
        v61 = v31;
        v32 = v25;
        v33 = OS_LOG_TYPE_DEFAULT;
        break;
      case 2:
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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

        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_63;
        }

        v26 = applesauce::CF::StringRef::operator->(v5);
        v27 = v51;
        applesauce::CF::convert_to<std::string,0>(v51, *v26);
        if (v52 < 0)
        {
          v27 = v51[0];
        }

        v28 = applesauce::CF::StringRef::operator->(&cf);
        applesauce::CF::convert_to<std::string,0>(__p, *v28);
        if (v50 >= 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "Aggregate_Device_Description.cpp";
        v56 = 1024;
        v57 = 250;
        v58 = 2080;
        v59 = v27;
        v60 = 2080;
        v61 = v29;
        _os_log_debug_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_DEBUG, "%32s:%-5d Updating aggregate UID from %s to %s", buf, 0x26u);
        goto LABEL_59;
      case 3:
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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

        if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          goto LABEL_63;
        }

        if (!*v5)
        {
          v45 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v45, "Could not construct");
          __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v34 = v51;
        applesauce::CF::convert_to<std::string,0>(v51, *v5);
        if (v52 < 0)
        {
          v34 = v51[0];
        }

        if (!cf)
        {
          v47 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v47, "Could not construct");
          __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, cf);
        if (v50 >= 0)
        {
          v35 = __p;
        }

        else
        {
          v35 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "Aggregate_Device_Description.cpp";
        v56 = 1024;
        v57 = 250;
        v58 = 2080;
        v59 = v34;
        v60 = 2080;
        v61 = v35;
        v32 = v17;
        v33 = OS_LOG_TYPE_INFO;
        break;
      default:
        goto LABEL_63;
    }

    _os_log_impl(&dword_1DE1F9000, v32, v33, "%32s:%-5d Updating aggregate UID from %s to %s", buf, 0x26u);
LABEL_59:
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

LABEL_63:
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v36 = *v5;
    v37 = cf;
    *v5 = cf;
    if (v37)
    {
      CFRetain(v37);
    }

    if (v36)
    {
      CFRelease(v36);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_71:
  Aggregate_Device_Description::fill_out_optional_strings(v5, &v54);
  Aggregate_Device_Description::fill_out_optional_BOOLeans(v5, &v54);
  isa = v54.isa;
  Aggregate_Device_Description::fill_out_subdevice_list(v5, v54.isa, &v54.info);
  if (isa)
  {
    CFRelease(isa);
  }

  *buf = &v54.info;
  std::vector<Audio_Sub_Device_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v48)
  {
    CFRelease(v48);
  }

  AMCP::Meta::Device::update_cached_properties_from_composition(**(a1 + 40));
  AMCP::Meta::Device::update_subdevices(**(a1 + 40));
  AMCP::Meta::Device::update_core(**(a1 + 40));
  std::__shared_mutex_base::unlock(v3);
  v39 = *MEMORY[0x1E69E9840];
}

void sub_1DE302B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21, const void *a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, __int16 *a28)
{
  __cxa_free_exception(v28);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  applesauce::CF::StringRef::~StringRef(&a21);
  Aggregate_Description_Dictionary::~Aggregate_Description_Dictionary(&a22);
  a28 = &a23;
  std::vector<Audio_Sub_Device_Description>::__destroy_vector::operator()[abi:ne200100](&a28);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5965CB8;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965CB8;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1::operator() const(applesauce::CF::DictionaryRef)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965CB8;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(applesauce::CF::DictionaryRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(applesauce::CF::DictionaryRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5965C48;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5965C48;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(applesauce::CF::DictionaryRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5965C48;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN10applesauce2CF13DictionaryRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::DictionaryRef ()(void)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>((a1 + 8), v4);
  if (!v5)
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = applesauce::CF::DictionaryRef, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::DictionaryRef ()(void)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = applesauce::CF::DictionaryRef, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v7 + 48))(buf);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef&>(a2, buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE3034D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5980BB0;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980BB0;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980BB0;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::DictionaryRef ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::DictionaryRef ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<applesauce::CF::DictionaryRef ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<applesauce::CF::DictionaryRef ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<applesauce::CF::DictionaryRef ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::DictionaryRef ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::DictionaryRef ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11>,applesauce::CF::DictionaryRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE4$_11"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11>,applesauce::CF::DictionaryRef ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11>,applesauce::CF::DictionaryRef ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11>,applesauce::CF::DictionaryRef ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5965BC8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11>,applesauce::CF::DictionaryRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965BC8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_11>,applesauce::CF::DictionaryRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965BC8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10>,std::vector<unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE4$_10"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10>,std::vector<unsigned int> ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, *(v2 + 56), *(v2 + 64), (*(v2 + 64) - *(v2 + 56)) >> 2);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10>,std::vector<unsigned int> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10>,std::vector<unsigned int> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10>,std::vector<unsigned int> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5965B48;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10>,std::vector<unsigned int> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965B48;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_10>,std::vector<unsigned int> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965B48;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIN10applesauce2CF8ArrayRefEEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  AMCP::Thing::convert_to<applesauce::CF::ArrayRef>(&cf, a2);
  v3 = AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::ArrayRef const&)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>((a1 + 8), v3);
  if (!v4)
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
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const applesauce::CF::ArrayRef &>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::ArrayRef const&)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const applesauce::CF::ArrayRef &>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE3041F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a11)
  {
    a12 = a11;
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  applesauce::CF::ArrayRef::~ArrayRef(&a10);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5965AC8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5965AC8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5965AC8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(applesauce::CF::ArrayRef const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::ArrayRef const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(applesauce::CF::ArrayRef const&)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(applesauce::CF::ArrayRef const&)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(applesauce::CF::ArrayRef const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(applesauce::CF::ArrayRef const&)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(applesauce::CF::ArrayRef const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(applesauce::CF::ArrayRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(applesauce::CF::ArrayRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = a1 + 8;
  v5 = *(a1 + 8);
  std::__shared_mutex_base::lock((v5 + 176));
  v6 = *(*v4 + 48);
  v7 = (v3 | v6) == 0;
  if (v3)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v7 = CFEqual(v6, v3) != 0;
  }

  std::__shared_mutex_base::unlock((v5 + 176));
  if (!v7)
  {
    operator new();
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE304834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a20);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a10);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a16);
  applesauce::CF::ArrayRef::~ArrayRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEENK3$_0clEN10applesauce2CF8ArrayRefEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if (!is_valid)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
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
      *&buf[4] = "Meta_Device_Core.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 274;
      *&buf[18] = 2080;
      *&buf[20] = "expiration_check.is_valid()";
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", buf, 0x1Cu);
    }

    abort();
  }

  v3 = (**(a1 + 40) + 176);
  std::__shared_mutex_base::lock(v3);
  v4 = *(a1 + 48);
  v5 = **(a1 + 40);
  v6 = *(v5 + 48);
  v7 = *v4;
  *(v5 + 48) = *v4;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v8 = **(a1 + 40);
  v9 = *(v8 + 80);
  v10 = *(v8 + 48);
  if (v10)
  {
    CFRetain(*(v8 + 48));
  }

  v30 = 0;
  v31 = 0;
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = v9 + 16;
  v29 = 0;
  std::vector<Audio_Sub_Device_Description>::__init_with_size[abi:ne200100]<Audio_Sub_Device_Description*,Audio_Sub_Device_Description*>(&v29, v11, v12, 0x6DB6DB6DB6DB6DB7 * ((v12 - v11) >> 3));
  v15 = *(v9 + 16);
    ;
  }

  *(v9 + 24) = v15;
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    v17 = CFArrayGetCount(v10);
    if (Count)
    {
      v18 = v17;
      for (j = 0; j != Count; ++j)
      {
        if (j == v18)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::StringRef>(&cf, v10, j);
        v20 = v29;
        v21 = v30;
        if (v29 != v30)
        {
          while (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cf, v20))
          {
            v20 += 7;
            if (v20 == v21)
            {
              v20 = v21;
              break;
            }
          }

          v21 = v30;
        }

        if (v20 == v21)
        {
          v33 = 0;
          memset(&buf[8], 0, 32);
          v34 = 127;
          v35 = 1;
          v22 = cf;
          *buf = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          std::vector<Audio_Sub_Device_Description>::push_back[abi:ne200100](v13, buf);
          if (v22)
          {
            CFRelease(v22);
          }
        }

        else
        {
          std::vector<Audio_Sub_Device_Description>::push_back[abi:ne200100](v13, v20);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    *buf = &v29;
    std::vector<Audio_Sub_Device_Description>::__destroy_vector::operator()[abi:ne200100](buf);
    CFRelease(v10);
  }

  else
  {
    *buf = &v29;
    std::vector<Audio_Sub_Device_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  AMCP::Meta::Device::update_cached_properties_from_composition(**(a1 + 40));
  AMCP::Meta::Device::update_subdevices(**(a1 + 40));
  AMCP::Meta::Device::update_core(**(a1 + 40));
  std::__shared_mutex_base::unlock(v3);
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1DE304C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5965A38;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965A38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1},std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0::operator() const(applesauce::CF::ArrayRef)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965A38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(applesauce::CF::ArrayRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(applesauce::CF::ArrayRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(applesauce::CF::ArrayRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59659B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(applesauce::CF::ArrayRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59659B8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(applesauce::CF::ArrayRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59659B8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN10applesauce2CF8ArrayRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<applesauce::CF::ArrayRef>(&cf, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef&>(a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t AMCP::Core::Operation::call_function<applesauce::CF::ArrayRef>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::ArrayRef ()(void)>>();
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = applesauce::CF::ArrayRef, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::ArrayRef ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = applesauce::CF::ArrayRef, Argument_Types = <>]";
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

void sub_1DE30555C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5965938;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965938;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::ArrayRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965938;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::ArrayRef ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::ArrayRef ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<applesauce::CF::ArrayRef ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<applesauce::CF::ArrayRef ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<applesauce::CF::ArrayRef ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::ArrayRef ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::ArrayRef ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9>,applesauce::CF::ArrayRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE3$_9"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9>,applesauce::CF::ArrayRef ()(void)>::operator()@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  v4 = *(v3 + 48);
  if (v4)
  {
    result = CFRetain(*(v3 + 48));
  }

  *a2 = v4;
  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9>,applesauce::CF::ArrayRef ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9>,applesauce::CF::ArrayRef ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9>,applesauce::CF::ArrayRef ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59658A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9>,applesauce::CF::ArrayRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59658A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_9>,applesauce::CF::ArrayRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59658A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8>,CA::ChannelLayout ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE3$_8"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8>,CA::ChannelLayout ()(void)>::operator()@<X0>(uint64_t a1@<X0>, AMCP::Meta *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *v4;
      v9 = v4[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::Core::Broker::fetch_core(&v13, *(*(*(a1 + 8) + 8) + 16), *(v8 + 24));
      if (v13)
      {
        AMCP::Core::Core::get_simple_required_property<1718444404u>(v11, v13);
        v7 += v12;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  return AMCP::Meta::create_layout_from_channel_count(a2, v7);
}

uint64_t *AMCP::Meta::create_layout_from_channel_count(AMCP::Meta *this, unsigned int a2)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  result = std::vector<char>::vector[abi:ne200100](this, 20 * v3 + 12);
  v5 = *result;
  *v5 = 0;
  *(v5 + 8) = a2;
  v6 = v5 + 12;
  for (i = result[1]; v6 != i; v6 += 20)
  {
    *v6 = 0xFFFFFFFFLL;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8>,CA::ChannelLayout ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8>,CA::ChannelLayout ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8>,CA::ChannelLayout ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5965828;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965828;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_8>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965828;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN2CA13ChannelLayoutEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<CA::ChannelLayout>(&__p, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a2, __p, v4, v4 - __p);
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<CA::ChannelLayout>::dispatch;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_1DE305FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5980638;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980638;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980638;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<CA::ChannelLayout ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<CA::ChannelLayout ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<CA::ChannelLayout ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<CA::ChannelLayout ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<CA::ChannelLayout ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<CA::ChannelLayout ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<CA::ChannelLayout ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7>,CA::ChannelLayout ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7>,CA::ChannelLayout ()(void)>::operator()@<X0>(uint64_t a1@<X0>, AMCP::Meta *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 136);
  v5 = *(v3 + 144);
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *v4;
      v9 = v4[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::Core::Broker::fetch_core(&v13, *(*(*(a1 + 8) + 8) + 16), *(v8 + 24));
      if (v13)
      {
        AMCP::Core::Core::get_simple_required_property<1718444404u>(v11, v13);
        v7 += v12;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  return AMCP::Meta::create_layout_from_channel_count(a2, v7);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7>,CA::ChannelLayout ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7>,CA::ChannelLayout ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7>,CA::ChannelLayout ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59657A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59657A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_7>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59657A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,AMCP::Direction>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,AMCP::Direction const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,AMCP::Direction>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,AMCP::Direction const&)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities47make_owned_object_with_properties_list_propertyIjJNS_7AddressENS_9DirectionEEEENSt3__110shared_ptrINS0_9OperationEEERNS0_6BrokerEjRKS3_SC_RKT_DpRKT0_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,AMCP::Direction>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,AMCP::Direction const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,AMCP::Direction>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,AMCP::Direction const&)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::operator()(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  operator new();
}

void sub_1DE306738(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS2_7AddressERKNS2_9DirectionEENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerEjS8_RKT_DpOT0_EUlSM_E_NSF_ISQ_EEFbRKNS_10shared_ptrINS3_4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS_7AddressERKNS_9DirectionEENSt3__19enable_ifILb1EvEEEENS9_6vectorIjNS9_9allocatorIjEEEERNS0_6BrokerEjS5_RKT_DpOT0_EUlSK_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS2_7AddressERKNS2_9DirectionEENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerEjS8_RKT_DpOT0_EUlSM_E_NSF_ISQ_EEFbRKNS_10shared_ptrINS3_4CoreEEEEEclESW_(void *a1, AMCP::Core::Core **a2)
{
  v2 = *a2;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(*a2, v3);
  if (!HIDWORD(v7))
  {
    return 0;
  }

  if (*v3 != 1668047219 && *v3 != 1650682995)
  {
    if (*v4 == v7)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if ((AMCP::is_base_of(*v4, v7) & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v9 = AMCP::Core::Core::get_typed_property_value<AMCP::Direction,std::enable_if<true,void>>(v2, v5);
  if (!HIDWORD(v9))
  {
    return 0;
  }

  v10 = *v5 == 1650682995 || *v5 == 1668047219;
  return !v10 && *v6 == v9;
}

uint64_t AMCP::Core::Core::get_typed_property_value<AMCP::Direction,std::enable_if<true,void>>(AMCP::Core::Core *a1, const AMCP::Address *a2)
{
  if (!AMCP::Core::Core::has_property(a1, a2))
  {
    goto LABEL_14;
  }

  AMCP::Core::Core::find_operation(&v13, a1, a2);
  v5 = v13;
  if (v13)
  {
    v6 = AMCP::Implementation::get_type_marker<std::function<AMCP::Direction ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      LODWORD(v5) = AMCP::Core::Operation::call_function<AMCP::Direction>(v5);
LABEL_5:
      v7 = 0;
      v2 = v5 >> 8;
      goto LABEL_11;
    }

    v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v8))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v11, v5);
      LODWORD(v5) = AMCP::Thing::convert_to<AMCP::Direction>(v11);
      if (v12)
      {
        v12(0, v11, 0, 0);
      }

      goto LABEL_5;
    }

    LOBYTE(v5) = 0;
  }

  v7 = 1;
LABEL_11:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (!v7)
  {
    v9 = 0x100000000;
    return v9 | v5 | (v2 << 8);
  }

LABEL_14:
  v9 = 0;
  LOBYTE(v5) = 0;
  return v9 | v5 | (v2 << 8);
}

uint64_t AMCP::Core::Operation::call_function<AMCP::Direction>(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<AMCP::Direction ()(void)>>();
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
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Direction, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<AMCP::Direction ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
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
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Direction, Argument_Types = <>]";
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

void sub_1DE306DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<AMCP::Direction ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[277];
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS2_7AddressERKNS2_9DirectionEENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerEjS8_RKT_DpOT0_EUlSM_E_NSF_ISQ_EEFbRKNS_10shared_ptrINS3_4CoreEEEEE7__cloneEPNS0_6__baseISX_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598CB98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,AMCP::Direction>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,AMCP::Direction const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,AMCP::Direction>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,AMCP::Direction const&)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598CB28;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 20) = *(a1 + 20);
  result = *(a1 + 36);
  *(a2 + 36) = result;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN2CA14ValueRangeListEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<CA::ValueRangeList>(&__p, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(a2, __p, v4, (v4 - __p) >> 4);
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<CA::ValueRangeList>::dispatch;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_1DE307158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Core::Operation::call_function<CA::ValueRangeList>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<CA::ValueRangeList ()(void)>>();
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = CA::ValueRangeList, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<CA::ValueRangeList ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = CA::ValueRangeList, Argument_Types = <>]";
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

void sub_1DE30760C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5980948;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980948;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRangeList>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980948;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<CA::ValueRangeList ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<CA::ValueRangeList ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<CA::ValueRangeList ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<CA::ValueRangeList ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<CA::ValueRangeList ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<CA::ValueRangeList ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<CA::ValueRangeList ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6>,CA::ValueRangeList ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6>,CA::ValueRangeList ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(v3 + 104);
  if (v4)
  {
    CFRetain(*(v3 + 104));
  }

  cf = v4;
  AMCP::Meta::Device::get_device_core(&v14, *(*(v3 + 8) + 16), &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    v11 = 0x676C6F626E737223;
    v12 = 0;
    operation = AMCP::Core::Core::find_operation(&v26, v14, &v11);
    if (!v26)
    {
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
        *buf = 136315394;
        *&buf[4] = "Core.h";
        *&buf[12] = 1024;
        *&buf[14] = 202;
        _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
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
      v29 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = CA::ValueRangeList, Argument_Types = <>]";
      v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
      v31 = 202;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
    }

    AMCP::Core::Operation::call_function<CA::ValueRangeList>(a2, v26);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *buf = 0;
    *&buf[8] = 0;
    CA::ValueRangeList::AddRange(a2, buf);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v6 = *MEMORY[0x1E69E9840];
}