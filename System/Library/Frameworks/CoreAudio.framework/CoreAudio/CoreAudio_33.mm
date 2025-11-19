void sub_1DE4703C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 231) < 0)
  {
    operator delete(*(v1 + 208));
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Ramstad_Resampler::~Ramstad_Resampler(AMCP::DAL::Ramstad_Resampler *this)
{
  v1 = (this + 96);
  std::vector<std::unique_ptr<RamstadSRC>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = (this + 96);
  std::vector<std::unique_ptr<RamstadSRC>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void std::vector<std::unique_ptr<RamstadSRC>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<RamstadSRC>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

RamstadSRC **std::unique_ptr<RamstadSRC>::~unique_ptr[abi:ne200100](RamstadSRC **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    RamstadSRC::~RamstadSRC(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

uint64_t AMCP::IO_Core::IO_Thread_Realtime::run(int **this)
{
  v202 = *MEMORY[0x1E69E9840];
  v2 = **this;
  AMCP::Graph::Manifest_Queue::get_sample_rate(*(*this + 70));
  v3 = kdebug_trace();
  AMCP::Logging_Settings::instance(v3);
  if (HIBYTE(AMCP::Logging_Settings::instance(void)::s_instance) == 1)
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 35;
      *&buf[18] = 1024;
      *&buf[20] = v2;
      _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_INFO, "%32s:%-5d IO_Thread_Realtime(%u)::start", buf, 0x18u);
    }
  }

  cycle_size_in_host_ticks = AMCP::Graph::Manifest_Queue::get_cycle_size_in_host_ticks(*this);
  v10 = pthread_self();
  AMCP::Utility::configure_thread_for_realtime(v10, cycle_size_in_host_ticks, 0);
  if (!*this)
  {
    v158 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v158 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v160 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v159 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v159)
    {
      atomic_fetch_add_explicit(&v159->__shared_owners_, 1uLL, memory_order_relaxed);
      v161 = *v160;
      std::__shared_weak_count::__release_shared[abi:ne200100](v159);
    }

    else
    {
      v161 = *v160;
    }

    if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 145;
      *&buf[18] = 2080;
      *&buf[20] = "not ((m_manifest_queue) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v161, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO_Thread_Realtime::join_workgroup_interval() called with null queue", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v186);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("IO_Thread_Realtime::join_workgroup_interval() called with null queue", &v185);
    std::logic_error::logic_error(&v184, &v185);
    v184.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v198, &v184);
    *&v198[24] = 0;
    v199 = 0;
    v200 = 0;
    v201 = -1;
    *v198 = &unk_1F5991430;
    *&v198[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v198);
    *&v195 = "void AMCP::IO_Core::IO_Thread_Realtime::join_workgroup_interval()";
    *(&v195 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.cpp";
    LODWORD(v196[0]) = 145;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v193);
  }

  AMCP::Graph::Manifest_Queue::join_workgroup_interval(*this);
  if (!*this)
  {
    v162 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v162 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v164 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v163 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v163)
    {
      atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
      v165 = *v164;
      std::__shared_weak_count::__release_shared[abi:ne200100](v163);
    }

    else
    {
      v165 = *v164;
    }

    if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 161;
      *&buf[18] = 2080;
      *&buf[20] = "not ((m_manifest_queue) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v165, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO_Thread_Realtime::start_workgroup_interval() called with null queue", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v186);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("IO_Thread_Realtime::start_workgroup_interval() called with null queue", &v185);
    std::logic_error::logic_error(&v184, &v185);
    v184.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v198, &v184);
    *&v198[24] = 0;
    v199 = 0;
    v200 = 0;
    v201 = -1;
    *v198 = &unk_1F5991430;
    *&v198[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v198);
    *&v195 = "void AMCP::IO_Core::IO_Thread_Realtime::start_workgroup_interval()";
    *(&v195 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.cpp";
    LODWORD(v196[0]) = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v193);
  }

  AMCP::Graph::Manifest_Queue::start_workgroup_interval(*this);
  v11 = *this;
  v12 = AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(*this);
  if (!v12)
  {
    wake_time_in_host_time = AMCP::Graph::Manifest_Queue::get_wake_time_in_host_time(v11);
    if (wake_time_in_host_time > mach_absolute_time())
    {
      AMCP::Graph::Manifest_Queue::wait_for_next_cycle(v11);
    }
  }

  caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
  v15 = v14;
  v16 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
  if (v12)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  v19 = 0;
  v33 = HIDWORD(v17) & 1;
  v18 = 1;
LABEL_30:
  v183 = v33;
LABEL_31:
  v16 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
  if (v16 && (v18 & 1) != 0)
  {
    v34 = pthread_self();
    is_thread_configured_for_realtime = AMCP::Utility::is_thread_configured_for_realtime(v34, v35);
    if (!is_thread_configured_for_realtime)
    {
      v154 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v154 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_thread_configured_for_realtime);
      }

      v156 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v155 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v155)
      {
        atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
        v157 = *v156;
        std::__shared_weak_count::__release_shared[abi:ne200100](v155);
      }

      else
      {
        v157 = *v156;
      }

      if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "IO_Thread_Realtime.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 177;
        *&buf[18] = 2080;
        *&buf[20] = "(AMCP::Utility::is_thread_configured_for_realtime(pthread_self())) == false";
        _os_log_error_impl(&dword_1DE1F9000, v157, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Only call maybe_sleep_thread_for_power_change from a realtime thread", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v186);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Only call maybe_sleep_thread_for_power_change from a realtime thread", &v185);
      std::runtime_error::runtime_error(&v184, &v185);
      std::runtime_error::runtime_error(v198, &v184);
      *&v198[24] = 0;
      v199 = 0;
      v200 = 0;
      v201 = -1;
      *v198 = &unk_1F5992170;
      *&v198[16] = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, v198);
      *&v195 = "BOOL AMCP::IO_Core::IO_Thread_Realtime::maybe_sleep_thread_for_power_change(AMCP::Power_State)";
      *(&v195 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.cpp";
      LODWORD(v196[0]) = 177;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v193);
    }

    if (v15 > 2)
    {
      if (v15 == 4 || v15 == 3 && (this[4] & 1) != 0)
      {
LABEL_70:
        AMCP::Graph::Manifest_Queue::process_once(*this, 0, *(this + 34));
        goto LABEL_71;
      }
    }

    else if (v15 == 1)
    {
      if (*(this + 33))
      {
        goto LABEL_70;
      }
    }

    else if (v15 == 2)
    {
      goto LABEL_70;
    }

    v37 = 0;
    while (1)
    {
      v38 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
      if (!v38)
      {
        if ((v37 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_71:
        v58 = *this;
        v59 = *(*this + 70);
        if (!v59)
        {
          goto LABEL_77;
        }

        if (*(v58 + 424) == 1)
        {
          *(v58 + 424) = AMCP::Graph::Manifest_Queue::check_if_catchup_mode_is_still_active(*this);
          goto LABEL_176;
        }

        if (!AMCP::Graph::Manifest_Queue::timebases_are_valid(v59))
        {
LABEL_77:
          v18 = 0;
          goto LABEL_177;
        }

        v60 = *(v58 + 70);
        if (v60)
        {
          overload_time_in_host_time = AMCP::Graph::Manifest::get_overload_time_in_host_time(v60, (v58 + 312));
        }

        else
        {
          overload_time_in_host_time = -1;
        }

        v62 = mach_absolute_time();
        AMCP::Graph::Manifest::get_master_timebase(&v185, *(*(v58 + 70) + 72), *(*(v58 + 70) + 80));
        (*(*v185.__r_.__value_.__l.__data_ + 32))(buf);
        v63 = *(v58 + 80);
        v64 = *buf;
        v65 = v196[0];
        *(v58 + 42) = v195;
        *(v58 + 43) = v65;
        v66 = *&buf[16];
        *(v58 + 40) = *buf;
        *(v58 + 41) = v66;
        if (v63 != 0.0 && v63 > v64)
        {
          v72 = *(v58 + 70);
          if (!v72)
          {
            goto LABEL_138;
          }

          v74 = *(v72 + 72);
          v73 = *(v72 + 80);
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v180 = v74;
          v181 = v73;
          v75 = *v58;
          v76 = *(v74 + 64);
          *(v76 + 40) = 0;
          *(v76 + 8) = 0;
          *(v76 + 16) = 0;
          for (i = *(v74 + 24); i; i = *i)
          {
            v78 = i[12];
            v79 = *(v78 + 304);
            if (v79)
            {
              if (*(v78 + 31) < 0)
              {
                std::string::__init_copy_ctor_external(&v187, *(v78 + 8), *(v78 + 16));
                v79 = *(v78 + 304);
              }

              else
              {
                v187 = *(v78 + 8);
              }

              v188 = *(v78 + 32);
              LODWORD(v189) = *(v78 + 40);
              *v198 = v75;
              *&v198[8] = *&v187.__r_.__value_.__l.__data_;
              v80 = v187.__r_.__value_.__r.__words[2];
              memset(&v187, 0, sizeof(v187));
              *&v198[24] = v80;
              v199 = v188;
              LODWORD(v200) = v189;
              (*(*v79 + 112))(v79, v198);
              if ((v198[31] & 0x80000000) != 0)
              {
                operator delete(*&v198[8]);
              }
            }
          }

          v81 = *(v180 + 96);
          v82 = *(v180 + 104);
          if (v82)
          {
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v81 + 216))(v81);
          if (v82)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v82);
          }

          if (v181)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v181);
          }

          AMCP::Graph::Manifest_Queue::reanchor_after_time_change(v58);
          caulk::make_string("%u - Discontinuous timestamps", v198, *v58);
          v83 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v84 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v84)
          {
            atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*MEMORY[0x1E69E3C08])
          {
            v85 = *(v83 + 8);
            if (v198[23] >= 0)
            {
              v86 = v198;
            }

            else
            {
              v86 = *v198;
            }

            v87 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
            *(v87 + 16) = 0;
            *(v87 + 20) = 16;
            *(v87 + 24) = "Manifest_Queue.cpp";
            *(v87 + 32) = 560;
            *(v87 + 40) = v86;
            *v87 = &unk_1F596AE48;
            *(v87 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v85, v87);
            if (v84)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v84);
            }

            if ((v198[23] & 0x80000000) != 0)
            {
              operator delete(*v198);
            }

            goto LABEL_138;
          }

LABEL_277:
          __break(1u);
        }

        if (v62 < overload_time_in_host_time)
        {
          goto LABEL_138;
        }

        v68 = *(v58 + 70);
        if (!v68)
        {
          goto LABEL_138;
        }

        AMCP::Graph::Manifest::get_master_timebase(&v187, *(v68 + 72), *(v68 + 80));
        v69 = v187.__r_.__value_.__r.__words[0];
        v70 = (*(*v187.__r_.__value_.__l.__data_ + 64))(v187.__r_.__value_.__r.__words[0], v62);
        v71 = (*(*v69 + 64))(v69, overload_time_in_host_time);
        kdebug_trace();
        kdebug_trace();
        if (*(v58 + 425) == 1)
        {
          *(v58 + 424) = AMCP::Graph::Manifest_Queue::check_if_catchup_mode_is_still_active(v58);
        }

        else
        {
          v88 = *(v58 + 70);
          v89 = *(v88 + 72);
          v90 = *(v88 + 80);
          if (v90)
          {
            atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v91 = *(v89 + 160);
          if (v91)
          {
            std::function<void ()>::operator()(v91, *v58);
          }

          if (v90)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v90);
          }

          AMCP::Graph::Manifest_Queue::reanchor_after_time_change(v58);
        }

        v92 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v93 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v93)
        {
          atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!*MEMORY[0x1E69E3C08])
        {
          goto LABEL_277;
        }

        v94 = *(v92 + 8);
        v95 = *v58;
        v96 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v96 + 16) = 0;
        *(v96 + 20) = 16;
        *(v96 + 24) = "Manifest_Queue.cpp";
        *(v96 + 32) = 588;
        *(v96 + 40) = "";
        *(v96 + 48) = v95;
        *(v96 + 56) = v70;
        *(v96 + 64) = v71;
        *v96 = &unk_1F596AEA0;
        *(v96 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v94, v96);
        if (v93)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v93);
        }

        v102 = *(v58 + 70);
        v104 = *(v102 + 96);
        v103 = *(v102 + 104);
        if (!v103)
        {
          if (!v104)
          {
            goto LABEL_136;
          }

          v106 = 0;
LABEL_133:
          v107 = 1;
          goto LABEL_134;
        }

        atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        if (!v104)
        {
          goto LABEL_136;
        }

        v105 = *(v58 + 70);
        v104 = *(v105 + 96);
        v106 = *(v105 + 104);
        if (!v106)
        {
          goto LABEL_133;
        }

        v107 = 0;
        atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_134:
        v178 = *v58;
        AMCP::Graph::Manifest_Log::add_message(v104, 2, "Overload %s(%u) - current time: %0.f  deadline time: %0.f", v97, v98, v99, v100, v101, "");
        if ((v107 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v106);
        }

LABEL_136:
        if (v187.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v187.__r_.__value_.__l.__size_);
        }

LABEL_138:
        if (v185.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v185.__r_.__value_.__l.__size_);
        }

        updated = 0.0;
        if (*(v58 + 552) == 1)
        {
          if ((*(v58 + 432) & 2) == 0)
          {
            AMCP::DAL::DAL_Time_Delta::validate((v58 + 432));
          }

          v109 = *(v58 + 55);
          if ((*(v58 + 312) & 2) == 0)
          {
            AMCP::DAL::DAL_Time_Delta::validate((v58 + 312));
          }

          if (round(v109) != round(*(v58 + 40)))
          {
            v110 = *(v58 + 70);
            v112 = v110[12];
            v111 = v110[13];
            if (v111)
            {
              atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v111);
              if (v112)
              {
                v110 = *(v58 + 70);
                v112 = v110[12];
                v113 = v110[13];
                if (v113)
                {
                  v182 = 0;
                  atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
                  v110 = *(v58 + 70);
                  goto LABEL_153;
                }

LABEL_152:
                v182 = 1;
LABEL_153:
                AMCP::Graph::Manifest::get_iocontext_uid(buf, v110);
                if (buf[23] >= 0)
                {
                  v119 = buf;
                }

                else
                {
                  LOBYTE(v119) = buf[0];
                }

                if ((*(v58 + 312) & 2) == 0)
                {
                  AMCP::DAL::DAL_Time_Delta::validate((v58 + 312));
                }

                v120 = *(v58 + 40);
                if ((*(v58 + 432) & 2) == 0)
                {
                  AMCP::DAL::DAL_Time_Delta::validate((v58 + 432));
                }

                v179 = vcvtmd_s64_f64(*(v58 + 55));
                AMCP::Graph::Manifest_Log::add_message(v112, 7, "Manifest %s from %lld to %lld", v114, v115, v116, v117, v118, v119);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                if ((v182 & 1) == 0)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v113);
                }
              }
            }

            else if (v112)
            {
              v113 = 0;
              goto LABEL_152;
            }
          }

          updated = AMCP::Graph::Manifest_Queue::update_execution_context(v58, (v58 + 432));
          buf[0] = 0;
          v197 = 0;
          std::__optional_storage_base<AMCP::Graph::Manifest_Execution_Context,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AMCP::Graph::Manifest_Execution_Context,false>>(v58 + 432, buf);
          if (v197 == 1)
          {
            caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v196);
            if (v195)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v195);
            }
          }
        }

        if (round(updated) != 0.0)
        {
          v121 = *(v58 + 70);
          v122 = *(v121 + 72);
          v123 = *(v121 + 80);
          if (v123)
          {
            atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::Graph::Manifest_Counter::adjust_cycle_anchor_for_buffer_size_change(*(v122 + 64), updated);
          if (v123)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v123);
          }

          AMCP::Graph::Manifest_Queue::process_once(v58, 1, 0);
        }

        if (*(v58 + 46))
        {
          caulk::mach::os_workgroup_interval_managed::finish((v58 + 360));
        }

        AMCP::Graph::Manifest_Queue::wait_for_next_cycle(v58);
        AMCP::Graph::Manifest_Queue::start_workgroup_interval(v58);
LABEL_176:
        v18 = AMCP::Graph::Manifest_Queue::timebases_are_valid(*(v58 + 70));
LABEL_177:
        caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
        if (v15 != v124)
        {
          caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
          v15 = v125;
          if (v125 == 2)
          {
            *(this + 34) = *(this + 33) ^ 1;
            goto LABEL_181;
          }

          *(this + 34) = 0;
          if (v125)
          {
LABEL_181:
            if (!caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]))
            {
              goto LABEL_193;
            }

            v126 = *(*this + 70);
            if (!v126)
            {
              goto LABEL_193;
            }

            v127 = *(v126 + 72);
            v128 = *(v126 + 80);
            if (v128)
            {
              atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            AMCP::Graph::Manifest_Inventory::take_power_assertions(v127);
            if (!v128)
            {
              goto LABEL_193;
            }

LABEL_191:
            std::__shared_weak_count::__release_shared[abi:ne200100](v128);
            goto LABEL_193;
          }

          v129 = *(*this + 70);
          if (!v129)
          {
            v15 = 0;
            goto LABEL_193;
          }

          v130 = *(v129 + 72);
          v128 = *(v129 + 80);
          if (v128)
          {
            atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::Graph::Manifest_Inventory::release_power_assertions(v130);
          v15 = 0;
          if (v128)
          {
            goto LABEL_191;
          }
        }

LABEL_193:
        caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
        v19 = 1;
        if (v183 != (v131 & 1))
        {
          caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
          v33 = HIDWORD(v132) & 1;
          v133 = *(*this + 70);
          if (v133)
          {
            v134 = *(v133 + 72);
            v135 = *(v133 + 80);
            if (v135)
            {
              atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *v134 = (v132 & 0x100000000) >> 32;
            if ((v132 & 0x100000000) != 0)
            {
              AMCP::Graph::Manifest_Inventory::release_power_assertions(v134);
            }

            else
            {
              AMCP::Graph::Manifest_Inventory::take_power_assertions(v134);
            }

            if (v135)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v135);
            }
          }

          goto LABEL_30;
        }

        goto LABEL_31;
      }

      v39 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v39 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v38);
      }

      v41 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        v42 = *v41;
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      else
      {
        v42 = *v41;
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v54 = **this;
        *buf = 136315650;
        *&buf[4] = "IO_Thread_Realtime.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 189;
        *&buf[18] = 1024;
        *&buf[20] = v54;
        _os_log_debug_impl(&dword_1DE1F9000, v42, OS_LOG_TYPE_DEBUG, "%32s:%-5d Context(%u): IO_Thread_Realtime: parked for sleeping", buf, 0x18u);
      }

      v43 = this[2];
      v44 = mach_absolute_time();
      AMCP::IO_Core::Thread_Control_State::sleep_until_time(v43, v44 + 360000000);
      v45 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
      v47 = v46;
      if (v46 == 1)
      {
        if (*(this + 33))
        {
          goto LABEL_58;
        }
      }

      else if (v46 == 4 || v46 == 3 && (this[4] & 1) != 0)
      {
LABEL_58:
        v48 = 1;
        goto LABEL_59;
      }

      v48 = v46 == 2;
LABEL_59:
      AMCP::Logging_Settings::instance(v45);
      if (BYTE1(AMCP::Logging_Settings::instance(void)::s_instance) == 1)
      {
        v50 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v50 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v49);
        }

        v52 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v51 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          v53 = *v52;
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        else
        {
          v53 = *v52;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v55 = **this;
          v56 = *(this + 32);
          v57 = *(this + 33);
          *buf = 136316674;
          *&buf[4] = "IO_Thread_Realtime.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 202;
          *&buf[18] = 1024;
          *&buf[20] = v55;
          *&buf[24] = 1024;
          *&buf[26] = v47;
          *&buf[30] = 1024;
          LODWORD(v195) = v48;
          WORD2(v195) = 1024;
          *(&v195 + 6) = v56;
          WORD5(v195) = 1024;
          HIDWORD(v195) = v57;
          _os_log_debug_impl(&dword_1DE1F9000, v53, OS_LOG_TYPE_DEBUG, "%32s:%-5d Context(%u): %u Thread can play: %d, m_can_play_during_notification_wake: %d, m_can_play_during_dark_wake: %d", buf, 0x30u);
        }
      }

      v37 = 1;
      if (v48)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_16:
  v20 = *this;
  if (!*this)
  {
    v166 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v166 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v16);
    }

    v168 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v167 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v167)
    {
      atomic_fetch_add_explicit(&v167->__shared_owners_, 1uLL, memory_order_relaxed);
      v169 = *v168;
      std::__shared_weak_count::__release_shared[abi:ne200100](v167);
    }

    else
    {
      v169 = *v168;
    }

    if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 169;
      *&buf[18] = 2080;
      *&buf[20] = "not ((m_manifest_queue) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v169, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO_Thread_Realtime::finish_workgroup_interval() called with null queue", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v186);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("IO_Thread_Realtime::finish_workgroup_interval() called with null queue", &v185);
    std::logic_error::logic_error(&v184, &v185);
    v184.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v198, &v184);
    *&v198[24] = 0;
    v199 = 0;
    v200 = 0;
    v201 = -1;
    *v198 = &unk_1F5991430;
    *&v198[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v198);
    *&v195 = "void AMCP::IO_Core::IO_Thread_Realtime::finish_workgroup_interval()";
    *(&v195 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.cpp";
    LODWORD(v196[0]) = 169;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v193);
  }

  if (*(v20 + 46))
  {
    v16 = caulk::mach::os_workgroup_interval_managed::finish((v20 + 360));
  }

  if (v12 == 2)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    v22 = v2;
    v23 = 2;
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v16);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *v25;
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    else
    {
      v26 = *v25;
    }

    v16 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      *buf = 136315394;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 91;
      _os_log_debug_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_DEBUG, "%32s:%-5d Interrupted while trying to start the IO thread", buf, 0x12u);
    }

    goto LABEL_217;
  }

  v22 = v2;
  v23 = v12;
  if (v18 & v19)
  {
    goto LABEL_217;
  }

  v27 = pthread_self();
  v28 = pthread_getname_np(v27, buf, 0xFAuLL);
  v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v29 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v28);
  }

  v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    v32 = *v31;
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  else
  {
    v32 = *v31;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *v198 = 136315650;
    *&v198[4] = "IO_Thread_Realtime.cpp";
    *&v198[12] = 1024;
    *&v198[14] = 98;
    *&v198[18] = 2080;
    *&v198[20] = buf;
    _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d I/O thread exited unexpectedly: %s", v198, 0x1Cu);
  }

  v136 = *this;
  v137 = *(*this + 70);
  v139 = *(v137 + 72);
  v138 = *(v137 + 80);
  if (!v138)
  {
    if (v139)
    {
      v141 = 0;
      goto LABEL_214;
    }

LABEL_269:
    v174 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v174 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v138);
    }

    v176 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v175 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v175)
    {
      atomic_fetch_add_explicit(&v175->__shared_owners_, 1uLL, memory_order_relaxed);
      v177 = *v176;
      std::__shared_weak_count::__release_shared[abi:ne200100](v175);
    }

    else
    {
      v177 = *v176;
    }

    if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
    {
      *v198 = 136315650;
      *&v198[4] = "Manifest_Queue.cpp";
      *&v198[12] = 1024;
      *&v198[14] = 802;
      *&v198[18] = 2080;
      *&v198[20] = "not (m_current_manifiest->get_inventory())";
      _os_log_error_impl(&dword_1DE1F9000, v177, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We need a valid inventory in order to report a thread error", v198, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v192);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("We need a valid inventory in order to report a thread error", &v193);
    std::logic_error::logic_error(&v186, &v193);
    v186.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v187, &v186);
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v191 = -1;
    v187.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v187.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v198, &v187);
    v199 = "void AMCP::Graph::Manifest_Queue::report_thread_error() const";
    v200 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
    v201 = 802;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v184);
  }

  atomic_fetch_add_explicit(v138 + 1, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v138);
  if (!v139)
  {
    goto LABEL_269;
  }

  v140 = *(v136 + 70);
  v139 = *(v140 + 72);
  v141 = *(v140 + 80);
  if (v141)
  {
    v142 = 0;
    atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_215;
  }

LABEL_214:
  v142 = 1;
LABEL_215:
  v16 = AMCP::Graph::Manifest_Inventory::report_thread_error(*(v139 + 192));
  if ((v142 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v141);
  }

LABEL_217:
  v143 = *this;
  if (!*this)
  {
    v170 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v170 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v16);
    }

    v172 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v171 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v171)
    {
      atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
      v173 = *v172;
      std::__shared_weak_count::__release_shared[abi:ne200100](v171);
    }

    else
    {
      v173 = *v172;
    }

    if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 153;
      *&buf[18] = 2080;
      *&buf[20] = "not ((m_manifest_queue) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v173, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO_Thread_Realtime::leave_workgroup_interval() called with null queue", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v186);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("IO_Thread_Realtime::leave_workgroup_interval() called with null queue", &v185);
    std::logic_error::logic_error(&v184, &v185);
    v184.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v198, &v184);
    *&v198[24] = 0;
    v199 = 0;
    v200 = 0;
    v201 = -1;
    *v198 = &unk_1F5991430;
    *&v198[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v198);
    *&v195 = "void AMCP::IO_Core::IO_Thread_Realtime::leave_workgroup_interval()";
    *(&v195 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.cpp";
    LODWORD(v196[0]) = 153;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v193);
  }

  if (*(v143 + 46))
  {
    caulk::mach::os_workgroup_managed::leave((v143 + 360));
  }

  v144 = pthread_self();
  AMCP::Utility::configure_thread_for_normal_priority(v144, v145);
  AMCP::Graph::Manifest_Queue::flush(*this);
  v146 = kdebug_trace();
  AMCP::Logging_Settings::instance(v146);
  if (HIBYTE(AMCP::Logging_Settings::instance(void)::s_instance) == 1)
  {
    v148 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v148 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v147);
    }

    v150 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v149 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v149)
    {
      atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
      v151 = *v150;
      std::__shared_weak_count::__release_shared[abi:ne200100](v149);
    }

    else
    {
      v151 = *v150;
    }

    if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 116;
      *&buf[18] = 1024;
      *&buf[20] = v22;
      _os_log_impl(&dword_1DE1F9000, v151, OS_LOG_TYPE_INFO, "%32s:%-5d IO_Thread_Realtime(%u)::end", buf, 0x18u);
    }
  }

  v152 = *MEMORY[0x1E69E9840];
  return v23;
}

void sub_1DE472368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a2)
  {
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    if (a38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a38);
    }

    if (a32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a32);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE4724D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a27)
    {
      operator delete(a27);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v55 - 192);
    boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a37);
    MEMORY[0x1E12C0F00](&a35);
    if (a53 < 0)
    {
      operator delete(a48);
    }

    if (v54)
    {
      __cxa_free_exception(v53);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a47);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE47255C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a2)
  {
    if (__p)
    {
      a42 = __p;
      operator delete(__p);
    }

    if (a48)
    {
      a49 = a48;
      operator delete(a48);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(&a52);
    boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(v54 - 192);
    MEMORY[0x1E12C0F00](&a27);
    if (a36 < 0)
    {
      operator delete(a31);
    }

    if (v53)
    {
      __cxa_free_exception(v52);
    }

    JUMPOUT(0x1DE47267CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE4725CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE4725D0);
  }

  __clang_call_terminate(a1);
}

void sub_1DE4725E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::runtime_error a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a2)
  {
    if (SHIBYTE(a32) < 0)
    {
      operator delete(a30);
    }

    __cxa_free_exception(v48);
    JUMPOUT(0x1DE47267CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE472688(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE472690);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::DAL::Packetized_Data_Handler::get_data@<X0>(AMCP::DAL::Packetized_Data_Handler *a1@<X0>, uint64_t *a2@<X1>, caulk::rt_safe_memory_resource *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a5 - a4;
  if (round(a5 - a4) != round(AMCP::DAL::Packetized_Data_Handler::get_length_in_frames(a1)))
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

    v19 = vcvtmd_s64_f64(v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "Packetized_Data_Handler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 152;
      v31 = 2080;
      v32 = "not (range.length() == get_length_in_frames())";
      v33 = 2048;
      *v34 = v19;
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Bad range length for packetized data, requested range length %lld", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Bad range length for packetized data, requested range length %lld", &v21, v19);
    std::logic_error::logic_error(&v22, &v21);
    v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v23, &v22);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v23.__vftable = &unk_1F5991430;
    v24 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v23);
    *&v34[2] = "virtual Sample_Group<uint8_t> AMCP::DAL::Packetized_Data_Handler::get_data(const Container &, Sample_Time_Range) const";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
    v36 = 152;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  result = AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Packetized_Data_Handler>(*a2);
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  v10 = *(result + 64);
  v11 = *(result + 72);
  while (v10 != v11)
  {
    v12 = *(v10 + 1);
    v13 = *v10;
    v10 += 8;
    *buf = v12;
    *&buf[8] = v13;
    result = caulk::rt::vector<AMCP::DAL::Audio_Samples<unsigned char>>::emplace_back<AMCP::DAL::Audio_Samples<unsigned char>>(a3, buf);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE472990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
    if ((a11 & 1) == 0)
    {
LABEL_10:
      AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 129));
      _Unwind_Resume(a1);
    }
  }

  else if (!a11)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

double AMCP::DAL::Packetized_Data_Handler::get_length_in_frames(AMCP::DAL::Packetized_Data_Handler *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == *(this + 9))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      *buf = 136315650;
      v18 = "Packetized_Data_Handler.cpp";
      v19 = 1024;
      v20 = 97;
      v21 = 2080;
      v22 = "not (not m_samples.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Packetized_Data_Handler::get_length_in_frames: empty data buffer", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Packetized_Data_Handler::get_length_in_frames: empty data buffer", &v8);
    std::logic_error::logic_error(&v9, &v8);
    v9.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v10, &v9);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
    v10.__vftable = &unk_1F5991430;
    v11 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v10);
    v23 = "virtual Sample_Time AMCP::DAL::Packetized_Data_Handler::get_length_in_frames() const";
    v24 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
    v25 = 97;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v7);
  }

  v1 = *MEMORY[0x1E69E9840];
  return (*(this + 7) * *(this + 7));
}

void sub_1DE472CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Packetized_Data_Handler>(uint64_t result)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v2 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "Container.h";
      v18 = 1024;
      v19 = 121;
      v20 = 2080;
      v21 = "not ((m_impl.get()) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to call Container::GetContainerData on a null Container", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v15);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to call Container::GetContainerData on a null Container", &v7);
    std::logic_error::logic_error(&v8, &v7);
    v8.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v9, &v8);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = -1;
    v9.__vftable = &unk_1F5991430;
    v10 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v9);
    v22 = "T *AMCP::DAL::Container::get_container_data_ptr() const [T = AMCP::DAL::Packetized_Data_Handler]";
    v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.h";
    v24 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v6);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE472FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::rt::vector<AMCP::DAL::Audio_Samples<unsigned char>>::emplace_back<AMCP::DAL::Audio_Samples<unsigned char>>(caulk::rt_safe_memory_resource *result, _OWORD *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
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

    v18[4] = v3;
    if (v10)
    {
      v10 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = (v10 + 16 * v7);
    v13 = v10 + 16 * v11;
    *v12 = *a2;
    v6 = v12 + 1;
    v14 = *(v3 + 1) - *v3;
    v15 = v12 - v14;
    memcpy(v12 - v14, *v3, v14);
    v16 = *v3;
    *v3 = v15;
    *(v3 + 1) = v6;
    v17 = *(v3 + 2);
    *(v3 + 2) = v13;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(v18);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

unint64_t std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(unint64_t result)
{
  if (!(result >> 60))
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

caulk::rt_safe_memory_resource *std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(caulk::rt_safe_memory_resource *result)
{
  v1 = result;
  v3 = *(result + 1);
  v2 = *(result + 2);
  if (v2 != v3)
  {
    *(result + 2) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v4 = *result;
  if (!*result)
  {
    return v1;
  }

  if ((*(result + 3) - v4) >= 0)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(result, v4);
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t *AMCP::DAL::Packetized_Data_Handler::get_ring_buffer_time_translator(AMCP::DAL::Packetized_Data_Handler *this)
{
  {
    AMCP::DAL::Packetized_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator = &unk_1F5971930;
  }

  return &AMCP::DAL::Packetized_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator;
}

void AMCP::DAL::Packetized_Buffer_Time_Translator::translate_range(const AMCP::DAL::DAL_Time_Range *a1@<X1>, std::__shared_weak_count **a2@<X2>, uint64_t *a3@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  AMCP::DAL::DAL_Time::operator-(&v23, (a2 + 5), a2);
  AMCP::DAL::DAL_Time::operator-(buf, (a1 + 40), a1);
  v7 = AMCP::DAL::DAL_Time_Delta::operator==(&v23, buf);
  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  v8 = v25;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (!v7)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
      AMCP::DAL::DAL_Time::operator-(&v23, (a2 + 5), a2);
      if ((v23 & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(&v23);
      }

      *buf = 136315906;
      *&buf[4] = "Packetized_Data_Handler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 173;
      *&buf[18] = 2080;
      *&buf[20] = "not (range.length() == ref_range.length())";
      *&buf[28] = 2048;
      *&buf[30] = vcvtmd_s64_f64(*(&v23 + 1));
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s invalid range length %lld", buf, 0x26u);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
    __cxa_allocate_exception(0x40uLL);
    AMCP::DAL::DAL_Time::operator-(v33, (a2 + 5), a2);
    if ((v33[0] & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(v33);
    }

    caulk::make_string("invalid range length %lld", &v35, vcvtmd_s64_f64(v34));
    std::logic_error::logic_error(&v36, &v35);
    v36.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v36);
    *&buf[24] = 0;
    *&buf[32] = 0;
    v39 = 0;
    v40 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v23, buf);
    v25 = "virtual rt_safe_vector<Buffer_Time_Translator::Translation_Range> AMCP::DAL::Packetized_Buffer_Time_Translator::translate_range(const DAL_Time_Range &, const DAL_Time_Range &) const";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
    LODWORD(v27) = 173;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  AMCP::DAL::DAL_Time::operator-(buf, (a1 + 40), a1);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  *&v23 = 0;
  *(&v23 + 1) = *&buf[8];
  v24 = *a2;
  v9 = a2[3];
  v25 = a2[2];
  v26 = v9;
  v10 = a2[4];
  v27 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = *(a2 + 5);
  v11 = a2[8];
  v29 = a2[7];
  v30 = v11;
  v12 = a2[9];
  v31 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a3[1];
  if (v13 >= a3[2])
  {
    v14 = std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range>(a3, &v23);
    v15 = v31;
    a3[1] = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    *v13 = v23;
    *(v13 + 16) = v24;
    *(v13 + 32) = v25;
    *(v13 + 40) = v9;
    *(v13 + 48) = v10;
    v26 = 0;
    v27 = 0;
    *(v13 + 56) = v28;
    *(v13 + 72) = v29;
    *(v13 + 80) = v11;
    *(v13 + 88) = v12;
    a3[1] = v13 + 96;
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v16 = *&buf[32];
  if (*&buf[32])
  {
    v17 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  else
  {
    v18 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE47371C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *AMCP::DAL::Packetized_Data_Handler::copy(uint64_t **a1, double *a2, uint64_t *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Packetized_Data_Handler>(*a3);
  length_in_frames = AMCP::DAL::Packetized_Data_Handler::get_length_in_frames(v6);
  v8 = a2[1] - *a2;
  v10 = round(AMCP::DAL::Packetized_Data_Handler::get_length_in_frames(a1));
  v11 = round(v8);
  if (v10 != v11)
  {
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

    v26 = vcvtmd_s64_f64(v8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "Packetized_Data_Handler.cpp";
      v39 = 1024;
      v40 = 194;
      v41 = 2080;
      v42 = "not (get_length_in_frames() == source_frame_length)";
      v43 = 2048;
      *v44 = v26;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s invalid source frame length %lld", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("invalid source frame length %lld", &v29, v26);
    std::logic_error::logic_error(&v30, &v29);
    v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v31, &v30);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    v31.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v31);
    *&v44[2] = "virtual void AMCP::DAL::Packetized_Data_Handler::copy(const Sample_Time_Range &, Container, Sample_Time, DAL_Operation_Context_Ref) const";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
    v46 = 194;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v28);
  }

  if (v11 != round(length_in_frames))
  {
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

    v27 = vcvtmd_s64_f64(length_in_frames);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "Packetized_Data_Handler.cpp";
      v39 = 1024;
      v40 = 195;
      v41 = 2080;
      v42 = "not (source_frame_length == dest_frame_length)";
      v43 = 2048;
      *v44 = v27;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s invalid dest frame length %lld", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("invalid dest frame length %lld", &v29, v27);
    std::logic_error::logic_error(&v30, &v29);
    v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v31, &v30);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    v31.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v31);
    *&v44[2] = "virtual void AMCP::DAL::Packetized_Data_Handler::copy(const Sample_Time_Range &, Container, Sample_Time, DAL_Operation_Context_Ref) const";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
    v46 = 195;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v28);
  }

  AMCP::DAL::sample_group_from_packetized_samples(buf, (v5 + 64));
  AMCP::DAL::sample_group_from_packetized_samples(&v31, a1 + 8);
  v12 = v31.__vftable;
  if (v31.__imp_.__imp_ != v31.__vftable)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      memcpy(*(*buf + v13), *(&v12->~logic_error + v13), *(&v12->~logic_error_0 + v13));
      v12 = v31.__vftable;
      *(*(v5 + 64) + v14) = *(&v31.~logic_error_0 + v13);
      ++v15;
      v14 += 32;
      v13 += 16;
    }

    while (v15 < (v31.__imp_.__imp_ - v12) >> 4);
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v31);
  result = std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](buf);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE473DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a26);
  MEMORY[0x1E12C0F00](&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v27)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 145));
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *AMCP::DAL::sample_group_from_packetized_samples(caulk::rt_safe_memory_resource *result, uint64_t **a2)
{
  v2 = result;
  *result = 0;
  *(result + 1) = 0;
  *(result + 2) = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if ((v5 >> 5) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v18 = result;
    v7 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(v5 >> 5);
    v9 = v7 + 16 * v8;
    v10 = *(v2 + 1) - *v2;
    v11 = v7 - v10;
    memcpy((v7 - v10), *v2, v10);
    v12 = *v2;
    *v2 = v11;
    *(v2 + 1) = v7;
    v13 = *(v2 + 2);
    *(v2 + 2) = v9;
    v16 = v12;
    v17 = v13;
    *&v15 = v12;
    *(&v15 + 1) = v12;
    result = std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(&v15);
    v3 = *a2;
    v4 = a2[1];
  }

  while (v3 != v4)
  {
    *&v15 = v3[1];
    v14 = *v3;
    v3 += 4;
    *(&v15 + 1) = v14;
    result = caulk::rt::vector<AMCP::DAL::Audio_Samples<unsigned char>>::emplace_back<AMCP::DAL::Audio_Samples<unsigned char>>(v2, &v15);
  }

  return result;
}

uint64_t AMCP::DAL::Packetized_Data_Handler::set_audio_buffer_list(uint64_t result, void *a2)
{
  v2 = **a2;
  v3 = *(result + 64);
  v4 = (*(result + 72) - v3) >> 5;
  if (v4 >= v2)
  {
    v5 = **a2;
  }

  else
  {
    v5 = (*(result + 72) - v3) >> 5;
  }

  if (v5)
  {
    v6 = (*a2 + 12);
    v7 = *(result + 64);
    v8 = v5;
    do
    {
      v9 = *v6;
      v6 += 4;
      *v7 = v9;
      v7 += 4;
      --v8;
    }

    while (v8);
  }

  if (v4 > v2)
  {
    v10 = 0;
    v11 = v4 - v5;
    v12 = (v4 - v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v13 = vdupq_n_s64(v11 - 1);
    v14 = (v3 + 32 * v5 + 32);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_1DE757E30)));
      if (v15.i8[0])
      {
        *(v14 - 4) = 0;
      }

      if (v15.i8[4])
      {
        *v14 = 0;
      }

      v10 += 2;
      v14 += 8;
    }

    while (v12 != v10);
  }

  return result;
}

caulk::rt_safe_memory_resource *AMCP::DAL::Packetized_Data_Handler::get_audio_buffer_list@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, caulk::rt_safe_memory_resource **a3@<X8>)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 56);
  v13[0] = &unk_1F59915B8;
  v13[3] = v13;
  *a3 = AMCP::Utility::AudioBufferList_Create(v7);
  std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100]((a3 + 1), v13);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v13);
  v6 = *a2;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Packetized_Data_Handler>(v6);
  v7 = v7;
  AMCP::DAL::sample_group_from_packetized_samples(v13, (v6 + 64));
  if (v7)
  {
    v8 = *(a1 + 36);
    v9 = (*a3 + 16);
    v10 = (v13[0] + 8);
    do
    {
      *(v9 - 2) = v8;
      *(v9 - 1) = *v10;
      *v9 = *(v10 - 1);
      v9 += 2;
      v10 += 2;
      v7 = (v7 - 1);
    }

    while (v7);
  }

  result = std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](v13);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE474104(_Unwind_Exception *a1)
{
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](v1, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Packetized_Data_Handler::get_allocation_size(AMCP::DAL::Packetized_Data_Handler *this)
{
  v1 = *(this + 8);
  v2 = *(this + 9);
  if (v1 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += *(v1 + 16);
    v1 += 32;
  }

  while (v1 != v2);
  return result;
}

uint64_t AMCP::DAL::Packetized_Data_Handler::reuse_container(uint64_t this)
{
  v1 = *(this + 64);
  v2 = *(this + 72);
  while (v1 != v2)
  {
    *v1 = v1[2];
    v1 += 4;
  }

  return this;
}

void AMCP::DAL::Packetized_Data_Handler::adopt(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "Packetized_Data_Handler.cpp";
    v7 = 1024;
    v8 = 71;
    v9 = 2080;
    v10 = "false";
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Packetized_Data_Handler::adopt unsupported", &v5, 0x1Cu);
  }

  abort();
}

void AMCP::DAL::Packetized_Data_Handler::~Packetized_Data_Handler(AMCP::DAL::Packetized_Data_Handler *this)
{
  *this = &unk_1F5971870;
  v1 = (this + 64);
  std::vector<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>,caulk::rt_allocator<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5971870;
  v1 = (this + 64);
  std::vector<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>,caulk::rt_allocator<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void std::vector<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>,caulk::rt_allocator<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = v3 - 32;
        AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data((v3 - 24));
        v3 = v7;
      }

      while (v7 != v2);
      v5 = *a1;
      v4 = **a1;
    }

    v1[1] = v2;
    if (v5[2] - v4 >= 0 && (v8 = *MEMORY[0x1E69E3C08]) != 0)
    {

      caulk::rt_safe_memory_resource::rt_deallocate(v8, v4);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t AMCP::DAL::Packetized_Data_Handler::Packetized_Data_Handler(uint64_t a1, uint64_t a2, double a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v5;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  *a1 = &unk_1F5971870;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  v6 = (a1 + 64);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = *(a2 + 16);
  if (!v7)
  {
    v8 = 4.0;
    LODWORD(v8) = *(a2 + 28);
    v7 = (a3 * 4.0 * v8);
    if (!v7)
    {
      v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v23 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v26 = *v25;
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      else
      {
        v26 = *v25;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v38 = "Packetized_Data_Handler.cpp";
        v39 = 1024;
        v40 = 50;
        v41 = 2080;
        v42 = "not (size > 0)";
        _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v36);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v28);
      std::logic_error::logic_error(&v29, &v28);
      v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v30, &v29);
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = -1;
      v30.__vftable = &unk_1F5991430;
      v31 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
      v43 = "AMCP::DAL::Packetized_Data_Handler::Packetized_Data_Handler(const CA::StreamDescription &, Sample_Time)";
      v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
      v45 = 50;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
    }
  }

  v9 = MEMORY[0x1E69E3C08];
  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_24;
  }

  v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  v11 = (v10 + 2);
  *v10 = 0u;
  v10[1] = 0u;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = (v10 + v12 - v13);
  if (v12 != v13)
  {
    v15 = *(a1 + 64);
    v16 = (v10 + v12 - v13);
    do
    {
      v17 = *v15;
      v18 = *(v15 + 1);
      v15 += 32;
      *v16 = v17;
      v16[1] = v18;
      v16 += 2;
    }

    while (v15 != v13);
    do
    {
      AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data((v12 + 8));
      v12 += 32;
    }

    while (v12 != v13);
    v12 = *v6;
  }

  *(a1 + 64) = v14;
  *(a1 + 72) = v11;
  v19 = *(a1 + 80);
  *(a1 + 80) = v11;
  if (v12)
  {
    if (v19 - v12 >= 0 && *v9)
    {
      caulk::rt_safe_memory_resource::rt_deallocate(*v9, v12);
      v14 = *(a1 + 64);
      v11 = *(a1 + 72);
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
  }

LABEL_14:
  while (v14 != v11)
  {
    *v14 = v7;
    v20 = (v14 + 1);
    AMCP::DAL::Audio_Samples_Data::allocate(v20, v7);
    v14 = (v20 + 24);
  }

  v21 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE474770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  *(v35 - 160) = v34;
  std::vector<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>,caulk::rt_allocator<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>>>::__destroy_vector::operator()[abi:ne200100]((v35 - 160));
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Audio_Samples_Data::Audio_Samples_Data<gsl::details::span_iterator<gsl::span<std::byte,-1l>,false>>(uint64_t result, uint64_t a2, void *a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 1;
  v3 = *a2;
  if (!*a2 || (v4 = *(a2 + 8), v4 < 0) || *v3 <= v4 || (*result = v3[1] + v4, *a3 != v3))
  {
    std::terminate();
  }

  *(result + 8) = a3[1] - v4;
  return result;
}

uint64_t AllowHALClientsInThisProcess(void)
{
  {
    AllowHALClientsInThisProcess(void)::global = AllowHALClientsInThisProcess(void)::$_0::operator()();
  }

  if (AllowHALClientsInThisProcess(void)::global)
  {
    v0 = 1;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Use of the CoreAudio HAL in this process is being denied", v2, 2u);
    v0 = AllowHALClientsInThisProcess(void)::global;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

BOOL AllowHALClientsInThisProcess(void)::$_0::operator()()
{
  v11 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl() && (MainBundle = CFBundleGetMainBundle()) != 0 && (Identifier = CFBundleGetIdentifier(MainBundle)) != 0)
  {
    v2 = Identifier;
    v3 = CFEqual(Identifier, @"com.apple.mediaserverd");
    v4 = v3 == 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = v2;
      v9 = 1024;
      v10 = v3 == 0;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "HAL query bundle %@ -> allowed %d", &v7, 0x12u);
    }
  }

  else
  {
    v4 = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void ContextHostedModifiers::requestable_modifiers(ContextHostedModifiers *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>>::__init_with_size[abi:ne200100]<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*,std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*>(a2, *(this + 1), *(this + 2), (*(this + 2) - *(this + 1)) >> 4);
}

void std::vector<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>>::__init_with_size[abi:ne200100]<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*,std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void ContextHostedModifiers::~ContextHostedModifiers(ContextHostedModifiers *this)
{
  *this = &unk_1F5971970;
  v1 = (this + 8);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5971970;
  v1 = (this + 8);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void virtual thunk toHALS_DSPHostIntegrationPoint_IOContext::~HALS_DSPHostIntegrationPoint_IOContext(HALS_DSPHostIntegrationPoint_IOContext *this)
{
  HALS_DSPHostIntegrationPoint_IOContext::~HALS_DSPHostIntegrationPoint_IOContext((this + *(*this - 24)));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_DSPHostIntegrationPoint_IOContext::~HALS_DSPHostIntegrationPoint_IOContext((this + *(*this - 24)));
}

void HALS_DSPHostIntegrationPoint_IOContext::~HALS_DSPHostIntegrationPoint_IOContext(HALS_DSPHostIntegrationPoint_IOContext *this)
{
  HALS_DSPHostIntegrationPoint_IOContext::~HALS_DSPHostIntegrationPoint_IOContext(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59719A8;
  *(this + 29) = &unk_1F5971A30;
  v2 = *(this + 17);
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 26);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v11 = (this + 176);
  std::vector<std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v6 = *(this + 21);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 17);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 15);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v10 = *(this + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void std::vector<std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 2);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t HALS_DSPHostIntegrationPoint_IOContext::modifiers@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 208);
  *a2 = *(this + 200);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void HALS_DSPHostIntegrationPoint_IOContext::downstream_list(HALS_DSPHostIntegrationPoint_IOContext *this@<X0>, size_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 22);
  for (i = *(this + 23); v2 != i; v2 += 24)
  {
    v5 = *(v2 + 8);
    *&v6 = *v2;
    *(&v6 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*(v2 + 16))
    {
      std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](a2, &v6);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1DE474F38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_DSPHostIntegrationPoint_IOContext::upstream_list(HALS_DSPHostIntegrationPoint_IOContext *this@<X0>, size_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 22);
  for (i = *(this + 23); v2 != i; v2 += 24)
  {
    v5 = *(v2 + 8);
    *&v6 = *v2;
    *(&v6 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(v2 + 16);
    std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](a2, &v6);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1DE474FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t HALS_DSPHostIntegrationPoint_IOContext::output_reference_stream@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 160);
  if (v2)
  {
    v3 = *(this + 168);
    *a2 = v2;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

uint64_t HALS_DSPHostIntegrationPoint_IOContext::on_dsp_event_REALTIME(uint64_t a1)
{
  result = *(a1 + 128);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void HALS_DSPHostIntegrationPoint_IOContext::on_dsp_event(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = a2[1];
    v4 = *a2;
    v5 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v2 + 16))(v2, &v4);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1DE475110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPHostIntegrationPoint_IOContext::CachedDetails::~CachedDetails(void **this)
{
  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<HALS_DSPHostModifiers_StreamProxy>::__on_zero_shared(uint64_t a1)
{
  HALS_DSPHostModifiers_StreamProxy::release((a1 + 24));
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__shared_ptr_emplace<HALS_DSPHostModifiers_StreamProxy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5971BA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_DSPHostModifier_HostPrivateRefStreamDeviceUID>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5971B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<ContextHostedModifiers>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5971B00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_DSPHostEventListener_Stream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5971BF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_DSPHostIntegrationPoint_IOContext::add_stream(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v5 = a2;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  *(&v5 + 1) = a3;
  v7 = a1[23];
  v6 = a1[24];
  if (v7 >= v6)
  {
    v9 = a1[22];
    v10 = v7 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = 24 * v11;
    *v15 = v5;
    *(v15 + 16) = a4;
    v8 = 24 * v11 + 24;
    v16 = (24 * v11 - v10);
    memcpy(v16, v9, v10);
    a1[22] = v16;
    a1[23] = v8;
    a1[24] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v5;
    *(v7 + 16) = a4;
    v8 = v7 + 24;
  }

  a1[23] = v8;
}

void sub_1DE47557C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPHostIntegrationPoint_IOContext::set_reference_stream_proxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 168);
  *(a1 + 160) = a2;
  *(a1 + 168) = a3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v3 = *(a1 + 160);
  }

  if (v3)
  {
    v6 = *(v3 + 144);
    if (v6)
    {
      HALS_DSPHostPrivateReferenceStreamProxy::LocalDefaultOuputDeviceChangedListener::decouple(v6);
      v7 = *(v3 + 152);
      *(v3 + 144) = 0;
      *(v3 + 152) = 0;
      if (v7)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }
}

void std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,HALS_DSPHostPerClientConfiguration::PerClientProperties>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,HALS_DSPHostPerClientConfiguration::PerClientProperties>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
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
      v4 = *(v2 + 32);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void HALS_DSPHostPerClientConfiguration::clone_configuration_from(HALS_DSPHostPerClientConfiguration *this, const HALS_DSPHostPerClientConfiguration *a2, unsigned int a3)
{
  HALS_DSPHostPerClientConfiguration::configuration_for (&v17, a2, a3);
  std::mutex::lock((this + 32));
  v5 = *(this + 13);
  if (v5)
  {
    v6 = this + 104;
    do
    {
      v7 = *(v5 + 8);
      v8 = v7 >= a3;
      v9 = v7 < a3;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *&v5[8 * v9];
    }

    while (v5);
    if (v6 != this + 104 && *(v6 + 8) <= a3 && v17)
    {
      (*(*v17 + 64))(&lpsrc);
      {
        *&v16 = v11;
        *(&v16 + 1) = v15;
        p_lpsrc = &lpsrc;
      }

      else
      {
        p_lpsrc = &v16;
      }

      *p_lpsrc = 0;
      p_lpsrc[1] = 0;
      v13 = *(v6 + 6);
      *(v6 + 40) = v16;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }

  std::mutex::unlock((this + 32));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1DE4758EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  std::mutex::unlock((v14 + 32));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void HALS_DSPHostPerClientConfiguration::configuration_for (HALS_DSPHostPerClientConfiguration *this, uint64_t a2, unsigned int a3)
{
  *this = 0;
  *(this + 1) = 0;
  std::mutex::lock((a2 + 32));
  v6 = *(a2 + 104);
  if (v6)
  {
    v7 = a2 + 104;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= a3;
      v10 = v8 < a3;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != a2 + 104 && *(v7 + 32) <= a3)
    {
      v12 = *(v7 + 40);
      v11 = *(v7 + 48);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *this = v12;
      *(this + 1) = v11;
    }
  }

  std::mutex::unlock((a2 + 32));
}

void HALS_DSPHostPerClientConfiguration::set_offloads_requested(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  HALS_DSPHostPerClientConfiguration::configuration_for (&v10, a1, a2);
  v6 = v10;
  if (v10)
  {
    v9 = *a3;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v8 = 0;
    if (*(a4 + 24) == 1)
    {
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
      }

      else
      {
        __p = *a4;
      }

      v8 = 1;
    }

    (*(*v6 + 72))(v6, 1, &v9, &__p);
    if (v8 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1DE475AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPHostPerClientConfiguration::serialize_to_description(HALS_DSPHostPerClientConfiguration *this, unsigned int a2, __CFDictionary *a3)
{
  v8 = a3;
  HALS_DSPHostPerClientConfiguration::configuration_for (&v4, this, a2);
  if (v4)
  {
    v6 = v4 + 8;
    v7 = v5;
    v3 = &v4;
  }

  else
  {
    v3 = &v6;
  }

  *v3 = 0;
  v3[1] = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v6)
  {
    v4 = &unk_1F59744C8;
    v5 = &v8;
    (*(*v6 + 16))(v6, &v4);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE475BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOPerformer::update_io_parameters(uint64_t a1, unsigned int *a2, uint64_t a3, int a4, char a5)
{
  v10 = (*(*a1 + 16))(a1);
  v11 = (*(*a1 + 24))(a1);
  v12 = (*(*a2 + 160))(a2);
  v13 = (*(*a2 + 168))(a2);
  if ((*(*a2 + 136))(a2) && ((*(*a1 + 32))(a1) & 1) == 0)
  {
    v14 = (*(*a2 + 144))(a2) ^ 1;
  }

  else
  {
    v14 = 0;
  }

  v34 = v11;
  v35 = v12;
  v36 = v13;
  if (v14)
  {
    v35 = v10;
    v36 = v11;
    v15 = a3;
  }

  else
  {
    v15 = (v11 / v13 * a3);
  }

  (*(*a2 + 264))(a2, v15);
  v16 = (*(*a1 + 40))(a1);
  v17 = a2 + 2;
  (*(*a2 + 240))(a2, v16);
  v18 = 0;
  v19 = 0;
  v20 = a4;
  v21 = 1;
  do
  {
    v22 = v21;
    if (!(*(*a2 + 152))(a2, v19))
    {
      (*(*a2 + 280))(a2, v19, a2[190]);
    }

    v23 = *a2;
    if (a5)
    {
      (*(v23 + 248))(a2, v19, 0);
    }

    else
    {
      v24 = (*(v23 + 152))(a2, v19);
      (*(*a2 + 256))(a2, v19, (v34 / v36 * v20) + v24);
    }

    (*(*a1 + 72))(a1, v10);
    if ((*(*a2 + 176))(a2, v19))
    {
      v25 = 0;
      do
      {
        v26 = (*(*a2 + 184))(a2, v19, v25);
        if ((*(*v26 + 24))(v26) && (*(*v26 + 40))(v26))
        {
          (*(*v26 + 32))(v26, v10, v35);
        }

        v25 = (v25 + 1);
      }

      while (v25 < (*(*a2 + 176))(a2, v19));
    }

    v27 = (*(*a1 + 56))(a1, v18 & 1) != 0;
    (*(*a2 + 272))(a2, a3, v27, v19, v10 / v35);
    v28 = 0;
    v29 = &v17[10 * (v18 & 1)];
    atomic_compare_exchange_strong(v29, &v28, 0x80000000);
    if (!v28)
    {
      if (*(v29 + 32) == 1)
      {
        if ((*(*a2 + 176))(a2, v19))
        {
          v30 = 0;
          do
          {
            v31 = (*(*a2 + 184))(a2, v19, v30);
            if (v31)
            {
              HALS_IOProcessor::Volume_RampTo(v31);
            }

            v30 = (v30 + 1);
          }

          while (v30 < (*(*a2 + 176))(a2, v19));
        }

        *(v29 + 32) = 0;
      }

      caulk::concurrent::shared_spin_lock::unlock(&v17[10 * (v18 & 1)]);
    }

    v21 = 0;
    v18 = 1;
    v19 = 1;
  }

  while ((v22 & 1) != 0);
  v32 = (*(*a1 + 64))(a1, 0);
  return (*(*a2 + 288))(a2, v32);
}

void sub_1DE477108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::unique_lock<caulk::concurrent::shared_spin_lock>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOPerformer::process_output_stream_data(IOContextView &,unsigned int,HALS_IOStreamInfo &,unsigned int)::$_0,std::tuple<char const*,int,unsigned int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOPerformer::process_output_stream_data clipped amount processed from:%u to:%u", &v12, 0x1Eu);
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

void caulk::concurrent::details::rt_message_call<HALS_IOPerformer::process_output_stream_data(IOContextView &,unsigned int,HALS_IOStreamInfo &,unsigned int)::$_0,std::tuple<char const*,int,unsigned int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOPerformer::can_read_from_stream(void *a1, uint64_t a2)
{
  if (!*(a2 + 108) || ((v3 = *(a2 + 112), *(a2 + 120) != v3) ? (v4 = v3 == 0) : (v4 = 1), v4))
  {
    v3 = (a2 + 456);
  }

  v5 = *v3;
  if (!(*(**v3 + 16))(*v3) || ((*(*v5 + 208))(v5) & 1) == 0 && !(*(*v5 + 216))(v5))
  {
    return 0;
  }

  v6 = (*(*v5 + 24))(v5);
  v7 = *a1;
  if (v6)
  {
    v8 = *(v7 + 96);
    v9 = a1;
  }

  else
  {
    v8 = *(v7 + 104);
    v9 = a1;
  }

  return v8(v9);
}

OSStatus AudioHardwareAddRunLoopSource(CFRunLoopSourceRef inRunLoopSource)
{
  v29 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    if (!inRunLoopSource)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Framework-ios-imp.cpp";
        v27 = 1024;
        v28 = 2572;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareAddRunLoopSource: can't add a NULL run loop source", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v23[0] = 0;
    v23[1] = 0;
    HALS_System::GetInstance(&v24, 0, v23);
    v2 = v24;
    if (!v24)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Framework-ios-imp.cpp";
        v27 = 1024;
        v28 = 2576;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareAddRunLoopSource: no system object", buf, 0x12u);
      }

      v22 = __cxa_allocate_exception(0x10uLL);
      *v22 = off_1F5991DD8;
      v22[2] = 1852797029;
    }

    *buf = v24 + 1928;
    *&buf[8] = HALB_Mutex::Lock((v24 + 1928));
    if (!*(v2 + 1920))
    {
      HALS_System::StartRunLoop(v2);
    }

    v3 = *(v2 + 2216);
    v4 = *(v2 + 2224);
    if (v3 != v4)
    {
      while (*v3 != inRunLoopSource)
      {
        if (++v3 == v4)
        {
          goto LABEL_12;
        }
      }
    }

    if (v3 == v4)
    {
LABEL_12:
      CFRetain(inRunLoopSource);
      v6 = *(v2 + 2224);
      v7 = *(v2 + 2232);
      if (v6 >= v7)
      {
        v9 = *(v2 + 2216);
        v10 = v6 - v9;
        v11 = (v6 - v9) >> 3;
        v12 = v11 + 1;
        if ((v11 + 1) >> 61)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v13 = v7 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          if (!(v14 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v15 = (v6 - v9) >> 3;
        v16 = (8 * v11);
        v17 = (8 * v11 - 8 * v15);
        *v16 = inRunLoopSource;
        v8 = v16 + 1;
        memcpy(v17, v9, v10);
        *(v2 + 2216) = v17;
        *(v2 + 2224) = v8;
        *(v2 + 2232) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v6 = inRunLoopSource;
        v8 = v6 + 8;
      }

      *(v2 + 2224) = v8;
      v18 = *(v2 + 1920);
      if (v18)
      {
        CFRunLoopAddSource(v18, inRunLoopSource, *MEMORY[0x1E695E8C8]);
        CFRunLoopAddSource(*(v2 + 1920), inRunLoopSource, @"com.apple.audio.CoreAudio");
      }
    }

    HALB_Guard::Locker::~Locker(buf);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    v5 = 0;
  }

  else
  {
    v5 = 560033144;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1DE47786C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v15 = v14[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE4776BCLL);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioHardwareRemoveRunLoopSource(CFRunLoopSourceRef inRunLoopSource)
{
  v18 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    if (!inRunLoopSource)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Framework-ios-imp.cpp";
        v16 = 1024;
        v17 = 2618;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareRemoveRunLoopSource: can't remove a NULL run loop source", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v12[0] = 0;
    v12[1] = 0;
    HALS_System::GetInstance(&v13, 0, v12);
    v2 = v13;
    if (!v13)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Framework-ios-imp.cpp";
        v16 = 1024;
        v17 = 2622;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareRemoveRunLoopSource: no system object", buf, 0x12u);
      }

      v11 = __cxa_allocate_exception(0x10uLL);
      *v11 = off_1F5991DD8;
      v11[2] = 1852797029;
    }

    *buf = v13 + 1928;
    *&buf[8] = HALB_Mutex::Lock((v13 + 1928));
    v3 = *(v2 + 2216);
    v4 = *(v2 + 2224);
    if (v3 != v4)
    {
      while (*v3 != inRunLoopSource)
      {
        if (++v3 == v4)
        {
          v3 = *(v2 + 2224);
          break;
        }
      }
    }

    if (v4 != v3)
    {
      v5 = v4 - (v3 + 1);
      if (v4 != v3 + 1)
      {
        memmove(v3, v3 + 1, v4 - (v3 + 1));
      }

      *(v2 + 2224) = v3 + v5;
      CFRelease(inRunLoopSource);
      v6 = *(v2 + 1920);
      if (v6)
      {
        CFRunLoopRemoveSource(v6, inRunLoopSource, *MEMORY[0x1E695E8C8]);
        CFRunLoopRemoveSource(*(v2 + 1920), inRunLoopSource, @"com.apple.audio.CoreAudio");
      }
    }

    HALB_Guard::Locker::~Locker(buf);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v7 = 0;
  }

  else
  {
    v7 = 560033144;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1DE477B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v15 = v14[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE4779FCLL);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioHardwareGetPropertyInfo(AudioHardwarePropertyID inPropertyID, UInt32 *outSize, Boolean *outWritable)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  inAddress.mSelector = inPropertyID;
  *&inAddress.mScope = 1735159650;
  if (AudioObjectHasProperty(1u, &inAddress))
  {
    if (outSize)
    {
      result = AudioObjectGetPropertyDataSize(1u, &inAddress, 0, 0, outSize);
      if (!outWritable)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = 0;
      if (!outWritable)
      {
        goto LABEL_13;
      }
    }

    if (!result)
    {
      result = AudioObjectIsPropertySettable(1u, &inAddress, outWritable);
    }

LABEL_13:
    if (!result)
    {
      return result;
    }

    goto LABEL_14;
  }

  result = 2003332927;
LABEL_14:
  if (outSize)
  {
    *outSize = 0;
  }

  if (outWritable)
  {
    *outWritable = 0;
  }

  return result;
}

void sub_1DE477CFC(void *a1, int a2)
{
  v5 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v6 = v5[2];
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  else
  {
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE477CE8);
}

OSStatus AudioHardwareGetProperty(AudioHardwarePropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  inAddress.mSelector = inPropertyID;
  *&inAddress.mScope = 1735159650;
  return AudioObjectGetPropertyData(1u, &inAddress, 0, 0, ioPropertyDataSize, outPropertyData);
}

void sub_1DE477DDC(void *a1, int a2)
{
  v5 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v6 = v5[2];
    if (v2)
    {
      if (v3)
      {
        bzero(v3, *v2);
      }

      *v2 = 0;
    }
  }

  else if (v2)
  {
    if (v3)
    {
      bzero(v3, *v2);
    }

    *v2 = 0;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE477DC8);
}

OSStatus AudioHardwareSetProperty(AudioHardwarePropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  inAddress.mSelector = inPropertyID;
  *&inAddress.mScope = 1735159650;
  return AudioObjectSetPropertyData(1u, &inAddress, 0, 0, inPropertyDataSize, inPropertyData);
}

void sub_1DE477ED4(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE477EBCLL);
}

OSStatus AudioHardwareAddPropertyListener(AudioHardwarePropertyID inPropertyID, AudioHardwarePropertyListenerProc inProc, void *inClientData)
{
  v29 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    HALS_System::StartServer(v22);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (!inProc)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "HALS_Framework-ios-imp.cpp";
        v26 = 1024;
        v27 = 2879;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareAddPropertyListener: can't add a NULL listener proc", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v19[0] = 0;
    v19[1] = 0;
    HALS_System::GetInstance(&v20, 0, v19);
    if (!v20)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "HALS_Framework-ios-imp.cpp";
        v26 = 1024;
        v27 = 2883;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareAddPropertyListener: no system object", buf, 0x12u);
      }

      v10 = __cxa_allocate_exception(0x10uLL);
      *v10 = off_1F5991DD8;
      v10[2] = 1852797029;
    }

    v17 = inPropertyID;
    v18 = 1735159650;
    v11 = 4;
    v13 = 0;
    v12 = 0;
    v14 = 0;
    v15 = inProc;
    v16 = inClientData;
    buf[0] = 0;
    v28 = 0;
    HALS_NotificationManager::AddPropertyListener(&v11, 1u, &v17, buf);
    HALS_Listener::~HALS_Listener(&v11);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    v6 = 0;
  }

  else
  {
    v6 = 560033144;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1DE478178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a2)
  {
    HALS_Listener::~HALS_Listener(&a10);
    if (a20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a20);
    }

    v22 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v23 = v22[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE477FDCLL);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioHardwareRemovePropertyListener(AudioHardwarePropertyID inPropertyID, AudioHardwarePropertyListenerProc inProc)
{
  v24 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    HALS_System::StartServer(v16);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (!inProc)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "HALS_Framework-ios-imp.cpp";
        LOWORD(v20) = 1024;
        *(&v20 + 2) = 2927;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareRemovePropertyListener: can't remove a NULL listener proc", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v13[0] = 0;
    v13[1] = 0;
    HALS_System::GetInstance(&v14, 0, v13);
    if (!v14)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "HALS_Framework-ios-imp.cpp";
        LOWORD(v20) = 1024;
        *(&v20 + 2) = 2931;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareRemovePropertyListener: no system object", buf, 0x12u);
      }

      v10 = __cxa_allocate_exception(0x10uLL);
      *v10 = off_1F5991DD8;
      v10[2] = 1852797029;
    }

    v11 = inPropertyID;
    v12 = 1735159650;
    *buf = 4;
    v20 = 0;
    v19 = 0;
    v21 = 0;
    v22 = inProc;
    v23 = 0;
    HALS_NotificationManager::RemovePropertyListener(buf, 1, &v11, v4, v5);
    HALS_Listener::~HALS_Listener(buf);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v6 = 0;
  }

  else
  {
    v6 = 560033144;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1DE478460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    HALS_Listener::~HALS_Listener(&a17);
    if (a14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    }

    v19 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v20 = v19[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE4782C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4787F4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE47880C(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE4785E8);
  }

  JUMPOUT(0x1DE4787FCLL);
}

void sub_1DE478B78(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE478B90(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE47896CLL);
  }

  JUMPOUT(0x1DE478B80);
}

OSStatus AudioDeviceGetPropertyInfo(AudioDeviceID inDevice, UInt32 inChannel, Boolean isInput, AudioDevicePropertyID inPropertyID, UInt32 *outSize, Boolean *outWritable)
{
  v9 = isInput;
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (v9)
  {
    v12 = 1768845428;
  }

  else
  {
    v12 = 1869968496;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = v12;
  inAddress.mElement = inChannel;
  v16.mSelector = inPropertyID;
  v16.mScope = 1735159650;
  v16.mElement = inChannel;
  if (AudioObjectHasProperty(inDevice, &inAddress))
  {
    if (outSize)
    {
      result = AudioObjectGetPropertyDataSize(inDevice, &inAddress, 0, 0, outSize);
      if (!outWritable)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!outWritable)
      {
        return result;
      }
    }

    if (!result)
    {
      p_inAddress = &inAddress;
      return AudioObjectIsPropertySettable(inDevice, p_inAddress, outWritable);
    }
  }

  else if (HALB_Info::IsReallyGlobalDeviceProperty(inAddress.mSelector, v13) && AudioObjectHasProperty(inDevice, &v16))
  {
    if (outSize)
    {
      result = AudioObjectGetPropertyDataSize(inDevice, &v16, 0, 0, outSize);
      if (!outWritable)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!outWritable)
      {
        return result;
      }
    }

    if (!result)
    {
      p_inAddress = &v16;
      return AudioObjectIsPropertySettable(inDevice, p_inAddress, outWritable);
    }
  }

  else
  {
    if (outSize)
    {
      *outSize = 0;
    }

    result = 2003332927;
    if (outWritable)
    {
      *outWritable = 0;
    }
  }

  return result;
}

void sub_1DE478D54(void *a1, int a2)
{
  v5 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v6 = v5[2];
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  else
  {
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE478D28);
}

OSStatus AudioDeviceGetProperty(AudioDeviceID inDevice, UInt32 inChannel, Boolean isInput, AudioDevicePropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  v9 = isInput;
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (v9)
  {
    v12 = 1768845428;
  }

  else
  {
    v12 = 1869968496;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = v12;
  inAddress.mElement = inChannel;
  v17.mSelector = inPropertyID;
  v17.mScope = 1735159650;
  v17.mElement = inChannel;
  if (AudioObjectHasProperty(inDevice, &inAddress))
  {
    p_inAddress = &inAddress;
    return AudioObjectGetPropertyData(inDevice, p_inAddress, 0, 0, ioPropertyDataSize, outPropertyData);
  }

  if (HALB_Info::IsReallyGlobalDeviceProperty(inAddress.mSelector, v13) && AudioObjectHasProperty(inDevice, &v17))
  {
    p_inAddress = &v17;
    return AudioObjectGetPropertyData(inDevice, p_inAddress, 0, 0, ioPropertyDataSize, outPropertyData);
  }

  v15 = 2003332927;
  if (ioPropertyDataSize)
  {
    if (outPropertyData)
    {
      bzero(outPropertyData, *ioPropertyDataSize);
    }

    *ioPropertyDataSize = 0;
  }

  return v15;
}

void sub_1DE478EB4(void *a1, int a2)
{
  v5 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v6 = v5[2];
    if (v2)
    {
      if (v3)
      {
        bzero(v3, *v2);
      }

      *v2 = 0;
    }
  }

  else if (v2)
  {
    if (v3)
    {
      bzero(v3, *v2);
    }

    *v2 = 0;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE478E50);
}

OSStatus AudioDeviceSetProperty(AudioDeviceID inDevice, const AudioTimeStamp *inWhen, UInt32 inChannel, Boolean isInput, AudioDevicePropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  v10 = isInput;
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (v10)
  {
    v13 = 1768845428;
  }

  else
  {
    v13 = 1869968496;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = v13;
  inAddress.mElement = inChannel;
  v18.mSelector = inPropertyID;
  v18.mScope = 1735159650;
  v18.mElement = inChannel;
  if (AudioObjectHasProperty(inDevice, &inAddress))
  {
    p_inAddress = &inAddress;
    return AudioObjectSetPropertyData(inDevice, p_inAddress, 0, 0, inPropertyDataSize, inPropertyData);
  }

  v16 = 2003332927;
  if (HALB_Info::IsReallyGlobalDeviceProperty(inAddress.mSelector, v14) && AudioObjectHasProperty(inDevice, &v18))
  {
    p_inAddress = &v18;
    return AudioObjectSetPropertyData(inDevice, p_inAddress, 0, 0, inPropertyDataSize, inPropertyData);
  }

  return v16;
}

void sub_1DE479004(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE478FBCLL);
}

void sub_1DE479468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    HALS_Listener::~HALS_Listener(&a12);
    HALS_ObjectMap::ReleaseObject(v12, v15);
    v16 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v17 = v16[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE479258);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE47991C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    HALS_Listener::~HALS_Listener(&a13);
    HALS_ObjectMap::ReleaseObject(v13, v16);
    v17 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v18 = v17[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE479710);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioStreamGetPropertyInfo(AudioStreamID inStream, UInt32 inChannel, AudioDevicePropertyID inPropertyID, UInt32 *outSize, Boolean *outWritable)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = 1735159650;
  inAddress.mElement = inChannel;
  if (AudioObjectHasProperty(1u, &inAddress))
  {
    if (outSize)
    {
      result = AudioObjectGetPropertyDataSize(inStream, &inAddress, 0, 0, outSize);
      if (!outWritable)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = 0;
      if (!outWritable)
      {
        goto LABEL_11;
      }
    }

    if (!result)
    {
      result = AudioObjectIsPropertySettable(inStream, &inAddress, outWritable);
    }

LABEL_11:
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  result = 2003332927;
LABEL_12:
  if (outSize)
  {
    *outSize = 0;
  }

  if (outWritable)
  {
    *outWritable = 0;
  }

  return result;
}

void sub_1DE479AB8(void *a1, int a2)
{
  v5 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v6 = v5[2];
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  else
  {
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE479AA0);
}

OSStatus AudioStreamGetProperty(AudioStreamID inStream, UInt32 inChannel, AudioDevicePropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = 1735159650;
  inAddress.mElement = inChannel;
  return AudioObjectGetPropertyData(inStream, &inAddress, 0, 0, ioPropertyDataSize, outPropertyData);
}

void sub_1DE479B90(void *a1, int a2)
{
  v5 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v6 = v5[2];
    if (v2)
    {
      if (v3)
      {
        bzero(v3, *v2);
      }

      *v2 = 0;
    }
  }

  else if (v2)
  {
    if (v3)
    {
      bzero(v3, *v2);
    }

    *v2 = 0;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE479B78);
}

OSStatus AudioStreamSetProperty(AudioStreamID inStream, const AudioTimeStamp *inWhen, UInt32 inChannel, AudioDevicePropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = 1735159650;
  inAddress.mElement = inChannel;
  return AudioObjectSetPropertyData(inStream, &inAddress, 0, 0, inPropertyDataSize, inPropertyData);
}

void sub_1DE479C80(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE479C64);
}

void sub_1DE479F14(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE479F2C(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a2)
  {
    HALS_Listener::~HALS_Listener(va);
    HALS_ObjectMap::ReleaseObject(v3, v6);
    v7 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v8 = v7[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE479D70);
  }

  JUMPOUT(0x1DE479F1CLL);
}

void sub_1DE47A208(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE47A220(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a2)
  {
    HALS_Listener::~HALS_Listener(va);
    HALS_ObjectMap::ReleaseObject(v3, v6);
    v7 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v8 = v7[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE47A068);
  }

  JUMPOUT(0x1DE47A210);
}

void AMCP::Stream::~Stream(AMCP::Stream *this)
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

uint64_t AMCP::Stream::Stream(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Object::Object(a1, a2, a3);
  *v4 = &unk_1F5971D38;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x61737472);
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
      v13 = "Stream.cpp";
      v14 = 1024;
      v15 = 25;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_stream)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE47A498(_Unwind_Exception *a1)
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

unint64_t AMCP::Stream::get_direction(AMCP::Stream *this)
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
    simple_required = AMCP::Core::Core::get_simple_required_property<1935960434u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::Stream::get_starting_channel(AMCP::Stream *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 1;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1935894638u>(v5);
  }

  else
  {
    simple_required = 1;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

BOOL AMCP::Stream::is_reference_stream(AMCP::Stream *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "spatbolg");
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
          strcpy(__p, "taps");
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

      v7 = v6 != 0;
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

void sub_1DE47A798(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Stream::get_terminal_type(AMCP::Stream *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "mretbolg");
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
          strcpy(__p, "term");
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

void sub_1DE47A958(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

AMCP::Core::Core *AMCP::Stream::get_latency(AMCP::Stream *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 2);
      if (!v5)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        goto LABEL_20;
      }

      v21 = 0x676C6F62736C7463;
      v22 = 0;
      has_property = AMCP::Core::Core::has_property(v5, &v21);
      if (!has_property)
      {
LABEL_21:
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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
          v20 = 4;
          strcpy(&__p, "sltc");
          *buf = 136316418;
          v24 = "Core.h";
          v25 = 1024;
          v26 = 391;
          v27 = 2080;
          v28 = "optional_value.operator BOOL() == true";
          v29 = 2080;
          *v30 = &__p;
          *&v30[8] = 1024;
          v31 = 1735159650;
          v32 = 1024;
          v33 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v20 < 0)
          {
            operator delete(__p);
          }
        }

        abort();
      }

      AMCP::Core::Core::find_operation(&__p, v5, &v21);
      v7 = __p;
      if (__p)
      {
        v8 = AMCP::Implementation::get_type_marker<std::function<int ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8))
        {
          LODWORD(v7) = AMCP::Core::Operation::call_function<int>(v7);
LABEL_8:
          v9 = 0;
          v10 = v7 & 0xFFFFFF00;
          goto LABEL_15;
        }

        v11 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v11))
        {
          AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v7);
          LODWORD(v7) = AMCP::Thing::convert_to<int>(buf);
          if (*&v30[2])
          {
            (*&v30[2])(0, buf, 0, 0);
          }

          goto LABEL_8;
        }

        LOBYTE(v7) = 0;
      }

      v10 = 0;
      v9 = 1;
LABEL_15:
      has_property = v19;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if ((v9 & 1) == 0)
      {
        v5 = (v10 | v7);
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  v5 = 0;
LABEL_20:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1DE47ABC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AMCP::Stream::get_available_format_list(AMCP::Stream *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1718449187u>(a2, v7);
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

void AMCP::Stream::get_current_format(AMCP::Stream *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1718444404u>(a2, v7);
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t AMCP::Stream::set_current_format(AMCP::Stream *this, const CA::StreamDescription *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
        goto LABEL_15;
      }

      v14 = 0x676C6F62666D6174;
      v15 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v14))
      {
        goto LABEL_15;
      }

      AMCP::Core::Core::find_operation(&v20, v7, &v14);
      v8 = v20;
      if (v20)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,CA::StreamDescription const&>(v8, a2);
          v10 = 0;
          goto LABEL_12;
        }

        v12 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v12))
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
          operator new();
        }
      }

      v10 = 1;
LABEL_12:
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if ((v10 & 1) == 0)
      {
        v11 = 1;
        goto LABEL_16;
      }

LABEL_15:
      v11 = 0;
LABEL_16:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v11;
    }
  }

  return 0;
}

void sub_1DE47AE60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AMCP::Thing::~Thing(va);
  v6 = *(v4 - 40);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE47AE30);
}

uint64_t AMCP::Core::Operation::call_function<void,CA::StreamDescription const&>(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>();
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
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const CA::StreamDescription &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
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
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const CA::StreamDescription &>]";
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

void sub_1DE47B338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 51);
}

uint64_t AMCP::Stream::set_current_format_and_wait(AMCP::Stream *this, const CA::StreamDescription *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
        goto LABEL_15;
      }

      v14 = 0x676C6F62666D6174;
      v15 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v14))
      {
        goto LABEL_15;
      }

      AMCP::Core::Core::find_operation(&v20, v7, &v14);
      v8 = v20;
      if (v20)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,CA::StreamDescription const&>(v8, a2);
          v10 = 0;
          goto LABEL_12;
        }

        v12 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v12))
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
          operator new();
        }
      }

      v10 = 1;
LABEL_12:
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if ((v10 & 1) == 0)
      {
        v11 = 1;
        goto LABEL_16;
      }

LABEL_15:
      v11 = 0;
LABEL_16:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v11;
    }
  }

  return 0;
}

void sub_1DE47B5B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AMCP::Thing::~Thing(va);
  v6 = *(v4 - 40);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE47B584);
}

void AMCP::Stream::make_string_for_asbd(AMCP::Stream *this@<X0>, const CA::StreamDescription *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, int8x8_t a5@<D0>)
{
  v5 = a2;
  v168 = 0;
  v169 = 0;
  v170 = 0;
  if (a3)
  {
    caulk::make_string("%.0f", &v168, *this);
  }

  v8 = *(this + 2);
  if (v8 == 1633889587)
  {
    v15 = "AC-3";
    goto LABEL_24;
  }

  if (v8 == 1667326771)
  {
    v15 = "AC-3 for SPDIF";
LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(a4, v15);
    goto LABEL_282;
  }

  if (v8 != 1819304813)
  {
    a5.i32[0] = bswap32(v8);
    v16 = vzip1_s8(a5, a5);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    v19 = vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL);
    *(a4 + 23) = 4;
    *a4 = vuzp1_s8(v19, v19).u32[0];
    *(a4 + 4) = 0;
    goto LABEL_282;
  }

  v165 = 0;
  v166 = 0;
  v167 = 0;
  v9 = *(this + 3);
  if ((v9 & 2) != 0)
  {
    HIBYTE(v167) = 10;
    LOWORD(v166) = 28257;
    v165 = *"Big Endian";
  }

  *&v164.__r_.__value_.__l.__data_ = 0uLL;
  v10 = "Unsigned Integer";
  if (v5)
  {
    v10 = "UInt";
  }

  v11 = "Signed Integer";
  v164.__r_.__value_.__r.__words[2] = 0;
  if (v5)
  {
    v11 = "SInt";
  }

  if ((v9 & 4) != 0)
  {
    v10 = v11;
  }

  v12 = "Floating Point";
  if (v5)
  {
    v12 = "Float";
  }

  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  std::string::__assign_external(&v164, v13);
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v14 = *(this + 3);
  if ((v14 & 8) == 0)
  {
    if ((v14 & 0x10) != 0)
    {
      HIBYTE(v163) = 4;
      LODWORD(v161) = 1751607624;
    }

    else
    {
      HIBYTE(v163) = 3;
      qmemcpy(&v161, "Low", 3);
    }
  }

  v158 = 0;
  v159 = 0;
  v160 = 0;
  if ((v14 & 0x40) != 0)
  {
    LOBYTE(v159) = 101;
    v158 = *"Unmixable";
    v20 = 9;
  }

  else
  {
    qmemcpy(&v158, "Mixable", 7);
    v20 = 7;
  }

  HIBYTE(v160) = v20;
  if (v5)
  {
    v21 = SHIBYTE(v170);
    if (v170 >= 0)
    {
      v22 = HIBYTE(v170);
    }

    else
    {
      v22 = v169;
    }

    if (v22)
    {
      v23 = v22 + 1;
    }

    else
    {
      v23 = 0;
    }

    v24 = &v145;
    std::string::basic_string[abi:ne200100](&v145, v23);
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v145.__r_.__value_.__r.__words[0];
    }

    if (v22)
    {
      if (v21 >= 0)
      {
        v25 = &v168;
      }

      else
      {
        v25 = v168;
      }

      memmove(v24, v25, v22);
      memcpy(v24 + v22, " ", v22 != 0);
    }

    v24->__r_.__value_.__s.__data_[v22 + (v22 != 0)] = 0;
    if (v160 >= 0)
    {
      v26 = &v158;
    }

    else
    {
      v26 = v158;
    }

    if (v160 >= 0)
    {
      v27 = HIBYTE(v160);
    }

    else
    {
      v27 = v159;
    }

    v28 = std::string::append(&v145, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v146.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v146.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v146, " ", 1uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    caulk::make_string("%u", &v144, *(this + 7));
    if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v144;
    }

    else
    {
      v32 = v144.__r_.__value_.__r.__words[0];
    }

    if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v144.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v144.__r_.__value_.__l.__size_;
    }

    v34 = std::string::append(&v147, v32, size);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v148.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v148.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v148, " Ch ", 4uLL);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v149.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v149.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    if (v167 >= 0)
    {
      v38 = &v165;
    }

    else
    {
      v38 = v165;
    }

    if (v167 >= 0)
    {
      v39 = HIBYTE(v167);
    }

    else
    {
      v39 = v166;
    }

    v40 = std::string::append(&v149, v38, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v150.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v150.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = HIBYTE(v167);
    if (v167 < 0)
    {
      v42 = v166;
    }

    if (v42)
    {
      v43 = " ";
    }

    else
    {
      v43 = "";
    }

    v44 = std::string::append(&v150, v43, v42 != 0);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v151.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v151.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    if (v163 >= 0)
    {
      v46 = &v161;
    }

    else
    {
      v46 = v161;
    }

    if (v163 >= 0)
    {
      v47 = HIBYTE(v163);
    }

    else
    {
      v47 = v162;
    }

    v48 = std::string::append(&v151, v46, v47);
    v49 = *&v48->__r_.__value_.__l.__data_;
    v152.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v152.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    v50 = HIBYTE(v163);
    if (v163 < 0)
    {
      v50 = v162;
    }

    if (v50)
    {
      v51 = " ";
    }

    else
    {
      v51 = "";
    }

    v52 = std::string::append(&v152, v51, v50 != 0);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v153.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v153.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    if ((v164.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v164;
    }

    else
    {
      v54 = v164.__r_.__value_.__r.__words[0];
    }

    if ((v164.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = HIBYTE(v164.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v55 = v164.__r_.__value_.__l.__size_;
    }

    v56 = std::string::append(&v153, v54, v55);
    v57 = *&v56->__r_.__value_.__l.__data_;
    v154.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
    *&v154.__r_.__value_.__l.__data_ = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    caulk::make_string("%u", &v141, *(this + 8));
    if ((v143 & 0x80u) == 0)
    {
      v58 = &v141;
    }

    else
    {
      v58 = v141;
    }

    if ((v143 & 0x80u) == 0)
    {
      v59 = v143;
    }

    else
    {
      v59 = v142;
    }

    v60 = std::string::append(&v154, v58, v59);
    v61 = *&v60->__r_.__value_.__l.__data_;
    v155.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
    *&v155.__r_.__value_.__l.__data_ = v61;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    v62 = HIBYTE(v163);
    if (v163 < 0)
    {
      v62 = v162;
    }

    if (v62)
    {
      v63 = "/";
    }

    else
    {
      v63 = "";
    }

    v64 = std::string::append(&v155, v63, v62 != 0);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v156.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v156.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    v66 = HIBYTE(v163);
    if (v163 < 0)
    {
      v66 = v162;
    }

    if (v66)
    {
      if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v140, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
      }

      else
      {
        v140 = v164;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v140, "");
    }

    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v128 = &v140;
    }

    else
    {
      v128 = v140.__r_.__value_.__r.__words[0];
    }

    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v129 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v129 = v140.__r_.__value_.__l.__size_;
    }

    v130 = std::string::append(&v156, v128, v129);
    v131 = *&v130->__r_.__value_.__l.__data_;
    v157.__r_.__value_.__r.__words[2] = v130->__r_.__value_.__r.__words[2];
    *&v157.__r_.__value_.__l.__data_ = v131;
    v130->__r_.__value_.__l.__size_ = 0;
    v130->__r_.__value_.__r.__words[2] = 0;
    v130->__r_.__value_.__r.__words[0] = 0;
    v132 = HIBYTE(v163);
    if (v163 < 0)
    {
      v132 = v162;
    }

    if (v132)
    {
      caulk::make_string("%u", &__p, (8 * (*(this + 6) / *(this + 7))));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
    }

    if ((v139 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v139 & 0x80u) == 0)
    {
      v134 = v139;
    }

    else
    {
      v134 = v138;
    }

    v135 = std::string::append(&v157, p_p, v134);
    v136 = *&v135->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v135->__r_.__value_.__l + 2);
    *a4 = v136;
    v135->__r_.__value_.__l.__size_ = 0;
    v135->__r_.__value_.__r.__words[2] = 0;
    v135->__r_.__value_.__r.__words[0] = 0;
    if (v139 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v157.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v156.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    if (v143 < 0)
    {
      operator delete(v141);
    }

    if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v154.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v153.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v151.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v149.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v148.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_274;
    }

    v127 = v145.__r_.__value_.__r.__words[0];
  }

  else
  {
    v67 = SHIBYTE(v170);
    if (v170 >= 0)
    {
      v68 = HIBYTE(v170);
    }

    else
    {
      v68 = v169;
    }

    if (v68)
    {
      v69 = v68 + 1;
    }

    else
    {
      v69 = 0;
    }

    v70 = &v144;
    std::string::basic_string[abi:ne200100](&v144, v69);
    if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v70 = v144.__r_.__value_.__r.__words[0];
    }

    if (v68)
    {
      if (v67 >= 0)
      {
        v71 = &v168;
      }

      else
      {
        v71 = v168;
      }

      memmove(v70, v71, v68);
      memcpy(v70 + v68, " ", v68 != 0);
    }

    v70->__r_.__value_.__s.__data_[v68 + (v68 != 0)] = 0;
    if (v160 >= 0)
    {
      v72 = &v158;
    }

    else
    {
      v72 = v158;
    }

    if (v160 >= 0)
    {
      v73 = HIBYTE(v160);
    }

    else
    {
      v73 = v159;
    }

    v74 = std::string::append(&v144, v72, v73);
    v75 = *&v74->__r_.__value_.__l.__data_;
    v145.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
    *&v145.__r_.__value_.__l.__data_ = v75;
    v74->__r_.__value_.__l.__size_ = 0;
    v74->__r_.__value_.__r.__words[2] = 0;
    v74->__r_.__value_.__r.__words[0] = 0;
    v76 = std::string::append(&v145, " ", 1uLL);
    v77 = *&v76->__r_.__value_.__l.__data_;
    v146.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
    *&v146.__r_.__value_.__l.__data_ = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    caulk::make_string("%u", &v141, *(this + 7));
    if ((v143 & 0x80u) == 0)
    {
      v78 = &v141;
    }

    else
    {
      v78 = v141;
    }

    if ((v143 & 0x80u) == 0)
    {
      v79 = v143;
    }

    else
    {
      v79 = v142;
    }

    v80 = std::string::append(&v146, v78, v79);
    v81 = *&v80->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v81;
    v80->__r_.__value_.__l.__size_ = 0;
    v80->__r_.__value_.__r.__words[2] = 0;
    v80->__r_.__value_.__r.__words[0] = 0;
    v82 = std::string::append(&v147, " Channel ", 9uLL);
    v83 = *&v82->__r_.__value_.__l.__data_;
    v148.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
    *&v148.__r_.__value_.__l.__data_ = v83;
    v82->__r_.__value_.__l.__size_ = 0;
    v82->__r_.__value_.__r.__words[2] = 0;
    v82->__r_.__value_.__r.__words[0] = 0;
    caulk::make_string("%u", &v140, *(this + 8));
    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v84 = &v140;
    }

    else
    {
      v84 = v140.__r_.__value_.__r.__words[0];
    }

    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v85 = v140.__r_.__value_.__l.__size_;
    }

    v86 = std::string::append(&v148, v84, v85);
    v87 = *&v86->__r_.__value_.__l.__data_;
    v149.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
    *&v149.__r_.__value_.__l.__data_ = v87;
    v86->__r_.__value_.__l.__size_ = 0;
    v86->__r_.__value_.__r.__words[2] = 0;
    v86->__r_.__value_.__r.__words[0] = 0;
    v88 = std::string::append(&v149, " Bit ", 5uLL);
    v89 = *&v88->__r_.__value_.__l.__data_;
    v150.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
    *&v150.__r_.__value_.__l.__data_ = v89;
    v88->__r_.__value_.__l.__size_ = 0;
    v88->__r_.__value_.__r.__words[2] = 0;
    v88->__r_.__value_.__r.__words[0] = 0;
    if (v167 >= 0)
    {
      v90 = &v165;
    }

    else
    {
      v90 = v165;
    }

    if (v167 >= 0)
    {
      v91 = HIBYTE(v167);
    }

    else
    {
      v91 = v166;
    }

    v92 = std::string::append(&v150, v90, v91);
    v93 = *&v92->__r_.__value_.__l.__data_;
    v151.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
    *&v151.__r_.__value_.__l.__data_ = v93;
    v92->__r_.__value_.__l.__size_ = 0;
    v92->__r_.__value_.__r.__words[2] = 0;
    v92->__r_.__value_.__r.__words[0] = 0;
    v94 = HIBYTE(v167);
    if (v167 < 0)
    {
      v94 = v166;
    }

    if (v94)
    {
      v95 = " ";
    }

    else
    {
      v95 = "";
    }

    v96 = std::string::append(&v151, v95, v94 != 0);
    v97 = *&v96->__r_.__value_.__l.__data_;
    v152.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
    *&v152.__r_.__value_.__l.__data_ = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    if ((v164.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v98 = &v164;
    }

    else
    {
      v98 = v164.__r_.__value_.__r.__words[0];
    }

    if ((v164.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v99 = HIBYTE(v164.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v99 = v164.__r_.__value_.__l.__size_;
    }

    v100 = std::string::append(&v152, v98, v99);
    v101 = *&v100->__r_.__value_.__l.__data_;
    v153.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
    *&v153.__r_.__value_.__l.__data_ = v101;
    v100->__r_.__value_.__l.__size_ = 0;
    v100->__r_.__value_.__r.__words[2] = 0;
    v100->__r_.__value_.__r.__words[0] = 0;
    v102 = HIBYTE(v163);
    if (v163 < 0)
    {
      v102 = v162;
    }

    if (v102)
    {
      v103 = " Aligned ";
    }

    else
    {
      v103 = "";
    }

    if (v102)
    {
      v104 = 9;
    }

    else
    {
      v104 = 0;
    }

    v105 = std::string::append(&v153, v103, v104);
    v106 = *&v105->__r_.__value_.__l.__data_;
    v154.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
    *&v154.__r_.__value_.__l.__data_ = v106;
    v105->__r_.__value_.__l.__size_ = 0;
    v105->__r_.__value_.__r.__words[2] = 0;
    v105->__r_.__value_.__r.__words[0] = 0;
    if (v163 >= 0)
    {
      v107 = &v161;
    }

    else
    {
      v107 = v161;
    }

    if (v163 >= 0)
    {
      v108 = HIBYTE(v163);
    }

    else
    {
      v108 = v162;
    }

    v109 = std::string::append(&v154, v107, v108);
    v110 = *&v109->__r_.__value_.__l.__data_;
    v155.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
    *&v155.__r_.__value_.__l.__data_ = v110;
    v109->__r_.__value_.__l.__size_ = 0;
    v109->__r_.__value_.__r.__words[2] = 0;
    v109->__r_.__value_.__r.__words[0] = 0;
    v111 = HIBYTE(v163);
    if (v163 < 0)
    {
      v111 = v162;
    }

    v112 = v111 == 0;
    v113 = v111 != 0;
    if (v112)
    {
      v114 = "";
    }

    else
    {
      v114 = " in ";
    }

    v115 = std::string::append(&v155, v114, 4 * v113);
    v116 = *&v115->__r_.__value_.__l.__data_;
    v156.__r_.__value_.__r.__words[2] = v115->__r_.__value_.__r.__words[2];
    *&v156.__r_.__value_.__l.__data_ = v116;
    v115->__r_.__value_.__l.__size_ = 0;
    v115->__r_.__value_.__r.__words[2] = 0;
    v115->__r_.__value_.__r.__words[0] = 0;
    v117 = HIBYTE(v163);
    if (v163 < 0)
    {
      v117 = v162;
    }

    if (v117)
    {
      caulk::make_string("%u", &__p, (8 * (*(this + 6) / *(this + 7))));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
    }

    if ((v139 & 0x80u) == 0)
    {
      v118 = &__p;
    }

    else
    {
      v118 = __p;
    }

    if ((v139 & 0x80u) == 0)
    {
      v119 = v139;
    }

    else
    {
      v119 = v138;
    }

    v120 = std::string::append(&v156, v118, v119);
    v121 = *&v120->__r_.__value_.__l.__data_;
    v157.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
    *&v157.__r_.__value_.__l.__data_ = v121;
    v120->__r_.__value_.__l.__size_ = 0;
    v120->__r_.__value_.__r.__words[2] = 0;
    v120->__r_.__value_.__r.__words[0] = 0;
    v122 = HIBYTE(v163);
    if (v163 < 0)
    {
      v122 = v162;
    }

    if (v122)
    {
      v123 = " Bits";
    }

    else
    {
      v123 = "";
    }

    if (v122)
    {
      v124 = 5;
    }

    else
    {
      v124 = 0;
    }

    v125 = std::string::append(&v157, v123, v124);
    v126 = *&v125->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v125->__r_.__value_.__l + 2);
    *a4 = v126;
    v125->__r_.__value_.__l.__size_ = 0;
    v125->__r_.__value_.__r.__words[2] = 0;
    v125->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v157.__r_.__value_.__l.__data_);
    }

    if (v139 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v156.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v154.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v153.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v151.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v149.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v148.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (v143 < 0)
    {
      operator delete(v141);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_274;
    }

    v127 = v144.__r_.__value_.__r.__words[0];
  }

  operator delete(v127);
LABEL_274:
  if (SHIBYTE(v160) < 0)
  {
    operator delete(v158);
  }

  if (SHIBYTE(v163) < 0)
  {
    operator delete(v161);
  }

  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v164.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v167) < 0)
  {
    operator delete(v165);
  }

LABEL_282:
  if (SHIBYTE(v170) < 0)
  {
    operator delete(v168);
  }
}

uint64_t HALS_UCPlugIn::ObjectSetPropertyData(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8)
{
  v39 = *MEMORY[0x1E69E9840];
  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 120))(result, a2, a3, a4, a5, a6, a7, a8);
    if (result)
    {
LABEL_7:
      v11.i32[0] = a4->mSelector;
      v14 = vrev64_s16(*&vmovl_u8(v11));
      v15 = vuzp1_s8(v14, v14);
      v23 = v15.i32[0];
      v24 = 0;
      v15.i32[0] = a4->mScope;
      v16 = vrev64_s16(*&vmovl_u8(v15));
      v21 = vuzp1_s8(v16, v16).u32[0];
      v22 = 0;
      v20[0] = BYTE3(result);
      v20[1] = BYTE2(result);
      v20[2] = BYTE1(result);
      v19 = result;
      v20[3] = result;
      v20[4] = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        mElement = a4->mElement;
        *buf = 136316674;
        v26 = "HALS_UCPlugIn.cpp";
        v27 = 1024;
        v28 = 1190;
        v29 = 2080;
        v30 = &v23;
        v31 = 2080;
        v32 = &v21;
        v33 = 2048;
        v34 = mElement;
        v35 = 1024;
        v36 = v19;
        v37 = 2080;
        v38 = v20;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::ObjectSetPropertyData: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v19;
    }
  }

  else
  {
    v12 = *(this + 72);
    if (v12)
    {
      result = v12(a2, a4, a5, a6, a7, a8);
      if (result)
      {
        goto LABEL_7;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCPlugIn::ObjectGetPropertyData(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6, uint64_t a7, unsigned int *a8, void *a9)
{
  v40 = *MEMORY[0x1E69E9840];
  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 112))(result, a2, a3, a4, a5, a6, a7, a8, a9);
    if (result)
    {
LABEL_7:
      v12.i32[0] = a4->mSelector;
      v15 = vrev64_s16(*&vmovl_u8(v12));
      v16 = vuzp1_s8(v15, v15);
      v24 = v16.i32[0];
      v25 = 0;
      v16.i32[0] = a4->mScope;
      v17 = vrev64_s16(*&vmovl_u8(v16));
      v22 = vuzp1_s8(v17, v17).u32[0];
      v23 = 0;
      v21[0] = BYTE3(result);
      v21[1] = BYTE2(result);
      v21[2] = BYTE1(result);
      v20 = result;
      v21[3] = result;
      v21[4] = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        mElement = a4->mElement;
        *buf = 136316674;
        v27 = "HALS_UCPlugIn.cpp";
        v28 = 1024;
        v29 = 1176;
        v30 = 2080;
        v31 = &v24;
        v32 = 2080;
        v33 = &v22;
        v34 = 2048;
        v35 = mElement;
        v36 = 1024;
        v37 = v20;
        v38 = 2080;
        v39 = v21;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::ObjectGetPropertyData: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v20;
    }
  }

  else
  {
    v13 = *(this + 71);
    if (v13)
    {
      result = v13(a2, a4, a5, a6, a7, a8, a9);
      if (result)
      {
        goto LABEL_7;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCPlugIn::ObjectGetPropertyDataSize(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v8 = *(this + 3);
  if (v8)
  {
    v9 = (*(*v8 + 104))(v8, a2, a3, a4, a5, a6, &v25);
    if (!v9)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10.i32[0] = a4->mSelector;
    v14 = vrev64_s16(*&vmovl_u8(v10));
    v15 = vuzp1_s8(v14, v14);
    v23 = v15.i32[0];
    v24 = 0;
    v15.i32[0] = a4->mScope;
    v16 = vrev64_s16(*&vmovl_u8(v15));
    v21 = vuzp1_s8(v16, v16).u32[0];
    v22 = 0;
    v20[0] = HIBYTE(v9);
    v20[1] = BYTE2(v9);
    v20[2] = BYTE1(v9);
    v19 = v9;
    v20[3] = v9;
    v20[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a4->mElement;
      *buf = 136316674;
      v27 = "HALS_UCPlugIn.cpp";
      v28 = 1024;
      v29 = 1161;
      v30 = 2080;
      v31 = &v23;
      v32 = 2080;
      v33 = &v21;
      v34 = 2048;
      v35 = mElement;
      v36 = 1024;
      v37 = v19;
      v38 = 2080;
      v39 = v20;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::ObjectGetPropertyDataSize: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v19;
  }

  v13 = *(this + 70);
  if (!v13)
  {
    result = 0;
    goto LABEL_4;
  }

  v9 = v13(a2, a4, a5, a6, &v25);
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  result = v25;
LABEL_4:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL HALS_UCPlugIn::ObjectIsPropertySettable(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v6 = *(this + 3);
  if (v6)
  {
    v7 = (*(*v6 + 96))(v6, a2, a3, a4, &v23);
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8.i32[0] = a4->mSelector;
    v12 = vrev64_s16(*&vmovl_u8(v8));
    v13 = vuzp1_s8(v12, v12);
    v21 = v13.i32[0];
    v22 = 0;
    v13.i32[0] = a4->mScope;
    v14 = vrev64_s16(*&vmovl_u8(v13));
    v19 = vuzp1_s8(v14, v14).u32[0];
    v20 = 0;
    v18[0] = HIBYTE(v7);
    v18[1] = BYTE2(v7);
    v18[2] = BYTE1(v7);
    v17 = v7;
    v18[3] = v7;
    v18[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a4->mElement;
      *buf = 136316674;
      v25 = "HALS_UCPlugIn.cpp";
      v26 = 1024;
      v27 = 1145;
      v28 = 2080;
      v29 = &v21;
      v30 = 2080;
      v31 = &v19;
      v32 = 2048;
      v33 = mElement;
      v34 = 1024;
      v35 = v17;
      v36 = 2080;
      v37 = v18;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::ObjectIsPropertySettable: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v17;
  }

  v11 = *(this + 69);
  if (!v11)
  {
    result = 0;
    goto LABEL_4;
  }

  v7 = v11(a2, a4, &v23);
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  result = v23 != 0;
LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL HALS_UCPlugIn::ObjectHasProperty(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    v6 = (*(*v5 + 88))(v5, a2, a3, a4);
  }

  else
  {
    v7 = *(this + 68);
    if (!v7)
    {
      return 0;
    }

    v6 = v7(a2, a4);
  }

  return v6 != 0;
}

uint64_t HALS_UCPlugIn::End_WriteMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v8 = *(this + 3);
  if (v8)
  {
    return (*(*v8 + 176))(v8, a2, a3, 1919513701, a4, a5);
  }

  v10 = *(this + 67);
  if (v10)
  {
    return v10(a2, a4, &a5->mOutputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_WriteMix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*a7)
  {
    v8 = *a7 + *(a7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    return (*(*v9 + 168))(v9, a2, a3, a4, 1919513701, a5, a6, v8, 0);
  }

  v11 = *(a1 + 528);
  if (!v11)
  {
    return 1852797029;
  }

  return v11(a2, a3, a5, a6 + 144, v8, a5);
}

uint64_t HALS_UCPlugIn::Begin_WriteMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v8 = *(this + 3);
  if (v8)
  {
    return (*(*v8 + 160))(v8, a2, a3, 1919513701, a4, a5);
  }

  v10 = *(this + 65);
  if (v10)
  {
    return v10(a2, a4, &a5->mOutputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_WriteMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = *(this + 3);
  if (result)
  {
    v10 = 0;
    v9 = 1;
    result = (*(*result + 152))(result, a2, a3, 1919513701, &v10, &v9);
    v7 = v10 == 0;
  }

  else
  {
    v7 = *(this + 66) == 0;
  }

  v8 = !v7;
  *a4 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ConvertMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1668114808, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ConvertMix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    return 1852797029;
  }

  if (*a8)
  {
    v9 = *a8 + *(a8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (*a7)
  {
    v10 = *a7 + *(a7 + 8);
  }

  else
  {
    v10 = 0;
  }

  return (*(*v8 + 168))(v8, a2, a3, a4, 1668114808, a5, a6, v10, v9);
}

uint64_t HALS_UCPlugIn::Begin_ConvertMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1668114808, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ConvertMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5)
{
  result = *(this + 3);
  v8 = 1;
  if (result)
  {
    v11 = 0;
    v10 = 1;
    result = (*(*result + 152))(result, a2, a3, 1668114808, &v11, &v10);
    v9 = v11 != 0;
    v8 = v10 != 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ProcessMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1886218616, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ProcessMix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    return 1852797029;
  }

  if (*a8)
  {
    v9 = *a8 + *(a8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (*a7)
  {
    v10 = *a7 + *(a7 + 8);
  }

  else
  {
    v10 = 0;
  }

  return (*(*v8 + 168))(v8, a2, a3, a4, 1886218616, a5, a6, v10, v9);
}

uint64_t HALS_UCPlugIn::Begin_ProcessMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1886218616, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ProcessMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5)
{
  result = *(this + 3);
  v8 = 1;
  if (result)
  {
    v11 = 0;
    v10 = 1;
    result = (*(*result + 152))(result, a2, a3, 1886218616, &v11, &v10);
    v9 = v11 != 0;
    v8 = v10 != 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_MixOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1835628655, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_MixOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 24);
  if (!v7)
  {
    return 1852797029;
  }

  if (*a7)
  {
    v8 = *a7 + *(a7 + 8);
  }

  else
  {
    v8 = 0;
  }

  return (*(*v7 + 168))(v7, a2, a3, a4, 1835628655, a5, a6, v8, 0);
}

uint64_t HALS_UCPlugIn::Begin_MixOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1835628655, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_MixOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = *(this + 3);
  if (result)
  {
    v10 = 0;
    v9 = 1;
    result = (*(*result + 152))(result, a2, a3, 1835628655, &v10, &v9);
    v7 = v10 == 0;
  }

  else
  {
    v7 = *(this + 66) == 0;
  }

  v8 = !v7;
  *a4 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ProcessOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1886352756, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ProcessOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    return 1852797029;
  }

  if (*a8)
  {
    v9 = *a8 + *(a8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (*a7)
  {
    v10 = *a7 + *(a7 + 8);
  }

  else
  {
    v10 = 0;
  }

  return (*(*v8 + 168))(v8, a2, a3, a4, 1886352756, a5, a6, v10, v9);
}

uint64_t HALS_UCPlugIn::Begin_ProcessOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1886352756, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ProcessOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5)
{
  result = *(this + 3);
  v8 = 1;
  if (result)
  {
    v11 = 0;
    v10 = 1;
    result = (*(*result + 152))(result, a2, a3, 1886352756, &v11, &v10);
    v9 = v11 != 0;
    v8 = v10 != 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ProcessInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1885957744, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ProcessInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    return 1852797029;
  }

  if (*a8)
  {
    v9 = *a8 + *(a8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (*a7)
  {
    v10 = *a7 + *(a7 + 8);
  }

  else
  {
    v10 = 0;
  }

  return (*(*v8 + 168))(v8, a2, a3, a4, 1885957744, a5, a6, v10, v9);
}

uint64_t HALS_UCPlugIn::Begin_ProcessInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1885957744, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ProcessInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5)
{
  result = *(this + 3);
  v8 = 1;
  if (result)
  {
    v11 = 0;
    v10 = 1;
    result = (*(*result + 152))(result, a2, a3, 1885957744, &v11, &v10);
    v9 = v11 != 0;
    v8 = v10 != 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ConvertInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1667853936, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ConvertInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    return 1852797029;
  }

  if (*a8)
  {
    v9 = *a8 + *(a8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (*a7)
  {
    v10 = *a7 + *(a7 + 8);
  }

  else
  {
    v10 = 0;
  }

  return (*(*v8 + 168))(v8, a2, a3, a4, 1667853936, a5, a6, v10, v9);
}

uint64_t HALS_UCPlugIn::Begin_ConvertInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1667853936, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ConvertInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5)
{
  result = *(this + 3);
  v8 = 1;
  if (result)
  {
    v11 = 0;
    v10 = 1;
    result = (*(*result + 152))(result, a2, a3, 1667853936, &v11, &v10);
    v9 = v11 != 0;
    v8 = v10 != 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ReadInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v8 = *(this + 3);
  if (v8)
  {
    return (*(*v8 + 176))(v8, a2, a3, 1919246692, a4, a5);
  }

  v10 = *(this + 64);
  if (v10)
  {
    return v10(a2, a4, &a5->mInputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::InformDriverOfIOThreadStateChange(HALS_UCPlugIn *this, unsigned int a2, const applesauce::CF::DictionaryRef *a3)
{
  result = *(this + 5);
  if (result)
  {
    if (*a3)
    {
      return (*(*result + 32))(result);
    }
  }

  return result;
}

uint64_t HALS_UCPlugIn::Do_TeardownForIsolatedIO(HALS_UCPlugIn *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    return (*(*v1 + 40))(v1);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_SetupForIsolatedIO(HALS_UCPlugIn *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    return (*(*v1 + 32))(v1);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_IsolatedReadInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5, uint64_t a6)
{
  v6 = *(this + 4);
  if (v6)
  {
    return (*(*v6 + 48))(v6, a2, a3, a6, 1919246692, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ReadInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*a7)
  {
    v8 = *a7 + *(a7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    return (*(*v9 + 168))(v9, a2, a3, a4, 1919246692, a5, a6, v8, 0);
  }

  v11 = *(a1 + 504);
  if (!v11)
  {
    return 1852797029;
  }

  return v11(a2, a3, a5, a6 + 80, v8, a5);
}

uint64_t HALS_UCPlugIn::Begin_ReadInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v8 = *(this + 3);
  if (v8)
  {
    return (*(*v8 + 160))(v8, a2, a3, 1919246692, a4, a5);
  }

  v10 = *(this + 62);
  if (v10)
  {
    return v10(a2, a4, &a5->mInputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ReadInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = *(this + 3);
  if (result)
  {
    v10 = 0;
    v9 = 1;
    result = (*(*result + 152))(result, a2, a3, 1919246692, &v10, &v9);
    v7 = v10 == 0;
  }

  else
  {
    v7 = *(this + 63) == 0;
  }

  v8 = !v7;
  *a4 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_IOCycle(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1668899692, a4->mNominalIOBufferFrameSize);
  }

  v7 = *(this + 61);
  if (v7)
  {
    return v7(a2, a4->mNominalIOBufferFrameSize, &a4->mInputTime, &a4->mOutputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Begin_IOCycle(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1668899692, a4->mNominalIOBufferFrameSize);
  }

  v7 = *(this + 60);
  if (v7)
  {
    return v7(a2, a4->mNominalIOBufferFrameSize, &a4->mInputTime, &a4->mOutputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_IOCycle(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = *(this + 3);
  if (result)
  {
    v10 = 0;
    v9 = 1;
    result = (*(*result + 152))(result, a2, a3, 1668899692, &v10, &v9);
    v7 = v10 == 0;
  }

  else
  {
    v7 = *(this + 60) == 0;
  }

  v8 = !v7;
  *a4 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_IOThread(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1953002084, a4->mNominalIOBufferFrameSize, a4);
  }

  v7 = *(this + 59);
  if (v7)
  {
    return v7(a2);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Begin_IOThread(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1953002084, a4->mNominalIOBufferFrameSize);
  }

  v7 = *(this + 58);
  if (v7)
  {
    return v7(a2, a4->mNominalIOBufferFrameSize);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_IOThread(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = *(this + 3);
  if (result)
  {
    v10 = 0;
    v9 = 1;
    result = (*(*result + 152))(result, a2, a3, 1953002084, &v10, &v9);
    v7 = v10 == 0;
  }

  else
  {
    v7 = *(this + 58) == 0;
  }

  v8 = !v7;
  *a4 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::GetZeroTimeStamp(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, double *a4, unint64_t *a5, unint64_t *a6)
{
  v7 = *(this + 3);
  if (v7)
  {
    return (*(*v7 + 144))(v7, a2, a3, a4, a5, a6);
  }

  v9 = *(this + 57);
  if (v9)
  {
    return v9(a2, a4, a5, a6);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Stop(HALS_UCPlugIn *this, uint64_t a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    return (*(*v3 + 136))(v3);
  }

  v5 = *(this + 56);
  if (v5)
  {
    return v5(a2);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Start(HALS_UCPlugIn *this, uint64_t a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    return (*(*v3 + 128))(v3);
  }

  v5 = *(this + 55);
  if (v5)
  {
    return v5(a2);
  }

  else
  {
    return 1852797029;
  }
}

void HALS_UCPlugIn::create_mcp_engine(NSObject **this, HALS_PlugIn *a2, const HALS_IODevice *a3, const unsigned int *a4)
{
  object[42] = *MEMORY[0x1E69E9840];
  v7 = (*(*a3 + 216))(a3);
  cf = v7;
  if (!v7 || (v8 = CFGetTypeID(v7), v8 == CFStringGetTypeID()))
  {
    v19 = (*(*a3 + 272))(a3);
    v18 = (*(*a3 + 304))(a3);
    v17 = (*(*a3 + 328))(a3);
    v16 = (*(*a3 + 320))(a3, 1);
    v15 = (*(*a3 + 320))(a3, 0);
    v14 = (*(*a3 + 312))(a3, 1);
    v13 = (*(*a3 + 312))(a3, 0);
    AMCP::Utility::Dispatch_Queue::create_serial_with_workloop(object, "HALS_UCPlugIn::Engine Queue");
    AMCP::Utility::Dispatch_Queue::operator=(this + 10, object[0]);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(object);
    make_stream_list(object, a3, 1);
    make_stream_list(&__p, a3, 0);
    v9 = *(a2 + 53);
    v11 = *(a2 + 52);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    std::allocate_shared[abi:ne200100]<AMCP::ASP::Engine,std::allocator<AMCP::ASP::Engine>,std::shared_ptr<AMCP::ASP::PlugIn>,BOOL,std::shared_ptr<HALS_UCPlugInBase>,unsigned int const&,applesauce::CF::StringRef &,double &,unsigned int &,unsigned int &,unsigned int &,unsigned int &,unsigned int &,unsigned int &,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> &,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> &,AMCP::Utility::Dispatch_Queue &,0>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE47DDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, void *a34)
{
  __cxa_free_exception(v34);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a33);
  _Unwind_Resume(a1);
}

void make_stream_list(uint64_t *a1, HALS_IODevice *this, char a3)
{
  v3 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  NumberStreams = HALS_IODevice::GetNumberStreams(this, a3);
  v30 = NumberStreams;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::reserve(v3, NumberStreams);
  if (NumberStreams)
  {
    v5 = 0;
    v29 = v3;
    do
    {
      v6 = HALS_IODevice::CopyStreamByIndex(this, a3, v5);
      v7 = (*(*v6 + 208))(v6);
      v8 = v6[23];
      v9 = v6[4];
      v42 = 0x676C6F6270667420;
      v43 = 0;
      v44 = 0;
      (*(*v6 + 120))(v6, v9, &v42, 40, &v44, &v33, 0, 0, 0);
      v10 = v34;
      v11 = v35;
      v13 = v36;
      v12 = v37;
      v15 = v38;
      v14 = v39;
      v16 = v40;
      if (v34 == 1819304813 && (v35 & 0x40) == 0)
      {
        v13 = 4 * v39;
        v16 = 32;
        v12 = 1;
        v11 = 9;
        v15 = 4 * v39;
      }

      v17 = v33;
      v18 = v41;
      v19 = v3[1];
      v20 = v3[2];
      if (v19 >= v20)
      {
        v22 = *v3;
        v23 = v19 - *v3;
        v24 = 0x6DB6DB6DB6DB6DB7 * (v23 >> 3) + 1;
        if (v24 > 0x492492492492492)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v25 = 0x6DB6DB6DB6DB6DB7 * ((v20 - v22) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x249249249249249)
        {
          v26 = 0x492492492492492;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](v26);
        }

        v27 = 8 * (v23 >> 3);
        *v27 = v7;
        *(v27 + 4) = v8;
        *(v27 + 8) = 0;
        *(v27 + 16) = v17;
        *(v27 + 24) = v10;
        *(v27 + 28) = v11;
        *(v27 + 32) = v13;
        *(v27 + 36) = v12;
        *(v27 + 40) = v15;
        *(v27 + 44) = v14;
        *(v27 + 48) = v16;
        *(v27 + 52) = v18;
        v21 = v27 + 56;
        v28 = v27 - v23;
        memcpy((v27 - v23), v22, v23);
        v3 = v29;
        *v29 = v28;
        v29[1] = v21;
        v29[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v19 = v7;
        *(v19 + 4) = v8;
        *(v19 + 8) = 0;
        *(v19 + 16) = v17;
        *(v19 + 24) = v10;
        *(v19 + 28) = v11;
        *(v19 + 32) = v13;
        *(v19 + 36) = v12;
        *(v19 + 40) = v15;
        *(v19 + 44) = v14;
        v21 = v19 + 56;
        *(v19 + 48) = v16;
        *(v19 + 52) = v18;
      }

      v3[1] = v21;
      ++v5;
    }

    while (v30 != v5);
  }
}

void sub_1DE47E10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_UCPlugIn::DestroyDevice(HALS_UCPlugIn *this)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

uint64_t HALS_UCPlugIn::CreateDevice(HALS_UCPlugIn *this, const __CFDictionary *a2, const AudioServerPlugInClientInfo *a3, unsigned int *a4)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 40))(result, a2, a3, a4);
  }

  return result;
}

uint64_t HALS_UCPlugIn::AbortDeviceConfigChange(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, void *a4)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 80))(result, a2, a3, a4);
  }

  return result;
}

uint64_t HALS_UCPlugIn::PerformDeviceConfigChange(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 72))(v5, a2, a3, a4);
  }

  v7 = *(this + 54);
  if (v7)
  {
    return v7(a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_UCPlugIn::RemoveDeviceClient(HALS_UCPlugIn *this, uint64_t a2, const AudioServerPlugInClientInfo *a3)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 64))(result, a2, a3);
  }

  return result;
}

uint64_t HALS_UCPlugIn::AddDeviceClient(HALS_UCPlugIn *this, uint64_t a2, const AudioServerPlugInClientInfo *a3)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 56))(result, a2, a3);
  }

  return result;
}

void HALS_UCPlugIn::Teardown(HALS_UCPlugIn *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(this + 53);
  if (v1)
  {
    v2 = v1();
    if (v2)
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
        v8 = 136315394;
        v9 = "HALS_UCPlugIn.cpp";
        v10 = 1024;
        v11 = 344;
        _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_UCPlugIn::Teardown: failed", &v8, 0x12u);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_UCPlugIn::Initialize(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 416);
  if (v2)
  {
    v3 = *MEMORY[0x1E69E9840];

    return v2(a2);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "HALS_UCPlugIn.cpp";
      v8 = 1024;
      v9 = 333;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::Initialize: there isn't an initialize entry", &v6, 0x12u);
    }

    v5 = *MEMORY[0x1E69E9840];
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Initialize(HALS_UCPlugIn *this, const AudioServerPlugInHostInterface *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (v3 || (v3 = *(this + 6)) != 0)
  {
    v4 = *(*v3 + 32);

    return v4();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "HALS_UCPlugIn.cpp";
      v9 = 1024;
      v10 = 318;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::Initialize: there isn't an interface to intialize", &v7, 0x12u);
    }

    v6 = *MEMORY[0x1E69E9840];
    return 1852797029;
  }
}

void HALS_UCPlugIn::~HALS_UCPlugIn(HALS_UCPlugIn *this)
{
  HALS_UCPlugIn::~HALS_UCPlugIn(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5971D70;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 80));
  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 8);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 7);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

void HALS_IOA2Stream::SetPropertyData(HALS_IOA2Stream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v57 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8, a5, a6, a7) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v15 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  if (!v15)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 451;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::SetPropertyData: owning device is missing", buf, 0x12u);
    }

    v38 = __cxa_allocate_exception(0x10uLL);
    v39 = 560947818;
LABEL_41:
    *v38 = off_1F5991DD8;
    v38[2] = v39;
  }

  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v14))
  {
    v21 = atomic_load(v15 + 40);
    if (a8)
    {
      v22 = *(a8 + 60);
    }

    else
    {
      v22 = getpid();
    }

    if (v21 != -1 && v21 != v22)
    {
      v38 = __cxa_allocate_exception(0x10uLL);
      v39 = 560492391;
      goto LABEL_41;
    }

    mSelector = a3->mSelector;
  }

  if (mSelector == 1885762592)
  {
    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 527;
      v40 = MEMORY[0x1E69E9C10];
      v41 = "%25s:%-5d  HALS_IOA2Stream::_SetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
      goto LABEL_49;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x5002000000;
    v55 = __Block_byref_object_copy__7481;
    v56 = __Block_byref_object_dispose__7482;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2000000000;
    v52 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v47[2] = ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_39;
    v47[3] = &unk_1E8675410;
    v47[6] = this;
    v47[7] = a5;
    v47[4] = buf;
    v47[5] = &v49;
    v31 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v31, v47);
    if (*(v50 + 6))
    {
      v45 = __cxa_allocate_exception(0x10uLL);
      v46 = *(v50 + 6);
      *v45 = off_1F5991DD8;
      v45[2] = v46;
    }

    if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
    {
      v32 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
      v34 = v32;
      if (v32)
      {
        HALS_Client::SetNonMixableFormat(a8, *(v32 + 16));
      }

      HALS_ObjectMap::ReleaseObject(v34, v33);
    }

    goto LABEL_35;
  }

  if (mSelector == 1936092532)
  {
    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 484;
      v40 = MEMORY[0x1E69E9C10];
      v41 = "%25s:%-5d  HALS_IOA2Stream::_SetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
      goto LABEL_49;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x5002000000;
    v55 = __Block_byref_object_copy__7481;
    v56 = __Block_byref_object_dispose__7482;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2000000000;
    v52 = 0;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 0x40000000;
    v48[2] = ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_37;
    v48[3] = &unk_1E86753E8;
    v48[6] = this;
    v48[7] = a5;
    v48[4] = buf;
    v48[5] = &v49;
    v27 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v27, v48);
    if (*(v50 + 6))
    {
      v43 = __cxa_allocate_exception(0x10uLL);
      v44 = *(v50 + 6);
      *v43 = off_1F5991DD8;
      v43[2] = v44;
    }

    if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
    {
      v28 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
      v30 = v28;
      if (v28)
      {
        HALS_Client::SetNonMixableFormat(a8, *(v28 + 16));
      }

      HALS_ObjectMap::ReleaseObject(v30, v29);
    }

LABEL_35:
    _Block_object_dispose(&v49, 8);
    goto LABEL_36;
  }

  if (mSelector != 1935762292)
  {
    HALS_Object::SetPropertyData(this, a2, a3, v17, v18, v19, v20, a8);
  }

  if (a4 <= 3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_IOA2Stream.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 459;
    v40 = MEMORY[0x1E69E9C10];
    v41 = "%25s:%-5d  HALS_IOA2Stream::_SetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
LABEL_49:
    _os_log_impl(&dword_1DE1F9000, v40, OS_LOG_TYPE_ERROR, v41, buf, 0x12u);
LABEL_50:
    v42 = __cxa_allocate_exception(0x10uLL);
    *v42 = off_1F5991DD8;
    v42[2] = 561211770;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LODWORD(v55) = 0;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 0x40000000;
  v53[2] = ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
  v53[3] = &unk_1E86753C0;
  v53[5] = this;
  v53[6] = a5;
  v53[4] = buf;
  v24 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v24, v53);
  if (*(*&buf[8] + 24))
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    v26 = *(*&buf[8] + 24);
    *v25 = off_1F5991DD8;
    v25[2] = v26;
  }

LABEL_36:
  _Block_object_dispose(buf, 8);
  HALS_ObjectMap::ReleaseObject(v15, v35);
  v36 = *MEMORY[0x1E69E9840];
}

void sub_1DE47EF0C(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  HALS_ObjectMap::ReleaseObject(v27, a2);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v28 - 176), 8);
  HALS_ObjectMap::ReleaseObject(v26, v30);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(v2 + 48));
  v5 = v3;
  if (v3 && !*(v2 + 56))
  {
    HALS_IOA2UCDevice::SetStreamActive((v3 + 1976), *(v2 + 72), **(a1 + 48) != 0);
  }

  *(v2 + 76) = **(a1 + 48) != 0;
  HALS_ObjectMap::ReleaseObject(v5, v4);
}

void sub_1DE47F01C(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a2;
  HALS_ObjectMap::ReleaseObject(v15, a2);
  v18 = __cxa_begin_catch(a1);
  if (v16 == 2)
  {
    v19 = v18[2];
  }

  else
  {
    v19 = 2003329396;
  }

  *(*(*(v14 + 32) + 8) + 24) = v19;

  __cxa_end_catch();
}

__n128 __Block_byref_object_copy__7481(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_37(void *a1)
{
  v2 = a1[6];
  HALS_IOA2Stream::GetCurrentHWFormat(v2, &v11);
  v4 = a1[7];
  v5 = *(a1[4] + 8);
  v6 = *(v4 + 16);
  *&v12.mSampleRate = *v4;
  *&v12.mBytesPerPacket = v6;
  *&v12.mBitsPerChannel = *(v4 + 32);
  if (v12.mFormatID == 1819304813)
  {
    v12.mBitsPerChannel = 0;
    *&v12.mFramesPerPacket = 0;
    *&v12.mFormatFlags = 0;
  }

  HALB_FormatList::BestMatchForPhysicalFormat((v2 + 20), &v12, v5 + 1, v3, v11.mSampleRate);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(v2[12]);
  v9 = v7;
  if (v7)
  {
    v10 = HALS_IOA2UCDevice::SetStreamCurrentFormat((v7 + 1976), v2[18], (*(a1[4] + 8) + 40));
  }

  else
  {
    v10 = 560947818;
  }

  *(*(a1[5] + 8) + 24) = v10;
  HALS_ObjectMap::ReleaseObject(v9, v8);
}

void sub_1DE47F184(void *a1, HALS_Object *a2)
{
  v4 = a2;
  HALS_ObjectMap::ReleaseObject(v3, a2);
  v6 = __cxa_begin_catch(a1);
  if (v4 == 2)
  {
    *(*(*(v2 + 40) + 8) + 24) = v6[2];
  }

  else
  {
    *(*(*(v2 + 40) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE47F170);
}

void ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_39(uint64_t a1)
{
  v2 = *(a1 + 48);
  HALS_IOA2Stream::GetCurrentHWFormat(v2, &v8);
  HALB_FormatList::BestMatchForPhysicalFormat((v2 + 20), *(a1 + 56), (*(*(a1 + 32) + 8) + 40), v3, v8.mSampleRate);
  v4 = HALS_ObjectMap::CopyObjectByObjectID(v2[12]);
  v6 = v4;
  if (v4)
  {
    v7 = HALS_IOA2UCDevice::SetStreamCurrentFormat((v4 + 1976), v2[18], (*(*(a1 + 32) + 8) + 40));
  }

  else
  {
    v7 = 560947818;
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
  HALS_ObjectMap::ReleaseObject(v6, v5);
}

void sub_1DE47F290(void *a1, HALS_Object *a2)
{
  v4 = a2;
  HALS_ObjectMap::ReleaseObject(v3, a2);
  v6 = __cxa_begin_catch(a1);
  if (v4 == 2)
  {
    *(*(*(v2 + 40) + 8) + 24) = v6[2];
  }

  else
  {
    *(*(*(v2 + 40) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE47F27CLL);
}

void HALS_IOA2Stream::GetCurrentHWFormat(HALS_IOA2Stream *this, AudioStreamBasicDescription *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v6 = v4;
  if (v4)
  {
    v7 = HALS_IOA2UCDevice::CopyStreamDictionaryByID((v4 + 1976), *(this + 18));
    v16 = v7;
    v17 = 1;
    if (!v7)
    {
LABEL_16:
      CACFDictionary::~CACFDictionary(&v16);
      goto LABEL_17;
    }

    v15 = 0;
    if (CACFDictionary::GetDictionary(v7, @"current format", &v15))
    {
      v8 = v15;
      v18 = 0;
      *buf = v15;
      *&buf[8] = 0;
      *&a2->mSampleRate = 0u;
      *&a2->mBytesPerPacket = 0u;
      *&a2->mBitsPerChannel = 0;
      if (CACFDictionary::GetUInt64(v8, @"sample rate", &v18) && (v9 = *buf, a2->mSampleRate = vcvtd_n_f64_u64(v18, 0x20uLL) + HIDWORD(v18), CACFDictionary::GetUInt32(v9, @"format ID", &a2->mFormatID)) && CACFDictionary::GetUInt32(*buf, @"format flags", &a2->mFormatFlags) && CACFDictionary::GetUInt32(*buf, @"bytes per packet", &a2->mBytesPerPacket) && CACFDictionary::GetUInt32(*buf, @"frames per packet", &a2->mFramesPerPacket) && CACFDictionary::GetUInt32(*buf, @"bytes per frame", &a2->mBytesPerFrame) && CACFDictionary::GetUInt32(*buf, @"channels per frame", &a2->mChannelsPerFrame))
      {
        UInt32 = CACFDictionary::GetUInt32(*buf, @"bits per channel", &a2->mBitsPerChannel);
      }

      else
      {
        UInt32 = 0;
      }

      if (a2->mFormatID == 1819304813)
      {
        a2->mFormatFlags &= ~0x40u;
      }

      CACFDictionary::~CACFDictionary(buf);
      if (UInt32)
      {
        goto LABEL_16;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_23:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 1852797029;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_IOA2UCDevice.cpp";
      v20 = 1024;
      v21 = 656;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  HALS_IOA2UCDevice::GetStreamInfoByID_CurrentFormat: the current format is not formatted correctly";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_IOA2UCDevice.cpp";
      v20 = 1024;
      v21 = 654;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  HALS_IOA2UCDevice::GetStreamInfoByID_CurrentFormat: there is no current format";
    }

    _os_log_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    goto LABEL_23;
  }

LABEL_17:
  HALS_ObjectMap::ReleaseObject(v6, v5);
  v11 = *MEMORY[0x1E69E9840];
}

void HALS_IOA2Stream::GetPropertyData(HALS_IOA2Stream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, AMCP::Log::AMCP_Scope_Registry **a6, uint64_t a7, void *a8, HALS_Client *a9)
{
  v123 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1885762668)
  {
    v19 = mSelector - 1936092479 <= 0x35 && ((1 << (mSelector - 63)) & 0x20400400000001) != 0 || mSelector == 1936092451;
    v20 = 29805;
  }

  else
  {
    v19 = mSelector - 1885762592 <= 0x1F && ((1 << (mSelector - 32)) & 0x80000009) != 0 || mSelector == 1819569763;
    v20 = 29793;
  }

  v22 = v20 | 0x70660000;
  if (!v19 && mSelector != v22)
  {
    v43 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
    v46 = v43;
    if (!v43)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v108 = 136315394;
        *&v108[4] = "HALS_IOA2Stream.cpp";
        *&v108[12] = 1024;
        *&v108[14] = 379;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: owning device is missing", v108, 0x12u);
      }

      v86 = __cxa_allocate_exception(0x10uLL);
      *v86 = off_1F5991DD8;
      v86[2] = 560947818;
    }

    v47 = a3->mSelector;
    if (a3->mSelector <= 1935960433)
    {
      if (v47 != 1935762292)
      {
        if (v47 != 1935894638)
        {
          goto LABEL_126;
        }

        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_166;
          }

          *v108 = 136315394;
          *&v108[4] = "HALS_IOA2Stream.cpp";
          *&v108[12] = 1024;
          *&v108[14] = 414;
          v91 = MEMORY[0x1E69E9C10];
          v92 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyStartingChannel";
          goto LABEL_165;
        }

        if (*(this + 14) != 1)
        {
          v95[0] = MEMORY[0x1E69E9820];
          v95[1] = 1174405120;
          v95[2] = ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_32;
          v95[3] = &__block_descriptor_tmp_35_7495;
          v95[4] = this;
          v95[5] = a6;
          v96 = v43;
          HALS_ObjectMap::RetainObject(v43, v44);
          v82 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v82, v95);
          HALS_ObjectMap::ReleaseObject(v96, v83);
          goto LABEL_125;
        }

        NeighborStartingChannel = HALS_Device::GetNeighborStartingChannel(this, v43, v45);
        goto LABEL_121;
      }

      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_166;
        }

        *v108 = 136315394;
        *&v108[4] = "HALS_IOA2Stream.cpp";
        *&v108[12] = 1024;
        *&v108[14] = 387;
        v91 = MEMORY[0x1E69E9C10];
        v92 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
        goto LABEL_165;
      }

      v80 = v100;
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 0x40000000;
      v100[2] = ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
      v100[3] = &__block_descriptor_tmp_27_7489;
      v100[4] = this;
      v100[5] = a6;
      v81 = (*(*this + 64))(this);
    }

    else
    {
      if (v47 != 1935960434)
      {
        if (v47 != 1952542835)
        {
          if (v47 == 1952805485)
          {
            if (a4 > 3)
            {
              v97[0] = MEMORY[0x1E69E9820];
              v97[1] = 1174405120;
              v97[2] = ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_30;
              v97[3] = &__block_descriptor_tmp_31_7493;
              v97[4] = this;
              v97[5] = a6;
              v98 = v43;
              HALS_ObjectMap::RetainObject(v43, v44);
              v48 = (*(*this + 64))(this);
              HALB_CommandGate::ExecuteCommand(v48, v97);
              *a5 = 4;
              HALS_ObjectMap::ReleaseObject(v98, v49);
LABEL_127:
              HALS_ObjectMap::ReleaseObject(v46, v44);
              goto LABEL_104;
            }

            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
LABEL_166:
              v93 = __cxa_allocate_exception(0x10uLL);
              *v93 = off_1F5991DD8;
              v93[2] = 561211770;
            }

            *v108 = 136315394;
            *&v108[4] = "HALS_IOA2Stream.cpp";
            *&v108[12] = 1024;
            *&v108[14] = 405;
            v91 = MEMORY[0x1E69E9C10];
            v92 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyTerminalType";
LABEL_165:
            _os_log_impl(&dword_1DE1F9000, v91, OS_LOG_TYPE_ERROR, v92, v108, 0x12u);
            goto LABEL_166;
          }

LABEL_126:
          HALS_Stream::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
          goto LABEL_127;
        }

        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_166;
          }

          *v108 = 136315394;
          *&v108[4] = "HALS_IOA2Stream.cpp";
          *&v108[12] = 1024;
          *&v108[14] = 434;
          v91 = MEMORY[0x1E69E9C10];
          v92 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyIsReferenceStream";
          goto LABEL_165;
        }

        NeighborStartingChannel = *(this + 14) == 1;
LABEL_121:
        *a6 = NeighborStartingChannel;
LABEL_125:
        *a5 = 4;
        goto LABEL_127;
      }

      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_166;
        }

        *v108 = 136315394;
        *&v108[4] = "HALS_IOA2Stream.cpp";
        *&v108[12] = 1024;
        *&v108[14] = 396;
        v91 = MEMORY[0x1E69E9C10];
        v92 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyDirection";
        goto LABEL_165;
      }

      v80 = v99;
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 0x40000000;
      v99[2] = ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_28;
      v99[3] = &__block_descriptor_tmp_29_7491;
      v99[4] = this;
      v99[5] = a6;
      v81 = (*(*this + 64))(this);
    }

    HALB_CommandGate::ExecuteCommand(v81, v80);
    goto LABEL_125;
  }

  v24 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v25 = v24;
  if (!v24)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v108 = 136315394;
      *&v108[4] = "HALS_IOA2Stream.cpp";
      *&v108[12] = 1024;
      *&v108[14] = 128;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::GetPropertyDataWithNominalSampleRate: owning device is missing", v108, 0x12u);
    }

    v85 = __cxa_allocate_exception(0x10uLL);
    *v85 = off_1F5991DD8;
    v85[2] = 560947818;
  }

  v26 = (*(*v24 + 704))(v24, a9);
  v94 = v27;
  v28 = v26;
  if (a9)
  {
    v29 = *(a9 + 266) ^ 1;
  }

  else
  {
    v29 = 1;
  }

  v30 = a3->mSelector;
  if (a3->mSelector > 1885762668)
  {
    v31 = v29 & 1;
    if (v30 <= 1936092512)
    {
      if (v30 != 1885762669)
      {
        if (v30 != 1936092451)
        {
          if (v30 == 1936092479)
          {
            if (a4 > 0x27)
            {
              *a5 = 40;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              v122 = 0;
              *v108 = MEMORY[0x1E69E9820];
              *&v108[8] = 0x40000000;
              *&v108[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_10;
              v109 = &unk_1E8675258;
              v111 = this;
              v112 = v26;
              LOBYTE(v113) = v27;
              v110 = buf;
              v114 = a6;
              v32 = (*(*this + 64))(this);
              HALB_CommandGate::ExecuteCommand(v32, v108);
              v101 = MEMORY[0x1E69E9820];
              v102 = 0x40000000;
              v103 = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_12;
              v104 = &unk_1E8675280;
              v105 = buf;
              v106 = this;
              v107 = a6;
              v33 = (*(*this + 64))(this);
              HALB_CommandGate::ExecuteCommand(v33, &v101);
              if ((*(*&buf[8] + 24) & 1) == 0)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *v117 = 136315394;
                  v118 = "HALS_IOA2Stream.cpp";
                  v119 = 1024;
                  v120 = 211;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: kAudioDevicePropertyStreamFormatSupported: the format is not supported", v117, 0x12u);
                }

                v90 = __cxa_allocate_exception(0x10uLL);
                *v90 = off_1F5991DD8;
                v90[2] = 560226676;
              }

              v34 = buf;
              goto LABEL_102;
            }

            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
LABEL_151:
              v89 = __cxa_allocate_exception(0x10uLL);
              *v89 = off_1F5991DD8;
              v89[2] = 561211770;
            }

            *v108 = 136315394;
            *&v108[4] = "HALS_IOA2Stream.cpp";
            *&v108[12] = 1024;
            *&v108[14] = 192;
            v87 = MEMORY[0x1E69E9C10];
            v88 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatSupported";
LABEL_150:
            _os_log_impl(&dword_1DE1F9000, v87, OS_LOG_TYPE_ERROR, v88, v108, 0x12u);
            goto LABEL_151;
          }

LABEL_105:
          v75 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v75 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v26);
          }

          v77 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v76 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v76)
          {
            atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
            v78 = *v77;
            std::__shared_weak_count::__release_shared[abi:ne200100](v76);
          }

          else
          {
            v78 = *v77;
          }

          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            *v108 = 136315394;
            *&v108[4] = "HALS_IOA2Stream.cpp";
            *&v108[12] = 1024;
            *&v108[14] = 340;
            _os_log_error_impl(&dword_1DE1F9000, v78, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOA2Stream::GetPropertyDataWithNominalSampleRate: Unhandled case.", v108, 0x12u);
          }

          goto LABEL_103;
        }

        v101 = 0;
        v102 = &v101;
        v103 = 0x2000000000;
        v104 = 0;
        *v108 = MEMORY[0x1E69E9820];
        *&v108[8] = 0x40000000;
        *&v108[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3;
        v109 = &unk_1E8675230;
        BYTE4(v113) = v29 & 1;
        LODWORD(v113) = a4;
        v110 = &v101;
        v111 = this;
        v112 = a6;
        v56 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v56, v108);
        v57 = *(v102 + 24);
        *a5 = 40 * v57;
        if (v57 && (v94 & 1) != 0)
        {
          v58 = (v57 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v59 = xmmword_1DE757E30;
          v60 = vdupq_n_s64(v57 - 1);
          v61 = vdupq_n_s64(2uLL);
          do
          {
            v62 = vmovn_s64(vcgeq_u64(v60, v59));
            if (v62.i8[0])
            {
              *a6 = v28;
            }

            if (v62.i8[4])
            {
              a6[5] = v28;
            }

            v59 = vaddq_s64(v59, v61);
            a6 += 10;
            v58 -= 2;
          }

          while (v58);
        }

LABEL_101:
        v34 = &v101;
LABEL_102:
        _Block_object_dispose(v34, 8);
        goto LABEL_103;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_151;
        }

        *v108 = 136315394;
        *&v108[4] = "HALS_IOA2Stream.cpp";
        *&v108[12] = 1024;
        *&v108[14] = 306;
        v87 = MEMORY[0x1E69E9C10];
        v88 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatMatch";
        goto LABEL_150;
      }

      *a5 = 40;
      *v108 = MEMORY[0x1E69E9820];
      *&v108[8] = 0x40000000;
      *&v108[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_24;
      v109 = &__block_descriptor_tmp_25_7518;
      v115 = a7;
      v110 = this;
      v111 = a8;
      v112 = a6;
      v113 = v26;
      LOBYTE(v114) = v27;
      v63 = (*(*this + 64))(this);
      goto LABEL_96;
    }

    if (v30 == 1936092513)
    {
      v101 = 0;
      v102 = &v101;
      v103 = 0x2000000000;
      v104 = 0;
      *v108 = MEMORY[0x1E69E9820];
      *&v108[8] = 0x40000000;
      *&v108[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
      v109 = &unk_1E8675208;
      BYTE4(v113) = v29 & 1;
      LODWORD(v113) = a4;
      v110 = &v101;
      v111 = this;
      v112 = a6;
      v71 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v71, v108);
      v72 = *(v102 + 24);
      *a5 = 56 * v72;
      if (v72 && (v94 & 1) != 0)
      {
        v73 = a6 + 6;
        do
        {
          *(v73 - 6) = v28;
          *(v73 - 1) = v28;
          *v73 = v28;
          v73 += 7;
          --v72;
        }

        while (v72);
      }

      goto LABEL_101;
    }

    if (v30 == 1936092525)
    {
      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_151;
        }

        *v108 = 136315394;
        *&v108[4] = "HALS_IOA2Stream.cpp";
        *&v108[12] = 1024;
        *&v108[14] = 218;
        v87 = MEMORY[0x1E69E9C10];
        v88 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatMatch";
        goto LABEL_150;
      }

      *a5 = 40;
      *v108 = MEMORY[0x1E69E9820];
      *&v108[8] = 0x40000000;
      *&v108[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_14;
      v109 = &__block_descriptor_tmp_15_7509;
      v116 = v29 & 1;
      v115 = a7;
      v110 = this;
      v111 = a8;
      v112 = a6;
      v113 = v26;
      LOBYTE(v114) = v27;
      v63 = (*(*this + 64))(this);
LABEL_96:
      HALB_CommandGate::ExecuteCommand(v63, v108);
      goto LABEL_103;
    }

    if (v30 != 1936092532)
    {
      goto LABEL_105;
    }

    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_151;
      }

      *v108 = 136315394;
      *&v108[4] = "HALS_IOA2Stream.cpp";
      *&v108[12] = 1024;
      *&v108[14] = 162;
      v87 = MEMORY[0x1E69E9C10];
      v88 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
      goto LABEL_150;
    }

    *v108 = MEMORY[0x1E69E9820];
    *&v108[8] = 0x40000000;
    *&v108[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_6;
    v109 = &__block_descriptor_tmp_7_7501;
    v110 = this;
    v111 = a6;
    v38 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v38, v108);
    if (*(a6 + 2) == 1819304813 && (*(a6 + 12) & 0x40) == 0)
    {
      if (v31)
      {
        v40 = 9;
      }

      else
      {
        v40 = 11;
      }

      v41 = 4 * *(a6 + 7);
      *(a6 + 3) = v40;
      *(a6 + 4) = v41;
      *(a6 + 5) = 1;
      *(a6 + 6) = v41;
      *(a6 + 8) = 32;
    }

LABEL_57:
    if (v94)
    {
      *a6 = v28;
    }

    *a5 = 40;
    goto LABEL_103;
  }

  if (v30 > 1885762594)
  {
    switch(v30)
    {
      case 1885762595:
        v101 = 0;
        v102 = &v101;
        v103 = 0x2000000000;
        v104 = 0;
        *v108 = MEMORY[0x1E69E9820];
        *&v108[8] = 0x40000000;
        *&v108[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3_20;
        v109 = &unk_1E8675310;
        LODWORD(v113) = a4;
        v110 = &v101;
        v111 = this;
        v112 = a6;
        v64 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v64, v108);
        v65 = *(v102 + 24);
        *a5 = 40 * v65;
        if (v65 && (v94 & 1) != 0)
        {
          v66 = (v65 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v67 = xmmword_1DE757E30;
          v68 = vdupq_n_s64(v65 - 1);
          v69 = vdupq_n_s64(2uLL);
          do
          {
            v70 = vmovn_s64(vcgeq_u64(v68, v67));
            if (v70.i8[0])
            {
              *a6 = v28;
            }

            if (v70.i8[4])
            {
              a6[5] = v28;
            }

            v67 = vaddq_s64(v67, v69);
            a6 += 10;
            v66 -= 2;
          }

          while (v66);
        }

        break;
      case 1885762623:
        if (a4 <= 0x27)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *v108 = 136315394;
          *&v108[4] = "HALS_IOA2Stream.cpp";
          *&v108[12] = 1024;
          *&v108[14] = 282;
          v87 = MEMORY[0x1E69E9C10];
          v88 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatSupported";
          goto LABEL_150;
        }

        *a5 = 40;
        v101 = 0;
        v102 = &v101;
        v103 = 0x2000000000;
        LOBYTE(v104) = 0;
        *v108 = MEMORY[0x1E69E9820];
        *&v108[8] = 0x40000000;
        *&v108[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_22;
        v109 = &unk_1E8675338;
        v111 = this;
        v112 = v26;
        LOBYTE(v113) = v27;
        v110 = &v101;
        v114 = a6;
        v54 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v54, v108);
        if ((*(v102 + 24) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Stream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 299;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: kAudioStreamPropertyPhysicalFormatSupported: the format is not supported", buf, 0x12u);
          }

          v55 = __cxa_allocate_exception(0x10uLL);
          *v55 = off_1F5991DD8;
          v55[2] = 560226676;
        }

        break;
      case 1885762657:
        v101 = 0;
        v102 = &v101;
        v103 = 0x2000000000;
        v104 = 0;
        *v108 = MEMORY[0x1E69E9820];
        *&v108[8] = 0x40000000;
        *&v108[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_18;
        v109 = &unk_1E86752E8;
        LODWORD(v113) = a4;
        v110 = &v101;
        v111 = this;
        v112 = a6;
        v35 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v35, v108);
        v36 = *(v102 + 24);
        *a5 = 56 * v36;
        if (v36 && (v94 & 1) != 0)
        {
          v37 = a6 + 6;
          do
          {
            *(v37 - 6) = v28;
            *(v37 - 1) = v28;
            *v37 = v28;
            v37 += 7;
            --v36;
          }

          while (v36);
        }

        break;
      default:
        goto LABEL_105;
    }

    goto LABEL_101;
  }

  if (v30 != 1819569763)
  {
    if (v30 != 1885762592)
    {
      goto LABEL_105;
    }

    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_151;
      }

      *v108 = 136315394;
      *&v108[4] = "HALS_IOA2Stream.cpp";
      *&v108[12] = 1024;
      *&v108[14] = 254;
      v87 = MEMORY[0x1E69E9C10];
      v88 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
      goto LABEL_150;
    }

    *v108 = MEMORY[0x1E69E9820];
    *&v108[8] = 0x40000000;
    *&v108[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_16;
    v109 = &__block_descriptor_tmp_17_7511;
    v110 = this;
    v111 = a6;
    v42 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v42, v108);
    goto LABEL_57;
  }

  if (a4 <= 3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_151;
    }

    *v108 = 136315394;
    *&v108[4] = "HALS_IOA2Stream.cpp";
    *&v108[12] = 1024;
    *&v108[14] = 139;
    v87 = MEMORY[0x1E69E9C10];
    v88 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyLatency";
    goto LABEL_150;
  }

  StreamLatencyFramesDueToHostedDSP = HALS_Stream::GetStreamLatencyFramesDueToHostedDSP(this, a9);
  *v108 = MEMORY[0x1E69E9820];
  *&v108[8] = 1174405120;
  *&v108[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
  v109 = &__block_descriptor_tmp_5_7499;
  v110 = this;
  v111 = v25;
  HALS_ObjectMap::RetainObject(v25, v51);
  v112 = v28;
  LOBYTE(v113) = v94;
  v115 = StreamLatencyFramesDueToHostedDSP;
  v114 = a6;
  v52 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v52, v108);
  *a5 = 4;
  HALS_ObjectMap::ReleaseObject(v111, v53);
LABEL_103:
  HALS_ObjectMap::ReleaseObject(v25, v39);
LABEL_104:
  v74 = *MEMORY[0x1E69E9840];
}

void sub_1DE480DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, HALS_ObjectMap *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, HALS_ObjectMap *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, HALS_ObjectMap *a50)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_30(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 72);
  v8 = 0;
  v4 = HALS_IOA2UCDevice::CopyStreamDictionaryByID((v2 + 1976), v3);
  v6 = v4;
  v7 = 1;
  if (v4)
  {
    CACFDictionary::GetUInt32(v4, @"terminal type", &v8);
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  CACFDictionary::~CACFDictionary(&v6);
  **(a1 + 40) = v5;
}

void sub_1DE480F5C(void *a1)
{
  CACFDictionary::~CACFDictionary(&v2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_32(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 72);
  v10 = 0;
  v4 = HALS_IOA2UCDevice::CopyStreamDictionaryByID((v2 + 1976), v3);
  v8 = v4;
  v9 = 1;
  if (v4)
  {
    if (!CACFDictionary::GetUInt32(v4, @"starting channel", &v10))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "HALS_IOA2UCDevice.cpp";
        v13 = 1024;
        v14 = 683;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStreamInfoByID_StartingChannel: there is no starting channel number", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  CACFDictionary::~CACFDictionary(&v8);
  **(a1 + 40) = v5;
  v6 = *MEMORY[0x1E69E9840];
}

void __copy_helper_block_e8_48c38_ZTS13HALS_ReleaserI15HALS_IOA2DeviceE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 6);
  *(a1 + 48) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 48);
    v3 = (v2 / (*(**(a1 + 40) + 272))(*(a1 + 40)) * 0.0);
  }

  else
  {
    v3 = 0;
  }

  **(a1 + 64) = *(a1 + 72) + v3;
}

void sub_1DE48121C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE481260(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE4812F4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v3 = &unk_1F596A5A0;
    v4 = 0u;
    v5 = 0u;
    v6 = 0u;
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v2 + 112), *(v2 + 120), &v3, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(v4, *(&v4 + 1), *(a1 + 64));
    HALB_FormatList::~HALB_FormatList(&v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(v2 + 88), *(v2 + 96), *(a1 + 64));
  }
}

void sub_1DE4813C0(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALB_FormatList::~HALB_FormatList(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4813B0);
}