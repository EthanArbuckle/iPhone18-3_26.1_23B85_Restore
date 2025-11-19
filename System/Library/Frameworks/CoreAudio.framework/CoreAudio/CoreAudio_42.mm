void sub_1DE5322F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v25)
  {
    __cxa_free_exception(v24);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 129));
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Time_Delta::translate_time_delta(uint64_t a1, AMCP::DAL::DAL_Time_Delta *this, uint64_t *a3)
{
  v6 = *a3;
  v7 = *(this + 3);
  if (*a3)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = v6 | v7;
    if (v9)
    {
LABEL_21:
      if ((*this & 1) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(this);
      }

      v18 = *(this + 2);
      v20 = *a3;
      v19 = a3[1];
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      *a1 = 1;
      *(a1 + 8) = 0;
      *(a1 + 16) = v18;
      *(a1 + 24) = v20;
      *(a1 + 32) = v19;
      return;
    }
  }

  else
  {
    v10 = (*(*v6 + 16))(v6);
    v11 = (*(**(this + 3) + 16))(*(this + 3));
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 8);
    }

    v14 = *(v11 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v11 + 8);
    }

    if (v13 != v14)
    {
      goto LABEL_21;
    }

    v16 = v12 >= 0 ? v10 : *v10;
    v17 = v15 >= 0 ? v11 : *v11;
    if (memcmp(v16, v17, v13))
    {
      goto LABEL_21;
    }

    v9 = *(this + 3);
  }

  *a1 = *this;
  *(a1 + 16) = *(this + 2);
  *(a1 + 24) = v9;
  v21 = *(this + 4);
  *(a1 + 32) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }
}

__n128 caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::store(unsigned int *a1, __int128 *a2)
{
  for (i = 0; ; caulk::concurrent::details::spinloop::spin(&i))
  {
    v4 = atomic_load(a1);
    if ((v4 & 1) == 0)
    {
      v5 = v4;
      atomic_compare_exchange_strong(a1, &v5, v4 | 1);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v6 = v4 >> 2;
  v7 = (v4 & 0xFFFFFFFC) + 5;
  v8 = &a1[48 * ((v4 >> 2) & 1)];
  atomic_store((2 * (v6 & 0x3FFFFFFF)) | 1, v8 + 16);
  v9 = *a2;
  *(v8 + 22) = a2[1];
  *(v8 + 18) = v9;
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  *(v8 + 38) = a2[5];
  *(v8 + 34) = v12;
  *(v8 + 30) = v11;
  *(v8 + 26) = v10;
  result = a2[6];
  v14 = a2[7];
  v15 = a2[8];
  *(v8 + 209) = *(a2 + 137);
  *(v8 + 50) = v15;
  *(v8 + 46) = v14;
  *(v8 + 42) = result;
  __dmb(0xBu);
  atomic_store(2 * v6, v8 + 16);
  atomic_store(v7 & 0xFFFFFFFC | 2, a1);
  return result;
}

double AMCP::IOAudio2::Engine::convert_host_to_sample_time(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 164);
  v4 = AMCP::IO_Clock::convert_host_to_sample_time_internal(&this[144], a2);
  os_unfair_lock_unlock(this + 164);
  return v4;
}

double AMCP::IOAudio2::Engine::get_current_host_ticks_per_frame(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 164);
  v2 = *&this[160]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 164);
  return v2;
}

double AMCP::IOAudio2::Engine::get_zero_time_stamp@<D0>(AMCP::IOAudio2::Engine *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 93);
  if (v2 && (v3 = *(v2 + 16)) != 0)
  {
    v4 = *v3;
    *a2 = *v3;
    *(a2 + 8) = *(&v4 + 1);
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  *&result = 3;
  *(a2 + 56) = 3;
  return result;
}

uint64_t AMCP::IOAudio2::Engine::end_writing(AMCP::IOAudio2::Engine *this, unint64_t a2, unint64_t a3, double a4, unint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = *(*(this + 93) + 16);
  if (v7)
  {
    v8 = a5 + a4;
    if (v8 > *(v7 + 32))
    {
      *(v7 + 32) = v8;
    }
  }

  if (*(this + 97) == *(this + 98) || *(this + 801) != 1 || (v9 = a4, v10 = a4 >> 32, v11 = AMCP::IO_Clock::convert_sample_to_host_time(this + 144, a4), v12 = MEMORY[0x1E12C0820](*(this + 185), 0, 0, a5, v10, v9, HIDWORD(v11), v11), (v13 = v12) == 0))
  {
    result = 1;
    goto LABEL_19;
  }

  v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v14 & 1) == 0)
  {
    v12 = AMCP::Log::AMCP_Scope_Registry::initialize(v12);
  }

  v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v15 + 16);
  switch(v17)
  {
    case 3:
      v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v28 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        break;
      }

      v34 = 136315650;
      v35 = "IOAudio2_Engine.cpp";
      v36 = 1024;
      v37 = 355;
      v38 = 1024;
      v39 = v13;
      v32 = v31;
      v33 = OS_LOG_TYPE_INFO;
      goto LABEL_37;
    case 2:
      v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v24 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v34 = 136315650;
        v35 = "IOAudio2_Engine.cpp";
        v36 = 1024;
        v37 = 355;
        v38 = 1024;
        v39 = v13;
        _os_log_debug_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_DEBUG, "%32s:%-5d IOAudio2 engine end_writing got an error from the kernel trap: %d", &v34, 0x18u);
      }

      break;
    case 1:
      v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v18 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 136315650;
        v35 = "IOAudio2_Engine.cpp";
        v36 = 1024;
        v37 = 355;
        v38 = 1024;
        v39 = v13;
        v32 = v21;
        v33 = OS_LOG_TYPE_DEFAULT;
LABEL_37:
        _os_log_impl(&dword_1DE1F9000, v32, v33, "%32s:%-5d IOAudio2 engine end_writing got an error from the kernel trap: %d", &v34, 0x18u);
      }

      break;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  result = 0;
LABEL_19:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE532A20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOAudio2::Engine::write_data_to_stream(uint64_t a1, double a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, size_t **a8)
{
  v8 = a5;
  if (a5 < ((*(a1 + 784) - *(a1 + 776)) >> 3))
  {
    v12 = AMCP::Core::Engine::calculate_safety_violation_write(a1, a2);
    if (v12 < 0.0)
    {
      kdebug_trace();
    }

    v13 = a2;
    kdebug_trace();
    os_unfair_lock_lock((a1 + 736));
    v14 = *(a1 + 96);
    if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 104) - v14) >> 3) <= v8)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v15 = *(a1 + 776);
    if (v8 >= (*(a1 + 784) - v15) >> 3)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v16 = v14 + 56 * v8;
    v17 = *(v16 + 24);
    v18 = *(v16 + 40);
    if (v17 == 1667326771)
    {
      v19 = 4;
    }

    else
    {
      v19 = v18;
    }

    v20 = *(*(v15 + 8 * v8) + 16);
    v21 = *(a1 + 40);
    v22 = v13 % v21;
    v23 = (v21 - v13 % v21) * v19;
    if (v23 >= **a8)
    {
      v24 = **a8;
    }

    else
    {
      v24 = v23;
    }

    memcpy(&v20[v22 * v19], (*a8)[1], v24);
    v25 = **a8;
    if (v25 > v24)
    {
      memcpy(v20, (*a8)[1], v25 - v24);
      v25 = **a8;
    }

    v26 = *(*(a1 + 744) + 16);
    if (v26)
    {
      v27 = (v25 / v19) + a2;
      if (v27 > *(v26 + 32))
      {
        *(v26 + 32) = v27;
      }
    }

    kdebug_trace();
    v28 = AMCP::Core::Engine::calculate_safety_violation_write(a1, a2);
    if (v28 < 0)
    {
      kdebug_trace();
    }

    os_unfair_lock_unlock((a1 + 736));
  }

  return 1;
}

uint64_t AMCP::IOAudio2::Engine::read_data_from_stream(uint64_t a1, double a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, size_t **a8)
{
  v8 = a5;
  if (a5 < ((*(a1 + 760) - *(a1 + 752)) >> 3))
  {
    os_unfair_lock_lock((a1 + 736));
    v13 = *(a1 + 96);
    if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 104) - v13) >> 3) <= v8)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v14 = *(a1 + 776);
    if (v8 >= (*(a1 + 784) - v14) >> 3)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v15 = *(*(v14 + 8 * v8) + 16);
    v16 = *(a1 + 40);
    v17 = v13 + 56 * v8;
    v18 = *(v17 + 40) * v16;
    AMCP::IO_Clock::get_current_zts(v23, a1 + 576);
    v19 = a6 + (a2 - v23[0]) % v16 * *(v17 + 40);
    if (v18 - v19 >= **a8)
    {
      v20 = **a8;
    }

    else
    {
      v20 = v18 - v19;
    }

    memcpy((*a8)[1], &v15[v19], v20);
    v21 = **a8;
    if (v21 > v20)
    {
      memcpy(((*a8)[1] + v20), v15, v21 - v20);
    }

    os_unfair_lock_unlock((a1 + 736));
  }

  return 1;
}

uint64_t AMCP::IOAudio2::Engine::begin_reading(AMCP::IOAudio2::Engine *this, unint64_t a2, unint64_t a3, double a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(this + 94) == *(this + 95) || *(this + 800) != 1)
  {
    goto LABEL_19;
  }

  v8 = AMCP::IO_Clock::convert_sample_to_host_time(this + 144, a4);
  v9 = AMCP::Core::Engine::calculate_safety_violation_read(this, a4);
  if (v9 <= -5.0)
  {
    kdebug_trace();
  }

  kdebug_trace();
  v10 = MEMORY[0x1E12C0820](*(this + 185), 0, 1, a5, a4 >> 32, a4, HIDWORD(v8), v8);
  kdebug_trace();
  v12 = AMCP::Core::Engine::calculate_safety_violation_read(this, a4);
  if (v12 <= -5)
  {
    v11 = kdebug_trace();
  }

  if (!v10)
  {
LABEL_19:
    result = 1;
    goto LABEL_20;
  }

  v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v13 & 1) == 0)
  {
    v11 = AMCP::Log::AMCP_Scope_Registry::initialize(v11);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(v14 + 16);
  switch(v16)
  {
    case 3:
      v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v27 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
      }

      v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        v30 = *v29;
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      else
      {
        v30 = *v29;
      }

      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        break;
      }

      v33 = 136315650;
      v34 = "IOAudio2_Engine.cpp";
      v35 = 1024;
      v36 = 238;
      v37 = 1024;
      v38 = v10;
      v31 = v30;
      v32 = OS_LOG_TYPE_INFO;
      goto LABEL_38;
    case 2:
      v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v23 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v33 = 136315650;
        v34 = "IOAudio2_Engine.cpp";
        v35 = 1024;
        v36 = 238;
        v37 = 1024;
        v38 = v10;
        _os_log_debug_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_DEBUG, "%32s:%-5d IOAudio2 engine begin_reading got an error from the kernel trap: %d", &v33, 0x18u);
      }

      break;
    case 1:
      v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v17 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
      }

      v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = *v19;
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      else
      {
        v20 = *v19;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315650;
        v34 = "IOAudio2_Engine.cpp";
        v35 = 1024;
        v36 = 238;
        v37 = 1024;
        v38 = v10;
        v31 = v20;
        v32 = OS_LOG_TYPE_DEFAULT;
LABEL_38:
        _os_log_impl(&dword_1DE1F9000, v31, v32, "%32s:%-5d IOAudio2 engine begin_reading got an error from the kernel trap: %d", &v33, 0x18u);
      }

      break;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  result = 0;
LABEL_20:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE53316C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AMCP::IOAudio2::Engine::set_output_stream_active_list(uint64_t a1, uint64_t a2)
{
  AMCP::Core::Implementation::Simple_Engine_IO_State::get_output_stream_active_list(v5, (a1 + 120));
  AMCP::Core::Implementation::Simple_Engine_IO_State::set_output_stream_active_list(__p, a1 + 120, a2);
  AMCP::IOAudio2::Engine::update_stream_active_state(a1, (a1 + 96), v5, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v5[0])
  {
    operator delete(v5[0]);
  }
}

void sub_1DE533250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::IOAudio2::Engine::update_stream_active_state(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a4;
  v9 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = *a3;
    do
    {
      if (v13 == (*a3 + 8 * (*(a3 + 8) >> 6)) && v11 == (*(a3 + 8) & 0x3F))
      {
        break;
      }

      if (v7 == (*a4 + 8 * (*(a4 + 8) >> 6)) && v12 == (*(a4 + 8) & 0x3F))
      {
        break;
      }

      if (((*v13 >> v11) & 1) != ((*v7 >> v12) & 1))
      {
        v16 = *(a1 + 740);
        if (!v16)
        {
          goto LABEL_44;
        }

        applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned int const&,unsigned long long>(v16, *(v9 + 4), (*v7 >> v12) & 1);
        v8 = a2[1];
      }

      v9 += 56;
      v13 += v11 == 63;
      if (v11 == 63)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v7 += v12 == 63;
      if (v12 == 63)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }
    }

    while (v9 != v8);
  }

  if (v9 != v8 && (v7 != (*a4 + 8 * (*(a4 + 8) >> 6)) || v12 != (*(a4 + 8) & 0x3F)))
  {
    v18 = v9 + 56;
    while (1)
    {
      v19 = *(a1 + 740);
      if (!v19)
      {
        break;
      }

      v9 = v18;
      applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned int const&,unsigned long long>(v19, *(v18 - 52), (*v7 >> v12) & 1);
      v8 = a2[1];
      if (v9 != v8)
      {
        v7 += v12 == 63;
        if (v12 == 63)
        {
          v12 = 0;
        }

        else
        {
          ++v12;
        }

        v18 = v9 + 56;
        if (v7 != (*a4 + 8 * (*(a4 + 8) >> 6)) || v12 != (*(a4 + 8) & 0x3F))
        {
          continue;
        }
      }

      goto LABEL_42;
    }

LABEL_44:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_42:
  while (v9 != v8)
  {
    v21 = *(a1 + 740);
    if (!v21)
    {
      goto LABEL_44;
    }

    applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned int const&,unsigned long long>(v21, *(v9 + 4), 0);
    v9 += 56;
    v8 = a2[1];
  }
}

void applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned int const&,unsigned long long>(mach_port_t a1, unsigned int a2, uint64_t a3)
{
  input[0] = a2;
  input[1] = a3;
  memset(v6, 0, sizeof(v6));
  outputCnt = 0;
  memset(__p, 0, sizeof(__p));
  v3 = 0;
  if (IOConnectCallMethod(a1, 6u, input, 2u, 0, 0, 0, &outputCnt, 0, &v3))
  {
    __cxa_allocate_exception(0x20uLL);
    std::system_category();
    operator new();
  }

  std::vector<unsigned long long>::resize(v6, outputCnt);
  if (v3)
  {
    std::vector<unsigned char>::__append(__p, v3);
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  if (v6[0])
  {
    operator delete(v6[0]);
  }
}

void sub_1DE533668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31)
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
    if ((v32 & 1) == 0)
    {
LABEL_10:
      v35 = *(v33 - 88);
      if (v35)
      {
        operator delete(v35);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v31);
  goto LABEL_10;
}

void AMCP::IOAudio2::Engine::set_input_stream_active_list(uint64_t a1, uint64_t a2)
{
  AMCP::Core::Implementation::Simple_Engine_IO_State::get_input_stream_active_list(v5, (a1 + 120));
  AMCP::Core::Implementation::Simple_Engine_IO_State::set_input_stream_active_list(__p, a1 + 120, a2);
  AMCP::IOAudio2::Engine::update_stream_active_state(a1, (a1 + 72), v5, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v5[0])
  {
    operator delete(v5[0]);
  }
}

void sub_1DE53377C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::IOAudio2::Engine::set_transport_state(uint64_t a1, signed int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((a1 + 136));
  v18 = v4;
  v5 = MEMORY[0x1E12C16E0]();
  v15 = v5;
  v16 = a1;
  v17 = &v18;
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      AMCP::IOAudio2::Engine::stop(a1, v4, a2);
    }
  }

  else
  {
    if (!a2)
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
        __p = 136315650;
        __p_4 = "IOAudio2_Engine.cpp";
        v21 = 1024;
        v22 = 448;
        v23 = 2080;
        v24 = "in_new_state != Transport_State::off";
        _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s can't transition to off state with a start call", &__p, 0x1Cu);
      }

      abort();
    }

    if (!v4)
    {
      v6 = AMCP::IO_Clock::reset_time((a1 + 576));
      MEMORY[0x1E12C16E0](v6);
      operator new();
    }

    if (*(a1 + 48) == 1)
    {
      kdebug_trace();
      AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions(a1 + 120);
      v7 = *(a1 + 740);
      if (*(a1 + 48) == 1)
      {
        if (v7)
        {
          applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned long long &>(&__p, v7, 10, a2 == 1);
        }
      }

      else if (v7)
      {
        applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone>(*(a1 + 740), 0, 0, 0);
        kdebug_trace();
        goto LABEL_14;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

LABEL_14:
  atomic_store(a2, (a1 + 136));
  result = applesauce::raii::v1::detail::ScopeGuard<AMCP::IOAudio2::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&v15);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE533BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v13);
  applesauce::raii::v1::detail::ScopeGuard<AMCP::IOAudio2::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&a9);
  _Unwind_Resume(a1);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<AMCP::IOAudio2::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 8);
    atomic_store(0, v2 + 34);
    AMCP::IOAudio2::Engine::stop(v2, **(a1 + 16), **(a1 + 16));
  }

  return a1;
}

AMCP::Log::AMCP_Scope_Registry *AMCP::IOAudio2::Engine::stop(AMCP::Log::AMCP_Scope_Registry *this, int a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      __p[0] = 136315650;
      *&__p[1] = "IOAudio2_Engine.cpp";
      v17 = 1024;
      v18 = 463;
      v19 = 2080;
      v20 = "in_new_state != Transport_State::on";
LABEL_29:
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s can't transition to on state with a stop call", __p, 0x1Cu);
    }

LABEL_30:
    abort();
  }

  if (a2 < a3)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v11 = *v14;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __p[0] = 136315650;
      *&__p[1] = "IOAudio2_Engine.cpp";
      v17 = 1024;
      v18 = 464;
      v19 = 2080;
      v20 = "in_old_state >= in_new_state";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v4 = this;
  if (!a2 || *(this + 48) == 1)
  {
    kdebug_trace();
    v5 = *(v4 + 740);
    if (*(v4 + 48) == 1)
    {
      if (v5)
      {
        applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned long long &>(__p, v5, 11, a3 == 1);
      }

LABEL_31:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (!v5)
    {
      goto LABEL_31;
    }

    applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone>(*(v4 + 740), 1u, 0, 0);
    AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions(v4 + 120);
    this = kdebug_trace();
  }

  if (a3)
  {
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    AMCP::IOAudio2::Engine::release_buffers(v4);
    v7 = *MEMORY[0x1E69E9840];

    return AMCP::IO_Clock::reset_time((v4 + 576));
  }

  return this;
}

void sub_1DE533FC8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned int **AMCP::IOAudio2::Engine::release_buffers(AMCP::IOAudio2::Engine *this)
{
  v2 = *(this + 95);
  v3 = *(this + 94);
  while (v2 != v3)
  {
    std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](--v2, 0);
  }

  *(this + 95) = v3;
  v4 = *(this + 98);
  v5 = *(this + 97);
  while (v4 != v5)
  {
    std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](--v4, 0);
  }

  *(this + 98) = v5;

  return std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](this + 93, 0);
}

void sub_1DE534264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30)
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
      v34 = *(v32 - 80);
      if (v34)
      {
        *(v32 - 72) = v34;
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

void std::vector<unsigned long long>::vector[abi:ne200100](void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1DE53434C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::unique_ptr<applesauce::iokit::mapped_memory>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<std::unique_ptr<applesauce::iokit::mapped_memory>>::push_back[abi:ne200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<applesauce::iokit::mapped_memory>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<applesauce::iokit::mapped_memory>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 AMCP::IOAudio2::Engine::get_stream_format@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
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

void AMCP::IOAudio2::Engine::~Engine(AMCP::IOAudio2::Engine *this)
{
  AMCP::IOAudio2::Engine::~Engine(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5978888;
  AMCP::IOAudio2::Engine::set_transport_state(this, 0);
  v10 = (this + 776);
  std::vector<std::unique_ptr<applesauce::iokit::mapped_memory>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 752);
  std::vector<std::unique_ptr<applesauce::iokit::mapped_memory>>::__destroy_vector::operator()[abi:ne200100](&v10);
  std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](this + 93, 0);
  IOConnectRelease(*(this + 185));
  AMCP::IO_Clock::~IO_Clock((this + 576));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 240));
  v2 = *(this + 29);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void std::vector<std::unique_ptr<applesauce::iokit::mapped_memory>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,double,unsigned int,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,BOOL,BOOL,AMCP::Utility::Dispatch_Queue const&)::$_0,std::allocator<AMCP::IOAudio2::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,double,unsigned int,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,BOOL,BOOL,AMCP::Utility::Dispatch_Queue const&)::$_0>,CA::TimeStamp ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26EngineC1EN10applesauce5iokit17io_connect_holderENS2_2CF9StringRefEdjjbjjjjRKNSt3__16vectorINS_4Core14Implementation18Simple_Engine_Data11Stream_InfoENS7_9allocatorISC_EEEESH_bbRKNS_7Utility14Dispatch_QueueEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,double,unsigned int,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,BOOL,BOOL,AMCP::Utility::Dispatch_Queue const&)::$_0,std::allocator<AMCP::IOAudio2::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,double,unsigned int,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,BOOL,BOOL,AMCP::Utility::Dispatch_Queue const&)::$_0>,CA::TimeStamp ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5978A40;
  a2[1] = v2;
  return result;
}

void AMCP::IOAudio2::Engine::Engine(uint64_t a1, double a2, uint64_t a3, CFTypeRef *a4, int a5, int a6, char a7, int a8, int a9, int a10, int a11, uint64_t *a12, uint64_t *a13, uint64_t a14, dispatch_queue_t *a15)
{
  v32 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5978888;
  v22 = *a4;
  if (*a4)
  {
    CFRetain(*a4);
  }

  v30 = 0;
  v31 = v22;
  v29 = 0uLL;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>(&v29, *a12, a12[1], 0x6DB6DB6DB6DB6DB7 * ((a12[1] - *a12) >> 3));
  v27 = 0uLL;
  v28 = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>(&v27, *a13, a13[1], 0x6DB6DB6DB6DB6DB7 * ((a13[1] - *a13) >> 3));
  *(a1 + 24) = v22;
  *(a1 + 32) = a2;
  *(a1 + 40) = a5;
  *(a1 + 44) = a6;
  *(a1 + 48) = a7;
  *(a1 + 52) = a8;
  *(a1 + 56) = a9;
  *(a1 + 60) = a10;
  *(a1 + 64) = a11;
  *(a1 + 72) = v29;
  *(a1 + 88) = v30;
  v29 = 0uLL;
  v30 = 0;
  v31 = 0;
  *(a1 + 96) = v27;
  *(a1 + 112) = v28;
  v23 = 0x6DB6DB6DB6DB6DB7 * ((a12[1] - *a12) >> 3);
  v24 = (a13[1] - *a13) >> 3;
  v27 = 0uLL;
  v28 = 0;
  AMCP::Core::Implementation::Simple_Engine_IO_State::Simple_Engine_IO_State((a1 + 120), a4, v23, 0x6DB6DB6DB6DB6DB7 * v24, 0, a15, v25);
}

void sub_1DE534C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Terminal::Terminal(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v8 = 0;
  v9 = 0;
  v10 = *a2;
  v11 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v10;
  *(a1 + 16) = v11;
  v12 = a2 + 40;
  do
  {
    v13 = v8;
    v14 = (a1 + 24 * v9);
    v14[5] = 0;
    v14[6] = 0;
    v14 += 5;
    v14[2] = 0;
    v15 = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v14, *(v12 + 24 * v9), *(v12 + 24 * v9 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v12 + 24 * v9 + 8) - *(v12 + 24 * v9)) >> 3));
    v8 = 1;
    v9 = 1;
  }

  while ((v13 & 1) == 0);
  *(a1 + 88) = *(a2 + 11);
  if (a2[6])
  {
    v16 = 1;
  }

  else
  {
    AMCP::Graph::File_Capture_Settings::instance(v15);
    v16 = BYTE1(AMCP::Graph::File_Capture_Settings::instance(void)::s_instance);
  }

  *(a1 + 96) = v16 & 1;
  *(a1 + 100) = a4;
  *(a1 + 104) = a3;
  return a1;
}

void sub_1DE534DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((v12 & 1) == 0)
  {
    v14 = -24 * v11;
    v15 = v10 + 24 * v11 + 16;
    do
    {
      a10 = v15;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
      v15 -= 24;
      v14 += 24;
    }

    while (v14);
  }

  _Unwind_Resume(exception_object);
}

double AMCP::Graph::Terminal::get_description(AMCP::Graph::Terminal *this, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  *(this + 11) = 1;
  *(this + 96) = 0;
  *(this + 40) = 0u;
  v6 = this + 40;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  v7 = *(a2 + 16);
  *this = *a2;
  *(this + 1) = v7;
  *(this + 4) = *(a2 + 32);
  v8 = a2 + 40;
  do
  {
    v9 = v4;
    if (this != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v6[24 * v5], *(v8 + 24 * v5), *(v8 + 24 * v5 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 24 * v5 + 8) - *(v8 + 24 * v5)) >> 3));
    }

    v4 = 1;
    v5 = 1;
  }

  while ((v9 & 1) == 0);
  result = *(a2 + 88);
  *(this + 11) = result;
  *(this + 96) = *(a2 + 96);
  return result;
}

void sub_1DE534EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = (v10 + 64);
  v13 = -48;
  do
  {
    a10 = v12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
    v12 -= 3;
    v13 += 24;
  }

  while (v13);
  _Unwind_Resume(a1);
}

uint64_t HALS_DSPHostIntegrationPoint_IOContextPlugin::unlock_processing(HALS_DSPHostIntegrationPoint_IOContextPlugin *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 3) + 88);
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

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_140[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_140[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostIntegrationPoint_IOContextPlugin.cpp";
    }

    v15 = 136315906;
    v16 = v14;
    v17 = 1024;
    v18 = 251;
    v19 = 2048;
    v20 = this;
    v21 = 1024;
    v22 = v2;
    _os_log_debug_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] %p (Context ID: %d) DSP instance unlocked.", &v15, 0x22u);
  }

  result = (*(**(this + 1) + 64))(*(this + 1));
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void HALS_DSPHostIntegrationPoint_IOContextPlugin::lock_processing(HALS_DSPHostIntegrationPoint_IOContextPlugin *this)
{
  v1 = *MEMORY[0x1E69E9840];
  (*(**(this + 1) + 56))(*(this + 1));
  operator new();
}

void *std::unique_ptr<HALS_DSPHostIntegrationPoint_IOContextPlugin::ProcessAudioData>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[21];
    if (v3)
    {
      v2[22] = v3;
      operator delete(v3);
    }

    v4 = v2[18];
    if (v4)
    {
      v2[19] = v4;
      operator delete(v4);
    }

    v5 = v2[15];
    if (v5)
    {
      v2[16] = v5;
      operator delete(v5);
    }

    v6 = v2[12];
    if (v6)
    {
      v2[13] = v6;
      operator delete(v6);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

unint64_t HALS_DSPHostIntegrationPoint_IOContextPlugin::ProcessAudioData::resize_overlay_abl_list(unint64_t result, std::vector<char> *a2, unint64_t *a3)
{
  a2->__end_ = a2->__begin_;
  v3 = *a3;
  a3[1] = *a3;
  if (result)
  {
    v6 = result;
    v7 = a3[2] - v3;
    if (result > v7 >> 3)
    {
      if (!(result >> 61))
      {
        v8 = v7 >> 2;
        if (v7 >> 2 <= result)
        {
          v8 = result;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        if (!(v9 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(v3, 8 * result);
    v10 = &v3[8 * v6];
    a3[1] = v10;
    result = *a3;
    v11 = 8 * ((&v10[-*a3] >> 2) + (&v10[-*a3] >> 3));
    __x = 0;
    begin = a2->__begin_;
    v13 = a2->__end_ - a2->__begin_;
    if (v11 <= v13)
    {
      if (v11 < v13)
      {
        a2->__end_ = &begin[v11];
      }
    }

    else
    {
      std::vector<char>::__append(a2, v11 - v13, &__x);
      begin = a2->__begin_;
      result = *a3;
      v10 = a3[1];
    }

    if (result != v10)
    {
      do
      {
        *begin = 1;
        *(begin + 1) = 0;
        *(begin + 2) = 0;
        *result = begin;
        result += 8;
        begin += 24;
      }

      while (result != v10);
      return *a3;
    }
  }

  return result;
}

uint64_t HALS_DSPHostIntegrationPoint_IOContextPlugin::configure_plugin(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = (*(*v2 + 16))(v2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1DE5356A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPHostIntegrationPoint_IOContextPlugin::~HALS_DSPHostIntegrationPoint_IOContextPlugin(HALS_DSPHostIntegrationPoint_IOContextPlugin *this)
{
  HALS_DSPHostIntegrationPoint_IOContextPlugin::~HALS_DSPHostIntegrationPoint_IOContextPlugin(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5978AC0;
  std::unique_ptr<HALS_DSPHostIntegrationPoint_IOContextPlugin::ProcessAudioData>::reset[abi:ne200100](this + 6, 0);
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<HALS_DSPHostIntegrationPoint_IOContextPlugin>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5978B78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__value_func<void ()(std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0,std::allocator<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0>,void ()(std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN44HALS_DSPHostIntegrationPoint_IOContextPlugin17dsp_properties_ifEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0,std::allocator<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0>,void ()(std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((**(a1 + 16) & 1) == 0 && v4)
  {
    (*(*v4 + 24))(&v7, v4);
    v5 = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v5)
    {
      (*(*v4 + 24))(&v7, v4);
      v6 = (*(*(v7 + *(*v7 - 40)) + 16))(v7 + *(*v7 - 40));
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if ((v6 & 0x100000000) != 0 && *(a1 + 8) == v6)
      {
        **(a1 + 16) = 1;
      }
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1DE5359EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0,std::allocator<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0>,void ()(std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5978C10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t Property_Type_Info::get_property_data_and_qualifier_type_code(Property_Type_Info *this, int a2, AMCP::HAL *a3)
{
  std::mutex::lock((this + 24));
  v6 = *this;
  v7 = *(this + 1);
  if (*this != v7)
  {
    while (*v6 != a2)
    {
      v6 += 48;
      if (v6 == v7)
      {
        goto LABEL_20;
      }
    }
  }

  if (v6 == v7 || (v8 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v6 + 8), a3)) == 0)
  {
LABEL_20:
    hal_property_value_type_code = AMCP::HAL::get_hal_property_value_type_code(a3);
    v14 = AMCP::HAL::get_hal_property_qualifier_type_code(a3) << 32;
  }

  else
  {
    v10 = *(v8 + 5);
    v9 = *(v8 + 6);
    if (v10 == 1667658612)
    {
      v11 = 6;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == 1886155636)
    {
      v12 = 15;
    }

    else
    {
      v12 = v11;
    }

    if (v10 == 1918990199)
    {
      hal_property_value_type_code = 1;
    }

    else
    {
      hal_property_value_type_code = v12;
    }

    switch(v9)
    {
      case 1918990199:
        v14 = 0x100000000;
        break;
      case 1886155636:
        v14 = 0xF00000000;
        break;
      case 1667658612:
        v14 = 0x600000000;
        break;
      default:
        v14 = 0;
        break;
    }
  }

  std::mutex::unlock((this + 24));
  return v14 | hal_property_value_type_code;
}

uint64_t Property_Type_Info::get_property_qualifier_type_code(Property_Type_Info *this, int a2, AMCP::HAL *a3)
{
  std::mutex::lock((this + 24));
  v6 = *this;
  v7 = *(this + 1);
  if (*this != v7)
  {
    while (*v6 != a2)
    {
      v6 += 48;
      if (v6 == v7)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v7 || (v8 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v6 + 8), a3)) == 0)
  {
LABEL_11:
    hal_property_qualifier_type_code = AMCP::HAL::get_hal_property_qualifier_type_code(a3);
  }

  else
  {
    v9 = *(v8 + 6);
    switch(v9)
    {
      case 1918990199:
        hal_property_qualifier_type_code = 1;
        break;
      case 1886155636:
        hal_property_qualifier_type_code = 15;
        break;
      case 1667658612:
        hal_property_qualifier_type_code = 6;
        break;
      default:
        hal_property_qualifier_type_code = 0;
        break;
    }
  }

  std::mutex::unlock((this + 24));
  return hal_property_qualifier_type_code;
}

void Property_Type_Info::add_custom_properties(Property_Type_Info *this, int a2, uint64_t a3, const AudioServerPlugInCustomPropertyInfo *a4)
{
  std::mutex::lock((this + 24));
  v9 = *this;
  v8 = *(this + 1);
  if (*this != v8)
  {
    while (*v9 != a2)
    {
      v9 += 48;
      if (v9 == v8)
      {
        goto LABEL_10;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_10:
    v11 = 0uLL;
    v40 = 0u;
    v41 = 0u;
    *&v42 = 1.0;
    if (a3)
    {
      p_mPropertyDataType = &a4->mPropertyDataType;
      do
      {
        v36 = *(p_mPropertyDataType - 1);
        *v37 = *p_mPropertyDataType;
        std::__hash_table<std::__hash_value_type<unsigned int,Custom_Property_Types>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Custom_Property_Types>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,Custom_Property_Types>>(&v40, v36);
        p_mPropertyDataType += 3;
        --a3;
      }

      while (a3);
      v13 = *&v42;
      v14 = *(&v40 + 1);
      v11 = 0uLL;
    }

    else
    {
      v14 = 0;
      v13 = 1.0;
    }

    *&v37[4] = v11;
    v38 = v11;
    v39 = v13;
    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(&v37[4], v14);
    v15 = v41;
    if (!v41)
    {
LABEL_34:
      v23 = *(this + 1);
      v22 = *(this + 2);
      if (v23 >= v22)
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *this) >> 4);
        v26 = v25 + 1;
        if (v25 + 1 > 0x555555555555555)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v27 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *this) >> 4);
        if (2 * v27 > v26)
        {
          v26 = 2 * v27;
        }

        if (v27 >= 0x2AAAAAAAAAAAAAALL)
        {
          v28 = 0x555555555555555;
        }

        else
        {
          v28 = v26;
        }

        v46 = this;
        if (v28)
        {
          std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::allocate_at_least[abi:ne200100](v28);
        }

        v29 = 48 * v25;
        v43 = 0;
        v44 = v29;
        *(&v45 + 1) = 0;
        *v29 = a2;
        std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::__hash_table(v29 + 8, &v37[4]);
        *&v45 = v29 + 48;
        v30 = *(this + 1);
        v31 = v29 + *this - v30;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>,std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>*>(*this, v30, v31);
        v32 = *this;
        *this = v31;
        v33 = *(this + 2);
        v34 = v45;
        *(this + 8) = v45;
        *&v45 = v32;
        *(&v45 + 1) = v33;
        v43 = v32;
        v44 = v32;
        std::__split_buffer<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::~__split_buffer(&v43);
        v24 = v34;
      }

      else
      {
        *v23 = a2;
        v24 = v23 + 12;
        std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::__hash_table((v23 + 2), &v37[4]);
      }

      *(this + 1) = v24;
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v37[4]);
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v40);
      goto LABEL_46;
    }

LABEL_16:
    v16 = *(v15 + 4);
    if (!*&v37[12])
    {
      goto LABEL_32;
    }

    v17 = vcnt_s8(*&v37[12]);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = *(v15 + 4);
      if (*&v37[12] <= v16)
      {
        v18 = v16 % *&v37[12];
      }
    }

    else
    {
      v18 = (*&v37[12] - 1) & v16;
    }

    v19 = *(*&v37[4] + 8 * v18);
    if (!v19 || (v20 = *v19) == 0)
    {
LABEL_32:
      operator new();
    }

    while (1)
    {
      v21 = v20[1];
      if (v21 == v16)
      {
        if (*(v20 + 4) == v16)
        {
          v15 = *v15;
          if (!v15)
          {
            goto LABEL_34;
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (v17.u32[0] > 1uLL)
        {
          if (v21 >= *&v37[12])
          {
            v21 %= *&v37[12];
          }
        }

        else
        {
          v21 &= *&v37[12] - 1;
        }

        if (v21 != v18)
        {
          goto LABEL_32;
        }
      }

      v20 = *v20;
      if (!v20)
      {
        goto LABEL_32;
      }
    }
  }

  if (a3)
  {
    v10 = &a4->mPropertyDataType;
    do
    {
      v35 = *(v10 - 1);
      *v37 = *v10;
      std::__hash_table<std::__hash_value_type<unsigned int,Custom_Property_Types>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Custom_Property_Types>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,Custom_Property_Types>>((v9 + 8), v35);
      v10 += 3;
      --a3;
    }

    while (a3);
  }

LABEL_46:
  std::mutex::unlock((this + 24));
}

void sub_1DE536124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(va1);
  std::mutex::unlock((v4 + 24));
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned int,Custom_Property_Types>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Custom_Property_Types>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,Custom_Property_Types>>(void *result, unsigned int a2)
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

void std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>,std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>*>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = a3 + 8;
    v6 = v4;
    v7 = v4;
    do
    {
      v8 = *v7;
      v7 += 6;
      *(v5 - 8) = v8;
      v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::__hash_table(v5, v6 + 1) + 48;
      v6 = v7;
    }

    while (v7 != a2);
    do
    {
      result = std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table((v4 + 1));
      v4 += 6;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void Property_Type_Info::remove_custom_properties(Property_Type_Info *this, int a2)
{
  std::mutex::lock((this + 24));
  v4 = *this;
  v5 = *(this + 1);
  if (*this != v5)
  {
    while (*v4 != a2)
    {
      v4 += 48;
      if (v4 == v5)
      {
        v4 = *(this + 1);
        break;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 + 48;
    if (v4 + 48 != v5)
    {
      do
      {
        *v4 = *v6;
        if (*(v4 + 32))
        {
          v7 = *(v4 + 24);
          if (v7)
          {
            do
            {
              v8 = *v7;
              operator delete(v7);
              v7 = v8;
            }

            while (v8);
          }

          *(v4 + 24) = 0;
          v9 = *(v4 + 16);
          if (v9)
          {
            for (i = 0; i != v9; ++i)
            {
              *(*(v4 + 8) + 8 * i) = 0;
            }
          }

          *(v4 + 32) = 0;
        }

        v11 = *(v6 + 8);
        *(v6 + 8) = 0;
        v12 = *(v4 + 8);
        *(v4 + 8) = v11;
        if (v12)
        {
          operator delete(v12);
        }

        v13 = *(v6 + 24);
        v14 = *(v6 + 16);
        *(v4 + 24) = v13;
        *(v4 + 16) = v14;
        *(v6 + 16) = 0;
        v15 = *(v6 + 32);
        *(v4 + 32) = v15;
        *(v4 + 40) = *(v6 + 40);
        if (v15)
        {
          v16 = *(v13 + 8);
          if ((v14 & (v14 - 1)) != 0)
          {
            if (v16 >= v14)
            {
              v16 %= v14;
            }
          }

          else
          {
            v16 &= v14 - 1;
          }

          *(*(v4 + 8) + 8 * v16) = v4 + 24;
          *(v6 + 24) = 0;
          *(v6 + 32) = 0;
        }

        v6 += 48;
        v4 += 48;
      }

      while (v6 != v5);
      v5 = *(this + 1);
    }

    for (; v5 != v4; v5 -= 48)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v5 - 40);
    }

    *(this + 1) = v4;
    v17 = *this;
    v18 = *(this + 2) - *this;
    v19 = v4 - *this;
    if (v18 > v19)
    {
      v20 = v19 >> 4;
      v28 = this;
      if (v4 != v17)
      {
        std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::allocate_at_least[abi:ne200100](0xAAAAAAAAAAAAAAABLL * v20);
      }

      v25 = 0;
      v26 = 16 * v20;
      v27 = (16 * v20);
      if (0xAAAAAAAAAAAAAAABLL * (v18 >> 4))
      {
        v21 = *(this + 1);
        v22 = 16 * v20 + v17 - v21;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>,std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>*>(v17, v21, v22);
        v23 = *this;
        *this = v22;
        v24 = *(this + 2);
        *(this + 8) = v27;
        *&v27 = v23;
        *(&v27 + 1) = v24;
        v25 = v23;
        v26 = v23;
      }

      std::__split_buffer<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::~__split_buffer(&v25);
    }
  }

  std::mutex::unlock((this + 24));
}

void sub_1DE536714(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5366E8);
}

void CAAudioValueRange_ComputeUnion(double *a1, double **a2, void *a3)
{
  a3[1] = *a3;
  v6 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
LABEL_9:
    v16 = *a1;
    std::vector<CAAudioValueRange>::push_back[abi:ne200100](a3, &v16);
    return;
  }

  v8 = *a1;
  if (v6[1] < *a1)
  {
    v9 = v6 + 2;
    while (1)
    {
      std::vector<CAAudioValueRange>::push_back[abi:ne200100](a3, v9 - 1);
      v5 = a2[1];
      if (v9 == v5)
      {
        goto LABEL_9;
      }

      v10 = v9[1];
      v8 = *a1;
      v9 += 2;
      if (v10 >= *a1)
      {
        v6 = v9 - 2;
        break;
      }
    }
  }

  v11 = a1[1];
  if (*v6 <= v11)
  {
    v13 = v6 + 2;
    do
    {
      v12 = v13;
      if (v13 == v5)
      {
        break;
      }

      v13 += 2;
    }

    while (*v12 <= v11);
    if (v8 >= *v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = a1;
    }

    v15 = *v14;
    if (*(v12 - 1) >= v11)
    {
      v11 = *(v12 - 1);
    }

    *&v16 = *v14;
    *(&v16 + 1) = v11;
    std::vector<CAAudioValueRange>::push_back[abi:ne200100](a3, &v16);
  }

  else
  {
    *&v16 = v8;
    *(&v16 + 1) = v11;
    std::vector<CAAudioValueRange>::push_back[abi:ne200100](a3, &v16);
    v12 = v6;
  }

  while (v12 != a2[1])
  {
    std::vector<CAAudioValueRange>::push_back[abi:ne200100](a3, v12);
    v12 += 2;
  }
}

void std::vector<CAAudioValueRange>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<CA::ValueRange>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1DE536A40(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t ADS::PropertyManager::Size(std::mutex *this)
{
  std::mutex::lock(this);
  v2 = (*this[1].__m_.__opaque - this[1].__m_.__sig) >> 4;
  std::mutex::unlock(this);
  return v2;
}

void ADS::PropertyManager::AddProperty(uint64_t a1, __int128 *a2)
{
  std::mutex::lock(a1);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  if (v4 >= v5)
  {
    v8 = *(a1 + 64);
    v9 = (v4 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = 16 * v9;
    v14 = *a2;
    *(16 * v9) = *a2;
    if (*(&v14 + 1))
    {
      atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v13 + 16);
    v15 = *(a1 + 64);
    v16 = *(a1 + 72) - v15;
    v17 = v13 - v16;
    memcpy((v13 - v16), v15, v16);
    *(a1 + 64) = v17;
    *(a1 + 72) = v7;
    *(a1 + 80) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 72) = v7;

  std::mutex::unlock(a1);
}

void sub_1DE536BE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE536C48(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t std::__split_buffer<std::unique_ptr<HALS_PlugInManager::DeferredPlugInLoadInfo>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<HALS_PlugInManager::DeferredPlugInLoadInfo>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

HALS_PlugInManager::DeferredPlugInLoadInfo *std::unique_ptr<HALS_PlugInManager::DeferredPlugInLoadInfo>::reset[abi:ne200100](HALS_PlugInManager::DeferredPlugInLoadInfo **a1, HALS_PlugInManager::DeferredPlugInLoadInfo *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HALS_PlugInManager::DeferredPlugInLoadInfo::~DeferredPlugInLoadInfo(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void HALS_PlugInManager::DeferredPlugInLoadInfo::~DeferredPlugInLoadInfo(HALS_PlugInManager::DeferredPlugInLoadInfo *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  v4 = *(this + 4);
  if (v3 != v4)
  {
    do
    {
      IOObjectRelease(*v3++);
    }

    while (v3 != v4);
    v3 = *(this + 3);
  }

  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

void HALS_PlugInManager::LoadPlugIns(HALS_PlugInManager *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = xmmword_1E8676898;
  v6 = xmmword_1E8676898;
  v1 = "/Library/Apple/Audio/Plug-Ins/HAL";
  v7 = "/Library/Apple/Audio/Plug-Ins/HAL";
  v4 = 0;
  v5 = 0;
  v3 = 0;
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>();
}

void sub_1DE537C1C(_Unwind_Exception *a1)
{
  v3 = v1[25];
  CACFArray::~CACFArray((v1 + 19));
  CACFObject<__CFURL const*>::~CACFObject((v1 + 21));
  CACFString::~CACFString((v1 + 23));
  if (v3)
  {
    v1[26] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1DE537CC4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE537CCCLL);
  }

  __clang_call_terminate(a1);
}

void HALS_PlugInManager::CreatePlugIn(HALS_PlugInManager *this, const __CFURL *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v2[1] = 0;
  HALS_System::GetInstance(&v3, 0, v2);
  operator new();
}

void sub_1DE538FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  __cxa_free_exception(v20);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef((v19 + 88));
  applesauce::CF::StringRef::~StringRef((v19 + 80));
  v23 = *v21;
  *v21 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v24);
  MEMORY[0x1E12C1730](v18, 0x10E1C402831BD4ELL);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_PlugInManager::DeferredPlugInLoadingMatchingHandler(HALS_PlugInManager *this, io_iterator_t iterator)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *HALS_PlugInManager::sDeferredPlugInLoadList;
  v3 = *(HALS_PlugInManager::sDeferredPlugInLoadList + 8);
  if (*HALS_PlugInManager::sDeferredPlugInLoadList != v3)
  {
    while (**v4 != this)
    {
      v4 += 8;
      if (v4 == v3)
      {
        goto LABEL_9;
      }
    }
  }

  if (v4 != v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "HALS_PlugInManager.cpp";
      v10 = 1024;
      v11 = 655;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInManager::DeferredPlugInLoadingMatchingHandler: Loading....", &v8, 0x12u);
    }

    HALS_PlugInManager::CreatePlugIn(*(*v4 + 8), v5);
  }

LABEL_9:
  for (result = IOIteratorNext(iterator); result; result = IOIteratorNext(iterator))
  {
    IOObjectRelease(result);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5392F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE5392A4);
  }

  _Unwind_Resume(a1);
}

uint64_t CATimeUtilities::GregorianDateFromAbsoluteTime(CATimeUtilities *this, CFAbsoluteTime a2)
{
  {
    CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz = CFTimeZoneCopySystem();
  }

  v3 = CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz;

  return *&CFAbsoluteTimeGetGregorianDate(a2, v3);
}

void non-virtual thunk toAMCP::Null::Driver::~Driver(AMCP::Null::Driver *this)
{
  AMCP::Null::Driver::~Driver((this - 24));

  JUMPOUT(0x1E12C1730);
}

{
  AMCP::Null::Driver::~Driver((this - 24));
}

void AMCP::Null::Driver::~Driver(AMCP::Null::Driver *this)
{
  *this = &unk_1F5978CF0;
  *(this + 3) = &unk_1F5978D18;
  v4 = (this + 120);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::mutex::~mutex((this + 56));
  *(this + 3) = &unk_1F59748E8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  AMCP::Null::Driver::~Driver(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Null::Driver::shutdown(AMCP::Null::Driver *this)
{
  v1 = this;
  v25 = *MEMORY[0x1E69E9840];
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
        v21 = 136315394;
        v22 = "Null_Driver_Imp.cpp";
        v23 = 1024;
        v24 = 41;
        v18 = v17;
        v19 = OS_LOG_TYPE_INFO;
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v18, v19, "%32s:%-5d Tearing down Null driver", &v21, 0x12u);
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
        v21 = 136315394;
        v22 = "Null_Driver_Imp.cpp";
        v23 = 1024;
        v24 = 41;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tearing down Null driver", &v21, 0x12u);
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
        v21 = 136315394;
        v22 = "Null_Driver_Imp.cpp";
        v23 = 1024;
        v24 = 41;
        v18 = v9;
        v19 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_29;
      }

      break;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  AMCP::Core::Broker::destroy_core(*(*(v1 + 4) + 16), *(v1 + 12));
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1DE53974C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Null::Driver::build_core(void)::$_1,std::allocator<AMCP::Null::Driver::build_core(void)::$_1>,void ()(std::vector<unsigned int> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Driver10build_coreEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Driver::build_core(void)::$_1,std::allocator<AMCP::Null::Driver::build_core(void)::$_1>,void ()(std::vector<unsigned int> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v11[7] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(*(v3 + 32) + 32);
  v5 = *(v3 + 48);
  std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(lpsrc, *(v3 + 8), *(v3 + 16));
  {
    v10[0] = v7;
    v10[1] = lpsrc[1];
    v8 = lpsrc;
  }

  else
  {
    v8 = v10;
  }

  *v8 = 0;
  v8[1] = 0;
  memset(v11, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v11, *a2, a2[1], (a2[1] - *a2) >> 2);
  v11[6] = 0;
  operator new();
}

void sub_1DE539A78(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v4 = v2[2];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Driver15destroy_objectsERKNSt3__16vectorIjNS2_9allocatorIjEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[1];
  std::mutex::lock((v2 + 56));
  v3 = a1[3];
  v4 = a1[4];
  while (v3 != v4)
  {
    v5 = a1[1];
    v7 = *(v5 + 120);
    v6 = *(v5 + 128);
    if (v7 != v6)
    {
      while (*(*v7 + 88) != *v3)
      {
        v7 += 16;
        if (v7 == v6)
        {
          v7 = *(v5 + 128);
          break;
        }
      }
    }

    if (v6 != v7)
    {
      if (v7 + 16 == v6)
      {
        v10 = v7;
      }

      else
      {
        do
        {
          v8 = *(v7 + 16);
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
          v9 = *(v7 + 8);
          *v7 = v8;
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          v10 = v7 + 16;
          v11 = v7 + 32;
          v7 += 16;
        }

        while (v11 != v6);
        v6 = *(v5 + 128);
      }

      while (v6 != v10)
      {
        v12 = *(v6 - 8);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v6 -= 16;
      }

      *(v5 + 128) = v10;
    }

    ++v3;
  }

  std::mutex::unlock((v2 + 56));
}

void std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::destroy[abi:ne200100](void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::__clone(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = &unk_1F5978F70;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a2 + 3), a1[3], a1[4], (a1[4] - a1[3]) >> 2);
}

void sub_1DE539D10(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE539DB8(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5978F70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5978F70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Driver::build_core(void)::$_1,std::allocator<AMCP::Null::Driver::build_core(void)::$_1>,void ()(std::vector<unsigned int> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5978E70;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>())
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
      std::__function::__value_func<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Null::Driver::build_core(void)::$_0,std::allocator<AMCP::Null::Driver::build_core(void)::$_0>,std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Driver10build_coreEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Driver::build_core(void)::$_0,std::allocator<AMCP::Null::Driver::build_core(void)::$_0>,std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  operator new();
}

void sub_1DE53A2A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Driver14create_objectsERKN10applesauce2CF8ArrayRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 1));
  if (is_valid)
  {
    v4 = *(v2 + 40);
    v13 = *(v2 + 32);
    v14 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(v2 + 48);
    v11 = 0;
    v12 = 0;
    v6 = a1[6];
    v15 = 1633841016;
    v16 = 1;
    memset(buf, 0, 24);
    std::vector<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*,std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*>();
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
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
    *&buf[4] = "Null_Driver_Imp.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 113;
    *&buf[18] = 2080;
    *&buf[20] = "expiration_check.is_valid()";
    _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", buf, 0x1Cu);
  }

  abort();
}

void sub_1DE53A970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void ***a25, uint64_t a26, uint64_t a27, void **a28)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  a25 = &a28;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a28 = &a22;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5978EF0;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5978EF0;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5978EF0;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Driver::build_core(void)::$_0,std::allocator<AMCP::Null::Driver::build_core(void)::$_0>,std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5978DE0;
  a2[1] = v2;
  return result;
}

void AMCP::DAL::AUParameter_Data_Handler::get_data(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t *AMCP::DAL::AUParameter_Data_Handler::get_ring_buffer_time_translator(AMCP::DAL::AUParameter_Data_Handler *this)
{
  {
    AMCP::DAL::AUParameter_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator = &unk_1F59790B0;
  }

  return &AMCP::DAL::AUParameter_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator;
}

void AMCP::DAL::AUParameter_Buffer_Time_Translator::translate_range(const AMCP::DAL::DAL_Time_Range *a1@<X1>, const AMCP::DAL::DAL_Time_Range *a2@<X2>, std::__shared_weak_count *a3@<X8>)
{
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(a1);
  v8 = *(a1 + 24);
  v9 = *(a1 + 4);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v29) = 2;
  *(&v29 + 1) = sample_time;
  v30 = 0;
  v31 = v8;
  v32 = *a2;
  v10 = *(a2 + 3);
  *&v33 = *(a2 + 2);
  *(&v33 + 1) = v10;
  v11 = *(a2 + 4);
  v34 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = *(a2 + 40);
  v12 = *(a2 + 8);
  v36 = *(a2 + 7);
  v37 = v12;
  v13 = *(a2 + 9);
  v38 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Time::operator-=(&v32, &v29);
  AMCP::DAL::DAL_Time::operator-=(&v35, &v29);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(v39, &v32);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (*(&v31 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v31 + 1));
  }

  v14 = AMCP::DAL::DAL_Time::get_sample_time(v39);
  v15 = AMCP::DAL::DAL_Time::get_sample_time(&v41);
  v29 = *a2;
  v16 = *(a2 + 3);
  v30 = *(a2 + 2);
  v17 = *(a2 + 4);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = *(a2 + 40);
  v18 = *(a2 + 8);
  v28 = *(a2 + 7);
  v19 = *(a2 + 9);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a3->__vftable = 0;
  a3->__shared_owners_ = 0;
  a3->__shared_weak_owners_ = 0;
  v34 = a3;
  v20 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>(1);
  *(&v33 + 1) = v20 + 96 * v21;
  *v20 = v14;
  *(v20 + 1) = v15;
  *(v20 + 1) = v29;
  *(v20 + 4) = v30;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v20 + 56) = v27;
  *(v20 + 9) = v28;
  *(v20 + 10) = v18;
  *(v20 + 11) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v33 = v20 + 96;
  shared_owners = a3->__shared_owners_;
  v23 = v20 + a3->__vftable - shared_owners;
  std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>,AMCP::DAL::Buffer_Time_Translator::Translation_Range*>(a3->__vftable, shared_owners, v23);
  v24 = a3->__vftable;
  a3->__vftable = v23;
  shared_weak_owners = a3->__shared_weak_owners_;
  v26 = v33;
  *&a3->__shared_owners_ = v33;
  *&v33 = v24;
  *(&v33 + 1) = shared_weak_owners;
  *&v32 = v24;
  *(&v32 + 1) = v24;
  std::__split_buffer<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range> &>::~__split_buffer(&v32);
  a3->__shared_owners_ = v26;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }
}

void sub_1DE53AF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(va);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *AMCP::DAL::AUParameter_Data_Handler::mix(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v9 = AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::AUParameter_Data_Handler>(*a2) + 56;
  v10 = *(a1 + 80);

  return AMCP::DAL::merge_values(v10, v9, a3, a4, a5);
}

uint64_t AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::AUParameter_Data_Handler>(uint64_t result)
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
    v22 = "T *AMCP::DAL::Container::get_container_data_ptr() const [T = AMCP::DAL::AUParameter_Data_Handler]";
    v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.h";
    v24 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v6);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE53B2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
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

caulk::rt_safe_memory_resource *AMCP::DAL::merge_values(caulk::rt_safe_memory_resource *result, uint64_t a2, double a3, double a4, double a5)
{
  if (result)
  {
    v9 = result;
    v10 = a3 - a5;
    v11 = round(a3);
    v12 = round(a4);
    v13 = (a2 + 32);
    v66 = (a2 + 24);
    do
    {
      v69 = 0;
      v14 = 0uLL;
      v68 = 0u;
      v15 = *(v9 + 4);
      v16 = *(v9 + 5);
      if (v15 != v16)
      {
        do
        {
          v18 = *v15;
          v19 = *v15 + 1.0;
          v20 = round(*v15);
          v21 = round(v19);
          if (v20 < v11)
          {
            v18 = a3;
          }

          if (v12 < v21)
          {
            v19 = a4;
          }

          v22 = round(v18);
          v23 = round(v19);
          if (v20 < v21)
          {
            v24 = v12;
          }

          else
          {
            v24 = v21;
          }

          if (v20 < v21)
          {
            v25 = v11;
          }

          else
          {
            v25 = v20;
          }

          if (v20 >= v21 || v11 >= v12)
          {
            v23 = v24;
            v22 = v25;
          }

          if (v22 < v23 || v11 < v12 && v20 < v21 && (v20 != v12 ? (v17 = v11 == v21) : (v17 = 1), v17))
          {
            caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>::push_back(&v68, v15);
          }

          v15 += 2;
        }

        while (v15 != v16);
        v14 = v68;
      }

      v27 = *(&v14 + 1);
      for (i = v14; i != v27; ++i)
      {
        v67 = *i;
        *&v67 = *&v67 - v10;
        v29 = *a2;
        v30 = *(a2 + 8);
        v31 = std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::find<AMCP::DAL::AUParameterKey>(*a2, v30, v9 + 4);
        if (v31)
        {
          goto LABEL_115;
        }

        v32 = *(v9 + 4);
        v33 = *(v9 + 5);
        v34 = *(v9 + 6);
        v35 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v33) ^ ((0xC6A4A7935BD1E995 * v33) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v32) ^ ((0xC6A4A7935BD1E995 * v32) >> 47)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v34) ^ ((0xC6A4A7935BD1E995 * v34) >> 47)))) + 3864292196u;
        if (v30)
        {
          v36 = vcnt_s8(v30);
          v36.i16[0] = vaddlv_u8(v36);
          if (v36.u32[0] > 1uLL)
          {
            v5 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v33) ^ ((0xC6A4A7935BD1E995 * v33) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v32) ^ ((0xC6A4A7935BD1E995 * v32) >> 47)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v34) ^ ((0xC6A4A7935BD1E995 * v34) >> 47)))) + 3864292196u;
            if (v35 >= v30)
            {
              v5 = v35 % v30;
            }
          }

          else
          {
            v5 = v35 & (v30 - 1);
          }

          v37 = *(v29 + 8 * v5);
          if (v37)
          {
            for (j = *v37; j; j = *j)
            {
              v39 = j[1];
              if (v39 == v35)
              {
                if (*(j + 4) == v32 && *(j + 20) == __PAIR64__(v34, v33))
                {
                  goto LABEL_114;
                }
              }

              else
              {
                if (v36.u32[0] > 1uLL)
                {
                  if (v39 >= v30)
                  {
                    v39 %= v30;
                  }
                }

                else
                {
                  v39 &= v30 - 1;
                }

                if (v39 != v5)
                {
                  break;
                }
              }
            }
          }
        }

        v40 = (*(**v13 + 16))(*v13, 56, 8);
        v70 = v40;
        v71 = v13;
        v72 = 0;
        *v40 = 0;
        *(v40 + 8) = v35;
        v41 = *(v9 + 6);
        *(v40 + 16) = *(v9 + 2);
        *(v40 + 24) = v41;
        *(v40 + 40) = 0;
        *(v40 + 48) = 0;
        *(v40 + 32) = 0;
        v42 = *(a2 + 40);
        v43 = *(a2 + 48);
        LOBYTE(v72) = 1;
        v44 = (v42 + 1);
        if (!v30 || (v43 * v30) < v44)
        {
          v45 = (v30 & (v30 - 1)) != 0;
          if (v30 < 3)
          {
            v45 = 1;
          }

          v46 = v45 | (2 * v30);
          v47 = vcvtps_u32_f32(v44 / v43);
          if (v46 <= v47)
          {
            prime = v47;
          }

          else
          {
            prime = v46;
          }

          if (*&prime == 1)
          {
            prime = 2;
          }

          else if ((*&prime & (*&prime - 1)) != 0)
          {
            prime = std::__next_prime(*&prime);
          }

          v49 = *(a2 + 8);
          if (*&prime > *&v49)
          {
            goto LABEL_63;
          }

          if (*&prime < *&v49)
          {
            v56 = vcvtps_u32_f32(*(a2 + 40) / *(a2 + 48));
            if (*&v49 < 3uLL || (v57 = vcnt_s8(v49), v57.i16[0] = vaddlv_u8(v57), v57.u32[0] > 1uLL))
            {
              v56 = std::__next_prime(v56);
            }

            else
            {
              v58 = 1 << -__clz(v56 - 1);
              if (v56 >= 2)
              {
                v56 = v58;
              }
            }

            if (*&prime <= v56)
            {
              prime = v56;
            }

            if (*&prime < *&v49)
            {
              if (prime)
              {
LABEL_63:
                if (*&prime >> 61)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v50 = (*(**(a2 + 16) + 16))(*(a2 + 16), 8 * *&prime, 8);
                v51 = *a2;
                *a2 = v50;
                if (v51)
                {
                  std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *> *> *>>::deallocate[abi:ne200100](*(a2 + 16), v51, *(a2 + 8));
                }

                v52 = 0;
                *(a2 + 8) = prime;
                do
                {
                  *(*a2 + 8 * v52++) = 0;
                }

                while (*&prime != v52);
                v53 = *v66;
                if (*v66)
                {
                  v54 = v53[1];
                  v55 = vcnt_s8(prime);
                  v55.i16[0] = vaddlv_u8(v55);
                  if (v55.u32[0] > 1uLL)
                  {
                    if (v54 >= *&prime)
                    {
                      v54 %= *&prime;
                    }
                  }

                  else
                  {
                    v54 &= *&prime - 1;
                  }

                  *(*a2 + 8 * v54) = v66;
                  v59 = *v53;
                  if (*v53)
                  {
                    do
                    {
                      v60 = v59[1];
                      if (v55.u32[0] > 1uLL)
                      {
                        if (v60 >= *&prime)
                        {
                          v60 %= *&prime;
                        }
                      }

                      else
                      {
                        v60 &= *&prime - 1;
                      }

                      if (v60 != v54)
                      {
                        v61 = *a2;
                        if (!*(*a2 + 8 * v60))
                        {
                          *(v61 + 8 * v60) = v53;
                          goto LABEL_88;
                        }

                        *v53 = *v59;
                        *v59 = **(v61 + 8 * v60);
                        **(v61 + 8 * v60) = v59;
                        v59 = v53;
                      }

                      v60 = v54;
LABEL_88:
                      v53 = v59;
                      v59 = *v59;
                      v54 = v60;
                    }

                    while (v59);
                  }
                }
              }

              else
              {
                v62 = *a2;
                *a2 = 0;
                if (v62)
                {
                  std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *> *> *>>::deallocate[abi:ne200100](*(a2 + 16), v62, *(a2 + 8));
                }

                *(a2 + 8) = 0;
              }
            }
          }

          v30 = *(a2 + 8);
          if ((v30 & (v30 - 1)) != 0)
          {
            if (v35 >= v30)
            {
              v5 = v35 % v30;
            }

            else
            {
              v5 = v35;
            }
          }

          else
          {
            v5 = (v30 - 1) & v35;
          }
        }

        v63 = *a2;
        v64 = *(*a2 + 8 * v5);
        if (v64)
        {
          *v40 = *v64;
        }

        else
        {
          *v40 = *v66;
          *v66 = v40;
          *(v63 + 8 * v5) = v66;
          if (!*v40)
          {
            goto LABEL_113;
          }

          v65 = *(*v40 + 8);
          if ((v30 & (v30 - 1)) != 0)
          {
            if (v65 >= v30)
            {
              v65 %= v30;
            }
          }

          else
          {
            v65 &= v30 - 1;
          }

          v64 = (*a2 + 8 * v65);
        }

        *v64 = v40;
LABEL_113:
        ++*(a2 + 40);
        v29 = *a2;
        v30 = *(a2 + 8);
LABEL_114:
        v31 = std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::find<AMCP::DAL::AUParameterKey>(v29, v30, v9 + 4);
LABEL_115:
        caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>::push_back((v31 + 4), &v67);
      }

      result = std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v68);
      v9 = *v9;
    }

    while (v9);
  }

  return result;
}

void sub_1DE53B958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_arg(va1, void);
  v11 = 0;
  std::__hash_node_destructor<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *>>>::operator()[abi:ne200100](va1, v5);
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::find<AMCP::DAL::AUParameterKey>(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47)))) + 3864292196u;
  v7 = vcnt_s8(a2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47)))) + 3864292196u;
    if (v6 >= a2)
    {
      v8 = v6 % a2;
    }
  }

  else
  {
    v8 = v6 & (a2 - 1);
  }

  v9 = *(a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (*(result + 4) == v3 && *(result + 20) == __PAIR64__(v5, v4))
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= a2)
        {
          v11 %= a2;
        }
      }

      else
      {
        v11 &= a2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>::push_back(caulk::rt_safe_memory_resource *result, _OWORD *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 < v4)
  {
    *v5 = *a2;
    v6 = v5 + 1;
LABEL_16:
    *(v3 + 1) = v6;
    return result;
  }

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
  result = memcpy(v12 - v14, *v3, v14);
  v16 = *v3;
  *v3 = v15;
  *(v3 + 1) = v6;
  v17 = *(v3 + 2);
  *(v3 + 2) = v13;
  if (!v16)
  {
    goto LABEL_16;
  }

  if (v17 - v16 >= 0)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      result = caulk::rt_safe_memory_resource::rt_deallocate(result, v16);
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t std::__hash_node_destructor<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a2 + 32));
  }

  v4 = **a1;

  return std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *>>>::deallocate[abi:ne200100](v4, a2);
}

caulk::rt_safe_memory_resource *AMCP::DAL::AUParameter_Data_Handler::copy(uint64_t a1, double *a2, uint64_t *a3, double a4)
{
  v7 = *a3;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::AUParameter_Data_Handler>(*a3);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(v7 + 80);
  if (v10)
  {
    v11 = round(v8 - a4);
    v12 = round(v9 - a4);
    do
    {
      v14 = v10[4];
      v13 = v10[5];
      if (v14 != v13)
      {
        while (1)
        {
          v15 = round(*v14);
          if (v15 >= v11 && v15 < v12)
          {
            break;
          }

          v14 += 16;
          if (v14 == v13)
          {
            goto LABEL_21;
          }
        }

        if (v14 != v13)
        {
          v17 = v14 + 16;
          if (v14 + 16 != v13)
          {
            do
            {
              v18 = round(*v17);
              if (v18 < v11 || v18 >= v12)
              {
                v20 = *v17;
                *(v14 + 8) = *(v17 + 8);
                *v14 = v20;
                v14 += 16;
              }

              v17 += 16;
            }

            while (v17 != v13);
            v13 = v10[5];
          }
        }
      }

      if (v14 != v13)
      {
        v10[5] = v14;
      }

LABEL_21:
      v10 = *v10;
    }

    while (v10);
    v8 = *a2;
    v9 = a2[1];
  }

  v21 = *(a1 + 80);

  return AMCP::DAL::merge_values(v21, v7 + 56, v8, v9, a4);
}

void AMCP::DAL::AUParameter_Data_Handler::get_audio_buffer_list(void *a1@<X8>)
{
  *a1 = 0;
  a1[4] = 0;
}

{
  *a1 = 0;
  a1[4] = 0;
}

uint64_t AMCP::DAL::AUParameter_Data_Handler::reuse_container(uint64_t this)
{
  if (*(this + 96))
  {
    v1 = this;
    this = std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::__deallocate_node(this + 56, *(this + 80));
    v1[10] = 0;
    v2 = v1[8];
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(v1[7] + 8 * i) = 0;
      }
    }

    v1[12] = 0;
  }

  return this;
}

void AMCP::DAL::AUParameter_Data_Handler::adopt(AMCP::Log::AMCP_Scope_Registry *a1)
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
    v6 = "AUParameter_Data_Handler.cpp";
    v7 = 1024;
    v8 = 95;
    v9 = 2080;
    v10 = "false";
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s AUParameter_Data_Handler::adopt unsupported", &v5, 0x1Cu);
  }

  abort();
}

BOOL AMCP::DAL::AUParameter_Data_Handler::dal_operation_is_supported(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 3)
    {
      return 0;
    }

    a2 = *a2;
  }

  else if (v2 != 3)
  {
    return 0;
  }

  return *a2 == 26989 && *(a2 + 2) == 120;
}

void AMCP::DAL::AUParameter_Data_Handler::~AUParameter_Data_Handler(AMCP::DAL::AUParameter_Data_Handler *this)
{
  std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::~__hash_table(this + 56);

  JUMPOUT(0x1E12C1730);
}

{
  std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::~__hash_table(this + 56);
}

uint64_t boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::at(void *a1, int64_t a2)
{
  if (a1[4] <= a2)
  {
    std::logic_error::logic_error(&v5, "circular_buffer");
    v5.__vftable = (MEMORY[0x1E69E55B8] + 16);
    boost::throw_exception<std::out_of_range>(&v5);
  }

  v3 = a1[1];
  v2 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3)) <= a2)
  {
    a2 += 0x5555555555555555 * ((v3 - *a1) >> 3);
  }

  return v2 + 24 * a2;
}

void AMCP::Logging_Settings::instance(AMCP::Logging_Settings *this)
{
  {
    byte_1EE0132CC = 0;
    AMCP::Logging_Settings::instance(void)::s_instance = 0;
  }
}

void AMCP::Utility::Settings_Storage::at_as<applesauce::CF::BooleanRef,applesauce::CF::StringRef const&>(_BYTE *a1, uint64_t a2, const void **a3)
{
  std::mutex::lock((a2 + 16));
  v6 = *(a2 + 112);
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,applesauce::CF::StringRef const&>(a1, v6, *a3);

  std::mutex::unlock((a2 + 16));
}

uint64_t std::optional<applesauce::CF::BooleanRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t AMCP::DAL::Default_Data_Handler::get_data@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  result = AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Default_Data_Handler>(*a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Default_Data_Handler>(uint64_t result)
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
    v22 = "T *AMCP::DAL::Container::get_container_data_ptr() const [T = AMCP::DAL::Default_Data_Handler]";
    v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.h";
    v24 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v6);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE53C414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
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

void AMCP::DAL::Default_Data_Handler::dal_operation_apply(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v22 = *MEMORY[0x1E69E9840];
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
    *buf = 136315394;
    v16 = "Default_Data_Handler.cpp";
    v17 = 1024;
    v18 = 90;
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Default data handler does not support dal_operation_apply", buf, 0x12u);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v14);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string("Default data handler does not support dal_operation_apply", &v6);
  std::runtime_error::runtime_error(&v7, &v6);
  std::runtime_error::runtime_error(&v8, &v7);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = -1;
  v8.__vftable = &unk_1F5992170;
  v9 = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v8);
  v19 = "virtual Sample_Time_Range AMCP::DAL::Default_Data_Handler::dal_operation_apply(const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &, DAL_Operation_Context_Ref) const";
  v20 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Default_Data_Handler.cpp";
  v21 = 90;
  std::vector<void *>::vector[abi:ne200100](&v5);
}

void sub_1DE53C7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, std::runtime_error a23, void *a24)
{
  std::runtime_error::~runtime_error(v24);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  *(v26 - 128) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v26 - 120));
  std::runtime_error::~runtime_error((v26 - 144));
  a24 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v25 + 24));
  std::runtime_error::~runtime_error(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  __cxa_free_exception(v24);
  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 145));
  _Unwind_Resume(a1);
}

uint64_t *AMCP::DAL::Default_Data_Handler::get_ring_buffer_time_translator(AMCP::DAL::Default_Data_Handler *this)
{
  {
    AMCP::DAL::Default_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator = &unk_1F597A2A0;
  }

  return &AMCP::DAL::Default_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator;
}

void AMCP::DAL::Default_Data_Handler::mix(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v22 = *MEMORY[0x1E69E9840];
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
    *buf = 136315394;
    v16 = "Default_Data_Handler.cpp";
    v17 = 1024;
    v18 = 70;
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Default data handler does not support mixing", buf, 0x12u);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v14);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string("Default data handler does not support mixing", &v6);
  std::runtime_error::runtime_error(&v7, &v6);
  std::runtime_error::runtime_error(&v8, &v7);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = -1;
  v8.__vftable = &unk_1F5992170;
  v9 = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v8);
  v19 = "virtual void AMCP::DAL::Default_Data_Handler::mix(Sample_Time_Range, Container, Sample_Time, DAL_Operation_Context_Ref) const";
  v20 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Default_Data_Handler.cpp";
  v21 = 70;
  std::vector<void *>::vector[abi:ne200100](&v5);
}

void sub_1DE53CC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, std::runtime_error a23, void *a24)
{
  std::runtime_error::~runtime_error(v24);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  *(v26 - 128) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v26 - 120));
  std::runtime_error::~runtime_error((v26 - 144));
  a24 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v25 + 24));
  std::runtime_error::~runtime_error(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  __cxa_free_exception(v24);
  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 145));
  _Unwind_Resume(a1);
}

void *AMCP::DAL::Default_Data_Handler::copy(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Default_Data_Handler>(*a3) + 56);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64) - v5;

  return memcpy(v4, v5, v6);
}

void AMCP::DAL::Default_Data_Handler::get_audio_buffer_list(void *a1@<X8>)
{
  *a1 = 0;
  a1[4] = 0;
}

{
  *a1 = 0;
  a1[4] = 0;
}

void AMCP::DAL::Default_Data_Handler::adopt(AMCP::Log::AMCP_Scope_Registry *a1)
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
    v6 = "Default_Data_Handler.cpp";
    v7 = 1024;
    v8 = 39;
    v9 = 2080;
    v10 = "false";
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Default_Data_Handler::adopt unsupported", &v5, 0x1Cu);
  }

  abort();
}

void AMCP::DAL::Default_Data_Handler::~Default_Data_Handler(AMCP::DAL::Default_Data_Handler *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }
}

uint64_t AMCP::Graph::Null_Timebase::wait_for_time_to_start(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    (*(*v3[2] + 192))(&v8);
    v6 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v6)
    {
      break;
    }

    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  return (*(*v3[2] + 200))(v3[2], a2, a3);
}

uint64_t AMCP::Graph::Null_Timebase::get_anchor_time(AMCP::Graph::Null_Timebase *this)
{
  v1 = AMCP::Graph::Null_Timebase::demand_counter(this);
  AMCP::Graph::Manifest_Counter::get_anchor_time(v4, v1);
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return *&sample_time;
}

void sub_1DE53D068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Null_Timebase::demand_counter(AMCP::Graph::Null_Timebase *this)
{
  v3 = *(this + 6);
  v2 = *(this + 7);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (!v3)
  {
    std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v9, *(this + 1), *(this + 2));
    v5 = v9;
    v4 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HIBYTE(v8) = 0;
    *(this + 24) = 0;
    *(this + 5) = 0;
    *(this + 6) = v5;
    *(this + 25) = v8;
    v6 = *(this + 7);
    *(this + 7) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(this + 16) = 0;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  return this + 24;
}

void AMCP::Graph::Null_Timebase::get_state(AMCP::Graph::Null_Timebase *this@<X0>, AMCP::IO_Core::Play_State_Manager *a2@<X8>)
{
  os_unfair_lock_lock(this + 18);
  AMCP::IO_Core::Play_State_Manager::get_state_snapshot(a2, this + 10);

  os_unfair_lock_unlock(this + 18);
}

void AMCP::Graph::Null_Timebase::stop(uint64_t a1, int a2)
{
  os_unfair_lock_lock((a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(__p, "Null_Timebase");
  v4 = AMCP::IO_Core::Play_State_Manager::stop((a1 + 80), a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (!*(a1 + 88) && *(a1 + 96) && !*(a1 + 80))
  {
    *AMCP::Graph::Null_Timebase::demand_counter(a1) = 0;
    *(a1 + 96) = v4;
  }

  os_unfair_lock_unlock((a1 + 72));
}

void AMCP::Graph::Null_Timebase::advance_to_time(AMCP::Graph::Null_Timebase *a1, double a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Graph::Null_Timebase::demand_counter(a1);
  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(v23, v4);
  if (round(a2) < round(AMCP::DAL::DAL_Time::get_sample_time(v23)))
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
      *buf = 136315650;
      v26 = "Null_Timebase.cpp";
      v27 = 1024;
      v28 = 234;
      v29 = 2080;
      v30 = "not (target_time >= current.get_sample_time())";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v14);
    std::logic_error::logic_error(&v15, &v14);
    v15.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v31 = "virtual void AMCP::Graph::Null_Timebase::advance_to_time(Sample_Time)";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Timebase.cpp";
    v33 = 234;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(v23);
  v7 = AMCP::Graph::Null_Timebase::demand_counter(a1);
  AMCP::Graph::Manifest_Counter::advance(v7, a2 - sample_time);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE53D53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, char a28)
{
  v30 = *(v28 - 136);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

double AMCP::Graph::Null_Timebase::advance(AMCP::Graph::Null_Timebase *a1, double a2)
{
  v3 = AMCP::Graph::Null_Timebase::demand_counter(a1);

  return AMCP::Graph::Manifest_Counter::advance(v3, a2);
}

void AMCP::Graph::Null_Timebase::start(uint64_t a1, int a2)
{
  os_unfair_lock_lock((a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(&__p, "Null_Timebase");
  v4 = AMCP::IO_Core::Play_State_Manager::start((a1 + 80), a2, &__p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  v5 = *(a1 + 96);
  if (*(a1 + 88))
  {
    v6 = 1;
    if (v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = *(a1 + 80) != 0;
    if (v5)
    {
      goto LABEL_20;
    }
  }

  if (v6)
  {
    if (*(a1 + 100) == 1)
    {
      v7 = AMCP::Graph::Null_Timebase::demand_counter(a1);
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v11, *(a1 + 8), *(a1 + 16));
      LODWORD(__p) = 2;
      v13 = 0;
      v14 = 0;
      v15 = v11;
      v11 = 0uLL;
      AMCP::Graph::Manifest_Counter::start(v7, &__p);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }

      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
      }

      v8 = 0;
    }

    else
    {
      v9 = AMCP::Graph::Null_Timebase::demand_counter(a1);
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v10, *(a1 + 8), *(a1 + 16));
      LODWORD(__p) = 2;
      v13 = 0;
      v14 = 0;
      v15 = v10;
      v10 = 0uLL;
      AMCP::Graph::Manifest_Counter::start(v9, &__p);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }

      if (*(&v10 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
      }

      v8 = mach_absolute_time();
    }

    *(a1 + 128) = v8;
    *(a1 + 96) = v4;
  }

LABEL_20:
  os_unfair_lock_unlock((a1 + 72));
}

void sub_1DE53D794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  os_unfair_lock_unlock(v21 + 18);
  _Unwind_Resume(a1);
}

double AMCP::Graph::Null_Timebase::convert_host_to_sample_time(AMCP::Graph::Null_Timebase *this, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = a2;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = 2;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v5 = 1;
  AMCP::Graph::Null_Timebase::translate_time(this, v6, v3);
  return *v3;
}

void AMCP::Graph::Null_Timebase::translate_time(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 56) & 3) == 0)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "Null_Timebase.cpp";
      v37 = 1024;
      v38 = 84;
      v39 = 2080;
      v40 = "not ((inTime.mFlags & kAudioTimeStampSampleHostTimeValid) != 0)";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s TranslateTime has to have either sample time or host time valid on the input", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("TranslateTime has to have either sample time or host time valid on the input", &v26);
    std::logic_error::logic_error(&v27, &v26);
    v27.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v28, &v27);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5991430;
    v29 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v28);
    v41 = "void AMCP::Graph::Null_Timebase::translate_time(const CA::TimeStamp &, CA::TimeStamp &) const";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Timebase.cpp";
    v43 = 84;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = AMCP::Graph::Null_Timebase::demand_counter(a1);
  AMCP::Graph::Manifest_Counter::get_anchor_time(buf, v7);
  v8 = floor(AMCP::DAL::DAL_Time::get_sample_time(buf));
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v9 = v8;
  v10 = *(a3 + 56);
  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    v18 = *(a2 + 56);
    if ((v18 & 2) != 0)
    {
      v19 = *(a2 + 8);
    }

    else
    {
      if ((v18 & 1) == 0)
      {
        *(a3 + 8) = 0;
        if ((v10 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      v20 = *a2;
      if (*a2 >= v9)
      {
        v19 = v6 + vcvtad_u64_f64(v5 * (v20 - v9));
      }

      else
      {
        v19 = v6 - vcvtad_u64_f64(v5 * (v9 - v20));
      }
    }

    *(a3 + 8) = v19;
    if ((v10 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(a3 + 16) = 0x3FF0000000000000;
    goto LABEL_8;
  }

  v12 = *(a2 + 56);
  if (v12)
  {
    v13 = *a2;
  }

  else
  {
    v13 = 0.0;
    if ((v12 & 2) != 0)
    {
      v14 = *(a2 + 8);
      if (v14)
      {
        v15 = -(v6 - v14);
        v16 = v14 >= v6;
        v17 = v14 - v6;
        if (v16)
        {
          v15 = v17;
        }

        v13 = v15 / v5 + v9;
      }
    }
  }

  *a3 = v13;
  if ((v10 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v10 & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE53DBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  v29 = *(v27 - 96);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Null_Timebase::convert_sample_to_host_time(AMCP::Graph::Null_Timebase *this, double a2)
{
  v6 = a2;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v5 = 2;
  AMCP::Graph::Null_Timebase::translate_time(this, &v6, v3);
  return *(&v3[0] + 1);
}

double AMCP::Graph::Null_Timebase::get_last_zero_time_stamp@<D0>(AMCP::Graph::Null_Timebase *this@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Graph::Null_Timebase::demand_counter(this);
  if ((*v3 & 1) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v21 = "Null_Timebase.cpp";
      v22 = 1024;
      v23 = 51;
      v24 = 2080;
      v25 = "not (is_running())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Trying to get current time when clock is not running", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Trying to get current time when clock is not running", &v11);
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
    v26 = "virtual CA::TimeStamp AMCP::Graph::Null_Timebase::get_last_zero_time_stamp() const";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Timebase.cpp";
    v28 = 51;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
  }

  *a2 = 0u;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *&result = 7;
  *(a2 + 56) = 7;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE53DFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
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

void AMCP::Graph::Null_Timebase::get_current_time(AMCP::Graph::Null_Timebase *this@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Graph::Null_Timebase::demand_counter(this);
  if ((*v4 & 1) == 0)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315650;
      v25 = "Null_Timebase.cpp";
      v26 = 1024;
      v27 = 40;
      v28 = 2080;
      v29 = "not (is_running())";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Trying to get current time when clock is not running", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Trying to get current time when clock is not running", &v15);
    std::logic_error::logic_error(&v16, &v15);
    v16.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5991430;
    v18 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v17);
    v30 = "virtual CA::TimeStamp AMCP::Graph::Null_Timebase::get_current_time() const";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Timebase.cpp";
    v32 = 40;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v5 = AMCP::Graph::Null_Timebase::demand_counter(this);
  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(buf, v5);
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(buf);
  v7 = AMCP::Graph::Null_Timebase::demand_counter(this);
  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(&v17, v7);
  host_time = AMCP::DAL::DAL_Time::get_host_time(&v17);
  *a2 = vcvtmd_s64_f64(sample_time);
  *(a2 + 8) = host_time;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 7;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE53E360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  v33 = *(v31 - 96);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Null_Timebase::get_underlying_device_uid(AMCP::Graph::Null_Timebase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 175) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 19), *(this + 20));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 152);
    a2->__r_.__value_.__r.__words[2] = *(this + 21);
  }
}

void AMCP::Graph::Null_Timebase::~Null_Timebase(void **this)
{
  *this = &unk_1F59791B0;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  v2 = this[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59791B0;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  v2 = this[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1DE53E72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::Graph::Null_Timebase>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HostedDSP_StreamProcessor::StreamProcessInfo::StreamProcessInfo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 28) = 0;
  v6 = *(a4 + 112);
  if (*(a4 + 120) == v6 || v6 == 0)
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
      v14 = 136315394;
      v15 = "HostedDSP_StreamProcessor.cpp";
      v16 = 1024;
      v17 = 32;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] There is no device/engine assigned for this DSP stream.", &v14, 0x12u);
    }
  }

  else
  {
    *(a1 + 28) = *(v6 + 8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

caulk::rt_safe_memory_resource *HostedDSP_StreamProcessor::PerformIO_ProcessStream(_OWORD *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  if (*a1 == 1869968496)
  {
    HostedDSP_StreamProcessor::ProcessWithHostedDSP(a1);
    v9 = 0;
    v4 = HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor(a1, v8);
    std::__function::__value_func<BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::~__value_func[abi:ne200100](v8);
  }

  else
  {
    if (*a1 == 1768845428)
    {
      v2 = *a1;
      v7 = a1[1];
      if (*(*(a1 + 2) + 120) == *(*(a1 + 2) + 112))
      {
        v3 = 0;
      }

      else
      {
        v3 = *(*(a1 + 2) + 112);
      }

      if (!v3)
      {
        v10[0] = &unk_1F5979560;
        v10[1] = 0;
        v10[3] = v10;
        v4 = HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor(a1, v10);
        std::__function::__value_func<BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::~__value_func[abi:ne200100](v10);
        HostedDSP_StreamProcessor::ProcessWithHostedDSP(a1);
        goto LABEL_12;
      }

      if (*(v3 + 100) != 4)
      {
        operator new();
      }
    }

    v4 = 0;
  }

LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE53EE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostedDSP_StreamProcessor::ProcessWithHostedDSP(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 16);
    if (!*(v3 + 108) || ((v4 = *(v3 + 112), *(v3 + 120) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
    {
      v4 = (v3 + 456);
    }

    v6 = *v4;
    if (*(v6 + 88))
    {
      v7 = *(v6 + 388);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v3 + 112);
    v9 = *(v3 + 120);
    v10 = (v3 + 112);
    if (v8 != v9)
    {
      v11 = *(v3 + 280);
      v12 = *v11;
      if (v12 == (*(v3 + 288) - v11 - 8) >> 4)
      {
        v13 = v11 + 4;
        v14 = v12 + 1;
        while (--v14)
        {
          if (*(v8 + 104))
          {
            v15 = (v8 + 32);
          }

          else
          {
            v15 = (v8 + 16);
          }

          *v13 = *v15 + *(v8 + 48);
          *(v13 - 2) = *(v8 + 84);
          *(v13 - 1) = *(v8 + 80) * v1;
          v13 += 2;
          v8 += 128;
          if (v8 == v9)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        CAAssertRtn();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "accessing a CA::BufferList with an out-of-range index");
      __cxa_throw(exception, off_1E8672F68, MEMORY[0x1E69E5280]);
    }

LABEL_20:
    v16 = *(v3 + 304);
    *(v16 + 16) = *(v3 + 56) + v7;
    HALS_IODSPInfo::GetClientFormat(v27, (v3 + 112));
    *(v16 + 12) = v28 * v1;
    ClientFormat = HALS_IODSPInfo::GetClientFormat(v27, v10);
    *(v16 + 8) = v29;
    v18 = *(*(v2 + 2) + 280);
    v19 = (*(**(v2 + 1) + 120))(*(v2 + 1), ClientFormat);
    v20 = (*(**(v2 + 1) + 128))(*(v2 + 1));
    v21 = (*(**(v2 + 1) + 136))(*(v2 + 1));
    if (*v2 != 1768845428)
    {
      v19 = v20;
    }

    v22 = *(*(*(v2 + 2) + 168) + 28);
    v23 = *(v19 + 8);
    *v19;
    kdebug_trace();
    if (*v2 == 1869968496)
    {
      v25 = (*(**(v2 + 1) + 144))(*(v2 + 1));
      HALS_IOContextHostedDSP::ProcessStream(**v25, (*v25)[1], *v2 | (v2[7] << 32), *(*(v2 + 2) + 12), v2[6], v16, v18, v19, v21);
    }

    else if (*v2 == 1768845428)
    {
      v24 = (*(**(v2 + 1) + 144))(*(v2 + 1));
      HALS_IOContextHostedDSP::ProcessStream(**v24, (*v24)[1], *v2 | (v2[7] << 32), *(*(v2 + 2) + 12), v2[6], v18, v16, v19, v21);
    }

    return kdebug_trace();
  }

  return result;
}

caulk::rt_safe_memory_resource *HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 24);
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v5 = *(v4 + 112);
    v6 = *(v4 + 120);
    if (v5 != v6)
    {
      v7 = a2;
      v8 = 0;
      v49 = (a1 + 24);
      while (1)
      {
        v9 = *v5;
        v10 = *(*v5 + 88);
        if (v10)
        {
          v11 = *(v7 + 24);
          if (v11)
          {
            if (!(*(*v11 + 48))(v11, v5))
            {
              goto LABEL_56;
            }

            v9 = *v5;
          }

          v12 = *(v9 + 388);
          v13 = *(a1 + 16);
          v14 = *(v13 + 32);
          v15 = *(v13 + 40);
          if (v14)
          {
            v16 = (v14 + v12);
          }

          else
          {
            v16 = 0;
          }

          if (v15)
          {
            v17 = (v15 + v12);
          }

          else
          {
            v17 = 0;
          }

          if (*a1 == 1869968496)
          {
            if (v5[13])
            {
              v54 = *v2;
              v28 = *(v9 + 4 * *(v13 + 8) + 752);
              v53 = v28;
              v29 = 24;
              if (v16 | v17)
              {
                v29 = 48;
              }

              v30 = *(v13 + v29);
              if (*(v13 + 108))
              {
                ClientFormat = HALS_IODSPInfo::GetClientFormat(v50, (v13 + 112));
                v28 = v53;
              }

              else
              {
                ClientFormat = *(v13 + 416);
                v32 = *(v13 + 432);
                *v50 = ClientFormat;
                v51 = v32;
                v52 = *(v13 + 448);
              }

              if (v28 * DWORD2(v51) > v30)
              {
                v33 = *(a1 + 16);
                if (*(v33 + 108))
                {
                  HALS_IODSPInfo::GetClientFormat(v50, (v33 + 112));
                }

                else
                {
                  v34 = *(v33 + 432);
                  *v50 = *(v33 + 416);
                  v51 = v34;
                  v52 = *(v33 + 448);
                }

                v35 = v30 / DWORD2(v51);
                v53 = v30 / DWORD2(v51);
                v36 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v37)
                {
                  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                result = *MEMORY[0x1E69E3C08];
                if (!*MEMORY[0x1E69E3C08])
                {
                  __break(1u);
                  return result;
                }

                v48 = *(v36 + 8);
                v39 = caulk::rt_safe_memory_resource::rt_allocate(result);
                *(v39 + 16) = 0;
                *(v39 + 20) = 16;
                *(v39 + 24) = "HostedDSP_StreamProcessor.cpp";
                *(v39 + 32) = 253;
                *(v39 + 36) = v28;
                *(v39 + 40) = v35;
                *v39 = &unk_1F5979368;
                *(v39 + 8) = 0;
                caulk::concurrent::messenger::enqueue(v48, v39);
                v7 = a2;
                if (v37)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
                }
              }

              v40 = v5[2];
              if (v40)
              {
                v41 = (v40 + v12);
              }

              else
              {
                v41 = 0;
              }

              v42 = v5[4];
              if (v42)
              {
                v43 = (v42 + v12);
              }

              else
              {
                v43 = 0;
              }

              ClientFormat.n128_u64[0] = *(*v5 + 656);
              HALS_IOProcessor::Process(v5[13], ClientFormat, v41, &v54, v43, &v53, v16, v17);
              v2 = v49;
            }

            v44 = (*(**(a1 + 8) + 112))(*(a1 + 8));
            v45 = v5[2];
            if (v45)
            {
              v46 = v45 + v12;
            }

            else
            {
              v46 = 0;
            }

            v8 = (*(*v10 + 864))(v10, v44, *(v5 + 24), *v5, v46, *(a1 + 24));
          }

          else if (*a1 == 1768845428)
          {
            v50[0] = *(v9 + 4 * *(v13 + 8) + 752);
            v18 = (*(**(a1 + 8) + 112))(*(a1 + 8));
            v19 = v5[2];
            v20 = v19 ? v19 + v12 : 0;
            v8 = (*(*v10 + 856))(v10, v18, *(v5 + 24), *v5, v20, v50[0]);
            v22 = v5[13];
            if (v22)
            {
              if (v5[14])
              {
                v23 = (*(a1 + 16) + 56);
              }

              else
              {
                v23 = v5 + 4;
              }

              v24 = *v23;
              if (v24)
              {
                v25 = (v24 + v12);
              }

              else
              {
                v25 = 0;
              }

              v26 = v5[2];
              if (v26)
              {
                v27 = (v26 + v12);
              }

              else
              {
                v27 = 0;
              }

              v21.n128_u64[0] = *(*v5 + 592);
              HALS_IOProcessor::Process(v22, v21, v25, v2, v27, v50, v16, v17);
            }
          }
        }

LABEL_56:
        v5 += 16;
        if (v5 == v6)
        {
          return v8;
        }
      }
    }
  }

  return 0;
}

uint64_t std::__function::__value_func<BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t caulk::concurrent::details::rt_message_call<HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor(HostedDSP_StreamProcessor::StreamProcessInfo &,std::function<BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>)::$_1,std::tuple<char const*,int,unsigned int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor clipped amount processed from:%u to:%u", &v12, 0x1Eu);
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

void caulk::concurrent::details::rt_message_call<HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor(HostedDSP_StreamProcessor::StreamProcessInfo &,std::function<BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>)::$_1,std::tuple<char const*,int,unsigned int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HostedDSP_StreamProcessor26ProcessInputStreamsWithDSPERNS_17StreamProcessInfoEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 124);
  v5 = *(a2 + 120);
  v6 = *(*a2 + 88);
  v7 = v6 && (*(*v6 + 696))(v6) && *(*(*a2 + 368) + 96) != 0;
  return (v3 == a2) & ((v5 == 0) | ~v4) | v7;
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5979560;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_2,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_2>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HostedDSP_StreamProcessor26ProcessInputStreamsWithDSPERNS_17StreamProcessInfoEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_2,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_2>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59794E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HostedDSP_StreamProcessor26ProcessInputStreamsWithDSPERNS_17StreamProcessInfoEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(*a2 + 88);
  v5 = v4 && (*(*v4 + 696))(v4) && *(*(*a2 + 368) + 96) != 0;
  return (v3 != a2) & v5;
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5979450;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0>,void ()(AudioBufferList *,AudioBufferList *,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HostedDSP_StreamProcessor26ProcessInputStreamsWithDSPERNS_17StreamProcessInfoEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0>,void ()(AudioBufferList *,AudioBufferList *,unsigned int)>::operator()(uint64_t a1, unsigned int **a2, unsigned int **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v7 = (*(**(a1 + 16) + 128))(*(a1 + 16));
  v8 = (*(**(a1 + 16) + 136))(*(a1 + 16));
  if (*(a1 + 8) != 1768845428)
  {
    v6 = v7;
  }

  v9 = (*(**(a1 + 16) + 144))(*(a1 + 16));
  HALS_IOContextHostedDSP::ProcessStream(**v9, (*v9)[1], *(a1 + 8) | (*(a1 + 36) << 32), *(*(a1 + 24) + 12), *(a1 + 32), v4, v5, v6, v8);
}

__n128 std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0>,void ()(AudioBufferList *,AudioBufferList *,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59793C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t AMCP::DAL::Synchronized_Mixer::add_emission_handler(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v10 = v9;
      (*(*v3 + 24))(v3, v9);
    }

    else
    {
      v10 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v10 = 0;
  }

  v4 = a1 + 120;
  if ((a1 + 120) != v9)
  {
    v5 = v10;
    v6 = *(a1 + 144);
    if (v10 == v9)
    {
      if (v6 == v4)
      {
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = 0;
        (*(**(a1 + 144) + 24))(*(a1 + 144), v9);
        (*(**(a1 + 144) + 32))(*(a1 + 144));
        *(a1 + 144) = 0;
        v10 = v9;
        (*(v11[0] + 24))(v11, a1 + 120);
        (*(v11[0] + 32))(v11);
      }

      else
      {
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = *(a1 + 144);
      }

      *(a1 + 144) = v4;
    }

    else if (v6 == v4)
    {
      (*(*v6 + 24))(*(a1 + 144), v9);
      (*(**(a1 + 144) + 32))(*(a1 + 144));
      *(a1 + 144) = v10;
      v10 = v9;
    }

    else
    {
      v10 = *(a1 + 144);
      *(a1 + 144) = v5;
    }
  }

  result = std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__value_func[abi:ne200100](v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE54014C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::DAL::Synchronized_Mixer::remove_source(AMCP::Log::AMCP_Scope_Registry *a1, unsigned int *a2, int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      *&buf[4] = "Synchronized_Mixer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 54;
      *&buf[18] = 2080;
      *&buf[20] = "not (buffer_alignment == Buffer_Alignment::Aligned_For_Output)";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronized_Mixer has a source that's input aligned", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Synchronized_Mixer has a source that's input aligned", &v24);
    std::logic_error::logic_error(&v25, &v24);
    v25.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v25);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v38 = "virtual BOOL AMCP::DAL::Synchronized_Mixer::remove_source(const Source_ID &, Buffer_Alignment)";
    *&v39 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronized_Mixer.cpp";
    DWORD2(v39) = 54;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
  }

  v4 = *(a1 + 13);
  os_unfair_lock_lock(v4);
  if (!std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2))
  {
    goto LABEL_33;
  }

  v5 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2);
  if (!v5)
  {
    goto LABEL_43;
  }

  v6 = *(v5 + 28);
  v7 = __OFSUB__(v6--, 1);
  *(v5 + 28) = v6;
  if (!((v6 < 0) ^ v7 | (v6 == 0)))
  {
    goto LABEL_33;
  }

  v8 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2);
  if (!v8)
  {
LABEL_43:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *(v8 + 200) = 1;
  v9 = *(v4 + 24);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      AMCP::DAL::Synchronizer_Source::get_source_id(buf, (v9 + 8));
      has_pending_range = AMCP::DAL::Synchronizer::_has_pending_range(v4, buf);
      v12 = has_pending_range;
      if ((buf[31] & 0x80000000) != 0)
      {
        operator delete(*&buf[8]);
        if (v12)
        {
LABEL_13:
          *buf = *(v9 + 15);
          v13 = v9[18];
          *&buf[16] = v9[17];
          *&buf[24] = v13;
          v14 = v9[19];
          v38 = v14;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v39 = *(v9 + 10);
          v15 = v9[23];
          v40 = v9[22];
          v16 = v9[24];
          v41 = v15;
          v42 = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::DAL::Synchronizer::_get_latest_common_pending_time(v27, v4);
          AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v30, (v4 + 104), v27);
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          if (AMCP::DAL::DAL_Time::operator<(&v30, &v34))
          {
            AMCP::DAL::Synchronizer_Source::get_source_id(v27, (v9 + 8));
            AMCP::DAL::Synchronizer::_emit(v4, v27, &v30);
            if (v28 < 0)
            {
              operator delete(v27[1]);
            }

            v10 = 1;
          }

          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }
        }
      }

      else if (has_pending_range)
      {
        goto LABEL_13;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v10 = 0;
LABEL_34:
  AMCP::DAL::Synchronizer::_sweep_and_remove_sources(v4);
  os_unfair_lock_unlock(v4);
  v17 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

void AMCP::DAL::Synchronized_Mixer::add_source(AMCP::Log::AMCP_Scope_Registry *a1, unsigned int *a2, int a3)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      *v50 = "Synchronized_Mixer.cpp";
      *&v50[8] = 1024;
      *&v50[10] = 48;
      *&v50[14] = 2080;
      *&v50[16] = "not (buffer_alignment == Buffer_Alignment::Aligned_For_Output)";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronized_Mixer has a source that's input aligned", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Synchronized_Mixer has a source that's input aligned", &v34);
    std::logic_error::logic_error(&v40, &v34);
    v40.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(v71, &v40);
    *&v73[10] = 0;
    v74 = 0;
    v75 = 0;
    v76 = -1;
    *v71 = &unk_1F5991430;
    *&v73[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v71);
    v51 = "virtual void AMCP::DAL::Synchronized_Mixer::add_source(const Source_ID &, Buffer_Alignment)";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronized_Mixer.cpp";
    v53 = 48;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  v4 = *(a1 + 13);
  os_unfair_lock_lock(v4);
  if (std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2))
  {
    v5 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2);
    if (*(v5 + 200) == 1)
    {
      *(v5 + 200) = 0;
    }

    goto LABEL_51;
  }

  data = *a2;
  LODWORD(v34.__r_.__value_.__l.__data_) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v34.__r_.__value_.__r.__words[1], *(a2 + 1), *(a2 + 2));
    data = v34.__r_.__value_.__l.__data_;
  }

  else
  {
    *&v34.__r_.__value_.__r.__words[1] = *(a2 + 2);
    v35 = *(a2 + 3);
  }

  v36 = *(a2 + 4);
  v37 = a2[10];
  *buf = data;
  v7 = SHIBYTE(v35);
  if (SHIBYTE(v35) < 0)
  {
    std::string::__init_copy_ctor_external(&v50[4], v34.__r_.__value_.__l.__size_, v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    *&v50[4] = *&v34.__r_.__value_.__r.__words[1];
    *&v50[20] = v35;
  }

  v51 = v36;
  LODWORD(v52) = v37;
  v53 = 0;
  v8 = AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v54, (v4 + 48));
  v57 = 0;
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v58 = 1;
  v59 = 0;
  v60 = 0;
  v61 = v9;
  v62 = 0;
  v63 = 0;
  v66 = 0;
  v11 = *(v4 + 48);
  v12 = *(v4 + 56);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v67 = 1;
  v69 = 0;
  v68 = 0;
  v70 = v11;
  if (!*(v4 + 48))
  {
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v33 = *v32;
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    else
    {
      v33 = *v32;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v71 = 136315650;
      *&v71[4] = "Synchronizer.cpp";
      v72 = 1024;
      *v73 = 27;
      *&v73[4] = 2080;
      *&v73[6] = "not (timebase)";
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v71, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v40);
    std::logic_error::logic_error(&v41, &v40);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5991430;
    v43 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v71, &v42);
    v74 = "AMCP::DAL::Synchronizer_Source::Synchronizer_Source(Source_ID, const Timebase_Ref &)";
    v75 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    v76 = 27;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  if (v7 < 0)
  {
    operator delete(v34.__r_.__value_.__l.__size_);
  }

  v13 = 0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * *a2) ^ ((0xC6A4A7935BD1E995 * *a2) >> 47)) + 3864292196u;
  v14 = std::hash<AMCP::Terminal_Identifier>::operator()((a2 + 2));
  v15 = (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v14) ^ ((0xC6A4A7935BD1E995 * v14) >> 47))) ^ v13;
  v16 = 3864292196u - 0x395B586CA42E166BLL * v15;
  v17 = *(v4 + 16);
  if (!*&v17)
  {
    goto LABEL_35;
  }

  v18 = vcnt_s8(v17);
  v18.i16[0] = vaddlv_u8(v18);
  v19 = v18.u32[0];
  if (v18.u32[0] > 1uLL)
  {
    v20 = 3864292196u - 0x395B586CA42E166BLL * v15;
    if (v16 >= *&v17)
    {
      v20 = v16 % *&v17;
    }
  }

  else
  {
    v20 = v16 & (*&v17 - 1);
  }

  v21 = *(*(v4 + 8) + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_35:
    operator new();
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 == v16)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v23 >= *&v17)
      {
        v23 %= *&v17;
      }
    }

    else
    {
      v23 &= *&v17 - 1;
    }

    if (v23 != v20)
    {
      goto LABEL_35;
    }

LABEL_34:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  if (!std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>::operator()[abi:ne200100](v22 + 4, a2))
  {
    goto LABEL_34;
  }

  if (*(&v70 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
  }

  if (v66 == 1)
  {
    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }
  }

  if (*(&v61 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v61 + 1));
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if ((v50[27] & 0x80000000) != 0)
  {
    operator delete(*&v50[4]);
  }

LABEL_51:
  v24 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2);
  if (!v24)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  ++*(v24 + 28);
  os_unfair_lock_unlock(v4);
  v25 = *MEMORY[0x1E69E9840];
}

void sub_1DE541328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (*(v38 + 47) < 0)
  {
    operator delete(*(v38 + 24));
  }

  std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>>>>::~unique_ptr[abi:ne200100](v39 - 176);
  AMCP::DAL::Synchronizer_Source::~Synchronizer_Source(&a37);
  os_unfair_lock_unlock(v37);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Synchronized_Mixer::get_direct_write_ranges(os_unfair_lock_s *this@<X0>, const AMCP::DAL::DAL_Time_Range *a2@<X1>, void *a3@<X8>)
{
  os_unfair_lock_lock(this + 38);
  AMCP::DAL::Mixing_Ring_Buffer::get_direct_write_ranges(this, a2, a3);

  os_unfair_lock_unlock(this + 38);
}

void AMCP::DAL::Synchronized_Mixer::commit_direct_write(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 152));
  AMCP::DAL::Ring_Buffer_Base::commit_direct_write(a1, v6, a3);
  os_unfair_lock_unlock((a1 + 152));
  v7 = *(a1 + 104);

  AMCP::DAL::Synchronizer::receive_data(v7, a2, a3 + 16);
}

void AMCP::DAL::Synchronized_Mixer::reset_time(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 104);
  os_unfair_lock_lock(v4);
  if (std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2))
  {
    v5 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2);
    if (!v5)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v6 = v5;
    v7 = *(v5 + 23);
    v8 = v5[47];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      *(&v26 + 1) = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      *(&v26 + 1) = 0;
    }

    *&v26 = v7;
    v27 = 2;
    v28 = 0;
    v29 = 0;
    v9 = *(&v26 + 1);
    v30 = v26;
    v26 = 0uLL;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v9;
    v22 = 2;
    v23 = 0;
    v24 = 0;
    v21 = v7;
    v25 = v7;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v31, &v27, &v22);
    *(v6 + 15) = v31;
    v6[17] = v32;
    v11 = v33;
    v33 = 0uLL;
    v12 = v6[19];
    *(v6 + 9) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    *(v6 + 10) = v34;
    v6[22] = v35;
    v13 = v36;
    v36 = 0uLL;
    v14 = v6[24];
    *(v6 + 23) = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if (*(&v36 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
      }
    }

    if (*(&v33 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }

    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(v6 + 86) = 2;
    *(v6 + 91) = 0;
    *(v6 + 356) = 0;
    *(v6 + 348) = 0;
    v15 = v6[47];
    *(v6 + 23) = v21;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  *&v16 = *(v4 + 48);
  v17 = *(v4 + 56);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = *(v4 + 56);
    LODWORD(v31) = 2;
    *(&v31 + 1) = 0;
    v32 = 0;
    v33 = v18;
    *&v16 = *(v4 + 48);
    *(&v16 + 1) = v19;
    v20 = v19 == 0;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v19 = 0;
    LODWORD(v31) = 2;
    *(&v31 + 1) = 0;
    v32 = 0;
    v33 = v16;
    v20 = 1;
    *(&v16 + 1) = 0;
  }

  v27 = 2;
  v28 = 0;
  v29 = 0;
  v30 = v16;
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::set(v4 + 64, &v31, &v27);
  if (!v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  os_unfair_lock_unlock(v4);
  os_unfair_lock_lock((a1 + 152));
  AMCP::DAL::Ring_Buffer_Base::reset_time(a1);

  os_unfair_lock_unlock((a1 + 152));
}

void sub_1DE541880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  os_unfair_lock_unlock(v18);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Synchronized_Mixer::set_nominal_buffer_size(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = *(a1 + 104);
  os_unfair_lock_lock(v5);
  if (std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v5 + 8), a2))
  {
    v6 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v5 + 8), a2);
    if (!v6)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    *(v6 + 52) = *a3;
    v6[27] = *(a3 + 8);
    v7 = *(a3 + 24);
    v6[28] = *(a3 + 16);
    v8 = *(a3 + 32);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6[30];
    v6[29] = v7;
    v6[30] = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  os_unfair_lock_unlock(v5);
}

void AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(uint64_t a1, int *a2, __int128 *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v23 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v24 = *(a2 + 2);
  }

  v25 = *(a2 + 4);
  v26 = a2[10];
  v27 = *a3;
  v6 = *(a3 + 3);
  v28 = *(a3 + 2);
  v29 = v6;
  v7 = *(a3 + 4);
  v30 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v31 = *(a3 + 40);
  v8 = *(a3 + 8);
  v32 = *(a3 + 7);
  v33 = v8;
  v9 = *(a3 + 9);
  v34 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 104);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v24;
  }

  v12 = v25;
  v13 = v26;
  v14 = v27;
  v15 = v28;
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = v31;
  v19 = v32;
  v20 = v8;
  v21 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v35 = 0;
  operator new();
}

void sub_1DE5422AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, char a58, uint64_t a59, char a60)
{
  operator delete(v60);
  AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0::~$_0(&a11);
  AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0::~$_0(&a28);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL18Synchronized_Mixer39set_anchor_time_and_nominal_buffer_sizeERKNS0_9Source_IDERKNS0_14DAL_Time_RangeE16Buffer_AlignmentE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  os_unfair_lock_lock(v2 + 38);
  AMCP::DAL::Ring_Buffer_Base::set_anchor_time_and_nominal_buffer_size(v2, v3, a1 + 64);

  os_unfair_lock_unlock(v2 + 38);
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::destroy_deallocate(char *__p)
{
  v2 = *(__p + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(__p + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (__p[47] < 0)
  {
    operator delete(*(__p + 3));
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5979750;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v5 = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 24) = v5;
  }

  v6 = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 48) = v6;
  v7 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 64) = v7;
  v8 = *(a1 + 96);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v9;
  v10 = *(a1 + 136);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 136) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5979750;
  v2 = *(a1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5979750;
  v2 = *(a1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AMCP::DAL::Synchronized_Mixer::reuse(AMCP::DAL::Synchronized_Mixer *this)
{
  v1 = *(this + 13);
  os_unfair_lock_lock(v1);
  for (i = *(v1 + 24); i; i = *i)
  {
    std::__optional_destruct_base<AMCP::DAL::DAL_Time_Range,false>::reset[abi:ne200100]((i + 32));
  }

  os_unfair_lock_unlock(v1);
}

uint64_t AMCP::DAL::Ring_Buffer_Base::get_time_range@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 8);
  v2 = *(this + 32);
  *(a2 + 16) = *(this + 24);
  *(a2 + 24) = v2;
  v3 = *(this + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(this + 48);
  v4 = *(this + 72);
  *(a2 + 56) = *(this + 64);
  *(a2 + 64) = v4;
  v5 = *(this + 80);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AMCP::DAL::Synchronized_Mixer::receive_data(uint64_t a1, unsigned int *a2, void *a3)
{
  os_unfair_lock_lock((a1 + 152));
  AMCP::DAL::Mixing_Ring_Buffer::receive_data(a1, v6, a3);
  os_unfair_lock_unlock((a1 + 152));
  v7 = *(a1 + 104);

  AMCP::DAL::Synchronizer::receive_data(v7, a2, a3);
}

void AMCP::DAL::Synchronized_Mixer::~Synchronized_Mixer(AMCP::DAL::Synchronized_Mixer *this)
{
  AMCP::DAL::Synchronized_Mixer::~Synchronized_Mixer(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59795E0;
  std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__value_func[abi:ne200100](this + 120);
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5984D48;
  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(uint64_t a1, const CA::StreamDescription *a2, const AMCP::DAL::DAL_Time_Delta *a3, void *a4)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v6 = AMCP::DAL::Ring_Buffer_Base::Ring_Buffer_Base(a1, a2, a3);
  *v6 = &unk_1F59795E0;
  v8 = *a4;
  v7 = a4[1];
  *(v6 + 13) = *a4;
  *(v6 + 14) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 104);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v34[0] = &unk_1F59796C0;
  v34[1] = a1;
  v34[3] = v34;
  v10 = v8[19];
  v9 = v8[20];
  if (v10 >= v9)
  {
    v12 = v8[18];
    v13 = (v10 - v12) >> 5;
    if ((v13 + 1) >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v14 = v9 - v12;
    v15 = v14 >> 4;
    if (v14 >> 4 <= (v13 + 1))
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v33 = v8 + 18;
    if (v16)
    {
      if (!(v16 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v30 = 0;
    v31 = 32 * v13;
    std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::__value_func[abi:ne200100](32 * v13, v34);
    v32 = (32 * v13 + 32);
    v17 = v8[18];
    v18 = v8[19];
    v19 = v31 + v17 - v18;
    if (v17 == v18)
    {
LABEL_24:
      v25 = v8[18];
      v8[18] = v19;
      v26 = v8[20];
      v29 = v32;
      *(v8 + 19) = v32;
      *&v32 = v25;
      *(&v32 + 1) = v26;
      v30 = v25;
      v31 = v25;
      std::__split_buffer<std::function<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>>::~__split_buffer(&v30);
      v11 = v29;
      goto LABEL_25;
    }

    v20 = (v17 + 24);
    v21 = v31 + v17 - v18;
    while (1)
    {
      v22 = *v20;
      if (*v20)
      {
        if (v20 - 3 == v22)
        {
          *(v21 + 24) = v21;
          (*(**v20 + 24))(*v20, v21);
          goto LABEL_22;
        }

        *(v21 + 24) = v22;
        v23 = v20;
      }

      else
      {
        v23 = (v21 + 24);
      }

      *v23 = 0;
LABEL_22:
      v21 += 32;
      v24 = v20 + 1;
      v20 += 4;
      if (v24 == v18)
      {
        do
        {
          std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](v17);
          v17 += 32;
        }

        while (v17 != v18);
        goto LABEL_24;
      }
    }
  }

  std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::__value_func[abi:ne200100](v8[19], v34);
  v11 = v10 + 32;
  v8[19] = v10 + 32;
LABEL_25:
  v8[19] = v11;
  std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](v34);
  v27 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE542C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::__split_buffer<std::function<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>>::~__split_buffer(va);
  std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__value_func[abi:ne200100](v3 + 120);
  v5 = *(v3 + 14);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  AMCP::DAL::Ring_Buffer_Base::~Ring_Buffer_Base(v3);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Ring_Buffer_Base::~Ring_Buffer_Base(AMCP::DAL::Ring_Buffer_Base *this)
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

uint64_t std::__function::__func<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL18Synchronized_MixerC1ERKN2CA17StreamDescriptionERKNS0_14DAL_Time_DeltaERKNSt3__110shared_ptrINS0_12SynchronizerEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 144))
  {
    v30 = 0u;
    memset(v29, 0, sizeof(v29));
    os_unfair_lock_lock((v3 + 152));
    (*(*v3 + 72))(&v15, v3);
    v29[0] = v15;
    *(&v29[1] + 8) = v17;
    *(&v29[2] + 8) = v18;
    *&v29[1] = v16;
    *(&v29[3] + 1) = v19;
    v30 = v20;
    os_unfair_lock_unlock((v3 + 152));
    if (AMCP::DAL::DAL_Time::operator<(v29, (&v29[2] + 8)))
    {
      caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(&v15, a3, v29);
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v21, &v15);
      if (*(&v20 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
      }

      if (*(&v17 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
      }

      v7 = v21;
      v8 = v22;
      v9 = v23;
      v10 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v25;
      v12 = v26;
      v13 = v27;
      v14 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::DAL::Ring_Buffer_Base::create_readable_range(v3, &v7, &v15);
      v6 = *(v3 + 144);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v6 + 48))(v6, a2, &v15);
      if (*(&v20 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
      }

      if (*(&v17 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }
    }

    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    if (*&v29[2])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v29[2]);
    }
  }
}

void sub_1DE542FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a9);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a31);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v31 - 128));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59796C0;
  a2[1] = v2;
  return result;
}

CFMutableDictionaryRef HALB_UCObject::Release(HALB_UCObject *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 2) = 0;
  }

  return CACFDictionary::SetCFMutableDictionaryToEmpty((this + 16));
}

CFMutableDictionaryRef CACFDictionary::SetCFMutableDictionaryToEmpty(CACFDictionary *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }

  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  *this = result;
  *(this + 4) = 257;
  return result;
}

uint64_t HALB_UCObject::Retain(HALB_UCObject *this)
{
  result = *(this + 2);
  if (result)
  {
    return IOObjectRetain(result);
  }

  return result;
}

void HALB_UCObject::CacheProperties(HALB_UCObject *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(this + 33) & 1) == 0)
  {
    v2 = *(this + 2);
    if (v2)
    {
      if (*(this + 32) == 1)
      {
        properties = 0;
        v3 = IORegistryEntryCreateCFProperties(v2, &properties, 0, 0);
        if (v3)
        {
          v5 = v3;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v9 = "HALB_UCObject.cpp";
            v10 = 1024;
            v11 = 444;
            v12 = 1024;
            v13 = v5;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::CacheProperties: failed to get the properties from the IO Registry, Error: 0x%X", buf, 0x18u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          exception[2] = v5;
        }

        CACFDictionary::SetCFMutableDictionaryFromCopy((this + 16), properties);
        if (properties)
        {
          CFRelease(properties);
        }

        *(this + 32) = 0;
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void HALB_UCObject::~HALB_UCObject(HALB_UCObject *this)
{
  HALB_UCObject::~HALB_UCObject(this);

  JUMPOUT(0x1E12C1730);
}

{
  v2 = &unk_1F59797D0;
  *this = &unk_1F59797D0;
  v3 = *(this + 3);
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 3) = 0;
    v2 = *this;
  }

  v2[5](this);
  CACFDictionary::~CACFDictionary((this + 16));
}

BOOL HALB_UCObject::HasProperty(HALB_UCObject *this, const __CFString *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  properties = 0;
  if (*(this + 33))
  {
    v4 = IORegistryEntryCreateCFProperties(*(this + 2), &properties, 0, 0);
    if (v4)
    {
      v10 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALB_UCObject.cpp";
        v14 = 1024;
        v15 = 174;
        v16 = 1024;
        v17 = v10;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::CopyProperties: failed to get the properties from the IO Registry, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v10;
    }

    v5 = properties;
    if (!properties)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (*(*this + 24))(this);
    v6 = *(this + 2);
    if (!v6 || (CFRetain(v6), (v5 = *(this + 2)) == 0))
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }
  }

  *buf = v5;
  *&buf[8] = 1;
  v7 = CFDictionaryContainsKey(v5, a2) != 0;
  CACFDictionary::~CACFDictionary(buf);
LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1DE54352C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE5433D0);
  }

  _Unwind_Resume(a1);
}

BOOL HALB_UCObject::CopyProperty_CFType(const __CFDictionary **this, CFStringRef key, const void **a3)
{
  if ((*(this + 33) & 1) == 0)
  {
    (*(*this + 3))(this);
    v8 = this[2];
    if (v8)
    {
      Value = CFDictionaryGetValue(v8, key);
      *a3 = Value;
      v7 = Value != 0;
      if (!Value)
      {
        return v7;
      }
    }

    else
    {
      v7 = 0;
      Value = *a3;
      if (!*a3)
      {
        return v7;
      }
    }

    CFRetain(Value);
    return v7;
  }

  CFProperty = IORegistryEntryCreateCFProperty(*(this + 2), key, 0, 0);
  *a3 = CFProperty;
  return CFProperty != 0;
}

void sub_1DE543630(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE54361CLL);
}

void HALB_UCObject::CopyProperty_UInt32(const __CFDictionary **this, const __CFString *a2, unsigned int *a3)
{
  cf = 0;
  if (HALB_UCObject::CopyProperty_CFType(this, a2, &cf))
  {
    v4 = cf;
    v5 = CFGetTypeID(cf);
    if (v5 == CFNumberGetTypeID())
    {
      v7 = v4;
      v8 = 0;
      valuePtr = 0;
      if (v4)
      {
        CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
        v6 = valuePtr;
      }

      else
      {
        v6 = 0;
      }

      *a3 = v6;
      CACFNumber::~CACFNumber(&v7);
    }

    CFRelease(v4);
  }
}

BOOL HALB_UCObject::CopyProperty_CFString(const __CFDictionary **this, const __CFString *a2, const __CFString **a3)
{
  cf = 0;
  result = HALB_UCObject::CopyProperty_CFType(this, a2, &cf);
  if (result)
  {
    v5 = cf;
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      *a3 = v5;
      return 1;
    }

    else
    {
      CFRelease(v5);
      return 0;
    }
  }

  return result;
}

BOOL HALB_UCObject::CopyProperty_CFArray(const __CFDictionary **this, const __CFString *a2, const __CFArray **a3)
{
  cf = 0;
  result = HALB_UCObject::CopyProperty_CFType(this, a2, &cf);
  if (result)
  {
    v5 = cf;
    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      *a3 = v5;
      return 1;
    }

    else
    {
      CFRelease(v5);
      return 0;
    }
  }

  return result;
}

uint64_t CACFArray::operator=(uint64_t a1, const void *a2)
{
  if (*(a1 + 8))
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
      v5 = *(a1 + 8);
      *a1 = a2;
      *(a1 + 9) = 0;
      if ((v5 & 1) == 0)
      {
        return a1;
      }
    }

    else
    {
      *a1 = a2;
      *(a1 + 9) = 0;
    }

    CFRetain(a2);
  }

  else
  {
    *a1 = a2;
    *(a1 + 9) = 0;
  }

  return a1;
}

void HALB_UCObject::SetProperty_SInt32(HALB_UCObject *this, const __CFString *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = 1;
  v3 = IORegistryEntrySetCFProperty(*(this + 2), @"exclusive access owner", v7);
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      valuePtr = 136315650;
      v10 = "HALB_UCObject.cpp";
      v11 = 1024;
      v12 = 410;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::SetProperty: got an error from the IORegistry, Error: 0x%X", &valuePtr, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  CACFNumber::~CACFNumber(&v7);
  v4 = *MEMORY[0x1E69E9840];
}

void HALB_UCObject::CopyProperty_BOOL(HALB_UCObject *this, const __CFString *a2, const __CFString *a3, BOOL *a4)
{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = CFGetTypeID(CFProperty);
    if (v7 == CFBooleanGetTypeID())
    {
      LOBYTE(a3->isa) = CFBooleanGetValue(v6) != 0;
    }

    else
    {
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        v9 = v6;
        v10 = 0;
        valuePtr = 0;
        CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
        LOBYTE(a3->isa) = valuePtr != 0;
        CACFNumber::~CACFNumber(&v9);
      }
    }

    CFRelease(v6);
  }
}

void sub_1DE543A6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

void HALB_UCIterator::~HALB_UCIterator(io_object_t *this)
{
  if (*(this + 4) == 1)
  {
    v2 = *this;
    if (v2)
    {
      IOObjectRelease(v2);
      *this = 0;
    }
  }
}

uint64_t HALB_UCObject::MapMemory(HALB_UCObject *this, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(this + 3) && *(this + 34) == 1)
  {
    v4 = *MEMORY[0x1E69E9A60];
    v5 = MEMORY[0x1E12C07D0]();
    if (v5)
    {
      v8 = v5;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = "HALB_UCObject.cpp";
        v12 = 1024;
        v13 = 743;
        v14 = 1024;
        v15 = v8;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::MapMemory: failed to map in the memory, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v8;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "HALB_UCObject.cpp";
        v12 = 1024;
        v13 = 745;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::MapMemory: mapped in a NULL pointer", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }
  }

  result = 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void non-virtual thunk toHALS_PlugInClockDevice::~HALS_PlugInClockDevice(HALS_PlugInClockDevice *this)
{
  HALS_PlugInClockDevice::~HALS_PlugInClockDevice((this - 376));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugInClockDevice::~HALS_PlugInClockDevice((this - 376));
}

void HALS_PlugInClockDevice::~HALS_PlugInClockDevice(HALS_PlugInClockDevice *this)
{
  *this = &unk_1F5979820;
  v2 = (this + 376);
  *(this + 47) = &unk_1F5979A08;
  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    HALS_ObjectMap::ObjectIsDead(*(this + 52), v4);
    *(this + 52) = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  HALS_System::GetInstance(&v6, 0, v5);
  HALS_IOContext_Manager::destroy_engine_for_device(*(v6 + 1744), this);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 424));
  HALS_PlugInObject::~HALS_PlugInObject(v2);

  HALS_ClockDevice::~HALS_ClockDevice(this);
}

{
  HALS_PlugInClockDevice::~HALS_PlugInClockDevice(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_PlugInClockDevice::create_mcp_engine(HALS_PlugInClockDevice *this)
{
  v1 = *(this + 48);
  v3 = *(this + 99);
  return (*(**(v1 + 416) + 144))(*(v1 + 416), v1, this, &v3);
}

void HALS_PlugInClockDevice::SetPropertyData(HALS_PlugInClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v46 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  switch(mSelector)
  {
    case 0x6964656E:
      v23 = *(this + 48);
      v24 = *(v23 + 416);
      v16 = *(v23 + 424);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = *(this + 99);
      if (a8)
      {
        v26 = *(a8 + 60);
      }

      else
      {
        v26 = 0;
      }

      strcpy(v43, "nedibolg");
      BYTE1(v43[2]) = 0;
      HIWORD(v43[2]) = 0;
      (*(*v24 + 576))(v24, v25, v26, v43, 0, 0, a4, a5);
      goto LABEL_29;
    case 0x6E737274:
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v43[0] = 136315394;
          *&v43[1] = "HALS_PlugInClockDevice.cpp";
          v44 = 1024;
          v45 = 455;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::SetPropertyData: bad property data size for kAudioClockDevicePropertyNominalSampleRate", v43, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      v19 = *(this + 48);
      v20 = *(v19 + 416);
      v21 = *(v19 + 424);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a8)
      {
        v22 = *(a8 + 60);
      }

      else
      {
        v22 = 0;
      }

      (*(*v20 + 576))(v20, *(this + 99), v22, a3, 0, 0, a4, a5);
      if (!v21)
      {
        goto LABEL_40;
      }

      v38 = *MEMORY[0x1E69E9840];
      v39 = v21;
      break;
    case 0x6C6E616D:
      v14 = *(this + 48);
      v15 = *(v14 + 416);
      v16 = *(v14 + 424);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *(this + 99);
      if (a8)
      {
        v18 = *(a8 + 60);
      }

      else
      {
        v18 = 0;
      }

      strcpy(v43, "manlbolg");
      BYTE1(v43[2]) = 0;
      HIWORD(v43[2]) = 0;
      (*(*v15 + 576))(v15, v17, v18, v43, 0, 0, a4, a5);
LABEL_29:
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

LABEL_40:
      v41 = *MEMORY[0x1E69E9840];
      return;
    default:
      if (HALS_ClockDevice::HasProperty(this, a2, a3))
      {
        if (HALS_ClockDevice::IsPropertySettable(this, a2, a3))
        {
          HALS_Object::SetPropertyData(this, a2, a3, v30, v31, v32, v33, a8);
        }

        mSelector = a3->mSelector;
      }

      if (!(*(*(this + 47) + 24))(this + 376, mSelector))
      {
        goto LABEL_40;
      }

      v34 = *(this + 48);
      v35 = *(v34 + 416);
      v36 = *(v34 + 424);
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = a8 ? *(a8 + 60) : 0;
      (*(*v35 + 576))(v35, *(this + 99), v37, a3, a6, a7, a4, a5);
      if (!v36)
      {
        goto LABEL_40;
      }

      v40 = *MEMORY[0x1E69E9840];
      v39 = v36;
      break;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
}

void sub_1DE5442F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInClockDevice::GetPropertyData(HALS_PlugInClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, uint64_t *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v123 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (mSelector <= 1819111267)
  {
    if (mSelector <= 1719105133)
    {
      if (mSelector > 1668510817)
      {
        if (mSelector != 1668510818)
        {
          if (mSelector == 1668641652)
          {
            v38 = a4 / 0xC;
            if (*(this + 102) < a4 / 0xC)
            {
              v38 = *(this + 102);
            }

            if (v38)
            {
              v39 = 0;
              v40 = 0;
              do
              {
                if (v40 < *(this + 102))
                {
                  v41 = a6 + v39;
                  v42 = (*(this + 50) + v39);
                  v43 = *v42;
                  *(v41 + 2) = *(v42 + 2);
                  *v41 = v43;
                }

                ++v40;
                v39 += 12;
              }

              while (12 * v38 != v39);
            }

            v44 = 4 * v38;
            goto LABEL_168;
          }

          goto LABEL_123;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInClockDevice.cpp";
            v121 = 1024;
            v122 = 394;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioDevicePropertyClockIsStable", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          exception[2] = 561211770;
        }

        v57 = *(this + 48);
        v34 = *(v57 + 416);
        v35 = *(v57 + 424);
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v36 = *(this + 99);
        if (a9)
        {
          v37 = *(a9 + 60);
        }

        else
        {
          v37 = 0;
        }

        goto LABEL_163;
      }

      if (mSelector != 1668049764)
      {
        if (mSelector != 1668050795)
        {
          goto LABEL_123;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInClockDevice.cpp";
            v121 = 1024;
            v122 = 386;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioDevicePropertyClockAlgorithm", buf, 0x12u);
          }

          v101 = __cxa_allocate_exception(0x10uLL);
          *v101 = off_1F5991DD8;
          v101[2] = 561211770;
        }

        v33 = *(this + 48);
        v34 = *(v33 + 416);
        v35 = *(v33 + 424);
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v36 = *(this + 99);
        if (a9)
        {
          v37 = *(a9 + 60);
        }

        else
        {
          v37 = 0;
        }

        goto LABEL_163;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v121 = 1024;
          v122 = 333;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyClockDomain", buf, 0x12u);
        }

        v102 = __cxa_allocate_exception(0x10uLL);
        *v102 = off_1F5991DD8;
        v102[2] = 561211770;
      }

      v53 = *(this + 48);
      v54 = *(v53 + 416);
      v30 = *(v53 + 424);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v55 = *(this + 99);
      if (a9)
      {
        v56 = *(a9 + 60);
      }

      strcpy(buf, "dklcbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      LODWORD(v118) = 0;
      v119 = 0;
      (*(*v54 + 568))(v54);
    }

    else if (mSelector <= 1768187245)
    {
      if (mSelector == 1719105134)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInClockDevice.cpp";
            v121 = 1024;
            v122 = 309;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyFirmwareVersion", buf, 0x12u);
          }

          v111 = __cxa_allocate_exception(0x10uLL);
          *v111 = off_1F5991DD8;
          v111[2] = 561211770;
        }

        v75 = *(this + 48);
        v76 = *(v75 + 416);
        v25 = *(v75 + 424);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v77 = *(this + 99);
        if (a9)
        {
          v78 = *(a9 + 60);
        }

        strcpy(buf, "nvwfbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v118 = 0;
        v119 = 0;
        (*(*v76 + 568))(v76);
        goto LABEL_157;
      }

      if (mSelector != 1735354734)
      {
        goto LABEL_123;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v121 = 1024;
          v122 = 349;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyDeviceIsRunning", buf, 0x12u);
        }

        v108 = __cxa_allocate_exception(0x10uLL);
        *v108 = off_1F5991DD8;
        v108[2] = 561211770;
      }

      v45 = *(this + 48);
      v46 = *(v45 + 416);
      v30 = *(v45 + 424);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = *(this + 99);
      if (a9)
      {
        v48 = *(a9 + 60);
      }

      strcpy(buf, "niogbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      LODWORD(v118) = 0;
      v119 = 0;
      (*(*v46 + 568))(v46);
    }

    else
    {
      switch(mSelector)
      {
        case 0x6964656E:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInClockDevice.cpp";
              v121 = 1024;
              v122 = 293;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyIdentify", buf, 0x12u);
            }

            v109 = __cxa_allocate_exception(0x10uLL);
            *v109 = off_1F5991DD8;
            v109[2] = 561211770;
          }

          v62 = *(this + 48);
          v63 = *(v62 + 416);
          v30 = *(v62 + 424);
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v64 = *(this + 99);
          if (a9)
          {
            v65 = *(a9 + 60);
          }

          strcpy(buf, "nedibolg");
          buf[9] = 0;
          *&buf[10] = 0;
          LODWORD(v118) = 0;
          v119 = 0;
          (*(*v63 + 568))(v63);
          break;
        case 0x6C69766E:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInClockDevice.cpp";
              v121 = 1024;
              v122 = 341;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyDeviceIsAlive", buf, 0x12u);
            }

            v104 = __cxa_allocate_exception(0x10uLL);
            *v104 = off_1F5991DD8;
            v104[2] = 561211770;
          }

          v58 = *(this + 48);
          v59 = *(v58 + 416);
          v30 = *(v58 + 424);
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v60 = *(this + 99);
          if (a9)
          {
            v61 = *(a9 + 60);
          }

          strcpy(buf, "nvilbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          LODWORD(v118) = 0;
          v119 = 0;
          (*(*v59 + 568))(v59);
          break;
        case 0x6C6D616B:
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInClockDevice.cpp";
              v121 = 1024;
              v122 = 285;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyManufacturer", buf, 0x12u);
            }

            v106 = __cxa_allocate_exception(0x10uLL);
            *v106 = off_1F5991DD8;
            v106[2] = 561211770;
          }

          v23 = *(this + 48);
          v24 = *(v23 + 416);
          v25 = *(v23 + 424);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = *(this + 99);
          if (a9)
          {
            v27 = *(a9 + 60);
          }

          strcpy(buf, "kamlbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          v118 = 0;
          v119 = 0;
          (*(*v24 + 568))(v24);
          goto LABEL_157;
        default:
          goto LABEL_123;
      }
    }

LABEL_154:
    *a6 = v118;
    if (v30)
    {
      v97 = v30;
LABEL_166:
      std::__shared_weak_count::__release_shared[abi:ne200100](v97);
    }

LABEL_167:
    v44 = 4;
    goto LABEL_168;
  }

  if (mSelector > 1919512166)
  {
    if (mSelector <= 1935763059)
    {
      if (mSelector != 1919512167)
      {
        if (mSelector == 1920168547)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInClockDevice.cpp";
              v121 = 1024;
              v122 = 410;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyResourceBundle", buf, 0x12u);
            }

            v117 = __cxa_allocate_exception(0x10uLL);
            *v117 = off_1F5991DD8;
            v117[2] = 561211770;
          }

          *a6 = HALS_PlugInObject::CopyResourceBundlePath(this + 376, a9);
          goto LABEL_160;
        }

        goto LABEL_123;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v121 = 1024;
          v122 = 371;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioDevicePropertyZeroTimeStampPeriod", buf, 0x12u);
        }

        v115 = __cxa_allocate_exception(0x10uLL);
        *v115 = off_1F5991DD8;
        v115[2] = 561211770;
      }

      v84 = *(this + 48);
      v85 = *(v84 + 416);
      v86 = *(v84 + 424);
      if (v86)
      {
        atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v87 = (*(*v85 + 24))(v85);
      if (v86)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v86);
      }

      v88 = *(this + 48);
      v34 = *(v88 + 416);
      v35 = *(v88 + 424);
      if (v87)
      {
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v89 = *(this + 99);
        if (a9)
        {
          v90 = *(a9 + 60);
        }

        strcpy(buf, "zisfbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        LODWORD(v118) = 0;
        v119 = 0;
        (*(*v34 + 568))(v34);
        v98 = 0;
LABEL_164:
        *a6 = v98;
        if (v35)
        {
          v97 = v35;
          goto LABEL_166;
        }

        goto LABEL_167;
      }

      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = *(this + 99);
      if (a9)
      {
        v37 = *(a9 + 60);
      }

      else
      {
        v37 = 0;
      }

LABEL_163:
      *buf = 0;
      LODWORD(v118) = 0;
      (*(*v34 + 568))(v34, v36, v37, a3, 0, 0, 4, &v118, buf);
      v98 = *buf;
      goto LABEL_164;
    }

    if (mSelector == 1935763060)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v121 = 1024;
          v122 = 402;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioDevicePropertySafetyOffset", buf, 0x12u);
        }

        v113 = __cxa_allocate_exception(0x10uLL);
        *v113 = off_1F5991DD8;
        v113[2] = 561211770;
      }

      *a6 = 0;
      goto LABEL_167;
    }

    if (mSelector == 1936618861)
    {
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v121 = 1024;
          v122 = 301;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertySerialNumber", buf, 0x12u);
        }

        v110 = __cxa_allocate_exception(0x10uLL);
        *v110 = off_1F5991DD8;
        v110[2] = 561211770;
      }

      v71 = *(this + 48);
      v72 = *(v71 + 416);
      v25 = *(v71 + 424);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v73 = *(this + 99);
      if (a9)
      {
        v74 = *(a9 + 60);
      }

      strcpy(buf, "munsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v118 = 0;
      v119 = 0;
      (*(*v72 + 568))(v72);
      goto LABEL_157;
    }

    if (mSelector != 1953653102)
    {
      goto LABEL_123;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInClockDevice.cpp";
        v121 = 1024;
        v122 = 325;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyTransportType", buf, 0x12u);
      }

      v107 = __cxa_allocate_exception(0x10uLL);
      *v107 = off_1F5991DD8;
      v107[2] = 561211770;
    }

    v28 = *(this + 48);
    v29 = *(v28 + 416);
    v30 = *(v28 + 424);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = *(this + 99);
    if (a9)
    {
      v32 = *(a9 + 60);
    }

    strcpy(buf, "nartbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    LODWORD(v118) = 0;
    v119 = 0;
    (*(*v29 + 568))(v29);
    goto LABEL_154;
  }

  if (mSelector <= 1819569762)
  {
    if (mSelector == 1819111268)
    {
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v121 = 1024;
          v122 = 277;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyModelName", buf, 0x12u);
        }

        v114 = __cxa_allocate_exception(0x10uLL);
        *v114 = off_1F5991DD8;
        v114[2] = 561211770;
      }

      v80 = *(this + 48);
      v81 = *(v80 + 416);
      v25 = *(v80 + 424);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v82 = *(this + 99);
      if (a9)
      {
        v83 = *(a9 + 60);
      }

      strcpy(buf, "domlbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v118 = 0;
      v119 = 0;
      (*(*v81 + 568))(v81);
    }

    else
    {
      if (mSelector != 1819173229)
      {
        goto LABEL_123;
      }

      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v121 = 1024;
          v122 = 269;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
        }

        v116 = __cxa_allocate_exception(0x10uLL);
        *v116 = off_1F5991DD8;
        v116[2] = 561211770;
      }

      v49 = *(this + 48);
      v50 = *(v49 + 416);
      v25 = *(v49 + 424);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v51 = *(this + 99);
      if (a9)
      {
        v52 = *(a9 + 60);
      }

      strcpy(buf, "manlbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v118 = 0;
      v119 = 0;
      (*(*v50 + 568))(v50);
    }

LABEL_157:
    *a6 = v118;
    if (!v25)
    {
LABEL_160:
      v44 = 8;
LABEL_168:
      *a5 = v44;
LABEL_169:
      v99 = *MEMORY[0x1E69E9840];
      return;
    }

    v96 = v25;
LABEL_159:
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    goto LABEL_160;
  }

  switch(mSelector)
  {
    case 0x6C746E63:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v121 = 1024;
          v122 = 357;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyLatency", buf, 0x12u);
        }

        v112 = __cxa_allocate_exception(0x10uLL);
        *v112 = off_1F5991DD8;
        v112[2] = 561211770;
      }

      v79 = *(this + 48);
      v34 = *(v79 + 416);
      v35 = *(v79 + 424);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = *(this + 99);
      if (a9)
      {
        v37 = *(a9 + 60);
      }

      else
      {
        v37 = 0;
      }

      goto LABEL_163;
    case 0x6E737223:
      v66 = *(this + 48);
      v67 = *(v66 + 416);
      v68 = *(v66 + 424);
      if (v68)
      {
        atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v69 = *(this + 99);
      if (a9)
      {
        v70 = *(a9 + 60);
      }

      else
      {
        v70 = 0;
      }

      strcpy(buf, "#rsnbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      (*(*v67 + 568))(v67, v69, v70, buf, 0, 0, a4, a5, a6);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      goto LABEL_169;
    case 0x6E737274:
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v121 = 1024;
          v122 = 317;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyNominalSampleRate", buf, 0x12u);
        }

        v105 = __cxa_allocate_exception(0x10uLL);
        *v105 = off_1F5991DD8;
        v105[2] = 561211770;
      }

      v18 = *(this + 48);
      v19 = *(v18 + 416);
      v20 = *(v18 + 424);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(this + 99);
      if (a9)
      {
        v22 = *(a9 + 60);
      }

      else
      {
        v22 = 0;
      }

      *buf = 0;
      LODWORD(v118) = 0;
      (*(*v19 + 568))(v19, v21, v22, a3, 0, 0, 8, &v118, buf);
      *a6 = *buf;
      if (!v20)
      {
        goto LABEL_160;
      }

      v96 = v20;
      goto LABEL_159;
  }

LABEL_123:
  if (HALS_ClockDevice::HasProperty(this, a2, a3))
  {
    v91 = *MEMORY[0x1E69E9840];

    HALS_ClockDevice::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    if (!(*(*(this + 47) + 24))(this + 376, mSelector))
    {
      goto LABEL_169;
    }

    v92 = *(this + 48);
    v93 = *(v92 + 416);
    v94 = *(v92 + 424);
    if (v94)
    {
      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v95 = a9 ? *(a9 + 60) : 0;
    (*(*v93 + 568))(v93, *(this + 99), v95, a3, a7, a8, a4, a5, a6);
    if (!v94)
    {
      goto LABEL_169;
    }

    v100 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v94);
  }
}

void sub_1DE545E4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInClockDevice::GetPropertyDataSize(HALS_PlugInClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  v13 = 8;
  if (mSelector <= 1851878763)
  {
    if (mSelector == 1668641652)
    {
      return (12 * *(this + 102));
    }

    v14 = 1819173229;
  }

  else
  {
    if (mSelector == 1851878764)
    {
      return v13;
    }

    if (mSelector == 1853059619)
    {
      v16 = *(this + 48);
      v17 = *(v16 + 416);
      v18 = *(v16 + 424);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(this + 99);
      if (a6)
      {
        v20 = *(a6 + 60);
      }

      else
      {
        v20 = 0;
      }

      v26 = 0x676C6F626E737223;
      v27 = 0;
      v13 = (*(*v17 + 560))(v17, v19, v20, &v26, 0, 0);
      if (!v18)
      {
        return v13;
      }

      v25 = v18;
LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      return v13;
    }

    v14 = 1920168547;
  }

  if (mSelector == v14)
  {
    return v13;
  }

  if (!HALS_ClockDevice::HasProperty(this, a2, a3))
  {
    if (!(*(*(this + 47) + 24))(this + 376, mSelector))
    {
      return 0;
    }

    v21 = *(this + 48);
    v22 = *(v21 + 416);
    v23 = *(v21 + 424);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a6)
    {
      v24 = *(a6 + 60);
    }

    else
    {
      v24 = 0;
    }

    v13 = (*(*v22 + 560))(v22, *(this + 99), v24, a3, a4, a5);
    if (!v23)
    {
      return v13;
    }

    v25 = v23;
    goto LABEL_25;
  }

  return HALS_ClockDevice::GetPropertyDataSize(this, a2, a3);
}

void sub_1DE546148(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInClockDevice::IsPropertySettable(HALS_PlugInClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v8 = 0;
  mSelector = a3->mSelector;
  if (mSelector > 1819173228)
  {
    if (mSelector == 1920168547)
    {
      return v8;
    }

    if (mSelector == 1819173229)
    {
      v15 = *(this + 48);
      v16 = *(v15 + 416);
      v12 = *(v15 + 424);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *(this + 99);
      if (a4)
      {
        v18 = *(a4 + 60);
      }

      else
      {
        v18 = 0;
      }

      v26 = 0x676C6F626C6E616DLL;
      v27 = 0;
      v24 = (*(*v16 + 552))(v16, v17, v18, &v26);
LABEL_27:
      v8 = v24;
      if (v12)
      {
        v25 = v12;
LABEL_29:
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      return v8;
    }
  }

  else
  {
    if (mSelector == 1668641652)
    {
      return v8;
    }

    if (mSelector == 1768187246)
    {
      v10 = *(this + 48);
      v11 = *(v10 + 416);
      v12 = *(v10 + 424);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *(this + 99);
      if (a4)
      {
        v14 = *(a4 + 60);
      }

      else
      {
        v14 = 0;
      }

      v26 = 0x676C6F626964656ELL;
      v27 = 0;
      v24 = (*(*v11 + 552))(v11, v13, v14, &v26);
      goto LABEL_27;
    }
  }

  if (!HALS_ClockDevice::HasProperty(this, a2, a3))
  {
    if (!(*(*(this + 47) + 24))(this + 376, mSelector))
    {
      return 0;
    }

    v20 = *(this + 48);
    v21 = *(v20 + 416);
    v22 = *(v20 + 424);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      v23 = *(a4 + 60);
    }

    else
    {
      v23 = 0;
    }

    v8 = (*(*v21 + 552))(v21, *(this + 99), v23, a3);
    if (!v22)
    {
      return v8;
    }

    v25 = v22;
    goto LABEL_29;
  }

  return HALS_ClockDevice::IsPropertySettable(this, a2, a3);
}