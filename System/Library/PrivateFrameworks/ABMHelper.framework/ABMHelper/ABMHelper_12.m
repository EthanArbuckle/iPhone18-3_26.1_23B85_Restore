void abm::debug::handleDebugPrintBinaryTelephonyUtil(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = "misc";
  if (!a2)
  {
    v4 = "send";
  }

  if (a2 == 1)
  {
    v5 = "recv";
  }

  else
  {
    v5 = v4;
  }

  abm::debug::handleDebugPrintBinary(0, v5, a3, a4);
}

void abm::debug::handleDebugPrintBinaryKTL(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (a2 > 3)
  {
    v4 = "";
  }

  else
  {
    v4 = off_278BB8CE8[a2];
  }

  abm::debug::handleDebugPrintBinary(2, v4, a3, a4);
}

void abm::debug::handleDebugPrintBinaryETL(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = "misc";
  if (!a2)
  {
    v4 = "send";
  }

  if (a2 == 1)
  {
    v5 = "recv";
  }

  else
  {
    v5 = v4;
  }

  abm::debug::handleDebugPrintBinary(1, v5, a3, a4);
}

uint64_t abm::debug::handleDebugPrintBBU(abm::debug *this, void *a2, const char *a3, const char *a4)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[7] = v6;
  v29[8] = v6;
  v29[5] = v6;
  v29[6] = v6;
  v29[3] = v6;
  v29[4] = v6;
  v29[1] = v6;
  v29[2] = v6;
  v29[0] = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  *__p = v6;
  v23 = v6;
  v24 = v6;
  v22 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v7 = MEMORY[0x23EECDF30](&v22, a2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ":", 1);
  v9 = strlen(a3);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a3, v9);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v28) & 0x10) != 0)
  {
    v16 = v28;
    if (v28 < *(&v25 + 1))
    {
      *&v28 = *(&v25 + 1);
      v16 = *(&v25 + 1);
    }

    v17 = v25;
    v14 = v16 - v25;
    if ((v16 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((BYTE8(v28) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(__dst[2]) = 0;
      v15 = __dst;
      goto LABEL_15;
    }

    v17 = *(&v23 + 1);
    v14 = *(&v24 + 1) - *(&v23 + 1);
    if (*(&v24 + 1) - *(&v23 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    v15 = operator new(v18);
    __dst[1] = v14;
    __dst[2] = (v18 | 0x8000000000000000);
    __dst[0] = v15;
    goto LABEL_14;
  }

  HIBYTE(__dst[2]) = v14;
  v15 = __dst;
  if (v14)
  {
LABEL_14:
    v10 = memmove(v15, v17, v14);
  }

LABEL_15:
  *(v15 + v14) = 0;
  v19 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v19 = __dst[0];
  }

  abm::debug::handleDebugPrintBBUHelper(v10, v11, v12, v13, v19);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v22 = *MEMORY[0x277D82828];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v22 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v22 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v23);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v29);
}

void sub_23C254CD8(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
  MEMORY[0x23EECE150](va);
  _Unwind_Resume(a1);
}

uint64_t abm::debug::handleDebugPrint(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46[1] = v9;
  v46[2] = v9;
  v46[0] = v9;
  ctu::LogMessageBuffer::LogMessageBuffer(v46);
  if (a3 && *a3)
  {
    v10 = MEMORY[0x23EECDAD0](v46, a3);
    MEMORY[0x23EECDAD0](v10, ": ");
  }

  MEMORY[0x23EECD870](&v44, a4, a5);
  ctu::operator<<();
  v11 = MEMORY[0x23EECD890](&v44);
  ctu::Clock::now_in_nanoseconds(v11);
  v12 = operator new(0x60uLL);
  v13 = abm::debug::kLogDomainMap[a2];
  v14 = strlen(v13);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    __p[1] = v15;
    v43 = v17 | 0x8000000000000000;
    __p[0] = v16;
    goto LABEL_12;
  }

  HIBYTE(v43) = v14;
  v16 = __p;
  if (v14)
  {
LABEL_12:
    memmove(v16, v13, v15);
  }

  *(v15 + v16) = 0;
  MEMORY[0x23EECD850](v46);
  ctu::LogMessageBuffer::takeMetadata(v46);
  ctu::LogMessage::LogMessage();
  v44 = v12;
  v18 = operator new(0x20uLL);
  v18->__vftable = &unk_284EFB970;
  v18->__shared_owners_ = 0;
  v18->__shared_weak_owners_ = 0;
  v18[1].__vftable = v12;
  v45 = v18;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
    v19 = v12 + 2;
    v20 = SHIBYTE(v12[2].__r_.__value_.__r.__words[2]);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = v12 + 2;
    v20 = SHIBYTE(v12[2].__r_.__value_.__r.__words[2]);
    if ((v20 & 0x8000000000000000) == 0)
    {
LABEL_15:
      data = v19;
      size = v20;
      goto LABEL_18;
    }
  }

  data = v12[2].__r_.__value_.__l.__data_;
  size = v12[2].__r_.__value_.__l.__size_;
LABEL_18:
  v23 = data + size;
  v24 = memchr(data, 10, size);
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  if (v25 == v23 || (v26 = v25 + 1, v25 + 1 == v23))
  {
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    do
    {
      v29 = *v26;
      if (v29 != 10)
      {
        *v25++ = v29;
      }

      ++v26;
    }

    while (v26 != v23);
    LOBYTE(v20) = *(&v12[2].__r_.__value_.__s + 23);
    if ((v20 & 0x80) == 0)
    {
LABEL_24:
      v27 = v19 + v20;
      v28 = v25 - v19;
      if (v20 >= (v25 - v19))
      {
        goto LABEL_25;
      }

LABEL_32:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v31 = v12[2].__r_.__value_.__l.__data_;
  v30 = v12[2].__r_.__value_.__l.__size_;
  v27 = &v31[v30];
  v28 = v25 - v31;
  if (v30 < v25 - v31)
  {
    goto LABEL_32;
  }

LABEL_25:
  if (v27 - v25 == -1)
  {
    if ((v20 & 0x80) != 0)
    {
      v36 = v12[2].__r_.__value_.__l.__data_;
      v12[2].__r_.__value_.__l.__size_ = v28;
      v36[v28] = 0;
      if (a2 <= 1)
      {
        goto LABEL_36;
      }

      goto LABEL_48;
    }

    *(&v12[2].__r_.__value_.__s + 23) = v28 & 0x7F;
    v19->__r_.__value_.__s.__data_[v28] = 0;
  }

  else
  {
    std::string::__erase_external_with_move(v19, v28, v27 - v25);
  }

  if (a2 <= 1)
  {
LABEL_36:
    if (!a2)
    {
      v32 = _MergedGlobals_5;
      if (_MergedGlobals_5 && os_log_type_enabled(_MergedGlobals_5, OS_LOG_TYPE_DEFAULT))
      {
        v33 = &v44[2];
        if (SHIBYTE(v44[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v33 = v33->__words[0];
        }

        *buf = 136315138;
        v49 = v33;
LABEL_60:
        _os_log_impl(&dword_23C1C4000, v32, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        goto LABEL_61;
      }

      goto LABEL_61;
    }

    v34 = qword_280C05D88;
    if (!qword_280C05D88 || !os_log_type_enabled(qword_280C05D88, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_61;
    }

    v35 = &v44[2];
    if (SHIBYTE(v44[2].__r_.__value_.__r.__words[2]) < 0)
    {
      v35 = v35->__words[0];
    }

    *buf = 136315138;
    v49 = v35;
LABEL_54:
    _os_log_debug_impl(&dword_23C1C4000, v34, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    goto LABEL_61;
  }

LABEL_48:
  if (a2 == 2)
  {
    v34 = qword_280C05D80;
    if (!qword_280C05D80 || !os_log_type_enabled(qword_280C05D80, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_61;
    }

    v37 = &v44[2];
    if (SHIBYTE(v44[2].__r_.__value_.__r.__words[2]) < 0)
    {
      v37 = v37->__words[0];
    }

    *buf = 136315138;
    v49 = v37;
    goto LABEL_54;
  }

  v32 = qword_280C05D90;
  if (qword_280C05D90 && os_log_type_enabled(qword_280C05D90, OS_LOG_TYPE_DEFAULT))
  {
    v38 = &v44[2];
    if (SHIBYTE(v44[2].__r_.__value_.__r.__words[2]) < 0)
    {
      v38 = v38->__words[0];
    }

    *buf = 136315138;
    v49 = v38;
    goto LABEL_60;
  }

LABEL_61:
  v39 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  result = MEMORY[0x23EECD890](v46);
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000023C32E251)
  {
    if (((v2 & 0x800000023C32E251 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023C32E251))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023C32E251 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void abm::debug::handleDebugPrintBinary(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAAAAAAAAAA00;
  ctu::assign();
  if (!a1)
  {
    v7 = _MergedGlobals_5;
    if (!_MergedGlobals_5 || !os_log_type_enabled(_MergedGlobals_5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    v8 = __p;
    if (v11 < 0)
    {
      v8 = __p[0];
    }

LABEL_20:
    *buf = 67109634;
    v13 = a4;
    v14 = 2080;
    v15 = a2;
    v16 = 2080;
    v17 = v8;
    _os_log_debug_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEBUG, "(%d) %s: %s", buf, 0x1Cu);
    if ((SHIBYTE(v11) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a1 != 1)
  {
    v7 = qword_280C05D80;
    if (!qword_280C05D80 || !os_log_type_enabled(qword_280C05D80, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    v8 = __p;
    if (v11 < 0)
    {
      v8 = __p[0];
    }

    goto LABEL_20;
  }

  v7 = qword_280C05D88;
  if (qword_280C05D88 && os_log_type_enabled(qword_280C05D88, OS_LOG_TYPE_DEBUG))
  {
    v8 = __p;
    if (v11 < 0)
    {
      v8 = __p[0];
    }

    goto LABEL_20;
  }

LABEL_15:
  if (SHIBYTE(v11) < 0)
  {
LABEL_16:
    operator delete(__p[0]);
  }

LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
}

void sub_23C255570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *diag::config::toString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_278BB8D20[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_278BB8D48[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_278BB8D60[a1];
  }
}

const char *diag::config::toStringCompact(unsigned int a1)
{
  if (a1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_278BB8D78[a1];
  }
}

BOOL diag::config::equal_nocase(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return strcasecmp(a1, a2) == 0;
}

uint64_t diag::config::asEnum(uint64_t a1, _DWORD *a2)
{
  v7 = 4;
  strcpy(v6, "none");
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (!strcasecmp(v3, v6))
  {
    *a2 = 0;
    return 1;
  }

  else
  {
    v7 = 5;
    strcpy(v6, "reset");
    if (!strcasecmp(v3, v6))
    {
      *a2 = 1;
      return 1;
    }

    else
    {
      v7 = 11;
      strcpy(v6, "reconfigure");
      v4 = strcasecmp(v3, v6);
      result = 0;
      if (!v4)
      {
        *a2 = 2;
        return 1;
      }
    }
  }

  return result;
}

BOOL diag::config::getShouldAlwaysFilter(diag::config *this)
{
  IsCarrierBuild = TelephonyUtilIsCarrierBuild();
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  return ((IsCarrierBuild | IsInternalBuild | TelephonyUtilIsVendorBuild()) & 1) == 0;
}

void sys::getCurrentBootSessionUUID(_BYTE *a1@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  *&v16[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__s = v3;
  *v16 = v3;
  v12 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", __s, &v12, 0, 0) && v12 == 37)
  {
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      if ((v4 | 7) == 0x17)
      {
        v7 = 25;
      }

      else
      {
        v7 = (v4 | 7) + 1;
      }

      v8 = operator new(v7);
      *(a1 + 1) = v5;
      *(a1 + 2) = v7 | 0x8000000000000000;
      *a1 = v8;
      a1 = v8;
    }

    else
    {
      a1[23] = v4;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    memcpy(a1, __s, v5);
LABEL_16:
    a1 += v5;
    goto LABEL_17;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_280C06510 = 0;
  }

  if (GetOsLogContext(void)::onceToken != -1)
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_4);
    v6 = qword_280C06510;
    if (!os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

LABEL_19:
    v10 = __error();
    v11 = strerror(*v10);
    *buf = 136315138;
    v14 = v11;
    _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "Failed to get boot session uuid, error: %s", buf, 0xCu);
    goto LABEL_10;
  }

  v6 = qword_280C06510;
  if (os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_19;
  }

LABEL_10:
  a1[23] = 0;
LABEL_17:
  *a1 = 0;
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sys::updateBootSessionUUID(sys *this)
{
  memset(&v14, 170, sizeof(v14));
  sys::getCurrentBootSessionUUID(&v14);
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_280C05A08;
  if (!off_280C05A08)
  {
    SharedData::create_default_global(&v16);
    v2 = *&v16.__r_.__value_.__l.__data_;
    *&v16.__r_.__value_.__l.__data_ = 0uLL;
    v3 = *(&off_280C05A08 + 1);
    off_280C05A08 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    size = v16.__r_.__value_.__l.__size_;
    if (v16.__r_.__value_.__l.__size_ && !atomic_fetch_add((v16.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v1 = off_280C05A08;
  }

  v12 = v1;
  v13 = *(&off_280C05A08 + 1);
  if (*(&off_280C05A08 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v11 = 15;
  strcpy(v10, "BootSessionUUID");
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  os_unfair_lock_lock(v1 + 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = __p;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v15;
  }

  if (v11 >= 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = v10[0];
  }

  v6 = ctu::cf::plist_adapter::set<std::string>(v1, &v16, v5);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      os_unfair_lock_unlock(v1 + 10);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  os_unfair_lock_unlock(v1 + 10);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_27:
    v7 = v13;
    if (!v13)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v10[0]);
  v7 = v13;
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_33:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v6;
    }

    goto LABEL_37;
  }

LABEL_34:
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v6;
  }

LABEL_37:
  operator delete(v14.__r_.__value_.__l.__data_);
  return v6;
}

void sub_23C255CC8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 57) < 0)
  {
    operator delete(*(v23 - 80));
  }

  __clang_call_terminate(a1);
}

BOOL sys::isBootSessionChanged(sys *this)
{
  memset(v21, 170, sizeof(v21));
  sys::getCurrentBootSessionUUID(v21);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_280C05A08;
  if (!off_280C05A08)
  {
    SharedData::create_default_global(__p);
    v2 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v3 = *(&off_280C05A08 + 1);
    off_280C05A08 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_280C05A08;
  }

  v5 = *(&off_280C05A08 + 1);
  if (*(&off_280C05A08 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v17 = 15;
  strcpy(__p, "BootSessionUUID");
  os_unfair_lock_lock((v1 + 40));
  if (v17 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v22, v6);
  v7 = (**v1)(v1, v22);
  if (v7)
  {
    ctu::cf::assign();
    CFRelease(v7);
  }

  MEMORY[0x23EECD8F0](&v22);
  os_unfair_lock_unlock((v1 + 40));
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v8 = SHIBYTE(v21[2]);
  if (SHIBYTE(v21[2]) >= 0)
  {
    v9 = HIBYTE(v21[2]);
  }

  else
  {
    v9 = v21[1];
  }

  v10 = HIBYTE(v20);
  v11 = SHIBYTE(v20);
  if (v20 < 0)
  {
    v10 = v19;
  }

  if (v9 == v10)
  {
    if (SHIBYTE(v21[2]) >= 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v21[0];
    }

    if (v20 >= 0)
    {
      v13 = &v18;
    }

    else
    {
      v13 = v18;
    }

    v14 = memcmp(v12, v13, v9) != 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v14 = 1;
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }
  }

  operator delete(v18);
LABEL_37:
  if (v8 < 0)
  {
    operator delete(v21[0]);
  }

  return v14;
}

void sub_23C256000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sys::isHardwareModelChanged(sys *this)
{
  v33 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_280C05A08;
  if (!off_280C05A08)
  {
    SharedData::create_default_global(__dst);
    v2 = __dst[0];
    __dst[0] = 0uLL;
    v3 = *(&off_280C05A08 + 1);
    off_280C05A08 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_280C05A08;
  }

  __p = v1;
  v28 = *(&off_280C05A08 + 1);
  if (*(&off_280C05A08 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x277CECBF0];
  v6 = strlen(*MEMORY[0x277CECBF0]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *(&__dst[0] + 1) = v7;
    *&__dst[1] = v9 | 0x8000000000000000;
    *&__dst[0] = v8;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_19:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  os_unfair_lock_lock(v1 + 10);
  Preferences::getPreference<__CFDictionary const*>(v1, __dst, &v33);
  os_unfair_lock_unlock(v1 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
    v10 = v33;
    if (!v33)
    {
      return v10;
    }
  }

  else
  {
    v10 = v33;
    if (!v33)
    {
      return v10;
    }
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  cf = v10;
  CFRetain(v10);
  v30[0] = 0xAAAAAAAAAAAAAAAALL;
  v30[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v30, v10);
  memset(__dst, 170, 24);
  v12 = *MEMORY[0x277CECD70];
  v13 = strlen(*MEMORY[0x277CECD70]);
  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    p_p = operator new(v16);
    v28 = v14;
    v29 = v16 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_37;
  }

  HIBYTE(v29) = v13;
  p_p = &__p;
  if (v13)
  {
LABEL_37:
    memmove(p_p, v12, v14);
  }

  v17 = *MEMORY[0x277CECBC8];
  *(&v14->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v34, v17);
  ctu::cf::map_adapter::getString();
  v18 = MEMORY[0x23EECD8F0](&v34);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  config::hw::product(v18);
  v19 = BYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v20 = BYTE7(__dst[1]);
  }

  else
  {
    v20 = *(&__dst[0] + 1);
  }

  v21 = HIBYTE(v29);
  v22 = SHIBYTE(v29);
  if (v29 < 0)
  {
    v21 = v28;
  }

  if (v20 == v21)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v23 = __dst;
    }

    else
    {
      v23 = *&__dst[0];
    }

    if (v29 >= 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = __p;
    }

    v10 = memcmp(v23, v24, v20) != 0;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v10 = 1;
  if (SHIBYTE(v29) < 0)
  {
LABEL_55:
    operator delete(__p);
    v19 = BYTE7(__dst[1]);
  }

LABEL_56:
  if ((v19 & 0x80) == 0)
  {
    MEMORY[0x23EECD940](v30);
    v25 = cf;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_60;
  }

  operator delete(*&__dst[0]);
  MEMORY[0x23EECD940](v30);
  v25 = cf;
  if (cf)
  {
LABEL_60:
    CFRelease(v25);
  }

  return v10;
}

void sub_23C256440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    MEMORY[0x23EECD940](&a15);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  MEMORY[0x23EECD940](&a15);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

BOOL sys::isFWVersionChanged(const void **a1)
{
  cf = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_280C05A08;
  if (!off_280C05A08)
  {
    SharedData::create_default_global(__dst);
    v3 = __dst[0];
    __dst[0] = 0uLL;
    v4 = *(&off_280C05A08 + 1);
    off_280C05A08 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_280C05A08;
  }

  __p = v2;
  v28 = *(&off_280C05A08 + 1);
  if (*(&off_280C05A08 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = *MEMORY[0x277CECBF0];
  v7 = strlen(*MEMORY[0x277CECBF0]);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    *(&__dst[0] + 1) = v8;
    *&__dst[1] = v10 | 0x8000000000000000;
    *&__dst[0] = v9;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v7;
  v9 = __dst;
  if (v7)
  {
LABEL_19:
    memmove(v9, v6, v8);
  }

  *(v9 + v8) = 0;
  os_unfair_lock_lock(v2 + 10);
  Preferences::getPreference<__CFDictionary const*>(v2, __dst, &cf);
  os_unfair_lock_unlock(v2 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
    v11 = cf;
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    v11 = cf;
    if (!cf)
    {
      return 0;
    }
  }

  v12 = CFGetTypeID(v11);
  if (v12 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v31 = v11;
  CFRetain(v11);
  v30[0] = 0xAAAAAAAAAAAAAAAALL;
  v30[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v30, v11);
  memset(__dst, 170, 24);
  v13 = *MEMORY[0x277CECD70];
  v14 = strlen(*MEMORY[0x277CECD70]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    p_p = operator new(v18);
    v28 = v15;
    v29 = v18 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_36;
  }

  HIBYTE(v29) = v14;
  p_p = &__p;
  if (v14)
  {
LABEL_36:
    memmove(p_p, v13, v15);
  }

  v19 = *MEMORY[0x277CECC58];
  *(&v15->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v34, v19);
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v34);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  v20 = SBYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v21 = BYTE7(__dst[1]);
  }

  else
  {
    v21 = *(&__dst[0] + 1);
  }

  v22 = *(a1 + 23);
  v23 = v22;
  if (v22 < 0)
  {
    v22 = a1[1];
  }

  if (v21 == v22)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v24 = __dst;
    }

    else
    {
      v24 = *&__dst[0];
    }

    if (v23 >= 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = *a1;
    }

    v17 = memcmp(v24, v25, v21) != 0;
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v17 = 1;
    if ((SBYTE7(__dst[1]) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }
  }

  operator delete(*&__dst[0]);
LABEL_55:
  MEMORY[0x23EECD940](v30);
  if (v31)
  {
    CFRelease(v31);
  }

  return v17;
}

BOOL sys::isOSVersionChanged(sys *this)
{
  v33 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_280C05A08;
  if (!off_280C05A08)
  {
    SharedData::create_default_global(__dst);
    v2 = __dst[0];
    __dst[0] = 0uLL;
    v3 = *(&off_280C05A08 + 1);
    off_280C05A08 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_280C05A08;
  }

  __p = v1;
  v28 = *(&off_280C05A08 + 1);
  if (*(&off_280C05A08 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x277CECBF0];
  v6 = strlen(*MEMORY[0x277CECBF0]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *(&__dst[0] + 1) = v7;
    *&__dst[1] = v9 | 0x8000000000000000;
    *&__dst[0] = v8;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_19:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  os_unfair_lock_lock(v1 + 10);
  Preferences::getPreference<__CFDictionary const*>(v1, __dst, &v33);
  os_unfair_lock_unlock(v1 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
    v10 = v33;
    if (!v33)
    {
      return v10;
    }
  }

  else
  {
    v10 = v33;
    if (!v33)
    {
      return v10;
    }
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  cf = v10;
  CFRetain(v10);
  v30[0] = 0xAAAAAAAAAAAAAAAALL;
  v30[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v30, v10);
  memset(__dst, 170, 24);
  v12 = *MEMORY[0x277CECD70];
  v13 = strlen(*MEMORY[0x277CECD70]);
  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    p_p = operator new(v16);
    v28 = v14;
    v29 = v16 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_37;
  }

  HIBYTE(v29) = v13;
  p_p = &__p;
  if (v13)
  {
LABEL_37:
    memmove(p_p, v12, v14);
  }

  v17 = *MEMORY[0x277CECC60];
  *(&v14->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v34, v17);
  ctu::cf::map_adapter::getString();
  v18 = MEMORY[0x23EECD8F0](&v34);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  config::build::version(v18);
  v19 = BYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v20 = BYTE7(__dst[1]);
  }

  else
  {
    v20 = *(&__dst[0] + 1);
  }

  v21 = HIBYTE(v29);
  v22 = SHIBYTE(v29);
  if (v29 < 0)
  {
    v21 = v28;
  }

  if (v20 == v21)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v23 = __dst;
    }

    else
    {
      v23 = *&__dst[0];
    }

    if (v29 >= 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = __p;
    }

    v10 = memcmp(v23, v24, v20) != 0;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v10 = 1;
  if (SHIBYTE(v29) < 0)
  {
LABEL_55:
    operator delete(__p);
    v19 = BYTE7(__dst[1]);
  }

LABEL_56:
  if ((v19 & 0x80) == 0)
  {
    MEMORY[0x23EECD940](v30);
    v25 = cf;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_60;
  }

  operator delete(*&__dst[0]);
  MEMORY[0x23EECD940](v30);
  v25 = cf;
  if (cf)
  {
LABEL_60:
    CFRelease(v25);
  }

  return v10;
}

void sub_23C256D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    MEMORY[0x23EECD940](&a15);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  MEMORY[0x23EECD940](&a15);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

uint64_t sys::getDeviceBootTime(sys *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = 16;
  *v5 = 0x1500000001;
  if (sysctl(v5, 2u, v4, &v3, 0, 0) >= 0)
  {
    result = v4[0];
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ctu::cf::plist_adapter::set<std::string>(int a1, uint64_t a2, char *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v6, a3);
  v4 = ctu::cf::plist_adapter::set<std::string>();
  MEMORY[0x23EECD8F0](&v6);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return v4;
}

uint64_t ctu::cf::plist_adapter::set<std::string>()
{
  v0 = *MEMORY[0x277CBECE8];
  ctu::cf::convert_copy();
  return 0;
}

uint64_t Preferences::getPreference<__CFDictionary const*>(uint64_t (***a1)(void, uint64_t), const char *a2, void *a3)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v9, a2);
  v5 = (**a1)(a1, v9);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFDictionaryGetTypeID())
    {
      *a3 = v6;
    }

    CFRelease(v6);
  }

  return MEMORY[0x23EECD8F0](&v9);
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t abm::DirectoryQuery::DirectoryQuery(uint64_t result, int a2, __int128 *a3)
{
  *result = a2;
  if (*(a3 + 23) < 0)
  {
    v4 = result;
    std::string::__init_copy_ctor_external((result + 8), *a3, *(a3 + 1));
    result = v4;
    *(v4 + 32) = 0;
  }

  else
  {
    v3 = *a3;
    *(result + 24) = *(a3 + 2);
    *(result + 8) = v3;
    *(result + 32) = 0;
  }

  return result;
}

{
  *result = a2;
  if (*(a3 + 23) < 0)
  {
    v4 = result;
    std::string::__init_copy_ctor_external((result + 8), *a3, *(a3 + 1));
    result = v4;
    *(v4 + 32) = 0;
  }

  else
  {
    v3 = *a3;
    *(result + 24) = *(a3 + 2);
    *(result + 8) = v3;
    *(result + 32) = 0;
  }

  return result;
}

uint64_t abm::FileProperties::FileProperties(uint64_t result, int a2, __int128 *a3, char a4, int a5)
{
  *result = a2;
  if (*(a3 + 23) < 0)
  {
    v8 = result;
    std::string::__init_copy_ctor_external((result + 8), *a3, *(a3 + 1));
    result = v8;
    *(v8 + 32) = a4;
    *(v8 + 36) = a5;
  }

  else
  {
    v7 = *a3;
    *(result + 24) = *(a3 + 2);
    *(result + 8) = v7;
    *(result + 32) = a4;
    *(result + 36) = a5;
  }

  return result;
}

{
  *result = a2;
  if (*(a3 + 23) < 0)
  {
    v8 = result;
    std::string::__init_copy_ctor_external((result + 8), *a3, *(a3 + 1));
    result = v8;
    *(v8 + 32) = a4;
    *(v8 + 36) = a5;
  }

  else
  {
    v7 = *a3;
    *(result + 24) = *(a3 + 2);
    *(result + 8) = v7;
    *(result + 32) = a4;
    *(result + 36) = a5;
  }

  return result;
}

void abm::FileProperties::getName(abm::FileProperties *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

std::string *abm::FileProperties::getPath@<X0>(abm::FileProperties *this@<X0>, std::string **a2@<X8>)
{
  v4 = abm::sBaseDirectories[2 * *this];
  result = strlen(v4);
  v6 = *(this + 31);
  if (v6 >= 0)
  {
    v7 = *(this + 31);
  }

  else
  {
    v7 = *(this + 2);
  }

  v8 = result + v7;
  if (result + v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = result;
  if (v8 <= 0x16)
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v11 = a2;
    *(a2 + 23) = v8;
    if (!result)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((v8 | 7) == 0x17)
  {
    v10 = 25;
  }

  else
  {
    v10 = (v8 | 7) + 1;
  }

  result = operator new(v10);
  v11 = result;
  a2[1] = v8;
  a2[2] = (v10 | 0x8000000000000000);
  *a2 = result;
  if (v9)
  {
LABEL_12:
    result = memcpy(v11, v4, v9);
  }

LABEL_13:
  if (v7)
  {
    if (v6 >= 0)
    {
      v12 = this + 8;
    }

    else
    {
      v12 = *(this + 1);
    }

    result = memmove(v11 + v9, v12, v7);
  }

  v11->__r_.__value_.__s.__data_[v9 + v7] = 0;
  if (*(this + 32) == 1)
  {
    return std::string::append(a2, "/", 1uLL);
  }

  return result;
}

void sub_23C2574A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t abm::FileProperties::getDirPath@<X0>(abm::FileProperties *this@<X0>, void *a2@<X8>)
{
  v3 = abm::sBaseDirectories[2 * *this];
  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (result | 7) + 1;
    }

    v7 = operator new(v6);
    a2[1] = v5;
    a2[2] = v6 | 0x8000000000000000;
    *a2 = v7;
    a2 = v7;
  }

  else
  {
    *(a2 + 23) = result;
    if (!result)
    {
      *a2 = 0;
      return result;
    }
  }

  result = memmove(a2, v3, v5);
  *(a2 + v5) = 0;
  return result;
}

void abm::asString(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v2 = *a1;
  if (*(*a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    v3 = *(v2 + 8);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 24);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

size_t abm::baseDirectoryString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  v3 = abm::sBaseDirectories[2 * a1];
  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (result | 7) + 1;
    }

    v7 = operator new(v6);
    a2[1] = v5;
    a2[2] = v6 | 0x8000000000000000;
    *a2 = v7;
    a2 = v7;
  }

  else
  {
    *(a2 + 23) = result;
    if (!result)
    {
      *a2 = 0;
      return result;
    }
  }

  result = memmove(a2, v3, v5);
  *(a2 + v5) = 0;
  return result;
}

void abm::findFiles(unsigned int **a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v67 = a2;
  v5 = operator new(0x30uLL);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = &unk_284EFB9C0;
  v5[4] = 0;
  v5[5] = 0;
  a3[1] = v5;
  v5[3] = 0;
  v68 = a1;
  v69 = a3;
  *a3 = (v5 + 3);
  for (i = *a1; i != v68[1]; i = v22 + 10)
  {
    __p = 0;
    v88 = 0;
    v89 = 0;
    memset(&__dst, 170, sizeof(__dst));
    v8 = abm::sBaseDirectories[2 * *i];
    v9 = strlen(v8);
    if (v9 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = v9;
    v70 = i;
    if (v9 >= 0x17)
    {
      if ((v9 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v9 | 7) + 1;
      }

      p_dst = operator new(v14);
      __dst.__r_.__value_.__l.__size_ = v10;
      __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
      i = v70;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v9;
      p_dst = &__dst;
      if (!v9)
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        memset(&v85, 170, sizeof(v85));
        v12 = *(i + 31);
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    memmove(p_dst, v8, v10);
    p_dst->__r_.__value_.__s.__data_[v10] = 0;
    memset(&v85, 170, sizeof(v85));
    v12 = *(i + 31);
    if ((v12 & 0x80000000) == 0)
    {
LABEL_10:
      if (v12)
      {
        v13 = *(i + 2);
        v85.__r_.__value_.__r.__words[2] = *(i + 3);
        *&v85.__r_.__value_.__l.__data_ = v13;
        goto LABEL_29;
      }

      goto LABEL_19;
    }

LABEL_17:
    v15 = *(i + 2);
    if (v15)
    {
      std::string::__init_copy_ctor_external(&v85, *(i + 1), v15);
      goto LABEL_29;
    }

LABEL_19:
    v16 = abm::sBaseDirectories[2 * *i + 1];
    v17 = strlen(v16);
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      if ((v17 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v17 | 7) + 1;
      }

      v19 = operator new(v20);
      v85.__r_.__value_.__l.__size_ = v18;
      v85.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
      v85.__r_.__value_.__r.__words[0] = v19;
    }

    else
    {
      *(&v85.__r_.__value_.__s + 23) = v17;
      v19 = &v85;
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    memmove(v19, v16, v18);
LABEL_28:
    *(v19 + v18) = 0;
LABEL_29:
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v83[32] = v21;
    v84 = v21;
    *v83 = v21;
    *&v83[16] = v21;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v83, &v85, 0);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v82, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v82 = __dst;
    }

    std::locale::locale(&v76, v83);
    v77 = *&v83[8];
    v78 = *&v83[24];
    v79 = *&v83[40];
    v80 = v84;
    v22 = v70;
    if (v84)
    {
      atomic_fetch_add_explicit((v84 + 8), 1uLL, memory_order_relaxed);
    }

    v81 = *(&v84 + 1);
    support::fs::getFilteredFiles(&v82, &v76, &__p, v67);
    v23 = v80;
    if (v80 && !atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      std::locale::~locale(&v76);
      if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_40:
      operator delete(v82.__r_.__value_.__l.__data_);
      v24 = __p;
      if (__p == v88)
      {
        goto LABEL_99;
      }

LABEL_41:
      v25 = *v69;
      while (2)
      {
        while (2)
        {
          v26 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __dst.__r_.__value_.__l.__size_;
          }

          v28 = *(v24 + 23);
          if (v28 >= 0)
          {
            v29 = *(v24 + 23);
          }

          else
          {
            v29 = v24[1];
          }

          v30 = v29 + size;
          if (v29 + size > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v30 <= 0x16)
          {
            v72 = 0;
            v73 = 0;
            v71 = 0;
            v32 = &v71;
            HIBYTE(v73) = v29 + size;
            if (size)
            {
              goto LABEL_58;
            }
          }

          else
          {
            if ((v30 | 7) == 0x17)
            {
              v31 = 25;
            }

            else
            {
              v31 = (v30 | 7) + 1;
            }

            v32 = operator new(v31);
            v72 = v29 + size;
            v73 = v31 | 0x8000000000000000;
            v71 = v32;
            v22 = v70;
            if (!size)
            {
              goto LABEL_62;
            }

LABEL_58:
            if (v26 >= 0)
            {
              v33 = &__dst;
            }

            else
            {
              v33 = __dst.__r_.__value_.__r.__words[0];
            }

            memmove(v32, v33, size);
          }

LABEL_62:
          v34 = &v32[size];
          if (v29)
          {
            v35 = *v24;
            if (v28 >= 0)
            {
              v36 = v24;
            }

            else
            {
              v36 = *v24;
            }

            memmove(v34, v36, v29);
          }

          v34[v29] = 0;
          v37.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v37.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&v90.st_blksize = v37;
          *v90.st_qspare = v37;
          v90.st_birthtimespec = v37;
          *&v90.st_size = v37;
          v90.st_mtimespec = v37;
          v90.st_ctimespec = v37;
          *&v90.st_uid = v37;
          v90.st_atimespec = v37;
          *&v90.st_dev = v37;
          if (v73 >= 0)
          {
            v38 = &v71;
          }

          else
          {
            v38 = v71;
          }

          if (stat(v38, &v90) || (v73 >= 0 ? (v40 = &v71) : (v40 = v71), v41 = opendir(v40), (v42 = v41) == 0))
          {
            v39 = 0;
          }

          else
          {
            v43 = readdir(v41);
            closedir(v42);
            v39 = v43 != 0;
          }

          v44 = operator new(0x40uLL);
          v45 = v44;
          *(v44 + 1) = 0;
          *(v44 + 2) = 0;
          *v44 = &unk_284EFBA10;
          *(v44 + 6) = *v22;
          v46 = v44 + 24;
          if (*(v24 + 23) < 0)
          {
            std::string::__init_copy_ctor_external((v44 + 32), *v24, v24[1]);
          }

          else
          {
            v47 = *v24;
            *(v44 + 6) = v24[2];
            *(v44 + 2) = v47;
          }

          v45[56] = v39;
          *(v45 + 15) = 1;
          v74 = v46;
          v75 = v45;
          v48 = *(v25 + 8);
          v49 = *(v25 + 16);
          if (v48 >= v49)
          {
            v50 = (v48 - *v25) >> 4;
            v51 = v50 + 1;
            if ((v50 + 1) >> 60)
            {
              std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
            }

            v52 = v49 - *v25;
            if (v52 >> 3 > v51)
            {
              v51 = v52 >> 3;
            }

            if (v52 >= 0x7FFFFFFFFFFFFFF0)
            {
              v53 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v53 = v51;
            }

            if (v53)
            {
              if (v53 >> 60)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v54 = operator new(16 * v53);
            }

            else
            {
              v54 = 0;
            }

            v55 = &v54[16 * v50];
            v56 = &v54[16 * v53];
            *v55 = v46;
            *(v55 + 1) = v45;
            v74 = 0;
            v75 = 0;
            v57 = v55 + 16;
            v58 = *v25;
            v59 = *(v25 + 8) - *v25;
            v60 = &v55[-v59];
            memcpy(&v55[-v59], *v25, v59);
            *v25 = v60;
            *(v25 + 8) = v57;
            *(v25 + 16) = v56;
            if (v58)
            {
              operator delete(v58);
              v61 = v75;
              *(v25 + 8) = v57;
              if (v61)
              {
                add = atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL);
                v25 = *v69;
                if (!add)
                {
                  (v61->__on_zero_shared)(v61);
                  std::__shared_weak_count::__release_weak(v61);
                }
              }

              if ((SHIBYTE(v73) & 0x80000000) == 0)
              {
LABEL_43:
                v24 += 3;
                if (v24 == v88)
                {
                  goto LABEL_99;
                }

                continue;
              }
            }

            else
            {
              *(v25 + 8) = v57;
              if ((SHIBYTE(v73) & 0x80000000) == 0)
              {
                goto LABEL_43;
              }
            }
          }

          else
          {
            *v48 = v46;
            v48[1] = v45;
            v74 = 0;
            v75 = 0;
            *(v25 + 8) = v48 + 2;
            if ((SHIBYTE(v73) & 0x80000000) == 0)
            {
              goto LABEL_43;
            }
          }

          break;
        }

        operator delete(v71);
        v24 += 3;
        if (v24 == v88)
        {
          goto LABEL_99;
        }

        continue;
      }
    }

    std::locale::~locale(&v76);
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }

LABEL_37:
    v24 = __p;
    if (__p != v88)
    {
      goto LABEL_41;
    }

LABEL_99:
    v63 = v84;
    if (v84 && !atomic_fetch_add((v84 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v63->__on_zero_shared)(v63);
      std::__shared_weak_count::__release_weak(v63);
    }

    std::locale::~locale(v83);
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_104:
        v64 = __p;
        if (__p)
        {
          goto LABEL_108;
        }

        continue;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_104;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    v64 = __p;
    if (__p)
    {
LABEL_108:
      v65 = v88;
      v7 = v64;
      if (v88 != v64)
      {
        do
        {
          v66 = *(v65 - 1);
          v65 -= 3;
          if (v66 < 0)
          {
            operator delete(*v65);
          }
        }

        while (v65 != v64);
        v7 = __p;
      }

      v88 = v64;
      operator delete(v7);
    }
  }
}

void sub_23C257ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if ((a48 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&v49);
    (std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100])();
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23C257EB4);
}

void sub_23C257EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if ((a48 & 0x80000000) == 0)
  {
    JUMPOUT(0x23C257EF0);
  }

  JUMPOUT(0x23C257EB4);
}

void sub_23C257F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  std::vector<std::string>::~vector[abi:ne200100](&a46);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](a12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<std::shared_ptr<abm::FileProperties>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFB9C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<std::vector<std::shared_ptr<abm::FileProperties>>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<abm::FileProperties>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFBA10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<abm::FileProperties>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void _GLOBAL__sub_I_HelperTaskUtils_cpp()
{
  abm::sBaseDirectories = abm::trace::kTrashFolder[0];
  *algn_280C06558 = ".*";
  qword_280C06560 = abm::trace::kScratchFolder[0];
  unk_280C06568 = ".*";
  qword_280C06570 = "/var/wireless/Library/Logs/abm.workspace/";
  unk_280C06578 = ".*";
  qword_280C06580 = "/var/mobile/Library/Logs/CrashReporter/Baseband/";
  unk_280C06588 = ".*";
  qword_280C06590 = "/var/wireless/Library/Logs/";
  unk_280C06598 = "^\b$";
  qword_280C065A0 = "/var/wireless/Library/Logs/CrashReporter/";
  unk_280C065A8 = "^CommCenter.*";
  qword_280C065B0 = abm::trace::kSnapshotFolder[0];
  unk_280C065B8 = ".*";
  qword_280C065C0 = abm::trace::kMobileBasebandServicesFolder[0];
  unk_280C065C8 = ".*";
}

uint64_t abm::CellularLoggingEUR::CellularLoggingEUR(uint64_t a1, uint64_t *a2, dispatch_object_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  *a1 = &unk_284EFD1E0;
  ctu::OsLogLogger::OsLogLogger((a1 + 8), "com.apple.telephony", "carriercellularlogging.modem");
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_284EFD1E0;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = v6;
  if (!v6)
  {
    *(a1 + 56) = 0;
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  dispatch_retain(v6);
  *(a1 + 56) = 0;
  dispatch_release(v6);
  if (v4)
  {
LABEL_9:
    std::__shared_weak_count::__release_weak(v4);
  }

LABEL_10:
  *a1 = &unk_284EFBA60;
  *(a1 + 57) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return a1;
}

void sub_23C2582C0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    dispatch_release(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(exception_object);
}

void abm::CellularLoggingEUR::~CellularLoggingEUR(void **this)
{
  *this = &unk_284EFBA60;
  if ((*(this + 207) & 0x80000000) == 0)
  {
    if ((*(this + 175) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(this[19]);
    v2 = this[17];
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  operator delete(this[23]);
  if (*(this + 175) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = this[17];
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

LABEL_9:
  v3 = this[14];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[12];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 87) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (*(this + 87) < 0)
  {
LABEL_15:
    operator delete(this[8]);
  }

LABEL_16:
  *this = &unk_284EFD1E0;
  v5 = this[6];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[5];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = this[3];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  MEMORY[0x23EECD800](this + 1);
}

{
  abm::CellularLoggingEUR::~CellularLoggingEUR(this);

  operator delete(v1);
}

BOOL abm::CellularLoggingEUR::start(uint64_t a1, xpc_object_t *a2)
{
  v112 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v4 = xpc_null_create();
  }

  v5 = abm::CellularLoggingCommon::start();
  xpc_release(v4);
  v110 = 0;
  if (!v5)
  {
    v9 = *(a1 + 8);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed creating path", &buf, 2u);
      result = 0;
    }

    goto LABEL_194;
  }

  memset(&v109, 170, sizeof(v109));
  v108 = 4;
  strcpy(v107, "Mode");
  abm::CellularLoggingCommon::getProperty(a1, v107, &v109);
  if (v108 < 0)
  {
    operator delete(v107[0]);
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = -1431655766;
  if (util::convert<int>(&v109, &buf, 0))
  {
    *(a1 + 124) = buf.__r_.__value_.__l.__data_;
  }

  v6 = *(a1 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 124);
    if (v7 > 4)
    {
      v8 = "Unknown";
    }

    else
    {
      v8 = off_278BB8D90[v7];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v8;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Previous trace mode: %s", &buf, 0xCu);
  }

  v106 = 7;
  strcpy(v105, "Enabled");
  abm::CellularLoggingCommon::getProperty(a1, v105, &buf);
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  v109 = buf;
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (v106 < 0)
  {
    operator delete(v105[0]);
  }

  v104 = 0;
  util::convert<BOOL>(&v109, &v104, 0);
  if (*(a1 + 58) == 1)
  {
    *(a1 + 58) = 0;
  }

  v11 = v104;
  *(a1 + 57) = v104;
  *(a1 + 58) = 1;
  v12 = *(a1 + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "false";
    if (v11)
    {
      v13 = "true";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v13;
    _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Previous trace enabled: %s", &buf, 0xCu);
  }

  v103 = 9;
  strcpy(v102, "High_Tput");
  abm::CellularLoggingCommon::getProperty(a1, v102, &buf);
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  v109 = buf;
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (v103 < 0)
  {
    operator delete(v102[0]);
  }

  util::convert<BOOL>(&v109, (a1 + 59), 0);
  v14 = *(a1 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 59))
    {
      v15 = "true";
    }

    else
    {
      v15 = "false";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v15;
    _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Previous trace QDSS enabled: %s", &buf, 0xCu);
  }

  v101 = 12;
  strcpy(__p, "Data_Logging");
  abm::CellularLoggingCommon::getProperty(a1, __p, &buf);
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  v109 = buf;
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (v101 < 0)
  {
    operator delete(__p[0]);
  }

  util::convert<BOOL>(&v109, (a1 + 60), 0);
  v16 = *(a1 + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 60))
    {
      v17 = "true";
    }

    else
    {
      v17 = "false";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v17;
    _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I Previous trace ADPL enabled: %s", &buf, 0xCu);
  }

  v99 = 4;
  strcpy(v98, "File");
  abm::CellularLoggingCommon::getProperty(a1, v98, &buf);
  v18 = (a1 + 184);
  if (*(a1 + 207) < 0)
  {
    operator delete(*v18);
  }

  *v18 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 200) = *(&buf.__r_.__value_.__l + 2);
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (v99 < 0)
  {
    operator delete(v98[0]);
  }

  value = xpc_dictionary_get_value(*a2, "kKeyConfigName");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  v20 = (a1 + 152);
  if (*(a1 + 175) < 0)
  {
    operator delete(*v20);
  }

  *v20 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 168) = *(&buf.__r_.__value_.__l + 2);
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  xpc_release(object);
  v21 = *(a1 + 8);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 207) < 0)
    {
      v18 = *v18;
      v22 = (a1 + 152);
      if ((*(a1 + 175) & 0x80000000) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v22 = (a1 + 152);
      if ((*(a1 + 175) & 0x80000000) == 0)
      {
LABEL_56:
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = v18;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v22;
        _os_log_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEFAULT, "#I Previous trace DMC: %s, Current trace DMC: %s", &buf, 0x16u);
        goto LABEL_57;
      }
    }

    v22 = *v20;
    goto LABEL_56;
  }

LABEL_57:
  v23 = *a2;
  v96 = v23;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    v96 = xpc_null_create();
  }

  FileSize = abm::CellularLoggingCommon::getFileSize(a1, &v96, (a1 + 176));
  xpc_release(v96);
  v96 = 0;
  if (!FileSize)
  {
    v29 = *(a1 + 8);
    result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_192;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v30 = "Failed to get file size";
    goto LABEL_65;
  }

  v26 = *(a1 + 176);
  v27 = capabilities::radio::vendor(v25);
  if ((v27 - 1) > 3)
  {
    v28 = 25;
  }

  else
  {
    v28 = dword_23C32D580[v27 - 1];
  }

  v33 = capabilities::radio::dal(v27);
  v34 = v33;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v33);
  v36 = 0x4000;
  if (v34)
  {
    v36 = 1024;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    if (v28 == 17)
    {
      v36 = 0x80000;
    }

    else if (v28 == 21 || v28 == 20)
    {
      v36 = 61440;
    }

    else
    {
      capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
      if ((v28 - 19) > 5)
      {
        v36 = 0x8000;
      }

      else
      {
        v36 = qword_23C32E448[v28 - 19];
      }
    }
  }

  if (v26 >= v36)
  {
    v41 = *(a1 + 176);
    if ((v41 & (v41 - 1)) != 0)
    {
      goto LABEL_191;
    }

LABEL_86:
    v95 = 8;
    strcpy(v94, "FileSize");
    abm::CellularLoggingCommon::getProperty(a1, v94, &buf);
    if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v109.__r_.__value_.__l.__data_);
    }

    v109 = buf;
    *(&buf.__r_.__value_.__s + 23) = 0;
    buf.__r_.__value_.__s.__data_[0] = 0;
    if (v95 < 0)
    {
      operator delete(v94[0]);
    }

    LODWORD(object) = 0;
    util::convert<unsigned int>(&v109, &object, 0);
    v42 = *(a1 + 8);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a1 + 176) >> 10;
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = object >> 10;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = v43;
      _os_log_impl(&dword_23C1C4000, v42, OS_LOG_TYPE_DEFAULT, "#I Previous trace file size: %u KB, Current trace file size: %zu KB", &buf, 0x12u);
    }

    if (*(a1 + 59))
    {
      v44 = ".bin";
    }

    else
    {
      v44 = ".diag.qmdl2";
    }

    std::string::__assign_external((a1 + 64), v44);
    if (*(a1 + 59))
    {
      v45 = 2;
    }

    else
    {
      v45 = 0;
    }

    *(a1 + 120) = v45;
    v46 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v93 = dispatch_queue_create("CellularLogging.DIAG.reader.queue", v46);
    BasebandTransport::create(&v93, QOS_CLASS_DEFAULT, &buf);
    v47 = *&buf.__r_.__value_.__l.__data_;
    *&buf.__r_.__value_.__l.__data_ = 0uLL;
    v48 = *(a1 + 96);
    *(a1 + 88) = v47;
    if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v48->__on_zero_shared)(v48);
      std::__shared_weak_count::__release_weak(v48);
    }

    size = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    if (v93)
    {
      dispatch_release(v93);
    }

    if (*(a1 + 88))
    {
      abm::CellularLoggingEUR::getGUID(a1, &buf);
      v50 = *&buf.__r_.__value_.__l.__data_;
      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      v51 = *(a1 + 136);
      *(a1 + 128) = v50;
      if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v51->__on_zero_shared)(v51);
        std::__shared_weak_count::__release_weak(v51);
      }

      v52 = buf.__r_.__value_.__l.__size_;
      if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v52->__on_zero_shared)(v52);
        std::__shared_weak_count::__release_weak(v52);
      }

      if (*(a1 + 128))
      {
        v92 = 12;
        strcpy(v91, "Data_Logging");
        std::to_string(&buf, 0);
        v90 = buf;
        abm::CellularLoggingCommon::setProperty(a1, v91, &v90);
        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (v92 < 0)
        {
          operator delete(v91[0]);
        }

        v53 = *MEMORY[0x277CECB40];
        v54 = strlen(*MEMORY[0x277CECB40]);
        if (v54 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_185;
        }

        v55 = v54;
        if (v54 >= 0x17)
        {
          if ((v54 | 7) == 0x17)
          {
            v60 = 25;
          }

          else
          {
            v60 = (v54 | 7) + 1;
          }

          v56 = operator new(v60);
          __dst[1] = v55;
          v89 = v60 | 0x8000000000000000;
          __dst[0] = v56;
        }

        else
        {
          HIBYTE(v89) = v54;
          v56 = __dst;
          if (!v54)
          {
LABEL_140:
            *(v55 + v56) = 0;
            std::to_string(&buf, 0);
            v87 = buf;
            abm::CellularLoggingCommon::setProperty(a1, __dst, &v87);
            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v89) & 0x80000000) == 0)
              {
LABEL_142:
                v86 = 4;
                strcpy(v85, "File");
                if ((*(a1 + 175) & 0x80000000) == 0)
                {
                  goto LABEL_143;
                }

                goto LABEL_181;
              }
            }

            else if ((SHIBYTE(v89) & 0x80000000) == 0)
            {
              goto LABEL_142;
            }

            operator delete(__dst[0]);
            v86 = 4;
            strcpy(v85, "File");
            if ((*(a1 + 175) & 0x80000000) == 0)
            {
LABEL_143:
              v61 = strlen((a1 + 152));
              if (v61 <= 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_144;
              }

              goto LABEL_182;
            }

LABEL_181:
            v20 = *v20;
            v61 = strlen(v20);
            if (v61 <= 0x7FFFFFFFFFFFFFF7)
            {
LABEL_144:
              v62 = v61;
              if (v61 >= 0x17)
              {
                if ((v61 | 7) == 0x17)
                {
                  v64 = 25;
                }

                else
                {
                  v64 = (v61 | 7) + 1;
                }

                v63 = operator new(v64);
                v83[1] = v62;
                v84 = v64 | 0x8000000000000000;
                v83[0] = v63;
              }

              else
              {
                HIBYTE(v84) = v61;
                v63 = v83;
                if (!v61)
                {
LABEL_152:
                  *(v62 + v63) = 0;
                  abm::CellularLoggingCommon::setProperty(a1, v85, v83);
                  if (SHIBYTE(v84) < 0)
                  {
                    operator delete(v83[0]);
                  }

                  if (v86 < 0)
                  {
                    operator delete(v85[0]);
                  }

                  v82 = 14;
                  strcpy(v81, "TraceOwnership");
                  std::to_string(&buf, 1);
                  v80 = buf;
                  abm::CellularLoggingCommon::setProperty(a1, v81, &v80);
                  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v80.__r_.__value_.__l.__data_);
                  }

                  if (v82 < 0)
                  {
                    operator delete(v81[0]);
                  }

                  v79 = 4;
                  strcpy(v78, "Mode");
                  std::to_string(&buf, 4);
                  v77 = buf;
                  abm::CellularLoggingCommon::setProperty(a1, v78, &v77);
                  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v77.__r_.__value_.__l.__data_);
                    if ((v79 & 0x80000000) == 0)
                    {
LABEL_162:
                      v65 = strlen(v53);
                      if (v65 <= 0x7FFFFFFFFFFFFFF7)
                      {
                        goto LABEL_163;
                      }

                      goto LABEL_185;
                    }
                  }

                  else if ((v79 & 0x80000000) == 0)
                  {
                    goto LABEL_162;
                  }

                  operator delete(v78[0]);
                  v65 = strlen(v53);
                  if (v65 <= 0x7FFFFFFFFFFFFFF7)
                  {
LABEL_163:
                    v66 = v65;
                    if (v65 >= 0x17)
                    {
                      if ((v65 | 7) == 0x17)
                      {
                        v68 = 25;
                      }

                      else
                      {
                        v68 = (v65 | 7) + 1;
                      }

                      v67 = operator new(v68);
                      v75[1] = v66;
                      v76 = v68 | 0x8000000000000000;
                      v75[0] = v67;
                    }

                    else
                    {
                      HIBYTE(v76) = v65;
                      v67 = v75;
                      if (!v65)
                      {
                        goto LABEL_171;
                      }
                    }

                    memmove(v67, v53, v66);
LABEL_171:
                    *(v66 + v67) = 0;
                    std::to_string(&buf, 1);
                    v74 = buf;
                    abm::CellularLoggingCommon::setProperty(a1, v75, &v74);
                    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v74.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v76) < 0)
                    {
                      operator delete(v75[0]);
                    }

                    if (abm::CellularLoggingEUR::startReader(a1, 1))
                    {
                      result = 1;
                      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
                      {
                        goto LABEL_193;
                      }

                      goto LABEL_194;
                    }

                    abm::CellularLoggingEUR::stopReader(a1, 1);
LABEL_197:
                    result = 0;
                    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_194;
                    }

                    goto LABEL_193;
                  }

LABEL_185:
                  std::string::__throw_length_error[abi:ne200100]();
                }
              }

              memmove(v63, v20, v62);
              goto LABEL_152;
            }

LABEL_182:
            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        memmove(v56, v53, v55);
        goto LABEL_140;
      }

      v29 = *(a1 + 8);
      result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_192;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v30 = "Failed to retrieve GUID for DIAG trace";
    }

    else
    {
      v29 = *(a1 + 8);
      result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_192;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v30 = "Failed to create transport!";
    }

LABEL_65:
    v31 = v29;
    v32 = 2;
LABEL_196:
    _os_log_error_impl(&dword_23C1C4000, v31, OS_LOG_TYPE_ERROR, v30, &buf, v32);
    goto LABEL_197;
  }

  v37 = *(a1 + 8);
  v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
  if (v38)
  {
    v72 = *(a1 + 176);
    v73 = defaults::bbtrace::min_file_size(v38);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
    *(buf.__r_.__value_.__r.__words + 4) = v72 >> 10;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v73 >> 10;
    _os_log_error_impl(&dword_23C1C4000, v37, OS_LOG_TYPE_ERROR, "Given file size (%zu) KB is beyond the minimum boundary, adjusting to (%u) KB", &buf, 0x12u);
  }

  v39 = capabilities::radio::vendor(v38);
  if ((v39 - 1) > 3)
  {
    v40 = 25;
  }

  else
  {
    v40 = dword_23C32D580[v39 - 1];
  }

  v57 = capabilities::radio::dal(v39);
  v58 = v57;
  v59 = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v57);
  if (v58)
  {
    v41 = 1024;
  }

  else
  {
    v41 = 0x4000;
  }

  if ((v59 & 1) == 0)
  {
    if (v40 == 17)
    {
      v41 = 0x80000;
    }

    else if (v40 == 21 || v40 == 20)
    {
      v41 = 61440;
    }

    else
    {
      capabilities::radio::dal(v59);
      if ((v40 - 19) > 5)
      {
        v41 = 0x8000;
      }

      else
      {
        v41 = qword_23C32E448[v40 - 19];
      }
    }
  }

  *(a1 + 176) = v41;
  if ((v41 & (v41 - 1)) == 0)
  {
    goto LABEL_86;
  }

LABEL_191:
  v69 = *(a1 + 8);
  result = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v41;
    v30 = "File size (%zu) KB must be the power of 2";
    v31 = v69;
    v32 = 12;
    goto LABEL_196;
  }

LABEL_192:
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_193:
    v70 = result;
    operator delete(v109.__r_.__value_.__l.__data_);
    result = v70;
  }

LABEL_194:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C25945C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v20 - 137) < 0)
  {
    operator delete(*(v20 - 160));
  }

  _Unwind_Resume(a1);
}

void abm::CellularLoggingEUR::getGUID(abm::CellularLoggingEUR *this@<X0>, void *a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = operator new(0x70uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = &unk_284EFBB80;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 13) = 0;
  *a2 = v4 + 24;
  a2[1] = v4;
  v5 = capabilities::diag::supportsQShrink4(v4);
  if ((v5 & 1) == 0)
  {
    v13 = *(this + 1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I No GUID supported device!", buf, 2u);
    }

    goto LABEL_32;
  }

  v6 = *(this + 11);
  if (!v6)
  {
    v14 = *(this + 1);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v15 = "Transport is not created!";
LABEL_25:
    _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_32;
  }

  *buf = 2;
  buf[4] = 0;
  v27 = 10;
  v7 = capabilities::radio::dal(v5);
  v8 = v7;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v7);
  if (v8)
  {
    v10 = 1024;
  }

  else
  {
    v10 = 0x4000;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
    v10 = 0x8000;
  }

  LODWORD(v28) = v10;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
  if (shouldUseMinBasebandTransportIOReadCount)
  {
    v12 = 4;
  }

  else
  {
    capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
    v12 = 16;
  }

  HIDWORD(v28) = v12;
  v29 = 0;
  v30 = 0;
  aBlock = 0;
  v16 = (**v6)(v6, buf, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((v16 & 1) == 0)
  {
    v14 = *(this + 1);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v15 = "Failed to open DIAG transport to get GUID info";
    goto LABEL_25;
  }

  *buf = 0;
  v27 = 0;
  v28 = 0;
  BasebandTransport::operator*(*(this + 11));
  v17 = ETLDIAGGetGUID();
  if (BasebandTransport::close(*(this + 11)))
  {
    if (v17)
    {
      if (*(v4 + 4) == *(v4 + 5))
      {
        v18 = *(this + 1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *v31 = 0;
          v19 = "Querying GUID returns empty!";
LABEL_28:
          v20 = v18;
          v21 = 2;
          goto LABEL_36;
        }
      }
    }

    else
    {
      v22 = *(this + 1);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = buf;
        if (v28 < 0)
        {
          v24 = *buf;
        }

        *v31 = 136315138;
        v32 = v24;
        v19 = "Failed to get GUID and error description: %s";
        v20 = v22;
        v21 = 12;
LABEL_36:
        _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, v19, v31, v21);
        if ((SHIBYTE(v28) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }
  }

  else
  {
    v18 = *(this + 1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      v19 = "Failed to close transport!";
      goto LABEL_28;
    }
  }

  if (SHIBYTE(v28) < 0)
  {
LABEL_31:
    operator delete(*buf);
  }

LABEL_32:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_23C259A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::CellularLoggingEUR::startReader(abm::CellularLoggingEUR *this, int a2)
{
  v57 = *MEMORY[0x277D85DE8];
  memset(&v53, 170, sizeof(v53));
  v52 = 14;
  strcpy(__p, "TraceOwnership");
  abm::CellularLoggingCommon::getProperty(this, __p, &v53);
  if (v52 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = -1431655766;
  *buf = -1431655766;
  if ((util::convert<int>(&v53, buf, 0) & 1) == 0 || (v4 = *buf, *buf != 1))
  {
    v9 = *(this + 1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Trace Owner: %d, CellularLogging does not own trace transport. Skip creating trace reader", buf, 8u);
    }

    goto LABEL_10;
  }

  v5 = operator new(0x40uLL);
  v6 = v5;
  v5[2] = 0;
  v5[1] = 0;
  *v5 = &unk_284EFDF98;
  v7 = v5 + 3;
  v5[7] = 0;
  v5[6] = 0;
  v5[4] = v5;
  v5[5] = (v5 + 6);
  atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
  v5[3] = (v5 + 3);
  if (!atomic_fetch_add(v5 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v5 + 16))(v5);
    std::__shared_weak_count::__release_weak(v6);
    v8 = *(this + 14);
    *(this + 13) = v7;
    *(this + 14) = v6;
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v8 = *(this + 14);
  *(this + 13) = v7;
  *(this + 14) = v5;
  if (v8)
  {
LABEL_15:
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (*(this + 13))
      {
        goto LABEL_17;
      }
    }

    else
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      if (*(this + 13))
      {
        goto LABEL_17;
      }
    }

    v31 = *(this + 1);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v31, OS_LOG_TYPE_ERROR, "Failed to create DIAG reader!", buf, 2u);
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

LABEL_17:
  memset(buf, 170, 16);
  v13 = *(this + 59);
  v14 = *(this + 12);
  v49 = *(this + 11);
  v50 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(this + 17);
  v47 = *(this + 16);
  v48 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(this + 36);
  v17 = capabilities::trace::defaultMemoryFileMaxCount(v5);
  if (v13)
  {
    v18 = 15;
  }

  else
  {
    v18 = 2;
  }

  diag::DIAGReader::Parameters::create(v18, &v49, &v47, v16, "/private/var/mobile/Library/Logs/CellularLogging", v17, *(this + 44), buf);
  v19 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = v50;
  if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  if (!*buf)
  {
    v30 = *(this + 1);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v46 = 0;
      _os_log_error_impl(&dword_23C1C4000, v30, OS_LOG_TYPE_ERROR, "Failed to create reader parameters", v46, 2u);
    }

    v10 = 0;
    goto LABEL_63;
  }

  memset(v46, 170, sizeof(v46));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN3abm18CellularLoggingEUR11startReaderEb_block_invoke;
  aBlock[3] = &__block_descriptor_40_e117_v32__0_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1___8l;
  aBlock[4] = this;
  v21 = _Block_copy(aBlock);
  v22 = *(this + 6);
  if (v22)
  {
    dispatch_retain(*(this + 6));
  }

  *v46 = v21;
  *&v46[8] = v22;
  v23 = *(this + 13);
  v24 = *(this + 30);
  v43 = *buf;
  v44 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
  }

  if (v21)
  {
    v41 = _Block_copy(v21);
    object = v22;
    if (!v22)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v41 = 0;
  object = v22;
  if (v22)
  {
LABEL_37:
    dispatch_retain(v22);
  }

LABEL_38:
  diag::DIAGReaderManager::addReader(v23, v24, &v43, &v41);
  if (object)
  {
    dispatch_release(object);
  }

  if (v41)
  {
    _Block_release(v41);
  }

  v25 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(this + 13);
  v40 = 0;
  LOBYTE(v39) = 0;
  diag::DIAGReaderManager::pushInfo(v26, 4, &v39);
  if (v40 < 0)
  {
    operator delete(v39);
    v32 = *(this + 13);
    v28 = *(v32 + 16);
    v29 = (v32 + 24);
    if (v28 == (v32 + 24))
    {
      goto LABEL_57;
    }
  }

  else
  {
    v27 = *(this + 13);
    v28 = *(v27 + 16);
    v29 = (v27 + 24);
    if (v28 == (v27 + 24))
    {
      goto LABEL_57;
    }
  }

  do
  {
    diag::DIAGReader::start(v28[5]);
    v35 = v28[1];
    if (v35)
    {
      do
      {
        v36 = v35;
        v35 = *v35;
      }

      while (v35);
    }

    else
    {
      do
      {
        v36 = v28[2];
        v37 = *v36 == v28;
        v28 = v36;
      }

      while (!v37);
    }

    v28 = v36;
  }

  while (v36 != v29);
LABEL_57:
  if (!a2 || (abm::CellularLoggingCommon::changeState(this, 1) & 1) != 0)
  {
    v10 = 1;
    v33 = *&v46[8];
    if (!*&v46[8])
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v38 = *(this + 1);
  if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v10 = 0;
    v33 = *&v46[8];
    if (!*&v46[8])
    {
      goto LABEL_61;
    }

LABEL_60:
    dispatch_release(v33);
    goto LABEL_61;
  }

  *v54 = 136315138;
  v55 = "true";
  _os_log_error_impl(&dword_23C1C4000, v38, OS_LOG_TYPE_ERROR, "Failed to change state (%s) for cellularlogging!", v54, 0xCu);
  v10 = 0;
  v33 = *&v46[8];
  if (*&v46[8])
  {
    goto LABEL_60;
  }

LABEL_61:
  if (*v46)
  {
    _Block_release(*v46);
  }

LABEL_63:
  v34 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

LABEL_11:
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_23C25A18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  dispatch::callback<void({block_pointer})(std::string)>::~callback(&a24);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v35 - 96);
  if (*(v35 - 113) < 0)
  {
    operator delete(*(v35 - 136));
  }

  _Unwind_Resume(a1);
}

BOOL abm::CellularLoggingEUR::stopReader(abm::CellularLoggingEUR *this, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = this + 104;
  v4 = *(this + 13);
  if (!v4)
  {
    goto LABEL_10;
  }

  v17 = 0;
  LOBYTE(__p) = 0;
  diag::DIAGReaderManager::pushInfo(v4, 6, &__p);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  diag::DIAGReaderManager::wait(*v5, 4u);
  v6 = *(*v5 + 16);
  v7 = *v5 + 24;
  if (v6 != v7)
  {
    do
    {
      diag::DIAGReader::stop(v6[5]);
      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v7);
  }

  v8 = *(this + 14);
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (!v8)
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    if (!a2)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 14);
  *v5 = 0;
  *(v5 + 1) = 0;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_10:
    if (!a2)
    {
LABEL_24:
      result = 1;
      goto LABEL_25;
    }
  }

LABEL_11:
  if (abm::CellularLoggingCommon::changeState(this, 0))
  {
    goto LABEL_24;
  }

  v10 = *(this + 1);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315138;
    v19 = "false";
    _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Failed to change state (%s) for cellularlogging!", buf, 0xCu);
    result = 0;
  }

LABEL_25:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C25A458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3abm18CellularLoggingEUR11startReaderEb_block_invoke(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v6 = 136315138;
    v7 = a2;
    _os_log_error_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_ERROR, "Diag Reader Error: %s", &v6, 0xCu);
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = *MEMORY[0x277D85DE8];
  }
}

uint64_t dispatch::callback<void({block_pointer})(std::string)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void abm::CellularLoggingEUR::getGUIDStrings(uint64_t a1@<X0>, uint64_t *a2@<X1>, void **a3@<X8>)
{
  v4 = *a2;
  if (*a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    if (v5 != v6)
    {
      v7 = 0;
      do
      {
        while (1)
        {
          while (1)
          {
            ETLDIAGLoggingGetGUIDString();
            v8 = a3[2];
            if (v7 >= v8)
            {
              break;
            }

            v9 = *__p;
            *(v7 + 2) = v22;
            *v7 = v9;
            v7 += 24;
            a3[1] = v7;
            v5 += 16;
            if (v5 == v6)
            {
              return;
            }
          }

          v10 = *a3;
          v11 = v7 - *a3;
          v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3) + 1;
          if (v12 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
          }

          v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 3);
          if (2 * v13 > v12)
          {
            v12 = 2 * v13;
          }

          v14 = v13 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v12;
          if (v14)
          {
            if (v14 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v15 = operator new(24 * v14);
          }

          else
          {
            v15 = 0;
          }

          v16 = &v15[8 * (v11 >> 3)];
          *v16 = *__p;
          *(v16 + 2) = v22;
          v17 = &v15[24 * v14];
          __p[1] = 0;
          v22 = 0;
          __p[0] = 0;
          v7 = v16 + 24;
          v18 = &v16[-v11];
          memcpy(&v16[-v11], v10, v11);
          *a3 = v18;
          a3[2] = v17;
          if (v10)
          {
            break;
          }

          a3[1] = v7;
          v5 += 16;
          if (v5 == v6)
          {
            return;
          }
        }

        operator delete(v10);
        v19 = SHIBYTE(v22);
        a3[1] = v7;
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        v5 += 16;
      }

      while (v5 != v6);
    }
  }

  else
  {
    v20 = *(a1 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, "No DIAG GUID parameter is given", __p, 2u);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_23C25A7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](v14);
    _Unwind_Resume(a1);
  }

  std::vector<std::string>::~vector[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void abm::CellularLoggingEUR::stop(abm::CellularLoggingEUR *this)
{
  if (!abm::CellularLoggingCommon::isStarted(this))
  {
    v6 = *(this + 1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging has not been started yet", &buf, 2u);
    }

    return;
  }

  abm::CellularLoggingEUR::stopReader(this, 1);
  v2 = *MEMORY[0x277CECB40];
  v3 = strlen(*MEMORY[0x277CECB40]);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_53:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v3 | 7) + 1;
    }

    v5 = operator new(v7);
    __dst[1] = v4;
    v29 = v7 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_12;
  }

  HIBYTE(v29) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_12:
    memmove(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  std::to_string(&buf, 0);
  v27 = buf;
  abm::CellularLoggingCommon::setProperty(this, __dst, &v27);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst[0]);
LABEL_15:
  v26 = 14;
  strcpy(v25, "TraceOwnership");
  std::to_string(&buf, 0);
  __p = buf;
  abm::CellularLoggingCommon::setProperty(this, v25, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v25[0]);
LABEL_17:
  v23 = 4;
  strcpy(v22, "Mode");
  std::to_string(&buf, *(this + 31));
  v21 = buf;
  abm::CellularLoggingCommon::setProperty(this, v22, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v22[0]);
LABEL_19:
  v20 = 4;
  strcpy(v19, "File");
  if (*(this + 207) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(this + 23), *(this + 24));
  }

  else
  {
    v18 = *(this + 184);
  }

  abm::CellularLoggingCommon::setProperty(this, v19, &v18);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  operator delete(v19[0]);
LABEL_30:
  v17 = 12;
  v15.__r_.__value_.__r.__words[2] = 0;
  strcpy(v16, "Data_Logging");
  std::to_string(&buf, *(this + 60));
  v15 = buf;
  abm::CellularLoggingCommon::setProperty(this, v16, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_32:
      if (*(this + 58) != 1)
      {
        return;
      }

      goto LABEL_38;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(v16[0]);
  if (*(this + 58) != 1)
  {
    return;
  }

LABEL_38:
  v8 = strlen(v2);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_53;
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v10 = operator new(v11);
    v13[1] = v9;
    v14 = v11 | 0x8000000000000000;
    v13[0] = v10;
  }

  else
  {
    HIBYTE(v14) = v8;
    v10 = v13;
    if (!v8)
    {
      goto LABEL_47;
    }
  }

  memmove(v10, v2, v9);
LABEL_47:
  *(v9 + v10) = 0;
  if ((*(this + 58) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  std::to_string(&buf, *(this + 57));
  v12 = buf;
  abm::CellularLoggingCommon::setProperty(this, v13, &v12);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

LABEL_52:
    operator delete(v13[0]);
    return;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_52;
  }
}

void sub_23C25AC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C25AD9C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C25A8F4);
}

void sub_23C25ADA8()
{
  if ((*(v0 - 121) & 0x80000000) == 0)
  {
    JUMPOUT(0x23C25AD80);
  }

  JUMPOUT(0x23C25AD78);
}

void abm::CellularLoggingEUR::stopWithConfig(abm::CellularLoggingEUR *a1, uint64_t a2)
{
  abm::CellularLoggingEUR::stop(a1);
  object = xpc_null_create();
  v5 = 1;
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v5, &object);
  xpc_release(object);
}

void abm::CellularLoggingEUR::getConfigName(abm::CellularLoggingEUR *this@<X0>, std::string *a2@<X8>)
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

void abm::CellularLoggingEUR::getFileExtension(abm::CellularLoggingEUR *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 87) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 8), *(this + 9));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 4);
    a2->__r_.__value_.__r.__words[2] = *(this + 10);
  }
}

void abm::CellularLoggingEUR::getModemInformation1(abm::CellularLoggingEUR *this@<X0>, xpc_object_t *a2@<X8>)
{
  v2 = *(this + 16);
  if (v2)
  {
    v29 = 0;
    v30 = 0;
    *buf = 0;
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    if (v3 != v4)
    {
      v5 = 0;
      do
      {
        ETLDIAGLoggingGetGUIDString();
        if (v5 < v30)
        {
          *(v5 + 2) = v27;
          *v5 = *__p;
          v5 += 24;
        }

        else
        {
          v6 = *buf;
          v7 = &v5[-*buf];
          v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*buf] >> 3);
          v9 = v8 + 1;
          if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (&v30[-*buf] >> 3) > v9)
          {
            v9 = 0x5555555555555556 * (&v30[-*buf] >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (&v30[-*buf] >> 3) >= 0x555555555555555)
          {
            v10 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v10 = v9;
          }

          if (v10)
          {
            if (v10 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v11 = operator new(24 * v10);
          }

          else
          {
            v11 = 0;
          }

          v12 = &v11[24 * v8];
          *v12 = *__p;
          *(v12 + 2) = v27;
          v13 = &v11[24 * v10];
          v27 = 0;
          *__p = 0uLL;
          v5 = v12 + 24;
          v14 = &v12[-v7];
          memcpy(&v12[-v7], v6, v7);
          *buf = v14;
          v30 = v13;
          if (v6)
          {
            operator delete(v6);
            v29 = v5;
            goto LABEL_6;
          }
        }

        v29 = v5;
LABEL_6:
        v3 += 16;
      }

      while (v3 != v4);
    }

    *a2 = 0xAAAAAAAAAAAAAAAALL;
    v15 = xpc_array_create(0, 0);
    v16 = v15;
    v17 = MEMORY[0x277D86440];
    if (v15)
    {
      *a2 = v15;
    }

    else
    {
      v16 = xpc_null_create();
      *a2 = v16;
      if (!v16)
      {
        v19 = xpc_null_create();
        v16 = 0;
        goto LABEL_30;
      }
    }

    if (MEMORY[0x23EECEE80](v16) == v17)
    {
      xpc_retain(v16);
      goto LABEL_31;
    }

    v19 = xpc_null_create();
LABEL_30:
    *a2 = v19;
LABEL_31:
    xpc_release(v16);
    if (MEMORY[0x23EECEE80](*a2) == v17 && *buf != v29)
    {
      v20 = *buf;
      do
      {
        v21 = v20;
        if (v20[23] < 0)
        {
          v21 = *v20;
        }

        v22 = xpc_string_create(v21);
        if (!v22)
        {
          v22 = xpc_null_create();
        }

        xpc_array_append_value(*a2, v22);
        xpc_release(v22);
        v20 += 24;
      }

      while (v20 != v29);
    }

    if (*buf)
    {
      v23 = v29;
      while (v23 != *buf)
      {
        v24 = *(v23 - 1);
        v23 -= 3;
        if (v24 < 0)
        {
          operator delete(*v23);
        }
      }

      operator delete(*buf);
    }

    return;
  }

  v18 = *(this + 1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_ERROR, "GUID Parameter has not been created!", buf, 2u);
  }

  *a2 = xpc_null_create();
}

void sub_23C25B1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  xpc::array::~array(a9);
  std::vector<std::string>::~vector[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_23C25B1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc::array *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    _Unwind_Resume(a1);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void abm::CellularLoggingEUR::getModemInformation2(abm::CellularLoggingEUR *this@<X0>, xpc_object_t *a2@<X8>)
{
  if (*(this + 16))
  {
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    v4 = xpc_array_create(0, 0);
    v5 = v4;
    v6 = MEMORY[0x277D86440];
    if (v4)
    {
      *a2 = v4;
    }

    else
    {
      v5 = xpc_null_create();
      *a2 = v5;
      if (!v5)
      {
        v8 = xpc_null_create();
        v5 = 0;
        goto LABEL_12;
      }
    }

    if (MEMORY[0x23EECEE80](v5) == v6)
    {
      xpc_retain(v5);
LABEL_13:
      xpc_release(v5);
      v9 = *a2;
      if (MEMORY[0x23EECEE80](*a2) == v6)
      {
        v10 = *(this + 16);
        v11 = *(v10 + 32);
        for (i = *(v10 + 40); v11 != i; ++v11)
        {
          v13 = xpc_int64_create(*v11);
          if (!v13)
          {
            v13 = xpc_null_create();
          }

          xpc_array_append_value(v9, v13);
          xpc_release(v13);
        }
      }

      return;
    }

    v8 = xpc_null_create();
LABEL_12:
    *a2 = v8;
    goto LABEL_13;
  }

  v7 = *(this + 1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14[0] = 0;
    _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "GUID Parameter has not been created!", v14, 2u);
  }

  *a2 = xpc_null_create();
}

void sub_23C25B444(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc::array::~array(v1);
  _Unwind_Resume(a1);
}

uint64_t abm::CellularLoggingEUR::getCurrentIndex(abm::CellularLoggingEUR *this)
{
  v1 = *(this + 13);
  if (!v1)
  {
    v10 = *(this + 1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Reader does not exist!", v12, 2u);
      return 0;
    }

    return 0;
  }

  v4 = *(v1 + 24);
  v2 = v1 + 24;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *(this + 30);
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || *(v6 + 32) > v5 || !*(*(v6 + 40) + 32))
  {
    return 0;
  }

  return MEMORY[0x282143CD8]();
}

void abm::CellularLoggingEUR::getCandidateConfigNames(void *a1@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  memset(a1, 170, 24);
  ETLDIAGLoggingGetAvailableDMCNames();
  memset(v38, 170, sizeof(v38));
  v40 = 7;
  strcpy(v39, "Default");
  v42 = 4;
  strcpy(v41, "Tput");
  v44 = 4;
  strcpy(v43, "Lite");
  v46 = 5;
  strcpy(v45, "VoLTE");
  v48 = 10;
  strcpy(__p, "ThirdParty");
  std::vector<std::string>::vector[abi:ne200100](v38, v39, 5uLL);
  if (v48 < 0)
  {
    operator delete(__p[0]);
    if ((v46 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v44 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v45[0]);
  if ((v44 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_52:
    operator delete(v41[0]);
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_53:
    operator delete(v39[0]);
    goto LABEL_6;
  }

LABEL_51:
  operator delete(v43[0]);
  if (v42 < 0)
  {
    goto LABEL_52;
  }

LABEL_5:
  if (v40 < 0)
  {
    goto LABEL_53;
  }

LABEL_6:
  v3 = *a1;
  v4 = a1[1];
  std::vector<std::string>::vector[abi:ne200100](v37, v38);
  if (v3 == v4 || (v5 = v37[0], v6 = v37[1], v37[0] == v37[1]))
  {
LABEL_26:
    if (v3 == v4)
    {
      v14 = v3;
      v15 = a1[1];
      if (v3 == v15)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v16 = v3 + 3;
      if (v3 + 3 == v4)
      {
        v14 = v3;
      }

      else
      {
        v14 = v3;
        do
        {
          v18 = v3;
          v3 = v16;
          v19 = v37[1];
          v20 = v37[0];
          if (v37[0] != v37[1])
          {
            v21 = *(v18 + 47);
            if (v21 >= 0)
            {
              v22 = *(v18 + 47);
            }

            else
            {
              v22 = v18[4];
            }

            if (v21 >= 0)
            {
              v23 = v16;
            }

            else
            {
              v23 = *v16;
            }

            while (1)
            {
              v24 = *(v20 + 23);
              v25 = v24;
              if ((v24 & 0x80u) != 0)
              {
                v24 = v20[1];
              }

              if (v24 == v22)
              {
                v26 = v25 >= 0 ? v20 : *v20;
                if (!memcmp(v26, v23, v22))
                {
                  break;
                }
              }

              v20 += 3;
              if (v20 == v19)
              {
                goto LABEL_30;
              }
            }
          }

          if (v20 != v19)
          {
            if (*(v14 + 23) < 0)
            {
              operator delete(*v14);
            }

            v17 = *v3;
            v14[2] = v3[2];
            *v14 = v17;
            v14 += 3;
            *(v18 + 47) = 0;
            *v3 = 0;
          }

LABEL_30:
          v16 = v3 + 3;
        }

        while (v3 + 3 != v4);
      }

      v15 = a1[1];
      if (v14 == v15)
      {
        goto LABEL_61;
      }
    }

LABEL_59:
    while (v15 != v14)
    {
      v27 = *(v15 - 1);
      v15 -= 3;
      if (v27 < 0)
      {
        operator delete(*v15);
      }
    }

    a1[1] = v14;
    goto LABEL_61;
  }

  do
  {
    v7 = *(v3 + 23);
    if (v7 >= 0)
    {
      v8 = *(v3 + 23);
    }

    else
    {
      v8 = v3[1];
    }

    if (v7 >= 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = *v3;
    }

    v10 = v5;
    while (1)
    {
      v11 = *(v10 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = v10[1];
      }

      if (v11 == v8)
      {
        v13 = v12 >= 0 ? v10 : *v10;
        if (!memcmp(v13, v9, v8))
        {
          break;
        }
      }

      v10 += 3;
      if (v10 == v6)
      {
        goto LABEL_26;
      }
    }

    v3 += 3;
  }

  while (v3 != v4);
  v14 = v4;
  v15 = a1[1];
  if (v4 != v15)
  {
    goto LABEL_59;
  }

LABEL_61:
  v28 = v37[0];
  if (v37[0])
  {
    v29 = v37[1];
    v30 = v37[0];
    if (v37[1] != v37[0])
    {
      do
      {
        v31 = *(v29 - 1);
        v29 -= 3;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = v37[0];
    }

    v37[1] = v28;
    operator delete(v30);
  }

  v32 = v38[0];
  if (v38[0])
  {
    v33 = v38[1];
    v34 = v38[0];
    if (v38[1] != v38[0])
    {
      do
      {
        v35 = *(v33 - 1);
        v33 -= 3;
        if (v35 < 0)
        {
          operator delete(*v33);
        }
      }

      while (v33 != v32);
      v34 = v38[0];
    }

    v38[1] = v32;
    operator delete(v34);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_23C25B994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::~vector[abi:ne200100](va);
  std::vector<std::string>::~vector[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void sub_23C25B9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
    if ((a38 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a38 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a33);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    std::vector<std::string>::~vector[abi:ne200100](v44);
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(a15);
  std::vector<std::string>::~vector[abi:ne200100](v44);
  _Unwind_Resume(a1);
}

BOOL abm::CellularLoggingEUR::handleAppCrash(abm::CellularLoggingEUR *a1, std::string::size_type a2)
{
  v27 = *MEMORY[0x277D85DE8];
  abm::CellularLoggingEUR::stopReader(a1, 1);
  memset(v24, 170, sizeof(v24));
  Timestamp::Timestamp(v24);
  *(&v22.__r_.__value_.__s + 23) = 1;
  LOWORD(v22.__r_.__value_.__l.__data_) = 47;
  v4 = std::string::insert(&v22, 0, "/private/var/mobile/Library/Logs/CrashReporter/Baseband/CellularLogging", 0x47uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = strlen(abm::trace::kLogDirPrefix[0]);
  v7 = std::string::append(&v25, abm::trace::kLogDirPrefix[0], v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  Timestamp::asString(v24, 0, 9, __p);
  if ((v21 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v10 = v21;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v26, v9, v10);
  v23 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_19:
      operator delete(v25.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_20:
  operator delete(v22.__r_.__value_.__l.__data_);
LABEL_11:
  v26.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
  *&v26.__r_.__value_.__r.__words[1] = xmmword_23C32C9B0;
  strcpy(v26.__r_.__value_.__l.__data_, "/private/var/mobile/Library/Logs/CrashReporter/Baseband/CellularLogging");
  Dir = support::fs::createDir(&v26, 0x1EDu, 1);
  v13 = Dir;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_22:
    v15 = *(a1 + 1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v26.__r_.__value_.__l.__data_) = 136315138;
      *(v26.__r_.__value_.__r.__words + 4) = "/private/var/mobile/Library/Logs/CrashReporter/Baseband/CellularLogging";
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Failed to create directory %s", &v26, 0xCu);
    }

    goto LABEL_32;
  }

  if (!Dir)
  {
    goto LABEL_22;
  }

LABEL_13:
  memset(&v26, 170, sizeof(v26));
  v25.__r_.__value_.__r.__words[0] = operator new(0x38uLL);
  *&v25.__r_.__value_.__r.__words[1] = xmmword_23C32DBE0;
  strcpy(v25.__r_.__value_.__l.__data_, "/private/var/mobile/Library/Logs/CellularLogging");
  support::fs::moveDirUnique(&v25, &v23, &v26);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    v14 = *(a1 + 1);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v14 = *(a1 + 1);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  v17 = &v26;
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v26.__r_.__value_.__r.__words[0];
  }

  LODWORD(v25.__r_.__value_.__l.__data_) = 136315394;
  *(v25.__r_.__value_.__r.__words + 4) = v16;
  WORD2(v25.__r_.__value_.__r.__words[1]) = 2080;
  *(&v25.__r_.__value_.__r.__words[1] + 6) = v17;
  _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#N Detected %s crash, moving logs to %s", &v25, 0x16u);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_31:
    operator delete(v26.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24, v24[1]);
  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_23C25BDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, void *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a27, a28);
  _Unwind_Resume(a1);
}

void abm::CellularLoggingEUR::snapshot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Telephony log snapshot not supported", buf, 2u);
  }

  object = xpc_null_create();
  v8 = 0;
  v5 = *(a3 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v8, &object);
  xpc_release(object);
}

std::string **std::vector<std::string>::vector[abi:ne200100](std::string **a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v4 - v3);
    *a1 = v6;
    a1[1] = v6;
    a1[2] = (v6 + v5);
    v9 = v6;
    do
    {
      while ((*(v3 + 23) & 0x80000000) == 0)
      {
        v7 = *v3;
        v6->__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&v6->__r_.__value_.__l.__data_ = v7;
        ++v6;
        v3 = (v3 + 24);
        v9 = v6;
        if (v3 == v4)
        {
          goto LABEL_7;
        }
      }

      std::string::__init_copy_ctor_external(v6, *v3, *(v3 + 1));
      v3 = (v3 + 24);
      v6 = ++v9;
    }

    while (v3 != v4);
LABEL_7:
    a1[1] = v6;
  }

  return a1;
}

void sub_23C25C0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::allocate_shared[abi:ne200100]<abm::CellularLoggingEUR,std::allocator<abm::CellularLoggingEUR>,std::weak_ptr<abm::HelperServerInternal> &,dispatch::queue &,0>(uint64_t *a1@<X1>, NSObject **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xE8uLL);
  v6->__shared_owners_ = 0;
  p_shared_owners = &v6->__shared_owners_;
  v6->__shared_weak_owners_ = 0;
  v6->__vftable = &unk_284EFBB30;
  v8 = v6 + 1;
  std::construct_at[abi:ne200100]<abm::CellularLoggingEUR,std::weak_ptr<abm::HelperServerInternal> &,dispatch::queue &,abm::CellularLoggingEUR*>(&v6[1], a1, a2);
  *a3 = v6 + 1;
  a3[1] = v6;
  v9 = v6[2].__vftable;
  if (v9)
  {
    if (v9->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6[1].__shared_weak_owners_ = v8;
    v6[2].__vftable = v6;
    std::__shared_weak_count::__release_weak(v9);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6[1].__shared_weak_owners_ = v8;
    v6[2].__vftable = v6;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v6->__on_zero_shared)(v6);

  std::__shared_weak_count::__release_weak(v6);
}

void sub_23C25C200(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<abm::CellularLoggingEUR>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFBB30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::construct_at[abi:ne200100]<abm::CellularLoggingEUR,std::weak_ptr<abm::HelperServerInternal> &,dispatch::queue &,abm::CellularLoggingEUR*>(uint64_t a1, uint64_t *a2, NSObject **a3)
{
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *a3;
  v7 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  abm::CellularLoggingEUR::CellularLoggingEUR(a1, v8, &v7);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_23C25C32C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    dispatch_release(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ETLDIAGGUIDParameter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFBB80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ETLDIAGGUIDParameter>::__on_zero_shared(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;

    operator delete(v4);
  }
}

uint64_t __cxx_global_var_init_17()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_CellularLoggingEUR_mm()
{
  result = ETLDIAGLoggingGetDefaultView();
  dword_280C05D9C = result;
  return result;
}

double CoredumpTrace::createInternal@<D0>(_OWORD *a1@<X8>)
{
  v3 = operator new(0xD0uLL);
  CoredumpTrace::CoredumpTrace(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<CoredumpTrace>::shared_ptr[abi:ne200100]<CoredumpTrace,std::shared_ptr<CoredumpTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<CoredumpTrace>(CoredumpTrace*)::{lambda(CoredumpTrace*)#1},0>(&v5, v3);
  result = *&v5;
  *a1 = v5;
  return result;
}

void CoredumpTrace::CoredumpTrace(CoredumpTrace *this)
{
  v5 = 14;
  strcpy(__p, "trace.coredump");
  ctu::OsLogContext::OsLogContext(v6, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_USER_INITIATED);
  ctu::OsLogContext::~OsLogContext(v6);
  *this = &unk_284EF95A8;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_284EFBBD0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 112) = capabilities::trace::allowed(v2);
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  v3 = (*(*this + 136))(this);
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  *(this + 24) = dispatch_queue_create(v3, 0);
  *(this + 200) = 0;
}

void sub_23C25C64C(_Unwind_Exception *a1)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
    if ((*(v1 + 167) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v1 + 167) & 0x80000000) == 0)
  {
LABEL_3:
    if ((*(v1 + 143) & 0x80000000) == 0)
    {
LABEL_8:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2);
      Trace::~Trace(v1);
      _Unwind_Resume(a1);
    }

LABEL_7:
    operator delete(*v3);
    goto LABEL_8;
  }

  operator delete(*(v1 + 144));
  if ((*(v1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23C25C6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  ctu::OsLogContext::~OsLogContext(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CoredumpTrace::init(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = ___ZN13CoredumpTrace4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupE_block_invoke;
  v13[3] = &unk_284EFBCC8;
  v13[4] = &v18;
  v13[5] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v7 = a3[1];
  v15 = *a3;
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a4;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v22 = v13;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_2;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a1 + 8;
  block[5] = &v22;
  v9 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v9, block);
    v10 = *(v19 + 24);
    v11 = object;
    if (!object)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  dispatch_sync(v9, block);
  v10 = *(v19 + 24);
  v11 = object;
  if (object)
  {
LABEL_10:
    dispatch_release(v11);
  }

LABEL_11:
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v18, 8);
  return v10;
}

void sub_23C25C8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN13CoredumpTrace4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    v34 = *(a1 + 48);
    v3 = *(a1 + 80);
    v32 = *(a1 + 72);
    v33 = v3;
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v34, *(a1 + 48), *(a1 + 56));
  v3 = *(a1 + 80);
  v32 = *(a1 + 72);
  v33 = v3;
  if (v3)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v4 = *(a1 + 88);
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  *(*(*(a1 + 32) + 8) + 24) = Trace::init(v2, &v34.__r_.__value_.__l.__data_, &v32, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 24) == 1)
    {
      goto LABEL_12;
    }

LABEL_18:
    *(v5 + 24) = 0;
    v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v8 = off_280C059B8;
    if (off_280C059B8)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24) != 1)
  {
    goto LABEL_18;
  }

LABEL_12:
  v30 = 7;
  strcpy(__p, "Enabled");
  memset(&v35, 0, sizeof(v35));
  if (prop::coredump::get(__p, &v35))
  {
    v6 = util::convert<BOOL>(&v35, (v2 + 112), 0);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v6 = 0;
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_22:
  *(*(*(a1 + 32) + 8) + 24) = v6;
  if (v30 < 0)
  {
    operator delete(__p[0]);
    v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v8 = off_280C059B8;
    if (off_280C059B8)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v8 = off_280C059B8;
    if (off_280C059B8)
    {
      goto LABEL_32;
    }
  }

LABEL_24:
  CommandDriverFactory::create_default_global(&v35, v7);
  v9 = *&v35.__r_.__value_.__l.__data_;
  *&v35.__r_.__value_.__l.__data_ = 0uLL;
  v10 = *(&off_280C059B8 + 1);
  off_280C059B8 = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  size = v35.__r_.__value_.__l.__size_;
  if (v35.__r_.__value_.__l.__size_ && !atomic_fetch_add((v35.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    std::__shared_weak_count::__release_weak(size);
  }

  v8 = off_280C059B8;
LABEL_32:
  v27 = v8;
  v28 = *(&off_280C059B8 + 1);
  if (*(&off_280C059B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C059B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v8 + 128))(__p, v8);
  v12 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v13 = *(v2 + 104);
  *(v2 + 96) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = __p[1];
  if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v15 = *(v2 + 16);
  if (!v15 || (v16 = *(v2 + 8), (v17 = std::__shared_weak_count::lock(v15)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v18 = v17;
  p_shared_weak_owners = &v17->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v18);
  }

  memset(&v35, 170, 16);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN13CoredumpTrace4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupE_block_invoke_2;
  aBlock[3] = &__block_descriptor_56_e8_40c29_ZTSNSt3__18weak_ptrI5TraceEE_e5_v8__0l;
  aBlock[4] = v2;
  aBlock[5] = v16;
  v26 = v18;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v20 = _Block_copy(aBlock);
  v21 = *(v2 + 24);
  if (v21)
  {
    dispatch_retain(*(v2 + 24));
  }

  v35.__r_.__value_.__r.__words[0] = v20;
  v35.__r_.__value_.__l.__size_ = v21;
  v22 = *(v2 + 96);
  if (v20)
  {
    v23 = _Block_copy(v20);
    v24 = v21;
    if (!v21)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v23 = 0;
  v24 = v21;
  if (v21)
  {
LABEL_51:
    dispatch_retain(v21);
  }

LABEL_52:
  (*(*v22 + 72))(v22, &v23);
  if (v24)
  {
    dispatch_release(v24);
  }

  if (v23)
  {
    _Block_release(v23);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  std::__shared_weak_count::__release_weak(v18);
}

void ___ZN13CoredumpTrace4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupE_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        CoredumpTrace::processCrashReason_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void CoredumpTrace::processCrashReason_sync(CoredumpTrace *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(this + 11);
  if (v2)
  {
    dispatch_retain(*(this + 11));
    dispatch_group_enter(v2);
  }

  if (*(this + 200) == 1)
  {
    *(this + 200) = 0;
    CoredumpTrace::createScratchPath_sync(this);
    CoredumpTrace::fetchPostBootCrashReport_sync(this);
    if (v3)
    {
      object = xpc_null_create();
      v4 = xpc_null_create();
      v15 = v4;
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = (this + 144);
        if (*(this + 167) < 0)
        {
          v6 = *v6;
        }

        buf.st_dev = 136315138;
        *&buf.st_mode = v6;
        _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Looking for crash report file: %s", &buf, 0xCu);
      }

      v7 = *(this + 18);
      v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_blksize = v8;
      *buf.st_qspare = v8;
      buf.st_birthtimespec = v8;
      *&buf.st_size = v8;
      buf.st_mtimespec = v8;
      buf.st_ctimespec = v8;
      *&buf.st_uid = v8;
      buf.st_atimespec = v8;
      *&buf.st_dev = v8;
      if (*(this + 167) >= 0)
      {
        v9 = this + 144;
      }

      else
      {
        v9 = v7;
      }

      if (!stat(v9, &buf))
      {
        util::createDictFromJSONFile(this + 18, &buf);
        v10 = *&buf.st_dev;
        *&buf.st_dev = xpc_null_create();
        v11 = object;
        object = v10;
        xpc_release(v11);
        xpc_release(*&buf.st_dev);
        if (MEMORY[0x23EECEE80](v10) == MEMORY[0x277D86468])
        {
          *&buf.st_dev = &object;
          buf.st_ino = "bb_state";
          xpc::dict::object_proxy::operator xpc::dict(&buf, &v14);
          v13 = v14;
          v14 = xpc_null_create();
          v15 = v13;
          xpc_release(v4);
          xpc_release(v14);
        }
      }

      *&buf.st_dev = 0xAAAAAAAAAAAAAAAALL;
      (*(*this + 168))(&buf, this, &object);
      CoredumpTrace::storeCrashReason_sync(this, &buf);
      CoredumpTrace::submitCrashReason_sync(this, &buf);
      (*(*this + 184))(this, &buf, &v15);
      xpc_release(*&buf.st_dev);
      xpc_release(v15);
      xpc_release(object);
    }

    support::fs::removeDirContents(this + 120, 0);
    support::fs::removeDir(this + 120);
  }

  if (v2)
  {
    dispatch_group_leave(v2);
    dispatch_release(v2);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23C25D274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CoredumpTrace::abort(uint64_t a1, const void *a2, ctu **a3)
{
  ctu::cf_to_xpc(object, *a3, a2);
  v4 = object[0];
  v5 = MEMORY[0x277D86468];
  if (object[0] && MEMORY[0x23EECEE80](object[0]) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
  }

  xpc_release(object[0]);
  if (MEMORY[0x23EECEE80](v4) == v5)
  {
    memset(object, 170, sizeof(object));
    value = xpc_dictionary_get_value(v4, *MEMORY[0x277CECCC0]);
    v12 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v12 = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    xpc_release(v12);
    v7 = *MEMORY[0x277CECD50];
    v8 = HIBYTE(object[2]);
    if (SHIBYTE(object[2]) < 0)
    {
      v9 = object[0];
      if (!strcasecmp(v7, object[0]) || !strcasecmp(*MEMORY[0x277CECD60], v9))
      {
LABEL_21:
        *(a1 + 200) = 1;
        v11 = *(a1 + 40);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (!strcasecmp(v7, object))
      {
        goto LABEL_21;
      }

      v9 = object;
      if (!strcasecmp(*MEMORY[0x277CECD60], object))
      {
        goto LABEL_21;
      }
    }

    v10 = strcasecmp(*MEMORY[0x277CECD30], v9);
    *(a1 + 200) = v10 == 0;
    if (v10 || (v11 = *(a1 + 40), !os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT)))
    {
LABEL_18:
      if (v8 < 0)
      {
        operator delete(object[0]);
      }

      goto LABEL_20;
    }

LABEL_17:
    LOWORD(v12) = 0;
    _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Baseband crash reason will be parsed", &v12, 2u);
    v8 = HIBYTE(object[2]);
    goto LABEL_18;
  }

LABEL_20:
  xpc_release(v4);
}

void sub_23C25D51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v9);
  _Unwind_Resume(a1);
}

void CoredumpTrace::snapshot(uint64_t *a1, dispatch_object_t *a2, const __CFDictionary **a3)
{
  v6 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v6);
  }

  v8 = a1[1];
  v7 = a1[2];
  if (!v7 || (v9 = std::__shared_weak_count::lock(v7)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  v27[0] = 0xAAAAAAAAAAAAAAAALL;
  v27[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v27, *a3);
  memset(v26, 170, sizeof(v26));
  __p = operator new(0x28uLL);
  v25 = xmmword_23C32C700;
  strcpy(__p, "kCollectTelephonyLogsWithCoredump");
  ctu::cf::MakeCFString::MakeCFString(&v28, "kKeyTraceAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v28);
  operator delete(__p);
  if (SHIBYTE(v26[2]) < 0 && v26[1] == 33 && (*v26[0] == *"kCollectTelephonyLogsWithCoredump" ? (v11 = *(v26[0] + 1) == *"TelephonyLogsWithCoredump") : (v11 = 0), v11 ? (v12 = *(v26[0] + 2) == *"yLogsWithCoredump") : (v12 = 0), v12 ? (v13 = *(v26[0] + 3) == *"hCoredump") : (v13 = 0), v13 ? (v14 = *(v26[0] + 32) == str_72[32]) : (v14 = 0), v14))
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3321888768;
    v18[2] = ___ZN13CoredumpTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
    v18[3] = &__block_descriptor_80_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c21_ZTSN8dispatch5groupE72c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_e5_v8__0l;
    v18[4] = a1;
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(group);
    }

    v20 = v8;
    v21 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v16 = *a2;
    object = v16;
    if (v16)
    {
      dispatch_retain(v16);
    }

    v17 = *a3;
    cf = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    ctu::SharedSynchronizable<Trace>::execute_wrapped(a1 + 1, v18);
    if (cf)
    {
      CFRelease(cf);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  else
  {
    v15 = a1[5];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, "#I Skipping coredump collection", &__p, 2u);
    }
  }

  if (SHIBYTE(v26[2]) < 0)
  {
    operator delete(v26[0]);
  }

  MEMORY[0x23EECD940](v27);
  std::__shared_weak_count::__release_weak(v10);
  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }
}

void ___ZN13CoredumpTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 88);
  if (v3)
  {
    dispatch_retain(*(v2 + 88));
    dispatch_group_enter(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v19 = v5;
    if (v5)
    {
      v6 = v5;
      if (a1[6])
      {
        if (*(v2 + 112) & 1) != 0 || (capabilities::trace::supportsCoredumpCrashReasonOnCustomerBuild(v5))
        {
          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3321888768;
          block[2] = ___ZN13CoredumpTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke_5;
          block[3] = &__block_descriptor_72_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE56c21_ZTSN8dispatch5groupE64c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_e5_v8__0l;
          v8 = a1[5];
          block[4] = v2;
          group = v8;
          if (v8)
          {
            dispatch_retain(v8);
            dispatch_group_enter(group);
          }

          v14 = v3;
          if (v3)
          {
            dispatch_retain(v3);
            dispatch_group_enter(v14);
          }

          v9 = a1[8];
          object = v9;
          if (v9)
          {
            dispatch_retain(v9);
          }

          v10 = a1[9];
          cf = v10;
          if (v10)
          {
            CFRetain(v10);
          }

          dispatch_async(global_queue, block);
          if (cf)
          {
            CFRelease(cf);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v14)
          {
            dispatch_group_leave(v14);
            if (v14)
            {
              dispatch_release(v14);
            }
          }

          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }
        }

        else
        {
          v11 = *(v2 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I skipping coredump collection (disabled)", buf, 2u);
          }
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

void sub_23C25DAFC(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2 - 64);
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

void ___ZN13CoredumpTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke_5(void *a1)
{
  v2 = a1[4];
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v3 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v4 = xmmword_280C05A58;
  if (!xmmword_280C05A58)
  {
    ctu::XpcJetsamAssertion::create_default_global(buf, v3);
    v5 = *buf;
    memset(buf, 0, sizeof(buf));
    v6 = *(&xmmword_280C05A58 + 1);
    xmmword_280C05A58 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = xmmword_280C05A58;
  }

  v8 = *(&xmmword_280C05A58 + 1);
  v17 = v4;
  v18 = *(&xmmword_280C05A58 + 1);
  if (*(&xmmword_280C05A58 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_280C05A58 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v16 = 19;
  strcpy(__p, "coredump collection");
  ctu::XpcJetsamAssertion::createActivity();
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = a1[7];
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a1[8];
  cf = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  (*(*v2 + 144))(v2, &object, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v11 = v2[5];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I snapshot (coredump) complete", buf, 2u);
  }

  v12 = v20;
  if (v20)
  {
    if (!atomic_fetch_add((v20 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_23C25DDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  if (object)
  {
    dispatch_release(object);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void sub_23C25DE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE56c21_ZTSN8dispatch5groupE64c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[6];
  a1[6] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    v7 = a1[6];
    if (v7)
    {
      dispatch_group_enter(v7);
    }
  }

  v8 = a2[7];
  a1[7] = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  result = a2[8];
  a1[8] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE56c21_ZTSN8dispatch5groupE64c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[6];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  v6 = a1[5];
  if (v6)
  {
    dispatch_group_leave(v6);
    v7 = a1[5];
    if (v7)
    {

      dispatch_release(v7);
    }
  }
}

void CoredumpTrace::dumpState(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 112))
    {
      v3 = "True";
    }

    else
    {
      v3 = "False";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Enabled: %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t CoredumpTrace::setProperty(capabilities::radio *a1, dispatch_object_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  v8 = capabilities::radio::initium(a1);
  if (v8 & 1) != 0 || (capabilities::trace::allowed(v8))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3321888768;
    v14[2] = ___ZN13CoredumpTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke;
    v14[3] = &unk_284EFBD60;
    v14[5] = a1;
    group = v7;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(group);
    }

    v16 = a3;
    v17 = a4;
    v14[4] = &v18;
    v22 = v14;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_2;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a1 + 8;
    block[5] = &v22;
    v9 = *(a1 + 3);
    if (*(a1 + 4))
    {
      dispatch_async_and_wait(v9, block);
      v10 = *(v19 + 24);
      v11 = group;
      if (!group)
      {
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_sync(v9, block);
      v10 = *(v19 + 24);
      v11 = group;
      if (!group)
      {
LABEL_13:
        _Block_object_dispose(&v18, 8);
        goto LABEL_14;
      }
    }

    dispatch_group_leave(v11);
    if (group)
    {
      dispatch_release(group);
    }

    goto LABEL_13;
  }

  v13 = *(a1 + 5);
  v10 = 0;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(block[0]) = 0;
    _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Set property is not allowed", block, 2u);
    v10 = 0;
  }

LABEL_14:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  return v10;
}

void sub_23C25E1F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN13CoredumpTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  *(&__p.__r_.__value_.__s + 23) = 7;
  strcpy(&__p, "Enabled");
  if (*(v3 + 23) >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = *v3;
  }

  if (!strcasecmp(v4, &__p))
  {
    *(*(*(a1 + 32) + 8) + 24) = prop::coredump::set(v3, *(a1 + 64));
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 24) != 1)
    {
      *(v5 + 24) = 0;
      return;
    }

    v6 = *(a1 + 56);
    memset(&__p, 0, sizeof(__p));
    if (prop::coredump::get(v6, &__p))
    {
      v7 = util::convert<BOOL>(&__p, (v2 + 112), 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_11:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = v7;
  }
}

void sub_23C25E340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoredumpTrace::getProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZN13CoredumpTrace11getPropertyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6__block_invoke;
  v7[3] = &unk_278BB8DC0;
  v7[6] = a2;
  v7[7] = a3;
  v7[4] = &v8;
  v7[5] = a1;
  v12 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_2;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a1 + 8;
  block[5] = &v12;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void ___ZN13CoredumpTrace11getPropertyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6__block_invoke(void *a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  v2 = a1[6];
  *(&v18.__r_.__value_.__s + 23) = 5;
  LODWORD(v18.__r_.__value_.__l.__data_) = *"State";
  WORD2(v18.__r_.__value_.__r.__words[0]) = str_25_0[4];
  if (*(v2 + 23) >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (!strcasecmp(v4, &v18))
  {
    *(&v19.__r_.__value_.__s + 23) = 9;
    strcpy(&v19, "Enabled: ");
    std::to_string(&v18, *(v3 + 112));
    __p = v18;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
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

    v11 = std::string::append(&v19, p_p, size);
    v12 = v11->__r_.__value_.__r.__words[0];
    v20[0] = v11->__r_.__value_.__l.__size_;
    *(v20 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
    v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v14 = a1[7];
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    v15 = v20[0];
    *v14 = v12;
    *(v14 + 8) = v15;
    *(v14 + 15) = *(v20 + 7);
    *(v14 + 23) = v13;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      *(*(a1[4] + 8) + 24) = 1;
      goto LABEL_20;
    }

    operator delete(v19.__r_.__value_.__l.__data_);
    goto LABEL_19;
  }

  *(&v18.__r_.__value_.__s + 23) = 7;
  strcpy(&v18, "Enabled");
  if (!strcasecmp(v4, &v18))
  {
    v5 = *(v3 + 112);
    v19.__r_.__value_.__r.__words[0] = 0;
    *(v19.__r_.__value_.__r.__words + 7) = 0;
    std::to_string(&v18, v5);
    v19.__r_.__value_.__r.__words[0] = v18.__r_.__value_.__l.__size_;
    v6 = v18.__r_.__value_.__r.__words[0];
    *(v19.__r_.__value_.__r.__words + 7) = *(&v18.__r_.__value_.__r.__words[1] + 7);
    v7 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    v8 = a1[7];
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    *v8 = v6;
    *(v8 + 8) = v19.__r_.__value_.__r.__words[0];
    *(v8 + 15) = *(v19.__r_.__value_.__r.__words + 7);
    *(v8 + 23) = v7;
    goto LABEL_19;
  }

LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_23C25E674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    if (*(*(v23 + 56) + 23) < 0)
    {
      JUMPOUT(0x23C25E538);
    }

    JUMPOUT(0x23C25E540);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C25E6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((a14 & 0x80000000) == 0)
  {
    JUMPOUT(0x23C25E6BCLL);
  }

  JUMPOUT(0x23C25E6B4);
}

BOOL CoredumpTrace::createScratchPath_sync(CoredumpTrace *this)
{
  v88 = *MEMORY[0x277D85DE8];
  if (*(this + 143) < 0)
  {
    **(this + 15) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 120) = 0;
    *(this + 143) = 0;
  }

  v2 = 0x7FFFFFFFFFFFFFF7;
  v3 = abm::trace::kScratchFolder[0];
  v4 = strlen(abm::trace::kScratchFolder[0]);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v4 | 7) + 1;
    }

    p_dst = operator new(v11);
    __dst.__r_.__value_.__l.__size_ = v5;
    __dst.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
LABEL_14:
    memmove(p_dst, v3, v5);
    p_dst->__r_.__value_.__s.__data_[v5] = 0;
    v7 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  p_dst = &__dst;
  if (v4)
  {
    goto LABEL_14;
  }

  __dst.__r_.__value_.__s.__data_[0] = 0;
  v7 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
LABEL_8:
    if (v7 - 7 < 0x10)
    {
      v8 = v7 + 16;
      v9 = &__dst;
      v10 = 22;
      goto LABEL_18;
    }

    v21 = &__dst;
LABEL_35:
    qmemcpy(v21 + v7, "CoreDump.scratch", 16);
    v22 = v7 + 16;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v7 + 16;
      v21->__r_.__value_.__s.__data_[v22] = 0;
      size = __dst.__r_.__value_.__l.__size_;
      v19 = __dst.__r_.__value_.__r.__words[0];
      v20 = __dst.__r_.__value_.__r.__words[2];
      v84 = __dst.__r_.__value_.__r.__words[2];
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v22 & 0x7F;
      v21->__r_.__value_.__s.__data_[v22] = 0;
      size = __dst.__r_.__value_.__l.__size_;
      v19 = __dst.__r_.__value_.__r.__words[0];
      v20 = __dst.__r_.__value_.__r.__words[2];
      v84 = __dst.__r_.__value_.__r.__words[2];
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_32:
    v85.__r_.__value_.__r.__words[0] = v19;
    v85.__r_.__value_.__l.__size_ = size;
    v85.__r_.__value_.__r.__words[2] = v20;
    goto LABEL_38;
  }

LABEL_15:
  v7 = __dst.__r_.__value_.__l.__size_;
  v10 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 - __dst.__r_.__value_.__l.__size_ >= 0x10)
  {
    v21 = __dst.__r_.__value_.__r.__words[0];
    goto LABEL_35;
  }

  v8 = __dst.__r_.__value_.__l.__size_ + 16;
  if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 16 - v10)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = __dst.__r_.__value_.__r.__words[0];
  if (v10 >= 0x3FFFFFFFFFFFFFF3)
  {
    v15 = 0;
    v14 = 0x7FFFFFFFFFFFFFF7;
    goto LABEL_27;
  }

LABEL_18:
  v12 = 2 * v10;
  if (v8 > 2 * v10)
  {
    v12 = v8;
  }

  if ((v12 | 7) == 0x17)
  {
    v13 = 25;
  }

  else
  {
    v13 = (v12 | 7) + 1;
  }

  if (v12 >= 0x17)
  {
    v14 = v13;
  }

  else
  {
    v14 = 23;
  }

  v15 = v10 == 22;
LABEL_27:
  v16 = operator new(v14);
  v17 = v16;
  if (v7)
  {
    memmove(v16, v9, v7);
  }

  qmemcpy((v17 + v7), "CoreDump.scratch", 16);
  if (!v15)
  {
    operator delete(v9);
  }

  __dst.__r_.__value_.__l.__size_ = v8;
  __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
  __dst.__r_.__value_.__r.__words[0] = v17;
  *(v17 + v8) = 0;
  size = __dst.__r_.__value_.__l.__size_;
  v19 = __dst.__r_.__value_.__r.__words[0];
  v20 = __dst.__r_.__value_.__r.__words[2];
  v84 = __dst.__r_.__value_.__r.__words[2];
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_37:
  std::string::__init_copy_ctor_external(&v85, v19, size);
LABEL_38:
  support::fs::createUniquePath(&v85, &__dst);
  v23 = (this + 120);
  if (*(this + 143) < 0)
  {
    operator delete(*v23);
  }

  *v23 = *&__dst.__r_.__value_.__l.__data_;
  *(this + 17) = *(&__dst.__r_.__value_.__l + 2);
  *(&__dst.__r_.__value_.__s + 23) = 0;
  __dst.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  Dir = support::fs::createDir(this + 120, 0x1EDu, 1);
  v24 = *(this + 143);
  if (v24 >= 0)
  {
    v25 = *(this + 143);
  }

  else
  {
    v25 = *(this + 16);
  }

  v26 = v25 + 1;
  if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v26 < 0x17)
  {
    memset(&__dst, 0, sizeof(__dst));
    v28 = &__dst;
    *(&__dst.__r_.__value_.__s + 23) = v25 + 1;
    if (!v25)
    {
      goto LABEL_56;
    }
  }

  else
  {
    if ((v26 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v26 | 7) + 1;
    }

    v28 = operator new(v27);
    __dst.__r_.__value_.__l.__size_ = v25 + 1;
    __dst.__r_.__value_.__r.__words[2] = v27 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v28;
  }

  v29 = *v23;
  if (v24 >= 0)
  {
    v30 = this + 120;
  }

  else
  {
    v30 = *v23;
  }

  memmove(v28, v30, v25);
LABEL_56:
  *(&v28->__r_.__value_.__l.__data_ + v25) = 47;
  v31 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 12) < 0xB)
    {
      v32 = v19;
      v33 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) + 11;
      v34 = &__dst;
      v35 = 22;
LABEL_62:
      v36 = 2 * v35;
      if (v33 > 2 * v35)
      {
        v36 = v33;
      }

      if ((v36 | 7) == 0x17)
      {
        v37 = 25;
      }

      else
      {
        v37 = (v36 | 7) + 1;
      }

      if (v36 >= 0x17)
      {
        v38 = v37;
      }

      else
      {
        v38 = 23;
      }

      v39 = v35 == 22;
      goto LABEL_71;
    }

    v44 = &__dst;
LABEL_80:
    v45 = v44 + v31;
    *v45 = *"report.json";
    *(v45 + 7) = 1852797802;
    v46 = v31 + 11;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v31 + 11;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v46 & 0x7F;
    }

    v43 = v44 + v46;
    goto LABEL_84;
  }

  v31 = __dst.__r_.__value_.__l.__size_;
  v35 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v35 - __dst.__r_.__value_.__l.__size_ >= 0xB)
  {
    v44 = __dst.__r_.__value_.__r.__words[0];
    goto LABEL_80;
  }

  v33 = __dst.__r_.__value_.__l.__size_ + 11;
  if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 11 - v35)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = __dst.__r_.__value_.__r.__words[0];
  v32 = v19;
  if (v35 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_62;
  }

  v39 = 0;
  v38 = 0x7FFFFFFFFFFFFFF7;
LABEL_71:
  v40 = operator new(v38);
  v41 = v40;
  if (v31)
  {
    memmove(v40, v34, v31);
  }

  v42 = v41 + v31;
  *v42 = *"report.json";
  *(v42 + 7) = 1852797802;
  if (!v39)
  {
    operator delete(v34);
  }

  __dst.__r_.__value_.__l.__size_ = v33;
  __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
  __dst.__r_.__value_.__r.__words[0] = v41;
  v43 = (v41 + v33);
  v19 = v32;
LABEL_84:
  *v43 = 0;
  v86[0] = __dst.__r_.__value_.__l.__size_;
  v47 = __dst.__r_.__value_.__r.__words[0];
  *(v86 + 7) = *(&__dst.__r_.__value_.__r.__words[1] + 7);
  v48 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  memset(&__dst, 0, sizeof(__dst));
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
    v50 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v51 = v86[0];
    *(this + 18) = v47;
    *(this + 19) = v51;
    *(this + 159) = *(v86 + 7);
    *(this + 167) = v48;
    if (v50 < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v49 = v86[0];
    *(this + 18) = v47;
    *(this + 19) = v49;
    *(this + 159) = *(v86 + 7);
    *(this + 167) = v48;
  }

  v52 = *(this + 143);
  if (v52 >= 0)
  {
    v53 = *(this + 143);
  }

  else
  {
    v53 = *(this + 16);
  }

  v54 = v53 + 1;
  if (v53 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v54 < 0x17)
  {
    memset(&__dst, 0, sizeof(__dst));
    v56 = &__dst;
    *(&__dst.__r_.__value_.__s + 23) = v53 + 1;
    if (!v53)
    {
      goto LABEL_102;
    }
  }

  else
  {
    if ((v54 | 7) == 0x17)
    {
      v55 = 25;
    }

    else
    {
      v55 = (v54 | 7) + 1;
    }

    v56 = operator new(v55);
    __dst.__r_.__value_.__l.__size_ = v53 + 1;
    __dst.__r_.__value_.__r.__words[2] = v55 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v56;
  }

  v57 = *v23;
  if (v52 >= 0)
  {
    v58 = this + 120;
  }

  else
  {
    v58 = *v23;
  }

  memmove(v56, v58, v53);
LABEL_102:
  *(&v56->__r_.__value_.__l.__data_ + v53) = 47;
  v59 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 12) < 0xB)
    {
      v60 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) + 11;
      v61 = &__dst;
      v62 = 22;
LABEL_108:
      v63 = 2 * v62;
      if (v60 > 2 * v62)
      {
        v63 = v60;
      }

      if ((v63 | 7) == 0x17)
      {
        v64 = 25;
      }

      else
      {
        v64 = (v63 | 7) + 1;
      }

      if (v63 >= 0x17)
      {
        v2 = v64;
      }

      else
      {
        v2 = 23;
      }

      v65 = v62 == 22;
      goto LABEL_117;
    }

    v72 = &__dst;
LABEL_124:
    v73 = v72 + v59;
    *v73 = *"context.bin";
    *(v73 + 7) = 1852400174;
    v74 = v59 + 11;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v59 + 11;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v74 & 0x7F;
    }

    v70 = v84;
    v71 = Dir;
    v69 = v72 + v74;
    goto LABEL_128;
  }

  v59 = __dst.__r_.__value_.__l.__size_;
  v62 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v62 - __dst.__r_.__value_.__l.__size_ >= 0xB)
  {
    v72 = __dst.__r_.__value_.__r.__words[0];
    goto LABEL_124;
  }

  v60 = __dst.__r_.__value_.__l.__size_ + 11;
  if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 11 - v62)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v61 = __dst.__r_.__value_.__r.__words[0];
  if (v62 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_108;
  }

  v65 = 0;
LABEL_117:
  v66 = operator new(v2);
  v67 = v66;
  if (v59)
  {
    memmove(v66, v61, v59);
  }

  v68 = v67 + v59;
  *v68 = *"context.bin";
  *(v68 + 7) = 1852400174;
  if (!v65)
  {
    operator delete(v61);
  }

  __dst.__r_.__value_.__l.__size_ = v60;
  __dst.__r_.__value_.__r.__words[2] = v2 | 0x8000000000000000;
  __dst.__r_.__value_.__r.__words[0] = v67;
  v69 = (v67 + v60);
  v70 = v84;
  v71 = Dir;
LABEL_128:
  *v69 = 0;
  v86[0] = __dst.__r_.__value_.__l.__size_;
  v75 = __dst.__r_.__value_.__r.__words[0];
  *(v86 + 7) = *(&__dst.__r_.__value_.__r.__words[1] + 7);
  v76 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  memset(&__dst, 0, sizeof(__dst));
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
    v78 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v79 = v86[0];
    *(this + 21) = v75;
    *(this + 22) = v79;
    *(this + 183) = *(v86 + 7);
    *(this + 191) = v76;
    if (v78 < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v71)
      {
        goto LABEL_134;
      }
    }

    else if (v71)
    {
      goto LABEL_134;
    }
  }

  else
  {
    v77 = v86[0];
    *(this + 21) = v75;
    *(this + 22) = v77;
    *(this + 183) = *(v86 + 7);
    *(this + 191) = v76;
    if (v71)
    {
      goto LABEL_134;
    }
  }

  v80 = *(this + 5);
  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    if (*(this + 143) < 0)
    {
      v23 = *v23;
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v23;
    _os_log_error_impl(&dword_23C1C4000, v80, OS_LOG_TYPE_ERROR, "Failed creating coredump scratch path. fScratchFolder=[%s]", &__dst, 0xCu);
  }

LABEL_134:
  if ((v70 & 0x8000000000000000) != 0)
  {
    operator delete(v19);
  }

  v81 = *MEMORY[0x277D85DE8];
  return v71;
}

void sub_23C25EF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a11 < 0)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void CoredumpTrace::fetchPostBootCrashReport_sync(int **this)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = -1431655766;
  if (AriHost::RegisterClient("CoreDumpTrace", &v10, this[24], 0xFFFFFFFFLL))
  {
    v9 = GetOsLogContext()[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *v12 = 136315906;
      *&v12[4] = "ABM ASSERT";
      *&v12[12] = 2080;
      *&v12[14] = "ARI_RESULT_OK == AriHost::RegisterClient( CoreDumpTrace, &ctxId, *fClientQueue)";
      *&v12[22] = 2080;
      *&v12[24] = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/ABMHelper/Server/Tasks/Wireless/Trace/CoreDump/CoreDumpTrace.mm";
      LOWORD(v13) = 1024;
      *(&v13 + 2) = 989;
LABEL_21:
      _os_log_fault_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", v12, 0x26u);
    }

LABEL_22:
    __break(1u);
    return;
  }

  if (!v10)
  {
    v9 = GetOsLogContext()[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *v12 = 136315906;
      *&v12[4] = "ABM ASSERT";
      *&v12[12] = 2080;
      *&v12[14] = "ctxId != ARI_AP_SINGLE_MODE_CTX";
      *&v12[22] = 2080;
      *&v12[24] = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/ABMHelper/Server/Tasks/Wireless/Trace/CoreDump/CoreDumpTrace.mm";
      LOWORD(v13) = 1024;
      *(&v13 + 2) = 990;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (!KTLInitOptions() || !KTLOpenChannel())
  {
    goto LABEL_13;
  }

  v2 = *(this + 167) >= 0 ? (this + 18) : this[18];
  v3 = open(v2, 1537, 420);
  if (v3 < 0)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v5;
  v15 = v5;
  *&v12[16] = v5;
  v13 = v5;
  *v12 = v5;
  if (TelephonyUtilTransportCreateWithFD())
  {
    KTLSahGetCrashReport();
    v6 = this[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = 0;
      _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Baseband crash report size: %d bytes", v11, 8u);
    }

    close(v4);
    TelephonyUtilTransportFree();
    CoredumpTrace::cleanCrashReport_sync(this);
    KTLCloseChannel();
    AriHost::DeregisterClient(v10);
  }

  else
  {
LABEL_13:
    KTLCloseChannel();
    AriHost::DeregisterClient(v10);
  }

  v7 = this[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Error fetching post-boot Baseband crash report", v12, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void xpc::dict::object_proxy::operator xpc::dict(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v4) != MEMORY[0x277D86468])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void CoredumpTrace::storeCrashReason_sync(NSObject **this, const xpc::dict *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x23EECEE80](*a2) == MEMORY[0x277D86468])
  {
    memset(&buf, 170, sizeof(buf));
    ((*this)[22].isa)(&buf, this, a2);
    v5 = this[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      p_buf = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v15) = 136446210;
      *(&v15 + 4) = p_buf;
      _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Baseband crash: %{public}s", &v15, 0xCu);
    }

    v7 = this[10];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      *(&v15 + 1) = v8;
      if (v8)
      {
        v9 = v8;
        v10 = this[9];
        *&v15 = v10;
        if (v10)
        {
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v13, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
          }

          else
          {
            v13 = buf;
          }

          v12[0] = 0;
          v12[1] = 0;
          abm::BasebandTracingTask::setLastCrashReason(v10, &v13, v12);
          if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v13.__r_.__value_.__l.__data_);
          }
        }

        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = this[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_ERROR, "Invalid Baseband crash dictionary", &buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23C25F664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 - 48);
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void CoredumpTrace::submitCrashReason_sync(CoredumpTrace *this, xpc_object_t *a2)
{
  v4 = MEMORY[0x23EECEE80](*a2);
  v5 = MEMORY[0x277D86468];
  v6 = *(this + 5);
  if (v4 == MEMORY[0x277D86468])
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of crash info", buf, 2u);
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7 || (v7 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v7) == v5)
      {
        xpc_retain(v7);
        v8 = v7;
      }

      else
      {
        v8 = xpc_null_create();
      }
    }

    else
    {
      v8 = xpc_null_create();
      v7 = 0;
    }

    xpc_release(v7);
    v9 = xpc_array_create(0, 0);
    if (v9 || (v9 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v9) == MEMORY[0x277D86440])
      {
        xpc_retain(v9);
        v10 = v9;
      }

      else
      {
        v10 = xpc_null_create();
      }
    }

    else
    {
      v10 = xpc_null_create();
      v9 = 0;
    }

    xpc_release(v9);
    v11 = xpc_dictionary_create(0, 0, 0);
    if (v11 || (v11 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v11) == v5)
      {
        xpc_retain(v11);
        v12 = v11;
      }

      else
      {
        v12 = xpc_null_create();
      }
    }

    else
    {
      v12 = xpc_null_create();
      v11 = 0;
    }

    xpc_release(v11);
    (*(*this + 176))(buf, this, a2);
    if ((buf[23] & 0x80u) == 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    v14 = xpc_string_create(v13);
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    xpc_dictionary_set_value(v12, *MEMORY[0x277CECC80], v14);
    v15 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v15);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    memset(buf, 170, 24);
    value = xpc_dictionary_get_value(*a2, "host_line");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    xpc_release(object);
    if ((buf[23] & 0x80u) == 0)
    {
      v17 = buf;
    }

    else
    {
      v17 = *buf;
    }

    v18 = atoi(v17);
    v19 = xpc_int64_create(v18);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    xpc_dictionary_set_value(v12, *MEMORY[0x277CECC68], v19);
    v20 = xpc_null_create();
    xpc_release(v19);
    xpc_release(v20);
    v21 = xpc_dictionary_get_value(*a2, "host_filename");
    v36 = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      v36 = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    if (v39 >= 0)
    {
      p_object = &object;
    }

    else
    {
      p_object = object;
    }

    v23 = xpc_string_create(p_object);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    xpc_dictionary_set_value(v12, *MEMORY[0x277CECBD0], v23);
    v24 = xpc_null_create();
    xpc_release(v23);
    xpc_release(v24);
    if (v39 < 0)
    {
      operator delete(object);
    }

    xpc_release(v36);
    xpc_array_append_value(v10, v12);
    v25 = xpc_string_create(*MEMORY[0x277CECD68]);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, *MEMORY[0x277CECB60], v25);
    v26 = xpc_null_create();
    xpc_release(v25);
    xpc_release(v26);
    v27 = xpc_int64_create(524365);
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, *MEMORY[0x277CECB70], v27);
    v28 = xpc_null_create();
    xpc_release(v27);
    xpc_release(v28);
    if (v10)
    {
      xpc_retain(v10);
      v29 = v10;
    }

    else
    {
      v29 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, *MEMORY[0x277CECB58], v29);
    v30 = xpc_null_create();
    xpc_release(v29);
    xpc_release(v30);
    v31 = *(this + 10);
    if (v31)
    {
      v32 = std::__shared_weak_count::lock(v31);
      v38 = v32;
      if (v32)
      {
        v33 = *(this + 9);
        object = v33;
        if (!v33)
        {
          goto LABEL_70;
        }

        v35 = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v35 = xpc_null_create();
        }

        abm::BasebandTracingTask::commandReportStatsAWD(v33, &v35);
        xpc_release(v35);
        v35 = 0;
        v32 = v38;
        if (v38)
        {
LABEL_70:
          if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v34 = v32;
            (v32->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v34);
          }
        }
      }
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v12);
    xpc_release(v10);
    xpc_release(v8);
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid Baseband crash dictionary", buf, 2u);
  }
}

void sub_23C25FC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  xpc_release(object);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a12);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);
  xpc_release(v21);
  xpc_release(v20);
  _Unwind_Resume(a1);
}

uint64_t CoredumpTrace::crashBasebandARI_sync(CoredumpTrace *this)
{
  v25 = 0;
  v2 = *MEMORY[0x277CBECE8];
  Controller = TelephonyBasebandCreateController();
  if (!Controller)
  {
    v3 = *(this + 5);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v4 = "Failed to create TelephonyBasebandController";
    goto LABEL_26;
  }

  if ((TelephonyBasebandGetReset() & 1) == 0)
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, "Failed to get baseband reset state", buf, 2u);
    }

    v25 = 0;
  }

  support::transport::AriRT::create("CoredumpTrace", 0x2710, 0, buf);
  v6 = *buf;
  if (!*buf)
  {
    v3 = *(this + 5);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      v6 = 0;
      v9 = 0;
      v13 = Controller;
      if (!Controller)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    *buf = 0;
    v4 = "Failed to open ARI interface (is baseband booted and ready?)";
LABEL_26:
    _os_log_error_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_ERROR, v4, buf, 2u);
    v6 = 0;
    v9 = 0;
    v13 = Controller;
    if (!Controller)
    {
      goto LABEL_22;
    }

LABEL_21:
    CFRelease(v13);
    goto LABEL_22;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v20 = v7;
  *v21 = v7;
  *buf = v7;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAFFFFFFFFLL;
  v8 = v6[3];
  Bsp::BspCommandDriver::BspCommandDriver();
  __p = operator new(0x28uLL);
  v18 = xmmword_23C32DC40;
  strcpy(__p, "AP triggered baseband reset over ARI");
  v9 = Bsp::BspCommandDriver::SwTrap();
  operator delete(__p);
  if ((v9 & 1) == 0 && (v10 = *(this + 5), os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Failed to send SW Trap", &__p, 2u);
    v11 = v21[1];
    if (!v21[1])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = v21[1];
    if (!v21[1])
    {
      goto LABEL_13;
    }
  }

  do
  {
    v15 = *v11;
    v16 = v11[3];
    if (v16)
    {
      _Block_release(v16);
    }

    operator delete(v11);
    v11 = v15;
  }

  while (v15);
LABEL_13:
  v12 = v20[1];
  v20[1] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_weak(*&buf[8]);
  }

  v13 = Controller;
  if (Controller)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return v9;
}

void sub_23C2600D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  Bsp::BspCommandDriver::~BspCommandDriver(&a16);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef((v17 - 48));
  (*(*v16 + 8))(v16);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t CoredumpTrace::crashBaseband_sync(CoredumpTrace *a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    v18 = a2;
    if (*(a2 + 23) < 0)
    {
      v18 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "#D Crashing baseband with reason: %s", buf, 0xCu);
  }

  if (!capabilities::coredump::supportsSPMISignalling(v5))
  {
    v9 = *(a1 + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Crashing baseband (ARI)", buf, 2u);
    }

    if (CoredumpTrace::crashBasebandARI_sync(a1))
    {
      v10 = 1;
      goto LABEL_32;
    }

    v11 = *(a1 + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Failed to crash (ARI)";
      v13 = buf;
LABEL_14:
      _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    }

LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  v22 = 0;
  v6 = *MEMORY[0x277CBECE8];
  Controller = TelephonyBasebandCreateController();
  *buf = Controller;
  if (!Controller)
  {
    v11 = *(a1 + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      v12 = "Failed to create TelephonyBasebandController";
      v13 = v21;
      goto LABEL_14;
    }

    goto LABEL_31;
  }

  if (TelephonyBasebandGetReset())
  {
    v8 = *(a1 + 5);
  }

  else
  {
    v8 = *(a1 + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to get baseband reset state", v21, 2u);
      v8 = *(a1 + 5);
    }

    v22 = 0;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Crashing baseband (SPMI)", v21, 2u);
  }

  v20 = Controller;
  CFRetain(Controller);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v14 = CoredumpTrace::crashBasebandWithReason(a1, &v20, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  CFRelease(Controller);
  if (v14)
  {
    v10 = 1;
  }

  else
  {
    v15 = *(a1 + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Failed to crash baseband via SPMI", v21, 2u);
    }

    v10 = 0;
  }

  CFRelease(Controller);
LABEL_32:
  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_23C2604F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, uint64_t a16, uint64_t a17, const void *a18)
{
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(&a15);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(&a18);
  _Unwind_Resume(a1);
}

void sub_23C260528(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23C260554);
}

void sub_23C26053C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

BOOL CoredumpTrace::crashBasebandWithReason(capabilities::coredump *a1, uint64_t *a2, const std::string::value_type *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!capabilities::coredump::supportsSPMIResetReasonEncoding(a1))
  {
    v11 = *(a1 + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Reset reason encoding is not supported, so crashing baseband with SPMI without specifying reason", buf, 2u);
    }

    goto LABEL_10;
  }

  v21 = -86;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v6;
  v20 = v6;
  *buf = v6;
  v18 = v6;
  ResetReasonEncoder::encode(a3, buf);
  if (v21 != 1)
  {
    v12 = *(a1 + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Failed to encode reset reason, so crashing baseband with SPMI without specifying reason", v16, 2u);
      v15 = *a2;
      if ((TelephonyBasebandCrashModemWithSPMI() & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

LABEL_10:
    v13 = *a2;
    if ((TelephonyBasebandCrashModemWithSPMI() & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    result = 1;
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = *a2;
  if (TelephonyBasebandCrashModemWithSPMIWithReason())
  {
    goto LABEL_11;
  }

LABEL_4:
  v8 = *(a1 + 5);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to crash baseband via SPMI", buf, 2u);
    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void CoredumpTrace::handleBBULog(CoredumpTrace *this, int a2, const char *__s)
{
  v35 = *MEMORY[0x277D85DE8];
  memset(&__dst, 170, sizeof(__dst));
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    p_dst = operator new(v9);
    __dst.__r_.__value_.__l.__size_ = v7;
    __dst.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_9;
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  p_dst = &__dst;
  if (v6)
  {
LABEL_9:
    memcpy(p_dst, __s, v7);
  }

  p_dst->__r_.__value_.__s.__data_[v7] = 0;
  v10 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v11 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  size = __dst.__r_.__value_.__l.__size_;
  v12 = __dst.__r_.__value_.__r.__words[0];
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__dst;
  }

  else
  {
    v14 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __dst.__r_.__value_.__l.__size_;
  }

  v16 = v14 + v15;
  v17 = memchr(v14, 10, v15);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v19 = v18 + 1;
  if (v18 != v16 && v19 != v16)
  {
    do
    {
      v21 = *v19;
      if (v21 != 10)
      {
        *v18++ = v21;
      }

      ++v19;
    }

    while (v19 != v16);
    v10 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    size = __dst.__r_.__value_.__l.__size_;
    v12 = __dst.__r_.__value_.__r.__words[0];
    v11 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  if (v11 >= 0)
  {
    v22 = &__dst + v10;
  }

  else
  {
    v22 = (v12 + size);
  }

  if (v11 >= 0)
  {
    v23 = &__dst;
  }

  else
  {
    v23 = v12;
  }

  if (v11 >= 0)
  {
    v24 = v10;
  }

  else
  {
    v24 = size;
  }

  v25 = v18 - v23;
  if (v24 < v18 - v23)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v22 - v18 != -1)
  {
    std::string::__erase_external_with_move(&__dst, v25, v22 - v18);
    goto LABEL_43;
  }

  if ((v11 & 0x80) == 0)
  {
    *(&__dst.__r_.__value_.__s + 23) = v25 & 0x7F;
    __dst.__r_.__value_.__s.__data_[v25] = 0;
LABEL_43:
    v26 = *(this + 5);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

LABEL_47:
    v28 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = __dst.__r_.__value_.__r.__words[0];
    }

    *buf = 67109378;
    v32 = a2;
    v33 = 2080;
    v34 = v28;
    _os_log_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_DEFAULT, "#I BBUpdater:  %04x:%s", buf, 0x12u);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  __dst.__r_.__value_.__l.__size_ = v18 - v23;
  *(v12 + v25) = 0;
  v26 = *(this + 5);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_47;
  }

LABEL_44:
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_45:
    v27 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_50:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v29 = *MEMORY[0x277D85DE8];
}

void sub_23C260984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoredumpTrace::collectBasebandCoreDump_sync(CoredumpTrace *this)
{
  v50 = *MEMORY[0x277D85DE8];
  v46 = 0;
  cf = 0;
  v2 = BBUpdaterExtremeCreate();
  if (!v2)
  {
    v7 = 0;
    goto LABEL_80;
  }

  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v8 = *(this + 5);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_74:
      v7 = 0;
      goto LABEL_78;
    }

    LOWORD(v44[0]) = 0;
    v9 = "Failed to create options dictionary";
LABEL_90:
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, v9, v44, 2u);
    v7 = 0;
    goto LABEL_78;
  }

  BYTE5(v44[2]) = -86;
  HIWORD(v44[2]) = 5290;
  strcpy(v44, "boot::debugArguments");
  memset(__dst, 0, sizeof(__dst));
  v43 = 0;
  v40 = 0;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_280C05B48)
  {
    v6 = operator new(0x18uLL);
    MEMORY[0x23EECD950](v6, @"com.apple.AppleBasebandManager", *MEMORY[0x277CBF040]);
    v47 = v6;
    v5 = operator new(0x20uLL);
    *v5 = &unk_284EFBE28;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v6;
    v10 = *(&xmmword_280C05B48 + 1);
    *&xmmword_280C05B48 = v6;
    *(&xmmword_280C05B48 + 1) = v5;
    if (!v10)
    {
      *&buf = v6;
      *(&buf + 1) = v5;
      goto LABEL_13;
    }

    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  v5 = *(&xmmword_280C05B48 + 1);
  v6 = xmmword_280C05B48;
  buf = xmmword_280C05B48;
  if (*(&xmmword_280C05B48 + 1))
  {
LABEL_13:
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  *__p = 0xAAAAAAAAAAAAAA00;
  *&__p[8] = xmmword_23C32E490;
  if (SHIBYTE(v44[2]) >= 0)
  {
    v11 = v44;
  }

  else
  {
    v11 = v44[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v47, v11);
  v12 = (**v6)(v6, v47);
  if (v12)
  {
    v13 = ctu::cf::assign();
    CFRelease(v12);
    MEMORY[0x23EECD8F0](&v47);
    if (v13)
    {
      goto LABEL_31;
    }

    v14 = __p[23];
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    MEMORY[0x23EECD8F0](&v47);
    v14 = __p[23];
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
LABEL_20:
      if ((v14 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(__dst, *__p, *&__p[8]);
      }

      else
      {
        *__dst = *__p;
        v43 = *&__p[16];
      }

      goto LABEL_31;
    }
  }

  if ((v14 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = *__p;
  }

  if ((v14 & 0x80u) == 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = *&__p[8];
  }

  std::string::__assign_no_alias<false>(__dst, v15, v16);
LABEL_31:
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v17 = *(&buf + 1);
  if (*(&buf + 1) && !atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = HIBYTE(v43);
  if (v43 < 0)
  {
    v18 = *&__dst[8];
  }

  if (v18 && ctu::cf::convert_copy())
  {
    v19 = *(this + 5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = __dst;
      if (v43 < 0)
      {
        v20 = *__dst;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_DEFAULT, "#N Retrieved debug args: %s", &buf, 0xCu);
    }

    v21 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v21)
    {
      v22 = cf;
      cf = v21;
      if (v22)
      {
        CFRelease(v22);
      }

      CFDictionarySetValue(Mutable, @"Options", v21);
      v23 = v40;
      v24 = v41;
      v40 = v41;
      if (v23)
      {
        CFRelease(v23);
      }

      *&buf = @"DebugArgs";
      CFRetain(@"DebugArgs");
      v47 = v24;
      if (v24)
      {
        CFRetain(v24);
        CFDictionarySetValue(v21, @"DebugArgs", v24);
        CFRelease(v24);
      }

      CFRelease(@"DebugArgs");
    }
  }

  v25 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(Mutable, @"DisallowFusing", *MEMORY[0x277CBED28]);
  valuePtr = 2;
  v26 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, @"BootMode", v26);
  CFRelease(v26);
  v47 = 0;
  capabilities::radio::personalizedFirmwarePath(&buf, v27);
  v28 = ctu::cf::convert_copy();
  if (v49 < 0)
  {
    v29 = v28;
    operator delete(buf);
    if (!v29)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (v28)
  {
LABEL_56:
    CFDictionarySetValue(Mutable, @"firmwareDataFolder", v47);
    CFRelease(v47);
  }

LABEL_57:
  CFDictionaryAddValue(Mutable, @"coreDumpPathNoTimestamp", v25);
  v30 = (this + 120);
  v7 = ctu::cf::convert_copy();
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"coreDumpPath", 0);
    CFRelease(0);
    goto LABEL_60;
  }

  v31 = *(this + 5);
  if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
LABEL_60:
    v32 = v40;
    if (!v40)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (*(this + 143) < 0)
  {
    v30 = *v30;
  }

  LODWORD(buf) = 136315138;
  *(&buf + 4) = v30;
  _os_log_error_impl(&dword_23C1C4000, v31, OS_LOG_TYPE_ERROR, "Failed to convert CoreDump path (%s)", &buf, 0xCu);
  v32 = v40;
  if (v40)
  {
LABEL_61:
    CFRelease(v32);
  }

LABEL_62:
  if ((SHIBYTE(v43) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v44[2]) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_67:
    operator delete(v44[0]);
    if (!v7)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

  operator delete(*__dst);
  if (SHIBYTE(v44[2]) < 0)
  {
    goto LABEL_67;
  }

LABEL_64:
  if (!v7)
  {
    goto LABEL_78;
  }

LABEL_68:
  if (!BBUpdaterSetOptions())
  {
    v8 = *(this + 5);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_74;
    }

    LOWORD(v44[0]) = 0;
    v9 = "Failed to set CoreDump options";
    goto LABEL_90;
  }

  v44[0] = 0;
  v33 = BBUpdaterExecCommand();
  v7 = v33 != 0;
  v34 = *(this + 5);
  if (v33)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *__dst = 0;
      _os_log_impl(&dword_23C1C4000, v34, OS_LOG_TYPE_DEFAULT, "#I CoreDump success", __dst, 2u);
      v35 = v44[0];
      if (!v44[0])
      {
        goto LABEL_78;
      }

LABEL_77:
      CFRelease(v35);
      goto LABEL_78;
    }

LABEL_76:
    v35 = v44[0];
    if (!v44[0])
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_76;
  }

  *__dst = 0;
  _os_log_error_impl(&dword_23C1C4000, v34, OS_LOG_TYPE_ERROR, "Failed to execute CoreDump command", __dst, 2u);
  v35 = v44[0];
  if (v44[0])
  {
    goto LABEL_77;
  }

LABEL_78:
  CFRelease(v2);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_80:
  if (v46)
  {
    CFRelease(v46);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23C261134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}