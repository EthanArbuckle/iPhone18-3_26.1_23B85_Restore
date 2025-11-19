BOOL ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_12(void *a1)
{
  result = HALB_FormatList::IsVirtualFormatSupported(*(a1[5] + 88), *(a1[5] + 96), a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_14(uint64_t a1)
{
  v2 = *(a1 + 32);
  HALS_IOA2Stream::GetCurrentHWFormat(v2, &v13);
  if (v13.mFormatID == 1819304813 && (v13.mFormatFlags & 0x40) == 0)
  {
    if (*(a1 + 76))
    {
      v4 = 9;
    }

    else
    {
      v4 = 11;
    }

    v13.mFormatFlags = v4;
    v13.mBytesPerPacket = 4 * v13.mChannelsPerFrame;
    v13.mFramesPerPacket = 1;
    v13.mBytesPerFrame = 4 * v13.mChannelsPerFrame;
    v13.mBitsPerChannel = 32;
  }

  if (*(a1 + 72) != 40 || (v5 = *(a1 + 40)) == 0)
  {
    v5 = *(a1 + 48);
  }

  v6 = *(v5 + 16);
  *&v12.mSampleRate = *v5;
  *&v12.mBytesPerPacket = v6;
  *&v12.mBitsPerChannel = *(v5 + 32);
  if (*(a1 + 64) == 1)
  {
    v8 = &unk_1F596A5A0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(v2[14], v2[15], &v8, *(a1 + 56));
    HALB_FormatList::BestMatchForVirtualFormat(&v8, &v12, *(a1 + 48), v7, v13.mSampleRate);
    HALB_FormatList::~HALB_FormatList(&v8);
  }

  else
  {
    HALB_FormatList::BestMatchForVirtualFormat((v2 + 10), &v12, *(a1 + 48), v3, v13.mSampleRate);
  }
}

void sub_1DE48153C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE48152CLL);
}

void sub_1DE481584(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_18(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  *(v3 + 24) = 0;
  if (v1 >= 0x38)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1 / 0x38uLL;
    v8 = -1;
    do
    {
      v9 = *(v2 + 112);
      if (++v8 >= (0x6DB6DB6DB6DB6DB7 * ((*(v2 + 120) - v9) >> 3)))
      {
        break;
      }

      v10 = v9 + v5;
      v5 += 56;
      v11 = v4 + 56 * v6;
      result = *v10;
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      *(v11 + 48) = *(v10 + 48);
      *(v11 + 16) = v13;
      *(v11 + 32) = v14;
      *v11 = result;
      v6 = *(v3 + 24) + 1;
      *(v3 + 24) = v6;
    }

    while (v6 < v7);
  }

  return result;
}

void sub_1DE48168C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_22(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v3 = &unk_1F596A5A0;
    v4 = 0u;
    v5 = 0u;
    v6 = 0u;
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v2 + 112), *(v2 + 120), &v3, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(&v5 + 1), v6, *(a1 + 64));
    HALB_FormatList::~HALB_FormatList(&v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(v2 + 112), *(v2 + 120), *(a1 + 64));
  }
}

void sub_1DE481758(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALB_FormatList::~HALB_FormatList(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE481748);
}

void ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_24(uint64_t a1)
{
  v2 = *(a1 + 32);
  HALS_IOA2Stream::GetCurrentHWFormat(v2, &v12);
  if (*(a1 + 72) != 40 || (v4 = *(a1 + 40)) == 0)
  {
    v4 = *(a1 + 48);
  }

  v5 = *(v4 + 16);
  *&v11.mSampleRate = *v4;
  *&v11.mBytesPerPacket = v5;
  *&v11.mBitsPerChannel = *(v4 + 32);
  if (*(a1 + 64) == 1)
  {
    v7 = &unk_1F596A5A0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(v2[14], v2[15], &v7, *(a1 + 56));
    HALB_FormatList::BestMatchForPhysicalFormat(&v7, &v11, *(a1 + 48), v6, v12.mSampleRate);
    HALB_FormatList::~HALB_FormatList(&v7);
  }

  else
  {
    HALB_FormatList::BestMatchForPhysicalFormat((v2 + 10), &v11, *(a1 + 48), v3, v12.mSampleRate);
  }
}

void sub_1DE481850(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE481840);
}

void __copy_helper_block_e8_40c38_ZTS13HALS_ReleaserI15HALS_IOA2DeviceE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 5);
  *(a1 + 40) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

uint64_t HALS_IOA2Stream::GetPropertyDataSize(HALS_IOA2Stream *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, HALS_Client *a6)
{
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1936092450)
  {
    if (mSelector == 1936092451)
    {
      v10 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZNK15HALS_IOA2Stream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
      v17[3] = &unk_1E8675170;
      v17[4] = &v19;
      v17[5] = this;
      v11 = (*(*this + 64))(this);
      goto LABEL_12;
    }

    if (mSelector == 1936092513)
    {
      v10 = v18;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = ___ZNK15HALS_IOA2Stream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
      v18[3] = &unk_1E8675148;
      v18[4] = &v19;
      v18[5] = this;
      v11 = (*(*this + 64))(this);
      goto LABEL_12;
    }
  }

  else
  {
    if (mSelector == 1885762595)
    {
      v10 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZNK15HALS_IOA2Stream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
      v15[3] = &unk_1E86751C0;
      v15[4] = &v19;
      v15[5] = this;
      v11 = (*(*this + 64))(this);
      goto LABEL_12;
    }

    if (mSelector == 1885762657)
    {
      v10 = v16;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZNK15HALS_IOA2Stream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
      v16[3] = &unk_1E8675198;
      v16[4] = &v19;
      v16[5] = this;
      v11 = (*(*this + 64))(this);
LABEL_12:
      HALB_CommandGate::ExecuteCommand(v11, v10);
      PropertyDataSize = *(v20 + 6);
      goto LABEL_13;
    }
  }

  PropertyDataSize = HALS_Stream::GetPropertyDataSize(this, a2, a3);
  *(v20 + 6) = PropertyDataSize;
LABEL_13:
  _Block_object_dispose(&v19, 8);
  return PropertyDataSize;
}

uint64_t HALS_IOA2Stream::IsPropertySettable(HALS_IOA2Stream *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (a3->mSelector == 1935762292)
  {
    return 1;
  }

  return HALS_Stream::IsPropertySettable(this, a2, a3);
}

uint64_t HALS_IOA2Stream::HasProperty(HALS_IOA2Stream *this, unsigned int a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (!(*(*this + 184))(this, a3, a4))
  {
    v8 = 0;
    return v8 & 1;
  }

  if (a3->mSelector == 1935762292)
  {
    v8 = 1;
    return v8 & 1;
  }

  if (a3->mSelector == 1952542835)
  {
    v8 = *(this + 52);
    return v8 & 1;
  }

  return HALS_Stream::HasProperty(this, a2, a3, a4);
}

void HALS_IOA2Stream::~HALS_IOA2Stream(HALS_IOA2Stream *this)
{
  *this = &unk_1F5971FE0;
  HALB_FormatList::~HALB_FormatList((this + 80));
  HALS_Stream::~HALS_Stream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5971FE0;
  HALB_FormatList::~HALB_FormatList((this + 80));

  HALS_Stream::~HALS_Stream(this);
}

void HALS_IOA2Stream::Activate(HALS_IOA2Stream *this)
{
  HALS_IOA2Stream::BuildFormatList(this);

  HALS_Object::Activate(this, v2);
}

void HALS_IOA2Stream::BuildFormatList(HALS_IOA2Stream *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v4 = v2;
  if (v2)
  {
    *(this + 12) = *(this + 11);
    *(this + 15) = *(this + 14);
    v5 = *(this + 18);
    cf = 0;
    v6 = HALS_IOA2UCDevice::CopyStreamDictionaryByID((v2 + 1976), v5);
    v22 = v6;
    v23 = 1;
    if (v6)
    {
      if ((CACFDictionary::GetArray(v6, @"available formats", &cf) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.mFormat.mSampleRate) = 136315394;
          *(&buf.mFormat.mSampleRate + 4) = "HALS_IOA2UCDevice.cpp";
          LOWORD(buf.mFormat.mFormatFlags) = 1024;
          *(&buf.mFormat.mFormatFlags + 2) = 667;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::CopyStreamInfoByID_AvailableFormats: there are no available formats", &buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 1852797029;
      }

      v7 = cf;
      if (cf)
      {
        CFRetain(cf);
      }
    }

    else
    {
      v7 = 0;
    }

    CACFDictionary::~CACFDictionary(&v22);
    v8 = 0;
    v19 = v7;
    v20 = 1;
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_8:
    for (i = CFArrayGetCount(v7); v8 < i; i = 0)
    {
      cf = 0;
      v18 = 1;
      CACFArray::GetCACFDictionary(&v19, v8, &cf);
      v21 = 0;
      v22 = cf;
      v23 = 0;
      memset(&buf, 0, sizeof(buf));
      if (CACFDictionary::GetUInt64(cf, @"min sample rate", &v21) && (buf.mSampleRateRange.mMinimum = vcvtd_n_f64_u64(v21, 0x20uLL) + HIDWORD(v21), CACFDictionary::GetUInt64(v22, @"max sample rate", &v21)))
      {
        v10 = vcvtd_n_f64_u64(v21, 0x20uLL) + HIDWORD(v21);
        mMinimum = buf.mSampleRateRange.mMinimum;
        if (buf.mSampleRateRange.mMinimum != v10)
        {
          mMinimum = 0.0;
        }

        buf.mSampleRateRange.mMaximum = v10;
        buf.mFormat.mSampleRate = mMinimum;
        if (CACFDictionary::GetUInt32(v22, @"format ID", &buf.mFormat.mFormatID) && CACFDictionary::GetUInt32(v22, @"format flags", &buf.mFormat.mFormatFlags) && CACFDictionary::GetUInt32(v22, @"bytes per packet", &buf.mFormat.mBytesPerPacket) && CACFDictionary::GetUInt32(v22, @"frames per packet", &buf.mFormat.mFramesPerPacket) && CACFDictionary::GetUInt32(v22, @"bytes per frame", &buf.mFormat.mBytesPerFrame) && CACFDictionary::GetUInt32(v22, @"channels per frame", &buf.mFormat.mChannelsPerFrame))
        {
          UInt32 = CACFDictionary::GetUInt32(v22, @"bits per channel", &buf.mFormat.mBitsPerChannel);
        }

        else
        {
          UInt32 = 0;
        }
      }

      else
      {
        UInt32 = 0;
        v13 = buf.mSampleRateRange.mMinimum;
        if (buf.mSampleRateRange.mMinimum != buf.mSampleRateRange.mMaximum)
        {
          v13 = 0.0;
        }

        buf.mFormat.mSampleRate = v13;
      }

      if (buf.mFormat.mFormatID == 1819304813)
      {
        buf.mFormat.mFormatFlags &= ~0x40u;
      }

      CACFDictionary::~CACFDictionary(&v22);
      if (UInt32)
      {
        HALB_FormatList::AddPhysicalFormat((this + 80), &buf, v14);
      }

      CACFDictionary::~CACFDictionary(&cf);
      ++v8;
      v7 = v19;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_9:
      ;
    }

    CACFArray::~CACFArray(&v19);
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  v15 = *MEMORY[0x1E69E9840];
}

void AMCP::ASP::PlugIn::log_plugin_exception(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    mcp_applesauce::CF::PlugInRef_proxy::get_bundle(&v11, *a1);
    mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(&cf, v11);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136315906;
    v16 = "ASP_PlugIn.cpp";
    v17 = 1024;
    v18 = 884;
    v19 = 2080;
    v20 = a2;
    v21 = 2080;
    v22 = v9;
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught unknown exception while trying to call %s on ASP with bundle id %s", buf, 0x26u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE48253C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *mcp_applesauce::CF::PlugInRef_proxy::get_bundle(void *this, __CFBundle *a2)
{
  v2 = this;
  if (a2)
  {
    Bundle = CFPlugInGetBundle(a2);
    v4 = Bundle;
    if (Bundle)
    {
      CFRetain(Bundle);
    }

    return mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::BundleRef_Traits>::BasicRef(v2, v4);
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DE482600(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "PerformDeviceConfigurationChange");
  AMCP::ASP::PlugIn::log_plugin_exception(v15, &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE4825F0);
}

void sub_1DE482684(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "HasProperty");
  AMCP::ASP::PlugIn::log_plugin_exception(v15, &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE482674);
}

unint64_t AMCP::ASP::PlugIn::ObjectIsPropertySettable(AMCP::ASP::PlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4)
{
  v6 = 0;
  v4 = (*(**(this + 2) + 96))(*(this + 2), a2, a3, a4, &v6);
  return v4 | ((v6 != 0) << 32);
}

void sub_1DE482718(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "IsPropertySettable");
  AMCP::ASP::PlugIn::log_plugin_exception(v14, &__p);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE4826F4);
}

unint64_t AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(AMCP::ASP::PlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6)
{
  v8 = 0;
  v6 = (*(**(this + 2) + 104))(*(this + 2), a2, a3, a4, a5, a6, &v8);
  return v6 | (v8 << 32);
}

void sub_1DE4827A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "GetPropertyDataSize");
  AMCP::ASP::PlugIn::log_plugin_exception(v14, &__p);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE48278CLL);
}

unint64_t AMCP::ASP::PlugIn::ObjectGetPropertyData(AMCP::ASP::PlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6, uint64_t a7, void *a8)
{
  v10 = a7;
  v8 = (*(**(this + 2) + 112))(*(this + 2), a2, a3, a4, a5, a6, a7, &v10, a8);
  return v8 | (v10 << 32);
}

void sub_1DE48283C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "GetPropertyData");
  AMCP::ASP::PlugIn::log_plugin_exception(v16, &__p);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE482820);
}

void sub_1DE4828B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "SetPropertyData");
  AMCP::ASP::PlugIn::log_plugin_exception(v15, &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE4828A8);
}

void HALS_PDPStream::SetPropertyData(HALS_PDPStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v53 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v17 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_PDPStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 251;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPStream::SetPropertyData: owning device is missing", buf, 0x12u);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    v33 = 560947818;
LABEL_43:
    *v32 = off_1F5991DD8;
    v32[2] = v33;
  }

  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v16))
  {
    v23 = atomic_load((v17 + 160));
    if (a8)
    {
      v24 = *(a8 + 60);
    }

    else
    {
      v24 = getpid();
    }

    if (v23 != -1 && v23 != v24)
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      v33 = 560492391;
      goto LABEL_43;
    }

    mSelector = a3->mSelector;
  }

  if (mSelector > 1885762591)
  {
    if (mSelector == 1885762592)
    {
      if (a4 > 0x27)
      {
        v49.mElement = 0;
        *&v49.mSelector = *" tfpbolg";
        v45 = 40;
        HALS_PDPUCPlugIn::ObjectGetPropertyData(*(*(this + 9) + 72), a2, &v49, 0, 0, &v45, &v46);
        if (DWORD2(v46) == 1819304813)
        {
          HIDWORD(v46) &= ~0x40u;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x5002000000;
        v51 = __Block_byref_object_copy__15_7637;
        v52 = __Block_byref_object_dispose__16_7638;
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 0x40000000;
        v37[2] = ___ZN14HALS_PDPStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_20;
        v37[3] = &unk_1E86755F0;
        v37[5] = this;
        v37[6] = a5;
        v38 = v46;
        v39 = v47;
        v40 = v48;
        v37[4] = buf;
        v29 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v29, v37);
        HALS_PDPUCPlugIn::ObjectSetPropertyData(*(*(this + 9) + 80), a2, a3, a6, a7, a4, (*&buf[8] + 40));
        if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
        {
          HALS_Client::SetNonMixableFormat(a8, *(v17 + 16));
        }

        goto LABEL_35;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PDPStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 312;
        v34 = MEMORY[0x1E69E9C10];
        v35 = "%25s:%-5d  HALS_IOA2Stream::_SetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
        goto LABEL_48;
      }
    }

    else
    {
      if (mSelector != 1936092532)
      {
        v26 = 1937007734;
        goto LABEL_17;
      }

      if (a4 > 0x27)
      {
        v49.mElement = 0;
        *&v49.mSelector = *" tfpbolg";
        v45 = 40;
        HALS_PDPUCPlugIn::ObjectGetPropertyData(*(*(this + 9) + 72), a2, &v49, 0, 0, &v45, &v46);
        if (DWORD2(v46) == 1819304813)
        {
          HIDWORD(v46) &= ~0x40u;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x5002000000;
        v51 = __Block_byref_object_copy__15_7637;
        v52 = __Block_byref_object_dispose__16_7638;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 0x40000000;
        v41[2] = ___ZN14HALS_PDPStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
        v41[3] = &unk_1E86755C8;
        v42 = v46;
        v43 = v47;
        v41[5] = this;
        v41[6] = a5;
        v44 = v48;
        v41[4] = buf;
        v28 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v28, v41);
        HALS_PDPUCPlugIn::ObjectSetPropertyData(*(*(this + 9) + 80), a2, &v49, 0, 0, a4, (*&buf[8] + 40));
        if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
        {
          HALS_Client::SetNonMixableFormat(a8, *(v17 + 16));
        }

LABEL_35:
        _Block_object_dispose(buf, 8);
        goto LABEL_36;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PDPStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 266;
        v34 = MEMORY[0x1E69E9C10];
        v35 = "%25s:%-5d  HALS_IOA2Stream::_SetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
LABEL_48:
        _os_log_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, v35, buf, 0x12u);
      }
    }

    v36 = __cxa_allocate_exception(0x10uLL);
    *v36 = off_1F5991DD8;
    v36[2] = 561211770;
  }

  if (mSelector == 1650682995 || mSelector == 1668047219)
  {
LABEL_38:
    HALS_Object::SetPropertyData(this, a2, a3, v19, v20, v21, v22, a8);
  }

  v26 = 1869638759;
LABEL_17:
  if (mSelector == v26)
  {
    goto LABEL_38;
  }

  HALS_PDPUCPlugIn::ObjectSetPropertyData(*(*(this + 9) + 80), a2, a3, a6, a7, a4, a5);
LABEL_36:
  HALS_ObjectMap::ReleaseObject(v17, v27);
  v30 = *MEMORY[0x1E69E9840];
}

void sub_1DE483008(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE482C24);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__15_7637(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZN14HALS_PDPStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, AudioStreamBasicDescription *a4)
{
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v5 + 16);
  *&v11.mSampleRate = *v5;
  *&v11.mBytesPerPacket = v8;
  *&v11.mBitsPerChannel = *(v5 + 32);
  if (v11.mFormatID == 1819304813)
  {
    v11.mBitsPerChannel = 0;
    *&v11.mFormatFlags = 0uLL;
  }

  HALB_FormatList::BestMatchForPhysicalFormat(v6 + 136, &v11, v7 + 1, a4, *(a1 + 56));
  if (!HALB_FormatList::IsVirtualFormatSupported(*(v6 + 112), *(v6 + 120), *(*(a1 + 32) + 8) + 40))
  {
    v9 = *(*(a1 + 32) + 8);
    if (*(v9 + 48) == 1819304813)
    {
      *(v9 + 52) |= 0x40u;
      v9 = *(*(a1 + 32) + 8);
    }

    IsVirtualFormatSupported = HALB_FormatList::IsVirtualFormatSupported(*(v6 + 112), *(v6 + 120), v9 + 40);
    if (!IsVirtualFormatSupported)
    {
      LogError(IsVirtualFormatSupported, *&v11.mSampleRate);
    }
  }
}

void sub_1DE48317C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN14HALS_PDPStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_20(uint64_t a1, uint64_t a2, uint64_t a3, AudioStreamBasicDescription *a4)
{
  v5 = *(a1 + 40);
  HALB_FormatList::BestMatchForPhysicalFormat(v5 + 136, *(a1 + 48), (*(*(a1 + 32) + 8) + 40), a4, *(a1 + 56));
  if (!HALB_FormatList::IsVirtualFormatSupported(*(v5 + 112), *(v5 + 120), *(*(a1 + 32) + 8) + 40))
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 48) == 1819304813)
    {
      *(v6 + 52) |= 0x40u;
      v6 = *(*(a1 + 32) + 8);
    }

    IsVirtualFormatSupported = HALB_FormatList::IsVirtualFormatSupported(*(v5 + 112), *(v5 + 120), v6 + 40);
    if (!IsVirtualFormatSupported)
    {
      LogError(IsVirtualFormatSupported);
    }
  }
}

void sub_1DE48323C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_PDPStream::GetPropertyData(HALS_PDPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, double *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v71 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0 && a3->mSelector == 1935894638)
  {
    *a5 = a4;
    *a6 = 1;
LABEL_34:
    v28 = *MEMORY[0x1E69E9840];
    return;
  }

  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (a9)
  {
    v17 = *(a9 + 266) ^ 1;
  }

  else
  {
    v17 = 1;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1885762656)
  {
    v20 = v17 & 1;
    if (mSelector <= 1936092512)
    {
      if (mSelector != 1885762657)
      {
        if (mSelector == 1936092451)
        {
          v52 = 0;
          v53 = &v52;
          v54 = 0x2000000000;
          v55 = 0;
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 0x40000000;
          v59[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
          v59[3] = &unk_1E8675500;
          v61 = v17 & 1;
          v60 = a4;
          v59[4] = &v52;
          v59[5] = this;
          v59[6] = a6;
          v23 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v23, v59);
          goto LABEL_27;
        }

        goto LABEL_46;
      }

      v52 = 0;
      v53 = &v52;
      v54 = 0x2000000000;
      v55 = 0;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 0x40000000;
      v46[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11;
      v46[3] = &unk_1E8675578;
      v47 = a4;
      v46[4] = &v52;
      v46[5] = this;
      v46[6] = a6;
      v25 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v25, v46);
    }

    else
    {
      if (mSelector != 1936092513)
      {
        if (mSelector == 1936092532)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          v70 = 40;
          v52 = 0;
          v53 = &v52;
          v54 = 0x3802000000;
          v55 = __Block_byref_object_copy__7646;
          v56 = __Block_byref_object_dispose__7647;
          v57 = 1885762592;
          v58 = *&a3->mScope;
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 0x40000000;
          v50[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7;
          v50[3] = &unk_1E8675528;
          v51 = a2;
          v50[4] = &v52;
          v50[5] = buf;
          v50[6] = this;
          v50[7] = a6;
          v33 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v33, v50);
          if (*(a6 + 2) == 1819304813)
          {
            if (v20)
            {
              v34 = 9;
            }

            else
            {
              v34 = 11;
            }

            v35 = 4 * *(a6 + 7);
            *(a6 + 3) = v34;
            *(a6 + 4) = v35;
            *(a6 + 5) = 1;
            *(a6 + 6) = v35;
            *(a6 + 8) = 32;
          }

          v36 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
          v37 = v36;
          if (!v36)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v65 = 136315394;
              v66 = "HALS_PDPStream.cpp";
              v67 = 1024;
              v68 = 207;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPStream::GetPropertyData: owning device is missing", v65, 0x12u);
            }

            v43 = __cxa_allocate_exception(0x10uLL);
            *v43 = off_1F5991DD8;
            v43[2] = 560947818;
          }

          *a6 = (*(*v36 + 272))(v36);
          HALS_ObjectMap::ReleaseObject(v37, v38);
          _Block_object_dispose(&v52, 8);
          v27 = buf;
          goto LABEL_33;
        }

        v21 = 1937007734;
        goto LABEL_20;
      }

      v52 = 0;
      v53 = &v52;
      v54 = 0x2000000000;
      v55 = 0;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 0x40000000;
      v62[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
      v62[3] = &unk_1E86754D8;
      v64 = v17 & 1;
      v63 = a4;
      v62[4] = &v52;
      v62[5] = this;
      v62[6] = a6;
      v26 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v26, v62);
    }

    v24 = 56 * *(v53 + 6);
    goto LABEL_31;
  }

  if (mSelector > 1869638758)
  {
    if (mSelector != 1869638759)
    {
      if (mSelector == 1885762592)
      {
        v52 = 0;
        v53 = &v52;
        v54 = 0x2000000000;
        LODWORD(v55) = 40;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 0x40000000;
        v48[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9;
        v48[3] = &unk_1E8675550;
        v49 = a2;
        v48[4] = &v52;
        v48[5] = this;
        v48[6] = a3;
        v48[7] = a6;
        v29 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v29, v48);
        if (*(a6 + 2) == 1819304813)
        {
          *(a6 + 3) &= ~0x40u;
        }

        v30 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
        v31 = v30;
        if (!v30)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PDPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 219;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPStream::GetPropertyData: owning device is missing", buf, 0x12u);
          }

          v42 = __cxa_allocate_exception(0x10uLL);
          *v42 = off_1F5991DD8;
          v42[2] = 560947818;
        }

        *a6 = (*(*v30 + 272))(v30);
        HALS_ObjectMap::ReleaseObject(v31, v32);
        goto LABEL_32;
      }

      if (mSelector == 1885762595)
      {
        v52 = 0;
        v53 = &v52;
        v54 = 0x2000000000;
        v55 = 0;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 0x40000000;
        v44[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_13;
        v44[3] = &unk_1E86755A0;
        v45 = a4;
        v44[4] = &v52;
        v44[5] = this;
        v44[6] = a6;
        v19 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v19, v44);
LABEL_27:
        v24 = 40 * *(v53 + 6);
LABEL_31:
        *a5 = v24;
LABEL_32:
        v27 = &v52;
LABEL_33:
        _Block_object_dispose(v27, 8);
        goto LABEL_34;
      }

      goto LABEL_46;
    }

    goto LABEL_21;
  }

  if (mSelector == 1650682995)
  {
    goto LABEL_21;
  }

  v21 = 1668047219;
LABEL_20:
  if (mSelector != v21)
  {
LABEL_46:
    *a5 = a4;
    v39 = *(*(this + 9) + 72);
    v40 = *MEMORY[0x1E69E9840];

    HALS_PDPUCPlugIn::ObjectGetPropertyData(v39, a2, a3, a7, a8, a5, a6);
    return;
  }

LABEL_21:
  v22 = *MEMORY[0x1E69E9840];

  HALS_Stream::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE483C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE483D30(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t __Block_byref_object_copy__7646(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

void sub_1DE483DA8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE483E00(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  *(v3 + 24) = 0;
  if (v1 >= 0x38)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1 / 0x38uLL;
    v8 = -1;
    do
    {
      v9 = *(v2 + 168);
      if (++v8 >= (0x6DB6DB6DB6DB6DB7 * ((*(v2 + 176) - v9) >> 3)))
      {
        break;
      }

      v10 = v9 + v5;
      v5 += 56;
      v11 = v4 + 56 * v6;
      result = *v10;
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      *(v11 + 48) = *(v10 + 48);
      *(v11 + 16) = v13;
      *(v11 + 32) = v14;
      *v11 = result;
      v6 = *(v3 + 24) + 1;
      *(v3 + 24) = v6;
    }

    while (v6 < v7);
  }

  return result;
}

void sub_1DE483F08(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_PDPStream::GetPropertyDataSize(HALS_PDPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1885762656)
  {
    if (mSelector > 1936092512)
    {
      if (mSelector == 1936092513)
      {
        v13 = v22;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 0x40000000;
        v22[2] = ___ZNK14HALS_PDPStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
        v22[3] = &unk_1E8675438;
        v22[4] = &v23;
        v22[5] = this;
        v14 = (*(*this + 64))(this);
        goto LABEL_22;
      }

      if (mSelector == 1937007734)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (mSelector == 1885762657)
      {
        v13 = v20;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 0x40000000;
        v20[2] = ___ZNK14HALS_PDPStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
        v20[3] = &unk_1E8675488;
        v20[4] = &v23;
        v20[5] = this;
        v14 = (*(*this + 64))(this);
        goto LABEL_22;
      }

      if (mSelector == 1936092451)
      {
        v13 = v21;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 0x40000000;
        v21[2] = ___ZNK14HALS_PDPStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
        v21[3] = &unk_1E8675460;
        v21[4] = &v23;
        v21[5] = this;
        v14 = (*(*this + 64))(this);
LABEL_22:
        HALB_CommandGate::ExecuteCommand(v14, v13);
        v16 = *(v24 + 6);
        goto LABEL_23;
      }
    }

LABEL_24:
    PropertyDataSize = HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(*(*(this + 9) + 64), a2, a3, a4, a5);
    goto LABEL_19;
  }

  if (mSelector > 1869638758)
  {
    if (mSelector == 1869638759)
    {
      goto LABEL_18;
    }

    if (mSelector == 1885762595)
    {
      v13 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___ZNK14HALS_PDPStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
      v19[3] = &unk_1E86754B0;
      v19[4] = &v23;
      v19[5] = this;
      v14 = (*(*this + 64))(this);
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (mSelector != 1650682995 && mSelector != 1668047219)
  {
    goto LABEL_24;
  }

LABEL_18:
  PropertyDataSize = HALS_Stream::GetPropertyDataSize(this, a2, a3);
LABEL_19:
  v16 = PropertyDataSize;
  *(v24 + 6) = PropertyDataSize;
LABEL_23:
  _Block_object_dispose(&v23, 8);
  return v16;
}

uint64_t HALS_PDPStream::IsPropertySettable(HALS_PDPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1885762656)
  {
    if (mSelector > 1936092512)
    {
      v8 = mSelector == 1937007734;
      v10 = 28001;
    }

    else
    {
      v8 = mSelector == 1885762657;
      v10 = 27939;
    }

    v9 = v10 | 0x73660000;
  }

  else if (mSelector > 1869638758)
  {
    v8 = mSelector == 1869638759;
    v9 = 1885762595;
  }

  else
  {
    v8 = mSelector == 1650682995;
    v9 = 1668047219;
  }

  if (v8 || mSelector == v9)
  {

    return HALS_Stream::IsPropertySettable(this, a2, a3);
  }

  else
  {
    v13 = *(*(this + 9) + 56);

    return HALS_PDPUCPlugIn::ObjectIsPropertySettable(v13, a2, a3);
  }
}

uint64_t HALS_PDPStream::HasProperty(HALS_PDPStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  result = (*(*this + 184))(this, a3, a4);
  if (result)
  {
    mSelector = a3->mSelector;
    if (a3->mSelector > 1885762656)
    {
      if (mSelector > 1936092512)
      {
        v10 = mSelector == 1937007734;
        v12 = 28001;
      }

      else
      {
        v10 = mSelector == 1885762657;
        v12 = 27939;
      }

      v11 = v12 | 0x73660000;
    }

    else if (mSelector > 1869638758)
    {
      v10 = mSelector == 1869638759;
      v11 = 1885762595;
    }

    else
    {
      v10 = mSelector == 1650682995;
      v11 = 1668047219;
    }

    if (v10 || mSelector == v11)
    {

      return HALS_Stream::HasProperty(this, a2, a3, a4);
    }

    else
    {
      return (*(*(this + 9) + 48))(a2, a3) != 0;
    }
  }

  return result;
}

void HALS_PDPStream::~HALS_PDPStream(HALS_PDPStream *this)
{
  HALS_PDPStream::~HALS_PDPStream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5972188;
  v2 = (this + 80);
  HALB_FormatList::~HALB_FormatList((this + 136));
  HALB_FormatList::~HALB_FormatList(v2);

  HALS_Stream::~HALS_Stream(this);
}

void HALS_PDPStream::Activate(HALS_PDPStream *this)
{
  HALS_PDPStream::BuildFormatList(this);
  v5 = 0;
  v4 = 4;
  *&v3.mSelector = *"ridsbolg";
  v3.mElement = 0;
  HALS_PDPUCPlugIn::ObjectGetPropertyData(*(*(this + 9) + 72), *(this + 4), &v3, 0, 0, &v4, &v5);
  if (v5)
  {
    *(this + 52) = 1;
  }

  HALS_Object::Activate(this, v2);
}

void HALS_PDPStream::BuildFormatList(HALS_PDPStream *this)
{
  v13 = *MEMORY[0x1E69E9840];
  *(this + 12) = *(this + 11);
  *(this + 15) = *(this + 14);
  *(this + 19) = *(this + 18);
  *(this + 22) = *(this + 21);
  *&v12.mSelector = *"atfpbolg";
  v12.mElement = 0;
  v1 = this + 72;
  v2 = (this + 16);
  PropertyDataSize = HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(*(*(this + 9) + 64), *(this + 4), &v12, 0, 0);
  v11 = PropertyDataSize;
  v4 = PropertyDataSize / 0x38uLL;
  MEMORY[0x1EEE9AC00]();
  v6 = &v10[-v5];
  HALS_PDPUCPlugIn::ObjectGetPropertyData(*(*v1 + 72), *v2, &v12, 0, 0, &v11, &v10[-v5]);
  if (PropertyDataSize >= 0x38)
  {
    do
    {
      HALB_FormatList::AddPhysicalFormat((v1 + 8), v6, v7);
      if (v6->mFormat.mFormatID == 1819304813)
      {
        v6->mFormat.mFormatFlags &= ~0x40u;
      }

      HALB_FormatList::AddPhysicalFormat((v1 + 64), v6++, v8);
      --v4;
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE484A28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_1DE484B28(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v1 + 96);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v1 + 64);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

double AMCP::DAL::PCM_File_Handler::get_length_in_frames(AMCP::DAL::PCM_File_Handler *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(this + 6);
  if (!v1)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v28 = "PCM_File_Handler.cpp";
      v29 = 1024;
      v30 = 57;
      v31 = 2080;
      v32 = "not (m_audio_File != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_File_Handler::GetLengthInFrames: mAudioFile is null", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&ioPropertyDataSize);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("PCM_File_Handler::GetLengthInFrames: mAudioFile is null", &v15);
    std::logic_error::logic_error(&outPropertyData, &v15);
    outPropertyData.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &outPropertyData);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v33 = "virtual Sample_Time AMCP::DAL::PCM_File_Handler::get_length_in_frames() const";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_File_Handler.cpp";
    LODWORD(v35) = 57;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  outPropertyData.__vftable = 0;
  ioPropertyDataSize = 8;
  Property = ExtAudioFileGetProperty(v1, 0x2366726Du, &ioPropertyDataSize, &outPropertyData);
  v3 = Property;
  AMCP::Utility::OSStatus_Error_Category::get(Property);
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
      *buf = 136315650;
      v28 = "PCM_File_Handler.cpp";
      v29 = 1024;
      v30 = 61;
      v31 = 2080;
      v32 = "the_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_File_Handler::GetFileLengthInFrames: couldn't get the file's length", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](v25, v3, &AMCP::Utility::OSStatus_Error_Category::get(void)::s_category);
    boost::exception_detail::error_info_injector<std::system_error>::error_info_injector(&v16, v25);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v16);
    v35 = "virtual Sample_Time AMCP::DAL::PCM_File_Handler::get_length_in_frames() const";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_File_Handler.cpp";
    v37 = 61;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  v5 = *MEMORY[0x1E69E9840];
  return outPropertyData.__vftable;
}

void sub_1DE4852FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int16 a25, char a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(v35 - 128);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a16);
  std::runtime_error::~runtime_error(&a33);
  if (a11)
  {
    __cxa_free_exception(v34);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a27);
  _Unwind_Resume(a1);
}

void AMCP::DAL::PCM_File_Factory(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__dst, "read");
  v2 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a1, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v2)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__dst, "write");
  v3 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a1, &__dst);
  v4 = v3;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v4)
  {
    operator new();
  }

  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
    *(__dst.__r_.__value_.__r.__words + 4) = "PCM_File_Handler.cpp";
    WORD2(__dst.__r_.__value_.__r.__words[1]) = 1024;
    *(&__dst.__r_.__value_.__r.__words[1] + 6) = 39;
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: PCM_File_Factory must either read or write a file", &__dst, 0x12u);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v10);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string("PCM_File_Factory must either read or write a file", &inPropertyData);
  std::runtime_error::runtime_error(&v9, &inPropertyData);
  std::runtime_error::runtime_error(__p, &v9);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = -1;
  __p[0] = &unk_1F5992170;
  v14 = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&__dst, __p);
  v20 = "std::shared_ptr<DAL_File_Handler> AMCP::DAL::PCM_File_Factory(const DAL_Settings &)";
  v21 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_File_Handler.cpp";
  LODWORD(v22) = 39;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Writer *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Writer>,std::allocator<AMCP::DAL::PCM_File_Writer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_File_HandlerEE27__shared_ptr_default_deleteIS3_NS2_15PCM_File_WriterEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Writer *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Writer>,std::allocator<AMCP::DAL::PCM_File_Writer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Writer *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Writer>,std::allocator<AMCP::DAL::PCM_File_Writer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Reader>,std::allocator<AMCP::DAL::PCM_File_Reader>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_File_HandlerEE27__shared_ptr_default_deleteIS3_NS2_15PCM_File_ReaderEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Reader>,std::allocator<AMCP::DAL::PCM_File_Reader>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Reader>,std::allocator<AMCP::DAL::PCM_File_Reader>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::DAL::PCM_File_Handler::PCM_File_Handler(uint64_t a1, void *a2)
{
  *a1 = &unk_1F5991568;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "asbd");
  v5 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  v6 = v5;
  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      return a1;
    }
  }

  else if (!v5)
  {
    return a1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "asbd");
  v13 = 0;
  v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (v7)
  {
    AMCP::Thing::convert_to<applesauce::CF::DictionaryRef>(&v14, (v7 + 5));
  }

  else
  {
    v14 = 0;
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
  }

  dictionary_to_asbd(__p, &v14);
  v8 = v11;
  *v4 = *__p;
  *(v4 + 16) = v8;
  *(v4 + 32) = v12;
  if (v14)
  {
    CFRelease(v14);
  }

  return a1;
}

void sub_1DE487CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, const void *a18)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a18);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 + 79) < 0)
  {
    operator delete(*(v18 + 56));
  }

  _Unwind_Resume(a1);
}

uint64_t Interval::PostEnd(Interval *this)
{
  if (*(this + 8))
  {
    result = mach_absolute_time();
    *(this + 2) = result;
    *(this + 24) = 1;
  }

  else
  {
    result = mach_absolute_time();
    *(this + 2) = result;
    *(this + 24) = 1;
    *this = *(this + 2);
    *(this + 8) = *(this + 24);
  }

  return result;
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_7796()
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

void HALS_System::StartScope::~StartScope(HALS_System::StartScope *this)
{
  HALS_System::StartScope::~StartScope(this);

  JUMPOUT(0x1E12C1730);
}

{
  v16 = *MEMORY[0x1E69E9840];
  *this = &unk_1F59723F0;
  if (*(this + 2) == 1)
  {
    block_on_all_queues(0);
    block_on_all_queues(0);
    v10[0] = 0;
    v10[1] = 0;
    HALS_System::GetInstance(&v11, 2, v10);
    v1 = v12;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v3 = *(ADS::Simulator::sInstance + 208);
    v2 = *(ADS::Simulator::sInstance + 216);
    v4 = v2 - v3;
    if (v2 != v3)
    {
      if (!((v4 >> 2) >> 62))
      {
        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 2);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    while (1)
    {
      while (1)
      {
        ADS::Simulator::FlushAllQueues(v1);
        if (ADS::Simulator::sServerHighPriorityQueue)
        {
          break;
        }

        v6 = ADS::Simulator::sServerDefaultPriorityQueue;
        if (!ADS::Simulator::sServerDefaultPriorityQueue)
        {
          goto LABEL_15;
        }

        v5 = 0;
LABEL_13:
        v7 = atomic_load((v6 + 33));
        if ((v5 & 1) == 0 && (v7 & 1) == 0)
        {
LABEL_15:
          block_on_all_queues(1);
          if (atomic_load_explicit(&HALS_NotificationManager::sInitialized, memory_order_acquire) != -1)
          {
            block = HALS_NotificationManager::Initialize;
            p_block = &block;
            std::__call_once(&HALS_NotificationManager::sInitialized, &p_block, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
          }

          block = HALS_NotificationManager::sObjectListLock;
          LODWORD(v15) = HALB_Mutex::Lock(HALS_NotificationManager::sObjectListLock);
          v8 = HALS_NotificationManager::sObjectList;
          if (HALS_NotificationManager::sObjectList)
          {
            p_block = HALS_NotificationManager::sObjectList;
            std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&p_block);
            MEMORY[0x1E12C1730](v8, 0x20C40960023A9);
          }

          operator new();
        }
      }

      v5 = atomic_load((ADS::Simulator::sServerHighPriorityQueue + 33));
      v6 = ADS::Simulator::sServerDefaultPriorityQueue;
      if (ADS::Simulator::sServerDefaultPriorityQueue)
      {
        goto LABEL_13;
      }

      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE488570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void block_on_all_queues(int a1)
{
  do
  {
    v1 = pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
    ADS::Simulator::FlushAllQueues(v1);
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
    AMCP::Utility::Dispatch_Queue::flush_all_work(HALS_ObjectMap::sNormalPriorityQueue);
    v57[0] = 0;
    v57[1] = 0;
    HALS_System::GetInstance(&v58, 0, v57);
    v2 = v58;
    if (v58)
    {
      NumberDevices = HALS_System::GetNumberDevices(v58, 2, 1, 0);
      LODWORD(v63[0]) = NumberDevices;
      LODWORD(v81) = 0;
      std::vector<unsigned int>::vector[abi:ne200100](&__p, NumberDevices);
      HALS_System::GetDeviceList(v2, NumberDevices, v63, __p, 2, 1, 0);
      if (LODWORD(v63[0]))
      {
        v4 = 0;
        v5 = 4 * LODWORD(v63[0]);
        do
        {
          v6 = HALS_ObjectMap::CopyObjectByObjectID(*(__p + v4));
          v8 = v6;
          if (v6)
          {
            v9 = HALS_IODevice::CopyIOEngine(v6);
            v10 = v9;
            if (v9)
            {
              (*(*v9 + 320))(v9);
            }

            (*(*v8 + 240))(v8);
            HALS_ObjectMap::ReleaseObject(v10, v11);
          }

          HALS_ObjectMap::ReleaseObject(v8, v7);
          v4 += 4;
        }

        while (v5 != v4);
      }

      v81 = 0;
      v82 = &v81;
      v83 = 0x4002000000;
      v84 = __Block_byref_object_copy__7820;
      v85 = __Block_byref_object_dispose__7821;
      v87 = 0;
      v88 = 0;
      v86 = 0;
      v73 = 0;
      v74 = &v73;
      v75 = 0x4002000000;
      v76 = __Block_byref_object_copy__48;
      v77 = __Block_byref_object_dispose__49;
      v79 = 0;
      v80 = 0;
      v78 = 0;
      v66 = MEMORY[0x1E69E9820];
      v67 = 0x40000000;
      v68 = ___ZNK11HALS_System14FlushAllQueuesEv_block_invoke;
      v69 = &unk_1E8675FF0;
      v71 = &v73;
      v72 = v2;
      v70 = &v81;
      v12 = (*(*v2 + 64))(v2);
      HALB_CommandGate::ExecuteCommand(v12, &v66);
      v13 = v82[5];
      v14 = v82[6];
      while (v13 != v14)
      {
        (*(**v13 + 8))();
        (*(**v13 + 216))();
        v13 += 8;
      }

      v15 = v74[5];
      v16 = v74[6];
      while (v15 != v16)
      {
        (*(**v15 + 8))();
        v17 = *v15;
        AMCP::Utility::Dispatch_Queue::flush_all_work((*v15 + 384));
        v18 = *(v17 + 64);
        if (v18)
        {
          AMCP::Utility::Dispatch_Queue::flush_all_work(v18);
        }

        ++v15;
      }

      AMCP::Utility::Dispatch_Queue::flush_all_work(*(*(v2 + 1776) + 16));
      AMCP::Utility::Dispatch_Queue::flush_all_work((v2 + 880));
      AMCP::Utility::Dispatch_Queue::flush_all_work(*(v2 + 192));
      AMCP::Utility::Dispatch_Queue::flush_all_work((v2 + 208));
      AMCP::Utility::Dispatch_Queue::flush_all_work((v2 + 544));
      AMCP::Utility::Dispatch_Queue::flush_all_work((v2 + 1216));
      v19 = *(v2 + 1864);
      if (v19 && *v19)
      {
        AMCP::Utility::Dispatch_Queue::flush_all_work(*v19);
      }

      _Block_object_dispose(&v73, 8);
      v64 = &v78;
      std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v64);
      _Block_object_dispose(&v81, 8);
      HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v86, v20);
      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }
    }

    pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
    if (ADS::Simulator::sServerHighPriorityQueue)
    {
      v21 = atomic_load((ADS::Simulator::sServerHighPriorityQueue + 33));
    }

    else
    {
      v21 = 0;
    }

    if (ADS::Simulator::sServerDefaultPriorityQueue)
    {
      v22 = atomic_load((ADS::Simulator::sServerDefaultPriorityQueue + 33));
      v21 |= v22;
    }

    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
    v23 = atomic_load((HALS_ObjectMap::sNormalPriorityQueue + 33));
    v63[0] = 0;
    v63[1] = 0;
    HALS_System::GetInstance(&v64, 0, v63);
    v24 = v21 | v23;
    v25 = v64;
    if (v64)
    {
      v26 = HALS_System::GetNumberDevices(v64, 2, 1, 0);
      v62 = v26;
      LODWORD(v81) = 0;
      std::vector<unsigned int>::vector[abi:ne200100](&__p, v26);
      HALS_System::GetDeviceList(v25, v26, &v62, __p, 2, 1, 0);
      if (v62)
      {
        v27 = 0;
        v28 = 4 * v62;
        do
        {
          v29 = HALS_ObjectMap::CopyObjectByObjectID(*(__p + v27));
          v31 = v29;
          if (v29)
          {
            v32 = HALS_IODevice::CopyIOEngine(v29);
            v33 = v32;
            if (v32)
            {
              v24 |= (*(*v32 + 328))(v32);
            }

            v34 = (*(*v31 + 248))(v31);
            HALS_ObjectMap::ReleaseObject(v33, v35);
            v24 |= v34;
          }

          HALS_ObjectMap::ReleaseObject(v31, v30);
          v27 += 4;
        }

        while (v28 != v27);
      }

      pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
      if (ADS::Simulator::sServerHighPriorityQueue)
      {
        v36 = atomic_load((ADS::Simulator::sServerHighPriorityQueue + 33));
      }

      else
      {
        v36 = 0;
      }

      if (ADS::Simulator::sServerDefaultPriorityQueue)
      {
        v37 = atomic_load((ADS::Simulator::sServerDefaultPriorityQueue + 33));
        v36 |= v37;
      }

      pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
      v38 = atomic_load((HALS_ObjectMap::sNormalPriorityQueue + 33));
      v39 = v64;
      v81 = 0;
      v82 = &v81;
      v83 = 0x4002000000;
      v84 = __Block_byref_object_copy__7820;
      v85 = __Block_byref_object_dispose__7821;
      v87 = 0;
      v88 = 0;
      v86 = 0;
      v73 = 0;
      v74 = &v73;
      v75 = 0x4002000000;
      v76 = __Block_byref_object_copy__48;
      v77 = __Block_byref_object_dispose__49;
      v79 = 0;
      v80 = 0;
      v78 = 0;
      v66 = MEMORY[0x1E69E9820];
      v67 = 0x40000000;
      v68 = ___ZNK11HALS_System29DoAnyQueuesHaveWorkAfterFlushEv_block_invoke;
      v69 = &unk_1E8676018;
      v71 = &v73;
      v72 = v64;
      v70 = &v81;
      v40 = (*(*v72 + 8))(v72);
      HALB_CommandGate::ExecuteCommand(v40, &v66);
      v56 = v36;
      v42 = v82[5];
      v41 = v82[6];
      if (v42 == v41)
      {
        v43 = 0;
      }

      else
      {
        v43 = 0;
        do
        {
          v43 |= (*(**v42 + 224))();
          v42 += 8;
        }

        while (v42 != v41);
      }

      v44 = v74[5];
      for (i = v74[6]; v44 != i; ++v44)
      {
        v46 = *v44;
        v47 = atomic_load((*v44 + 417));
        v48 = *(v46 + 64);
        if (v48)
        {
          v49 = atomic_load((v48 + 33));
          v47 |= v49;
        }

        v43 |= v47;
      }

      v50 = atomic_load(v39 + 913);
      v51 = v43 | v50;
      v52 = v39[233];
      if (v52)
      {
        v53 = *v52;
        if (v53)
        {
          LODWORD(v53) = atomic_load((v53 + 33));
        }

        v51 |= v53;
      }

      _Block_object_dispose(&v73, 8);
      v89 = &v78;
      std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v89);
      _Block_object_dispose(&v81, 8);
      HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v86, v54);
      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      v24 |= v56 | v38 | v51;
    }

    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v59);
    }
  }

  while ((a1 & v24 & 1) != 0);
}

void sub_1DE488E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void HALS_System::GetInstance(void *a1, int a2, uint64_t *a3)
{
  {
    v10 = a3;
    v8 = a2;
    a2 = v8;
    a3 = v10;
    if (v9)
    {
      HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance = 0;
      qword_1EE0131C8 = 0;
      a2 = v8;
      a3 = v10;
    }
  }

  switch(a2)
  {
    case 3:
      v11 = 0;
      v12 = 0;
      std::atomic_store[abi:ne200100]<HALS_System>(&v11);
      v5 = v12;
      if (!v12)
      {
        break;
      }

      goto LABEL_11;
    case 2:
      (*(*HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance + 8))(HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance);
      break;
    case 1:
      v4 = a3[1];
      v13 = *a3;
      v14 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      }

      std::atomic_store[abi:ne200100]<HALS_System>(&v13);
      v5 = v14;
      if (v14)
      {
LABEL_11:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      break;
  }

  sp_mut = std::__get_sp_mut(&HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance);
  std::__sp_mut::lock(sp_mut);
  v7 = qword_1EE0131C8;
  *a1 = HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance;
  a1[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
}

void sub_1DE489120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void std::atomic_store[abi:ne200100]<HALS_System>(uint64_t *a1)
{
  sp_mut = std::__get_sp_mut(&HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance);
  std::__sp_mut::lock(sp_mut);
  v3 = HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance;
  v4 = a1[1];
  HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance = *a1;
  *a1 = v3;
  v5 = qword_1EE0131C8;
  qword_1EE0131C8 = v4;
  a1[1] = v5;

  std::__sp_mut::unlock(sp_mut);
}

uint64_t HALS_System::GetNumberDevices(uint64_t a1, int a2, char a3, HALS_Client *a4)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x4002000000;
  v23 = __Block_byref_object_copy__7820;
  v24 = __Block_byref_object_dispose__7821;
  memset(v25, 0, sizeof(v25));
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = ___ZNK11HALS_System16GetNumberDevicesENS_14DeviceListKindEbP11HALS_Client_block_invoke;
  v19[3] = &unk_1E86758B0;
  v19[4] = &v20;
  v19[5] = a1;
  v7 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v7, v19);
  v8 = v21[5];
  v9 = v21[6];
  if (v8 != v9)
  {
    v10 = 0;
    while (1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      HALS_DeviceManager::CopyDeviceList(*v8, &v16, a3, a4);
      v12 = v16;
      v13 = v17;
      while (v12 != v13)
      {
        if (a2 == 1)
        {
          if (((*(**v12 + 232))() & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else if (a2 || ((*(**v12 + 232))() & 1) != 0)
        {
LABEL_8:
          v10 = (v10 + 1);
        }

        ++v12;
      }

      HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v16, v11);
      if (++v8 == v9)
      {
        goto LABEL_15;
      }
    }
  }

  v10 = 0;
LABEL_15:
  _Block_object_dispose(&v20, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v25, v14);
  return v10;
}

void sub_1DE4893A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v11 + 40), v13);
  _Unwind_Resume(a1);
}

void HALS_System::GetDeviceList(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, int a5, char a6, HALS_Client *a7)
{
  if (a2)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x4002000000;
    v31 = __Block_byref_object_copy__7820;
    v32 = __Block_byref_object_dispose__7821;
    memset(v33, 0, sizeof(v33));
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v27[2] = ___ZNK11HALS_System13GetDeviceListEjRjPjNS_14DeviceListKindEbP11HALS_Client_block_invoke;
    v27[3] = &unk_1E8675950;
    v27[4] = &v28;
    v27[5] = a1;
    v13 = (*(*a1 + 64))(a1);
    HALB_CommandGate::ExecuteCommand(v13, v27);
    *a3 = 0;
    v14 = v29[5];
    v15 = v29[6];
    while (1)
    {
      if (v14 == v15)
      {
LABEL_20:
        _Block_object_dispose(&v28, 8);
        HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v33, v23);
        return;
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      HALS_DeviceManager::CopyDeviceList(*v14, &v24, a6, a7);
      v18 = v24;
      v17 = v25;
LABEL_5:
      if (v18 != v17)
      {
        break;
      }

LABEL_18:
      v22 = *a3;
      HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v24, v16);
      if (v22 >= a2)
      {
        goto LABEL_20;
      }

      ++v14;
    }

    while (1)
    {
      if (a5 == 1)
      {
        if ((*(**v18 + 232))())
        {
          goto LABEL_17;
        }
      }

      else if (!a5 && ((*(**v18 + 232))() & 1) == 0)
      {
LABEL_17:
        ++v18;
        goto LABEL_5;
      }

      v19 = *v18++;
      *(a4 + 4 * *a3) = *(v19 + 16);
      v20 = *a3 + 1;
      *a3 = v20;
      if (v20 >= a2 || v18 == v17)
      {
        goto LABEL_18;
      }
    }
  }

  *a3 = 0;
}

void sub_1DE4895FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(va1, v12);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7820(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

__n128 __Block_byref_object_copy__48(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void ___ZNK11HALS_System29DoAnyQueuesHaveWorkAfterFlushEv_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[6];
  v4 = *(a1[4] + 8);
  if (v4 + 40 != v3 + 1584)
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v4 + 40), *(v3 + 1584), *(v3 + 1592), (*(v3 + 1592) - *(v3 + 1584)) >> 3);
    v4 = *(a1[4] + 8);
  }

  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  while (v5 != v6)
  {
    v7 = *v5++;
    HALS_ObjectMap::RetainObject(v7, a2);
  }

  v8 = *(a1[5] + 8) + 40;
  if (v8 != v3 + 1640)
  {
    v9 = *(v3 + 1640);
    v10 = *(v3 + 1648);

    std::vector<HALS_Releaser<HALS_Client>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(v8, v9, v10, (v10 - v9) >> 3);
  }
}

void std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<HALS_Releaser<HALS_Client>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(HALS_ObjectMap ***this, HALS_Object *a2)
{
  v3 = *this;
  if (*this != this[1])
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != this[1]);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

void std::vector<HALS_Releaser<HALS_Client>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, HALS_Object *a2)
{
  for (i = *(a1 + 8); i != a2; i = (i - 8))
  {
    v5 = *(i - 1);
    HALS_ObjectMap::ReleaseObject(v5, a2);
  }

  *(a1 + 8) = a2;
}

void std::vector<HALS_Releaser<HALS_Client>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(uint64_t a1, HALS_ObjectMap **a2, HALS_Object *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 3)
  {
    if (v8)
    {
      std::vector<HALS_Releaser<HALS_Client>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<HALS_Releaser<HALS_Client>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (a4 <= v11 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *>(a2, a3, v8);

    std::vector<HALS_Releaser<HALS_Client>>::__base_destruct_at_end[abi:ne200100](a1, v13);
  }

  else
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *>(a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_Releaser<HALS_Client>>,HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(a1, v12, a3, *(a1 + 8));
  }
}

HALS_ObjectMap **std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_Releaser<HALS_Client>>,HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(uint64_t a1, HALS_Object *a2, HALS_ObjectMap **a3, HALS_ObjectMap **a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v4 = *v6;
      HALS_ObjectMap::RetainObject(v7, a2);
      ++v6;
      v4 = ++v12;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_Releaser<HALS_Client>>,HALS_Releaser<HALS_Client>*>>::~__exception_guard_exceptions[abi:ne200100](v9, a2);
  return v4;
}

void std::vector<HALS_Releaser<HALS_Client>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_Releaser<HALS_Client>>,HALS_Releaser<HALS_Client>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1, HALS_Object *a2)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v4 = **(a1 + 16);
    v5 = **(a1 + 8);
    while (v4 != v5)
    {
      v6 = *(v4 - 8);
      v4 -= 8;
      HALS_ObjectMap::ReleaseObject(v6, a2);
    }
  }

  return a1;
}

void ___ZNK11HALS_System14FlushAllQueuesEv_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[6];
  v4 = *(a1[4] + 8);
  if (v4 + 40 != v3 + 1584)
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v4 + 40), *(v3 + 1584), *(v3 + 1592), (*(v3 + 1592) - *(v3 + 1584)) >> 3);
    v4 = *(a1[4] + 8);
  }

  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  while (v5 != v6)
  {
    v7 = *v5++;
    HALS_ObjectMap::RetainObject(v7, a2);
  }

  v8 = *(a1[5] + 8) + 40;
  if (v8 != v3 + 1640)
  {
    v9 = *(v3 + 1640);
    v10 = *(v3 + 1648);

    std::vector<HALS_Releaser<HALS_Client>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(v8, v9, v10, (v10 - v9) >> 3);
  }
}

uint64_t ___ZNK11HALS_System13GetDeviceListEjRjPjNS_14DeviceListKindEbP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE489C08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE489BF8);
}

void HALS_System::_CopyDeviceManagerList(HALS_ObjectMap **a1, HALS_Object *a2, uint64_t a3, void *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (a4[3])
      {
        v8 = a4[1];
        if (v8)
        {
          v9 = *(*v7 + 82);
          v10 = vcnt_s8(v8);
          v10.i16[0] = vaddlv_u8(v10);
          if (v10.u32[0] > 1uLL)
          {
            v11 = *(*v7 + 82);
            if (*&v8 <= v9)
            {
              v11 = v9 % *&v8;
            }
          }

          else
          {
            v11 = (*&v8 - 1) & v9;
          }

          v12 = *(*a4 + 8 * v11);
          if (v12)
          {
            for (i = *v12; i; i = *i)
            {
              v14 = i[1];
              if (v14 == v9)
              {
                if (*(i + 4) == v9)
                {
                  goto LABEL_33;
                }
              }

              else
              {
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

                if (v14 != v11)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v16 = *(a3 + 8);
      v15 = *(a3 + 16);
      if (v16 >= v15)
      {
        v18 = (v16 - *a3) >> 3;
        if ((v18 + 1) >> 61)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v19 = v15 - *a3;
        v20 = v19 >> 2;
        if (v19 >> 2 <= (v18 + 1))
        {
          v20 = v18 + 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v21);
        }

        *(8 * v18) = *v7;
        v17 = 8 * v18 + 8;
        v22 = *(a3 + 8) - *a3;
        v23 = (8 * v18 - v22);
        memcpy(v23, *a3, v22);
        v24 = *a3;
        *a3 = v23;
        *(a3 + 8) = v17;
        *(a3 + 16) = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v16 = *v7;
        v17 = (v16 + 1);
      }

      *(a3 + 8) = v17;
      HALS_ObjectMap::RetainObject(*v7, a2);
LABEL_33:
      ++v7;
    }

    while (v7 != a2);
  }
}

uint64_t ___ZNK11HALS_System16GetNumberDevicesENS_14DeviceListKindEbP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE489E3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE489E2CLL);
}

void HALS_System::HandleOwnedObjectGroupPropertiesChanged(HALS_System *this, unsigned int a2, uint64_t a3, unsigned int a4, const unsigned int *a5, const unsigned int *a6, int a7, const AudioObjectPropertyAddress *a8, BOOL a9)
{
  if (!a7)
  {
    v20 = 0;
    *__p = 0u;
    v25 = 0u;
    goto LABEL_35;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (2)
  {
    v17 = &a8[v11];
    while (1)
    {
      v19 = *v17;
      v17 += 12;
      v18 = v19;
      if (v19 > 1886548770)
      {
        break;
      }

      if (v18 != 1684370979)
      {
        if (v18 == 1668049699)
        {
          v17 = 1;
        }

        else
        {
          v17 = v14;
        }

        if (v18 == 1651472419)
        {
          v15 = 1;
        }

        else
        {
          v14 = v17;
        }

        goto LABEL_22;
      }

LABEL_8:
      ++v11;
      v16 = 1;
      if (a7 == v11)
      {
        *__p = 0u;
        v25 = 0u;
LABEL_24:
        *&v23.mSelector = 0x676C6F6264657623;
        v23.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(__p, &v23, v17);
        goto LABEL_25;
      }
    }

    if (v18 == 1919186467)
    {
      goto LABEL_8;
    }

    if (v18 == 1886548771)
    {
      v17 = 1;
    }

    else
    {
      v17 = v13;
    }

    if (v18 == 1953526563)
    {
      v12 = 1;
    }

    else
    {
      v13 = v17;
    }

LABEL_22:
    if (++v11 != a7)
    {
      continue;
    }

    break;
  }

  *__p = 0u;
  v25 = 0u;
  if (v16)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (v15)
  {
    *&v23.mSelector = 0x676C6F62626F7823;
    v23.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v23, v17);
  }

  if (v14)
  {
    *&v23.mSelector = 0x676C6F62636C6B23;
    v23.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v23, v17);
  }

  if (v13)
  {
    *&v23.mSelector = 0x676C6F6270727323;
    v23.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v23, v17);
  }

  if (v12)
  {
    *&v23.mSelector = 0x676C6F6274707323;
    v23.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v23, v17);
  }

  v20 = __p[0];
LABEL_35:
  if (v20 != __p[1])
  {
    v21 = *(this + 4);
    v22 = -1431655765 * ((__p[1] - v20) >> 2);
    if (a9)
    {
      HALS_Object::PropertiesChanged_Sync(this, v21, a3, v22, v20);
    }

    else
    {
      HALS_Object::PropertiesChanged(this, v21, a3, v22, v20);
    }
  }

  if (v20)
  {

    operator delete(v20);
  }
}

void sub_1DE48A0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALS_System::HandleOwnedObjectPropertiesChanged(HALS_System *this, const HALS_Object *a2, uint64_t a3, int a4, const AudioObjectPropertyAddress *a5, int a6)
{
  if (!a4)
  {
    v24 = 0;
    *__p = 0u;
    v29 = 0u;
    goto LABEL_41;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1953526563;
  while (2)
  {
    v17 = &a5[v9];
    while (1)
    {
      mSelector = v17->mSelector;
      ++v17;
      v18 = mSelector;
      if (mSelector > 1886152482)
      {
        break;
      }

      if (v18 != 1684370979)
      {
        if (v18 == 1668049699)
        {
          v20 = 1;
        }

        else
        {
          v20 = v13;
        }

        if (v18 == 1651472419)
        {
          v14 = 1;
        }

        else
        {
          v13 = v20;
        }

        goto LABEL_25;
      }

LABEL_9:
      ++v9;
      v15 = 1;
      if (a4 == v9)
      {
        *__p = 0u;
        v29 = 0u;
LABEL_27:
        *&v27.mSelector = 0x676C6F6264657623;
        v27.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(__p, &v27, 0x74707323);
        platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v22);
        if ((*(*platform_behaviors + 24))(platform_behaviors) == 1)
        {
          *&v27.mSelector = 0x676C6F6272647623;
          v27.mElement = 0;
          CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
        }

        goto LABEL_29;
      }
    }

    if (v18 <= 1919186466)
    {
      if (v18 == 1886548771)
      {
        v21 = 1;
      }

      else
      {
        v21 = v12;
      }

      if (v18 == 1886152483)
      {
        v10 = 1;
      }

      else
      {
        v12 = v21;
      }

      goto LABEL_25;
    }

    if (v18 == 1919186467)
    {
      goto LABEL_9;
    }

    if (v18 == 1953526563)
    {
      v11 = 1;
    }

LABEL_25:
    if (++v9 != a4)
    {
      continue;
    }

    break;
  }

  *__p = 0u;
  v29 = 0u;
  if (v15)
  {
    goto LABEL_27;
  }

LABEL_29:
  if (v14)
  {
    *&v27.mSelector = 0x676C6F62626F7823;
    v27.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
  }

  if (v13)
  {
    *&v27.mSelector = 0x676C6F62636C6B23;
    v27.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
  }

  if (v12)
  {
    *&v27.mSelector = 0x676C6F6270727323;
    v27.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
  }

  if (v11)
  {
    *&v27.mSelector = 0x676C6F6274707323;
    v27.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
  }

  if (v10)
  {
    *&v27.mSelector = 0x676C6F62706C6723;
    v27.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
  }

  v24 = __p[0];
LABEL_41:
  if (v24 != __p[1])
  {
    v25 = *(this + 4);
    v26 = -1431655765 * ((__p[1] - v24) >> 2);
    if (a6)
    {
      HALS_Object::PropertiesChanged_Sync(this, v25, a3, v26, v24);
    }

    else
    {
      HALS_Object::PropertiesChanged(this, v25, a3, v26, v24);
    }
  }

  if (v24)
  {

    operator delete(v24);
  }
}

void sub_1DE48A3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALS_System::SetPropertyData(HALS_System *this, HALS_Object *a2, const AudioObjectPropertyAddress *a3, uint64_t a4, _DWORD *a5, uint64_t a6, _DWORD *a7, HALS_Client *a8)
{
  v10 = a6;
  v128 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1886221683)
  {
    if (mSelector <= 1934587251)
    {
      switch(mSelector)
      {
        case 1886221684:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5051;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertyProcessIsAudible", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 561211770;
          }

          goto LABEL_127;
        case 1886353256:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5075;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertyPowerHint", buf, 0x12u);
            }

            v103 = __cxa_allocate_exception(0x10uLL);
            *v103 = off_1F5991DD8;
            v103[2] = 561211770;
          }

          if (a8)
          {
            *(a8 + 73) = *a5;
            v122[0] = MEMORY[0x1E69E9820];
            v122[1] = 0x40000000;
            v122[2] = ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_184;
            v122[3] = &__block_descriptor_tmp_185;
            v122[4] = this;
            v122[5] = a8;
            v47 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v47, v122);
            v48 = *(a8 + 4);
            strcpy(buf, "hwopbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            HALS_Object::PropertiesChanged(this, v48, v48, 1, buf);
          }

          goto LABEL_127;
        case 1919839344:
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5094;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertyRunLoop", buf, 0x12u);
            }

            v100 = __cxa_allocate_exception(0x10uLL);
            *v100 = off_1F5991DD8;
            v100[2] = 561211770;
          }

          v23 = *a5;
          *buf = this + 1928;
          *&buf[8] = HALB_Mutex::Lock((this + 1928));
          v24 = *(this + 240);
          if (v24 != v23)
          {
            if (v24)
            {
              if (v23)
              {
                v25 = *(this + 277);
                v26 = *(this + 278);
                v27 = MEMORY[0x1E695E8C8];
                if (v25 != v26)
                {
                  v28 = *MEMORY[0x1E695E8C8];
                  do
                  {
                    CFRunLoopRemoveSource(*(this + 240), *v25, v28);
                    CFRunLoopRemoveSource(*(this + 240), *v25++, @"com.apple.audio.CoreAudio");
                  }

                  while (v25 != v26);
                  v24 = *(this + 240);
                }

                CFRelease(v24);
                *(this + 240) = v23;
                CFRetain(v23);
                v29 = *(this + 277);
                v30 = *(this + 278);
                if (v29 != v30)
                {
                  v31 = *v27;
                  do
                  {
                    CFRunLoopAddSource(*(this + 240), *v29, v31);
                    CFRunLoopAddSource(*(this + 240), *v29++, @"com.apple.audio.CoreAudio");
                  }

                  while (v29 != v30);
                }
              }

              else if (!atomic_load(this + 261))
              {
                v68 = *(this + 277);
                v69 = *(this + 278);
                if (v68 != v69)
                {
                  v70 = *MEMORY[0x1E695E8C8];
                  do
                  {
                    CFRunLoopRemoveSource(*(this + 240), *v68, v70);
                    CFRunLoopRemoveSource(*(this + 240), *v68++, @"com.apple.audio.CoreAudio");
                  }

                  while (v68 != v69);
                }

                CFRelease(*(this + 240));
                *(this + 240) = 0;
                HALS_System::StartRunLoop(this);
                v71 = *(this + 277);
                v72 = *(this + 278);
                if (v71 != v72)
                {
                  v73 = *MEMORY[0x1E695E8C8];
                  do
                  {
                    CFRunLoopAddSource(*(this + 240), *v71, v73);
                    CFRunLoopAddSource(*(this + 240), *v71++, @"com.apple.audio.CoreAudio");
                  }

                  while (v71 != v72);
                }
              }
            }

            else if (v23)
            {
              *(this + 240) = v23;
              CFRetain(v23);
              v61 = *(this + 277);
              v62 = *(this + 278);
              if (v61 != v62)
              {
                v63 = *MEMORY[0x1E695E8C8];
                do
                {
                  CFRunLoopAddSource(*(this + 240), *v61, v63);
                  CFRunLoopAddSource(*(this + 240), *v61++, @"com.apple.audio.CoreAudio");
                }

                while (v61 != v62);
              }
            }

            else
            {
              HALS_System::StartRunLoop(this);
              v74 = *(this + 277);
              v75 = *(this + 278);
              if (v74 != v75)
              {
                v76 = *MEMORY[0x1E695E8C8];
                do
                {
                  CFRunLoopAddSource(*(this + 240), *v74, v76);
                  CFRunLoopAddSource(*(this + 240), *v74++, @"com.apple.audio.CoreAudio");
                }

                while (v74 != v75);
              }
            }
          }

          HALB_Guard::Locker::~Locker(buf);
          goto LABEL_127;
      }

      goto LABEL_196;
    }

    if (mSelector <= 1936483695)
    {
      if (mSelector != 1934587252)
      {
        if (mSelector == 1936224868)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5017;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyDefaultSystemOutputDevice", buf, 0x12u);
            }

            v94 = __cxa_allocate_exception(0x10uLL);
            *v94 = off_1F5991DD8;
            v94[2] = 561211770;
          }

          if ((HALS_ClientEntitlements::HasEntitlementWithBooleanValue((a8 + 296), @"com.apple.private.audio.default-shared-device") & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5018;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: no entitlement for kAudioHardwarePropertyDefaultSharedOutputDevice", buf, 0x12u);
            }

            v105 = __cxa_allocate_exception(0x10uLL);
            *v105 = off_1F5991DD8;
            v105[2] = 560492391;
          }

          if (v10 != 4)
          {
            if (!v10)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 5019;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: no qualifier given for shared device assignment.", buf, 0x12u);
              }

              v15 = __cxa_allocate_exception(0x10uLL);
              *v15 = off_1F5991DD8;
              v15[2] = 1852797029;
            }

            goto LABEL_127;
          }

          if (*a7 != 1)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5023;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: transient qualifier required for shared device assignment.", buf, 0x12u);
            }

            v106 = __cxa_allocate_exception(0x10uLL);
            *v106 = off_1F5991DD8;
            v106[2] = 1852797029;
          }

          v16 = *(this + 202);
          v17 = *a5;
          v56 = *MEMORY[0x1E69E9840];
          v19 = 1936224868;
          v46 = 1;
          goto LABEL_112;
        }

LABEL_196:
        HALS_Object::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4996;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyDefaultSystemOutputDevice", buf, 0x12u);
        }

        v96 = __cxa_allocate_exception(0x10uLL);
        *v96 = off_1F5991DD8;
        v96[2] = 561211770;
      }

      if (a6 != 4)
      {
        if (!a6)
        {
          v16 = *(this + 202);
          v17 = *a5;
          v42 = *MEMORY[0x1E69E9840];
          v19 = 1934587252;
          goto LABEL_69;
        }

        goto LABEL_127;
      }

      v16 = *(this + 202);
      if (*a7 != 2)
      {
        v17 = *a5;
        v46 = *a7 == 1;
        v64 = *MEMORY[0x1E69E9840];
        v19 = 1934587252;
        goto LABEL_112;
      }

      v57 = *MEMORY[0x1E69E9840];
      v58 = 1934587252;
      goto LABEL_101;
    }

    if (mSelector == 1936483696)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5103;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertySleepingIsAllowed", buf, 0x12u);
        }

        v97 = __cxa_allocate_exception(0x10uLL);
        *v97 = off_1F5991DD8;
        v97[2] = 561211770;
      }

      if (a8 && (*a5 != 0) != *(a8 + 264))
      {
        *(a8 + 264) = *a5 != 0;
        v121[0] = MEMORY[0x1E69E9820];
        v121[1] = 0x40000000;
        v121[2] = ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_186;
        v121[3] = &__block_descriptor_tmp_187;
        v121[4] = this;
        v121[5] = a8;
        v43 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v43, v121);
        v44 = *(a8 + 4);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZNK11HALS_Client33SendSleepingIsAllowedNotificationEv_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_18_3140;
        *&buf[32] = v44;
        AMCP::Utility::Dispatch_Queue::async(a8 + 384, buf);
      }

      goto LABEL_127;
    }

    if (mSelector != 1937010031)
    {
      goto LABEL_196;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5057;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertyMixStereoToMono", buf, 0x12u);
      }

      v95 = __cxa_allocate_exception(0x10uLL);
      *v95 = off_1F5991DD8;
      v95[2] = 561211770;
    }

    v113 = 0;
    v114 = &v113;
    v115 = 0x2000000000;
    LOBYTE(v116) = *(this + 1560);
    v123[0] = MEMORY[0x1E69E9820];
    v123[1] = 0x40000000;
    v123[2] = ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
    v123[3] = &unk_1E8675F68;
    v123[5] = this;
    v123[6] = a5;
    v123[4] = &v113;
    v32 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v32, v123);
    v33 = *(this + 222);
    LODWORD(valuePtr) = *(v114 + 24);
    *buf = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    buf[8] = 1;
    HALS_SettingsManager::_WriteSetting(v33, @"System_MixStereoToMono", *buf);
    CACFNumber::~CACFNumber(buf);
    if (AMCP::Feature_Flags::run_hybrid_hal(v34, v35))
    {
      v36 = *(this + 213);
      if (v36 != *(this + 214))
      {
        v37 = MEMORY[0x1E69E9820];
        do
        {
          v38 = *v36++;
          v39 = *(v38 + 16);
          *buf = v37;
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZNK11HALS_System21update_all_iocontextsEv_block_invoke;
          *&buf[24] = &__block_descriptor_tmp_144;
          *&buf[32] = v39;
          AMCP::Utility::Dispatch_Queue::async(this + 880, buf);
        }

        while (v36 != *(this + 214));
      }
    }

    v40 = *(this + 4);
    if (a8)
    {
      v41 = *(a8 + 4);
    }

    else
    {
      v41 = 0;
    }

    strcpy(buf, "omtsbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    HALS_Object::PropertiesChanged(this, v40, v41, 1, buf);
LABEL_92:
    _Block_object_dispose(&v113, 8);
    goto LABEL_127;
  }

  if (mSelector > 1685288047)
  {
    if (mSelector != 1685288048)
    {
      if (mSelector == 1698776147)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5086;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioDevicePropertyEnableAdaptableDeviceSimulator", buf, 0x12u);
          }

          v102 = __cxa_allocate_exception(0x10uLL);
          *v102 = off_1F5991DD8;
          v102[2] = 561211770;
        }

        *(this + 1632) = *a5 != 0;
        goto LABEL_127;
      }

      if (mSelector == 1886218606)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5030;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertyProcessIsAudible", buf, 0x12u);
          }

          v99 = __cxa_allocate_exception(0x10uLL);
          *v99 = off_1F5991DD8;
          v99[2] = 561211770;
        }

        HALS_ObjectMap::RetainObject(a8, a2);
        if (a8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a8 + 60);
            if (*a5)
            {
              v22 = "on";
            }

            else
            {
              v22 = "off";
            }

            *buf = 136315906;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5042;
            *&buf[18] = 1024;
            *&buf[20] = v21;
            *&buf[24] = 2080;
            *&buf[26] = v22;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_System::SetPropertyData: PID: %d Setting Process Input Mute To: %s", buf, 0x22u);
          }

          strcpy(buf, "tmipbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          (*(*a8 + 128))(a8, *(a8 + 4), buf, a4, a5, 0, 0, a8);
        }

        HALS_ObjectMap::ReleaseObject(a8, v20);
        goto LABEL_127;
      }

      goto LABEL_196;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5135;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyDefaultInputDevice", buf, 0x12u);
      }

      v104 = __cxa_allocate_exception(0x10uLL);
      *v104 = off_1F5991DD8;
      v104[2] = 561211770;
    }

    if (!a8)
    {
      v82 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v82 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v84 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v83 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v83)
      {
        atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
        v85 = *v84;
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      else
      {
        v85 = *v84;
      }

      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2967;
        *&buf[18] = 2080;
        *&buf[20] = "inClient != nullptr";
        _os_log_error_impl(&dword_1DE1F9000, v85, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Must provide a client object", buf, 0x1Cu);
      }

      abort();
    }

    v53 = *a5;
    v113 = 0;
    v114 = &v113;
    v115 = 0x2000000000;
    LOBYTE(v116) = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZN11HALS_System10DestroyTapEjP11HALS_Client_block_invoke;
    *&buf[24] = &unk_1E8675C60;
    v127 = v53;
    v125 = this;
    v126 = a8;
    *&buf[32] = &v113;
    v54 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v54, buf);
    if (*(v114 + 24) == 1)
    {
      valuePtr = 0x676C6F6274707323;
      LODWORD(v110) = 0;
      (*(*this + 152))(this, this, *(a8 + 4), 1, &valuePtr, 0);
    }

    goto LABEL_92;
  }

  switch(mSelector)
  {
    case 1667461737:
      only_macos_high_quality_local_recording = AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(this);
      if ((only_macos_high_quality_local_recording & 1) == 0)
      {
        v78 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v78 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(only_macos_high_quality_local_recording);
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
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5144;
          *&buf[18] = 2080;
          *&buf[20] = "allowCCR == false";
          _os_log_error_impl(&dword_1DE1F9000, v81, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_System::SetPropertyData: kAudioHardwarePropertyContentCreationRecordingInfo feature disabled", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v120);
        __cxa_allocate_exception(0x40uLL);
        v111 = off_1F5991DD8;
        v112 = 1852797029;
        LODWORD(v114) = 1852797029;
        v117 = 0;
        v118 = 0;
        v119 = -1;
        v113 = &unk_1F598E5D8;
        v115 = &unk_1F598E600;
        v116 = 0;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &v113);
        *&buf[32] = "virtual void HALS_System::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
        v125 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
        LODWORD(v126) = 5144;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v108);
      }

      if (a4 <= 7)
      {
        v86 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v86 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(only_macos_high_quality_local_recording);
        }

        v88 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v87 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v87)
        {
          atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
          v89 = *v88;
          std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        }

        else
        {
          v89 = *v88;
        }

        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5146;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize < theSize";
          _os_log_error_impl(&dword_1DE1F9000, v89, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyContentCreationRecordingInfo", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v120);
        __cxa_allocate_exception(0x40uLL);
        v111 = off_1F5991DD8;
        v112 = 561211770;
        LODWORD(v114) = 561211770;
        v117 = 0;
        v118 = 0;
        v119 = -1;
        v113 = &unk_1F598E5D8;
        v115 = &unk_1F598E600;
        v116 = 0;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &v113);
        *&buf[32] = "virtual void HALS_System::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
        v125 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
        LODWORD(v126) = 5146;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v108);
      }

      if (!a5)
      {
        v90 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v90 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(only_macos_high_quality_local_recording);
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
          *buf = 136315650;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5147;
          *&buf[18] = 2080;
          *&buf[20] = "(inData) == nullptr";
          _os_log_error_impl(&dword_1DE1F9000, v93, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_System::SetPropertyData: null data value for kAudioHardwarePropertyContentCreationRecordingInfo", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v120);
        __cxa_allocate_exception(0x40uLL);
        v111 = off_1F5991DD8;
        v112 = 1852797029;
        LODWORD(v114) = 1852797029;
        v117 = 0;
        v118 = 0;
        v119 = -1;
        v113 = &unk_1F598E5D8;
        v115 = &unk_1F598E600;
        v116 = 0;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &v113);
        *&buf[32] = "virtual void HALS_System::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
        v125 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
        LODWORD(v126) = 5147;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v108);
      }

      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 0x40000000;
      v107[2] = ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_190;
      v107[3] = &__block_descriptor_tmp_191;
      v107[4] = this;
      v107[5] = a5;
      v50 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v50, v107);
      v51 = *(this + 4);
      if (a8)
      {
        v52 = *(a8 + 4);
      }

      else
      {
        v52 = 0;
      }

      strcpy(buf, "irccbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      HALS_Object::PropertiesChanged(this, v51, v52, 1, buf);
      goto LABEL_127;
    case 1682533920:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4954;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyDefaultInputDevice", buf, 0x12u);
        }

        v101 = __cxa_allocate_exception(0x10uLL);
        *v101 = off_1F5991DD8;
        v101[2] = 561211770;
      }

      if (a6 != 4)
      {
        if (!a6)
        {
          v16 = *(this + 202);
          v17 = *a5;
          v45 = *MEMORY[0x1E69E9840];
          v19 = 1682533920;
          goto LABEL_69;
        }

        goto LABEL_127;
      }

      v16 = *(this + 202);
      if (*a7 != 2)
      {
        v17 = *a5;
        v46 = *a7 == 1;
        v66 = *MEMORY[0x1E69E9840];
        v19 = 1682533920;
        goto LABEL_112;
      }

      v60 = *MEMORY[0x1E69E9840];
      v58 = 1682533920;
      break;
    case 1682929012:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4975;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyDefaultOutputDevice", buf, 0x12u);
        }

        v98 = __cxa_allocate_exception(0x10uLL);
        *v98 = off_1F5991DD8;
        v98[2] = 561211770;
      }

      if (a6 != 4)
      {
        if (!a6)
        {
          v16 = *(this + 202);
          v17 = *a5;
          v18 = *MEMORY[0x1E69E9840];
          v19 = 1682929012;
LABEL_69:
          v46 = 0;
LABEL_112:

          HALS_DefaultDeviceManager::SetDefaultDevice(v16, v19, v17, v46);
          return;
        }

LABEL_127:
        v77 = *MEMORY[0x1E69E9840];
        return;
      }

      v16 = *(this + 202);
      if (*a7 != 2)
      {
        v17 = *a5;
        v46 = *a7 == 1;
        v65 = *MEMORY[0x1E69E9840];
        v19 = 1682929012;
        goto LABEL_112;
      }

      v59 = *MEMORY[0x1E69E9840];
      v58 = 1682929012;
      break;
    default:
      goto LABEL_196;
  }

LABEL_101:

  HALS_DefaultDeviceManager::ResetDefaultDevice(v16, v58);
}

uint64_t ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t result)
{
  v1 = **(result + 48) != 0;
  *(*(result + 40) + 1560) = v1;
  *(*(*(result + 32) + 8) + 24) = v1;
  return result;
}

uint64_t ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_184(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 32);
    v3 = *(v1 + 292);
    operator new();
  }

  return result;
}

uint64_t ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_186(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 32);
    v3 = *(v1 + 264);
    v4 = *(v1 + 16);
    operator new();
  }

  return result;
}

void ___ZN11HALS_System10DestroyTapEjP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[208];
  v4 = v2[209];
  if (v3 != v4)
  {
    while (*(*v3 + 4) != *(a1 + 56))
    {
      if (++v3 == v4)
      {
        return;
      }
    }
  }

  if (v3 != v4)
  {
    HALS_System::_DestroyTap(v2, *v3, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void HALS_System::_DestroyTap(HALS_Tap ***this, HALS_Tap *a2, HALS_Client *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      v24 = "HALS_System.cpp";
      v25 = 1024;
      v26 = 3067;
      v27 = 2080;
      v28 = "client != nullptr";
      v21 = "%32s:%-5d Assertion Failed: %s Must provide a client object";
LABEL_39:
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x1Cu);
    }

LABEL_40:
    abort();
  }

  v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v6 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (!a2)
  {
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v20 = *v8;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "HALS_System.cpp";
      v25 = 1024;
      v26 = 3068;
      v27 = 2080;
      v28 = "tap != nullptr";
      v21 = "%32s:%-5d Assertion Failed: %s Must provide a tap object";
      goto LABEL_39;
    }

    goto LABEL_40;
  }

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
    v16 = *(a2 + 4);
    *buf = 136315650;
    v24 = "HALS_System.cpp";
    v25 = 1024;
    v26 = 3069;
    v27 = 1024;
    LODWORD(v28) = v16;
    _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_System::_DestroyTap(%u)", buf, 0x18u);
  }

  v11 = *(a2 + 6);
  if ((v11 & 0x100000000) != 0 && *(a3 + 4) == v11 || (*(a2 + 91) & 1) == 0)
  {
    HALS_ObjectMap::RetainObject(a2, v10);
    atomic_fetch_add(&HALS_Tap::gPendingTapDelete, 1uLL);
    v12 = this[208];
    v13 = this[209];
    if (v12 != v13)
    {
      while (*v12 != a2)
      {
        if (++v12 == v13)
        {
          goto LABEL_25;
        }
      }

      if (v12 != v13)
      {
        v14 = v12 + 1;
        if (v12 + 1 != v13)
        {
          do
          {
            if (*v14 != a2)
            {
              *v12++ = *v14;
            }

            ++v14;
          }

          while (v14 != v13);
          v13 = this[209];
        }
      }
    }

    if (v12 != v13)
    {
      this[209] = v12;
    }

LABEL_25:
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN11HALS_System11_DestroyTapEP8HALS_TapP11HALS_Client_block_invoke;
    block[3] = &__block_descriptor_tmp_143_7873;
    block[4] = a2;
    AMCP::Utility::Dispatch_Queue::async(HALS_ObjectMap::sNormalPriorityQueue, block);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void ___ZN11HALS_System11_DestroyTapEP8HALS_TapP11HALS_Client_block_invoke(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  HALS_System::GetInstance(&v7, 0, v6);
  if (v7)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      if (v2[256] == 1)
      {
        (*(*v2 + 8))(v2);
        HALS_ObjectMap::ReleaseObject(*(a1 + 32), v3);
        HALS_ObjectMap::ObjectIsDead(*(a1 + 32), v4);
      }
    }
  }

  v5 = v8;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE48CAFC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN11HALS_System49_TellAllIOContextsForClientAboutSleepingIsAllowedEP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  v3 = v1[1];
  if (*v1 != v3)
  {
    do
    {
      v5 = HALS_ObjectMap::CopyObjectByObjectID(*v2);
      v7 = v5;
      if (v5)
      {
        v8 = *(a1 + 48);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = ___ZN14HALS_IOContext24SleepingIsAllowedChangedEb_block_invoke;
        v10[3] = &__block_descriptor_tmp_14_12143;
        v10[4] = v5;
        v11 = v8;
        v9 = (*(*v5 + 64))(v5);
        HALB_CommandGate::ExecuteCommand(v9, v10);
      }

      HALS_ObjectMap::ReleaseObject(v7, v6);
      ++v2;
    }

    while (v2 != v3);
  }
}

void __destroy_helper_block_e8_32c57_ZTSNSt3__110shared_ptrINS_6vectorIjNS_9allocatorIjEEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_e8_32c57_ZTSNSt3__110shared_ptrINS_6vectorIjNS_9allocatorIjEEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<std::vector<unsigned int>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<unsigned int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598A740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_System::StartRunLoop(HALS_System *this)
{
  v2 = (this + 1928);
  v3 = (this + 1928);
  v4 = HALB_Mutex::Lock((this + 1928));
  *(this + 2208) = 0;
  CADeprecated::CAPThread::Start(this + 2080);
  HALB_Guard::Wait(v2);
  HALB_Guard::Locker::~Locker(&v3);
}

void ___ZN11HALS_System41_TellAllIOContextsForClientAboutPowerHintEP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  v3 = v1[1];
  if (*v1 != v3)
  {
    do
    {
      v5 = HALS_ObjectMap::CopyObjectByObjectID(*v2);
      v7 = v5;
      if (v5)
      {
        v8 = *(a1 + 48);
        v13 = 0;
        v14 = &v13;
        v15 = 0x2000000000;
        v16 = 0;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 0x40000000;
        v11[2] = ___ZN14HALS_IOContext16PowerHintChangedEj_block_invoke;
        v11[3] = &unk_1E8676DA8;
        v11[4] = &v13;
        v11[5] = v5;
        v12 = v8;
        v9 = (*(*v5 + 64))(v5);
        HALB_CommandGate::ExecuteCommand(v9, v11);
        if (*(v14 + 24) == 1)
        {
          v10 = v7[20];
          if (!v10)
          {
            v10 = v7[4];
          }

          *&v17.mSelector = 0x676C6F626673697ALL;
          v17.mElement = 0;
          HALS_Object::PropertiesChanged(v7, v10, 0, 1, &v17);
        }

        _Block_object_dispose(&v13, 8);
      }

      HALS_ObjectMap::ReleaseObject(v7, v6);
      ++v2;
    }

    while (v2 != v3);
  }
}

void ___ZNK11HALS_System21update_all_iocontextsEv_block_invoke(uint64_t a1)
{
  v1 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
  v3 = v1;
  if (v1)
  {
    (*(**(v1 + 104) + 296))(*(v1 + 104));
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);
}

void sub_1DE48CFA4(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HALS_ObjectMap::ReleaseObject(v12, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_System::GetPropertyData(HALS_System *this, HALS_Object *a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, unsigned int *a6, unsigned int a7, const void **a8, HALS_Client *a9)
{
  v9 = a8;
  v14 = this;
  v228 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1886221683)
  {
    if (mSelector <= 1698776146)
    {
      if (mSelector > 1682533919)
      {
        if (mSelector <= 1684370978)
        {
          if (mSelector == 1682533920)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4418;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDefaultInputDevice", buf, 0x12u);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              *exception = off_1F5991DD8;
              exception[2] = 561211770;
            }

            *buf = *(this + 202);
            *&buf[8] = HALB_Mutex::Lock(*buf);
            v64 = *(*buf + 112);
          }

          else
          {
            if (mSelector != 1682929012)
            {
              goto LABEL_276;
            }

            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4425;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDefaultOutputDevice", buf, 0x12u);
              }

              v161 = __cxa_allocate_exception(0x10uLL);
              *v161 = off_1F5991DD8;
              v161[2] = 561211770;
            }

            *buf = *(this + 202);
            *&buf[8] = HALB_Mutex::Lock(*buf);
            v64 = *(*buf + 216);
          }

LABEL_273:
          HALB_Mutex::Locker::~Locker(buf);
          *a6 = v64;
          goto LABEL_281;
        }

        if (mSelector == 1684370979)
        {
          platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
          v117 = (*(*platform_behaviors + 24))(platform_behaviors);
          if (v117)
          {
            v118 = HALS_PlatformBehaviors::get_platform_behaviors(v117);
            if ((*(*v118 + 24))(v118) != 1)
            {
              goto LABEL_288;
            }

            v41 = a4 >> 2;
            this = v14;
            v42 = a5;
            v43 = a6;
            v44 = 1;
            v119 = 0;
LABEL_287:
            HALS_System::GetDeviceList(this, v41, v42, v43, v44, v119, a9);
            goto LABEL_288;
          }

          v41 = a4 >> 2;
          this = v14;
          v42 = a5;
          v43 = a6;
          v44 = 2;
LABEL_286:
          v119 = 1;
          goto LABEL_287;
        }

        if (mSelector != 1685288048)
        {
          if (mSelector == 1685416292)
          {
            if (a4 <= 0x1F)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4470;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
              }

              v155 = __cxa_allocate_exception(0x10uLL);
              *v155 = off_1F5991DD8;
              v155[2] = 561211770;
            }

            if (!a6)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4471;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: translation data is NULL for kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
              }

              v174 = __cxa_allocate_exception(0x10uLL);
              *v174 = off_1F5991DD8;
              v174[2] = 1852797029;
            }

            if (a6[2] != 8)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4477;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for input to kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
              }

              v180 = __cxa_allocate_exception(0x10uLL);
              *v180 = off_1F5991DD8;
              v180[2] = 561211770;
            }

            if (!*a6)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4478;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: input to kAudioHardwarePropertyDeviceForUID is NULL", buf, 0x12u);
              }

              v184 = __cxa_allocate_exception(0x10uLL);
              *v184 = off_1F5991DD8;
              v184[2] = 1852797029;
            }

            if (a6[6] != 4)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4482;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for output to kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
              }

              v187 = __cxa_allocate_exception(0x10uLL);
              *v187 = off_1F5991DD8;
              v187[2] = 561211770;
            }

            v20 = *(a6 + 2);
            if (!v20)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4483;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: output to kAudioHardwarePropertyDeviceForUID is NULL", buf, 0x12u);
              }

              v189 = __cxa_allocate_exception(0x10uLL);
              *v189 = off_1F5991DD8;
              v189[2] = 1852797029;
            }

            v21 = **a6;
            memset(buf, 0, 32);
            *&buf[32] = 1065353216;
            v22 = HALS_System::CopyDeviceByUID(this, v21, a9, buf);
            std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(buf);
            if (v22)
            {
              v24 = *(v22 + 4);
            }

            else
            {
              v24 = 0;
            }

            *v20 = v24;
            *a5 = a4;
            HALS_ObjectMap::ReleaseObject(v22, v23);
            goto LABEL_354;
          }

          goto LABEL_276;
        }

        if (a4 != 4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4917;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for kAudioHardwareDestroyTap", buf, 0x12u);
          }

          v168 = __cxa_allocate_exception(0x10uLL);
          *v168 = off_1F5991DD8;
          v168[2] = 561211770;
        }

        if (!a6)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4918;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: nowhere to put the output data for kAudioHardwareDestroyTap", buf, 0x12u);
          }

          v178 = __cxa_allocate_exception(0x10uLL);
          *v178 = off_1F5991DD8;
          v178[2] = 1852797029;
        }

LABEL_197:
        *a6 = 0;
LABEL_281:
        v129 = 4;
LABEL_353:
        *a5 = v129;
        goto LABEL_354;
      }

      if (mSelector > 1667461736)
      {
        if (mSelector == 1667461737)
        {
          only_macos_high_quality_local_recording = AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(this);
          if ((only_macos_high_quality_local_recording & 1) == 0)
          {
            v151 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v151 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(only_macos_high_quality_local_recording);
            }

            v153 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v152 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v152)
            {
              atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
              v154 = *v153;
              std::__shared_weak_count::__release_shared[abi:ne200100](v152);
            }

            else
            {
              v154 = *v153;
            }

            if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4928;
              *&buf[18] = 2080;
              *&buf[20] = "allowCCR == false";
              _os_log_error_impl(&dword_1DE1F9000, v154, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_System::GetPropertyData: kAudioHardwarePropertyContentCreationRecordingInfo feature disabled", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v211);
            __cxa_allocate_exception(0x40uLL);
            v203 = off_1F5991DD8;
            v204 = 1852797029;
            LODWORD(v214) = 1852797029;
            v217 = 0;
            v218 = 0;
            LODWORD(v219) = -1;
            v213 = &unk_1F598E5D8;
            v215 = &unk_1F598E600;
            v216 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &v213);
            *&buf[32] = "virtual void HALS_System::GetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, UInt32 &, void *, UInt32, const void *, HALS_Client *) const";
            v226 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
            LODWORD(v227.__r_.__value_.__l.__data_) = 4928;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v212);
          }

          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4931;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyContentCreationRecordingInfo", buf, 0x12u);
            }

            v191 = __cxa_allocate_exception(0x10uLL);
            *v191 = off_1F5991DD8;
            v191[2] = 561211770;
          }

          v202[0] = MEMORY[0x1E69E9820];
          v202[1] = 0x40000000;
          v202[2] = ___ZNK11HALS_System15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_181;
          v202[3] = &__block_descriptor_tmp_182;
          v202[4] = v14;
          v202[5] = a6;
          v78 = (*(*v14 + 64))(v14);
          HALB_CommandGate::ExecuteCommand(v78, v202);
          goto LABEL_352;
        }

        if (mSelector != 1668049699)
        {
          goto LABEL_276;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x4002000000;
        *&buf[24] = __Block_byref_object_copy__7820;
        *&buf[32] = __Block_byref_object_dispose__7821;
        v226 = 0;
        *&v227.__r_.__value_.__l.__data_ = 0uLL;
        v213 = MEMORY[0x1E69E9820];
        v214 = 0x40000000;
        v215 = ___ZNK11HALS_System18GetClockDeviceListEjRjPjP11HALS_Client_block_invoke;
        v216 = &unk_1E8675860;
        v217 = buf;
        v218 = this;
        v45 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v45, &v213);
        *a5 = 0;
        v46 = *(*&buf[8] + 40);
        v47 = *(*&buf[8] + 48);
        if (v46 != v47)
        {
          v48 = a4 >> 2;
          do
          {
            v221 = 0;
            v222 = 0;
            v223 = 0;
            HALS_DeviceManager::CopyClockDeviceList(*v46, &v221);
            v50 = v222;
            v51 = *a5;
            if (v221 != v222)
            {
              v52 = (v221 + 8);
              do
              {
                a6[v51] = *(*(v52 - 1) + 4);
                v51 = *a5 + 1;
                *a5 = v51;
              }

              while (v51 < v48 && v52++ != v50);
            }

            HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v221, v49);
            ++v46;
          }

          while (v51 < v48 && v46 != v47);
        }
      }

      else
      {
        if (mSelector == 1651074160)
        {
          v76 = HALS_PlatformBehaviors::get_platform_behaviors(this);
          if (((*(*v76 + 128))(v76) & 1) == 0)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4533;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateBundleIDToPlugIn", buf, 0x12u);
              }

              v194 = __cxa_allocate_exception(0x10uLL);
              *v194 = off_1F5991DD8;
              v194[2] = 561211770;
            }

            if (a7 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4534;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyTranslateBundleIDToPlugIn", buf, 0x12u);
              }

              v199 = __cxa_allocate_exception(0x10uLL);
              *v199 = off_1F5991DD8;
              v199[2] = 561211770;
            }

            v17 = HALS_System::CopyPlugInByBundleID(v14, *v9);
            if (v17)
            {
              v19 = *(v17 + 4);
            }

            else
            {
              v19 = 0;
            }

            goto LABEL_325;
          }

          goto LABEL_354;
        }

        if (mSelector != 1651472419)
        {
          goto LABEL_276;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x4002000000;
        *&buf[24] = __Block_byref_object_copy__7820;
        *&buf[32] = __Block_byref_object_dispose__7821;
        v226 = 0;
        *&v227.__r_.__value_.__l.__data_ = 0uLL;
        v213 = MEMORY[0x1E69E9820];
        v214 = 0x40000000;
        v215 = ___ZNK11HALS_System10GetBoxListEjRjPjP11HALS_Client_block_invoke;
        v216 = &unk_1E86757E8;
        v217 = buf;
        v218 = this;
        v30 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v30, &v213);
        *a5 = 0;
        v31 = *(*&buf[8] + 40);
        v32 = *(*&buf[8] + 48);
        if (v31 != v32)
        {
          v33 = a4 >> 2;
          do
          {
            v221 = 0;
            v222 = 0;
            v223 = 0;
            HALS_DeviceManager::CopyBoxList(*v31, &v221, a9);
            v35 = v222;
            v36 = *a5;
            if (v221 != v222)
            {
              v37 = (v221 + 8);
              do
              {
                a6[v36] = *(*(v37 - 1) + 4);
                v36 = *a5 + 1;
                *a5 = v36;
              }

              while (v36 < v33 && v37++ != v35);
            }

            HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v221, v34);
            ++v31;
          }

          while (v36 < v33 && v31 != v32);
        }
      }

LABEL_244:
      _Block_object_dispose(buf, 8);
      HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v226, v110);
LABEL_288:
      v129 = 4 * *a5;
      goto LABEL_353;
    }

    if (mSelector > 1835821925)
    {
      if (mSelector <= 1885954664)
      {
        if (mSelector != 1835821926)
        {
          if (mSelector == 1870098020)
          {
            v65 = a8 == 0;
            if (a8 && a7 >= 4)
            {
              v66 = 1;
              do
              {
                v67 = *v9;
                v9 = (v9 + 4);
                v65 = v67 == 1634757735;
              }

              while (v67 != 1634757735 && v66++ < a7 >> 2);
            }

            if (v65)
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x4002000000;
              *&buf[24] = __Block_byref_object_copy__7820;
              *&buf[32] = __Block_byref_object_dispose__7821;
              v226 = 0;
              *&v227.__r_.__value_.__l.__data_ = 0uLL;
              v205[0] = MEMORY[0x1E69E9820];
              v205[1] = 0x40000000;
              v205[2] = ___ZNK11HALS_System15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_177;
              v205[3] = &unk_1E8675F20;
              v205[4] = buf;
              v205[5] = this;
              v69 = (*(*this + 64))(this);
              HALB_CommandGate::ExecuteCommand(v69, v205);
              if (a4 >= 4)
              {
                v140 = 0;
                v141 = 0;
                v142 = *(*&buf[8] + 40);
                v143 = *(*&buf[8] + 48);
                while (v142 + v140 != v143)
                {
                  a6[v141] = *(*(v142 + 8 * v141) + 16);
                  ++v141;
                  v140 += 8;
                  if (a4 >> 2 == v141)
                  {
                    LODWORD(v141) = a4 >> 2;
                    break;
                  }
                }

                v70 = 4 * v141;
              }

              else
              {
                v70 = 0;
              }

              *a5 = v70;
              _Block_object_dispose(buf, 8);
              HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v226, v144);
            }

            else
            {
              *a5 = 0;
            }

            goto LABEL_354;
          }

          goto LABEL_276;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4860;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyMlockFailHandling", buf, 0x12u);
          }

          v173 = __cxa_allocate_exception(0x10uLL);
          *v173 = off_1F5991DD8;
          v173[2] = 561211770;
        }

        v25 = atomic_load(&HALB_MlockFailHandling::mHandling);
        goto LABEL_280;
      }

      if (mSelector == 1885954665)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4551;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyPlugInForBundleID", buf, 0x12u);
          }

          v169 = __cxa_allocate_exception(0x10uLL);
          *v169 = off_1F5991DD8;
          v169[2] = 561211770;
        }

        if (!a6)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4552;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: translation data is NULL for kAudioHardwarePropertyPlugInForBundleID", buf, 0x12u);
          }

          v179 = __cxa_allocate_exception(0x10uLL);
          *v179 = off_1F5991DD8;
          v179[2] = 1852797029;
        }

        if (a6[2] != 8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4558;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for input to kAudioHardwarePropertyPlugInForBundleID", buf, 0x12u);
          }

          v183 = __cxa_allocate_exception(0x10uLL);
          *v183 = off_1F5991DD8;
          v183[2] = 561211770;
        }

        if (!*a6)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4559;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: input to kAudioHardwarePropertyPlugInForBundleID is NULL", buf, 0x12u);
          }

          v186 = __cxa_allocate_exception(0x10uLL);
          *v186 = off_1F5991DD8;
          v186[2] = 1852797029;
        }

        if (a6[6] != 4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4563;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for output to kAudioHardwarePropertyPlugInForBundleID", buf, 0x12u);
          }

          v188 = __cxa_allocate_exception(0x10uLL);
          *v188 = off_1F5991DD8;
          v188[2] = 561211770;
        }

        v120 = *(a6 + 2);
        if (!v120)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4564;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: output to kAudioHardwarePropertyPlugInForBundleID is NULL", buf, 0x12u);
          }

          v190 = __cxa_allocate_exception(0x10uLL);
          *v190 = off_1F5991DD8;
          v190[2] = 1852797029;
        }

        v121 = HALS_System::CopyPlugInByBundleID(this, **a6);
        if (v121)
        {
          v123 = *(v121 + 4);
        }

        else
        {
          v123 = 0;
        }

        *v120 = v123;
        *a5 = a4;
        HALS_ObjectMap::ReleaseObject(v121, v122);
        goto LABEL_354;
      }

      if (mSelector != 1886152483)
      {
        if (mSelector == 1886218606)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4694;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyProcessInputMute", buf, 0x12u);
            }

            v157 = __cxa_allocate_exception(0x10uLL);
            *v157 = off_1F5991DD8;
            v157[2] = 561211770;
          }

          HALS_ObjectMap::RetainObject(a9, a2);
          if (a9)
          {
            v213 = 0x676C6F6270696D74;
            LODWORD(v214) = 0;
            (*(*a9 + 120))(a9, *(a9 + 4), &v213, a4, a5, a6, 0, 0, a9);
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(a9 + 60);
              if (*a6)
              {
                v28 = "on";
              }

              else
              {
                v28 = "off";
              }

              *buf = 136315906;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4708;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 2080;
              *&buf[26] = v28;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_System::GetPropertyData: PID: %d Process Input Mute: %s", buf, 0x22u);
            }
          }

          else
          {
            *a6 = 0;
            *a5 = 4;
          }

          HALS_ObjectMap::ReleaseObject(a9, v26);
          goto LABEL_354;
        }

        goto LABEL_276;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4002000000;
      *&buf[24] = __Block_byref_object_copy__7820;
      *&buf[32] = __Block_byref_object_dispose__7821;
      v226 = 0;
      *&v227.__r_.__value_.__l.__data_ = 0uLL;
      v213 = MEMORY[0x1E69E9820];
      v214 = 0x40000000;
      v215 = ___ZNK11HALS_System13GetPlugInListEjRjPj_block_invoke;
      v216 = &unk_1E86756F8;
      v217 = buf;
      v218 = this;
      v90 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v90, &v213);
      *a5 = 0;
      v91 = *(*&buf[8] + 40);
      v92 = *(*&buf[8] + 48);
      if (v91 == v92)
      {
        goto LABEL_244;
      }

      v93 = 0;
      while (1)
      {
        while (1)
        {
          v94 = *(*v91 + 20);
          v95 = *(*v91 + 24);
          if (v94 == v95)
          {
            break;
          }

          if (v94 != 1634757735 && v94 != 1953656941 && v95 != 1634757735 && v95 != 1953656941)
          {
            goto LABEL_205;
          }

LABEL_218:
          a6[v93] = *(*v91 + 16);
          v93 = *a5 + 1;
          *a5 = v93;
          v91 += 8;
          if (v93 >= a4 >> 2 || v91 == v92)
          {
            goto LABEL_244;
          }
        }

        if (v94 == 1953656941 || v94 == 1634757735)
        {
          goto LABEL_218;
        }

LABEL_205:
        v91 += 8;
        if (v91 == v92)
        {
          goto LABEL_244;
        }
      }
    }

    if (mSelector <= 1769302371)
    {
      if (mSelector == 1698776147)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4748;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioDevicePropertyEnableAdaptableDeviceSimulator", buf, 0x12u);
          }

          v164 = __cxa_allocate_exception(0x10uLL);
          *v164 = off_1F5991DD8;
          v164[2] = 561211770;
        }

        v25 = *(this + 1632);
        goto LABEL_280;
      }

      if (mSelector != 1768845172)
      {
        goto LABEL_276;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4777;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: wrong size for kAudioHardwarePropertyIsInitingOrExiting", buf, 0x12u);
        }

        v40 = __cxa_allocate_exception(0x10uLL);
        *v40 = off_1F5991DD8;
        v40[2] = 561211770;
      }

      goto LABEL_197;
    }

    if (mSelector != 1769302372)
    {
      if (mSelector != 1835758704)
      {
        goto LABEL_276;
      }

      if (a7 != 8)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4896;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong qualifier size for kAudioHardwareCreateTap", buf, 0x12u);
        }

        v159 = __cxa_allocate_exception(0x10uLL);
        *v159 = off_1F5991DD8;
        v159[2] = 561211770;
      }

      if (a4 != 8)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4897;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for kAudioHardwareCreateTap", buf, 0x12u);
        }

        v175 = __cxa_allocate_exception(0x10uLL);
        *v175 = off_1F5991DD8;
        v175[2] = 561211770;
      }

      if (!a6)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4898;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: nowhere to put the output data for kAudioHardwareCreateTap", buf, 0x12u);
        }

        v181 = __cxa_allocate_exception(0x10uLL);
        *v181 = off_1F5991DD8;
        v181[2] = 1852797029;
      }

      v55 = *a8;
      v221 = 0;
      v222 = &v221;
      v223 = 0x2000000000;
      LODWORD(v224) = 0;
      if (!v55)
      {
        goto LABEL_282;
      }

      v213 = MEMORY[0x1E69E9820];
      v214 = 0x40000000;
      v215 = ___ZN11HALS_System9CreateTapEPK14__CFDictionaryP11HALS_Client_block_invoke;
      v216 = &unk_1E8675C38;
      v217 = &v221;
      v218 = this;
      v219 = v55;
      v220 = a9;
      v56 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v56, &v213);
      if (*(v222 + 6))
      {
        if (g_static_start_options != 1)
        {
          CFRetain(v55);
          if (a9)
          {
            if (*(a9 + 759) < 0)
            {
              std::string::__init_copy_ctor_external(&v212, *(a9 + 92), *(a9 + 93));
            }

            else
            {
              v212 = *(a9 + 736);
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v212, "");
          }

          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 1174405120;
          *&buf[16] = ___ZN11HALS_System9CreateTapEPK14__CFDictionaryP11HALS_Client_block_invoke_2;
          *&buf[24] = &__block_descriptor_tmp_123;
          *&buf[32] = v14;
          v226 = v55;
          if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v227, v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
          }

          else
          {
            v227 = v212;
          }

          AMCP::Utility::Dispatch_Queue::async(v14 + 1216, buf);
          if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v227.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v212.__r_.__value_.__l.__data_);
          }
        }

        v212.__r_.__value_.__r.__words[0] = 0x676C6F6274707323;
        LODWORD(v212.__r_.__value_.__r.__words[1]) = 0;
        if (a9)
        {
          v147 = *(a9 + 4);
        }

        else
        {
          v147 = 0;
        }

        (*(*v14 + 152))(v14, v14, v147, 1, &v212, 0);
        v148 = *(v222 + 6);
        _Block_object_dispose(&v221, 8);
        if (v148)
        {
          *buf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
          applesauce::CF::StringRef::StringRef(&v213, "TapObjectID", 11);
          applesauce::CF::NumberRef::NumberRef<unsigned int,void>(&v221, v148);
          mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(*buf, v213, v221);
          applesauce::CF::NumberRef::~NumberRef(&v221);
          applesauce::CF::StringRef::~StringRef(&v213);
          mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v213, *buf);
          v149 = v213;
          v213 = 0;
          *a6 = v149;
          applesauce::CF::DictionaryRef::~DictionaryRef(&v213);
          mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(buf);
          goto LABEL_352;
        }
      }

      else
      {
LABEL_282:
        _Block_object_dispose(&v221, 8);
      }

      *a6 = 0;
LABEL_352:
      v129 = 8;
      goto LABEL_353;
    }

    if (a7 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4867;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong qualifier size for kAudioHardwarePropertyDeviceForUseCaseID", buf, 0x12u);
      }

      v165 = __cxa_allocate_exception(0x10uLL);
      *v165 = off_1F5991DD8;
      v165[2] = 561211770;
    }

    if (!a8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4868;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: qualifier data is NULL for kAudioHardwarePropertyDeviceForUseCaseID", buf, 0x12u);
      }

      v177 = __cxa_allocate_exception(0x10uLL);
      *v177 = off_1F5991DD8;
      v177[2] = 1852797029;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4870;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDeviceForUseCaseID", buf, 0x12u);
      }

      v182 = __cxa_allocate_exception(0x10uLL);
      *v182 = off_1F5991DD8;
      v182[2] = 561211770;
    }

    if (!a6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4871;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: out data is NULL for kAudioHardwarePropertyDeviceForUseCaseID", buf, 0x12u);
      }

      v185 = __cxa_allocate_exception(0x10uLL);
      *v185 = off_1F5991DD8;
      v185[2] = 1852797029;
    }

    *a6 = 0;
    *a5 = 4;
    v79 = *a8;
    __sz = HALS_System::GetNumberDevices(this, 1, 1, a9);
    LODWORD(v213) = 0;
    std::vector<unsigned int>::vector[abi:ne200100](buf, __sz);
    HALS_System::GetDeviceList(v14, __sz, &__sz, *buf, 1, 1, a9);
    v80 = __sz;
    v82 = *buf;
    v81 = *&buf[8];
    v83 = (*&buf[8] - *buf) >> 2;
    if (v83 > __sz)
    {
      std::vector<unsigned int>::resize(buf, __sz);
      v82 = *buf;
      v81 = *&buf[8];
      v83 = (*&buf[8] - *buf) >> 2;
    }

    v213 = 0;
    v214 = 0;
    v215 = 0;
    v221 = &v213;
    LOBYTE(v222) = 0;
    if (v83)
    {
      if (!(v83 >> 61))
      {
        operator new();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v130 = 0;
    if (v82 != v81)
    {
      do
      {
        v131 = HALS_ObjectMap::CopyObjectByObjectID(*v82);
        v132 = *v130;
        *v130 = v131;
        HALS_ObjectMap::ReleaseObject(v132, v133);
        ++v82;
        ++v130;
      }

      while (v82 != v81);
      v130 = v213;
      v83 = v214;
    }

    if (v130 != v83)
    {
      while (1)
      {
        v134 = *v130;
        if (*(*v130 + 5) != 1633773415)
        {
          v221 = 0x676C6F6269756964;
          LODWORD(v222) = 0;
          v135 = v134[4];
          __sz_4 = 0;
          v210 = 0;
          (*(*v134 + 120))(v134, v135, &v221, 4, &__sz_4, &v210, 0, 0, a9);
          if (v210 == v79)
          {
            break;
          }
        }

        if (++v130 == v83)
        {
          v130 = v83;
          break;
        }
      }
    }

    v136 = v214;
    if (v214 == v130)
    {
      v137 = v213;
      if (v213 != v130)
      {
        while (1)
        {
          v138 = *v137;
          if (*(*v137 + 20) == 1633773415)
          {
            v221 = 0x676C6F6269756964;
            LODWORD(v222) = 0;
            v139 = v138[4];
            LODWORD(v203) = 0;
            v211 = 0;
            (*(*v138 + 120))(v138, v139, &v221, 4, &v211, &v203, 0, 0, a9);
            if (v203 == v79)
            {
              break;
            }
          }

          v137 += 8;
          if (v137 == v130)
          {
            v130 = v136;
            goto LABEL_329;
          }
        }
      }

      v130 = v137;
LABEL_329:
      if (v214 == v130)
      {
        v145 = 0;
        goto LABEL_332;
      }

      HALS_ObjectMap::RetainObject(*v130, v80);
    }

    else
    {
      HALS_ObjectMap::RetainObject(*v130, v80);
    }

    v145 = *v130;
LABEL_332:
    v221 = &v213;
    std::vector<HALS_Releaser<HALS_Device>>::__destroy_vector::operator()[abi:ne200100](&v221, v80);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v145)
    {
      *a6 = *(v145 + 4);
    }

    HALS_ObjectMap::ReleaseObject(v145, v146);
    goto LABEL_354;
  }

  if (mSelector <= 1937010030)
  {
    if (mSelector > 1919839343)
    {
      if (mSelector > 1934587251)
      {
        switch(mSelector)
        {
          case 1934587252:
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4432;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDefaultSystemOutputDevice", buf, 0x12u);
              }

              v167 = __cxa_allocate_exception(0x10uLL);
              *v167 = off_1F5991DD8;
              v167[2] = 561211770;
            }

            *buf = *(this + 202);
            *&buf[8] = HALB_Mutex::Lock(*buf);
            v64 = *(*buf + 320);
            break;
          case 1936224868:
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4439;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDefaultSharedOutputDevice", buf, 0x12u);
              }

              v163 = __cxa_allocate_exception(0x10uLL);
              *v163 = off_1F5991DD8;
              v163[2] = 561211770;
            }

            *buf = *(this + 202);
            *&buf[8] = HALB_Mutex::Lock(*buf);
            v64 = *(*buf + 424);
            break;
          case 1936483696:
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4825;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: wrong size for kAudioHardwarePropertySleepingIsAllowed", buf, 0x12u);
              }

              v156 = __cxa_allocate_exception(0x10uLL);
              *v156 = off_1F5991DD8;
              v156[2] = 561211770;
            }

            if (a9)
            {
              v25 = *(a9 + 264);
LABEL_280:
              *a6 = v25;
              goto LABEL_281;
            }

            goto LABEL_279;
          default:
            goto LABEL_276;
        }

        goto LABEL_273;
      }

      if (mSelector != 1919839344)
      {
        v57 = 1920297316;
        goto LABEL_128;
      }

      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4765;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyRunLoop", buf, 0x12u);
        }

        v170 = __cxa_allocate_exception(0x10uLL);
        *v170 = off_1F5991DD8;
        v170[2] = 561211770;
      }

      *buf = this + 1928;
      *&buf[8] = HALB_Mutex::Lock((this + 1928));
      v124 = *(v14 + 240);
      HALB_Guard::Locker::~Locker(buf);
      *a6 = v124;
      if (v124)
      {
        CFRetain(v124);
      }

      goto LABEL_352;
    }

    if (mSelector <= 1886548770)
    {
      if (mSelector == 1886221684)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4720;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyProcessIsAudible", buf, 0x12u);
          }

          v71 = __cxa_allocate_exception(0x10uLL);
          *v71 = off_1F5991DD8;
          v71[2] = 561211770;
        }

LABEL_192:
        v25 = 1;
        goto LABEL_280;
      }

      if (mSelector != 1886353256)
      {
        goto LABEL_276;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4741;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyPowerHint", buf, 0x12u);
        }

        v158 = __cxa_allocate_exception(0x10uLL);
        *v158 = off_1F5991DD8;
        v158[2] = 561211770;
      }

      if (a9)
      {
        v25 = *(a9 + 73);
        goto LABEL_280;
      }

LABEL_279:
      v25 = 0;
      goto LABEL_280;
    }

    if (mSelector == 1886548771)
    {
      NumberProcessObjects = HALS_System::GetNumberProcessObjects(this);
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4849;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyProcessObjectList", buf, 0x12u);
        }

        v162 = __cxa_allocate_exception(0x10uLL);
        *v162 = off_1F5991DD8;
        v162[2] = 561211770;
      }

      if (a4 >> 2 >= NumberProcessObjects)
      {
        v73 = NumberProcessObjects;
      }

      else
      {
        v73 = a4 >> 2;
      }

      HALS_System::GetProcessObjectList(buf, v14);
      v74 = *buf;
      if (v73)
      {
        v75 = 4 * v73;
        memmove(a6, *buf, 4 * v73);
      }

      else
      {
        v75 = 0;
      }

      *a5 = v75;
      if (v74)
      {
        operator delete(v74);
      }

      goto LABEL_354;
    }

    if (mSelector != 1919186467)
    {
      goto LABEL_276;
    }

    v41 = a4 >> 2;
    v42 = a5;
    v43 = a6;
    v44 = 0;
    goto LABEL_286;
  }

  if (mSelector > 1969841250)
  {
    if (mSelector > 1969841267)
    {
      switch(mSelector)
      {
        case 1969841268:
          v111 = HALS_PlatformBehaviors::get_platform_behaviors(this);
          if (((*(*v111 + 128))(v111) & 1) == 0)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4641;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateUIDToTap", buf, 0x12u);
              }

              v195 = __cxa_allocate_exception(0x10uLL);
              *v195 = off_1F5991DD8;
              v195[2] = 561211770;
            }

            if (a7 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4642;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyTranslateUIDToTap", buf, 0x12u);
              }

              v200 = __cxa_allocate_exception(0x10uLL);
              *v200 = off_1F5991DD8;
              v200[2] = 561211770;
            }

            v112 = *v9;
            applesauce::CF::details::Retain<__CFString const*>(*v9);
            applesauce::CF::StringRef::StringRef(buf, v112);
            applesauce::CF::StringRef::StringRef(&v207, *buf);
            v113 = HALS_System::CopyTapByUID(v14, v207, a9);
            applesauce::CF::StringRef::~StringRef(&v207);
            if (v113)
            {
              v115 = *(v113 + 4);
            }

            else
            {
              v115 = 0;
            }

            *a6 = v115;
            *a5 = 4;
            HALS_ObjectMap::ReleaseObject(v113, v114);
            applesauce::CF::StringRef::~StringRef(buf);
          }

          goto LABEL_354;
        case 1970496882:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4727;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyUserSessionIsActiveOrHeadless", buf, 0x12u);
            }

            v166 = __cxa_allocate_exception(0x10uLL);
            *v166 = off_1F5991DD8;
            v166[2] = 561211770;
          }

          break;
        case 1986359923:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4686;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertySystemVersion", buf, 0x12u);
            }

            v29 = __cxa_allocate_exception(0x10uLL);
            *v29 = off_1F5991DD8;
            v29[2] = 561211770;
          }

          break;
        default:
          goto LABEL_276;
      }

      goto LABEL_192;
    }

    if (mSelector == 1969841251)
    {
      v126 = HALS_PlatformBehaviors::get_platform_behaviors(this);
      if ((*(*v126 + 128))(v126))
      {
        goto LABEL_354;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4669;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateUIDToClockDevice", buf, 0x12u);
        }

        v196 = __cxa_allocate_exception(0x10uLL);
        *v196 = off_1F5991DD8;
        v196[2] = 561211770;
      }

      if (a7 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4670;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyTranslateUIDToClockDevice", buf, 0x12u);
        }

        v201 = __cxa_allocate_exception(0x10uLL);
        *v201 = off_1F5991DD8;
        v201[2] = 561211770;
      }

      v127 = *v9;
      memset(buf, 0, 32);
      *&buf[32] = 1065353216;
      v61 = HALS_System::CopyClockDeviceByUID(v14, v127, buf);
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(buf);
      if (v61)
      {
        v63 = *(v61 + 4);
      }

      else
      {
        v63 = 0;
      }

      goto LABEL_295;
    }

    v57 = 1969841252;
LABEL_128:
    if (mSelector != v57)
    {
      goto LABEL_276;
    }

    v59 = HALS_PlatformBehaviors::get_platform_behaviors(this);
    if ((*(*v59 + 128))(v59))
    {
      goto LABEL_354;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4506;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyPhysicalDeviceForUID", buf, 0x12u);
      }

      v160 = __cxa_allocate_exception(0x10uLL);
      *v160 = off_1F5991DD8;
      v160[2] = 561211770;
    }

    if (a7 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4507;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyPhysicalDeviceForUID", buf, 0x12u);
      }

      v176 = __cxa_allocate_exception(0x10uLL);
      *v176 = off_1F5991DD8;
      v176[2] = 561211770;
    }

    v60 = *v9;
    memset(buf, 0, 32);
    *&buf[32] = 1065353216;
    v61 = HALS_System::CopyDeviceByUID(v14, v60, a9, buf);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(buf);
    if (v61)
    {
      v63 = *(v61 + 4);
    }

    else
    {
      v63 = 0;
    }

LABEL_295:
    *a6 = v63;
    *a5 = 4;
    HALS_ObjectMap::ReleaseObject(v61, v62);
    goto LABEL_354;
  }

  if (mSelector > 1953326882)
  {
    if (mSelector != 1953326883)
    {
      if (mSelector != 1953526563)
      {
        if (mSelector == 1969841250)
        {
          v16 = HALS_PlatformBehaviors::get_platform_behaviors(this);
          if (((*(*v16 + 128))(v16) & 1) == 0)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4622;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateUIDToBox", buf, 0x12u);
              }

              v192 = __cxa_allocate_exception(0x10uLL);
              *v192 = off_1F5991DD8;
              v192[2] = 561211770;
            }

            if (a7 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4623;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyTranslateUIDToBox", buf, 0x12u);
              }

              v197 = __cxa_allocate_exception(0x10uLL);
              *v197 = off_1F5991DD8;
              v197[2] = 561211770;
            }

            v17 = HALS_System::CopyBoxByUID(v14, *v9, a9);
            if (v17)
            {
              v19 = *(v17 + 4);
            }

            else
            {
              v19 = 0;
            }

LABEL_325:
            *a6 = v19;
            *a5 = 4;
            HALS_ObjectMap::ReleaseObject(v17, v18);
            goto LABEL_354;
          }

          goto LABEL_354;
        }

        goto LABEL_276;
      }

      *a5 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4002000000;
      *&buf[24] = __Block_byref_object_copy__109;
      *&buf[32] = __Block_byref_object_dispose__110;
      v226 = 0;
      *&v227.__r_.__value_.__l.__data_ = 0uLL;
      v213 = MEMORY[0x1E69E9820];
      v214 = 0x40000000;
      v215 = ___ZNK11HALS_System10GetTapListEjRjPjP11HALS_Client_block_invoke;
      v216 = &unk_1E8675C88;
      v217 = buf;
      v218 = this;
      v219 = a9;
      v84 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v84, &v213);
      v86 = *(*&buf[8] + 40);
      v85 = *(*&buf[8] + 48);
      if (v86 != v85)
      {
        v87 = *a5;
        v88 = v86 + 4;
        do
        {
          a6[v87] = *(v88 - 4);
          v87 = *a5 + 1;
          *a5 = v87;
          v89 = v87 >= a4 >> 2 || v88 == v85;
          v88 += 4;
        }

        while (!v89);
      }

      _Block_object_dispose(buf, 8);
      if (v226)
      {
        v227.__r_.__value_.__r.__words[0] = v226;
        operator delete(v226);
      }

      goto LABEL_288;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4002000000;
    *&buf[24] = __Block_byref_object_copy__7820;
    *&buf[32] = __Block_byref_object_dispose__7821;
    v226 = 0;
    *&v227.__r_.__value_.__l.__data_ = 0uLL;
    v213 = MEMORY[0x1E69E9820];
    v214 = 0x40000000;
    v215 = ___ZNK11HALS_System23GetTransportManagerListEjRjPj_block_invoke;
    v216 = &unk_1E8675770;
    v217 = buf;
    v218 = this;
    v101 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v101, &v213);
    *a5 = 0;
    v102 = *(*&buf[8] + 40);
    v103 = *(*&buf[8] + 48);
    if (v102 != v103)
    {
      v104 = 0;
      while (1)
      {
        while (1)
        {
          v106 = *(*v102 + 20);
          v105 = *(*v102 + 24);
          if (v106 != v105 && v106 != 1953656941)
          {
            break;
          }

          if (v106 == 1953656941 || v106 != v105)
          {
            goto LABEL_239;
          }

LABEL_236:
          v102 += 8;
          if (v102 == v103)
          {
            goto LABEL_244;
          }
        }

        if (v105 != 1953656941)
        {
          goto LABEL_236;
        }

LABEL_239:
        a6[v104] = *(*v102 + 16);
        v104 = *a5 + 1;
        *a5 = v104;
        v102 += 8;
        if (v104 >= a4 >> 2 || v102 == v103)
        {
          goto LABEL_244;
        }
      }
    }

    goto LABEL_244;
  }

  if (mSelector == 1937010031)
  {
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4734;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyMixStereoToMono", buf, 0x12u);
      }

      v171 = __cxa_allocate_exception(0x10uLL);
      *v171 = off_1F5991DD8;
      v171[2] = 561211770;
    }

    v206[0] = MEMORY[0x1E69E9820];
    v206[1] = 0x40000000;
    v206[2] = ___ZNK11HALS_System15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
    v206[3] = &__block_descriptor_tmp_176_7918;
    v206[4] = this;
    v206[5] = a6;
    v125 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v125, v206);
    goto LABEL_281;
  }

  if (mSelector == 1953325673)
  {
    v58 = HALS_PlatformBehaviors::get_platform_behaviors(this);
    if (((*(*v58 + 128))(v58) & 1) == 0)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4595;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateBundleIDToTransportManager", buf, 0x12u);
        }

        v193 = __cxa_allocate_exception(0x10uLL);
        *v193 = off_1F5991DD8;
        v193[2] = 561211770;
      }

      if (a7 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4596;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyTranslateBundleIDToTransportManager", buf, 0x12u);
        }

        v198 = __cxa_allocate_exception(0x10uLL);
        *v198 = off_1F5991DD8;
        v198[2] = 561211770;
      }

      v17 = HALS_System::CopyTransportManagerByBundleID(v14, *v9);
      if (v17)
      {
        v19 = *(v17 + 4);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_325;
    }

LABEL_354:
    v150 = *MEMORY[0x1E69E9840];
    return;
  }

LABEL_276:
  v128 = *MEMORY[0x1E69E9840];

  HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
}

void sub_1DE490F9C(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  __p = &a40;
  std::vector<HALS_Releaser<HALS_Device>>::__destroy_vector::operator()[abi:ne200100](&__p, a2);
  v42 = *(v40 - 176);
  if (v42)
  {
    *(v40 - 168) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void sub_1DE491138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::exception a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  *(v41 - 208) = v39;
  v43 = *(v41 - 200);
  if (v43)
  {
    *(v41 - 192) = v43;
    operator delete(v43);
  }

  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::~clone_impl(v41 - 176);
  boost::exception_detail::error_info_injector<CAException>::~error_info_injector(&a38);
  std::exception::~exception(&a16);
  if (v40)
  {
    __cxa_free_exception(v38);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a33);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_System::CopyDeviceByUID(uint64_t a1, const __CFString *a2, HALS_Client *a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4002000000;
  v16 = __Block_byref_object_copy__7820;
  v17 = __Block_byref_object_dispose__7821;
  memset(v18, 0, sizeof(v18));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___ZNK11HALS_System15CopyDeviceByUIDEPK10__CFStringP11HALS_ClientRKNSt3__113unordered_setIN18HALS_DeviceManager17DeviceManagerTypeENS5_4hashIS8_EENS5_8equal_toIS8_EENS5_9allocatorIS8_EEEE_block_invoke;
  v12[3] = &unk_1E8675900;
  v12[4] = &v13;
  v12[5] = a1;
  v12[6] = a4;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v12);
  v7 = v14[5];
  v8 = v14[6];
  while (v7 != v8)
  {
    v9 = HALS_DeviceManager::CopyDeviceByUID(*v7, a2, a3);
    if (v9)
    {
      goto LABEL_6;
    }

    ++v7;
  }

  v9 = 0;
LABEL_6:
  _Block_object_dispose(&v13, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v18, v10);
  return v9;
}

void sub_1DE4912E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v9 + 40), v11);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_System::CopyPlugInByBundleID(HALS_System *this, const __CFString *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x4002000000;
  v24 = __Block_byref_object_copy__7820;
  v25 = __Block_byref_object_dispose__7821;
  memset(v26, 0, sizeof(v26));
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZNK11HALS_System20CopyPlugInByBundleIDEPK10__CFString_block_invoke;
  v20[3] = &unk_1E86756A8;
  v20[4] = &v21;
  v20[5] = this;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v20);
  v4 = v22[5];
  for (i = v22[6]; v4 != i; ++v4)
  {
    v6 = *v4;
    v7 = *(*v4 + 5);
    v8 = *(*v4 + 6);
    if (v7 == v8)
    {
      if (v7 != 1953656941 && v7 != 1634757735)
      {
        continue;
      }
    }

    else if (v7 != 1634757735 && v7 != 1953656941 && v8 != 1634757735 && v8 != 1953656941)
    {
      continue;
    }

    v13 = *(v6 + 6);
    if (v13)
    {
      CFRetain(v13);
      v13 = *(v6 + 6);
    }

    v18 = v13;
    v19 = 1;
    if (CFStringCompare(v13, a2, 0) == kCFCompareEqualTo)
    {
      v15 = *v4;
      HALS_ObjectMap::RetainObject(*v4, v14);
      CACFString::~CACFString(&v18);
      goto LABEL_26;
    }

    CACFString::~CACFString(&v18);
  }

  v15 = 0;
LABEL_26:
  _Block_object_dispose(&v21, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v26, v16);
  return v15;
}

void sub_1DE4914C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  CACFString::~CACFString(&a9);
  _Block_object_dispose(&a17, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v17 + 40), v19);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_System::CopyTransportManagerByBundleID(HALS_System *this, const __CFString *a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x4002000000;
  v22 = __Block_byref_object_copy__7820;
  v23 = __Block_byref_object_dispose__7821;
  memset(v24, 0, sizeof(v24));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = ___ZNK11HALS_System30CopyTransportManagerByBundleIDEPK10__CFString_block_invoke;
  v18[3] = &unk_1E8675748;
  v18[4] = &v19;
  v18[5] = this;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v18);
  v4 = v20[5];
  for (i = v20[6]; v4 != i; ++v4)
  {
    v6 = *v4;
    v8 = *(*v4 + 5);
    v7 = *(*v4 + 6);
    if (v8 == v7 || v8 == 1953656941)
    {
      if (v8 != 1953656941 && v8 == v7)
      {
        continue;
      }
    }

    else if (v7 != 1953656941)
    {
      continue;
    }

    v11 = *(v6 + 6);
    if (v11)
    {
      CFRetain(v11);
      v11 = *(v6 + 6);
    }

    v16 = v11;
    v17 = 1;
    if (CFStringCompare(v11, a2, 0) == kCFCompareEqualTo)
    {
      v13 = *v4;
      HALS_ObjectMap::RetainObject(*v4, v12);
      CACFString::~CACFString(&v16);
      goto LABEL_21;
    }

    CACFString::~CACFString(&v16);
  }

  v13 = 0;
LABEL_21:
  _Block_object_dispose(&v19, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v24, v14);
  return v13;
}

void sub_1DE4916AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  CACFString::~CACFString(&a9);
  _Block_object_dispose(&a17, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v17 + 40), v19);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_System::CopyBoxByUID(HALS_System *this, const __CFString *a2, HALS_Client *a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = __Block_byref_object_copy__7820;
  v16 = __Block_byref_object_dispose__7821;
  memset(v17, 0, sizeof(v17));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZNK11HALS_System12CopyBoxByUIDEPK10__CFStringP11HALS_Client_block_invoke;
  v11[3] = &unk_1E86757C0;
  v11[4] = &v12;
  v11[5] = this;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v11);
  v6 = v13[5];
  v7 = v13[6];
  while (v6 != v7)
  {
    v8 = HALS_DeviceManager::CopyBoxByUID(*v6, a2, a3);
    if (v8)
    {
      goto LABEL_6;
    }

    ++v6;
  }

  v8 = 0;
LABEL_6:
  _Block_object_dispose(&v12, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v17, v9);
  return v8;
}

void sub_1DE491820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v7 + 40), v9);
  _Unwind_Resume(a1);
}

uint64_t HALS_System::CopyTapByUID(uint64_t a1, const void *a2, uint64_t a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___ZNK11HALS_System12CopyTapByUIDEN10applesauce2CF9StringRefEP11HALS_Client_block_invoke;
  v9[3] = &unk_1F59725F8;
  v9[4] = &v12;
  v9[5] = a1;
  if (a2)
  {
    CFRetain(a2);
  }

  cf = a2;
  v11 = a3;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  v7 = v13[3];
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

void sub_1DE491984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::CF::StringRef::~StringRef((v9 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_System::CopyClockDeviceByUID(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = __Block_byref_object_copy__7820;
  v16 = __Block_byref_object_dispose__7821;
  memset(v17, 0, sizeof(v17));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZNK11HALS_System20CopyClockDeviceByUIDEPK10__CFStringP11HALS_ClientRKNSt3__113unordered_setIN18HALS_DeviceManager17DeviceManagerTypeENS5_4hashIS8_EENS5_8equal_toIS8_EENS5_9allocatorIS8_EEEE_block_invoke;
  v11[3] = &unk_1E8675838;
  v11[4] = &v12;
  v11[5] = a1;
  v11[6] = a3;
  v4 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v4, v11);
  v6 = v13[5];
  v7 = v13[6];
  while (v6 != v7)
  {
    v8 = HALS_DeviceManager::CopyClockDeviceByUID(*v6, a2, v5);
    if (v8)
    {
      goto LABEL_6;
    }

    ++v6;
  }

  v8 = 0;
LABEL_6:
  _Block_object_dispose(&v12, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v17, v9);
  return v8;
}

void sub_1DE491ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v9 + 40), v11);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK11HALS_System15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_177(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE491B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE491B58);
}

uint64_t HALS_System::GetNumberProcessObjects(HALS_System *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK11HALS_System23GetNumberProcessObjectsEv_block_invoke;
  v4[3] = &unk_1E8675B90;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE491C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void HALS_System::GetProcessObjectList(HALS_System *this, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x4002000000;
  v9 = __Block_byref_object_copy__109;
  v10 = __Block_byref_object_dispose__110;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_System20GetProcessObjectListEv_block_invoke;
  v5[3] = &unk_1E8675B68;
  v5[4] = &v6;
  v5[5] = a2;
  v3 = (*(*a2 + 64))(a2);
  HALB_CommandGate::ExecuteCommand(v3, v5);
  v4 = v7;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this, v4[5], v4[6], (v4[6] - v4[5]) >> 2);
  _Block_object_dispose(&v6, 8);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_1DE491D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFNumberRef *applesauce::CF::NumberRef::NumberRef<unsigned int,void>(CFNumberRef *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

CFDictionaryRef ___ZNK11HALS_System15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_181(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1568);
  if (v2)
  {
    result = CFDictionaryCreateCopy(0, v2);
  }

  else
  {
    result = 0;
  }

  **(a1 + 40) = result;
  return result;
}

void ___ZN11HALS_System9CreateTapEPK14__CFDictionaryP11HALS_Client_block_invoke(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = a1[6];
  v3 = a1[5];
  v2 = a1[7];
  operator new();
}

void sub_1DE4925A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, applesauce::CF::StringRef *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN11HALS_System9CreateTapEPK14__CFDictionaryP11HALS_Client_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return;
  }

  applesauce::CF::DictionaryRef::from_get(&v75, v1);
  memset(&v74, 0, sizeof(v74));
  memset(&v73, 0, sizeof(v73));
  if (!v75)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
  cf.__r_.__value_.__r.__words[0] = v3;
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 != CFArrayGetTypeID())
    {
      v65 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v65, "Could not construct");
      __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  applesauce::CF::at_or<applesauce::CF::ArrayRef,char const(&)[10]>(&theArray, v75, "BundleIDs", &cf);
  if (cf.__r_.__value_.__r.__words[0])
  {
    CFRelease(cf.__r_.__value_.__l.__data_);
  }

  if (!v75)
  {
    v50 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v50, "Could not construct");
    __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
  cf.__r_.__value_.__r.__words[0] = v5;
  if (v5)
  {
    v6 = CFGetTypeID(v5);
    if (v6 != CFArrayGetTypeID())
    {
      v66 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v66, "Could not construct");
      __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  applesauce::CF::at_or<applesauce::CF::ArrayRef,char const(&)[10]>(&v71, v75, "Processes", &cf);
  if (cf.__r_.__value_.__r.__words[0])
  {
    CFRelease(cf.__r_.__value_.__l.__data_);
  }

  v7 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v9 = CFArrayGetCount(v7);
    if (Count)
    {
      v10 = v9;
      for (i = 0; i != Count; ++i)
      {
        if (v10 == i)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v70, v7, i);
        v12 = v70;
        if (v70)
        {
          v13 = CFGetTypeID(v70);
          if (v13 == CFStringGetTypeID())
          {
            CFRetain(v12);
            v69 = v12;
            v14 = CFGetTypeID(v12);
            if (v14 != CFStringGetTypeID())
            {
              v46 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v46, "Could not construct");
              __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            if (!v69)
            {
              v47 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v47, "Could not construct");
              __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::CF::convert_to<std::string,0>(&cf, v69);
            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_cf = &cf;
            }

            else
            {
              p_cf = cf.__r_.__value_.__r.__words[0];
            }

            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(cf.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = cf.__r_.__value_.__l.__size_;
            }

            std::string::append(&v74, p_cf, size);
            if (i < CFArrayGetCount(v7) - 1)
            {
              std::string::append(&v74, ", ", 2uLL);
            }

            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }

            if (v69)
            {
              CFRelease(v69);
            }
          }

          CFRelease(v12);
        }
      }
    }
  }

  v17 = v71;
  if (v71)
  {
    v18 = CFArrayGetCount(v71);
    v19 = CFArrayGetCount(v17);
    if (v18)
    {
      v20 = v19;
      for (j = 0; j != v18; ++j)
      {
        if (v20 == j)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v70, v17, j);
        v22 = v70;
        if (v70)
        {
          v23 = CFGetTypeID(v70);
          if (v23 == CFNumberGetTypeID())
          {
            applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v69, &v70);
            if (!v69)
            {
              v48 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v48, "Could not construct");
              __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v24 = applesauce::CF::convert_to<unsigned int,0>(v69);
            std::to_string(&cf, v24);
            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &cf;
            }

            else
            {
              v25 = cf.__r_.__value_.__r.__words[0];
            }

            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = HIBYTE(cf.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v26 = cf.__r_.__value_.__l.__size_;
            }

            std::string::append(&v73, v25, v26);
            if (j < CFArrayGetCount(v17) - 1)
            {
              std::string::append(&v73, ", ", 2uLL);
            }

            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }

            if (v69)
            {
              CFRelease(v69);
            }
          }

          CFRelease(v22);
        }
      }
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  cf.__r_.__value_.__r.__words[0] = Mutable;
  v28 = CFStringCreateWithBytes(0, "TapClient", 9, 0x8000100u, 0);
  v70 = v28;
  if (!v28)
  {
    v51 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v51, "Could not construct");
    __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v29 = *(a1 + 71);
  if (v29 < 0)
  {
    v30 = *(a1 + 48);
    if (!v30)
    {
      v69 = 0;
      mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v28, 0);
      goto LABEL_62;
    }

    v29 = *(a1 + 56);
  }

  else
  {
    v30 = (a1 + 48);
  }

  v31 = CFStringCreateWithBytes(0, v30, v29, 0x8000100u, 0);
  v69 = v31;
  if (!v31)
  {
    v62 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v62, "Could not construct");
    __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v70, v31);
  CFRelease(v31);
LABEL_62:
  if (v70)
  {
    CFRelease(v70);
  }

  v32 = CFStringCreateWithBytes(0, "BundleIDs", 9, 0x8000100u, 0);
  v70 = v32;
  if (!v32)
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v52, "Could not construct");
    __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v33 = SHIBYTE(v74.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v34 = v74.__r_.__value_.__r.__words[0];
    if (!v74.__r_.__value_.__r.__words[0])
    {
      v69 = 0;
      mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v32, 0);
      goto LABEL_71;
    }

    v33 = v74.__r_.__value_.__l.__size_;
  }

  else
  {
    v34 = &v74;
  }

  v35 = CFStringCreateWithBytes(0, v34, v33, 0x8000100u, 0);
  v69 = v35;
  if (!v35)
  {
    v63 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v63, "Could not construct");
    __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v70, v35);
  CFRelease(v35);
LABEL_71:
  if (v70)
  {
    CFRelease(v70);
  }

  v36 = CFStringCreateWithBytes(0, "Processes", 9, 0x8000100u, 0);
  v70 = v36;
  if (!v36)
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v53, "Could not construct");
    __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v37 = SHIBYTE(v73.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v38 = &v73;
LABEL_78:
    v39 = CFStringCreateWithBytes(0, v38, v37, 0x8000100u, 0);
    v69 = v39;
    if (!v39)
    {
      v64 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v64, "Could not construct");
      __cxa_throw(v64, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v70, v39);
    CFRelease(v39);
    goto LABEL_80;
  }

  v38 = v73.__r_.__value_.__r.__words[0];
  if (v73.__r_.__value_.__r.__words[0])
  {
    v37 = v73.__r_.__value_.__l.__size_;
    goto LABEL_78;
  }

  v69 = 0;
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v36, 0);
LABEL_80:
  if (v70)
  {
    CFRelease(v70);
  }

  v70 = CFStringCreateWithBytes(0, "IsExclusive", 11, 0x8000100u, 0);
  if (!v70)
  {
    v54 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v54, "Could not construct");
    __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v75)
  {
    v55 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v55, "Could not construct");
    __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v40 = *MEMORY[0x1E695E4B8];
  v67 = *MEMORY[0x1E695E4B8];
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[12]>(&v69, v75, "IsExclusive", &v67);
  v41 = v69;
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v70, v69);
  if (v41)
  {
    CFRelease(v41);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  v70 = CFStringCreateWithBytes(0, "IsMixdown", 9, 0x8000100u, 0);
  if (!v70)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v56, "Could not construct");
    __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v75)
  {
    v57 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v57, "Could not construct");
    __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v67 = v40;
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[10]>(&v69, v75, "IsMixdown", &v67);
  v42 = v69;
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v70, v69);
  if (v42)
  {
    CFRelease(v42);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  v70 = CFStringCreateWithBytes(0, "IsPrivate", 9, 0x8000100u, 0);
  if (!v70)
  {
    v58 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v58, "Could not construct");
    __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v75)
  {
    v59 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v59, "Could not construct");
    __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v67 = v40;
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[10]>(&v69, v75, "IsPrivate", &v67);
  v43 = v69;
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v70, v69);
  if (v43)
  {
    CFRelease(v43);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  v70 = CFStringCreateWithBytes(0, "MuteBehavior", 12, 0x8000100u, 0);
  if (!v70)
  {
    v60 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v60, "Could not construct");
    __cxa_throw(v60, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v75)
  {
    v61 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v61, "Could not construct");
    __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v67 = 0;
  applesauce::CF::at_or<applesauce::CF::NumberRef,char const(&)[13]>(&v69, v75, "MuteBehavior", &v67);
  v44 = v69;
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, v70, v69);
  if (v44)
  {
    CFRelease(v44);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v70, Mutable);
  v45 = v70;
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_235);
  }

  if (AudioStatisticsLibraryLoader(void)::libSym)
  {
    AudioStatisticsLibraryLoader(void)::libSym(v45, 536870920, 5);
  }

  CFRelease(v1);
  if (v70)
  {
    CFRelease(v70);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v75)
  {
    CFRelease(v75);
  }
}

void sub_1DE493478(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  __cxa_free_exception(v38);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a11);
  __clang_call_terminate(a1);
}

void sub_1DE493690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  JUMPOUT(0x1DE493668);
}

void sub_1DE4936D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE49370CLL);
}

void sub_1DE4936E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a17);
  applesauce::CF::TypeRef::~TypeRef(&a18);
  JUMPOUT(0x1DE493740);
}

void sub_1DE493738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  applesauce::CF::ArrayRef::~ArrayRef(&a16);
  applesauce::CF::ArrayRef::~ArrayRef(&a17);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef((v29 - 88));
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void __copy_helper_block_e8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_7956()
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

void ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN11HALS_System10_CreateTapEPK14__CFDictionaryP11HALS_ClientE3__0EEvOT__block_invoke(uint64_t a1)
{
  v1 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
  v3 = v1;
  if (v1)
  {
    HALS_Tap::UpdateAfterRestoreFromPrefs(v1);
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);
}

void sub_1DE49397C(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HALS_ObjectMap::ReleaseObject(v12, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void applesauce::dispatch::v1::async<HALS_System::_CreateTap(__CFDictionary const*,HALS_Client *)::$_0 &>(dispatch_queue_s *,HALS_System::_CreateTap(__CFDictionary const*,HALS_Client *)::$_0 &)::{lambda(void *)#1}::__invoke(unsigned int *a1)
{
  v1 = HALS_ObjectMap::CopyObjectByObjectID(*a1);
  v3 = v1;
  if (v1)
  {
    HALS_Tap::UpdateAfterRestoreFromPrefs(v1);
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE493A28(void *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v2, a2);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4939F4);
}

__n128 __Block_byref_object_copy__109(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__110(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZNK11HALS_System10GetTapListEjRjPjP11HALS_Client_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v3 = a1[6];
  __p = 0;
  v8 = 0;
  v9 = 0;
  HALS_System::_GetVisibleTapList(v1, &__p, v3);
  v4 = __p;
  v5 = v8;
  while (v4 != v5)
  {
    v6 = *(*v4 + 16);
    std::vector<unsigned int>::push_back[abi:ne200100](v2 + 40, &v6);
    v4 += 8;
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_1DE493B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALS_System::_GetVisibleTapList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 1664);
    for (i = *(a1 + 1672); v4 != i; ++v4)
    {
      v7 = *(*v4 + 48);
      if ((v7 & 0x100000000) != 0 && *(a3 + 16) == v7 || (*(*v4 + 91) & 1) == 0)
      {
        std::vector<HALS_Device *>::push_back[abi:ne200100](a2, v4);
      }
    }
  }

  else if (a1 + 1664 != a2)
  {
    v8 = *(a1 + 1664);
    v9 = *(a1 + 1672);
    v10 = v9 - v8;
    v11 = *(a2 + 16);
    v12 = *a2;
    if (v11 - *a2 < (v9 - v8))
    {
      v13 = v10 >> 3;
      if (v12)
      {
        *(a2 + 8) = v12;
        operator delete(v12);
        v11 = 0;
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
      }

      if (!(v13 >> 61))
      {
        v14 = v11 >> 2;
        if (v11 >> 2 <= v13)
        {
          v14 = v10 >> 3;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        std::vector<HALS_Tap *>::__vallocate[abi:ne200100](a2, v15);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v16 = *(a2 + 8);
    v17 = v16 - v12;
    if (v16 - v12 >= v10)
    {
      if (v9 != v8)
      {
        memmove(v12, v8, v9 - v8);
      }

      v20 = &v12[v10];
    }

    else
    {
      if (v16 != v12)
      {
        memmove(*a2, v8, v16 - v12);
        v16 = *(a2 + 8);
      }

      v18 = &v8[v17];
      v19 = v9 - &v8[v17];
      if (v19)
      {
        memmove(v16, v18, v19);
      }

      v20 = &v16[v19];
    }

    *(a2 + 8) = v20;
  }
}

void std::vector<HALS_Tap *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::vector<HALS_Releaser<HALS_Device>>::__destroy_vector::operator()[abi:ne200100](void ***a1, HALS_Object *a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    for (i = v2[1]; i != v3; i -= 8)
    {
      v6 = *(i - 1);
      HALS_ObjectMap::ReleaseObject(v6, a2);
    }

    v2[1] = v3;
    v7 = **a1;

    operator delete(v7);
  }
}

double ___ZNK11HALS_System20GetProcessObjectListEv_block_invoke(uint64_t a1)
{
  HALS_System::_GetProcessObjectList(&v5, *(*(a1 + 40) + 1640), *(*(a1 + 40) + 1648));
  v2 = *(*(a1 + 32) + 8);
  v3 = v2[5];
  if (v3)
  {
    v2[6] = v3;
    operator delete(v3);
  }

  result = *&v5;
  *(v2 + 5) = v5;
  v2[7] = v6;
  return result;
}

void HALS_System::_GetProcessObjectList(HALS_System *this, uint64_t a2, uint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *(*v4 + 240);
      v7 = getpid();
      if (v6 != v7 || (platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v7), (*(*platform_behaviors + 96))(platform_behaviors)))
      {
        v9 = *(*v4 + 16);
        std::vector<unsigned int>::push_back[abi:ne200100](this, &v9);
      }

      v4 += 8;
    }

    while (v4 != a3);
  }
}

void sub_1DE493ED4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK11HALS_System23GetNumberProcessObjectsEv_block_invoke(uint64_t a1)
{
  HALS_System::_GetProcessObjectList(v4, *(*(a1 + 40) + 1640), *(*(a1 + 40) + 1648));
  v2 = v4[0];
  v3 = v4[1];
  if (v4[0])
  {
    operator delete(v4[0]);
  }

  *(*(*(a1 + 32) + 8) + 24) = (v3 - v2) >> 2;
}

void sub_1DE493F8C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK11HALS_System18GetClockDeviceListEjRjPjP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE494000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE493FF0);
}

void ___ZNK11HALS_System12CopyTapByUIDEN10applesauce2CF9StringRefEP11HALS_Client_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRetain(*(a1 + 48));
  }

  v4 = v2;
  *(*(*(a1 + 32) + 8) + 24) = HALS_System::_CopyTapByUID(v3, &v4, *(a1 + 56));
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_1DE494090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_48c31_ZTSN10applesauce2CF9StringRefE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    CFRelease(v1);
  }
}

void *__copy_helper_block_e8_48c31_ZTSN10applesauce2CF9StringRefE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 48);
  if (v3)
  {
    result = CFRetain(*(a2 + 48));
  }

  v2[6] = v3;
  return result;
}

HALS_ObjectMap *HALS_System::_CopyTapByUID(uint64_t a1, const __CFString **a2, uint64_t a3)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  HALS_System::_GetVisibleTapList(a1, &__p, a3);
  v5 = __p;
  v6 = v13;
  while (v5 != v6)
  {
    v7 = *v5;
    HALS_Tap::GetUID(&cf, *(*v5 + 8));
    v8 = cf;
    v9 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cf, a2);
    if (v8)
    {
      CFRelease(v8);
    }

    if (v9 == kCFCompareEqualTo)
    {
      goto LABEL_8;
    }

    ++v5;
  }

  v7 = 0;
LABEL_8:
  HALS_ObjectMap::RetainObject(v7, v4);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v7;
}

void sub_1DE4941B0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE494184);
}

void sub_1DE4941BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZNK11HALS_System12CopyBoxByUIDEPK10__CFStringP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE494238(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE494228);
}

uint64_t ___ZNK11HALS_System10GetBoxListEjRjPjP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4942AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE49429CLL);
}

uint64_t ___ZNK11HALS_System30CopyTransportManagerByBundleIDEPK10__CFString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE494320(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE494310);
}

uint64_t ___ZNK11HALS_System23GetTransportManagerListEjRjPj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE494394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE494384);
}

uint64_t ___ZNK11HALS_System20CopyPlugInByBundleIDEPK10__CFString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE494408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4943F8);
}

uint64_t ___ZNK11HALS_System13GetPlugInListEjRjPj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE49447C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE49446CLL);
}

void sub_1DE4944C8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_System::GetPropertyDataSize(HALS_ObjectMap **this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, int *a5, HALS_Client *a6)
{
  v7 = this;
  mSelector = a3->mSelector;
  v9 = 4;
  if (a3->mSelector > 1886353255)
  {
    if (mSelector > 1953325672)
    {
      if (mSelector > 1969841249)
      {
        if (((mSelector - 1969841250) > 0x12 || ((1 << (mSelector - 98)) & 0x40007) == 0) && mSelector != 1970496882 && mSelector != 1986359923)
        {
          goto LABEL_69;
        }

        return v9;
      }

      if (mSelector == 1953325673)
      {
        return v9;
      }

      if (mSelector != 1953326883)
      {
        if (mSelector == 1953526563)
        {
          v51 = 0;
          v52 = &v51;
          v53 = 0x2000000000;
          LODWORD(v54) = 0;
          v57 = MEMORY[0x1E69E9820];
          v58 = 0x40000000;
          v59 = ___ZNK11HALS_System14GetTapListSizeEP11HALS_Client_block_invoke;
          v60 = &unk_1E8675CB0;
          v61 = &v51;
          v62 = this;
          v63 = a6;
          v20 = (*(*this + 8))(this);
          HALB_CommandGate::ExecuteCommand(v20, &v57);
          v21 = *(v52 + 24);
          _Block_object_dispose(&v51, 8);
          return (4 * v21);
        }

        goto LABEL_69;
      }

      v57 = 0;
      v58 = &v57;
      v59 = 0x4002000000;
      v60 = __Block_byref_object_copy__7820;
      v61 = __Block_byref_object_dispose__7821;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v51 = MEMORY[0x1E69E9820];
      v52 = 0x40000000;
      v53 = ___ZNK11HALS_System26GetNumberTransportManagersEv_block_invoke;
      v54 = &unk_1E8675720;
      v55 = &v57;
      v56 = this;
      v37 = (*(*this + 8))(this);
      HALB_CommandGate::ExecuteCommand(v37, &v51);
      v38 = *(v58 + 40);
      v39 = *(v58 + 48);
      if (v38 != v39)
      {
        v40 = 0;
        do
        {
          v41 = *v38++;
          v43 = *(v41 + 20);
          v42 = *(v41 + 24);
          v44 = v43 == v42;
          if (v43 == 1953656941)
          {
            v44 = 1;
          }

          v45 = v43 != v42 || v43 == 1953656941;
          v46 = v42 == 1953656941;
          if (v44)
          {
            v46 = v45;
          }

          v40 += v46;
        }

        while (v38 != v39);
        v9 = (4 * v40);
        goto LABEL_104;
      }

LABEL_98:
      v9 = 0;
      goto LABEL_104;
    }

    if (mSelector > 1920297315)
    {
      if (mSelector <= 1936224867)
      {
        if (mSelector == 1920297316)
        {
          return v9;
        }

        v10 = 1934587252;
      }

      else
      {
        if (mSelector == 1936224868 || mSelector == 1936483696)
        {
          return v9;
        }

        v10 = 1937010031;
      }

      goto LABEL_68;
    }

    if (mSelector > 1919186466)
    {
      if (mSelector == 1919186467)
      {
        v28 = 0;
        goto LABEL_100;
      }

      if (mSelector == 1919839344)
      {
        return 8;
      }
    }

    else
    {
      if (mSelector == 1886353256)
      {
        return v9;
      }

      if (mSelector == 1886548771)
      {
        NumberProcessObjects = HALS_System::GetNumberProcessObjects(this);
        return (4 * NumberProcessObjects);
      }
    }
  }

  else
  {
    if (mSelector > 1698776146)
    {
      if (mSelector <= 1870098019)
      {
        if (mSelector <= 1769302371)
        {
          if (mSelector == 1698776147)
          {
            return v9;
          }

          v10 = 1768845172;
          goto LABEL_68;
        }

        if (mSelector == 1769302372)
        {
          return v9;
        }

        if (mSelector != 1835758704)
        {
          v10 = 1835821926;
          goto LABEL_68;
        }

        return 8;
      }

      if (mSelector > 1886152482)
      {
        if (mSelector != 1886152483)
        {
          if (mSelector == 1886218606)
          {
            return v9;
          }

          v10 = 1886221684;
          goto LABEL_68;
        }

LABEL_85:
        NumberProcessObjects = HALS_System::GetNumberPlugIns(this);
        return (4 * NumberProcessObjects);
      }

      if (mSelector != 1870098020)
      {
        v10 = 1885954665;
LABEL_68:
        if (mSelector != v10)
        {
          goto LABEL_69;
        }

        return v9;
      }

      v33 = a5 == 0;
      if (a5 && a4 >= 4)
      {
        v34 = 1;
        do
        {
          v35 = *a5++;
          v33 = v35 == 1634757735;
        }

        while (v35 != 1634757735 && v34++ < a4 >> 2);
      }

      if (v33)
      {
        goto LABEL_85;
      }

      return 0;
    }

    if (mSelector > 1682533919)
    {
      if (mSelector <= 1684370978)
      {
        if (mSelector == 1682533920)
        {
          return v9;
        }

        v10 = 1682929012;
        goto LABEL_68;
      }

      if (mSelector != 1684370979)
      {
        if (mSelector == 1685288048)
        {
          return v9;
        }

        if (mSelector == 1685416292)
        {
          return 32;
        }

        goto LABEL_69;
      }

      platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
      v30 = (*(*platform_behaviors + 24))(platform_behaviors);
      if (v30)
      {
        v31 = HALS_PlatformBehaviors::get_platform_behaviors(v30);
        if ((*(*v31 + 24))(v31) != 1)
        {
          return 0;
        }

        this = v7;
        v28 = 1;
        v32 = 0;
LABEL_101:
        NumberProcessObjects = HALS_System::GetNumberDevices(this, v28, v32, a6);
        return (4 * NumberProcessObjects);
      }

      this = v7;
      v28 = 2;
LABEL_100:
      v32 = 1;
      goto LABEL_101;
    }

    if (mSelector <= 1667461736)
    {
      if (mSelector == 1651074160)
      {
        return v9;
      }

      if (mSelector != 1651472419)
      {
        goto LABEL_69;
      }

      v57 = 0;
      v58 = &v57;
      v59 = 0x4002000000;
      v60 = __Block_byref_object_copy__7820;
      v61 = __Block_byref_object_dispose__7821;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v51 = MEMORY[0x1E69E9820];
      v52 = 0x40000000;
      v53 = ___ZNK11HALS_System14GetNumberBoxesEP11HALS_Client_block_invoke;
      v54 = &unk_1E8675798;
      v55 = &v57;
      v56 = this;
      v14 = (*(*this + 8))(this);
      HALB_CommandGate::ExecuteCommand(v14, &v51);
      v15 = *(v58 + 40);
      v16 = *(v58 + 48);
      if (v15 == v16)
      {
        v9 = 0;
      }

      else
      {
        v17 = 0;
        do
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          HALS_DeviceManager::CopyBoxList(*v15, &v48, a6);
          v17 += (v49 - v48) >> 3;
          HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v48, v18);
          ++v15;
        }

        while (v15 != v16);
        v9 = (4 * v17);
      }

LABEL_104:
      _Block_object_dispose(&v57, 8);
      HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v62, v47);
      return v9;
    }

    if (mSelector == 1667461737)
    {
      return 8;
    }

    if (mSelector == 1668049699)
    {
      v57 = 0;
      v58 = &v57;
      v59 = 0x4002000000;
      v60 = __Block_byref_object_copy__7820;
      v61 = __Block_byref_object_dispose__7821;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v51 = MEMORY[0x1E69E9820];
      v52 = 0x40000000;
      v53 = ___ZNK11HALS_System21GetNumberClockDevicesEP11HALS_Client_block_invoke;
      v54 = &unk_1E8675810;
      v55 = &v57;
      v56 = this;
      v22 = (*(*this + 8))(this);
      HALB_CommandGate::ExecuteCommand(v22, &v51);
      v23 = *(v58 + 40);
      v24 = *(v58 + 48);
      if (v23 != v24)
      {
        v25 = 0;
        do
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          HALS_DeviceManager::CopyClockDeviceList(*v23, &v48);
          v25 += (v49 - v48) >> 3;
          HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v48, v26);
          ++v23;
        }

        while (v23 != v24);
        v9 = (4 * v25);
        goto LABEL_104;
      }

      goto LABEL_98;
    }
  }

LABEL_69:

  return HALS_Object::GetPropertyDataSize(this, a2, a3);
}

void sub_1DE494D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v11 + 40), v13);
  _Unwind_Resume(a1);
}

uint64_t HALS_System::GetNumberPlugIns(HALS_System *this)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x4002000000;
  v22 = __Block_byref_object_copy__7820;
  v23 = __Block_byref_object_dispose__7821;
  memset(v24, 0, sizeof(v24));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = ___ZNK11HALS_System16GetNumberPlugInsEv_block_invoke;
  v18[3] = &unk_1E8675680;
  v18[4] = &v19;
  v18[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v18);
  v2 = v20[5];
  v3 = v20[6];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    LODWORD(v4) = 0;
    do
    {
      v5 = *v2++;
      v7 = *(v5 + 20);
      v6 = *(v5 + 24);
      v9 = v7 == 1634757735 || v7 == 1953656941;
      v11 = v6 == 1634757735 || v6 == 1953656941;
      v12 = v7 == v6;
      v13 = v7 != v6 || v9;
      if (!v12 && v7 != 1634757735 && v7 != 1953656941)
      {
        v13 = v11;
      }

      v4 = (v4 + v13);
    }

    while (v2 != v3);
  }

  _Block_object_dispose(&v19, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v24, v16);
  return v4;
}

void sub_1DE494F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v7 + 40), v9);
  _Unwind_Resume(a1);
}

void ___ZNK11HALS_System14GetTapListSizeEP11HALS_Client_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  HALS_System::_GetVisibleTapList(v2, &v6, v3);
  v4 = v6;
  v5 = v7;
  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  *(*(a1[4] + 8) + 24) = (v5 - v4) >> 3;
}

void sub_1DE494FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZNK11HALS_System21GetNumberClockDevicesEP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE49502C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE49501CLL);
}

uint64_t ___ZNK11HALS_System14GetNumberBoxesEP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4950A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE495090);
}

uint64_t ___ZNK11HALS_System26GetNumberTransportManagersEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE495114(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE495104);
}

uint64_t ___ZNK11HALS_System16GetNumberPlugInsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE495188(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE495178);
}

uint64_t HALS_System::IsPropertySettable(HALS_System *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  result = 1;
  if (a3->mSelector > 1886353255)
  {
    if (mSelector > 1953325672)
    {
      if (mSelector <= 1969841250)
      {
        if (mSelector <= 1953526562)
        {
          if (mSelector == 1953325673)
          {
            return 0;
          }

          v6 = 1953326883;
          goto LABEL_55;
        }

        if (mSelector == 1953526563)
        {
          return 0;
        }

        v8 = 25698;
      }

      else
      {
        if (mSelector > 1969841267)
        {
          if (mSelector == 1969841268 || mSelector == 1970496882)
          {
            return 0;
          }

          v6 = 1986359923;
          goto LABEL_55;
        }

        if (mSelector == 1969841251)
        {
          return 0;
        }

        v8 = 25700;
      }

      v6 = v8 | 0x75690000;
      goto LABEL_55;
    }

    if (mSelector <= 1920297315)
    {
      if (mSelector <= 1919186466)
      {
        if (mSelector == 1886353256)
        {
          return result;
        }

        v6 = 1886548771;
        goto LABEL_55;
      }

      if (mSelector == 1919186467)
      {
        return 0;
      }

      v7 = 1919839344;
    }

    else if (mSelector <= 1936224867)
    {
      if (mSelector == 1920297316)
      {
        return 0;
      }

      v7 = 1934587252;
    }

    else
    {
      if (mSelector == 1936224868)
      {
        if (!a4)
        {
          return 0;
        }

        return HALS_ClientEntitlements::HasEntitlementWithBooleanValue((a4 + 296), @"com.apple.private.audio.default-shared-device");
      }

      if (mSelector == 1936483696)
      {
        return result;
      }

      v7 = 1937010031;
    }

LABEL_48:
    if (mSelector != v7)
    {
      return HALS_Object::IsPropertySettable(1, a2, a3);
    }

    return result;
  }

  if (mSelector > 1698776146)
  {
    if (mSelector <= 1835821925)
    {
      if (mSelector > 1769302371)
      {
        if (mSelector == 1769302372)
        {
          return 0;
        }

        v6 = 1835758704;
      }

      else
      {
        if (mSelector == 1698776147)
        {
          return result;
        }

        v6 = 1768845172;
      }

      goto LABEL_55;
    }

    if (mSelector <= 1886152482)
    {
      if (mSelector == 1835821926)
      {
        return 0;
      }

      v6 = 1885954665;
      goto LABEL_55;
    }

    if (mSelector == 1886152483)
    {
      return 0;
    }

    if (mSelector == 1886218606)
    {
      return result;
    }

    v7 = 1886221684;
    goto LABEL_48;
  }

  if (mSelector <= 1682533919)
  {
    if (mSelector > 1667461736)
    {
      if (mSelector == 1667461737)
      {
        return AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(1);
      }

      v6 = 1668049699;
      goto LABEL_55;
    }

    if (mSelector == 1651074160)
    {
      return 0;
    }

    v6 = 1651472419;
LABEL_55:
    if (mSelector == v6)
    {
      return 0;
    }

    return HALS_Object::IsPropertySettable(1, a2, a3);
  }

  if (mSelector <= 1684370978)
  {
    if (mSelector == 1682533920)
    {
      return result;
    }

    v7 = 1682929012;
    goto LABEL_48;
  }

  if (mSelector == 1684370979)
  {
    return 0;
  }

  if (mSelector != 1685288048)
  {
    v6 = 1685416292;
    goto LABEL_55;
  }

  return result;
}

uint64_t HALS_System::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 1;
  if (*a3 > 1886218605)
  {
    if (v3 > 1937010030)
    {
      if (v3 > 1969841249)
      {
        if (((v3 - 1969841250) > 0x12 || ((1 << (v3 - 98)) & 0x40007) == 0) && v3 != 1970496882 && v3 != 1986359923)
        {
          return 0;
        }

        return result;
      }

      if (v3 > 1953326882)
      {
        if (v3 == 1953326883)
        {
          return result;
        }

        v5 = 1953526563;
      }

      else
      {
        if (v3 == 1937010031)
        {
          return result;
        }

        v5 = 1953325673;
      }
    }

    else if (v3 <= 1919839343)
    {
      if (v3 <= 1886353255)
      {
        if (v3 == 1886218606)
        {
          return result;
        }

        v5 = 1886221684;
      }

      else
      {
        if (v3 == 1886353256 || v3 == 1886548771)
        {
          return result;
        }

        v5 = 1919186467;
      }
    }

    else if (v3 > 1936224867)
    {
      if (v3 == 1936224868 || v3 == 1936483696)
      {
        return result;
      }

      v5 = 1937007734;
    }

    else
    {
      if (v3 == 1919839344 || v3 == 1920297316)
      {
        return result;
      }

      v5 = 1934587252;
    }
  }

  else if (v3 <= 1685416291)
  {
    if (v3 > 1668049698)
    {
      if (v3 <= 1682929011)
      {
        if (v3 == 1668049699)
        {
          return result;
        }

        v5 = 1682533920;
      }

      else
      {
        if (v3 == 1682929012 || v3 == 1684370979)
        {
          return result;
        }

        v5 = 1685288048;
      }
    }

    else if (v3 <= 1651472418)
    {
      if (v3 == 1650682995)
      {
        return result;
      }

      v5 = 1651074160;
    }

    else
    {
      if (v3 == 1651472419)
      {
        return result;
      }

      if (v3 == 1667461737)
      {
        return AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(1);
      }

      v5 = 1668047219;
    }
  }

  else if (v3 <= 1835758703)
  {
    if (v3 <= 1768174191)
    {
      if (v3 == 1685416292)
      {
        return result;
      }

      v5 = 1698776147;
    }

    else
    {
      if (v3 == 1768174192 || v3 == 1768845172)
      {
        return result;
      }

      v5 = 1769302372;
    }
  }

  else if (v3 > 1870098019)
  {
    if (v3 == 1870098020 || v3 == 1885954665)
    {
      return result;
    }

    v5 = 1886152483;
  }

  else
  {
    if (v3 == 1835758704 || v3 == 1835821926)
    {
      return result;
    }

    v5 = 1869638759;
  }

  if (v3 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t HALS_System::GetMIGDispatchQueue(HALS_System *this)
{
  return *(this + 24);
}

{
  return *(this + 24);
}

uint64_t HALS_System::GetCommandGate(HALS_System *this)
{
  return *(this + 22);
}

{
  return *(this + 22);
}

void HALS_System::MonitorCommandGate(uint64_t a1, uint64_t *a2)
{
  HALS_System::GetHealthObserver(&v5);
  if (v5)
  {
    v4 = *a2;
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1DE495A4C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  HALB_Mutex::Locker::~Locker(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

void HALS_System::GetHealthObserver(HALS_System *this)
{
  v4[0] = 0;
  v4[1] = 0;
  HALS_System::GetInstance(&v5, 0, v4);
  if (v5)
  {
    v2 = *(v5 + 168);
    *this = *(v5 + 160);
    *(this + 1) = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }

  v3 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t HALHealth::DurationAdapter<HALB_CommandGate>::is_healthy(void *a1)
{
  v2 = a1[2];
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
  v5 = a1[1];
  if (v5)
  {
    v6 = atomic_load((v5 + 96));
    if (v6)
    {
      v7 = (std::chrono::steady_clock::now().__d_.__rep_ - v6) / 1000000;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 < a1[3];
  }

  else
  {
    v8 = 1;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v8;
}

void HALHealth::DurationAdapter<HALB_CommandGate>::~DurationAdapter(void *a1)
{
  *a1 = &unk_1F5972D80;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *HALHealth::DurationAdapter<HALB_CommandGate>::~DurationAdapter(void *a1)
{
  *a1 = &unk_1F5972D80;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<HALHealth::DurationAdapter<HALB_CommandGate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972CC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_System::_Deactivate(HALS_System *this)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v2 = *(this + 213);
  v3 = *(this + 214);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    do
    {
      LODWORD(v19) = *(*v2 + 16);
      std::vector<unsigned int>::push_back[abi:ne200100](&v16, &v19);
      v2 += 8;
    }

    while (v2 != v3);
    v4 = v16;
    v5 = v17;
    if (v16 != v17)
    {
      v6 = v16;
      do
      {
        HALS_System::_DestroyIOContext(this, 0, *v6++);
      }

      while (v6 != v5);
    }
  }

  memset(v15, 0, sizeof(v15));
  v7 = *(this + 205);
  v8 = *(this + 206);
  v19 = v15;
  LOBYTE(v20) = 0;
  if (v8 != v7)
  {
    std::vector<HALS_Releaser<HALS_Client>>::__vallocate[abi:ne200100](v15, (v8 - v7) >> 3);
  }

  v19 = v15;
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (v4)
  {
    v17 = v4;
    operator delete(v4);
  }

  if (*(this + 240))
  {
    v19 = (this + 1928);
    LODWORD(v20) = HALB_Mutex::Lock((this + 1928));
    CFRunLoopStop(*(this + 240));
    *(this + 2208) = 1;
    HALB_Guard::Wait((this + 1928));
    HALB_Guard::Locker::~Locker(&v19);
  }

  v9 = *(this + 227);
  if (!v9)
  {
    CAVerboseAbort();
    goto LABEL_22;
  }

  (*(*v9 + 24))(v9);
  v11 = *(this + 201);
  if (v11)
  {
    *(this + 201) = 0;
    (*(*v11 + 8))(v11);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v12 = *(this + 198);
  v13 = *(this + 199);
  v14 = v13 - v12;
  if (v13 != v12)
  {
    if (!((v14 >> 3) >> 61))
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v14 >> 3);
    }

LABEL_22:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v19, v10);
  *(this + 2) = 0;
}

void sub_1DE496054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](va);
  if (v9)
  {
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void HALS_System::DeviceManagerDestroyed(HALS_System *this, HALS_DeviceManager *a2)
{
  (*(*a2 + 8))(a2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN11HALS_System22DeviceManagerDestroyedEP18HALS_DeviceManager_block_invoke;
  v5[3] = &__block_descriptor_tmp_94_7982;
  v5[4] = this;
  v5[5] = a2;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v5);
}

void sub_1DE496198(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE496188);
}

void ___ZN11HALS_System22DeviceManagerDestroyedEP18HALS_DeviceManager_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1584);
  v4 = *(v2 + 1592);
  if (v3 != v4)
  {
    while (*v3 != *(a1 + 40))
    {
      v3 += 8;
      if (v3 == v4)
      {
        v3 = *(v2 + 1592);
        break;
      }
    }
  }

  if (v4 == v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "HALS_System.cpp";
      v10 = 1024;
      v11 = 2347;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_System::DeviceManagerDestroyed: unable to destroy old device manager.", &v8, 0x12u);
    }
  }

  else
  {
    v5 = v3 + 8;
    v6 = v4 - (v3 + 8);
    if (v4 != v3 + 8)
    {
      memmove(v3, v5, v4 - (v3 + 8));
    }

    *(v2 + 1592) = &v3[v6];
    HALS_ObjectMap::ReleaseObject(*(a1 + 40), v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void HALS_System::_DestroyIOContext(HALS_System *this, HALS_Client *a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(this + 213);
  v4 = *(this + 214);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *v3;
      if (*(*v3 + 4) == a3)
      {
        break;
      }

      if (++v3 == v4)
      {
        goto LABEL_9;
      }
    }

    v8 = v3;
    if (v3 != v4)
    {
      if (a2 && **(v5 + 9) != *(a2 + 4))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v10 = "HALS_System.cpp";
          v11 = 1024;
          v12 = 3445;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOEngine::_DestroyIOContext: the client does not own the IO context being destroyed", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 560492391;
      }

      remove_context_helper(a3, (this + 1704), &v8);
    }
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
}