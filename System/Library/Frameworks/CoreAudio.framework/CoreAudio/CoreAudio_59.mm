void sub_1DE68B904(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 120);
  *(v2 + 32) = *(v1 + 136);
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

__n128 __Block_byref_object_copy__17161(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = v2;
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

double ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 112);
  v3 = *(v1 + 128);
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 40) = result;
  *(v5 + 48) = v4;
  *(v5 + 64) = v3;
  *(v5 + 80) = result;
  *(v5 + 88) = result;
  return result;
}

double ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 112);
  v3 = *(v1 + 128);
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 40) = result;
  *(v5 + 48) = v4;
  *(v5 + 64) = v3;
  *(v5 + 80) = result;
  *(v5 + 88) = result;
  return result;
}

__n128 ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 120);
  *(v2 + 32) = *(v1 + 136);
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

double ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 112);
  v3 = *(v1 + 128);
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 40) = result;
  *(v5 + 48) = v4;
  *(v5 + 64) = v3;
  *(v5 + 80) = result;
  *(v5 + 88) = result;
  return result;
}

double ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 112);
  v3 = *(v1 + 128);
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 40) = result;
  *(v5 + 48) = v4;
  *(v5 + 64) = v3;
  *(v5 + 80) = result;
  *(v5 + 88) = result;
  return result;
}

uint64_t HALS_DSPStream::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 > 1935894637)
  {
    if (v3 <= 1936092512)
    {
      if (v3 <= 1936092450)
      {
        if (v3 == 1935894638)
        {
          return 4;
        }

        v4 = 1935960434;
        goto LABEL_19;
      }

      if (v3 == 1936092451)
      {
        return 56;
      }

      v7 = 27967;
    }

    else
    {
      if (v3 > 1936092531)
      {
        if (v3 != 1936092532)
        {
          if (v3 == 1952542835)
          {
            return 4;
          }

          v4 = 1952805485;
          goto LABEL_19;
        }

        return 40;
      }

      if (v3 == 1936092513)
      {
        return 56;
      }

      v7 = 28013;
    }

    v8 = v7 | 0x73660000;
  }

  else
  {
    if (v3 <= 1885762594)
    {
      if (v3 <= 1819569762)
      {
        if (v3 != 1685287027)
        {
          if (v3 == 1819107691)
          {
            return 8;
          }

          return HALS_Stream::GetPropertyDataSize(a1, a2, a3);
        }

        return 4;
      }

      if (v3 == 1819569763)
      {
        return 4;
      }

      v6 = 29728;
    }

    else
    {
      if (v3 > 1885762656)
      {
        if (v3 != 1885762657)
        {
          if (v3 != 1885762669)
          {
            v4 = 1935762292;
LABEL_19:
            if (v3 != v4)
            {
              return HALS_Stream::GetPropertyDataSize(a1, a2, a3);
            }

            return 4;
          }

          return 40;
        }

        return 56;
      }

      if (v3 == 1885762595)
      {
        return 56;
      }

      v6 = 29759;
    }

    v8 = v6 | 0x70660000;
  }

  if (v3 == v8)
  {
    return 40;
  }

  return HALS_Stream::GetPropertyDataSize(a1, a2, a3);
}

uint64_t HALS_DSPStream::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = 0;
  v4 = *a3;
  if (*a3 > 1935894637)
  {
    if (v4 <= 1936092512)
    {
      if (v4 <= 1936092450)
      {
        v5 = v4 == 1935894638;
        v6 = 1935960434;
        goto LABEL_27;
      }

      v5 = v4 == 1936092451;
      v9 = 27967;
    }

    else
    {
      if (v4 > 1936092531)
      {
        if (v4 == 1952805485 || v4 == 1952542835)
        {
          return v3;
        }

        v8 = 1936092532;
        goto LABEL_21;
      }

      v5 = v4 == 1936092513;
      v9 = 28013;
    }

    v6 = v9 | 0x73660000;
    goto LABEL_27;
  }

  if (v4 > 1885762594)
  {
    if (v4 <= 1885762656)
    {
      v5 = v4 == 1885762595;
      v6 = 1885762623;
    }

    else
    {
      v5 = v4 == 1885762657 || v4 == 1885762669;
      v6 = 1935762292;
    }

LABEL_27:
    if (!v5 && v4 != v6)
    {
      return HALS_Stream::IsPropertySettable(a1, a2, a3);
    }

    return v3;
  }

  if (v4 <= 1819569762)
  {
    v5 = v4 == 1685287027;
    v6 = 1819107691;
    goto LABEL_27;
  }

  if (v4 == 1819569763)
  {
    return v3;
  }

  v8 = 1885762592;
LABEL_21:
  if (v4 == v8)
  {
    return 1;
  }

  return HALS_Stream::IsPropertySettable(a1, a2, a3);
}

uint64_t HALS_DSPStream::HasProperty(HALS_DSPStream *this, unsigned int a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  v7 = 1;
  if (a3->mSelector > 1935894637)
  {
    if (mSelector <= 1936092478)
    {
      v13 = mSelector == 1935894638 || mSelector == 1935960434;
      v14 = 1936092451;
    }

    else
    {
      v13 = (mSelector - 1936092479) <= 0x35 && ((1 << (mSelector - 63)) & 0x20400400000001) != 0 || mSelector == 1952542835;
      v14 = 1952805485;
    }

    if (v13 || mSelector == v14)
    {
      return v7;
    }

    goto LABEL_35;
  }

  if (mSelector <= 1885762591)
  {
    if (mSelector == 1685287027)
    {
      return v7;
    }

    if (mSelector == 1819107691)
    {
      v18 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 7));
      v20 = v18;
      if (v18)
      {
        v21 = 0x676C6F626C6D616BLL;
        v22 = 0;
        v7 = (*(*v18 + 96))(v18, *(this + 7), &v21, a4);
      }

      else
      {
        v7 = 0;
      }

      HALS_ObjectMap::ReleaseObject(v20, v19);
      return v7;
    }

    v15 = 1819569763;
LABEL_34:
    if (mSelector != v15)
    {
      goto LABEL_35;
    }

    return v7;
  }

  if (mSelector > 1885762656)
  {
    if (mSelector == 1885762657 || mSelector == 1885762669)
    {
      return v7;
    }

    v15 = 1935762292;
    goto LABEL_34;
  }

  v8 = mSelector - 1885762592;
  v9 = v8 > 0x1F;
  v10 = (1 << v8) & 0x80000009;
  if (!v9 && v10 != 0)
  {
    return v7;
  }

LABEL_35:

  return HALS_Stream::HasProperty(this, a2, a3, a4);
}

void HALS_DSPStream::~HALS_DSPStream(HALS_DSPStream *this)
{
  HALS_DSPStream::~HALS_DSPStream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987D50;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  HALS_Stream::~HALS_Stream(this);
}

__n128 ___ZNK14HALS_DSPStream24GetCurrentPhysicalFormatER27AudioStreamBasicDescription_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 120);
  *(v2 + 32) = *(v1 + 136);
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

void HALS_DSPStream::SetCurrentPhysicalFormat(HALS_DSPStream *this, const AudioStreamBasicDescription *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(this + 12);
    v11 = *(this + 24);
    v12 = *(this + 4);
    mChannelsPerFrame = a2->mChannelsPerFrame;
    mSampleRate = a2->mSampleRate;
    *buf = 136316674;
    v17 = "HALS_DSPStream.cpp";
    v18 = 1024;
    v19 = 568;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v11;
    v24 = 1024;
    v25 = v12;
    v26 = 1024;
    v27 = mChannelsPerFrame;
    v28 = 1024;
    v29 = mSampleRate;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] (Device ID: %d) (Client ID: %d) (Object ID: %d) Setting DSP Stream format (%d channels, %6.1d rate)", buf, 0x30u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN14HALS_DSPStream24SetCurrentPhysicalFormatERK27AudioStreamBasicDescription_block_invoke;
  v15[3] = &__block_descriptor_tmp_19_17189;
  v15[4] = this;
  v15[5] = a2;
  v8 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v8, v15);
  v9 = *MEMORY[0x1E69E9840];
}

void ___ZN14HALS_DSPStream24SetCurrentPhysicalFormatERK27AudioStreamBasicDescription_block_invoke(uint64_t a1)
{
  queue[42] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2[1];
  v13[0] = *v2;
  v13[1] = v3;
  v14 = *(v2 + 4);
  if (!*(v1 + 112) || !CA::StreamDescription::IsEquivalent(v13, (v1 + 104), 3u))
  {
    v4 = *v2;
    v5 = v2[1];
    *(v1 + 136) = *(v2 + 4);
    *(v1 + 120) = v5;
    *(v1 + 104) = v4;
    v6 = (*(*v1 + 72))(v1);
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, v6);
    v7 = *(v1 + 16);
    v8 = *(v1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN14HALS_DSPStream24SetCurrentPhysicalFormatERK27AudioStreamBasicDescription_block_invoke_2;
    block[3] = &__block_descriptor_tmp_18_17190;
    v11 = v7;
    v12 = v8;
    dispatch_async(queue[0], block);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void ___ZN14HALS_DSPStream24SetCurrentPhysicalFormatERK27AudioStreamBasicDescription_block_invoke_2(uint64_t a1, uint64_t a2, const AudioObjectPropertyAddress *a3)
{
  memset(v19, 0, sizeof(v19));
  v4 = *(a1 + 32);
  memset(v18, 0, 24);
  v18[3] = v4;
  *&v15 = 0x676C6F6273666D74;
  DWORD2(v15) = 0;
  CAPropertyAddressList::AppendUniqueItem(v18, &v15, a3);
  *&v15 = 0x676C6F6270667420;
  DWORD2(v15) = 0;
  CAPropertyAddressList::AppendUniqueItem(v18, &v15, v5);
  *&v15 = 0x676C6F626C746E63;
  DWORD2(v15) = 0;
  CAPropertyAddressList::AppendUniqueItem(v18, &v15, v6);
  std::vector<CAPropertyAddressList>::push_back[abi:ne200100](v19, v18);
  v7 = *(a1 + 36);
  v15 = 0uLL;
  v16 = 0;
  v17 = v7;
  __p = 0x676C6F6273666D74;
  LODWORD(v13) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v15, &__p, v8);
  __p = 0x676C6F6273746D23;
  LODWORD(v13) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v15, &__p, v9);
  __p = 0x676C6F626E737274;
  LODWORD(v13) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v15, &__p, v10);
  v11 = *(a1 + 36);
  __p = 0;
  v13 = 0;
  v14 = 0;
  HALS_NotificationManager::GroupPropertiesChanged(1, v11, 0, &v15, v19, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    operator delete(v15);
  }

  if (v18[0])
  {
    operator delete(v18[0]);
  }

  v18[0] = v19;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v18);
}

void sub_1DE68C568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a16)
  {
    operator delete(a16);
  }

  a16 = (v16 - 56);
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Timed_Segment::translate_range(double **this, const AMCP::DAL::DAL_Time_Range *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  (*(*a2 + 16))(a2, a3);
  v4 = *this;
  v5 = this[1];
  if (*this != v5)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      AMCP::DAL::DAL_Time::operator-(buf, (v4 + 7), (v4 + 2));
      if ((buf[0] & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(buf);
      }

      v8 = *&v30[4];
      v9 = v33;
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (vabdd_f64(v6 - v7, v8) >= 1.0)
      {
        v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v11 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
          *buf = 136315650;
          *v30 = "DAL_Timed_Segment.cpp";
          *&v30[8] = 1024;
          *&v30[10] = 92;
          v31 = 2080;
          v32 = "not (d.get_double() > -1 and d.get_double() < 1)";
          _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v20);
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
        v33 = "rt_safe_vector<Buffer_Time_Translator::Translation_Range> AMCP::DAL::DAL_Timed_Segment::translate_range(const DAL_Time_Range &) const";
        v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v35 = 92;
        std::vector<void *>::vector[abi:ne200100](&v19);
      }

      if (round(v4[1] - *v4) == 0.0)
      {
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
          *v30 = "DAL_Timed_Segment.cpp";
          *&v30[8] = 1024;
          *&v30[10] = 93;
          v31 = 2080;
          v32 = "not (i.m_local_range.length() != 0_S)";
          _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v20);
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
        v33 = "rt_safe_vector<Buffer_Time_Translator::Translation_Range> AMCP::DAL::DAL_Timed_Segment::translate_range(const DAL_Time_Range &) const";
        v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v35 = 93;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
      }

      v4 += 12;
    }

    while (v4 != v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE68CB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&a35);
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Timed_Segment::get_audio_buffer_lists(AMCP::DAL::DAL_Timed_Segment *this, uint64_t a2)
{
  v2 = a2;
  v34[4] = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  AMCP::DAL::DAL_Timed_Segment::translate_range(&v31, *(a2 + 80), a2);
  v5 = v31;
  v4 = v32;
  if (v31 != v32)
  {
    v6 = 0;
    v27 = v32;
    v28 = v2;
    do
    {
      (*(**(v2 + 80) + 56))(&v29);
      if (v29)
      {
        (*(*v29 + 64))(&v33, *v5, v5[1]);
      }

      else
      {
        v33 = 0;
        v34[3] = 0;
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      v7 = *(this + 2);
      if (v6 >= v7)
      {
        v9 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *this) >> 3);
        v10 = v9 + 1;
        if (v9 + 1 > 0x666666666666666)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *this) >> 3);
        if (2 * v11 > v10)
        {
          v10 = 2 * v11;
        }

        if (v11 >= 0x333333333333333)
        {
          v12 = 0x666666666666666;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          if (v12 > 0x666666666666666 || !*MEMORY[0x1E69E3C08])
          {
LABEL_35:
            __break(1u);
          }

          v13 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        }

        else
        {
          v13 = 0;
        }

        v14 = (v13 + 40 * v9);
        v15 = v33;
        v33 = 0;
        *v14 = v15;
        v6 = v14 + 5;
        std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100]((v14 + 1), v34);
        v17 = *this;
        v16 = *(this + 1);
        v18 = v16 - *this;
        if (v16 != *this)
        {
          v19 = v13 + 40 * v9 - 8 * ((v16 - *this) >> 3) + 8;
          v20 = *this;
          do
          {
            v21 = (v20 + 1);
            v22 = *v20;
            *v20 = 0;
            v20 += 5;
            *(v19 - 8) = v22;
            v19 = std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100](v19, v21) + 40;
          }

          while (v20 != v16);
          while (v17 != v16)
          {
            std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](v17, 0);
            std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100]((v17 + 1));
            v17 += 5;
          }
        }

        *&v23 = v14 + 5;
        *(&v23 + 1) = v13 + 40 * v12;
        v24 = *this;
        *this = v14 - v18;
        v25 = *(this + 2);
        *(this + 8) = v23;
        if (v24)
        {
          v4 = v27;
          v2 = v28;
          if (0xCCCCCCCCCCCCCCCDLL * ((v25 - v24) >> 3) > 0x666666666666666 || !*MEMORY[0x1E69E3C08])
          {
            goto LABEL_35;
          }

          caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v24);
        }

        else
        {
          v4 = v27;
          v2 = v28;
        }
      }

      else
      {
        v8 = v33;
        v33 = 0;
        *v6 = v8;
        std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100]((v6 + 1), v34);
        v6 += 5;
      }

      *(this + 1) = v6;
      std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v33, 0);
      std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v34);
      v5 += 12;
    }

    while (v5 != v4);
  }

  v33 = &v31;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v33);
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1DE68D00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>,caulk::rt_allocator<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>,caulk::rt_allocator<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>>::__destroy_vector::operator()[abi:ne200100](caulk::rt_safe_memory_resource *result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](v3 - 5, 0);
        result = std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100]((v3 - 4));
        v3 -= 5;
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    if (0xCCCCCCCCCCCCCCCDLL * ((v5[2] - v4) >> 3) < 0x666666666666667 && (result = *MEMORY[0x1E69E3C08]) != 0)
    {

      return caulk::rt_safe_memory_resource::rt_deallocate(result, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void AMCP::DAL::DAL_Timed_Segment::adjust_length(AMCP::DAL::DAL_Timed_Segment *this, const AMCP::DAL::DAL_Time_Delta *a2)
{
  boost::operators_impl::operator+(v7, this, a2);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v9, this, v7);
  *this = v9;
  *(this + 2) = v10;
  v3 = v11;
  v11 = 0uLL;
  v4 = *(this + 4);
  *(this + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(this + 40) = v12;
  *(this + 7) = v13;
  v5 = v14;
  v14 = 0uLL;
  v6 = *(this + 9);
  *(this + 4) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (*(&v14 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
    }
  }

  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1DE68D204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Writable_Range::pad_and_receive_data(uint64_t a1, uint64_t a2, AMCP::DAL::DAL_Time *a3)
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = AMCP::DAL::DAL_Time::operator<((a3 + 40), a3);
  if (v6)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      v88 = "DAL_Timed_Segment.cpp";
      v89 = 1024;
      v90 = 108;
      v91 = 2080;
      v92 = "not (source_range_to_read.get_time_range().end() >= source_range_to_read.get_time_range().start())";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Writable_Range::RecieveData: Bad time range", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Writable_Range::RecieveData: Bad time range", &v60);
    std::logic_error::logic_error(v70, &v60);
    *v70 = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v53, v70);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = -1;
    v53.__vftable = &unk_1F5991430;
    v54 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v53);
    v93 = "void AMCP::DAL::Writable_Range::pad_and_receive_data(const Source_ID &, const Readable_Range &)";
    v94 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
    v95 = 108;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v77);
  }

  (*(**(a3 + 10) + 64))(v67);
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(buf, a3, v67);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v60, buf);
  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
  }

  if (v93)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v93);
  }

  AMCP::DAL::DAL_Time::get_sample_time(&v60);
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v63);
  v8 = AMCP::DAL::DAL_Time::get_sample_time(&v60);
  AMCP::DAL::DAL_Time::get_sample_time(&v63);
  if (round(sample_time) < round(v8))
  {
    caulk::make_empty_time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>(buf, &v60);
    AMCP::DAL::DAL_Time_Range::operator=(&v60, buf);
    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }

    if (v93)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v93);
    }
  }

  v46 = v60;
  v47 = v61;
  v48 = v62;
  if (v62)
  {
    atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = v63;
  v50 = v64;
  v51 = v65;
  v52 = v66;
  if (v66)
  {
    atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Readable_Range::Readable_Range(&v53, &v46, a3);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::difference(buf, a1, v67);
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::union_range(v70, buf, &v60);
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::union_range(&v77, v70, v97);
  v9 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::operator==(&v77, a1);
  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  v10 = v73;
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  if (!v9)
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
      v77 = 136315650;
      v78 = "DAL_Timed_Segment.cpp";
      v79 = 1024;
      v80 = 121;
      v81 = 2080;
      v82 = "not (zero_ranges.first.union_range(data_time_range_to_read).union_range(zero_ranges.second) == get_time_range())";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Union of zero and data ranges should equal this writable range", &v77, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Union of zero and data ranges should equal this writable range", &v36);
    std::logic_error::logic_error(&v35, &v36);
    v35.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v70, &v35);
    v73 = 0;
    *&v72[10] = 0;
    v74 = 0;
    v75 = -1;
    *v70 = &unk_1F5991430;
    *&v72[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v77, v70);
    v83 = "void AMCP::DAL::Writable_Range::pad_and_receive_data(const Source_ID &, const Readable_Range &)";
    v84 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
    v85 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v45);
  }

  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v77, buf);
  if (AMCP::DAL::DAL_Time::operator<(buf, &v94) && (!AMCP::DAL::DAL_Time::operator<(&v60, &v63) || AMCP::DAL::DAL_Time::operator<(&v77, &v60)))
  {
    if (AMCP::DAL::DAL_Time::operator<(&v60, &v63))
    {
      if (!caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersects(buf, &v60))
      {
        v11 = AMCP::DAL::DAL_Time::operator<(buf, &v94);
        if (!v11 || !(v11 = AMCP::DAL::DAL_Time::operator<(&v60, &v63)) || !AMCP::DAL::DAL_Time::operator==(&v60, &v94) && !(v11 = AMCP::DAL::DAL_Time::operator==(buf, &v63)))
        {
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

          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *v70 = 136315650;
            *&v70[4] = "DAL_Timed_Segment.cpp";
            v71 = 1024;
            *v72 = 129;
            *&v72[4] = 2080;
            *&v72[6] = "not (zero_ranges.first.touches(data_time_range_to_read))";
            _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Zero range should be adjacent to valid range.", v70, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("Zero range should be adjacent to valid range.", &v45);
          std::logic_error::logic_error(&v37, &v45);
          v37.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v38, &v37);
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = -1;
          v38.__vftable = &unk_1F5991430;
          v39 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v70, &v38);
          v73 = "void AMCP::DAL::Writable_Range::pad_and_receive_data(const Source_ID &, const Readable_Range &)";
          v74 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
          v75 = 129;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
        }
      }

      v12 = AMCP::DAL::DAL_Time::operator==(&v84, &v60);
      if (!v12)
      {
        v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v31 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
          *v70 = 136315650;
          *&v70[4] = "DAL_Timed_Segment.cpp";
          v71 = 1024;
          *v72 = 130;
          *&v72[4] = 2080;
          *&v72[6] = "not (zero_range.end() == data_time_range_to_read.start())";
          _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Zero range should end where valid range starts.", v70, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Zero range should end where valid range starts.", &v45);
        std::logic_error::logic_error(&v37, &v45);
        v37.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v38, &v37);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = -1;
        v38.__vftable = &unk_1F5991430;
        v39 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v70, &v38);
        v73 = "void AMCP::DAL::Writable_Range::pad_and_receive_data(const Source_ID &, const Readable_Range &)";
        v74 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v75 = 130;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
      }
    }

    (*(**(a1 + 80) + 40))(*(a1 + 80), a2, &v77);
    AMCP::DAL::DAL_Time_Range::operator=(&v77, v97);
  }

  if (AMCP::DAL::DAL_Time::operator<(&v60, &v63))
  {
    (*(**(a1 + 80) + 24))(*(a1 + 80), a2, &v53);
  }

  if (AMCP::DAL::DAL_Time::operator<(&v77, &v84))
  {
    if (AMCP::DAL::DAL_Time::operator<(&v60, &v63))
    {
      v13 = AMCP::DAL::DAL_Time::operator==(&v77, &v63);
      if (!v13)
      {
        v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v23 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v13);
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
          *v70 = 136315650;
          *&v70[4] = "DAL_Timed_Segment.cpp";
          v71 = 1024;
          *v72 = 146;
          *&v72[4] = 2080;
          *&v72[6] = "not (data_time_range_to_read.is_empty() || zero_range.start() == data_time_range_to_read.end())";
          _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Zero range should start where valid range ends.", v70, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Zero range should start where valid range ends.", &v45);
        std::logic_error::logic_error(&v37, &v45);
        v37.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v38, &v37);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = -1;
        v38.__vftable = &unk_1F5991430;
        v39 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v70, &v38);
        v73 = "void AMCP::DAL::Writable_Range::pad_and_receive_data(const Source_ID &, const Readable_Range &)";
        v74 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v75 = 146;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
      }
    }

    (*(**(a1 + 80) + 40))(*(a1 + 80), a2, &v77);
  }

  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if (v99)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v99);
  }

  if (v98)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v98);
  }

  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
  }

  if (v93)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v93);
  }

  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE68E0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&STACK[0x250]);
  std::pair<caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>,caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>>::~pair((v63 - 256));
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a42);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a53);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a63);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Writable_Range::receive_data(uint64_t a1, int a2, AMCP::DAL::DAL_Time *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = AMCP::DAL::DAL_Time::operator<((a3 + 40), a3);
  if (v5)
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
      *buf = 136315650;
      v29 = "DAL_Timed_Segment.cpp";
      v30 = 1024;
      v31 = 163;
      v32 = 2080;
      v33 = "not (incoming_data.get_time_range().end() >= incoming_data.get_time_range().start())";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Writable_Range::RecieveData: Bad time range", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Writable_Range::RecieveData: Bad time range", &v19);
    std::logic_error::logic_error(&v20, &v19);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5991430;
    v22 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
    v34 = "void AMCP::DAL::Writable_Range::receive_data(const Source_ID &, const Readable_Range &)";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
    v36 = 163;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::operator==(a1, a3);
  if (!v6)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v29 = "DAL_Timed_Segment.cpp";
      v30 = 1024;
      v31 = 164;
      v32 = 2080;
      v33 = "not (get_time_range() == incoming_data.get_time_range())";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v19);
    std::logic_error::logic_error(&v20, &v19);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5991430;
    v22 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
    v34 = "void AMCP::DAL::Writable_Range::receive_data(const Source_ID &, const Readable_Range &)";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
    v36 = 164;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v7 = *(**(a1 + 80) + 24);
  v8 = *MEMORY[0x1E69E9840];

  return v7();
}

void sub_1DE68E830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
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

void AMCP::DAL::Writable_Range::Direct_Write_Range::get_audio_buffer_list(AMCP::DAL::Writable_Range::Direct_Write_Range *this, uint64_t a2, std::__shared_weak_count *a3)
{
  v3 = a2;
  v4 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    (*(*a2 + 56))(a2, &v3);
    a3 = v4;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    *this = 0;
    *(this + 4) = 0;
    if (!a3)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a3);
}

void sub_1DE68E958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Writable_Range::get_direct_write_ranges(AMCP::DAL::Writable_Range *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  (*(**(a2 + 80) + 176))(&v25);
  v3 = v25;
  v4 = v26;
  if (v25 == v26)
  {
LABEL_28:
    v27 = &v25;
    std::vector<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::__destroy_vector::operator()[abi:ne200100](&v27);
    return;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(this + 2);
    if (v5 < v6)
    {
      std::construct_at[abi:ne200100]<AMCP::DAL::Writable_Range::Direct_Write_Range,AMCP::DAL::Buffer_Time_Translator::Translation_Range const&,AMCP::DAL::Container const&,AMCP::DAL::Writable_Range::Direct_Write_Range*>(v5, v3, *(v3 + 96), *(v3 + 104));
      v5 += 112;
      goto LABEL_27;
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *this) >> 4);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x249249249249249)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *this) >> 4);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    v10 = v9 >= 0x124924924924924 ? 0x249249249249249 : v8;
    if (v10)
    {
      break;
    }

    v11 = 0;
LABEL_16:
    v12 = v11 + 112 * v7;
    std::construct_at[abi:ne200100]<AMCP::DAL::Writable_Range::Direct_Write_Range,AMCP::DAL::Buffer_Time_Translator::Translation_Range const&,AMCP::DAL::Container const&,AMCP::DAL::Writable_Range::Direct_Write_Range*>(v12, v3, *(v3 + 96), *(v3 + 104));
    v13 = *this;
    v14 = *(this + 1);
    v15 = v12 + *this - v14;
    if (v14 != *this)
    {
      v16 = *this;
      v17 = v12 + *this - v14;
      do
      {
        *v17 = *v16;
        v18 = *(v16 + 16);
        *(v17 + 32) = *(v16 + 32);
        *(v17 + 16) = v18;
        *(v17 + 40) = *(v16 + 40);
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        v19 = *(v16 + 56);
        *(v17 + 72) = *(v16 + 72);
        *(v17 + 56) = v19;
        *(v17 + 80) = *(v16 + 80);
        *(v16 + 80) = 0;
        *(v16 + 88) = 0;
        *(v17 + 96) = *(v16 + 96);
        *(v16 + 96) = 0;
        *(v16 + 104) = 0;
        v16 += 112;
        v17 += 112;
      }

      while (v16 != v14);
      do
      {
        std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::destroy[abi:ne200100]<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,void,0>(v13);
        v13 += 14;
      }

      while (v13 != v14);
    }

    v20 = v11 + 112 * v10;
    v5 = v12 + 112;
    *&v21 = v12 + 112;
    *(&v21 + 1) = v20;
    v22 = *this;
    *this = v15;
    *&v23 = v22;
    *(&v23 + 1) = *(this + 2);
    *(this + 8) = v21;
    while (v23 != v22)
    {
      *&v23 = v23 - 112;
      v24 = v23;
      std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::destroy[abi:ne200100]<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,void,0>(v23);
      v23 = v24;
    }

    if (v22)
    {
      if ((0x6DB6DB6DB6DB6DB7 * ((*(&v23 + 1) - v22) >> 4)) > 0x249249249249249 || !*MEMORY[0x1E69E3C08])
      {
        goto LABEL_30;
      }

      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v22);
    }

LABEL_27:
    *(this + 1) = v5;
    v3 += 112;
    if (v3 == v4)
    {
      goto LABEL_28;
    }
  }

  if (v10 <= 0x249249249249249 && *MEMORY[0x1E69E3C08])
  {
    v11 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    goto LABEL_16;
  }

LABEL_30:
  __break(1u);
}

void sub_1DE68EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<AMCP::DAL::Writable_Range::Direct_Write_Range,AMCP::DAL::Buffer_Time_Translator::Translation_Range const&,AMCP::DAL::Container const&,AMCP::DAL::Writable_Range::Direct_Write_Range*>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6.n128_u64[0] = a3;
  v6.n128_u64[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Writable_Range::Direct_Write_Range::Direct_Write_Range(a1, a2, &v6);
  if (v6.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6.n128_u64[1]);
  }

  return a1;
}

__n128 AMCP::DAL::Writable_Range::Direct_Write_Range::Direct_Write_Range(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result = *a3;
  *(a1 + 96) = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  return result;
}

void AMCP::DAL::Writable_Range::commit_direct_write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 104);
  v4 = *(a3 + 96);
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 168))(a1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE68ED74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::create_readable_range(AMCP::DAL *this, const AMCP::DAL::DAL_Time_Range *a2, AMCP::DAL::Ring_Buffer_Base *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  (*(*a3 + 64))(buf, a3);
  v6 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(buf, a2);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v7 = v41;
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
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
      v36 = "DAL_Timed_Segment.cpp";
      v37 = 1024;
      v38 = 268;
      v39 = 2080;
      v40 = "not (buffer.get_time_range().encompasses(range))";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v26);
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
    v41 = "Readable_Range AMCP::DAL::create_readable_range(const DAL_Time_Range &, Ring_Buffer_Base &)";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
    v43 = 268;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  v17 = *a2;
  v8 = *(a2 + 3);
  v18 = *(a2 + 2);
  v19 = v8;
  v9 = *(a2 + 4);
  v20 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(a2 + 40);
  v10 = *(a2 + 8);
  v22 = *(a2 + 7);
  v23 = v10;
  v11 = *(a2 + 9);
  v24 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Ring_Buffer_Base::create_readable_range(a3, &v17, this);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void HALS_IOUAObject::CacheCustomPropertyInfo(HALS_IOUAObject *this)
{
  *(this + 4) = *(this + 3);
  *&v43.mSelector = 0x676C6F6263757374;
  v43.mElement = 0;
  v2 = *(this + 1);
  v3 = *(v2 + 736);
  v4 = *(v2 + 744);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v3 + 4), &v43, *(this + 4));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (HasProperty)
  {
    v6 = *(this + 1);
    v7 = *(v6 + 736);
    v8 = *(v6 + 744);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(this + 4);
    if (HALS_IOUAUCDriver::GetHasProperty(*(v7 + 4), "tsucbolg", v9) && (PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v7 + 4), "tsucbolg", v9, 0, 0), (v44 = PropertySize) != 0))
    {
      std::vector<AudioServerPlugInCustomPropertyInfo>::vector[abi:ne200100](&__p, PropertySize / 0xC);
      HALS_IOUAUCDriver::GetPropertyData(*(v7 + 4), "tsucbolg", v9, 0, 0, __p, &v44);
      v11 = v44 / 0xC;
      v12 = v41;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v41 - __p) >> 2);
      v14 = v44 / 0xC - v13;
      if (v44 / 0xC > v13)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 2) < v14)
        {
          if (0x5555555555555556 * ((v42 - __p) >> 2) > v11)
          {
            v11 = 0x5555555555555556 * ((v42 - __p) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v42 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v15 = 0x1555555555555555;
          }

          else
          {
            v15 = v11;
          }

          std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v15);
        }

        v39 = 12 * ((12 * v14 - 12) / 0xC) + 12;
        bzero(v41, v39);
        v38 = &v12[v39];
        goto LABEL_56;
      }

      if (v44 / 0xC < v13)
      {
        v38 = __p + 12 * v11;
LABEL_56:
        v41 = v38;
      }
    }

    else
    {
      __p = 0;
      v41 = 0;
      v42 = 0;
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v16 = __p;
    v17 = v41;
    if (__p != v41)
    {
      do
      {
        v18 = *(v16 + 1);
        if (v18 == 1886155636 || v18 == 1667658612)
        {
          v20 = *(v16 + 2);
          v21 = !v20 || v20 == 1886155636;
          if (v21 || v20 == 1667658612)
          {
            v24 = *(this + 4);
            v23 = *(this + 5);
            if (v24 >= v23)
            {
              v27 = *(this + 3);
              v28 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v27) >> 2);
              v29 = v28 + 1;
              if (v28 + 1 > 0x1555555555555555)
              {
                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              v30 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v27) >> 2);
              if (2 * v30 > v29)
              {
                v29 = 2 * v30;
              }

              if (v30 >= 0xAAAAAAAAAAAAAAALL)
              {
                v31 = 0x1555555555555555;
              }

              else
              {
                v31 = v29;
              }

              if (v31)
              {
                std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v31);
              }

              v32 = 12 * v28;
              v33 = *v16;
              *(v32 + 8) = *(v16 + 2);
              *v32 = v33;
              v26 = 12 * v28 + 12;
              v34 = *(this + 3);
              v35 = *(this + 4) - v34;
              v36 = 12 * v28 - v35;
              memcpy((v32 - v35), v34, v35);
              v37 = *(this + 3);
              *(this + 3) = v36;
              *(this + 4) = v26;
              *(this + 5) = 0;
              if (v37)
              {
                operator delete(v37);
              }
            }

            else
            {
              v25 = *v16;
              *(v24 + 8) = *(v16 + 2);
              *v24 = v25;
              v26 = v24 + 12;
            }

            *(this + 4) = v26;
          }
        }

        v16 += 12;
      }

      while (v16 != v17);
      v16 = __p;
    }

    if (v16)
    {
      v41 = v16;
      operator delete(v16);
    }
  }
}

void sub_1DE68F53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_IOUAObject::IsCustomProperty(HALS_IOUAObject *this, int a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      v2 += 3;
      if (v2 == v3)
      {
        v2 = *(this + 4);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void HALS_IOUAObject::~HALS_IOUAObject(HALS_IOUAObject *this, HALS_Object *a2)
{
  HALS_IOUAObject::~HALS_IOUAObject(this, a2);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987E68;
  v3 = *(this + 1);
  v4 = (v3 + 336);
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 != this)
  {
    HALS_ObjectMap::ReleaseObject(v3, a2);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

void HALS_IOUAObject::HALS_IOUAObject(HALS_IOUAObject *this, HALS_IOUADriver *a2, int a3)
{
  *this = &unk_1F5987E68;
  *(this + 1) = a2;
  *(this + 4) = a3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v3 = (a2 + 336);
  if (!a2)
  {
    v3 = 0;
  }

  if (v3 != this)
  {
    HALS_ObjectMap::RetainObject(a2, a2);
  }
}

void sub_1DE68F6D8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_IOUAObject::IsPropertySettable(HALS_IOUAObject *this, const AudioObjectPropertyAddress *a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (!(*(*this + 16))(this, a2->mSelector, a3, a4))
  {
    return 0;
  }

  v6 = *(this + 1);
  v7 = *(v6 + 736);
  v8 = *(v6 + 744);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IsPropertySettable = HALS_IOUAUCDriver::GetIsPropertySettable(*(v7 + 4), a2, *(this + 4));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return IsPropertySettable;
}

void sub_1DE68F798(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAObject::GetPropertyDataSize(HALS_IOUAObject *this, _DWORD *a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  result = (*(*this + 16))(this, *a2, a3, a4, a5, a6);
  if (result)
  {
    v9 = *(this + 3);
    v10 = *(this + 4);
    if (v9 != v10)
    {
      while (*v9 != *a2)
      {
        v9 += 3;
        if (v9 == v10)
        {
          goto LABEL_5;
        }
      }
    }

    if (v9 == v10)
    {
LABEL_5:
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
        v27 = "HALS_IOUAObject.cpp";
        v28 = 1024;
        v29 = 169;
        _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Unknown Property", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v18, "Unknown property");
      std::runtime_error::runtime_error(&v19, &v18);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = -1;
      v19.__vftable = &unk_1F5992170;
      v20 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
      v30 = "UInt32 HALS_IOUAObject::GetPropertyDataSize(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, HALS_Client *) const";
      v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAObject.cpp";
      v32 = 169;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
    }

    v15 = HIDWORD(*v9);
    if (v15 == 1667658612)
    {
      result = 8;
    }

    else
    {
      result = 8 * (v15 == 1886155636);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE68FA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v20 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v19)
  {
    __cxa_free_exception(v18);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v20 - 129));
  _Unwind_Resume(a1);
}

void HALS_IOUAObject::GetPropertyData(HALS_IOUAObject *this, unsigned int *a2, const AudioObjectPropertyAddress *a3, AMCP::Log::AMCP_Scope_Registry **a4, unsigned int *a5, void *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v69 = *MEMORY[0x1E69E9840];
  v14 = (*(*this + 16))(this, *a2, a3, a4, a5, a6, a7, a8);
  if (!v14)
  {
    v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v41 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
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
      *buf = 136315394;
      v61 = "HALS_IOUAObject.cpp";
      v62 = 1024;
      v63 = 193;
      _os_log_error_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Unknown Property", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v45, "Unknown property");
    std::runtime_error::runtime_error(&v52, &v45);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = -1;
    v52.__vftable = &unk_1F5992170;
    v53 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v52);
    v66 = "void HALS_IOUAObject::GetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, UInt32 &, void *, UInt32, const void *, HALS_Client *) const";
    v67 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAObject.cpp";
    v68 = 193;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(buffer);
  }

  if (a5)
  {
    v15 = *a5;
    if (*a5)
    {
      CFRetain(*a5);
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(this + 1);
  v17 = *(v16 + 736);
  v18 = *(v16 + 744);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = *(this + 4);
  v20 = *a2;
  v21 = a2[2];
  if (v15)
  {
    CFRetain(v15);
    *&v59.mSelector = v20;
    v59.mElement = v21;
    v22 = IOCFSerialize(v15, 0);
    v58 = v22;
    if (!v22)
    {
      v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v23 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
        v61 = "HALS_IOUAUCDriver.cpp";
        v62 = 1024;
        v63 = 379;
        v64 = 2080;
        v65 = "(serialized_qualifer) == nullptr";
        _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to serialize CF qualifer", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v45, "Failed to serialize CF qualifer");
      std::runtime_error::runtime_error(&v52, &v45);
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = -1;
      v52.__vftable = &unk_1F5992170;
      v53 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v52);
      v66 = "CFTypeRef HALS_IOUAUCDriver::get_custom_property_value(AudioObjectID, AudioObjectPropertyAddress, applesauce::CF::TypeRef)";
      v67 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
      v68 = 379;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(buffer);
    }
  }

  else
  {
    v22 = 0;
    v58 = 0;
    *&v59.mSelector = v20;
    v59.mElement = v21;
  }

  v50 = &v58;
  BytePtr = CFDataGetBytePtr(v22);
  Length = CFDataGetLength(v58);
  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v17 + 4), &v59, v19, BytePtr, Length);
  bufferSize = PropertySize;
  if (!PropertySize)
  {
    v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v33 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315650;
      v61 = "HALS_IOUAUCDriver.cpp";
      v62 = 1024;
      v63 = 386;
      v64 = 2080;
      v65 = "out_size == 0";
      _os_log_error_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get_string_property size", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v45, "Failed to get_string_property size");
    std::runtime_error::runtime_error(&v52, &v45);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = -1;
    v52.__vftable = &unk_1F5992170;
    v53 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v52);
    v66 = "CFTypeRef HALS_IOUAUCDriver::get_custom_property_value(AudioObjectID, AudioObjectPropertyAddress, applesauce::CF::TypeRef)";
    v67 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v68 = 386;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(buffer);
  }

  buf[0] = 0;
  std::vector<std::byte>::vector[abi:ne200100](buffer, PropertySize);
  HALS_IOUAUCDriver::GetPropertyData(*(v17 + 4), &v59, v19, BytePtr, Length, buffer[0], &bufferSize);
  errorString = 0;
  v30 = IOCFUnserializeBinary(buffer[0], bufferSize, *MEMORY[0x1E695E478], 0, &errorString);
  if (errorString)
  {
    v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v37 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v30);
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
      v61 = "HALS_IOUAUCDriver.cpp";
      v62 = 1024;
      v63 = 393;
      v64 = 2080;
      v65 = "error";
      _os_log_error_impl(&dword_1DE1F9000, v40, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to deserialize string object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v46, "Failed to deserialize string object");
    std::runtime_error::runtime_error(&v52, &v46);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = -1;
    v52.__vftable = &unk_1F5992170;
    v53 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v52);
    v66 = "CFTypeRef HALS_IOUAUCDriver::get_custom_property_value(AudioObjectID, AudioObjectPropertyAddress, applesauce::CF::TypeRef)";
    v67 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v68 = 393;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v45);
  }

  v31 = v30;
  if (buffer[0])
  {
    buffer[1] = buffer[0];
    operator delete(buffer[0]);
  }

  applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAUCDriver::get_custom_property_value(unsigned int,AudioObjectPropertyAddress,applesauce::CF::TypeRef)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&v50);
  *a4 = v31;
  if (v15)
  {
    CFRelease(v15);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  a3->mSelector = 8;
  if (v15)
  {
    CFRelease(v15);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1DE69048C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::runtime_error a11, uint64_t a12, uint64_t a13, std::runtime_error a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v32 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a30);
  std::runtime_error::~runtime_error(&a11);
  if (v31)
  {
    __cxa_free_exception(v30);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a14);
  _Unwind_Resume(a1);
}

void HALS_IOUAObject::SetPropertyData(HALS_IOUAObject *this, unsigned int *a2, const AudioObjectPropertyAddress *a3, CFTypeRef *a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v61 = *MEMORY[0x1E69E9840];
  v12 = (*(*this + 16))(this, *a2, a3, a4, a5, a6, a7, a8);
  if (!v12)
  {
    v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v36 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v39 = *v38;
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    else
    {
      v39 = *v38;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOUAObject.cpp";
      v54 = 1024;
      v55 = 214;
      _os_log_error_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Unknown Property", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v52);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v44, "Unknown property");
    std::runtime_error::runtime_error(&v45, &v44);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5992170;
    v46 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v45);
    v58 = "void HALS_IOUAObject::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
    v59 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAObject.cpp";
    v60 = 214;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
  }

  if (a4)
  {
    v13 = *a4;
    if (*a4)
    {
      CFRetain(*a4);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *(this + 1);
  v15 = *(v14 + 736);
  v16 = *(v14 + 744);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(this + 4);
  v18 = *a2;
  v19 = a2[2];
  if (v13)
  {
    CFRetain(v13);
  }

  v20 = *&a3->mSelector;
  if (v20)
  {
    CFRetain(v20);
  }

  *&v52.mSelector = v18;
  v52.mElement = v19;
  v21 = IOCFSerialize(v20, 0);
  theData = v21;
  if (!v21)
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
      *buf = 136315650;
      *&buf[4] = "HALS_IOUAUCDriver.cpp";
      v54 = 1024;
      v55 = 404;
      v56 = 2080;
      v57 = "(data_serialized_data) == nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to serialized data CF object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&p_theData);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v44, "Failed to serialized data CF object");
    std::runtime_error::runtime_error(&v45, &v44);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5992170;
    v46 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v45);
    v58 = "void HALS_IOUAUCDriver::set_custom_property_value(AudioObjectID, AudioObjectPropertyAddress, applesauce::CF::TypeRef, applesauce::CF::TypeRef)";
    v59 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v60 = 404;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
  }

  p_theData = &theData;
  BytePtr = CFDataGetBytePtr(v21);
  Length = CFDataGetLength(theData);
  v41 = 0;
  if (v13)
  {
    v24 = IOCFSerialize(v13, 0);
    v41 = v24;
    if (!v24)
    {
      v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v32 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
      }

      v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        v35 = *v34;
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      else
      {
        v35 = *v34;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_IOUAUCDriver.cpp";
        v54 = 1024;
        v55 = 414;
        v56 = 2080;
        v57 = "(qualifier_serialized_data) == nullptr";
        _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to serialized qualifier CF object", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v44, "Failed to serialized qualifier CF object");
      std::runtime_error::runtime_error(&v45, &v44);
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = -1;
      v45.__vftable = &unk_1F5992170;
      v46 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v45);
      v58 = "void HALS_IOUAUCDriver::set_custom_property_value(AudioObjectID, AudioObjectPropertyAddress, applesauce::CF::TypeRef, applesauce::CF::TypeRef)";
      v59 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
      v60 = 414;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
    }

    *buf = &v41;
    v25 = CFDataGetBytePtr(v24);
    if (v41)
    {
      v26 = CFDataGetLength(v41);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    *buf = &v41;
  }

  HALS_IOUAUCDriver::SetPropertyData(v15, &v52, v17, v25, v26, BytePtr, Length);
  applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAUCDriver::set_custom_property_value(unsigned int,AudioObjectPropertyAddress,applesauce::CF::TypeRef,applesauce::CF::TypeRef)::$_1,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(buf);
  CFRelease(theData);
  if (v20)
  {
    CFRelease(v20);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1DE690E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, std::runtime_error a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v33 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a31);
  std::runtime_error::~runtime_error(&a30);
  if (v32)
  {
    __cxa_free_exception(v31);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v33 - 176));
  _Unwind_Resume(a1);
}

uint64_t HALS_Object::GetPropertyTypeInfo(HALS_Object *this, HALB_Info *a2, BOOL *a3, unsigned int *a4)
{
  v12 = 0;
  *a3 = HALB_Info::GetPropertyDataType(a2, &v12, a3);
  v11 = 0;
  result = HALB_Info::GetPropertyQualifierDataType(a2, &v11, v7);
  *a4 = result;
  if (v12 != 1 || (v11 & 1) == 0)
  {
    v9 = *(this + 4);
    v13 = 0x676C6F6263757374;
    LODWORD(v14) = 0;
    result = (*(*this + 96))(this, v9, &v13, 0);
    if (result)
    {
      v10 = *(this + 4);
      v13 = 0x676C6F6263757374;
      LODWORD(v14) = 0;
      result = (*(*this + 112))(this, v10, &v13, 0, 0, 0);
      if (result >= 0xC)
      {
        v12 = 0;
        operator new[]();
      }
    }
  }

  return result;
}

void HALS_Object::SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (*(*a1 + 96))(a1, a2, a3, a8);
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  if (v8)
  {
    v10 = 1852797029;
  }

  else
  {
    v10 = 2003332927;
  }

  exception[2] = v10;
}

uint64_t HALS_Object::GetPropertyData(uint64_t result, uint64_t a2, int *a3, unsigned int a4, int *a5, uint64_t *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HALS_Object.cpp";
      v18 = 1024;
      v19 = 459;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetPropertyData: no where to put the return value", &v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v13 = 1852797029;
LABEL_38:
    exception[2] = v13;
  }

  v8 = *a3;
  if (*a3 <= 1869638758)
  {
    if (v8 == 1650682995)
    {
      if (a4 > 3)
      {
        v9 = *(result + 24);
        if (v9 == *(result + 20))
        {
          result = HALB_Info::GetBaseClass(*(result + 24));
          v9 = result;
        }

        goto LABEL_19;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      v16 = 136315394;
      v17 = "HALS_Object.cpp";
      v18 = 1024;
      v19 = 466;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d  HALS_Object::GetPropertyData: bad property data size for kAudioObjectPropertyBaseClass";
      goto LABEL_36;
    }

    if (v8 != 1668047219)
    {
      goto LABEL_27;
    }

    if (a4 > 3)
    {
      v9 = *(result + 20);
      goto LABEL_19;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v16 = 136315394;
    v17 = "HALS_Object.cpp";
    v18 = 1024;
    v19 = 473;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  HALS_Object::GetPropertyData: bad property data size for kAudioObjectPropertyClass";
    goto LABEL_36;
  }

  if (v8 == 1869638759)
  {
    if (a4 > 7)
    {
      if (*(result + 40) == 1)
      {
        *a6 = @"com.apple.audio.V5";
      }

      else
      {
        result = *(result + 32);
        *a6 = result;
        if (result)
        {
          result = CFRetain(result);
        }
      }

      v10 = 8;
      goto LABEL_23;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_37:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v13 = 561211770;
      goto LABEL_38;
    }

    v16 = 136315394;
    v17 = "HALS_Object.cpp";
    v18 = 1024;
    v19 = 487;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  HALS_Object::GetPropertyData: bad property data size for kAudioObjectPropertyCreator";
LABEL_36:
    _os_log_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, v15, &v16, 0x12u);
    goto LABEL_37;
  }

  if (v8 != 1870098020)
  {
    if (v8 == 1937007734)
    {
      if (a4 > 3)
      {
        v9 = *(result + 28);
LABEL_19:
        *a6 = v9;
        v10 = 4;
        goto LABEL_23;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      v16 = 136315394;
      v17 = "HALS_Object.cpp";
      v18 = 1024;
      v19 = 480;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d  HALS_Object::GetPropertyData: bad property data size for kAudioObjectPropertyOwner";
      goto LABEL_36;
    }

LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v13 = 2003332927;
    goto LABEL_38;
  }

  v10 = 0;
LABEL_23:
  *a5 = v10;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_Object::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 4;
  if (*a3 > 1819107690)
  {
    if (v3 <= 1869638758)
    {
      if (v3 == 1819107691 || v3 == 1819111268)
      {
        return 8;
      }

      v7 = 1819173229;
LABEL_22:
      if (v3 == v7)
      {
        return 8;
      }

LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 2003332927;
    }

    if (v3 > 1936618860)
    {
      if (v3 == 1936618861)
      {
        return 8;
      }

      if (v3 != 1937007734)
      {
        goto LABEL_27;
      }

      return result;
    }

    if (v3 != 1869638759)
    {
      if (v3 == 1870098020)
      {
        return 0;
      }

      goto LABEL_27;
    }

    return 8;
  }

  if (v3 <= 1768187245)
  {
    if (v3 != 1650682995 && v3 != 1668047219)
    {
      v7 = 1719105134;
      goto LABEL_22;
    }

    return result;
  }

  if (v3 > 1818454125)
  {
    if (v3 != 1818454126)
    {
      v5 = 28270;
      goto LABEL_21;
    }

    return 8;
  }

  if (v3 != 1768187246)
  {
    v5 = 25454;
LABEL_21:
    v7 = v5 | 0x6C630000;
    goto LABEL_22;
  }

  return result;
}

uint64_t HALS_Object::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  v4 = *a3;
  if (*a3 > 1819107690)
  {
    if (v4 <= 1869638758)
    {
      v5 = v4 == 1819107691 || v4 == 1819111268;
      v6 = 1819173229;
    }

    else if (v4 > 1936618860)
    {
      v5 = v4 == 1936618861;
      v6 = 1937007734;
    }

    else
    {
      v5 = v4 == 1869638759;
      v6 = 1870098020;
    }

LABEL_20:
    if (v5 || v4 == v6)
    {
      return result;
    }

LABEL_24:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (v4 <= 1768187245)
  {
    v5 = v4 == 1650682995 || v4 == 1668047219;
    v6 = 1719105134;
    goto LABEL_20;
  }

  if (v4 > 1818454125)
  {
    v5 = v4 == 1818454126;
    v6 = 1818455662;
    goto LABEL_20;
  }

  if (v4 == 1768187246)
  {
    return 1;
  }

  if (v4 != 1818452846)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t HALS_Object::CopyResourceBundle(HALS_Object *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(this + 7);
  if (v1)
  {
    v2 = HALS_ObjectMap::CopyObjectByObjectID(v1);
    v3 = v2;
    if (!v2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "HALS_Object.cpp";
        v11 = 1024;
        v12 = 229;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::CopyResourceBundle: this object's owner doesn't exist", &v9, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560947818;
    }

    v4 = (*(*v2 + 88))(v2);
    HALS_ObjectMap::ReleaseObject(v3, v5);
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE691B58(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_Object::GetMIGDispatchQueue(HALS_Object *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(this + 7);
  if (!v1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 217;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetMIGDispatchQueue: ownerless objects must implement their own dispatch queue", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v2 = HALS_ObjectMap::CopyObjectByObjectID(v1);
  v3 = v2;
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 219;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetMIGDispatchQueue: this object's owner doesn't exist", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 560947818;
  }

  v4 = (*(*v2 + 72))(v2);
  HALS_ObjectMap::ReleaseObject(v3, v5);
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(this + 7);
  if (!v1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 209;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetMIGDispatchQueue: ownerless objects must implement their own dispatch queue", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v2 = HALS_ObjectMap::CopyObjectByObjectID(v1);
  v3 = v2;
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 211;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetMIGDispatchQueue: this object's owner doesn't exist", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 560947818;
  }

  v4 = (*(*v2 + 72))(v2);
  HALS_ObjectMap::ReleaseObject(v3, v5);
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE691D88(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE691FC0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_Object::GetCommandGate(HALS_Object *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(this + 7);
  if (!v1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 194;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetCommandGate: ownerless objects must implement their own command gate", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v2 = HALS_ObjectMap::CopyObjectByObjectID(v1);
  v3 = v2;
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 196;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetCommandGate: this object's owner doesn't exist", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 560947818;
  }

  v4 = (*(*v2 + 56))(v2);
  HALS_ObjectMap::ReleaseObject(v3, v5);
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(this + 7);
  if (!v1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 186;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetCommandGate: ownerless objects must implement their own command gate", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v2 = HALS_ObjectMap::CopyObjectByObjectID(v1);
  v3 = v2;
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 188;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetCommandGate: this object's owner doesn't exist", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 560947818;
  }

  v4 = (*(*v2 + 56))(v2);
  HALS_ObjectMap::ReleaseObject(v3, v5);
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE6921F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE692430(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Object::MonitorCommandGate(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 28);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "HALS_Object.cpp";
      v14 = 1024;
      v15 = 202;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::MonitorCommandGate: ownerless objects must implement their own command gate monitoring.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v4 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  v5 = v4;
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 48))(v4, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  HALS_ObjectMap::ReleaseObject(v5, v7);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE6925D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_Object::IsActive(HALS_Object *this)
{
  v1 = *(this + 2);
  v2 = v1 != 0;
  v3 = *(this + 7);
  if (v3)
  {
    v4 = HALS_ObjectMap::CopyObjectByObjectID(v3);
    v6 = v4;
    if (v1)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v2 = 0;
    }

    else
    {
      v2 = (*(*v4 + 40))(v4);
    }

    HALS_ObjectMap::ReleaseObject(v6, v5);
  }

  return v2;
}

void HALS_Object::~HALS_Object(HALS_Object *this)
{
  HALS_Object::~HALS_Object(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987EA8;
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (v3)
  {
    v4 = HALS_ObjectMap::sObjectInfoListMutex;
    v5 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    HALS_ObjectMap::_UnmapObject(v3);
    HALB_Mutex::Locker::~Locker(&v4);
  }
}

void HALS_Object::Deactivate(HALS_Object *this)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZN11HALS_Object10DeactivateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_17409;
  v2[4] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v2);
}

void sub_1DE692838(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*(*v1 + 32))(v1);
  JUMPOUT(0x1DE692828);
}

void sub_1DE69286C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE692828);
}

void HALS_Object::Activate(HALS_Object *this, HALS_Object *a2)
{
  HALS_ObjectMap::RetainObject(this, a2);
  v4 = this;
  while (v4)
  {
    v5 = *(v4 + 5);
    v6 = *(v4 + 6);
    if (v5 == v6)
    {
      if (v5 == 1634757735 || v5 == 1953656941)
      {
        goto LABEL_21;
      }
    }

    else if (v5 == 1634757735 || v5 == 1953656941 || v6 == 1634757735 || v6 == 1953656941)
    {
LABEL_21:
      v13 = *(v4 + 6);
      if (v13)
      {
        CFRetain(v13);
        v14 = *(v4 + 6);
      }

      else
      {
        v14 = 0;
      }

      *(this + 4) = v14;
      break;
    }

    v11 = HALS_ObjectMap::CopyObjectByObjectID(*(v4 + 7));
    v12 = v4;
    v4 = v11;
    HALS_ObjectMap::ReleaseObject(v12, v11);
  }

  HALS_ObjectMap::RetainObject(this, v3);
  v16 = this;
  while (v16)
  {
    v17 = *(v16 + 5);
    if (v17 <= 1701078389)
    {
      if (v17 == 1633773415 || v17 == 1633969526)
      {
LABEL_50:
        *(this + 40) = (*(*v16 + 232))(v16);
        break;
      }
    }

    else if (v17 == 1701078390 || v17 == 1701733488 || v17 == 1919182198)
    {
      goto LABEL_50;
    }

    v21 = *(v16 + 6);
    if (v17 != v21)
    {
      if (v21 <= 1701078389)
      {
        if (v21 == 1633773415 || v21 == 1633969526)
        {
          goto LABEL_50;
        }
      }

      else if (v21 == 1701078390 || v21 == 1701733488 || v21 == 1919182198)
      {
        goto LABEL_50;
      }
    }

    v22 = HALS_ObjectMap::CopyObjectByObjectID(*(v16 + 7));
    v23 = v16;
    v16 = v22;
    HALS_ObjectMap::ReleaseObject(v23, v22);
  }

  *(this + 2) = 1;
  HALS_ObjectMap::ReleaseObject(v16, v15);
  HALS_ObjectMap::ReleaseObject(v4, v24);
}

void HALS_Object::HALS_Object(HALS_Object *this, int a2, int a3, uint64_t a4, HALS_Object *a5)
{
  *this = &unk_1F5987EA8;
  *(this + 2) = 0;
  *(this + 6) = 1;
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  v13 = HALS_ObjectMap::sObjectInfoListMutex;
  v14 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
  v9 = HALS_ObjectMap::sNextObjectID++;
  HALB_Mutex::Locker::~Locker(&v13);
  *(this + 4) = v9;
  *(this + 5) = a2;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  *(this + 6) = v11;
  if (a4)
  {
    v12 = *(a4 + 16);
  }

  else
  {
    v12 = 0;
  }

  *(this + 7) = v12;
  *(this + 4) = &stru_1F5992518;
  *(this + 40) = 0;
  *(this + 11) = 0;
  HALS_ObjectMap::MapObject(v9, this, v10);
}

const __CFString *HALS_Object::CopyLocalizedString(HALS_Object *this, const AudioObjectPropertyAddress *a2, const __CFString *a3)
{
  IsLocalizedStringProperty = HALB_Info::IsLocalizedStringProperty(a2->mSelector, a2);
  if (a3 && IsLocalizedStringProperty)
  {
    v7 = (*(*this + 88))(this);
    v13[0] = &unk_1F5967B10;
    v13[1] = v7;
    v14 = 1;
    if (v7)
    {
      v8 = (*(*this + 192))(this, a2);
      v10 = HALB_CFBundle::CopyLocalizedString(v13, a3, v8, a3, v9);
      v11 = v10;
      if (v10 == a3)
      {
        CFRelease(v10);
      }
    }

    else
    {
      v11 = a3;
    }

    HALB_CFBundle::~HALB_CFBundle(v13);
    return v11;
  }

  return a3;
}

void sub_1DE692CB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALB_CFBundle::~HALB_CFBundle(va);
  _Unwind_Resume(a1);
}

void HALS_Object::PropertiesChanged(HALS_Object *this, HALS_NotificationManager *a2, uint64_t a3, uint64_t a4, const AudioObjectPropertyAddress *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = *((*(*this + 56))(this) + 72);
  if (v9 == pthread_self() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "HALS_Object.cpp";
    v14 = 1024;
    v15 = 646;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Object::PropertiesChanged: Notifications are being sent from inside the command gate.", &v12, 0x12u);
  }

  HALS_NotificationManager::PropertiesChanged(a2, a3, a4, a5, v10);
  v11 = *MEMORY[0x1E69E9840];
}

void HALS_Object::PropertiesChanged_Sync(HALS_Object *this, HALS_NotificationManager *a2, uint64_t a3, uint64_t a4, const AudioObjectPropertyAddress *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = *((*(*this + 56))(this) + 72);
  if (v9 == pthread_self() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "HALS_Object.cpp";
    v14 = 1024;
    v15 = 655;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Object::PropertiesChanged_Sync: Notifications are being sent from inside the command gate.", &v12, 0x12u);
  }

  HALS_NotificationManager::PropertiesChanged_Sync(a2, a3, a4, a5, v10);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_Object::IsObjectClassInClassIDList(HALS_Object *this, int *a2, const unsigned int *a3, HALS_Object *a4)
{
  v4 = this;
  result = 1;
  if (v4)
  {
    v6 = a2;
    if (a2)
    {
      v7 = v4;
      v8 = a3[5];
      v9 = a3[6];
      v10 = 1;
      do
      {
        v12 = *v6++;
        v11 = v12;
        IsSubClass = HALB_Info::IsSubClass(v8, v12);
        v14 = IsSubClass;
        result = IsSubClass | (v8 != v9);
        if (v8 != v9 && !v14)
        {
          result = HALB_Info::IsSubClass(v9, v11);
        }

        if (result)
        {
          break;
        }
      }

      while (v10++ < v7);
    }
  }

  return result;
}

void HostStreamModifierList::revert_modifiers(HostStreamModifierList *this, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  AHAL_DSP::IHostModifiers::find_as<HALS_DSPHostModifier_StreamLatencyFrames>(buf, this);
  if (*buf)
  {
    v20 = *(*buf + 12);
    HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_StreamLatencyFrames,unsigned int>::set_requested(*buf, &v20);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 3));
  v5 = v4;
  if (v4)
  {
    HALS_Stream::ApplyHostedDSPModifiersForClient(v4[8], *(this + 2), a2);
  }

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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 0;
    v13 = 0;
    v14 = 47;
    do
    {
      v15 = &aLibraryCachesC_196[v12];
      if (v14 == 47)
      {
        v13 = &aLibraryCachesC_196[v12];
      }

      v14 = v15[1];
      if (!v15[1])
      {
        break;
      }
    }

    while (v12++ < 0xFFF);
    if (v13)
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostPerClientStreamEdits.cpp";
    }

    v18 = *(this + 2);
    v19 = *(this + 3);
    *buf = 136315906;
    *&buf[4] = v17;
    *&buf[12] = 1024;
    *&buf[14] = 67;
    v22 = 1024;
    v23 = v18;
    v24 = 1024;
    v25 = v19;
    _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] (Client ID: %d) (Stream ID: %d) Host requests to REVERT modifiers.", buf, 0x1Eu);
  }

  HALS_ObjectMap::ReleaseObject(v5, v10);
  v11 = *MEMORY[0x1E69E9840];
}

void AHAL_DSP::IHostModifiers::find_as<HALS_DSPHostModifier_StreamLatencyFrames>(void *a1, uint64_t a2)
{
  (*(*a2 + 16))(&v9, a2);
  v3 = v9;
  v4 = v10;
  if (v9 == v10)
  {
LABEL_5:
    v11 = &v9;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v11);
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = **v5;
        if (v7)
        {
          break;
        }
      }

      *a1 = 0;
      a1[1] = 0;
      v3 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(v3 + 8);
    *a1 = v7;
    a1[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = &v9;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v11);
  }
}

uint64_t HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_StreamLatencyFrames,unsigned int>::set_requested(uint64_t a1, int *a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *a2;
  v5 = 12;
  if (*(a1 + 20))
  {
    v5 = 16;
  }

  if (v4 != *(a1 + v5))
  {
    *(a1 + 16) = v4;
    *(a1 + 20) = 1;
    atomic_exchange((a1 + 8), 1u);
  }

  std::mutex::unlock((a1 + 24));
  v6 = *(*a1 + 64);

  return v6(a1);
}

void HostStreamModifierList::apply_modifiers(HostStreamModifierList *this, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 3));
  v5 = v4;
  if (v4)
  {
    HALS_Stream::ApplyHostedDSPModifiersForClient(v4[8], *(this + 2), a2);
  }

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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 0;
    v13 = 0;
    v14 = 47;
    do
    {
      v15 = &aLibraryCachesC_196[v12];
      if (v14 == 47)
      {
        v13 = &aLibraryCachesC_196[v12];
      }

      v14 = v15[1];
      if (!v15[1])
      {
        break;
      }
    }

    while (v12++ < 0xFFF);
    if (v13)
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostPerClientStreamEdits.cpp";
    }

    v18 = *(this + 2);
    v19 = *(this + 3);
    v20 = 136315906;
    v21 = v17;
    v22 = 1024;
    v23 = 58;
    v24 = 1024;
    v25 = v18;
    v26 = 1024;
    v27 = v19;
    _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] (Client ID: %d) (Stream ID: %d) Host requests to apply modifiers.", &v20, 0x1Eu);
  }

  HALS_ObjectMap::ReleaseObject(v5, v10);
  v11 = *MEMORY[0x1E69E9840];
}

void HostStreamModifierList::execute(HostStreamModifierList *this)
{
  v20 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 0;
    v8 = 0;
    v9 = 47;
    do
    {
      v10 = &aLibraryCachesC_196[v7];
      if (v9 == 47)
      {
        v8 = &aLibraryCachesC_196[v7];
      }

      v9 = v10[1];
      if (!v10[1])
      {
        break;
      }
    }

    while (v7++ < 0xFFF);
    if (v8)
    {
      v12 = v8 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostPerClientStreamEdits.cpp";
    }

    v13 = *(this + 2);
    v14 = 136315650;
    v15 = v12;
    v16 = 1024;
    v17 = 50;
    v18 = 1024;
    v19 = v13;
    _os_log_debug_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] (Client ID: %d) DSP requests to execute modifiers.", &v14, 0x18u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void HostStreamModifierList::requestable_modifiers(HostStreamModifierList *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>>::__init_with_size[abi:ne200100]<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*,std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*>(a2, *(this + 2), *(this + 3), (*(this + 3) - *(this + 2)) >> 4);
}

void HostStreamModifierList::~HostStreamModifierList(HostStreamModifierList *this)
{
  *this = &unk_1F5987F88;
  v1 = (this + 16);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987F88;
  v1 = (this + 16);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void HALS_DSPHostPerClientStreamEdits::~HALS_DSPHostPerClientStreamEdits(HALS_DSPHostPerClientStreamEdits *this)
{
  *this = &unk_1F5987FC8;
  std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>>>::destroy(*(this + 12));
  std::mutex::~mutex((this + 24));

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987FC8;
  std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>>>::destroy(*(this + 12));
  std::mutex::~mutex((this + 24));
}

void std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>>>::destroy(a1[1]);
    v2 = a1[13];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<HALS_DSPHostModifier_StreamLatencyFrames>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5988038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_DSPHostPerClientStreamEdits::get_modifiers_for_client(HALS_DSPHostPerClientStreamEdits *this, uint64_t a2, unsigned int a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  std::mutex::lock((a2 + 24));
  v8 = *(a2 + 96);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a2 + 96;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a3;
    v12 = v10 < a3;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a2 + 96 && *(v9 + 32) <= a3)
  {
    v15 = *(v9 + 96);
    v14 = *(v9 + 104);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    *this = v15;
    *(this + 1) = v14;
  }

  else
  {
LABEL_9:
    if (a4)
    {
      v13 = *(*(a2 + 8) + 16);
      operator new();
    }
  }

  std::mutex::unlock((a2 + 24));
}

void sub_1DE693C30(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::mutex::unlock((v1 + 24));
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HostStreamModifierList>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5988088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_DSPHostPerClientStreamEdits::update_stream_with_modifiers(HALS_DSPHostPerClientStreamEdits *this, unsigned int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v33);
  std::mutex::lock((this + 24));
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = this + 96;
  do
  {
    v6 = *(v4 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 == this + 96 || *(v5 + 8) > a2)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v19 = *(v5 + 12);
  v20 = *(v5 + 13);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AHAL_DSP::IHostModifiers::find_as<HALS_DSPHostModifier_StreamLatencyFrames>(buf, v19);
  v9 = *buf;
  if (*buf)
  {
    v21 = *(v5 + 10);
    std::mutex::lock((*buf + 24));
    if ((*(*v9 + 72))(v9, 1, 3))
    {
      v22 = *(v9 + 16);
      std::mutex::unlock((v9 + 24));
      if ((v22 & 0x100000000) != 0)
      {
        *(v5 + 10) = v22;
        v9 = v21 != v22;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "added DSP latency of ", 21);
        v23 = MEMORY[0x1E12C1210](&v34, v22);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " frames", 7);
        goto LABEL_31;
      }
    }

    else
    {
      std::mutex::unlock((v9 + 24));
    }

    v9 = 0;
  }

LABEL_31:
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

LABEL_10:
  std::mutex::unlock((this + 24));
  v10 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](buf, v33);
  if (SHIBYTE(v41) < 0)
  {
    v11 = *&buf[8];
    operator delete(*buf);
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else if (!HIBYTE(v41))
  {
    goto LABEL_20;
  }

  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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
    v24 = 0;
    v25 = 0;
    v26 = 47;
    do
    {
      v27 = &aLibraryCachesC_196[v24];
      if (v26 == 47)
      {
        v25 = &aLibraryCachesC_196[v24];
      }

      v26 = v27[1];
      if (!v27[1])
      {
        break;
      }

      v7 = v24++ >= 0xFFF;
    }

    while (!v7);
    v28 = *(*(this + 1) + 16);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v31, v33);
    if (v25)
    {
      v29 = v25 + 1;
    }

    else
    {
      v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostPerClientStreamEdits.cpp";
    }

    if (v32 >= 0)
    {
      v30 = v31;
    }

    else
    {
      v30 = v31[0];
    }

    *buf = 136315906;
    *&buf[4] = v29;
    *&buf[12] = 1024;
    *&buf[14] = 171;
    v40 = 1024;
    v41 = v28;
    v42 = 2080;
    v43 = v30;
    _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] (Stream ID: %d) DSP modified stream: %s", buf, 0x22u);
    if (v32 < 0)
    {
      operator delete(v31[0]);
    }
  }

LABEL_20:
  v33[0] = *MEMORY[0x1E69E54D8];
  v16 = *(MEMORY[0x1E69E54D8] + 72);
  *(v33 + *(v33[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v34 = v16;
  v35 = MEMORY[0x1E69E5548] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  MEMORY[0x1E12C15F0](&v38);
  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1DE69415C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v32 = v29;
  std::mutex::unlock((v32 + 24));
  v34 = *(v31 - 104);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::mutex::unlock((v28 + 24));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12);
  MEMORY[0x1E12C15F0](&a28);
  _Unwind_Resume(a1);
}

CFDictionaryRef PropertyListDeepImmutableCopy(const __CFString *cf)
{
  v1 = cf;
  v30 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_37;
  }

  v2 = CFGetTypeID(cf);
  if (v2 == CFStringGetTypeID())
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
    if (CStringPtr)
    {
      v4 = *MEMORY[0x1E69E9840];
      v5 = CStringPtr;
      v6 = *MEMORY[0x1E695E478];

      return CFStringCreateWithCString(v6, v5, 0x8000100u);
    }

    Length = CFStringGetLength(v1);
    v28[7] = 0;
    std::vector<unsigned short>::vector[abi:ne200100](buf, Length);
    v32.length = (*&buf[8] - *buf) >> 1;
    v32.location = 0;
    CFStringGetCharacters(v1, v32, *buf);
    v1 = CFStringCreateWithCharacters(*MEMORY[0x1E695E478], *buf, (*&buf[8] - *buf) >> 1);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

LABEL_37:
    v27 = *MEMORY[0x1E69E9840];
    return v1;
  }

  if (v2 == CFArrayGetTypeID())
  {
    v8 = *MEMORY[0x1E69E9840];

    return ArrayDeepImmutableCopy(v1);
  }

  else if (v2 == CFDictionaryGetTypeID())
  {
    v9 = *MEMORY[0x1E69E9840];

    return DictionaryDeepImmutableCopy(v1);
  }

  else if (v2 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v1);
    v12 = CFDataGetLength(v1);
    v13 = *MEMORY[0x1E69E9840];
    v14 = v12;
    v15 = *MEMORY[0x1E695E478];

    return CFDataCreate(v15, BytePtr, v14);
  }

  else
  {
    if (v2 == CFNumberGetTypeID())
    {
      ByteSize = CFNumberGetByteSize(v1);
      Type = CFNumberGetType(v1);
      MEMORY[0x1EEE9AC00]();
      v18 = v28 - ((ByteSize + 15) & 0xFFFFFFFFFFFFFFF0);
      CFNumberGetValue(v1, Type, v18);
      v1 = CFNumberCreate(*MEMORY[0x1E695E478], Type, v18);
      goto LABEL_37;
    }

    if (v2 == CFBooleanGetTypeID())
    {
      CFRetain(v1);
      goto LABEL_37;
    }

    TypeID = CFDateGetTypeID();
    if (v2 != TypeID)
    {
      v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v23 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(TypeID);
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
        *buf = 136315394;
        *&buf[4] = "CFDeepCopy.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 126;
        _os_log_debug_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_DEBUG, "%32s:%-5d Not a supported property list type. Can not make a deep copy for this type.", buf, 0x12u);
      }

      v1 = 0;
      goto LABEL_37;
    }

    MEMORY[0x1E12C0240](v1);
    v21 = *MEMORY[0x1E69E9840];
    v22 = *MEMORY[0x1E695E478];

    return CFDateCreate(v22, v20);
  }
}

void sub_1DE6945C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 64);
  if (v3)
  {
    *(v1 - 56) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef ArrayDeepImmutableCopy(const __CFArray *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count)
  {
    v3 = Count;
    MEMORY[0x1EEE9AC00]();
    v5 = (&callBacks - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v4 >= 0x200)
    {
      v6 = 512;
    }

    else
    {
      v6 = v4;
    }

    bzero(&callBacks - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v3 < 1)
    {
      v8 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
        v10 = PropertyListDeepImmutableCopy(ValueAtIndex);
        v5[v8] = v10;
        if (v10)
        {
          ++v8;
        }

        ++v7;
      }

      while (v3 != v7);
    }

    v15 = *(MEMORY[0x1E695E9C8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9C8];
    *&callBacks.release = v15;
    callBacks.equal = *(MEMORY[0x1E695E9C8] + 32);
    callBacks.retain = 0;
    result = CFArrayCreate(*MEMORY[0x1E695E478], v5, v8, &callBacks);
    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];
    v12 = *MEMORY[0x1E695E478];
    v13 = MEMORY[0x1E695E9C8];

    return CFArrayCreate(v12, 0, 0, v13);
  }

  return result;
}

CFDictionaryRef DictionaryDeepImmutableCopy(const __CFDictionary *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(a1);
  if (Count)
  {
    v3 = Count;
    v4 = 8 * Count;
    MEMORY[0x1EEE9AC00]();
    v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
    v6 = (&valueCallBacks - v5);
    if (v4 >= 0x200)
    {
      v7 = 512;
    }

    else
    {
      v7 = v4;
    }

    bzero(&valueCallBacks - v5, v7);
    MEMORY[0x1EEE9AC00]();
    v8 = (&valueCallBacks - v5);
    bzero(&valueCallBacks - v5, v7);
    MEMORY[0x1EEE9AC00]();
    bzero(&valueCallBacks - v5, v7);
    MEMORY[0x1EEE9AC00]();
    bzero(&valueCallBacks - v5, v7);
    CFDictionaryGetKeysAndValues(a1, (&valueCallBacks - v5), (&valueCallBacks - v5));
    if (v3 < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v10 = *v6++;
        v11 = PropertyListDeepImmutableCopy(v10);
        *(&valueCallBacks.version + 8 * v9 - v5) = v11;
        v12 = *v8++;
        v13 = PropertyListDeepImmutableCopy(v12);
        *(&valueCallBacks.version + 8 * v9 - v5) = v13;
        if (v11)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          ++v9;
        }

        --v3;
      }

      while (v3);
    }

    v20 = *(MEMORY[0x1E695E9E0] + 16);
    *&keyCallBacks.version = *MEMORY[0x1E695E9E0];
    *&keyCallBacks.release = v20;
    *&keyCallBacks.equal = *(MEMORY[0x1E695E9E0] + 32);
    v21 = *(MEMORY[0x1E695E9F0] + 16);
    *&valueCallBacks.version = *MEMORY[0x1E695E9F0];
    *&valueCallBacks.release = v21;
    v22 = *(MEMORY[0x1E695E9F0] + 32);
    keyCallBacks.retain = 0;
    valueCallBacks.equal = v22;
    valueCallBacks.retain = 0;
    result = CFDictionaryCreate(*MEMORY[0x1E695E478], (&valueCallBacks - v5), (&valueCallBacks - v5), v9, &keyCallBacks, &valueCallBacks);
    v23 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v15 = *MEMORY[0x1E69E9840];
    v16 = *MEMORY[0x1E695E478];
    v17 = MEMORY[0x1E695E9E0];
    v18 = MEMORY[0x1E695E9F0];

    return CFDictionaryCreate(v16, 0, 0, 0, v17, v18);
  }

  return result;
}

void AMCP::Graph::File_Task::~File_Task(AMCP::Graph::File_Task *this)
{
  AMCP::Graph::File_Task::~File_Task(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59880D8;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  std::unique_ptr<AMCP::DAL::File>::reset[abi:ne200100](this + 1, 0);
}

std::__shared_weak_count **std::unique_ptr<AMCP::DAL::File>::reset[abi:ne200100](std::__shared_weak_count ***a1, std::__shared_weak_count **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AMCP::DAL::File::~File(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph9File_Task12create_procsERKNS_19Terminal_IdentifierERKN2CA17StreamDescriptionEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::__shared_weak_count **std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::operator()(std::__shared_weak_count **result)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = result[1];
  v2 = LODWORD(v1[4].__vftable) - 1;
  LODWORD(v1[4].__vftable) = v2;
  if (v2)
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    p_shared_owners = &v1->__shared_owners_;
    if (!v1->__shared_owners_)
    {
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(p_shared_owners);
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
        AMCP::Terminal_Identifier_to_string(&__p, &v1->__shared_weak_owners_);
        v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        v23 = "Graph_File_Task.cpp";
        v24 = 1024;
        v25 = 116;
        v26 = 2080;
        v27 = "not (m_file != nullptr)";
        v28 = 2080;
        *v29 = v10;
        _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s stop_processing called on a file that does not exists: %s", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
      __cxa_allocate_exception(0x40uLL);
      AMCP::Terminal_Identifier_to_string(&v13, &v1->__shared_weak_owners_);
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v13;
      }

      else
      {
        v11 = v13.__r_.__value_.__r.__words[0];
      }

      caulk::make_string("stop_processing called on a file that does not exists: %s", &v14, v11);
      std::logic_error::logic_error(&v15, &v14);
      v15.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&__p, &v15);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = -1;
      __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
      *&v29[2] = "void AMCP::Graph::File_Task::stop_processing()";
      v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_File_Task.cpp";
      v31 = 116;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
    }

    v5 = *MEMORY[0x1E69E9840];

    return std::unique_ptr<AMCP::DAL::File>::reset[abi:ne200100](p_shared_owners, 0);
  }

  return result;
}

void sub_1DE694E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v35 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a33);
  MEMORY[0x1E12C0F00](&a31);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v34 & 1) == 0)
    {
LABEL_12:
      AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v35 - 129));
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v33);
  goto LABEL_12;
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59882B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F59882B8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F59882B8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph9File_Task12create_procsERKNS_19Terminal_IdentifierERKN2CA17StreamDescriptionEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

AMCP::Log::AMCP_Scope_Registry *std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::operator()(AMCP::Log::AMCP_Scope_Registry *result)
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = *(result + 1);
  v2 = *(v1 + 96);
  *(v1 + 96) = v2 + 1;
  if (!v2)
  {
    if (!*(v1 + 8))
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "write");
      *&v32[4] = 0u;
      v33 = 0u;
      v32[4] = 1;
      v34 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v35, "write time stamps");
      v36 = 0u;
      v37 = 0u;
      LOBYTE(v36) = 1;
      v38 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v39, "create unique name");
      v40 = 0u;
      v41 = 0u;
      LOBYTE(v40) = 1;
      v42 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      get_audio_capture_folder(v18);
      std::string::basic_string[abi:ne200100]<0>(v43, "file location");
      v44 = *v18;
      v45 = v19;
      v46 = 0;
      v18[0] = 0;
      v18[1] = 0;
      v19 = 0;
      v47 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
      AMCP::DAL::generate_time_stamp(&v21);
      v3 = std::string::append(&v21, "_wire_output_", 0xDuLL);
      v4 = v3->__r_.__value_.__r.__words[0];
      v68.__vftable = v3->__r_.__value_.__l.__size_;
      *(&v68.__vftable + 7) = *(&v3->__r_.__value_.__r.__words[1] + 7);
      v5 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
      v3->__r_.__value_.__l.__size_ = 0;
      v3->__r_.__value_.__r.__words[2] = 0;
      v3->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v48, "name");
      *&v50[7] = *(&v68.__vftable + 7);
      v49 = v4;
      *v50 = v68.__vftable;
      v51 = v5;
      v68.__vftable = 0;
      *(&v68.__vftable + 7) = 0;
      v52 = 0;
      v53 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
      AMCP::Terminal_Identifier_to_string(&__p, (v1 + 16));
      std::string::basic_string[abi:ne200100]<0>(v54, "wire id");
      v55 = __p;
      v56 = 0;
      memset(&__p, 0, sizeof(__p));
      v57 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
      asbd_to_dictionary(&cf, (v1 + 56));
      std::string::basic_string[abi:ne200100]<0>(v58, "asbd");
      v61 = 0;
      v62 = 0;
      v60 = 0;
      v59 = cf;
      cf = 0;
      v63 = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v64, "write time stamps");
      v65 = 0u;
      v66 = 0u;
      LOBYTE(v65) = 1;
      v67 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      v17[0] = buf;
      v17[1] = 8;
      AMCP::DAL::DAL_Settings::DAL_Settings(&v22, v17);
      v6 = 128;
      while (1)
      {
        v7 = &buf[v6 * 4];
        v8 = *&v26[v6];
        if (v8)
        {
          v8(0, v7 - 40, 0, 0);
        }

        if (*(v7 - 41) < 0)
        {
          operator delete(*(v7 - 8));
        }

        v6 -= 16;
        if (!(v6 * 4))
        {
          if (cf)
          {
            CFRelease(cf);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v19) < 0)
          {
            operator delete(v18[0]);
          }

          operator new();
        }
      }
    }

    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      AMCP::Terminal_Identifier_to_string(&v22, (v1 + 16));
      v14 = (v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v22 : v22.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v28 = "Graph_File_Task.cpp";
      v29 = 1024;
      v30 = 94;
      v31 = 2080;
      *v32 = "not (m_file == nullptr)";
      *&v32[8] = 2080;
      *&v32[10] = v14;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s start_processing called on a file that exists: %s", buf, 0x26u);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&cf);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&__p, (v1 + 16));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("start_processing called on a file that exists: %s", &v21, p_p);
    std::logic_error::logic_error(&v68, &v21);
    v68.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v22, &v68);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26[0] = -1;
    v22.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v22.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
    *&v32[12] = "void AMCP::Graph::File_Task::start_processing()";
    *&v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_File_Task.cpp";
    DWORD2(v33) = 94;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v17);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6956F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, char a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5988238;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5988238;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5988238;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph9File_Task12create_procsERKNS_19Terminal_IdentifierERKN2CA17StreamDescriptionEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1);
  if (!*(v5 + 8))
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
      AMCP::Terminal_Identifier_to_string(&__p, (v5 + 16));
      v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v38 = "Graph_File_Task.cpp";
      v39 = 1024;
      v40 = 79;
      v41 = 2080;
      v42 = "not (m_file != nullptr)";
      v43 = 2080;
      *v44 = v21;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s io_proc called on a file that does not exists: %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v28, (v5 + 16));
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v28;
    }

    else
    {
      v22 = v28.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("io_proc called on a file that does not exists: %s", &v29, v22);
    std::logic_error::logic_error(&v30, &v29);
    v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v30);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v44[2] = "void AMCP::Graph::File_Task::io_proc(const IO_Proc_Cycle_Info &, const rt_safe_vector<DAL::Readable_Range> &, const rt_safe_vector<DAL::Writable_Range> &)";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_File_Task.cpp";
    v46 = 79;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  if (a4[1] - *a4 != 88)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      AMCP::Terminal_Identifier_to_string(&__p, (v5 + 16));
      v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v38 = "Graph_File_Task.cpp";
      v39 = 1024;
      v40 = 80;
      v41 = 2080;
      v42 = "not (sources.size() == 1)";
      v43 = 2080;
      *v44 = v23;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Expecting only one input to a file writer node: %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v28, (v5 + 16));
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v28;
    }

    else
    {
      v24 = v28.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("Expecting only one input to a file writer node: %s", &v29, v24);
    std::logic_error::logic_error(&v30, &v29);
    v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v30);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v44[2] = "void AMCP::Graph::File_Task::io_proc(const IO_Proc_Cycle_Info &, const rt_safe_vector<DAL::Readable_Range> &, const rt_safe_vector<DAL::Writable_Range> &)";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_File_Task.cpp";
    v46 = 80;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  if (*a5 != a5[1])
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      AMCP::Terminal_Identifier_to_string(&__p, (v5 + 16));
      v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v38 = "Graph_File_Task.cpp";
      v39 = 1024;
      v40 = 81;
      v41 = 2080;
      v42 = "not (dests.empty())";
      v43 = 2080;
      *v44 = v25;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Expecting no output from a file writer node: %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v28, (v5 + 16));
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v28;
    }

    else
    {
      v26 = v28.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("Expecting no output from a file writer node: %s", &v29, v26);
    std::logic_error::logic_error(&v30, &v29);
    v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v30);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v44[2] = "void AMCP::Graph::File_Task::io_proc(const IO_Proc_Cycle_Info &, const rt_safe_vector<DAL::Readable_Range> &, const rt_safe_vector<DAL::Writable_Range> &)";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_File_Task.cpp";
    v46 = 81;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  AMCP::DAL::create_timestamp_data(buf, (a3 + 80), *(*a4 + 24), *(*a4 + 32));
  (*(***(v5 + 8) + 16))(**(v5 + 8), buf, *a4);
  result = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(buf);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59881A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59881A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59881A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::Graph::File_Task>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5988108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::IOAudio1::Control::~Control(AMCP::IOAudio1::Control *this)
{
  AMCP::IOAudio1::Control::~Control(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5988338;
  AMCP::Core::Broker::destroy_core(*(*(*(*(this + 1) + 16) + 32) + 16), *(this + 4));
  *(this + 4) = 0;
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100](this + 3, 0);
  AMCP::Utility::Mach_Port::reset((this + 32));
  AMCP::Utility::Mach_Port::~Mach_Port((this + 32));
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100](this + 3, 0);

  AMCP::IOAudio1::Device_Sub_Object::~Device_Sub_Object(this);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0,std::allocator<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio17ControlC1ERNS0_6DeviceERKN10applesauce5iokit16io_object_holderEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0,std::allocator<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v2 = AMCP::Utility::Mach_Port::receive_message(*(v1 + 32), 0x30u, &v21, 1);
  v3 = v2;
  AMCP::Utility::Kernel_Error_Category::get(v2);
  if (!v3)
  {
    if (DWORD2(v22) == 1)
    {
      v10 = *(*(v1 + 8) + 16);
      v11 = *(*(v10 + 32) + 32);
      v12 = *(v10 + 48);
      v13 = *(v1 + 16);
      if (*(v1 + 20))
      {
        v14 = IOObjectRetain(*(v1 + 20));
        if (v14)
        {
          v18 = v14;
          exception = __cxa_allocate_exception(0x20uLL);
          v20 = std::system_category();
          MEMORY[0x1E12C10C0](exception, v18, v20, "Error on Retain");
          __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
        }

        v10 = *(*(v1 + 8) + 16);
        v15 = *(v10 + 32);
      }

      v16 = *(v10 + 40);
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v30[1] = 0;
      operator new();
    }

    if (!DWORD2(v22))
    {
      AMCP::Core::Broker::fetch_core(&v25, *(*(*(*(v1 + 8) + 16) + 32) + 16), *(v1 + 16));
      v5 = v25;
      if (v25)
      {
        *__p = 0u;
        *v30 = 0u;
        v31 = 1065353216;
        v6 = *(v1 + 20);
        if (!v6)
        {
          v17 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v17, "cannot create io_object_proxy from null io_object");
          __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::iokit::get_properties(&cf, v6);
        simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(v5);
        AMCP::IOAudio1::update_control_value(simple_required, __p, (v1 + 20), &cf);
        v27 = v5 + 48;
        LOBYTE(v28) = 1;
        caulk::concurrent::shared_spin_lock::lock((v5 + 48));
        v8 = v30[0];
        if (v30[0])
        {
          do
          {
            std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>((v5 + 8), (v8[4] + 40), v8 + 4);
            v8 = *v8;
          }

          while (v8);
        }

        caulk::concurrent::shared_spin_lock::unlock((v5 + 48));
        v27 = 0x676C6F626F776E72;
        v28 = 0;
        *(v5 + 4) = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v5, &v27, &AMCP::k_object_id_unknown);
        AMCP::Core::Conductor::notify_control_value_observers(*(*(*(*(v1 + 8) + 16) + 32) + 32), *(v1 + 16));
        if (cf)
        {
          CFRelease(cf);
        }

        std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(v30[0]);
        v9 = __p[0];
        __p[0] = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DE696AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __cxa_free_exception(v19);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio17Control28handle_range_changed_messageEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Broker::fetch_core(&v14, *(*(a1 + 16) + 16), *(a1 + 8));
  v2 = v14;
  if (v14)
  {
    *__p = 0u;
    *v12 = 0u;
    v13 = 1065353216;
    v5 = *(a1 + 12);
    v4 = (a1 + 12);
    v3 = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::iokit::get_properties(&cf, v3);
    simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(v2);
    AMCP::IOAudio1::update_control_value(simple_required, __p, v4, &cf);
    AMCP::IOAudio1::update_control_range(simple_required, __p, &cf);
    v16 = v2 + 48;
    LOBYTE(v17) = 1;
    caulk::concurrent::shared_spin_lock::lock((v2 + 48));
    v7 = v12[0];
    if (v12[0])
    {
      do
      {
        std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>((v2 + 8), (v7[4] + 40), v7 + 4);
        v7 = *v7;
      }

      while (v7);
    }

    caulk::concurrent::shared_spin_lock::unlock((v2 + 48));
    v16 = 0x676C6F626F776E72;
    v17 = 0;
    *(v2 + 4) = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v2, &v16, &AMCP::k_object_id_unknown);
    if (cf)
    {
      CFRelease(cf);
    }

    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(v12[0]);
    v8 = __p[0];
    __p[0] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1DE696CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  __cxa_free_exception(v21);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a12);
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::IOAudio1::update_control_value(unsigned int a1, uint64_t a2, io_object_t *a3, CFDictionaryRef *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (AMCP::is_base_of(0x6C65766C, a1))
  {
    if (*a4)
    {
      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v37, *a4, @"IOAudioLevelControlMinValue");
      if (!v37)
      {
        goto LABEL_47;
      }

      v7 = applesauce::CF::convert_to<int,0>(v37);
      if (v37)
      {
        CFRelease(v37);
      }

      if (!*a4)
      {
        goto LABEL_47;
      }

      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v37, *a4, @"IOAudioLevelControlMinDB");
      if (!v37)
      {
        goto LABEL_47;
      }

      v8 = applesauce::CF::convert_to<int,0>(v37);
      if (v8 >= 0)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = -1.0;
      }

      if (v37)
      {
        CFRelease(v37);
      }

      if (!*a4)
      {
        goto LABEL_47;
      }

      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v37, *a4, @"IOAudioLevelControlMaxValue");
      if (!v37)
      {
        goto LABEL_47;
      }

      v10 = applesauce::CF::convert_to<int,0>(v37);
      if (v37)
      {
        CFRelease(v37);
      }

      if (*a4 && (applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v37, *a4, @"IOAudioLevelControlMaxDB"), v37))
      {
        v11 = applesauce::CF::convert_to<int,0>(v37);
        if (v11 >= 0)
        {
          v12 = 1.0;
        }

        else
        {
          v12 = -1.0;
        }

        if (v37)
        {
          CFRelease(v37);
        }

        *&v37 = v9 * (vcvts_n_f32_u32((v8 * v9), 0x10uLL) + (((v8 * v9) >> 16) & 0x7FFF));
        HIDWORD(v37) = v7;
        v38 = v12 * (vcvts_n_f32_u32((v11 * v12), 0x10uLL) + (((v11 * v12) >> 16) & 0x7FFF));
        v39 = v10;
        AMCP::Utility::Level_Map::Level_Map(&__p, &v37, 2uLL);
        if (*a4)
        {
          applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v37, *a4, @"IOAudioControlValue");
          if (v37)
          {
            v13 = applesauce::CF::convert_to<int,0>(v37);
            if (v37)
            {
              CFRelease(v37);
            }

            AMCP::Utility::Level_Map::calculate_decibel_from_raw(&__p, v13);
            if (v13 > *(__p + 1))
            {
              *(v36 - 4);
            }

            v32 = 0uLL;
            v33 = 0;
            std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>(&v32, __p, v36, (v36 - __p) >> 3);
            v14 = *a3;
            v34 = v14;
            if (!v14 || (v15 = IOObjectRetain(v14), !v15))
            {
              std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
            }

            exception = __cxa_allocate_exception(0x20uLL);
            v23 = MEMORY[0x1E69E52D0];
            v25 = std::system_category();
            MEMORY[0x1E12C10C0](exception, v15, v25, "Error on Retain");
            v24 = MEMORY[0x1E69E53B8];
LABEL_52:
            __cxa_throw(exception, v24, v23);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        v23 = MEMORY[0x1E69E5288];
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      else
      {
LABEL_47:
        exception = __cxa_allocate_exception(0x10uLL);
        v23 = MEMORY[0x1E69E5288];
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v23 = MEMORY[0x1E69E5288];
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v24 = MEMORY[0x1E69E5408];
    goto LABEL_52;
  }

  if (AMCP::is_base_of(0x746F676C, a1))
  {
    v37 = @"IOAudioControlValue";
    AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>(a4, &v37);
    v16 = *a3;
    if (!v16 || (v17 = IOObjectRetain(v16), !v17))
    {
      __p = 0x676C6F626263766CLL;
      LODWORD(v36) = 0;
      std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
    }

    v26 = __cxa_allocate_exception(0x20uLL);
    v27 = std::system_category();
    MEMORY[0x1E12C10C0](v26, v17, v27, "Error on Retain");
    __cxa_throw(v26, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  result = AMCP::is_base_of(0x736C6374, a1);
  if (result)
  {
    if (*a4)
    {
      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v37, *a4, @"IOAudioControlValue");
      if (v37)
      {
        applesauce::CF::convert_to<unsigned int,0>(v37);
        if (v37)
        {
          CFRelease(v37);
        }

        v19 = *a3;
        if (!v19 || (v20 = IOObjectRetain(v19), !v20))
        {
          __p = 0x676C6F6273636369;
          LODWORD(v36) = 0;
          std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
        }

        v28 = __cxa_allocate_exception(0x20uLL);
        v29 = MEMORY[0x1E69E52D0];
        v31 = std::system_category();
        MEMORY[0x1E12C10C0](v28, v20, v31, "Error on Retain");
        v30 = MEMORY[0x1E69E53B8];
LABEL_59:
        __cxa_throw(v28, v30, v29);
      }

      v28 = __cxa_allocate_exception(0x10uLL);
      v29 = MEMORY[0x1E69E5288];
      std::runtime_error::runtime_error(v28, "Could not construct");
    }

    else
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      v29 = MEMORY[0x1E69E5288];
      std::runtime_error::runtime_error(v28, "Could not construct");
    }

    v30 = MEMORY[0x1E69E5408];
    goto LABEL_59;
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE697D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    __cxa_free_exception(v27);
    operator delete(v28);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::IOAudio1::update_control_range(unsigned int a1, uint64_t a2, CFDictionaryRef *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AMCP::is_base_of(0x6C65766C, a1))
  {
    cf[0] = @"IOAudioControlValueIsReadOnly";
    AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>(a3, cf);
    AMCP::Core::Operation_Utilities::make_typed_property<BOOL,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>();
  }

  if (AMCP::is_base_of(0x746F676C, a1))
  {
    cf[0] = @"IOAudioControlValueIsReadOnly";
    AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>(a3, cf);
    AMCP::Core::Operation_Utilities::make_typed_property<BOOL,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>();
  }

  result = AMCP::is_base_of(0x736C6374, a1);
  if (result)
  {
    cf[0] = @"IOAudioControlValueIsReadOnly";
    AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>(a3, cf);
    AMCP::Core::Operation_Utilities::make_typed_property<BOOL,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE698A08(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Utility::Level_Map::Level_Map(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<long>::__vallocate[abi:ne200100](a1, a3);
  }

  __assert_rtn("Level_Map", "Level_Map.h", 49, "data_is_valid()");
}

void sub_1DE698D0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE698E28(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE698EC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const*>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::ArrayRef::from_get(a1, v4);
}

void AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = *MEMORY[0x1E69E9840];
  memset(v4, 0, 24);
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(v4, a3, a4, (a4 - a3) >> 4);
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE6990FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyINSt3__16vectorINS3_5tupleIJjjN10applesauce2CF9StringRefEEEENS3_9allocatorIS9_EEEEEENS3_10shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(a2, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 4);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 1;
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v2);

  operator delete(a1);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F598A9E8;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>((a2 + 1), *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 4);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598A9E8;
  v1 = (a1 + 8);
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598A9E8;
  v3 = (a1 + 8);
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_rangeERNS_4Core13Operation_SetERKN10applesauce2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float AMCP::Utility::Level_Map::calculate_scalar_from_decibel(float **this, float a2)
{
  v2 = 0.0;
  if (**this < a2)
  {
    if (*(this[1] - 2) <= a2)
    {
      return 1.0;
    }

    else
    {
      v4 = AMCP::Utility::Level_Map::calculate_raw_from_decibel(this, a2);
      v5 = *(*this + 1);
      if (v4 > v5)
      {
        v6 = *(this[1] - 1);
        v2 = 1.0;
        if (v6 > v4)
        {
          return (v4 - v5) / (v6 - v5);
        }
      }
    }
  }

  return v2;
}

uint64_t AMCP::Utility::Level_Map::calculate_raw_from_decibel(float **this, float a2)
{
  v2 = *this;
  if (**this >= a2)
  {
    return *(v2 + 1);
  }

  v3 = this[1];
  if (*(v3 - 2) <= a2)
  {
    return *(v3 - 1);
  }

  if (v3 == v2)
  {
    v5 = this[1];
  }

  else
  {
    v4 = (v3 - v2) >> 3;
    v5 = *this;
    do
    {
      v6 = v4 >> 1;
      v7 = &v5[2 * (v4 >> 1)];
      v9 = *v7;
      v8 = v7 + 2;
      v4 += ~(v4 >> 1);
      if (v9 < a2)
      {
        v5 = v8;
      }

      else
      {
        v4 = v6;
      }
    }

    while (v4);
  }

  if (v3 == v5)
  {
    v11 = "search_result != m_map.end()";
    v12 = 261;
    goto LABEL_18;
  }

  if (v2 == v5)
  {
    v11 = "search_result != m_map.begin()";
    v12 = 265;
LABEL_18:
    __assert_rtn("find_span_for_decibel", "Level_Map.h", v12, v11);
  }

  return (*(v5 - 1) + (((a2 - *(v5 - 2)) / (*v5 - *(v5 - 2))) * (*(v5 + 1) - *(v5 - 1))));
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F59887F0;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>((a2 + 1), *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F59887F0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F59887F0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_rangeERNS_4Core13Operation_SetERKN10applesauce2CF13DictionaryRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float AMCP::Utility::Level_Map::calculate_decibel_from_raw(AMCP::Utility::Level_Map *this, int a2)
{
  v2 = *this;
  if (*(*this + 4) >= a2)
  {
    return *v2;
  }

  v3 = *(this + 1);
  if (*(v3 - 4) <= a2)
  {
    return *(v3 - 8);
  }

  if (v3 == v2)
  {
    v5 = *(this + 1);
  }

  else
  {
    v4 = (v3 - v2) >> 3;
    v5 = *this;
    do
    {
      v6 = v4 >> 1;
      v7 = v5 + 8 * (v4 >> 1);
      v8 = *(v7 + 4);
      v9 = v7 + 8;
      v4 += ~(v4 >> 1);
      if (v8 < a2)
      {
        v5 = v9;
      }

      else
      {
        v4 = v6;
      }
    }

    while (v4);
  }

  if (v3 == v5)
  {
    v11 = "search_result != m_map.end()";
    v12 = 238;
    goto LABEL_18;
  }

  if (v2 == v5)
  {
    v11 = "search_result != m_map.begin()";
    v12 = 242;
LABEL_18:
    __assert_rtn("find_span_for_raw", "Level_Map.h", v12, v11);
  }

  return *(v5 - 8) + (((a2 - *(v5 - 4)) / (*(v5 + 4) - *(v5 - 4))) * (*v5 - *(v5 - 8)));
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5988770;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>((a2 + 1), *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_1F5988770;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_1F5988770;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ValueRange>(AMCP::Address const&,CA::ValueRange const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ValueRange>(AMCP::Address const&,CA::ValueRange const&)::{lambda(void)#1}>,CA::ValueRange ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIN2CA10ValueRangeEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ValueRange>(AMCP::Address const&,CA::ValueRange const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ValueRange>(AMCP::Address const&,CA::ValueRange const&)::{lambda(void)#1}>,CA::ValueRange ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = *(a1 + 16);
  return result;
}

__n128 std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ValueRange>(AMCP::Address const&,CA::ValueRange const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ValueRange>(AMCP::Address const&,CA::ValueRange const&)::{lambda(void)#1}>,CA::ValueRange ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598A1E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L29update_selector_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*a2 != *(a2 + 8))
  {
    if (!*(a1 + 8))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v11 = CFStringCreateWithBytes(0, "IOAudioControlValue", 19, 0x8000100u, 0);
    if (!v11)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v7, "Could not construct");
      __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    LODWORD(valuePtr) = **a2;
    v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v5 = v4;
    cf = v4;
    if (!v4)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    CFRetain(v4);
    valuePtr = v5;
    applesauce::iokit::io_object_proxy::set_properties(*(a1 + 8), v11, &valuePtr);
    CFRelease(v5);
    CFRelease(cf);
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void sub_1DE699DAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::destroy_deallocate(unsigned int *a1)
{
  std::__function::__alloc_func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::destroy[abi:ne200100](a1[2]);

  operator delete(a1);
}

uint64_t std::__function::__alloc_func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::destroy[abi:ne200100](uint64_t result)
{
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59886F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  if (result)
  {
    result = IOObjectRetain(result);
    if (result)
    {
      v3 = result;
      exception = __cxa_allocate_exception(0x20uLL);
      v5 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v3, v5, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  return result;
}

void sub_1DE69A010(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59886F0;
  v1 = *(a1 + 8);
  if (v1)
  {
    IOObjectRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59886F0;
  v2 = *(a1 + 8);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,std::vector<unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L29update_selector_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,std::vector<unsigned int> ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &vars0, 1uLL);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,std::vector<unsigned int> ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5988670;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L28update_BOOLean_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  if (!*(a1 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v11 = CFStringCreateWithBytes(0, "IOAudioControlValue", 19, 0x8000100u, 0);
  if (!v11)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "Could not construct");
    __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v5 = v4;
  cf = v4;
  if (!v4)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v4);
  valuePtr = v5;
  applesauce::iokit::io_object_proxy::set_properties(*(a1 + 8), v11, &valuePtr);
  CFRelease(v5);
  CFRelease(cf);
  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_1DE69A3D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::destroy_deallocate(unsigned int *a1)
{
  std::__function::__alloc_func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::destroy[abi:ne200100](a1[2]);

  operator delete(a1);
}

uint64_t std::__function::__alloc_func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::destroy[abi:ne200100](uint64_t result)
{
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59885F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  if (result)
  {
    result = IOObjectRetain(result);
    if (result)
    {
      v3 = result;
      exception = __cxa_allocate_exception(0x20uLL);
      v5 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v3, v5, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  return result;
}

void sub_1DE69A63C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59885F0;
  v1 = *(a1 + 8);
  if (v1)
  {
    IOObjectRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59885F0;
  v2 = *(a1 + 8);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L28update_BOOLean_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,BOOL ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5988570;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
{
  v3 = AMCP::Utility::Level_Map::calculate_raw_from_decibel((a1 + 8), *a2);
  if (!*(a1 + 40))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  v12 = CFStringCreateWithBytes(0, "IOAudioControlValue", 19, 0x8000100u, 0);
  if (!v12)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = v4;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v6 = v5;
  cf = v5;
  if (!v5)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v5);
  valuePtr = v6;
  applesauce::iokit::io_object_proxy::set_properties(*(a1 + 40), v12, &valuePtr);
  CFRelease(v6);
  CFRelease(cf);
  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_1DE69A9D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::destroy_deallocate(_DWORD *__p)
{
  v2 = __p[10];
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(__p + 1);
  if (v3)
  {
    *(__p + 2) = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;

    operator delete(v3);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59884F0;
  result = AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3::$_3(a2 + 8, a1 + 8);
  *(a2 + 44) = 0;
  return result;
}

uint64_t AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3::$_3(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    v5 = IOObjectRetain(v4);
    if (v5)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v8 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v5, v8, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  return a1;
}

void sub_1DE69AC08(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59884F0;
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59884F0;
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_2,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_2>,float ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_2,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_2>,float ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5988470;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
{
  if (!*(a1 + 40))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *a2;
  v4 = *(*(a1 + 16) - 4);
  v5 = *(*(a1 + 8) + 4);
  v13 = CFStringCreateWithBytes(0, "IOAudioControlValue", 19, 0x8000100u, 0);
  if (!v13)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = v5 + (fmaxf(fminf(v3, 1.0), 0.0) * (v4 - v5));
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v7 = v6;
  cf = v6;
  if (!v6)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
    __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v6);
  valuePtr = v7;
  applesauce::iokit::io_object_proxy::set_properties(*(a1 + 40), v13, &valuePtr);
  CFRelease(v7);
  CFRelease(cf);
  if (v13)
  {
    CFRelease(v13);
  }
}

void sub_1DE69B074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::destroy_deallocate(_DWORD *__p)
{
  v2 = __p[10];
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(__p + 1);
  if (v3)
  {
    *(__p + 2) = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;

    operator delete(v3);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59883F0;
  result = AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1::$_1(a2 + 8, a1 + 8);
  *(a2 + 44) = 0;
  return result;
}

uint64_t AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    v5 = IOObjectRetain(v4);
    if (v5)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v8 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v5, v8, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  return a1;
}

void sub_1DE69B2AC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59883F0;
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59883F0;
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,float ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,float ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5988370;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(__p + 3);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  result = *(a1 + 12);
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5988A58;
  v5 = *(a1 + 8);
  result = *(a1 + 12);
  *(a2 + 8) = v5;
  *(a2 + 12) = result;
  if (result)
  {
    result = IOObjectRetain(result);
    if (result)
    {
      v7 = result;
      exception = __cxa_allocate_exception(0x20uLL);
      v9 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v7, v9, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  v6 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DE69B760(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5988A58;
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 12);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5988A58;
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 12);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0,std::allocator<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5988870;
  a2[1] = v2;
  return result;
}

void AMCP::IOAudio1::Control::build_core(AMCP::IOAudio1::Control *this)
{
  v40 = *MEMORY[0x1E69E9840];
  *(this + 4) = AMCP::Core::Broker::reserve_id(*(*(*(*(this + 1) + 16) + 32) + 16));
  *__p = 0u;
  *v20 = 0u;
  v21 = 1065353216;
  v2 = *(this + 5);
  if (v2)
  {
    applesauce::iokit::get_properties(&v18, v2);
    if (v18)
    {
      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(buf, v18, @"IOAudioControlType");
      if (*buf)
      {
        v3 = applesauce::CF::convert_to<unsigned int,0>(*buf);
        if (*buf)
        {
          CFRelease(*buf);
        }

        if (v18)
        {
          applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(buf, v18, @"IOAudioControlSubType");
          if (*buf)
          {
            applesauce::CF::convert_to<unsigned int,0>(*buf);
            v4 = *buf;
            if (*buf)
            {
              CFRelease(*buf);
            }

            if (v3 == 1953458028 || v3 == 1936483188 || v3 == 1818588780)
            {
              if (v18)
              {
                applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(buf, v18, @"IOAudioControlUsage");
                if (*buf)
                {
                  applesauce::CF::convert_to<unsigned int,0>(*buf);
                  if (*buf)
                  {
                    CFRelease(*buf);
                  }

                  if (v18)
                  {
                    applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(buf, v18, @"IOAudioControlChannelNumber");
                    if (*buf)
                    {
                      applesauce::CF::convert_to<unsigned int,0>(*buf);
                      if (*buf)
                      {
                        CFRelease(*buf);
                      }

                      v25.__vftable = 0x676C6F6269646E74;
                      LODWORD(v25.__imp_.__imp_) = 0;
                      LODWORD(cf) = *(this + 4);
                      AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
                    }

                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "Could not construct");
                    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }

                  v12 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v12, "Could not construct");
                  __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v11 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v11, "Could not construct");
                __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v10 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v10, "Could not construct");
              __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v14 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
              *buf = 136315650;
              *&buf[4] = "IOAudio1_Control.cpp";
              v33 = 1024;
              v34 = 148;
              v35 = 2080;
              v36 = "stock_class_id == k_class_id_unknown";
              _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v31);
            __cxa_allocate_exception(0x40uLL);
            std::runtime_error::runtime_error(&v24, "failed to identify the control");
            std::runtime_error::runtime_error(&v25, &v24);
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = -1;
            v25.__vftable = &unk_1F5992170;
            v26 = &unk_1F5992198;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v25);
            v37 = "std::tuple<Class_ID, Class_ID> AMCP::IOAudio1::calculate_control_class_info(uint32_t, uint32_t)";
            v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IOAudio1/IOAudio1_Control.cpp";
            LODWORD(v39) = 148;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v22);
          }

          v9 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v9, "Could not construct");
          __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v8 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v8, "Could not construct");
        __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v7 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v7, "Could not construct");
      __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v6, "Could not construct");
    __cxa_throw(v6, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v5, "cannot create io_object_proxy from null io_object");
  __cxa_throw(v5, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE69C42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, std::runtime_error a29, char a30, uint64_t a31)
{
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v33 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a30);
  std::runtime_error::~runtime_error(&a29);
  if (v32)
  {
    __cxa_free_exception(v31);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v33 - 161));
  applesauce::CF::DictionaryRef::~DictionaryRef(&a12);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a13);
  _Unwind_Resume(a1);
}

void *AMCP::IOAudio1::Control::create_from_service_list(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x1E69E9840];
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a4)
  {
    operator new();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE69CB04(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  STACK[0x278] = v1;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x278]);
  _Unwind_Resume(a1);
}

void sub_1DE69CB54()
{
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100](v1, 0);
  AMCP::IOAudio1::Device_Sub_Object::~Device_Sub_Object(v0);
  JUMPOUT(0x1DE69CE10);
}

void sub_1DE69CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a42);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x278]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x3C8]);
  AMCP::Utility::Mach_Port::~Mach_Port((v42 + 32));
  JUMPOUT(0x1DE69CDFCLL);
}

void sub_1DE69CD34()
{
  __cxa_end_catch();
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x278]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x3C8]);
  AMCP::Utility::Mach_Port::~Mach_Port((v0 + 32));
  JUMPOUT(0x1DE69CDFCLL);
}

void sub_1DE69CD54(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE69CE34);
}

void sub_1DE69CD64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x278]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x3C8]);
  AMCP::Utility::Mach_Port::~Mach_Port((v33 + 32));
  JUMPOUT(0x1DE69CDFCLL);
}

uint64_t AMCP::DAL::PCM_Operation_Context::PCM_Operation_Context(uint64_t a1, void *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  *(a1 + 128) = 0u;
  v4 = a1 + 128;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::string::basic_string[abi:ne200100]<0>(__p, "source format");
  v5 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  v6 = v5;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v6)
  {
    v48 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v48 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "PCM_Operation_Context.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 39;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = "not (settings.has_key(kFormatConversion_Source_Format))";
      _os_log_error_impl(&dword_1DE1F9000, v51, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context requires a source format", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v69);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("PCM_Operation_Context requires a source format", &v74);
    std::logic_error::logic_error(&v71, &v74);
    v71.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v75, &v71);
    v77 = 0uLL;
    v78 = 0;
    v79 = -1;
    v75.__vftable = &unk_1F5991430;
    v76 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v75);
    v81 = "AMCP::DAL::PCM_Operation_Context::PCM_Operation_Context(const DAL_Settings &)";
    v82 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v83 = 39;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dest format");
  v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  v8 = v7;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v8)
  {
    v52 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v52 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "PCM_Operation_Context.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 40;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = "not (settings.has_key(kFormatConversion_Dest_Format))";
      _os_log_error_impl(&dword_1DE1F9000, v55, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context requires a dest format", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v69);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("PCM_Operation_Context requires a dest format", &v74);
    std::logic_error::logic_error(&v71, &v74);
    v71.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v75, &v71);
    v77 = 0uLL;
    v78 = 0;
    v79 = -1;
    v75.__vftable = &unk_1F5991430;
    v76 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v75);
    v81 = "AMCP::DAL::PCM_Operation_Context::PCM_Operation_Context(const DAL_Settings &)";
    v82 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v83 = 40;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "size bias");
  v9 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  v10 = v9;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v10)
  {
    v56 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v56 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v58 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v57 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v57)
    {
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      v59 = *v58;
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    else
    {
      v59 = *v58;
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "PCM_Operation_Context.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 41;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = "not (settings.has_key(kFormatConversion_Size_Bias))";
      _os_log_error_impl(&dword_1DE1F9000, v59, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context requires a size bias", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v69);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("PCM_Operation_Context requires a size bias", &v74);
    std::logic_error::logic_error(&v71, &v74);
    v71.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v75, &v71);
    v77 = 0uLL;
    v78 = 0;
    v79 = -1;
    v75.__vftable = &unk_1F5991430;
    v76 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v75);
    v81 = "AMCP::DAL::PCM_Operation_Context::PCM_Operation_Context(const DAL_Settings &)";
    v82 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v83 = 41;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "source timebase");
  v73 = 0uLL;
  AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Timebase>>(&v75, a2, __p, &v73);
  v11 = *(a1 + 64);
  *(a1 + 56) = v75;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v73.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73.n128_u64[1]);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dest timebase");
  v73 = 0uLL;
  AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Timebase>>(&v75, a2, __p, &v73);
  v12 = *(a1 + 80);
  *(a1 + 72) = v75;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v73.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73.n128_u64[1]);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v75, "source format");
  v13 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &v75);
  if (v13)
  {
    AMCP::Thing::convert_to<CA::StreamDescription>(__p, (v13 + 5));
  }

  else
  {
    v81 = 0;
    memset(__p, 0, sizeof(__p));
  }

  v14 = *&__p[2];
  *(a1 + 88) = *__p;
  *(a1 + 104) = v14;
  *(a1 + 120) = v81;
  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75.__vftable);
  }

  std::string::basic_string[abi:ne200100]<0>(&v75, "dest format");
  v15 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &v75);
  if (v15)
  {
    AMCP::Thing::convert_to<CA::StreamDescription>(__p, (v15 + 5));
  }

  else
  {
    v81 = 0;
    memset(__p, 0, sizeof(__p));
  }

  v16 = *&__p[2];
  *v4 = *__p;
  *(v4 + 16) = v16;
  *(v4 + 32) = v81;
  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75.__vftable);
  }

  v17 = *(a1 + 128);
  v18 = *(a1 + 88);
  v20 = *(a1 + 152);
  v19 = *(a1 + 156);
  v66 = *(a1 + 112);
  v67 = *(a1 + 116);
  std::string::basic_string[abi:ne200100]<0>(__p, "change clock with drift correction disabled");
  v21 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (v21)
  {
    v68 = AMCP::Thing::convert_to<BOOL>((v21 + 5));
  }

  else
  {
    v68 = 0;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v22 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (v22)
  {
    v22 = AMCP::Thing::convert_to<BOOL>(v22 + 40);
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v68 & v23) == 1)
  {
    v60 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v60 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v22);
    }

    v62 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v61 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      v63 = *v62;
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
    }

    else
    {
      v63 = *v62;
    }

    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "PCM_Operation_Context.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 54;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = "not (!change_clock_without_resampling || !needs_resampling)";
      _os_log_error_impl(&dword_1DE1F9000, v63, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Contradictory resampling settings.", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v69);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Contradictory resampling settings.", &v74);
    std::logic_error::logic_error(&v71, &v74);
    v71.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v75, &v71);
    v77 = 0uLL;
    v78 = 0;
    v79 = -1;
    v75.__vftable = &unk_1F5991430;
    v76 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v75);
    v81 = "AMCP::DAL::PCM_Operation_Context::PCM_Operation_Context(const DAL_Settings &)";
    v82 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v83 = 54;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "volume processing");
  v24 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "map channels");
  v64 = v20;
  v65 = v19;
  if (std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p))
  {
    v25 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v75, "convert format");
    v25 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &v75) != 0;
    if (SHIBYTE(v76) < 0)
    {
      operator delete(v75.__vftable);
    }
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mix channels to mono");
  v26 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (!v24)
    {
      goto LABEL_78;
    }

LABEL_55:
    std::string::basic_string[abi:ne200100]<0>(__p, "volume processing");
    if (std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p))
    {
      std::string::basic_string[abi:ne200100]<0>(&v75, "volume connection");
      v27 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &v75) != 0;
      if (SHIBYTE(v76) < 0)
      {
        operator delete(v75.__vftable);
      }
    }

    else
    {
      v27 = 0;
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if (!v27)
      {
LABEL_77:
        LODWORD(__p[0]) = 0;
        std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100](a1 + 168, __p);
        goto LABEL_78;
      }
    }

    else if (!v27)
    {
      goto LABEL_77;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "volume connection");
    v73 = 0uLL;
    AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(&v75, a2, __p, &v73);
    v28 = *(a1 + 16);
    *(a1 + 8) = v75;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v73.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73.n128_u64[1]);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(__p, *(a1 + 8));
    v29 = v84;
    v30 = v85;
    v31 = v86;
    v32 = *(a1 + 56);
    v33 = *(a1 + 64);
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(v75.__vftable) = 0;
    v75.__imp_.__imp_ = 0;
    v76 = 0;
    v77 = v32;
    if (v31)
    {
      v75.__imp_.__imp_ = v29;
      LODWORD(v75.__vftable) = 2;
      v34 = 3;
      if ((v31 & 2) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v34 = 1;
      if ((v31 & 2) == 0)
      {
LABEL_76:
        AMCP::DAL::DAL_Time::get_sample_time(&v75);
        operator new();
      }
    }

    v76 = v30;
    LODWORD(v75.__vftable) = v34;
    goto LABEL_76;
  }

  if (v24)
  {
    goto LABEL_55;
  }

LABEL_78:
  if (!v26)
  {
    goto LABEL_97;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mix channels to mono");
  if (std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v75, "mix map");
    v35 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &v75) != 0;
    if (SHIBYTE(v76) < 0)
    {
      operator delete(v75.__vftable);
    }
  }

  else
  {
    v35 = 0;
  }

  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (!v35)
    {
      goto LABEL_96;
    }

LABEL_87:
    std::string::basic_string[abi:ne200100]<0>(__p, "mix map");
    v36 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
    if (v36)
    {
      AMCP::Thing::convert_to<std::vector<unsigned int>>(&v69, (v36 + 5));
    }

    else
    {
      v69 = 0uLL;
      v70 = 0;
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    if (v69 != *(&v69 + 1))
    {
      operator new();
    }

    if (v69)
    {
      *(&v69 + 1) = v69;
      operator delete(v69);
    }

    goto LABEL_96;
  }

  operator delete(__p[0]);
  if (v35)
  {
    goto LABEL_87;
  }

LABEL_96:
  LODWORD(__p[0]) = 3;
  std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100](a1 + 168, __p);
LABEL_97:
  if ((v23 & v25) == 1)
  {
    v37 = a1 + 56;
    v38 = v17 / v18;
    v39 = (v64 * v65) / (v66 * v67);
    if (v39 >= v38)
    {
      v40 = a1 + 88;
    }

    else
    {
      v40 = v4;
    }

    v41 = *(v40 + 16);
    *__p = *v40;
    *&__p[2] = v41;
    v81 = *(v40 + 32);
    v42 = 72;
    if (v39 >= v38)
    {
      v37 = a1 + 72;
    }

    else
    {
      v42 = 56;
    }

    v43 = 128;
    if (v39 < v38)
    {
      v43 = 88;
    }

    __p[0] = *(a1 + v43);
    v44 = *(a1 + v42);
    v45 = *(v37 + 8);
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (v23)
  {
    AMCP::DAL::PCM_Operation_Context::configure_resampler(a1, a2, a1 + 88, v4);
    LODWORD(__p[0]) = 1;
    std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100](a1 + 168, __p);
  }

  else if (v25)
  {
    AMCP::DAL::PCM_Operation_Context::configure_audio_converter(a1, a2, (a1 + 88), v4);
    LODWORD(__p[0]) = 2;
    std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100](a1 + 168, __p);
  }

  if (v68 && *(a1 + 168) == *(a1 + 176))
  {
    LODWORD(__p[0]) = 4;
    std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100](a1 + 168, __p);
  }

  v46 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE69EC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  v62 = v60[21];
  if (v62)
  {
    v60[22] = v62;
    operator delete(v62);
  }

  v63 = v60[10];
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  v64 = v60[8];
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v65 = v60[5];
  v60[5] = 0;
  if (v65)
  {
    std::default_delete<AMCP::DAL::DAL_Stereo_To_Mono_Mixer>::operator()[abi:ne200100](v65);
  }

  v66 = v60[4];
  v60[4] = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  v67 = v60[3];
  v60[3] = 0;
  if (v67)
  {
    MEMORY[0x1E12C1730](v67, 0x1000C40D9C97D19);
  }

  v68 = v60[2];
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  v69 = *v60;
  *v60 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void AMCP::DAL::PCM_Operation_Context::configure_audio_converter(uint64_t a1, void *a2, const AudioStreamBasicDescription *a3, const AudioStreamBasicDescription *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(buf, "map channels");
  v8 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, buf);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "convert format");
    v8 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &__p);
    v9 = v8 != 0;
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p.__vftable);
    }
  }

  if (SBYTE3(v44) < 0)
  {
    operator delete(*buf);
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  else if (!v9)
  {
    goto LABEL_24;
  }

  if (a3->mSampleRate != a4->mSampleRate)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Operation_Context.cpp";
      v41 = 1024;
      v42 = 173;
      v43 = 2080;
      v44 = "not (source_fmt.mSampleRate == dest_fmt.mSampleRate)";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s format conersion can only apply to formats with the same sample rates", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("format conersion can only apply to formats with the same sample rates", &v33);
    std::logic_error::logic_error(&v29, &v33);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v29);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    __p.__vftable = &unk_1F5991430;
    v35 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    v45 = "void AMCP::DAL::PCM_Operation_Context::configure_audio_converter(const DAL_Settings &, const CA::StreamDescription &, const CA::StreamDescription &)";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v47 = 173;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v10 = AudioConverterNew(a3, a4, (a1 + 48));
  if (v10)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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
      *&buf[4] = "PCM_Operation_Context.cpp";
      v41 = 1024;
      v42 = 175;
      v43 = 2080;
      v44 = "not (err == noErr)";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context::configure_audio_converter: failed to create the AudioConverter", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("PCM_Operation_Context::configure_audio_converter: failed to create the AudioConverter", &v33);
    std::logic_error::logic_error(&v29, &v33);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v29);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    __p.__vftable = &unk_1F5991430;
    v35 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    v45 = "void AMCP::DAL::PCM_Operation_Context::configure_audio_converter(const DAL_Settings &, const CA::StreamDescription &, const CA::StreamDescription &)";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v47 = 175;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "channel map");
  v11 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, buf);
  v12 = v11;
  if (SBYTE3(v44) < 0)
  {
    operator delete(*buf);
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else if (!v11)
  {
    goto LABEL_24;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "channel map");
  v13 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, buf);
  if (v13)
  {
    AMCP::Thing::convert_to<std::vector<int>>(&v33, (v13 + 5));
  }

  else
  {
    memset(&v33, 0, sizeof(v33));
  }

  if (SBYTE3(v44) < 0)
  {
    operator delete(*buf);
  }

  v14 = v33.__r_.__value_.__r.__words[0];
  if (v33.__r_.__value_.__r.__words[0] != v33.__r_.__value_.__l.__size_)
  {
    v15 = AudioConverterSetProperty(*(a1 + 48), 0x63686D70u, (LODWORD(v33.__r_.__value_.__r.__words[1]) - LODWORD(v33.__r_.__value_.__l.__data_)) & 0xFFFFFFFC, v33.__r_.__value_.__l.__data_);
    if (v15)
    {
      v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v25 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v15);
      }

      v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = *v27;
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      else
      {
        v28 = *v27;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "PCM_Operation_Context.cpp";
        v41 = 1024;
        v42 = 184;
        v43 = 2080;
        v44 = "not (err == noErr)";
        _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context::configure_audio_converter: failed to set the channel map on the converter", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v31);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("PCM_Operation_Context::configure_audio_converter: failed to set the channel map on the converter", &v32);
      std::logic_error::logic_error(&v30, &v32);
      v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&__p, &v30);
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = -1;
      __p.__vftable = &unk_1F5991430;
      v35 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
      v45 = "void AMCP::DAL::PCM_Operation_Context::configure_audio_converter(const DAL_Settings &, const CA::StreamDescription &, const CA::StreamDescription &)";
      v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
      v47 = 184;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v29);
    }
  }

  if (v14)
  {
    operator delete(v14);
  }

LABEL_24:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE69F9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::PCM_Operation_Context::configure_resampler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (v7)
  {
    v7 = AMCP::Thing::convert_to<BOOL>(v7 + 40);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (SBYTE3(v42) < 0)
  {
    operator delete(*__p);
    if (!v8)
    {
      goto LABEL_33;
    }
  }

  else if (!v8)
  {
    goto LABEL_33;
  }

  v9 = *(a3 + 12);
  v10 = *(a3 + 28);
  if ((v9 & 0x20) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a3 + 28);
  }

  v12 = *(a4 + 12);
  v13 = *(a4 + 28);
  if ((v12 & 0x20) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(a4 + 28);
  }

  if (v11 != v14)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      *__p = 136315650;
      *&__p[4] = "PCM_Operation_Context.cpp";
      v39 = 1024;
      v40 = 148;
      v41 = 2080;
      v42 = "not (source_fmt.GetNumberInterleavedChannels() == dest_fmt.GetNumberInterleavedChannels())";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s resample source and dest must have the same numnber of interleaved channels", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("resample source and dest must have the same numnber of interleaved channels", &v29);
    std::logic_error::logic_error(&v30, &v29);
    v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v31, &v30);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    v31.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v31);
    v43 = "void AMCP::DAL::PCM_Operation_Context::configure_resampler(const DAL_Settings &, const CA::StreamDescription &, const CA::StreamDescription &)";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v45 = 148;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v28);
  }

  if ((v9 & 0x20) != 0)
  {
    v15 = *(a3 + 28);
  }

  else
  {
    v15 = 1;
  }

  if ((v12 & 0x20) != 0)
  {
    v16 = *(a4 + 28);
  }

  else
  {
    v16 = 1;
  }

  if (v15 != v16)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      *__p = 136315650;
      *&__p[4] = "PCM_Operation_Context.cpp";
      v39 = 1024;
      v40 = 149;
      v41 = 2080;
      v42 = "not (source_fmt.GetNumberChannelStreams() == dest_fmt.GetNumberChannelStreams())";
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s resample source and dest must have the same numnber of noninterleaved channels", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("resample source and dest must have the same numnber of noninterleaved channels", &v29);
    std::logic_error::logic_error(&v30, &v29);
    v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v31, &v30);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    v31.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v31);
    v43 = "void AMCP::DAL::PCM_Operation_Context::configure_resampler(const DAL_Settings &, const CA::StreamDescription &, const CA::StreamDescription &)";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v45 = 149;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v28);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "resampler type");
  v17 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (v17)
  {
    v18 = AMCP::Thing::convert_to<AMCP::Resampler_Type>((v17 + 5));
  }

  else
  {
    v18 = 2;
  }

  if (SBYTE3(v42) < 0)
  {
    operator delete(*__p);
    if (v18)
    {
      goto LABEL_27;
    }

LABEL_31:
    operator new();
  }

  if (!v18)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (v18 == 1)
  {
    operator new();
  }

  if (v18 == 2)
  {
    operator new();
  }

LABEL_33:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1DE6A09AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](&__p);
  MEMORY[0x1E12C1730](v50, 0x10A1C40B03752CALL);
  _Unwind_Resume(a1);
}

void std::default_delete<AMCP::DAL::DAL_Stereo_To_Mono_Mixer>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void AMCP::DAL::PCM_Operation_Context::~PCM_Operation_Context(AMCP::DAL::PCM_Operation_Context *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    std::default_delete<AMCP::DAL::DAL_Stereo_To_Mono_Mixer>::operator()[abi:ne200100](v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    MEMORY[0x1E12C1730](v8, 0x1000C40D9C97D19);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *this;
  *this = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

double AMCP::DAL::PCM_Operation_Context::apply(uint64_t is_format_equivalent_besides_sample_rate, uint64_t *a2, double *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v9 = a7;
  v10 = a6;
  v12 = is_format_equivalent_besides_sample_rate;
  v213 = *MEMORY[0x1E69E9840];
  v177 = a3[1] - *a3;
  v13 = a6 + v177;
  v15 = *(is_format_equivalent_besides_sample_rate + 168);
  v14 = *(is_format_equivalent_besides_sample_rate + 176);
  v16 = v15;
  if (v15 != v14)
  {
    v16 = *(is_format_equivalent_besides_sample_rate + 168);
    while (*v16 != 4)
    {
      v16 += 4;
      if (v16 == v14)
      {
        goto LABEL_13;
      }
    }
  }

  if (v16 != v14)
  {
    if (*(is_format_equivalent_besides_sample_rate + 88) != *(is_format_equivalent_besides_sample_rate + 128))
    {
      v162 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v162 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
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
        *__B = 136315650;
        *&__B[4] = "PCM_Operation_Context.cpp";
        *&__B[12] = 1024;
        *&__B[14] = 219;
        *&__B[18] = 2080;
        *&__B[20] = "not (m_source_format.mSampleRate == m_dest_format.mSampleRate)";
        _os_log_error_impl(&dword_1DE1F9000, v165, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s direct copies should never have different sample rates", __B, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("direct copies should never have different sample rates", &v182);
      std::logic_error::logic_error(&v181, &v182);
      v181.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v196, &v181);
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v201 = -1;
      v196.__vftable = &unk_1F5991430;
      v197 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v196);
      *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
      v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
      v211 = 219;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v195);
    }

    if (v14 - v15 != 4)
    {
      v166 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v166 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
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
        *__B = 136315650;
        *&__B[4] = "PCM_Operation_Context.cpp";
        *&__B[12] = 1024;
        *&__B[14] = 220;
        *&__B[18] = 2080;
        *&__B[20] = "not (m_order_of_operations.size() == 1)";
        _os_log_error_impl(&dword_1DE1F9000, v169, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Change Clock operation should be processed only independently", __B, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Change Clock operation should be processed only independently", &v182);
      std::logic_error::logic_error(&v181, &v182);
      v181.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v196, &v181);
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v201 = -1;
      v196.__vftable = &unk_1F5991430;
      v197 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v196);
      *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
      v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
      v211 = 220;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v195);
    }

    v17 = *a4;
    v18 = *(a4 + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::PCM_Operation_Context::copy_directly_to_destination(a2, v17, a6, a7);
    v19 = v10;
    if (v18)
    {
      goto LABEL_184;
    }

    goto LABEL_185;
  }

LABEL_13:
  if (v15 == v14)
  {
    v19 = a6;
    goto LABEL_180;
  }

  v20 = 0;
  v174 = a7 - a6;
  v178 = 1;
  v19 = a6;
  do
  {
    v21 = *&v15[4 * v20];
    if (v21 <= 1)
    {
      if (v21)
      {
        if (v21 == 1)
        {
          is_format_equivalent_besides_sample_rate = *(v12 + 32);
          if (is_format_equivalent_besides_sample_rate)
          {
            v22 = ((v14 - v15) >> 2) - 1;
            v23 = *v12;
            if (*v12)
            {
              if (v20 == v22)
              {
                if (!v20 || ((v24 = *(v23 + 11)) == 0 ? memset(__B, 0, sizeof(__B)) : (*__B = *(v24 + 8), *&__B[16] = *(v24 + 24), *&__B[32] = *(v24 + 40)), is_format_equivalent_besides_sample_rate = AMCP::DAL::is_format_equivalent_besides_sample_rate(v12 + 128, __B), (is_format_equivalent_besides_sample_rate & 1) == 0))
                {
                  v158 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v158 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
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
                    *__B = 136315650;
                    *&__B[4] = "PCM_Operation_Context.cpp";
                    *&__B[12] = 1024;
                    *&__B[14] = 269;
                    *&__B[18] = 2080;
                    *&__B[20] = "not (intermediate_buffer_is_source)";
                    _os_log_error_impl(&dword_1DE1F9000, v161, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s multi processing operations requires an intermediate buffer", __B, 0x1Cu);
                  }

                  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
                  __cxa_allocate_exception(0x40uLL);
                  caulk::make_string("multi processing operations requires an intermediate buffer", &v182);
                  std::logic_error::logic_error(&v181, &v182);
                  v181.__vftable = (MEMORY[0x1E69E55A8] + 16);
                  std::logic_error::logic_error(&v196, &v181);
                  v198 = 0;
                  v199 = 0;
                  v200 = 0;
                  v201 = -1;
                  v196.__vftable = &unk_1F5991430;
                  v197 = &unk_1F5991458;
                  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v196);
                  *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
                  v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
                  v211 = 269;
                  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v195);
                }

                v139 = *(v23 + 12);
                if (v139)
                {
                  atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(v24);
                AMCP::DAL::PCM_Data_Handler::get_other_data<float>(__B, v24, v19, v13);
                if (v139)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v139);
                }

                v140 = *(v12 + 32);
                v141 = *(a4 + 8);
                v191 = *a4;
                v192 = v141;
                if (v141)
                {
                  atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v19 = (*(*v140 + 16))(v140, __B, &v191, a5, v13 - v19, v10, v9);
                v13 = v142;
                v138 = v192;
                if (v192)
                {
LABEL_173:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v138);
                }

                goto LABEL_174;
              }

              v67 = *(v23 + 12);
              v189 = *(v23 + 11);
              v190 = v67;
              if (v67)
              {
                atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
              }

              v19 = (*(*is_format_equivalent_besides_sample_rate + 16))(is_format_equivalent_besides_sample_rate, a2, &v189, a5, v177, 0.0, v174);
              v13 = v68;
              is_format_equivalent_besides_sample_rate = v190;
              if (!v190)
              {
LABEL_175:
                v178 = 0;
                goto LABEL_176;
              }
            }

            else
            {
              if (v20 != v22)
              {
                v150 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v150 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
                }

                v152 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v151 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v151)
                {
                  atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
                  v153 = *v152;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v151);
                }

                else
                {
                  v153 = *v152;
                }

                if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                {
                  *__B = 136315650;
                  *&__B[4] = "PCM_Operation_Context.cpp";
                  *&__B[12] = 1024;
                  *&__B[14] = 260;
                  *&__B[18] = 2080;
                  *&__B[20] = "not (is_last_command)";
                  _os_log_error_impl(&dword_1DE1F9000, v153, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not intermediate buffer requires k_resampling to be the last command", __B, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string("not intermediate buffer requires k_resampling to be the last command", &v182);
                std::logic_error::logic_error(&v181, &v182);
                v181.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v196, &v181);
                v198 = 0;
                v199 = 0;
                v200 = 0;
                v201 = -1;
                v196.__vftable = &unk_1F5991430;
                v197 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v196);
                *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
                v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
                v211 = 260;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v195);
              }

              v62 = *(a4 + 8);
              v193 = *a4;
              v194 = v62;
              if (v62)
              {
                atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
              }

              v19 = (*(*is_format_equivalent_besides_sample_rate + 16))(is_format_equivalent_besides_sample_rate, a2, &v193, a5, v177, v10, v9);
              v13 = v63;
              is_format_equivalent_besides_sample_rate = v194;
              if (!v194)
              {
                goto LABEL_175;
              }
            }

            goto LABEL_77;
          }
        }

        goto LABEL_176;
      }

      if (!*(v12 + 24))
      {
        goto LABEL_176;
      }

      v42 = *a3;
      v41 = a3[1];
      caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(&v196, *(v12 + 8));
      if (v208)
      {
LABEL_110:
        v96 = *(v12 + 24);
        v97 = *(v96 + 56);
        v98 = v97 + *(v96 + 64);
        v99 = round(v97);
        v100 = round(v98);
        if (v99 < v100)
        {
          v101 = round(v206);
          v102 = round(v207);
          if (v101 < v102)
          {
            if (v99 < v101)
            {
              v97 = v206;
            }

            if (v102 < v100)
            {
              v98 = v207;
            }

            v99 = round(v97);
            v100 = round(v98);
          }

          else
          {
            v100 = v102;
            v99 = v101;
            v98 = v207;
            v97 = v206;
          }
        }

        if (v99 < v100)
        {
          if ((*(v96 + 12) & 0x20) != 0)
          {
            v110 = 1;
          }

          else
          {
            v110 = *(v96 + 28);
          }

          v111 = v206;
          v112 = *a2;
          v114 = a2[1];
          v113 = *a2;
          if (round(v206) < v99 && v113 != v114)
          {
            v116 = v110 * vcvtmd_s64_f64(v97 - v206);
            do
            {
              v117 = *v113;
              *__B = *(v96 + 48);
              is_format_equivalent_besides_sample_rate = MEMORY[0x1E12C2970](v117, 1, __B, v117, 1, v116);
              v113 += 2;
            }

            while (v113 != v114);
            v112 = *a2;
          }

          v119 = *(&v112 + 1);
          v118 = v112;
          if (v112 != *(&v112 + 1))
          {
            v120 = vcvtmd_s64_f64(v97) - vcvtmd_s64_f64(v111);
            v121 = v120 * v110;
            v122 = (v120 + vcvtmd_s64_f64(v98 - v97)) * v110;
            v123 = 4 * v110 * v120;
            v124 = v112;
            do
            {
              v125 = *(v96 + 48);
              if (v121 < v122)
              {
                v126 = (*v124 + v123);
                v127 = v121;
                do
                {
                  v128 = v126;
                  for (i = v110; i; --i)
                  {
                    *v128 = v125 * *v128;
                    ++v128;
                  }

                  v130 = *(v96 + 72);
                  v131 = v125 + v130;
                  if (v130 <= 0.0 || (v125 = *(v96 + 52), v131 < v125))
                  {
                    if (v130 >= 0.0)
                    {
                      v125 = v131;
                    }

                    else
                    {
                      v125 = v131;
                      if (v131 <= *(v96 + 52))
                      {
                        v125 = *(v96 + 52);
                      }
                    }
                  }

                  v127 += v110;
                  v126 += v110;
                }

                while (v127 < v122);
              }

              v124 += 2;
            }

            while (v124 != *(&v112 + 1));
            *(v96 + 48) = v125;
            if (v100 < round(v207))
            {
              v132 = v110 * vcvtmd_s64_f64(v207 - v98);
              v133 = v110 * vcvtmd_s64_f64(v98 - v111);
              do
              {
                v134 = *v118 + 4 * v133;
                *__B = *(v96 + 48);
                is_format_equivalent_besides_sample_rate = MEMORY[0x1E12C2970](v134, 1, __B, v134, 1, v132);
                v118 += 2;
              }

              while (v118 != v119);
            }
          }
        }

        else
        {
          v104 = *(v96 + 48);
          v103 = v96 + 48;
          v105 = v104;
          if (v104 != 1.0)
          {
            v106 = *a2;
            v107 = a2[1];
            if (v105 == 0.0)
            {
              while (v106 != v107)
              {
                v108 = *v106;
                v109 = v106[1];
                v106 += 2;
                bzero(v108, 4 * v109);
              }
            }

            else
            {
              while (v106 != v107)
              {
                is_format_equivalent_besides_sample_rate = MEMORY[0x1E12C2970](*v106, 1, v103, *v106, 1, v106[1]);
                v106 += 2;
              }
            }
          }
        }

        goto LABEL_176;
      }

      v43 = v9;
      v44 = *&v196.__vftable;
      imp = v196.__imp_.__imp_;
      v46 = v197;
      v47 = v202;
      v48 = *(v12 + 56);
      v49 = *(v12 + 64);
      if (v49)
      {
        atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
      }

      *__B = 0;
      *&__B[8] = 0;
      *&__B[16] = 0;
      *&__B[24] = v48;
      if (v47)
      {
        *&__B[8] = imp;
        *__B = 2;
        v50 = 3;
        if ((v47 & 2) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v50 = 1;
        if ((v47 & 2) == 0)
        {
LABEL_80:
          sample_time = AMCP::DAL::DAL_Time::get_sample_time(__B);
          if (*&__B[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&__B[32]);
          }

          v72 = *(v12 + 56);
          v73 = v203;
          v74 = v204;
          v75 = v205;
          v76 = *(v12 + 64);
          if (v76)
          {
            atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
          }

          *__B = 0;
          *&__B[8] = 0;
          *&__B[16] = 0;
          *&__B[24] = v72;
          if (v75)
          {
            *&__B[8] = v73;
            *__B = 2;
            v77 = 3;
            if ((v75 & 2) == 0)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v77 = 1;
            if ((v75 & 2) == 0)
            {
LABEL_89:
              v78 = AMCP::DAL::DAL_Time::get_sample_time(__B);
              if (*&__B[32])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&__B[32]);
              }

              v79 = round(sample_time);
              v80 = round(v42);
              if (v79 < v80)
              {
                v85 = round(sample_time + v78);
                if (v79 < v85)
                {
                  v86 = round(v41);
                  if (v86 >= v85)
                  {
                    v87 = sample_time + v78;
                  }

                  else
                  {
                    v87 = v41;
                  }

                  v85 = round(v87);
                  if (v80 >= v86)
                  {
                    v85 = v86;
                  }
                }

                else
                {
                  v80 = v79;
                }

                v81 = *(v12 + 24);
                if (v80 >= v85)
                {
                  v88 = fmaxf(fminf(v44, 1.0), 0.0);
                  *(v81 + 52) = v88;
                  v89 = *(v81 + 40);
                  *(v81 + 56) = v42;
                  *(v81 + 64) = v89;
                  v90 = (v88 - *(v81 + 48)) / v89;
                  v91 = ceil(v90 * 1000000.0);
                  v92 = floor(v90 * 1000000.0);
                  if (v90 <= 0.0)
                  {
                    v93 = v92;
                  }

                  else
                  {
                    v93 = v91;
                  }

                  v94 = v93 / 1000000.0;
                  *(v81 + 72) = v94;
                  goto LABEL_107;
                }

                v84 = v78 - (v42 - sample_time);
                v82 = v44;
                v83 = v42;
              }

              else
              {
                v81 = *(v12 + 24);
                v82 = v44;
                v83 = sample_time;
                v84 = v78;
              }

              AMCP::DAL::DAL_Volume_Processor::set_ramp(v81, v82, v83, v84);
LABEL_107:
              v95 = *(v12 + 8);
              caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(__B, v95);
              v9 = v43;
              if ((v212 & 1) == 0)
              {
                v212 = 1;
                caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::store(v95, __B);
              }

              v10 = a6;
              goto LABEL_110;
            }
          }

          *&__B[16] = v74;
          *__B = v77;
          goto LABEL_89;
        }
      }

      *&__B[16] = v46;
      *__B = v50;
      goto LABEL_80;
    }

    if (v21 == 2)
    {
      if (!*(v12 + 48))
      {
        goto LABEL_176;
      }

      v51 = ((v14 - v15) >> 2) - 1;
      v52 = *v12;
      if (*v12)
      {
        if (v20 == v51)
        {
          v53 = *(v52 + 11);
          if (v53)
          {
            v185 = *(v53 + 8);
            v186 = *(v53 + 24);
            v187 = *(v53 + 40);
            if (!v20)
            {
              goto LABEL_194;
            }
          }

          else
          {
            v187 = 0;
            v185 = 0u;
            v186 = 0u;
            if (!v20)
            {
              goto LABEL_194;
            }
          }

          is_format_equivalent_besides_sample_rate = AMCP::DAL::is_format_equivalent_besides_sample_rate(v12 + 88, &v185);
          if ((is_format_equivalent_besides_sample_rate & 1) == 0)
          {
LABEL_194:
            v154 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v154 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
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
              *__B = 136315650;
              *&__B[4] = "PCM_Operation_Context.cpp";
              *&__B[12] = 1024;
              *&__B[14] = 301;
              *&__B[18] = 2080;
              *&__B[20] = "not (intermediate_buffer_is_source)";
              _os_log_error_impl(&dword_1DE1F9000, v157, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s multi processing operations requires an intermediate buffer", __B, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v184);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("multi processing operations requires an intermediate buffer", &v195);
            std::logic_error::logic_error(&v183, &v195);
            v183.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v196, &v183);
            v198 = 0;
            v199 = 0;
            v200 = 0;
            v201 = -1;
            v196.__vftable = &unk_1F5991430;
            v197 = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v196);
            *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
            v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
            v211 = 301;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v181);
          }

          v135 = *(v52 + 12);
          if (v135)
          {
            atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(v53);
          AMCP::DAL::PCM_Data_Handler::get_other_data<float>(__B, v53, v19, v13);
          if (v135)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v135);
          }

          v136 = *(a4 + 8);
          v180[0] = *a4;
          v180[1] = v136;
          if (v136)
          {
            atomic_fetch_add_explicit((v136 + 8), 1uLL, memory_order_relaxed);
          }

          v19 = AMCP::DAL::PCM_Operation_Context::convert_audio_format(v12, __B, &v185, v180, v13 - v19, v10, v9);
          v13 = v137;
          if (v136)
          {
            v138 = v136;
            goto LABEL_173;
          }

LABEL_174:
          is_format_equivalent_besides_sample_rate = std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](__B);
          goto LABEL_175;
        }

        v70 = *a3;
        v69 = a3[1];
        v64 = *(v52 + 12);
        v179[0] = *(v52 + 11);
        v179[1] = v64;
        if (v64)
        {
          atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
        }

        v65 = AMCP::DAL::PCM_Operation_Context::convert_audio_format(v12, a2, (v12 + 88), v179, v177, 0.0, v69 - v70);
      }

      else
      {
        if (v20 != v51)
        {
          v146 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v146 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
          }

          v148 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v147 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v147)
          {
            atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
            v149 = *v148;
            std::__shared_weak_count::__release_shared[abi:ne200100](v147);
          }

          else
          {
            v149 = *v148;
          }

          if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
          {
            *__B = 136315650;
            *&__B[4] = "PCM_Operation_Context.cpp";
            *&__B[12] = 1024;
            *&__B[14] = 291;
            *&__B[18] = 2080;
            *&__B[20] = "not (is_last_command)";
            _os_log_error_impl(&dword_1DE1F9000, v149, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not intermediate buffer requires k_format_conversion to be the last command", __B, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("not intermediate buffer requires k_format_conversion to be the last command", &v182);
          std::logic_error::logic_error(&v181, &v182);
          v181.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v196, &v181);
          v198 = 0;
          v199 = 0;
          v200 = 0;
          v201 = -1;
          v196.__vftable = &unk_1F5991430;
          v197 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v196);
          *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
          v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
          v211 = 291;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v195);
        }

        v64 = *(a4 + 8);
        v188[0] = *a4;
        v188[1] = v64;
        if (v64)
        {
          atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
        }

        v65 = AMCP::DAL::PCM_Operation_Context::convert_audio_format(v12, a2, (v12 + 88), v188, v177, v10, v9);
      }

      v19 = v65;
      v13 = v66;
      if (!v64)
      {
        goto LABEL_175;
      }

      is_format_equivalent_besides_sample_rate = v64;
LABEL_77:
      std::__shared_weak_count::__release_shared[abi:ne200100](is_format_equivalent_besides_sample_rate);
      goto LABEL_175;
    }

    if (v21 == 3)
    {
      v25 = *(v12 + 40);
      if (v25)
      {
        v26 = a3[1] - *a3;
        if ((*(v25 + 12) & 0x20) != 0)
        {
          v54 = *(v25 + 40);
          v55 = *(v25 + 48) - v54;
          *__B = (v55 >> 2);
          v56 = (*a2 + 16 * *v54);
          v57 = vcvtmd_s64_f64(v26);
          if (v55 >= 5)
          {
            v58 = 1;
            do
            {
              MEMORY[0x1E12C2930](*(*a2 + 16 * v54[v58++]), 1, *v56, 1, *v56, 1, v57);
              v54 = *(v25 + 40);
            }

            while (v58 < (*(v25 + 48) - v54) >> 2);
          }

          vDSP_vsdiv(*v56, 1, __B, *v56, 1, v57);
          v59 = *(v25 + 40);
          if ((*(v25 + 48) - v59) >= 5)
          {
            v60 = 4 * v57;
            v61 = 1;
            do
            {
              is_format_equivalent_besides_sample_rate = memcpy(*(*a2 + 16 * *(v59 + 4 * v61++)), *v56, v60);
              v59 = *(v25 + 40);
            }

            while (v61 < (*(v25 + 48) - v59) >> 2);
          }
        }

        else
        {
          v27 = *(v25 + 28);
          v28 = v27 * vcvtmd_s64_f64(v26);
          if (v28 >= 1)
          {
            v29 = 0;
            v30 = *(v25 + 40);
            v31 = (*(v25 + 48) - v30) >> 2;
            v32 = v31;
            v33 = *v30;
            v34 = **a2;
            do
            {
              is_format_equivalent_besides_sample_rate = v29 + v33;
              if (v31 <= 1)
              {
                *(v34 + 4 * is_format_equivalent_besides_sample_rate) = *(v34 + 4 * is_format_equivalent_besides_sample_rate) / v32;
              }

              else
              {
                v35 = *(v34 + 4 * is_format_equivalent_besides_sample_rate);
                v36 = 1;
                v37 = v34 + 4 * v29;
                do
                {
                  v35 = *(v37 + 4 * v30[v36]) + v35;
                  *(v34 + 4 * is_format_equivalent_besides_sample_rate) = v35;
                  ++v36;
                }

                while (v31 != v36);
                v38 = v35 / v32;
                *(v34 + 4 * is_format_equivalent_besides_sample_rate) = v38;
                is_format_equivalent_besides_sample_rate = (v30 + 1);
                v39 = v31 - 1;
                do
                {
                  v40 = *is_format_equivalent_besides_sample_rate;
                  is_format_equivalent_besides_sample_rate += 4;
                  *(v37 + 4 * v40) = v38;
                  --v39;
                }

                while (v39);
              }

              v29 += v27;
            }

            while (v29 < v28);
          }
        }
      }
    }

LABEL_176:
    ++v20;
    v15 = *(v12 + 168);
    v14 = *(v12 + 176);
  }

  while (v20 < (v14 - v15) >> 2);
  if ((v178 & 1) == 0)
  {
    goto LABEL_185;
  }

LABEL_180:
  if (*(v12 + 88) != *(v12 + 128))
  {
    v170 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v170 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
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
      *__B = 136315650;
      *&__B[4] = "PCM_Operation_Context.cpp";
      *&__B[12] = 1024;
      *&__B[14] = 318;
      *&__B[18] = 2080;
      *&__B[20] = "not (m_source_format.mSampleRate == m_dest_format.mSampleRate)";
      _os_log_error_impl(&dword_1DE1F9000, v173, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s direct copies should never have different sample rates", __B, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("direct copies should never have different sample rates", &v182);
    std::logic_error::logic_error(&v181, &v182);
    v181.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v196, &v181);
    v198 = 0;
    v199 = 0;
    v200 = 0;
    v201 = -1;
    v196.__vftable = &unk_1F5991430;
    v197 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v196);
    *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
    v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v211 = 318;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v195);
  }

  v143 = *a4;
  v18 = *(a4 + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::PCM_Operation_Context::copy_directly_to_destination(a2, v143, v10, v9);
  v10 = v19;
  if (v18)
  {
LABEL_184:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    v19 = v10;
  }

LABEL_185:
  v144 = *MEMORY[0x1E69E9840];
  return v19;
}