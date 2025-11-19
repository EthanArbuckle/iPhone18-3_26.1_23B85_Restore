uint64_t DIAGTrace::stateFlagsAsString@<X0>(DIAGTrace *this@<X0>, _BYTE *a2@<X8>)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[7] = v4;
  v19[8] = v4;
  v19[5] = v4;
  v19[6] = v4;
  v19[3] = v4;
  v19[4] = v4;
  v19[1] = v4;
  v19[2] = v4;
  v18 = v4;
  v19[0] = v4;
  *__p = v4;
  v17 = v4;
  v14 = v4;
  *__src = v4;
  v12 = v4;
  v13 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Trace Flags(", 12);
  v5 = *(this + 12);
  if (v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, " Start", 6);
    v5 = *(this + 12);
  }

  if ((v5 & 2) != 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, " Abort", 6);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, ")", 2);
  if ((BYTE8(v18) & 0x10) != 0)
  {
    v7 = v18;
    if (v18 < __src[1])
    {
      *&v18 = __src[1];
      v7 = __src[1];
    }

    v8 = __src[0];
    v6 = v7 - __src[0];
    if ((v7 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((BYTE8(v18) & 8) == 0)
    {
      v6 = 0;
      a2[23] = 0;
      goto LABEL_19;
    }

    v8 = *(&v13 + 1);
    v6 = *(&v14 + 1) - *(&v13 + 1);
    if (*(&v14 + 1) - *(&v13 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v10 = operator new(v9);
    *(a2 + 1) = v6;
    *(a2 + 2) = v9 | 0x8000000000000000;
    *a2 = v10;
    a2 = v10;
    goto LABEL_18;
  }

  a2[23] = v6;
  if (v6)
  {
LABEL_18:
    memmove(a2, v8, v6);
  }

LABEL_19:
  a2[v6] = 0;
  *&v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v12 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v12 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v13);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v19);
}

void DIAGTrace::prepare(uint64_t a1)
{
  if (*(a1 + 244) == 1 && (*(a1 + 344) & 1) == 0)
  {
    v1 = *(a1 + 88);
    if (v1)
    {
      dispatch_group_enter(v1);
      *(a1 + 344) = 1;
    }
  }
}

void DIAGTrace::start(uint64_t a1, NSObject **a2, const void **a3)
{
  v4 = *a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1174405120;
  v8[2] = ___ZN9DIAGTrace5startEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_69;
  v5 = *a3;
  v8[4] = a1;
  cf = v5;
  v6 = v4;
  if (v5)
  {
    CFRetain(v5);
    v6 = *a2;
  }

  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v4, v8);
  if (object)
  {
    dispatch_release(object);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN9DIAGTrace5startEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  *(v2 + 96) = *(v2 + 96) & 0xFFFFFFFFFFFFFFFCLL | 1;
  v3 = *(v2 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_6;
  }

  v4 = *(v2 + 244);
  DIAGTrace::stateFlagsAsString(v2, __s1);
  v5 = SHIBYTE(__s1[2]) >= 0 ? __s1 : __s1[0];
  *buf = 67109378;
  *&buf[4] = v4;
  LOWORD(v19) = 2080;
  *(&v19 + 2) = v5;
  _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Start requested. Enabled = %d; %s", buf, 0x12u);
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
    if (*(v2 + 244) != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_6:
    if (*(v2 + 244) != 1)
    {
      goto LABEL_32;
    }
  }

  v15[0] = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v15, *(a1 + 40));
  memset(__s1, 170, sizeof(__s1));
  v6 = *MEMORY[0x277CECC18];
  *buf = 0;
  v19 = 0uLL;
  ctu::cf::MakeCFString::MakeCFString(&v17, v6);
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v17);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(*buf);
  }

  v7 = *MEMORY[0x277CECCD8];
  v8 = strlen(*MEMORY[0x277CECCD8]);
  v9 = v8;
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v8 != __s1[1])
    {
      goto LABEL_21;
    }

    if (v8 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(__s1[0], v7, v8))
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v8 == SHIBYTE(__s1[2]) && !memcmp(__s1, v7, v8))
  {
LABEL_18:
    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Start requested after baseband booted", buf, 2u);
    }

    DIAGTrace::reinitService_sync(v2, 1);
  }

LABEL_21:
  v11 = *(a1 + 48);
  v14 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRetain(v12);
  }

  DIAGTrace::start_sync(v2, &v14, v9, 0);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  MEMORY[0x23EECD940](v15);
LABEL_32:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_23C2003F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x23EECD940](&a11);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE48c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE48c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }
}

void DIAGTrace::stop(uint64_t a1, NSObject **a2, const void **a3)
{
  v5 = *a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1174405120;
  v7[2] = ___ZN9DIAGTrace4stopEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_70;
  v7[4] = a1;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v5, v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void ___ZN9DIAGTrace4stopEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_6;
  }

  v5 = *(v2 + 244);
  DIAGTrace::stateFlagsAsString(v2, __p);
  v6 = v12 >= 0 ? __p : __p[0];
  *buf = 67109378;
  v14 = v5;
  v15 = 2080;
  v16 = v6;
  _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Stop requested. Enabled = %d; %s", buf, 0x12u);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    *(v2 + 96) &= ~1uLL;
    if (*(v2 + 244) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_6:
    *(v2 + 96) &= ~1uLL;
    if (*(v2 + 244) != 1)
    {
      goto LABEL_17;
    }
  }

  if (*(v2 + 320))
  {
    v7 = a1[5];
    v10 = v7;
    if (v7)
    {
      dispatch_retain(v7);
    }

    v8 = a1[6];
    if (v8)
    {
      CFRetain(v8);
    }

    DIAGTrace::stop_sync(v2, &v10, v4, 0);
    if (v8)
    {
      CFRelease(v8);
    }

    if (v7)
    {
      dispatch_release(v7);
    }
  }

LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
}

void sub_23C20075C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef __copy_helper_block_e8_40c21_ZTSN8dispatch5groupE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void DIAGTrace::abort(uint64_t a1, NSObject **a2, const void **a3)
{
  v5 = *a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1174405120;
  v7[2] = ___ZN9DIAGTrace5abortEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_73_0;
  v7[4] = a1;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v5, v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void ___ZN9DIAGTrace5abortEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_6;
  }

  v5 = *(v2 + 244);
  DIAGTrace::stateFlagsAsString(v2, __p);
  v6 = v12 >= 0 ? __p : __p[0];
  *buf = 67109378;
  v14 = v5;
  v15 = 2080;
  v16 = v6;
  _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Abort requested. Enabled = %d; %s", buf, 0x12u);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    *(v2 + 96) |= 2uLL;
    if (*(v2 + 244) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_6:
    *(v2 + 96) |= 2uLL;
    if (*(v2 + 244) != 1)
    {
      goto LABEL_17;
    }
  }

  if (*(v2 + 320))
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      dispatch_retain(*(a1 + 40));
    }

    v8 = *(a1 + 48);
    v10 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    DIAGTrace::abort_sync(v2, v4, &v10);
    if (v8)
    {
      CFRelease(v8);
    }

    if (v7)
    {
      dispatch_release(v7);
    }
  }

LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
}

void sub_23C200A78(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DIAGTrace::shutdown(uint64_t a1, NSObject **a2, const void **a3)
{
  v5 = *a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1174405120;
  v7[2] = ___ZN9DIAGTrace8shutdownEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_76;
  v7[4] = a1;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v5, v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void ___ZN9DIAGTrace8shutdownEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_6;
  }

  v4 = *(v2 + 244);
  DIAGTrace::stateFlagsAsString(v2, __p);
  v5 = v12 >= 0 ? __p : __p[0];
  *buf = 67109378;
  v14 = v4;
  v15 = 2080;
  v16 = v5;
  _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down. Enabled = %d; %s", buf, 0x12u);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (*(v2 + 244) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_6:
    if (*(v2 + 244) != 1)
    {
      goto LABEL_17;
    }
  }

  if (*(v2 + 320))
  {
    v6 = a1[5];
    v10 = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7 = a1[6];
    v9 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    DIAGTrace::destroyService_sync(v2, &v10, &v9);
    if (v7)
    {
      CFRelease(v7);
    }

    if (v6)
    {
      dispatch_release(v6);
    }
  }

LABEL_17:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23C200CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DIAGTrace::enterLowPower(DIAGTrace *this, group *a2)
{
  gr_name = a2->gr_name;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1174405120;
  v4[2] = ___ZN9DIAGTrace13enterLowPowerEN8dispatch5groupE_block_invoke;
  v4[3] = &__block_descriptor_tmp_77;
  v4[4] = this;
  object = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped(this + 1, gr_name, v4);
  if (object)
  {
    dispatch_release(object);
  }
}

void ___ZN9DIAGTrace13enterLowPowerEN8dispatch5groupE_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_6;
  }

  v4 = *(v2 + 244);
  DIAGTrace::stateFlagsAsString(v2, &v15.gr_passwd);
  v5 = SHIBYTE(v15.gr_mem) >= 0 ? &v15.gr_passwd : v15.gr_passwd;
  *buf = 67109378;
  v17 = v4;
  v18 = 2080;
  v19 = v5;
  _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Enter low-power requested. Enabled = %d; %s", buf, 0x12u);
  if (SHIBYTE(v15.gr_mem) < 0)
  {
    operator delete(v15.gr_passwd);
    if (*(v2 + 244) != 1)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_6:
    if (*(v2 + 244) != 1)
    {
      goto LABEL_29;
    }
  }

  if (*(v2 + 320))
  {
    if (*(v2 + 120))
    {
      v6 = *(a1 + 40);
      v15.gr_name = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      DIAGTrace::enterLowPower_sync(v2, &v15);
      if (v6)
      {
        dispatch_release(v6);
      }
    }

    else
    {
      v15.gr_passwd = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v9 = Mutable;
      if (Mutable)
      {
        v15.gr_passwd = Mutable;
      }

      v10 = *(a1 + 40);
      v14 = v10;
      if (v10)
      {
        dispatch_retain(v10);
      }

      if (v9 && (v11 = CFGetTypeID(v9), v11 == CFDictionaryGetTypeID()))
      {
        CFRetain(v9);
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      DIAGTrace::stop_sync(v2, &v14, v8, 1);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v10)
      {
        dispatch_release(v10);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

LABEL_29:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_23C200FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void DIAGTrace::exitLowPower(DIAGTrace *this, group *a2)
{
  gr_name = a2->gr_name;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1174405120;
  v4[2] = ___ZN9DIAGTrace12exitLowPowerEN8dispatch5groupE_block_invoke;
  v4[3] = &__block_descriptor_tmp_80;
  v4[4] = this;
  object = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped(this + 1, gr_name, v4);
  if (object)
  {
    dispatch_release(object);
  }
}

void ___ZN9DIAGTrace12exitLowPowerEN8dispatch5groupE_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_6;
  }

  v4 = *(v2 + 244);
  DIAGTrace::stateFlagsAsString(v2, &v15.gr_passwd);
  v5 = SHIBYTE(v15.gr_mem) >= 0 ? &v15.gr_passwd : v15.gr_passwd;
  *buf = 67109378;
  v17 = v4;
  v18 = 2080;
  v19 = v5;
  _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Exit low-power requested. Enabled = %d; %s", buf, 0x12u);
  if (SHIBYTE(v15.gr_mem) < 0)
  {
    operator delete(v15.gr_passwd);
    if (*(v2 + 244) != 1)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_6:
    if (*(v2 + 244) != 1)
    {
      goto LABEL_29;
    }
  }

  if (*(v2 + 320))
  {
    if (*(v2 + 120))
    {
      v6 = *(a1 + 40);
      v15.gr_name = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      DIAGTrace::exitLowPower_sync(v2, &v15);
      if (v6)
      {
        dispatch_release(v6);
      }
    }

    else
    {
      v15.gr_passwd = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v9 = Mutable;
      if (Mutable)
      {
        v15.gr_passwd = Mutable;
      }

      v10 = *(a1 + 40);
      v14 = v10;
      if (v10)
      {
        dispatch_retain(v10);
      }

      if (v9 && (v11 = CFGetTypeID(v9), v11 == CFDictionaryGetTypeID()))
      {
        CFRetain(v9);
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      DIAGTrace::start_sync(v2, &v14, v8, 1);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v10)
      {
        dispatch_release(v10);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

LABEL_29:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_23C201308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DIAGTrace::snapshot(uint64_t a1, NSObject **a2, const void **a3)
{
  v5 = *a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1174405120;
  v7[2] = ___ZN9DIAGTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_83_1;
  v7[4] = a1;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v5, v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void ___ZN9DIAGTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_6;
  }

  v4 = *(v2 + 244);
  DIAGTrace::stateFlagsAsString(v2, __p);
  v5 = v12 >= 0 ? __p : __p[0];
  *buf = 67109378;
  v14 = v4;
  v15 = 2080;
  v16 = v5;
  _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Snapshot requested. Enabled = %d; %s", buf, 0x12u);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (*(v2 + 244) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_6:
    if (*(v2 + 244) != 1)
    {
      goto LABEL_17;
    }
  }

  if (*(v2 + 320))
  {
    v6 = a1[5];
    v10 = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7 = a1[6];
    v9 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    DIAGTrace::snapshot_sync(v2, &v10, &v9);
    if (v7)
    {
      CFRelease(v7);
    }

    if (v6)
    {
      dispatch_release(v6);
    }
  }

LABEL_17:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23C2015B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DIAGTrace::dumpState(uint64_t a1, NSObject **a2, uint64_t a3)
{
  v4 = *a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1174405120;
  v5[2] = ___ZN9DIAGTrace9dumpStateEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_84;
  v5[4] = a1;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    __p = *a3;
    ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v4, v5);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v4, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }
}

void ___ZN9DIAGTrace9dumpStateEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 244) != 1)
  {
    goto LABEL_11;
  }

  v3 = *(v1 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_11;
  }

  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v7 = *(a1 + 40);
  }

  DIAGTrace::dumpState_sync(v1, &v7, 1, 10, __p);
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  *buf = 136315138;
  v11 = v4;
  _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(v7.__r_.__value_.__l.__data_);
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23C201824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t DIAGTrace::setProperty(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v18 = 13;
  strcpy(__p, "BasebandTrace");
  isSupported = abm::trace::isSupported(__p);
  if (v18 < 0)
  {
    v13 = isSupported;
    operator delete(__p[0]);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_12;
  }

  if ((isSupported & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1174405120;
  v15[2] = ___ZN9DIAGTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke;
  v15[3] = &unk_284EF9C38;
  v15[4] = &v19;
  v15[5] = a1;
  v15[6] = a3;
  v15[7] = a4;
  v9 = *a2;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v23 = v15;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_123;
  block[4] = a1 + 8;
  block[5] = &v23;
  v10 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v10, block);
    v11 = *(v20 + 24);
    v12 = object;
    if (!object)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  dispatch_sync(v10, block);
  v11 = *(v20 + 24);
  v12 = object;
  if (object)
  {
LABEL_11:
    dispatch_release(v12);
  }

LABEL_12:
  _Block_object_dispose(&v19, 8);
  return v11;
}

void sub_23C201A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void ___ZN9DIAGTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v46 = 5;
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = DIAGTrace::setProperty_sync(v2, *(a1 + 48), *(a1 + 56), &v46);
  v3 = *(v2 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_11;
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = "True";
  }

  else
  {
    v4 = "False";
  }

  v5 = *(a1 + 48);
  if (*(v5 + 23) < 0)
  {
    v5 = *v5;
    v6 = *(a1 + 56);
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *(a1 + 56);
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  v6 = *v6;
LABEL_7:
  v7 = v46;
  DIAGTrace::stateFlagsAsString(v2, __p);
  if (v48 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
  *(buf.__r_.__value_.__r.__words + 4) = v4;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v5;
  HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
  v50 = v6;
  v51 = 1024;
  v52 = v7;
  v53 = 2080;
  v54 = v8;
  _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Set property. Success=%s, Key=%s, Value=%s, Action=%d, %s", &buf, 0x30u);
  if (v48 < 0)
  {
    operator delete(__p[0]);
    if (*(*(*(a1 + 32) + 8) + 24) != 1)
    {
      goto LABEL_64;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (*(*(*(a1 + 32) + 8) + 24) != 1)
  {
    goto LABEL_64;
  }

LABEL_12:
  v9 = *(v2 + 320);
  if (!v9)
  {
    goto LABEL_39;
  }

  v10 = *(a1 + 48);
  v11 = *(v10 + 23);
  if (v11 >= 0)
  {
    v12 = *(v10 + 23);
  }

  else
  {
    v12 = v10[1];
  }

  v13 = v12 + 3;
  if (v12 + 3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v13 < 0x17)
  {
    memset(&buf, 0, sizeof(buf));
    p_buf = &buf;
    *(&buf.__r_.__value_.__s + 23) = v12 + 3;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((v13 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v13 | 7) + 1;
    }

    p_buf = operator new(v14);
    buf.__r_.__value_.__l.__size_ = v12 + 3;
    buf.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
    buf.__r_.__value_.__r.__words[0] = p_buf;
  }

  v16 = *v10;
  if (v11 >= 0)
  {
    v17 = v10;
  }

  else
  {
    v17 = *v10;
  }

  memmove(p_buf, v17, v12);
LABEL_31:
  *(&p_buf->__r_.__value_.__l.__data_ + v12) = 2112800;
  v18 = *(a1 + 56);
  v19 = *(v18 + 23);
  if (v19 >= 0)
  {
    v20 = *(a1 + 56);
  }

  else
  {
    v20 = *v18;
  }

  if (v19 >= 0)
  {
    v21 = *(v18 + 23);
  }

  else
  {
    v21 = *(v18 + 8);
  }

  v22 = std::string::append(&buf, v20, v21);
  v45 = *v22;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  diag::Service::pushInfo(v9, 3, &v45);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_39:
  buf.__r_.__value_.__r.__words[0] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v24 = Mutable;
  if (Mutable)
  {
    buf.__r_.__value_.__r.__words[0] = Mutable;
  }

  v25 = v46;
  if (v46 == 1)
  {
    v26 = *(a1 + 64);
    v44 = v26;
    if (v26)
    {
      dispatch_retain(v26);
    }

    if (v24 && (v27 = CFGetTypeID(v24), v27 == CFDictionaryGetTypeID()))
    {
      v43.gr_mem = v24;
      CFRetain(v24);
      v28 = v24;
    }

    else
    {
      v28 = 0;
      v43.gr_mem = 0;
    }

    DIAGTrace::destroyService_sync(v2, &v44, &v43.gr_mem);
    if (v28)
    {
      CFRelease(v28);
    }

LABEL_57:
    if (v26)
    {
      dispatch_release(v26);
    }

    goto LABEL_62;
  }

  if ((*(v2 + 96) & 3) != 1)
  {
    v29 = *(v2 + 40);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v25;
      _os_log_impl(&dword_23C1C4000, v29, OS_LOG_TYPE_DEFAULT, "#I State is aborted or stopped. Skip service action [%d]", __p, 8u);
    }

    v46 = 5;
    goto LABEL_62;
  }

  if (v46 > 2)
  {
    if (v46 == 3)
    {
      DIAGTrace::pushServiceConfig_sync(v2);
    }

    else if (v46 == 4)
    {
      v31 = *(a1 + 64);
      v42 = v31;
      if (v31)
      {
        dispatch_retain(v31);
      }

      if (v24 && (v32 = CFGetTypeID(v24), v32 == CFDictionaryGetTypeID()))
      {
        v41 = v24;
        CFRetain(v24);
        v33 = v24;
      }

      else
      {
        v33 = 0;
        v41 = 0;
      }

      DIAGTrace::destroyService_sync(v2, &v42, &v41);
      if (v33)
      {
        CFRelease(v33);
      }

      if (v31)
      {
        dispatch_release(v31);
      }

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 1174405120;
      v38[2] = ___ZN9DIAGTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke_88;
      v38[3] = &__block_descriptor_tmp_89;
      v37 = *(a1 + 64);
      v38[4] = v2;
      object = v37;
      if (v37)
      {
        dispatch_retain(v37);
      }

      cf = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      dispatch_group_notify(*(a1 + 64), *(v2 + 24), v38);
      if (cf)
      {
        CFRelease(cf);
      }

      if (object)
      {
        dispatch_release(object);
      }
    }

    goto LABEL_62;
  }

  if (!v46)
  {
    DIAGTrace::reinitService_sync(v2, 0);
    v26 = *(a1 + 64);
    *&v43.gr_gid = v26;
    if (v26)
    {
      dispatch_retain(v26);
    }

    if (v24 && (v35 = CFGetTypeID(v24), v35 == CFDictionaryGetTypeID()))
    {
      v43.gr_passwd = v24;
      CFRetain(v24);
      v36 = v24;
    }

    else
    {
      v36 = 0;
      v43.gr_passwd = 0;
    }

    DIAGTrace::start_sync(v2, &v43.gr_gid, v34, 0);
    if (v36)
    {
      CFRelease(v36);
    }

    goto LABEL_57;
  }

  if (v46 == 2)
  {
    v26 = *(a1 + 64);
    v43.gr_name = v26;
    if (v26)
    {
      dispatch_retain(v26);
    }

    DIAGTrace::restartService_sync(v2, &v43);
    goto LABEL_57;
  }

LABEL_62:
  if (v24)
  {
    CFRelease(v24);
  }

LABEL_64:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_23C202034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9DIAGTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke_88(void *a1)
{
  v2 = a1[4];
  DIAGTrace::reinitService_sync(v2, 0);
  v4 = a1[5];
  v7 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = a1[6];
  if (v5 && (v6 = CFGetTypeID(v5), v6 == CFDictionaryGetTypeID()))
  {
    CFRetain(v5);
  }

  else
  {
    v5 = 0;
  }

  DIAGTrace::start_sync(v2, &v7, v3, 0);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {

    dispatch_release(v4);
  }
}

void sub_23C202220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  if (v9)
  {
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_40c21_ZTSN8dispatch5groupE48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void __copy_helper_block_e8_64c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  *(a1 + 64) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_64c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t DIAGTrace::getProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN9DIAGTrace11getPropertyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6__block_invoke;
  v7[3] = &unk_278BB8778;
  v7[4] = &v8;
  v7[5] = a1;
  v7[6] = a2;
  v7[7] = a3;
  v12 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_123;
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

BOOL ___ZN9DIAGTrace11getPropertyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6__block_invoke(uint64_t a1)
{
  result = DIAGTrace::getProperty_sync(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t DIAGTrace::getBasebandOperatingMode(DIAGTrace *this)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *(this + 6), *(this + 7));
  }

  else
  {
    v27 = *(this + 2);
  }

  v2 = *(this + 3);
  abm::client::CreateManager();
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = MEMORY[0x277D86468];
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v3) == v4)
    {
      xpc_retain(v3);
      v5 = v3;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v29 = xpc_null_create();
  v6 = xpc_int64_create(1500);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x277CECB48], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v25 = v30;
  v26 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *MEMORY[0x277CECD40];
  v9 = strlen(*MEMORY[0x277CECD40]);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v11 = operator new(v12);
    __dst[1] = v10;
    v24 = v12 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_24;
  }

  HIBYTE(v24) = v9;
  v11 = __dst;
  if (v9)
  {
LABEL_24:
    memmove(v11, v8, v10);
  }

  *(v10 + v11) = 0;
  abm::client::PerformCommand();
  data = v27.__r_.__value_.__l.__data_;
  size = v27.__r_.__value_.__l.__size_;
  v15 = v28;
  HIBYTE(v28) = 0;
  v27.__r_.__value_.__s.__data_[8] = 0;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }

  v16 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = v29;
    if (v29)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v17 = v29;
    if (v29)
    {
      goto LABEL_33;
    }
  }

  v17 = xpc_null_create();
  if (!v17)
  {
    v18 = xpc_null_create();
    v17 = 0;
    goto LABEL_36;
  }

LABEL_33:
  if (MEMORY[0x23EECEE80](v17) == v4)
  {
    xpc_retain(v17);
    v18 = v17;
  }

  else
  {
    v18 = xpc_null_create();
  }

LABEL_36:
  xpc_release(v17);
  if (!data && MEMORY[0x23EECEE80](v18) == v4)
  {
    value = xpc_dictionary_get_value(v18, *MEMORY[0x277CECCF0]);
    v27.__r_.__value_.__r.__words[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v27.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v19 = xpc::dyn_cast_or_default();
    xpc_release(v27.__r_.__value_.__l.__data_);
  }

  else
  {
    v19 = 8;
  }

  xpc_release(v18);
  xpc_release(v5);
  if (v15 < 0)
  {
    operator delete(size);
  }

  v20 = v31;
  if (v31 && !atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  return v19;
}

void sub_23C2027D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, xpc_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  xpc_release(object);
  xpc_release(v25);
  xpc_release(v23);
  if (v26 < 0)
  {
    operator delete(v24);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v27 - 80);
  _Unwind_Resume(a1);
}

void ___ZN9DIAGTrace19stallDetection_syncEb_block_invoke(void *a1, uint64_t a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_86;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v58 = v6;
  if (!v6)
  {
    goto LABEL_86;
  }

  v7 = v6;
  if (!a1[5])
  {
    goto LABEL_84;
  }

  BasebandOperatingMode = DIAGTrace::getBasebandOperatingMode(v5);
  v9 = (a2 + 32);
  if (*(a2 + 55) < 0)
  {
    v10 = *v9;
    if (strcasecmp(*v9, "false") && strcasecmp(v10, "off") && strcasecmp(v10, "no"))
    {
      if (strcasecmp(v10, "true") && strcasecmp(v10, "on") && strcasecmp(v10, "yes") && strcasecmp(v10, "full") && strcasecmp(v10, "streaming"))
      {
        if (!strcasecmp(v10, "lite"))
        {
          goto LABEL_38;
        }

LABEL_24:
        if (!strcasecmp(v10, "background"))
        {
          goto LABEL_38;
        }

        *__idx = 0xAAAAAAAAAAAAAAAALL;
        v11 = std::stol((a2 + 32), __idx, 0);
        v12 = *(a2 + 55);
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(a2 + 40);
        }

        if (*__idx != v12 || (v13 = v11, v11 < 0))
        {
          v14 = *(v5 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *__idx = 0;
            _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "DIAG: Failed to convert the count string to integer", __idx, 2u);
          }

          goto LABEL_84;
        }

LABEL_34:
        v15 = *(v5 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_39;
        }

        goto LABEL_35;
      }

LABEL_33:
      v13 = 1;
      goto LABEL_34;
    }
  }

  else if (strcasecmp((a2 + 32), "false") && strcasecmp((a2 + 32), "off") && strcasecmp((a2 + 32), "no"))
  {
    if (strcasecmp((a2 + 32), "true") && strcasecmp((a2 + 32), "on") && strcasecmp((a2 + 32), "yes") && strcasecmp((a2 + 32), "full") && strcasecmp((a2 + 32), "streaming"))
    {
      v10 = (a2 + 32);
      if (!strcasecmp((a2 + 32), "lite"))
      {
LABEL_38:
        v13 = 2;
        v15 = *(v5 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_39;
        }

        goto LABEL_35;
      }

      goto LABEL_24;
    }

    goto LABEL_33;
  }

  v13 = 0;
  v15 = *(v5 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
LABEL_39:
    *__idx = 134217984;
    *&__idx[4] = v13;
    _os_log_debug_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEBUG, "#D DIAG: Entry count is %llu", __idx, 0xCu);
    if (!v13)
    {
      goto LABEL_40;
    }

LABEL_36:
    *(v5 + 240) = *(v5 + 236);
    v16 = *(v5 + 40);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_41;
    }

    *__idx = 0;
    v17 = "#D DIAG: Resetting retry counter";
    v18 = v16;
    v19 = 2;
    goto LABEL_93;
  }

LABEL_35:
  if (v13)
  {
    goto LABEL_36;
  }

LABEL_40:
  v20 = *(v5 + 240) - 1;
  *(v5 + 240) = v20;
  v21 = *(v5 + 40);
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
LABEL_41:
    if (!*(v5 + 240))
    {
      goto LABEL_42;
    }

LABEL_84:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    goto LABEL_86;
  }

  *__idx = 67109120;
  *&__idx[4] = v20;
  v17 = "#D DIAG: Stall retries left: %u";
  v18 = v21;
  v19 = 8;
LABEL_93:
  _os_log_debug_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_DEBUG, v17, __idx, v19);
  if (*(v5 + 240))
  {
    goto LABEL_84;
  }

LABEL_42:
  memset(&__dst, 170, sizeof(__dst));
  v22 = *(v5 + 116);
  if (v22 > 2)
  {
    v23 = "Unknown";
  }

  else
  {
    v23 = off_278BB8818[v22];
  }

  v24 = strlen(v23);
  if (v24 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v24;
  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v24 | 7) + 1;
    }

    p_dst = operator new(v27);
    __dst.__r_.__value_.__l.__size_ = v25;
    __dst.__r_.__value_.__r.__words[2] = v27 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_53;
  }

  *(&__dst.__r_.__value_.__s + 23) = v24;
  p_dst = &__dst;
  if (v24)
  {
LABEL_53:
    memcpy(p_dst, v23, v25);
  }

  p_dst->__r_.__value_.__s.__data_[v25] = 0;
  v28 = *(v5 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(v5 + 236);
    *__idx = 136315394;
    *&__idx[4] = "DIAG: stall detected";
    *&__idx[12] = 1024;
    *&__idx[14] = v29;
    _os_log_impl(&dword_23C1C4000, v28, OS_LOG_TYPE_DEFAULT, "#I %s after %u minute(s)", __idx, 0x12u);
  }

  *(v5 + 240) = *(v5 + 236);
  if (BasebandOperatingMode == 1)
  {
    v30 = *(v5 + 40);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_81;
    }

    v31 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = __dst.__r_.__value_.__r.__words[0];
    }

    *__idx = 136315138;
    *&__idx[4] = v31;
    v32 = "#I DIAG: Forgoing stall recovery action (%s) because modem is in low power mode";
    v33 = v30;
    v34 = 12;
LABEL_80:
    _os_log_impl(&dword_23C1C4000, v33, OS_LOG_TYPE_DEFAULT, v32, __idx, v34);
    goto LABEL_81;
  }

  v35 = *(v5 + 320);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v55 = __dst;
  }

  diag::Service::pushInfo(v35, 11, &v55);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v36 = *(v5 + 116);
  if (v36 == 1)
  {
    *&v39 = 0xAAAAAAAAAAAAAAAALL;
    *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v63 = v39;
    v64 = v39;
    v61 = v39;
    v62 = v39;
    *&__idx[16] = v39;
    v60 = v39;
    *__idx = v39;
    std::string::basic_string[abi:ne200100]<0>(v53, *MEMORY[0x277CECC38]);
    std::string::basic_string[abi:ne200100]<0>(v51, *MEMORY[0x277CECD10]);
    std::string::basic_string[abi:ne200100]<0>(v49, "DIAG: stall detected");
    Timestamp::Timestamp(v45);
    Timestamp::asString(v45, 0, 9, v47);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    ResetInfo::ResetInfo(__idx, v53, v51, v49, v47, 7, __p);
    if (v44 < 0)
    {
      operator delete(__p[0]);
      if ((v48 & 0x80000000) == 0)
      {
LABEL_74:
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v45, v46);
        if ((v50 & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_89;
      }
    }

    else if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    operator delete(v47[0]);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v45, v46);
    if ((v50 & 0x80000000) == 0)
    {
LABEL_75:
      if ((v52 & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_90;
    }

LABEL_89:
    operator delete(v49[0]);
    if ((v52 & 0x80000000) == 0)
    {
LABEL_76:
      if ((v54 & 0x80000000) == 0)
      {
LABEL_77:
        ResetInfo::ResetInfo(&v42.gr_passwd, __idx);
        DIAGTrace::commandResetModem_sync(v5, &v42.gr_passwd);
        ResetInfo::~ResetInfo(&v42.gr_passwd);
        ResetInfo::~ResetInfo(__idx);
        goto LABEL_81;
      }

LABEL_91:
      operator delete(v53[0]);
      goto LABEL_77;
    }

LABEL_90:
    operator delete(v51[0]);
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_91;
  }

  if (v36 != 2)
  {
    v40 = *(v5 + 40);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_81;
    }

    *__idx = 0;
    v32 = "#I No action for DIAG stall detected";
    v33 = v40;
    v34 = 2;
    goto LABEL_80;
  }

  v37 = dispatch_group_create();
  v38 = v37;
  v42.gr_name = v37;
  if (v37)
  {
    dispatch_retain(v37);
  }

  DIAGTrace::restartService_sync(v5, &v42);
  if (v38)
  {
    dispatch_release(v38);
    dispatch_release(v38);
  }

LABEL_81:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v7 = v58;
  if (v58)
  {
    goto LABEL_84;
  }

LABEL_86:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_23C2030A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x23C202AFCLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void ResetInfo::ResetInfo(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 9);
  LODWORD(this[3].__r_.__value_.__r.__words[1]) = *(a2 + 20);
  this[3].__r_.__value_.__r.__words[0] = v7;
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v8 = *(a2 + 88);
    this[4].__r_.__value_.__l.__size_ = *(a2 + 13);
    *&this[3].__r_.__value_.__r.__words[2] = v8;
  }
}

void sub_23C203368(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

atomic_ullong *std::shared_ptr<DIAGTrace>::shared_ptr[abi:ne200100]<DIAGTrace,std::shared_ptr<DIAGTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DIAGTrace>(DIAGTrace*)::{lambda(DIAGTrace*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EF9CC0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_23C2034FC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<DIAGTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DIAGTrace>(DIAGTrace*)::{lambda(DIAGTrace*)#1}::operator() const(DIAGTrace*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<DIAGTrace *,std::shared_ptr<DIAGTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DIAGTrace>(DIAGTrace*)::{lambda(DIAGTrace *)#1},std::allocator<DIAGTrace>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DIAGTrace *,std::shared_ptr<DIAGTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DIAGTrace>(DIAGTrace*)::{lambda(DIAGTrace *)#1},std::allocator<DIAGTrace>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI9DIAGTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI9DIAGTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI9DIAGTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI9DIAGTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<DIAGTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DIAGTrace>(DIAGTrace*)::{lambda(DIAGTrace*)#1}::operator() const(DIAGTrace*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<diag::Service *,std::shared_ptr<diag::Service>::__shared_ptr_default_delete<diag::Service,diag::Service>,std::allocator<diag::Service>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<diag::Service *,std::shared_ptr<diag::Service>::__shared_ptr_default_delete<diag::Service,diag::Service>,std::allocator<diag::Service>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v3 = v1;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v1 = v3;
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<diag::Service *,std::shared_ptr<diag::Service>::__shared_ptr_default_delete<diag::Service,diag::Service>,std::allocator<diag::Service>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000023C32CD8BLL)
  {
    if (((v2 & 0x800000023C32CD8BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023C32CD8BLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023C32CD8BLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<diag::Service>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t ctu::cf::update<char const*,BOOL>(__CFDictionary *a1, const __CFString **a2, int a3, uint64_t a4, const __CFAllocator *a5)
{
  key = 0;
  ctu::cf::convert_copy(&key, a2, 0x8000100, a4, a5);
  v7 = key;
  v8 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v8 = MEMORY[0x277CBED10];
  }

  v9 = *v8;
  key = *v8;
  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CFDictionarySetValue(a1, v7, v9);
  }

  CFRelease(v9);
LABEL_13:
  if (v7)
  {
    CFRelease(v7);
  }

  return v11;
}

void sub_23C2038A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
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

uint64_t ctu::cf::update<char const*,int>(__CFDictionary *a1, const __CFString **a2, int a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  v14 = 0;
  ctu::cf::convert_copy(&v14, a2, 0x8000100, a4, a5);
  v8 = v14;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberIntType, &valuePtr);
  v10 = v9;
  v14 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionarySetValue(a1, v8, v9);
  }

  CFRelease(v10);
LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

void sub_23C2039B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void sub_23C2039D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::update<char const*,std::string>(__CFDictionary *a1, const __CFString **a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
{
  value = 0;
  ctu::cf::convert_copy(&value, a2, 0x8000100, a4, a5);
  v6 = value;
  value = 0;
  ctu::cf::convert_copy();
  v7 = value;
  if (v6)
  {
    v8 = value == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    if (!value)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionarySetValue(a1, v6, value);
  }

  CFRelease(v7);
LABEL_11:
  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

void sub_23C203A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_23C203AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::update<char const*,unsigned int>(__CFDictionary *a1, const __CFString **a2, unsigned int a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, a2, 0x8000100, a4, a5);
  v8 = valuePtr;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberLongLongType, &valuePtr);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionarySetValue(a1, v8, v9);
  }

  CFRelease(v10);
LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

void sub_23C203B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_23C203BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<Trace>::execute_wrapped(uint64_t *a1, NSObject *a2, uint64_t a3)
{
  v4 = a1[1];
  if (!v4 || (v7 = *a1, (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE15execute_wrappedEP16dispatch_group_sU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284EF9D58;
  block[5] = v7;
  v14 = v8;
  p_shared_owners = &v8->__shared_owners_;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a3;
  dispatch_group_async(a2, v10, block);
  v12 = v14;
  if (!v14 || atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    return;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c33_ZTSNSt3__110shared_ptrIK5TraceEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c33_ZTSNSt3__110shared_ptrIK5TraceEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __cxx_global_var_init_101()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_DIAGTrace_cpp()
{
  result = ETLDIAGLoggingGetDefaultView();
  dword_280C05CE4 = result;
  return result;
}

uint64_t abm::tailspin::dumpOutputWithOptions_sync(uint64_t a1, uint64_t *a2, int a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  if (qword_280C05D18 == -1)
  {
    if (off_280C05D00)
    {
      goto LABEL_3;
    }

LABEL_52:
    if ((atomic_load_explicit(&qword_280C05D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D10))
    {
      qword_280C05D28 = 0;
      qword_280C05D30 = 0;
      __cxa_guard_release(&qword_280C05D10);
    }

    if (qword_280C05D08 == -1)
    {
      v31 = qword_280C05D30;
      if (!os_log_type_enabled(qword_280C05D30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }
    }

    else
    {
      dispatch_once(&qword_280C05D08, &__block_literal_global);
      v31 = qword_280C05D30;
      if (!os_log_type_enabled(qword_280C05D30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }
    }

    LOWORD(info[0].numer) = 0;
    v20 = "Failed to link tailspin";
    v21 = v31;
    v22 = 2;
    goto LABEL_59;
  }

  dispatch_once(&qword_280C05D18, &__block_literal_global_14);
  if (!off_280C05D00)
  {
    goto LABEL_52;
  }

LABEL_3:
  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      goto LABEL_9;
    }

    a2 = *a2;
    goto LABEL_8;
  }

  if (*(a2 + 23))
  {
LABEL_8:
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    [v6 setObject:v7 forKeyedSubscript:_MergedGlobals_2];
  }

LABEL_9:
  if (a3 < 1)
  {
    goto LABEL_16;
  }

  info[0] = 0;
  if (mach_timebase_info(info))
  {
    if ((atomic_load_explicit(&qword_280C05D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D10))
    {
      qword_280C05D28 = 0;
      qword_280C05D30 = 0;
      __cxa_guard_release(&qword_280C05D10);
    }

    if (qword_280C05D08 == -1)
    {
      v8 = qword_280C05D30;
      if (!os_log_type_enabled(qword_280C05D30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    dispatch_once(&qword_280C05D08, &__block_literal_global);
    v8 = qword_280C05D30;
    if (os_log_type_enabled(qword_280C05D30, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to initialize timebase", buf, 2u);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time() - 1000000000 * info[0].denom * a3 / info[0].numer];
    [v6 setObject:v9 forKeyedSubscript:qword_280C05CF0];

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:qword_280C05CF8];
  }

LABEL_16:
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8))
    {
      a1 = *a1;
      goto LABEL_22;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_22;
  }

  v10 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v10 setDateStyle:1];
  [v10 setDateFormat:@"yyyy-MM-dd-HH-mm-ss-SSS"];
  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [v10 stringFromDate:v12];
  v14 = [v11 stringWithFormat:@"log-bb-%@.tailspin", v13];
  v15 = v14;
  a1 = [v14 UTF8String];

LABEL_22:
  v16 = umask(0);
  v17 = open(a1, 1538, 432);
  umask(v16);
  if (v17 == -1)
  {
    if ((atomic_load_explicit(&qword_280C05D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D10))
    {
      qword_280C05D28 = 0;
      qword_280C05D30 = 0;
      __cxa_guard_release(&qword_280C05D10);
    }

    if (qword_280C05D08 == -1)
    {
      v19 = qword_280C05D30;
      if (!os_log_type_enabled(qword_280C05D30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }
    }

    else
    {
      dispatch_once(&qword_280C05D08, &__block_literal_global);
      v19 = qword_280C05D30;
      if (!os_log_type_enabled(qword_280C05D30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }
    }

    info[0].numer = 136315138;
    *&info[0].denom = a1;
    v20 = "Failed to create tailspin file %s";
    v21 = v19;
    v22 = 12;
LABEL_59:
    _os_log_error_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_ERROR, v20, info, v22);
    goto LABEL_55;
  }

  if (fchown(v17, 0, 0x50u))
  {
    if ((atomic_load_explicit(&qword_280C05D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D10))
    {
      qword_280C05D28 = 0;
      qword_280C05D30 = 0;
      __cxa_guard_release(&qword_280C05D10);
    }

    if (qword_280C05D08 == -1)
    {
      v18 = qword_280C05D30;
      if (!os_log_type_enabled(qword_280C05D30, OS_LOG_TYPE_ERROR))
      {
LABEL_27:
        close(v17);
LABEL_55:
        v30 = 0;
        goto LABEL_56;
      }
    }

    else
    {
      dispatch_once(&qword_280C05D08, &__block_literal_global);
      v18 = qword_280C05D30;
      if (!os_log_type_enabled(qword_280C05D30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }
    }

    info[0].numer = 136315138;
    *&info[0].denom = a1;
    _os_log_error_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_ERROR, "Failed to change ownership of tailspin file %s to root/admin", info, 0xCu);
    goto LABEL_27;
  }

  if (!off_280C05D00(v17, v6))
  {
    goto LABEL_55;
  }

  v36 = -1431655766;
  v37 = -1431655766;
  if (!support::fs::getUidGid(1, &v37, &v36))
  {
    goto LABEL_47;
  }

  v23 = strlen(a1);
  if (v23 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v23 | 7) + 1;
    }

    v25 = operator new(v26);
    __dst[1] = v24;
    v35 = v26 | 0x8000000000000000;
    __dst[0] = v25;
    goto LABEL_42;
  }

  HIBYTE(v35) = v23;
  v25 = __dst;
  if (v23)
  {
LABEL_42:
    memmove(v25, a1, v24);
  }

  *(v24 + v25) = 0;
  updated = support::fs::updateOwner(__dst, v37, v36);
  if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
    if (updated)
    {
      goto LABEL_50;
    }

LABEL_47:
    if ((atomic_load_explicit(&qword_280C05D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D10))
    {
      qword_280C05D28 = 0;
      qword_280C05D30 = 0;
      __cxa_guard_release(&qword_280C05D10);
    }

    if (qword_280C05D08 == -1)
    {
      v29 = qword_280C05D30;
      if (!os_log_type_enabled(qword_280C05D30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }
    }

    else
    {
      dispatch_once(&qword_280C05D08, &__block_literal_global);
      v29 = qword_280C05D30;
      if (!os_log_type_enabled(qword_280C05D30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }
    }

    v39 = 9;
    strcpy(info, "_wireless");
    *buf = 136315394;
    v41 = a1;
    v42 = 2080;
    v43 = info;
    _os_log_error_impl(&dword_23C1C4000, v29, OS_LOG_TYPE_ERROR, "Failed to change ownership of tailspin file %s to %s", buf, 0x16u);
    if (v39 < 0)
    {
      operator delete(*info);
    }

    goto LABEL_50;
  }

  v28 = updated;
  operator delete(__dst[0]);
  if ((v28 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_50:
  v30 = 1;
LABEL_56:

  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

void sub_23C2045AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN3abm8tailspinL16sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "tailspin.helper");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void ___ZL21sLinkTailspinIfNeededv_block_invoke()
{
  v0 = dlopen("/usr/lib/libtailspin.dylib", 1);
  qword_280C05D20 = v0;
  if (v0)
  {
    off_280C05D00 = dlsym(v0, "tailspin_dump_output_with_options_sync");
    v1 = dlsym(qword_280C05D20, "TSPDumpOptions_ReasonString");
    objc_storeStrong(&_MergedGlobals_2, *v1);
    v2 = dlsym(qword_280C05D20, "TSPDumpOptions_MinTimestamp");
    objc_storeStrong(&qword_280C05CF0, *v2);
    v3 = *dlsym(qword_280C05D20, "TSPDumpOptions_NoSymbolicate");

    objc_storeStrong(&qword_280C05CF8, v3);
  }
}

void abm::HelperServerInternal::create(abm::HelperServerInternal **a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x70uLL);
  abm::HelperServerInternal::HelperServerInternal(v3);
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<abm::HelperServerInternal>::shared_ptr[abi:ne200100]<abm::HelperServerInternal,std::shared_ptr<abm::HelperServerInternal> ctu::SharedSynchronizable<abm::HelperServerInternal>::make_shared_ptr<abm::HelperServerInternal>(abm::HelperServerInternal*)::{lambda(abm::HelperServerInternal*)#1},0>(a1, v3);
  abm::HelperServerInternal::init(*a1);
}

void abm::HelperServerInternal::init(abm::HelperServerInternal *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN3abm20HelperServerInternal4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_10_2;
  v9[4] = this;
  v9[5] = v3;
  v10 = v5;
  v11 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3abm20HelperServerInternalEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_38;
  block[4] = this;
  block[5] = &v11;
  v7 = *(this + 2);
  if (!*(this + 3))
  {
    dispatch_sync(v7, block);
    v8 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v7, block);
  v8 = v10;
  if (v10)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v5);
}

xpc_object_t *abm::HelperServerInternal::HelperServerInternal(xpc_object_t *this)
{
  Name = abm::HelperServerInternal::getName(this);
  if (byte_280C06537 >= 0)
  {
    v3 = &abm::HelperServerInternal::getName(void)const::kName;
  }

  else
  {
    v3 = abm::HelperServerInternal::getName(void)const::kName;
  }

  abm::HelperServerInternal::getName(Name);
  if (byte_280C06537 >= 0)
  {
    v4 = &abm::HelperServerInternal::getName(void)const::kName;
  }

  else
  {
    v4 = abm::HelperServerInternal::getName(void)const::kName;
  }

  ctu::OsLogContext::OsLogContext(v7, v4, "server");
  ctu::SharedLoggable<abm::HelperServerInternal,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this, v3, QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v7);
  v5 = getuid();
  abm::helper::getUserConfig(v5, this + 5);
  this[6] = 0;
  this[7] = 0;
  this[10] = 0;
  this[9] = 0;
  this[8] = this + 9;
  this[12] = 0;
  this[13] = 0;
  return this;
}

uint64_t *abm::HelperServerInternal::getName(abm::HelperServerInternal *this)
{
  {
    return &abm::HelperServerInternal::getName(void)const::kName;
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "com.apple.abm.helper");
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(".", &v6, &__p);
  v2 = getuid();
  v3 = "mobile";
  v4 = "";
  if (v2 == 25)
  {
    v4 = "wireless";
  }

  if (v2 != 501)
  {
    v3 = v4;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = "root";
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, &__p, &abm::HelperServerInternal::getName(void)const::kName);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return &abm::HelperServerInternal::getName(void)const::kName;
}

void sub_23C204B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void *ctu::SharedLoggable<abm::HelperServerInternal,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t qos_class)
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v6 = dispatch_queue_create(a2, v5);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v6;
  if (v6)
  {
    v7 = v6;
    dispatch_retain(v6);
    a1[3] = 0;
    dispatch_release(v7);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x23EECD7F0](a1 + 4, v9);
  MEMORY[0x23EECD800](v9);
  return a1;
}

void abm::HelperServerInternal::~HelperServerInternal(abm::HelperServerInternal *this)
{
  v2 = *(this + 13);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__tree<std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>,std::__map_value_compare<abm::helper::TaskID,std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>,std::less<abm::helper::TaskID>,true>,std::allocator<std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>>>::destroy(*(this + 9));
  v3 = *(this + 7);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  xpc_release(*(this + 5));
  *(this + 5) = 0;
  MEMORY[0x23EECD800](this + 32);
  v4 = *(this + 3);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void ___ZN3abm20HelperServerInternal4initEv_block_invoke(void *a1)
{
  v118 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (MEMORY[0x23EECEE80](v2[5]) != MEMORY[0x277D86468])
  {
    v3 = v2[4];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = getuid();
      _os_log_error_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_ERROR, "XPC config is invalid for user: %d", buf, 8u);
    }

    goto LABEL_170;
  }

  v2[11] = CFRunLoopGetCurrent();
  value = xpc_dictionary_get_value(v2[5], "UserID");
  *buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v5 = xpc::dyn_cast_or_default();
  xpc_release(*buf);
  if (!v5 || v5 == 501 || v5 == 25)
  {
    memset(v99, 170, sizeof(v99));
    abm::helper::getTasksForUser(v5, v99);
    v6 = v99[1];
    v7 = v99[0];
    if (v99[0] == v99[1])
    {
      if (!v99[0])
      {
        goto LABEL_170;
      }

      v15 = v99[0];
      goto LABEL_169;
    }

    v108 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v107[7] = v8;
    v107[8] = v8;
    v107[5] = v8;
    v107[6] = v8;
    v107[3] = v8;
    v107[4] = v8;
    v107[1] = v8;
    v107[2] = v8;
    v106 = v8;
    v107[0] = v8;
    *__p = v8;
    v105 = v8;
    v103[1] = v8;
    v103[2] = v8;
    v102 = v8;
    v103[0] = v8;
    *buf = v8;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    do
    {
      v9 = *v7 - 1;
      v10 = "invalid";
      if (v9 <= 9)
      {
        v10 = off_278BB88D8[v9];
      }

      v11 = strlen(v10);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, v10, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
      ++v7;
    }

    while (v7 != v6);
    v13 = v2[4];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      std::stringbuf::str[abi:ne200100](&v102 + 2, &block);
      v91 = SHIBYTE(v114) >= 0 ? &block : block;
      LODWORD(v109) = 136315138;
      *(&v109 + 4) = v91;
      _os_log_debug_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEBUG, "#D Available tasks: %s", &v109, 0xCu);
      if (SHIBYTE(v114) < 0)
      {
        operator delete(block);
      }
    }

    v14 = v2[5];
    v98 = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      v98 = xpc_null_create();
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN3abm20HelperServerInternal4initEv_block_invoke_5;
    aBlock[3] = &__block_descriptor_tmp_23;
    v17 = a1[5];
    v16 = a1[6];
    aBlock[4] = v2;
    aBlock[5] = v17;
    v95 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = _Block_copy(aBlock);
    v19 = v2[2];
    if (v19)
    {
      dispatch_retain(v2[2]);
    }

    v96 = v18;
    object = v19;
    TelephonyXPC::Server::create();
    v20 = block;
    block = 0uLL;
    v21 = v2[7];
    *(v2 + 3) = v20;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v22 = *(&block + 1);
    if (*(&block + 1) && !atomic_fetch_add((*(&block + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v96)
    {
      _Block_release(v96);
    }

    xpc_release(v98);
    v98 = 0;
    v23 = v99[0];
    v92 = v99[1];
    if (v99[0] != v99[1])
    {
      v24 = v2 + 9;
      do
      {
        v25 = *v23;
        v93 = 0uLL;
        IsInternalBuild = TelephonyUtilIsInternalBuild();
        if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
        {
          if (v25 > 6)
          {
            if (v25 <= 8)
            {
              if (v25 == 7)
              {
LABEL_57:
                v32 = v2[1];
                if (!v32 || (v33 = *v2, (v34 = std::__shared_weak_count::lock(v32)) == 0))
                {
                  std::__throw_bad_weak_ptr[abi:ne200100]();
                }

                v35 = v34;
                atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v34->__on_zero_shared)(v34);
                  std::__shared_weak_count::__release_weak(v35);
                }

                v36 = operator new(0x88uLL);
                v36[1] = 0;
                v37 = v36 + 1;
                v36[2] = 0;
                *v36 = &unk_284EFA0B8;
                v38 = v36 + 3;
                *&block = v33;
                *(&block + 1) = v35;
                atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                abm::HelperTask::HelperTask((v36 + 3), v25, &block);
                if (*(&block + 1))
                {
                  std::__shared_weak_count::__release_weak(*(&block + 1));
                }

                v36[3] = &unk_284EFC968;
                v39 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
                v36[16] = dispatch_queue_create("log.mgr.task.queue", v39);
                std::__shared_weak_count::__release_weak(v35);
                v40 = v36[5];
                if (v40)
                {
                  goto LABEL_89;
                }
              }

              else
              {
LABEL_93:
                v52 = v2[1];
                if (!v52 || (v53 = *v2, (v54 = std::__shared_weak_count::lock(v52)) == 0))
                {
                  std::__throw_bad_weak_ptr[abi:ne200100]();
                }

                v55 = v54;
                atomic_fetch_add_explicit(&v54->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v54->__on_zero_shared)(v54);
                  std::__shared_weak_count::__release_weak(v55);
                }

                v36 = operator new(0x90uLL);
                v36[1] = 0;
                v37 = v36 + 1;
                v36[2] = 0;
                *v36 = &unk_284EFA108;
                v38 = v36 + 3;
                *&block = v53;
                *(&block + 1) = v55;
                atomic_fetch_add_explicit(&v55->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                abm::HelperTask::HelperTask((v36 + 3), v25, &block);
                if (*(&block + 1))
                {
                  std::__shared_weak_count::__release_weak(*(&block + 1));
                }

                v36[3] = &unk_284EFD360;
                v56 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
                v36[17] = dispatch_queue_create("profile.task.queue", v56);
                std::__shared_weak_count::__release_weak(v55);
                v40 = v36[5];
                if (v40)
                {
                  goto LABEL_89;
                }
              }

              goto LABEL_64;
            }

            if (v25 == 9)
            {
LABEL_83:
              v49 = v2[1];
              if (!v49 || (v50 = *v2, (v51 = std::__shared_weak_count::lock(v49)) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              v48 = v51;
              atomic_fetch_add_explicit(&v51->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v51->__on_zero_shared)(v51);
                std::__shared_weak_count::__release_weak(v48);
              }

              v36 = operator new(0x138uLL);
              v36[1] = 0;
              v37 = v36 + 1;
              v36[2] = 0;
              *v36 = &unk_284EFA158;
              v38 = v36 + 3;
              *&block = v50;
              *(&block + 1) = v48;
              abm::BasebandTracingTask::BasebandTracingTask((v36 + 3), v25, &block);
LABEL_88:
              std::__shared_weak_count::__release_weak(v48);
              v40 = v36[5];
              if (v40)
              {
LABEL_89:
                if (v40->__shared_owners_ != -1 || (atomic_fetch_add_explicit(v36 + 1, 1uLL, memory_order_relaxed), atomic_fetch_add_explicit(v36 + 2, 1uLL, memory_order_relaxed), v36[4] = v38, v36[5] = v36, std::__shared_weak_count::__release_weak(v40), atomic_fetch_add(v37, 0xFFFFFFFFFFFFFFFFLL)))
                {
LABEL_91:
                  *(&v93 + 1) = v36;
                  goto LABEL_137;
                }

                goto LABEL_92;
              }

LABEL_64:
              atomic_fetch_add_explicit(v36 + 1, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(v36 + 2, 1uLL, memory_order_relaxed);
              v36[4] = v38;
              v36[5] = v36;
              if (atomic_fetch_add(v37, 0xFFFFFFFFFFFFFFFFLL))
              {
                goto LABEL_91;
              }

LABEL_92:
              (*(*v36 + 16))(v36);
              std::__shared_weak_count::__release_weak(v36);
              *(&v93 + 1) = v36;
              goto LABEL_137;
            }

            if (v25 == 10 && capabilities::abs::supportsCellularLogging(IsInternalBuild))
            {
              v45 = v2[1];
              if (!v45 || (v46 = *v2, (v47 = std::__shared_weak_count::lock(v45)) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              v48 = v47;
              atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v47->__on_zero_shared)(v47);
                std::__shared_weak_count::__release_weak(v48);
              }

              v36 = operator new(0xA8uLL);
              v36[1] = 0;
              v37 = v36 + 1;
              v36[2] = 0;
              *v36 = &unk_284EFA068;
              v38 = v36 + 3;
              *&block = v46;
              *(&block + 1) = v48;
              abm::CellularLoggingTask::CellularLoggingTask(v36 + 3, 10, &block);
              goto LABEL_88;
            }
          }

          else
          {
            if (v25 > 4)
            {
              if (v25 != 5)
              {
                v41 = v2[1];
                if (!v41 || (v42 = *v2, (v43 = std::__shared_weak_count::lock(v41)) == 0))
                {
                  std::__throw_bad_weak_ptr[abi:ne200100]();
                }

                v44 = v43;
                atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v43->__on_zero_shared)(v43);
                  std::__shared_weak_count::__release_weak(v44);
                }

                v36 = operator new(0x80uLL);
                v36[1] = 0;
                v37 = v36 + 1;
                v36[2] = 0;
                *v36 = &unk_284EF9FC8;
                v38 = v36 + 3;
                *&block = v42;
                *(&block + 1) = v44;
                atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                abm::HelperTask::HelperTask((v36 + 3), 6, &block);
                if (*(&block + 1))
                {
                  std::__shared_weak_count::__release_weak(*(&block + 1));
                }

                v36[3] = &unk_284EFEA78;
                std::__shared_weak_count::__release_weak(v44);
                v40 = v36[5];
                if (v40)
                {
                  goto LABEL_89;
                }

                goto LABEL_64;
              }

              v65 = v2[1];
              if (!v65 || (v66 = *v2, (v67 = std::__shared_weak_count::lock(v65)) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              *&v109 = v66;
              *(&v109 + 1) = v67;
              atomic_fetch_add_explicit(&v67->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v68 = v67;
                (v67->__on_zero_shared)();
                std::__shared_weak_count::__release_weak(v68);
              }

              std::allocate_shared[abi:ne200100]<abm::LogCompressionTask,std::allocator<abm::LogCompressionTask>,abm::helper::TaskID &,std::weak_ptr<abm::HelperServerInternal>,0>(&block, 5, &v109);
              v69 = *(&block + 1);
              block = 0uLL;
              *(&v93 + 1) = v69;
              if (*(&v109 + 1))
              {
                std::__shared_weak_count::__release_weak(*(&v109 + 1));
              }

LABEL_123:
              v70 = v2[1];
              if (!v70 || (v71 = *v2, (v72 = std::__shared_weak_count::lock(v70)) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              *&v109 = v71;
              *(&v109 + 1) = v72;
              atomic_fetch_add_explicit(&v72->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v73 = v72;
                (v72->__on_zero_shared)();
                std::__shared_weak_count::__release_weak(v73);
              }

              std::allocate_shared[abi:ne200100]<abm::LogCompressionTask,std::allocator<abm::LogCompressionTask>,abm::helper::TaskID &,std::weak_ptr<abm::HelperServerInternal>,0>(&block, v25, &v109);
              goto LABEL_128;
            }

            if (v25 == 3)
            {
              v61 = v2[1];
              if (!v61 || (v62 = *v2, (v63 = std::__shared_weak_count::lock(v61)) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              v64 = v63;
              atomic_fetch_add_explicit(&v63->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v63->__on_zero_shared)(v63);
                std::__shared_weak_count::__release_weak(v64);
              }

              v36 = operator new(0xC0uLL);
              v36[1] = 0;
              v37 = v36 + 1;
              v36[2] = 0;
              *v36 = &unk_284EFA018;
              v38 = v36 + 3;
              *&block = v62;
              *(&block + 1) = v64;
              atomic_fetch_add_explicit(&v64->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              abm::HelperTask::HelperTask((v36 + 3), 3, &block);
              if (*(&block + 1))
              {
                std::__shared_weak_count::__release_weak(*(&block + 1));
              }

              v36[3] = &unk_284EF9288;
              *(v36 + 8) = 0u;
              *(v36 + 9) = 0u;
              *(v36 + 10) = 0u;
              *(v36 + 11) = 0u;
              std::__shared_weak_count::__release_weak(v64);
              v40 = v36[5];
              if (v40)
              {
                goto LABEL_89;
              }

              goto LABEL_64;
            }

            if (v25 == 4)
            {
              v27 = v2[1];
              if (!v27 || (v28 = *v2, (v29 = std::__shared_weak_count::lock(v27)) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              *&v109 = v28;
              *(&v109 + 1) = v29;
              atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v30 = v29;
                (v29->__on_zero_shared)();
                std::__shared_weak_count::__release_weak(v30);
              }

              std::allocate_shared[abi:ne200100]<abm::SystemLogsTask,std::allocator<abm::SystemLogsTask>,abm::helper::TaskID &,std::weak_ptr<abm::HelperServerInternal>,0>(&block, 4, &v109);
              v31 = *(&block + 1);
              block = 0uLL;
              *(&v93 + 1) = v31;
              if (*(&v109 + 1))
              {
                std::__shared_weak_count::__release_weak(*(&v109 + 1));
              }

LABEL_104:
              v57 = v2[1];
              if (!v57 || (v58 = *v2, (v59 = std::__shared_weak_count::lock(v57)) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              *&v109 = v58;
              *(&v109 + 1) = v59;
              atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v60 = v59;
                (v59->__on_zero_shared)();
                std::__shared_weak_count::__release_weak(v60);
              }

              std::allocate_shared[abi:ne200100]<abm::SystemLogsTask,std::allocator<abm::SystemLogsTask>,abm::helper::TaskID &,std::weak_ptr<abm::HelperServerInternal>,0>(&block, v25, &v109);
LABEL_128:
              v74 = block;
              block = 0uLL;
              v75 = *(&v93 + 1);
              v93 = v74;
              if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v75->__on_zero_shared)(v75);
                std::__shared_weak_count::__release_weak(v75);
              }

              v76 = *(&block + 1);
              if (*(&block + 1) && !atomic_fetch_add((*(&block + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v76->__on_zero_shared)(v76);
                std::__shared_weak_count::__release_weak(v76);
              }

              if (*(&v109 + 1))
              {
                std::__shared_weak_count::__release_weak(*(&v109 + 1));
              }
            }
          }
        }

        else
        {
          if (v25 <= 6)
          {
            if (v25 == 4)
            {
              goto LABEL_104;
            }

            if (v25 != 5)
            {
              goto LABEL_136;
            }

            goto LABEL_123;
          }

          switch(v25)
          {
            case 9:
              goto LABEL_83;
            case 8:
              goto LABEL_93;
            case 7:
              goto LABEL_57;
          }
        }

LABEL_136:
        v38 = v93;
        if (!v93)
        {
          goto LABEL_155;
        }

LABEL_137:
        *&v109 = MEMORY[0x277D85DD0];
        *(&v109 + 1) = 0x40000000;
        v110 = ___ZN3abm10HelperTask4initEv_block_invoke;
        v111 = &__block_descriptor_tmp_15;
        v112 = v38;
        v100 = &v109;
        *&block = MEMORY[0x277D85DD0];
        *(&block + 1) = 0x40000000;
        v114 = ___ZNK3ctu20SharedSynchronizableIN3abm10HelperTaskEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
        v115 = &__block_descriptor_tmp_8_1;
        v116 = v38 + 1;
        v117 = &v100;
        v77 = v38[3];
        if (v38[4])
        {
          dispatch_async_and_wait(v77, &block);
          v78 = *v24;
          v79 = v2 + 9;
          v80 = v2 + 9;
          if (*v24)
          {
            goto LABEL_143;
          }

LABEL_147:
          v82 = operator new(0x38uLL);
          *(v82 + 8) = v25;
          *(v82 + 5) = 0;
          *(v82 + 6) = 0;
          *v82 = 0;
          *(v82 + 1) = 0;
          *(v82 + 2) = v80;
          *v79 = v82;
          v83 = *v2[8];
          if (v83)
          {
            v2[8] = v83;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[9], v82);
          ++v2[10];
          v84 = *(&v93 + 1);
          if (*(&v93 + 1))
          {
            goto LABEL_150;
          }

          goto LABEL_151;
        }

        dispatch_sync(v77, &block);
        v78 = *v24;
        v79 = v2 + 9;
        v80 = v2 + 9;
        if (!*v24)
        {
          goto LABEL_147;
        }

        while (1)
        {
LABEL_143:
          while (1)
          {
            v80 = v78;
            v81 = *(v78 + 32);
            if (v25 >= v81)
            {
              break;
            }

            v78 = *v80;
            v79 = v80;
            if (!*v80)
            {
              goto LABEL_147;
            }
          }

          if (v81 >= v25)
          {
            break;
          }

          v78 = v80[1];
          if (!v78)
          {
            v79 = v80 + 1;
            goto LABEL_147;
          }
        }

        v82 = v80;
        v84 = *(&v93 + 1);
        if (*(&v93 + 1))
        {
LABEL_150:
          atomic_fetch_add_explicit((v84 + 8), 1uLL, memory_order_relaxed);
        }

LABEL_151:
        v85 = *(v82 + 6);
        *(v82 + 5) = v38;
        *(v82 + 6) = v84;
        if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v86 = v2[4];
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
        {
          v88 = "invalid";
          if ((v25 - 1) <= 9)
          {
            v88 = off_278BB88D8[v25 - 1];
          }

          LODWORD(block) = 136315138;
          *(&block + 4) = v88;
          _os_log_debug_impl(&dword_23C1C4000, v86, OS_LOG_TYPE_DEBUG, "#D Task: %s added", &block, 0xCu);
          v87 = *(&v93 + 1);
          if (!*(&v93 + 1))
          {
            goto LABEL_37;
          }

LABEL_156:
          if (!atomic_fetch_add(&v87->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v87->__on_zero_shared)(v87);
            std::__shared_weak_count::__release_weak(v87);
          }

          goto LABEL_37;
        }

LABEL_155:
        v87 = *(&v93 + 1);
        if (*(&v93 + 1))
        {
          goto LABEL_156;
        }

LABEL_37:
        ++v23;
      }

      while (v23 != v92);
    }

    if (v95)
    {
      std::__shared_weak_count::__release_weak(v95);
    }

    *buf = *MEMORY[0x277D82818];
    v89 = *(MEMORY[0x277D82818] + 72);
    *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
    *&v102 = v89;
    *(&v102 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v105) < 0)
    {
      operator delete(__p[1]);
    }

    *(&v102 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v103);
    std::iostream::~basic_iostream();
    MEMORY[0x23EECE150](v107);
    v15 = v99[0];
    if (v99[0])
    {
LABEL_169:
      operator delete(v15);
    }
  }

LABEL_170:
  v90 = *MEMORY[0x277D85DE8];
}

void sub_23C206114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25, xpc_object_t object, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3abm20HelperServerInternal4initEv_block_invoke_5(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
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
        v6 = *(v3 + 32);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v9 = TelephonyXPC::Server::asString();
          _os_log_debug_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEBUG, "#D Server status: %s", buf, 0xCu);
          if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_6:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __copy_helper_block_e8_40c51_ZTSNSt3__18weak_ptrIN3abm20HelperServerInternalEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c51_ZTSNSt3__18weak_ptrIN3abm20HelperServerInternalEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void abm::HelperServerInternal::start(abm::HelperServerInternal *this)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 0x40000000;
  v1[2] = ___ZN3abm20HelperServerInternal5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_12;
  v1[4] = this;
  ctu::SharedSynchronizable<abm::HelperServerInternal>::execute_wrapped(this, v1);
}

void ___ZN3abm20HelperServerInternal5startEv_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = v1[6];
  if (v2)
  {
    v2 = TelephonyXPC::Server::start(v2);
    v3 = v1[8];
    if (v3 != v1 + 9)
    {
      while (1)
      {
        v4 = v3[5];
        v5 = v3[6];
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          v6 = v4[10];
          v7 = v4[3];
          block = MEMORY[0x277D85DD0];
          v24 = 0x40000000;
          v25 = ___ZN3abm10HelperTask5startEv_block_invoke;
          v26 = &__block_descriptor_tmp_3_0;
          v27 = v4;
          dispatch_group_notify(v6, v7, &block);
        }

        if (!v5)
        {
          break;
        }

        p_shared_owners = &v5->__shared_owners_;
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        else
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
          if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v9 = v3[1];
        if (!v9)
        {
          do
          {
LABEL_17:
            v10 = v3[2];
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
          goto LABEL_4;
        }

        do
        {
LABEL_13:
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
LABEL_4:
        v3 = v10;
        if (v10 == v1 + 9)
        {
          goto LABEL_20;
        }
      }

      v9 = v3[1];
      if (!v9)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

LABEL_20:
  if (capabilities::trace::supportsDaemonHangDetection(v2))
  {
    v22 = 18;
    strcpy(__p, "helper.server.hang");
    v28[0] = &unk_284EFA1A8;
    v28[1] = v1;
    v29 = v28;
    support::misc::safe_timer::create(__p, 900000, 900000, v28, QOS_CLASS_UTILITY, &block);
    v12 = block;
    if (block)
    {
      v13 = operator new(0x20uLL);
      *v13 = &unk_284EFA238;
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = v12;
      block = 0;
      v14 = v1[13];
      v1[12] = v12;
      v1[13] = v13;
      if (!v14)
      {
        goto LABEL_29;
      }
    }

    else
    {
      block = 0;
      v14 = v1[13];
      v1[12] = 0;
      v1[13] = 0;
      if (!v14)
      {
        goto LABEL_29;
      }
    }

    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

LABEL_29:
    v17 = block;
    block = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    if (v29 == v28)
    {
      (*(*v29 + 32))(v29);
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v29)
      {
        (*(*v29 + 40))();
      }

      if ((v22 & 0x80000000) == 0)
      {
LABEL_35:
        v18 = v1[12];
        v19 = *(v18 + 23);
        if (v19 == dispatch_get_specific("CurrentQueue"))
        {
          support::misc::safe_timer::start_sync(v18);
        }

        else
        {
          block = MEMORY[0x277D85DD0];
          v24 = 0x40000000;
          v25 = ___ZN7support4misc10safe_timer5startEv_block_invoke;
          v26 = &__block_descriptor_tmp_8_0;
          v27 = v18;
          dispatch_sync(v19, &block);
        }

        v15 = v1[4];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(block) = 0;
          v16 = "#I Hang detection enabled";
          goto LABEL_42;
        }

        goto LABEL_43;
      }
    }

    operator delete(*__p);
    goto LABEL_35;
  }

  v15 = v1[4];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(block) = 0;
    v16 = "#I Hang detection is not supported on this device";
LABEL_42:
    _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, v16, &block, 2u);
  }

LABEL_43:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_23C206900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  (*(*v21 + 8))(v21);
  std::function<void ()(void)>::~function(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<abm::helper::TaskID const,std::shared_ptr<abm::HelperTask>>::~pair(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void abm::HelperServerInternal::stop(abm::HelperServerInternal *this)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN3abm20HelperServerInternal4stopEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_14;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3abm20HelperServerInternalEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_38;
  block[4] = this;
  block[5] = &v4;
  v2 = this + 16;
  v1 = *(this + 2);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void ___ZN3abm20HelperServerInternal4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[6])
  {
    v2 = v1[8];
    if (v2 != v1 + 9)
    {
      do
      {
        v4 = v2[5];
        v3 = v2[6];
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v4)
        {
          goto LABEL_11;
        }

        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 0x40000000;
        v14[2] = ___ZN3abm10HelperTask4stopEv_block_invoke;
        v14[3] = &__block_descriptor_tmp_4_0;
        v14[4] = v4;
        v15 = v14;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZNK3ctu20SharedSynchronizableIN3abm10HelperTaskEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
        block[3] = &__block_descriptor_tmp_8_1;
        block[4] = v4 + 1;
        block[5] = &v15;
        v5 = v4[3];
        if (v4[4])
        {
          dispatch_async_and_wait(v5, block);
          v6 = v4[10];
          if (v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          dispatch_sync(v5, block);
          v6 = v4[10];
          if (v6)
          {
LABEL_10:
            dispatch_retain(v6);
            dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
            dispatch_release(v6);
LABEL_11:
            if (!v3)
            {
              goto LABEL_20;
            }

            goto LABEL_12;
          }
        }

        dispatch_group_wait(0, 0xFFFFFFFFFFFFFFFFLL);
        if (!v3)
        {
          goto LABEL_20;
        }

LABEL_12:
        p_shared_owners = &v3->__shared_owners_;
        if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_19;
          }
        }

        else
        {
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
          if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
LABEL_19:
            (v3->__on_zero_shared)(v3);
            std::__shared_weak_count::__release_weak(v3);
          }
        }

LABEL_20:
        v8 = v2[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v2[2];
            v10 = *v9 == v2;
            v2 = v9;
          }

          while (!v10);
        }

        v2 = v9;
      }

      while (v9 != v1 + 9);
    }
  }

  v11 = v1 + 12;
  if (v1[12])
  {
    v12 = v1[13];
    v1[12] = 0;
    v1[13] = 0;
    if (v12)
    {
      if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v13 = v1[13];
      *v11 = 0;
      v1[13] = 0;
      if (v13)
      {
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }
      }
    }

    else
    {
      *v11 = 0;
      v1[13] = 0;
    }
  }
}

void abm::HelperServerInternal::setCommandHandler(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1174405120;
  v7[2] = ___ZN3abm20HelperServerInternal17setCommandHandlerENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC17ServerClientStateEN3xpc4dictENS9_IU13block_pointerFviSD_EEEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_15;
  v7[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v5 = *a3;
    if (!*a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v5 = *a3;
  if (*a3)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<abm::HelperServerInternal>::execute_wrapped(a1, v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN3abm20HelperServerInternal17setCommandHandlerENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC17ServerClientStateEN3xpc4dictENS9_IU13block_pointerFviSD_EEEEEE_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 48))
  {
    return;
  }

  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    *&v7.__r_.__value_.__l.__data_ = *(a1 + 40);
    v3 = *(a1 + 56);
    v2 = *(a1 + 64);
    v7.__r_.__value_.__r.__words[2] = *(a1 + 56);
    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  std::string::__init_copy_ctor_external(&v7, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 64);
  if (v2)
  {
LABEL_6:
    v2 = _Block_copy(v2);
  }

LABEL_7:
  v4 = *(a1 + 72);
  aBlock = v2;
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  TelephonyXPC::Server::setCommandHandler();
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_23C206F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c121_ZTSN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC17ServerClientStateEN3xpc4dictENS0_IU13block_pointerFviS4_EEEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 64);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);
  if (v5)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c121_ZTSN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC17ServerClientStateEN3xpc4dictENS0_IU13block_pointerFviS4_EEEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void abm::HelperServerInternal::sendCommandToBasebandManager(uint64_t *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1174405120;
  v7[2] = ___ZN3abm20HelperServerInternal28sendCommandToBasebandManagerENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN3xpc4dictEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke;
  v7[3] = &unk_284EF9E98;
  v7[4] = a4;
  v7[5] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v6 = *a3;
    object = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __p = *a2;
    v6 = *a3;
    object = v6;
    if (v6)
    {
LABEL_3:
      xpc_retain(v6);
      goto LABEL_6;
    }
  }

  object = xpc_null_create();
LABEL_6:
  ctu::SharedSynchronizable<abm::HelperServerInternal>::execute_wrapped(a1, v7);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN3abm20HelperServerInternal28sendCommandToBasebandManagerENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN3xpc4dictEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke(void *a1)
{
  v2 = a1[5];
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v6[23] = 12;
  strcpy(v6, "helperserver");
  v3 = *(v2 + 16);
  abm::client::CreateManager();
  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  v5 = a1[4];
  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  v4 = a1[9];
  abm::client::PerformCommand();
  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }

  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_23C207388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 + 40);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v10 - 32);
  _Unwind_Resume(a1);
}

void sub_23C2073AC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3abm20HelperServerInternal28sendCommandToBasebandManagerENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN3xpc4dictEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke_2(uint64_t a1, int *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      __p = *(a2 + 2);
    }

    (*(v2 + 16))(v2, &v3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23C207478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIN3abm6client7ManagerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIN3abm6client7ManagerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

xpc_object_t __copy_helper_block_e8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c15_ZTSN3xpc4dictE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
    v5 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[0] = v5;
    if (v5)
    {
      return xpc_retain(v5);
    }
  }

  else
  {
    v4 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v4;
    v5 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[0] = v5;
    if (v5)
    {
      return xpc_retain(v5);
    }
  }

  result = xpc_null_create();
  a1[3].__r_.__value_.__r.__words[0] = result;
  return result;
}

void __destroy_helper_block_e8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 72));
  *(a1 + 72) = 0;
  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

uint64_t dispatch::callback<void({block_pointer})(TelephonyXPC::Server::ServerStatus)>::~callback(uint64_t a1)
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

void *std::shared_ptr<abm::HelperServerInternal>::shared_ptr[abi:ne200100]<abm::HelperServerInternal,std::shared_ptr<abm::HelperServerInternal> ctu::SharedSynchronizable<abm::HelperServerInternal>::make_shared_ptr<abm::HelperServerInternal>(abm::HelperServerInternal*)::{lambda(abm::HelperServerInternal*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EF9ED8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *a2 = a2;
  a2[1] = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_23C207768(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<abm::HelperServerInternal> ctu::SharedSynchronizable<abm::HelperServerInternal>::make_shared_ptr<abm::HelperServerInternal>(abm::HelperServerInternal*)::{lambda(abm::HelperServerInternal*)#1}::operator() const(abm::HelperServerInternal*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<abm::HelperServerInternal *,std::shared_ptr<abm::HelperServerInternal> ctu::SharedSynchronizable<abm::HelperServerInternal>::make_shared_ptr<abm::HelperServerInternal>(abm::HelperServerInternal*)::{lambda(abm::HelperServerInternal *)#1},std::allocator<abm::HelperServerInternal>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<abm::HelperServerInternal *,std::shared_ptr<abm::HelperServerInternal> ctu::SharedSynchronizable<abm::HelperServerInternal>::make_shared_ptr<abm::HelperServerInternal>(abm::HelperServerInternal*)::{lambda(abm::HelperServerInternal *)#1},std::allocator<abm::HelperServerInternal>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3abm20HelperServerInternalEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3abm20HelperServerInternalEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3abm20HelperServerInternalEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3abm20HelperServerInternalEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<abm::HelperServerInternal> ctu::SharedSynchronizable<abm::HelperServerInternal>::make_shared_ptr<abm::HelperServerInternal>(abm::HelperServerInternal*)::{lambda(abm::HelperServerInternal*)#1}::operator() const(abm::HelperServerInternal*)::{lambda(void *)#1}::__invoke(abm::HelperServerInternal *a1)
{
  if (a1)
  {
    abm::HelperServerInternal::~HelperServerInternal(a1);

    operator delete(v1);
  }
}

void std::__tree<std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>,std::__map_value_compare<abm::helper::TaskID,std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>,std::less<abm::helper::TaskID>,true>,std::allocator<std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>,std::__map_value_compare<abm::helper::TaskID,std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>,std::less<abm::helper::TaskID>,true>,std::allocator<std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>>>::destroy(*a1);
    std::__tree<std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>,std::__map_value_compare<abm::helper::TaskID,std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>,std::less<abm::helper::TaskID>,true>,std::allocator<std::__value_type<abm::helper::TaskID,std::shared_ptr<abm::HelperTask>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

_DWORD *std::stringbuf::str[abi:ne200100]@<X0>(_DWORD *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[24];
  if ((v3 & 0x10) != 0)
  {
    v4 = *(result + 11);
    v5 = *(result + 6);
    if (v4 < v5)
    {
      *(result + 11) = v5;
      v4 = v5;
    }

    v6 = *(result + 5);
    v7 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      a2[23] = 0;
LABEL_4:
      *a2 = 0;
      return result;
    }

    v6 = *(result + 2);
    v7 = *(result + 4) - v6;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_17:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    *(a2 + 1) = v7;
    *(a2 + 2) = v8 | 0x8000000000000000;
    *a2 = v9;
    a2 = v9;
  }

  else
  {
    a2[23] = v7;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  result = memmove(a2, v6, v7);
  a2[v7] = 0;
  return result;
}

void std::allocate_shared[abi:ne200100]<abm::LogCompressionTask,std::allocator<abm::LogCompressionTask>,abm::helper::TaskID &,std::weak_ptr<abm::HelperServerInternal>,0>(std::__shared_weak_count **a1, int a2, uint64_t *a3)
{
  v6 = operator new(0x90uLL);
  v6->__shared_owners_ = 0;
  p_shared_owners = &v6->__shared_owners_;
  v6->__shared_weak_owners_ = 0;
  v6->__vftable = &unk_284EF9F28;
  v8 = v6 + 1;
  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  *a3 = 0;
  a3[1] = 0;
  abm::LogCompressionTask::LogCompressionTask(&v6[1].__vftable, a2, v11);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  *a1 = v8;
  a1[1] = v6;
  shared_weak_owners = v6[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    if (shared_weak_owners->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6[1].__shared_owners_ = v8;
    v6[1].__shared_weak_owners_ = v6;
    std::__shared_weak_count::__release_weak(shared_weak_owners);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6[1].__shared_owners_ = v8;
    v6[1].__shared_weak_owners_ = v6;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v6->__on_zero_shared)(v6);

  std::__shared_weak_count::__release_weak(v6);
}

void sub_23C207B84(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<abm::LogCompressionTask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EF9F28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocate_shared[abi:ne200100]<abm::SystemLogsTask,std::allocator<abm::SystemLogsTask>,abm::helper::TaskID &,std::weak_ptr<abm::HelperServerInternal>,0>(std::__shared_weak_count **a1, int a2, uint64_t *a3)
{
  v6 = operator new(0xA8uLL);
  v6->__shared_owners_ = 0;
  p_shared_owners = &v6->__shared_owners_;
  v6->__shared_weak_owners_ = 0;
  v6->__vftable = &unk_284EF9F78;
  v8 = v6 + 1;
  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  *a3 = 0;
  a3[1] = 0;
  abm::SystemLogsTask::SystemLogsTask(&v6[1], a2, v11);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  *a1 = v8;
  a1[1] = v6;
  shared_weak_owners = v6[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    if (shared_weak_owners->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6[1].__shared_owners_ = v8;
    v6[1].__shared_weak_owners_ = v6;
    std::__shared_weak_count::__release_weak(shared_weak_owners);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6[1].__shared_owners_ = v8;
    v6[1].__shared_weak_owners_ = v6;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v6->__on_zero_shared)(v6);

  std::__shared_weak_count::__release_weak(v6);
}

void sub_23C207D7C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<abm::SystemLogsTask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EF9F78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<abm::SystemLogsTask>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_284EFAC00;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v2 = *(a1 + 128);
  if (v2)
  {
    dispatch_release(v2);
  }

  *(a1 + 24) = &unk_284F001D8;
  v3 = *(a1 + 120);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  MEMORY[0x23EECD800](a1 + 64);
  v5 = *(a1 + 56);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void std::__shared_ptr_emplace<abm::DiagnosticToolsTask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EF9FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<abm::TapToRadarTask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFA018;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<abm::CellularLoggingTask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFA068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<abm::LogManagementTask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFA0B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<abm::ProfileManagementTask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFA108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<abm::BasebandTracingTask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFA158;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *_ZNKSt3__110__function6__funcIZZN3abm20HelperServerInternal5startEvEUb_E3__0NS_9allocatorIS4_EEFvvEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_284EFA1A8;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN3abm20HelperServerInternal5startEvEUb_E3__0NS_9allocatorIS4_EEFvvEE7__cloneEPNS0_6__baseIS7_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284EFA1A8;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN3abm20HelperServerInternal5startEvEUb_E3__0NS_9allocatorIS4_EEFvvEEclEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[1];
  if (!v2 || (v3 = *v1, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = v1;
  v7 = v1[2];
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN3abm20HelperServerInternalEE15execute_wrappedIZZZNS4_5startEvEUb_ENK3__0clEvEUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN3abm20HelperServerInternal5startEvEUb_E3__0NS_9allocatorIS4_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3abm20HelperServerInternal5startEvEUb_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3abm20HelperServerInternal5startEvEUb_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3abm20HelperServerInternal5startEvEUb_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3abm20HelperServerInternal5startEvEUb_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN3abm20HelperServerInternalEE15execute_wrappedIZZZNS4_5startEvEUb_ENK3__0clEvEUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 64);
  v4 = (v2 + 72);
  if (v3 != (v2 + 72))
  {
    while (1)
    {
      v5 = v3[5];
      v6 = v3[6];
      v14 = *(v3 + 8);
      if (v6)
      {
        break;
      }

      v13 = v3[5];
      if (v5)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
LABEL_12:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_12;
      }

LABEL_15:
      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
      if (v8 == v4)
      {
        v10 = a1;
        operator delete(v1);
        if (!a1)
        {
          return;
        }

        goto LABEL_24;
      }
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_8:
    (**v5)(v5);
    goto LABEL_9;
  }

  v10 = a1;
  operator delete(*a1);
LABEL_24:
  v11 = v10[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(v10);
}

void sub_23C2085AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, char a12)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  std::pair<abm::helper::TaskID const,std::shared_ptr<abm::HelperTask>>::~pair(&a12);
  operator delete(v12);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(void)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void std::__shared_ptr_pointer<support::misc::safe_timer  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::misc::safe_timer  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::misc::safe_timer  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000023C32D280)
  {
    if (((v2 & 0x800000023C32D280 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023C32D280))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023C32D280 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void ctu::SharedSynchronizable<abm::HelperServerInternal>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3abm20HelperServerInternalEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284EFA280;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrIKN3abm20HelperServerInternalEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrIKN3abm20HelperServerInternalEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __cxx_global_var_init_20()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

void SAHEURCoreDumpTraceProtocol::SAHEURCoreDumpTraceProtocol(SAHEURCoreDumpTraceProtocol *this)
{
  ctu::OsLogLogger::OsLogLogger((this + 8), "com.apple.telephony", "trace.coredump");
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_284EFA2C0;
  global_queue = dispatch_get_global_queue(0, 0);
  object = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  BasebandTransport::create(&object, QOS_CLASS_DEFAULT, this + 6);
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_23C208A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  EURCoreDumpTraceProtocol::~EURCoreDumpTraceProtocol(v10);
  _Unwind_Resume(a1);
}

void EURCoreDumpTraceProtocol::~EURCoreDumpTraceProtocol(void **this)
{
  *this = &unk_284EF93F8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
    MEMORY[0x23EECD800](this + 1);
  }

  else
  {
    MEMORY[0x23EECD800](this + 1);
  }
}

void SAHEURCoreDumpTraceProtocol::~SAHEURCoreDumpTraceProtocol(SAHEURCoreDumpTraceProtocol *this)
{
  *this = &unk_284EFA2C0;
  v2 = *(this + 7);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    *this = &unk_284EF93F8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *this = &unk_284EF93F8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
LABEL_4:
      MEMORY[0x23EECD800](this + 8);
      return;
    }
  }

  operator delete(*(this + 2));
  MEMORY[0x23EECD800](this + 8);
}

{
  *this = &unk_284EFA2C0;
  v2 = *(this + 7);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    *this = &unk_284EF93F8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *this = &unk_284EF93F8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
LABEL_4:
      MEMORY[0x23EECD800](this + 8);
      return;
    }
  }

  operator delete(*(this + 2));
  MEMORY[0x23EECD800](this + 8);
}

{
  *this = &unk_284EFA2C0;
  v2 = *(this + 7);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    *this = &unk_284EF93F8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  *this = &unk_284EF93F8;
  if (*(this + 39) < 0)
  {
LABEL_4:
    operator delete(*(this + 2));
  }

LABEL_5:
  MEMORY[0x23EECD800](this + 8);

  operator delete(this);
}

uint64_t SAHEURCoreDumpTraceProtocol::resetInternalState(uint64_t this)
{
  *(this + 40) = 0;
  if (*(this + 39) < 0)
  {
    **(this + 16) = 0;
    *(this + 24) = 0;
  }

  else
  {
    *(this + 16) = 0;
    *(this + 39) = 0;
  }

  return this;
}

uint64_t SAHEURCoreDumpTraceProtocol::createTransport(SAHEURCoreDumpTraceProtocol *this)
{
  v2 = *(this + 6);
  v11 = 2;
  v12 = 0;
  v13 = 10;
  v3 = capabilities::radio::dal(this);
  if (v3)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
    v4 = 0x8000;
  }

  v14 = v4;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
  if (shouldUseMinBasebandTransportIOReadCount)
  {
    v7 = 4;
  }

  else
  {
    capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
    v7 = 16;
  }

  v15 = v7;
  v16 = 0;
  v17 = 0;
  aBlock = 0;
  v8 = (**v2)(v2, &v11, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((v8 & 1) == 0)
  {
    *(this + 10) = 1;
  }

  return v8;
}

void sub_23C208EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void SAHEURCoreDumpTraceProtocol::generateCrashReason(uint64_t a1, const __CFDictionary **a2, void *a3, size_t a4)
{
  if (a3 && a4 && *a2)
  {
    bzero(a3, a4);
    v15[0] = 0xAAAAAAAAAAAAAAAALL;
    v15[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v15, *a2);
    v11 = operator new(0x20uLL);
    strcpy(v11, "*** NO REASON SPECIFIED ***");
    ctu::cf::MakeCFString::MakeCFString(&v16, "kKeyTraceDumpStateReason");
    ctu::cf::map_adapter::getString();
    MEMORY[0x23EECD8F0](&v16);
    v7 = std::string::insert(&v12, 0, "AP-Triggered: ", 0xEuLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v14 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    operator delete(v11);
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    strlcpy(a3, v9, a4);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    MEMORY[0x23EECD940](v15);
  }

  else
  {
    v10 = *(a1 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "No space to store reason string or empty dictionary provided\n", __p, 2u);
    }
  }
}

void sub_23C20906C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    MEMORY[0x23EECD940](v26 - 56);
    _Unwind_Resume(a1);
  }

  MEMORY[0x23EECD940](v26 - 56);
  _Unwind_Resume(a1);
}

uint64_t SAHEURCoreDumpTraceProtocol::crashBasebandOverDIAG(SAHEURCoreDumpTraceProtocol *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (TelephonyBasebandGetReset())
  {
    v2 = *(a1 + 1);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Crashing baseband over DIAG interface", buf, 2u);
    }

    v5 = capabilities::diag::supportedInterfaces(v3);
    v6 = v5 & 0x1FF;
    if ((v5 & 0x1FF) != 0)
    {
      v7 = 0;
      do
      {
        if (v7 == 9)
        {
          std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
        }

        if (((1 << v7) & v6) != 0)
        {
          v6 &= ~(1 << v7);
          if (SAHEURCoreDumpTraceProtocol::createTransport(a1))
          {
            v8 = *(a1 + 1);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v13 = 1 << v7;
              _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Triggering crash on interface %u", buf, 8u);
            }

            BasebandTransport::operator*(*(a1 + 6));
            v9 = ETLBBSimulateCrashExt();
            BasebandTransport::close(*(a1 + 6));
            if (v9)
            {
              break;
            }
          }

          else
          {
            BasebandTransport::close(*(a1 + 6));
          }
        }

        ++v7;
      }

      while ((v6 & 0x1FF) != 0);
    }

    TelephonyBasebandGetReset();
  }

  else
  {
    v4 = *(a1 + 1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_ERROR, "Failed to get baseband reset state", buf, 2u);
    }
  }

  result = 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SAHEURCoreDumpTraceProtocol::crashBasebandWithGPIO(capabilities::coredump *a1)
{
  v10 = 0;
  v2 = capabilities::coredump::supportsGPIOSignalling(a1);
  v3 = 0;
  if (v2)
  {
    if (TelephonyBasebandGetReset())
    {
      v4 = *(a1 + 1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Crashing baseband with GPIO", v8, 2u);
      }

      TelephonyBasebandSetModemCoredumpGPIO();
      usleep(0xF4240u);
      TelephonyBasebandSetModemCoredumpGPIO();
    }

    else
    {
      v6 = *(a1 + 1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "Failed to get Baseband Reset state", v9, 2u);
      }
    }

    v3 = v10;
  }

  return v3 & 1;
}

void SAHEURCoreDumpTraceProtocol::handleLog(SAHEURCoreDumpTraceProtocol *this, int a2, const char *__s)
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
    v26 = *(this + 1);
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
    _os_log_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_DEFAULT, "#I bbu: %04x:%s", buf, 0x12u);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  __dst.__r_.__value_.__l.__size_ = v18 - v23;
  *(v12 + v25) = 0;
  v26 = *(this + 1);
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

void sub_23C2096BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SAHEURCoreDumpTraceProtocol::crashBasebandForCoreDump(SAHEURCoreDumpTraceProtocol *a1, const __CFDictionary **a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBECE8];
  Controller = TelephonyBasebandCreateController();
  if (Controller)
  {
    v6 = Controller;
    if ((SAHEURCoreDumpTraceProtocol::crashBasebandWithGPIO(a1) & 1) == 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *buf = 0u;
      v7 = *a2;
      v14 = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      SAHEURCoreDumpTraceProtocol::generateCrashReason(a1, &v14, &buf[2], 0x50uLL);
      if (v7)
      {
        CFRelease(v7);
      }

      if ((SAHEURCoreDumpTraceProtocol::crashBasebandOverDIAG(a1) & 1) == 0)
      {
        v8 = *(a1 + 1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v13 = 0;
          _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Unable to gracefully crash baseband", v13, 2u);
        }
      }
    }

    v13[0] = 0;
    TelephonyBasebandGetReset();
    v9 = *(a1 + 1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v13[0])
      {
        v10 = "";
      }

      else
      {
        v10 = "not ";
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Baseband is %sin reset", buf, 0xCu);
    }

    CFRelease(v6);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_23C209884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SAHEURCoreDumpTraceProtocol::collectBasebandCoreDump(SAHEURCoreDumpTraceProtocol *this)
{
  v20 = *MEMORY[0x277D85DE8];
  cf = 0;
  result = BBUpdaterExtremeCreate();
  v3 = 2;
  if (result)
  {
    v4 = result;
    v5 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"DisallowFusing", *MEMORY[0x277CBED28]);
    valuePtr = 2;
    v7 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, @"BootMode", v7);
    CFRelease(v7);
    value[0] = 0;
    v8 = (this + 16);
    if (ctu::cf::convert_copy())
    {
      CFDictionarySetValue(Mutable, @"coreDumpPath", value[0]);
      CFRelease(value[0]);
      if (BBUpdaterSetOptions())
      {
        *buf = 0;
        v9 = BBUpdaterExecCommand();
        v10 = v9 != 0;
        v11 = *(this + 1);
        if (v9)
        {
          if (os_log_type_enabled(*(this + 1), OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(value[0]) = 0;
            _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Success: Executing command to collect CoreDump", value, 2u);
            v12 = *buf;
            if (!*buf)
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }
        }

        else if (os_log_type_enabled(*(this + 1), OS_LOG_TYPE_ERROR))
        {
          LOWORD(value[0]) = 0;
          _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Failed: Executing command to collect CoreDump", value, 2u);
          v12 = *buf;
          if (!*buf)
          {
LABEL_17:
            CFRelease(v4);
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (cf)
            {
              CFRelease(cf);
              if (v10)
              {
LABEL_21:
                v3 = 0;
                result = 1;
                goto LABEL_24;
              }
            }

            else if (v10)
            {
              goto LABEL_21;
            }

            result = 0;
            v3 = 2;
            goto LABEL_24;
          }

LABEL_16:
          CFRelease(v12);
          goto LABEL_17;
        }

        v12 = *buf;
        if (!*buf)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v14 = *(this + 1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "Failed: Setting CoreDump options for BBUpdater", buf, 2u);
        v10 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v13 = *(this + 1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 39) < 0)
        {
          v8 = *v8;
        }

        *buf = 136315138;
        *&buf[4] = v8;
        _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, "Failed: Converting CoreDump path to CFStringRef. fScratchFolder=[%s]", buf, 0xCu);
      }
    }

    v10 = 0;
    goto LABEL_17;
  }

LABEL_24:
  *(this + 10) = v3;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SAHEURCoreDumpTraceProtocol::snapshotInternal(unsigned int *a1, const void **a2, uint64_t a3)
{
  (*(*a1 + 32))(a1);
  if (!EURCoreDumpTraceProtocol::createScratchPath(a1))
  {
    a1[10] = 2;
    v7 = *a2;
    cf = v7;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = *a2;
  v10 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  SAHEURCoreDumpTraceProtocol::crashBasebandForCoreDump(a1, &v10);
  if (v6)
  {
    CFRelease(v6);
  }

  if (SAHEURCoreDumpTraceProtocol::collectBasebandCoreDump(a1))
  {
    EURCoreDumpTraceProtocol::collectBasebandCrashListM20(a1, a3);
  }

  v7 = *a2;
  cf = v7;
  if (v7)
  {
LABEL_11:
    CFRetain(v7);
  }

LABEL_12:
  EURCoreDumpTraceProtocol::moveToSnapshotPath(a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return a1[10];
}

void sub_23C209C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t SAHEURCoreDumpTraceProtocol::snapshot(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = *a2;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = (*(*a1 + 40))(a1, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sub_23C209D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void std::string::__erase_external_with_move(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  if (__n)
  {
    v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v3;
    v5 = this;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v6 = size - __pos;
      if (size - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = size - __pos;
      }

      if (size - __pos <= __n)
      {
LABEL_7:
        v8 = size - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
LABEL_15:
          v5->__r_.__value_.__s.__data_[v8] = 0;
          return;
        }

LABEL_14:
        this->__r_.__value_.__l.__size_ = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - __pos;
      if (v3 - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = v3 - __pos;
      }

      if (v3 - __pos <= __n)
      {
        goto LABEL_7;
      }
    }

    v9 = this;
    memmove(v5 + __pos, v5 + __pos + v7, v6 - v7);
    this = v9;
    v8 = size - v7;
    if ((*(&v9->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

uint64_t bsp::tlv::abm::getFieldSize()
{
  return 4;
}

{
  return 80;
}

{
  return 131;
}

{
  return 2;
}

{
  return 131;
}

{
  return 2;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 2;
}

uint64_t tlv::parseV<bsp::tlv::abm::CoreDumpEnabledType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_23C209E9C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<bsp::tlv::abm::CoreDumpEnabledType>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

_OWORD *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _OWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 0x50);
  *a3 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  a3[3] = *(a1 + 3);
  a3[4] = v7;
  a3[1] = v5;
  a3[2] = v6;
  return (a1 + 80);
}

_OWORD *bsp::tlv::abm::writeField(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[4];
  a1[3] = a2[3];
  a1[4] = v4;
  a1[1] = v2;
  a1[2] = v3;
  return a1 + 5;
}

__n128 tlv::parseV<bsp::tlv::abm::CrashReason>@<Q0>(tlv **a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 0x50);
  v6 = *(v5 + 3);
  a3[2] = *(v5 + 2);
  a3[3] = v6;
  a3[4] = *(v5 + 4);
  result = *(v5 + 1);
  *a3 = *v5;
  a3[1] = result;
  *a1 = (v5 + 80);
  return result;
}

void sub_23C209FB4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

__n128 tlv::writeV<bsp::tlv::abm::CrashReason>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  result = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 64) = v5;
  *(v2 + 16) = result;
  *(v2 + 32) = v4;
  *a1 = v2 + 80;
  return result;
}

uint64_t bsp::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 0x83);
  *a3 = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  *(a3 + 48) = *(a1 + 48);
  *(a3 + 64) = v7;
  *(a3 + 16) = v5;
  *(a3 + 32) = v6;
  v8 = *(a1 + 80);
  v9 = *(a1 + 96);
  v10 = *(a1 + 112);
  *(a3 + 127) = *(a1 + 127);
  *(a3 + 96) = v9;
  *(a3 + 112) = v10;
  *(a3 + 80) = v8;
  return a1 + 131;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 0x83);
  *a3 = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  *(a3 + 48) = *(a1 + 48);
  *(a3 + 64) = v7;
  *(a3 + 16) = v5;
  *(a3 + 32) = v6;
  v8 = *(a1 + 80);
  v9 = *(a1 + 96);
  v10 = *(a1 + 112);
  *(a3 + 127) = *(a1 + 127);
  *(a3 + 96) = v9;
  *(a3 + 112) = v10;
  *(a3 + 80) = v8;
  return a1 + 131;
}

uint64_t bsp::tlv::abm::writeField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 127) = *(a2 + 127);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  return a1 + 131;
}

{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 127) = *(a2 + 127);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  return a1 + 131;
}

__n128 tlv::parseV<bsp::tlv::abm::CoreDumpCrashReasonA5String>@<Q0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 127) = 0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 0x83);
  v6 = *(v5 + 7);
  *(a3 + 96) = *(v5 + 6);
  *(a3 + 112) = v6;
  *(a3 + 127) = *(v5 + 127);
  v7 = *(v5 + 3);
  *(a3 + 32) = *(v5 + 2);
  *(a3 + 48) = v7;
  v8 = *(v5 + 5);
  *(a3 + 64) = *(v5 + 4);
  *(a3 + 80) = v8;
  result = *(v5 + 1);
  *a3 = *v5;
  *(a3 + 16) = result;
  *a1 = (v5 + 131);
  return result;
}

void sub_23C20A134(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

__n128 tlv::writeV<bsp::tlv::abm::CoreDumpCrashReasonA5String>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 64) = v5;
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  result = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  *(v2 + 127) = *(a2 + 127);
  *(v2 + 96) = v7;
  *(v2 + 112) = v8;
  *(v2 + 80) = result;
  *a1 = v2 + 131;
  return result;
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _WORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

_WORD *bsp::tlv::abm::writeField(_WORD *a1, _WORD *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t tlv::parseV<bsp::tlv::abm::CoreDumpCrashReasonA5Line>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_23C20A22C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::CoreDumpCrashReasonA5Line>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

__n128 tlv::parseV<bsp::tlv::abm::CoreDumpCrashReasonQ6String>@<Q0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 127) = 0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 0x83);
  v6 = *(v5 + 7);
  *(a3 + 96) = *(v5 + 6);
  *(a3 + 112) = v6;
  *(a3 + 127) = *(v5 + 127);
  v7 = *(v5 + 3);
  *(a3 + 32) = *(v5 + 2);
  *(a3 + 48) = v7;
  v8 = *(v5 + 5);
  *(a3 + 64) = *(v5 + 4);
  *(a3 + 80) = v8;
  result = *(v5 + 1);
  *a3 = *v5;
  *(a3 + 16) = result;
  *a1 = (v5 + 131);
  return result;
}

void sub_23C20A38C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

__n128 tlv::writeV<bsp::tlv::abm::CoreDumpCrashReasonQ6String>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 64) = v5;
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  result = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  *(v2 + 127) = *(a2 + 127);
  *(v2 + 96) = v7;
  *(v2 + 112) = v8;
  *(v2 + 80) = result;
  *a1 = v2 + 131;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::CoreDumpCrashReasonQ6Line>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_23C20A484(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::CoreDumpCrashReasonQ6Line>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *abm::data::getDataPropertyNameFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x23EECEE80](*a1) != MEMORY[0x277D86468])
  {
    return "Unknown";
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v3 < 5)
  {
    return off_278BB8938[v3 & 7];
  }

  else
  {
    return "Unknown";
  }
}

uint64_t abm::data::getDataPropertyTypeFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x23EECEE80](*a1) != MEMORY[0x277D86468])
  {
    return 5;
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void abm::data::DataAggregationProtocol::toDict(abm::data::DataAggregationProtocol *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
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
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(0);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationProtocol", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationProtocol::addToDict(abm::data::DataAggregationProtocol *this, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(this + 3));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationProtocol", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

const char *abm::data::DataAggregationProtocol::asString(abm::data::DataAggregationProtocol *this)
{
  v1 = *(this + 3);
  if (v1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_278BB8960[v1];
  }
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(0);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_284EFA318;
  *(a2 + 8) = 0x3AAAAAA01;
  if (MEMORY[0x23EECEE80](*a1) == MEMORY[0x277D86468] && xpc_dictionary_get_value(*a1, "kDataAggregationProtocol"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationProtocol");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v5 = xpc::dyn_cast_or_default();
    xpc_release(object);
    if (v5)
    {
      if (v5 == 1)
      {
        *(a2 + 12) = 1;
      }

      else if (v5 == 2)
      {
        *(a2 + 12) = 2;
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 12) = 3;
      }
    }

    else
    {
      *(a2 + 12) = 0;
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationProtocol>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_284EFA318;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  if (result >= 3)
  {
    *(a2 + 8) = 0;
    result = 3;
  }

  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxDatagrams::toDict(abm::data::DataAggregationMaxDatagrams *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
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
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(1);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxDatagrams", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxDatagrams::addToDict(abm::data::DataAggregationMaxDatagrams *this, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(this + 3));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxDatagrams", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(1);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_284EFA360;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x23EECEE80](*a1) == MEMORY[0x277D86468] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_284EFA360;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxSize::toDict(abm::data::DataAggregationMaxSize *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
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
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(2);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxSize", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxSize::addToDict(abm::data::DataAggregationMaxSize *this, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(this + 3));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxSize", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_284EFA3A8;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x23EECEE80](*a1) == MEMORY[0x277D86468] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_284EFA3A8;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataFlowControl::toDict(abm::data::DataFlowControl *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
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
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataFlowControl", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataFlowControl::addToDict(abm::data::DataFlowControl *this, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(this + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataFlowControl", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_284EFA3F0;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x23EECEE80](*a1) == MEMORY[0x277D86468] && xpc_dictionary_get_value(*a1, "kDataFlowControl"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataFlowControl");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataFlowControl>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_284EFA3F0;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

void abm::data::DataPowerSave::toDict(abm::data::DataPowerSave *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
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
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(4);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataPowerSave", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataPowerSave::addToDict(abm::data::DataPowerSave *this, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(this + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataPowerSave", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(4);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_284EFA438;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x23EECEE80](*a1) == MEMORY[0x277D86468] && xpc_dictionary_get_value(*a1, "kDataPowerSave"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataPowerSave");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataPowerSave>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_284EFA438;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

uint64_t TraceErrorHandler::TraceErrorHandler(uint64_t a1, void *a2, NSObject **a3, int a4)
{
  *a1 = a4;
  v5 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *a3;
  *(a1 + 24) = *a3;
  if (v6)
  {
    dispatch_retain(v6);
    v7 = *(a1 + 24);
    if (v7)
    {
      dispatch_group_enter(v7);
    }
  }

  return a1;
}

{
  *a1 = a4;
  v5 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *a3;
  *(a1 + 24) = *a3;
  if (v6)
  {
    dispatch_retain(v6);
    v7 = *(a1 + 24);
    if (v7)
    {
      dispatch_group_enter(v7);
    }
  }

  return a1;
}

void TraceErrorHandler::handleError(TraceErrorHandler *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  if (!*a1)
  {
    return;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v8;
  v20 = v8;
  v18 = v8;
  v16 = v8;
  *v17 = v8;
  *v15 = v8;
  *&v15[16] = v8;
  Timestamp::Timestamp(v11);
  Timestamp::asString(v11, 0, 9, __p);
  v10 = 0;
  LOBYTE(v9) = 0;
  ResetInfo::ResetInfo(v15, a3, a4, a2, __p, 7, &v9);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v11, v12);
  TraceErrorHandler::commandResetModem(a1, v15);
  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
    if ((SBYTE7(v18) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    operator delete(v17[0]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
LABEL_7:
      if ((v15[23] & 0x80000000) == 0)
      {
        return;
      }

LABEL_12:
      operator delete(*v15);
      return;
    }

    goto LABEL_11;
  }

  operator delete(*(&v19 + 1));
  if (SBYTE7(v18) < 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  operator delete(*&v15[24]);
  if ((v15[23] & 0x80000000) != 0)
  {
    goto LABEL_12;
  }
}

void sub_23C20BD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ResetInfo::~ResetInfo(va);
  _Unwind_Resume(a1);
}

void sub_23C20BD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a13, a14);
    _Unwind_Resume(a1);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a13, a14);
  _Unwind_Resume(a1);
}

void TraceErrorHandler::commandResetModem(TraceErrorHandler *this, const ResetInfo *a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    dispatch_retain(*(this + 3));
    dispatch_group_enter(v4);
  }

  v5 = *(this + 2);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = std::__shared_weak_count::lock(v5);
  v17 = v6;
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = *(this + 1);
  v16 = v8;
  if (!v8)
  {
    goto LABEL_10;
  }

  ResetInfo::ResetInfo(&v9, a2);
  abm::BasebandTracingTask::commandResetModem(v8, &v9);
  if (v15 < 0)
  {
    operator delete(__p);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_8:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_17:
      operator delete(v10);
      if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(v12);
  if (v11 < 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  operator delete(v9.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_11:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_12:
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }
}

void sub_23C20BEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  ResetInfo::~ResetInfo(&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v10 - 48);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

void abm::HelperServer::create(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_284EFA480;
  v2[3] = 0xAAAAAAAAAAAAAAAALL;
  v2[4] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x70uLL);
  abm::HelperServerInternal::HelperServerInternal(v3);
  v2[3] = 0xAAAAAAAAAAAAAAAALL;
  v2[4] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<abm::HelperServerInternal>::shared_ptr[abi:ne200100]<abm::HelperServerInternal,std::shared_ptr<abm::HelperServerInternal> ctu::SharedSynchronizable<abm::HelperServerInternal>::make_shared_ptr<abm::HelperServerInternal>(abm::HelperServerInternal*)::{lambda(abm::HelperServerInternal*)#1},0>(v2 + 3, v3);
  abm::HelperServerInternal::init(v2[3]);
  *a1 = v2 + 3;
  a1[1] = v2;
}

{
  v3 = operator new(0x28uLL);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_284EFA480;
  v3[3] = 0xAAAAAAAAAAAAAAAALL;
  v3[4] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x70uLL);
  abm::HelperServerInternal::HelperServerInternal(v4);
  v3[3] = 0xAAAAAAAAAAAAAAAALL;
  v3[4] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<abm::HelperServerInternal>::shared_ptr[abi:ne200100]<abm::HelperServerInternal,std::shared_ptr<abm::HelperServerInternal> ctu::SharedSynchronizable<abm::HelperServerInternal>::make_shared_ptr<abm::HelperServerInternal>(abm::HelperServerInternal*)::{lambda(abm::HelperServerInternal*)#1},0>(v3 + 3, v4);
  abm::HelperServerInternal::init(v3[3]);
  *a1 = v3 + 3;
  a1[1] = v3;
}

void sub_23C20BFDC(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_23C20BFFC(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_23C20C01C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_23C20C0C8(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_23C20C0E8(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_23C20C108(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

abm::HelperServer *abm::HelperServer::HelperServer(abm::HelperServer *this)
{
  *this = 0xAAAAAAAAAAAAAAAALL;
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0x70uLL);
  abm::HelperServerInternal::HelperServerInternal(v2);
  *this = 0xAAAAAAAAAAAAAAAALL;
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<abm::HelperServerInternal>::shared_ptr[abi:ne200100]<abm::HelperServerInternal,std::shared_ptr<abm::HelperServerInternal> ctu::SharedSynchronizable<abm::HelperServerInternal>::make_shared_ptr<abm::HelperServerInternal>(abm::HelperServerInternal*)::{lambda(abm::HelperServerInternal*)#1},0>(this, v2);
  abm::HelperServerInternal::init(*this);
  return this;
}

{
  *this = 0xAAAAAAAAAAAAAAAALL;
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0x70uLL);
  abm::HelperServerInternal::HelperServerInternal(v2);
  *this = 0xAAAAAAAAAAAAAAAALL;
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<abm::HelperServerInternal>::shared_ptr[abi:ne200100]<abm::HelperServerInternal,std::shared_ptr<abm::HelperServerInternal> ctu::SharedSynchronizable<abm::HelperServerInternal>::make_shared_ptr<abm::HelperServerInternal>(abm::HelperServerInternal*)::{lambda(abm::HelperServerInternal*)#1},0>(this, v2);
  abm::HelperServerInternal::init(*this);
  return this;
}

void abm::HelperServer::~HelperServer(abm::HelperServer *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void abm::HelperServer::start(uint64_t **this)
{
  v1 = *this;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3abm20HelperServerInternal5startEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_12;
  v2[4] = v1;
  ctu::SharedSynchronizable<abm::HelperServerInternal>::execute_wrapped(v1, v2);
}

void abm::HelperServer::stop(abm::HelperServer *this)
{
  v1 = *this;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN3abm20HelperServerInternal4stopEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_14;
  v3[4] = v1;
  v4 = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3abm20HelperServerInternalEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_38;
  block[4] = v1;
  block[5] = &v4;
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void std::__shared_ptr_emplace<abm::HelperServerWrapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFA480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<abm::HelperServerWrapper>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __cxx_global_var_init_2_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

double ICETrace::createInternal@<D0>(_OWORD *a1@<X8>)
{
  v3 = operator new(0x1C0uLL);
  ICETrace::ICETrace(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ICETrace>::shared_ptr[abi:ne200100]<ICETrace,std::shared_ptr<ICETrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<ICETrace>(ICETrace*)::{lambda(ICETrace*)#1},0>(&v5, v3);
  result = *&v5;
  *a1 = v5;
  return result;
}

void ICETrace::ICETrace(ICETrace *this)
{
  v18 = 8;
  strcpy(__p, "trace.bb");
  ctu::OsLogContext::OsLogContext(v19, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_USER_INITIATED);
  ctu::OsLogContext::~OsLogContext(v19);
  *this = &unk_284EF95A8;
  v3 = 0uLL;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (v18 < 0)
  {
    operator delete(__p[0]);
    v3 = 0uLL;
  }

  *this = &unk_284EFA4D0;
  *(this + 24) = 0;
  *(this + 104) = v3;
  *(this + 120) = v3;
  *(this + 136) = v3;
  *(this + 152) = v3;
  *(this + 168) = v3;
  *(this + 184) = v3;
  *(this + 200) = v3;
  *(this + 216) = v3;
  *(this + 232) = v3;
  *(this + 261) = 1;
  *(this + 33) = 0;
  *(this + 136) = 0;
  *(this + 280) = 0;
  v4 = capabilities::trace::defaultHistorySizeMB(v2);
  v5 = 0x7FFFFFFF;
  if (v4 < 0x7FFFFFFF)
  {
    v5 = v4;
  }

  *(this + 71) = v5;
  v6 = capabilities::trace::defaultFileSizeBytes(v4);
  *(this + 72) = v6;
  v7 = capabilities::radio::vendor(v6);
  if ((v7 - 1) > 3)
  {
    v8 = 25;
  }

  else
  {
    v8 = dword_23C32D580[v7 - 1];
  }

  v9 = capabilities::radio::dal(v7);
  v10 = v9;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v9);
  if (v10)
  {
    v12 = 1024;
  }

  else
  {
    v12 = 0x4000;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    if (v8 == 17)
    {
      v12 = 0x80000;
    }

    else if (v8 == 21 || v8 == 20)
    {
      v12 = 61440;
    }

    else
    {
      shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
      if ((v8 - 19) > 5)
      {
        v12 = 0x8000;
      }

      else
      {
        v12 = dword_23C32D6E0[v8 - 19];
      }
    }
  }

  *(this + 73) = v12;
  *(this + 74) = defaults::bbtrace::transport_read_count(shouldUseMinBasebandTransportIOReadSize);
  *(this + 300) = 0;
  *(this + 76) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  v13 = *MEMORY[0x277CBECE8];
  *(this + 41) = TelephonyBasebandCreateController();
  v14 = *(this + 3);
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  if (config::hw::watch(v14))
  {
    v15 = QOS_CLASS_UTILITY;
  }

  else
  {
    v15 = QOS_CLASS_DEFAULT;
  }

  BasebandTransport::create(&object, v15, this + 42);
  if (object)
  {
    dispatch_release(object);
  }

  *(this + 417) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 44) = 0;
  *(this + 376) = 0;
  *(this + 415) = 0;
  *(this + 407) = 0;
  *(this + 399) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 440) = 0;
}

void sub_23C20C840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v16 + 312);
  v19 = *(v16 + 264);
  if (v19)
  {
    dispatch_group_leave(v19);
    v20 = *(v16 + 264);
    if (v20)
    {
      dispatch_release(v20);
    }
  }

  v21 = *(v16 + 224);
  if (v21)
  {
    *(v16 + 232) = v21;
    operator delete(v21);
    v22 = *(v16 + 200);
    if (!v22)
    {
LABEL_6:
      v23 = *(v16 + 176);
      if (!v23)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v22 = *(v16 + 200);
    if (!v22)
    {
      goto LABEL_6;
    }
  }

  *(v16 + 208) = v22;
  operator delete(v22);
  v23 = *(v16 + 176);
  if (!v23)
  {
LABEL_7:
    if ((*(v16 + 175) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v16 + 184) = v23;
  operator delete(v23);
  if ((*(v16 + 175) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v16 + 151) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v16 + 152));
  if ((*(v16 + 151) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v16 + 127) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_16:
  operator delete(*(v16 + 128));
  if ((*(v16 + 127) & 0x80000000) == 0)
  {
LABEL_11:
    Trace::~Trace(v16);
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*v17);
  goto LABEL_11;
}

uint64_t ICETrace::init(void *a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1174405120;
  v19[2] = ___ZN8ICETrace4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupE_block_invoke;
  v19[3] = &unk_284EFA588;
  v19[4] = &v24;
  v19[5] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v7 = a3[1];
  v21 = *a3;
  v22 = v7;
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

  v28 = v19;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_0;
  block[3] = &__block_descriptor_tmp_174;
  block[4] = a1 + 1;
  block[5] = &v28;
  v9 = a1[3];
  if (a1[4])
  {
    dispatch_async_and_wait(v9, block);
    v10 = a1[2];
    if (!v10)
    {
LABEL_22:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    dispatch_sync(v9, block);
    v10 = a1[2];
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  v11 = a1[1];
  v12 = std::__shared_weak_count::lock(v10);
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = operator new(8uLL);
  *v14 = a1;
  v15 = a1[3];
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v14;
  v16[1] = v11;
  v16[2] = v13;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<ICETrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_0>(ICETrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ICETrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_0,std::default_delete<ICETrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v17 = *(v25 + 24);
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v24, 8);
  return v17;
}

void sub_23C20CBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN8ICETrace4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    v10 = *(a1 + 48);
    v3 = *(a1 + 80);
    v8 = *(a1 + 72);
    v9 = v3;
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v10, *(a1 + 48), *(a1 + 56));
  v3 = *(a1 + 80);
  v8 = *(a1 + 72);
  v9 = v3;
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

  *(*(*(a1 + 32) + 8) + 24) = Trace::init(v2, &v10.__r_.__value_.__l.__data_, &v8, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
    if (*(*(*(a1 + 32) + 8) + 24) != 1)
    {
      goto LABEL_12;
    }
  }

  else if (*(*(*(a1 + 32) + 8) + 24) != 1)
  {
LABEL_12:
    *(v2 + 416) = 0;
    return;
  }

  v6 = 7;
  strcpy(__p, "Enabled");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    util::convert<BOOL>(&v12, (v2 + 280), 0);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_73:
    operator delete(*__p);
    goto LABEL_20;
  }

  if (v6 < 0)
  {
    goto LABEL_73;
  }

LABEL_20:
  v6 = 4;
  strcpy(__p, "Mode");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    v11 = -1431655766;
    if (util::convert<int>(&v12, &v11, 0))
    {
      *(v2 + 96) = v11;
    }
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(*__p);
LABEL_25:
  v6 = 7;
  strcpy(__p, "History");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    util::convert<int>(&v12, (v2 + 284), 0);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(*__p);
LABEL_29:
  *(&v12.__r_.__value_.__s + 23) = 4;
  strcpy(&v12, "File");
  prop::bbtrace::get(&v12, v2 + 104);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  *(&v12.__r_.__value_.__s + 23) = 10;
  strcpy(&v12, "File_Sleep");
  prop::bbtrace::get(&v12, v2 + 128);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v6 = 20;
  strcpy(__p, "Enabled_During_Sleep");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    util::convert<BOOL>(&v12, (v2 + 260), 0);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(*__p);
LABEL_37:
  v6 = 14;
  strcpy(__p, "BackgroundMode");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    util::convert<BOOL>(&v12, (v2 + 248), 0);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(*__p);
LABEL_41:
  v6 = 14;
  strcpy(__p, "High_Watermark");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    util::convert<int>(&v12, (v2 + 252), 0);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(*__p);
LABEL_45:
  v6 = 13;
  strcpy(__p, "Low_Watermark");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    util::convert<int>(&v12, (v2 + 256), 0);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(*__p);
LABEL_49:
  *(&v12.__r_.__value_.__s + 23) = 7;
  strcpy(&v12, "ETBFile");
  prop::bbtrace::get(&v12, v2 + 152);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v6 = 18;
  strcpy(__p, "MaxMemoryFileCount");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    util::convert<unsigned int>(&v12, (v2 + 276), 0);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_55;
  }

  operator delete(*__p);
LABEL_55:
  v6 = 21;
  strcpy(__p, "Retain_Previous_Trace");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    util::convert<BOOL>(&v12, (v2 + 440), 0);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(*__p);
LABEL_59:
  v6 = 8;
  strcpy(__p, "FileSize");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    util::convert<unsigned int>(&v12, (v2 + 288), 0);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

  operator delete(*__p);
LABEL_63:
  v6 = 6;
  strcpy(__p, "SizeIO");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    util::convert<unsigned int>(&v12, (v2 + 292), 0);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

  operator delete(*__p);
LABEL_67:
  v6 = 14;
  strcpy(__p, "NumberOfReadIO");
  memset(&v12, 0, sizeof(v12));
  if (prop::bbtrace::get(__p, &v12))
  {
    util::convert<unsigned int>(&v12, (v2 + 296), 0);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(*__p);
  *(v2 + 416) = 0;
}

void sub_23C20D354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 17) < 0)
  {
    operator delete(*(v14 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_23C20D3C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (object)
  {
    dispatch_release(object);
    v20 = a14;
    if (!a14)
    {
LABEL_3:
      if (a20 < 0)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v20 = a14;
    if (!a14)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v20);
  if (a20 < 0)
  {
LABEL_10:
    JUMPOUT(0x23C20D3BCLL);
  }

LABEL_11:
  JUMPOUT(0x23C20D3C0);
}

void __copy_helper_block_e8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c50_ZTSNSt3__18weak_ptrIN3abm19BasebandTracingTaskEEE88c21_ZTSN8dispatch5groupE(std::string *a1, uint64_t a2)
{
  if ((*(a2 + 71) & 0x80000000) == 0)
  {
    v4 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v4;
    v5 = *(a2 + 80);
    a1[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    a1[3].__r_.__value_.__l.__size_ = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  v5 = *(a2 + 80);
  a1[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
  a1[3].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
LABEL_3:
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v6 = *(a2 + 88);
  a1[3].__r_.__value_.__r.__words[2] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c50_ZTSNSt3__18weak_ptrIN3abm19BasebandTracingTaskEEE88c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(a1 + 71) < 0)
  {
    v4 = *(a1 + 48);

    operator delete(v4);
  }
}

void ICETrace::~ICETrace(ICETrace *this)
{
  *this = &unk_284EFA4D0;
  BasebandTransport::close(*(this + 42));
  if (*(this + 416) == 1)
  {
    dispatch_group_leave(*(this + 11));
    *(this + 416) = 0;
  }

  v2 = *(this + 40);
  *(this + 39) = 0;
  *(this + 40) = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *(this + 280) = 0;
  v3 = *(this + 54);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 51);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if ((*(this + 399) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(this + 399) < 0)
  {
LABEL_12:
    operator delete(*(this + 47));
  }

LABEL_13:
  v5 = *(this + 46);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *(this + 44);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v6 = *(this + 44);
  if (v6)
  {
LABEL_16:
    _Block_release(v6);
  }

LABEL_17:
  v7 = *(this + 43);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 40);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 33);
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = *(this + 33);
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v11 = *(this + 28);
  if (v11)
  {
    *(this + 29) = v11;
    operator delete(v11);
  }

  v12 = *(this + 25);
  if (v12)
  {
    *(this + 26) = v12;
    operator delete(v12);
  }

  v13 = *(this + 22);
  if (v13)
  {
    *(this + 23) = v13;
    operator delete(v13);
  }

  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
    if ((*(this + 151) & 0x80000000) == 0)
    {
LABEL_34:
      if ((*(this + 127) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }
  }

  else if ((*(this + 151) & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(*(this + 16));
  if ((*(this + 127) & 0x80000000) == 0)
  {
LABEL_35:
    v14 = this;

    goto LABEL_37;
  }

LABEL_40:
  operator delete(*(this + 13));
  v14 = this;

LABEL_37:
  Trace::~Trace(v14);
}

{
  ICETrace::~ICETrace(this);

  operator delete(v1);
}