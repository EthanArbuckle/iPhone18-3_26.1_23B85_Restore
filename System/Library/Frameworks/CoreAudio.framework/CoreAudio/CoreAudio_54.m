uint64_t AMCP::Null::Engine::write_data_to_stream(AMCP::Log::AMCP_Scope_Registry *a1, double a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 94);
  if (v8)
  {
    if (a5 >= ((v8[1] - *v8) >> 4))
    {
      v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v37 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        v40 = *v39;
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      else
      {
        v40 = *v39;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v81 = "Null_Engine_Reflector.cpp";
        v82 = 1024;
        v83 = 121;
        v84 = 2080;
        *v85 = "in_stream_index < m_stream_buffers.size()";
        _os_log_error_impl(&dword_1DE1F9000, v40, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
      }

      abort();
    }

    v10 = *a8;
    v11 = *v8 + 16 * a5;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(buf, v12);
    v14 = *&v85[4];
    v15 = *&v85[12];
    if (*&v85[12])
    {
      atomic_fetch_add_explicit((*&v85[12] + 8), 1uLL, memory_order_relaxed);
      v45 = v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      v14 = v45;
    }

    v16 = *(v12 + 11);
    if (v16)
    {
      LODWORD(v16) = *(v16 + 32);
    }

    v17 = *v10 / v16;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v59 = 2;
      v60 = a2;
      v61 = 0;
      v62 = v14;
      v18 = v17 + a2;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v59 = 2;
      v60 = a2;
      v61 = 0;
      v62 = v14;
      v18 = v17 + a2;
    }

    v55 = 2;
    v56 = v18;
    v57 = 0;
    v58 = v14;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v47, &v59, &v55);
    AMCP::DAL::DAL_Time::operator-(__p, &v51, &v47);
    AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&v68, v12);
    v19 = AMCP::DAL::DAL_Time_Delta::operator<(&v68, __p);
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

    v20 = *&__p[32];
    if (*&__p[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
    }

    if (v19)
    {
      v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v41 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v20);
      }

      v43 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v42 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        v44 = *v43;
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      else
      {
        v44 = *v43;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "DAL_Timed_Segment.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 279;
        *&__p[18] = 2080;
        *&__p[20] = "not (range.length() <= buffer.get_length_in_frames())";
        _os_log_error_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v74);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v66);
      std::logic_error::logic_error(&v67, &v66);
      v67.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v68, &v67);
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = -1;
      v68.__vftable = &unk_1F5991430;
      v69 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v68);
      *&__p[32] = "Writable_Range AMCP::DAL::create_writable_range(const DAL_Time_Range &, Ring_Buffer_Base &)";
      *&v76 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
      DWORD2(v76) = 279;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v63);
    }

    *__p = v47;
    *&__p[16] = v48;
    *&__p[24] = v49;
    *&__p[32] = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v76 = v51;
    v77 = v52;
    v78 = v53;
    v79 = v54;
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::create_writable_range(v12, __p, buf);
    if (v79)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
    }

    if (*&__p[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
    }

    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    if (AMCP::DAL::DAL_Time::operator<(buf, &v86))
    {
      v46 = v13;
      AMCP::DAL::Writable_Range::get_direct_write_ranges(&v64, buf);
      v21 = v64;
      v22 = v65;
      if (v64 != v65)
      {
        v23 = 0;
        do
        {
          (*(*v88 + 56))(__p);
          other_data_bytes = AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(*__p, *v21, v21[1]);
          v26 = v25;
          v27 = *&__p[8];
          if (*&__p[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
          }

          if (!other_data_bytes)
          {
            v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v33 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v27);
            }

            v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v34)
            {
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              v36 = *v35;
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            else
            {
              v36 = *v35;
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315650;
              *&__p[4] = "Null_Engine_Reflector.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 142;
              *&__p[18] = 2080;
              *&__p[20] = "not (not bytes.empty())";
              _os_log_error_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v74);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("", &v66);
            std::logic_error::logic_error(&v67, &v66);
            v67.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v47, &v67);
            v49 = 0;
            v50 = 0;
            *&v51 = 0;
            DWORD2(v51) = -1;
            v47.__vftable = &unk_1F5991430;
            v48 = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v47);
            *&__p[32] = "BOOL AMCP::Null::Null_Engine_Reflector::write_data_to_stream(uint32_t, float64_t, const gsl::span<std::byte> &)";
            *&v76 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Engine_Reflector.cpp";
            DWORD2(v76) = 142;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v63);
          }

          v28 = *(v12 + 11);
          if (v28)
          {
            LODWORD(v28) = *(v28 + 32);
          }

          v29 = v28 * vcvtmd_s64_f64(v21[1] - *v21);
          memcpy(v26, (*(v10 + 8) + v23), v29);
          *__p = 0;
          memset(&__p[8], 0, 32);
          LODWORD(v76) = 0;
          AMCP::DAL::Writable_Range::commit_direct_write(v88, __p, v21);
          if ((__p[31] & 0x80000000) != 0)
          {
            operator delete(*&__p[8]);
          }

          v23 += v29;
          v21 += 14;
        }

        while (v21 != v22);
      }

      v13 = v46;
      if (v8[4])
      {
        AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v47, &v59, &v55);
        AMCP::DAL::create_readable_range(__p, &v47, v12);
        if (v54)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        }

        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        v30 = v8[4];
        v68.__vftable = 0;
        v68.__imp_.__imp_ = 0;
        AMCP::DAL::DAL_Settings::DAL_Settings(&v47, &v68);
        (*(**v30 + 16))(*v30, &v47, __p);
        std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&v47);
        if (v79)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }

        if (*&__p[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
        }
      }

      *__p = &v64;
      std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100](__p);
    }

    if (v87)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v87);
    }

    if (*&v85[12])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v85[12]);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1DE624E68(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a2)
  {
    std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&a11);
    AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a51);
    a51 = &a34;
    std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100](&a51);
    AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v52 - 208));
    if (a25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a25);
    }

    if (a30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a30);
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (a9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a9);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Null::Engine::read_data_from_stream(AMCP::Log::AMCP_Scope_Registry *a1, double a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, void *a8)
{
  v150 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 94);
  if (v10)
  {
    v11 = *v10;
    if (a5 >= ((*(*(a1 + 94) + 8) - v11) >> 4))
    {
      v72 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v72 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *v142 = 136315650;
        *&v142[4] = "Null_Engine_Reflector.cpp";
        *&v142[12] = 1024;
        *&v142[14] = 65;
        *&v142[18] = 2080;
        *&v142[20] = "in_stream_index < m_stream_buffers.size()";
        _os_log_error_impl(&dword_1DE1F9000, v75, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", v142, 0x1Cu);
      }

      abort();
    }

    v12 = *a8;
    v13 = v11 + 16 * a5;
    v15 = *v13;
    v14 = *(v13 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(v142, v15);
    v17 = *&v142[24];
    v16 = v143;
    if (v143)
    {
      atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v18 = *(v15 + 11);
    if (v18)
    {
      LODWORD(v18) = *(v18 + 32);
      a2 = (a6 / v18) + a2;
    }

    v27 = *v12 / v18;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = a2 + v27;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v28 = a2 + v27;
    }

    (*(*v15 + 72))(v97, v15);
    *v142 = 2;
    *&v142[8] = a2;
    *&v142[16] = 0;
    *&v142[24] = v17;
    v143 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v144 = 2;
      v145 = v28;
      v146 = 0;
      v147 = v17;
      v148 = v16;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v144 = 2;
      v145 = v28;
      v146 = 0;
      v147 = v17;
      v148 = 0;
    }

    caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(&v118, v97, v142);
    if (v148)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v148);
    }

    if (v143)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v143);
    }

    if (AMCP::DAL::DAL_Time::operator<(&v118, &v122))
    {
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v118, &v122);
      AMCP::DAL::create_readable_range(v142, buf, v15);
      if (v141)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
      }

      if (v137)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v137);
      }

      AMCP::DAL::DAL_Timed_Segment::translate_range(buf, v149, v142);
      v29 = *buf;
      v30 = *(v15 + 11);
      if (v30)
      {
        v31 = *(v30 + 32);
      }

      else
      {
        v31 = 0;
      }

      v33 = **buf;
      v32 = *(*buf + 8);
      (*(*v149 + 56))(&v89);
      AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(v89, *v29, v29[1]);
      v35 = v34;
      v36 = v31 * vcvtmd_s64_f64(v32 - v33);
      if (*(&v89 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v89 + 1));
      }

      memcpy(*(v12 + 1), v35, v36);
      v37 = *buf;
      if (*&buf[8] - *buf == 192)
      {
        v38 = *(v15 + 11);
        if (v38)
        {
          v39 = *(v38 + 32);
        }

        else
        {
          v39 = 0;
        }

        v66 = *(*buf + 96);
        v65 = *(*buf + 104);
        (*(*v149 + 56))(&v89);
        AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(v89, *(v37 + 96), *(v37 + 104));
        v68 = v67;
        v69 = v39 * vcvtmd_s64_f64(v65 - v66);
        if (*(&v89 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v89 + 1));
        }

        memcpy((*(v12 + 1) + v36), v68, v69);
      }

      *&v89 = buf;
      std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v89);
      if (v148)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v148);
      }

      if (v143)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v143);
      }
    }

    if (v125)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v125);
    }

    if (v121)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v121);
    }

    if (v100)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v100);
    }

    if (v98)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v98);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v14)
    {
      v64 = v14;
LABEL_118:
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }
  }

  else
  {
    v19 = *(a1 + 95);
    if (v19)
    {
      v20 = *a8;
      AMCP::DAL::DAL_Buffer::get_timebase(&v110, *(v19 + 24));
      v21 = *(*(a1 + 95) + 56);
      v22 = (a6 / v21) + a2;
      v23 = *v20 / v21;
      v24 = v110;
      v85 = v20;
      if (*(&v110 + 1))
      {
        v25 = (*(&v110 + 1) + 8);
        atomic_fetch_add_explicit((*(&v110 + 1) + 8), 1uLL, memory_order_relaxed);
        v106 = 2;
        v107 = v22;
        v108 = 0;
        v109 = v24;
        v26 = v22 + v23;
        atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
      }

      else
      {
        v106 = 2;
        v107 = v22;
        v108 = 0;
        v109 = v110;
        v26 = v22 + v23;
      }

      v102 = 2;
      v103 = v26;
      v104 = 0;
      v105 = v24;
      v40 = *(a1 + 95);
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v89, &v106, &v102);
      AMCP::DAL::Fixed_Buffer::set_range(*(v40 + 24), &v89);
      v41 = *(v40 + 24);
      v118 = v89;
      v119 = v90;
      v120 = v91;
      v121 = v92;
      if (v92)
      {
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v122 = v93;
      v123 = v94;
      v124 = v95;
      v125 = v96;
      if (v96)
      {
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::DAL::Fixed_Buffer::create_writable_range(v41, &v118, v142);
      if (v125)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v125);
      }

      if (v121)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v121);
      }

      v42 = *(v40 + 24);
      v44 = *(v42 + 88);
      v43 = *(v42 + 96);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v84 = v43;
      if (v44)
      {
        v45 = *(v44 + 8);
      }

      AMCP::DAL::DAL_Timed_Segment::translate_range(v126, v149, v142);
      if (v126[0] != v126[1])
      {
        if (v44)
        {
          v87 = *(v126[0] + 1);
          v88 = *v126[0];
          if ((*(v44 + 20) & 1) == 0 && *(v44 + 40) == 16)
          {
            operator new();
          }

          if ((*(v44 + 20) & 1) == 0 && *(v44 + 40) == 32)
          {
            operator new();
          }

          if ((*(v44 + 20) & 1) != 0 && *(v44 + 40) == 32)
          {
            operator new();
          }
        }

        v80 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v80 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v46);
        }

        v82 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v81 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v81)
        {
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          v83 = *v82;
          std::__shared_weak_count::__release_shared[abi:ne200100](v81);
        }

        else
        {
          v83 = *v82;
        }

        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Tone_Generator.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 77;
          *&buf[18] = 2080;
          *&buf[20] = "not (false)";
          _os_log_error_impl(&dword_1DE1F9000, v83, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Format not supported by Tone_Generator", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v129);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Format not supported by Tone_Generator", &v111);
        std::logic_error::logic_error(&v128, &v111);
        v128.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v130, &v128);
        v133 = 0;
        *&v132[10] = 0;
        v134 = 0;
        v135 = -1;
        *v130 = &unk_1F5991430;
        *&v132[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v130);
        v137 = "std::unique_ptr<DAL::Sample_Format_Handler> AMCP::Tone_Generator::create_handler(const DAL::Container &, DAL::Sample_Time_Range) const";
        *&v138 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Tone_Generator.cpp";
        DWORD2(v138) = 77;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v127);
      }

      *buf = v126;
      std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      v47 = *(v40 + 24);
      *buf = v89;
      *&buf[16] = v90;
      *&buf[24] = v91;
      v137 = v92;
      if (v92)
      {
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v138 = v93;
      v139 = v94;
      v140 = v95;
      v141 = v96;
      if (v96)
      {
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::DAL::Fixed_Buffer::create_readable_range(v47, buf, v97);
      if (v141)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
      }

      if (v137)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v137);
      }

      AMCP::DAL::DAL_Time::operator-(v130, &v99, v97);
      AMCP::DAL::DAL_Time::operator-(&v112, &v93, &v89);
      v48 = AMCP::DAL::DAL_Time_Delta::operator==(v130, &v112);
      if (v115)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v115);
      }

      v49 = v133;
      if (v133)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v133);
      }

      if (!v48)
      {
        v76 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v76 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v49);
        }

        v78 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v77 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v77)
        {
          atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
          v79 = *v78;
          std::__shared_weak_count::__release_shared[abi:ne200100](v77);
        }

        else
        {
          v79 = *v78;
        }

        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          *v130 = 136315650;
          *&v130[4] = "Tone_Generator.cpp";
          v131 = 1024;
          *v132 = 232;
          *&v132[4] = 2080;
          *&v132[6] = "not (results.get_time_range().length() == range.length())";
          _os_log_error_impl(&dword_1DE1F9000, v79, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v130, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v129);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v127);
        std::logic_error::logic_error(&v128, &v127);
        v128.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v112, &v128);
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v117 = -1;
        v112.__vftable = &unk_1F5991430;
        v113 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v130, &v112);
        v133 = "AMCP::DAL::Readable_Range AMCP::Tone_Generator_Buffer::generate_audio_in_buffer(const AMCP::DAL::DAL_Time_Range &)";
        v134 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Tone_Generator.cpp";
        v135 = 232;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v126);
      }

      if (v148)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v148);
      }

      if (v143)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v143);
      }

      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
      }

      if (v92)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
      }

      AMCP::DAL::DAL_Timed_Segment::translate_range(v142, v101, v97);
      v50 = *v142;
      v51 = *(*(a1 + 95) + 56);
      v53 = **v142;
      v52 = *(*v142 + 8);
      (*(*v101 + 56))(&v118);
      AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(v118, *v50, v50[1]);
      v55 = v54;
      v56 = v51 * vcvtmd_s64_f64(v52 - v53);
      if (*(&v118 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v118 + 1));
      }

      memcpy(v85[1], v55, v56);
      v57 = *v142;
      if (*&v142[8] - *v142 == 192)
      {
        v58 = *(*(a1 + 95) + 56);
        v60 = *(*v142 + 96);
        v59 = *(*v142 + 104);
        (*(*v101 + 56))(&v118);
        AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(v118, *(v57 + 96), *(v57 + 104));
        v62 = v61;
        v63 = v58 * vcvtmd_s64_f64(v59 - v60);
        if (*(&v118 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v118 + 1));
        }

        memcpy(v85[1] + v56, v62, v63);
      }

      *&v118 = v142;
      std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v118);
      if (v100)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v100);
      }

      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v98);
      }

      if (*(&v105 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v105 + 1));
      }

      if (*(&v109 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v109 + 1));
      }

      v64 = *(&v110 + 1);
      if (*(&v110 + 1))
      {
        goto LABEL_118;
      }
    }
  }

  v70 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1DE626CB8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (a66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a66);
    }

    a65 = v66 - 256;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&a65);
    AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a30);
    if (a45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a45);
    }

    if (a50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a50);
    }

    if (a52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a52);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AMCP::Null::Engine::set_output_stream_active_list(uint64_t a1, uint64_t a2)
{
  AMCP::Core::Implementation::Simple_Engine_IO_State::set_output_stream_active_list(&__p, a1 + 120, a2);
  if (__p)
  {
    operator delete(__p);
  }
}

void AMCP::Null::Engine::set_input_stream_active_list(uint64_t a1, uint64_t a2)
{
  AMCP::Core::Implementation::Simple_Engine_IO_State::set_input_stream_active_list(&__p, a1 + 120, a2);
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t AMCP::Null::Engine::set_transport_state(uint64_t a1, signed int a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((a1 + 136));
  v5 = MEMORY[0x1E12C16E0]();
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2 < 1;
  }

  if (v6)
  {
    if (v4 >= 1 && a2 == 0)
    {
      AMCP::Null::Engine::stop(a1);
    }
  }

  else
  {
    kdebug_trace();
    AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions(a1 + 120);
    AMCP::IO_Clock::reset_time((a1 + 576));
    kdebug_trace();
    v8 = CFStringCreateWithBytes(0, "fail_to_start", 13, 0x8000100u, 0);
    v9 = v8;
    *buf = v8;
    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v10 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a1 + 736), buf);
    CFRelease(v9);
    if (v10 == kCFCompareEqualTo)
    {
      v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v20 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
        *&buf[4] = "Null_Engine.cpp";
        v37 = 1024;
        v38 = 398;
        _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: couldn't start the hardware", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&cf);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("couldn't start the hardware", &v27);
      std::runtime_error::runtime_error(&v28, &v27);
      std::runtime_error::runtime_error(&v30, &v28);
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35[0] = -1;
      v30.__vftable = &unk_1F5992170;
      v31 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v30);
      *(&v39 + 1) = "void AMCP::Null::Engine::start()";
      *&v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Engine.cpp";
      DWORD2(v40) = 398;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(v24);
    }

    v12 = *(a1 + 752);
    if (v12 && *(v12 + 24) == 1)
    {
      v13 = *(v12 + 48);
      std::string::basic_string[abi:ne200100]<0>(&v27, "Null_Engine_Reflector - stream 0");
      std::string::basic_string[abi:ne200100]<0>(buf, "write");
      v39 = 0u;
      v40 = 0u;
      LOBYTE(v39) = 1;
      v41 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v42, "create unique name");
      v43 = 0u;
      v44 = 0u;
      LOBYTE(v43) = 1;
      v45 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v46, "write time stamps");
      v47 = 0u;
      v48 = 0u;
      LOBYTE(v47) = 1;
      v49 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      get_audio_capture_folder(__p);
      std::string::basic_string[abi:ne200100]<0>(v50, "file location");
      v51 = *__p;
      v52 = v26;
      v53 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v26 = 0;
      v54 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
      std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<char const* const&,std::string const&,0>(&v55, "name", &v27);
      asbd_to_dictionary(&cf, v13);
      std::string::basic_string[abi:ne200100]<0>(v56, "asbd");
      v59 = 0;
      v60 = 0;
      v58 = 0;
      v57 = cf;
      cf = 0;
      v61 = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
      v24[0] = buf;
      v24[1] = 6;
      AMCP::DAL::DAL_Settings::DAL_Settings(&v30, v24);
      v14 = 96;
      while (1)
      {
        v15 = &buf[v14 * 4];
        v16 = *&v35[v14];
        if (v16)
        {
          v16(0, v15 - 5, 0, 0);
        }

        if (*(v15 - 41) < 0)
        {
          operator delete(*(v15 - 8));
        }

        v14 -= 16;
        if (!(v14 * 4))
        {
          if (cf)
          {
            CFRelease(cf);
          }

          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          std::allocate_shared[abi:ne200100]<AMCP::DAL::File,std::allocator<AMCP::DAL::File>,CA::StreamDescription const&,AMCP::DAL::DAL_Settings &,0>();
        }
      }
    }
  }

  atomic_store(a2, (a1 + 136));
  result = MEMORY[0x1E12C16E0]();
  if (result > v5)
  {
    atomic_store(0, (a1 + 136));
    result = AMCP::Null::Engine::stop(a1);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6277F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, char a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (a12)
  {
    a13 = a12;
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a37);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a28);
  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (v38)
  {
    __cxa_free_exception(v37);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a26);
  applesauce::raii::v1::detail::ScopeGuard<AMCP::Null::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&a10);
  _Unwind_Resume(a1);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<AMCP::Null::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 8);
    atomic_store(0, v2 + 34);
    AMCP::Null::Engine::stop(v2);
  }

  return a1;
}

uint64_t AMCP::Null::Engine::stop(AMCP::Null::Engine *this)
{
  v2 = *(this + 94);
  if (v2)
  {
    if (*(v2 + 24) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }
  }

  kdebug_trace();
  AMCP::IO_Clock::reset_time(this + 144);
  AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions(this + 120);
  return kdebug_trace();
}

__n128 AMCP::Null::Engine::get_stream_format@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = 48;
  if (!a2)
  {
    v4 = 72;
  }

  v5 = a1 + v4;
  v6 = *(a1 + v4 + 24);
  v7 = *(v5 + 32);
  while (1)
  {
    if (v6 == v7)
    {
      *(a4 + 32) = 0;
      result.n128_u64[0] = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    if (*v6 == a3)
    {
      break;
    }

    v6 += 56;
  }

  result = *(v6 + 16);
  v9 = *(v6 + 32);
  *a4 = result;
  *(a4 + 16) = v9;
  *(a4 + 32) = *(v6 + 48);
  return result;
}

void AMCP::Null::Engine::~Engine(AMCP::Null::Engine *this)
{
  AMCP::Null::Engine::~Engine(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59849F0;
  AMCP::Null::Engine::set_transport_state(this, 0);
  v2 = *(this + 95);
  *(this + 95) = 0;
  if (v2)
  {
    std::default_delete<AMCP::Tone_Generator_Buffer>::operator()[abi:ne200100](v2);
  }

  std::unique_ptr<AMCP::Null::Null_Engine_Reflector>::reset[abi:ne200100](this + 94, 0);
  v3 = *(this + 92);
  if (v3)
  {
    CFRelease(v3);
  }

  AMCP::IO_Clock::~IO_Clock((this + 576));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 240));
  v4 = *(this + 29);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 27);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 18);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    *(this + 13) = v8;
    operator delete(v8);
  }

  v9 = *(this + 9);
  if (v9)
  {
    *(this + 10) = v9;
    operator delete(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void std::default_delete<AMCP::Tone_Generator_Buffer>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t *std::unique_ptr<AMCP::Null::Null_Engine_Reflector>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      *(v2 + 56) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 40);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v2;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v5);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Null::Engine::Engine(applesauce::CF::StringRef,double,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&,AMCP::Null::Input_Source,BOOL,unsigned int)::$_0,std::allocator<AMCP::Null::Engine::Engine(applesauce::CF::StringRef,double,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&,AMCP::Null::Input_Source,BOOL,unsigned int)::$_0>,CA::TimeStamp ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6EngineC1EN10applesauce2CF9StringRefEdjbjjjjS4_RKNSt3__16vectorINS_4Core14Implementation18Simple_Engine_Data11Stream_InfoENS5_9allocatorISA_EEEESF_RKNS_7Utility14Dispatch_QueueENS0_12Input_SourceEbjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Null::Engine::Engine(applesauce::CF::StringRef,double,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&,AMCP::Null::Input_Source,BOOL,unsigned int)::$_0,std::allocator<AMCP::Null::Engine::Engine(applesauce::CF::StringRef,double,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&,AMCP::Null::Input_Source,BOOL,unsigned int)::$_0>,CA::TimeStamp ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5984BA8;
  a2[1] = v2;
  return result;
}

void AMCP::DAL::Mixing_Ring_Buffer::get_direct_write_ranges(AMCP::DAL::Mixing_Ring_Buffer *this@<X0>, const AMCP::DAL::DAL_Time_Range *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  AMCP::DAL::Ring_Buffer_Base::translate_range(this, a2);
  v5 = v27;
  for (i = v28; v5 != i; v5 += 6)
  {
    v7 = v5[1];
    v18 = *v5;
    v19 = v7;
    v8 = *(v5 + 5);
    v20 = *(v5 + 4);
    v9 = *(v5 + 6);
    v21 = v8;
    v22 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(v5 + 56);
    v10 = *(v5 + 10);
    v24 = *(v5 + 9);
    v11 = *(v5 + 11);
    v25 = v10;
    v26 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(this + 12);
    *&v17 = *(this + 11);
    *(&v17 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = a3[1];
    if (v13 >= a3[2])
    {
      v15 = std::vector<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range&,AMCP::DAL::Container>(a3, &v18, &v17);
      v16 = *(&v17 + 1);
      a3[1] = v15;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    else
    {
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 40) = v8;
      *(v13 + 48) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v13 + 56) = v23;
      *(v13 + 72) = v24;
      *(v13 + 80) = v10;
      *(v13 + 88) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v13 + 96) = v17;
      a3[1] = v13 + 112;
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  *&v18 = &v27;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void sub_1DE628048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Mixing_Ring_Buffer::receive_data_at_range(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  (*(*a1 + 64))(v15);
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(v22, a4, v15);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v27, v22);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::difference(v22, a4, &v27);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(v18, v22);
  if (AMCP::DAL::DAL_Time::operator<(&v27, &v31))
  {
    v7 = v27;
    v8 = v28;
    v9 = v29;
    v10 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v31;
    v12 = v32;
    v13 = v33;
    v14 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Readable_Range::Readable_Range(v15, &v7, a3);
    AMCP::DAL::Ring_Buffer_Base::receive_data_mix(a1, v15);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  if (AMCP::DAL::DAL_Time::operator<(v18, &v20))
  {
    AMCP::DAL::Ring_Buffer_Base::receive_data_write_at_range(a1, a3, a4);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }
}

void sub_1DE62828C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a20);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a9);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a31);
  std::pair<caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>,caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>>::~pair(&a41);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v41 - 128));
  _Unwind_Resume(a1);
}

void caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::difference(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
  }

  else
  {
    *(a1 + 24) = v6;
  }

  v8 = (a2 + 40);
  *(a1 + 40) = *(a2 + 40);
  v9 = (a1 + 40);
  *(a1 + 48) = *(a2 + 48);
  v11 = *(a2 + 64);
  v10 = *(a2 + 72);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = v11;
  *(a1 + 72) = v10;
  caulk::make_empty_time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>(&v45, a2);
  *(a1 + 80) = v45;
  *(a1 + 96) = v46;
  v35 = *(&v47 + 1);
  *(a1 + 104) = v47;
  *(a1 + 120) = v48;
  *(a1 + 136) = v49;
  v36 = *(&v50 + 1);
  *(a1 + 144) = v50;
  if (AMCP::DAL::DAL_Time::operator<(a3, (a3 + 5)) && caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersects(a2, a3))
  {
    if (AMCP::DAL::DAL_Time::operator<(a2, a3))
    {
      if (AMCP::DAL::DAL_Time::operator<((a3 + 5), (a2 + 40)))
      {
        v45 = *a2;
        v12 = *(a2 + 24);
        v46 = *(a2 + 16);
        v13 = *(a2 + 32);
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v37 = *a3;
        v14 = a3[3];
        v41 = a3[2];
        v15 = a3[4];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        *a1 = v45;
        *(a1 + 16) = v46;
        *(a1 + 24) = v12;
        v16 = *(a1 + 32);
        *(a1 + 32) = v13;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        *v9 = v37;
        *(a1 + 56) = v41;
        *(a1 + 64) = v14;
        *(a1 + 72) = v15;
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v45 = *(a3 + 5);
        v17 = a3[8];
        v46 = a3[7];
        v18 = a3[9];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v38 = *v8;
        v42 = *(a2 + 56);
        v20 = *(a2 + 64);
        v19 = *(a2 + 72);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        v10 = v36;
        *(a1 + 80) = v45;
        *(a1 + 96) = v46;
        *(a1 + 104) = v17;
        *(a1 + 112) = v18;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        *(a1 + 120) = v38;
        *(a1 + 136) = v42;
        *(a1 + 144) = v20;
        *(a1 + 152) = v19;
        if (!v36)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v45 = *a2;
        v30 = *(a2 + 24);
        v46 = *(a2 + 16);
        v31 = *(a2 + 32);
        if (v31)
        {
          atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
        }

        v40 = *a3;
        v32 = a3[3];
        v44 = a3[2];
        v33 = a3[4];
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        *a1 = v45;
        *(a1 + 16) = v46;
        *(a1 + 24) = v30;
        v34 = *(a1 + 32);
        *(a1 + 32) = v31;
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        *v9 = v40;
        *(a1 + 56) = v44;
        *(a1 + 64) = v32;
        *(a1 + 72) = v33;
        if (!v10)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v45 = *(a3 + 5);
      v21 = a3[8];
      v46 = a3[7];
      v22 = a3[9];
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v39 = *v9;
      v43 = *(a1 + 56);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a1 = v45;
      *(a1 + 16) = v46;
      *(a1 + 24) = v21;
      v23 = *(a1 + 32);
      *(a1 + 32) = v22;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      *v9 = v39;
      *(a1 + 56) = v43;
      *(a1 + 64) = v11;
      *(a1 + 72) = v10;
      if (!v10)
      {
        goto LABEL_34;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_34:
    if (!AMCP::DAL::DAL_Time::operator<(a1, (a1 + 40)))
    {
      *a1 = *(a1 + 80);
      *(a1 + 8) = *(a1 + 88);
      v24 = *(a1 + 104);
      v25 = *(a1 + 112);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(a1 + 32);
      *(a1 + 24) = v24;
      *(a1 + 32) = v25;
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      *(a1 + 40) = *(a1 + 120);
      *(a1 + 48) = *(a1 + 128);
      v27 = *(a1 + 144);
      v28 = *(a1 + 152);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = *(a1 + 72);
      *(a1 + 64) = v27;
      *(a1 + 72) = v28;
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      caulk::make_empty_time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>(&v45, a2);
      *(a1 + 80) = v45;
      *(a1 + 96) = v46;
      *(a1 + 104) = v47;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      *(a1 + 120) = v48;
      *(a1 + 136) = v49;
      *(a1 + 144) = v50;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }
    }
  }
}

uint64_t AMCP::DAL::Readable_Range::Readable_Range(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v10 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v7 = *(a3 + 80);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  *(a1 + 24) = v4;
  *(a1 + 56) = v5;
  *(a1 + 40) = v10;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void *std::pair<caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>,caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>>::~pair(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[9];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[4];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void caulk::make_empty_time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 24);
    v4 = *(a2 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a1 = 2;
    *(a1 + 12) = 0;
    *(a1 + 4) = 0;
    *(a1 + 20) = 0;
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 40) = 2;
    *(a1 + 52) = 0;
    *(a1 + 44) = 0;
    *(a1 + 60) = 0;
    *(a1 + 64) = v5;
    *(a1 + 72) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    *a1 = 2;
    *(a1 + 12) = 0;
    *(a1 + 4) = 0;
    *(a1 + 20) = 0;
    *(a1 + 24) = v2;
    *(a1 + 32) = 0;
    *(a1 + 40) = 2;
    *(a1 + 52) = 0;
    *(a1 + 44) = 0;
    *(a1 + 60) = 0;
    *(a1 + 64) = v2;
    *(a1 + 72) = 0;
  }
}

BOOL caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersects(void *a1, void *a2)
{
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(v4, a1, a2);
  v2 = AMCP::DAL::DAL_Time::operator<(v4, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void AMCP::DAL::Mixing_Ring_Buffer::receive_data(void *a1, uint64_t a2, void *a3)
{
  (*(*a1 + 64))(v21);
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(v32, a3, v21);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v37, v32);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::difference(v32, a3, &v37);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v24, v32);
  if (AMCP::DAL::DAL_Time::operator<(&v37, &v41))
  {
    v13 = v37;
    v14 = v38;
    v15 = v39;
    v16 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v41;
    v18 = v42;
    v19 = v43;
    v20 = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Readable_Range::Readable_Range(v21, &v13, a3);
    AMCP::DAL::Ring_Buffer_Base::receive_data_mix(a1, v21);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  if (AMCP::DAL::DAL_Time::operator<(&v24, &v28))
  {
    v5 = v24;
    v6 = v25;
    v7 = v26;
    v8 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v28;
    v10 = v29;
    v11 = v30;
    v12 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Readable_Range::Readable_Range(v21, &v5, a3);
    AMCP::DAL::Ring_Buffer_Base::receive_data_write(a1, v21);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }
}

void sub_1DE628BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a30);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a9);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a41);
  std::pair<caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>,caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>>::~pair(&a51);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v51 - 112));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Mixing_Ring_Buffer::~Mixing_Ring_Buffer(AMCP::DAL::Mixing_Ring_Buffer *this)
{
  *this = &unk_1F5984D48;
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
  *this = &unk_1F5984D48;
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

void KaiserWindow::KaiserWindow(KaiserWindow *this, int a2, double a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (a2 != -1)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](this + 16, (a2 + 1));
  }

  if (a3 >= 50.0)
  {
    v3 = (a3 + -8.7) * 0.1102;
  }

  else
  {
    v3 = 0.0;
    if (a3 > 21.0)
    {
      v3 = (a3 + -21.0) * 0.07886 + pow(a3 + -21.0, 0.4) * 0.5842;
    }
  }

  bessi0(v3);
  v5 = 0;
  v6 = 1.0 / v4;
  do
  {
    bessi0(v3 * sqrt(1.0 - (v5 - 0x7FFFFFFFu) / 0x7FFFFFFFu * ((v5 - 0x7FFFFFFFu) / 0x7FFFFFFFu)));
    *&v7 = v6 * v7;
    *(4 * v5++ + 4) = LODWORD(v7);
  }

  while (v5 != 0xFFFFFFFFLL);
  MEMORY[0] = 0;
}

void sub_1DE628EBC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<KaiserWindow>,KaiserWindow*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

void bessi0(double a1)
{
  v1 = fabs(a1);
  if (v1 >= 3.75)
  {
    exp(v1);
  }
}

uint64_t AMCP::DAL::STLI_Resampler::get_expected_output_samples_for_input_samples(AMCP::DAL::STLI_Resampler *this, unsigned int a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 100 * a2;
  v12 = a2;
  ShortTermLinearInterpolationResampler::PreFlight(**(this + 12), &v12, &v11, a4, a5, a6, a7, a8, v10);
  result = v11;
  *a3 = v12;
  return result;
}

uint64_t AMCP::DAL::STLI_Resampler::get_required_input_samples_for_output_samples(AMCP::DAL::STLI_Resampler *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2;
  v10 = 100 * a2;
  ShortTermLinearInterpolationResampler::PreFlight(**(this + 12), &v10, &v11, a4, a5, a6, a7, a8, v9);
  return v10;
}

double AMCP::DAL::STLI_Resampler::process(uint64_t a1, void *a2, uint64_t *a3, void *a4, double a5, double a6, double a7)
{
  v122 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == *(a1 + 104))
  {
    v77 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v77 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v79 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v78 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v78)
    {
      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      v80 = *v79;
      std::__shared_weak_count::__release_shared[abi:ne200100](v78);
    }

    else
    {
      v80 = *v79;
    }

    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "STLI_Resampler.cpp";
      v114 = 1024;
      v115 = 37;
      v116 = 2080;
      v117 = "not (not m_resamplers.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v80, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v104);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v106);
    std::logic_error::logic_error(&v103, &v106);
    v103.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v107, &v103);
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = -1;
    v107.__vftable = &unk_1F5991430;
    v108 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
    *&v119[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v120 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
    v121 = 37;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v105);
  }

  if (*a2 == a2[1])
  {
    v81 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v81 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v83 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v82 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v82)
    {
      atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
      v84 = *v83;
      std::__shared_weak_count::__release_shared[abi:ne200100](v82);
    }

    else
    {
      v84 = *v83;
    }

    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "STLI_Resampler.cpp";
      v114 = 1024;
      v115 = 38;
      v116 = 2080;
      v117 = "not (not source.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v84, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v104);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v106);
    std::logic_error::logic_error(&v103, &v106);
    v103.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v107, &v103);
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = -1;
    v107.__vftable = &unk_1F5991430;
    v108 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
    *&v119[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v120 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
    v121 = 38;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v105);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "scale ratio");
  v14 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a4, buf);
  if (v14)
  {
    v15 = AMCP::Thing::convert_to<double>((v14 + 5));
  }

  else
  {
    v15 = 1.0;
  }

  if (SBYTE3(v117) < 0)
  {
    operator delete(*buf);
  }

  v16 = a7 - a6;
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  if (v17 != v18)
  {
    v19 = vcvtmd_s64_f64(v16);
    v20 = vcvtmd_s64_f64(a5);
    do
    {
      ShortTermLinearInterpolationResampler::SetRate(*v17, v15);
      if (*(a1 + 88) == 1)
      {
        *buf = v20;
        LODWORD(v107.__vftable) = 100 * v20;
        v26 = ShortTermLinearInterpolationResampler::PreFlight(**(a1 + 96), buf, &v107, v21, v22, v23, v24, v25, v98);
        if (!LODWORD(v107.__vftable))
        {
          v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v55 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v26);
          }

          v57 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v56 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v56)
          {
            atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
            v58 = *v57;
            std::__shared_weak_count::__release_shared[abi:ne200100](v56);
          }

          else
          {
            v58 = *v57;
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "STLI_Resampler.cpp";
            v114 = 1024;
            v115 = 50;
            v116 = 2080;
            v117 = "not (output_length > 0)";
            _os_log_error_impl(&dword_1DE1F9000, v58, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v104);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v106);
          std::logic_error::logic_error(&v103, &v106);
          v103.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v107, &v103);
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = -1;
          v107.__vftable = &unk_1F5991430;
          v108 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
          *&v119[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v120 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
          v121 = 50;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v105);
        }

        v16 = LODWORD(v107.__vftable);
      }

      else
      {
        *buf = v19;
        LODWORD(v107.__vftable) = 100 * v19;
        v27 = ShortTermLinearInterpolationResampler::PreFlight(**(a1 + 96), &v107, buf, v21, v22, v23, v24, v25, v98);
        LODWORD(v28) = v107.__vftable;
        if (vabdd_f64(v28, a5) > 1.0)
        {
          v59 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v59 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v27);
          }

          v61 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v60 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
            v62 = *v61;
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          else
          {
            v62 = *v61;
          }

          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "STLI_Resampler.cpp";
            v114 = 1024;
            v115 = 56;
            v116 = 2080;
            v117 = "not (std::abs(static_cast<double>(actual_input_consumed) - number_of_samples.get_double()) <= 1.0)";
            _os_log_error_impl(&dword_1DE1F9000, v62, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v104);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v106);
          std::logic_error::logic_error(&v103, &v106);
          v103.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v107, &v103);
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = -1;
          v107.__vftable = &unk_1F5991430;
          v108 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
          *&v119[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v120 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
          v121 = 56;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v105);
        }
      }

      ++v17;
    }

    while (v17 != v18);
  }

  v29 = *a3;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a3);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(&v106, v29, a6, a6 + v16);
  v31 = *a3;
  if (*a3)
  {
    if ((*(v31 + 20) & 0x20) != 0)
    {
      v32 = 1;
    }

    else
    {
      v32 = *(v31 + 36);
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = a2[1] - *a2;
  if (v33 != v106.__r_.__value_.__l.__size_ - v106.__r_.__value_.__r.__words[0])
  {
    v85 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v85 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v30);
    }

    v87 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v86 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
      v88 = *v87;
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    else
    {
      v88 = *v87;
    }

    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "STLI_Resampler.cpp";
      v114 = 1024;
      v115 = 65;
      v116 = 2080;
      v117 = "not (stream_count == dest.size())";
      _os_log_error_impl(&dword_1DE1F9000, v88, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v102);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v105);
    std::logic_error::logic_error(&v104, &v105);
    v104.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v107, &v104);
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = -1;
    v107.__vftable = &unk_1F5991430;
    v108 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
    *&v119[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v120 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
    v121 = 65;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v103);
  }

  if ((*(a1 + 60) & 0x20) != 0)
  {
    v99 = v33 >> 4;
    if ((v33 >> 4) >= 2)
    {
      v46 = 0;
      v47 = 0;
      v48 = vcvtmd_s64_f64(a5);
      v49 = vcvtmd_s64_f64(v16);
      do
      {
        v101 = v49;
        v102 = v48;
        v50 = *(a1 + 96);
        if (v47 >= (*(a1 + 104) - v50) >> 3)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v51 = ShortTermLinearInterpolationResampler::PushConvertFloat(*(v50 + 8 * v47), *(*a2 + v46), *(*a2 + v46 + 16), *(v106.__r_.__value_.__r.__words[0] + v46), *(v106.__r_.__value_.__r.__words[0] + v46 + 16), &v102, &v101, v32, v32);
        if (v51)
        {
          v68 = v51;
          v69 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v69 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v51);
          }

          v71 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v70 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v70)
          {
            atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
            v72 = *v71;
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          else
          {
            v72 = *v71;
          }

          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v75 = strerror(v68);
            *buf = 136315906;
            *&buf[4] = "STLI_Resampler.cpp";
            v114 = 1024;
            v115 = 98;
            v116 = 2080;
            v117 = "not (err == noErr)";
            v118 = 2080;
            *v119 = v75;
            _os_log_error_impl(&dword_1DE1F9000, v72, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s err:%s while calling STLI PushConvertFloat", buf, 0x26u);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v100);
          __cxa_allocate_exception(0x40uLL);
          v76 = strerror(v68);
          caulk::make_string("err:%s while calling STLI PushConvertFloat", &v105, v76);
          std::logic_error::logic_error(&v104, &v105);
          v104.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v107, &v104);
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = -1;
          v107.__vftable = &unk_1F5991430;
          v108 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
          *&v119[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v120 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
          v121 = 98;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v103);
        }

        ++v47;
        v46 += 16;
      }

      while (v99 >> 1 != v47);
    }

    if ((v33 & 0x10) != 0)
    {
      v101 = vcvtmd_s64_f64(v16);
      v102 = vcvtmd_s64_f64(a5);
      v52 = ShortTermLinearInterpolationResampler::PushConvertFloat(*(*(a1 + 104) - 8), *(*a2 + 16 * v99 - 16), 0, *(v106.__r_.__value_.__r.__words[0] + 16 * v99 - 16), 0, &v102, &v101, v32, v32);
      if (v52)
      {
        v89 = v52;
        v90 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v90 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v52);
        }

        v92 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v91 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          v93 = *v92;
          std::__shared_weak_count::__release_shared[abi:ne200100](v91);
        }

        else
        {
          v93 = *v92;
        }

        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          v96 = strerror(v89);
          *buf = 136315906;
          *&buf[4] = "STLI_Resampler.cpp";
          v114 = 1024;
          v115 = 108;
          v116 = 2080;
          v117 = "not (err == noErr)";
          v118 = 2080;
          *v119 = v96;
          _os_log_error_impl(&dword_1DE1F9000, v93, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s err:%s while calling STLI PushConvertFloat", buf, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v100);
        __cxa_allocate_exception(0x40uLL);
        v97 = strerror(v89);
        caulk::make_string("err:%s while calling STLI PushConvertFloat", &v105, v97);
        std::logic_error::logic_error(&v104, &v105);
        v104.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v107, &v104);
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v112 = -1;
        v107.__vftable = &unk_1F5991430;
        v108 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
        *&v119[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
        v120 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
        v121 = 108;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v103);
      }
    }
  }

  else
  {
    if (v32 >= 2)
    {
      v34 = 0;
      v35 = vcvtmd_s64_f64(a5);
      v36 = vcvtmd_s64_f64(v16);
      v37 = 4;
      do
      {
        v101 = v36;
        v102 = v35;
        v38 = *(a1 + 96);
        if (v34 >= (*(a1 + 104) - v38) >> 3)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v39 = ShortTermLinearInterpolationResampler::PushConvertFloat(*(v38 + 8 * v34), (**a2 + v37 - 4), (**a2 + v37), *v106.__r_.__value_.__l.__data_, (*v106.__r_.__value_.__l.__data_ + v37), &v102, &v101, v32, v32);
        if (v39)
        {
          v63 = v39;
          v64 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v64 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v39);
          }

          v66 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v65 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
            v67 = *v66;
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          else
          {
            v67 = *v66;
          }

          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v73 = strerror(v63);
            *buf = 136315906;
            *&buf[4] = "STLI_Resampler.cpp";
            v114 = 1024;
            v115 = 76;
            v116 = 2080;
            v117 = "not (err == noErr)";
            v118 = 2080;
            *v119 = v73;
            _os_log_error_impl(&dword_1DE1F9000, v67, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s err:%s while calling STLI PushConvertFloat", buf, 0x26u);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v100);
          __cxa_allocate_exception(0x40uLL);
          v74 = strerror(v63);
          caulk::make_string("err:%s while calling STLI PushConvertFloat", &v105, v74);
          std::logic_error::logic_error(&v104, &v105);
          v104.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v107, &v104);
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = -1;
          v107.__vftable = &unk_1F5991430;
          v108 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
          *&v119[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v120 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
          v121 = 76;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v103);
        }

        ++v34;
        v37 += 8;
      }

      while (v32 >> 1 != v34);
    }

    if (v32)
    {
      v101 = vcvtmd_s64_f64(v16);
      v102 = vcvtmd_s64_f64(a5);
      v40 = ShortTermLinearInterpolationResampler::PushConvertFloat(*(*(a1 + 104) - 8), (**a2 + 4 * (v32 - 1)), 0, (*v106.__r_.__value_.__l.__data_ + 4 * (v32 - 1)), 0, &v102, &v101, v32, v32);
      if (v40)
      {
        v41 = v40;
        v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v42 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v40);
        }

        v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          v45 = *v44;
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        else
        {
          v45 = *v44;
        }

        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v94 = strerror(v41);
          *buf = 136315906;
          *&buf[4] = "STLI_Resampler.cpp";
          v114 = 1024;
          v115 = 86;
          v116 = 2080;
          v117 = "not (err == noErr)";
          v118 = 2080;
          *v119 = v94;
          _os_log_error_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s err:%s while calling STLI PushConvertFloat", buf, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v100);
        __cxa_allocate_exception(0x40uLL);
        v95 = strerror(v41);
        caulk::make_string("err:%s while calling STLI PushConvertFloat", &v105, v95);
        std::logic_error::logic_error(&v104, &v105);
        v104.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v107, &v104);
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v112 = -1;
        v107.__vftable = &unk_1F5991430;
        v108 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
        *&v119[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
        v120 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
        v121 = 86;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v103);
      }
    }
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v106);
  v53 = *MEMORY[0x1E69E9840];
  return a6;
}

void AMCP::DAL::STLI_Resampler::~STLI_Resampler(AMCP::DAL::STLI_Resampler *this)
{
  v1 = (this + 96);
  std::vector<std::unique_ptr<ShortTermLinearInterpolationResampler>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = (this + 96);
  std::vector<std::unique_ptr<ShortTermLinearInterpolationResampler>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void std::vector<std::unique_ptr<ShortTermLinearInterpolationResampler>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          MEMORY[0x1E12C1730](v6, 0x1000C40AC875A91);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t HALS_IOUAUCDriver::request_config_change_callback(HALS_IOUAUCDriver *this, void *a2, uint64_t a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v34 = "HALS_IOUAUCDriver.cpp";
      v35 = 1024;
      v36 = 663;
      v37 = 2080;
      v38 = "(uc_driver) == nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s UC driver is null", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v25, "UC driver is null");
    std::runtime_error::runtime_error(&v26, &v25);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = -1;
    v26.__vftable = &unk_1F5992170;
    v27 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v26);
    v39 = "static void HALS_IOUAUCDriver::request_config_change_callback(void *, IOReturn, void *, uint32_t)";
    v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v41 = 663;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "request config change: size ", 28);
  v8 = MEMORY[0x1E12C1210](v7, a4);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v26, MEMORY[0x1E69E5318]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  v10 = std::ostream::flush();
  if (a4 <= 2)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = *v21;
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    else
    {
      v22 = *v21;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "HALS_IOUAUCDriver.cpp";
      v35 = 1024;
      v36 = 669;
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Incorrect size for request config change", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v25, "Incorrect size for request config change");
    std::runtime_error::runtime_error(&v26, &v25);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = -1;
    v26.__vftable = &unk_1F5992170;
    v27 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v26);
    v39 = "static void HALS_IOUAUCDriver::request_config_change_callback(void *, IOReturn, void *, uint32_t)";
    v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v41 = 669;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
  }

  result = *(this + 94);
  if (result)
  {
    v13 = *(a3 + 8);
    v12 = *(a3 + 16);
    LODWORD(v23) = *a3;
    v26.__vftable = v13;
    v24 = v12;
    result = (*(*result + 48))(result, &v23, &v26, &v24);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE62B0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, std::locale a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, int buf, int a30, int a31, __int16 a32)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a9)
    {
      operator delete(a9);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&buf);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
    std::runtime_error::~runtime_error(&a17);
    if (v33)
    {
      __cxa_free_exception(v32);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
    v36 = __cxa_begin_catch(exception_object);
    v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v37 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v36);
    }

    v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v40 = *v39;
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    else
    {
      v40 = *v39;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      *(v34 + 4) = "HALS_IOUAUCDriver.cpp";
      a32 = 1024;
      *(v34 + 14) = 684;
      _os_log_error_impl(&dword_1DE1F9000, v40, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception handling config change request", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE62ACF8);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUAUCDriver::abort_configuration_change(HALS_IOUAUCDriver *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  v5 = IOConnectCallMethod(this, 5u, input, 3u, 0, 0, 0, 0, 0, 0);
  if (v5)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      v12 = "HALS_IOUAUCDriver.cpp";
      v13 = 1024;
      v14 = 598;
      v15 = 1024;
      v16 = a2;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to abort configuration change for device id %u", buf, 0x18u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE62B3DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALS_IOUAUCDriver::properties_changed_callback(HALS_IOUAUCDriver *this, void *a2, int *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if ((a4 - 1) <= 1)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      *buf = 136315394;
      *&buf[4] = "HALS_IOUAUCDriver.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 622;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: properties changed, bad size", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v25, "properties changed, bad size");
    std::runtime_error::runtime_error(&v26, &v25);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = -1;
    v26.__vftable = &unk_1F5992170;
    v27 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v26);
    v34 = "static void HALS_IOUAUCDriver::properties_changed_callback(void *, IOReturn, void *, uint32_t)";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v36 = 622;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  v4 = 0;
  v5 = 0;
  v6 = a3 + 2;
  v22 = *a3;
  v7 = (a4 - 2);
  memset(buf, 0, 24);
  do
  {
    v9 = *v6;
    v6 += 2;
    v8 = v9;
    v10 = v5 - v4;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 2);
    v12 = v11 + 1;
    if (v11 + 1 > 0x1555555555555555)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    if (0x5555555555555556 * (-v4 >> 2) > v12)
    {
      v12 = 0x5555555555555556 * (-v4 >> 2);
    }

    if (0xAAAAAAAAAAAAAAABLL * (-v4 >> 2) >= 0xAAAAAAAAAAAAAAALL)
    {
      v13 = 0x1555555555555555;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v13);
    }

    v14 = 12 * v11;
    *v14 = v8;
    *(v14 + 4) = 1735159650;
    v5 = 12 * v11 + 12;
    v15 = (v14 + 12 * (v10 / -12));
    memcpy(v15, v4, v10);
    *buf = v15;
    *&buf[16] = 0;
    if (v4)
    {
      operator delete(v4);
    }

    v4 = v15;
    *&buf[8] = v5;
    --v7;
  }

  while (v7);
  v16 = *(this + 90);
  if (v16)
  {
    LODWORD(v26.__vftable) = v22;
    (*(*v16 + 48))(v16, &v26, buf);
    v4 = *buf;
  }

  if (v4)
  {
    *&buf[8] = v4;
    operator delete(v4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_IOUAUCDriver::GetPropertySize(HALS_IOUAUCDriver *this, const AudioObjectPropertyAddress *a2, unsigned int a3, const void *inputStruct, size_t inputStructCnt)
{
  v40 = *MEMORY[0x1E69E9840];
  *&v7 = *&a2->mSelector;
  *(&v7 + 1) = HIDWORD(*&a2->mSelector);
  v38 = v7;
  mElement = a2->mElement;
  input = a3;
  v39 = mElement;
  output = 0;
  outputCnt = 1;
  v9 = IOConnectCallMethod(this, 0xDu, &input, 4u, inputStruct, inputStructCnt, &output, &outputCnt, 0, 0);
  if (v9)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      caulk::string_from_4cc(&__p, a2->mSelector);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v28 = "HALS_IOUAUCDriver.cpp";
      v29 = 1024;
      v30 = 237;
      v31 = 2080;
      v32 = p_p;
      v33 = 1024;
      *v34 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to get property size %s, object id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v18, "Failed to get property size");
    std::runtime_error::runtime_error(&__p, &v18);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v34[2] = "size_t HALS_IOUAUCDriver::GetPropertySize(const AudioObjectPropertyAddress *, AudioObjectID, const void *, size_t)";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v36 = 237;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  result = output;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE62BC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a30);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a19);
  std::runtime_error::~runtime_error(&a18);
  if (v31)
  {
    __cxa_free_exception(v30);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOUAUCDriver::GetPropertyData(HALS_IOUAUCDriver *this, const AudioObjectPropertyAddress *a2, unsigned int a3, const void *inputStruct, size_t inputStructCnt, void *outputStruct, unint64_t *a7)
{
  v42 = *MEMORY[0x1E69E9840];
  *&v10 = *&a2->mSelector;
  *(&v10 + 1) = HIDWORD(*&a2->mSelector);
  v40 = v10;
  mElement = a2->mElement;
  input = a3;
  v41 = mElement;
  output = 0;
  outputCnt = 1;
  result = IOConnectCallMethod(this, 0xEu, &input, 4u, inputStruct, inputStructCnt, &output, &outputCnt, outputStruct, a7);
  if (result)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      caulk::string_from_4cc(&__p, a2->mSelector);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v30 = "HALS_IOUAUCDriver.cpp";
      v31 = 1024;
      v32 = 183;
      v33 = 2080;
      v34 = p_p;
      v35 = 1024;
      *v36 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to get property data list size %s, object id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v20, "Failed to get property data list size");
    std::runtime_error::runtime_error(&__p, &v20);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v36[2] = "void HALS_IOUAUCDriver::GetPropertyData(const AudioObjectPropertyAddress *, AudioObjectID, const void *, size_t, void *, size_t *)";
    v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v38 = 183;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  *a7 = output;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE62BF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a30);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a19);
  std::runtime_error::~runtime_error(&a18);
  if (v31)
  {
    __cxa_free_exception(v30);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
  _Unwind_Resume(a1);
}

void HALS_IOUAUCDriver::SetPropertyData(HALS_IOUAUCDriver *this, const AudioObjectPropertyAddress *a2, unsigned int a3, const void *a4, size_t a5, const void *a6, size_t a7)
{
  v57 = *MEMORY[0x1E69E9840];
  *&v9 = *&a2->mSelector;
  *(&v9 + 1) = HIDWORD(*&a2->mSelector);
  v55 = v9;
  mElement = a2->mElement;
  input = a3;
  v56 = mElement;
  if (!a6)
  {
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (!v23)
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v45 = "serialize_qualifier_and_data";
    v24 = MEMORY[0x1E69E9C10];
    v25 = "%s: Cannot serialize, data is null\n";
    goto LABEL_19;
  }

  if (!a7)
  {
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (!v23)
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v45 = "serialize_qualifier_and_data";
    v24 = MEMORY[0x1E69E9C10];
    v25 = "%s: Cannot serialize, data size is 0\n";
    goto LABEL_19;
  }

  v13 = a7 + a5 + 16;
  v14 = __CFADD__(a7, a5 + 16);
  if (a5 >= 0xFFFFFFFFFFFFFFF0 || v14)
  {
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (!v23)
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v45 = "serialize_qualifier_and_data";
    v24 = MEMORY[0x1E69E9C10];
    v25 = "%s: Cannot serialize, data overflow\n";
LABEL_19:
    _os_log_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
LABEL_20:
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v23);
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
      caulk::string_from_4cc(&__p, a2->mSelector);
      v30 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v45 = "HALS_IOUAUCDriver.cpp";
      v46 = 1024;
      v47 = 210;
      v48 = 2080;
      v49 = v30;
      v50 = 1024;
      *v51 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to serialze qualifier and data %s, object id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v37, "Failed to serialze qualifier and data");
    std::runtime_error::runtime_error(&__p, &v37);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v51[2] = "void HALS_IOUAUCDriver::SetPropertyData(const AudioObjectPropertyAddress *, AudioObjectID, const void *, size_t, const void *, size_t)";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v53 = 210;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
  }

  v18 = malloc_type_malloc(v13, 0xCFDE5B77uLL);
  v19 = v18;
  *v18 = a5;
  v18[1] = a7;
  v20 = v18 + 2;
  if (a4 && a5)
  {
    memcpy(v18 + 2, a4, a5);
  }

  memcpy(v20 + a5, a6, a7);
  v21 = IOConnectCallMethod(*(this + 1), 0xFu, &input, 4u, v19, v13, 0, 0, 0, 0);
  if (v21)
  {
    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v21);
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
      caulk::string_from_4cc(&__p, a2->mSelector);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v45 = "HALS_IOUAUCDriver.cpp";
      v46 = 1024;
      v47 = 216;
      v48 = 2080;
      v49 = p_p;
      v50 = 1024;
      *v51 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to set property data %s, object id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v37, "Failed to set property data");
    std::runtime_error::runtime_error(&__p, &v37);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v51[2] = "void HALS_IOUAUCDriver::SetPropertyData(const AudioObjectPropertyAddress *, AudioObjectID, const void *, size_t, const void *, size_t)";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v53 = 216;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
  }

  free(v19);
  v22 = *MEMORY[0x1E69E9840];
}

void sub_1DE62C63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a31);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a20);
  std::runtime_error::~runtime_error(&a19);
  if (v33)
  {
    __cxa_free_exception(v32);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a30);
  free(v31);
  _Unwind_Resume(a1);
}

BOOL HALS_IOUAUCDriver::GetHasProperty(HALS_IOUAUCDriver *this, const AudioObjectPropertyAddress *a2, unsigned int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  *&v5 = *&a2->mSelector;
  *(&v5 + 1) = HIDWORD(*&a2->mSelector);
  v36 = v5;
  mElement = a2->mElement;
  input = a3;
  v37 = mElement;
  output = 0;
  outputCnt = 1;
  v7 = IOConnectCallMethod(this, 0xBu, &input, 4u, 0, 0, &output, &outputCnt, 0, 0);
  if (v7)
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
      caulk::string_from_4cc(&__p, a2->mSelector);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v26 = "HALS_IOUAUCDriver.cpp";
      v27 = 1024;
      v28 = 260;
      v29 = 2080;
      v30 = p_p;
      v31 = 1024;
      *v32 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to get has property %s, object id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "Failed to get has property");
    std::runtime_error::runtime_error(&__p, &v16);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v32[2] = "BOOL HALS_IOUAUCDriver::GetHasProperty(const AudioObjectPropertyAddress *, AudioObjectID)";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v34 = 260;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  result = output != 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE62CA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a30);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a19);
  std::runtime_error::~runtime_error(&a18);
  if (v31)
  {
    __cxa_free_exception(v30);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
  _Unwind_Resume(a1);
}

BOOL HALS_IOUAUCDriver::GetIsPropertySettable(HALS_IOUAUCDriver *this, const AudioObjectPropertyAddress *a2, unsigned int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  *&v5 = *&a2->mSelector;
  *(&v5 + 1) = HIDWORD(*&a2->mSelector);
  v36 = v5;
  mElement = a2->mElement;
  input = a3;
  v37 = mElement;
  output = 0;
  outputCnt = 1;
  v7 = IOConnectCallMethod(this, 0xCu, &input, 4u, 0, 0, &output, &outputCnt, 0, 0);
  if (v7)
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
      caulk::string_from_4cc(&__p, a2->mSelector);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v26 = "HALS_IOUAUCDriver.cpp";
      v27 = 1024;
      v28 = 284;
      v29 = 2080;
      v30 = p_p;
      v31 = 1024;
      *v32 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to get is property settable %s, object_id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "Failed to get is property settable");
    std::runtime_error::runtime_error(&__p, &v16);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v32[2] = "BOOL HALS_IOUAUCDriver::GetIsPropertySettable(const AudioObjectPropertyAddress *, AudioObjectID)";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v34 = 284;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  result = output != 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE62CD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a30);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a19);
  std::runtime_error::~runtime_error(&a18);
  if (v31)
  {
    __cxa_free_exception(v30);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOUAUCDriver::get_device_timestamp_buffer_id(HALS_IOUAUCDriver *this, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  output = 0;
  outputCnt = 1;
  v2 = IOConnectCallMethod(this, 6u, input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (v2)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      *buf = 136315650;
      v21 = "HALS_IOUAUCDriver.cpp";
      v22 = 1024;
      v23 = 300;
      v24 = 2080;
      v25 = "ret != kIOReturnSuccess";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get timestamp buffer id", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v10, "Failed to get timestamp buffer id");
    std::runtime_error::runtime_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5992170;
    v12 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v11);
    v26 = "uint64_t HALS_IOUAUCDriver::get_device_timestamp_buffer_id(AudioObjectID)";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v28 = 300;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  result = output;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE62D06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, std::runtime_error a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v23 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a22);
  std::runtime_error::~runtime_error(&a21);
  if (a13)
  {
    __cxa_free_exception(v22);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v23 - 125));
  _Unwind_Resume(a1);
}

uint64_t HALS_IOUAUCDriver::get_device_client_status_buffer_id(HALS_IOUAUCDriver *this, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  output = 0;
  outputCnt = 1;
  v2 = IOConnectCallMethod(this, 7u, input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (v2)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      *buf = 136315650;
      v21 = "HALS_IOUAUCDriver.cpp";
      v22 = 1024;
      v23 = 311;
      v24 = 2080;
      v25 = "ret != kIOReturnSuccess";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get client status buffer id", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v10, "Failed to get client status buffer id");
    std::runtime_error::runtime_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5992170;
    v12 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v11);
    v26 = "uint64_t HALS_IOUAUCDriver::get_device_client_status_buffer_id(AudioObjectID)";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v28 = 311;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  result = output;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE62D370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, std::runtime_error a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v23 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a22);
  std::runtime_error::~runtime_error(&a21);
  if (a13)
  {
    __cxa_free_exception(v22);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v23 - 125));
  _Unwind_Resume(a1);
}

uint64_t HALS_IOUAUCDriver::get_device_io_status_buffer_id(HALS_IOUAUCDriver *this, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  output = 0;
  outputCnt = 1;
  v2 = IOConnectCallMethod(this, 0x10u, input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (v2)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      *buf = 136315650;
      v21 = "HALS_IOUAUCDriver.cpp";
      v22 = 1024;
      v23 = 322;
      v24 = 2080;
      v25 = "ret != kIOReturnSuccess";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get io status buffer id", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v10, "Failed to get io status buffer id");
    std::runtime_error::runtime_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5992170;
    v12 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v11);
    v26 = "uint64_t HALS_IOUAUCDriver::get_device_io_status_buffer_id(AudioObjectID)";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v28 = 322;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  result = output;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE62D674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, std::runtime_error a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v23 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a22);
  std::runtime_error::~runtime_error(&a21);
  if (a13)
  {
    __cxa_free_exception(v22);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v23 - 125));
  _Unwind_Resume(a1);
}

uint64_t HALS_IOUAUCDriver::map_memory(HALS_IOUAUCDriver *this, uint64_t a2, void *a3, unint64_t *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v5 = MEMORY[0x1E12C07D0](this, a2, *MEMORY[0x1E69E9A60], &v22, &v21, 1);
  if (v5)
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
      *buf = 136315650;
      v24 = "HALS_IOUAUCDriver.cpp";
      v25 = 1024;
      v26 = 332;
      v27 = 2080;
      v28 = "ret != kIOReturnSuccess";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to map memory", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v13, "Failed to map memory");
    std::runtime_error::runtime_error(&v14, &v13);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5992170;
    v15 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v14);
    v29 = "mach_vm_address_t HALS_IOUAUCDriver::map_memory(uint64_t, IOOptionBits, size_t &)";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v31 = 332;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
  }

  result = v22;
  *a3 = v21;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE62D96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, std::runtime_error a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v22 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a21);
  std::runtime_error::~runtime_error(&a20);
  if (a11)
  {
    __cxa_free_exception(v21);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v22 - 129));
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOUAUCDriver::unmap_memory(HALS_IOUAUCDriver *this, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  result = MEMORY[0x1E12C0830](this, a2, *MEMORY[0x1E69E9A60], a3);
  if (result)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      *buf = 136315650;
      v19 = "HALS_IOUAUCDriver.cpp";
      v20 = 1024;
      v21 = 340;
      v22 = 2080;
      v23 = "ret != kIOReturnSuccess";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to unmap memory", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v10, "Failed to unmap memory");
    std::runtime_error::runtime_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5992170;
    v12 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v11);
    v24 = "void HALS_IOUAUCDriver::unmap_memory(uint64_t, mach_vm_address_t)";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v26 = 340;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE62DC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, std::runtime_error a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v22 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a21);
  std::runtime_error::~runtime_error(&a20);
  if (a11)
  {
    __cxa_free_exception(v21);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v22 - 113));
  _Unwind_Resume(a1);
}

void sub_1DE62E1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, std::runtime_error a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v28);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v27);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void ***applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAUCDriver::get_custom_property_value(unsigned int,AudioObjectPropertyAddress,applesauce::CF::TypeRef)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(const void ***a1)
{
  v2 = **a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void ***applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAUCDriver::set_custom_property_value(unsigned int,AudioObjectPropertyAddress,applesauce::CF::TypeRef,applesauce::CF::TypeRef)::$_1,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(const void ***a1)
{
  v2 = **a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1DE62E904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, std::runtime_error a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v28);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v27);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOUAUCDriver::perform_config_change(HALS_IOUAUCDriver *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  result = IOConnectCallMethod(this, 4u, input, 3u, 0, 0, 0, 0, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE62EAB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ADS::SelectorControl::SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int a5, int *a6, unsigned int a7, uint64_t a8, _DWORD *a9, uint64_t a10)
{
  v14 = a10;
  v59 = *MEMORY[0x1E69E9840];
  v15 = *a4;
  if (*a4 == 1668049771)
  {
    if (a7 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 297;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: wrong property data size for kAudioSelectorControlPropertyItemKind", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    if (a5 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 298;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: wrong qualifier data size for kAudioSelectorControlPropertyItemKind", buf, 0x12u);
      }

      v50 = __cxa_allocate_exception(0x10uLL);
      *v50 = off_1F5991DD8;
      v50[2] = 561211770;
    }

    v24 = a1 + 120;
    v36 = (*(*(a1 + 120) + 16))(a1 + 120);
    v37 = v36;
    v38 = *(a1 + 208);
    v39 = *(a1 + 216);
    if (v38 != v39)
    {
      v54 = v36;
      v40 = &v56[4];
      while (1)
      {
        *buf = *v38;
        v41 = OS::CF::UntypedObject::UntypedObject(v40, *(v38 + 16));
        *&v56[4] = &unk_1F5991188;
        v42 = *(v38 + 32);
        v57 = *(v38 + 24);
        v58 = v42;
        v43 = *a6;
        OS::CF::UntypedObject::~UntypedObject(v41);
        if (*buf == v43)
        {
          break;
        }

        v38 += 40;
        if (v38 == v39)
        {
          v38 = v39;
          break;
        }
      }

      v39 = *(a1 + 216);
      v37 = v54;
    }

    if (v38 == v39)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 304;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: ID not found", buf, 0x12u);
      }

      v52 = __cxa_allocate_exception(0x10uLL);
      *v52 = off_1F5991DD8;
      v52[2] = 560947818;
    }

    *(v38 + 28) = *a8;
    *a9 = 1;
    v44 = *(a1 + 116);
    *buf = 1668049771;
    *v56 = v44;
    std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
    if (!v37)
    {
      goto LABEL_38;
    }

LABEL_37:
    (*(*v24 + 24))(a1 + 120);
LABEL_38:
    v45 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v15 == 1935894894)
  {
    if (a7 != 8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 279;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: wrong property data size for kAudioSelectorControlPropertyItemName", buf, 0x12u);
      }

      v47 = __cxa_allocate_exception(0x10uLL);
      *v47 = off_1F5991DD8;
      v47[2] = 561211770;
    }

    if (a5 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 280;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: wrong qualifier data size for kAudioSelectorControlPropertyItemName", buf, 0x12u);
      }

      v49 = __cxa_allocate_exception(0x10uLL);
      *v49 = off_1F5991DD8;
      v49[2] = 561211770;
    }

    v24 = a1 + 120;
    v25 = (*(*(a1 + 120) + 16))(a1 + 120);
    v26 = v25;
    v27 = *(a1 + 208);
    v28 = *(a1 + 216);
    if (v27 != v28)
    {
      v53 = v25;
      v29 = &v56[4];
      while (1)
      {
        *buf = *v27;
        v30 = OS::CF::UntypedObject::UntypedObject(v29, *(v27 + 16));
        *&v56[4] = &unk_1F5991188;
        v31 = *(v27 + 32);
        v57 = *(v27 + 24);
        v58 = v31;
        v32 = *a6;
        OS::CF::UntypedObject::~UntypedObject(v30);
        if (*buf == v32)
        {
          break;
        }

        v27 += 40;
        if (v27 == v28)
        {
          v27 = v28;
          break;
        }
      }

      v28 = *(a1 + 216);
      v14 = a10;
      v26 = v53;
    }

    if (v27 == v28)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 286;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: ID not found", buf, 0x12u);
      }

      v51 = __cxa_allocate_exception(0x10uLL);
      *v51 = off_1F5991DD8;
      v51[2] = 560947818;
    }

    v33 = *(v27 + 16);
    v34 = *(a8 + 8);
    *(v27 + 16) = v34;
    if (v34)
    {
      CFRetain(v34);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    *a9 = 1;
    v35 = *(a1 + 116);
    *buf = 1935894894;
    *v56 = v35;
    std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](v14, buf);
    if (!v26)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v15 == 1935893353)
  {
    v16 = (a1 + 120);
    v17 = (*(*(a1 + 120) + 16))(a1 + 120);
    v18 = v16[11];
    for (i = v16[12]; v18 != i; v18 += 40)
    {
      if (a7 >= 4)
      {
        v20 = 0;
        v21 = a8;
        v22 = a7 >> 2;
        do
        {
          v23 = *v21++;
          v20 |= *v18 == v23;
          --v22;
        }

        while (v22);
      }

      else
      {
        v20 = 0;
      }

      *(v18 + 32) = v20 & 1;
    }

    if (v17)
    {
      (*(*v16 + 24))(v16);
    }

    goto LABEL_38;
  }

  v46 = *MEMORY[0x1E69E9840];

  ADS::BaseObject::SetPropertyData(a1, a2);
}

void sub_1DE62F348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ADS::SelectorControl::GetPropertyData(ADS::SelectorControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, int *a6, unsigned int a7, unsigned int *a8, _DWORD *a9)
{
  v9 = a8;
  v13 = a9;
  v54 = *MEMORY[0x1E69E9840];
  mSelector = a4->mSelector;
  if (a4->mSelector > 1935893352)
  {
    if (mSelector == 1935893353)
    {
      v36 = this + 120;
      v37 = (*(*(this + 15) + 16))(this + 120);
      v38 = 0;
      if (a7)
      {
        v39 = *(this + 26);
        v40 = *(this + 27);
        do
        {
          if (v39 == v40)
          {
            break;
          }

          if (*(v39 + 32) == 1)
          {
            a9[v38++] = *v39;
          }

          v39 += 40;
        }

        while (v38 < a7);
        v38 *= 4;
      }

      *v9 = v38;
      if (v37)
      {
        (*(*v36 + 24))(this + 120);
      }

      goto LABEL_49;
    }

    if (mSelector != 1935894894)
    {
      goto LABEL_23;
    }

    if (a7 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v51 = "ADS_SelectorControl.cpp";
        *&v51[8] = 1024;
        *&v51[10] = 214;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: not enough space for the return value of kAudioSelectorControlPropertyItemName", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    if (a5 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v51 = "ADS_SelectorControl.cpp";
        *&v51[8] = 1024;
        *&v51[10] = 215;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: qualifier for kAudioSelectorControlPropertyItemName must be a UInt32 ID", buf, 0x12u);
      }

      v44 = __cxa_allocate_exception(0x10uLL);
      *v44 = off_1F5991DD8;
      v44[2] = 560947818;
    }

    v20 = this + 120;
    v21 = (*(*(this + 15) + 16))(this + 120);
    v22 = *(this + 26);
    v23 = *(this + 27);
    if (v22 != v23)
    {
      v49 = v9;
      v24 = &v51[4];
      while (1)
      {
        *buf = *v22;
        v25 = OS::CF::UntypedObject::UntypedObject(v24, *(v22 + 16));
        *&v51[4] = &unk_1F5991188;
        v26 = *(v22 + 32);
        v52 = *(v22 + 24);
        v53 = v26;
        v27 = *a6;
        OS::CF::UntypedObject::~UntypedObject(v25);
        if (*buf == v27)
        {
          break;
        }

        v22 += 40;
        if (v22 == v23)
        {
          v22 = v23;
          break;
        }
      }

      v23 = *(this + 27);
      v9 = v49;
    }

    if (v22 == v23)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v51 = "ADS_SelectorControl.cpp";
        *&v51[8] = 1024;
        *&v51[10] = 221;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: ID not found", buf, 0x12u);
      }

      v46 = __cxa_allocate_exception(0x10uLL);
      *v46 = off_1F5991DD8;
      v46[2] = 560947818;
    }

    *a9 = CFStringCreateCopy(*MEMORY[0x1E695E478], *(v22 + 16));
    *v9 = 8;
    if (!v21)
    {
      goto LABEL_49;
    }

LABEL_22:
    (*(*v20 + 24))(this + 120);
LABEL_49:
    v41 = *MEMORY[0x1E69E9840];
    return;
  }

  if (mSelector == 1668049771)
  {
    if (a7 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v51 = "ADS_SelectorControl.cpp";
        *&v51[8] = 1024;
        *&v51[10] = 229;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: not enough space for the return value of kAudioSelectorControlPropertyItemKind", buf, 0x12u);
      }

      v43 = __cxa_allocate_exception(0x10uLL);
      *v43 = off_1F5991DD8;
      v43[2] = 561211770;
    }

    if (a5 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v51 = "ADS_SelectorControl.cpp";
        *&v51[8] = 1024;
        *&v51[10] = 230;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: qualifier for kAudioSelectorControlPropertyItemKind must be a UInt32 ID", buf, 0x12u);
      }

      v45 = __cxa_allocate_exception(0x10uLL);
      *v45 = off_1F5991DD8;
      v45[2] = 561211770;
    }

    v20 = this + 120;
    v29 = (*(*(this + 15) + 16))(this + 120);
    v30 = *(this + 26);
    v31 = *(this + 27);
    if (v30 != v31)
    {
      v32 = &v51[4];
      while (1)
      {
        *buf = *v30;
        v33 = OS::CF::UntypedObject::UntypedObject(v32, *(v30 + 16));
        *&v51[4] = &unk_1F5991188;
        v34 = *(v30 + 32);
        v52 = *(v30 + 24);
        v53 = v34;
        v35 = *a6;
        OS::CF::UntypedObject::~UntypedObject(v33);
        if (*buf == v35)
        {
          break;
        }

        v30 += 40;
        if (v30 == v31)
        {
          v30 = v31;
          break;
        }
      }

      v31 = *(this + 27);
    }

    if (v30 == v31)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v51 = "ADS_SelectorControl.cpp";
        *&v51[8] = 1024;
        *&v51[10] = 236;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: ID not found", buf, 0x12u);
      }

      v47 = 560947818;
    }

    else
    {
      if (*(v30 + 24))
      {
        *a9 = *(v30 + 28);
        *v9 = 4;
        if (!v29)
        {
          goto LABEL_49;
        }

        goto LABEL_22;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v51 = "ADS_SelectorControl.cpp";
        *&v51[8] = 1024;
        *&v51[10] = 237;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  This item does not have a kind.", buf, 0x12u);
      }

      v47 = 1852797029;
    }

    v48 = __cxa_allocate_exception(0x10uLL);
    *v48 = off_1F5991DD8;
    v48[2] = v47;
  }

  if (mSelector == 1935892841)
  {
    v15 = a7 >> 2;
    v16 = *(this + 26);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 27) - v16) >> 3) < v15)
    {
      v15 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 27) - v16) >> 3);
    }

    if (v15)
    {
      v17 = v15;
      do
      {
        v18 = *v16;
        v16 += 10;
        *v13++ = v18;
        --v17;
      }

      while (v17);
      v19 = 4 * v15;
    }

    else
    {
      v19 = 0;
    }

    *a8 = v19;
    goto LABEL_49;
  }

LABEL_23:
  v28 = *MEMORY[0x1E69E9840];

  ADS::Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE62FC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ADS::SelectorControl::GetPropertyDataSize(ADS::SelectorControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6)
{
  mSelector = a4->mSelector;
  if (a4->mSelector > 1935892840)
  {
    switch(mSelector)
    {
      case 0x73636169u:
        return 858993460 * ((*(this + 27) - *(this + 26)) >> 3);
      case 0x7363696Eu:
        return 8;
      case 0x73636369u:
        v8 = *(this + 26);
        v9 = *(this + 27);
        if (v8 == v9)
        {
          return 0;
        }

        v10 = 0;
        v11 = v16;
        do
        {
          v15 = *v8;
          v12 = OS::CF::UntypedObject::UntypedObject(v11, *(v8 + 2));
          v16[0] = &unk_1F5991188;
          v13 = *(v8 + 3);
          v17 = *(v8 + 32);
          v16[2] = v13;
          v14 = v17;
          OS::CF::UntypedObject::~UntypedObject(v12);
          v10 += v14;
          v8 += 10;
        }

        while (v8 != v9);
        return (4 * v10);
    }
  }

  else if (mSelector == 1667591277 || mSelector == 1668049771 || mSelector == 1668506480)
  {
    return 4;
  }

  return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
}

uint64_t ADS::SelectorControl::IsPropertySettable(ADS::SelectorControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  v5 = 1;
  if (a4->mSelector > 1935892840)
  {
    if (mSelector == 1935894894 || mSelector == 1935893353)
    {
      return v5;
    }

    v6 = 1935892841;
  }

  else
  {
    if (mSelector == 1667591277)
    {
      return 0;
    }

    if (mSelector == 1668049771)
    {
      return v5;
    }

    v6 = 1668506480;
  }

  if (mSelector == v6)
  {
    return 0;
  }

  return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
}

uint64_t ADS::SelectorControl::HasProperty(ADS::SelectorControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  if (a4->mSelector > 1935892840)
  {
    v5 = mSelector == 1935892841 || mSelector == 1935893353;
    v6 = 1935894894;
  }

  else
  {
    v5 = mSelector == 1667591277 || mSelector == 1668049771;
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

void ADS::SelectorControl::~SelectorControl(ADS::SelectorControl *this)
{
  ADS::SelectorControl::~SelectorControl(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984E80;
  v2 = (this + 208);
  std::vector<ADS::SelectorControl::SelectorItem>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));

  ADS::BaseObject::~BaseObject(this);
}

void std::vector<ADS::SelectorControl::SelectorItem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 40;
        OS::CF::UntypedObject::~UntypedObject((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const __CFArray *ADS::SelectorControl::parseItems(void *a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    result = OS::CF::ArrayBase<__CFArray const*>::GetSize(*(a2 + 8));
    if (i >= result)
    {
      break;
    }

    v39 = &unk_1F5991188;
    cf = 0;
    OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v36, a2, i);
    if (theDict)
    {
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v34, theDict, @"id");
      if (v35)
      {
        v6 = OS::CF::Number::GetValue<int>(v35, 0);
      }

      else
      {
        v6 = i;
      }

      v38 = v6;
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v32, theDict, @"name");
      if (v33)
      {
        OS::CF::String::AsStdString(&__p, v32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        OS::CF::String::String(v30, p_p);
        v8 = cf;
        cf = v31;
        v31 = v8;
        OS::CF::UntypedObject::~UntypedObject(v30);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&__p, theDict, @"selected");
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v30, theDict, @"kind");
        v9 = __p.__r_.__value_.__s.__data_[8];
        if (__p.__r_.__value_.__l.__size_)
        {
          v9 = OS::CF::Boolean::AsBool(__p.__r_.__value_.__l.__size_);
        }

        v42 = v9;
        if (v31)
        {
          HIDWORD(v41) = OS::CF::Number::GetValue<unsigned int>(v31, 0);
          v10 = 1;
        }

        else
        {
          v10 = 0;
        }

        LOBYTE(v41) = v10;
        v12 = a1[27];
        v11 = a1[28];
        if (v12 >= v11)
        {
          v15 = a1[26];
          v16 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v15) >> 3);
          v17 = v16 + 1;
          if (v16 + 1 > 0x666666666666666)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v18 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v15) >> 3);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x333333333333333)
          {
            v19 = 0x666666666666666;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (v19 <= 0x666666666666666)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v20 = 8 * ((v12 - v15) >> 3);
          *v20 = v38;
          OS::CF::UntypedObject::UntypedObject((v20 + 8), cf);
          v21 = a1[26];
          v22 = a1[27];
          v23 = 40 * v16 - (v22 - v21);
          *(v20 + 8) = &unk_1F5991188;
          *(v20 + 24) = v41;
          *(v20 + 32) = v42;
          if (v22 != v21)
          {
            v24 = 40 * v16 - 8 * ((v22 - v21) >> 3) + 8;
            v25 = v21;
            v26 = v20 - (v22 - v21);
            do
            {
              *v26 = *v25;
              *(v26 + 16) = *(v25 + 16);
              *(v25 + 16) = 0;
              *(v26 + 8) = &unk_1F5991188;
              v27 = *(v25 + 24);
              *(v26 + 32) = *(v25 + 32);
              *(v26 + 24) = v27;
              v25 += 40;
              v26 += 40;
              v24 += 40;
            }

            while (v25 != v22);
            do
            {
              OS::CF::UntypedObject::~UntypedObject((v21 + 8));
              v21 += 40;
            }

            while (v21 != v22);
          }

          v14 = v20 + 40;
          v28 = a1[26];
          a1[26] = v23;
          *(a1 + 27) = (v20 + 40);
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v12 = v38;
          OS::CF::UntypedObject::UntypedObject((v12 + 8), cf);
          *(v12 + 8) = &unk_1F5991188;
          v13 = v41;
          *(v12 + 32) = v42;
          *(v12 + 24) = v13;
          v14 = v12 + 40;
        }

        a1[27] = v14;
        OS::CF::UntypedObject::~UntypedObject(v30);
        OS::CF::UntypedObject::~UntypedObject(&__p);
      }

      OS::CF::UntypedObject::~UntypedObject(v32);
      OS::CF::UntypedObject::~UntypedObject(v34);
    }

    OS::CF::UntypedObject::~UntypedObject(v36);
    OS::CF::UntypedObject::~UntypedObject(&v39);
  }

  return result;
}

void sub_1DE63047C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OS::CF::UntypedObject *a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  OS::CF::UntypedObject::~UntypedObject(&a14);
  OS::CF::UntypedObject::~UntypedObject(&a11);
  OS::CF::UntypedObject::~UntypedObject(&a16);
  OS::CF::UntypedObject::~UntypedObject(&a18);
  OS::CF::UntypedObject::~UntypedObject(&a20);
  OS::CF::UntypedObject::~UntypedObject(a10);
  _Unwind_Resume(a1);
}

ADS::Control *ADS::SelectorControl::SelectorControl(ADS::Control *a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v8 = ADS::Control::Control(a1, a2, a3, a4, a5, 1936483188);
  *v8 = &unk_1F5984E80;
  *(v8 + 26) = 0;
  *(v8 + 27) = 0;
  *(v8 + 28) = 0;
  OS::CF::UntypedObject::UntypedObject(v10, *(a6 + 8));
  v10[0] = &unk_1F59910D0;
  ADS::SelectorControl::parseItems(a1, v10);
  OS::CF::UntypedObject::~UntypedObject(v10);
  return a1;
}

void sub_1DE630568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  OS::CF::UntypedObject::~UntypedObject(va);
  std::vector<ADS::SelectorControl::SelectorItem>::__destroy_vector::operator()[abi:ne200100](va1);
  ADS::Control::~Control(v2);
  _Unwind_Resume(a1);
}

void HALB_CFPlugIn::~HALB_CFPlugIn(HALB_CFPlugIn *this)
{
  HALB_CFPlugIn::~HALB_CFPlugIn(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984F80;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
      *(this + 1) = 0;
    }
  }
}

CFStringRef HALB_CFPlugIn::GetBundleID(HALB_CFPlugIn *this)
{
  if (!this)
  {
    return 0;
  }

  Bundle = CFPlugInGetBundle(this);
  if (!Bundle)
  {
    return 0;
  }

  return CFBundleGetIdentifier(Bundle);
}

double HALIO::HALIO_Graph_Builder::maybe_set_master_device(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 1)
  {
    v4 = *a3;
    if (*a3)
    {
      v6 = *a1;
      CFRetain(*a3);
      cf = v4;
      v7 = (*(*v6 + 24))(v6, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v7)
      {
        if (!*a3)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(exception);
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(&v10, *a3);
        if (*(a2 + 63) < 0)
        {
          operator delete(*(a2 + 40));
        }

        result = *&v10;
        *(a2 + 40) = v10;
        *(a2 + 56) = v11;
        *(a2 + 64) = 1;
      }
    }
  }

  return result;
}

void HALIO::HALIO_Graph_Builder::create_graph_description_from_aggregate_description(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFDictionaryRef *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!*a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_53;
  }

  v6 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
  v40 = v6;
  if (!v6)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v38, *a5, v6);
  CFRelease(v6);
  if (v39 != 1)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    goto LABEL_40;
  }

  if (!*a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_53;
  }

  v7 = CFStringCreateWithBytes(0, "stacked channel policy", 22, 0x8000100u, 0);
  v40 = v7;
  if (!v7)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "Could not construct");
    __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "Could not construct");
    __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v37, *a5, v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v7);
  if (!v37 || (applesauce::CF::convert_to<BOOL,0>(v37), !*a5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_53;
  }

  v8 = CFStringCreateWithBytes(0, "subdevices", 10, 0x8000100u, 0);
  v40 = v8;
  if (!v8)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "Could not construct");
    __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&theArray, *a5, v8);
  CFRelease(v8);
  if (v36 == 1)
  {
    if (!theArray)
    {
      goto LABEL_49;
    }

    v9 = CFArrayGetCount(theArray) != 0;
  }

  else
  {
    v9 = 0;
  }

  if (!*a5)
  {
LABEL_49:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_53;
  }

  v10 = CFStringCreateWithBytes(0, "taps", 4, 0x8000100u, 0);
  v40 = v10;
  if (!v10)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v18, "Could not construct");
    __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v33, *a5, v10);
  CFRelease(v10);
  if (v34 == 1)
  {
    if (!v33)
    {
LABEL_52:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_53:
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (CFArrayGetCount(v33))
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    if ((v11 & 1) == 0)
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
      if (v33)
      {
        CFRelease(v33);
      }

      goto LABEL_32;
    }

LABEL_27:
    if (v38)
    {
      applesauce::CF::convert_to<std::string,0>(&v22, v38);
      v24 = 0;
      v25 = v22;
      v26 = v23;
      v22 = 0uLL;
      v23 = 0;
      v27 = 0x100000000;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      AMCP::Node_Description::Node_Description(&v40, &v24);
      v20 = 0uLL;
      v21 = 0;
      cf = &v20;
      LOBYTE(v43) = 0;
      operator new();
    }

    goto LABEL_52;
  }

  if (v9)
  {
    goto LABEL_27;
  }

  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
LABEL_32:
  if (v36 == 1 && theArray)
  {
    CFRelease(theArray);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if ((v39 & 1) != 0 && v38)
  {
    CFRelease(v38);
  }

LABEL_40:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE633FFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALIO::HALIO_Graph_Builder::add_aggregate_subdevices_to_graph_description_gridways(AMCP::Log::AMCP_Scope_Registry *a1, void *a2, uint64_t a3, double *a4, uint64_t a5, int a6)
{
  v206 = *MEMORY[0x1E69E9840];
  if (a2[1] - *a2 != 120)
  {
    v108 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v108 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v110 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v109 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v109)
    {
      atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
      v111 = *v110;
      std::__shared_weak_count::__release_shared[abi:ne200100](v109);
    }

    else
    {
      v111 = *v110;
    }

    if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_290;
    }

    *valuePtr = 136315650;
    *&valuePtr[4] = "HALIO_Graph_Builder.cpp";
    *&valuePtr[12] = 1024;
    *&valuePtr[14] = 473;
    *&valuePtr[18] = 2080;
    *&valuePtr[20] = "in_out_graph.m_nodes.size() == 1";
    v118 = "%32s:%-5d Assertion Failed: %s Graph should have exactly 1 node";
LABEL_289:
    _os_log_error_impl(&dword_1DE1F9000, v111, OS_LOG_TYPE_ERROR, v118, valuePtr, 0x1Cu);
    goto LABEL_290;
  }

  v156 = *a2;
  if (**a2)
  {
    v112 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v112 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v114 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v113 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v113)
    {
      atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
      v111 = *v114;
      std::__shared_weak_count::__release_shared[abi:ne200100](v113);
    }

    else
    {
      v111 = *v114;
    }

    if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_290;
    }

    *valuePtr = 136315650;
    *&valuePtr[4] = "HALIO_Graph_Builder.cpp";
    *&valuePtr[12] = 1024;
    *&valuePtr[14] = 474;
    *&valuePtr[18] = 2080;
    *&valuePtr[20] = "in_out_graph.m_nodes[0].mNodeType == AMCP::Node_Type::IOContext";
    v118 = "%32s:%-5d Assertion Failed: %s The only node in the graph should be an IOC";
    goto LABEL_289;
  }

  v143 = a2 + 3;
  if (a2[3] != a2[4])
  {
    v115 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v115 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v117 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v116 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v116)
    {
      atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
      v111 = *v117;
      std::__shared_weak_count::__release_shared[abi:ne200100](v116);
    }

    else
    {
      v111 = *v117;
    }

    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315650;
      *&valuePtr[4] = "HALIO_Graph_Builder.cpp";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = 475;
      *&valuePtr[18] = 2080;
      *&valuePtr[20] = "in_out_graph.m_wires.empty()";
      v118 = "%32s:%-5d Assertion Failed: %s There should not be any wires in the graph yet";
      goto LABEL_289;
    }

LABEL_290:
    abort();
  }

  v167 = 0;
  v168 = 0;
  v169 = 0;
  if (!a6 && (*(a3 + 64) & 1) != 0)
  {
    goto LABEL_6;
  }

  v9 = *a3;
  if (!*a3)
  {
    goto LABEL_252;
  }

  Count = CFArrayGetCount(*a3);
  v11 = Count;
  v12 = *a3;
  if (*a3)
  {
    v13 = CFArrayGetCount(*a3);
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (!Count)
    {
      goto LABEL_6;
    }
  }

  v107 = 0;
  do
  {
    if (v9 == v12 && v13 == v107)
    {
      break;
    }

    applesauce::CF::details::at_to<applesauce::CF::ArrayRef>(valuePtr, v9, v107);
    HALIO::HALIO_Graph_Builder::connect_input_terminals(a1, valuePtr, (a3 + 16), v156, &v167, a4, a3 + 72);
    if (*valuePtr)
    {
      CFRelease(*valuePtr);
    }

    ++v107;
  }

  while (v11 != v107);
LABEL_6:
  theArray = *a3;
  if (*a3)
  {
    v155 = CFArrayGetCount(theArray);
    v154 = *a3;
    v144 = *a3 ? CFArrayGetCount(*a3) : 0;
    if (v155)
    {
      for (i = 0; i != v155; ++i)
      {
        if (theArray == v154 && i == v144)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::ArrayRef>(&v166, theArray, i);
        v14 = v166;
        v162 = v6;
        if (v166)
        {
          v15 = *(a3 + 64);
          v16 = *(a3 + 104);
          v17 = CFArrayGetCount(v166);
          v18 = v17;
          v19 = v166;
          if (v166)
          {
            v20 = CFArrayGetCount(v166);
            if (v18)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v20 = 0;
            if (v17)
            {
LABEL_21:
              v142 = v16;
              v21 = 0;
              if (a6)
              {
                v22 = 0;
              }

              else
              {
                v22 = v15;
              }

              v160 = v22;
              v23 = v7;
              while (v14 != v19 || v21 != v20)
              {
                applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(v195, v14, v21);
                if (!*v195)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v24 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
                *valuePtr = v24;
                if (!v24)
                {
                  v119 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v119, "Could not construct");
                  __cxa_throw(v119, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                cf.__r_.__value_.__r.__words[0] = 0;
                applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v188, *v195, v24, &cf);
                if (cf.__r_.__value_.__r.__words[0])
                {
                  CFRelease(cf.__r_.__value_.__l.__data_);
                }

                CFRelease(v24);
                v25 = *a1;
                v26 = v188.__r_.__value_.__r.__words[0];
                if (v188.__r_.__value_.__r.__words[0])
                {
                  CFRetain(v188.__r_.__value_.__l.__data_);
                }

                v194 = v26;
                v27 = (*(*v25 + 24))(v25, &v194);
                if (v194)
                {
                  CFRelease(v194);
                }

                v28 = *a1;
                AMCP::create_device_node_uid_from_device_uid_and_direction(&v188, 0, valuePtr);
                if (valuePtr[23] >= 0)
                {
                  v29 = valuePtr;
                }

                else
                {
                  v29 = *valuePtr;
                }

                if (v29)
                {
                  if (valuePtr[23] >= 0)
                  {
                    v30 = valuePtr[23];
                  }

                  else
                  {
                    v30 = *&valuePtr[8];
                  }

                  v193 = CFStringCreateWithBytes(0, v29, v30, 0x8000100u, 0);
                  if (!v193)
                  {
                    v121 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v121, "Could not construct");
                    __cxa_throw(v121, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }
                }

                else
                {
                  v193 = 0;
                }

                v31 = (*(*v28 + 32))(v28, &v193);
                if (v193)
                {
                  CFRelease(v193);
                }

                if ((valuePtr[23] & 0x80000000) != 0)
                {
                  operator delete(*valuePtr);
                }

                if ((*(**a1 + 16))(*a1, v27) & 1) != 0 || ((*(**a1 + 16))(*a1, v31))
                {
                  v32 = 1;
                }

                else
                {
                  (*(**a1 + 40))(valuePtr);
                  v32 = v204 == v205;
                  if (v204 != v205)
                  {
                    v33 = *(v204 + 12);
                    v153 = *(v204 + 8);
                    v162 = v33;
                    if (v153 != 1819304813 || (v33 & 0x40) != 0)
                    {
                      v23 = *v204;
                      v147 = *(v204 + 20);
                      v148 = *(v204 + 16);
                      v146 = *(v204 + 24);
                      v152 = *(v204 + 28);
                      v157 = 1;
                      v145 = *(v204 + 32);
                    }

                    else
                    {
                      v34 = 0x4EC4EC4EC4EC4EC5 * ((v205 - v204) >> 3);
                      if (v34 < 2)
                      {
                        v37 = *(v204 + 28);
                      }

                      else
                      {
                        v35 = v34 - 1;
                        v36 = v204 + 112;
                        v37 = *(v204 + 28);
                        do
                        {
                          if (*v36 != 1819304813)
                          {
                            break;
                          }

                          if ((*(v36 + 4) & 0x40) != 0)
                          {
                            break;
                          }

                          v37 += *(v36 + 20);
                          v36 += 104;
                          --v35;
                        }

                        while (v35);
                      }

                      v145 = *(v204 + 32);
                      v38 = *(v204 + 24) / *(v204 + 28);
                      if (v160)
                      {
                        v37 = 2;
                      }

                      v146 = v37 * v38;
                      v147 = *(v204 + 20);
                      v148 = v37 * v38 * v147;
                      v23 = *v204;
                      v157 = 1;
                      v152 = v37;
                      v153 = 1819304813;
                    }
                  }

                  for (j = 96; j != 48; j -= 24)
                  {
                    cf.__r_.__value_.__r.__words[0] = &valuePtr[j];
                    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&cf);
                  }

                  if (v203 < 0)
                  {
                    operator delete(v202);
                  }

                  if ((valuePtr[31] & 0x80000000) != 0)
                  {
                    operator delete(*&valuePtr[8]);
                  }
                }

                if (v26)
                {
                  CFRelease(v26);
                }

                if (*v195)
                {
                  CFRelease(*v195);
                }

                if (!v32)
                {
                  if (v157)
                  {
                    v7 = *a4;
                    if (*a4 == 0.0)
                    {
                      *a4 = v23;
                      v7 = v23;
                    }

                    v41 = v156[9];
                    v40 = v156[10];
                    v42 = 0x4EC4EC4EC4EC4EC5 * ((v40 - v41) >> 3);
                    v194 = v42;
                    v43 = v156[11];
                    if (v40 >= v43)
                    {
                      v46 = v42 + 1;
                      if (v42 + 1 > 0x276276276276276)
                      {
                        std::vector<void *>::__throw_length_error[abi:ne200100]();
                      }

                      v47 = 0x4EC4EC4EC4EC4EC5 * ((v43 - v41) >> 3);
                      if (2 * v47 > v46)
                      {
                        v46 = 2 * v47;
                      }

                      if (v47 >= 0x13B13B13B13B13BLL)
                      {
                        v48 = 0x276276276276276;
                      }

                      else
                      {
                        v48 = v46;
                      }

                      v201 = v156 + 9;
                      if (v48)
                      {
                        std::allocator<AMCP::Terminal_Description>::allocate_at_least[abi:ne200100](v48);
                      }

                      v49 = 104 * v42;
                      *valuePtr = 0;
                      *&valuePtr[8] = v49;
                      *&valuePtr[24] = 0;
                      *v49 = v7;
                      *(v49 + 8) = v153;
                      *(v49 + 12) = v162;
                      *(v49 + 16) = v148;
                      *(v49 + 20) = v147;
                      *(v49 + 24) = v146;
                      *(v49 + 28) = v152;
                      *(v49 + 32) = v145;
                      *(v49 + 56) = 0u;
                      *(v49 + 40) = 0u;
                      *(v49 + 72) = 0u;
                      *(v49 + 88) = 1;
                      *(v49 + 96) = 0;
                      *&valuePtr[16] = 104 * v42 + 104;
                      v45 = v156;
                      v50 = v156[9];
                      v51 = v156[10];
                      v52 = 104 * v42 + v50 - v51;
                      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>((v156 + 9), v50, v51, v49 + v50 - v51);
                      v53 = v156[9];
                      v156[9] = v52;
                      v54 = v156[11];
                      v161 = *&valuePtr[16];
                      *(v156 + 5) = *&valuePtr[16];
                      *&valuePtr[16] = v53;
                      *&valuePtr[24] = v54;
                      *valuePtr = v53;
                      *&valuePtr[8] = v53;
                      std::__split_buffer<AMCP::Terminal_Description>::~__split_buffer(valuePtr);
                      v44 = v161;
                      v42 = v194;
                    }

                    else
                    {
                      *v40 = v7;
                      *(v40 + 8) = v153;
                      *(v40 + 12) = v162;
                      *(v40 + 16) = v148;
                      *(v40 + 20) = v147;
                      *(v40 + 24) = v146;
                      *(v40 + 28) = v152;
                      *(v40 + 32) = v145;
                      *(v40 + 40) = 0u;
                      *(v40 + 56) = 0u;
                      *(v40 + 72) = 0u;
                      *(v40 + 88) = 1;
                      v44 = v40 + 104;
                      *(v40 + 96) = 0;
                      v45 = v156;
                    }

                    v45[10] = v44;
                    if (*(a3 + 48) <= v42 || ((*(*(a3 + 40) + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v42) & 1) != 0)
                    {
                      v149 = v166;
                      if (v166)
                      {
                        v139 = CFArrayGetCount(v166);
                        v138 = v166;
                        v137 = v166 ? CFArrayGetCount(v166) : 0;
                        if (v139)
                        {
                          v55 = 0;
                          v56 = (v162 >> 6) & 1;
                          if (v153 != 1819304813)
                          {
                            LOBYTE(v56) = 1;
                          }

                          v135 = v56;
                          do
                          {
                            if (v149 == v138 && v55 == v137)
                            {
                              break;
                            }

                            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v193, v149, v55);
                            if (!v193)
                            {
                              goto LABEL_311;
                            }

                            v57 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
                            *valuePtr = v57;
                            if (!v57)
                            {
                              v123 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v123, "Could not construct");
                              __cxa_throw(v123, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            cf.__r_.__value_.__r.__words[0] = 0;
                            applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v192, v193, v57, &cf);
                            if (cf.__r_.__value_.__r.__words[0])
                            {
                              CFRelease(cf.__r_.__value_.__l.__data_);
                            }

                            CFRelease(v57);
                            if (!v193)
                            {
                              goto LABEL_311;
                            }

                            v58 = CFStringCreateWithBytes(0, "latency-in", 10, 0x8000100u, 0);
                            cf.__r_.__value_.__r.__words[0] = v58;
                            if (!v58)
                            {
                              v122 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v122, "Could not construct");
                              __cxa_throw(v122, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            *valuePtr = 0;
                            *v195 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
                            if (!*v195)
                            {
                              v133 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v133, "Could not construct");
                              __cxa_throw(v133, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, v193, v58, v195);
                            v59 = *valuePtr;
                            if (!*valuePtr)
                            {
                              goto LABEL_311;
                            }

                            v141 = applesauce::CF::convert_to<int,0>(*valuePtr);
                            CFRelease(v59);
                            if (*v195)
                            {
                              CFRelease(*v195);
                            }

                            CFRelease(v58);
                            if (!v193)
                            {
                              goto LABEL_311;
                            }

                            v60 = CFStringCreateWithBytes(0, "don't pad", 9, 0x8000100u, 0);
                            cf.__r_.__value_.__r.__words[0] = v60;
                            if (!v60)
                            {
                              v131 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v131, "Could not construct");
                              __cxa_throw(v131, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            *valuePtr = 1;
                            *v195 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
                            if (!*v195)
                            {
                              v130 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v130, "Could not construct");
                              __cxa_throw(v130, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, v193, v60, v195);
                            v61 = *valuePtr;
                            if (!*valuePtr)
                            {
                              goto LABEL_311;
                            }

                            v62 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
                            CFRelease(v61);
                            if (*v195)
                            {
                              CFRelease(*v195);
                            }

                            CFRelease(v60);
                            if (!v193)
                            {
                              goto LABEL_311;
                            }

                            v63 = CFStringCreateWithBytes(0, "drift", 5, 0x8000100u, 0);
                            cf.__r_.__value_.__r.__words[0] = v63;
                            if (!v63)
                            {
                              v129 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v129, "Could not construct");
                              __cxa_throw(v129, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            *valuePtr = 0;
                            *v195 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
                            if (!*v195)
                            {
                              v128 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v128, "Could not construct");
                              __cxa_throw(v128, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, v193, v63, v195);
                            v64 = *valuePtr;
                            if (!*valuePtr)
                            {
                              goto LABEL_311;
                            }

                            v65 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
                            CFRelease(v64);
                            if (*v195)
                            {
                              CFRelease(*v195);
                            }

                            CFRelease(v63);
                            if (!v193)
                            {
                              goto LABEL_311;
                            }

                            v66 = CFStringCreateWithBytes(0, "drift algorithm", 15, 0x8000100u, 0);
                            cf.__r_.__value_.__r.__words[0] = v66;
                            if (!v66)
                            {
                              v127 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v127, "Could not construct");
                              __cxa_throw(v127, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            *valuePtr = 0;
                            *v195 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
                            if (!*v195)
                            {
                              v126 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v126, "Could not construct");
                              __cxa_throw(v126, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, v193, v66, v195);
                            v67 = *valuePtr;
                            if (!*valuePtr)
                            {
                              goto LABEL_311;
                            }

                            v68 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
                            CFRelease(v67);
                            if (*v195)
                            {
                              CFRelease(*v195);
                            }

                            CFRelease(v66);
                            if (!v193)
                            {
                              goto LABEL_311;
                            }

                            v69 = CFStringCreateWithBytes(0, "drift quality", 13, 0x8000100u, 0);
                            cf.__r_.__value_.__r.__words[0] = v69;
                            if (!v69)
                            {
                              v125 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v125, "Could not construct");
                              __cxa_throw(v125, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            *valuePtr = 64;
                            *v195 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
                            if (!*v195)
                            {
                              v124 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v124, "Could not construct");
                              __cxa_throw(v124, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, v193, v69, v195);
                            v70 = *valuePtr;
                            if (!*valuePtr)
                            {
LABEL_311:
                              v132 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v132, "Could not construct");
                              __cxa_throw(v132, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            v71 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
                            CFRelease(v70);
                            if (*v195)
                            {
                              CFRelease(*v195);
                            }

                            CFRelease(v69);
                            v72 = *a1;
                            v73 = v192;
                            if (v192)
                            {
                              CFRetain(v192);
                            }

                            v191 = v73;
                            v74 = (*(*v72 + 24))(v72, &v191);
                            if (v191)
                            {
                              CFRelease(v191);
                            }

                            v75 = *a1;
                            AMCP::create_device_node_uid_from_device_uid_and_direction(&v192, 0, valuePtr);
                            v76 = valuePtr[23] >= 0 ? valuePtr : *valuePtr;
                            if (v76)
                            {
                              if (valuePtr[23] >= 0)
                              {
                                v77 = valuePtr[23];
                              }

                              else
                              {
                                v77 = *&valuePtr[8];
                              }

                              v190 = CFStringCreateWithBytes(0, v76, v77, 0x8000100u, 0);
                              if (!v190)
                              {
                                v134 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v134, "Could not construct");
                                __cxa_throw(v134, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                              }
                            }

                            else
                            {
                              v190 = 0;
                            }

                            v78 = (*(*v75 + 32))(v75, &v190);
                            if (v190)
                            {
                              CFRelease(v190);
                            }

                            if ((valuePtr[23] & 0x80000000) != 0)
                            {
                              operator delete(*valuePtr);
                            }

                            if (((*(**a1 + 16))(*a1, v74) & 1) == 0 && ((*(**a1 + 16))(*a1, v78) & 1) == 0)
                            {
                              (*(**a1 + 40))(valuePtr);
                              if (v204 != v205)
                              {
                                if (v135)
                                {
                                  if (v7 == *v204 && v153 == *(v204 + 8) && v162 == *(v204 + 12) && v148 == *(v204 + 16) && v147 == *(v204 + 20) && v146 == *(v204 + 24) && v152 == *(v204 + 28) && *(v204 + 32) == v145)
                                  {
                                    LODWORD(cf.__r_.__value_.__l.__data_) = 0;
                                    v79 = v168;
                                    if (v168 >= v169)
                                    {
                                      v80 = std::vector<AMCP::Wire_Description>::__emplace_back_slow_path<std::string &,unsigned long &,std::string const&,int>(&v167, (v156 + 1), &v194, &valuePtr[8], &cf);
                                    }

                                    else
                                    {
                                      std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,int,AMCP::Wire_Description*>(v168, (v156 + 1), &v194, &valuePtr[8], &cf);
                                      v80 = (v79 + 192);
                                    }

                                    v168 = v80;
                                    *(v80 - 16) = v141;
                                    *(v80 - 12) = v65 == 0;
                                    *(v80 - 11) = v62 != 0;
                                    v97 = (*(**a1 + 104))();
                                    HALIO::Implementation::maybe_create_mono_mix_map(&cf, v97, v152, v142);
                                    v98 = *(v80 - 11);
                                    if (v98)
                                    {
                                      *(v80 - 10) = v98;
                                      operator delete(v98);
                                    }

                                    *(v80 - 88) = cf;
                                    v99 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                                    if ((v99 & 1) == 0)
                                    {
                                      AMCP::Log::AMCP_Scope_Registry::initialize(v98);
                                    }

                                    v101 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                                    v100 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                                    if (v100)
                                    {
                                      atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
                                      v102 = *v101;
                                      std::__shared_weak_count::__release_shared[abi:ne200100](v100);
                                    }

                                    else
                                    {
                                      v102 = *v101;
                                    }

                                    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                                    {
                                      if (*(v80 - 169) < 0)
                                      {
                                        std::string::__init_copy_ctor_external(&v173, *(v80 - 24), *(v80 - 23));
                                      }

                                      else
                                      {
                                        v173 = *(v80 - 8);
                                      }

                                      v174 = *(v80 - 21);
                                      v175 = *(v80 - 40);
                                      if (*(v80 - 129) < 0)
                                      {
                                        std::string::__init_copy_ctor_external(&v170, *(v80 - 19), *(v80 - 18));
                                      }

                                      else
                                      {
                                        v170 = *(v80 - 152);
                                      }

                                      v171 = *(v80 - 16);
                                      v172 = *(v80 - 30);
                                      cf = v173;
                                      memset(&v173, 0, sizeof(v173));
                                      v183 = v174;
                                      v184 = v175;
                                      v104 = v170.__r_.__value_.__r.__words[2];
                                      *&__p.__r_.__value_.__l.__data_ = *&v170.__r_.__value_.__l.__data_;
                                      memset(&v170, 0, sizeof(v170));
                                      v187 = v172;
                                      __p.__r_.__value_.__r.__words[2] = v104;
                                      v186 = v171;
                                      AMCP::Wire_Identifier_to_string(&v188, &cf.__r_.__value_.__l.__data_);
                                      v105 = &v188;
                                      if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                      {
                                        v105 = v188.__r_.__value_.__r.__words[0];
                                      }

                                      *v195 = 136315650;
                                      *&v195[4] = "HALIO_Graph_Builder.cpp";
                                      v196 = 1024;
                                      v197 = 443;
                                      v198 = 2080;
                                      v199 = v105;
                                      _os_log_debug_impl(&dword_1DE1F9000, v102, OS_LOG_TYPE_DEBUG, "%32s:%-5d -- %s", v195, 0x1Cu);
                                      if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
                                      {
                                        operator delete(v188.__r_.__value_.__l.__data_);
                                      }

                                      AMCP::Wire_Identifier::~Wire_Identifier(&cf.__r_.__value_.__l.__data_);
                                    }
                                  }
                                }

                                else
                                {
                                  v189 = 0;
                                  if (v152)
                                  {
                                    v81 = 0;
                                    v82 = 0;
                                    v136 = v65 == 0;
                                    v83 = v62 != 0;
                                    do
                                    {
                                      if (v82 >= 0x4EC4EC4EC4EC4EC5 * ((v205 - v204) >> 3))
                                      {
                                        break;
                                      }

                                      v84 = v204 + 104 * v82;
                                      if (*(v84 + 8) != 1819304813 || (*(v84 + 12) & 0x40) != 0)
                                      {
                                        break;
                                      }

                                      v85 = v168;
                                      if (v168 >= v169)
                                      {
                                        v86 = std::vector<AMCP::Wire_Description>::__emplace_back_slow_path<std::string &,unsigned long &,std::string const&,unsigned long &>(&v167, (v156 + 1), &v194, &valuePtr[8], &v189);
                                      }

                                      else
                                      {
                                        std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,unsigned long &,AMCP::Wire_Description*>(v168, (v156 + 1), &v194, &valuePtr[8], &v189);
                                        v86 = (v85 + 192);
                                      }

                                      v168 = v86;
                                      *(v86 - 16) = v141;
                                      *(v86 - 12) = v136;
                                      *(v86 - 11) = v83;
                                      v87 = (*(**a1 + 104))();
                                      HALIO::Implementation::maybe_create_mono_mix_map(&cf, v87, v152, v142);
                                      v88 = *(v86 - 11);
                                      if (v88)
                                      {
                                        *(v86 - 10) = v88;
                                        operator delete(v88);
                                      }

                                      *(v86 - 88) = cf;
                                      *(v86 - 10) = v68;
                                      *(v86 - 9) = v71;
                                      v89 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                                      if ((v89 & 1) == 0)
                                      {
                                        AMCP::Log::AMCP_Scope_Registry::initialize(v88);
                                      }

                                      v91 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                                      v90 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                                      if (v90)
                                      {
                                        atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
                                        v92 = *v91;
                                        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
                                      }

                                      else
                                      {
                                        v92 = *v91;
                                      }

                                      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
                                      {
                                        if (*(v86 - 169) < 0)
                                        {
                                          std::string::__init_copy_ctor_external(&v179, *(v86 - 24), *(v86 - 23));
                                        }

                                        else
                                        {
                                          v179 = *(v86 - 8);
                                        }

                                        v180 = *(v86 - 21);
                                        v181 = *(v86 - 40);
                                        if (*(v86 - 129) < 0)
                                        {
                                          std::string::__init_copy_ctor_external(&v176, *(v86 - 19), *(v86 - 18));
                                        }

                                        else
                                        {
                                          v176 = *(v86 - 152);
                                        }

                                        v177 = *(v86 - 16);
                                        v178 = *(v86 - 30);
                                        cf = v179;
                                        memset(&v179, 0, sizeof(v179));
                                        v183 = v180;
                                        v184 = v181;
                                        __p = v176;
                                        memset(&v176, 0, sizeof(v176));
                                        v187 = *(v86 - 30);
                                        v186 = *(v86 - 16);
                                        AMCP::Wire_Identifier_to_string(&v188, &cf.__r_.__value_.__l.__data_);
                                        v96 = &v188;
                                        if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                        {
                                          v96 = v188.__r_.__value_.__r.__words[0];
                                        }

                                        *v195 = 136315650;
                                        *&v195[4] = "HALIO_Graph_Builder.cpp";
                                        v196 = 1024;
                                        v197 = 410;
                                        v198 = 2080;
                                        v199 = v96;
                                        _os_log_debug_impl(&dword_1DE1F9000, v92, OS_LOG_TYPE_DEBUG, "%32s:%-5d -- %s", v195, 0x1Cu);
                                        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
                                        {
                                          operator delete(v188.__r_.__value_.__l.__data_);
                                        }

                                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                                        {
                                          operator delete(__p.__r_.__value_.__l.__data_);
                                        }

                                        if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
                                        {
                                          operator delete(cf.__r_.__value_.__l.__data_);
                                        }
                                      }

                                      if (*(v84 + 28))
                                      {
                                        v93 = 0;
                                        v94 = v86 - 112;
                                        do
                                        {
                                          if (v81 + v93 >= v152)
                                          {
                                            LODWORD(cf.__r_.__value_.__l.__data_) = -1;
                                          }

                                          else
                                          {
                                            LODWORD(cf.__r_.__value_.__l.__data_) = v81 + v93;
                                          }

                                          std::vector<unsigned int>::push_back[abi:ne200100](v94, &cf);
                                          ++v93;
                                          v95 = *(v84 + 28);
                                        }

                                        while (v93 < v95);
                                      }

                                      else
                                      {
                                        v95 = 0;
                                      }

                                      v81 += v95;
                                      v82 = ++v189;
                                    }

                                    while (v81 < v152);
                                  }
                                }
                              }

                              for (k = 96; k != 48; k -= 24)
                              {
                                cf.__r_.__value_.__r.__words[0] = &valuePtr[k];
                                std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&cf);
                              }

                              if (v203 < 0)
                              {
                                operator delete(v202);
                              }

                              if ((valuePtr[31] & 0x80000000) != 0)
                              {
                                operator delete(*&valuePtr[8]);
                              }

                              v73 = v192;
                            }

                            if (v73)
                            {
                              CFRelease(v73);
                            }

                            if (v193)
                            {
                              CFRelease(v193);
                            }

                            ++v55;
                          }

                          while (v55 != v139);
                        }
                      }
                    }
                  }

                  else
                  {
                    v7 = v23;
                  }

                  goto LABEL_82;
                }

                if (++v21 == v18)
                {
                  goto LABEL_81;
                }
              }

              goto LABEL_81;
            }
          }
        }

        v23 = v7;
LABEL_81:
        v157 = 0;
        *&v7 = *&v23 & 0xFFFFFFFFFFFFFF00;
LABEL_82:
        v6 = v162;
        if (v166)
        {
          CFRelease(v166);
        }
      }
    }
  }

LABEL_252:
  LOBYTE(v164) = 0;
  v165 = 0;
  if (*(a5 + 8) == 1)
  {
    std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>(&v164, *a5);
    v165 = 1;
  }

  HALIO::HALIO_Graph_Builder::maybe_set_master_device(a1, v156, &v164);
  if (v165 == 1 && v164)
  {
    CFRelease(v164);
  }

  if (v143 != &v167)
  {
    std::vector<AMCP::Wire_Description>::__assign_with_size[abi:ne200100]<AMCP::Wire_Description*,AMCP::Wire_Description*>(v143, v167, v168, 0xAAAAAAAAAAAAAAABLL * ((v168 - v167) >> 6));
  }

  *valuePtr = &v167;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](valuePtr);
  v106 = *MEMORY[0x1E69E9840];
}

void sub_1DE636424(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<unsigned int>::__vallocate[abi:ne200100](v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

uint64_t std::vector<AMCP::Wire_Description>::push_back[abi:ne200100](uint64_t a1, AMCP::Wire_Description *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 6);
    if (v7 + 1 > 0x155555555555555)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 6);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0xAAAAAAAAAAAAAALL)
    {
      v10 = 0x155555555555555;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](v10);
    }

    v16 = 0;
    v17 = 192 * v7;
    AMCP::Wire_Description::Wire_Description((192 * v7), a2);
    v18 = 192 * v7 + 192;
    v11 = *(a1 + 8);
    v12 = 192 * v7 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*>(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    v15 = v18;
    *(a1 + 8) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(&v16);
    v6 = v15;
  }

  else
  {
    result = AMCP::Wire_Description::Wire_Description(*(a1 + 8), a2);
    v6 = v4 + 192;
    *(a1 + 8) = v4 + 192;
  }

  *(a1 + 8) = v6;
  return result;
}

void sub_1DE636944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 24) = v8;
      v9 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v9;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 40) = 0;
      v10 = *(v6 + 64);
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 64) = v10;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = *(v6 + 104);
      *(a4 + 120) = *(v6 + 120);
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(v6 + 120) = 0;
      v11 = *(v6 + 128);
      v12 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 128) = v11;
      *(a4 + 144) = v12;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 168) = 0;
      *(a4 + 168) = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      v6 += 192;
      a4 += 192;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<AMCP::Wire_Description>>::destroy[abi:ne200100]<AMCP::Wire_Description,void,0>(v5);
      v5 += 192;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 192;
    std::allocator_traits<std::allocator<AMCP::Wire_Description>>::destroy[abi:ne200100]<AMCP::Wire_Description,void,0>(v3 - 192);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<AMCP::Wire_Description>>::destroy[abi:ne200100]<AMCP::Wire_Description,void,0>(uint64_t a1)
{
  v5 = (a1 + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    v4 = *a1;

    operator delete(v4);
  }
}

void HALIO::HALIO_Graph_Builder::connect_input_terminals(void *a1, const __CFArray **a2, void *a3, void *a4, uint64_t *a5, double *a6, uint64_t a7)
{
  v139 = *MEMORY[0x1E69E9840];
  v97 = a4 + 12;
  v132 = 0x4EC4EC4EC4EC4EC5 * ((a4[13] - a4[12]) >> 3);
  theArray = *a2;
  if (*a2)
  {
    Count = CFArrayGetCount(theArray);
    v11 = *a2;
    v92 = v11;
    v91 = v11 ? CFArrayGetCount(v11) : 0;
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        if (theArray == v92 && i == v91)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v131, theArray, i);
        if (!v131)
        {
          goto LABEL_154;
        }

        v13 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
        valuePtr = v13;
        if (!v13)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        cf[0] = 0;
        applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v130, v131, v13, cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        CFRelease(v13);
        if (!v131)
        {
          goto LABEL_154;
        }

        v14 = CFStringCreateWithBytes(0, "latency-in", 10, 0x8000100u, 0);
        cf[0] = v14;
        if (!v14)
        {
          v80 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v80, "Could not construct");
          __cxa_throw(v80, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(valuePtr) = 0;
        v117[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v117[0])
        {
          v78 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v78, "Could not construct");
          __cxa_throw(v78, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v131, v14, v117);
        v15 = valuePtr;
        if (!valuePtr)
        {
          goto LABEL_154;
        }

        v100 = applesauce::CF::convert_to<int,0>(valuePtr);
        CFRelease(v15);
        if (v117[0])
        {
          CFRelease(v117[0]);
        }

        CFRelease(v14);
        if (!v131)
        {
          goto LABEL_154;
        }

        v16 = CFStringCreateWithBytes(0, "don't pad", 9, 0x8000100u, 0);
        cf[0] = v16;
        if (!v16)
        {
          v85 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v85, "Could not construct");
          __cxa_throw(v85, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(valuePtr) = 1;
        v117[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v117[0])
        {
          v81 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v81, "Could not construct");
          __cxa_throw(v81, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v131, v16, v117);
        v17 = valuePtr;
        if (!valuePtr)
        {
          goto LABEL_154;
        }

        v18 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
        CFRelease(v17);
        if (v117[0])
        {
          CFRelease(v117[0]);
        }

        CFRelease(v16);
        if (!v131)
        {
          goto LABEL_154;
        }

        v19 = CFStringCreateWithBytes(0, "drift", 5, 0x8000100u, 0);
        cf[0] = v19;
        if (!v19)
        {
          v86 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v86, "Could not construct");
          __cxa_throw(v86, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(valuePtr) = 0;
        v117[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v117[0])
        {
          v82 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v82, "Could not construct");
          __cxa_throw(v82, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v131, v19, v117);
        v20 = valuePtr;
        if (!valuePtr)
        {
          goto LABEL_154;
        }

        v21 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
        CFRelease(v20);
        if (v117[0])
        {
          CFRelease(v117[0]);
        }

        CFRelease(v19);
        if (!v131)
        {
          goto LABEL_154;
        }

        v22 = CFStringCreateWithBytes(0, "drift algorithm", 15, 0x8000100u, 0);
        cf[0] = v22;
        if (!v22)
        {
          v87 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v87, "Could not construct");
          __cxa_throw(v87, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(valuePtr) = 0;
        v117[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v117[0])
        {
          v83 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v83, "Could not construct");
          __cxa_throw(v83, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v131, v22, v117);
        v23 = valuePtr;
        if (!valuePtr)
        {
          goto LABEL_154;
        }

        v99 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
        CFRelease(v23);
        if (v117[0])
        {
          CFRelease(v117[0]);
        }

        CFRelease(v22);
        if (!v131)
        {
          goto LABEL_154;
        }

        v24 = CFStringCreateWithBytes(0, "drift quality", 13, 0x8000100u, 0);
        cf[0] = v24;
        if (!v24)
        {
          v88 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v88, "Could not construct");
          __cxa_throw(v88, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(valuePtr) = 64;
        v117[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v117[0])
        {
          v84 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v84, "Could not construct");
          __cxa_throw(v84, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v131, v24, v117);
        v25 = valuePtr;
        if (!valuePtr)
        {
LABEL_154:
          v89 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v89, "Could not construct");
          __cxa_throw(v89, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v26 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
        CFRelease(v25);
        if (v117[0])
        {
          CFRelease(v117[0]);
        }

        CFRelease(v24);
        v27 = *a1;
        v28 = v130;
        if (v130)
        {
          CFRetain(v130);
        }

        v129 = v28;
        v29 = (*(*v27 + 24))(v27, &v129);
        if (v129)
        {
          CFRelease(v129);
        }

        v30 = *a1;
        AMCP::create_device_node_uid_from_device_uid_and_direction(&v130, 1, &valuePtr);
        v31 = (v122 & 0x80u) == 0 ? &valuePtr : valuePtr;
        if (v31)
        {
          if ((v122 & 0x80u) == 0)
          {
            v32 = v122;
          }

          else
          {
            v32 = v121;
          }

          v128 = CFStringCreateWithBytes(0, v31, v32, 0x8000100u, 0);
          if (!v128)
          {
            v90 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v90, "Could not construct");
            __cxa_throw(v90, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }

        else
        {
          v128 = 0;
        }

        v33 = (*(*v30 + 32))(v30, &v128);
        if (v128)
        {
          CFRelease(v128);
        }

        if (v122 < 0)
        {
          operator delete(valuePtr);
        }

        if (((*(**a1 + 16))(*a1, v29) & 1) == 0 && ((*(**a1 + 16))(*a1, v33) & 1) == 0)
        {
          (*(**a1 + 40))(&valuePtr);
          v119 = 0;
          if (v127 != v126)
          {
            v34 = 0;
            v94 = v21 == 0;
            v35 = v18 != 0;
            do
            {
              v36 = (*(**a1 + 56))(*a1, v29, 1, v34);
              if (v36)
              {
                LODWORD(cf[0]) = v36;
                v37 = *(a7 + 24);
                if (!v37)
                {
                  std::__throw_bad_function_call[abi:ne200100]();
                }

                if ((*(*v37 + 48))(v37, cf))
                {
                  if (0x4EC4EC4EC4EC4EC5 * ((v127 - v126) >> 3) <= v34)
                  {
                    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
                  }

                  v38 = v126 + 104 * v34;
                  v39 = *v38;
                  *v117 = *(v38 + 8);
                  v118 = *(v38 + 24);
                  v40 = *a6;
                  if (*a6 == 0.0)
                  {
                    *a6 = v39;
                    v40 = v39;
                  }

                  v41 = a4[13];
                  v42 = a4[14];
                  if (v41 >= v42)
                  {
                    v44 = 0x4EC4EC4EC4EC4EC5 * ((v41 - *v97) >> 3);
                    v45 = v44 + 1;
                    if ((v44 + 1) > 0x276276276276276)
                    {
                      std::vector<void *>::__throw_length_error[abi:ne200100]();
                    }

                    v46 = 0x4EC4EC4EC4EC4EC5 * ((v42 - *v97) >> 3);
                    if (2 * v46 > v45)
                    {
                      v45 = 2 * v46;
                    }

                    if (v46 >= 0x13B13B13B13B13BLL)
                    {
                      v47 = 0x276276276276276;
                    }

                    else
                    {
                      v47 = v45;
                    }

                    v111 = v97;
                    if (v47)
                    {
                      std::allocator<AMCP::Terminal_Description>::allocate_at_least[abi:ne200100](v47);
                    }

                    v48 = 104 * v44;
                    cf[0] = 0;
                    cf[1] = v48;
                    *(&v110 + 1) = 0;
                    *v48 = v40;
                    *(v48 + 8) = *v117;
                    *(v48 + 24) = v118;
                    *(v48 + 56) = 0u;
                    *(v48 + 40) = 0u;
                    *(v48 + 72) = 0u;
                    *(v48 + 88) = 1;
                    *(v48 + 96) = 0;
                    *&v110 = 104 * v44 + 104;
                    v49 = a4[12];
                    v50 = a4[13];
                    v51 = 104 * v44 + v49 - v50;
                    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>(v97, v49, v50, v48 + v49 - v50);
                    v52 = a4[12];
                    a4[12] = v51;
                    v53 = a4[14];
                    v95 = v110;
                    *(a4 + 13) = v110;
                    *&v110 = v52;
                    *(&v110 + 1) = v53;
                    cf[0] = v52;
                    cf[1] = v52;
                    std::__split_buffer<AMCP::Terminal_Description>::~__split_buffer(cf);
                    v43 = v95;
                    v34 = v119;
                  }

                  else
                  {
                    *v41 = v40;
                    *(v41 + 8) = *v117;
                    *(v41 + 24) = v118;
                    *(v41 + 40) = 0u;
                    *(v41 + 56) = 0u;
                    *(v41 + 72) = 0u;
                    *(v41 + 88) = 1;
                    *(v41 + 96) = 0;
                    v43 = v41 + 104;
                  }

                  a4[13] = v43;
                  if (a3[1] <= v34 || ((*(*a3 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34) & 1) != 0)
                  {
                    v55 = a5[1];
                    v54 = a5[2];
                    if (v55 >= v54)
                    {
                      v58 = 0xAAAAAAAAAAAAAAABLL * ((v55 - *a5) >> 6);
                      v59 = v58 + 1;
                      if (v58 + 1 > 0x155555555555555)
                      {
                        std::vector<void *>::__throw_length_error[abi:ne200100]();
                      }

                      v60 = 0xAAAAAAAAAAAAAAABLL * ((v54 - *a5) >> 6);
                      if (2 * v60 > v59)
                      {
                        v59 = 2 * v60;
                      }

                      if (v60 >= 0xAAAAAAAAAAAAAALL)
                      {
                        v61 = 0x155555555555555;
                      }

                      else
                      {
                        v61 = v59;
                      }

                      v111 = a5;
                      if (v61)
                      {
                        std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](v61);
                      }

                      cf[0] = 0;
                      cf[1] = (192 * v58);
                      v110 = 192 * v58;
                      std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string const&,unsigned long &,std::string&,unsigned long &,AMCP::Wire_Description*>(192 * v58, &v121, &v119, (a4 + 1), &v132);
                      *&v110 = v110 + 192;
                      v62 = a5[1];
                      v63 = cf[1] + *a5 - v62;
                      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*>(a5, *a5, v62, v63);
                      v64 = *a5;
                      *a5 = v63;
                      v65 = a5[2];
                      v96 = v110;
                      *(a5 + 1) = v110;
                      *&v110 = v64;
                      *(&v110 + 1) = v65;
                      cf[0] = v64;
                      cf[1] = v64;
                      v56 = std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(cf);
                      v57 = v96;
                    }

                    else
                    {
                      v56 = std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string const&,unsigned long &,std::string&,unsigned long &,AMCP::Wire_Description*>(a5[1], &v121, &v119, (a4 + 1), &v132);
                      v57 = v55 + 192;
                    }

                    a5[1] = v57;
                    *(v57 - 64) = v100;
                    *(v57 - 48) = v94;
                    *(v57 - 44) = v35;
                    *(v57 - 40) = v99;
                    *(v57 - 36) = v26;
                    v66 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                    if ((v66 & 1) == 0)
                    {
                      AMCP::Log::AMCP_Scope_Registry::initialize(v56);
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

                    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                    {
                      if (*(v57 - 169) < 0)
                      {
                        std::string::__init_copy_ctor_external(v107, *(v57 - 192), *(v57 - 184));
                      }

                      else
                      {
                        v70 = *(v57 - 192);
                        *&v107[16] = *(v57 - 176);
                        *v107 = v70;
                      }

                      v71 = *(v57 - 168);
                      v108 = *(v57 - 160);
                      *&v107[24] = v71;
                      if (*(v57 - 129) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v104, *(v57 - 152), *(v57 - 144));
                      }

                      else
                      {
                        v72 = *(v57 - 152);
                        v104.__r_.__value_.__r.__words[2] = *(v57 - 136);
                        *&v104.__r_.__value_.__l.__data_ = v72;
                      }

                      v73 = *(v57 - 128);
                      v106 = *(v57 - 120);
                      v105 = v73;
                      *cf = *v107;
                      v110 = *&v107[16];
                      memset(v107, 0, 24);
                      LODWORD(v111) = v108;
                      v74 = v104.__r_.__value_.__r.__words[2];
                      v112 = *&v104.__r_.__value_.__l.__data_;
                      memset(&v104, 0, sizeof(v104));
                      v115 = v106;
                      v113 = v74;
                      v114 = v105;
                      AMCP::Wire_Identifier_to_string(&__p, cf);
                      p_p = &__p;
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        p_p = __p.__r_.__value_.__r.__words[0];
                      }

                      *buf = 136315650;
                      v134 = "HALIO_Graph_Builder.cpp";
                      v135 = 1024;
                      v136 = 220;
                      v137 = 2080;
                      v138 = p_p;
                      _os_log_debug_impl(&dword_1DE1F9000, v69, OS_LOG_TYPE_DEBUG, "%32s:%-5d -- %s", buf, 0x1Cu);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v113) < 0)
                      {
                        operator delete(v112);
                      }

                      if (SBYTE7(v110) < 0)
                      {
                        operator delete(cf[0]);
                      }
                    }
                  }

                  ++v132;
                  v34 = v119;
                }
              }

              v119 = ++v34;
            }

            while (v34 < 0x4EC4EC4EC4EC4EC5 * ((v127 - v126) >> 3));
          }

          for (j = 96; j != 48; j -= 24)
          {
            cf[0] = &valuePtr + j;
            std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](cf);
          }

          if (v125 < 0)
          {
            operator delete(v124);
          }

          if (v123 < 0)
          {
            operator delete(v121);
          }

          v28 = v130;
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (v131)
        {
          CFRelease(v131);
        }
      }
    }
  }

  v77 = *MEMORY[0x1E69E9840];
}

void sub_1DE637C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::vector<AMCP::Wire_Description>::__assign_with_size[abi:ne200100]<AMCP::Wire_Description*,AMCP::Wire_Description*>(uint64_t a1, uint64_t a2, AMCP::Wire_Description *a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 6) < a4)
  {
    std::vector<AMCP::Wire_Description>::__vdeallocate(a1);
    if (a4 <= 0x155555555555555)
    {
      v8 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
      {
        v9 = 0x155555555555555;
      }

      else
      {
        v9 = v8;
      }

      std::vector<AMCP::Wire_Description>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a1 + 8) - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 6) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Description *,AMCP::Wire_Description *,AMCP::Wire_Description *>(a2, a3, v7);
    v13 = v12;
    for (i = *(a1 + 8); i != v13; std::allocator_traits<std::allocator<AMCP::Wire_Description>>::destroy[abi:ne200100]<AMCP::Wire_Description,void,0>(i))
    {
      i -= 192;
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v11 = std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Description *,AMCP::Wire_Description *,AMCP::Wire_Description *>(a2, a2 + v10, v7);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*,AMCP::Wire_Description*,AMCP::Wire_Description*>(a1, v11, a3, *(a1 + 8));
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Description *,AMCP::Wire_Description *,AMCP::Wire_Description *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    v7 = a3 + v6;
    v8 = a1 + v6;
    std::string::operator=((a3 + v6), (a1 + v6));
    v9 = *(a1 + v6 + 32);
    *(v7 + 24) = *(a1 + v6 + 24);
    *(v7 + 32) = v9;
    std::string::operator=((a3 + v6 + 40), (a1 + v6 + 40));
    v10 = *(a1 + v6 + 72);
    *(v7 + 64) = *(a1 + v6 + 64);
    *(v7 + 72) = v10;
    if (a3 == a1)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 144);
      *(v7 + 160) = *(v8 + 160);
      *(v7 + 128) = v13;
      *(v7 + 144) = v14;
    }

    else
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v7 + 80), *(v8 + 80), *(v8 + 88), (*(v8 + 88) - *(v8 + 80)) >> 2);
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v7 + 104), *(v8 + 104), *(v8 + 112), (*(v8 + 112) - *(v8 + 104)) >> 2);
      v11 = *(v8 + 128);
      v12 = *(v8 + 144);
      *(v7 + 160) = *(v8 + 160);
      *(v7 + 128) = v11;
      *(v7 + 144) = v12;
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v7 + 168), *(v8 + 168), *(v8 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 176) - *(v8 + 168)) >> 3));
    }

    v6 += 192;
  }

  while (v8 + 192 != v5);
  return v5;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*,AMCP::Wire_Description*,AMCP::Wire_Description*>(int a1, AMCP::Wire_Description *a2, AMCP::Wire_Description *a3, std::string *this)
{
  if (a2 == a3)
  {
    return this;
  }

  v5 = a2;
  v6 = 0;
  v7 = this;
  do
  {
    AMCP::Wire_Description::Wire_Description(v7, v5);
    v5 = (v5 + 192);
    v7 += 8;
    v6 -= 192;
  }

  while (v5 != a3);
  return v7;
}

void std::vector<AMCP::Wire_Description>::__vdeallocate(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v1; std::allocator_traits<std::allocator<AMCP::Wire_Description>>::destroy[abi:ne200100]<AMCP::Wire_Description,void,0>(i))
    {
      i -= 192;
    }

    *(a1 + 8) = v1;
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<AMCP::Wire_Description>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,unsigned long &,AMCP::Wire_Description*>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v9 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a4, *(a4 + 8));
  }

  else
  {
    v16 = *a4;
  }

  v10 = *a5;
  v11 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  size = v17.__r_.__value_.__l.__size_;
  *a1 = v17.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 15) = *(&v17.__r_.__value_.__r.__words[1] + 7);
  *(a1 + 23) = v11;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a1 + 55) = *(&v16.__r_.__value_.__r.__words[1] + 7);
  v14 = v16.__r_.__value_.__l.__size_;
  *(a1 + 40) = v16.__r_.__value_.__r.__words[0];
  *(a1 + 48) = v14;
  *(a1 + 63) = v13;
  *(a1 + 64) = v10;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = xmmword_1DE757EF0;
  *(a1 + 156) = 64;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_1DE6382FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<AMCP::Wire_Description>::__emplace_back_slow_path<std::string &,unsigned long &,std::string const&,unsigned long &>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v6 = v5 + 1;
  if (v5 + 1 > 0x155555555555555)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v8 = 0x155555555555555;
  }

  else
  {
    v8 = v6;
  }

  v18 = a1;
  if (v8)
  {
    std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](v8);
  }

  v15 = 0;
  v16 = 192 * v5;
  std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,unsigned long &,AMCP::Wire_Description*>(192 * v5, a2, a3, a4, a5);
  v17 = 192 * v5 + 192;
  v9 = a1[1];
  v10 = 192 * v5 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(&v15);
  return v14;
}

void sub_1DE638450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *HALIO::Implementation::maybe_create_mono_mix_map(AMCP::Log::AMCP_Scope_Registry *result, int a2, unsigned int a3, unint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 < 2 || !a2)
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
    goto LABEL_7;
  }

  if (!a4)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v12 = 136315650;
      v13 = "HALIO_Graph_Builder.cpp";
      v14 = 1024;
      v15 = 31;
      v16 = 2080;
      v17 = "default_stereo_pair[0] > 0";
LABEL_22:
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Channel numbers are indexed starting from 1", &v12, 0x1Cu);
    }

LABEL_23:
    abort();
  }

  if (!HIDWORD(a4))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v8 = *v11;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "HALIO_Graph_Builder.cpp";
      v14 = 1024;
      v15 = 32;
      v16 = 2080;
      v17 = "default_stereo_pair[1] > 0";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v12 = a4 - 1;
  LODWORD(v13) = HIDWORD(a4) - 1;
  *(result + 1) = 0;
  *(result + 2) = 0;
  *result = 0;
  result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(result, &v12, &v13 + 4, 2uLL);
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void AMCP::Wire_Identifier_to_string(std::string *this, const void **a2)
{
  AMCP::Terminal_Identifier_to_string(&v14, a2);
  v4 = std::string::insert(&v14, 0, "{ ", 2uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v15, " -> ", 4uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  AMCP::Terminal_Identifier_to_string(&__p, a2 + 5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v16, p_p, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v17, " }", 2uLL);
  *this = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1DE6387B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,int,AMCP::Wire_Description*>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v9 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a4, *(a4 + 8));
  }

  else
  {
    v16 = *a4;
  }

  v10 = *a5;
  v11 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  size = v17.__r_.__value_.__l.__size_;
  *a1 = v17.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 15) = *(&v17.__r_.__value_.__r.__words[1] + 7);
  *(a1 + 23) = v11;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a1 + 55) = *(&v16.__r_.__value_.__r.__words[1] + 7);
  v14 = v16.__r_.__value_.__l.__size_;
  *(a1 + 40) = v16.__r_.__value_.__r.__words[0];
  *(a1 + 48) = v14;
  *(a1 + 63) = v13;
  *(a1 + 64) = v10;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = xmmword_1DE757EF0;
  *(a1 + 156) = 64;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_1DE638944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<AMCP::Wire_Description>::__emplace_back_slow_path<std::string &,unsigned long &,std::string const&,int>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v6 = v5 + 1;
  if (v5 + 1 > 0x155555555555555)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v8 = 0x155555555555555;
  }

  else
  {
    v8 = v6;
  }

  v18 = a1;
  if (v8)
  {
    std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](v8);
  }

  v15 = 0;
  v16 = 192 * v5;
  std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,int,AMCP::Wire_Description*>(192 * v5, a2, a3, a4, a5);
  v17 = 192 * v5 + 192;
  v9 = a1[1];
  v10 = 192 * v5 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(&v15);
  return v14;
}

void sub_1DE638A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string const&,unsigned long &,std::string&,unsigned long &,AMCP::Wire_Description*>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v9 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a4, *(a4 + 8));
  }

  else
  {
    v16 = *a4;
  }

  v10 = *a5;
  v11 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  size = v17.__r_.__value_.__l.__size_;
  *a1 = v17.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 15) = *(&v17.__r_.__value_.__r.__words[1] + 7);
  *(a1 + 23) = v11;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a1 + 55) = *(&v16.__r_.__value_.__r.__words[1] + 7);
  v14 = v16.__r_.__value_.__l.__size_;
  *(a1 + 40) = v16.__r_.__value_.__r.__words[0];
  *(a1 + 48) = v14;
  *(a1 + 63) = v13;
  *(a1 + 64) = v10;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = xmmword_1DE757EF0;
  *(a1 + 156) = 64;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_1DE638BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALIO::HALIO_Graph_Builder::Aggregate_Graph_Configuration::~Aggregate_Graph_Configuration(HALIO::HALIO_Graph_Builder::Aggregate_Graph_Configuration *this)
{
  std::__function::__value_func<BOOL ()>::~__value_func[abi:ne200100](this + 72);
  v2 = *(this + 5);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    operator delete(v3);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(const void **values, uint64_t a2)
{
  result = CFArrayCreate(0, values, (a2 - values) >> 3, MEMORY[0x1E695E9C8]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void AMCP::Portal::IPC::IO_Receiver::~IO_Receiver(AMCP::Portal::IPC::IO_Receiver *this)
{
  AMCP::Portal::IPC::IO_Receiver::~IO_Receiver(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984FC0;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](this + 120);
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>>>::~__hash_table(this + 80);
  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  caulk::mach::details::release_os_object(*(this + 1), v3);
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::semaphore_receiver>::__on_zero_shared(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 22));
  std::__function::__value_func<void ()(caulk::ipc::mapped_memory &)>::~__value_func[abi:ne200100]((a1 + 18));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 14));
  MEMORY[0x1E12C0DE0](a1 + 13);
  MEMORY[0x1E12C0DE0](a1 + 12);
  MEMORY[0x1E12C0DE0](a1 + 11);
  caulk::ipc::mapped_memory::reset((a1 + 8));
  caulk::ipc::mapped_memory::reset((a1 + 5));
  v2 = a1[4];
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__function::__value_func<void ()(caulk::ipc::mapped_memory &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::semaphore_receiver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::eventlink_receiver>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 168);
  std::__function::__value_func<void ()(caulk::ipc::mapped_memory &)>::~__value_func[abi:ne200100](a1 + 136);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 104);
  MEMORY[0x1E12C0DE0](a1 + 96);
  caulk::mach::details::release_os_object(*(a1 + 88), v2);
  caulk::ipc::mapped_memory::reset((a1 + 64));
  caulk::ipc::mapped_memory::reset((a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::eventlink_receiver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5984FF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<caulk::mach::os_workgroup_managed>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Portal::IPC::IO_Receiver::register_buffer(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
  }

  v5 = v4;
  v6 = v5;
  v35 = v5;
  if (!v5 || MEMORY[0x1E12C2A30](v5) != MEMORY[0x1E69E9E80])
  {
    v7 = xpc_null_create();
    v8 = v35;
    v35 = v7;
  }

  *buf = &v35;
  *&buf[8] = "buffer shared memory";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v34, buf);
  v9 = v34;
  v11 = caulk::mach::details::retain_os_object(v9, v10);

  v33[1] = v11;
  caulk::mach::details::release_os_object(0, v12);
  *buf = &v35;
  *&buf[8] = "buffer device id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v33, buf);
  LODWORD(v11) = applesauce::xpc::dyn_cast_or_default(v33, 0);
  *buf = &v35;
  *&buf[8] = "buffer client id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v32, buf);
  v13 = applesauce::xpc::dyn_cast_or_default(&v32, 0);
  *buf = &v35;
  *&buf[8] = "buffer stream id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v31, buf);
  v14 = applesauce::xpc::dyn_cast_or_default(&v31, 0);
  *buf = &v35;
  *&buf[8] = "buffer type";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v30, buf);
  v29[0] = v11;
  v29[1] = v13;
  v29[2] = v14;
  v29[3] = applesauce::xpc::dyn_cast_or_default(&v30, 0);
  v15 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>>>::find<AMCP::Portal::IPC::shared_buffer_info_t>((a1 + 80), v29);
  if (!v15)
  {
    operator new();
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v15);
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
    *buf = 136315650;
    *&buf[4] = "IO_Receiver.mm";
    *&buf[12] = 1024;
    *&buf[14] = 158;
    v37 = 2080;
    v38 = "m_shared_memory_map.find(buffer_key) != m_shared_memory_map.end()";
    _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s buffer key already exists in the map!", buf, 0x1Cu);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
  __cxa_allocate_exception(0x40uLL);
  std::runtime_error::runtime_error(&v21, "buffer key already exists in the map!");
  std::runtime_error::runtime_error(&v22, &v21);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = -1;
  v22.__vftable = &unk_1F5992170;
  v23 = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v22);
  v39 = "void AMCP::Portal::IPC::IO_Receiver::register_buffer(__strong xpc_object_t)";
  v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
  v41 = 158;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
}

void sub_1DE639A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(xpc_object_t *a1, uint64_t a2)
{
  v4 = **a2;
  v5 = AMCP::Log::Scope::get_os_log_t(v4);
  v6 = xpc_dictionary_get_value(v5, *(a2 + 8));

  v7 = v6;
  *a1 = v7;
  v8 = v7;
  if (!v7)
  {
    *a1 = xpc_null_create();
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::function<void ()(caulk::ipc::mapped_memory &)>::operator=(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      (*(*v3 + 24))(v3, v8);
    }

    else
    {
      v9 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v8 != a1)
  {
    v4 = v9;
    v5 = *(a1 + 24);
    if (v9 == v8)
    {
      if (v5 == a1)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v8);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, a1);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v8);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(caulk::ipc::mapped_memory &)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE639FB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_1::~$_1(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::tuple<caulk::thread::attributes,AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_1,std::tuple<>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 120);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 88);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v2 + 72);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1E12C1730](v2, 0x1032C40A80D4485);
  }

  return a1;
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_1,std::tuple<>>>(caulk::thread::attributes *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v48 = a1;
  v1 = caulk::thread::attributes::apply_to_this_thread(a1);
  HIDWORD(v3) = 1098310496;
  LODWORD(v3) = *(v48 + 26);
  v4 = 24000000.0 / *(v48 + 12) * v3;
  v5 = v4;
  v6 = (v4 * 0.5);
  if (v6 <= 0x4B0)
  {
    v6 = 1200;
  }

  if (v6 >= 0x124F80)
  {
    v7 = 1200000;
  }

  else
  {
    v7 = v6;
  }

  if (v7 > v5)
  {
    caulk::mach::throw_if_mach_error(v1, v2);
  }

  v8 = *(v48 + 14);
  v9 = AMCP::Feature_Flags::access_event_link_oop_io(0, v2);
  if (v8)
  {
    if (v9)
    {
      v10 = *(v48 + 8);
      std::string::basic_string[abi:ne200100]<0>(__p, "io receiver");
      if (SHIBYTE(v53) < 0)
      {
        std::string::__init_copy_ctor_external(v62, __p[0], __p[1]);
      }

      else
      {
        *v62 = *__p;
        *&v62[16] = v53;
      }

      v62[24] = 1;
      v63 = __PAIR64__(v7, v5);
      *v64 = v5;
      *&v64[4] = 0x100000001;
      v65 = 1;
      v66 = 1;
      v67 = 1;
      v16 = *(v48 + 14);
      v59.__vftable = (MEMORY[0x1E69E3C18] + 16);
      v59.__imp_.__imp_ = caulk::mach::details::retain_os_object(*(v16 + 8), v11);
      v17 = *(v16 + 41);
      v18 = *(v16 + 32);
      v60 = *(v16 + 16);
      *v61 = v18;
      *&v61[9] = v17;
      v19 = caulk::ipc::synchronous_messenger::eventlink_receiver::start();
      caulk::mach::os_workgroup_managed::~os_workgroup_managed(&v59);
      if (v62[24] == 1 && (v62[23] & 0x80000000) != 0)
      {
        operator delete(*v62);
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v19 & 0x100000000) == 0 || (v19 & 1) == 0)
      {
        v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v21 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v20);
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
          *v62 = 136315650;
          *&v62[4] = "IO_Receiver.mm";
          *&v62[12] = 1024;
          *&v62[14] = 330;
          *&v62[18] = 2080;
          *&v62[20] = "receiver_start_result.value_or(false) != true";
          _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to start IO receiver", v62, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v58);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v51, "Failed to start IO receiver");
        std::runtime_error::runtime_error(__p, &v51);
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = -1;
        __p[0] = &unk_1F5992170;
        v53 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v62, __p);
        v63 = "auto AMCP::Portal::IPC::IO_Receiver::start_message_thread()::(anonymous class)::operator()() const";
        *v64 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
        *&v64[8] = 330;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v49);
      }
    }

    else
    {
      v13 = *(v48 + 10);
      std::string::basic_string[abi:ne200100]<0>(__p, "io receiver");
      if (SHIBYTE(v53) < 0)
      {
        std::string::__init_copy_ctor_external(v62, __p[0], __p[1]);
      }

      else
      {
        *v62 = *__p;
        *&v62[16] = v53;
      }

      v62[24] = 1;
      v63 = __PAIR64__(v7, v5);
      *v64 = v5;
      *&v64[4] = 0x100000001;
      v65 = 1;
      v66 = 1;
      v67 = 1;
      v25 = *(v48 + 14);
      v59.__vftable = (MEMORY[0x1E69E3C18] + 16);
      v59.__imp_.__imp_ = caulk::mach::details::retain_os_object(*(v25 + 8), v14);
      v26 = *(v25 + 41);
      v27 = *(v25 + 32);
      v60 = *(v25 + 16);
      *v61 = v27;
      *&v61[9] = v26;
      v28 = caulk::ipc::synchronous_messenger::semaphore_receiver::start();
      caulk::mach::os_workgroup_managed::~os_workgroup_managed(&v59);
      if (v62[24] == 1 && (v62[23] & 0x80000000) != 0)
      {
        operator delete(*v62);
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v28 & 0x100000000) == 0 || (v28 & 1) == 0)
      {
        v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v30 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v29);
        }

        v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          v33 = *v31;
          AMCP::Log::Scope::get_os_log_t(*v31);
          objc_claimAutoreleasedReturnValue();
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        else
        {
          v33 = *v31;
          AMCP::Log::Scope::get_os_log_t(*v31);
          objc_claimAutoreleasedReturnValue();
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *v62 = 136315650;
          *&v62[4] = "IO_Receiver.mm";
          *&v62[12] = 1024;
          *&v62[14] = 335;
          *&v62[18] = 2080;
          *&v62[20] = "receiver_start_result.value_or(false) != true";
          _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to start IO receiver", v62, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v58);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v51, "Failed to start IO receiver");
        std::runtime_error::runtime_error(__p, &v51);
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = -1;
        __p[0] = &unk_1F5992170;
        v53 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v62, __p);
        v63 = "auto AMCP::Portal::IPC::IO_Receiver::start_message_thread()::(anonymous class)::operator()() const";
        *v64 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
        *&v64[8] = 335;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v49);
      }
    }
  }

  else if (v9)
  {
    v12 = *(v48 + 8);
    std::string::basic_string[abi:ne200100]<0>(&v59, "io receiver");
    if (SBYTE7(v60) < 0)
    {
      std::string::__init_copy_ctor_external(v62, v59.__vftable, v59.__imp_.__imp_);
    }

    else
    {
      *v62 = v59;
      *&v62[16] = v60;
    }

    v62[24] = 1;
    v63 = __PAIR64__(v7, v5);
    *v64 = v5;
    *&v64[4] = 0x100000001;
    v65 = 1;
    v66 = 1;
    v67 = 1;
    v34 = caulk::ipc::synchronous_messenger::eventlink_receiver::start();
    v35 = v34;
    if (v62[24] == 1 && (v62[23] & 0x80000000) != 0)
    {
      operator delete(*v62);
    }

    if (SBYTE7(v60) < 0)
    {
      operator delete(v59.__vftable);
    }

    if ((v35 & 0x100000000) == 0 || (v35 & 1) == 0)
    {
      v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v36 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v34);
      }

      v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        v39 = *v37;
        AMCP::Log::Scope::get_os_log_t(*v37);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      else
      {
        v39 = *v37;
        AMCP::Log::Scope::get_os_log_t(*v37);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *v62 = 136315650;
        *&v62[4] = "IO_Receiver.mm";
        *&v62[12] = 1024;
        *&v62[14] = 343;
        *&v62[18] = 2080;
        *&v62[20] = "receiver_start_result.value_or(false) != true";
        _os_log_error_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to start IO receiver", v62, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v49, "Failed to start IO receiver");
      std::runtime_error::runtime_error(&v59, &v49);
      *(&v60 + 1) = 0;
      *v61 = 0;
      *&v61[8] = 0;
      *&v61[16] = -1;
      v59.__vftable = &unk_1F5992170;
      *&v60 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v62, &v59);
      v63 = "auto AMCP::Portal::IPC::IO_Receiver::start_message_thread()::(anonymous class)::operator()() const";
      *v64 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
      *&v64[8] = 343;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v50);
    }
  }

  else
  {
    v15 = *(v48 + 10);
    std::string::basic_string[abi:ne200100]<0>(&v59, "io receiver");
    if (SBYTE7(v60) < 0)
    {
      std::string::__init_copy_ctor_external(v62, v59.__vftable, v59.__imp_.__imp_);
    }

    else
    {
      *v62 = v59;
      *&v62[16] = v60;
    }

    v62[24] = 1;
    v63 = __PAIR64__(v7, v5);
    *v64 = v5;
    *&v64[4] = 0x100000001;
    v65 = 1;
    v66 = 1;
    v67 = 1;
    v40 = caulk::ipc::synchronous_messenger::semaphore_receiver::start();
    v41 = v40;
    if (v62[24] == 1 && (v62[23] & 0x80000000) != 0)
    {
      operator delete(*v62);
    }

    if (SBYTE7(v60) < 0)
    {
      operator delete(v59.__vftable);
    }

    if ((v41 & 0x100000000) == 0 || (v41 & 1) == 0)
    {
      v44 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v44 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v40);
      }

      v45 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v46 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        v47 = *v45;
        AMCP::Log::Scope::get_os_log_t(*v45);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      else
      {
        v47 = *v45;
        AMCP::Log::Scope::get_os_log_t(*v45);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *v62 = 136315650;
        *&v62[4] = "IO_Receiver.mm";
        *&v62[12] = 1024;
        *&v62[14] = 348;
        *&v62[18] = 2080;
        *&v62[20] = "receiver_start_result.value_or(false) != true";
        _os_log_error_impl(&dword_1DE1F9000, v47, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to start IO receiver", v62, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v49, "Failed to start IO receiver");
      std::runtime_error::runtime_error(&v59, &v49);
      *(&v60 + 1) = 0;
      *v61 = 0;
      *&v61[8] = 0;
      *&v61[16] = -1;
      v59.__vftable = &unk_1F5992170;
      *&v60 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v62, &v59);
      v63 = "auto AMCP::Portal::IPC::IO_Receiver::start_message_thread()::(anonymous class)::operator()() const";
      *v64 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
      *&v64[8] = 348;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v50);
    }
  }

  std::unique_ptr<std::tuple<caulk::thread::attributes,AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_1,std::tuple<>>>::~unique_ptr[abi:ne200100](&v48);
  v42 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE63ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::runtime_error a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, std::runtime_error a18, uint64_t a19, void *a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    if (a38 < 0)
    {
      operator delete(__p);
    }

    v42 = __cxa_begin_catch(exception_object);
    v43 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v43 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v42);
    }

    v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v45 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      v46 = *v44;
      AMCP::Log::Scope::get_os_log_t(*v44);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    else
    {
      v46 = *v44;
      AMCP::Log::Scope::get_os_log_t(*v44);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = *(v38 + 128);
      *(v40 - 144) = 136315650;
      *(v39 + 68) = "IO_Receiver.mm";
      *(v40 - 132) = 1024;
      *(v39 + 78) = 354;
      *(v40 - 126) = 1024;
      *(v40 - 124) = v47;
      _os_log_error_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception trying to start io receiver for device %u", (v40 - 144), 0x18u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE63A520);
  }

  _Unwind_Resume(exception_object);
}

void caulk::mach::throw_if_mach_error(caulk::mach *this, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *v6 = &unk_1F5985298;
  MEMORY[0x1E12C10C0](v5, 4, v6, "Constructing a thread with real time priority requires that the computation (quantum) is less than or equal to the constraint");
  std::error_category::~error_category(v6);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = std::runtime_error::what(v5);
    *v6 = 136315138;
    *&v6[4] = v2;
    _os_log_error_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Throwing: %s", v6, 0xCu);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = std::runtime_error::runtime_error(exception, v5);
  v4->__vftable = (MEMORY[0x1E69E5510] + 16);
  v4[1] = v5[1];
  __cxa_throw(v4, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
}

uint64_t std::__function::__func<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0,std::allocator<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0>,void ()(caulk::ipc::mapped_memory &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP6Portal3IPC11IO_Receiver20start_message_threadEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0,std::allocator<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0>,void ()(caulk::ipc::mapped_memory &)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, const BOOL *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  if (*(a2 + 1) <= 0x13FuLL)
  {
    a1 = CAAssertRtn();
LABEL_33:
    v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v38 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      v41 = *v39;
      AMCP::Log::Scope::get_os_log_t(*v39);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    else
    {
      v41 = *v39;
      AMCP::Log::Scope::get_os_log_t(*v39);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IO_Receiver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 192;
      *&buf[18] = 2080;
      *&buf[20] = "(payload_ptr) == nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO Payload data is null", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v44, "IO Payload data is null");
    std::runtime_error::runtime_error(&v45, &v44);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5992170;
    v46 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v45);
    *&v53 = "auto AMCP::Portal::IPC::IO_Receiver::start_message_thread()::(anonymous class)::operator()(caulk::ipc::mapped_memory &) const";
    *(&v53 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
    LODWORD(v54) = 192;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
  }

  v2 = *a2;
  if (!*a2)
  {
    goto LABEL_33;
  }

  v3 = a1;
  if (AMCP::Feature_Flags::access_collect_io_perfdata(0, a2))
  {
    *(v2 + 312) = mach_absolute_time();
  }

  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 248);
  v6 = *(v2 + 252);
  LODWORD(v43) = *(v2 + 248);
  LODWORD(v42) = v6;
  v8 = *(v2 + 48);
  v9 = *(v2 + 64);
  v10 = *(v2 + 96);
  v55 = *(v2 + 80);
  v56 = v10;
  v11 = *(v2 + 112);
  v12 = *(v2 + 128);
  v13 = *(v2 + 160);
  v59 = *(v2 + 144);
  v60 = v13;
  v57 = v11;
  v58 = v12;
  v14 = *(v2 + 176);
  v15 = *(v2 + 192);
  v16 = *(v2 + 224);
  v63 = *(v2 + 208);
  v64 = v16;
  v61 = v14;
  v62 = v15;
  v53 = v8;
  v54 = v9;
  v17 = *(v2 + 32);
  *buf = *(v2 + 16);
  *&buf[16] = v17;
  v18 = *(v2 + 240);
  v19 = *(v2 + 256);
  v20 = *(v2 + 260);
  v21 = *(v2 + 264);
  v22 = *(v2 + 268);
  v23 = *(v3 + 1);
  v24 = *(v23 + 48);
  v25 = *(v23 + 56);
  LODWORD(v44.__vftable) = *(v23 + 56);
  if (v4 <= 4)
  {
    if (v4 == 3)
    {
      kdebug_trace();
      v28 = (*(*v24 + 144))(v24, v25, v7, v2 + 280, v2 + 288, v2 + 296);
      v31 = *(v2 + 280);
      v32 = *(v2 + 288);
      kdebug_trace();
      goto LABEL_31;
    }

    if (v4 == 4)
    {
      v27 = (*(*v24 + 152))(v24, v25, v7, v5, v2 + 304, v2 + 305);
LABEL_15:
      v28 = v27;
      goto LABEL_31;
    }

LABEL_21:
    v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v28 = 1970171760;
    v35 = *(v33 + 8);
    v36 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v36 + 16) = 0;
    *(v36 + 20) = 16;
    *(v36 + 24) = "IO_Receiver.mm";
    *(v36 + 32) = 285;
    *v36 = &unk_1F59851B0;
    *(v36 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v35, v36);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    goto LABEL_31;
  }

  if (v4 == 5)
  {
    v26 = 160;
    goto LABEL_14;
  }

  if (v4 != 6)
  {
    if (v4 == 7)
    {
      v26 = 176;
LABEL_14:
      v27 = (*(*v24 + v26))(v24, v25, v7, v5, v18, buf);
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v45.__vftable = &v44;
  v45.__imp_.__imp_ = &v42;
  v46 = (v23 + 80);
  v47 = &v43;
  v29 = AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(AMCP::Portal::IPC::shared_buffer_type,unsigned int)#1}::operator()(&v45, v19, v20);
  v30 = AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(AMCP::Portal::IPC::shared_buffer_type,unsigned int)#1}::operator()(&v45, v21, v22);
  if (v5 == 1919513701 || v5 == 1919246692 || v5 == 1835628655)
  {
    kdebug_trace();
  }

  (*(*v24 + 160))(v24, LODWORD(v44.__vftable), v43, v5, v18, buf);
  v28 = (*(*v24 + 168))(v24, LODWORD(v44.__vftable), v42, v43, v5, v18, buf, v29, v30);
  (*(*v24 + 176))(v24, LODWORD(v44.__vftable), v43, v5, v18, buf);
  if (v5 == 1919513701 || v5 == 1919246692 || v5 == 1835628655)
  {
    kdebug_trace();
  }

LABEL_31:
  *(v2 + 272) = v28;
  v37 = *MEMORY[0x1E69E9840];
}

void sub_1DE63B700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, __int128 a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = *(v30 + 8);
    a29 = 16;
    *&a20 = "IO_Receiver.mm";
    DWORD2(a20) = 292;
    a22 = a19.__vftable;
    caulk::concurrent::messenger::enqueue_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>(v32, &a29, &a20);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE63B4A0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(AMCP::Portal::IPC::shared_buffer_type,unsigned int)#1}::operator()(unsigned int **a1, int a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v5 = a1[1];
    v6 = **a1;
    v8 = a1 + 2;
    v7 = a1[2];
    v9 = *v8[1];
    v13 = v6;
    v14 = v9;
    v15 = *v5;
    v16 = 1;
  }

  else
  {
    if (a2 == 2)
    {
      v4 = a1[1];
      v13 = **a1;
      v14 = 0;
      v15 = *v4;
      v16 = 2;
    }

    else
    {
      v13 = **a1;
      v14 = 0;
      v15 = 0;
      v16 = a2;
    }

    v7 = a1[2];
  }

  v11 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>>>::find<AMCP::Portal::IPC::shared_buffer_info_t>(v7, &v13);
  if (!v11)
  {
LABEL_14:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = v11[4];
  if (!v12[1])
  {
    CAAssertRtn();
    goto LABEL_14;
  }

  return *v12 + a3;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5985260;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = a3[1];
    *(v7 + 24) = v8;
    *v7 = &unk_1F5985208;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}