void sub_2416EA2E8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2416EA6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ASDTIOPAudioVTDevice;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2416EAA78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

ASDT::IOPAudio::VoiceTrigger::UserClient *ASDT::IOPAudio::VoiceTrigger::UserClient::UserClient(ASDT::IOPAudio::VoiceTrigger::UserClient *this)
{
  v2 = ASDT::IOUserClient::IOUserClient(this);
  *v2 = &unk_285357EC8;
  std::__shared_mutex_base::__shared_mutex_base((v2 + 368));
  *(this + 536) = 0;
  *(this + 68) = 0;
  return this;
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void OUTLINED_FUNCTION_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_2416EAF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ASDT::IOPAudio::IsolatedIOBuffer::UserClient::CopyIdentifier(ASDT::IOPAudio::IsolatedIOBuffer::UserClient *this@<X0>, CFTypeRef *a2@<X8>)
{
  v8 = 0;
  cf = CFStringCreateWithBytes(0, "identifier", 10, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(this, &cf, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    *a2 = v8;
  }

  else
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::IsolatedIOBuffer::UserClient::CopyIdentifier(this);
    }

    *a2 = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_2416EB234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416EB2E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetStreamDescription(ASDT::IOPAudio::IsolatedIOBuffer::UserClient *this, const AudioStreamBasicDescription *a2, unsigned int a3)
{
  v8 = a3;
  ASDT::IOAudio2::Helpers::AudioStreamBasicDescriptionToIOAudio2();
  v4 = ASDT::IOUserClient::CallMethod(this, 0, &v8, 1, v7, 40, 0, 0, 0, 0, 0);
  if (v4)
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetStreamDescription(this);
    }
  }

  return v4 == 0;
}

BOOL ASDT::IOPAudio::IsolatedIOBuffer::UserClient::GetStreamDescription(ASDT::IOPAudio::IsolatedIOBuffer::UserClient *this, AudioStreamBasicDescription *a2)
{
  v6 = 40;
  if (ASDT::IOUserClient::CallMethod(this, 1, 0, 0, 0, 0, 0, 0, v7, &v6, 1))
  {
    v3 = ASDTIOPLogType();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::IOPAudio::IsolatedIOBuffer::UserClient::GetStreamDescription(this);
    return 0;
  }

  if (v6 <= 0x27)
  {
    v5 = ASDTIOPLogType();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::IOPAudio::IsolatedIOBuffer::UserClient::GetStreamDescription(this);
    return 0;
  }

  ASDT::IOAudio2::Helpers::AudioStreamBasicDescriptionFromIOAudio2();
  return 1;
}

BOOL ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetupIO(ASDT::IOPAudio::IsolatedIOBuffer::UserClient *this)
{
  v2 = ASDT::IOUserClient::CallMethod(this, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v2)
  {
    v3 = ASDTIOPLogType();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetupIO(this);
    }
  }

  return v2 == 0;
}

BOOL ASDT::IOPAudio::IsolatedIOBuffer::UserClient::TeardownIO(ASDT::IOPAudio::IsolatedIOBuffer::UserClient *this)
{
  v2 = ASDT::IOUserClient::CallMethod(this, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v2)
  {
    v3 = ASDTIOPLogType();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::IsolatedIOBuffer::UserClient::TeardownIO(this);
    }
  }

  return v2 == 0;
}

BOOL ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetupClientIO(ASDT::IOPAudio::IsolatedIOBuffer::UserClient *this, unint64_t a2, unsigned int a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v8[1] = a3;
  v4 = ASDT::IOUserClient::CallMethod(this, 4, v8, 2, 0, 0, 0, 0, 0, 0, 0);
  if (v4)
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetupClientIO(this);
    }
  }

  result = v4 == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ASDT::IOPAudio::IsolatedIOBuffer::UserClient::TeardownClientIO(ASDT::IOPAudio::IsolatedIOBuffer::UserClient *this, unint64_t a2)
{
  v6 = a2;
  v3 = ASDT::IOUserClient::CallMethod(this, 5, &v6, 1, 0, 0, 0, 0, 0, 0, 0);
  if (v3)
  {
    v4 = ASDTIOPLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::IsolatedIOBuffer::UserClient::TeardownClientIO(this);
    }
  }

  return v3 == 0;
}

BOOL ASDT::IOPAudio::IsolatedIOBuffer::UserClient::ReadInput(ASDT::IOPAudio::IsolatedIOBuffer::UserClient *this)
{
  v2 = ASDT::IOUserClient::CallTrap3(this);
  if (v2)
  {
    v3 = ASDTIOPLogType();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::IsolatedIOBuffer::UserClient::ReadInput(this);
    }
  }

  return v2 == 0;
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t OUTLINED_FUNCTION_0_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 39);
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void ASDT::IOPAudio::LPMic::UserClient::CopyIdentifier(ASDT::IOPAudio::LPMic::UserClient *this@<X0>, CFTypeRef *a2@<X8>)
{
  v8 = 0;
  cf = CFStringCreateWithBytes(0, "identifier", 10, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(this, &cf, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    *a2 = v8;
  }

  else
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::IsolatedIOBuffer::UserClient::CopyIdentifier(this);
    }

    *a2 = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_2416EC520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

CFStringRef *applesauce::CF::StringRef::StringRef(CFStringRef *a1, const UInt8 *a2, CFIndex a3)
{
  if (a2)
  {
    v4 = CFStringCreateWithBytes(0, a2, a3, 0x8000100u, 0);
    *a1 = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEDDF0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t ASDT::IOPAudio::LPMic::UserClient::GetStreamDescription(ASDT::IOPAudio::LPMic::UserClient *this, StreamDescription *a2)
{
  v28 = 0;
  cf = CFStringCreateWithBytes(0, "input stream description", 24, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = ASDT::IOUserClient::CopyProperty<applesauce::CF::DictionaryRef>(this, &cf, &v28);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 1) == 0)
  {
    v17 = ASDTIOPLogType();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::LPMic::UserClient::GetStreamDescription(this);
    }

    goto LABEL_35;
  }

  *&a2->var0 = 0u;
  *&a2->var3 = 0u;
  *&a2->var7 = 0u;
  a2->var1 = 1819304813;
  a2->var4 = 1;
  cf = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
  if (!cf)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](v20, "Could not construct");
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(v28, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v6 & 0x100000000) == 0)
  {
    goto LABEL_35;
  }

  a2->var0 = v6;
  if (!v28)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](v21, "Could not construct");
    __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  cf = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
  if (!cf)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](v22, "Could not construct");
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(v28, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v7 & 0x100000000) == 0)
  {
    goto LABEL_35;
  }

  a2->var2 = v7 & 0x1F;
  if (!v28)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  cf = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
  if (!cf)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](v24, "Could not construct");
    __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(v28, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v8 & 0x100000000) == 0)
  {
    goto LABEL_35;
  }

  a2->var6 = v8;
  if (!v28)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](v25, "Could not construct");
    __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  cf = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
  if (!cf)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(v28, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v9 & 0x100000000) == 0 || (a2->var7 = v9, v10 = applesauce::CF::DictionaryRef::operator->(&v28), applesauce::CF::StringRef::StringRef(&cf, "bytes per frame", 15), v11 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*v10, &cf), applesauce::CF::StringRef::~StringRef(&cf), (v11 & 0x100000000) == 0))
  {
LABEL_35:
    v16 = 0;
    goto LABEL_36;
  }

  a2->var5 = v11;
  a2->var3 = a2->var4 * v11;
  v12 = applesauce::CF::DictionaryRef::operator->(&v28);
  applesauce::CF::StringRef::StringRef(&cf, "latency in frames", 17);
  v13 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*v12, &cf);
  applesauce::CF::StringRef::~StringRef(&cf);
  if ((v13 & 0x100000000) != 0)
  {
    a2->var9 = v13;
  }

  v14 = applesauce::CF::DictionaryRef::operator->(&v28);
  applesauce::CF::StringRef::StringRef(&cf, "driver safety offset in frames", 30);
  v15 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*v14, &cf);
  applesauce::CF::StringRef::~StringRef(&cf);
  if ((v15 & 0x100000000) != 0)
  {
    a2->var10 = v15;
  }

  v16 = 1;
LABEL_36:
  if (v28)
  {
    CFRelease(v28);
  }

  return v16;
}

void sub_2416ECB08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::CopyProperty<applesauce::CF::DictionaryRef>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416ECC38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void *applesauce::CF::DictionaryRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

uint64_t ASDT::IOPAudio::LPMic::UserClient::GetClockDomain(ASDT::IOPAudio::LPMic::UserClient *this)
{
  v7 = 0;
  cf = CFStringCreateWithBytes(0, "clock domain", 12, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = ASDT::IOUserClient::CopyProperty<unsigned int>(this, &cf, &v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    return v7;
  }

  v4 = ASDTIOPLogType();
  result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ASDT::IOPAudio::LPMic::UserClient::GetClockDomain(this);
    return 0;
  }

  return result;
}

uint64_t ASDT::IOUserClient::CopyProperty<unsigned int>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416ECE38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOPAudio::LPMic::UserClient::GetZeroTimeStampInterval(ASDT::IOPAudio::LPMic::UserClient *this)
{
  v7 = 0;
  cf = CFStringCreateWithBytes(0, "zero timestamp wrap frames", 26, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = ASDT::IOUserClient::CopyProperty<unsigned int>(this, &cf, &v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    return v7;
  }

  v4 = ASDTIOPLogType();
  result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ASDT::IOPAudio::LPMic::UserClient::GetZeroTimeStampInterval(this);
    return 0;
  }

  return result;
}

uint64_t ASDT::IOPAudio::LPMic::UserClient::GetRingBufferSize(ASDT::IOPAudio::LPMic::UserClient *this)
{
  v7 = 0;
  cf = CFStringCreateWithBytes(0, "io buffer frame size", 20, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = ASDT::IOUserClient::CopyProperty<unsigned int>(this, &cf, &v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    return v7;
  }

  v4 = ASDTIOPLogType();
  result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ASDT::IOPAudio::LPMic::UserClient::GetRingBufferSize(this);
    return 0;
  }

  return result;
}

uint64_t ASDT::IOPAudio::LPMic::UserClient::GetHistoricDataSupported(ASDT::IOPAudio::LPMic::UserClient *this)
{
  v8 = 0;
  cf = CFStringCreateWithBytes(0, "historic data supported", 23, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = ASDT::IOUserClient::CopyProperty<BOOL>(this, &cf, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    v3 = v8;
  }

  else
  {
    v4 = ASDTIOPLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::LPMic::UserClient::GetHistoricDataSupported(this);
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t ASDT::IOUserClient::CopyProperty<BOOL>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416ED208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOPAudio::LPMic::UserClient::StartIO(ASDT::IOPAudio::LPMic::UserClient *this)
{
  v2 = ASDT::IOUserClient::CallMethod(this, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v2)
  {
    v3 = ASDTIOPLogType();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::LPMic::UserClient::StartIO(this);
    }
  }

  return v2 == 0;
}

BOOL ASDT::IOPAudio::LPMic::UserClient::StopIO(ASDT::IOPAudio::LPMic::UserClient *this)
{
  v2 = ASDT::IOUserClient::CallMethod(this, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v2)
  {
    v3 = ASDTIOPLogType();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::LPMic::UserClient::StopIO(this);
    }
  }

  return v2 == 0;
}

BOOL ASDT::IOPAudio::LPMic::UserClient::GetControlValue(ASDT::IOUserClient *a1, unsigned int a2, _DWORD *a3)
{
  v10 = a2;
  v9 = 0;
  v8 = 1;
  if (ASDT::IOUserClient::CallMethod(a1, 2, &v10, 1, 0, 0, &v9, &v8, 0, 0, 1))
  {
    v5 = ASDTIOPLogType();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::IOPAudio::LPMic::UserClient::GetControlValue(a1);
    return 0;
  }

  if (v8 == 1)
  {
    *a3 = v9;
    return 1;
  }

  v7 = ASDTIOPLogType();
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ASDT::IOPAudio::LPMic::UserClient::GetControlValue(a1);
    return 0;
  }

  return result;
}

BOOL ASDT::IOPAudio::LPMic::UserClient::SetControlValue(ASDT::IOUserClient *a1, unsigned int a2, unsigned int a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v8[1] = a3;
  v4 = ASDT::IOUserClient::CallMethod(a1, 3, v8, 2, 0, 0, 0, 0, 0, 0, 1);
  if (v4)
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::LPMic::UserClient::SetControlValue(a1);
    }
  }

  result = v4 == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void ASDT::IOPAudio::LPMic::UserClient::MapEngineStatus(ASDT::IOPAudio::LPMic::UserClient *this@<X0>, uint64_t a2@<X8>)
{
  ASDT::IOUserClient::MapMemory(this);
  if (*(a2 + 104))
  {
    if (*(a2 + 112) != 32)
    {
      v4 = ASDTIOPLogType();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOPAudio::LPMic::UserClient::MapEngineStatus(this);
      }

      ASDT::IOMemoryMap::Release(a2);
    }
  }

  else
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::LPMic::UserClient::MapEngineStatus(this);
    }
  }
}

uint64_t ASDT::IOPAudio::LPMic::EngineStatus::Snapshot(ASDT::IOPAudio::LPMic::EngineStatus *this, EngineStatus *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v10 = *this;
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = *(this + 3);
  result = 1;
  a2->var0 = v2;
  a2->var1 = v3;
  a2->var2 = v4;
  a2->var3 = v5;
  return result;
}

const __CFDictionary *applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(const __CFDictionary *a1, const void **a2)
{
  result = applesauce::CF::details::at_key<applesauce::CF::StringRef>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<unsigned int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

const __CFDictionary *applesauce::CF::details::at_key<applesauce::CF::StringRef>(const __CFDictionary *result, const void **a2)
{
  if (result)
  {
    v2 = *a2;
    if (v2)
    {
      return CFDictionaryGetValue(result, v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<unsigned int>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<unsigned int>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::treat_as_BOOL_for_convert_as<unsigned int>(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    Value = CFBooleanGetValue(a1);
    v4 = 0x100000000;
  }

  else
  {
    Value = 0;
    v4 = 0;
  }

  return v4 | Value;
}

uint64_t applesauce::CF::details::number_convert_as<unsigned int>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_21;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberSInt32Type;
      goto LABEL_29;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_29;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_18;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_21:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      LOBYTE(v14) = LOBYTE(valuePtr);
      if (!Value)
      {
        LOBYTE(v14) = 0;
      }

      v16 = SLOBYTE(valuePtr) < 0 && Value != 0;
      v17.i64[0] = Value != 0;
      v17.i64[1] = v16 << 63 >> 63;
      break;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberShortType;
LABEL_14:
      if (CFNumberGetValue(v12, v13, &valuePtr))
      {
        v14 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_32;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberIntType;
      goto LABEL_29;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_29;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_29;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = *&valuePtr;
      goto LABEL_30;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_18;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_29;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_29:
      v8 = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_30;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_18:
      v8 = CFNumberGetValue(v10, v11, &valuePtr);
      v9 = valuePtr;
LABEL_30:
      v14 = v9 | 0x100000000;
      if (!v8)
      {
        v14 = 0;
      }

LABEL_32:
      v17 = vshlq_u64(vdupq_n_s64(v14), xmmword_2416FB180);
      break;
    default:
      LOBYTE(v14) = 0;
      v17 = 0uLL;
      break;
  }

  v18 = vandq_s8(vshlq_u64(v17, xmmword_2416FB190), xmmword_2416FB1A0);
  return v18.i64[0] | v14 | v18.i64[1];
}

void sub_2416EE2FC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ASDT::IOPAudio::IOBuffer::UserClient::~UserClient(ASDT::IOPAudio::IOBuffer::UserClient *this)
{
  ASDT::IOUserClient::~IOUserClient(this);

  JUMPOUT(0x245CEDEB0);
}

uint64_t ASDT::IOPAudio::VoiceTrigger::UserClient::UserClient(uint64_t a1, uint64_t a2)
{
  v4 = ASDT::IOUserClient::IOUserClient();
  *v4 = &unk_285357EC8;
  std::__shared_mutex_base::__shared_mutex_base((v4 + 368));
  *(a1 + 536) = 0;
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 536) = 0;
  *(a2 + 544) = 0;
  return a1;
}

uint64_t ASDT::IOPAudio::VoiceTrigger::UserClient::MoveDataMembers(uint64_t this, UserClient *a2)
{
  *(this + 536) = *(a2 + 536);
  *(this + 544) = *(a2 + 68);
  *(a2 + 536) = 0;
  *(a2 + 68) = 0;
  return this;
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::~UserClient(ASDT::IOPAudio::VoiceTrigger::UserClient *this)
{
  *this = &unk_285357EC8;
  v2 = *(this + 68);
  if (v2)
  {
    _Block_release(v2);
  }

  ASDT::IOPAudio::VoiceTrigger::UserClient::Close(this);
  std::condition_variable::~condition_variable(this + 10);
  std::condition_variable::~condition_variable(this + 9);
  std::mutex::~mutex((this + 368));

  ASDT::IOUserClient::~IOUserClient(this);
}

{
  ASDT::IOPAudio::VoiceTrigger::UserClient::~UserClient(this);

  JUMPOUT(0x245CEDEB0);
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::Close(ASDT::IOPAudio::VoiceTrigger::UserClient *this)
{
  v2 = (this + 368);
  std::__shared_mutex_base::lock((this + 368));
  if (*(this + 536) == 1)
  {
    if (ASDT::IOUserClient::CallMethod(this, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      v3 = ASDTIOPLogType();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOPAudio::VoiceTrigger::UserClient::Close(this);
      }
    }

    *(this + 536) = 0;
  }

  std::__shared_mutex_base::unlock(v2);
}

void sub_2416EE88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOPAudio::VoiceTrigger::UserClient::operator=(uint64_t a1, uint64_t a2)
{
  ASDT::IOUserClient::operator=();
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 536) = 0;
  *(a2 + 544) = 0;
  return a1;
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::VTExclusiveLock(ASDT::IOPAudio::VoiceTrigger::UserClient *this@<X0>, uint64_t a2@<X8>)
{
  v2 = (this + 368);
  *a2 = v2;
  *(a2 + 8) = 1;
  std::__shared_mutex_base::lock(v2);
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::VTSharedLock(ASDT::IOPAudio::VoiceTrigger::UserClient *this@<X0>, uint64_t a2@<X8>)
{
  v2 = (this + 368);
  *a2 = v2;
  *(a2 + 8) = 1;
  std::__shared_mutex_base::lock_shared(v2);
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::CopyIdentifier(ASDT::IOPAudio::VoiceTrigger::UserClient *this@<X0>, CFTypeRef *a2@<X8>)
{
  v8 = 0;
  cf = CFStringCreateWithBytes(0, "identifier", 10, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(this, &cf, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    *a2 = v8;
  }

  else
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::VoiceTrigger::UserClient::CopyIdentifier(this);
    }

    *a2 = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_2416EEA54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOPAudio::VoiceTrigger::UserClient::GetIsConfigured(ASDT::IOPAudio::VoiceTrigger::UserClient *this)
{
  v11 = 0;
  v10 = 0;
  cf = CFStringCreateWithBytes(0, "VTConfigured", 12, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = ASDT::IOUserClient::CopyProperty<BOOL>(this, &cf, &v11);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    return v11;
  }

  else
  {
    cf = CFStringCreateWithBytes(0, "VTConfigured", 12, 0x8000100u, 0);
    if (!cf)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEDDF0](v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v4 = ASDT::IOUserClient::CopyProperty<unsigned int>(this, &cf, &v10);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v4)
    {
      return v10 != 0;
    }

    else
    {
      v5 = ASDTIOPLogType();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        ASDT::IOPAudio::VoiceTrigger::UserClient::GetIsConfigured(this);
      }

      return 0;
    }
  }
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::CopyConfigurationInfo(ASDT::IOPAudio::VoiceTrigger::UserClient *this@<X0>, CFTypeRef *a2@<X8>)
{
  v8 = 0;
  cf = CFStringCreateWithBytes(0, "VTConfiguration", 15, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = ASDT::IOUserClient::CopyProperty<applesauce::CF::DictionaryRef>(this, &cf, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    *a2 = v8;
  }

  else
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      ASDT::IOPAudio::VoiceTrigger::UserClient::CopyConfigurationInfo(this);
    }

    *a2 = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_2416EED70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOPAudio::VoiceTrigger::UserClient::SetConfigurationInfo(ASDT::IOPAudio::VoiceTrigger::UserClient *this, const applesauce::CF::DictionaryRef *a2)
{
  cf = CFStringCreateWithBytes(0, "VTConfiguration", 15, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = ASDT::IOUserClient::SetProperty(this, &cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void sub_2416EEEA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::CopyEventInfo(ASDT::IOPAudio::VoiceTrigger::UserClient *this@<X0>, CFTypeRef *a2@<X8>)
{
  v8 = 0;
  cf = CFStringCreateWithBytes(0, "VTEventInfo", 11, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = ASDT::IOUserClient::CopyProperty<applesauce::CF::DictionaryRef>(this, &cf, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    *a2 = v8;
  }

  else
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      ASDT::IOPAudio::VoiceTrigger::UserClient::CopyConfigurationInfo(this);
    }

    *a2 = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_2416EEFE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOPAudio::VoiceTrigger::UserClient::Open(ASDT::IOPAudio::VoiceTrigger::UserClient *this)
{
  v2 = (this + 368);
  v3 = 1;
  std::__shared_mutex_base::lock((this + 368));
  if ((*(this + 536) & 1) == 0)
  {
    if (ASDT::IOUserClient::CallMethod(this, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      v4 = ASDTIOPLogType();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOPAudio::VoiceTrigger::UserClient::Open(this);
      }

      v3 = 0;
    }

    else
    {
      *(this + 536) = 1;
    }
  }

  std::__shared_mutex_base::unlock(v2);
  return v3;
}

void sub_2416EF0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOPAudio::VoiceTrigger::UserClient::GetControlValue(ASDT::IOUserClient *a1, unsigned int a2, _DWORD *a3)
{
  v9 = 0;
  v10 = a2;
  v8 = 1;
  v5 = ASDT::IOUserClient::CallMethod(a1, 2, &v10, 1, 0, 0, &v9, &v8, 0, 0, 1);
  if (v5)
  {
    v6 = ASDTIOPLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::LPMic::UserClient::GetControlValue(a1);
    }
  }

  else
  {
    *a3 = v9;
  }

  return v5 == 0;
}

BOOL ASDT::IOPAudio::VoiceTrigger::UserClient::SetControlValue(ASDT::IOUserClient *a1, unsigned int a2, unsigned int a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v8[1] = a3;
  v4 = ASDT::IOUserClient::CallMethod(a1, 3, v8, 2, 0, 0, 0, 0, 0, 0, 1);
  if (v4)
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::LPMic::UserClient::SetControlValue(a1);
    }
  }

  result = v4 == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ASDT::IOPAudio::VoiceTrigger::UserClient::GetVoiceTriggerEnabled(ASDT::IOPAudio::VoiceTrigger::UserClient *this, unsigned int *a2)
{
  v7 = 0;
  ControlValue = ASDT::IOPAudio::VoiceTrigger::UserClient::GetControlValue(this, 0, &v7);
  if (ControlValue)
  {
    *a2 = v7 != 0;
  }

  else
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::VoiceTrigger::UserClient::GetVoiceTriggerEnabled(this);
    }
  }

  return ControlValue;
}

BOOL ASDT::IOPAudio::VoiceTrigger::UserClient::SetVoiceTriggerEnabled(ASDT::IOPAudio::VoiceTrigger::UserClient *this, int a2)
{
  v3 = ASDT::IOPAudio::VoiceTrigger::UserClient::SetControlValue(this, 0, a2 != 0);
  if (!v3)
  {
    v4 = ASDTIOPLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::VoiceTrigger::UserClient::SetVoiceTriggerEnabled(this);
    }
  }

  return v3;
}

BOOL ASDT::IOPAudio::VoiceTrigger::UserClient::GetActiveChannelMask(ASDT::IOPAudio::VoiceTrigger::UserClient *this, unsigned int *a2)
{
  ControlValue = ASDT::IOPAudio::VoiceTrigger::UserClient::GetControlValue(this, 1u, a2);
  if (!ControlValue)
  {
    v4 = ASDTIOPLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::VoiceTrigger::UserClient::GetActiveChannelMask(this);
    }
  }

  return ControlValue;
}

BOOL ASDT::IOPAudio::VoiceTrigger::UserClient::GetModelCRC(ASDT::IOPAudio::VoiceTrigger::UserClient *this, unsigned int *a2)
{
  ControlValue = ASDT::IOPAudio::VoiceTrigger::UserClient::GetControlValue(this, 2u, a2);
  if (!ControlValue)
  {
    v4 = ASDTIOPLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::VoiceTrigger::UserClient::GetModelCRC(this);
    }
  }

  return ControlValue;
}

BOOL ASDT::IOPAudio::VoiceTrigger::UserClient::GetDebugEnabled(ASDT::IOPAudio::VoiceTrigger::UserClient *this, unsigned int *a2)
{
  v7 = 0;
  ControlValue = ASDT::IOPAudio::VoiceTrigger::UserClient::GetControlValue(this, 3u, &v7);
  if (ControlValue)
  {
    *a2 = v7 != 0;
  }

  else
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::VoiceTrigger::UserClient::GetDebugEnabled(this);
    }
  }

  return ControlValue;
}

BOOL ASDT::IOPAudio::VoiceTrigger::UserClient::SetDebugEnabled(ASDT::IOPAudio::VoiceTrigger::UserClient *this, int a2)
{
  v3 = ASDT::IOPAudio::VoiceTrigger::UserClient::SetControlValue(this, 3u, a2 != 0);
  if (!v3)
  {
    v4 = ASDTIOPLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::VoiceTrigger::UserClient::SetDebugEnabled(this);
    }
  }

  return v3;
}

uint64_t ASDT::IOPAudio::VoiceTrigger::UserClient::SetPhraseDetectEventBlock(uint64_t a1, const void *a2)
{
  v4 = (a1 + 368);
  v11 = a1 + 368;
  v12 = 1;
  std::__shared_mutex_base::lock((a1 + 368));
  v5 = *(a1 + 544);
  if (v5)
  {
    _Block_release(v5);
  }

  if (a2)
  {
    v6 = _Block_copy(a2);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 544) = v6;
  ASDT::IOUserClient::ExclusiveLock(&v9, a1);
  (*(*a1 + 48))(a1);
  v7 = ASDT::IOUserClient::SetInterestNotificationEnabled(a1);
  if ((v7 & 1) == 0)
  {
    _Block_release(*(a1 + 544));
    *(a1 + 544) = 0;
  }

  if (v10 == 1)
  {
    std::__shared_mutex_base::unlock(v9);
  }

  std::__shared_mutex_base::unlock(v4);
  return v7;
}

void sub_2416EF60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOPAudio::VoiceTrigger::UserClient::ShouldEnableInterestNotification(ASDT::IOPAudio::VoiceTrigger::UserClient *this)
{
  if (*(this + 68))
  {
    return 1;
  }

  else
  {
    return MEMORY[0x2821429C0]();
  }
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::InterestNotification(ASDT::IOPAudio::VoiceTrigger::UserClient *this, int a2, void *a3)
{
  if (a2 == -469794559)
  {
    std::__shared_mutex_base::lock_shared((this + 368));
    v5 = *(this + 68);
    if (v5)
    {
      (*(v5 + 16))(v5, v4);
    }

    std::__shared_mutex_base::unlock_shared((this + 368));
  }

  else
  {

    MEMORY[0x2821428A8]();
  }
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

uint64_t std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void ASDT::IOPAudio::IOBuffer::UserClient::CopyIdentifier(ASDT::IOPAudio::IOBuffer::UserClient *this@<X0>, CFTypeRef *a2@<X8>)
{
  v8 = 0;
  cf = CFStringCreateWithBytes(0, "identifier", 10, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(this, &cf, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    *a2 = v8;
  }

  else
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::IOBuffer::UserClient::CopyIdentifier(this, v5);
    }

    *a2 = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_2416EFDC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void ASDT::IOPAudio::IOBuffer::UserClient::MapIOBuffer(ASDT::IOPAudio::IOBuffer::UserClient *this@<X0>, uint64_t a2@<X8>)
{
  ASDT::IOUserClient::MapMemory(this);
  if (!*(a2 + 104))
  {
    v4 = ASDTIOPLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::IOBuffer::UserClient::MapIOBuffer(this, v4);
    }
  }
}

void ASDT::IOPAudio::ClientManager::UserClient::CopyIdentifier(ASDT::IOPAudio::ClientManager::UserClient *this@<X0>, CFTypeRef *a2@<X8>)
{
  v8 = 0;
  cf = CFStringCreateWithBytes(0, "identifier", 10, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEDDF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(this, &cf, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    *a2 = v8;
  }

  else
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::VoiceTrigger::UserClient::CopyIdentifier(this);
    }

    *a2 = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_2416F0680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOPAudio::ClientManager::UserClient::Enable(ASDT::IOPAudio::ClientManager::UserClient *this, unsigned int a2)
{
  v6 = a2;
  v3 = ASDT::IOUserClient::CallMethod(this, 0, &v6, 1, 0, 0, 0, 0, 0, 0, 1);
  if (v3)
  {
    v4 = ASDTIOPLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::ClientManager::UserClient::Enable(this);
    }
  }

  return v3 == 0;
}

BOOL ASDT::IOPAudio::ClientManager::UserClient::Disable(ASDT::IOPAudio::ClientManager::UserClient *this, unsigned int a2)
{
  v6 = a2;
  v3 = ASDT::IOUserClient::CallMethod(this, 1, &v6, 1, 0, 0, 0, 0, 0, 0, 1);
  if (v3)
  {
    v4 = ASDTIOPLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::ClientManager::UserClient::Enable(this);
    }
  }

  return v3 == 0;
}

BOOL ASDT::IOPAudio::ClientManager::UserClient::GetEnableState(ASDT::IOPAudio::ClientManager::UserClient *this, BOOL *a2)
{
  v8 = 0;
  v4 = ASDT::IOUserClient::CallMethod(this, 2, 0, 0, 0, 0, &v8, &v7, 0, 0, 1);
  if (v4)
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::ClientManager::UserClient::GetEnableState(this);
    }
  }

  else
  {
    *a2 = v8 != 0;
  }

  return v4 == 0;
}

BOOL ASDT::IOPAudio::ClientManager::UserClient::GetCurrentPowerState(ASDT::IOPAudio::ClientManager::UserClient *this, unsigned int *a2)
{
  v8 = 0;
  v4 = ASDT::IOUserClient::CallMethod(this, 4, 0, 0, 0, 0, &v8, &v7, 0, 0, 1);
  if (v4)
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::ClientManager::UserClient::GetEnableState(this);
    }
  }

  else
  {
    *a2 = v8;
  }

  return v4 == 0;
}

BOOL ASDT::IOPAudio::ClientManager::UserClient::MakePowerRequest(ASDT::IOUserClient *a1, void *a2)
{
  v3 = ASDT::IOUserClient::CallMethod(a1, 3, 0, 0, a2, 8, 0, 0, 0, 0, 1);
  if (v3)
  {
    v4 = ASDTIOPLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::ClientManager::UserClient::Enable(a1);
    }
  }

  return v3 == 0;
}

BOOL ASDT::IOPAudio::ClientManager::UserClient::GetNodeProperty(ASDT::IOPAudio::ClientManager::UserClient *this, unsigned int a2, unsigned int *a3, void *a4)
{
  v9 = *a3;
  v10 = a2;
  v6 = ASDT::IOUserClient::CallMethod(this, 6, &v10, 1, 0, 0, 0, 0, a4, &v9, 1);
  if (v6)
  {
    v7 = ASDTIOPLogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::ClientManager::UserClient::GetNodeProperty(this);
    }
  }

  else
  {
    *a3 = v9;
  }

  return v6 == 0;
}

BOOL ASDT::IOPAudio::ClientManager::UserClient::SetNodeProperty(ASDT::IOPAudio::ClientManager::UserClient *this, unsigned int a2, unsigned int a3, const void *a4)
{
  v8 = a2;
  v5 = ASDT::IOUserClient::CallMethod(this, 5, &v8, 1, a4, a3, 0, 0, 0, 0, 1);
  if (v5)
  {
    v6 = ASDTIOPLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOPAudio::ClientManager::UserClient::SetNodeProperty(this);
    }
  }

  return v5 == 0;
}

void sub_2416F0DB4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ASDT::IOPAudio::IsolatedIOBuffer::UserClient::~UserClient(ASDT::IOPAudio::IsolatedIOBuffer::UserClient *this)
{
  ASDT::IOUserClient::~IOUserClient(this);

  JUMPOUT(0x245CEDEB0);
}

void sub_2416F143C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ASDT::IOPAudio::ClientManager::UserClient::~UserClient(ASDT::IOPAudio::ClientManager::UserClient *this)
{
  ASDT::IOUserClient::~IOUserClient(this);

  JUMPOUT(0x245CEDEB0);
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void ASDT::IOPAudio::LPMic::UserClient::~UserClient(ASDT::IOPAudio::LPMic::UserClient *this)
{
  ASDT::IOUserClient::~IOUserClient(this);

  JUMPOUT(0x245CEDEB0);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CE9C08, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t ASDTIOPLogType()
{
  if (ASDTIOPLogType_onceToken != -1)
  {
    ASDTIOPLogType_cold_1();
  }

  return gASDTIOPLogType;
}

os_log_t __ASDTIOPLogType_block_invoke()
{
  result = os_log_create("com.apple.audio.ASDT", "IOP");
  if (result)
  {
    gASDTIOPLogType = result;
  }

  return result;
}

void sub_2416F527C(_Unwind_Exception *a1)
{
  v6 = v2;

  _Unwind_Resume(a1);
}

void ASDT::IOPAudio::IsolatedIOBuffer::UserClient::CopyIdentifier(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: GetIdentifier: Property missing", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetStreamDescription(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed SetStreamDescription", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::IsolatedIOBuffer::UserClient::GetStreamDescription(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed GetStreamDescription", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Bad Data Size GetStreamDescription", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetupIO(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed SetupIO", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::IsolatedIOBuffer::UserClient::TeardownIO(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed TeardownIO", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetupClientIO(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed SetupClientIO", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::IsolatedIOBuffer::UserClient::TeardownClientIO(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed TeardownClientIO", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::IsolatedIOBuffer::UserClient::ReadInput(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed ReadInput", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::LPMic::UserClient::GetStreamDescription(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: GetStreamDescription: Property missing", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::LPMic::UserClient::GetClockDomain(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: GetInputClockDomain: Property missing", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::LPMic::UserClient::GetZeroTimeStampInterval(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: GetZeroTimeStampInterval: Property missing", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::LPMic::UserClient::GetRingBufferSize(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: GetRingBufferSize: Property missing", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::LPMic::UserClient::GetHistoricDataSupported(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: GetHistoricDataSupported: Property missing", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::LPMic::UserClient::StartIO(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed StartIO", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::LPMic::UserClient::StopIO(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed StopIO", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::LPMic::UserClient::GetControlValue(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed GetControlValue", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed GetControlValue: Bad valueCount.", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::LPMic::UserClient::SetControlValue(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed SetControlValue", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::LPMic::UserClient::MapEngineStatus(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v3 < 0)
  {
    v4 = *v2;
  }

  v5 = *v1;
  OUTLINED_FUNCTION_2();
  v10 = 1024;
  v11 = v6;
  v12 = 2048;
  v13 = 32;
  _os_log_error_impl(&dword_2416E9000, v7, OS_LOG_TYPE_ERROR, "%s: Unexpected EngineStatus memory map size: %u (expected %zu)", v9, 0x1Cu);
  v8 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed MapStreamStatus", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::Close(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed Close", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::CopyIdentifier(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: CopyIdentifier: Property missing", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::GetIsConfigured(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_2416E9000, v4, v5, "%s: GetIsConfigured: Property missing", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::CopyConfigurationInfo(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_2416E9000, v4, v5, "%s: CopyConfiguration: Property missing", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::Open(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed Open", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::GetVoiceTriggerEnabled(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed GetVoiceTriggerEnabled", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::SetVoiceTriggerEnabled(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed SetVoiceTriggerEnabled", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::GetActiveChannelMask(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed GetActiveChannelMask", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::GetModelCRC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed GetModelCRC", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::GetDebugEnabled(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed GetDebugEnabled", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::VoiceTrigger::UserClient::SetDebugEnabled(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed SetDebugEnabled", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::IOBuffer::UserClient::CopyIdentifier(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v2 = *v2;
  }

  v4 = 136315138;
  v5 = v2;
  _os_log_error_impl(&dword_2416E9000, a2, OS_LOG_TYPE_ERROR, "%s: GetIdentifier: Property missing", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::IOBuffer::UserClient::MapIOBuffer(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v2 = *v2;
  }

  v4 = 136315138;
  v5 = v2;
  _os_log_error_impl(&dword_2416E9000, a2, OS_LOG_TYPE_ERROR, "%s: Failed MapIOBuffer", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::ClientManager::UserClient::Enable(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed PowerRequest", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::ClientManager::UserClient::GetEnableState(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed GetCurrentPowerState", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::ClientManager::UserClient::GetNodeProperty(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed GetNodeProperty", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void ASDT::IOPAudio::ClientManager::UserClient::SetNodeProperty(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_2416E9000, v4, v5, "%s: Failed SetNodeProperty", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}