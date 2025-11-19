void ASDTSystemPowerInterestCallback(void *a1, unsigned int a2, uint64_t a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  [a1 handlePowerNotificationWithMessageType:a3 andArgument:a4];

  objc_autoreleasePoolPop(v7);
}

uint64_t ASDTBaseLogType()
{
  if (ASDTBaseLogType_onceToken != -1)
  {
    ASDTBaseLogType_cold_1();
  }

  return gASDTBaseLogType;
}

void sub_24165AEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ASDT::IORegistry::EntryAtPathExists(ASDT::IORegistry *this, const char *a2)
{
  v3 = EntryForPath;
  if (EntryForPath)
  {
    IOObjectRelease(EntryForPath);
  }

  return v3 != 0;
}

uint64_t anonymous namespace::GetEntryForPath(_anonymous_namespace_ *this, const char *a2)
{
  mainPort = 0;
  if (!this)
  {
    v5 = ASDTBaseLogType();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    return 0;
  }

  if (MEMORY[0x245CEC490](*MEMORY[0x277D85F18], &mainPort))
  {
    v3 = ASDTBaseLogType();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    return 0;
  }

  return IORegistryEntryFromPath(mainPort, this);
}

CFTypeRef ASDT::IORegistry::GetObjectForKey(ASDT::IORegistry *this, _anonymous_namespace_ *a2, const char *a3)
{
  if (this && a2)
  {
    if (EntryForPath)
    {
      v6 = EntryForPath;
      v7 = *MEMORY[0x277CBECE8];
      v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], this, 0x8000100u);
      if (v8)
      {
        v9 = v8;
        CFProperty = IORegistryEntryCreateCFProperty(v6, v8, v7, 0);
        CFRelease(v9);
        IOObjectRelease(v6);
        return CFProperty;
      }

      v13 = ASDTBaseLogType();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        ASDT::IORegistry::GetObjectForKey();
      }

      IOObjectRelease(v6);
    }
  }

  else
  {
    v12 = ASDTBaseLogType();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ASDT::IORegistry::GetObjectForKey(this, a2, v12);
    }
  }

  return 0;
}

BOOL ASDT::IORegistry::GetUInt32tForKey(UInt8 *this, ASDT::IORegistry *a2, _anonymous_namespace_ *a3, const char *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ASDT::IORegistry::GetUInt32tForKey();
    }

    goto LABEL_8;
  }

  ObjectForKey = ASDT::IORegistry::GetObjectForKey(a2, a3, a3);
  if (!ObjectForKey)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_12;
  }

  v8 = ObjectForKey;
  Length = CFDataGetLength(ObjectForKey);
  v10 = Length > 3;
  if (Length > 3)
  {
    v26.location = 0;
    v26.length = 4;
    CFDataGetBytes(v8, v26, this);
  }

  else
  {
    v12 = Length;
    v13 = ASDTBaseLogType();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      v18 = "GetUInt32tForKey";
      v19 = 2080;
      v20 = a3;
      v21 = 2080;
      v22 = a2;
      v23 = 2048;
      v24 = v12;
      _os_log_error_impl(&dword_241659000, v13, OS_LOG_TYPE_ERROR, "%s: %s/%s invalid data length: %ld", &v17, 0x2Au);
    }
  }

  CFRelease(v8);
LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

os_log_t __ASDTBaseLogType_block_invoke()
{
  result = os_log_create("com.apple.audio.ASDT", "Base");
  if (result)
  {
    gASDTBaseLogType = result;
  }

  return result;
}

uint64_t ASDT::Exclaves::StatusTracker::StatusTracker(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  *a1 = &unk_28534D848;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 8));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 16);
    *(a1 + 8) = v5;
  }

  for (i = 0; i != 1152; i += 72)
  {
    *(a1 + i + 32) = 0u;
    v7 = a1 + i + 32;
    *(v7 + 64) = 0;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 16) = 0u;
    v8 = ASDT::Exclaves::StatusTracker::Message::Message(v7, a2, a3, a4);
  }

  *(a1 + 1184) = &unk_28534D8B8;
  *(a1 + 1192) = 0;
  *(a1 + 1256) = 0;
  v9 = caulk::concurrent::messenger::shared_high_priority(v8);
  MEMORY[0x245CEC6F0](a1 + 1264, 0, v9);
  *(a1 + 1280) = 0;
  v11 = -10240;
  do
  {
    ASDTTime::ASDTTime(&v20, 0, 1, v10);
    v12 = a1 + v11;
    *(v12 + 11528) = -1;
    *(v12 + 11536) = v20;
    *(v12 + 11552) = v21;
    *(v12 + 11560) = 0;
    v11 += 40;
  }

  while (v11);
  v13 = 0;
  *(a1 + 11528) = 850045863;
  *(a1 + 11536) = 0uLL;
  *(a1 + 11552) = 0uLL;
  *(a1 + 11568) = 0uLL;
  *(a1 + 11584) = 0uLL;
  *(a1 + 11600) = 0xFFFFFFFF00000000;
  do
  {
    v14 = a1 + 32 + 72 * v13;
    *(v14 + 24) = a1;
    v15 = *(a1 + 1192);
    atomic_store(v15, (v14 + 8));
    v16 = v15;
    atomic_compare_exchange_strong((a1 + 1192), &v16, v14);
    if (v16 != v15)
    {
      v17 = v16;
      do
      {
        atomic_store(v16, (v14 + 8));
        atomic_compare_exchange_strong((a1 + 1192), &v17, v14);
        v18 = v17 == v16;
        v16 = v17;
      }

      while (!v18);
    }

    ++v13;
  }

  while (v13 != 16);
  return a1;
}

void sub_24165C90C(_Unwind_Exception *a1)
{
  v4 = (v1 + 1112);
  v5 = -1152;
  do
  {
    caulk::concurrent::message::~message(v4);
    v4 = (v6 - 72);
    v5 += 72;
  }

  while (v5);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void ASDT::Exclaves::StatusTracker::~StatusTracker(ASDT::Exclaves::StatusTracker *this)
{
  *this = &unk_28534D848;
  caulk::concurrent::messenger::drain((this + 1264));
  v2 = *(this + 1449);
  if (v2)
  {
    _Block_release(v2);
    *(this + 1449) = 0;
  }

  std::mutex::~mutex((this + 11528));
  MEMORY[0x245CEC700](this + 1264);
  for (i = 1112; i != -40; i -= 72)
  {
    caulk::concurrent::message::~message((this + i));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  ASDT::Exclaves::StatusTracker::~StatusTracker(this);

  JUMPOUT(0x245CEC850);
}

void ASDT::Exclaves::StatusTracker::SetSignalBlock(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 11592);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 11592) = 0;
  }

  if (aBlock)
  {
    *(a1 + 11592) = _Block_copy(aBlock);
  }
}

void ASDT::Exclaves::StatusTracker::Reset(ASDT::Exclaves::StatusTracker *this)
{
  std::mutex::lock((this + 11528));
  atomic_exchange(this + 160, 0);
  *(this + 2900) = 0;

  std::mutex::unlock((this + 11528));
}

BOOL ASDT::Exclaves::StatusTracker::Push(uint64_t a1, __int128 *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (atomic_exchange((a1 + 1280), *(a2 + 9) | (*(a2 + 8) << 32)) == (*(a2 + 9) | (*(a2 + 8) << 32)))
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 1256);
  if (v4)
  {
LABEL_7:
    v8 = atomic_load((v4 + 8));
    *(a1 + 1256) = v8;
    v9 = *a2;
    v10 = a2[1];
    *(v4 + 64) = *(a2 + 4);
    *(v4 + 32) = v9;
    *(v4 + 48) = v10;
    caulk::concurrent::messenger::enqueue((a1 + 1264), v4);
LABEL_8:
    result = 1;
    goto LABEL_9;
  }

  v5 = atomic_exchange_explicit((a1 + 1192), 0, memory_order_acquire);
  if (v5)
  {
    v4 = 0;
    do
    {
      v6 = v4;
      v4 = v5;
      v7 = (v5 + 8);
      v5 = atomic_load((v5 + 8));
      atomic_store(v6, v7);
    }

    while (v5);
    *(a1 + 1256) = v4;
    goto LABEL_7;
  }

  v13 = ASDTBaseLogType();
  result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v14 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v14 = *v14;
    }

    v15 = ASDT::Exclaves::Sensor::StatusString(*(a2 + 8));
    v17 = *(a2 + 1);
    v16 = *(a2 + 2);
    v18 = *a2;
    v19 = 136316162;
    v20 = v14;
    v21 = 2080;
    v22 = v15;
    v23 = 2048;
    v24 = v17;
    v25 = 2048;
    v26 = v16;
    v27 = 2048;
    v28 = v18;
    _os_log_error_impl(&dword_241659000, v13, OS_LOG_TYPE_ERROR, "StatusTracker(%s): No messages available to push update for %s at %lluns, mat: %llu, sample: %llu", &v19, 0x34u);
    result = 0;
  }

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void ASDT::Exclaves::StatusTracker::Process(ASDT::Exclaves::StatusTracker *this, ASDT::Exclaves::StatusTracker::Message *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 11528));
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v20 = *(a2 + 3);
  v7 = *(a2 + 16);
  v6 = *(a2 + 17);
  v8 = *(this + 149);
  atomic_store(v8, a2 + 1);
  v9 = v8;
  atomic_compare_exchange_strong(this + 149, &v9, a2);
  if (v9 != v8)
  {
    v10 = v9;
    do
    {
      atomic_store(v9, a2 + 1);
      atomic_compare_exchange_strong(this + 149, &v10, a2);
      v11 = v10 == v9;
      v9 = v10;
    }

    while (!v11);
  }

  v12 = *(this + 2901);
  v13 = *(this + 2900);
  if (v13 && (*(this + 10 * (v13 + v12) + 331) | (*(this + 10 * (v13 + v12) + 330) << 32)) == (v6 | (v7 << 32)))
  {
    v14 = *MEMORY[0x277D85DE8];

    std::mutex::unlock((this + 11528));
  }

  else
  {
    v15 = this + 40 * (v13 + v12 + 1);
    *(v15 + 161) = v4;
    *(v15 + 162) = v5;
    *(v15 + 1304) = v20;
    *(v15 + 330) = v7;
    *(v15 + 331) = v6;
    if (v13 == 256)
    {
      *(this + 2901) = v12 + 1;
    }

    else
    {
      *(this + 2900) = v13 + 1;
    }

    std::mutex::unlock((this + 11528));
    v16 = ASDTBaseLogType();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = (this + 8);
      if (*(this + 31) < 0)
      {
        v17 = *v17;
      }

      *buf = 136315906;
      v22 = v17;
      v23 = 2080;
      v24 = ASDT::Exclaves::Sensor::StatusString(v7);
      v25 = 2048;
      v26 = v5;
      v27 = 2048;
      v28 = v4;
      _os_log_impl(&dword_241659000, v16, OS_LOG_TYPE_DEFAULT, "StatusTracker(%s): %s; time: %lluns, sample: %llu", buf, 0x2Au);
    }

    v18 = *(this + 1449);
    if (v18)
    {
      (*(v18 + 16))();
    }

    v19 = *MEMORY[0x277D85DE8];
  }
}

void ASDT::Exclaves::StatusTracker::Pop(ASDT::Exclaves::StatusTracker *this@<X0>, unsigned int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (!a2)
  {
    a2 = *(this + 2900);
  }

  v5 = a2;
  std::vector<ASDT::Exclaves::StatusTracker::Update>::reserve(a3, a2);
  std::mutex::lock((this + 11528));
  v6 = *a3;
  v7 = a3[1];
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a3) >> 3);
  if (v8 < v5)
  {
    v9 = *(this + 2900);
    do
    {
      if (!v9)
      {
        break;
      }

      v10 = *(this + 2901) + 1;
      *(this + 2901) = v10;
      v11 = this + 40 * v10 + 1288;
      v12 = a3[2];
      if (v7 >= v12)
      {
        v15 = v8 + 1;
        if (v8 + 1 > 0x666666666666666)
        {
          std::vector<ASDT::Exclaves::StatusTracker::Update>::__throw_length_error[abi:ne200100]();
        }

        v16 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v6) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x333333333333333)
        {
          v17 = 0x666666666666666;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::allocator<ASDT::Exclaves::StatusTracker::Update>::allocate_at_least[abi:ne200100](a3, v17);
        }

        v18 = 40 * v8;
        v19 = *v11;
        v20 = *(v11 + 1);
        *(v18 + 32) = *(v11 + 4);
        *v18 = v19;
        *(v18 + 16) = v20;
        v21 = v7 - v6;
        v7 = 40 * v8 + 40;
        v22 = (40 * v8 - v21);
        memcpy((v18 - v21), v6, v21);
        v23 = *a3;
        *a3 = v22;
        a3[1] = v7;
        a3[2] = 0;
        if (v23)
        {
          operator delete(v23);
          v6 = *a3;
        }

        else
        {
          v6 = v22;
        }
      }

      else
      {
        v13 = *v11;
        v14 = *(v11 + 1);
        *(v7 + 32) = *(v11 + 4);
        *v7 = v13;
        *(v7 + 16) = v14;
        v7 += 40;
      }

      a3[1] = v7;
      v9 = *(this + 2900) - 1;
      *(this + 2900) = v9;
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 3);
    }

    while (v8 < v5);
  }

  std::mutex::unlock((this + 11528));
}

void sub_24165D0DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<ASDT::Exclaves::StatusTracker::Update>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      std::allocator<ASDT::Exclaves::StatusTracker::Update>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<ASDT::Exclaves::StatusTracker::Update>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t ASDT::Exclaves::StatusTracker::GetCount(ASDT::Exclaves::StatusTracker *this)
{
  std::mutex::lock((this + 11528));
  v2 = *(this + 2900);
  std::mutex::unlock((this + 11528));
  return v2;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CE6050, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

ASDT::Exclaves::StatusTracker::Message *ASDT::Exclaves::StatusTracker::Message::Message(ASDT::Exclaves::StatusTracker::Message *this, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  *(this + 4) = 0;
  *this = &unk_28534D878;
  *(this + 1) = 0;
  *(this + 3) = 0;
  ASDTTime::ASDTTime(&v6, 0, 1, a4);
  *(this + 4) = -1;
  *(this + 40) = v6;
  *(this + 7) = v7;
  *(this + 8) = 0;
  return this;
}

void ASDT::Exclaves::StatusTracker::Message::~Message(ASDT::Exclaves::StatusTracker::Message *this)
{
  caulk::concurrent::message::~message(this);

  JUMPOUT(0x245CEC850);
}

void ASDT::Exclaves::StatusTracker::Message::perform(ASDT::Exclaves::StatusTracker::Message *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    ASDT::Exclaves::StatusTracker::Process(v2, this);
  }
}

void std::allocator<ASDT::Exclaves::StatusTracker::Update>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

ASDT::IOUserClient *ASDT::IOUserClient::IOUserClient(ASDT::IOUserClient *this)
{
  return ASDT::IOUserClient::IOUserClient(this, 0, 0);
}

{
  return ASDT::IOUserClient::IOUserClient(this, 0, 0);
}

ASDT::IOUserClient *ASDT::IOUserClient::IOUserClient(ASDT::IOUserClient *this, unsigned int a2, unsigned int a3)
{
  *this = &unk_28534D900;
  *(this + 2) = a2;
  *(this + 2) = 0;
  v4 = (this + 16);
  *(this + 3) = 0;
  *(this + 4) = 0;
  ASDT::IOConnect::IOConnect((this + 40), a2, a3);
  *(this + 17) = 0;
  *(this + 19) = 0;
  *(this + 72) = 1;
  *(this + 23) = 0;
  *(this + 96) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  std::__shared_mutex_base::__shared_mutex_base((this + 200));
  v5 = *(this + 2);
  if (v5 && !IOObjectRetain(v5))
  {
    v7 = IOObjectCopyClass(*(this + 2));
    v8 = v7;
    if (v7)
    {
      v9 = CFGetTypeID(v7);
      if (v9 == CFStringGetTypeID())
      {
        v13 = v8;
        std::string::basic_string[abi:ne200100]<0>(&__p, "IOUserClient");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v14 = __p;
        }

        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v8))
        {
          applesauce::CF::details::CFString_get_value<false>(v8, &v12);
          if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v14.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v12 = v14;
        }

        if (*(this + 39) < 0)
        {
          operator delete(*v4);
        }

        *v4 = v12;
        *(&v12.__r_.__value_.__s + 23) = 0;
        v12.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        CFRelease(v8);
      }

      else
      {
        CFRelease(v8);
      }
    }
  }

  else
  {
    *(this + 2) = 0;
  }

  return this;
}

void sub_24165D9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  applesauce::CF::StringRef::~StringRef(va);
  std::shared_mutex::~shared_mutex[abi:ne200100]((v9 + 8));
  v13 = *v11;
  *v11 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(v9);
  ASDT::IOConnect::~IOConnect((v8 + 40));
  if (*(v8 + 39) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::Retain(ASDT::IOUserClient *this)
{
  result = *(this + 2);
  if (result)
  {
    return IOObjectRetain(result) == 0;
  }

  return result;
}

void *applesauce::CF::StringRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

double applesauce::CF::StringRef_proxy::convert_or@<D0>(const __CFString ***a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v4 = **a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (v4 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v4)))
  {
    applesauce::CF::details::CFString_get_value<false>(v4, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    result = *&__p.__r_.__value_.__l.__data_;
    *a3 = __p;
  }

  return result;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::shared_mutex::~shared_mutex[abi:ne200100](uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

ASDT::IOUserClient *ASDT::IOUserClient::IOUserClient(ASDT::IOUserClient *this, const void **a2)
{
  *this = &unk_28534D900;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  ASDT::IOConnect::IOConnect((this + 40));
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(this + 19) = 0;
  *(this + 17) = v4;
  *(this + 72) = 0;
  *(this + 23) = 0;
  *(this + 96) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  std::__shared_mutex_base::__shared_mutex_base((this + 200));
  return this;
}

void sub_24165DD7C(_Unwind_Exception *a1)
{
  v5 = *v3;
  *v3 = 0;
  if (v5)
  {
    ASDT::IOUserClient::IOUserClient(v5);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef((v1 + 136));
  ASDT::IOConnect::~IOConnect((v1 + 40));
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::IOUserClient(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_28534D900;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  ASDT::IOConnect::IOConnect((a1 + 40));
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::__shared_mutex_base::__shared_mutex_base((a1 + 200));
  ASDT::IOUserClient::MoveDataMembers(a1, a2);
  return a1;
}

void sub_24165DE6C(_Unwind_Exception *a1)
{
  std::shared_mutex::~shared_mutex[abi:ne200100]((v2 + 8));
  v6 = *v4;
  *v4 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(v2);
  ASDT::IOConnect::~IOConnect((v1 + 40));
  if (*(v1 + 39) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

__n128 ASDT::IOUserClient::MoveDataMembers(ASDT::IOUserClient *this, __n128 *a2)
{
  ASDT::IOUserClient::Clear(this);
  *(this + 145) = a2[9].n128_u8[1];
  *(this + 2) = a2->n128_u32[2];
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  v4 = a2[1];
  *(this + 4) = a2[2].n128_u64[0];
  *(this + 1) = v4;
  a2[2].n128_u8[7] = 0;
  a2[1].n128_u8[0] = 0;
  v5 = *(this + 17);
  v6 = a2[8].n128_u64[1];
  *(this + 17) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 144) = a2[9].n128_u8[0];
  *(this + 23) = a2[11].n128_u64[1];
  *(this + 96) = a2[12].n128_u16[0];
  ASDT::IOConnect::operator=(this + 40, &a2[2].n128_i64[1]);
  v7 = a2[9].n128_u64[1];
  a2[9].n128_u64[1] = 0;
  v8 = *(this + 19);
  *(this + 19) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  a2->n128_u32[2] = 0;
  if (a2[2].n128_i8[7] < 0)
  {
    *a2[1].n128_u64[0] = 0;
    a2[1].n128_u64[1] = 0;
  }

  else
  {
    a2[1].n128_u8[0] = 0;
    a2[2].n128_u8[7] = 0;
  }

  v9 = a2[8].n128_u64[1];
  a2[8].n128_u64[1] = 0;
  if (v9)
  {
    CFRelease(v9);
  }

  a2[9].n128_u8[0] = 1;
  v10 = a2[9].n128_u64[1];
  a2[9].n128_u64[1] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  a2[11].n128_u64[1] = 0;
  a2[12].n128_u16[0] = 0;
  result = a2[10];
  *(this + 10) = result;
  *(this + 44) = a2[11].n128_u32[0];
  a2[11].n128_u32[0] = 0;
  a2[10].n128_u64[0] = 0;
  a2[10].n128_u64[1] = 0;
  return result;
}

uint64_t ASDT::IOUserClient::operator=(uint64_t a1, __n128 *a2)
{
  v4 = (a1 + 200);
  std::__shared_mutex_base::lock((a1 + 200));
  ASDT::IOUserClient::MoveDataMembers(a1, a2);
  std::__shared_mutex_base::unlock(v4);
  return a1;
}

void ASDT::IOUserClient::ExclusiveLock(ASDT::IOUserClient *this@<X0>, uint64_t a2@<X8>)
{
  v2 = (this + 200);
  *a2 = v2;
  *(a2 + 8) = 1;
  std::__shared_mutex_base::lock(v2);
}

void ASDT::IOUserClient::Clear(io_object_t *this)
{
  ASDT::IOUserClient::SetInterestNotificationEnabled(this, 0);
  (*(*this + 40))(this);
  v2 = this[2];
  if (v2)
  {
    IOObjectRelease(v2);
    this[2] = 0;
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 23);
  if (v4)
  {
    _Block_release(v4);
    *(this + 23) = 0;
  }
}

void ASDT::IOUserClient::~IOUserClient(ASDT::IOUserClient *this)
{
  *this = &unk_28534D900;
  ASDT::IOUserClient::Clear(this);
  std::condition_variable::~condition_variable((this + 312));
  std::condition_variable::~condition_variable((this + 264));
  std::mutex::~mutex((this + 200));
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    CFRelease(v3);
  }

  ASDT::IOConnect::~IOConnect((this + 40));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  ASDT::IOUserClient::~IOUserClient(this);

  JUMPOUT(0x245CEC850);
}

BOOL ASDT::IOUserClient::IsValid(ASDT::IOUserClient *this)
{
  std::__shared_mutex_base::lock_shared((this + 200));
  v2 = *(this + 2);
  std::__shared_mutex_base::unlock_shared((this + 200));
  return v2 != 0;
}

void ASDT::IOUserClient::SharedLock(ASDT::IOUserClient *this@<X0>, uint64_t a2@<X8>)
{
  v2 = (this + 200);
  *a2 = v2;
  *(a2 + 8) = 1;
  std::__shared_mutex_base::lock_shared(v2);
}

BOOL ASDT::IOUserClient::IsEqualTo(ASDT::IOUserClient *this, io_object_t a2)
{
  v4 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  IsEqualTo = IOObjectIsEqualTo(*(this + 2), a2);
  std::__shared_mutex_base::unlock_shared(v4);
  return IsEqualTo != 0;
}

BOOL ASDT::IOUserClient::ConformsTo(ASDT::IOUserClient *this, const char *a2)
{
  v4 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  v5 = *(this + 2);
  if (v5)
  {
    v6 = IOObjectConformsTo(v5, a2) != 0;
  }

  else
  {
    v6 = 0;
  }

  std::__shared_mutex_base::unlock_shared(v4);
  return v6;
}

BOOL ASDT::IOUserClient::IsServiceAlive(ASDT::IOUserClient *this)
{
  v2 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  IsValid = ASDT::IOConnect::IsValid((this + 40));
  std::__shared_mutex_base::unlock_shared(v2);
  return IsValid;
}

uint64_t ASDT::IOUserClient::GetIOObjectRefCount(uint64_t this)
{
  if (this)
  {
    v2 = 0;
    if (MEMORY[0x245CECB50](*MEMORY[0x277D85F48], this, 0, &v2))
    {
      v1 = ASDTBaseLogType();
      this = os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);
      if (this)
      {
        ASDT::IOUserClient::GetIOObjectRefCount();
        return 0;
      }
    }

    else
    {
      return v2;
    }
  }

  return this;
}

uint64_t ASDT::IOUserClient::GetUserClientRefCount(ASDT::IOUserClient *this)
{
  v2 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  IOObjectRefCount = ASDT::IOUserClient::GetIOObjectRefCount(*(this + 2));
  std::__shared_mutex_base::unlock_shared(v2);
  return IOObjectRefCount;
}

void ASDT::IOUserClient::ServiceWasTerminated(ASDT::IOUserClient *this)
{
  v2 = (this + 200);
  std::__shared_mutex_base::lock((this + 200));
  ASDT::IOConnect::Terminate((this + 40));
  if (*(this + 23))
  {
    std::__shared_mutex_base::unlock(v2);
    (*(*(this + 23) + 16))(*(this + 23), v3);
  }

  else
  {
    std::__shared_mutex_base::unlock(v2);
  }
}

void ASDT::IOUserClient::SetAlwaysLoadPropertiesFromRegistry(ASDT::IOUserClient *this, char a2)
{
  std::__shared_mutex_base::lock((this + 200));
  *(this + 145) = a2;
  if ((a2 & 1) == 0)
  {
    *(this + 144) = 1;
  }

  std::__shared_mutex_base::unlock((this + 200));
}

void ASDT::IOUserClient::CopyProperties(ASDT::IOUserClient *this@<X0>, CFMutableDictionaryRef *a2@<X8>)
{
  *a2 = 0;
  properties = 0;
  if (!IORegistryEntryCreateCFProperties(this, &properties, 0, 0))
  {
    v3 = properties;
    if (properties)
    {
      v4 = CFGetTypeID(properties);
      if (v4 != CFDictionaryGetTypeID())
      {
        CFRelease(v3);
        v3 = 0;
      }
    }

    *a2 = v3;
  }
}

BOOL ASDT::IOUserClient::TestForLiveness(ASDT::IOUserClient *this)
{
  ASDT::IOUserClient::CopyProperties(this, &cf);
  v1 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  return v1 != 0;
}

void ASDT::IOUserClient::CopyProperties(ASDT::IOUserClient *this@<X0>, std::__shared_mutex_base **a2@<X8>)
{
  v4 = (this + 200);
  v9 = this + 200;
  v10 = 1;
  std::__shared_mutex_base::lock_shared((this + 200));
  *a2 = 0;
  if (*(this + 145))
  {
    ASDT::IOUserClient::CopyProperties(*(this + 2), &v7);
    *a2 = v7;
LABEL_11:
    std::__shared_mutex_base::unlock_shared(v4);
    return;
  }

  if (!*(this + 2) || *(this + 144) != 1)
  {
    v6 = *(this + 17);
    *a2 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    goto LABEL_11;
  }

  std::__shared_mutex_base::unlock_shared(v4);
  v10 = 0;
  ASDT::IOUserClient::CacheProperties(this, &v7);
  v5 = *(this + 17);
  *a2 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v8)
  {
    std::__shared_mutex_base::unlock(v7);
  }
}

void sub_24165E7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(v11);
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::CacheNeedsUpdate(ASDT::IOUserClient *this)
{
  if (*(this + 145))
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = *(this + 2);
    if (v1)
    {
      LOBYTE(v1) = *(this + 144);
    }
  }

  return v1 & 1;
}

void ASDT::IOUserClient::CacheProperties(ASDT::IOUserClient *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (this + 200);
  *a2 = v3;
  *(a2 + 8) = 1;
  std::__shared_mutex_base::lock(v3);
  if ((*(this + 145) & 1) == 0)
  {
    v4 = *(this + 2);
    if (v4)
    {
      if (*(this + 144) == 1)
      {
        ASDT::IOUserClient::CopyProperties(v4, &cf);
        v5 = cf;
        if (cf)
        {
          v6 = *(this + 17);
          *(this + 17) = cf;
          CFRetain(v5);
          if (v6)
          {
            CFRelease(v6);
          }

          *(this + 144) = 0;
        }

        else
        {
          v7 = ASDTBaseLogType();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            ASDT::IOUserClient::CacheProperties(this);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

void sub_24165E8F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

const __CFDictionary *ASDT::IOUserClient::HasProperty(ASDT::IOUserClient *this, const void **a2)
{
  ASDT::IOUserClient::CopyProperties(this, &cf);
  v3 = applesauce::CF::details::has_key<applesauce::CF::StringRef const&>(cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

BOOL ASDT::IOUserClient::CopyProperty(io_registry_entry_t a1, CFStringRef *a2, const void **a3)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, *a2, 0, 0);
  v5 = *a3;
  if (CFProperty)
  {
    *a3 = CFProperty;
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *a3 = 0;
    if (v5)
    {
LABEL_5:
      CFRelease(v5);
    }
  }

  return *a3 != 0;
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t ASDT::IOUserClient::GuardedCopyProperty(ASDT::IOUserClient *this, const void **a2, const void **a3)
{
  v3 = *(this + 17);
  if (!v3)
  {
    return 0;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef const&>(v3, a2, &cf);
  v5 = v10;
  if (v10 == 1)
  {
    v6 = *a3;
    v7 = cf;
    *a3 = cf;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (v10 == 1 && cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t ASDT::IOUserClient::CopyProperty(ASDT::IOUserClient *this, CFStringRef *a2, const void **a3)
{
  v6 = (this + 200);
  v13 = this + 200;
  v14 = 1;
  std::__shared_mutex_base::lock_shared((this + 200));
  v7 = *(this + 2);
  if (*(this + 145))
  {
    v8 = ASDT::IOUserClient::CopyProperty(v7, a2, a3);
LABEL_8:
    v9 = v8;
    std::__shared_mutex_base::unlock_shared(v6);
    return v9;
  }

  if (!v7 || *(this + 144) != 1)
  {
    v8 = ASDT::IOUserClient::GuardedCopyProperty(this, a2, a3);
    goto LABEL_8;
  }

  std::__shared_mutex_base::unlock_shared(v6);
  v14 = 0;
  ASDT::IOUserClient::CacheProperties(this, &v11);
  v9 = ASDT::IOUserClient::GuardedCopyProperty(this, a2, a3);
  if (v12 == 1)
  {
    std::__shared_mutex_base::unlock(v11);
  }

  return v9;
}

void sub_24165EB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::ConvertValue(const void **this, const applesauce::CF::TypeRef *a2, BOOL *a3)
{
  result = *this;
  if (result)
  {
    v6 = CFGetTypeID(result);
    if (v6 == CFBooleanGetTypeID())
    {
      applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(this, &cf);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x245CEC720](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      *a2 = applesauce::CF::convert_to<BOOL,0>(cf);
      if (cf)
      {
        CFRelease(cf);
      }

      return 1;
    }

    result = *this;
    if (*this)
    {
      v7 = CFGetTypeID(result);
      if (v7 == CFNumberGetTypeID())
      {
        v10 = 0;
        applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(this, &cf);
        v8 = ASDT::IOUserClient::ConvertNumber<unsigned int>(&cf, &v10);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v8)
        {
          *a2 = v10 != 0;
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_24165ECD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (!result)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFBooleanGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a1;
  if (v6)
  {
    CFRetain(v6);
    *a2 = v6;
    v7 = CFGetTypeID(v6);
    result = CFBooleanGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEC720](v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
LABEL_6:
    *a2 = 0;
  }

  return result;
}

void sub_24165EE04(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::BooleanRef::~BooleanRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t ASDT::IOUserClient::ConvertNumber<unsigned int>(const __CFNumber **a1, _DWORD *a2)
{
  v2 = *a1;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v4 = applesauce::CF::convert_as<unsigned int,0>(v2);
  if ((v4 & 0x100000000) != 0)
  {
    *a2 = v4;
  }

  return HIDWORD(v4) & 1;
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::NumberRef@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (!result)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a1;
  if (v6)
  {
    CFRetain(v6);
    *a2 = v6;
    v7 = CFGetTypeID(v6);
    result = CFNumberGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEC720](v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
LABEL_6:
    *a2 = 0;
  }

  return result;
}

void sub_24165EFE0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::NumberRef::~NumberRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t ASDT::IOUserClient::ConvertValue(const void **this, const applesauce::CF::TypeRef *a2, int *a3)
{
  v4 = *this;
  if (!v4)
  {
    return 0;
  }

  v6 = CFGetTypeID(v4);
  if (v6 != CFNumberGetTypeID())
  {
    return 0;
  }

  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(this, &cf);
  v7 = ASDT::IOUserClient::ConvertNumber<int>(&cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void sub_24165F0DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::ConvertNumber<int>(const __CFNumber **a1, _DWORD *a2)
{
  v2 = *a1;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v4 = applesauce::CF::convert_as<int,0>(v2);
  if ((v4 & 0x100000000) != 0)
  {
    *a2 = v4;
  }

  return HIDWORD(v4) & 1;
}

uint64_t ASDT::IOUserClient::ConvertValue(const void **this, const applesauce::CF::TypeRef *a2, unsigned int *a3)
{
  v4 = *this;
  if (!v4)
  {
    return 0;
  }

  v6 = CFGetTypeID(v4);
  if (v6 != CFNumberGetTypeID())
  {
    return 0;
  }

  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(this, &cf);
  v7 = ASDT::IOUserClient::ConvertNumber<unsigned int>(&cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void sub_24165F200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::ConvertValue(const void **this, const __CFBoolean **a2, uint64_t *a3)
{
  v4 = *this;
  if (!v4)
  {
    return 0;
  }

  v6 = CFGetTypeID(v4);
  if (v6 != CFNumberGetTypeID())
  {
    return 0;
  }

  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(this, &cf);
  v7 = ASDT::IOUserClient::ConvertNumber<long long>(&cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void sub_24165F2A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::ConvertNumber<long long>(const __CFNumber **a1, const __CFBoolean **a2)
{
  v2 = *a1;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v4 = applesauce::CF::convert_as<long long,0>(v2);
  if (v5)
  {
    *a2 = v4;
  }

  return v5 & 1;
}

uint64_t ASDT::IOUserClient::ConvertValue(const void **this, const __CFBoolean **a2, unint64_t *a3)
{
  v4 = *this;
  if (!v4)
  {
    return 0;
  }

  v6 = CFGetTypeID(v4);
  if (v6 != CFNumberGetTypeID())
  {
    return 0;
  }

  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(this, &cf);
  v7 = ASDT::IOUserClient::ConvertNumber<unsigned long long>(&cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void sub_24165F3C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::ConvertNumber<unsigned long long>(const __CFNumber **a1, const __CFBoolean **a2)
{
  v2 = *a1;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v4 = applesauce::CF::convert_as<unsigned long long,0>(v2);
  if (v5)
  {
    *a2 = v4;
  }

  return v5 & 1;
}

uint64_t ASDT::IOUserClient::ConvertValue(const void **this, const applesauce::CF::TypeRef *a2, float *a3)
{
  v4 = *this;
  if (!v4)
  {
    return 0;
  }

  v6 = CFGetTypeID(v4);
  if (v6 != CFNumberGetTypeID())
  {
    return 0;
  }

  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(this, &cf);
  v7 = ASDT::IOUserClient::ConvertNumber<float>(&cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void sub_24165F4EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::ConvertNumber<float>(const __CFNumber **a1, _DWORD *a2)
{
  v2 = *a1;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v4 = applesauce::CF::convert_as<float,0>(v2);
  if ((v4 & 0x100000000) != 0)
  {
    *a2 = v4;
  }

  return HIDWORD(v4) & 1;
}

uint64_t ASDT::IOUserClient::ConvertValue(const void **this, const __CFBoolean **a2, double *a3)
{
  v4 = *this;
  if (!v4)
  {
    return 0;
  }

  v6 = CFGetTypeID(v4);
  if (v6 != CFNumberGetTypeID())
  {
    return 0;
  }

  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(this, &cf);
  v7 = ASDT::IOUserClient::ConvertNumber<double>(&cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void sub_24165F610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::ConvertNumber<double>(const __CFNumber **a1, const __CFBoolean **a2)
{
  v2 = *a1;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v4 = applesauce::CF::convert_as<double,0>(v2);
  if (v5)
  {
    *a2 = v4;
  }

  return v5 & 1;
}

uint64_t ASDT::IOUserClient::ConvertValue(const void **this, const void **a2, applesauce::CF::StringRef *a3)
{
  result = *this;
  if (result)
  {
    v6 = CFGetTypeID(result);
    if (v6 == CFStringGetTypeID())
    {
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(this, &v8);
      v7 = *a2;
      *a2 = v8;
      v8 = v7;
      if (v7)
      {
        CFRelease(v7);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::StringRef@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (!result)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFStringGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a1;
  if (v6)
  {
    CFRetain(v6);
    *a2 = v6;
    v7 = CFGetTypeID(v6);
    result = CFStringGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEC720](v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
LABEL_6:
    *a2 = 0;
  }

  return result;
}

void sub_24165F820(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::ConvertValue(const void **a1, const void **a2)
{
  result = *a1;
  if (result)
  {
    v5 = CFGetTypeID(result);
    if (v5 == CFArrayGetTypeID())
    {
      applesauce::CF::TypeRef::operator applesauce::CF::ArrayRef(a1, &v7);
      v6 = *a2;
      *a2 = v7;
      v7 = v6;
      if (v6)
      {
        CFRelease(v6);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

{
  result = *a1;
  if (result)
  {
    v5 = CFGetTypeID(result);
    if (v5 == CFDataGetTypeID())
    {
      applesauce::CF::TypeRef::operator applesauce::CF::DataRef(a1, &v7);
      v6 = *a2;
      *a2 = v7;
      v7 = v6;
      if (v6)
      {
        CFRelease(v6);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::ArrayRef@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (!result)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFArrayGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a1;
  if (v6)
  {
    CFRetain(v6);
    *a2 = v6;
    v7 = CFGetTypeID(v6);
    result = CFArrayGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEC720](v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
LABEL_6:
    *a2 = 0;
  }

  return result;
}

void sub_24165F9D4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::ConvertValue(const void **this, const void **a2, applesauce::CF::DictionaryRef *a3)
{
  result = *this;
  if (result)
  {
    v6 = CFGetTypeID(result);
    if (v6 == CFDictionaryGetTypeID())
    {
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(this, &v8);
      v7 = *a2;
      *a2 = v8;
      v8 = v7;
      if (v7)
      {
        CFRelease(v7);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (!result)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a1;
  if (v6)
  {
    CFRetain(v6);
    *a2 = v6;
    v7 = CFGetTypeID(v6);
    result = CFDictionaryGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEC720](v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
LABEL_6:
    *a2 = 0;
  }

  return result;
}

void sub_24165FB88(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::DataRef@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (!result)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFDataGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a1;
  if (v6)
  {
    CFRetain(v6);
    *a2 = v6;
    v7 = CFGetTypeID(v6);
    result = CFDataGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEC720](v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
LABEL_6:
    *a2 = 0;
  }

  return result;
}

void sub_24165FD3C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::DictionarySetValueForKey(CFDictionaryRef *a1, const __CFString **a2, const void **a3)
{
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v16, *a1);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v11, *a1);
  *(&v11 + 1) = (v13 - v12) >> 3;
  std::map<applesauce::CF::StringRef,applesauce::CF::TypeRef>::map[abi:ne200100]<applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>>(&v21, &v16, &v11);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  v6 = std::map<applesauce::CF::StringRef,applesauce::CF::TypeRef>::insert_or_assign[abi:ne200100]<applesauce::CF::TypeRef&>(&v21, a2, a3);
  if (v22 == v6)
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOUserClient::DictionarySetValueForKey();
    }
  }

  else
  {
    v7 = applesauce::CF::details::make_CFDictionaryRef<applesauce::CF::StringRef,applesauce::CF::TypeRef>(&v21);
    v8 = *a1;
    *a1 = v7;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(&v21, v22[0]);
  return v22 != v6;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

const __CFString *std::map<applesauce::CF::StringRef,applesauce::CF::TypeRef>::insert_or_assign[abi:ne200100]<applesauce::CF::TypeRef&>(void *a1, const __CFString **a2, const void **a3)
{
  v6 = (a1 + 1);
  v7 = a1[1];
  if (!v7)
  {
    return std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_hint_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef&>(a1, v6, a2);
  }

  v8 = (a1 + 1);
  do
  {
    v9 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>((v7 + 32), a2);
    if (v9 <= kCFCompareGreaterThan)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (v9 > kCFCompareGreaterThan));
  }

  while (v7);
  if (v8 == v6 || applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(a2, v8 + 4) > kCFCompareGreaterThan)
  {
    v6 = v8;
    return std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_hint_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef&>(a1, v6, a2);
  }

  v11 = v8[5];
  v12 = *a3;
  v8[5] = *a3;
  if (v12)
  {
    CFRetain(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v8;
}

uint64_t ASDT::IOUserClient::ArraySetValueAtIndex(CFArrayRef *a1, unint64_t a2, CFTypeRef *a3, char a4)
{
  v8 = *a1;
  if (*a1)
  {
    Count = CFArrayGetCount(*a1);
    v10 = *a1;
    if (*a1)
    {
      v11 = CFArrayGetCount(*a1);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    v10 = 0;
  }

  v11 = 0;
LABEL_6:
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31[0] = v10;
  v32[0] = v8;
  v32[1] = 0;
  v32[2] = Count;
  v31[1] = v11;
  v31[2] = v11;
  std::vector<applesauce::CF::TypeRef>::__init_with_size[abi:ne200100]<applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>,applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>>(&v28, v32, v31, Count);
  v12 = *a3;
  if (*a3)
  {
    v13 = v29 - v28;
    if (a4)
    {
      if (v13 < a2)
      {
        v14 = ASDTBaseLogType();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      std::vector<applesauce::CF::TypeRef>::insert(&v28, &v28[a2], a3);
    }

    else
    {
      if (v13 <= a2)
      {
        v24 = ASDTBaseLogType();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v19 = v28[a2];
      v28[a2] = v12;
      CFRetain(v12);
      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      v20 = ASDTBaseLogType();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOUserClient::ArraySetValueAtIndex();
      }

      goto LABEL_34;
    }

    v15 = v29;
    if (a2 >= v29 - v28)
    {
      v26 = ASDTBaseLogType();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
LABEL_33:
        ASDT::IOUserClient::ArraySetValueAtIndex();
      }

LABEL_34:
      v23 = 0;
      goto LABEL_35;
    }

    v16 = &v28[a2];
    v17 = (v16 + 1);
    if (v16 + 1 != v29)
    {
      v18 = *v16;
      do
      {
        *(v17 - 1) = *v17;
        *v17++ = v18;
      }

      while (v17 != v15);
      v15 = v29;
      v16 = (v17 - 1);
    }

    while (v15 != v16)
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(--v15);
    }

    v29 = v16;
  }

  v21 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::TypeRef>(&v28);
  v22 = *a1;
  *a1 = v21;
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = 1;
LABEL_35:
  v32[0] = &v28;
  std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](v32);
  return v23;
}

void sub_24166022C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a10;
  std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

const void **std::vector<applesauce::CF::TypeRef>::insert(uint64_t *a1, const void **a2, CFTypeRef *a3)
{
  v3 = a2;
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v9 = *a1;
    v10 = ((v6 - *a1) >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<ASDT::Exclaves::StatusTracker::Update>::__throw_length_error[abi:ne200100]();
    }

    v11 = a2 - v9;
    v12 = v5 - v9;
    v13 = v12 >> 2;
    if (v12 >> 2 <= v10)
    {
      v13 = ((v6 - *a1) >> 3) + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v15 = v11 >> 3;
    v24[4] = a1;
    if (v14)
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a1, v14);
    }

    v24[0] = 0;
    v24[1] = 8 * v15;
    v24[2] = 8 * v15;
    v24[3] = 0;
    std::__split_buffer<applesauce::CF::TypeRef>::emplace_back<applesauce::CF::TypeRef const&>(v24, a3);
    v3 = std::vector<applesauce::CF::TypeRef>::__swap_out_circular_buffer(a1, v24, v3);
    std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(v24);
  }

  else if (a2 == v6)
  {
    std::construct_at[abi:ne200100]<applesauce::CF::TypeRef,applesauce::CF::TypeRef const&,applesauce::CF::TypeRef*>(a1[1], a3);
    a1[1] = (v6 + 1);
  }

  else
  {
    v7 = v6 - 1;
    if (v6 < 8)
    {
      v8 = a1[1];
    }

    else
    {
      *v6 = *v7;
      v8 = v6 + 1;
      *v7 = 0;
    }

    a1[1] = v8;
    if (v6 != a2 + 1)
    {
      v16 = a2 - v6 + 8;
      v17 = v6 - 2;
      do
      {
        v18 = *v7;
        *v7-- = *v17;
        *v17-- = v18;
        v16 += 8;
      }

      while (v16);
      v8 = a1[1];
    }

    v19 = v8 <= a3 || a2 > a3;
    v20 = 1;
    if (v19)
    {
      v20 = 0;
    }

    v21 = *a2;
    v22 = a3[v20];
    *a2 = v22;
    if (v22)
    {
      CFRetain(v22);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  return v3;
}

void sub_241660400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ASDT::IOUserClient::PropertiesChanged(ASDT::IOUserClient *this)
{
  std::__shared_mutex_base::lock((this + 200));
  *(this + 144) = 1;
  std::__shared_mutex_base::unlock((this + 200));
}

uint64_t ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, CFTypeRef *a3, BOOL a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = (this + 200);
  v26 = this + 200;
  v27 = 1;
  std::__shared_mutex_base::lock_shared((this + 200));
  ASDT::IOConnect::IOConnect(v43, (this + 40), a4);
  if (!ASDT::IOConnect::Get(v43))
  {
    v10 = 1937010544;
LABEL_6:
    v12 = ASDTBaseLogType();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v11 = 0;
      goto LABEL_8;
    }

    v15 = (this + 16);
    if (*(this + 39) < 0)
    {
      v15 = *v15;
    }

    if (!*a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEC720](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    std::string::basic_string[abi:ne200100]<0>(&v24, "Unknown");
    v16 = *a2;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v28 = v24;
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v16))
    {
      applesauce::CF::details::CFString_get_value<false>(v16, &__p);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      goto LABEL_22;
    }

LABEL_21:
    __p = v28;
LABEL_22:
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v19 = HIBYTE(v10);
    if ((v10 - 0x20000000) >> 24 >= 0x5F)
    {
      v19 = 32;
    }

    *buf = 136316674;
    v30 = v15;
    v20 = BYTE2(v10);
    if (BYTE2(v10) - 32 >= 0x5F)
    {
      v20 = 32;
    }

    v31 = 2080;
    v32 = p_p;
    v21 = BYTE1(v10);
    if (BYTE1(v10) - 32 >= 0x5F)
    {
      v21 = 32;
    }

    v33 = 1024;
    v34 = v10;
    v35 = 1024;
    v36 = v19;
    v37 = 1024;
    v38 = v20;
    if (v10 - 32 >= 0x5F)
    {
      v22 = 32;
    }

    else
    {
      v22 = v10;
    }

    v39 = 1024;
    v40 = v21;
    v41 = 1024;
    v42 = v22;
    _os_log_error_impl(&dword_241659000, v12, OS_LOG_TYPE_ERROR, "%s: Failed to set property '%s': %x '%c%c%c%c'", buf, 0x34u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    goto LABEL_7;
  }

  v9 = ASDT::IOConnect::Get(v43);
  v10 = IOConnectSetCFProperty(v9, *a2, *a3);
  if (v10)
  {
    goto LABEL_6;
  }

  if ((*(this + 145) & 1) == 0)
  {
    std::__shared_mutex_base::unlock_shared(v8);
    v27 = 0;
    (*(*this + 24))(this);
    ASDT::IOConnect::~IOConnect(v43);
    v11 = 1;
    goto LABEL_9;
  }

  v11 = 1;
LABEL_8:
  ASDT::IOConnect::~IOConnect(v43);
  std::__shared_mutex_base::unlock_shared(v8);
LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

{
  v7 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v10 = v7;
  v8 = ASDT::IOUserClient::SetProperty(this, a2, &v10, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

{
  v7 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v10 = v7;
  v8 = ASDT::IOUserClient::SetProperty(this, a2, &v10, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

{
  v7 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v10 = v7;
  v8 = ASDT::IOUserClient::SetProperty(this, a2, &v10, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

{
  v7 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v10 = v7;
  v8 = ASDT::IOUserClient::SetProperty(this, a2, &v10, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void sub_241660774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, int a3, BOOL a4)
{
  v7 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  v11[1] = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v11[0] = v8;
  v9 = ASDT::IOUserClient::SetProperty(this, a2, v11, a4);
  if (v8)
  {
    CFRelease(v8);
    CFRelease(v8);
  }

  return v9;
}

{
  LODWORD(v12) = a3;
  v7 = CFNumberCreate(0, kCFNumberIntType, &v12);
  cf = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = v7;
  CFRetain(v7);
  v12 = v8;
  v9 = ASDT::IOUserClient::SetProperty(this, a2, &v12, a4);
  CFRelease(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

{
  LODWORD(v12) = a3;
  v7 = CFNumberCreate(0, kCFNumberIntType, &v12);
  cf = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = v7;
  CFRetain(v7);
  v12 = v8;
  v9 = ASDT::IOUserClient::SetProperty(this, a2, &v12, a4);
  CFRelease(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void sub_24166086C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::TypeRef::~TypeRef(&a9);
  applesauce::CF::BooleanRef::~BooleanRef(&a10);
  _Unwind_Resume(a1);
}

void sub_241660954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void sub_241660A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, const __CFNumber *a3, BOOL a4)
{
  valuePtr = a3;
  v7 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  cf = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = v7;
  CFRetain(v7);
  valuePtr = v8;
  v9 = ASDT::IOUserClient::SetProperty(this, a2, &valuePtr, a4);
  CFRelease(v8);
  CFRelease(cf);
  return v9;
}

{
  valuePtr = a3;
  v7 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  cf = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = v7;
  CFRetain(v7);
  valuePtr = v8;
  v9 = ASDT::IOUserClient::SetProperty(this, a2, &valuePtr, a4);
  CFRelease(v8);
  CFRelease(cf);
  return v9;
}

uint64_t ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, float a3, BOOL a4)
{
  *&v12 = a3;
  v7 = CFNumberCreate(0, kCFNumberFloatType, &v12);
  cf = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = v7;
  CFRetain(v7);
  v12 = v8;
  v9 = ASDT::IOUserClient::SetProperty(this, a2, &v12, a4);
  CFRelease(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void sub_241660DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, double a3, BOOL a4)
{
  valuePtr = *&a3;
  v7 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  cf = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = v7;
  CFRetain(v7);
  valuePtr = v8;
  v9 = ASDT::IOUserClient::SetProperty(this, a2, &valuePtr, a4);
  CFRelease(v8);
  CFRelease(cf);
  return v9;
}

void sub_241660F7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void sub_24166100C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void sub_24166109C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void sub_24166112C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, CFTypeRef *a3, const applesauce::CF::TypeRef *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v5 = IORegistryEntrySetCFProperty(this, *a2, *a3);
    if (!v5)
    {
      result = 1;
      goto LABEL_11;
    }

    v6 = v5;
    v7 = ASDTBaseLogType();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      std::string::basic_string[abi:ne200100]<0>(&v19, "Unknown");
      v9 = *a2;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
      }

      else
      {
        v21 = v19;
      }

      if (v9 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v9)))
      {
        applesauce::CF::details::CFString_get_value<false>(v9, &__p);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        __p = v21;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v14 = HIBYTE(v6);
      if ((v6 - 0x20000000) >> 24 >= 0x5F)
      {
        v14 = 32;
      }

      v15 = BYTE2(v6);
      if (BYTE2(v6) - 32 >= 0x5F)
      {
        v15 = 32;
      }

      LODWORD(v21.__r_.__value_.__l.__data_) = 136316418;
      *(v21.__r_.__value_.__r.__words + 4) = p_p;
      v16 = BYTE1(v6);
      if (BYTE1(v6) - 32 >= 0x5F)
      {
        v16 = 32;
      }

      WORD2(v21.__r_.__value_.__r.__words[1]) = 1024;
      *(&v21.__r_.__value_.__r.__words[1] + 6) = v6;
      WORD1(v21.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(v21.__r_.__value_.__r.__words[2]) = v14;
      v22 = 1024;
      v23 = v15;
      v24 = 1024;
      if (v6 - 32 >= 0x5F)
      {
        v17 = 32;
      }

      else
      {
        v17 = v6;
      }

      v25 = v16;
      v26 = 1024;
      v27 = v17;
      _os_log_error_impl(&dword_241659000, v7, OS_LOG_TYPE_ERROR, "IOUserClient: Failed to set property '%s': %x '%c%c%c%c'", &v21, 0x2Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      goto LABEL_9;
    }
  }

  else
  {
    v10 = ASDTBaseLogType();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      ASDT::IOUserClient::SetProperty();
LABEL_9:
      result = 0;
    }
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v6 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v9 = v6;
  v7 = ASDT::IOUserClient::SetProperty(this, a2, &v9, a4);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

{
  v6 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v9 = v6;
  v7 = ASDT::IOUserClient::SetProperty(this, a2, &v9, a4);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

void sub_241661398(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, const applesauce::CF::StringRef *a3, const applesauce::CF::TypeRef *a4)
{
  v6 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v6 = MEMORY[0x277CBED10];
  }

  v7 = *v6;
  v10[1] = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v10[0] = v7;
  v8 = ASDT::IOUserClient::SetProperty(this, a2, v10, a4);
  if (v7)
  {
    CFRelease(v7);
    CFRelease(v7);
  }

  return v8;
}

void sub_241661464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::TypeRef::~TypeRef(&a9);
  applesauce::CF::BooleanRef::~BooleanRef(&a10);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, const applesauce::CF::StringRef *a3)
{
  LODWORD(v11) = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &v11);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = v5;
  CFRetain(v5);
  v11 = v6;
  v8 = ASDT::IOUserClient::SetProperty(this, a2, &v11, v7);
  CFRelease(v6);
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

{
  LODWORD(v11) = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &v11);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = v5;
  CFRetain(v5);
  v11 = v6;
  v8 = ASDT::IOUserClient::SetProperty(this, a2, &v11, v7);
  CFRelease(v6);
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = v5;
  CFRetain(v5);
  valuePtr = v6;
  v8 = ASDT::IOUserClient::SetProperty(this, a2, &valuePtr, v7);
  CFRelease(v6);
  CFRelease(cf);
  return v8;
}

{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = v5;
  CFRetain(v5);
  valuePtr = v6;
  v8 = ASDT::IOUserClient::SetProperty(this, a2, &valuePtr, v7);
  CFRelease(v6);
  CFRelease(cf);
  return v8;
}

void sub_241661544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void sub_241661650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, const applesauce::CF::StringRef *a3, float a4)
{
  *&v12 = a4;
  v6 = CFNumberCreate(0, kCFNumberFloatType, &v12);
  cf = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = v6;
  CFRetain(v6);
  v12 = v7;
  v9 = ASDT::IOUserClient::SetProperty(this, a2, &v12, v8);
  CFRelease(v7);
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void sub_241661974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, const applesauce::CF::StringRef *a3, double a4)
{
  valuePtr = *&a4;
  v6 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  cf = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = v6;
  CFRetain(v6);
  valuePtr = v7;
  v9 = ASDT::IOUserClient::SetProperty(this, a2, &valuePtr, v8);
  CFRelease(v7);
  CFRelease(cf);
  return v9;
}

void sub_241661B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void sub_241661BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, CFTypeRef *a3, const applesauce::CF::DictionaryRef *a4)
{
  v6 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v9 = v6;
  v7 = ASDT::IOUserClient::SetProperty(this, a2, &v9, a4);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

void sub_241661C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::SetProperty(ASDT::IOUserClient *this, CFStringRef *a2, CFTypeRef *a3, const applesauce::CF::StringRef *a4)
{
  v6 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v9 = v6;
  v7 = ASDT::IOUserClient::SetProperty(this, a2, &v9, a4);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

void sub_241661CD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::ReplaceProperty(CFDictionaryRef *this, const void **a2, const applesauce::CF::TypeRef *a3, char a4)
{
  v56 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    v10 = ASDTBaseLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOUserClient::ReplaceProperty(this);
    }

    goto LABEL_16;
  }

  if (!*a3 && (a4 & 1) == 0)
  {
    v7 = ASDTBaseLogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = this + 2;
      if (*(this + 39) < 0)
      {
        v8 = *v8;
      }

      *v53 = applesauce::CF::StringRef::operator->(a2);
      std::string::basic_string[abi:ne200100]<0>(v49, "Unknown");
      applesauce::CF::StringRef_proxy::convert_or(v53, v49, &v51);
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v51;
      }

      else
      {
        v9 = v51.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v8;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
      _os_log_error_impl(&dword_241659000, v7, OS_LOG_TYPE_ERROR, "%s: ReplaceProperty(%s) invalid value: (null).", &buf, 0x16u);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (v50 < 0)
      {
        operator delete(v49[0]);
      }
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  ASDT::IOUserClient::CacheProperties(this, &v47);
  v14 = this[17];
  if (v14)
  {
    buf.__r_.__value_.__r.__words[0] = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef const&>(v14, a2, &buf, &v51);
    if (buf.__r_.__value_.__r.__words[0])
    {
      CFRelease(buf.__r_.__value_.__l.__data_);
    }

    v15 = v51.__r_.__value_.__r.__words[0];
    v16 = *a3;
    if (v51.__r_.__value_.__r.__words[0])
    {
      if (!v16)
      {
        goto LABEL_30;
      }

      v17 = CFEqual(v51.__r_.__value_.__l.__data_, v16);
      v15 = v51.__r_.__value_.__r.__words[0];
      if (v17)
      {
        if (v51.__r_.__value_.__r.__words[0])
        {
          CFRelease(v51.__r_.__value_.__l.__data_);
        }

        goto LABEL_28;
      }

      if (v51.__r_.__value_.__r.__words[0])
      {
LABEL_30:
        CFRelease(v15);
      }
    }

    else if (!v16)
    {
LABEL_28:
      v11 = 1;
      goto LABEL_65;
    }

    v18 = this[17];
  }

  else
  {
    v18 = 0;
  }

  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v42, v18);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v37, this[17]);
  *(&v37 + 1) = (v39 - v38) >> 3;
  std::map<applesauce::CF::StringRef,applesauce::CF::TypeRef>::map[abi:ne200100]<applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>>(&v51, &v42, &v37);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v19 = std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::find<applesauce::CF::StringRef>(&v51, a2);
  v20 = *a3;
  if (*a3)
  {
    if (&v51.__r_.__value_.__r.__words[1] == v19)
    {
      if (v19 == std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&>(&v51, a2))
      {
        v22 = ASDTBaseLogType();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v29 = this + 2;
          if (*(this + 39) < 0)
          {
            v29 = *v29;
          }

          v36 = applesauce::CF::StringRef::operator->(a2);
          std::string::basic_string[abi:ne200100]<0>(v34, "Unknown");
          applesauce::CF::StringRef_proxy::convert_or(&v36, v34, &buf);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v53 = 136315394;
          *&v53[4] = v29;
          v54 = 2080;
          v55 = p_buf;
          _os_log_error_impl(&dword_241659000, v22, OS_LOG_TYPE_ERROR, "%s: ReplaceProperty(%s) failed to insert.", v53, 0x16u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v35 < 0)
          {
            operator delete(v34[0]);
          }
        }

        v11 = 0;
        goto LABEL_64;
      }
    }

    else
    {
      info = v19[1].info;
      v19[1].info = v20;
      CFRetain(v20);
      if (info)
      {
        CFRelease(info);
      }
    }

    goto LABEL_49;
  }

  if (&v51.__r_.__value_.__r.__words[1] != v19)
  {
    std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::erase(&v51, v19);
LABEL_49:
    v23 = applesauce::CF::details::make_CFDictionaryRef<applesauce::CF::StringRef,applesauce::CF::TypeRef>(&v51);
    v24 = v23;
    v36 = v23;
    v11 = v23 != 0;
    if (v23)
    {
      v25 = this[17];
      this[17] = v23;
      CFRetain(v23);
      if (v25)
      {
        CFRelease(v25);
      }

      CFRelease(v24);
    }

    else
    {
      v26 = ASDTBaseLogType();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = this + 2;
        if (*(this + 39) < 0)
        {
          v27 = *v27;
        }

        v33 = applesauce::CF::StringRef::operator->(a2);
        std::string::basic_string[abi:ne200100]<0>(v31, "Unknown");
        applesauce::CF::StringRef_proxy::convert_or(&v33, v31, &buf);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &buf;
        }

        else
        {
          v28 = buf.__r_.__value_.__r.__words[0];
        }

        *v53 = 136315394;
        *&v53[4] = v27;
        v54 = 2080;
        v55 = v28;
        _os_log_error_impl(&dword_241659000, v26, OS_LOG_TYPE_ERROR, "%s: ReplaceProperty(%s) failed to create new dictionary", v53, 0x16u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (v32 < 0)
        {
          operator delete(v31[0]);
        }
      }
    }

    goto LABEL_64;
  }

  v11 = 1;
LABEL_64:
  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(&v51, v51.__r_.__value_.__l.__size_);
LABEL_65:
  if (v48 == 1)
  {
    std::__shared_mutex_base::unlock(v47);
  }

LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_2416621D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(v33 - 152, *(v33 - 144));
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::ReplaceProperty(CFDictionaryRef *this, const void **a2, int a3)
{
  v5 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v5 = MEMORY[0x277CBED10];
  }

  v6 = *v5;
  cf[1] = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  cf[0] = v6;
  v7 = ASDT::IOUserClient::ReplaceProperty(this, a2, cf, 0);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

{
  LODWORD(cf) = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &cf);
  v11 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = v5;
  CFRetain(v5);
  cf = v6;
  v7 = ASDT::IOUserClient::ReplaceProperty(this, a2, &cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v7;
}

{
  LODWORD(cf) = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &cf);
  v11 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = v5;
  CFRetain(v5);
  cf = v6;
  v7 = ASDT::IOUserClient::ReplaceProperty(this, a2, &cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v7;
}

void sub_241662324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::TypeRef::~TypeRef(&a9);
  applesauce::CF::BooleanRef::~BooleanRef(&a10);
  _Unwind_Resume(a1);
}

void sub_24166240C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void sub_241662520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::ReplaceProperty(CFDictionaryRef *this, const void **a2, const __CFNumber *a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = v5;
  CFRetain(v5);
  valuePtr = v6;
  v7 = ASDT::IOUserClient::ReplaceProperty(this, a2, &valuePtr, 0);
  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = v5;
  CFRetain(v5);
  valuePtr = v6;
  v7 = ASDT::IOUserClient::ReplaceProperty(this, a2, &valuePtr, 0);
  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

BOOL ASDT::IOUserClient::ReplaceProperty(CFDictionaryRef *this, const void **a2, float a3)
{
  *&cf = a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &cf);
  v11 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = v5;
  CFRetain(v5);
  cf = v6;
  v7 = ASDT::IOUserClient::ReplaceProperty(this, a2, &cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v7;
}

void sub_24166285C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::ReplaceProperty(CFDictionaryRef *this, const void **a2, double a3)
{
  valuePtr = *&a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = v5;
  CFRetain(v5);
  valuePtr = v6;
  v7 = ASDT::IOUserClient::ReplaceProperty(this, a2, &valuePtr, 0);
  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

BOOL ASDT::IOUserClient::ReplaceProperty(CFDictionaryRef *this, const void **a2, CFTypeRef *a3)
{
  v5 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  cf = v5;
  v6 = ASDT::IOUserClient::ReplaceProperty(this, a2, &cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

{
  v5 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  cf = v5;
  v6 = ASDT::IOUserClient::ReplaceProperty(this, a2, &cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

{
  v5 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  cf = v5;
  v6 = ASDT::IOUserClient::ReplaceProperty(this, a2, &cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

{
  v5 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  cf = v5;
  v6 = ASDT::IOUserClient::ReplaceProperty(this, a2, &cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sub_241662A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void sub_241662ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void sub_241662B48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void sub_241662BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOUserClient::RemoveProperty(CFDictionaryRef *this, const void **a2)
{
  cf = 0;
  v2 = ASDT::IOUserClient::ReplaceProperty(this, a2, &cf, 1);
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

void sub_241662C34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::IsConnectionOpen(ASDT::IOUserClient *this)
{
  v2 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  IsOpen = ASDT::IOConnect::IsOpen((this + 40));
  std::__shared_mutex_base::unlock_shared(v2);
  return IsOpen;
}

uint64_t ASDT::IOUserClient::GetConnectionRefCount(ASDT::IOUserClient *this)
{
  v2 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  v3 = ASDT::IOConnect::Get((this + 40));
  IOObjectRefCount = ASDT::IOUserClient::GetIOObjectRefCount(v3);
  std::__shared_mutex_base::unlock_shared(v2);
  return IOObjectRefCount;
}

void ASDT::IOUserClient::EnableConnections(ASDT::IOUserClient *this, char a2)
{
  v4 = (this + 200);
  std::__shared_mutex_base::lock((this + 200));
  ASDT::IOConnect::Enable((this + 40), a2);
  std::__shared_mutex_base::unlock(v4);
}

BOOL ASDT::IOUserClient::OpenConnection(ASDT::IOUserClient *this)
{
  v1 = this;
  v2 = (this + 200);
  std::__shared_mutex_base::lock((this + 200));
  LODWORD(v1) = ASDT::IOConnect::Open((v1 + 40));
  std::__shared_mutex_base::unlock(v2);
  return v1 != 0;
}

void ASDT::IOUserClient::GuardedCloseConnection(ASDT::IOUserClient *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 19) = 0;
    (*(*v2 + 8))(v2);
  }

  ASDT::IOConnect::Close((this + 40));
}

void ASDT::IOUserClient::CloseConnection(ASDT::IOUserClient *this)
{
  v2 = (this + 200);
  std::__shared_mutex_base::lock((this + 200));
  (*(*this + 40))(this);
  std::__shared_mutex_base::unlock(v2);
}

uint64_t ASDT::IOUserClient::GetConnectionNotificationPort(ASDT::IOUserClient *this)
{
  v2 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  if (ASDT::IOConnect::IsValid((this + 40)))
  {
    v3 = *(this + 19);
  }

  else
  {
    v3 = 0;
  }

  std::__shared_mutex_base::unlock_shared(v2);
  return v3;
}

uint64_t ASDT::IOUserClient::SetConnectionNotification(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = 560947818;
  v9 = (a1 + 200);
  std::__shared_mutex_base::lock((a1 + 200));
  if (*a3 && *(*a3 + 8))
  {
    v10 = ASDT::IOConnect::Get((a1 + 40));
    if (v10)
    {
      v8 = MEMORY[0x245CEC420](v10, a2, *(*a3 + 8), a4);
      if (!v8)
      {
        v11 = *a3;
        *a3 = 0;
        v12 = *(a1 + 152);
        *(a1 + 152) = v11;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        v13 = 1;
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 1852990585;
    }
  }

  v14 = ASDTBaseLogType();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v17 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v17 = *v17;
    }

    if (*a3)
    {
      v18 = *(*a3 + 8);
    }

    else
    {
      v18 = -1;
    }

    v19 = HIBYTE(v8);
    *buf = 136316930;
    v24 = v17;
    if ((v8 - 0x20000000) >> 24 >= 0x5F)
    {
      v19 = 32;
    }

    v25 = 1024;
    v26 = a2;
    v20 = BYTE2(v8);
    if (BYTE2(v8) - 32 >= 0x5F)
    {
      v20 = 32;
    }

    v27 = 1024;
    v28 = v18;
    v21 = BYTE1(v8);
    if (BYTE1(v8) - 32 >= 0x5F)
    {
      v21 = 32;
    }

    v29 = 1024;
    v30 = v8;
    v31 = 1024;
    if (v8 - 32 >= 0x5F)
    {
      v22 = 32;
    }

    else
    {
      v22 = v8;
    }

    v32 = v19;
    v33 = 1024;
    v34 = v20;
    v35 = 1024;
    v36 = v21;
    v37 = 1024;
    v38 = v22;
    _os_log_error_impl(&dword_241659000, v14, OS_LOG_TYPE_ERROR, "%s: SetConnectionNotificationPort(%u, %u, ...) failed: %x (%c%c%c%c)", buf, 0x36u);
  }

  v13 = 0;
LABEL_11:
  std::__shared_mutex_base::unlock(v9);
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

void ASDT::IOUserClient::MapMemory(ASDT::IOUserClient *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, ASDT::IOMemoryMap *a4@<X8>)
{
  v8 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  ASDT::IOMemoryMap::IOMemoryMap(a4, (this + 40), a2, a3);
  std::__shared_mutex_base::unlock_shared(v8);
}

uint64_t ASDT::IOUserClient::CallMethod(ASDT::IOUserClient *this, uint32_t a2, const unint64_t *a3, uint32_t a4, const void *a5, size_t a6, unint64_t *a7, unsigned int *a8, void *outputStruct, unint64_t *a10, BOOL a11)
{
  v57 = *MEMORY[0x277D85DE8];
  v33 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  ASDT::IOConnect::IOConnect(v56, (this + 40), a11);
  if (ASDT::IOConnect::Get(v56))
  {
    v19 = ASDT::IOConnect::Get(v56);
    v20 = IOConnectCallMethod(v19, a2, a3, a4, a5, a6, a7, a8, outputStruct, a10);
    if (!v20)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 1937010544;
  }

  v21 = ASDTBaseLogType();
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    ASDT::IOConnect::~IOConnect(v56);
    goto LABEL_7;
  }

  v24 = (this + 16);
  if (*(this + 39) < 0)
  {
    v24 = *v24;
  }

  v25 = HIBYTE(a2);
  if ((a2 - 0x20000000) >> 24 >= 0x5F)
  {
    v25 = 32;
  }

  *buf = 136317698;
  v35 = v24;
  v26 = BYTE2(a2);
  if (BYTE2(a2) - 32 >= 0x5F)
  {
    v26 = 32;
  }

  v36 = 1024;
  v37 = a2;
  v27 = BYTE1(a2);
  if (BYTE1(a2) - 32 >= 0x5F)
  {
    v27 = 32;
  }

  v38 = 1024;
  v39 = v25;
  v28 = a2;
  if (a2 - 32 >= 0x5F)
  {
    v28 = 32;
  }

  v40 = 1024;
  v41 = v26;
  if ((v20 - 0x20000000) >> 24 >= 0x5F)
  {
    v29 = 32;
  }

  else
  {
    v29 = BYTE3(v20);
  }

  v42 = 1024;
  v43 = v27;
  v30 = BYTE2(v20);
  if (BYTE2(v20) - 32 >= 0x5F)
  {
    v30 = 32;
  }

  v44 = 1024;
  v45 = v28;
  v31 = BYTE1(v20);
  if (BYTE1(v20) - 32 >= 0x5F)
  {
    v31 = 32;
  }

  v46 = 1024;
  v47 = v20;
  v48 = 1024;
  v49 = v29;
  v50 = 1024;
  v51 = v30;
  if (v20 - 32 >= 0x5F)
  {
    v32 = 32;
  }

  else
  {
    v32 = v20;
  }

  v52 = 1024;
  v53 = v31;
  v54 = 1024;
  v55 = v32;
  _os_log_error_impl(&dword_241659000, v21, OS_LOG_TYPE_ERROR, "%s: CallMethod %x (%c%c%c%c) failed: %x (%c%c%c%c)", buf, 0x48u);
  ASDT::IOConnect::~IOConnect(v56);
LABEL_7:
  std::__shared_mutex_base::unlock_shared(v33);
  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2416634C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  ASDT::IOConnect::~IOConnect(va1);
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::CallTrap(ASDT::IOUserClient *this, uint32_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v18 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  v4 = ASDT::IOConnect::Get((this + 40));
  if (v4)
  {
    v5 = IOConnectTrap0(v4, a2);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 1937010544;
  }

  v6 = ASDTBaseLogType();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = (this + 16);
    if (*(this + 39) < 0)
    {
      v9 = *v9;
    }

    v10 = HIBYTE(a2);
    if ((a2 - 0x20000000) >> 24 >= 0x5F)
    {
      v10 = 32;
    }

    *buf = 136317698;
    v20 = v9;
    v11 = BYTE2(a2);
    if (BYTE2(a2) - 32 >= 0x5F)
    {
      v11 = 32;
    }

    v21 = 1024;
    v22 = a2;
    v12 = BYTE1(a2);
    if (BYTE1(a2) - 32 >= 0x5F)
    {
      v12 = 32;
    }

    v23 = 1024;
    v24 = v10;
    v13 = a2;
    if (a2 - 32 >= 0x5F)
    {
      v13 = 32;
    }

    v25 = 1024;
    v26 = v11;
    if ((v5 - 0x20000000) >> 24 >= 0x5F)
    {
      v14 = 32;
    }

    else
    {
      v14 = BYTE3(v5);
    }

    v27 = 1024;
    v28 = v12;
    v15 = BYTE2(v5);
    if (BYTE2(v5) - 32 >= 0x5F)
    {
      v15 = 32;
    }

    v29 = 1024;
    v30 = v13;
    v16 = BYTE1(v5);
    if (BYTE1(v5) - 32 >= 0x5F)
    {
      v16 = 32;
    }

    v31 = 1024;
    v32 = v5;
    v33 = 1024;
    v34 = v14;
    v35 = 1024;
    v36 = v15;
    if (v5 - 32 >= 0x5F)
    {
      v17 = 32;
    }

    else
    {
      v17 = v5;
    }

    v37 = 1024;
    v38 = v16;
    v39 = 1024;
    v40 = v17;
    _os_log_error_impl(&dword_241659000, v6, OS_LOG_TYPE_ERROR, "%s: CallTrap %x (%c%c%c%c) failed: %x (%c%c%c%c)", buf, 0x48u);
  }

LABEL_6:
  std::__shared_mutex_base::unlock_shared(v18);
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ASDT::IOUserClient::CallTrap3(ASDT::IOUserClient *this, uint32_t a2, uintptr_t a3, uintptr_t a4, uintptr_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v24 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  v10 = ASDT::IOConnect::Get((this + 40));
  if (v10)
  {
    v11 = IOConnectTrap3(v10, a2, a3, a4, a5);
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 1937010544;
  }

  v12 = ASDTBaseLogType();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = (this + 16);
    if (*(this + 39) < 0)
    {
      v15 = *v15;
    }

    v16 = HIBYTE(a2);
    if ((a2 - 0x20000000) >> 24 >= 0x5F)
    {
      v16 = 32;
    }

    *buf = 136317698;
    v26 = v15;
    v17 = BYTE2(a2);
    if (BYTE2(a2) - 32 >= 0x5F)
    {
      v17 = 32;
    }

    v27 = 1024;
    v28 = a2;
    v18 = BYTE1(a2);
    if (BYTE1(a2) - 32 >= 0x5F)
    {
      v18 = 32;
    }

    v29 = 1024;
    v30 = v16;
    v19 = a2;
    if (a2 - 32 >= 0x5F)
    {
      v19 = 32;
    }

    v31 = 1024;
    v32 = v17;
    if ((v11 - 0x20000000) >> 24 >= 0x5F)
    {
      v20 = 32;
    }

    else
    {
      v20 = BYTE3(v11);
    }

    v33 = 1024;
    v34 = v18;
    v21 = BYTE2(v11);
    if (BYTE2(v11) - 32 >= 0x5F)
    {
      v21 = 32;
    }

    v35 = 1024;
    v36 = v19;
    v22 = BYTE1(v11);
    if (BYTE1(v11) - 32 >= 0x5F)
    {
      v22 = 32;
    }

    v37 = 1024;
    v38 = v11;
    v39 = 1024;
    v40 = v20;
    v41 = 1024;
    v42 = v21;
    if (v11 - 32 >= 0x5F)
    {
      v23 = 32;
    }

    else
    {
      v23 = v11;
    }

    v43 = 1024;
    v44 = v22;
    v45 = 1024;
    v46 = v23;
    _os_log_error_impl(&dword_241659000, v12, OS_LOG_TYPE_ERROR, "%s: CallTrap3 %x (%c%c%c%c) failed: %x (%c%c%c%c)", buf, 0x48u);
  }

LABEL_6:
  std::__shared_mutex_base::unlock_shared(v24);
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t ASDT::IOUserClient::CallTrap6(ASDT::IOUserClient *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = *MEMORY[0x277D85DE8];
  v30 = (this + 200);
  std::__shared_mutex_base::lock_shared((this + 200));
  v16 = ASDT::IOConnect::Get((this + 40));
  if (v16)
  {
    v17 = MEMORY[0x245CEC450](v16, a2, a3, a4, a5, a6, a7, a8, v30);
    if (!v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 1937010544;
  }

  v18 = ASDTBaseLogType();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v21 = (this + 16);
    if (*(this + 39) < 0)
    {
      v21 = *v21;
    }

    v22 = BYTE3(a2);
    if ((a2 - 0x20000000) >> 24 >= 0x5F)
    {
      v22 = 32;
    }

    *buf = 136317698;
    v32 = v21;
    v23 = BYTE2(a2);
    if (BYTE2(a2) - 32 >= 0x5F)
    {
      v23 = 32;
    }

    v33 = 1024;
    v34 = a2;
    v24 = BYTE1(a2);
    if (BYTE1(a2) - 32 >= 0x5F)
    {
      v24 = 32;
    }

    v35 = 1024;
    v36 = v22;
    v25 = a2;
    if (a2 - 32 >= 0x5F)
    {
      v25 = 32;
    }

    v37 = 1024;
    v38 = v23;
    if ((v17 - 0x20000000) >> 24 >= 0x5F)
    {
      v26 = 32;
    }

    else
    {
      v26 = BYTE3(v17);
    }

    v39 = 1024;
    v40 = v24;
    v27 = BYTE2(v17);
    if (BYTE2(v17) - 32 >= 0x5F)
    {
      v27 = 32;
    }

    v41 = 1024;
    v42 = v25;
    v28 = BYTE1(v17);
    if (BYTE1(v17) - 32 >= 0x5F)
    {
      v28 = 32;
    }

    v43 = 1024;
    v44 = v17;
    v45 = 1024;
    v46 = v26;
    v47 = 1024;
    v48 = v27;
    if (v17 - 32 >= 0x5F)
    {
      v29 = 32;
    }

    else
    {
      v29 = v17;
    }

    v49 = 1024;
    v50 = v28;
    v51 = 1024;
    v52 = v29;
    _os_log_error_impl(&dword_241659000, v18, OS_LOG_TYPE_ERROR, "%s: CallTrap6 %x (%c%c%c%c) failed: %x (%c%c%c%c)", buf, 0x48u);
  }

LABEL_6:
  std::__shared_mutex_base::unlock_shared(v30);
  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t ASDT::IOUserClient::ShouldEnableInterestNotification(ASDT::IOUserClient *this)
{
  if (*(this + 23) || (*(this + 192) & 1) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 193);
  }

  return v1 & 1;
}

uint64_t ASDT::IOUserClient::SetInterestNotificationEnabled(ASDT::IOUserClient *this, int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(this + 44) && *(this + 21))
    {
      goto LABEL_4;
    }

    mainPort = 0;
    if (MEMORY[0x245CEC490](*MEMORY[0x277D85F18], &mainPort))
    {
      v5 = ASDTBaseLogType();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOUserClient::SetInterestNotificationEnabled(this);
      }

LABEL_8:
      v4 = 0;
      goto LABEL_28;
    }

    v6 = IONotificationPortCreate(mainPort);
    *(this + 21) = v6;
    if (!v6)
    {
      v15 = ASDTBaseLogType();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOUserClient::SetInterestNotificationEnabled(this);
      }

      goto LABEL_8;
    }

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = (this + 16);
    v10 = this + 16;
    if (*(this + 39) < 0)
    {
      v10 = *v9;
    }

    v11 = dispatch_queue_create(v10, v8);
    *(this + 20) = v11;
    if (v11)
    {
      IONotificationPortSetDispatchQueue(*(this + 21), v11);
      v12 = IOServiceAddInterestNotification(*(this + 21), *(this + 2), "IOGeneralInterest", ASDT::IOUserClient::InterestNotificationCallback, this, this + 44);
      if (!v12)
      {
LABEL_4:
        v4 = 1;
        goto LABEL_28;
      }

      v13 = v12;
      v14 = ASDTBaseLogType();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 39) < 0)
        {
          v9 = *v9;
        }

        *buf = 136315394;
        v24 = v9;
        v25 = 1024;
        v26 = v13;
        _os_log_error_impl(&dword_241659000, v14, OS_LOG_TYPE_ERROR, "%s: IOServiceAddInterestNotification failed: %x", buf, 0x12u);
      }
    }

    else
    {
      v16 = ASDTBaseLogType();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOUserClient::SetInterestNotificationEnabled(this + 39, this + 2);
      }
    }
  }

  v17 = *(this + 44);
  if (v17)
  {
    IOObjectRelease(v17);
    *(this + 44) = 0;
  }

  v4 = a2 ^ 1u;
  v18 = *(this + 21);
  if (v18)
  {
    IONotificationPortDestroy(v18);
    *(this + 21) = 0;
  }

  v19 = *(this + 20);
  if (v19)
  {
    dispatch_release(v19);
    *(this + 20) = 0;
  }

LABEL_28:
  v20 = *MEMORY[0x277D85DE8];
  return v4;
}

void ASDT::IOUserClient::InterestNotificationCallback(ASDT::IOUserClient *this, void *a2, int a3, unsigned int a4, void *a5)
{
  if (this)
  {
    if (a3 == -536870896 || *(this + 2) == a2)
    {
      v6 = *(*this + 56);

      v6();
    }

    else
    {
      v7 = ASDTBaseLogType();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOUserClient::InterestNotificationCallback(this);
      }
    }
  }
}

_BYTE *ASDT::IOUserClient::InterestNotification(_BYTE *this, int a2, void *a3)
{
  if (a2 == -536870608)
  {
    if (this[193] == 1)
    {
      return (*(*this + 24))();
    }
  }

  else if (a2 == -536870896 && (*(this + 23) || this[192] == 1))
  {
    return (*(*this + 16))();
  }

  return this;
}

uint64_t ASDT::IOUserClient::SetTerminationBlock(ASDT::IOUserClient *a1, void *aBlock)
{
  v4 = *(a1 + 23);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 23) = 0;
  }

  if (aBlock)
  {
    *(a1 + 23) = _Block_copy(aBlock);
  }

  v5 = (*(*a1 + 48))(a1);

  return ASDT::IOUserClient::SetInterestNotificationEnabled(a1, v5);
}

uint64_t ASDT::IOUserClient::SetTerminationNotificationEnabled(ASDT::IOUserClient *this, char a2)
{
  v4 = (this + 200);
  std::__shared_mutex_base::lock((this + 200));
  *(this + 192) = a2;
  v5 = (*(*this + 48))(this);
  v6 = ASDT::IOUserClient::SetInterestNotificationEnabled(this, v5);
  std::__shared_mutex_base::unlock(v4);
  return v6;
}

uint64_t ASDT::IOUserClient::SetPropertyChangeNotificationEnabled(ASDT::IOUserClient *this, char a2)
{
  v4 = (this + 200);
  std::__shared_mutex_base::lock((this + 200));
  *(this + 193) = a2;
  v5 = (*(*this + 48))(this);
  v6 = ASDT::IOUserClient::SetInterestNotificationEnabled(this, v5);
  std::__shared_mutex_base::unlock(v4);
  return v6;
}

uint64_t ASDT::IOUserClient::Release(ASDT::IOUserClient *this)
{
  result = *(this + 2);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 2) = 0;
  }

  return result;
}

_BYTE *applesauce::CF::details::CFString_get_value<false>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v10.location = 0;
  v10.length = Length;
  CFStringGetBytes(a1, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v7 = maxBufLen;
  if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a2[23] = maxBufLen;
  if (v7)
  {
    bzero(a2, v7);
  }

  a2[v7] = 0;
  if (a2[23] >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v11.location = 0;
  v11.length = Length;
  return CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, v8, maxBufLen, &maxBufLen);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
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

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t applesauce::CF::convert_to<BOOL,0>(const __CFBoolean *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
    return v3 & 1;
  }

  v4 = CFNumberGetTypeID();
  if (v4 != CFGetTypeID(a1) || (v3 = applesauce::CF::details::number_convert_as<BOOL>(a1), (v3 & 0x100) == 0))
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return v3 & 1;
}

uint64_t applesauce::CF::details::number_convert_as<BOOL>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

const void **applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void std::vector<void const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<void const*>::__append(a1, a2 - v2);
  }
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<ASDT::Exclaves::StatusTracker::Update>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<applesauce::CF::TypeRef>::__init_with_size[abi:ne200100]<applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>,applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  v5 = 0;
  if (a4)
  {
    std::vector<applesauce::CF::TypeRef>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<applesauce::CF::TypeRef>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<void const*>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<ASDT::Exclaves::StatusTracker::Update>::__throw_length_error[abi:ne200100]();
}

void *std::vector<applesauce::CF::TypeRef>::__construct_at_end<applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>,applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  v8 = *a2;
  v9 = *(a2 + 2);
  v6 = *a3;
  v7 = *(a3 + 2);
  result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>,applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>(a1, &v8, &v6, v4);
  *(a1 + 8) = result;
  return result;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>,applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (!applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::equal(a2, a3))
  {
    v7 = 0;
    do
    {
      applesauce::CF::details::at_to<applesauce::CF::TypeRef>(*a2, *(a2 + 8), &v9);
      *a4++ = v9;
      ++*(a2 + 8);
      v7 -= 8;
    }

    while (!applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::equal(a2, a3));
  }

  return a4;
}

void sub_241664AEC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v4--);
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::equal(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  if (*a1)
  {
    v4 = v2 == a1[2];
  }

  else
  {
    v4 = 1;
  }

  if (v4 && (!v3 || a2[1] == a2[2]))
  {
    return 1;
  }

  if (*a1 == v3)
  {
    return v2 == a2[1];
  }

  return 0;
}

CFTypeRef applesauce::CF::details::at_to<applesauce::CF::TypeRef>@<X0>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  result = CFRetain(ValueAtIndex);
  *a3 = v7;
  return result;
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__split_buffer<applesauce::CF::TypeRef>::emplace_back<applesauce::CF::TypeRef const&>(void *a1, CFTypeRef *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = v3;
  if (v3 == v4)
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      v10 = v3 - *a1;
      v9 = v10 == 0;
      v11 = v10 >> 2;
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::allocator<void const*>::allocate_at_least[abi:ne200100](a1[4], v12);
    }

    v7 = ((v6 - *a1) >> 3) + 1;
    v5 = &v6[-(v7 / 2)];
    if (v6 != v3)
    {
      do
      {
        v8 = *v5;
        *v5++ = *v6;
        *v6++ = v8;
      }

      while (v6 != v3);
      v6 = a1[1];
    }

    a1[1] = &v6[v7 / -2];
    a1[2] = v5;
  }

  result = std::construct_at[abi:ne200100]<applesauce::CF::TypeRef,applesauce::CF::TypeRef const&,applesauce::CF::TypeRef*>(v5, a2);
  a1[2] += 8;
  return result;
}

uint64_t std::vector<applesauce::CF::TypeRef>::__swap_out_circular_buffer(uint64_t a1, void *a2, const void **a3)
{
  v6 = *(a1 + 8);
  v8 = a2[1];
  v7 = a2[2];
  if (v6 == a3)
  {
    v12 = a2[1];
    v11 = a3;
  }

  else
  {
    v9 = a3;
    do
    {
      *v7++ = *v9;
      *v9++ = 0;
    }

    while (v9 != v6);
    v10 = a3;
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v10++);
    }

    while (v10 != v6);
    v11 = *(a1 + 8);
    v12 = a2[1];
    v7 = a2[2];
  }

  a2[2] = v7 + v11 - a3;
  *(a1 + 8) = a3;
  v13 = *a1;
  v14 = v12 + *a1 - a3;
  if (*a1 != a3)
  {
    v15 = *a1;
    v16 = (v12 + *a1 - a3);
    do
    {
      *v16++ = *v15;
      *v15++ = 0;
    }

    while (v15 != a3);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v13++);
    }

    while (v13 != a3);
    v13 = *a1;
  }

  a2[1] = v14;
  *a1 = v14;
  *(a1 + 8) = v13;
  a2[1] = v13;
  v17 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v17;
  v18 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return v8;
}

void *std::construct_at[abi:ne200100]<applesauce::CF::TypeRef,applesauce::CF::TypeRef const&,applesauce::CF::TypeRef*>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  return a1;
}

uint64_t std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
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

const __CFDictionary *applesauce::CF::details::has_key<applesauce::CF::StringRef const&>(const __CFDictionary *result, const void **a2)
{
  if (result)
  {
    v2 = *a2;
    if (v2)
    {
      return (CFDictionaryContainsKey(result, v2) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef const&>@<X0>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  result = applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(a1, a2);
  if (result)
  {
    v5 = result;
    result = CFRetain(result);
    *a3 = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 = 0;
  }

  *(a3 + 8) = v6;
  return result;
}

const __CFDictionary *applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(const __CFDictionary *result, const void **a2)
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
      v17 = vshlq_u64(vdupq_n_s64(v14), xmmword_2416A49A0);
      break;
    default:
      LOBYTE(v14) = 0;
      v17 = 0uLL;
      break;
  }

  v18 = vandq_s8(vshlq_u64(v17, xmmword_2416A49B0), xmmword_2416A49C0);
  return v18.i64[0] | v14 | v18.i64[1];
}

uint64_t applesauce::CF::convert_as<int,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<int>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<unsigned int>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::number_convert_as<int>(const __CFNumber *a1)
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
      v17 = vshlq_u64(vdupq_n_s64(v14), xmmword_2416A49A0);
      break;
    default:
      LOBYTE(v14) = 0;
      v17 = 0uLL;
      break;
  }

  v18 = vandq_s8(vshlq_u64(v17, xmmword_2416A49B0), xmmword_2416A49C0);
  return v18.i64[0] | v14 | v18.i64[1];
}

const __CFBoolean *applesauce::CF::convert_as<long long,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    return applesauce::CF::details::number_convert_as<long long>(a1);
  }

  else
  {
    return applesauce::CF::details::treat_as_BOOL_for_convert_as<long long>(a1);
  }
}

const __CFBoolean *applesauce::CF::details::treat_as_BOOL_for_convert_as<long long>(const __CFBoolean *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      return CFBooleanGetValue(v1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t applesauce::CF::details::number_convert_as<long long>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_32;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_27;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v20 = Value != 0;
      if (Value)
      {
        LOBYTE(v21) = LOBYTE(valuePtr);
      }

      else
      {
        LOBYTE(v21) = 0;
      }

      v22 = SLOBYTE(valuePtr) < 0 && v20;
      v23 = v22 << 63 >> 63;
      return v21 | (v23 << 8);
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v16 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLOWORD(valuePtr);
      goto LABEL_33;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_32:
      v16 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLODWORD(valuePtr);
LABEL_33:
      v24 = v18 & 0xFFFFFFFFFFFFFF00 | v17;
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v24;
      }

      goto LABEL_36;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_27;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_27;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_27;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_27:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_28:
      if (v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = v9;
      }

LABEL_36:
      v23 = v21 >> 8;
      break;
    default:
      v23 = 0;
      LOBYTE(v21) = 0;
      break;
  }

  return v21 | (v23 << 8);
}

const __CFBoolean *applesauce::CF::convert_as<unsigned long long,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    return applesauce::CF::details::number_convert_as<unsigned long long>(a1);
  }

  else
  {
    return applesauce::CF::details::treat_as_BOOL_for_convert_as<long long>(a1);
  }
}

unint64_t applesauce::CF::details::number_convert_as<unsigned long long>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_32;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_27;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v20 = Value != 0;
      if (Value)
      {
        LOBYTE(v21) = LOBYTE(valuePtr);
      }

      else
      {
        LOBYTE(v21) = 0;
      }

      v22 = SLOBYTE(valuePtr) < 0 && v20;
      v23 = v22 << 63 >> 63;
      return v21 | (v23 << 8);
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v16 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLOWORD(valuePtr);
      goto LABEL_33;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_32:
      v16 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLODWORD(valuePtr);
LABEL_33:
      v24 = v18 & 0xFFFFFFFFFFFFFF00 | v17;
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v24;
      }

      goto LABEL_36;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_27;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_27;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_27;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_27:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_28:
      if (v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = v9;
      }

LABEL_36:
      v23 = v21 >> 8;
      break;
    default:
      v23 = 0;
      LOBYTE(v21) = 0;
      break;
  }

  return v21 | (v23 << 8);
}

uint64_t applesauce::CF::convert_as<float,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<float>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<float>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::treat_as_BOOL_for_convert_as<float>(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = COERCE_UNSIGNED_INT(CFBooleanGetValue(a1));
    v4 = 0x100000000;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | v4;
}

unint64_t applesauce::CF::details::number_convert_as<float>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_24;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_22;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v16 = SLOBYTE(valuePtr);
      goto LABEL_20;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v14, v15, &valuePtr);
      v16 = SLOWORD(valuePtr);
LABEL_20:
      v17 = v16;
      goto LABEL_25;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_24:
      Value = CFNumberGetValue(v12, v13, &valuePtr);
      v17 = SLODWORD(valuePtr);
      goto LABEL_25;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_22;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_22;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_26;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_22;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_22:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v17 = *&valuePtr;
      goto LABEL_25;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v10, v11, &valuePtr);
      v17 = valuePtr;
LABEL_25:
      v9 = LODWORD(v17);
LABEL_26:
      v18 = v9 | 0x100000000;
      if (!Value)
      {
        v18 = 0;
      }

      v19 = v18 & 0x100000000;
      break;
    default:
      v19 = 0;
      LODWORD(v18) = 0;
      break;
  }

  return v18 | v19;
}

const __CFBoolean *applesauce::CF::convert_as<double,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    return applesauce::CF::details::number_convert_as<double>(a1);
  }

  else
  {
    return applesauce::CF::details::treat_as_BOOL_for_convert_as<double>(a1);
  }
}

const __CFBoolean *applesauce::CF::details::treat_as_BOOL_for_convert_as<double>(const __CFBoolean *result)
{
  if (*&result != 0.0)
  {
    v1 = result;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      *&result = CFBooleanGetValue(v1);
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

unint64_t applesauce::CF::details::number_convert_as<double>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      v8 = CFNumberGetValue(v2, v3, &valuePtr) == 0;
      v16 = valuePtr;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v8 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v16 = valuePtr;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_23:
      v8 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v16 = valuePtr;
LABEL_24:
      v9 = v16;
      goto LABEL_25;
    case kCFNumberLongType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_25;
    case kCFNumberDoubleType:
      valuePtr = 0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_25:
      v17 = v9;
      goto LABEL_26;
    case kCFNumberCGFloatType:
      valuePtr = 0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v17 = *&valuePtr;
LABEL_26:
      if (v8)
      {
        v17 = 0.0;
      }

      v18 = *&v17 & 0xFFFFFFFFFFFFFF00;
      break;
    default:
      v18 = 0;
      LOBYTE(v17) = 0;
      break;
  }

  return LOBYTE(v17) | v18;
}

void *std::map<applesauce::CF::StringRef,applesauce::CF::TypeRef>::map[abi:ne200100]<applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>>(void *a1, __int128 *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v14 = *a2;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<void const*>::__init_with_size[abi:ne200100]<void const**,void const**>(&v15, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 3);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<void const*>::__init_with_size[abi:ne200100]<void const**,void const**>(&v18, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
  v7 = *a3;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  std::vector<void const*>::__init_with_size[abi:ne200100]<void const**,void const**>(&v8, *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 3);
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<void const*>::__init_with_size[abi:ne200100]<void const**,void const**>(&__p, *(a3 + 5), *(a3 + 6), (*(a3 + 6) - *(a3 + 5)) >> 3);
  std::map<applesauce::CF::StringRef,applesauce::CF::TypeRef>::insert[abi:ne200100]<applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>>(a1, &v14, &v7);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return a1;
}

void sub_2416662D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator(&a9);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator(&a17);
  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(v20, *(v20 + 8));
  _Unwind_Resume(a1);
}

BOOL std::map<applesauce::CF::StringRef,applesauce::CF::TypeRef>::insert[abi:ne200100]<applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>>(uint64_t a1, void *a2, uint64_t *a3)
{
  result = applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::equal(a2, a3);
  if (!result)
  {
    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(a2, &v5);
    std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_hint_unique_impl<std::pair<applesauce::CF::TypeRef,applesauce::CF::TypeRef>>();
  }

  return result;
}

BOOL applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::equal(void *a1, uint64_t *a2)
{
  if (*a1 && a1[1] != (a1[3] - a1[2]) >> 3)
  {
    v2 = *a2;
  }

  else
  {
    v2 = *a2;
    if (!*a2 || a2[1] == (a2[3] - a2[2]) >> 3)
    {
      return 1;
    }
  }

  return *a1 == v2 && a1[1] == a2[1];
}

void sub_2416664E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_241666588(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const __CFString **std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__find_equal<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>(void *a1, __CFString **a2, const __CFString ***a3, uint64_t *a4, const __CFString **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(a5, a2 + 4) < 2)
  {
    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(a2 + 4, a5) < 2)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 1);
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = v14->isa;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(a5, v15 + 4) < 2)
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return &v12->info;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11->info;
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = v12->isa == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(&v12[1].isa, a5) >= 2)
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__find_equal<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>(a1, a3, a5);
}

uint64_t *std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

const __CFString **std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__find_equal<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>(uint64_t a1, const __CFString ***a2, CFTypeRef *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(a3, v4 + 4) < 2)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7 + 4, a3) < 2)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

CFComparisonResult applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(CFTypeRef *a1, const __CFString **a2)
{
  v3 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v4 = *a2;
    if (!v4)
    {
      v5 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(v3);
      return v5;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  if (v3)
  {
    v5 = CFStringCompare(v3, v4, 0);
  }

  else
  {
    v5 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (v3)
  {
    goto LABEL_9;
  }

  return v5;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>,void,0>(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 0x8000000000000000) != 0 || (v4 = result, v5 = result[2], v3 >= (result[3] - v5) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "DictionaryRef_iterator iterator out of range.");
    __cxa_throw(exception, off_278CE6058, MEMORY[0x277D825F8]);
  }

  v6 = *(v5 + 8 * v3);
  if (v6)
  {
    result = CFRetain(*(v5 + 8 * v3));
    v3 = v4[1];
  }

  v7 = v4[5];
  v8 = *(v7 + 8 * v3);
  if (v8)
  {
    result = CFRetain(*(v7 + 8 * v3));
  }

  *a2 = v6;
  a2[1] = v8;
  return result;
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::pair<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

uint64_t std::vector<void const*>::__init_with_size[abi:ne200100]<void const**,void const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<applesauce::CF::TypeRef>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241666CB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

const __CFString *std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_hint_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef&>(void *a1, __CFString **a2, const __CFString **a3)
{
  result = *std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__find_equal<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__construct_node<applesauce::CF::StringRef const&,applesauce::CF::TypeRef&>();
  }

  return result;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<applesauce::CF::StringRef,applesauce::CF::TypeRef>(CFTypeRef **a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v11, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v12;
    do
    {
      if (v5 >= v13)
      {
        v5 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&>(&v11, v3 + 4, v3 + 5);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(&v11, v5, v3 + 4, v3 + 5);
        v5 += 2;
      }

      v12 = v5;
      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v11);
  v14 = &v11;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v14);
  return CFDictionaryRef;
}

void sub_241666F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::TypeRefPair>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<ASDT::Exclaves::StatusTracker::Update>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_241667020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<void const*>::reserve(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      if (!*v3 || !v3[1])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x245CEC720](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v6 = v31;
      if (v31 >= v32)
      {
        v8 = (v31 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<ASDT::Exclaves::StatusTracker::Update>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v32 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](&__p, v10);
        }

        v11 = (8 * v8);
        *v11 = v5;
        v7 = 8 * v8 + 8;
        v12 = v11 - (v31 - __p);
        memcpy(v12, __p, v31 - __p);
        v13 = __p;
        __p = v12;
        v31 = v7;
        v32 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v31 = v5;
        v7 = (v6 + 8);
      }

      v31 = v7;
      v14 = v3[1];
      v15 = v28;
      if (v28 >= v29)
      {
        v17 = v28 - values;
        if ((v17 + 1) >> 61)
        {
          std::vector<ASDT::Exclaves::StatusTracker::Update>::__throw_length_error[abi:ne200100]();
        }

        v18 = (v29 - values) >> 2;
        if (v18 <= v17 + 1)
        {
          v18 = v17 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](&values, v19);
        }

        v20 = (8 * v17);
        *v20 = v14;
        v16 = 8 * v17 + 8;
        v21 = v20 - (v28 - values);
        memcpy(v21, values, v28 - values);
        v22 = values;
        values = v21;
        v28 = v16;
        v29 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v28 = v14;
        v16 = (v15 + 1);
      }

      v28 = v16;
      v3 += 2;
    }

    while (v3 != v4);
  }

  v23 = CFDictionaryCreate(0, __p, values, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEC720](v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (values)
  {
    v28 = values;
    operator delete(values);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v23;
}

void sub_2416672DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7 = 0;
      a4[1] = v7[1];
      v7[1] = 0;
      v7 += 2;
      a4 += 2;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(a1, v5);
      v5 += 16;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 16;
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<applesauce::CF::TypeRefPair>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<applesauce::CF::TypeRefPair>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5, v4 - 16);
  }
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&>(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<ASDT::Exclaves::StatusTracker::Update>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](a1, v8);
  }

  v15 = 0;
  v16 = 16 * v3;
  std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(a1, (16 * v3), a2, a3);
  v17 = (16 * v3 + 16);
  v9 = *(a1 + 8);
  v10 = (16 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v15);
  return v14;
}

void sub_2416676A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFTypeRef std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(uint64_t a1, void *a2, CFTypeRef *a3, const void **a4)
{
  v6 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v6;
  v8 = *a4;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a2[1] = v8;
  return result;
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<void const*>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<ASDT::Exclaves::StatusTracker::Update>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<applesauce::CF::TypeRefPair>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<applesauce::CF::TypeRefPair>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(a1, i))
  {
    i -= 16;
  }

  *(a1 + 8) = a2;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::TypeRef>(uint64_t **a1)
{
  std::vector<void const*>::vector[abi:ne200100](__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = __p[0];
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CFArray;
}

void sub_2416678D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(uint64_t a1)
{
  result = CFArrayCreate(0, *a1, (*(a1 + 8) - *a1) >> 3, MEMORY[0x277CBF128]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<applesauce::CF::TypeRef>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2416679D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef const&>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef const&>(a1, a2, &cf);
  if (v9 != 1)
  {
    *a4 = *a3;
    *a3 = 0;
    return;
  }

  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
    v7 = v9;
    *a4 = v6;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::find<applesauce::CF::StringRef>(uint64_t a1, const __CFString **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>((v3 + 32), a2);
    if (v6 <= kCFCompareGreaterThan)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (v6 > kCFCompareGreaterThan));
  }

  while (v3);
  if (v5 == v2 || applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(a2, (v5 + 32)) >= 2)
  {
    return v2;
  }

  return v5;
}

const __CFString *std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&>(uint64_t a1, CFTypeRef *a2)
{
  result = *std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__find_equal<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__construct_node<applesauce::CF::StringRef const&,applesauce::CF::TypeRef&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t *std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
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
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
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

      else
      {
        v18 = v7;
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
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
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
    goto LABEL_68;
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

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
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
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

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
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 39);
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

ASDT::Ramper *ASDT::Ramper::Ramper(ASDT::Ramper *this, const AudioStreamBasicDescription *a2, int a3)
{
  *this = &unk_28534D980;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  *(this + 11) = a3;
  v4 = *&a2->mSampleRate;
  v5 = *&a2->mBytesPerPacket;
  *(this + 10) = *&a2->mBitsPerChannel;
  *(this + 3) = v4;
  *(this + 4) = v5;
  *(this + 88) = 0;
  *(this + 23) = -1;
  if (a2->mFormatID == 1819304813)
  {
    p_mFormatFlags = &a2->mFormatFlags;
    mFormatFlags = a2->mFormatFlags;
    if ((~mFormatFlags & 9) != 0)
    {
      v9 = ASDTBaseLogType();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ASDT::Ramper::Ramper(p_mFormatFlags, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    else if ((mFormatFlags & 2) != 0)
    {
      v16 = ASDTBaseLogType();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        ASDT::Ramper::Ramper(p_mFormatFlags, v16, v17, v18, v19, v20, v21, v22);
      }
    }

    else
    {
      p_mBitsPerChannel = &a2->mBitsPerChannel;
      if (a2->mBitsPerChannel == 32)
      {
        ASDT::Ramper::CreateRampData(this, *&v4);
      }

      v23 = ASDTBaseLogType();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        ASDT::Ramper::Ramper(p_mBitsPerChannel, v23, v24, v25, v26, v27, v28, v29);
      }
    }
  }

  return this;
}

void sub_24166A370(_Unwind_Exception *a1)
{
  v5 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v5)
  {
    MEMORY[0x245CEC830](v5, 0x1000C8077774924);
  }

  ASDT::Ramper::Ramper(v3, v2);
  _Unwind_Resume(a1);
}

void ASDT::Ramper::CreateRampData(ASDT::Ramper *this, double a2)
{
  LODWORD(a2) = *(this + 11);
  v2 = (*(this + 6) * *&a2 / 1000.0);
  *(this + 10) = v2;
  v3 = *(this + 19) * v2;
  *(this + 23) = v2;
  operator new[]();
}

void ASDT::Ramper::Process(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a3 && a4)
  {
    ASDT::Ramper::MuteForSensorStatus(a1, a5, 0);
    v9 = *(a1 + 92);
    v10 = *(a1 + 40);
    v11 = v10 >= v9;
    v12 = v10 - v9;
    if (v12 != 0 && v11)
    {
      if (v12 >= a2)
      {
        v18 = a2;
      }

      else
      {
        v18 = v12;
      }

      v13 = *(a1 + 76);
      v14 = v13 * v18;
      v15 = v13 * v9;
      v16 = 16;
      if (*(a1 + 88))
      {
        v16 = 8;
      }

      v17 = v14;
      MEMORY[0x245CED030](a3, 1, *(a1 + v16) + 4 * v15, 1, a4, 1, v14);
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = (a2 - v18) * *(a1 + 72);
    if (v19)
    {
      v20 = (a4 + 4 * v17);
      if (*(a1 + 88) == 1)
      {
        bzero(v20, v19);
      }

      else
      {
        memcpy(v20, (a3 + 4 * v17), v19);
      }
    }

    *(a1 + 92) += v18;
  }
}

uint64_t ASDT::Ramper::MuteForSensorStatus(uint64_t result, int a2, int a3)
{
  if ((a2 - 2) >= 3)
  {
    if (!a2)
    {
      return result;
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  if (*(result + 88) == v3)
  {
    v4 = *(result + 40);
    if (*(result + 92) != v4 && a3 != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(result + 88) = v3;
    if (a3)
    {
      v4 = *(result + 40);
LABEL_14:
      *(result + 92) = v4;
      return result;
    }

    *(result + 92) = 0;
  }

  return result;
}

uint64_t ASDT::Ramper::SetMuted(uint64_t this, int a2, int a3)
{
  if (*(this + 88) == a2)
  {
    v3 = *(this + 40);
    if (*(this + 92) != v3 && a3 != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(this + 88) = a2;
    if (a3)
    {
      v3 = *(this + 40);
LABEL_10:
      *(this + 92) = v3;
      return this;
    }

    *(this + 92) = 0;
  }

  return this;
}

void ASDT::Ramper::~Ramper(ASDT::Ramper *this)
{
  ASDT::Ramper::~Ramper(this);

  JUMPOUT(0x245CEC850);
}

{
  *this = &unk_28534D980;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    MEMORY[0x245CEC830](v2, 0x1000C8077774924);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    MEMORY[0x245CEC830](v3, 0x1000C8052888210);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    MEMORY[0x245CEC830](v4, 0x1000C8052888210);
  }
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

ASDT::IOMemoryMap *ASDT::IOMemoryMap::IOMemoryMap(ASDT::IOMemoryMap *this, ASDT::IOConnect *a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  *this = &unk_28534D9B0;
  ASDT::IOConnect::IOConnect((this + 8), a2, 0);
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 29) = a3;
  v7 = ASDT::IOConnect::Get((this + 8));
  if (v7)
  {
    v17 = 0;
    v18 = 0;
    v8 = MEMORY[0x245CEC400](v7, a3, *MEMORY[0x277D85F48], &v18, &v17, a4);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v18 == 0;
    }

    if (v9)
    {
      v10 = ASDTBaseLogType();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HIBYTE(v8);
        if ((v8 - 0x20000000) >> 24 >= 0x5F)
        {
          v11 = 32;
        }

        *buf = 67110656;
        v20 = a3;
        v12 = BYTE2(v8);
        if (BYTE2(v8) - 32 >= 0x5F)
        {
          v12 = 32;
        }

        v21 = 1024;
        v22 = a4;
        v13 = BYTE1(v8);
        if (BYTE1(v8) - 32 >= 0x5F)
        {
          v13 = 32;
        }

        v23 = 1024;
        v24 = v8;
        v25 = 1024;
        v26 = v11;
        v27 = 1024;
        if (v8 - 32 >= 0x5F)
        {
          v14 = 32;
        }

        else
        {
          v14 = v8;
        }

        v28 = v12;
        v29 = 1024;
        v30 = v13;
        v31 = 1024;
        v32 = v14;
        _os_log_error_impl(&dword_241659000, v10, OS_LOG_TYPE_ERROR, "IOMemoryMap: MapMemory(%u, %u, ...) failed: %x (%c%c%c%c)", buf, 0x2Cu);
      }
    }

    else
    {
      *(this + 13) = v18;
      *(this + 28) = v17;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return this;
}

void ASDT::IOMemoryMap::~IOMemoryMap(ASDT::IOMemoryMap *this)
{
  *this = &unk_28534D9B0;
  ASDT::IOMemoryMap::Release(this);
  ASDT::IOConnect::~IOConnect((this + 8));
}

{
  ASDT::IOMemoryMap::~IOMemoryMap(this);

  JUMPOUT(0x245CEC850);
}

void ASDT::IOMemoryMap::Release(ASDT::IOMemoryMap *this)
{
  if (ASDT::IOConnect::Get((this + 8)))
  {
    if (*(this + 13))
    {
      v2 = *(this + 29);
      v3 = *MEMORY[0x277D85F48];
      v4 = MEMORY[0x245CEC460]();
      if (v4)
      {
        v5 = v4;
        v6 = ASDTBaseLogType();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          ASDT::IOMemoryMap::Release(v5, v6);
        }
      }
    }
  }

  *(this + 28) = 0;
  *(this + 13) = 0;
  ASDT::IOConnect::Close((this + 8));
}

uint64_t ASDT::IOMemoryMap::IOMemoryMap(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28534D9B0;
  ASDT::IOConnect::IOConnect(a1 + 8, a2 + 8);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return a1;
}

{
  *a1 = &unk_28534D9B0;
  ASDT::IOConnect::IOConnect(a1 + 8, a2 + 8);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return a1;
}

ASDT::IOMemoryMap *ASDT::IOMemoryMap::operator=(ASDT::IOMemoryMap *a1, uint64_t a2)
{
  ASDT::IOMemoryMap::Release(a1);
  ASDT::IOConnect::operator=(a1 + 8, a2 + 8);
  *(a1 + 13) = *(a2 + 104);
  *(a1 + 14) = *(a2 + 112);
  return a1;
}

void sub_24166BF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 40));

  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

double ASDT::ValueRange::PickCommonSampleRate(ASDT::ValueRange *this, const AudioValueRange *a2)
{
  v3 = *this;
  v2 = *(this + 1);
  result = 48000.0;
  if (*this > 48000.0 || v2 < 48000.0)
  {
    result = 44100.0;
    if (v3 > 44100.0 || v2 < 44100.0)
    {
      result = 96000.0;
      if (v3 > 96000.0 || v2 < 96000.0)
      {
        result = 88200.0;
        if (v3 > 88200.0 || v2 < 88200.0)
        {
          result = 64000.0;
          if (v3 > 64000.0 || v2 < 64000.0)
          {
            result = 32000.0;
            if (v3 > 32000.0 || v2 < 32000.0)
            {
              result = 24000.0;
              if (v3 > 24000.0 || v2 < 24000.0)
              {
                result = 22050.0;
                if (v3 > 22050.0 || v2 < 22050.0)
                {
                  result = 16000.0;
                  if (v3 > 16000.0 || v2 < 16000.0)
                  {
                    result = 12000.0;
                    if (v3 > 12000.0 || v2 < 12000.0)
                    {
                      result = 11025.0;
                      if (v3 > 11025.0 || v2 < 11025.0)
                      {
                        result = 8000.0;
                        if (v2 < 8000.0 || v3 > 8000.0)
                        {
                          return *(this + 1);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ASDT::MachPort::CreatePort(ASDT::MachPort *this, integer_t a2)
{
  v3 = this;
  name = 0;
  v4 = MEMORY[0x277D85F48];
  if (mach_port_allocate(*MEMORY[0x277D85F48], 1u, &name))
  {
    v5 = ASDTBaseLogType();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::MachPort::CreatePort();
    return 0;
  }

  if (a2)
  {
    port_info_outCnt = 1;
    if (mach_port_get_attributes(*v4, name, 1, &port_info_out, &port_info_outCnt))
    {
      v7 = ASDTBaseLogType();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ASDT::MachPort::CreatePort();
      }

LABEL_15:
      mach_port_deallocate(*v4, name);
      return 0;
    }

    port_info_out = a2;
    if (MEMORY[0x245CECB80](*v4, name, 1, &port_info_out, 1))
    {
      v8 = ASDTBaseLogType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ASDT::MachPort::CreatePort();
      }

      goto LABEL_15;
    }
  }

  if (v3 && mach_port_insert_right(*v4, name, name, 0x14u))
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ASDT::MachPort::CreatePort();
    }

    goto LABEL_15;
  }

  return name;
}

uint64_t ASDT::MachPort::LookupPort(ASDT::MachPort *this, const char *a2)
{
  v2 = *MEMORY[0x277D85F18];
  if (bootstrap_look_up2())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t ASDT::MachPort::CheckInPort(ASDT::MachPort *this, const char *a2)
{
  v2 = a2;
  sp = 0;
  if (bootstrap_check_in(*MEMORY[0x277D85F18], this, &sp))
  {
    v3 = ASDTBaseLogType();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::MachPort::CheckInPort();
    return 0;
  }

  if (!v2 || !mach_port_insert_right(*MEMORY[0x277D85F48], sp, sp, 0x14u))
  {
    return sp;
  }

  v5 = ASDTBaseLogType();
  result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ASDT::MachPort::CheckInPort();
    return 0;
  }

  return result;
}

void ASDT::MachPort::RetainPort(mach_port_name_t name)
{
  if (name && mach_port_mod_refs(*MEMORY[0x277D85F48], name, 0, 1))
  {
    v1 = ASDTBaseLogType();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      ASDT::MachPort::RetainPort();
    }
  }
}

uint64_t ASDT::MachPort::DestroyPort(uint64_t name, int a2, int a3)
{
  v4 = name;
  if ((a2 & 1) == 0 && (a3 & 1) == 0)
  {
    v6 = ASDTBaseLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ASDT::MachPort::DestroyPort();
    }

    __assert_rtn("DestroyPort", "ASDTMachPort.cpp", 179, "(inDestroySendRight || inDestroyReceiveRight)");
  }

  if (name)
  {
    if (a2)
    {
      name = mach_port_deallocate(*MEMORY[0x277D85F48], name);
      if (name)
      {
        v7 = ASDTBaseLogType();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          ASDT::MachPort::DestroyPort();
        }

        __assert_rtn("DestroyPort", "ASDTMachPort.cpp", 187, "(theError == 0)");
      }
    }

    if (a3)
    {
      v5 = *MEMORY[0x277D85F48];

      return mach_port_mod_refs(v5, v4, 1u, -1);
    }
  }

  return name;
}

uint64_t ASDT::MachPort::ReceiveMessage(mach_port_name_t rcv_name, mach_msg_size_t rcv_size, mach_msg_header_t *msg, mach_msg_header_t *a4, mach_msg_timeout_t a5)
{
  if (!rcv_name)
  {
    return 268451842;
  }

  if (!a4)
  {
    a5 = 0;
  }

  if (a4)
  {
    v7 = 258;
  }

  else
  {
    v7 = 2;
  }

  *&msg->msgh_bits = 0;
  *&msg->msgh_remote_port = 0;
  *&msg->msgh_voucher_port = 0;
  v8 = mach_msg(msg, v7, 0, rcv_size, rcv_name, a5, 0);
  if (v8)
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      ASDT::MachPort::ReceiveMessage(v8);
    }
  }

  return v8;
}

uint64_t ASDT::MachPort::ReceiveSimpleMessage(ASDT::MachPort *this, mach_msg_id_t *a2, mach_msg_header_t *a3, mach_msg_timeout_t a4)
{
  result = ASDT::MachPort::ReceiveMessage(this, 0x20u, &v6, a3, a4);
  if (!result)
  {
    *a2 = v6.msgh_id;
  }

  return result;
}

uint64_t ASDT::MachPort::SendMessage(ASDT::MachPort *this, mach_msg_size_t send_size, mach_msg_header_t *msg, mach_msg_header_t *a4, mach_msg_timeout_t a5)
{
  if (!this)
  {
    return 0;
  }

  msg->msgh_bits = 19;
  msg->msgh_size = send_size;
  msg->msgh_local_port = 0;
  msg->msgh_voucher_port = 0;
  if (!a4)
  {
    a5 = 0;
  }

  if (a4)
  {
    v8 = 17;
  }

  else
  {
    v8 = 1;
  }

  msg->msgh_remote_port = this;
  v9 = mach_msg(msg, v8, send_size, 0, 0, a5, 0);
  if (v9)
  {
    v10 = ASDTBaseLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      ASDT::MachPort::SendMessage(v9);
    }

    if ((msg->msgh_bits & 0x1F) != 0x13)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], msg->msgh_remote_port);
    }
  }

  return v9;
}

uint64_t ASDT::MachPort::SendSimpleMessage(ASDT::MachPort *this, mach_msg_id_t a2, mach_msg_header_t *a3, mach_msg_timeout_t a4)
{
  msg.msgh_id = a2;
  return ASDT::MachPort::SendMessage(this, 0x18u, &msg, a3, a4);
}

{
  v4 = *(this + 2);
  msg.msgh_id = a2;
  return ASDT::MachPort::SendMessage(v4, 0x18u, &msg, a3, a4);
}

uint64_t ASDT::MachPort::SendMessageWithReply(ASDT::MachPort *this, mach_port_name_t rcv_name, mach_msg_size_t a3, mach_msg_size_t a4, mach_msg_header_t *msg, mach_msg_header_t *a6, mach_msg_timeout_t a7)
{
  v7 = 0;
  if (this && rcv_name)
  {
    msg->msgh_bits = 19;
    msg->msgh_size = a3;
    msg->msgh_local_port = 0;
    msg->msgh_voucher_port = 0;
    v10 = a6 == 0;
    if (!a6)
    {
      a7 = 0;
    }

    if (v10)
    {
      v12 = 3;
    }

    else
    {
      v12 = 275;
    }

    msg->msgh_remote_port = this;
    v7 = mach_msg(msg, v12, a3, a4, rcv_name, a7, 0);
    if (v7)
    {
      v13 = ASDTBaseLogType();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        ASDT::MachPort::SendMessageWithReply(v7);
      }

      if ((msg->msgh_bits & 0x1F) != 0x13)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], msg->msgh_remote_port);
      }
    }
  }

  return v7;
}

uint64_t ASDT::MachPort::SendSimpleMessageWithSimpleReply(ASDT::MachPort *this, mach_port_name_t a2, mach_msg_id_t a3, mach_msg_id_t *a4, mach_msg_header_t *a5, mach_msg_timeout_t a6)
{
  v8.msgh_id = a3;
  result = ASDT::MachPort::SendMessageWithReply(this, a2, 0x18u, 0x20u, &v8, a5, a6);
  if (!result)
  {
    *a4 = v8.msgh_id;
  }

  return result;
}

void ASDT::MachPort::ClearNotificationHandler(ASDT::MachPort *this)
{
  if (*(this + 4))
  {
    v2 = dispatch_semaphore_create(0);
    v3 = *(this + 4);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ___ZN4ASDT8MachPort24ClearNotificationHandlerEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_0;
    handler[4] = v2;
    dispatch_source_set_cancel_handler(v3, handler);
    dispatch_source_cancel(*(this + 4));
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v2);
    dispatch_release(*(this + 4));
    *(this + 4) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    _Block_release(v4);
    *(this + 2) = 0;
  }

  v5 = *(this + 3);
  if (v5)
  {
    dispatch_release(v5);
    *(this + 3) = 0;
  }
}

uint64_t ASDT::MachPort::SetNotificationQueue(const void **a1, uint64_t a2)
{
  if (*a2)
  {
    if (a1[4])
    {
      *(a2 + 8) = _Block_copy(a1[2]);
      (*(*a1 + 4))(a1);
      v4 = (*(*a1 + 2))(a1, a2);
      _Block_release(*(a2 + 8));
      return v4;
    }

    v7 = ASDTBaseLogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ASDT::MachPort::SetNotificationQueue();
    }
  }

  else
  {
    v6 = ASDTBaseLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ASDT::MachPort::SetNotificationQueue();
    }
  }

  return 0;
}

BOOL ASDT::MachPort::SetNotificationHandler(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  if (!*(a2 + 8))
  {
    return 0;
  }

  (*(*a1 + 32))(a1);
  v6 = dispatch_source_create(MEMORY[0x277D85D08], *(a1 + 8), 0, *a2);
  *(a1 + 32) = v6;
  if (v6)
  {
    v7 = _Block_copy(*(a2 + 8));
    v8 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    dispatch_retain(v8);
    dispatch_source_set_event_handler(*(a1 + 32), *(a2 + 8));
    dispatch_resume(*(a1 + 32));
    return 1;
  }

  v9 = ASDTBaseLogType();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ASDT::MachPort::SetNotificationHandler();
    return 0;
  }

  return result;
}

void ASDT::MachPort::~MachPort(ASDT::MachPort *this)
{
  ASDT::MachPort::~MachPort(this);

  JUMPOUT(0x245CEC850);
}

{
  *this = &unk_28534DA00;
  ASDT::MachPort::ClearNotificationHandler(this);
  ASDT::MachPort::DestroyPort(*(this + 2), *(this + 12), *(this + 13));
}

uint64_t ASDT::MachPort::ReceiveSimpleMessage(ASDT::MachPort *this, int *a2, mach_msg_header_t *a3, mach_msg_timeout_t a4)
{
  result = ASDT::MachPort::ReceiveMessage(*(this + 2), 0x20u, &v6, a3, a4);
  if (!result)
  {
    *a2 = v6.msgh_id;
  }

  return result;
}

uint64_t ASDT::MachPort::SendSimpleMessageWithSimpleReply(ASDT::MachPort *this, mach_port_name_t a2, mach_msg_id_t a3, int *a4, mach_msg_header_t *a5, mach_msg_timeout_t a6)
{
  v7 = *(this + 2);
  v9.msgh_id = a3;
  result = ASDT::MachPort::SendMessageWithReply(v7, a2, 0x18u, 0x20u, &v9, a5, a6);
  if (!result)
  {
    *a4 = v9.msgh_id;
  }

  return result;
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_error_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_24167026C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ASDTSystemPowerNotifier;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t ASDT::Clock::GetMachTimeMaxDrift(ASDT::Clock *this, uint64_t a2, uint64_t a3, const char *a4)
{
  {
  }

  v5 = 100;
  if (ASDT::IORegistry::GetUInt32tForKey(&v5, "mach-time-audio-max-drift", "IODeviceTree:/product/audio", a4))
  {
    result = v5;
  }

  else
  {
    result = 100;
  }

  return result;
}

uint64_t ASDT::Clock::GetSynchronousClockDomain(ASDT::Clock *this, uint64_t a2, uint64_t a3, const char *a4)
{
  {
  }

  else
  {
    v8 = 0;
    UInt32tForKey = ASDT::IORegistry::GetUInt32tForKey(&v8, "mach-time-audio-alignment", "IODeviceTree:/product/audio", a4);
    if (v8)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    if (!UInt32tForKey)
    {
      v4 = 0;
    }
  }

  if (v4 == 2)
  {
    v6 = 7567731;
  }

  else
  {
    v6 = 1228034925;
  }

  if (v4 == 1)
  {
    return 1835100526;
  }

  else
  {
    return v6;
  }
}

uint64_t ASDT::Clock::GetDomainForFourCC(uint64_t this, const char *a2, uint64_t a3, const char *a4)
{
  if (this)
  {
    v4 = this;
    v5 = 0;
    this = 0;
    do
    {
      if (!*(v4 + v5))
      {
        break;
      }

      this = *(v4 + v5++) | (this << 8);
    }

    while (v5 != 4);
    if (this == 1937337955)
    {
      return ASDT::Clock::GetSynchronousClockDomain(this, a2, a3, a4);
    }
  }

  return this;
}

void sub_241671450(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2416718FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ASDTPlugin;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_9(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t asdtPowerTransitionForStateChange(int a1, int a2)
{
  if (a2 <= 1886876268)
  {
    if (a2 != 1767990132)
    {
      if (a2 != 1768189029)
      {
        if (a2 == 1886413170)
        {
          if (a1 > 1886876268)
          {
LABEL_28:
            if (a1 == 1886876269)
            {
              return 1685090418;
            }

LABEL_38:
            if (a1 != 1920298606)
            {
              goto LABEL_39;
            }

            return 1685092205;
          }

LABEL_19:
          if (a1)
          {
            if (a1 != 1767990132)
            {
              if (a1 == 1768189029)
              {
                return 1970303090;
              }

              return 0;
            }

            return 1970563428;
          }

          return 1768843636;
        }

        return 0;
      }

      if (a1 > 1886876268)
      {
        goto LABEL_28;
      }

      if (!a1)
      {
        return 1768843636;
      }

      if (a1 == 1767990132)
      {
        return 1970563428;
      }

      goto LABEL_26;
    }

    if (a1 > 1886876268)
    {
      goto LABEL_28;
    }

    if (!a1)
    {
      return 1768843636;
    }

    if (a1 != 1768189029)
    {
LABEL_26:
      if (a1 != 1886413170)
      {
        return 0;
      }

      return 1684628588;
    }

    return 1684627811;
  }

  if (a2 == 1886876269)
  {
    if (a1 <= 1886413169)
    {
      goto LABEL_19;
    }

    if (a1 != 1886413170)
    {
      goto LABEL_38;
    }

    return 1970304877;
  }

  if (a2 != 1936483696)
  {
    if (a2 != 1920298606)
    {
      return 0;
    }

    if (a1 <= 1886413169)
    {
      goto LABEL_19;
    }

    if (a1 != 1886413170)
    {
      if (a1 == 1886876269)
      {
        return 1970435438;
      }

LABEL_39:
      if (a1 == 1936483696)
      {
        return 1970563425;
      }

      return 0;
    }

    return 1970304877;
  }

  if (a1 > 1886413169)
  {
    if (a1 != 1886413170)
    {
      if (a1 == 1886876269)
      {
        return 1685090418;
      }

      if (a1 == 1920298606)
      {
        return 1685092205;
      }

      return 0;
    }

    return 1684628588;
  }

  if (!a1)
  {
    return 1768843636;
  }

  if (a1 != 1767990132)
  {
    if (a1 != 1768189029)
    {
      return 0;
    }

    return 1684627811;
  }

  return 1685286000;
}

uint64_t asdtPowerStateFromTransition(uint64_t a1, int a2)
{
  if (a2 > 1768843635)
  {
    if (a2 <= 1970435437)
    {
      if (a2 != 1768843636)
      {
        if (a2 != 1970303090)
        {
          if (a2 != 1970304877)
          {
            return result;
          }

          return 1886876269;
        }

        return 1886413170;
      }

      return 1767990132;
    }

    if (a2 == 1970435438)
    {
      return 1920298606;
    }

    if (a2 != 1970563428)
    {
      if (a2 == 1970563425)
      {
        return 1767990132;
      }

      return result;
    }

    return 1768189029;
  }

  if (a2 > 1685090417)
  {
    switch(a2)
    {
      case 1685090418:
        return 1886413170;
      case 1685092205:
        return 1886876269;
      case 1685286000:
        return 1936483696;
    }

    return result;
  }

  if (a2 == 1684627811)
  {
    return 1767990132;
  }

  if (a2 == 1684628588)
  {
    return 1768189029;
  }

  return result;
}

uint64_t asdtNextPowerState(uint64_t a1, int a2)
{
  v3 = asdtPowerTransitionForStateChange(a1, a2);

  return asdtPowerStateFromTransition(a1, v3);
}

uint64_t asdtPowerTransitionUpwards(int a1)
{
  result = 1;
  if (a1 > 1685090417)
  {
    if (a1 != 1685090418 && a1 != 1685286000)
    {
      v3 = 1685092205;
LABEL_8:
      if (a1 != v3)
      {
        return result;
      }
    }
  }

  else if (a1 && a1 != 1684627811)
  {
    v3 = 1684628588;
    goto LABEL_8;
  }

  return 0;
}

uint64_t asdtPowerStateCompare(int a1, int a2)
{
  result = asdtPowerTransitionForStateChange(a1, a2);
  if (result)
  {
    if (asdtPowerTransitionUpwards(result))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}