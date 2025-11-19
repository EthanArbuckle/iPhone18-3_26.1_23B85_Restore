void sub_240EB550C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, dispatch_group_t group, uint64_t a13, uint64_t a14, char a15)
{
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a15);
  std::unique_ptr<abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0,std::default_delete<abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0,std::default_delete<abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 64);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 64);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    std::__tree<unsigned int>::destroy(v1 + 40, *(v1 + 48));
    std::__tree<unsigned int>::destroy(v1 + 16, *(v1 + 24));
    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::sendMessage(abb::router::Message)::$_0>(abb::router::Gateway::sendMessage(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::sendMessage(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::sendMessage(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  abb::router::Message::Message(v5, *a1 + 8);
  abb::router::Gateway::sendMessage_sync(v3, v5);
  abb::router::Message::~Message(v5);
  abb::router::Message::~Message((v2 + 1));
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_240EB5698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  abb::router::Message::~Message(va2);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240EB56BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::messageTimeout(abb::router::Message)::$_0>(abb::router::Gateway::messageTimeout(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::messageTimeout(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::messageTimeout(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v19 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString((v1 + 1));
    v4 = v1 + 15;
    if (*(v1 + 143) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEFAULT, "#I Reporting message timeout; %s", buf, 0xCu);
  }

  v31 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[7] = v5;
  v30[8] = v5;
  v30[5] = v5;
  v30[6] = v5;
  v30[3] = v5;
  v30[4] = v5;
  v30[1] = v5;
  v30[2] = v5;
  v29 = v5;
  v30[0] = v5;
  v28 = v5;
  v26 = v5;
  *__p = v5;
  v24 = v5;
  v25 = v5;
  *buf = v5;
  v23 = v5;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "TIMEOUT for message ", 20);
  abb::router::Message::generatePrintString((v1 + 1));
  v7 = *(v1 + 143);
  if (v7 < 0)
  {
    v8 = v1[15];
    v7 = v1[16];
  }

  else
  {
    v8 = (v1 + 15);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v7);
  if ((BYTE8(v29) & 0x10) != 0)
  {
    v11 = v29;
    if (v29 < *(&v26 + 1))
    {
      *&v29 = *(&v26 + 1);
      v11 = *(&v26 + 1);
    }

    v12 = v26;
    v9 = v11 - v26;
    if ((v11 - v26) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((BYTE8(v29) & 8) == 0)
    {
      v9 = 0;
      HIBYTE(v21) = 0;
      v10 = __dst;
      goto LABEL_22;
    }

    v12 = *(&v24 + 1);
    v9 = *(&v25 + 1) - *(&v24 + 1);
    if (*(&v25 + 1) - *(&v24 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_35:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v9 | 7) + 1;
    }

    v10 = operator new(v13);
    __dst[1] = v9;
    v21 = v13 | 0x8000000000000000;
    __dst[0] = v10;
    goto LABEL_21;
  }

  HIBYTE(v21) = v9;
  v10 = __dst;
  if (v9)
  {
LABEL_21:
    memmove(v10, v12, v9);
  }

LABEL_22:
  *(v10 + v9) = 0;
  abb::router::Gateway::reportError_sync(v2, 1, __dst);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst[0]);
  }

  *buf = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
  *&v23 = v14;
  *(&v23 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v23 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v24);
  std::iostream::~basic_iostream();
  std::ios_base::~ios_base(v30);
  if (v19)
  {
    abb::router::Message::~Message((v19 + 1));
    operator delete(v19);
  }

  v15 = a1;
  if (a1)
  {
    v16 = *(a1 + 16);
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
      v15 = a1;
    }

    operator delete(v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_240EB5AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  std::ios_base::~ios_base(&a34);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v8 = *(MEMORY[0x277D82818] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x277D82890] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x245CD2A30](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

void sub_240EB5DFC(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x245CD2960](v14, a1);
  if (LOBYTE(v14[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245CD2970](v14);
  return a1;
}

void sub_240EB60E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245CD2970](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x240EB60C0);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_240EB6320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios_base::~ios_base((a1 + 128));
  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0>(abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0,std::default_delete<abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  v6[0] = 0;
  v7 = 0;
  if (*(v2 + 152) == 1)
  {
    abb::router::Message::Message(v6, (v2 + 2));
    v7 = 1;
  }

  abb::router::Gateway::updateFlowControl_sync(v3, v4, v6);
  if (v7 != 1)
  {
    if (*(v2 + 152) != 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    abb::router::Message::~Message((v2 + 2));
    operator delete(v2);
    v5 = *(a1 + 2);
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  abb::router::Message::~Message(v6);
  if (*(v2 + 152) == 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  operator delete(v2);
  v5 = *(a1 + 2);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_11:
  operator delete(a1);
}

void sub_240EB65AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, _BYTE *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a28 == 1)
  {
    abb::router::Message::~Message(&a11);
  }

  std::unique_ptr<abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0,std::default_delete<abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

_BYTE **std::unique_ptr<abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0,std::default_delete<abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0>>::~unique_ptr[abi:ne200100](_BYTE **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (v1[152] == 1)
    {
      abb::router::Message::~Message((v1 + 16));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__shared_ptr_emplace<ctu::TrackedGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852C8F88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ctu::TrackedGroup>::__on_zero_shared(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6)
  {

    dispatch_release(v6);
  }
}

void **std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0,std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[3];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v1[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<abb::router::Gateway::start_sync(dispatch::group_session)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::start_sync(dispatch::group_session)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_50;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v40 = v4;
  if (!v4)
  {
    goto LABEL_50;
  }

  if (!a1[1])
  {
    goto LABEL_48;
  }

  v5 = *(v3 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240E91000, v5, OS_LOG_TYPE_DEFAULT, "#I Start agent procedure complete", buf, 2u);
  }

  v6 = dispatch_group_create();
  v7 = operator new(0x38uLL);
  v8 = v7;
  v7->__shared_owners_ = 0;
  v7->__shared_weak_owners_ = 0;
  v7->__vftable = &unk_2852C8F88;
  v7[1].__vftable = v6;
  v9 = &v7[1];
  if (v6)
  {
    dispatch_retain(v6);
    v8[1].__shared_owners_ = 0;
    v8[1].__shared_weak_owners_ = 0;
    v8[2].__vftable = 0;
    dispatch_release(v6);
    v37 = v9;
    v38 = v8;
    v10 = *(v3 + 304);
    v11 = (v3 + 312);
    if (v10 == (v3 + 312))
    {
      goto LABEL_10;
    }

    while (1)
    {
LABEL_17:
      v15 = v10[5];
      (*(*v15 + 16))(__p, v15);
      ctu::TrackedGroup::fork(&group, v9, __p);
      (*(*v15 + 72))(v15, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v35 < 0)
      {
        operator delete(__p[0]);
        v16 = v10[1];
        if (v16)
        {
          do
          {
LABEL_24:
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
          goto LABEL_16;
        }
      }

      else
      {
        v16 = v10[1];
        if (v16)
        {
          goto LABEL_24;
        }
      }

      do
      {
        v17 = v10[2];
        v18 = *v17 == v10;
        v10 = v17;
      }

      while (!v18);
LABEL_16:
      v10 = v17;
      if (v17 == v11)
      {
        goto LABEL_10;
      }
    }
  }

  v7[1].__shared_owners_ = 0;
  v7[1].__shared_weak_owners_ = 0;
  v7[2].__vftable = 0;
  v37 = &v7[1].__vftable;
  v38 = v7;
  v10 = *(v3 + 304);
  v11 = (v3 + 312);
  if (v10 != (v3 + 312))
  {
    goto LABEL_17;
  }

LABEL_10:
  v12 = *(v3 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEFAULT, "#I Notified all clients to start", buf, 2u);
    v12 = *(v3 + 40);
  }

  v13 = *(v3 + 176);
  v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v13 == 2)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEFAULT, "#I Start procedure complete", buf, 2u);
    }

    abb::router::Gateway::setStatus_sync(v3, 3u);
  }

  else if (v14)
  {
    if (v13 > 0xA)
    {
      v19 = "(unknown)";
    }

    else
    {
      v19 = off_278CBAFB8[v13];
    }

    *buf = 136315394;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = "Started";
    _os_log_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEFAULT, "#I Gateway moved on to %s; skipping transition to %s", buf, 0x16u);
  }

  v21 = a1[1];
  v20 = a1[2];
  *buf = v3;
  *&buf[8] = v21;
  *&buf[16] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
  }

  v22 = a1[3];
  v43 = v22;
  if (v22)
  {
    dispatch_retain(v22);
    dispatch_group_enter(v22);
  }

  v44 = v9;
  v45 = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v23 = v8[1].__vftable;
  v24 = *(v3 + 24);
  v25 = operator new(0x30uLL);
  *v25 = v3;
  v25[1] = v21;
  *&buf[8] = 0uLL;
  v25[2] = v20;
  v25[3] = v22;
  v43 = 0;
  v25[4] = v9;
  v25[5] = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v41 = 0;
  dispatch_group_notify_f(v23, v24, v25, dispatch::detail::group_notify<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v41);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v26 = v43;
  if (v43)
  {
    dispatch_group_leave(v43);
    dispatch_release(v26);
  }

  if (*&buf[16])
  {
    std::__shared_weak_count::__release_weak(*&buf[16]);
  }

  v27 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v4 = v40;
  if (v40)
  {
LABEL_48:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v28 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v28);
    }
  }

LABEL_50:
  if (a1)
  {
    v29 = a1[3];
    if (v29)
    {
      dispatch_group_leave(v29);
      v30 = a1[3];
      if (v30)
      {
        dispatch_release(v30);
      }
    }

    v31 = a1[2];
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }

    operator delete(a1);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_240EB6C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, dispatch_group_t group, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  abb::router::Gateway::stop_sync(dispatch::group_session)::$_0::~$_0(&a22);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a17);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a19);
  std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0,std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[5];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      dispatch_group_leave(v4);
      v5 = v1[3];
      if (v5)
      {
        dispatch_release(v5);
      }
    }

    v6 = v1[2];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void **dispatch::detail::group_notify<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v8 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    v11 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I All clients acknowledged for start notification", buf, 2u);
        }

        abb::router::Gateway::handlePendingActions_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  return std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v8);
}

void sub_240EB6EC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **dispatch::detail::group_notify<abb::router::Gateway::stop_sync(dispatch::group_session)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::stop_sync(dispatch::group_session)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    v23 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I All clients acknowledged for stop notification", buf, 2u);
          v6 = *(v3 + 40);
        }

        v7 = *(v3 + 176);
        v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        if ((v7 & 0xFE) == 4)
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I Stop procedure complete", buf, 2u);
          }

          v9 = dispatch_group_create();
          v10 = v9;
          v11 = *(v3 + 360);
          group = v9;
          if (v9)
          {
            dispatch_retain(v9);
            dispatch_group_enter(v10);
          }

          (*(*v11 + 80))(v11, &group);
          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

          v12 = a1[1];
          v13 = a1[2];
          *buf = v3;
          *&buf[8] = v12;
          *&buf[16] = v13;
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
          }

          v14 = a1[3];
          v25 = v14;
          if (v14)
          {
            dispatch_retain(v14);
            dispatch_group_enter(v14);
          }

          v15 = *(v3 + 24);
          v16 = operator new(0x20uLL);
          *v16 = v3;
          v16[1] = v12;
          v16[2] = v13;
          v16[3] = v14;
          dispatch_group_notify_f(v10, v15, v16, dispatch::detail::group_notify<abb::router::Gateway::stop_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::stop_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
          if (v10)
          {
            dispatch_release(v10);
          }
        }

        else
        {
          if (v8)
          {
            if (v7 > 0xA)
            {
              v17 = "(unknown)";
            }

            else
            {
              v17 = off_278CBB010[v7];
            }

            *buf = 136315394;
            *&buf[4] = v17;
            *&buf[12] = 2080;
            *&buf[14] = "Stopped";
            _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I Gateway moved on to %s; skipping transition to %s", buf, 0x16u);
          }

          abb::router::Gateway::handlePendingActions_sync(v3);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  result = std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v20);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EB719C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, char a11, uint64_t a12, char a13)
{
  abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0::~$_0(&a13);
  if (v13)
  {
    dispatch_release(v13);
  }

  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a11);
  std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<abb::router::Gateway::stop_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::stop_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    v13 = v4;
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 1))
      {
        v6 = *(v3 + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I Stop internal procedure complete", buf, 2u);
        }

        abb::router::Gateway::setStatus_sync(v3, 6u);
        abb::router::Gateway::closeTransport_sync(v3);
        abb::router::Gateway::handlePendingActions_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    v7 = *(a1 + 3);
    if (v7)
    {
      dispatch_group_leave(v7);
      v8 = *(a1 + 3);
      if (v8)
      {
        dispatch_release(v8);
      }
    }

    v9 = *(a1 + 2);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(a1);
  }
}

void sub_240EB7330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0,std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v41 = v4;
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = v4;
  v6 = *(a1 + 1);
  v40 = v6;
  if (!v6)
  {
    goto LABEL_23;
  }

  abb::router::Gateway::setStatus_sync(v3, 0);
  v7 = dispatch_group_create();
  v8 = operator new(0x38uLL);
  v9 = v8;
  v8->__shared_owners_ = 0;
  v8->__shared_weak_owners_ = 0;
  v8->__vftable = &unk_2852C8F88;
  v8[1].__vftable = v7;
  v10 = &v8[1];
  if (v7)
  {
    dispatch_retain(v7);
    v9[1].__shared_owners_ = 0;
    v9[1].__shared_weak_owners_ = 0;
    v9[2].__vftable = 0;
    dispatch_release(v7);
    v38 = v10;
    v39 = v9;
    v11 = v3[38];
    v12 = v3 + 39;
    if (v11 == v3 + 39)
    {
      goto LABEL_8;
    }

    while (1)
    {
LABEL_34:
      v24 = v11[5];
      (*(*v24 + 16))(v35, v24);
      ctu::TrackedGroup::fork(&object, v10, v35);
      (*(*v24 + 88))(v24, &object);
      if (object)
      {
        dispatch_group_leave(object);
        if (object)
        {
          dispatch_release(object);
        }
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
        v25 = v11[1];
        if (v25)
        {
          do
          {
LABEL_41:
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
          goto LABEL_33;
        }
      }

      else
      {
        v25 = v11[1];
        if (v25)
        {
          goto LABEL_41;
        }
      }

      do
      {
        v26 = v11[2];
        v27 = *v26 == v11;
        v11 = v26;
      }

      while (!v27);
LABEL_33:
      v11 = v26;
      if (v26 == v12)
      {
        goto LABEL_8;
      }
    }
  }

  v8[1].__shared_owners_ = 0;
  v8[1].__shared_weak_owners_ = 0;
  v8[2].__vftable = 0;
  v38 = &v8[1].__vftable;
  v39 = v8;
  v11 = v3[38];
  v12 = v3 + 39;
  if (v11 != v3 + 39)
  {
    goto LABEL_34;
  }

LABEL_8:
  v13 = v3[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240E91000, v13, OS_LOG_TYPE_DEFAULT, "#I Notified all clients to shutdown", buf, 2u);
  }

  *buf = v3;
  v30 = v6;
  v31 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(a1 + 3);
  group = v14;
  if (v14)
  {
    dispatch_retain(v14);
    dispatch_group_enter(v14);
  }

  v33 = v10;
  v34 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = v9[1].__vftable;
  v16 = v3[3];
  v17 = operator new(0x30uLL);
  *v17 = v3;
  v17[1] = v6;
  v30 = 0;
  v31 = 0;
  v17[2] = v5;
  v17[3] = v14;
  group = 0;
  v17[4] = v10;
  v17[5] = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v42 = 0;
  dispatch_group_notify_f(v15, v16, v17, dispatch::detail::group_notify<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v42);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v18 = group;
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(v18);
  }

  v19 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v5 = v41;
  if (v41)
  {
LABEL_23:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

LABEL_25:
  if (a1)
  {
    v21 = *(a1 + 3);
    if (v21)
    {
      dispatch_group_leave(v21);
      v22 = *(a1 + 3);
      if (v22)
      {
        dispatch_release(v22);
      }
    }

    v23 = *(a1 + 2);
    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    operator delete(a1);
  }
}

void sub_240EB776C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, dispatch_group_t group, char a25)
{
  abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}::~(&a11);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a25);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v25 - 104);
  std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0,std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}::~(void *a1)
{
  v2 = a1[5];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[3];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void **std::unique_ptr<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[5];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      dispatch_group_leave(v4);
      v5 = v1[3];
      if (v5)
      {
        dispatch_release(v5);
      }
    }

    v6 = v1[2];
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void **dispatch::detail::group_notify<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v7 = a1;
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEFAULT, "#I Shutdown clients procedure complete", buf, 2u);
  }

  v4 = *(v2 + 360);
  v5 = a1[3];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  (*(*v4 + 88))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  return std::unique_ptr<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v7);
}

void sub_240EB7AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_1>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_1 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *__p)
{
  v2 = __p[2];
  if (v2)
  {
    v3 = *__p;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (__p[1])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEBUG, "#D Clearing all client delegates", buf, 2u);
        }

        std::__tree<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>>>::destroy(*(v3 + 312));
        *(v3 + 312) = 0;
        *(v3 + 320) = 0;
        *(v3 + 304) = v3 + 312;
        v7 = *(v3 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v11 = 0;
          _os_log_debug_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEBUG, "#D Clearing all indication mappings", v11, 2u);
        }

        std::__tree<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>>>::destroy(*(v3 + 336));
        *(v3 + 336) = 0;
        *(v3 + 344) = 0;
        *(v3 + 328) = v3 + 336;
        v8 = *(v3 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEFAULT, "#I Shutdown agent procedure complete", v10, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v9 = __p[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  operator delete(__p);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void **std::unique_ptr<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0,std::default_delete<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    v1[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I Sleep clients procedure complete", buf, 2u);
        }

        v7 = *(v3 + 176);
        if (v7 == 7)
        {
          v8 = dispatch_group_create();
          v9 = v8;
          v10 = *(v3 + 360);
          *buf = v8;
          if (v8)
          {
            dispatch_retain(v8);
            dispatch_group_enter(v9);
          }

          (*(*v10 + 56))(v10, buf);
          if (*buf)
          {
            dispatch_group_leave(*buf);
            if (*buf)
            {
              dispatch_release(*buf);
            }
          }

          v12 = a1[1];
          v11 = a1[2];
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
          }

          v13 = *(v3 + 24);
          v14 = operator new(0x18uLL);
          *v14 = v3;
          v14[1] = v12;
          v14[2] = v11;
          dispatch_group_notify_f(v9, v13, v14, dispatch::detail::group_notify<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
          if (v9)
          {
            dispatch_release(v9);
          }
        }

        else
        {
          v15 = *(v3 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            if (v7 > 0xA)
            {
              v16 = "(unknown)";
            }

            else
            {
              v16 = off_278CBB068[v7];
            }

            *buf = 136315394;
            *&buf[4] = v16;
            v22 = 2080;
            v23 = "Slept";
            _os_log_impl(&dword_240E91000, v15, OS_LOG_TYPE_DEFAULT, "#I Gateway moved on to %s; skipping transition to %s", buf, 0x16u);
          }

          abb::router::Gateway::handlePendingActions_sync(v3);
        }

        (*(*a1[3] + 16))(a1[3]);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    v17 = a1[3];
    a1[3] = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = a1[2];
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    operator delete(a1);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_240EB800C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a11, char a12, char a13, uint64_t a14, dispatch_group_t group)
{
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v15)
  {
    dispatch_release(v15);
    std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a11);
    std::unique_ptr<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0,std::default_delete<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a11);
  std::unique_ptr<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0,std::default_delete<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v13 = v4;
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  if (*(a1 + 1))
  {
    v6 = *(v3 + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I Sleep agent procedure complete", buf, 2u);
    }

    abb::router::Gateway::setStatus_sync(v3, 8u);
    v7 = *(v3 + 59);
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = *(v3 + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEFAULT, "#I Release sleep session", buf, 2u);
      v7 = *(v3 + 59);
      *(v3 + 59) = 0;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(v3 + 59) = 0;
    }

    dispatch_group_leave(v7);
    dispatch_release(v7);
LABEL_12:
    abb::router::Gateway::handlePendingActions_sync(v3);
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_15:
  if (a1)
  {
    v9 = *(a1 + 2);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(a1);
  }
}

void sub_240EB8230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<abb::router::Gateway::wakeup_sync(dispatch::group_session)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::wakeup_sync(dispatch::group_session)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_28;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v42 = v4;
  if (!v4)
  {
    goto LABEL_28;
  }

  if (!a1[1])
  {
    goto LABEL_26;
  }

  v5 = v3[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240E91000, v5, OS_LOG_TYPE_DEFAULT, "#I Wakeup agent procedure complete", buf, 2u);
  }

  v6 = dispatch_group_create();
  v7 = operator new(0x38uLL);
  v8 = v7;
  v7->__shared_owners_ = 0;
  v7->__shared_weak_owners_ = 0;
  v7->__vftable = &unk_2852C8F88;
  v7[1].__vftable = v6;
  v9 = &v7[1];
  if (v6)
  {
    dispatch_retain(v6);
    v8[1].__shared_owners_ = 0;
    v8[1].__shared_weak_owners_ = 0;
    v8[2].__vftable = 0;
    dispatch_release(v6);
    v39 = v9;
    v40 = v8;
    v10 = v3[38];
    v11 = v3 + 39;
    if (v10 == v3 + 39)
    {
      goto LABEL_10;
    }

    while (1)
    {
LABEL_37:
      v25 = v10[5];
      (*(*v25 + 16))(v36, v25);
      ctu::TrackedGroup::fork(&object, v9, v36);
      (*(*v25 + 64))(v25, &object);
      if (object)
      {
        dispatch_group_leave(object);
        if (object)
        {
          dispatch_release(object);
        }
      }

      if (v37 < 0)
      {
        operator delete(v36[0]);
        v26 = v10[1];
        if (v26)
        {
          do
          {
LABEL_44:
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
          goto LABEL_36;
        }
      }

      else
      {
        v26 = v10[1];
        if (v26)
        {
          goto LABEL_44;
        }
      }

      do
      {
        v27 = v10[2];
        v28 = *v27 == v10;
        v10 = v27;
      }

      while (!v28);
LABEL_36:
      v10 = v27;
      if (v27 == v11)
      {
        goto LABEL_10;
      }
    }
  }

  v7[1].__shared_owners_ = 0;
  v7[1].__shared_weak_owners_ = 0;
  v7[2].__vftable = 0;
  v39 = &v7[1].__vftable;
  v40 = v7;
  v10 = v3[38];
  v11 = v3 + 39;
  if (v10 != v3 + 39)
  {
    goto LABEL_37;
  }

LABEL_10:
  v12 = v3[5];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEFAULT, "#I Notified all clients to wakeup", buf, 2u);
  }

  v14 = a1[1];
  v13 = a1[2];
  *buf = v3;
  v31 = v14;
  v32 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a1[3];
  group = v15;
  if (v15)
  {
    dispatch_retain(v15);
    dispatch_group_enter(v15);
  }

  v34 = v9;
  v35 = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = v8[1].__vftable;
  v17 = v3[3];
  v18 = operator new(0x30uLL);
  *v18 = v3;
  v18[1] = v14;
  v31 = 0;
  v32 = 0;
  v18[2] = v13;
  v18[3] = v15;
  group = 0;
  v18[4] = v9;
  v18[5] = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v43 = 0;
  dispatch_group_notify_f(v16, v17, v18, dispatch::detail::group_notify<abb::router::Gateway::wakeup_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::wakeup_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v43);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v19 = group;
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(v19);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  v20 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v4 = v42;
  if (v42)
  {
LABEL_26:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v21 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v21);
    }
  }

LABEL_28:
  if (a1)
  {
    v22 = a1[3];
    if (v22)
    {
      dispatch_group_leave(v22);
      v23 = a1[3];
      if (v23)
      {
        dispatch_release(v23);
      }
    }

    v24 = a1[2];
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    operator delete(a1);
  }
}

void sub_240EB8664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, dispatch_group_t group, char a25)
{
  abb::router::Gateway::stop_sync(dispatch::group_session)::$_0::~$_0(&a11);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a25);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v25 - 104);
  std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0,std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **dispatch::detail::group_notify<abb::router::Gateway::wakeup_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::wakeup_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    v14 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I Wakeup clients procedure complete", buf, 2u);
        }

        v7 = *(v3 + 176);
        if (v7 == 9)
        {
          abb::router::Gateway::setStatus_sync(v3, 3u);
        }

        else
        {
          v8 = *(v3 + 40);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            if (v7 > 0xA)
            {
              v9 = "(unknown)";
            }

            else
            {
              v9 = off_278CBB0C0[v7];
            }

            *buf = 136315394;
            v16 = v9;
            v17 = 2080;
            v18 = "Started";
            _os_log_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEFAULT, "#I Gateway moved on to %s; skipping transition to %s", buf, 0x16u);
          }
        }

        abb::router::Gateway::handlePendingActions_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  result = std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v12);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EB88A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::Gateway::openTransport_sync(void)::$_0,std::allocator<abb::router::Gateway::openTransport_sync(void)::$_0>,void ()(unsigned char const*,unsigned long)>::~__func(uint64_t result)
{
  *result = &unk_2852C8FD8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<abb::router::Gateway::openTransport_sync(void)::$_0,std::allocator<abb::router::Gateway::openTransport_sync(void)::$_0>,void ()(unsigned char const*,unsigned long)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2852C8FD8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<abb::router::Gateway::openTransport_sync(void)::$_0,std::allocator<abb::router::Gateway::openTransport_sync(void)::$_0>,void ()(unsigned char const*,unsigned long)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2852C8FD8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<abb::router::Gateway::openTransport_sync(void)::$_0,std::allocator<abb::router::Gateway::openTransport_sync(void)::$_0>,void ()(unsigned char const*,unsigned long)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2852C8FD8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<abb::router::Gateway::openTransport_sync(void)::$_0,std::allocator<abb::router::Gateway::openTransport_sync(void)::$_0>,void ()(unsigned char const*,unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<abb::router::Gateway::openTransport_sync(void)::$_0,std::allocator<abb::router::Gateway::openTransport_sync(void)::$_0>,void ()(unsigned char const*,unsigned long)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<abb::router::Gateway::openTransport_sync(void)::$_0,std::allocator<abb::router::Gateway::openTransport_sync(void)::$_0>,void ()(unsigned char const*,unsigned long)>::operator()(void *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v4);
    v17 = v8;
    if (v8)
    {
      v9 = v8;
      v16 = a1[2];
      if (v16 && v5 && v6)
      {
        while (1)
        {
          *&v15[8] = 0xAAAAAAAAAAAAAAAALL;
          *&v10 = 0xAAAAAAAAAAAAAAAALL;
          *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v15[6] = v10;
          v15[7] = v10;
          v15[4] = v10;
          v15[5] = v10;
          v15[2] = v10;
          v15[3] = v10;
          v15[0] = v10;
          v15[1] = v10;
          if (v6 >= 0x10 && (v11 = *(v5 + 14), v12 = v11 + 16, v13 = v6 - (v11 + 16), v6 >= v11 + 16))
          {
            abb::router::Message::Message(v15, v5, v11 + 16);
            v5 += v12;
            v6 = v13;
            if (*(&v15[0] + 1))
            {
              goto LABEL_10;
            }
          }

          else
          {
            *&v15[0] = &unk_2852C94E8;
            *(&v15[0] + 1) = 0;
            memset(&v15[1], 0, 120);
            LODWORD(v15[5]) = 0;
            BYTE4(v15[5]) = 0;
          }

          if ((BYTE8(v15[2]) & 1) == 0)
          {
            abb::router::Message::~Message(v15);
            break;
          }

LABEL_10:
          abb::router::Message::Message(v14, v15);
          abb::router::Gateway::handleMessage_sync(v7, v14);
          abb::router::Message::~Message(v14);
          abb::router::Message::~Message(v15);
        }
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void sub_240EB8C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  abb::router::Message::~Message(&a10);
  abb::router::Message::~Message(&a27);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v27 - 96);
  _Unwind_Resume(a1);
}

void sub_240EB8C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  abb::router::Message::~Message(&a27);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v27 - 96);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::Gateway::openTransport_sync(void)::$_0,std::allocator<abb::router::Gateway::openTransport_sync(void)::$_0>,void ()(unsigned char const*,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router7Gateway18openTransport_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router7Gateway18openTransport_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router7Gateway18openTransport_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router7Gateway18openTransport_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::deque<abb::router::Message>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x1E;
  v4 = v2 - 30;
  if (v3)
  {
    *(a1 + 32) = v4;
    goto LABEL_4;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v7 - v8;
  v10 = v6 - *a1;
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v44 = operator new(0xFF0uLL);
      std::__split_buffer<abb::router::Message *>::emplace_back<abb::router::Message *&>(a1, &v44);
      return;
    }

    v44 = operator new(0xFF0uLL);
    std::__split_buffer<abb::router::Message *>::emplace_front<abb::router::Message *>(a1, &v44);
LABEL_4:
    v5 = *(a1 + 8);
    v44 = *v5;
    *(a1 + 8) = v5 + 1;
    std::__split_buffer<abb::router::Message *>::emplace_back<abb::router::Message *&>(a1, &v44);
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = operator new(0xFF0uLL);
  v16 = v15;
  v17 = &v14[v9];
  v18 = &v14[v13];
  if (v9 != v13)
  {
    goto LABEL_15;
  }

  if (v9 < 1)
  {
    if (v7 == v8)
    {
      v22 = 1;
    }

    else
    {
      v22 = v9 >> 2;
    }

    if (v22 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = operator new(8 * v22);
    v18 = &v17[8 * v22];
    operator delete(v14);
    v23 = *(a1 + 8);
    v7 = *(a1 + 16);
    v14 = v17;
    *v17 = v16;
    v19 = v17 + 8;
    if (v7 == v23)
    {
      goto LABEL_16;
    }

LABEL_31:
    while (v17 != v14)
    {
      v24 = v17;
LABEL_30:
      v25 = *(v7 - 8);
      v7 -= 8;
      *(v24 - 1) = v25;
      v20 = v24 - 8;
      v17 = v20;
      if (v7 == *(a1 + 8))
      {
        goto LABEL_17;
      }
    }

    if (v19 < v18)
    {
      v24 = &v14[8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1)];
      v27 = v19 - v14;
      v26 = v19 == v14;
      v19 += 8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1);
      if (!v26)
      {
        memmove(v24, v17, v27);
      }

      goto LABEL_30;
    }

    if (v18 == v14)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v18 - v14) >> 2;
    }

    if (v28 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = operator new(8 * v28);
    v30 = v29;
    v31 = (v28 + 3) >> 2;
    v24 = &v29[8 * v31];
    v32 = v19 - v14;
    v26 = v19 == v14;
    v19 = v24;
    if (!v26)
    {
      v19 = &v24[v32];
      v33 = v32 - 8;
      if (v33 >= 0x18 && (v34 = 8 * v31, (&v29[8 * v31] - v17) >= 0x20))
      {
        v38 = (v33 >> 3) + 1;
        v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
        v35 = &v24[v39];
        v36 = &v17[v39];
        v40 = (v17 + 16);
        v41 = &v29[v34 + 16];
        v42 = v38 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v43 = *v40;
          *(v41 - 1) = *(v40 - 1);
          *v41 = v43;
          v40 += 2;
          v41 += 32;
          v42 -= 4;
        }

        while (v42);
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v35 = &v29[8 * v31];
        v36 = v17;
      }

      do
      {
        v37 = *v36;
        v36 += 8;
        *v35 = v37;
        v35 += 8;
      }

      while (v35 != v19);
    }

LABEL_44:
    v18 = &v29[8 * v28];
    operator delete(v14);
    v14 = v30;
    goto LABEL_30;
  }

  v17 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_15:
  *v17 = v15;
  v19 = v17 + 8;
  if (v7 != v8)
  {
    goto LABEL_31;
  }

LABEL_16:
  v20 = v17;
LABEL_17:
  v21 = *a1;
  *a1 = v14;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  if (v21)
  {

    operator delete(v21);
  }
}

void sub_240EB8FF0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__split_buffer<abb::router::Message *>::emplace_back<abb::router::Message *&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] = v4 + 8;
}

void std::__split_buffer<abb::router::Message *>::emplace_front<abb::router::Message *>(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) = v6 - 8;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::sendMessage_sync(abb::router::Message)::$_0>(abb::router::Gateway::sendMessage_sync(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::sendMessage_sync(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::sendMessage_sync(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  abb::router::Gateway::trySendingMessage_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_240EB93F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::__split_buffer<abb::router::Message *>::shrink_to_fit(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 - v3;
  if (*(a1 + 24) - *a1 <= (v1 - v3))
  {
    return;
  }

  v6 = v1 - v3;
  if (v1 == v3)
  {
    v7 = 0;
    v8 = (v1 - v3);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = operator new(v1 - v3);
  v8 = &v7[v4];
  if ((v6 - 8) < 0x18)
  {
    v9 = v7;
    do
    {
LABEL_12:
      v17 = *v3;
      v3 += 8;
      *v9 = v17;
      v9 += 8;
    }

    while (v9 != v8);
    goto LABEL_13;
  }

  v9 = v7;
  if ((v7 - v3) < 0x20)
  {
    goto LABEL_12;
  }

  v10 = ((v6 - 8) >> 3) + 1;
  v11 = 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL);
  v9 = &v7[v11];
  v12 = &v3[v11];
  v13 = (v3 + 16);
  v14 = v7 + 16;
  v15 = v10 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v16 = *v13;
    *(v14 - 1) = *(v13 - 1);
    *v14 = v16;
    v13 += 2;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  v3 = v12;
  if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  *a1 = v7;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = &v7[v4];
  if (v2)
  {

    operator delete(v2);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::handleMessage_sync(abb::router::Message)::$_0>(abb::router::Gateway::handleMessage_sync(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::handleMessage_sync(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::handleMessage_sync(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  abb::router::Gateway::trySendingMessage_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_240EB9608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<abb::router::Gateway::reportError_sync(abb::router::Error,std::string)::$_0,std::default_delete<abb::router::Gateway::reportError_sync(abb::router::Error,std::string)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 56);
    if (v3 == v1 + 32)
    {
      (*(*v3 + 32))(v3);
      if ((*(v1 + 31) & 0x80000000) == 0)
      {
LABEL_6:
        operator delete(v1);
        return v2;
      }
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      if ((*(v1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    operator delete(*(v1 + 8));
    goto LABEL_6;
  }

  return result;
}

void dispatch::async<abb::router::Gateway::reportError_sync(abb::router::Error,std::string)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::reportError_sync(abb::router::Error,std::string)::$_0,std::default_delete<abb::router::Gateway::reportError_sync(abb::router::Error,std::string)::$_0>>)::{lambda(void *)#1}::__invoke(int *a1)
{
  v4 = *a1;
  v2 = *(a1 + 7);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &v4, a1 + 2);
  v3 = *(a1 + 7);
  if (v3 == a1 + 8)
  {
    (*(*v3 + 32))(v3);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
LABEL_6:
      operator delete(a1);
      return;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  operator delete(*(a1 + 1));
  operator delete(a1);
}

void *std::unique_ptr<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3 == v1 + 16)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *dispatch::async<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v5 = a1;
  v2 = *(a1 + 8);
  object = v2;
  if (!v2)
  {
    object = xpc_null_create();
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  xpc_retain(v2);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  (*(*v3 + 48))(v3, &object);
  xpc_release(object);
  return std::unique_ptr<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_240EB9948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3 == v1 + 16)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *dispatch::async<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v5 = a1;
  v2 = *(a1 + 8);
  object = v2;
  if (!v2)
  {
    object = xpc_null_create();
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  xpc_retain(v2);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  (*(*v3 + 48))(v3, &object);
  xpc_release(object);
  return std::unique_ptr<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_240EB9AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *abb::router::MessageIterator::MessageIterator(void *this, const unsigned __int8 *a2, uint64_t a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  return this;
}

abb::router::Message *abb::router::MessageIterator::next@<X0>(abb::router::Message *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  if (v2 >= 0x10 && (v3 = *this, v4 = *(*this + 14) + 16, v2 >= v4))
  {
    *(a2 + 128) = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(a2 + 96) = v5;
    *(a2 + 112) = v5;
    *(a2 + 64) = v5;
    *(a2 + 80) = v5;
    *(a2 + 32) = v5;
    *(a2 + 48) = v5;
    *a2 = v5;
    *(a2 + 16) = v5;
    v6 = this;
    this = abb::router::Message::Message(a2, v3, v4);
    v7 = *(v6 + 1) - v4;
    *v6 += v4;
    *(v6 + 1) = v7;
  }

  else
  {
    *(a2 + 56) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 64) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = &unk_2852C94E8;
    *(a2 + 24) = 0;
    *(a2 + 80) = 0;
    *(a2 + 84) = 0;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
  }

  return this;
}

uint64_t abb::router::ClientProxy::ClientProxy(uint64_t a1, __int128 *a2, void *a3, void *a4, unsigned int a5)
{
  v85 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  v55.__r_.__value_.__r.__words[0] = 0x2E79786F7270;
  *(&v55.__r_.__value_.__s + 23) = 6;
  v62 = 0;
  v63 = 6;
  v10 = a5;
  v61 = a5;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v82 = v11;
  v83 = v11;
  v81 = v11;
  v80 = v11;
  v79 = v11;
  v78 = v11;
  v77 = v11;
  v76 = v11;
  v75 = v11;
  v74 = v11;
  v73 = v11;
  v72 = v11;
  v71 = v11;
  v70 = v11;
  v69 = v11;
  v68 = v11;
  v64 = &v68;
  v65 = xmmword_240EDCC50;
  v66 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v67 = 0;
  __p = &v68;
  v58 = 1;
  v59 = &v61;
  v60 = 6;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v64, "{:#04x}", 7, &v58);
  v50 = a5;
  v12 = *(&v65 + 1);
  if (*(&v65 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v51 = v10;
  v13 = __p;
  if (*(&v65 + 1) >= 0x17uLL)
  {
    if ((*(&v65 + 1) | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (*(&v65 + 1) | 7) + 1;
    }

    p_dst = operator new(v23);
    v53 = v12;
    v54 = v23 | 0x8000000000000000;
    __dst = p_dst;
  }

  else
  {
    HIBYTE(v54) = BYTE8(v65);
    p_dst = &__dst;
    if (!*(&v65 + 1))
    {
      LOBYTE(__dst) = 0;
      v15 = __p;
      if (__p == &v68)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  memmove(p_dst, v13, v12);
  *(p_dst + v12) = 0;
  v15 = __p;
  if (__p != &v68)
  {
LABEL_7:
    operator delete(v15);
  }

LABEL_8:
  if (v54 >= 0)
  {
    v16 = &__dst;
  }

  else
  {
    v16 = __dst;
  }

  if (v54 >= 0)
  {
    v17 = HIBYTE(v54);
  }

  else
  {
    v17 = v53;
  }

  v18 = std::string::append(&v55, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v56;
  }

  else
  {
    v20 = v56.__r_.__value_.__r.__words[0];
  }

  ctu::OsLogContext::OsLogContext(v57, v9, v20);
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v22 = dispatch_queue_create_with_target_V2("proxy", initially_inactive, 0);
  dispatch_set_qos_class_floor(v22, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v22);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v22;
  if (v22)
  {
    dispatch_retain(v22);
    *(a1 + 32) = 0;
    dispatch_release(v22);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x245CD26C0](a1 + 40, &v64);
  MEMORY[0x245CD26D0](&v64);
  ctu::OsLogContext::~OsLogContext(v57);
  if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_65:
    operator delete(__dst);
    if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

  operator delete(v56.__r_.__value_.__l.__data_);
  if (SHIBYTE(v54) < 0)
  {
    goto LABEL_65;
  }

LABEL_28:
  if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_66:
  operator delete(v55.__r_.__value_.__l.__data_);
LABEL_29:
  v24 = a4;
  v25 = *a4;
  *a1 = &unk_2852C9068;
  v26 = *(v25 + 31);
  if (v26 >= 0)
  {
    v27 = *(v25 + 31);
  }

  else
  {
    v27 = *(v25 + 16);
  }

  v28 = v27 + 1;
  if (v27 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v28 < 0x17)
  {
    memset(&v56, 0, sizeof(v56));
    v30 = &v56;
    *(&v56.__r_.__value_.__s + 23) = v27 + 1;
    if (!v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if ((v28 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v28 | 7) + 1;
    }

    v30 = operator new(v29);
    v56.__r_.__value_.__l.__size_ = v27 + 1;
    v56.__r_.__value_.__r.__words[2] = v29 | 0x8000000000000000;
    v56.__r_.__value_.__r.__words[0] = v30;
  }

  if (v26 >= 0)
  {
    v31 = (v25 + 8);
  }

  else
  {
    v31 = *(v25 + 8);
  }

  memmove(v30, v31, v27);
LABEL_43:
  *&v30[v27] = 46;
  v62 = 0;
  v63 = 6;
  v61 = v51;
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v82 = v32;
  v83 = v32;
  v81 = v32;
  v80 = v32;
  v79 = v32;
  v78 = v32;
  v77 = v32;
  v76 = v32;
  v75 = v32;
  v74 = v32;
  v73 = v32;
  v72 = v32;
  v71 = v32;
  v70 = v32;
  v69 = v32;
  v68 = v32;
  v64 = &v68;
  v65 = xmmword_240EDCC50;
  v66 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v67 = 0;
  __p = &v68;
  v58 = 1;
  v59 = &v61;
  v60 = 6;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v64, "{:#04x}", 7, &v58);
  v33 = *(&v65 + 1);
  if (*(&v65 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = __p;
  if (*(&v65 + 1) >= 0x17uLL)
  {
    if ((*(&v65 + 1) | 7) == 0x17)
    {
      v42 = 25;
    }

    else
    {
      v42 = (*(&v65 + 1) | 7) + 1;
    }

    v35 = operator new(v42);
    v55.__r_.__value_.__l.__size_ = v33;
    v55.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
    v55.__r_.__value_.__r.__words[0] = v35;
  }

  else
  {
    *(&v55.__r_.__value_.__s + 23) = BYTE8(v65);
    v35 = &v55;
    if (!*(&v65 + 1))
    {
      v55.__r_.__value_.__s.__data_[0] = 0;
      v36 = __p;
      if (__p == &v68)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }
  }

  memmove(v35, v34, v33);
  *(v35 + v33) = 0;
  v36 = __p;
  if (__p != &v68)
  {
LABEL_47:
    operator delete(v36);
  }

LABEL_48:
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v55;
  }

  else
  {
    v37 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v55.__r_.__value_.__l.__size_;
  }

  v39 = std::string::append(&v56, v37, size);
  v40 = *&v39->__r_.__value_.__l.__data_;
  *(a1 + 64) = *(&v39->__r_.__value_.__l + 2);
  *(a1 + 48) = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_68:
    operator delete(v56.__r_.__value_.__l.__data_);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_69;
  }

  operator delete(v55.__r_.__value_.__l.__data_);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_68;
  }

LABEL_56:
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
LABEL_57:
    v41 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v41;
    goto LABEL_70;
  }

LABEL_69:
  std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
LABEL_70:
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v43 = *(a2 + 24);
    *(a1 + 112) = *(a2 + 5);
    *(a1 + 96) = v43;
  }

  v44 = a2[3];
  v45 = a2[4];
  *(a1 + 152) = a2[5];
  *(a1 + 136) = v45;
  *(a1 + 120) = v44;
  *(a1 + 168) = v50;
  *(a1 + 172) = 0;
  *(a1 + 176) = *a3;
  v46 = a3[1];
  *(a1 + 184) = v46;
  if (v46)
  {
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 192) = *v24;
  *v24 = 0;
  v24[1] = 0;
  *(a1 + 216) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  v47 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_240EBA220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 + 95) < 0)
  {
    operator delete(*(v9 + 72));
  }

  if (*(v9 + 71) < 0)
  {
    operator delete(*a9);
  }

  MEMORY[0x245CD26D0](v9 + 40);
  ctu::SharedSynchronizable<abb::router::Agent>::~SharedSynchronizable((v9 + 8));
  _Unwind_Resume(a1);
}

void abb::router::ClientProxy::~ClientProxy(abb::router::ClientProxy *this)
{
  *this = &unk_2852C9068;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v33[0] = 0;
    _os_log_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEFAULT, "#I Done!", v33, 2u);
  }

  v4 = *(this + 41);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(this + 41);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  v6 = *(this + 38);
  if (v6)
  {
    v7 = *(this + 39);
    v8 = *(this + 38);
    if (v7 != v6)
    {
      v9 = v7 - 17;
      v10 = v7 - 17;
      v11 = v7 - 17;
      do
      {
        v12 = *v11;
        v11 -= 17;
        (*v12)(v10);
        v9 -= 17;
        v13 = v10 == v6;
        v10 = v11;
      }

      while (!v13);
      v8 = *(this + 38);
    }

    *(this + 39) = v6;
    operator delete(v8);
  }

  v14 = *(this + 33);
  v15 = *(this + 34);
  if (v15 == v14)
  {
    v15 = *(this + 33);
    *(this + 37) = 0;
    v22 = 0;
  }

  else
  {
    v16 = *(this + 36);
    v17 = &v14[v16 / 0x1E];
    v18 = v14[(*(this + 37) + v16) / 0x1E] + 136 * ((*(this + 37) + v16) % 0x1E);
    if (*v17 + 136 * (v16 % 0x1E) != v18)
    {
      v19 = (*v17 + 136 * (v16 % 0x1E));
      do
      {
        v20 = *v19;
        v19 += 17;
        (*v20)();
        if (v19 - *v17 == 4080)
        {
          v21 = v17[1];
          ++v17;
          v19 = v21;
        }
      }

      while (v19 != v18);
      v14 = *(this + 33);
      v15 = *(this + 34);
    }

    *(this + 37) = 0;
    v22 = v15 - v14;
    if (v22 >= 3)
    {
      do
      {
        operator delete(*v14);
        v15 = *(this + 34);
        v14 = (*(this + 33) + 8);
        *(this + 33) = v14;
        v22 = v15 - v14;
      }

      while (v22 > 2);
    }
  }

  if (v22 == 1)
  {
    v23 = 15;
    goto LABEL_27;
  }

  if (v22 == 2)
  {
    v23 = 30;
LABEL_27:
    *(this + 36) = v23;
  }

  if (v14 != v15)
  {
    do
    {
      v24 = *v14++;
      operator delete(v24);
    }

    while (v14 != v15);
    v26 = *(this + 33);
    v25 = *(this + 34);
    if (v25 != v26)
    {
      *(this + 34) = v25 + ((v26 - v25 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v27 = *(this + 32);
  if (v27)
  {
    operator delete(v27);
  }

  std::__tree<unsigned int>::destroy(this + 232, *(this + 30));
  std::__tree<unsigned int>::destroy(this + 208, *(this + 27));
  v28 = *(this + 25);
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = *(this + 23);
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    if ((*(this + 119) & 0x80000000) == 0)
    {
LABEL_40:
      if ((*(this + 95) & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_51;
    }
  }

  else if ((*(this + 119) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(*(this + 12));
  if ((*(this + 95) & 0x80000000) == 0)
  {
LABEL_41:
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_52;
  }

LABEL_51:
  operator delete(*(this + 9));
  if ((*(this + 71) & 0x80000000) == 0)
  {
LABEL_42:
    MEMORY[0x245CD26D0](v2);
    v30 = *(this + 4);
    if (!v30)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_52:
  operator delete(*(this + 6));
  MEMORY[0x245CD26D0](v2);
  v30 = *(this + 4);
  if (v30)
  {
LABEL_43:
    dispatch_release(v30);
  }

LABEL_44:
  v31 = *(this + 3);
  if (v31)
  {
    dispatch_release(v31);
  }

  v32 = *(this + 2);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }
}

{
  abb::router::ClientProxy::~ClientProxy(this);

  operator delete(v1);
}

void abb::router::ClientProxy::create(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  *(a5 + 8) = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x158uLL);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a1, *(a1 + 8));
  }

  else
  {
    v23 = *a1;
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    __p = *(a1 + 24);
  }

  v11 = *(a1 + 64);
  v25 = *(a1 + 48);
  v26 = v11;
  v27 = *(a1 + 80);
  v12 = a2[1];
  v21 = *a2;
  v22 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  abb::router::ClientProxy::ClientProxy(v10, &v23, &v21, &v20, a4);
  *a5 = v10;
  *(a5 + 8) = 0xAAAAAAAAAAAAAAAALL;
  v13 = operator new(0x20uLL);
  v13[1] = 0;
  v14 = v13 + 1;
  *v13 = &unk_2852C9150;
  v13[2] = 0;
  v13[3] = v10;
  *(a5 + 8) = v13;
  v15 = *(v10 + 2);
  if (v15)
  {
    if (v15->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v13 + 2, 1uLL, memory_order_relaxed);
      *(v10 + 1) = v10;
      *(v10 + 2) = v13;
      v16 = v13;
      std::__shared_weak_count::__release_weak(v15);
      v13 = v16;
      if (!atomic_fetch_add(v14, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v13 + 2, 1uLL, memory_order_relaxed);
    *(v10 + 1) = v10;
    *(v10 + 2) = v13;
    if (!atomic_fetch_add(v14, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_14:
      v17 = v13;
      (*(*v13 + 16))();
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  v18 = *(&v20 + 1);
  if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = v22;
  if (!v22 || atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    operator delete(v23.__r_.__value_.__l.__data_);
    goto LABEL_22;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  abb::router::ClientProxy::connect(*a5);
}

void sub_240EBA9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  operator delete(v18);
  _Unwind_Resume(a1);
}

void abb::router::ClientProxy::connect(abb::router::ClientProxy *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::connect(void)::$_0>(abb::router::ClientProxy::connect(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::connect(void)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::connect(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t abb::router::ClientProxy::getStatus(abb::router::ClientProxy *this)
{
  v4 = this;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router11ClientProxyEE20execute_wrapped_syncIZNS3_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_96;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = -86;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3abb6router12ClientStatusEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS7_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_98;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -86;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFN3abb6router12ClientStatusEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS7_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_97;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

uint64_t abb::router::ClientProxy::getClientId(abb::router::ClientProxy *this)
{
  v4 = this;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router11ClientProxyEE20execute_wrapped_syncIZNKS3_11getClientIdEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_100;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = -1431655766;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0;
    v10 = &__block_descriptor_tmp_102;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -1431655766;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0;
    v10 = &__block_descriptor_tmp_101;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void abb::router::ClientProxy::getIndications(abb::router::ClientProxy *this@<X0>, void *a2@<X8>)
{
  v5 = this;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router11ClientProxyEE20execute_wrapped_syncIZNKS3_14getIndicationsEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v6[3] = &__block_descriptor_tmp_104;
  v6[4] = this + 8;
  v6[5] = &v5;
  v7 = v6;
  v3 = this + 24;
  v2 = *(this + 3);
  v4 = a2 + 1;
  if (*(v3 + 1))
  {
    *v4 = 0;
    a2[2] = 0;
    *a2 = v4;
    block = MEMORY[0x277D85DD0];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__13setIjNS1_4lessIjEENS1_9allocatorIjEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_106;
    v12 = a2;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *v4 = 0;
    a2[2] = 0;
    *a2 = v4;
    block = MEMORY[0x277D85DD0];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__13setIjNS1_4lessIjEENS1_9allocatorIjEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_105;
    v12 = a2;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }
}

void abb::router::ClientProxy::getWakeables(abb::router::ClientProxy *this@<X0>, void *a2@<X8>)
{
  v5 = this;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router11ClientProxyEE20execute_wrapped_syncIZNKS3_12getWakeablesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v6[3] = &__block_descriptor_tmp_107;
  v6[4] = this + 8;
  v6[5] = &v5;
  v7 = v6;
  v3 = this + 24;
  v2 = *(this + 3);
  v4 = a2 + 1;
  if (*(v3 + 1))
  {
    *v4 = 0;
    a2[2] = 0;
    *a2 = v4;
    block = MEMORY[0x277D85DD0];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__13setIjNS1_4lessIjEENS1_9allocatorIjEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_106;
    v12 = a2;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *v4 = 0;
    a2[2] = 0;
    *a2 = v4;
    block = MEMORY[0x277D85DD0];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__13setIjNS1_4lessIjEENS1_9allocatorIjEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_105;
    v12 = a2;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }
}

void abb::router::ClientProxy::handleConfirmation(void *a1, uint64_t a2)
{
  abb::router::Message::Message(v11, a2);
  v3 = a1[2];
  if (!v3 || (v4 = a1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x90uLL);
  *v7 = a1;
  abb::router::Message::Message((v7 + 1), v11);
  v8 = a1[3];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = operator new(0x18uLL);
  *v9 = v7;
  v9[1] = v4;
  v9[2] = v6;
  dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleConfirmation(abb::router::Message)::$_0>(abb::router::ClientProxy::handleConfirmation(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleConfirmation(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleConfirmation(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  abb::router::Message::~Message(v11);
}

void abb::router::ClientProxy::handleIndication(void *a1, uint64_t a2)
{
  abb::router::Message::Message(v11, a2);
  v3 = a1[2];
  if (!v3 || (v4 = a1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x90uLL);
  *v7 = a1;
  abb::router::Message::Message((v7 + 1), v11);
  v8 = a1[3];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = operator new(0x18uLL);
  *v9 = v7;
  v9[1] = v4;
  v9[2] = v6;
  dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleIndication(abb::router::Message)::$_0>(abb::router::ClientProxy::handleIndication(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleIndication(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleIndication(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  abb::router::Message::~Message(v11);
}

void abb::router::ClientProxy::handleSentMessage(void *a1, uint64_t a2, char a3)
{
  abb::router::Message::Message(v13, a2);
  v14 = a3;
  v5 = a1[2];
  if (!v5 || (v6 = a1[1], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = operator new(0x98uLL);
  *v9 = a1;
  abb::router::Message::Message((v9 + 8), v13);
  v9[144] = v14;
  v10 = a1[3];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleSentMessage(abb::router::Message,BOOL)::$_0>(abb::router::ClientProxy::handleSentMessage(abb::router::Message,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleSentMessage(abb::router::Message,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleSentMessage(abb::router::Message,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  abb::router::Message::~Message(v13);
}

void abb::router::ClientProxy::handleGatewaySleep(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleGatewaySleep(dispatch::group_session)::$_0>(abb::router::ClientProxy::handleGatewaySleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleGatewaySleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleGatewaySleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::ClientProxy::handleGatewayWakeup(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleGatewayWakeup(dispatch::group_session)::$_0>(abb::router::ClientProxy::handleGatewayWakeup(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleGatewayWakeup(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleGatewayWakeup(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::ClientProxy::handleGatewayStart(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleGatewayStart(dispatch::group_session)::$_0>(abb::router::ClientProxy::handleGatewayStart(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleGatewayStart(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleGatewayStart(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::ClientProxy::handleGatewayStop(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleGatewayStop(dispatch::group_session)::$_0>(abb::router::ClientProxy::handleGatewayStop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleGatewayStop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleGatewayStop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::ClientProxy::handleGatewayDown(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleGatewayDown(dispatch::group_session)::$_0>(abb::router::ClientProxy::handleGatewayDown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleGatewayDown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleGatewayDown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::ClientProxy::handleGatewaySleep_sync(uint64_t a1, NSObject **a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 172);
    if (v5 > 7)
    {
      v6 = "(unknown)";
    }

    else
    {
      v6 = off_278CBB298[v5];
    }

    v7 = *(a1 + 168);
    *buf = 136315394;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Request from gateway to sleep [%s]; Client=0x%02x", buf, 0x12u);
  }

  v8 = *(a1 + 172);
  if (v8 > 6 || v8 == 3)
  {
    v11 = *a2;
    v12 = v11;
    if (v11)
    {
      dispatch_retain(v11);
      dispatch_group_enter(v11);
    }

    abb::router::ClientProxy::sendSleep_sync(a1, &v12);
    if (v11)
    {
      dispatch_group_leave(v11);
      dispatch_release(v11);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_240EBB9FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::ClientProxy::sendSleep_sync(abb::router::ClientProxy *this, dispatch_object_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = *(this + 41);
  *(this + 41) = v3;
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  if (*(this + 336) == 1)
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(this + 42);
      v9[0] = 67109120;
      v9[1] = v6;
      _os_log_impl(&dword_240E91000, v5, OS_LOG_TYPE_DEFAULT, "#I Sending sleep request; Client=0x%02x", v9, 8u);
    }

    abb::router::ClientProxy::sendStatus_sync(this, 5u);
    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];

    abb::router::ClientProxy::checkSleepCompletion_sync(this);
  }
}

void abb::router::ClientProxy::handleGatewayWakeup_sync(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 172);
    if (v3 > 7)
    {
      v4 = "(unknown)";
    }

    else
    {
      v4 = off_278CBB298[v3];
    }

    v5 = *(a1 + 168);
    v9 = 136315394;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Request from gateway to wakeup [%s]; Client=0x%02x", &v9, 0x12u);
  }

  v6 = *(a1 + 172);
  if (v6 <= 6)
  {
    v7 = 1 << v6;
    if ((v7 & 0x68) != 0)
    {
      abb::router::ClientProxy::sendWakeup_sync(a1);
    }

    else if ((v7 & 6) != 0)
    {
      abb::router::ClientProxy::setStatus_sync(a1, 3u);
      abb::router::ClientProxy::sendStatus_sync(a1, 3u);
      abb::router::ClientProxy::trySendingRequests_sync(a1);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void abb::router::ClientProxy::sendActive_sync(abb::router::ClientProxy *this)
{
  abb::router::ClientProxy::setStatus_sync(this, 3u);
  abb::router::ClientProxy::sendStatus_sync(this, 3u);

  abb::router::ClientProxy::trySendingRequests_sync(this);
}

void abb::router::ClientProxy::sendWakeup_sync(abb::router::ClientProxy *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(this + 337) == 1)
  {
    abb::router::ClientProxy::sendStatus_sync(this, 7u);
  }

  v2 = *(this + 41);
  if (v2)
  {
    *(this + 41) = 0;
    dispatch_group_leave(v2);
    dispatch_release(v2);
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(this + 42);
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEFAULT, "#I Sleep session is cleared; Client=0x%02x", v6, 8u);
    }
  }

  abb::router::ClientProxy::setStatus_sync(this, 3u);
  abb::router::ClientProxy::trySendingRequests_sync(this);
  v5 = *MEMORY[0x277D85DE8];
}

void abb::router::ClientProxy::handleGatewayStart_sync(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 172);
    if (v3 > 7)
    {
      v4 = "(unknown)";
    }

    else
    {
      v4 = off_278CBB298[v3];
    }

    v5 = *(a1 + 168);
    v11 = 136315394;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Request from gateway to start [%s]; Client=0x%02x", &v11, 0x12u);
  }

  v6 = *(a1 + 172);
  v7 = v6 > 7;
  v8 = (1 << v6) & 0xE9;
  if (v7 || v8 == 0)
  {
    abb::router::ClientProxy::setStatus_sync(a1, 3u);
    abb::router::ClientProxy::setStatus_sync(a1, 3u);
    abb::router::ClientProxy::sendStatus_sync(a1, 3u);
    abb::router::ClientProxy::trySendingRequests_sync(a1);
    abb::router::ClientProxy::trySendingRequests_sync(a1);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void abb::router::ClientProxy::setStatus_sync(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 172);
  if (v2 != a2)
  {
    *(a1 + 172) = a2;
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v2 > 7)
      {
        v6 = "(unknown)";
        if (a2 > 7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v6 = off_278CBB298[v2];
        if (a2 > 7)
        {
LABEL_5:
          v7 = "(unknown)";
LABEL_8:
          v8 = *(a1 + 168);
          v10 = 136315650;
          v11 = v6;
          v12 = 2080;
          v13 = v7;
          v14 = 1024;
          v15 = v8;
          _os_log_impl(&dword_240E91000, v5, OS_LOG_TYPE_DEFAULT, "#I Status changing from %s -> %s for client; Client=0x%02x", &v10, 0x1Cu);
          goto LABEL_9;
        }
      }

      v7 = off_278CBB298[a2];
      goto LABEL_8;
    }
  }

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
}

void abb::router::ClientProxy::trySendingRequests_sync(abb::router::ClientProxy *this)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!*(this + 37))
  {
    v33 = *(this + 5);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = *(this + 42);
      *buf = 67109120;
      *&buf[4] = v34;
      _os_log_debug_impl(&dword_240E91000, v33, OS_LOG_TYPE_DEBUG, "#D Wait queue is empty; nothing to send; Client=0x%02x", buf, 8u);
    }

    goto LABEL_46;
  }

  v2 = *(this + 172);
  if (v2 <= 6 && v2 != 3)
  {
    goto LABEL_46;
  }

  v43 = *(this + 37);
  v4 = 0;
  v5 = (this + 304);
  do
  {
    while (1)
    {
      v7 = 0xF0F0F0F0F0F0F0F1 * ((*(this + 39) - *(this + 38)) >> 3);
      v8 = *(this + 16);
      if (v7 >= v8)
      {
        v35 = *(this + 5);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        v36 = *(this + 42);
        *buf = 134219008;
        *&buf[4] = v4;
        *&buf[12] = 2048;
        *&buf[14] = v43;
        *&buf[22] = 2048;
        v47 = v7;
        *v48 = 2048;
        *&v48[2] = v8;
        v49 = 1024;
        v50 = v36;
        v37 = "#I Sent %zu of %zu messages from wait-queue; pending confirmations [%zu]; flow-control [%zu]; Client=0x%02x";
        v38 = v35;
        v39 = 48;
        goto LABEL_44;
      }

      v9 = (*(*(this + 33) + 8 * (*(this + 36) / 0x1EuLL)) + 136 * (*(this + 36) % 0x1EuLL));
      v10 = *(this + 22);
      abb::router::Message::Message(v45, v9);
      abb::router::Gateway::sendMessage(v10, v45);
      abb::router::Message::~Message(v45);
      v11 = *(this + 5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        abb::router::Message::generatePrintString(v9);
        v12 = v9 + 112;
        if (v9[135] < 0)
        {
          v12 = *v12;
        }

        *buf = 136315138;
        *&buf[4] = v12;
        _os_log_impl(&dword_240E91000, v11, OS_LOG_TYPE_DEFAULT, "#I Sent request to gateway; %s", buf, 0xCu);
      }

      v14 = *(this + 39);
      v13 = *(this + 40);
      if (v14 < v13)
      {
        abb::router::Message::Message(*(this + 39), v9);
        v15 = v14 + 136;
        *(this + 39) = v14 + 136;
        goto LABEL_33;
      }

      v16 = 0xF0F0F0F0F0F0F0F1 * ((v14 - *v5) >> 3);
      v17 = v16 + 1;
      if (v16 + 1 > 0x1E1E1E1E1E1E1E1)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v18 = 0xF0F0F0F0F0F0F0F1 * ((v13 - *v5) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      v19 = v18 >= 0xF0F0F0F0F0F0F0 ? 0x1E1E1E1E1E1E1E1 : v17;
      *v48 = v5;
      if (v19)
      {
        if (v19 > 0x1E1E1E1E1E1E1E1)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = operator new(136 * v19);
      }

      else
      {
        v20 = 0;
      }

      v21 = v5;
      *buf = v20;
      *&buf[8] = &v20[136 * v16];
      *&buf[16] = *&buf[8];
      v47 = &v20[136 * v19];
      abb::router::Message::Message(*&buf[8], v9);
      v22 = *(this + 38);
      v23 = *(this + 39);
      v24 = *&buf[8] - (v23 - v22);
      v15 = *&buf[16] + 136;
      *&buf[16] += 136;
      if (v23 == v22)
      {
        v5 = v21;
        *(this + 38) = v24;
        *(this + 39) = v15;
        *(this + 40) = v47;
        if (v22)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v44 = v4;
        v25 = 0;
        v26 = *&buf[8] - 8 * ((v23 - v22) >> 3) - 136;
        v27 = v22;
        v28 = *&buf[8] - (v23 - v22);
        do
        {
          abb::router::Message::Message(v28, v27);
          v27 += 136;
          v28 += 136;
          v25 -= 136;
          v26 += 136;
        }

        while (v27 != v23);
        v29 = v22;
        v30 = v22;
        v4 = v44;
        do
        {
          v31 = *v30;
          v30 += 17;
          (*v31)(v22);
          v29 += 136;
          v22 = v30;
        }

        while (v30 != v23);
        v5 = v21;
        v22 = *v21;
        *(this + 38) = v24;
        *(this + 39) = v15;
        *(this + 40) = v47;
        if (v22)
        {
LABEL_32:
          operator delete(v22);
        }
      }

LABEL_33:
      *(this + 39) = v15;
      (**(*(*(this + 33) + 8 * (*(this + 36) / 0x1EuLL)) + 136 * (*(this + 36) % 0x1EuLL)))();
      v32 = vaddq_s64(*(this + 18), xmmword_240EDF890);
      *(this + 18) = v32;
      if (v32.i64[0] < 0x3CuLL)
      {
        break;
      }

      operator delete(**(this + 33));
      *(this + 33) += 8;
      v6 = *(this + 37);
      *(this + 36) -= 30;
      ++v4;
      if (!v6)
      {
        goto LABEL_42;
      }
    }

    ++v4;
  }

  while (v32.i64[1]);
LABEL_42:
  v40 = *(this + 5);
  if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_45;
  }

  v41 = *(this + 42);
  *buf = 134218496;
  *&buf[4] = v4;
  *&buf[12] = 2048;
  *&buf[14] = v43;
  *&buf[22] = 1024;
  LODWORD(v47) = v41;
  v37 = "#I Sent %zu of %zu messages from wait-queue; Client=0x%02x";
  v38 = v40;
  v39 = 28;
LABEL_44:
  _os_log_impl(&dword_240E91000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
LABEL_45:
  std::deque<abb::router::Message>::shrink_to_fit(this + 32);
LABEL_46:
  v42 = *MEMORY[0x277D85DE8];
}

void sub_240EBC568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

void sub_240EBC580(_Unwind_Exception *a1)
{
  if (v3)
  {
    v6 = (v2 - 136);
    do
    {
      v7 = *v6;
      v6 -= 17;
      (*v7)();
      v1 -= 136;
      v3 += 136;
    }

    while (v3);
  }

  std::__split_buffer<abb::router::Message>::~__split_buffer(v4 - 160);
  _Unwind_Resume(a1);
}

void abb::router::ClientProxy::handleGatewayStop_sync(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 172);
    if (v6 > 7)
    {
      v7 = "(unknown)";
    }

    else
    {
      v7 = off_278CBB298[v6];
    }

    v8 = *(a1 + 168);
    v12 = 136315394;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Request from gateway to stop [%s]; Client=0x%02x", &v12, 0x12u);
    v9 = *(a1 + 172);
    if (v9 <= 4 && v9 != 3)
    {
      goto LABEL_6;
    }

LABEL_16:
    abb::router::ClientProxy::handleStopped_sync(a1);
    abb::router::ClientProxy::setStatus_sync(a1, 4u);
    abb::router::ClientProxy::sendStatus_sync(a1, 4u);
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = *(a1 + 172);
  if (v3 > 4 || v3 == 3)
  {
    goto LABEL_16;
  }

LABEL_6:
  v5 = *MEMORY[0x277D85DE8];
}

void abb::router::ClientProxy::handleStopped_sync(abb::router::ClientProxy *this)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    dispatch_group_leave(v2);
    dispatch_release(v2);
  }

  v3 = *(this + 172);
  if (v3 != 3)
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (v3 > 7)
      {
        v5 = "(unknown)";
      }

      else
      {
        v5 = off_278CBB258[v3];
      }

      v6 = *(this + 42);
      *buf = 136315394;
      v35 = v5;
      v36 = 1024;
      LODWORD(v37) = v6;
      _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Proxy is not active [%s]; proceed to stop anyway; Client=0x%02x", buf, 0x12u);
    }
  }

  v7 = *(this + 19);
  v8 = *(this + 39);
  v9 = *(this + 38);
  if (v9 != v8)
  {
    v10 = v9 + 14;
    while (1)
    {
      v11 = *(this + 5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(this + 172);
        v13 = "(unknown)";
        if (v12 <= 7)
        {
          v13 = off_278CBB298[v12];
        }

        abb::router::Message::generatePrintString((v10 - 14));
        v14 = v10;
        if (*(v10 + 23) < 0)
        {
          v14 = *v10;
        }

        *buf = 136315394;
        v35 = v13;
        v36 = 2080;
        v37 = v14;
        _os_log_impl(&dword_240E91000, v11, OS_LOG_TYPE_DEFAULT, "#I Cancel message in sent-queue [%s]; %s", buf, 0x16u);
      }

      v15 = *(this + 2);
      if (!v15 || (v16 = std::__shared_weak_count::lock(v15)) == 0)
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v17 = v16;
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v18 = *(v10 - 8);
        if (v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v17);
        v18 = *(v10 - 8);
        if (v18)
        {
LABEL_23:
          dispatch_source_cancel(v18);
          v19 = *(v10 - 8);
          *(v10 - 8) = 0;
          if (v19)
          {
            dispatch_release(v19);
          }
        }
      }

      abb::router::Message::Message(v33, (v10 - 14));
      abb::router::ClientProxy::sendErrorMessage_sync(this, v33, 89);
      abb::router::Message::~Message(v33);
      std::__shared_weak_count::__release_weak(v17);
      v20 = v10 + 3;
      v10 += 17;
      if (v20 == v8)
      {
        v22 = *(this + 38);
        v21 = *(this + 39);
        if (v21 != v22)
        {
          v23 = v21 - 17;
          v24 = v21 - 17;
          v25 = v21 - 17;
          do
          {
            v26 = *v25;
            v25 -= 17;
            (*v26)(v24);
            v23 -= 17;
            v27 = v24 == v22;
            v24 = v25;
          }

          while (!v27);
        }

        *(this + 39) = v22;
        std::vector<abb::router::Message>::shrink_to_fit(this + 38);
        v28 = *(this + 5);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(this + 42);
          *buf = 67109120;
          LODWORD(v35) = v29;
          v30 = "#I Cleared all messages in sent-queue; stop procedure complete; Client=0x%02x";
          goto LABEL_34;
        }

        goto LABEL_35;
      }
    }
  }

  v28 = *(this + 5);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(this + 42);
    *buf = 67109120;
    LODWORD(v35) = v31;
    v30 = "#I Nothing in sent-queue; stop procedure complete; Client=0x%02x";
LABEL_34:
    _os_log_impl(&dword_240E91000, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 8u);
  }

LABEL_35:
  v32 = *MEMORY[0x277D85DE8];
}

void sub_240EBCA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  abb::router::Message::~Message(va);
  std::__shared_weak_count::__release_weak(v4);
  _Unwind_Resume(a1);
}

void abb::router::ClientProxy::handleGatewayDown_sync(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 172);
    if (v3 > 7)
    {
      v4 = "(unknown)";
    }

    else
    {
      v4 = off_278CBB298[v3];
    }

    v5 = *(a1 + 168);
    *group = 136315394;
    *&group[4] = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Request from gateway to shutdown [%s]; Client=0x%02x", group, 0x12u);
  }

  if (*(a1 + 172))
  {
    abb::router::ClientProxy::handleShutdown_sync(a1);
    abb::router::ClientProxy::setStatus_sync(a1, 0);
    abb::router::ClientProxy::sendStatus_sync(a1, 0);
    *group = dispatch_group_create();
    (*(**(a1 + 192) + 48))(*(a1 + 192), group);
    dispatch_group_wait(*group, 0xFFFFFFFFFFFFFFFFLL);
    if (*group)
    {
      dispatch_release(*group);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_240EBCBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::ClientProxy::handleShutdown_sync(abb::router::ClientProxy *this)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(this + 172) != 4)
  {
    abb::router::ClientProxy::handleStopped_sync(this);
  }

  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    dispatch_group_leave(v2);
    dispatch_release(v2);
  }

  v3 = *(this + 37);
  if (v3)
  {
    v4 = *(this + 33);
    v5 = *(this + 34);
    if (v5 == v4)
    {
      v5 = *(this + 33);
    }

    else
    {
      v6 = *(this + 36);
      v7 = v4[v6 / 0x1E] + 136 * (v6 % 0x1E);
      v8 = v4[(v6 + v3) / 0x1E] + 136 * ((v6 + v3) % 0x1E);
      if (v7 != v8)
      {
        v9 = &v4[v6 / 0x1E];
        while (1)
        {
          v10 = *(this + 5);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(this + 172);
            v12 = "(unknown)";
            if (v11 <= 7)
            {
              v12 = off_278CBB298[v11];
            }

            abb::router::Message::generatePrintString(v7);
            v13 = (v7 + 112);
            if (*(v7 + 135) < 0)
            {
              v13 = *v13;
            }

            *buf = 136315394;
            v37 = v12;
            v38 = 2080;
            v39 = v13;
            _os_log_impl(&dword_240E91000, v10, OS_LOG_TYPE_DEFAULT, "#I Cancel message in wait-queue [%s]; %s", buf, 0x16u);
          }

          v14 = *(this + 2);
          if (!v14 || (v15 = std::__shared_weak_count::lock(v14)) == 0)
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v16 = v15;
          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v17 = *(v7 + 48);
            if (v17)
            {
              goto LABEL_22;
            }
          }

          else
          {
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v16);
            v17 = *(v7 + 48);
            if (v17)
            {
LABEL_22:
              dispatch_source_cancel(v17);
              v18 = *(v7 + 48);
              *(v7 + 48) = 0;
              if (v18)
              {
                dispatch_release(v18);
              }
            }
          }

          abb::router::Message::Message(v35, v7);
          abb::router::ClientProxy::sendErrorMessage_sync(this, v35, 89);
          abb::router::Message::~Message(v35);
          std::__shared_weak_count::__release_weak(v16);
          v7 += 136;
          if (v7 - *v9 == 4080)
          {
            v19 = v9[1];
            ++v9;
            v7 = v19;
          }

          if (v7 == v8)
          {
            v4 = *(this + 33);
            v5 = *(this + 34);
            break;
          }
        }
      }

      if (v5 != v4)
      {
        v23 = *(this + 36);
        v24 = &v4[v23 / 0x1E];
        v25 = v4[(*(this + 37) + v23) / 0x1E] + 136 * ((*(this + 37) + v23) % 0x1E);
        if (*v24 + 136 * (v23 % 0x1E) != v25)
        {
          v26 = (*v24 + 136 * (v23 % 0x1E));
          do
          {
            v27 = *v26;
            v26 += 17;
            (*v27)();
            if (v26 - *v24 == 4080)
            {
              v28 = v24[1];
              ++v24;
              v26 = v28;
            }
          }

          while (v26 != v25);
          v4 = *(this + 33);
          v34 = *(this + 34);
          *(this + 37) = 0;
          v29 = (v34 - v4) >> 3;
          if (v29 < 3)
          {
LABEL_38:
            if (v29 == 1)
            {
              v31 = 15;
            }

            else
            {
              if (v29 != 2)
              {
                goto LABEL_43;
              }

              v31 = 30;
            }

            *(this + 36) = v31;
LABEL_43:
            v20 = *(this + 5);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v32 = *(this + 42);
              *buf = 67109120;
              LODWORD(v37) = v32;
              v22 = "#I Cleared all messages in wait-queue; shutdown procedure complete; Client=0x%02x";
              goto LABEL_45;
            }

            goto LABEL_46;
          }

          do
          {
LABEL_37:
            operator delete(*v4);
            v30 = *(this + 34);
            v4 = (*(this + 33) + 8);
            *(this + 33) = v4;
            v29 = (v30 - v4) >> 3;
          }

          while (v29 > 2);
          goto LABEL_38;
        }
      }
    }

    *(this + 37) = 0;
    v29 = v5 - v4;
    if (v29 < 3)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v20 = *(this + 5);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(this + 42);
    *buf = 67109120;
    LODWORD(v37) = v21;
    v22 = "#I Nothing in wait-queue; shutdown procedure complete; Client=0x%02x";
LABEL_45:
    _os_log_impl(&dword_240E91000, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 8u);
  }

LABEL_46:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_240EBD05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  abb::router::Message::~Message(va);
  std::__shared_weak_count::__release_weak(v4);
  _Unwind_Resume(a1);
}

void abb::router::ClientProxy::sendDown_sync(abb::router::ClientProxy *this)
{
  abb::router::ClientProxy::sendStatus_sync(this, 0);
  group = dispatch_group_create();
  (*(**(this + 24) + 48))(*(this + 24), &group);
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if (group)
  {
    dispatch_release(group);
  }
}

void sub_240EBD0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::ClientProxy::handleConfirmation_sync(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = **(a2 + 8);
  v5 = *(v4 + 12);
  v6 = *(v4 + 9);
  v7 = *(v4 + 10);
  v9 = *(a1 + 304);
  v8 = *(a1 + 312);
  if (v9 != v8)
  {
    while (*(**(v9 + 8) + 12) != v5)
    {
      v9 += 136;
      if (v9 == v8)
      {
        v10 = *(a1 + 40);
        goto LABEL_15;
      }
    }
  }

  v10 = *(a1 + 40);
  if (v9 == v8)
  {
LABEL_15:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      abb::router::Message::generatePrintString(a2);
      v16 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        v16 = *v16;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v16;
      _os_log_debug_impl(&dword_240E91000, v10, OS_LOG_TYPE_DEBUG, "#D Confirmation is not tracked; %s", &buf, 0xCu);
    }

    goto LABEL_55;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString(a2);
    v11 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v11 = *v11;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_240E91000, v10, OS_LOG_TYPE_DEFAULT, "#I Confirmation received; cancel timer; %s", &buf, 0xCu);
  }

  v12 = *(v9 + 48);
  if (v12)
  {
    dispatch_source_cancel(v12);
    v13 = *(v9 + 48);
    *(v9 + 48) = 0;
    if (v13)
    {
      dispatch_release(v13);
    }
  }

  xdict = 0xAAAAAAAAAAAAAAAALL;
  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v14;
  if (v14)
  {
    xdict = v14;
  }

  else
  {
    v15 = xpc_null_create();
    xdict = v15;
    if (!v15)
    {
      v17 = xpc_null_create();
      v15 = 0;
      goto LABEL_24;
    }
  }

  if (MEMORY[0x245CD2F50](v15) != MEMORY[0x277D86468])
  {
    v17 = xpc_null_create();
LABEL_24:
    xdict = v17;
    goto LABEL_25;
  }

  xpc_retain(v15);
LABEL_25:
  xpc_release(v15);
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  *&buf = v18;
  *(&buf + 1) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    v20 = *v18;
    v18 = *(a2 + 8);
    v21 = *(a2 + 16);
    v40 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v20 = *v18;
    v40 = 0;
  }

  v22 = xpc_data_create(v20, *(v18 + 8) - *v18);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "Confirmation", v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  v24 = *(&buf + 1);
  if (*(&buf + 1) && !atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = xpc_int64_create(v5 >> 8);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "ClientId", v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_int64_create(v5);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "TrxId", v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v29 = xpc_int64_create(v7);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "MsgId", v29);
  v30 = xpc_null_create();
  xpc_release(v29);
  xpc_release(v30);
  v31 = xpc_int64_create(v6 & 3);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "MsgType", v31);
  v32 = xpc_null_create();
  xpc_release(v31);
  xpc_release(v32);
  abb::router::ClientProxy::sendMessage_sync(a1, &xdict);
  v33 = *(a1 + 312);
  if (v9 + 136 != v33)
  {
    do
    {
      abb::router::Message::operator=(v9, v9 + 136);
      v9 += 136;
    }

    while (v9 + 136 != v33);
    v33 = *(a1 + 312);
  }

  if (v33 != v9)
  {
    v34 = (v33 - 136);
    v35 = v34;
    v36 = v34;
    do
    {
      v37 = *v36;
      v36 -= 17;
      (*v37)(v35);
      v34 -= 17;
      v38 = v35 == v9;
      v35 = v36;
    }

    while (!v38);
  }

  *(a1 + 312) = v9;
  std::vector<abb::router::Message>::shrink_to_fit((a1 + 304));
  if (*(a1 + 172) == 5)
  {
    abb::router::ClientProxy::checkSleepCompletion_sync(a1);
  }

  abb::router::ClientProxy::trySendingRequests_sync(a1);
  xpc_release(xdict);
LABEL_55:
  v39 = *MEMORY[0x277D85DE8];
}

void sub_240EBD614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL abb::router::ClientProxy::sendMessage_sync(uint64_t a1, void **a2)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    v3 = *a2;
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    (*(*v2 + 16))(v2, &object);
    xpc_release(object);
  }

  return v2 != 0;
}

void std::vector<abb::router::Message>::shrink_to_fit(void (****a1)(void *))
{
  v1 = a1[1];
  v2 = *a1;
  v3 = v1 - *a1;
  if (a1[2] - *a1 > v3)
  {
    if (v1 == v2)
    {
      v6 = 8 * (v3 >> 3);
    }

    else
    {
      if (0xF0F0F0F0F0F0F0F1 * (v3 >> 3) >= 0x1E1E1E1E1E1E1E2)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v5 = operator new(v3);
      v6 = v5 + 8 * (v3 >> 3);
      *&v12 = v6;
      *(&v12 + 1) = v6;
      if (v1 != v2)
      {
        v7 = 0;
        v8 = v5;
        do
        {
          abb::router::Message::Message(v8 + v7 * 8, &v2[v7]);
          v7 += 17;
        }

        while (&v2[v7] != v1);
        v9 = v2;
        v10 = v2;
        do
        {
          v11 = *v10;
          v10 += 17;
          (*v11)(v2);
          v9 += 17;
          v2 = v10;
        }

        while (v10 != v1);
        v2 = *a1;
        *a1 = (v6 - v3);
        *(a1 + 1) = v12;
        if (!v2)
        {
          return;
        }

LABEL_13:
        operator delete(v2);
        return;
      }
    }

    *a1 = (v6 - v3);
    *(a1 + 1) = vdupq_n_s64(v6);
    if (!v2)
    {
      return;
    }

    goto LABEL_13;
  }
}

void sub_240EBD918(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x240EBD8F0);
}

void abb::router::ClientProxy::checkSleepCompletion_sync(abb::router::ClientProxy *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 41))
  {
    v2 = *(this + 38);
    v3 = *(this + 39);
    if (v2 != v3)
    {
      while (1)
      {
        v4 = *(v2 + 80);
        if ((v4 & 0x100) != 0 && !v4)
        {
          break;
        }

        v2 += 136;
        if (v2 == v3)
        {
          v5 = *(this + 5);
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }
      }
    }

    v5 = *(this + 5);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v2 == v3)
    {
      if (v6)
      {
LABEL_14:
        v10 = *(this + 42);
        v13 = 67109120;
        v14 = v10;
        _os_log_impl(&dword_240E91000, v5, OS_LOG_TYPE_DEFAULT, "#I Sleep procedure complete; Client=0x%02x", &v13, 8u);
      }

LABEL_15:
      abb::router::ClientProxy::setStatus_sync(this, 6u);
      v11 = *(this + 41);
      *(this + 41) = 0;
      if (v11)
      {
        dispatch_group_leave(v11);
        dispatch_release(v11);
      }
    }

    else
    {
      if (v6)
      {
        v7 = *(this + 42);
        v13 = 67109120;
        v14 = v7;
        _os_log_impl(&dword_240E91000, v5, OS_LOG_TYPE_DEFAULT, "#I Sleep procedure is waiting for confirmations; Client=0x%02x", &v13, 8u);
      }

      abb::router::ClientProxy::setStatus_sync(this, 5u);
    }
  }

  else
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(this + 42);
      v13 = 67109120;
      v14 = v9;
      _os_log_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEFAULT, "#I Sleep session is not held; Client=0x%02x", &v13, 8u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void abb::router::ClientProxy::handleIndication_sync(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 216);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = **(a2 + 8);
  v6 = *(v5 + 12);
  v7 = *(v5 + 10);
  v8 = a1 + 216;
  do
  {
    v9 = *(v4 + 28);
    v10 = v9 >= v7;
    v11 = v9 < v7;
    if (v10)
    {
      v8 = v4;
    }

    v4 = *(v4 + 8 * v11);
  }

  while (v4);
  if (v8 == a1 + 216 || *(v8 + 28) > v7)
  {
LABEL_9:
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      abb::router::Message::generatePrintString(a2);
      v13 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        v13 = *v13;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v13;
      _os_log_debug_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEBUG, "#D Client is not registered for this indication; %s", &buf, 0xCu);
    }

    goto LABEL_44;
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v14;
  if (v14)
  {
    xdict = v14;
  }

  else
  {
    v15 = xpc_null_create();
    xdict = v15;
    if (!v15)
    {
      v16 = xpc_null_create();
      v15 = 0;
      goto LABEL_20;
    }
  }

  if (MEMORY[0x245CD2F50](v15) != MEMORY[0x277D86468])
  {
    v16 = xpc_null_create();
LABEL_20:
    xdict = v16;
    goto LABEL_21;
  }

  xpc_retain(v15);
LABEL_21:
  xpc_release(v15);
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  *&buf = v17;
  *(&buf + 1) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    v19 = *v17;
    v17 = *(a2 + 8);
    v20 = *(a2 + 16);
    v33 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v19 = *v17;
    v33 = 0;
  }

  v21 = xpc_data_create(v19, *(v17 + 8) - *v17);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "Indication", v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  if (*(&buf + 1) && !atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&buf + 1) + 16))(*(&buf + 1));
    std::__shared_weak_count::__release_weak(*(&buf + 1));
  }

  v23 = xpc_int64_create(v6 >> 8);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v24 = xdict;
  xpc_dictionary_set_value(xdict, "ClientId", v23);
  v25 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v25);
  v26 = xpc_int64_create(v6);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "TrxId", v26);
  v27 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v27);
  v28 = xpc_int64_create(v7);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "MsgId", v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
  v30 = *(a1 + 40);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString(a2);
    v31 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v31 = *v31;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v31;
    _os_log_impl(&dword_240E91000, v30, OS_LOG_TYPE_DEFAULT, "#I Forward indication to client; %s", &buf, 0xCu);
  }

  abb::router::ClientProxy::sendMessage_sync(a1, &xdict);
  xpc_release(v24);
LABEL_44:
  v32 = *MEMORY[0x277D85DE8];
}

void sub_240EBDF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::ClientProxy::handleSentMessage_sync(void *a1, uint64_t a2, int a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = *(**(a2 + 8) + 12);
  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (a3)
    {
      v11 = "canceled";
    }

    else
    {
      v11 = "sent";
    }

    abb::router::Message::generatePrintString(a2);
    v12 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v12 = *v12;
    }

    *buf = 136315394;
    v38 = v11;
    v39 = 2080;
    v40 = v12;
    _os_log_debug_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEBUG, "#D Lookup %s message; %s", buf, 0x16u);
    v9 = a1[38];
    v8 = a1[39];
    if (v9 != v8)
    {
      do
      {
LABEL_3:
        if (*(**(v9 + 8) + 12) == v6)
        {
          goto LABEL_12;
        }

        v9 += 136;
      }

      while (v9 != v8);
      v10 = a1[5];
      goto LABEL_26;
    }
  }

  else
  {
    v9 = a1[38];
    v8 = a1[39];
    if (v9 != v8)
    {
      goto LABEL_3;
    }
  }

LABEL_12:
  v10 = a1[5];
  if (v9 == v8)
  {
LABEL_26:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      abb::router::Message::generatePrintString(a2);
      v22 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        v22 = *v22;
      }

      *buf = 136315138;
      v38 = v22;
      _os_log_impl(&dword_240E91000, v10, OS_LOG_TYPE_DEFAULT, "#I Request not tracked; not looking for confirmation or, might be canceled already; %s", buf, 0xCu);
    }

    v23 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = a1[5];
  if (a3)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      abb::router::Message::generatePrintString(a2);
      v14 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315138;
      v38 = v14;
      _os_log_impl(&dword_240E91000, v10, OS_LOG_TYPE_DEFAULT, "#I Sending request failed; send error confirmation; %s", buf, 0xCu);
    }

    abb::router::Message::Message(v36, a2);
    abb::router::ClientProxy::sendErrorMessage_sync(a1, v36, 5);
    abb::router::Message::~Message(v36);
    v15 = a1[39];
    if (v9 + 136 != v15)
    {
      do
      {
        abb::router::Message::operator=(v9, v9 + 136);
        v9 += 136;
      }

      while (v9 + 136 != v15);
      v15 = a1[39];
    }

    if (v15 != v9)
    {
      v16 = (v15 - 136);
      v17 = v16;
      v18 = v16;
      do
      {
        v19 = *v18;
        v18 -= 17;
        (*v19)(v17);
        v16 -= 17;
        v20 = v17 == v9;
        v17 = v18;
      }

      while (!v20);
    }

    a1[39] = v9;
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    abb::router::Message::generatePrintString(a2);
    v30 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v30 = *v30;
    }

    *buf = 136315138;
    v38 = v30;
    _os_log_debug_impl(&dword_240E91000, v10, OS_LOG_TYPE_DEBUG, "#D Start timer for request; %s", buf, 0xCu);
    v24 = a1[2];
    if (!v24)
    {
LABEL_49:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v24 = a1[2];
    if (!v24)
    {
      goto LABEL_49;
    }
  }

  v25 = a1[1];
  v26 = std::__shared_weak_count::lock(v24);
  if (!v26)
  {
    goto LABEL_49;
  }

  v27 = v26;
  atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = a1[3];
  object = v28;
  if (v28)
  {
    dispatch_retain(v28);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 1174405120;
  v31[2] = ___ZN3abb6router11ClientProxy22handleSentMessage_syncENS0_7MessageEb_block_invoke;
  v31[3] = &__block_descriptor_tmp_3;
  v31[4] = a1;
  v31[5] = v25;
  v32 = v27;
  atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33[34] = v6;
  abb::router::Message::Message(v33, a2);
  aBlock = _Block_copy(v31);
  abb::router::Message::startTimer(v9, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  abb::router::Message::~Message(v33);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  std::__shared_weak_count::__release_weak(v27);
  v29 = *MEMORY[0x277D85DE8];
}

void sub_240EBE490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL abb::router::ClientProxy::sendErrorMessage_sync(uint64_t a1, uint64_t a2, int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    xdict = v6;
  }

  else
  {
    v7 = xpc_null_create();
    xdict = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CD2F50](v7) == MEMORY[0x277D86468])
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  xdict = v8;
LABEL_9:
  xpc_release(v7);
  v9 = xpc_int64_create(a3);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v10 = xdict;
  xpc_dictionary_set_value(xdict, "Confirmation", v9);
  v11 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v11);
  v12 = xpc_int64_create(*(**(a2 + 8) + 13));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "ClientId", v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = xpc_int64_create(*(**(a2 + 8) + 12));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "TrxId", v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(*(**(a2 + 8) + 10));
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "MsgId", v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = *(a2 + 72);
  if ((v18 & 0x100000000) != 0)
  {
    v19 = xpc_int64_create(v18);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, "QueuePolicy", v19);
    v20 = xpc_null_create();
    xpc_release(v19);
    xpc_release(v20);
  }

  v21 = *(a2 + 80);
  if ((v21 & 0x100) != 0)
  {
    v22 = xpc_BOOL_create(v21 & 1);
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, "AllowSleep", v22);
    v23 = xpc_null_create();
    xpc_release(v22);
    xpc_release(v23);
  }

  v24 = abb::router::ClientProxy::sendMessage_sync(a1, &xdict);
  xpc_release(v10);
  return v24;
}

void ___ZN3abb6router11ClientProxy22handleSentMessage_syncENS0_7MessageEb_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  v24 = v4;
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  if (!*(a1 + 40))
  {
    goto LABEL_22;
  }

  v6 = v3[38];
  v7 = v3[39];
  if (v6 != v7)
  {
    while (*(a1 + 192) != *(**(v6 + 8) + 12))
    {
      v6 += 136;
      if (v6 == v7)
      {
        v8 = v3[5];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_22;
        }

        goto LABEL_25;
      }
    }
  }

  v8 = v3[5];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v6 == v7)
  {
    if (v9)
    {
LABEL_25:
      abb::router::Message::generatePrintString((a1 + 56));
      v18 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v18 = *v18;
      }

      *buf = 136315138;
      v26 = v18;
      _os_log_debug_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEBUG, "#D Request not present in tracking queue; %s", buf, 0xCu);
    }

    goto LABEL_22;
  }

  if (!v9)
  {
    if (v6 + 136 == v7)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  abb::router::Message::generatePrintString((a1 + 56));
  v19 = (a1 + 168);
  if (*(a1 + 191) < 0)
  {
    v19 = *v19;
  }

  *buf = 136315138;
  v26 = v19;
  _os_log_debug_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEBUG, "#D Remove request from tracking queue; %s", buf, 0xCu);
  v7 = v3[39];
  if (v6 + 136 != v7)
  {
    do
    {
LABEL_12:
      abb::router::Message::operator=(v6, v6 + 136);
      v6 += 136;
    }

    while (v6 + 136 != v7);
    v7 = v3[39];
  }

LABEL_14:
  if (v7 != v6)
  {
    v10 = v7 - 136;
    v11 = (v7 - 136);
    v12 = (v7 - 136);
    do
    {
      v13 = *v12;
      v12 -= 17;
      (*v13)(v11);
      v10 -= 136;
      v14 = v11 == v6;
      v11 = v12;
    }

    while (!v14);
  }

  v3[39] = v6;
  v15 = v3[5];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    abb::router::Message::generatePrintString((a1 + 56));
    v20 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v20 = *v20;
    }

    *buf = 136315138;
    v26 = v20;
    _os_log_error_impl(&dword_240E91000, v15, OS_LOG_TYPE_ERROR, "TIMEOUT for message; %s", buf, 0xCu);
  }

  abb::router::Message::Message(v22, a1 + 56);
  abb::router::ClientProxy::sendErrorMessage_sync(v3, v22, 60);
  abb::router::Message::~Message(v22);
  v16 = v3[22];
  abb::router::Message::Message(v21, a1 + 56);
  abb::router::Gateway::messageTimeout(v16, v21);
  abb::router::Message::~Message(v21);
  v5 = v24;
  if (v24)
  {
LABEL_22:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

LABEL_24:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_240EBEBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  abb::router::Message::~Message(&a9);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v9 - 112);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__18weak_ptrIN3abb6router11ClientProxyEEE56c26_ZTSKN3abb6router7MessageE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return abb::router::Message::Message(a1 + 56, a2 + 56);
}

void sub_240EBEC54(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c49_ZTSNSt3__18weak_ptrIN3abb6router11ClientProxyEEE56c26_ZTSKN3abb6router7MessageE(uint64_t a1)
{
  abb::router::Message::~Message((a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void abb::router::ClientProxy::handleAction_sync(abb::router::ClientProxy *this, int a2)
{
  if (a2 == 2)
  {
    abb::router::ClientProxy::handleActionStop_sync(this);
  }

  else if (a2 == 1)
  {
    abb::router::ClientProxy::handleActionStart_sync(this);
  }
}

void abb::router::ClientProxy::handleActionStart_sync(abb::router::ClientProxy *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 42);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I User action start; Client=0x%02x", v6, 8u);
    if (*(this + 172) != 3)
    {
      goto LABEL_3;
    }

LABEL_6:
    abb::router::ClientProxy::setStatus_sync(this, 3u);
    abb::router::ClientProxy::sendStatus_sync(this, 3u);
    abb::router::ClientProxy::trySendingRequests_sync(this);
    abb::router::ClientProxy::trySendingRequests_sync(this);
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(this + 172) == 3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
}

void abb::router::ClientProxy::handleActionStop_sync(abb::router::ClientProxy *this)
{
  group[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 42);
    LODWORD(group[0]) = 67109120;
    HIDWORD(group[0]) = v3;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I User action stop; Client=0x%02x", group, 8u);
  }

  abb::router::ClientProxy::handleShutdown_sync(this);
  abb::router::ClientProxy::setStatus_sync(this, 0);
  group[0] = dispatch_group_create();
  (*(**(this + 24) + 48))(*(this + 24), group);
  dispatch_group_wait(group[0], 0xFFFFFFFFFFFFFFFFLL);
  if (group[0])
  {
    dispatch_release(group[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_240EBEECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::ClientProxy::handleStatus_sync(NSObject **this, int a2)
{
  if (a2 == 5)
  {
    abb::router::ClientProxy::handleSleeping_sync(this);
  }
}

void abb::router::ClientProxy::handleSleeping_sync(NSObject **this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(this + 172);
  if (v2 == 3)
  {
    v3 = *MEMORY[0x277D85DE8];

    abb::router::ClientProxy::checkSleepCompletion_sync(this);
  }

  else
  {
    v4 = this[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (v2 > 7)
      {
        v5 = "(unknown)";
      }

      else
      {
        v5 = off_278CBB258[v2];
      }

      v6 = *(this + 42);
      v9 = 136315394;
      v10 = v5;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Proxy not active for some reason [%s]; Client=0x%02x", &v9, 0x12u);
    }

    v7 = this[41];
    this[41] = 0;
    if (v7)
    {
      dispatch_group_leave(v7);
      dispatch_release(v7);
    }

    v8 = *MEMORY[0x277D85DE8];
  }
}

void abb::router::ClientProxy::handleRequest_sync(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 172);
  if (v5 > 7)
  {
    v6 = "(unknown)";
    abb::router::Message::generatePrintString(a2);
    v7 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
LABEL_6:
      v7 = *v7;
    }
  }

  else
  {
    v6 = off_278CBB298[v5];
    abb::router::Message::generatePrintString(a2);
    v7 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      goto LABEL_6;
    }
  }

  *buf = 136315394;
  v23 = v6;
  v24 = 2080;
  v25 = v7;
  _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Received request over link [%s]; %s", buf, 0x16u);
LABEL_8:
  v8 = *(a2 + 72);
  if ((v8 & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = *(a1 + 172);
  if ((v9 - 1) >= 2)
  {
    if (v9 == 4 || !*(a1 + 172))
    {
      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        abb::router::Message::generatePrintString(a2);
        v11 = (a2 + 112);
        if (*(a2 + 135) < 0)
        {
          v11 = *v11;
        }

        *buf = 136315138;
        v23 = v11;
        _os_log_impl(&dword_240E91000, v10, OS_LOG_TYPE_DEFAULT, "#I Canceling request as endpoint is down; %s", buf, 0xCu);
      }

      abb::router::Message::Message(v21, a2);
      abb::router::ClientProxy::sendErrorMessage_sync(a1, v21, 54);
      abb::router::Message::~Message(v21);
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  if (v8 != 2)
  {
LABEL_24:
    v14 = *(a1 + 264);
    v15 = *(a1 + 272);
    v16 = 30 * ((v15 - v14) >> 3) - 1;
    if (v15 == v14)
    {
      v16 = 0;
    }

    if (v16 == *(a1 + 296) + *(a1 + 288))
    {
      std::deque<abb::router::Message>::__add_back_capacity(a1 + 256);
      v14 = *(a1 + 264);
      v15 = *(a1 + 272);
    }

    if (v15 == v14)
    {
      v18 = 0;
    }

    else
    {
      v17 = *(a1 + 296) + *(a1 + 288);
      v18 = *(v14 + 8 * (v17 / 0x1E)) + 136 * (v17 % 0x1E);
    }

    abb::router::Message::Message(v18, a2);
    ++*(a1 + 296);
    abb::router::ClientProxy::trySendingRequests_sync(a1);
    goto LABEL_32;
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString(a2);
    v13 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v13 = *v13;
    }

    *buf = 136315138;
    v23 = v13;
    _os_log_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEFAULT, "#I Canceling request as endpoint is not ready yet; %s", buf, 0xCu);
  }

  abb::router::Message::Message(v20, a2);
  abb::router::ClientProxy::sendErrorMessage_sync(a1, v20, 54);
  abb::router::Message::~Message(v20);
LABEL_32:
  v19 = *MEMORY[0x277D85DE8];
}

void abb::router::ClientProxy::updateEvents_sync(uint64_t a1, xpc_object_t *a2)
{
  object[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 168);
    LODWORD(object[0]) = 67109120;
    HIDWORD(object[0]) = v6;
    _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Track events of interest; Client=0x%02x", object, 8u);
    *(a1 + 336) = 0;
    v5 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 336) = 0;
    v5 = *a2;
    if (*a2)
    {
LABEL_3:
      xpc_retain(v5);
LABEL_6:
      xpc_retain(v5);
      v7 = v5;
      goto LABEL_7;
    }
  }

  v5 = xpc_null_create();
  if (v5)
  {
    goto LABEL_6;
  }

  v5 = xpc_null_create();
  v7 = 0;
LABEL_7:
  xpc_release(v7);
  v8 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v8 = xpc_null_create();
  }

  if (MEMORY[0x245CD2F50](*a2) == MEMORY[0x277D86440])
  {
    count = xpc_array_get_count(*a2);
    if (v8)
    {
      goto LABEL_12;
    }

LABEL_14:
    v10 = xpc_null_create();
    goto LABEL_15;
  }

  count = 0;
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_12:
  xpc_retain(v8);
  v10 = v8;
LABEL_15:
  xpc_release(v8);
  if (!count && v5 == v10)
  {
    goto LABEL_17;
  }

  if (v5 != v10)
  {
    v15 = 0;
    while (1)
    {
      value = xpc_array_get_value(v5, v15);
      object[0] = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      v17 = xpc::dyn_cast_or_default();
      xpc_release(object[0]);
      if (v17 == 2)
      {
        break;
      }

      if (v17 == 3)
      {
        *(a1 + 337) = 1;
        ++v15;
      }

      else
      {
LABEL_31:
        ++v15;
      }
    }

    *(a1 + 336) = 1;
    goto LABEL_31;
  }

  v12 = 0;
  do
  {
    v13 = xpc_array_get_value(v5, v12);
    object[0] = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v14 = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
    if (v14 == 3)
    {
      *(a1 + 337) = 1;
    }

    else if (v14 == 2)
    {
      *(a1 + 336) = 1;
    }

    ++v12;
  }

  while (count != v12);
LABEL_17:
  xpc_release(v10);
  xpc_release(v5);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_240EBF5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::ClientProxy::updateIndications_sync(uint64_t a1, NSObject **a2, xpc_object_t *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a1 + 168);
    *buf = 67109120;
    *&buf[4] = v28;
    _os_log_debug_impl(&dword_240E91000, v5, OS_LOG_TYPE_DEBUG, "#D Track indications of interest; Client=0x%02x", buf, 8u);
  }

  v6 = (a1 + 208);
  v8 = (a1 + 216);
  v7 = *(a1 + 216);
  *buf = *(a1 + 208);
  v35 = v7;
  if (*(a1 + 224))
  {
    v7[2] = &v35;
    *v6 = v8;
    *v8 = 0;
    *(a1 + 224) = 0;
    std::__tree<unsigned int>::destroy(a1 + 208, 0);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 208) = v8;
    v9 = *a3;
    if (*a3)
    {
LABEL_5:
      xpc_retain(v9);
LABEL_8:
      xpc_retain(v9);
      v10 = v9;
      goto LABEL_9;
    }
  }

  else
  {
    *buf = &v35;
    std::__tree<unsigned int>::destroy(a1 + 208, v7);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 208) = v8;
    v9 = *a3;
    if (*a3)
    {
      goto LABEL_5;
    }
  }

  v9 = xpc_null_create();
  if (v9)
  {
    goto LABEL_8;
  }

  v9 = xpc_null_create();
  v10 = 0;
LABEL_9:
  xpc_release(v10);
  v11 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    v11 = xpc_null_create();
  }

  if (MEMORY[0x245CD2F50](*a3) == MEMORY[0x277D86440])
  {
    count = xpc_array_get_count(*a3);
    if (v11)
    {
      goto LABEL_14;
    }

LABEL_16:
    v13 = xpc_null_create();
    goto LABEL_17;
  }

  count = 0;
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_14:
  xpc_retain(v11);
  v13 = v11;
LABEL_17:
  xpc_release(v11);
  if (count || v9 != v13)
  {
    v14 = 0;
    do
    {
      value = xpc_array_get_value(v9, v14);
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      v16 = xpc::dyn_cast_or_default();
      v17 = v16;
      v18 = *v8;
      v19 = (a1 + 216);
      v20 = (a1 + 216);
      if (*v8)
      {
        while (1)
        {
          while (1)
          {
            v20 = v18;
            v21 = *(v18 + 28);
            if (v16 >= v21)
            {
              break;
            }

            v18 = *v20;
            v19 = v20;
            if (!*v20)
            {
              goto LABEL_30;
            }
          }

          if (v21 >= v16)
          {
            break;
          }

          v18 = v20[1];
          if (!v18)
          {
            v19 = v20 + 1;
            goto LABEL_30;
          }
        }
      }

      else
      {
LABEL_30:
        v22 = operator new(0x20uLL);
        v22[7] = v17;
        *v22 = 0;
        *(v22 + 1) = 0;
        *(v22 + 2) = v20;
        *v19 = v22;
        v23 = **v6;
        if (v23)
        {
          *v6 = v23;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 216), v22);
        ++*(a1 + 224);
      }

      xpc_release(object);
      ++v14;
    }

    while (v14 != count || v9 != v13);
  }

  xpc_release(v13);
  xpc_release(v9);
  v24 = *(a1 + 176);
  v25 = *a2;
  group = v25;
  if (v25)
  {
    dispatch_retain(v25);
    dispatch_group_enter(v25);
  }

  v26 = *(a1 + 168);
  std::set<unsigned int>::set[abi:ne200100](v31, buf);
  std::set<unsigned int>::set[abi:ne200100](v30, v6);
  abb::router::Gateway::regClientIndications(v24, &group, v26, v31, v30);
  std::__tree<unsigned int>::destroy(v30, v30[1]);
  std::__tree<unsigned int>::destroy(v31, v31[1]);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__tree<unsigned int>::destroy(buf, v35);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_240EBF9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, char a14, void *a15, uint64_t a16, dispatch_group_t group, xpc_object_t object, char a19, void *a20)
{
  std::__tree<unsigned int>::destroy(&a11, a12);
  std::__tree<unsigned int>::destroy(&a14, a15);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__tree<unsigned int>::destroy(&a19, a20);
  _Unwind_Resume(a1);
}

void sub_240EBFA90(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::ClientProxy::updateWakeables_sync(uint64_t a1, xpc_object_t *a2)
{
  object[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 168);
    LODWORD(object[0]) = 67109120;
    HIDWORD(object[0]) = v23;
    _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Track wakeable indications of interest; Client=0x%02x", object, 8u);
  }

  v5 = (a1 + 240);
  v6 = (a1 + 232);
  std::__tree<unsigned int>::destroy(a1 + 232, *(a1 + 240));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = a1 + 240;
  v7 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
LABEL_6:
    xpc_retain(v7);
    v8 = v7;
    goto LABEL_7;
  }

  v7 = xpc_null_create();
  if (v7)
  {
    goto LABEL_6;
  }

  v7 = xpc_null_create();
  v8 = 0;
LABEL_7:
  xpc_release(v8);
  v9 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v9 = xpc_null_create();
  }

  if (MEMORY[0x245CD2F50](*a2) == MEMORY[0x277D86440])
  {
    count = xpc_array_get_count(*a2);
    if (v9)
    {
      goto LABEL_12;
    }

LABEL_14:
    v11 = xpc_null_create();
    goto LABEL_15;
  }

  count = 0;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_12:
  xpc_retain(v9);
  v11 = v9;
LABEL_15:
  xpc_release(v9);
  if (count || v7 != v11)
  {
    v12 = 0;
    do
    {
      value = xpc_array_get_value(v7, v12);
      object[0] = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      v14 = xpc::dyn_cast_or_default();
      v15 = v14;
      v16 = *v5;
      v17 = (a1 + 240);
      v18 = (a1 + 240);
      if (*v5)
      {
        while (1)
        {
          while (1)
          {
            v18 = v16;
            v19 = *(v16 + 28);
            if (v14 >= v19)
            {
              break;
            }

            v16 = *v18;
            v17 = v18;
            if (!*v18)
            {
              goto LABEL_28;
            }
          }

          if (v19 >= v14)
          {
            break;
          }

          v16 = v18[1];
          if (!v16)
          {
            v17 = v18 + 1;
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        v20 = operator new(0x20uLL);
        v20[7] = v15;
        *v20 = 0;
        *(v20 + 1) = 0;
        *(v20 + 2) = v18;
        *v17 = v20;
        v21 = **v6;
        if (v21)
        {
          *v6 = v21;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 240), v20);
        ++*(a1 + 248);
      }

      xpc_release(object[0]);
      ++v12;
    }

    while (v12 != count || v7 != v11);
  }

  xpc_release(v11);
  xpc_release(v7);
  v22 = *MEMORY[0x277D85DE8];
}

void sub_240EBFD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL abb::router::ClientProxy::waitForConfirmations_sync(abb::router::ClientProxy *this)
{
  v1 = *(this + 38);
  v2 = *(this + 39);
  if (v1 != v2)
  {
    while (1)
    {
      v4 = *(v1 + 80);
      if ((v4 & 0x100) != 0 && !v4)
      {
        break;
      }

      v1 += 136;
      if (v1 == v2)
      {
        return 0;
      }
    }
  }

  return v1 != v2;
}

void abb::router::ClientProxy::handleLinkMessage(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = xpc_null_create();
  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleLinkMessage(xpc::dict)::$_0>(abb::router::ClientProxy::handleLinkMessage(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleLinkMessage(xpc::dict)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleLinkMessage(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(v9);
}

void abb::router::ClientProxy::handleRegistration_sync(uint64_t a1, xpc_object_t *a2)
{
  v4 = dispatch_group_create();
  value = xpc_dictionary_get_value(*a2, "ClientName");
  v35 = value;
  if (value)
  {
    xpc_retain(value);
    v6 = v35;
  }

  else
  {
    v6 = xpc_null_create();
    v35 = v6;
  }

  if (MEMORY[0x245CD2F50](v6) != MEMORY[0x277D864B0])
  {
    block = 0;
    v40 = 0;
    v41 = 0;
    xpc::dyn_cast_or_default();
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    *(a1 + 48) = *v36;
    *(a1 + 64) = v37;
  }

  v7 = *(a1 + 16);
  if (!v7 || (v8 = *(a1 + 176), v9 = *(a1 + 168), v10 = *(a1 + 8), (v11 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = operator new(0x30uLL);
  v13->__shared_owners_ = 0;
  v13->__shared_weak_owners_ = 0;
  v13->__vftable = &unk_2852C9200;
  v13[1].__vftable = &unk_2852C9250;
  v13[1].__shared_owners_ = v10;
  v13[1].__shared_weak_owners_ = v12;
  v36[0] = v8;
  LODWORD(v36[1]) = v9;
  v37 = &v13[1].__vftable;
  v38 = v13;
  block = MEMORY[0x277D85DD0];
  v40 = 0x40000000;
  v41 = ___ZNK3ctu20SharedSynchronizableIN3abb6router7GatewayEE20execute_wrapped_syncIZNS3_13addUserClientEjNSt3__110shared_ptrINS2_25GatewayClientDelegateBaseEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke;
  v42 = &__block_descriptor_tmp_63;
  v43 = v8 + 1;
  v44 = v36;
  v14 = v8[3];
  if (v8[4])
  {
    dispatch_async_and_wait(v14, &block);
    v15 = v38;
    if (!v38)
    {
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_sync(v14, &block);
    v15 = v38;
    if (!v38)
    {
      goto LABEL_18;
    }
  }

  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

LABEL_18:
  block = 0xAAAAAAAAAAAAAAAALL;
  xpc::dict::object_proxy::operator xpc::array(&block, *a2, "RegisteredEvents");
  v16 = block;
  v17 = MEMORY[0x245CD2F50](block);
  v18 = MEMORY[0x277D86440];
  if (v17 == MEMORY[0x277D86440])
  {
    v34 = v16;
    if (v16)
    {
      xpc_retain(v16);
      v19 = v16;
    }

    else
    {
      v19 = xpc_null_create();
      v34 = v19;
    }

    abb::router::ClientProxy::updateEvents_sync(a1, &v34);
    xpc_release(v19);
    v34 = 0;
  }

  v36[0] = 0xAAAAAAAAAAAAAAAALL;
  xpc::dict::object_proxy::operator xpc::array(v36, *a2, "RegisteredIndications");
  v20 = v36[0];
  if (MEMORY[0x245CD2F50](v36[0]) == v18)
  {
    v33 = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(v4);
    }

    v32 = v20;
    if (v20)
    {
      xpc_retain(v20);
      v21 = v20;
    }

    else
    {
      v21 = xpc_null_create();
      v32 = v21;
    }

    abb::router::ClientProxy::updateIndications_sync(a1, &v33, &v32);
    xpc_release(v21);
    v32 = 0;
    if (v4)
    {
      dispatch_group_leave(v4);
      dispatch_release(v4);
    }
  }

  object = 0xAAAAAAAAAAAAAAAALL;
  xpc::dict::object_proxy::operator xpc::array(&object, *a2, "RegisteredWakeables");
  v22 = object;
  if (MEMORY[0x245CD2F50](object) == v18)
  {
    v30 = v22;
    if (v22)
    {
      xpc_retain(v22);
      v23 = v22;
    }

    else
    {
      v23 = xpc_null_create();
      v30 = v23;
    }

    abb::router::ClientProxy::updateWakeables_sync(a1, &v30);
    xpc_release(v23);
    v30 = 0;
  }

  v24 = *(a1 + 16);
  if (!v24 || (v25 = *(a1 + 8), (v26 = std::__shared_weak_count::lock(v24)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = v26;
  atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(a1 + 24);
  v29 = operator new(0x18uLL);
  *v29 = a1;
  v29[1] = v25;
  v29[2] = v27;
  dispatch_group_notify_f(v4, v28, v29, dispatch::detail::group_notify<abb::router::ClientProxy::handleRegistration_sync(xpc::dict)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::ClientProxy::handleRegistration_sync(xpc::dict)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  xpc_release(object);
  xpc_release(v36[0]);
  xpc_release(block);
  xpc_release(v35);
  if (v4)
  {
    dispatch_release(v4);
  }
}

void sub_240EC03B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t __p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(v26);
  xpc_release(v25);
  xpc_release(object);
  xpc_release(__p);
  xpc_release(a14);
  if (v24)
  {
    dispatch_release(v24);
  }

  _Unwind_Resume(a1);
}

void xpc::dict::object_proxy::operator xpc::array(void *a1, xpc_object_t xdict, char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  if (value)
  {
    v5 = value;
    xpc_retain(value);
    *a1 = v5;
  }

  else
  {
    v5 = xpc_null_create();
    *a1 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CD2F50](v5) != MEMORY[0x277D86440])
  {
    v6 = xpc_null_create();
LABEL_8:
    *a1 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
}

void abb::router::ClientProxy::handleLinkDisconnect(abb::router::ClientProxy *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 42);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Client link disconnected; Client=0x%02x", v5, 8u);
  }

  abb::router::ClientProxy::setStatus_sync(this, 0);
  abb::router::Gateway::removeUserClient(*(this + 22), *(this + 42), *(this + 28) != 0);
  *(this + 42) = 0;
  v4 = *MEMORY[0x277D85DE8];
}

void abb::router::ClientProxy::sendStatus_sync(uint64_t a1, unsigned int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 7)
    {
      v5 = "(unknown)";
    }

    else
    {
      v5 = off_278CBB298[a2];
    }

    v6 = *(a1 + 168);
    *xdict = 136315394;
    *&xdict[4] = v5;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Sending status [%s] update to client; Client=0x%02x", xdict, 0x12u);
  }

  *xdict = 0xAAAAAAAAAAAAAAAALL;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    *xdict = v7;
  }

  else
  {
    v8 = xpc_null_create();
    *xdict = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_13;
    }
  }

  if (MEMORY[0x245CD2F50](v8) == MEMORY[0x277D86468])
  {
    xpc_retain(v8);
    goto LABEL_14;
  }

  v9 = xpc_null_create();
LABEL_13:
  *xdict = v9;
LABEL_14:
  xpc_release(v8);
  v10 = xpc_int64_create(a2);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v11 = *xdict;
  xpc_dictionary_set_value(*xdict, "ClientStatus", v10);
  v12 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v12);
  v13 = xpc_int64_create(*(a1 + 168));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, "ClientId", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  abb::router::ClientProxy::sendMessage_sync(a1, xdict);
  xpc_release(v11);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_240EC0848(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::ClientProxy::sendRegistered_sync(abb::router::ClientProxy *this)
{
  v2 = *(this + 172);
  if (v2 <= 6)
  {
    if (((1 << v2) & 0x75) != 0)
    {
      return;
    }

    if (v2 == 1)
    {
      v3 = this;
      abb::router::ClientProxy::setStatus_sync(this, 2u);
      this = v3;
    }
  }

  abb::router::ClientProxy::sendStatus_sync(this, 2u);
}

uint64_t std::__split_buffer<abb::router::Message>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 136);
    *(a1 + 16) = i - 136;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void std::__shared_ptr_pointer<abb::router::ClientProxy *,std::shared_ptr<abb::router::ClientProxy> ctu::SharedSynchronizable<abb::router::ClientProxy>::make_shared_ptr<abb::router::ClientProxy>(abb::router::ClientProxy*)::{lambda(abb::router::ClientProxy *)#1},std::allocator<abb::router::ClientProxy>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<abb::router::ClientProxy *,std::shared_ptr<abb::router::ClientProxy> ctu::SharedSynchronizable<abb::router::ClientProxy>::make_shared_ptr<abb::router::ClientProxy>(abb::router::ClientProxy*)::{lambda(abb::router::ClientProxy *)#1},std::allocator<abb::router::ClientProxy>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3abb6router11ClientProxyEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3abb6router11ClientProxyEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3abb6router11ClientProxyEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3abb6router11ClientProxyEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<abb::router::ClientProxy> ctu::SharedSynchronizable<abb::router::ClientProxy>::make_shared_ptr<abb::router::ClientProxy>(abb::router::ClientProxy*)::{lambda(abb::router::ClientProxy*)#1}::operator() const(abb::router::ClientProxy*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::connect(void)::$_0>(abb::router::ClientProxy::connect(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::connect(void)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::connect(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = **a1;
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CD2F50](v3) == MEMORY[0x277D86468])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = xpc_int64_create(*(v2 + 168));
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "ClientId", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = xpc_int64_create(*(v2 + 136));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "QueuePolicy", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = *(v2 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v2 + 172);
    if (v10 > 7)
    {
      v11 = "(unknown)";
    }

    else
    {
      v11 = off_278CBB298[v10];
    }

    v12 = *(v2 + 168);
    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    _os_log_impl(&dword_240E91000, v9, OS_LOG_TYPE_DEFAULT, "#I Request to connect back with client [%s]; Client=0x%02x", buf, 0x12u);
  }

  if ((*(**(v2 + 192) + 40))(*(v2 + 192)))
  {
    v13 = *(v2 + 192);
    if (v13 && (v14 = **v13, (v15 = __dynamic_cast(v13, MEMORY[0x277CECB18], MEMORY[0x277CECB28], 0)) != 0))
    {
      v16 = v15;
      v17 = *(v2 + 200);
      *buf = v15;
      *&buf[8] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v16 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    v23 = *(v2 + 16);
    if (!v23 || (v24 = *(v2 + 8), (v25 = std::__shared_weak_count::lock(v23)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v26 = v25;
    atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (v4)
      {
LABEL_30:
        xpc_retain(v4);
        v27 = v4;
LABEL_39:
        v33 = operator new(0x18uLL);
        *v33 = &unk_2852C91A0;
        v33[1] = v24;
        v33[2] = v26;
        v34 = v16[6];
        v16[6] = v33;
        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        object = v27;
        if (v27)
        {
          xpc_retain(v27);
        }

        else
        {
          object = xpc_null_create();
        }

        abb::link::XpcServerLink::connectLink();
        xpc_release(object);
        xpc_release(v27);
        goto LABEL_53;
      }
    }

    else
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v26);
      if (v4)
      {
        goto LABEL_30;
      }
    }

    v27 = xpc_null_create();
    goto LABEL_39;
  }

  v18 = *(v2 + 192);
  if (v18 && (v19 = **v18, (v20 = __dynamic_cast(v18, MEMORY[0x277CECB18], MEMORY[0x277CECB38], 0)) != 0))
  {
    v21 = v20;
    v22 = *(v2 + 200);
    *buf = v20;
    *&buf[8] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v21 = 0;
    *buf = 0;
    *&buf[8] = 0;
  }

  v28 = *(v2 + 16);
  if (!v28 || (v29 = *(v2 + 8), (v30 = std::__shared_weak_count::lock(v28)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v31 = v30;
  atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v31);
    if (v4)
    {
      goto LABEL_36;
    }

LABEL_44:
    v32 = xpc_null_create();
    goto LABEL_45;
  }

  if (!v4)
  {
    goto LABEL_44;
  }

LABEL_36:
  xpc_retain(v4);
  v32 = v4;
LABEL_45:
  v35 = operator new(0x18uLL);
  *v35 = &unk_2852C91A0;
  v35[1] = v29;
  v35[2] = v31;
  v36 = v21[7];
  v21[7] = v35;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  objecta = v32;
  if (v32)
  {
    xpc_retain(v32);
  }

  else
  {
    objecta = xpc_null_create();
  }

  abb::link::LocalServerLink::connectLink();
  xpc_release(objecta);
  xpc_release(v32);
LABEL_53:
  v37 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  abb::router::ClientProxy::setStatus_sync(v2, 1u);
  xpc_release(v4);
  operator delete(v1);
  v38 = a1;
  if (a1)
  {
    v39 = *(a1 + 16);
    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
      v38 = a1;
    }

    operator delete(v38);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_240EC10B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t abb::link::ServerLinkDelegate<abb::router::ClientProxy>::~ServerLinkDelegate(uint64_t result)
{
  *result = &unk_2852C91A0;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void abb::link::ServerLinkDelegate<abb::router::ClientProxy>::~ServerLinkDelegate(std::__shared_weak_count **a1)
{
  *a1 = &unk_2852C91A0;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void abb::link::ServerLinkDelegate<abb::router::ClientProxy>::handleLinkMessage(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        object = *a2;
        *a2 = xpc_null_create();
        abb::router::ClientProxy::handleLinkMessage(v7, &object);
        xpc_release(object);
        object = 0;
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::link::ServerLinkDelegate<abb::router::ClientProxy>::handleLinkMessage(uint64_t a1, void **a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (*(a1 + 8))
      {
        v9 = *a2;
        *a2 = xpc_null_create();
        v10 = *(a3 + 24);
        if (v10)
        {
          if (v10 == a3)
          {
            v13 = v12;
            (*(*v10 + 24))(v10, v12);
          }

          else
          {
            v13 = *(a3 + 24);
            *(a3 + 24) = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        if (v13 == v12)
        {
          (*(*v13 + 32))(v13);
        }

        else if (v13)
        {
          (*(*v13 + 40))();
        }

        xpc_release(v9);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_240EC14FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void abb::link::ServerLinkDelegate<abb::router::ClientProxy>::handleLinkDisconnect(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(v5 + 168);
          *buf = 67109120;
          v10 = v7;
          _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I Client link disconnected; Client=0x%02x", buf, 8u);
        }

        abb::router::ClientProxy::setStatus_sync(v5, 0);
        abb::router::Gateway::removeUserClient(*(v5 + 176), *(v5 + 168), *(v5 + 224) != 0);
        *(v5 + 168) = 0;
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFN3abb6router12ClientStatusEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS7_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3abb6router12ClientStatusEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS7_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__13setIjNS1_4lessIjEENS1_9allocatorIjEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v2 + 8;
  std::__tree<unsigned int>::destroy(v2, *(v2 + 8));
  v4 = v8;
  *v2 = v6;
  v5 = v7;
  *(v2 + 8) = v7;
  *(v2 + 16) = v4;
  if (v4)
  {
    v5[2] = v3;
    v6 = &v7;
    v7 = 0;
    v8 = 0;
    v5 = 0;
  }

  else
  {
    *v2 = v3;
  }

  std::__tree<unsigned int>::destroy(&v6, v5);
}

void ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__13setIjNS1_4lessIjEENS1_9allocatorIjEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v2 + 8;
  std::__tree<unsigned int>::destroy(v2, *(v2 + 8));
  v4 = v8;
  *v2 = v6;
  v5 = v7;
  *(v2 + 8) = v7;
  *(v2 + 16) = v4;
  if (v4)
  {
    v5[2] = v3;
    v6 = &v7;
    v7 = 0;
    v8 = 0;
    v5 = 0;
  }

  else
  {
    *v2 = v3;
  }

  std::__tree<unsigned int>::destroy(&v6, v5);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleConfirmation(abb::router::Message)::$_0>(abb::router::ClientProxy::handleConfirmation(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleConfirmation(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleConfirmation(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  abb::router::Message::Message(v5, *a1 + 8);
  abb::router::ClientProxy::handleConfirmation_sync(v3, v5);
  abb::router::Message::~Message(v5);
  abb::router::Message::~Message((v2 + 1));
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_240EC1998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  abb::router::Message::~Message(va2);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240EC19BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleIndication(abb::router::Message)::$_0>(abb::router::ClientProxy::handleIndication(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleIndication(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleIndication(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  abb::router::Message::Message(v5, *a1 + 8);
  abb::router::ClientProxy::handleIndication_sync(v3, v5);
  abb::router::Message::~Message(v5);
  abb::router::Message::~Message((v2 + 1));
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_240EC1A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  abb::router::Message::~Message(va2);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240EC1AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleSentMessage(abb::router::Message,BOOL)::$_0>(abb::router::ClientProxy::handleSentMessage(abb::router::Message,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleSentMessage(abb::router::Message,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleSentMessage(abb::router::Message,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 **a1)
{
  v2 = *a1;
  v3 = **a1;
  abb::router::Message::Message(v5, (*a1 + 8));
  abb::router::ClientProxy::handleSentMessage_sync(v3, v5, v2[144]);
  abb::router::Message::~Message(v5);
  abb::router::Message::~Message((v2 + 8));
  operator delete(v2);
  v4 = a1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_240EC1BA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  abb::router::Message::~Message(va2);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240EC1BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleGatewaySleep(dispatch::group_session)::$_0>(abb::router::ClientProxy::handleGatewaySleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleGatewaySleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleGatewaySleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::ClientProxy::handleGatewaySleep_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC1CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleGatewayWakeup(dispatch::group_session)::$_0>(abb::router::ClientProxy::handleGatewayWakeup(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleGatewayWakeup(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleGatewayWakeup(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    dispatch_retain(v2[1]);
    dispatch_group_enter(v3);
  }

  abb::router::ClientProxy::handleGatewayWakeup_sync(v4);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC1DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleGatewayStart(dispatch::group_session)::$_0>(abb::router::ClientProxy::handleGatewayStart(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleGatewayStart(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleGatewayStart(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    dispatch_retain(v2[1]);
    dispatch_group_enter(v3);
  }

  abb::router::ClientProxy::handleGatewayStart_sync(v4);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC1F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleGatewayStop(dispatch::group_session)::$_0>(abb::router::ClientProxy::handleGatewayStop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleGatewayStop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleGatewayStop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    dispatch_retain(v2[1]);
    dispatch_group_enter(v3);
  }

  abb::router::ClientProxy::handleGatewayStop_sync(v4);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC202C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleGatewayDown(dispatch::group_session)::$_0>(abb::router::ClientProxy::handleGatewayDown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleGatewayDown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleGatewayDown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    dispatch_retain(v2[1]);
    dispatch_group_enter(v3);
  }

  abb::router::ClientProxy::handleGatewayDown_sync(v4);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC2148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::ClientProxy>::execute_wrapped<abb::router::ClientProxy::handleLinkMessage(xpc::dict)::$_0>(abb::router::ClientProxy::handleLinkMessage(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::ClientProxy::handleLinkMessage(xpc::dict)::$_0,dispatch_queue_s *::default_delete<abb::router::ClientProxy::handleLinkMessage(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(v3 + 168);
    xpc::object::to_string(object, (v2 + 1));
    v28 = (SBYTE7(v34) & 0x80u) == 0 ? object : object[0];
    *buf = 67109378;
    *&buf[4] = v27;
    v43 = 2080;
    v44 = v28;
    _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Received message for Client=0x%02x: %s", buf, 0x12u);
    if (SBYTE7(v34) < 0)
    {
      operator delete(object[0]);
    }
  }

  value = xpc_dictionary_get_value(v2[1], "Request");
  v6 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v6 = xpc_null_create();
  }

  v7 = MEMORY[0x245CD2F50](v6);
  v8 = MEMORY[0x277D864B0];
  if (v7 == MEMORY[0x277D864B0])
  {
    v10 = xpc_dictionary_get_value(v2[1], "ClientAction");
    object[0] = v10;
    if (v10)
    {
      v11 = v10;
      xpc_retain(v10);
      v12 = v11;
    }

    else
    {
      v12 = xpc_null_create();
      object[0] = v12;
    }

    if (MEMORY[0x245CD2F50](v12) == v8)
    {
      v25 = xpc_dictionary_get_value(v2[1], "ClientStatus");
      v26 = v25;
      *buf = v25;
      if (v25)
      {
        xpc_retain(v25);
      }

      else
      {
        v26 = xpc_null_create();
        *buf = v26;
      }

      if (MEMORY[0x245CD2F50](v26) == v8)
      {
        v29 = v2[1];
        v32 = v29;
        if (v29)
        {
          xpc_retain(v29);
        }

        else
        {
          v29 = xpc_null_create();
          v32 = v29;
        }

        abb::router::ClientProxy::handleRegistration_sync(v3, &v32);
        xpc_release(v29);
        v32 = 0;
      }

      else if (xpc::dyn_cast_or_default() == 5)
      {
        abb::router::ClientProxy::handleSleeping_sync(v3);
      }

      xpc_release(*buf);
    }

    else
    {
      v24 = xpc::dyn_cast_or_default();
      if (v24 == 2)
      {
        abb::router::ClientProxy::handleActionStop_sync(v3);
      }

      else if (v24 == 1)
      {
        abb::router::ClientProxy::handleActionStart_sync(v3);
      }
    }

    xpc_release(object[0]);
  }

  else
  {
    v9 = xpc_dictionary_get_value(v2[1], "TimeoutMillisec");
    object[0] = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v13 = *(v3 + 144);
    v14 = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
    v15 = xpc_dictionary_get_value(v2[1], "QueuePolicy");
    object[0] = v15;
    if (v15)
    {
      xpc_retain(v15);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v16 = *(v3 + 136);
    v17 = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
    v18 = xpc_dictionary_get_value(v2[1], "AllowSleep");
    object[0] = v18;
    if (v18)
    {
      xpc_retain(v18);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v19 = *(v3 + 140);
    v20 = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
    bytes_ptr = xpc_data_get_bytes_ptr(v6);
    length = xpc_data_get_length(v6);
    v41 = 0xAAAAAAAAAAAAAAAALL;
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v23;
    v38 = v23;
    v39 = v23;
    v36 = v23;
    v37 = v23;
    v34 = v23;
    v35 = v23;
    *object = v23;
    abb::router::Message::Message(object, bytes_ptr, length);
    if (object[1] && *(object[1] + 1) - *object[1] >= 0x10uLL)
    {
      *(*object[1] + 13) = *(v3 + 168);
    }

    *(&v36 + 1) = v14;
    LOBYTE(v37) = 1;
    DWORD2(v37) = v17;
    BYTE12(v37) = 1;
    BYTE4(v38) = 0;
    LOBYTE(v38) = v20;
    BYTE1(v38) = 1;
    abb::router::Message::Message(buf, object);
    abb::router::ClientProxy::handleRequest_sync(v3, buf);
    abb::router::Message::~Message(buf);
    abb::router::Message::~Message(object);
  }

  xpc_release(v6);
  xpc_release(v2[1]);
  operator delete(v2);
  v30 = *(a1 + 2);
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  operator delete(a1);
  v31 = *MEMORY[0x277D85DE8];
}

void sub_240EC25D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

xpc_object_t **std::unique_ptr<abb::router::ClientProxy::handleLinkMessage(xpc::dict)::$_0,std::default_delete<abb::router::ClientProxy::handleLinkMessage(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__shared_ptr_emplace<abb::router::GatewayClientDelegate<abb::router::ClientProxy>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852C9200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t abb::router::GatewayClientDelegate<abb::router::ClientProxy>::~GatewayClientDelegate(uint64_t result)
{
  *result = &unk_2852C9250;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void abb::router::GatewayClientDelegate<abb::router::ClientProxy>::~GatewayClientDelegate(std::__shared_weak_count **a1)
{
  *a1 = &unk_2852C9250;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void abb::router::GatewayClientDelegate<abb::router::ClientProxy>::getName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      if (*(v7 + 71) < 0)
      {
        v9 = v5;
        std::string::__init_copy_ctor_external(a2, *(v7 + 48), *(v7 + 56));
        v5 = v9;
      }

      else
      {
        v8 = *(v7 + 48);
        a2->__r_.__value_.__r.__words[2] = *(v7 + 64);
        *&a2->__r_.__value_.__l.__data_ = v8;
      }
    }

    else
    {
      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)(v5, v6);

      std::__shared_weak_count::__release_weak(v10);
    }
  }

  else
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }
}

std::__shared_weak_count *abb::router::GatewayClientDelegate<abb::router::ClientProxy>::valid(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v3 = result;
      result = (*(a1 + 8) != 0);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void abb::router::GatewayClientDelegate<abb::router::ClientProxy>::handleConfirmation(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v10 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      v9 = v7;
      if (v7)
      {
        abb::router::Message::Message(v8, a2);
        abb::router::ClientProxy::handleConfirmation(v7, v8);
        abb::router::Message::~Message(v8);
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_240EC2B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2 - 48);
  _Unwind_Resume(a1);
}

void abb::router::GatewayClientDelegate<abb::router::ClientProxy>::handleIndication(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v10 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      v9 = v7;
      if (v7)
      {
        abb::router::Message::Message(v8, a2);
        abb::router::ClientProxy::handleIndication(v7, v8);
        abb::router::Message::~Message(v8);
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_240EC2C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2 - 48);
  _Unwind_Resume(a1);
}

void abb::router::GatewayClientDelegate<abb::router::ClientProxy>::handleSentMessage(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v12 = v7;
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      v11 = v9;
      if (v9)
      {
        abb::router::Message::Message(v10, a2);
        abb::router::ClientProxy::handleSentMessage(v9, v10, a3);
        abb::router::Message::~Message(v10);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void sub_240EC2D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2 - 48);
  _Unwind_Resume(a1);
}

void abb::router::GatewayClientDelegate<abb::router::ClientProxy>::handleGatewaySleep(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v9 = *a2;
        v8 = v9;
        *a2 = 0;
        abb::router::ClientProxy::handleGatewaySleep(v7, &v9);
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::router::GatewayClientDelegate<abb::router::ClientProxy>::handleGatewayWakeup(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v9 = *a2;
        v8 = v9;
        *a2 = 0;
        abb::router::ClientProxy::handleGatewayWakeup(v7, &v9);
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::router::GatewayClientDelegate<abb::router::ClientProxy>::handleGatewayStart(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v9 = *a2;
        v8 = v9;
        *a2 = 0;
        abb::router::ClientProxy::handleGatewayStart(v7, &v9);
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::router::GatewayClientDelegate<abb::router::ClientProxy>::handleGatewayStop(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v9 = *a2;
        v8 = v9;
        *a2 = 0;
        abb::router::ClientProxy::handleGatewayStop(v7, &v9);
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::router::GatewayClientDelegate<abb::router::ClientProxy>::handleGatewayDown(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v9 = *a2;
        v8 = v9;
        *a2 = 0;
        abb::router::ClientProxy::handleGatewayDown(v7, &v9);
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}