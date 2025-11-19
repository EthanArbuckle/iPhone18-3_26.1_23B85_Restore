void sub_23745472C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, const void *a23, const void *a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef((v35 - 128));
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a23);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a24);
  if ((v34 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(a1);
}

uint64_t NetworkListOperator::getAsString@<X0>(NetworkListOperator *this@<X0>, _BYTE *a2@<X8>)
{
  v36 = 0;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  *v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "[[Code ", 7);
  NetworkListOperator::getKey(this, &v29);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v29;
  }

  else
  {
    v5 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, size);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", Name ", 7);
  NetworkListOperator::getCompositeName(this, v27);
  if ((v28 & 0x80u) == 0)
  {
    v9 = v27;
  }

  else
  {
    v9 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v10 = v28;
  }

  else
  {
    v10 = v27[1];
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", RAT ", 6);
  v13 = asString(*(this + 6));
  v14 = strlen(v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", MCC ", 6);
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *(this + 5), *(this + 6));
  }

  else
  {
    v26 = *(this + 40);
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v26;
  }

  else
  {
    v17 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v26.__r_.__value_.__l.__size_;
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", MNC ", 6);
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 9), *(this + 10));
  }

  else
  {
    __p = *(this + 3);
  }

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
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, p_p, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "]]", 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  std::ostringstream::str[abi:ne200100](&v30, a2);
  *&v30 = *MEMORY[0x277D82828];
  *(&v31[-1] + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v30 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  *(&v30 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v31);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v35);
}

void sub_237454B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  std::ostringstream::~ostringstream(&a35);
  _Unwind_Resume(a1);
}

void NetworkListOperator::dumpState(NetworkListOperator *this, os_log_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    NetworkListOperator::getAsString(this, __p);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v9 = v4;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I Operator description: %s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void NetworkListOperator::getMCC(NetworkListOperator *this@<X0>, _WORD *a2@<X8>)
{
  *a2 = *(this + 16);
  v2 = (a2 + 4);
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(this + 5), *(this + 6));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *(this + 40);
    v2->__r_.__value_.__r.__words[2] = *(this + 7);
  }
}

void NetworkListOperator::getMNC(NetworkListOperator *this@<X0>, _WORD *a2@<X8>)
{
  *a2 = *(this + 32);
  v2 = (a2 + 4);
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(this + 9), *(this + 10));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *(this + 72);
    v2->__r_.__value_.__r.__words[2] = *(this + 11);
  }
}

BOOL NetworkListOperator::matchesPLMN(NetworkListOperator *this, const NetworkListOperator *a2)
{
  v12 = *(this + 16);
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(this + 5), *(this + 6));
  }

  else
  {
    v13 = *(this + 40);
  }

  v10 = *(a2 + 16);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v11 = *(a2 + 40);
  }

  if (MCC::operator==(&v12, &v10))
  {
    v8 = *(this + 32);
    if (*(this + 95) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *(this + 9), *(this + 10));
    }

    else
    {
      v9 = *(this + 3);
    }

    v6 = *(a2 + 32);
    if (*(a2 + 95) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 9), *(a2 + 10));
    }

    else
    {
      __p = *(a2 + 3);
    }

    v4 = MCC::operator==(&v8, &v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = 0;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_237454E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL NetworkListOperator::operator==(NetworkListOperator *a1, NetworkListOperator *a2)
{
  NetworkListOperator::getKey(a1, &v12);
  NetworkListOperator::getKey(a2, &__p);
  v3 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = __p.__r_.__value_.__l.__size_;
  }

  if (size == v5)
  {
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v12;
    }

    else
    {
      v7 = v12.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v9 = memcmp(v7, p_p, size) == 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v3 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
LABEL_17:
  if (v3 < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_237454FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL NetworkListOperator::operator==(NetworkListOperator *a1, const void **a2)
{
  NetworkListOperator::getKey(a1, &__p);
  v3 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v5 = *(a2 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a2[1];
  }

  if (size == v5)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = memcmp(p_p, v8, size) == 0;
    if (v3 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_16:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v9;
}

void MCCAndMNC::~MCCAndMNC(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDictionaryGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void sub_23745522C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, dispatch_object_t object)
{
  ctu::OsLogContext::~OsLogContext(&a10);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void *LoggingProfileInterface::LoggingProfileInterface(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_284A6B028;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void LoggingProfileInterface::~LoggingProfileInterface(LoggingProfileInterface *this)
{
  *this = &unk_284A6B028;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t LoggingProfileInterface::isLoggingAllowed(LoggingProfileInterface *this)
{
  v2 = *(this + 1);
  Registry::throwIfNotInitialized(v2);
  v3 = *(v2 + 24);
  v4 = off_284A6C8E8;
  if ((off_284A6C8E8 & 0x8000000000000000) != 0)
  {
    v5 = (off_284A6C8E8 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(v3 + 3);
  v14 = v4;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v3[4].__m_.__sig, &v14);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3 + 3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3 + 3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  v11 = 0;
  if (!v10)
  {
LABEL_13:
    v12 = 1;
    if (v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_10:
  if (((*(*v10 + 32))(v10) & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = 0;
  if ((v11 & 1) == 0)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_15:
  if (v12)
  {
    return (*(*this + 16))(this);
  }

  else
  {
    return 1;
  }
}

void sub_237455588(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OTASPService::OTASPService(uint64_t a1, char *a2, void *a3, NSObject **a4, uint64_t *a5, char *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ctu::OsLogContext::OsLogContext(&v23, "com.apple.CommCenter", a6);
  ctu::OsLogLogger::OsLogLogger(v24, &v23);
  MEMORY[0x2383CB6C0](a1 + 24, v24);
  MEMORY[0x2383CB6D0](v24);
  ctu::OsLogContext::~OsLogContext(&v23);
  *a1 = &unk_284A6B188;
  v11 = *a4;
  *(a1 + 32) = *a4;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = a3[1];
  *(a1 + 40) = *a3;
  *(a1 + 48) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  v13 = *(a1 + 32);
  v20 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  object = 0;
  ctu::RestModule::RestModule();
  if (v20)
  {
    dispatch_release(v20);
  }

  if (v22 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 72) = -1;
  *(a1 + 76) = 0;
  *(a1 + 84) = 0;
  v15 = *a5;
  v14 = a5[1];
  *(a1 + 88) = 0;
  *(a1 + 96) = v15;
  *(a1 + 104) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  Registry::createRestModuleOneTimeUseConnection(&v17, *(a1 + 40));
  ctu::RestModule::connect();
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return a1;
}

void sub_23745572C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, dispatch_object_t object, dispatch_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v21 = v19[13];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = v19[11];
  v19[11] = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = v19[8];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = v19[6];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = v19[4];
  if (v25)
  {
    dispatch_release(v25);
  }

  MEMORY[0x2383CB6D0](v19 + 3);
  v26 = v19[2];
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(a1);
}

void OTASPService::~OTASPService(OTASPService *this)
{
  *this = &unk_284A6B188;
  ctu::RestModule::disconnect((this + 56));
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    dispatch_release(v6);
  }

  MEMORY[0x2383CB6D0](this + 24);
  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

{
  OTASPService::~OTASPService(this);

  JUMPOUT(0x2383CBEF0);
}

BOOL OTASPService::handleOtaspCallIndication(uint64_t a1, int a2, int a3, int a4)
{
  v108 = *MEMORY[0x277D85DE8];
  if (*(a1 + 77) == 1 && *(a1 + 72) == a3)
  {
    if (a2)
    {
      v7 = *(a1 + 24);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a3;
        _os_log_impl(&dword_2373EA000, v7, OS_LOG_TYPE_DEFAULT, "#I Silent OTASP & END indication with OTASP call Id: %d", buf, 8u);
      }

      *(a1 + 77) = 0;
      *(a1 + 72) = -1;
      v8 = *(a1 + 40);
      Registry::throwIfNotInitialized(v8);
      v9 = *(v8 + 24);
      v10 = off_284A6AB08;
      v11 = off_284A6AB08;
      if ((off_284A6AB08 & 0x8000000000000000) != 0)
      {
        v12 = (off_284A6AB08 & 0x7FFFFFFFFFFFFFFFLL);
        v13 = 5381;
        do
        {
          v11 = v13;
          v14 = *v12++;
          v13 = (33 * v13) ^ v14;
        }

        while (v14);
      }

      std::mutex::lock(v9 + 3);
      *buf = v11;
      v15 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v9[4].__m_.__sig, buf);
      if (v15)
      {
        v17 = v15[3];
        v16 = v15[4];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9 + 3);
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          v18 = 0;
          goto LABEL_68;
        }
      }

      else
      {
        v17 = 0;
      }

      std::mutex::unlock(v9 + 3);
      v16 = 0;
      v18 = 1;
LABEL_68:
      (*(*v17 + 56))(v17, 8);
      if ((v18 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      (*(**(a1 + 96) + 16))(*(a1 + 96), 8);
      event::EventLogger<void ()(subscriber::SimSlot),event::CSIEventLogger>::operator()<subscriber::SimSlot>(a4);
      v52 = *(a1 + 84);
      v53 = *(a1 + 24);
      v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
      if (v52 == 1)
      {
        if (v54)
        {
          *buf = 0;
          _os_log_impl(&dword_2373EA000, v53, OS_LOG_TYPE_DEFAULT, "#I Silent OTASP successful", buf, 2u);
        }

        v55 = *(*(a1 + 40) + 24);
        v56 = *(v55 + 32);
        v23 = *(v55 + 40);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v105, "ResetAfterOTASPTime");
        v57 = *(a1 + 32);
        v104 = v57;
        if (v57)
        {
          dispatch_retain(v57);
        }

        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 0x40000000;
        v102[2] = ___ZN12OTASPService25handleOtaspCallIndicationEbiN10subscriber7SimSlotE_block_invoke;
        v102[3] = &__block_descriptor_tmp_0;
        v102[4] = a1;
        v103 = _Block_copy(v102);
        ctu::TimerService::createOneShotTimer(v56, v105, 2, 8000000, &v104, &v103);
        v58 = *buf;
        *buf = 0;
        v59 = *(a1 + 88);
        *(a1 + 88) = v58;
        if (v59)
        {
          (*(*v59 + 8))(v59);
          v60 = *buf;
          *buf = 0;
          if (v60)
          {
            (*(*v60 + 8))(v60);
          }
        }

        if (v103)
        {
          _Block_release(v103);
        }

        if (v104)
        {
          dispatch_release(v104);
        }

        if ((v106 & 0x80000000) == 0)
        {
          goto LABEL_87;
        }

        v29 = v105[0];
LABEL_86:
        operator delete(v29);
LABEL_87:
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        goto LABEL_132;
      }

      if (v54)
      {
        *buf = 0;
        _os_log_impl(&dword_2373EA000, v53, OS_LOG_TYPE_DEFAULT, "#E Silent OTASP failed", buf, 2u);
      }

      v61 = *(a1 + 40);
      Registry::throwIfNotInitialized(v61);
      v62 = *(v61 + 24);
      if (v10 < 0)
      {
        v63 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
        v64 = 5381;
        do
        {
          v10 = v64;
          v65 = *v63++;
          v64 = (33 * v64) ^ v65;
        }

        while (v65);
      }

      std::mutex::lock(v62 + 3);
      *buf = v10;
      v66 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v62[4].__m_.__sig, buf);
      if (v66)
      {
        v68 = v66[3];
        v67 = v66[4];
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v62 + 3);
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
          v69 = 0;
LABEL_129:
          (*(*v68 + 24))(v68);
          if ((v69 & 1) == 0)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v67);
          }

          (*(**(a1 + 96) + 24))(*(a1 + 96));
          goto LABEL_132;
        }
      }

      else
      {
        v68 = 0;
      }

      std::mutex::unlock(v62 + 3);
      v67 = 0;
      v69 = 1;
      goto LABEL_129;
    }

LABEL_132:
    result = 0;
    goto LABEL_140;
  }

  if (*(a1 + 79) != 1)
  {
    if (*(a1 + 78) == 1)
    {
      if (a2)
      {
        v30 = *(a1 + 24);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2373EA000, v30, OS_LOG_TYPE_DEFAULT, "#I Visual OTASP & END indication", buf, 2u);
        }

        v31 = *(a1 + 40);
        Registry::throwIfNotInitialized(v31);
        v32 = *(v31 + 24);
        v33 = off_284A6AB08;
        v34 = off_284A6AB08;
        if ((off_284A6AB08 & 0x8000000000000000) != 0)
        {
          v35 = (off_284A6AB08 & 0x7FFFFFFFFFFFFFFFLL);
          v36 = 5381;
          do
          {
            v34 = v36;
            v37 = *v35++;
            v36 = (33 * v36) ^ v37;
          }

          while (v37);
        }

        std::mutex::lock(v32 + 3);
        *buf = v34;
        v38 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v32[4].__m_.__sig, buf);
        if (v38)
        {
          v40 = v38[3];
          v39 = v38[4];
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v32 + 3);
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
            v41 = 0;
            goto LABEL_99;
          }
        }

        else
        {
          v40 = 0;
        }

        std::mutex::unlock(v32 + 3);
        v39 = 0;
        v41 = 1;
LABEL_99:
        (*(*v40 + 56))(v40, 8);
        if ((v41 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        (*(**(a1 + 96) + 16))(*(a1 + 96), 8);
        event::EventLogger<void ()(subscriber::SimSlot),event::CSIEventLogger>::operator()<subscriber::SimSlot>(a4);
        if (*(a1 + 78) == 1 && *(a1 + 82) == 1 && *(a1 + 83) == 1 && (*(a1 + 84) & 1) == 0)
        {
          OTASPService::sendOTASPFailureToUI(a1);
LABEL_138:
          *(a1 + 78) = 0;
          goto LABEL_139;
        }

        if (*(a1 + 84) == 1)
        {
          OTASPService::sendOTASPSuccessToUI(a1);
          v70 = *(*(a1 + 40) + 24);
          v72 = *(v70 + 32);
          v71 = *(v70 + 40);
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "ResetAfterOTASPTime");
          v73 = *(a1 + 32);
          v94 = v73;
          if (v73)
          {
            dispatch_retain(v73);
          }

          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 0x40000000;
          v92[2] = ___ZN12OTASPService25handleOtaspCallIndicationEbiN10subscriber7SimSlotE_block_invoke_5;
          v92[3] = &__block_descriptor_tmp_6;
          v92[4] = a1;
          v93 = _Block_copy(v92);
          ctu::TimerService::createOneShotTimer(v72, __p, 2, 8000000, &v94, &v93);
          v74 = *buf;
          *buf = 0;
          v75 = *(a1 + 88);
          *(a1 + 88) = v74;
          if (v75)
          {
            (*(*v75 + 8))(v75);
            v76 = *buf;
            *buf = 0;
            if (v76)
            {
              (*(*v76 + 8))(v76);
            }
          }

          if (v93)
          {
            _Block_release(v93);
          }

          if (v94)
          {
            dispatch_release(v94);
          }

          if (v96 < 0)
          {
            operator delete(__p[0]);
          }

          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }

          goto LABEL_138;
        }

        v77 = *(a1 + 40);
        Registry::throwIfNotInitialized(v77);
        v78 = *(v77 + 24);
        if (v33 < 0)
        {
          v79 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
          v80 = 5381;
          do
          {
            v33 = v80;
            v81 = *v79++;
            v80 = (33 * v80) ^ v81;
          }

          while (v81);
        }

        std::mutex::lock(v78 + 3);
        *buf = v33;
        v82 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v78[4].__m_.__sig, buf);
        if (v82)
        {
          v84 = v82[3];
          v83 = v82[4];
          if (v83)
          {
            atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v78 + 3);
            atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v83);
            v85 = 0;
LABEL_135:
            (*(*v84 + 24))(v84);
            if ((v85 & 1) == 0)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v83);
            }

            (*(**(a1 + 96) + 24))(*(a1 + 96));
            goto LABEL_138;
          }
        }

        else
        {
          v84 = 0;
        }

        std::mutex::unlock(v78 + 3);
        v83 = 0;
        v85 = 1;
        goto LABEL_135;
      }
    }

    else
    {
      if (*(a1 + 80) == 1)
      {
        if (a2)
        {
          v42 = *(a1 + 24);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2373EA000, v42, OS_LOG_TYPE_DEFAULT, "#I END indication and we are waiting to reset for OTAPA, so reset", buf, 2u);
          }

          v43 = *(*(a1 + 40) + 24);
          v44 = *(v43 + 32);
          v23 = *(v43 + 40);
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v90, "ResetAfterOTASPTime");
          v45 = *(a1 + 32);
          v89 = v45;
          if (v45)
          {
            dispatch_retain(v45);
          }

          v87[0] = MEMORY[0x277D85DD0];
          v87[1] = 0x40000000;
          v87[2] = ___ZN12OTASPService25handleOtaspCallIndicationEbiN10subscriber7SimSlotE_block_invoke_7;
          v87[3] = &__block_descriptor_tmp_8;
          v87[4] = a1;
          v88 = _Block_copy(v87);
          ctu::TimerService::createOneShotTimer(v44, v90, 2, 8000000, &v89, &v88);
          v46 = *buf;
          *buf = 0;
          v47 = *(a1 + 88);
          *(a1 + 88) = v46;
          if (v47)
          {
            (*(*v47 + 8))(v47);
            v48 = *buf;
            *buf = 0;
            if (v48)
            {
              (*(*v48 + 8))(v48);
            }
          }

          if (v88)
          {
            _Block_release(v88);
          }

          if (v89)
          {
            dispatch_release(v89);
          }

          if ((v91 & 0x80000000) == 0)
          {
            goto LABEL_87;
          }

          v29 = v90[0];
          goto LABEL_86;
        }

        goto LABEL_132;
      }

      v51 = *(a1 + 24);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2373EA000, v51, OS_LOG_TYPE_DEFAULT, "#E Unexpected OTASP Indication. Ignoring. Command driver will continue to processing this indication.", buf, 2u);
      }
    }

LABEL_139:
    result = 1;
    goto LABEL_140;
  }

  if (!a2)
  {
    goto LABEL_132;
  }

  v19 = *(a1 + 24);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2373EA000, v19, OS_LOG_TYPE_DEFAULT, "#I SIM OTASP & END indication", buf, 2u);
  }

  *(a1 + 79) = 0;
  if (*(a1 + 84) == 1)
  {
    *(a1 + 84) = 0;
    v20 = *(a1 + 24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2373EA000, v20, OS_LOG_TYPE_DEFAULT, "#I Sim OTASP has completed successfully, marking card provisioning as provisioned", buf, 2u);
    }

    if (*(a1 + 80) != 1)
    {
      goto LABEL_132;
    }

    v21 = *(a1 + 24);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2373EA000, v21, OS_LOG_TYPE_DEFAULT, "#I SIM OTASP successful. Reset BB for this OTASP call.", buf, 2u);
    }

    v22 = *(*(a1 + 40) + 24);
    v24 = *(v22 + 32);
    v23 = *(v22 + 40);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v100, "ResetAfterOTASPTime");
    v25 = *(a1 + 32);
    object = v25;
    if (v25)
    {
      dispatch_retain(v25);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN12OTASPService25handleOtaspCallIndicationEbiN10subscriber7SimSlotE_block_invoke_3;
    aBlock[3] = &__block_descriptor_tmp_4;
    aBlock[4] = a1;
    v98 = _Block_copy(aBlock);
    ctu::TimerService::createOneShotTimer(v24, v100, 2, 8000000, &object, &v98);
    v26 = *buf;
    *buf = 0;
    v27 = *(a1 + 88);
    *(a1 + 88) = v26;
    if (v27)
    {
      (*(*v27 + 8))(v27);
      v28 = *buf;
      *buf = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }

    if (v98)
    {
      _Block_release(v98);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if ((v101 & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    v29 = v100[0];
    goto LABEL_86;
  }

  v49 = *(a1 + 24);
  result = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 0;
    _os_log_impl(&dword_2373EA000, v49, OS_LOG_TYPE_DEFAULT, "#E Sim OTASP failed, marking card provisioning as failed", buf, 2u);
    goto LABEL_132;
  }

LABEL_140:
  v86 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237456604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, dispatch_object_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *aBlock, dispatch_object_t object, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, dispatch_object_t a41)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void event::EventLogger<void ()(subscriber::SimSlot),event::CSIEventLogger>::operator()<subscriber::SimSlot>(int a1)
{
  v64 = *MEMORY[0x277D85DE8];
  LODWORD(v35[0]) = a1;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  __src = 0u;
  v43 = 0u;
  v44 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v43);
  subscriber::operator<<(&v43, v35);
  if ((BYTE8(v49) & 0x10) != 0)
  {
    v3 = v49;
    if (v49 < *(&__src + 1))
    {
      *&v49 = *(&__src + 1);
      v3 = *(&__src + 1);
    }

    v4 = __src;
  }

  else
  {
    if ((BYTE8(v49) & 8) == 0)
    {
      v2 = 0;
      BYTE7(v40) = 0;
      goto LABEL_14;
    }

    v4 = *(&v44 + 1);
    v3 = *(&v45 + 1);
  }

  v2 = v3 - v4;
  if ((v3 - v4) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  BYTE7(v40) = v3 - v4;
  if (v2)
  {
    memmove(&__dst, v4, v2);
  }

LABEL_14:
  *(&__dst + v2) = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    p_dst = &__dst;
    if (SBYTE7(v40) < 0)
    {
      p_dst = __dst;
    }

    *buf = 136315394;
    *&buf[4] = qword_280CE8C80;
    *&buf[12] = 2080;
    *&buf[14] = p_dst;
    _os_log_impl(&dword_2373EA000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Firing event '%s': with params= %s", buf, 0x16u);
  }

  if (SBYTE7(v40) < 0)
  {
    operator delete(__dst);
  }

  *&v43 = *MEMORY[0x277D82828];
  *(&v43 + *(v43 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v43 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v48) < 0)
  {
    operator delete(*(&v47 + 1));
  }

  *(&v43 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v44);
  std::ostream::~ostream();
  MEMORY[0x2383CBE70](&v50);
  v6 = qword_280CE8C70;
  if (!qword_280CE8C70)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  v38 = a1;
  v37 = 0uLL;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  __src = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = *(qword_280CE8C70 + 24);
  boost::shared_ptr<boost::signals2::mutex>::operator*(v7);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::garbage_collecting_lock(&v43, v7);
  v8 = v6[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      v9 = v6[1];
      if (!v9 || atomic_load_explicit((v9 + 8), memory_order_acquire) != 1)
      {
        __assert_rtn("nolock_cleanup_connections", "signal_template.hpp", 461, "_shared_state.unique()");
      }

      v10 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(v6);
      v11 = boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v10);
      v12 = v6[2];
      if (v12 == v11)
      {
        v13 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(v6);
        v12 = *(boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v13) + 8);
      }

      *&__dst = v12;
      boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::nolock_cleanup_connections_from(v6, &__dst, 1);
    }

    v14 = *v6;
    v15 = v6[1];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v14 = *v6;
  }

  v16 = v37;
  *&v37 = v14;
  *(&v37 + 1) = v15;
  __dst = v16;
  boost::detail::shared_count::~shared_count(&__dst + 1);
  boost::signals2::mutex::unlock(*(&v54 + 1));
  boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::auto_buffer_destroy(&v43);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  __src = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  *&v58 = 0;
  *(&v58 + 1) = 10;
  v59 = &v43 + 8;
  v60 = 0;
  v62 = 0;
  v63 = 0;
  v61 = &v38;
  v17 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(&v37);
  v18 = boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v17);
  v36[0] = &v43;
  v36[1] = v6;
  v36[2] = v18;
  if (!*(boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(&v37) + 16))
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  v19 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(&v37);
  v20 = *(boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v19) + 8);
  v21 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(&v37);
  v22 = boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v21);
  *buf = v20;
  *&buf[8] = v22;
  *&buf[16] = &v43;
  *&buf[24] = v22;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,subscriber::SimSlot>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::lock_next_callable(buf);
  v23 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(&v37);
  v24 = boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v23);
  v25 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(&v37);
  v26 = boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v25);
  v35[0] = v24;
  v35[1] = v26;
  v35[2] = &v43;
  v35[3] = v26;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,subscriber::SimSlot>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::lock_next_callable(v35);
  __dst = *buf;
  v40 = *&buf[16];
  v27 = v35[0];
  v28 = *buf;
  if (*buf != v35[0])
  {
    v29 = v40;
    v30 = *v40;
    do
    {
      if ((v30 & 1) == 0)
      {
        v31 = boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::operator->(*(v28 + 16));
        v32 = boost::shared_ptr<boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>>::operator*(*(v31 + 32));
        v33 = *(v32 + 24);
        if (!v33)
        {
          std::runtime_error::runtime_error(&v41, "call to empty boost::function");
          v41.__vftable = &unk_284A6B370;
          boost::throw_exception<boost::bad_function_call>(&v41);
        }

        (*((v33 & 0xFFFFFFFFFFFFFFFELL) + 8))(v32 + 32, **(v29 + 272));
        if ((*v29 & 1) == 0)
        {
          *v29 = 1;
        }
      }

      *&__dst = *(v28 + 8);
      boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,subscriber::SimSlot>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::lock_next_callable(&__dst);
      v29 = v40;
      if (*v40 == 1)
      {
        *v40 = 0;
      }

      v30 = 0;
      v28 = __dst;
    }

    while (__dst != v27);
  }

  boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(v36);
  boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,subscriber::SimSlot>>::~slot_call_iterator_cache(&v43);
  boost::detail::shared_count::~shared_count(&v37 + 1);
  v34 = *MEMORY[0x277D85DE8];
}

void sub_237456DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  std::ostringstream::~ostringstream(&a31, MEMORY[0x277D82828]);
  MEMORY[0x2383CBE70](&a45);
  _Unwind_Resume(a1);
}

void sub_237456E64(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x237456E6CLL);
  }

  __clang_call_terminate(a1);
}

void OTASPService::handleResetAfterOTASPTimerExpired(OTASPService *this)
{
  v2 = *(this + 3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2373EA000, v2, OS_LOG_TYPE_DEFAULT, "#I OTASP or OTAPA Call finished! Resetting baseband to finish.", buf, 2u);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 80) = 0;
  *(this + 84) = 0;
  v4 = *(this + 5);
  Registry::throwIfNotInitialized(v4);
  v5 = *(v4 + 24);
  v6 = off_284A6AB08;
  if ((off_284A6AB08 & 0x8000000000000000) != 0)
  {
    v7 = (off_284A6AB08 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(v5 + 3);
  *buf = v6;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v5[4].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5 + 3);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      v13 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5 + 3);
  v11 = 0;
  v13 = 1;
LABEL_13:
  v14 = (*(*v12 + 112))(v12);
  if ((v13 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v14)
  {
    v15 = *(this + 3);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2373EA000, v15, OS_LOG_TYPE_DEFAULT, "#I Support cold sim activation, skip Baseband reset", buf, 2u);
    }

    v16 = *(this + 5);
    Registry::throwIfNotInitialized(v16);
    v17 = *(v16 + 24);
    v18 = off_284A6D818;
    if ((off_284A6D818 & 0x8000000000000000) != 0)
    {
      v19 = (off_284A6D818 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(v17 + 3);
    *buf = v18;
    v22 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v17[4].__m_.__sig, buf);
    if (v22)
    {
      v23 = v22[3];
      v24 = v22[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17 + 3);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        v25 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v17 + 3);
    v24 = 0;
    v25 = 1;
LABEL_32:
    (*(*v23 + 392))(v23, 1);
    if ((v25 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(v26, "Resetting Baseband after OTASP/OTAPA");
  *buf = *v26;
  v29 = v27;
  v26[1] = 0;
  v27 = 0;
  v26[0] = 0;
  v30 = 0;
  v34 = 0;
  rest::write_rest_value(buf, &v34);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/events/reset_request");
  object = v34;
  v34 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  object = 0;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v34);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }
}

void sub_2374571DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, xpc_object_t object, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  xpc_release(object);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v30 - 56));
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void OTASPService::sendOTASPFailureToUI(OTASPService *this)
{
  v1 = *(this + 5);
  Registry::throwIfNotInitialized(v1);
  v2 = *(v1 + 24);
  v3 = off_284A757B8;
  if ((off_284A757B8 & 0x8000000000000000) != 0)
  {
    v4 = (off_284A757B8 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(v2 + 3);
  v12 = v3;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v2[4].__m_.__sig, &v12);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2 + 3);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2 + 3);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    v12 = 0;
    (*(*v9 + 16))(&v12, v9, @"Otasp", @"Service Update Failed", 1);
    v11 = 0;
    (*(*v9 + 16))(&v11, v9, @"Otasp", @"OK", 1);
    _CreateSimpleUserNotificationWithButton(0x78u, v12, &stru_284A760D0, v11);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v11);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v12);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_23745740C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a9);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a10);
  if ((v11 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void OTASPService::sendOTASPSuccessToUI(OTASPService *this)
{
  v1 = *(this + 5);
  Registry::throwIfNotInitialized(v1);
  v2 = *(v1 + 24);
  v3 = off_284A757B8;
  if ((off_284A757B8 & 0x8000000000000000) != 0)
  {
    v4 = (off_284A757B8 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(v2 + 3);
  v12 = v3;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v2[4].__m_.__sig, &v12);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2 + 3);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2 + 3);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    v12 = 0;
    (*(*v9 + 16))(&v12, v9, @"Otasp", @"Service Update Complete", 1);
    v11 = 0;
    (*(*v9 + 16))(&v11, v9, @"Otasp", @"OK", 1);
    _CreateSimpleUserNotificationWithButton(0x78u, v12, &stru_284A760D0, v11);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v11);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v12);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_2374575DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a9);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a10);
  if ((v11 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void OTASPService::handleNotRegistered(OTASPService *this)
{
  v2 = *(this + 3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2373EA000, v2, OS_LOG_TYPE_DEFAULT, "#I Phone not registered. Pend any future OTASP requests", v3, 2u);
  }

  *(this + 76) = 0;
}

uint64_t boost::shared_ptr<boost::signals2::mutex>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(uint64_t a1)
{
  boost::signals2::mutex::unlock(*(a1 + 184));
  boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::auto_buffer_destroy(a1);
  return a1;
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

void *boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::garbage_collecting_lock(void *a1, pthread_mutex_t *a2)
{
  a1[20] = 10;
  a1[21] = a1;
  a1[22] = 0;
  a1[23] = a2;
  if (pthread_mutex_lock(a2))
  {
    __assert_rtn("lock", "lwm_pthreads.hpp", 60, "pthread_mutex_lock(&m_) == 0");
  }

  return a1;
}

void boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::auto_buffer_destroy(void *a1)
{
  v1 = a1[21];
  if (v1)
  {
    v3 = a1[20];
    if (v3 < 0xA || (v1 == a1 ? (v4 = v3 == 10) : (v4 = 1), !v4 || (v5 = a1[22], v5 > v3)))
    {
      __assert_rtn("auto_buffer_destroy", "auto_buffer.hpp", 255, "is_valid()");
    }

    if (v5 > 0)
    {
      v6 = &v1[2 * v5];
      do
      {
        v7 = (v6 - 2);
        boost::detail::shared_count::~shared_count(v6 - 1);
        v6 = v7;
      }

      while (v7 > v1);
      v3 = a1[20];
    }

    if (v3 >= 0xB)
    {
      v8 = a1[21];

      operator delete(v8);
    }
  }
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (v1)
  {
    boost::detail::sp_counted_base::release(v1);
  }
}

atomic_uint *boost::detail::sp_counted_base::release(atomic_uint *this)
{
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v1 = this;
    v2 = this + 3;
    this = (*(*this + 16))(this);
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = *(*v1 + 24);

      return v3(v1);
    }
  }

  return this;
}

uint64_t boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::nolock_cleanup_connections_from(uint64_t *a1, uint64_t **a2, int a3)
{
  v3 = a1[1];
  if (!v3 || atomic_load_explicit((v3 + 8), memory_order_acquire) != 1)
  {
    __assert_rtn("nolock_cleanup_connections_from", "signal_template.hpp", 436, "_shared_state.unique()");
  }

  v6 = *a2;
  v7 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(a1);
  result = boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v7);
  if (result != v6)
  {
    v9 = 0;
    v10 = a3 - 1;
    do
    {
      if (*(boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::operator->(v6[2]) + 24))
      {
        v6 = v6[1];
      }

      else
      {
        v11 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(a1);
        v12 = boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v11);
        v13 = v6[2];
        boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::operator->(v13);
        if (v6 == v12)
        {
          __assert_rtn("erase", "slot_groups.hpp", 148, "it != _list.end()");
        }

        v14 = v12 + 4;
        v15 = v12[4];
        if (!v15)
        {
          goto LABEL_51;
        }

        v36 = (v12 + 3);
        v16 = v12 + 4;
        do
        {
          v17 = boost::signals2::detail::group_key_less<int,std::less<int>>::operator()((v12 + 6), (v15 + 4), v13 + 64);
          v18 = v17;
          if (!v17)
          {
            v16 = v15;
          }

          v15 = v15[v18];
        }

        while (v15);
        if (v16 == v14)
        {
LABEL_51:
          __assert_rtn("erase", "slot_groups.hpp", 150, "map_it != _group_map.end()");
        }

        if (boost::signals2::detail::group_key_less<int,std::less<int>>::operator()((v12 + 7), (v16 + 4), v13 + 64) || boost::signals2::detail::group_key_less<int,std::less<int>>::operator()((v12 + 7), v13 + 64, (v16 + 4)))
        {
          __assert_rtn("erase", "slot_groups.hpp", 151, "weakly_equivalent(map_it->first, key)");
        }

        if (v16[6] == v6)
        {
          v19 = v6[1];
          v20 = *v14;
          v21 = v12;
          v35 = v19;
          if (*v14)
          {
            v22 = v12 + 4;
            do
            {
              v23 = boost::signals2::detail::group_key_less<int,std::less<int>>::operator()((v12 + 6), v13 + 64, (v20 + 4));
              v24 = !v23;
              if (v23)
              {
                v22 = v20;
              }

              v20 = v20[v24];
            }

            while (v20);
            v21 = v12;
            v19 = v35;
            if (v22 != v14)
            {
              v21 = v22[6];
            }
          }

          if (v19 == v21)
          {
            v26 = v16[1];
            v27 = v16;
            v10 = a3 - 1;
            if (v26)
            {
              do
              {
                v28 = v26;
                v26 = *v26;
              }

              while (v26);
            }

            else
            {
              do
              {
                v28 = v27[2];
                v29 = *v28 == v27;
                v27 = v28;
              }

              while (!v29);
            }

            if (*v36 == v16)
            {
              *v36 = v28;
            }

            v30 = v12[4];
            --v12[5];
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v30, v16);
            operator delete(v16);
          }

          else
          {
            v37 = 0;
            v25 = *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>(v36, &v37, v13 + 64);
            v10 = a3 - 1;
            if (!v25)
            {
              operator new();
            }

            *(v25 + 48) = v35;
          }
        }

        v31 = *v6;
        v32 = v6[1];
        *(v31 + 8) = v32;
        *v32 = v31;
        --v12[2];
        boost::detail::shared_count::~shared_count(v6 + 3);
        operator delete(v6);
        v6 = v32;
      }

      ++v9;
      v33 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(a1);
      result = boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v33);
    }

    while (v6 != result && v10 >= v9);
  }

  a1[2] = v6;
  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::operator->(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t boost::scoped_ptr<boost::signals2::detail::foreign_weak_ptr_impl_base>::operator->(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator->", "scoped_ptr.hpp", 105, "px != 0");
  }

  return result;
}

BOOL boost::signals2::detail::group_key_less<int,std::less<int>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2 < *a3;
  if (*a2 == *a3)
  {
    if (*a2 != 1)
    {
      return 0;
    }

    if ((*(a2 + 4) & 1) == 0 || (*(a3 + 4) & 1) == 0)
    {
      __assert_rtn("get", "optional.hpp", 1211, "this->is_initialized()");
    }

    return *(a2 + 8) < *(a3 + 8);
  }

  return v3;
}

void *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!boost::signals2::detail::group_key_less<int,std::less<int>>::operator()(a1 + 24, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!boost::signals2::detail::group_key_less<int,std::less<int>>::operator()(a1 + 24, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t boost::signals2::mutex::unlock(pthread_mutex_t *this)
{
  result = pthread_mutex_unlock(this);
  if (result)
  {
    __assert_rtn("unlock", "lwm_pthreads.hpp", 70, "pthread_mutex_unlock(&m_) == 0");
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void boost::signals2::detail::connection_body_base::disconnect(boost::signals2::detail::connection_body_base *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::garbage_collecting_lock(v3, this);
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(this, v3);
  }

  (*(**(&v4 + 1) + 32))(*(&v4 + 1));
  boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::auto_buffer_destroy(v3);
  v2 = *MEMORY[0x277D85DE8];
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_284A6B340;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_284A6B2C8;
  *(a1 + 8) = &unk_284A6B2F8;
  *(a1 + 24) = &unk_284A6B320;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_284A6B398;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_237458348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_284A6B398;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x2383CBEF0);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_284A6B398;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_284A6B398;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x2383CBEF0);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(void *a1)
{
  *a1 = &unk_284A6B398;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &unk_284A6B398;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x2383CBEF0);
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x2383CBEF0);
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284A6B340;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_284A6B370;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_284A6B398;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_284A6B2C8;
  *(a1 + 8) = &unk_284A6B2F8;
  *(a1 + 24) = &unk_284A6B320;
  return a1;
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(uint64_t a1)
{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::auto_buffer_destroy(a1);
  return a1;
}

void *boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::garbage_collecting_lock(void *a1, uint64_t a2)
{
  a1[20] = 10;
  a1[21] = a1;
  a1[22] = 0;
  a1[23] = a2;
  (*(*a2 + 24))(a2);
  return a1;
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(_DWORD *a1, void *a2)
{
  v2 = a1[7];
  if (!v2)
  {
    __assert_rtn("dec_slot_refcount", "connection.hpp", 124, "m_slot_refcount != 0");
  }

  v3 = v2 - 1;
  a1[7] = v3;
  if (!v3)
  {
    (*(*a1 + 40))(&v14);
    v5 = a2[22];
    if (v5 == a2[20])
    {
      if (v5 < 0xA)
      {
        v11 = "members_.capacity_ >= N";
        v12 = 793;
        v13 = "reserve";
      }

      else
      {
        if (v5 != -1)
        {
          v6 = v5 + 1;
          v7 = 4 * v5;
          if (v7 <= v6)
          {
            v8 = v6;
          }

          else
          {
            v8 = v7;
          }

          if (!(v8 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v11 = "!full()";
        v12 = 767;
        v13 = "unchecked_push_back";
      }

      __assert_rtn(v13, "auto_buffer.hpp", v12, v11);
    }

    v9 = v15;
    v10 = (a2[21] + 16 * v5);
    *v10 = v14;
    v10[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 2, 1u, memory_order_relaxed);
      v5 = a2[22];
    }

    a2[22] = v5 + 1;
    boost::detail::shared_count::~shared_count(&v15);
  }
}

void sub_237458B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,subscriber::SimSlot>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::lock_next_callable(uint64_t *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_58;
    }

    while (1)
    {
      v3 = a1[2];
      v4 = *(v3 + 264);
      if (v4)
      {
        v5 = *(v3 + 264);
        if (-24 * v4 < 0)
        {
          v6 = *(v3 + 256) + 24 * v4;
          v7 = *(v3 + 256);
          do
          {
            v6 -= 24;
            boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::destroy_content(v6);
          }

          while (v6 > v7);
          v5 = *(v3 + 264);
          v1 = *a1;
        }

        *(v3 + 264) = v5 - v4;
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v8 = *(v1 + 16);
      boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::operator*(v8);
      boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::garbage_collecting_lock(&v41, v8);
      v9 = *(*a1 + 16);
      boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::operator->(v9);
      v10 = *(v9 + 32);
      if (v10)
      {
        v11 = a1[2];
        v12 = *v10;
        if (v12 != *(boost::shared_ptr<boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>>::operator*(v10) + 8))
        {
          do
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v13 = *v12 ^ (*v12 >> 31);
            if (v13 == 2)
            {
              v19 = boost::scoped_ptr<boost::signals2::detail::foreign_weak_ptr_impl_base>::operator->(*(v12 + 8));
              (*(*v19 + 16))(&v39);
              v54 = (*(*v39 + 16))(v39);
              LODWORD(v53) = 1;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            else
            {
              if (v13 == 1)
              {
                v14 = *(v12 + 16);
                v39 = 0;
                v40 = v14;
                if (v14)
                {
                  v15 = v14[2];
                  while (v15)
                  {
                    v16 = v15;
                    atomic_compare_exchange_strong_explicit(v14 + 2, &v16, v15 + 1, memory_order_relaxed, memory_order_relaxed);
                    v17 = v16 == v15;
                    v15 = v16;
                    if (v17)
                    {
                      v18 = *(v12 + 8);
                      goto LABEL_25;
                    }
                  }

                  v14 = 0;
                }

                v18 = 0;
LABEL_25:
                v54 = v18;
                v55 = v14;
              }

              else
              {
                if (v13)
                {
                  boost::detail::variant::forced_return<BOOL>();
                }

                v54 = 0;
                v55 = 0;
              }

              v39 = 0;
              v40 = 0;
              LODWORD(v53) = 0;
              boost::detail::shared_count::~shared_count(&v40);
            }

            v20 = *v12 ^ (*v12 >> 31);
            if (v20 == 2)
            {
              v22 = boost::scoped_ptr<boost::signals2::detail::foreign_weak_ptr_impl_base>::operator->(*(v12 + 8));
              if ((*(*v22 + 24))(v22))
              {
                goto LABEL_43;
              }
            }

            else
            {
              if (v20 > 1)
              {
                boost::detail::variant::forced_return<BOOL>();
              }

              v21 = *(v12 + 16);
              if (!v21 || !atomic_load_explicit((v21 + 8), memory_order_acquire))
              {
LABEL_43:
                if (*(v9 + 24) == 1)
                {
                  *(v9 + 24) = 0;
                  boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v9, &v41);
                }

                boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::destroy_content(&v53);
                break;
              }
            }

            v23 = v11[33];
            if (v23 == v11[31])
            {
              if (v23 <= 9)
              {
                v36 = 793;
                v37 = "reserve";
                v38 = "members_.capacity_ >= N";
              }

              else
              {
                if (v23 != -1)
                {
                  v24 = v23 + 1;
                  v25 = 4 * v23;
                  if (v25 <= v24)
                  {
                    v26 = v24;
                  }

                  else
                  {
                    v26 = v25;
                  }

                  if (v26 < 0xAAAAAAAAAAAAAABLL)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v36 = 767;
                v37 = "unchecked_push_back";
                v38 = "!full()";
              }

              __assert_rtn(v37, "auto_buffer.hpp", v36, v38);
            }

            boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::variant(v11[32] + 24 * v23, &v53);
            ++v11[33];
            boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::destroy_content(&v53);
            v12 += 24;
          }

          while (v12 != *(boost::shared_ptr<boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>>::operator*(*(v9 + 32)) + 8));
        }
      }

      v27 = boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::operator->(*(*a1 + 16));
      v28 = a1[2];
      if (*(v27 + 24) == 1)
      {
        ++*(v28 + 280);
      }

      else
      {
        ++*(v28 + 284);
      }

      v29 = boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::operator->(*(*a1 + 16));
      if (*(v29 + 24) != 1 || (v30 = *(v29 + 16)) != 0 && atomic_load_explicit((v30 + 8), memory_order_acquire))
      {
        v31 = 1;
      }

      else
      {
        boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,subscriber::SimSlot>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::set_callable_iter(a1, &v41, *a1);
        v31 = 0;
      }

      (*(**(&v52 + 1) + 32))(*(&v52 + 1));
      boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::auto_buffer_destroy(&v41);
      v1 = *a1;
      v32 = a1[1];
      if (!v31)
      {
        break;
      }

      v1 = *(v1 + 8);
      *a1 = v1;
      if (v1 == v32)
      {
        v1 = v32;
        goto LABEL_58;
      }
    }

    if (v1 == v32)
    {
LABEL_58:
      v33 = a1[3];
      if (v33 != v1)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v34 = *(v33 + 16);
        boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::operator*(v34);
        boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::garbage_collecting_lock(&v41, v34);
        boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,subscriber::SimSlot>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::set_callable_iter(a1, &v41, a1[1]);
        (*(**(&v52 + 1) + 32))(*(&v52 + 1));
        boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::auto_buffer_destroy(&v41);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_237459198(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (v3)
    {
      v4 = -v3;
      do
      {
        boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::destroy_content(v2);
        v2 += 24;
        v4 -= 24;
      }

      while (v4);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x237459208);
}

void sub_2374591CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  boost::signals2::detail::scope_guard_impl_base::safe_execute<boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>>(&a9);
  JUMPOUT(0x2374591F8);
}

void sub_2374591E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,subscriber::SimSlot>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>::set_callable_iter(void *a1, void *a2, uint64_t a3)
{
  a1[3] = a3;
  v3 = a1[2];
  if (a1[1] == a3)
  {
    v7 = *(v3 + 288);
    if (v7)
    {
      boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v7, a2);
    }

    *(v3 + 288) = 0;
  }

  else
  {
    v4 = *(a3 + 16);
    v5 = *(v3 + 288);
    if (v5)
    {
      boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v5, a2);
    }

    *(v3 + 288) = v4;
    if (v4)
    {
      v6 = *(v4 + 28);
      if (!v6)
      {
        __assert_rtn("inc_slot_refcount", "connection.hpp", 114, "m_slot_refcount != 0");
      }

      *(v4 + 28) = v6 + 1;
    }
  }
}

void boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::destroy_content(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 == 1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }

  else
  {
    if (v1)
    {
      boost::detail::variant::forced_return<BOOL>();
    }

    v2 = (a1 + 16);

    boost::detail::shared_count::~shared_count(v2);
  }
}

uint64_t boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::variant(uint64_t a1, uint64_t a2)
{
  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
      v4 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v4;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
      }

      break;
    case 1:
      *(a1 + 8) = (*(**(a2 + 8) + 16))(*(a2 + 8));
      break;
    default:
      boost::detail::variant::forced_return<BOOL>();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(void *a1)
{
  v1 = a1[31];
  if (v1)
  {
    v3 = a1[30];
    if (v3 < 0xA || (v1 == a1 ? (v4 = v3 == 10) : (v4 = 1), !v4 || (v5 = a1[32], v5 > v3)))
    {
      __assert_rtn("auto_buffer_destroy", "auto_buffer.hpp", 255, "is_valid()");
    }

    if (v5 && ((-24 * v5) & 0x8000000000000000) != 0)
    {
      v6 = &v1[3 * v5];
      v7 = a1[31];
      do
      {
        v6 -= 24;
        boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::destroy_content(v6);
      }

      while (v6 > v7);
      v3 = a1[30];
    }

    if (v3 >= 0xB)
    {
      v8 = a1[31];

      operator delete(v8);
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::deallocate(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t boost::signals2::detail::scope_guard_impl_base::safe_execute<boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>>(uint64_t result)
{
  if ((*result & 1) == 0)
  {
    v1 = *(result + 16);
    v2 = *(result + 24);
    v3 = (*(result + 8) + (v2 >> 1));
    if (v2)
    {
      v1 = *(*v3 + v1);
    }

    return v1(v3, *(result + 32), *(result + 40));
  }

  return result;
}

void sub_23745954C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void *boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 284) > *(*a1 + 280))
  {
    v2 = a1[1];
    v3 = a1[2];
    *v12 = 0u;
    memset(v11, 0, sizeof(v11));
    v4 = v2[3];
    boost::shared_ptr<boost::signals2::mutex>::operator*(v4);
    boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::garbage_collecting_lock(v11, v4);
    v5 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(v2);
    if (boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v5) == v3)
    {
      v6 = v2[1];
      if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
      {
        operator new();
      }

      v7 = boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::operator->(v2);
      v10 = *(boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::operator*(v7) + 8);
      boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::nolock_cleanup_connections_from(v2, &v10, 0);
    }

    boost::signals2::mutex::unlock(v12[1]);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::auto_buffer_destroy(v11);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_237459790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    MEMORY[0x2383CBEF0](v12, 0x1020C40A2524F59);
    MEMORY[0x2383CBEF0](v11, 0x20C40DC1BFBCFLL);
    boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&a11);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::shared_ptr<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  boost::detail::shared_count::shared_count<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>(&v2);
}

void sub_2374598F0(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

uint64_t boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    boost::detail::shared_count::~shared_count((result + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  v4 = std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::list(a1, a2);
  std::map<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::group_key_less<int,std::less<int>>,std::allocator<std::pair<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>>>::map[abi:ne200100]((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::push_back();
  }

  return result;
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(atomic_uint **a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 1);
    v4 = *v2;
    *(v4 + 1) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        boost::detail::shared_count::~shared_count(v2 + 3);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::map<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::group_key_less<int,std::less<int>>,std::allocator<std::pair<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>>>::map[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  std::map<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::group_key_less<int,std::less<int>>,std::allocator<std::pair<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,std::__tree_node<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::group_key_less<int,std::less<int>>,std::allocator<std::pair<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,std::__tree_node<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>>>::__emplace_hint_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::pair<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>> const&>(v5, v5 + 1, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>>>::__emplace_hint_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::pair<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>> const&>(void *a1, void *a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !boost::signals2::detail::group_key_less<int,std::less<int>>::operator()((a1 + 3), a5, (a2 + 4)))
  {
    if (!boost::signals2::detail::group_key_less<int,std::less<int>>::operator()((a1 + 3), (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
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
      if (!boost::signals2::detail::group_key_less<int,std::less<int>>::operator()((a1 + 3), a5, (v15 + 4)))
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
      return v12 + 1;
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
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (boost::signals2::detail::group_key_less<int,std::less<int>>::operator()((a1 + 3), (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>(a1, a3, a5);
}

void boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  boost::detail::shared_count::shared_count<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>(&v2);
}

void sub_23745A120(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

uint64_t boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::__tree<std::__value_type<subscriber::SimSlot,BOOL>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,BOOL>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,BOOL>>>::destroy(result + 24, *(result + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,BOOL>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,BOOL>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,BOOL>>>::destroy(v1 + 24, *(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,subscriber::SimSlot>>::~slot_call_iterator_cache(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 288);
  if (v2)
  {
    v6 = 0u;
    memset(v5, 0, sizeof(v5));
    boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::garbage_collecting_lock(v5, v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 288), v5);
    (*(**(&v6 + 1) + 32))(*(&v6 + 1));
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::auto_buffer_destroy(v5);
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23745A318(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void NotifySubscription::NotifySubscription(NotifySubscription *this, const char *a2, queue a3)
{
  v3 = *a3.fObj.fObj;
  *this = a2;
  *(this + 1) = v3;
  *a3.fObj.fObj = 0;
  *(this + 4) = -1;
}

{
  v3 = *a3.fObj.fObj;
  *this = a2;
  *(this + 1) = v3;
  *a3.fObj.fObj = 0;
  *(this + 4) = -1;
}

void NotifySubscription::~NotifySubscription(NotifySubscription *this)
{
  if (!notify_cancel(*(this + 4)))
  {
    *(this + 4) = -1;
  }

  v2 = *(this + 1);
  if (v2)
  {
    dispatch_release(v2);
  }
}

uint64_t NotifySubscription::cancel(NotifySubscription *this)
{
  result = notify_cancel(*(this + 4));
  if (!result)
  {
    *(this + 4) = -1;
  }

  return result;
}

void _GLOBAL__sub_I_ActivationRestResource_cpp()
{
  qword_280CE8708 = 0;
  qword_280CE8700 = 0;
  kDefaultBasebandServiceProvisionedStates = &qword_280CE8700;
  operator new();
}

void DebugAssertionHandler::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_23745A63C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<DebugAssertionHandler> ctu::SharedSynchronizable<DebugAssertionHandler>::make_shared_ptr<DebugAssertionHandler>(DebugAssertionHandler*)::{lambda(DebugAssertionHandler*)#1}::operator() const(DebugAssertionHandler*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void DebugAssertionHandler::init(DebugAssertionHandler *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *this;
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

uint64_t DebugAssertionHandler::DebugAssertionHandler(uint64_t a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v13, "com.apple.CommCenter", "debug");
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v5 = dispatch_queue_create("DebugAssertionHandler", v4);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v5)
  {
    v6 = v5;
    dispatch_retain(v5);
    *(a1 + 24) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v14, &v13);
  MEMORY[0x2383CB6C0](a1 + 32, v14);
  MEMORY[0x2383CB6D0](v14);
  ctu::OsLogContext::~OsLogContext(&v13);
  v7 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "DebugAssertionHandler");
  v8 = *(a1 + 16);
  v10 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  ctu::RestModule::RestModule();
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  return a1;
}

void sub_23745A8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v19 = v17[6];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  MEMORY[0x2383CB6D0](v17 + 4);
  ctu::SharedSynchronizable<HelperRestServer>::~SharedSynchronizable(v17);
  _Unwind_Resume(a1);
}

void DebugAssertionHandler::~DebugAssertionHandler(DebugAssertionHandler *this)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>>>::destroy(*(this + 11));
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CB6D0](this + 32);

  ctu::SharedSynchronizable<HelperRestServer>::~SharedSynchronizable(this);
}

void DebugAssertionHandler::handleAssertionChanged_sync(void *a1, char *a2, char a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v9 = a1 + 11;
  v8 = a1[11];
  if (!v8)
  {
LABEL_7:
    v10 = 0;
    v11 = 1;
    goto LABEL_9;
  }

  v10 = 1;
  while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v8 + 4) & 0x80) != 0)
  {
LABEL_6:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 4, __p) & 0x80) != 0)
  {
    ++v8;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_9:
  v12 = a1 + 10;
  if (v29 < 0)
  {
    operator delete(*__p);
  }

  v13 = a1[4];
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v11)
    {
      if (v14)
      {
        *__p = 136315138;
        *&__p[4] = a2;
        _os_log_impl(&dword_2373EA000, v13, OS_LOG_TYPE_DEFAULT, "#I Assertion[%s]: acquiring.", __p, 0xCu);
      }

      v15 = *(a4 + 24);
      if (v15)
      {
        (*(*v15 + 48))(&v25);
        operator new();
      }

      std::__throw_bad_function_call[abi:ne200100]();
    }

    if (v14)
    {
      *__p = 136315138;
      *&__p[4] = a2;
      _os_log_impl(&dword_2373EA000, v13, OS_LOG_TYPE_DEFAULT, "#I Assertion[%s]: already held; no effect.", __p, 0xCu);
    }
  }

  else
  {
    if (v14)
    {
      *__p = 136315394;
      *&__p[4] = a2;
      v27 = 2048;
      v28 = v10;
      _os_log_impl(&dword_2373EA000, v13, OS_LOG_TYPE_DEFAULT, "#I Assertion[%s]: removed (was held=%zd)", __p, 0x16u);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    v16 = *v9;
    if (*v9)
    {
      v17 = a1 + 11;
      do
      {
        v18 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16 + 4, __p);
        if ((v18 & 0x80u) == 0)
        {
          v17 = v16;
        }

        v16 = *(v16 + ((v18 >> 4) & 8));
      }

      while (v16);
      if (v17 != v9 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v17 + 4) & 0x80) == 0)
      {
        v19 = v17[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          v21 = v17;
          do
          {
            v20 = v21[2];
            v22 = *v20 == v21;
            v21 = v20;
          }

          while (!v22);
        }

        if (*v12 == v17)
        {
          *v12 = v20;
        }

        v23 = a1[11];
        --a1[12];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v23, v17);
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ctu::rest::AssertionHandle>>,0>((v17 + 4));
        operator delete(v17);
      }
    }

    if (v29 < 0)
    {
      operator delete(*__p);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_23745AD58(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<DebugAssertionHandler *,std::shared_ptr<DebugAssertionHandler> ctu::SharedSynchronizable<DebugAssertionHandler>::make_shared_ptr<DebugAssertionHandler>(DebugAssertionHandler*)::{lambda(DebugAssertionHandler *)#1},std::allocator<DebugAssertionHandler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__shared_ptr_pointer<DebugAssertionHandler *,std::shared_ptr<DebugAssertionHandler> ctu::SharedSynchronizable<DebugAssertionHandler>::make_shared_ptr<DebugAssertionHandler>(DebugAssertionHandler*)::{lambda(DebugAssertionHandler *)#1},std::allocator<DebugAssertionHandler>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

DebugAssertionHandler *std::shared_ptr<DebugAssertionHandler> ctu::SharedSynchronizable<DebugAssertionHandler>::make_shared_ptr<DebugAssertionHandler>(DebugAssertionHandler*)::{lambda(DebugAssertionHandler*)#1}::operator() const(DebugAssertionHandler*)::{lambda(void *)#1}::__invoke(DebugAssertionHandler *result)
{
  if (result)
  {
    DebugAssertionHandler::~DebugAssertionHandler(result);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ctu::rest::AssertionHandle>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ctu::rest::AssertionHandle>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ctu::rest::AssertionHandle>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ctu::rest::AssertionHandle>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<DebugAssertionHandler>::execute_wrapped<DebugAssertionHandler::init(void)::$_0>(DebugAssertionHandler::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DebugAssertionHandler::init(void)::$_0,dispatch_queue_s *::default_delete<DebugAssertionHandler::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "/cc/prefs-nb/debug_baseband_hold_online_assertion");
  v8 = &unk_284A6B780;
  v9 = (v2 + 72);
  v10 = v2;
  v11 = &v8;
  ctu::RestModule::observeProperty();
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "/cc/prefs-nb/debug_baseband_force_camp_only_assertion");
  v8 = &unk_284A6B890;
  v9 = (v2 + 73);
  v10 = v2;
  v11 = &v8;
  ctu::RestModule::observeProperty();
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "/cc/prefs-nb/debug_baseband_hold_booted_assertion");
  v8 = &unk_284A6B990;
  v9 = (v2 + 74);
  v10 = v2;
  v11 = &v8;
  ctu::RestModule::observeProperty();
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "/cc/prefs-nb/debug_prevent_baseband_reset_assertion");
  v8 = &unk_284A6BA90;
  v9 = (v2 + 75);
  v10 = v2;
  v11 = &v8;
  ctu::RestModule::observeProperty();
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "/cc/events/dump_state");
  v8 = &unk_284A6BB90;
  v9 = v2;
  v11 = &v8;
  ctu::RestModule::observeEvent();
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  Registry::createRestModuleOneTimeUseConnection(&v8, *(v2 + 40));
  ctu::RestModule::connect();
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  MEMORY[0x2383CBEF0](v1, 0x20C4093837F09);
  result = std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23745B1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  MEMORY[0x2383CBEF0](v18, 0x20C4093837F09);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<void ctu::rest::property_sink_t<debug_baseband_force_online>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A6B780;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void ctu::rest::property_sink_t<debug_baseband_force_online>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::operator()(uint64_t a1, xpc *this)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  *v3 = xpc::dyn_cast_or_default(this, 0);
  v4 = *(a1 + 16);
  v5 = *(v4 + 72);
  v8[0] = &unk_284A6B7F0;
  v8[1] = v4;
  v8[3] = v8;
  DebugAssertionHandler::handleAssertionChanged_sync(v4, "online", v5, v8);
  result = std::__function::__value_func<std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23745B390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void ctu::rest::property_sink_t<debug_baseband_force_online>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A6B7F0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/assertions/baseband_online");
  ctu::rest::AssertionHandle::create();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_23745B4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<void ctu::rest::property_sink_t<debug_baseband_force_camp_only>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A6B890;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void ctu::rest::property_sink_t<debug_baseband_force_camp_only>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::operator()(uint64_t a1, xpc *this)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  *v3 = xpc::dyn_cast_or_default(this, 0);
  v4 = *(a1 + 16);
  v5 = *(v4 + 73);
  v8[0] = &unk_284A6B900;
  v8[1] = v4;
  v8[3] = v8;
  DebugAssertionHandler::handleAssertionChanged_sync(v4, "camp-only", v5, v8);
  result = std::__function::__value_func<std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23745B724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void ctu::rest::property_sink_t<debug_baseband_force_camp_only>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A6B900;
  a2[1] = v2;
  return result;
}

void std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/assertions/baseband_camp_only_assertion");
  ctu::rest::AssertionHandle::create();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_23745B880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#2}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void ctu::rest::property_sink_t<debug_baseband_force_booted>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A6B990;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void ctu::rest::property_sink_t<debug_baseband_force_booted>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::operator()(uint64_t a1, xpc *this)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  *v3 = xpc::dyn_cast_or_default(this, 0);
  v4 = *(a1 + 16);
  v5 = *(v4 + 74);
  v8[0] = &unk_284A6BA00;
  v8[1] = v4;
  v8[3] = v8;
  DebugAssertionHandler::handleAssertionChanged_sync(v4, "booted", v5, v8);
  result = std::__function::__value_func<std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23745BA38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void ctu::rest::property_sink_t<debug_baseband_force_booted>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A6BA00;
  a2[1] = v2;
  return result;
}

void std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/assertions/baseband_booted");
  ctu::rest::AssertionHandle::create();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_23745BB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void ctu::rest::property_sink_t<debug_prevent_baseband_reset>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A6BA90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void ctu::rest::property_sink_t<debug_prevent_baseband_reset>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::operator()(uint64_t a1, xpc *this)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  *v3 = xpc::dyn_cast_or_default(this, 0);
  v4 = *(a1 + 16);
  v5 = *(v4 + 75);
  v8[0] = &unk_284A6BB00;
  v8[1] = v4;
  v8[3] = v8;
  DebugAssertionHandler::handleAssertionChanged_sync(v4, "prevent-bb-reset", v5, v8);
  result = std::__function::__value_func<std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23745BD4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void ctu::rest::property_sink_t<debug_prevent_baseband_reset>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4} &&,std::integral_constant<BOOL,true>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A6BB00;
  a2[1] = v2;
  return result;
}

void std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/assertions/prevent_baseband_reset");
  ctu::rest::AssertionHandle::create();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_23745BEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4}::operator() const(void)::{lambda(void)#1},std::allocator<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#4}::operator() const(void)::{lambda(void)#1}>,std::shared_ptr<ctu::rest::AssertionHandle> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void ctu::rest::event_sink_impl_t<void,ctu::rest::path_generator_t<dump_state>>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#5}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#5} &&)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A6BB90;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void ctu::rest::event_sink_impl_t<void,ctu::rest::path_generator_t<dump_state>>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#5}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#5} &&)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::operator()(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = *(v1 + 80);
  v3 = (v1 + 88);
  memset(&__p, 0, sizeof(__p));
  if (v2 == (v1 + 88))
  {
    v10 = 0;
  }

  else
  {
    if (*(v2 + 55) >= 0)
    {
      v4 = *(v2 + 55);
    }

    else
    {
      v4 = v2[5];
    }

    memset(&v38, 0, sizeof(v38));
    v5 = &v38;
    std::string::basic_string[abi:ne200100](&v38, v4 + 1);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v38.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(v2 + 55) >= 0)
      {
        v6 = v2 + 4;
      }

      else
      {
        v6 = v2[4];
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 61;
    v7 = v2[7];
    if (v7)
    {
      v8 = *(v7 + 68);
      if (v8 == 2)
      {
        v9 = "held";
      }

      else if (v8)
      {
        v9 = "pending";
      }

      else
      {
        v9 = "revoked";
      }
    }

    else
    {
      v9 = "nullptr";
    }

    v11 = strlen(v9);
    v12 = std::string::append(&v38, v9, v11);
    v13 = v12->__r_.__value_.__r.__words[0];
    v36[0] = v12->__r_.__value_.__l.__size_;
    *(v36 + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v13;
    __p.__r_.__value_.__l.__size_ = v36[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v36 + 7);
    *(&__p.__r_.__value_.__s + 23) = v10;
    v14 = v2[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v2[2];
        v16 = *v15 == v2;
        v2 = v15;
      }

      while (!v16);
    }

    if (v15 != v3)
    {
      do
      {
        *(&v38.__r_.__value_.__s + 23) = 1;
        LOWORD(v38.__r_.__value_.__l.__data_) = 44;
        std::string::append(&__p, &v38, 1uLL);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        if (*(v15 + 55) >= 0)
        {
          v17 = *(v15 + 55);
        }

        else
        {
          v17 = v15[5];
        }

        memset(&v38, 0, sizeof(v38));
        std::string::basic_string[abi:ne200100](&v38, v17 + 1);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v38;
        }

        else
        {
          v18 = v38.__r_.__value_.__r.__words[0];
        }

        if (v17)
        {
          if (*(v15 + 55) >= 0)
          {
            v19 = v15 + 4;
          }

          else
          {
            v19 = v15[4];
          }

          memmove(v18, v19, v17);
        }

        *(&v18->__r_.__value_.__l.__data_ + v17) = 61;
        v20 = v15[7];
        if (v20)
        {
          v21 = *(v20 + 68);
          v22 = "held";
          if (v21 != 2)
          {
            if (v21)
            {
              v22 = "pending";
            }

            else
            {
              v22 = "revoked";
            }
          }
        }

        else
        {
          v22 = "nullptr";
        }

        v23 = strlen(v22);
        v24 = std::string::append(&v38, v22, v23);
        v25 = *&v24->__r_.__value_.__l.__data_;
        v37 = v24->__r_.__value_.__r.__words[2];
        *v36 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        if (v37 >= 0)
        {
          v26 = v36;
        }

        else
        {
          v26 = v36[0];
        }

        if (v37 >= 0)
        {
          v27 = HIBYTE(v37);
        }

        else
        {
          v27 = v36[1];
        }

        std::string::append(&__p, v26, v27);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(v36[0]);
        }

        v28 = v15[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v15[2];
            v16 = *v29 == v15;
            v15 = v29;
          }

          while (!v16);
        }

        v15 = v29;
      }

      while (v29 != v3);
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }
  }

  if ((v10 & 0x80u) == 0)
  {
    size = v10;
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    if ((v10 & 0x80) != 0)
    {
      __p.__r_.__value_.__l.__size_ = 6;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = 6;
      p_p = &__p;
    }

    strcpy(p_p, "<none>");
    LOBYTE(v10) = *(&__p.__r_.__value_.__s + 23);
  }

  v32 = *(v1 + 32);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = &__p;
    if ((v10 & 0x80u) != 0)
    {
      v33 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v38.__r_.__value_.__l.__data_) = 136315138;
    *(v38.__r_.__value_.__r.__words + 4) = v33;
    _os_log_impl(&dword_2373EA000, v32, OS_LOG_TYPE_DEFAULT, "#I Assertions: %s", &v38, 0xCu);
    LOBYTE(v10) = *(&__p.__r_.__value_.__s + 23);
  }

  if ((v10 & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_23745C3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void ctu::rest::event_sink_impl_t<void,ctu::rest::path_generator_t<dump_state>>::bind_impl<DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#5}>(ctu::RestModule &,DebugAssertionHandler::init(void)::$_0::operator() const(void)::{lambda(void)#5} &&)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MatchedBundle::dumpState(MatchedBundle *this, os_log_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = this;
    if (*(this + 23) < 0)
    {
      v5 = *this;
    }

    v11 = 136315138;
    v12 = v5;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I   Name: %s", &v11, 0xCu);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (this + 24);
    if (*(this + 47) < 0)
    {
      v6 = *v6;
    }

    v11 = 136446210;
    v12 = v6;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I   ID: %{public}s", &v11, 0xCu);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (this + 48);
    if (*(this + 71) < 0)
    {
      v7 = *v7;
    }

    v11 = 136315138;
    v12 = v7;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I   Matched: %s", &v11, 0xCu);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = (this + 72);
    if (*(this + 95) < 0)
    {
      v8 = *v8;
    }

    v11 = 136446210;
    v12 = v8;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I   Resolved: %{public}s", &v11, 0xCu);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (this + 96);
    if (*(this + 119) < 0)
    {
      v9 = *v9;
    }

    v11 = 136446210;
    v12 = v9;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I   Version: %{public}s", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void LinkedBundle::dumpState(LinkedBundle *this, os_log_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  MatchedBundle::dumpState(this, a2);
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = this + 128;
    if (*(this + 151) < 0)
    {
      v5 = *v5;
    }

    v11 = 136446210;
    v12 = v5;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I   Linking: %{public}s", &v11, 0xCu);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = this + 152;
    if (*(this + 175) < 0)
    {
      v6 = *v6;
    }

    v11 = 136446210;
    v12 = v6;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I   Preference: %{public}s", &v11, 0xCu);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = this + 176;
    if (*(this + 199) < 0)
    {
      v7 = *v7;
    }

    v11 = 136315138;
    v12 = v7;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I   Carrier File: %s", &v11, 0xCu);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 120);
    if (v8 > 2)
    {
      v9 = "???";
    }

    else
    {
      v9 = off_278A30EF8[v8];
    }

    v11 = 136315138;
    v12 = v9;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I   Tech type: %s", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void LinkedBundleInfo::dumpState(const void **this, os_log_t *a2)
{
  LinkedBundle::dumpState(this, a2);
  if (this[25])
  {
    v4 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I   Match Info", buf, 2u);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(&theDict, this + 25);
    v10 = MEMORY[0x277D85DD0];
    v11 = 0x40000000;
    v12 = ___ZZNK16LinkedBundleInfo9dumpStateEPKN3ctu11OsLogLoggerEENK3__0clENS0_2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
    v13 = &__block_descriptor_tmp_1;
    v14 = a2;
    *buf = MEMORY[0x277D85DD0];
    v16 = 0x40000000;
    v17 = ___ZN3ctu2cf8for_eachINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKvEEvPK14__CFDictionaryU13block_pointerFvRKT_RKT0_E_block_invoke;
    v18 = &unk_278A30ED8;
    v19 = &v10;
    context = buf;
    CFDictionaryApplyFunction(theDict, ctu::cf::DictApplyFunction, &context);
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  }

  v6 = this[26];
  v5 = this + 26;
  if (v6)
  {
    v7 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2373EA000, v7, OS_LOG_TYPE_DEFAULT, "#I   Activation Info", buf, 2u);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(&v8, v5);
    v10 = MEMORY[0x277D85DD0];
    v11 = 0x40000000;
    v12 = ___ZZNK16LinkedBundleInfo9dumpStateEPKN3ctu11OsLogLoggerEENK3__0clENS0_2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
    v13 = &__block_descriptor_tmp_1;
    v14 = a2;
    *buf = MEMORY[0x277D85DD0];
    v16 = 0x40000000;
    v17 = ___ZN3ctu2cf8for_eachINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKvEEvPK14__CFDictionaryU13block_pointerFvRKT_RKT0_E_block_invoke;
    v18 = &unk_278A30ED8;
    v19 = &v10;
    context = buf;
    CFDictionaryApplyFunction(v8, ctu::cf::DictApplyFunction, &context);
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v8);
  }
}

void sub_23745CA98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZZNK16LinkedBundleInfo9dumpStateEPKN3ctu11OsLogLoggerEENK3__0clENS0_2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1, uint64_t *a2, CFTypeRef *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = CFGetTypeID(*a3);
  if (v6 == CFNumberGetTypeID())
  {
    v7 = **(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      v9 = *a3;
      *buf = 0;
      ctu::cf::assign(buf, v9, v8);
      v10 = *buf;
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      v11 = "#I     %s = %lld";
      goto LABEL_27;
    }
  }

  else
  {
    v12 = CFGetTypeID(*a3);
    if (v12 == CFStringGetTypeID())
    {
      v13 = **(a1 + 32);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a2 + 23);
        v15 = *a2;
        v16 = *a3;
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        if (v14 >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = v15;
        }

        *__p = *buf;
        v29 = *&buf[16];
        v18 = __p;
        if ((buf[23] & 0x80u) != 0)
        {
          v18 = *buf;
        }

        *buf = 136315394;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = v18;
        _os_log_impl(&dword_2373EA000, v13, OS_LOG_TYPE_DEFAULT, "#I     %s = %s", buf, 0x16u);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v19 = CFGetTypeID(*a3);
      TypeID = CFBooleanGetTypeID();
      v7 = **(a1 + 32);
      v21 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v19 == TypeID)
      {
        if (v21)
        {
          if (*(a2 + 23) < 0)
          {
            a2 = *a2;
          }

          v23 = *a3;
          buf[0] = 0;
          ctu::cf::assign(buf, v23, v22);
          v24 = "false";
          if (buf[0])
          {
            v24 = "true";
          }

          *buf = 136315394;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v24;
          v11 = "#I     %s = %s";
          goto LABEL_27;
        }
      }

      else if (v21)
      {
        if (*(a2 + 23) >= 0)
        {
          v25 = a2;
        }

        else
        {
          v25 = *a2;
        }

        v26 = *a3;
        *buf = 136315394;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        v11 = "#I     %s = %@";
LABEL_27:
        _os_log_impl(&dword_2373EA000, v7, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_23745CD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ctu2cf8for_eachINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKvEEvPK14__CFDictionaryU13block_pointerFvRKT_RKT0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v8 = 0uLL;
  v9 = 0;
  ctu::cf::assign();
  v7 = 0;
  *__p = 0uLL;
  v5 = *(v4 + 16);
  *&v8 = a3;
  v5(v4, __p, &v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23745CE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void ChipInformation::ChipInformation(ChipInformation *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 32) = 0;
}

{
  *this = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 32) = 0;
}

void ChipInformation::clear(ChipInformation *this)
{
  *this = 0;
  *(this + 4) = 0;
  v2 = this + 8;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }

  *v2 = 0;
  *(v2 + 1) = 0;
  v2[24] = 0;
  *(v2 + 2) = 0;
}

void ChipInformation::dumpState(ctu **this, NSObject **a2)
{
  v14 = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  if (*(this + 32) == 1)
  {
    ctu::hex(this[1], (this[2] - this[1]));
  }

  v4 = *a2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *this;
    v6 = __p;
    if (v9 < 0)
    {
      v6 = __p[0];
    }

    *buf = 67109378;
    v11 = v5;
    v12 = 2080;
    v13 = v6;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I fChipId = %x, fSerialNumber = %s", buf, 0x12u);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

const char *analytics::getSwitchStatus(analytics *this, int a2)
{
  v2 = "Off";
  if (a2)
  {
    v2 = "On";
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return "Invalid";
  }
}

const char *entitlements::asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A30F80[a1];
  }
}

{
  if (a1 > 0xA)
  {
    return "???";
  }

  else
  {
    return off_278A30F98[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_278A30FF0[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278A31010[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A31038[a1];
  }
}

const char *entitlements::asString(int a1)
{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "kAddOnPlans";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "kUnknown";
  }
}

{
  if (a1)
  {
    return "kSuccessful";
  }

  else
  {
    return "kUnSuccessful";
  }
}

{
  v1 = "kNotVerified";
  if (a1 == 1)
  {
    v1 = "kVerified";
  }

  if (a1 == 2)
  {
    return "kRetryNotAllowed";
  }

  else
  {
    return v1;
  }
}

const char *entitlements::asString(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return "kIneligibleToTransfer";
  }

  else
  {
    return off_278A31050[(a1 - 1)];
  }
}

{
  if ((a1 - 1) > 0xFu)
  {
    return "kUseWebService";
  }

  else
  {
    return off_278A31090[(a1 - 1)];
  }
}

uint64_t entitlements::convert(__int16 a1)
{
  if (((a1 - 1) & 0xF8) != 0)
  {
    v1 = 16;
  }

  else
  {
    v1 = a1;
  }

  if ((a1 & 0x100) != 0)
  {
    return v1;
  }

  else
  {
    return 16;
  }
}

uint64_t entitlements::TransferAuthorizationResponse::convert(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  if (*(a1 + 480) == 1)
  {
    if (*(a1 + 479) < 0)
    {
      operator delete(*(a1 + 456));
    }

    *(a1 + 480) = 0;
  }

  if (*(a1 + 512) == 1)
  {
    if (*(a1 + 511) < 0)
    {
      operator delete(*(a1 + 488));
    }

    *(a1 + 512) = 0;
  }

  v4 = (a1 + 520);
  if (*(a1 + 544) == 1)
  {
    if (*(a1 + 543) < 0)
    {
      operator delete(*v4);
    }

    *(a1 + 544) = 0;
  }

  if (*(a1 + 576) == 1)
  {
    if (*(a1 + 575) < 0)
    {
      operator delete(*(a1 + 552));
    }

    *(a1 + 576) = 0;
  }

  *a1 = entitlements::convert(*a2) | 0x100;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 552), (a2 + 48));
  if (*(a2 + 44) == 1)
  {
    std::to_string(__str, *(a2 + 40));
    if (*(a1 + 544) == 1)
    {
      if (*(a1 + 543) < 0)
      {
        operator delete(*v4);
      }

      *v4 = *&__str[0].__r_.__value_.__l.__data_;
      *(a1 + 536) = *(&__str[0].__r_.__value_.__l + 2);
    }

    else
    {
      *v4 = *&__str[0].__r_.__value_.__l.__data_;
      *(a1 + 536) = *(&__str[0].__r_.__value_.__l + 2);
      *(a1 + 544) = 1;
    }
  }

  if (*(a2 + 32) == 1)
  {
    if (*(a1 + 224) == 1)
    {
      v5 = *(a1 + 96);
      v6 = *(a1 + 104);
      if (*(a2 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v51, *(a2 + 8), *(a2 + 16));
      }

      else
      {
        v51 = *(a2 + 8);
      }

      v7 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      if (v5 != v6)
      {
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v51.__r_.__value_.__l.__size_;
        }

        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v51;
        }

        else
        {
          v9 = v51.__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v10 = *(v5 + 23);
          v11 = v10;
          if ((v10 & 0x80u) != 0)
          {
            v10 = *(v5 + 8);
          }

          if (size == v10)
          {
            v12 = v11 >= 0 ? v5 : *v5;
            if (!memcmp(v9, v12, size))
            {
              break;
            }
          }

          v5 += 96;
          if (v5 == v6)
          {
            v5 = v6;
            break;
          }
        }
      }

      if (v7 < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (v5 == *(a1 + 104))
      {
        v13 = *(a1 + 96);
        if (*(a2 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v50, *(a2 + 8), *(a2 + 16));
        }

        else
        {
          v50 = *(a2 + 8);
        }

        entitlements::IccidState::IccidState(__str, &v50);
        v23 = *(a1 + 104);
        v22 = *(a1 + 112);
        if ((v22 - v23) >= 96)
        {
          v28 = &v63;
          v29 = v23 - v13;
          if ((v23 - v13) > 95 || (*(a1 + 104) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<entitlements::IccidState>,entitlements::IccidState const*,entitlements::IccidState const*,entitlements::IccidState*>(__str + v29, &v63, *(a1 + 104)), v28 = (__str + v29), v29 >= 1))
          {
            std::vector<entitlements::IccidState>::__move_range(a1 + 96, v13, v23, &v13[4]);
            std::__copy_impl::operator()[abi:ne200100]<entitlements::IccidState const*,entitlements::IccidState const*,entitlements::IccidState*>(__str, v28, v13);
          }
        }

        else
        {
          v24 = *(a1 + 96);
          v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 5) + 1;
          if (v25 > 0x2AAAAAAAAAAAAAALL)
          {
            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          v26 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v24) >> 5);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x155555555555555)
          {
            v27 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v27 = v25;
          }

          v54 = a1 + 96;
          if (v27)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<entitlements::IccidState>>(v27);
          }

          v33 = 32 * ((v13 - v24) >> 5);
          v52.__r_.__value_.__r.__words[0] = 0;
          v52.__r_.__value_.__l.__size_ = v33;
          v52.__r_.__value_.__r.__words[2] = v33;
          v53 = 0;
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external((32 * ((v13 - v24) >> 5)), __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v34 = *&__str[0].__r_.__value_.__l.__data_;
            *(32 * ((v13 - v24) >> 5) + 0x10) = *(&__str[0].__r_.__value_.__l + 2);
            *v33 = v34;
          }

          std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v33 + 24), &__str[1]);
          std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v33 + 56), &v61[1]);
          *(32 * ((v13 - v24) >> 5) + 0x58) = *&v62[24];
          v35 = v33 + 96;
          v36 = v52.__r_.__value_.__l.__size_;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<entitlements::IccidState>,entitlements::IccidState*>(v13, *(a1 + 104), v35);
          v37 = *(a1 + 96);
          v38 = v35 + *(a1 + 104) - v13;
          *(a1 + 104) = v13;
          v39 = v36 + v37 - v13;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<entitlements::IccidState>,entitlements::IccidState*>(v37, v13, v39);
          v40 = *(a1 + 96);
          *(a1 + 96) = v39;
          *(a1 + 104) = v38;
          v41 = *(a1 + 112);
          *(a1 + 112) = v53;
          v52.__r_.__value_.__r.__words[2] = v40;
          v53 = v41;
          v52.__r_.__value_.__r.__words[0] = v40;
          v52.__r_.__value_.__l.__size_ = v40;
          std::__split_buffer<entitlements::IccidState>::~__split_buffer(&v52);
        }

        if (v62[16] == 1 && (v62[15] & 0x80000000) != 0)
        {
          operator delete(v61[1]);
        }

        if (LOBYTE(v61[0]) == 1 && SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[1].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          v32 = v50.__r_.__value_.__r.__words[0];
          goto LABEL_123;
        }
      }
    }

    else
    {
      v66 = 0;
      *v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      *v61 = 0u;
      memset(v62, 0, sizeof(v62));
      memset(__str, 0, sizeof(__str));
      if (*(a2 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v49, *(a2 + 8), *(a2 + 16));
      }

      else
      {
        v49 = *(a2 + 8);
      }

      entitlements::IccidState::IccidState(&v52, &v49);
      std::vector<entitlements::IccidState>::__assign_with_size[abi:ne200100]<entitlements::IccidState const*,entitlements::IccidState const*>(&__str[1], &v52, __str);
      if (v59 == 1 && v58 < 0)
      {
        operator delete(__p);
      }

      if (v56 == 1 && v55 < 0)
      {
        operator delete(v53);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      v14 = (a1 + 72);
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        std::string::operator=((a1 + 72), __str);
        if (v14 != __str)
        {
          v15 = *(a1 + 96);
          v16 = *&__str[1].__r_.__value_.__l.__data_;
          v17 = __str[1].__r_.__value_.__l.__size_ - __str[1].__r_.__value_.__r.__words[0];
          if (*(a1 + 112) - v15 < __str[1].__r_.__value_.__l.__size_ - __str[1].__r_.__value_.__r.__words[0])
          {
            v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 5);
            std::vector<entitlements::IccidState>::__vdeallocate((a1 + 96));
            if (v18 <= 0x2AAAAAAAAAAAAAALL)
            {
              v19 = 0x5555555555555556 * ((*(a1 + 112) - *(a1 + 96)) >> 5);
              if (v19 <= v18)
              {
                v19 = v18;
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - *(a1 + 96)) >> 5) >= 0x155555555555555)
              {
                v20 = 0x2AAAAAAAAAAAAAALL;
              }

              else
              {
                v20 = v19;
              }

              std::vector<entitlements::IccidState>::__vallocate[abi:ne200100](a1 + 96, v20);
            }

            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          v21 = *(a1 + 104) - v15;
          if (v21 >= v17)
          {
            v30 = std::__copy_impl::operator()[abi:ne200100]<entitlements::IccidState const*,entitlements::IccidState const*,entitlements::IccidState*>(__str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_, v15);
            for (i = *(a1 + 104); i != v30; std::allocator_traits<std::allocator<entitlements::IccidState>>::destroy[abi:ne200100]<entitlements::IccidState,void,0>(i))
            {
              i -= 96;
            }

            *(a1 + 104) = v30;
          }

          else
          {
            std::__copy_impl::operator()[abi:ne200100]<entitlements::IccidState const*,entitlements::IccidState const*,entitlements::IccidState*>(__str[1].__r_.__value_.__l.__data_, (__str[1].__r_.__value_.__r.__words[0] + v21), v15);
            *(a1 + 104) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<entitlements::IccidState>,entitlements::IccidState*,entitlements::IccidState*,entitlements::IccidState*>(v16 + v21, *(&v16 + 1), *(a1 + 104));
          }
        }

        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 120), v61);
        *(a1 + 152) = *&v62[16];
        *(a1 + 156) = v62[20];
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 160), &v62[24]);
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 192), &v64[1]);
      }

      else
      {
        if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((a1 + 72), __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
        }

        else
        {
          *&v14->__r_.__value_.__l.__data_ = *&__str[0].__r_.__value_.__l.__data_;
          *(a1 + 88) = *(&__str[0].__r_.__value_.__l + 2);
        }

        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        v52.__r_.__value_.__r.__words[0] = a1 + 96;
        if (__str[1].__r_.__value_.__l.__size_ != __str[1].__r_.__value_.__r.__words[0])
        {
          v52.__r_.__value_.__l.__size_ = 0;
          std::vector<entitlements::IccidState>::__vallocate[abi:ne200100](a1 + 96, 0xAAAAAAAAAAAAAAABLL * ((__str[1].__r_.__value_.__l.__size_ - __str[1].__r_.__value_.__r.__words[0]) >> 5));
        }

        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 120), v61);
        *(a1 + 152) = *&v62[16];
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 160), &v62[24]);
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 192), &v64[1]);
        *(a1 + 224) = 1;
      }

      if (v66 == 1 && SHIBYTE(v65) < 0)
      {
        operator delete(v64[1]);
      }

      if (LOBYTE(v64[0]) == 1 && SHIBYTE(v63) < 0)
      {
        operator delete(*&v62[24]);
      }

      if (v62[8] == 1 && (v62[7] & 0x80000000) != 0)
      {
        operator delete(v61[0]);
      }

      v52.__r_.__value_.__r.__words[0] = &__str[1];
      std::vector<entitlements::IccidState>::__destroy_vector::operator()[abi:ne200100](&v52);
      if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
      {
        v32 = __str[0].__r_.__value_.__r.__words[0];
LABEL_123:
        operator delete(v32);
      }
    }
  }

  if (*(a2 + 176) == 1)
  {
    if (*(a2 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(__str, *(a2 + 80), *(a2 + 88));
    }

    else
    {
      __str[0] = *(a2 + 80);
    }

    if (*(a2 + 127) < 0)
    {
      std::string::__init_copy_ctor_external(&__str[1], *(a2 + 104), *(a2 + 112));
    }

    else
    {
      __str[1] = *(a2 + 104);
    }

    if (*(a2 + 151) < 0)
    {
      std::string::__init_copy_ctor_external(v61, *(a2 + 128), *(a2 + 136));
    }

    else
    {
      *v61 = *(a2 + 128);
      *v62 = *(a2 + 144);
    }

    if (*(a2 + 175) < 0)
    {
      std::string::__init_copy_ctor_external(&v62[8], *(a2 + 152), *(a2 + 160));
    }

    else
    {
      *&v62[8] = *(a2 + 152);
      *&v62[24] = *(a2 + 168);
    }

    v42 = (a1 + 264);
    if (*(a1 + 360) == 1)
    {
      if (*(a1 + 287) < 0)
      {
        operator delete(*v42);
      }

      *v42 = *&__str[0].__r_.__value_.__l.__data_;
      *(a1 + 280) = *(&__str[0].__r_.__value_.__l + 2);
      *(&__str[0].__r_.__value_.__s + 23) = 0;
      __str[0].__r_.__value_.__s.__data_[0] = 0;
      if (*(a1 + 311) < 0)
      {
        operator delete(*(a1 + 288));
      }

      *(a1 + 288) = __str[1];
      *(&__str[1].__r_.__value_.__s + 23) = 0;
      __str[1].__r_.__value_.__s.__data_[0] = 0;
      v43 = (a1 + 312);
      if (*(a1 + 335) < 0)
      {
        operator delete(*v43);
      }

      *v43 = *v61;
      *(a1 + 328) = *v62;
      v62[7] = 0;
      LOBYTE(v61[0]) = 0;
      if (*(a1 + 359) < 0)
      {
        operator delete(*(a1 + 336));
      }

      *(a1 + 336) = *&v62[8];
      *(a1 + 352) = *&v62[24];
      v62[31] = 0;
      v62[8] = 0;
    }

    else
    {
      *v42 = *&__str[0].__r_.__value_.__l.__data_;
      *(a1 + 280) = *(&__str[0].__r_.__value_.__l + 2);
      memset(__str, 0, 24);
      *(a1 + 288) = __str[1];
      memset(&__str[1], 0, sizeof(std::string));
      *(a1 + 328) = *v62;
      *(a1 + 312) = *v61;
      v61[1] = 0;
      *v62 = 0;
      v61[0] = 0;
      v44 = *&v62[8];
      *(a1 + 352) = *&v62[24];
      *(a1 + 336) = v44;
      memset(&v62[8], 0, 24);
      *(a1 + 360) = 1;
    }

    if ((v62[7] & 0x80000000) != 0)
    {
      operator delete(v61[0]);
    }

    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }
  }

  if (*(a2 + 264) == 1)
  {
    if (*(a2 + 207) < 0)
    {
      std::string::__init_copy_ctor_external(__str, *(a2 + 184), *(a2 + 192));
    }

    else
    {
      __str[0] = *(a2 + 184);
    }

    if (*(a2 + 231) < 0)
    {
      std::string::__init_copy_ctor_external(&__str[1], *(a2 + 208), *(a2 + 216));
    }

    else
    {
      __str[1] = *(a2 + 208);
    }

    if (*(a2 + 255) < 0)
    {
      std::string::__init_copy_ctor_external(v61, *(a2 + 232), *(a2 + 240));
    }

    else
    {
      *v61 = *(a2 + 232);
      *v62 = *(a2 + 248);
    }

    v45 = *(a2 + 256);
    v62[8] = v45;
    if (*(a1 + 448) == 1)
    {
      if (*(a1 + 391) < 0)
      {
        operator delete(*(a1 + 368));
      }

      *(a1 + 368) = __str[0];
      *(&__str[0].__r_.__value_.__s + 23) = 0;
      __str[0].__r_.__value_.__s.__data_[0] = 0;
      v46 = (a1 + 392);
      if (*(a1 + 415) < 0)
      {
        operator delete(*v46);
      }

      *v46 = *&__str[1].__r_.__value_.__l.__data_;
      *(a1 + 408) = *(&__str[1].__r_.__value_.__l + 2);
      *(&__str[1].__r_.__value_.__s + 23) = 0;
      __str[1].__r_.__value_.__s.__data_[0] = 0;
      if (*(a1 + 439) < 0)
      {
        operator delete(*(a1 + 416));
      }

      *(a1 + 416) = *v61;
      *(a1 + 432) = *v62;
      v62[7] = 0;
      LOBYTE(v61[0]) = 0;
      *(a1 + 440) = v62[8];
    }

    else
    {
      *(a1 + 368) = __str[0];
      memset(__str, 0, 24);
      *(a1 + 392) = __str[1];
      memset(&__str[1], 0, sizeof(std::string));
      *(a1 + 432) = *v62;
      *(a1 + 416) = *v61;
      v61[1] = 0;
      *v62 = 0;
      v61[0] = 0;
      *(a1 + 440) = v45;
      *(a1 + 448) = 1;
    }

    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }
  }

  v47 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23745DEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  std::__split_buffer<entitlements::IccidState>::~__split_buffer(&a27);
  entitlements::IccidState::~IccidState(&a39);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void entitlements::IccidState::~IccidState(void **this)
{
  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

entitlements::TransferSIMResponse *entitlements::TransferSIMResponse::convert(entitlements::TransferSIMResponse *this, const entitlements::TransferSIMViaWebServiceResponse *a2)
{
  v27.__r_.__value_.__l.__size_ = *MEMORY[0x277D85DE8];
  if (*(this + 121) == 1)
  {
    *(this + 121) = 0;
  }

  if (*(this + 48) == 1)
  {
    if (*(this + 47) < 0)
    {
      operator delete(*(this + 3));
    }

    *(this + 48) = 0;
  }

  if (*(this + 80) == 1)
  {
    if (*(this + 79) < 0)
    {
      operator delete(*(this + 7));
    }

    *(this + 80) = 0;
  }

  if (*a2 == 1)
  {
    if (*(a2 + 64) != 1)
    {
      goto LABEL_27;
    }

    v4 = *(a2 + 63);
    v5 = v4;
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 6);
    }

    if (!v4)
    {
      goto LABEL_27;
    }

    v6 = a2 + 40;
    if (v5 < 0)
    {
      if (*(a2 + 6) != 6)
      {
LABEL_27:
        v10 = 0;
        goto LABEL_28;
      }

      v6 = *v6;
    }

    else if (v5 != 6)
    {
      goto LABEL_27;
    }

    v7 = *v6;
    v8 = *(v6 + 2);
    v10 = v7 == 1769235297 && v8 == 25974;
LABEL_28:
    if (*(a2 + 32) == 1)
    {
      if (*(a2 + 31) < 0)
      {
        v11 = *(a2 + 2);
        if (v11)
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          *v18 = 0u;
          memset(v16, 0, sizeof(v16));
          std::string::__init_copy_ctor_external(&__p, *(a2 + 1), v11);
          goto LABEL_34;
        }
      }

      else if (*(a2 + 31))
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        *v18 = 0u;
        memset(v16, 0, sizeof(v16));
        __p = *(a2 + 8);
LABEL_34:
        entitlements::IccidState::IccidState(v16, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        WORD4(v20) = v10 | 0x100;
        if ((v16[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&__str, *v16, *&v16[8]);
        }

        else
        {
          __str = *v16;
        }

        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v22, &v16[24]);
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v24, &v18[1]);
        v26 = WORD4(v20);
        std::vector<entitlements::IccidState>::__assign_with_size[abi:ne200100]<entitlements::IccidState const*,entitlements::IccidState const*>(this, &__str, &v27);
        if (v25 == 1 && SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (v23 == 1 && SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v20 == 1 && SHIBYTE(v19) < 0)
        {
          operator delete(v18[1]);
        }

        if (LOBYTE(v18[0]) == 1 && SHIBYTE(v17) < 0)
        {
          operator delete(*&v16[24]);
        }

        if ((v16[23] & 0x80000000) != 0)
        {
          operator delete(*v16);
        }
      }
    }

    if (*(a2 + 96) == 1)
    {
      v12 = *(a2 + 95);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 10);
      }

      if (v12)
      {
        std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>((this + 88), a2 + 3);
      }
    }

    if (*(a2 + 105) == 1)
    {
      *(this + 60) = *(a2 + 104) | 0x100;
    }

    std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>(this + 1, (a2 + 136));
    std::string::operator=((this + 128), (a2 + 112));
  }

  v13 = *MEMORY[0x277D85DE8];
  return this;
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void std::vector<entitlements::IccidState>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v9 = (a2 + v6 - a4);
    v10 = *(a1 + 8);
    do
    {
      v11 = std::construct_at[abi:ne200100]<entitlements::IccidState,entitlements::IccidState,entitlements::IccidState*>(v10, v9);
      v9 += 6;
      v10 = v11 + 96;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v10;
  if (v6 != a4)
  {
    v12 = 0;
    v13 = a4 - v6;
    do
    {
      v14 = (v6 + v12 - 96);
      if (*(v6 + v12 - 73) < 0)
      {
        operator delete(*v14);
      }

      v15 = (v7 + v12 - 96);
      v16 = *v15;
      *(v6 + v12 - 80) = *(v7 + v12 - 80);
      *v14 = v16;
      *(v7 + v12 - 73) = 0;
      *v15 = 0;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v6 + v12 - 72, (v7 + v12 - 72));
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v6 + v12 - 40, (v7 + v12 - 40));
      *(v6 + v12 - 8) = *(v7 + v12 - 8);
      v12 -= 96;
    }

    while (v13 != v12);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<entitlements::IccidState>,entitlements::IccidState const*,entitlements::IccidState const*,entitlements::IccidState*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      v8 = (a1 + v6);
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v7, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        v7->__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v7->__r_.__value_.__l.__data_ = v9;
      }

      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a3 + v6 + 24), (a1 + v6 + 24));
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a3 + v6 + 56), (a1 + v6 + 56));
      *(a3 + v6 + 88) = *(a1 + v6 + 88);
      v6 += 96;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_23745E738(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 96;
    v5 = -v2;
    do
    {
      std::allocator_traits<std::allocator<entitlements::IccidState>>::destroy[abi:ne200100]<entitlements::IccidState,void,0>(v4);
      v4 -= 96;
      v5 += 96;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator_traits<std::allocator<entitlements::IccidState>>::destroy[abi:ne200100]<entitlements::IccidState,void,0>(uint64_t a1)
{
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::construct_at[abi:ne200100]<entitlements::IccidState,entitlements::IccidState,entitlements::IccidState*>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(result + 40) = *(a2 + 5);
    *(result + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(result + 48) = 1;
  }

  *(result + 56) = 0;
  *(result + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v4 = *(a2 + 56);
    *(result + 72) = *(a2 + 9);
    *(result + 56) = v4;
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(a2 + 7) = 0;
    *(result + 80) = 1;
  }

  *(result + 88) = *(a2 + 44);
  return result;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<entitlements::IccidState const*,entitlements::IccidState const*,entitlements::IccidState*>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(this + 1, v5 + 1);
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 56), (v5 + 56));
      LOWORD(this[3].__r_.__value_.__r.__words[2]) = v5[3].__r_.__value_.__r.__words[2];
      this += 4;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<entitlements::IccidState>>(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<entitlements::IccidState>,entitlements::IccidState*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      std::construct_at[abi:ne200100]<entitlements::IccidState,entitlements::IccidState,entitlements::IccidState*>(a3, v6);
      v6 += 6;
      a3 += 96;
    }

    while (v6 != a2);
    do
    {
      std::allocator_traits<std::allocator<entitlements::IccidState>>::destroy[abi:ne200100]<entitlements::IccidState,void,0>(v5);
      v5 += 96;
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<entitlements::IccidState>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::allocator_traits<std::allocator<entitlements::IccidState>>::destroy[abi:ne200100]<entitlements::IccidState,void,0>(i - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *entitlements::IccidState::IccidState(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  this[1].__r_.__value_.__s.__data_[0] = 0;
  this[2].__r_.__value_.__s.__data_[0] = 0;
  this[2].__r_.__value_.__s.__data_[8] = 0;
  this[3].__r_.__value_.__s.__data_[8] = 0;
  LOWORD(this[3].__r_.__value_.__r.__words[2]) = 0;
  return this;
}

void std::vector<entitlements::IccidState>::__assign_with_size[abi:ne200100]<entitlements::IccidState const*,entitlements::IccidState const*>(uint64_t a1, std::string *__str, std::string *a3)
{
  v6 = *a1;
  if (*(a1 + 16) == *a1)
  {
    std::vector<entitlements::IccidState>::__vdeallocate(a1);
    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
    {
      v10 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<entitlements::IccidState>::__vallocate[abi:ne200100](a1, v10);
  }

  if (*(a1 + 8) == v6)
  {
    std::__copy_impl::operator()[abi:ne200100]<entitlements::IccidState const*,entitlements::IccidState const*,entitlements::IccidState*>(__str, __str, v6);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<entitlements::IccidState>,entitlements::IccidState const*,entitlements::IccidState const*,entitlements::IccidState*>(__str, a3, *(a1 + 8));
  }

  else
  {
    v7 = std::__copy_impl::operator()[abi:ne200100]<entitlements::IccidState const*,entitlements::IccidState const*,entitlements::IccidState*>(__str, a3, v6);
    for (i = *(a1 + 8); i != v7; std::allocator_traits<std::allocator<entitlements::IccidState>>::destroy[abi:ne200100]<entitlements::IccidState,void,0>(i))
    {
      i -= 96;
    }

    *(a1 + 8) = v7;
  }
}

void std::vector<entitlements::IccidState>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 96;
        std::allocator_traits<std::allocator<entitlements::IccidState>>::destroy[abi:ne200100]<entitlements::IccidState,void,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<entitlements::IccidState>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<entitlements::IccidState>>(a2);
  }

  std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<entitlements::IccidState>,entitlements::IccidState*,entitlements::IccidState*,entitlements::IccidState*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      v8 = (a1 + v6);
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v7, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        v7->__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v7->__r_.__value_.__l.__data_ = v9;
      }

      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a3 + v6 + 24), (a1 + v6 + 24));
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a3 + v6 + 56), (a1 + v6 + 56));
      *(a3 + v6 + 88) = *(a1 + v6 + 88);
      v6 += 96;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_23745ED40(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 96;
    v5 = -v2;
    do
    {
      std::allocator_traits<std::allocator<entitlements::IccidState>>::destroy[abi:ne200100]<entitlements::IccidState,void,0>(v4);
      v4 -= 96;
      v5 += 96;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<entitlements::IccidState>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 96;
        std::allocator_traits<std::allocator<entitlements::IccidState>>::destroy[abi:ne200100]<entitlements::IccidState,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_23745EE68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void entitlements::TransferTargetDevice::~TransferTargetDevice(void **this)
{
  if (*(this + 144) == 1 && *(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 112) == 1 && *(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 72) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this + 3;
  std::vector<entitlements::IccidState>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void EmergencyMode::EmergencyMode(EmergencyMode *this)
{
  *this = xmmword_2374B22A0;
  *(this + 8) = 0;
}

{
  *this = xmmword_2374B22A0;
  *(this + 8) = 0;
}

uint64_t EmergencyMode::EmergencyMode(uint64_t result, int a2, int a3, int a4, int a5, char a6, char a7)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = a6;
  *(result + 17) = a7;
  return result;
}

{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = a6;
  *(result + 17) = a7;
  return result;
}

__n128 EmergencyMode::operator=(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getSingleSlotForEmergency(__int128 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v8 = *a1;
    if (v3 != 4)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = v3 >> 2;
    v6 = *a1;
    do
    {
      if (!*v6++)
      {
        ++v4;
      }
    }

    while (v6 != v2);
    if (v5 - v4 != 1)
    {
      return 0;
    }

    v8 = *a1;
    v9 = *a1;
    while (*v9 != 1)
    {
      ++v9;
      ++v8;
      if (v9 == v2)
      {
        v8 = *(a1 + 1);
        break;
      }
    }

    if (v2 != v8)
    {
      goto LABEL_18;
    }

    v8 = *a1;
    v10 = *a1;
    while (*v10 != 3)
    {
      ++v10;
      ++v8;
      if (v10 == v2)
      {
        v8 = *(a1 + 1);
        break;
      }
    }
  }

  if (v2 == v8)
  {
    return 0;
  }

LABEL_18:
  v11 = (v8 - *a1) >> 2;
  if (v11)
  {
    return 2 * (v11 == 1);
  }

  else
  {
    return 1;
  }
}

BOOL GestaltUtilityInterface::isIPhone(GestaltUtilityInterface *this)
{
  (*(*this + 208))(v12);
  v1 = v13;
  v3 = v12[0];
  v2 = v12[1];
  if (v13 >= 0)
  {
    v4 = v12;
  }

  else
  {
    v4 = v12[0];
  }

  if (v13 >= 0)
  {
    v2 = v13;
  }

  v5 = v4 + v2;
  if (v2 >= 6)
  {
    v6 = v4;
    do
    {
      v7 = memchr(v6, 105, v2 - 5);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      if (*v7 == 1869107305 && *(v7 + 2) == 25966)
      {
        goto LABEL_15;
      }

      v6 = v7 + 1;
      v2 = v5 - (v8 + 1);
    }

    while (v2 > 5);
  }

  v8 = v5;
LABEL_15:
  if (v1 < 0)
  {
    operator delete(v3);
  }

  return v8 != v5 && v8 - v4 != -1;
}

BOOL GestaltUtilityInterface::isIPad(GestaltUtilityInterface *this)
{
  (*(*this + 208))(v11);
  v1 = v12;
  v3 = v11[0];
  v2 = v11[1];
  if (v12 >= 0)
  {
    v4 = v11;
  }

  else
  {
    v4 = v11[0];
  }

  if (v12 >= 0)
  {
    v2 = v12;
  }

  v5 = v4 + v2;
  if (v2 >= 4)
  {
    v6 = v4;
    do
    {
      v7 = memchr(v6, 105, v2 - 3);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      if (*v7 == 1684099177)
      {
        goto LABEL_12;
      }

      v6 = v7 + 1;
      v2 = v5 - (v8 + 1);
    }

    while (v2 > 3);
  }

  v8 = v5;
LABEL_12:
  if (v1 < 0)
  {
    operator delete(v3);
  }

  return v8 != v5 && v8 - v4 != -1;
}

BOOL GestaltUtilityInterface::isWatch(GestaltUtilityInterface *this)
{
  (*(*this + 208))(v12);
  v1 = v13;
  v3 = v12[0];
  v2 = v12[1];
  if (v13 >= 0)
  {
    v4 = v12;
  }

  else
  {
    v4 = v12[0];
  }

  if (v13 >= 0)
  {
    v2 = v13;
  }

  v5 = v4 + v2;
  if (v2 >= 5)
  {
    v6 = v4;
    do
    {
      v7 = memchr(v6, 87, v2 - 4);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      if (*v7 == 1668571479 && v7[4] == 104)
      {
        goto LABEL_15;
      }

      v6 = v7 + 1;
      v2 = v5 - (v8 + 1);
    }

    while (v2 > 4);
  }

  v8 = v5;
LABEL_15:
  if (v1 < 0)
  {
    operator delete(v3);
  }

  return v8 != v5 && v8 - v4 != -1;
}

BOOL GestaltUtilityInterface::isMac(GestaltUtilityInterface *this)
{
  (*(*this + 208))(v12);
  v1 = v13;
  v3 = v12[0];
  v2 = v12[1];
  if (v13 >= 0)
  {
    v4 = v12;
  }

  else
  {
    v4 = v12[0];
  }

  if (v13 >= 0)
  {
    v2 = v13;
  }

  v5 = v4 + v2;
  if (v2 >= 3)
  {
    v6 = v4;
    do
    {
      v7 = memchr(v6, 77, v2 - 2);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      if (*v7 == 24909 && v7[2] == 99)
      {
        goto LABEL_15;
      }

      v6 = v7 + 1;
      v2 = v5 - (v8 + 1);
    }

    while (v2 > 2);
  }

  v8 = v5;
LABEL_15:
  if (v1 < 0)
  {
    operator delete(v3);
  }

  return v8 != v5 && v8 - v4 != -1;
}

void sub_23745F898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void write_rest_value(void *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v3 = a1 + 1;
  v2 = *a1;
  v39[0] = 0;
  v39[1] = 0;
  v38 = v39;
  if (v2 != a1 + 1)
  {
    do
    {
      v4 = *(v2 + 8);
      v5 = *(v2 + 9);
      v44 = 0;
      v6 = v39;
      if (v38 == v39)
      {
        goto LABEL_19;
      }

      v7 = v39[0];
      v8 = v39;
      if (v39[0])
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v10 = *v6 == v8;
          v8 = v6;
        }

        while (v10);
      }

      v9 = *(v6 + 8);
      v10 = v9 == v4;
      if (v9 >= v4)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v12 = *(v6 + 9);
        v13 = v12 == v5;
        v11 = v12 >= v5 ? 1 : -1;
        if (v13)
        {
          v11 = 0;
        }
      }

      if (v11 < 0)
      {
LABEL_19:
        if (v39[0])
        {
          v44 = v6;
          v14 = (v6 + 1);
        }

        else
        {
          v44 = v39;
          v14 = v39;
        }
      }

      else
      {
        v14 = std::__tree<std::__value_type<std::pair<Technology,Type>,double>,std::__map_value_compare<std::pair<Technology,Type>,std::__value_type<std::pair<Technology,Type>,double>,std::less<std::pair<Technology,Type>>,true>,std::allocator<std::__value_type<std::pair<Technology,Type>,double>>>::__find_equal<std::pair<Technology,Type>>(&v38, &v44, v4, v5);
      }

      if (!*v14)
      {
        operator new();
      }

      v15 = v2[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v2[2];
          v10 = *v16 == v2;
          v2 = v16;
        }

        while (!v10);
      }

      v2 = v16;
    }

    while (v16 != v3);
  }

  v17 = xpc_array_create(0, 0);
  if (v17 || (v17 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v17) == MEMORY[0x277D86440])
    {
      xpc_retain(v17);
      v18 = v17;
    }

    else
    {
      v18 = xpc_null_create();
    }
  }

  else
  {
    v18 = xpc_null_create();
    v17 = 0;
  }

  xpc_release(v17);
  v19 = v38;
  if (v38 != v39)
  {
    v20 = MEMORY[0x277D86468];
    do
    {
      v21 = xpc_dictionary_create(0, 0, 0);
      v22 = v21;
      if (v21)
      {
        v41 = v21;
      }

      else
      {
        v22 = xpc_null_create();
        v41 = v22;
        if (!v22)
        {
          v23 = xpc_null_create();
          v22 = 0;
          goto LABEL_45;
        }
      }

      if (MEMORY[0x2383CC760](v22) == v20)
      {
        xpc_retain(v22);
        goto LABEL_46;
      }

      v23 = xpc_null_create();
LABEL_45:
      v41 = v23;
LABEL_46:
      xpc_release(v22);
      v24 = xpc_dictionary_create(0, 0, 0);
      v25 = v24;
      if (v24)
      {
        v48 = v24;
      }

      else
      {
        v25 = xpc_null_create();
        v48 = v25;
        if (!v25)
        {
          v26 = xpc_null_create();
          v25 = 0;
          goto LABEL_53;
        }
      }

      if (MEMORY[0x2383CC760](v25) != v20)
      {
        v26 = xpc_null_create();
LABEL_53:
        v48 = v26;
        goto LABEL_54;
      }

      xpc_retain(v25);
LABEL_54:
      xpc_release(v25);
      v28 = *(v19 + 8);
      v29 = "???";
      if (v28 <= 4)
      {
        v29 = off_278A31268[v28];
      }

      ctu::rest::detail::write_enum_string_value(&v46, v28, v29, v27);
      v44 = &v48;
      v45 = "first";
      xpc::dict::object_proxy::operator=(&v44, &v46, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v46);
      v46 = 0;
      v30 = *(v19 + 9);
      v31 = v30;
      v32 = asString(v30);
      ctu::rest::detail::write_enum_string_value(&v42, v31, v32, v33);
      v44 = &v48;
      v45 = "second";
      xpc::dict::object_proxy::operator=(&v44, &v42, &v43);
      xpc_release(v43);
      v43 = 0;
      xpc_release(v42);
      v42 = 0;
      v40 = v48;
      if (v48)
      {
        xpc_retain(v48);
      }

      else
      {
        v40 = xpc_null_create();
      }

      xpc_release(v48);
      v44 = &v41;
      v45 = "first";
      xpc::dict::object_proxy::operator=(&v44, &v40, &v48);
      xpc_release(v48);
      v48 = 0;
      xpc_release(v40);
      v40 = 0;
      v46 = xpc_double_create(*(v19 + 5));
      if (!v46)
      {
        v46 = xpc_null_create();
      }

      v44 = &v41;
      v45 = "second";
      xpc::dict::object_proxy::operator=(&v44, &v46, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v46);
      v46 = 0;
      v34 = v41;
      if (v41)
      {
        xpc_retain(v41);
      }

      else
      {
        v34 = xpc_null_create();
      }

      xpc_release(v41);
      xpc_array_append_value(v18, v34);
      xpc_release(v34);
      v35 = v19[1];
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
          v36 = v19[2];
          v10 = *v36 == v19;
          v19 = v36;
        }

        while (!v10);
      }

      v19 = v36;
    }

    while (v36 != v39);
  }

  *a2 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v18);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(v39[0]);
}

{
  v4 = 23 * a1[2] + 1;
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<char>::vector[abi:ne200100](&__p, v4);
  *__p = a1[2];
  v14 = 1;
  v7 = *a1;
  v5 = a1 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = *(v6 + 8);
      v9 = v14++;
      *(__p + v9) = v8;
      v10 = v6[1];
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
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v5);
  }

  v13 = xpc_data_create(__p, v16 - __p);
  *a2 = v13;
  if (!v13)
  {
    *a2 = xpc_null_create();
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_23746042C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15, uint64_t a16, xpc_object_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20, xpc_object_t object, uint64_t a22, xpc_object_t a23, xpc_object_t a24)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v24);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a10);
  _Unwind_Resume(a1);
}

void sub_2374608A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::pair<Technology,Type>,double>,std::__map_value_compare<std::pair<Technology,Type>,std::__value_type<std::pair<Technology,Type>,double>,std::less<std::pair<Technology,Type>>,true>,std::allocator<std::__value_type<std::pair<Technology,Type>,double>>>::__find_equal<std::pair<Technology,Type>>(uint64_t a1, void *a2, int a3, int a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 8);
      if (v8 == a3)
      {
        v9 = *(v7 + 9);
        v10 = v9 == a4;
        if (v9 <= a4)
        {
          if (v9 >= a4)
          {
            v11 = 1;
          }

          else
          {
            v11 = -1;
          }

          if (v10)
          {
            v11 = 0;
          }

          if ((v11 & 0x80) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_18;
        }

LABEL_12:
        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v8 > a3)
        {
          goto LABEL_12;
        }

        if (v8 >= a3)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if ((v12 & 0x80) == 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        result = v7 + 1;
        v5 = v7[1];
        if (!v5)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v7 = result;
LABEL_21:
  *a2 = v7;
  return result;
}

uint64_t CapabilitiesHandler::CapabilitiesHandler(uint64_t a1, uint64_t *a2)
{
  ctu::OsLogContext::OsLogContext(&v12, "com.apple.CommCenter", "cap");
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create("CapabilitiesHandler", v4);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  if (v5)
  {
    v6 = v5;
    dispatch_retain(v5);
    *(a1 + 32) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v13, &v12);
  MEMORY[0x2383CB6C0](a1 + 40, v13);
  MEMORY[0x2383CB6D0](v13);
  ctu::OsLogContext::~OsLogContext(&v12);
  *a1 = &unk_284A6D070;
  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v8 = dispatch_queue_create_with_target_V2("CapabilitiesHandler", v7, *(a1 + 24));
  *a1 = &unk_284A6D070;
  v10 = *a2;
  v9 = a2[1];
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void CapabilitiesHandler::~CapabilitiesHandler(CapabilitiesHandler *this)
{
  *this = &unk_284A6D070;
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    dispatch_release(v3);
  }

  MEMORY[0x2383CB6D0](this + 40);
  ctu::SharedSynchronizable<HelperRestServer>::~SharedSynchronizable(this + 1);
}

void sub_237461010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t CSISystemTimeSecs(void)
{
  if (!CSISystemTimeSecs(void)::denom)
  {
    info = 0;
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v2 = denom;
        denom = numer % denom;
        numer = v2;
      }

      while (denom);
    }

    else
    {
      v2 = info.numer;
    }

    v3 = 1000000000;
    v4 = info.numer / v2;
    do
    {
      v5 = v4;
      v4 = v3;
      v3 = v5 % v3;
    }

    while (v3);
    CSISystemTimeSecs(void)::numer = info.numer / v2 / v4;
    CSISystemTimeSecs(void)::denom = 0x3B9ACA00 / v4 * (info.denom / v2);
  }

  return CSISystemTimeSecs(void)::numer * mach_absolute_time() / CSISystemTimeSecs(void)::denom;
}

uint64_t CSISystemTime(void)
{
  if (!qword_280CE8488)
  {
    info = 0;
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v2 = denom;
        denom = numer % denom;
        numer = v2;
      }

      while (denom);
    }

    else
    {
      v2 = info.numer;
    }

    v3 = 1000000;
    v4 = info.numer / v2;
    do
    {
      v5 = v4;
      v4 = v3;
      v3 = v5 % v3;
    }

    while (v3);
    _MergedGlobals_3 = info.numer / v2 / v4;
    qword_280CE8488 = 0xF4240 / v4 * (info.denom / v2);
  }

  return _MergedGlobals_3 * mach_absolute_time() / qword_280CE8488;
}

void ActivationSimInfo::ActivationSimInfo(ActivationSimInfo *this)
{
  *this = 0;
}

{
  *this = 0;
}

_DWORD *ActivationSimInfo::ActivationSimInfo(_DWORD *result, int a2, int a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t RegistrationInterface::getRatSelection(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6D830;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 96))(a1, 1, v6);
  result = std::__function::__value_func<void ()(unsigned char,unsigned char)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23746144C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned char,unsigned char)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RegistrationInterface::getOperatorName(RegistrationInterface *this@<X0>, void *a2@<X8>)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v4 = dispatch_semaphore_create(0);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  dsema = v4;
  v7[0] = &unk_284A6D8C0;
  v7[1] = a2;
  v7[2] = &dsema;
  v7[3] = v7;
  (*(*this + 112))(this, 1, v7);
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](v7);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  if (dsema)
  {
    dispatch_release(dsema);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_237461544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, char a10)
{
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getOperatorShortName(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6D940;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 120))(a1, 1, v6);
  result = std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237461630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getRegistrationStatus(RegistrationInterface *this)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = 0;
  dsema = dispatch_semaphore_create(0);
  v7[0] = &unk_284A6D9C0;
  v7[1] = &v5;
  v7[2] = &dsema;
  v7[3] = v7;
  (*(*this + 16))(this, 1, v7);
  std::__function::__value_func<void ()(RegistrationStatus)>::~__value_func[abi:ne200100](v7);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v2 = v5;
  if (dsema)
  {
    dispatch_release(dsema);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_23746172C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12)
{
  std::__function::__value_func<void ()(RegistrationStatus)>::~__value_func[abi:ne200100](&a12);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getRadioAccessTechnology(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6DA50;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 80))(a1, 1, v6);
  result = std::__function::__value_func<void ()(RadioAccessTechnology)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237461808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(RadioAccessTechnology)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getRadioAccessTechnology(RegistrationInterface *this)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = 11;
  dsema = dispatch_semaphore_create(0);
  v7[0] = &unk_284A6DAE0;
  v7[1] = &v5;
  v7[2] = &dsema;
  v7[3] = v7;
  (*(*this + 80))(this, 1, v7);
  std::__function::__value_func<void ()(RadioAccessTechnology)>::~__value_func[abi:ne200100](v7);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v2 = v5;
  if (dsema)
  {
    dispatch_release(dsema);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_237461908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12)
{
  std::__function::__value_func<void ()(RadioAccessTechnology)>::~__value_func[abi:ne200100](&a12);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getServingPLMN(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6DB60;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 200))(a1, 1, v6);
  result = std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374619E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RegistrationInterface::getServingPLMN(RegistrationInterface *this@<X0>, void *a2@<X8>)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v4 = dispatch_semaphore_create(0);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  dsema = v4;
  v7[0] = &unk_284A6DBE0;
  v7[1] = a2;
  v7[2] = &dsema;
  v7[3] = v7;
  (*(*this + 200))(this, 1, v7);
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](v7);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  if (dsema)
  {
    dispatch_release(dsema);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_237461ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, char a10)
{
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getMobileCountryCode(RegistrationInterface *this)
{
  (*(*this + 216))(v3);
  v1 = LOWORD(v3[0]);
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  return v1;
}

uint64_t RegistrationInterface::getMobileCountryCode(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6DC60;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 208))(a1, 1, v6);
  result = std::__function::__value_func<void ()(MCC)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237461C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(MCC)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getMobileNetworkCode(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6DCF0;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 224))(a1, 1, v6);
  result = std::__function::__value_func<void ()(MNC)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237461D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(MNC)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getRegistrationDisplayStatus(RegistrationInterface *this)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = 0;
  dsema = dispatch_semaphore_create(0);
  v7[0] = &unk_284A6DD80;
  v7[1] = &v5;
  v7[2] = &dsema;
  v7[3] = v7;
  (*(*this + 32))(this, 1, v7);
  std::__function::__value_func<void ()(RegistrationDisplayStatus)>::~__value_func[abi:ne200100](v7);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v2 = v5;
  if (dsema)
  {
    dispatch_release(dsema);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_237461DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12)
{
  std::__function::__value_func<void ()(RegistrationDisplayStatus)>::~__value_func[abi:ne200100](&a12);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getRegistrationCauseCode(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6DE10;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 40))(a1, 1, v6);
  result = std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237461ED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::isDataAttached(RegistrationInterface *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  v9 = 0;
  v8[0] = &unk_284A6DEA0;
  v8[1] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v8[2] = &v7;
  v9 = v8;
  (*(*this + 48))(this, 1, v8);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v8);
  if (v3)
  {
    dispatch_release(v3);
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v7;
    dispatch_release(v3);
  }

  else
  {
    dispatch_semaphore_wait(0, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v7;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

void sub_237462010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  if (v2)
  {
    dispatch_release(v2);
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::isDataAttached(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6DF20;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 48))(a1, 1, v6);
  result = std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374620F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getLastKnownMobileCountryCode(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6DFA0;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 248))(a1, 1, v6);
  result = std::__function::__value_func<void ()(MCC)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374621C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(MCC)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getNetworkSelectionMode(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6E020;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 168))(a1, 1, v6);
  result = std::__function::__value_func<void ()(NetworkSelectionMode)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237462294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NetworkSelectionMode)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getNetworkSelectionState(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6E0B0;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 176))(a1, 1, v6);
  result = std::__function::__value_func<void ()(NetworkSelectionState)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237462364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NetworkSelectionState)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::isNetworkSelectionMenuEnabled(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6E140;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 304))(a1, 1, v6);
  result = std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23746243C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::fetchNetworkList(RegistrationInterface *this)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_284A6E1C0;
  v3[3] = v3;
  (*(*this + 128))(this, 1, v3);
  result = std::__function::__value_func<void ()(CTError)>::~__value_func[abi:ne200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374624F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(CTError)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::automaticallySelectNetwork(RegistrationInterface *this)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_284A6E240;
  v3[3] = v3;
  (*(*this + 160))(this, 1, v3);
  result = std::__function::__value_func<void ()(CTError)>::~__value_func[abi:ne200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374625B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(CTError)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RegistrationInterface::selectNetwork(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v5[0] = &unk_284A6E2C0;
  v5[3] = v5;
  (*(*a1 + 152))(a1, 1, &__p, v5);
  std::__function::__value_func<void ()(CTError)>::~__value_func[abi:ne200100](v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t RegistrationInterface::getSelectedNetwork(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6E340;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 136))(a1, 1, v6);
  result = std::__function::__value_func<void ()(NetworkListOperator)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374627A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NetworkListOperator)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RegistrationInterface::getNetworkList(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6E3D0;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 144))(a1, 1, v6);
  result = std::__function::__value_func<void ()(std::vector<NetworkListOperator>)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237462870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::vector<NetworkListOperator>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0>,void ()(unsigned char,unsigned char)>::~__func(void *a1)
{
  *a1 = &unk_284A6D830;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0>,void ()(unsigned char,unsigned char)>::~__func(void *a1)
{
  *a1 = &unk_284A6D830;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0>,void ()(unsigned char,unsigned char)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6D830;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0>,void ()(unsigned char,unsigned char)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0>,void ()(unsigned char,unsigned char)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0>,void ()(unsigned char,unsigned char)>::operator()(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = *a3;
  object = xpc_int64_create(*a2);
  if (!object)
  {
    object = xpc_null_create();
  }

  v7 = *(a1 + 8);
  v8 = "kRegistrationRATSelection";
  xpc::dict::object_proxy::operator=(&v7, &object, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(object);
  object = 0;
  v5 = xpc_int64_create(v4);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v7 = *(a1 + 8);
  v8 = "kRegistrationPreferredRAT";
  xpc::dict::object_proxy::operator=(&v7, &v5, &v6);
  xpc_release(v6);
  v6 = 0;
  xpc_release(v5);
}

uint64_t std::__function::__func<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRatSelection(xpc::auto_reply)::$_0>,void ()(unsigned char,unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned char,unsigned char)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<RegistrationInterface::getOperatorName(void)::$_0,std::allocator<RegistrationInterface::getOperatorName(void)::$_0>,void ()(std::string)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A6D8C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<RegistrationInterface::getOperatorName(void)::$_0,std::allocator<RegistrationInterface::getOperatorName(void)::$_0>,void ()(std::string)>::operator()(uint64_t a1, std::string *a2)
{
  __p = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  std::string::operator=(*(a1 + 8), &__p);
  dispatch_semaphore_signal(**(a1 + 16));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_237462CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<RegistrationInterface::getOperatorName(void)::$_0,std::allocator<RegistrationInterface::getOperatorName(void)::$_0>,void ()(std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_284A6D940;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_284A6D940;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0>,void ()(std::string)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6D940;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0>,void ()(std::string)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0>,void ()(std::string)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0>,void ()(std::string)>::operator()(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v5 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v5 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v7 = xpc_string_create(v3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v6[0] = *(a1 + 8);
  v6[1] = "kRegistrationAbbrevOperatorName";
  xpc::dict::object_proxy::operator=(v6, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t std::__function::__func<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getOperatorShortName(xpc::auto_reply)::$_0>,void ()(std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<RegistrationInterface::getRegistrationStatus(void)::$_0,std::allocator<RegistrationInterface::getRegistrationStatus(void)::$_0>,void ()(RegistrationStatus)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A6D9C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

intptr_t std::__function::__func<RegistrationInterface::getRegistrationStatus(void)::$_0,std::allocator<RegistrationInterface::getRegistrationStatus(void)::$_0>,void ()(RegistrationStatus)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 16);
  **(a1 + 8) = *a2;
  return dispatch_semaphore_signal(*v2);
}

uint64_t std::__function::__func<RegistrationInterface::getRegistrationStatus(void)::$_0,std::allocator<RegistrationInterface::getRegistrationStatus(void)::$_0>,void ()(RegistrationStatus)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(RegistrationStatus)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0>,void ()(RadioAccessTechnology)>::~__func(void *a1)
{
  *a1 = &unk_284A6DA50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0>,void ()(RadioAccessTechnology)>::~__func(void *a1)
{
  *a1 = &unk_284A6DA50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0>,void ()(RadioAccessTechnology)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6DA50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0>,void ()(RadioAccessTechnology)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0>,void ()(RadioAccessTechnology)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0>,void ()(RadioAccessTechnology)>::operator()(uint64_t a1, unsigned int *a2)
{
  v3 = asWirelessTechnology(*a2);
  v5 = xpc_int64_create(v3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v4[0] = *(a1 + 8);
  v4[1] = "kRegistrationActiveWirelessTech";
  xpc::dict::object_proxy::operator=(v4, &v5, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
}

uint64_t std::__function::__func<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRadioAccessTechnology(xpc::auto_reply)::$_0>,void ()(RadioAccessTechnology)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(RadioAccessTechnology)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<RegistrationInterface::getRadioAccessTechnology(void)::$_0,std::allocator<RegistrationInterface::getRadioAccessTechnology(void)::$_0>,void ()(RadioAccessTechnology)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A6DAE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

intptr_t std::__function::__func<RegistrationInterface::getRadioAccessTechnology(void)::$_0,std::allocator<RegistrationInterface::getRadioAccessTechnology(void)::$_0>,void ()(RadioAccessTechnology)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 16);
  **(a1 + 8) = *a2;
  return dispatch_semaphore_signal(*v2);
}

uint64_t std::__function::__func<RegistrationInterface::getRadioAccessTechnology(void)::$_0,std::allocator<RegistrationInterface::getRadioAccessTechnology(void)::$_0>,void ()(RadioAccessTechnology)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_284A6DB60;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_284A6DB60;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0>,void ()(std::string)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6DB60;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0>,void ()(std::string)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0>,void ()(std::string)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0>,void ()(std::string)>::operator()(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v5 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v5 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v7 = xpc_string_create(v3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v6[0] = *(a1 + 8);
  v6[1] = "kRegistrationServingPLMN";
  xpc::dict::object_proxy::operator=(v6, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t std::__function::__func<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getServingPLMN(xpc::auto_reply)::$_0>,void ()(std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<RegistrationInterface::getServingPLMN(void)::$_0,std::allocator<RegistrationInterface::getServingPLMN(void)::$_0>,void ()(std::string)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A6DBE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<RegistrationInterface::getServingPLMN(void)::$_0,std::allocator<RegistrationInterface::getServingPLMN(void)::$_0>,void ()(std::string)>::operator()(uint64_t a1, std::string *a2)
{
  __p = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  std::string::operator=(*(a1 + 8), &__p);
  dispatch_semaphore_signal(**(a1 + 16));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_237463958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<RegistrationInterface::getServingPLMN(void)::$_0,std::allocator<RegistrationInterface::getServingPLMN(void)::$_0>,void ()(std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::~__func(void *a1)
{
  *a1 = &unk_284A6DC60;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::~__func(void *a1)
{
  *a1 = &unk_284A6DC60;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6DC60;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    v3 = v4;
  }

  else
  {
    __p = *(a2 + 4);
  }

  xpc::string("%03d", &v7, v3);
  v6[0] = *(a1 + 8);
  v6[1] = "kRegistrationMCC";
  xpc::dict::object_proxy::operator=(v6, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_237463C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

xpc_object_t xpc::string@<X0>(xpc *this@<X0>, void *a2@<X8>, ...)
{
  va_start(va, a2);
  result = xpc_string_create_with_format_and_arguments(this, va);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(MCC)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0>,void ()(MNC)>::~__func(void *a1)
{
  *a1 = &unk_284A6DCF0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0>,void ()(MNC)>::~__func(void *a1)
{
  *a1 = &unk_284A6DCF0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0>,void ()(MNC)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6DCF0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0>,void ()(MNC)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0>,void ()(MNC)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0>,void ()(MNC)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v6 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    v3 = v6;
  }

  else
  {
    __p = *(a2 + 4);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size == 3)
  {
    v5 = "%03d";
  }

  else
  {
    v5 = "%02d";
  }

  xpc::string(v5, &v9, v3);
  v8[0] = *(a1 + 8);
  v8[1] = "kRegistrationMNC";
  xpc::dict::object_proxy::operator=(v8, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_237463FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getMobileNetworkCode(xpc::auto_reply)::$_0>,void ()(MNC)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(MNC)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<RegistrationInterface::getRegistrationDisplayStatus(void)::$_0,std::allocator<RegistrationInterface::getRegistrationDisplayStatus(void)::$_0>,void ()(RegistrationDisplayStatus)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A6DD80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

intptr_t std::__function::__func<RegistrationInterface::getRegistrationDisplayStatus(void)::$_0,std::allocator<RegistrationInterface::getRegistrationDisplayStatus(void)::$_0>,void ()(RegistrationDisplayStatus)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  **(a1 + 8) = *a2;
  return dispatch_semaphore_signal(*v2);
}

uint64_t std::__function::__func<RegistrationInterface::getRegistrationDisplayStatus(void)::$_0,std::allocator<RegistrationInterface::getRegistrationDisplayStatus(void)::$_0>,void ()(RegistrationDisplayStatus)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(RegistrationDisplayStatus)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0>,void ()(int)>::~__func(void *a1)
{
  *a1 = &unk_284A6DE10;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0>,void ()(int)>::~__func(void *a1)
{
  *a1 = &unk_284A6DE10;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0>,void ()(int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6DE10;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0>,void ()(int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0>,void ()(int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v4 = xpc_int64_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kRegistrationCauseCode";
  xpc::dict::object_proxy::operator=(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t std::__function::__func<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getRegistrationCauseCode(xpc::auto_reply)::$_0>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
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

void *std::__function::__func<RegistrationInterface::isDataAttached(void)::$_0,std::allocator<RegistrationInterface::isDataAttached(void)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A6DEA0;
  v2 = a1[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::isDataAttached(void)::$_0,std::allocator<RegistrationInterface::isDataAttached(void)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A6DEA0;
  v1 = a1[1];
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__function::__func<RegistrationInterface::isDataAttached(void)::$_0,std::allocator<RegistrationInterface::isDataAttached(void)::$_0>,void ()(BOOL)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_284A6DEA0;
  a2[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  a2[2] = *(a1 + 16);
}

void std::__function::__func<RegistrationInterface::isDataAttached(void)::$_0,std::allocator<RegistrationInterface::isDataAttached(void)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<RegistrationInterface::isDataAttached(void)::$_0,std::allocator<RegistrationInterface::isDataAttached(void)::$_0>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

intptr_t std::__function::__func<RegistrationInterface::isDataAttached(void)::$_0,std::allocator<RegistrationInterface::isDataAttached(void)::$_0>,void ()(BOOL)>::operator()(uint64_t a1, _BYTE *a2)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  **(v3 + 8) = *a2;
  return dispatch_semaphore_signal(v2);
}

uint64_t std::__function::__func<RegistrationInterface::isDataAttached(void)::$_0,std::allocator<RegistrationInterface::isDataAttached(void)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A6DF20;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A6DF20;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6DF20;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}