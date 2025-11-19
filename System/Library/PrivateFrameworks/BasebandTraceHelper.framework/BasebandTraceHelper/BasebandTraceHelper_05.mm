void sub_241A55440(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void util::createDictFromJSONString(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_null_create();
  *a2 = v4;
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v7];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAE0] inputStreamWithData:v8];
    v10 = v9;
    if (v9)
    {
      [(NSInputStream *)v9 open];
      if ([(NSInputStream *)v10 streamStatus]== 2)
      {
        util::sCreateDictFromOpenJSONStream(&object, v10);
        v11 = object;
        object = xpc_null_create();
        *a2 = v11;
        xpc_release(v4);
        xpc_release(object);
        [(NSInputStream *)v10 close];
LABEL_22:

        goto LABEL_23;
      }

      if ((atomic_load_explicit(&qword_27E552460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552460))
      {
        qword_27E552468 = 0;
        qword_27E552470 = 0;
        __cxa_guard_release(&qword_27E552460);
      }

      if (_MergedGlobals_3 == -1)
      {
        v13 = qword_27E552470;
        if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
        v13 = qword_27E552470;
        if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }
      }

      *v17 = 0;
      v14 = "Failed to open NSInputStream from json string";
      v15 = v17;
    }

    else
    {
      if ((atomic_load_explicit(&qword_27E552460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552460))
      {
        qword_27E552468 = 0;
        qword_27E552470 = 0;
        __cxa_guard_release(&qword_27E552460);
      }

      if (_MergedGlobals_3 == -1)
      {
        v13 = qword_27E552470;
        if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
        v13 = qword_27E552470;
        if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }
      }

      v18 = 0;
      v14 = "Failed to create NSInputStream from json string";
      v15 = &v18;
    }

    _os_log_error_impl(&dword_241A16000, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
    goto LABEL_22;
  }

  if ((atomic_load_explicit(&qword_27E552460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552460))
  {
    qword_27E552468 = 0;
    qword_27E552470 = 0;
    __cxa_guard_release(&qword_27E552460);
  }

  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
    v12 = qword_27E552470;
    if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  v12 = qword_27E552470;
  if (os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    *buf = 0;
    _os_log_error_impl(&dword_241A16000, v12, OS_LOG_TYPE_ERROR, "Failed to create NSData from json string", buf, 2u);
  }

LABEL_23:
}

void ___ZN4utilL16sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "json.util");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

BasebandTransportICE *BasebandTransportICE::BasebandTransportICE(BasebandTransportICE *a1, NSObject **a2, dispatch_qos_class_t a3)
{
  v4 = *a2;
  object = v4;
  if (v4)
  {
    v5 = a3;
    dispatch_retain(v4);
    a3 = v5;
  }

  BasebandTransport::BasebandTransport(a1, &object, a3);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_2853A36F8;
  *(a1 + 49) = 0;
  *(a1 + 53) = 0;
  *(a1 + 57) = 0;
  *(a1 + 58) = 0;
  *(a1 + 59) = dispatch_queue_create("BasebandTransportARI", 0);
  BasebandTransportICE::configurePhysical(a1);
  return a1;
}

void sub_241A559E8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 59);
  if (v3)
  {
    dispatch_release(v3);
  }

  std::function<BOOL ()(void)>::~function(v1 + 432);
  std::function<BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::~function(v1 + 400);
  std::function<BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::~function(v1 + 368);
  BasebandTransport::~BasebandTransport(v1);
  _Unwind_Resume(a1);
}

void sub_241A55A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (!object)
  {
    _Unwind_Resume(exception_object);
  }

  dispatch_release(object);
  _Unwind_Resume(exception_object);
}

void **BasebandTransportICE::configurePhysical(BasebandTransportICE *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_241A16000, v2, OS_LOG_TYPE_DEFAULT, "#I using physical pipe...", &v5, 2u);
  }

  v5 = &unk_2853A3998;
  v6 = this;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](&v5, this + 54);
  if (v7 == &v5)
  {
    (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 5))();
  }

  v5 = &unk_2853A3A18;
  v6 = this;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](&v5, this + 50);
  if (v7 == &v5)
  {
    (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 5))();
  }

  v5 = &unk_2853A3A98;
  v6 = this;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](&v5, this + 46);
  result = v7;
  if (v7 == &v5)
  {
    result = (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    result = (*(*v7 + 5))();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void **BasebandTransportICE::configureARIPipe(BasebandTransportICE *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_241A16000, v2, OS_LOG_TYPE_DEFAULT, "#I using ARI client pipe...", &v5, 2u);
  }

  v5 = &unk_2853A37E8;
  v6 = this;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](&v5, this + 54);
  if (v7 == &v5)
  {
    (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 5))();
  }

  v5 = &unk_2853A3878;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](&v5, this + 50);
  if (v7 == &v5)
  {
    (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 5))();
  }

  v5 = &unk_2853A3908;
  v6 = this;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](&v5, this + 46);
  result = v7;
  if (v7 == &v5)
  {
    result = (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    result = (*(*v7 + 5))();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BasebandTransportICE::open(BasebandTransport *a1, uint64_t *a2, const void **a3)
{
  if (*a2 == 8)
  {
    v6 = *a2;
    v21 = *(a2 + 1);
    v22 = a2[4];
    *buf = v6;
    *&buf[8] = 1;
    v7 = *a3;
    if (*a3)
    {
      v7 = _Block_copy(v7);
    }

    aBlock = v7;
    v8 = BasebandTransport::open(a1, buf, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v12 = *(a1 + 5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241A16000, v12, OS_LOG_TYPE_DEFAULT, "#I Physical transport not available.  Trying ARI pipe...", buf, 2u);
      }

      v13 = *(a2 + 1);
      *buf = *a2;
      v21 = v13;
      v22 = a2[4];
      if (*a3)
      {
        v14 = _Block_copy(*a3);
      }

      else
      {
        v14 = 0;
      }

      v18 = v14;
      v15 = BasebandTransportICE::openARIClientPipe(a1, buf, &v18);
      if (v14)
      {
        _Block_release(v14);
      }

      if (v15)
      {
        BasebandTransportICE::configureARIPipe(a1);
        return 1;
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = *(a2 + 1);
    *buf = *a2;
    v21 = v10;
    v22 = a2[4];
    v11 = *a3;
    if (*a3)
    {
      v11 = _Block_copy(v11);
    }

    v17 = v11;
    v9 = BasebandTransport::open(a1, buf, &v17);
    if (v17)
    {
      _Block_release(v17);
    }
  }

  BasebandTransportICE::configurePhysical(a1);
  return v9;
}

void sub_241A56054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, uint64_t a11, void *a12)
{
  if (v12)
  {
    _Block_release(v12);
  }

  _Unwind_Resume(exception_object);
}

BOOL BasebandTransportICE::openARIClientPipe(uint64_t a1, __int128 *a2, void **a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a2[1];
  *(a1 + 80) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v8 = *a3;
  if (*a3)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a1 + 88);
  *(a1 + 88) = v8;
  if (v9)
  {
    _Block_release(v9);
  }

  *(a1 + 464) = 0;
  v10 = *(a1 + 16);
  if (!v10 || (v11 = *(a1 + 8), (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  {
    std::string::basic_string[abi:ne200100]<0>(&BasebandTransport::getName(void)::kName, "ipc.bb");
  }

  v14 = (a1 + 464);
  if (byte_27E55248F >= 0)
  {
    v15 = &BasebandTransport::getName(void)::kName;
  }

  else
  {
    v15 = BasebandTransport::getName(void)::kName;
  }

  v16 = AriHost::RegisterClient(v15, (a1 + 464), *(a1 + 472), (1000 * *(a2 + 2)));
  if (v16)
  {
    v17 = 0;
    v18 = *(a1 + 40);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v24 = *(a1 + 464);
    v25[0] = v11;
    v25[1] = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = v25;
    v17 = AriHost::SetRTEventHandler() == 0;
    v18 = *(a1 + 40);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }
  }

  v19 = "fail";
  v20 = *v14;
  if (v17)
  {
    v19 = "success";
  }

  *buf = 136315394;
  v27 = v19;
  v28 = 1024;
  v29 = v20;
  _os_log_impl(&dword_241A16000, v18, OS_LOG_TYPE_DEFAULT, "#I ARI pipe open %s ctx 0x%x", buf, 0x12u);
LABEL_18:
  if (!v16)
  {
    v21 = v3[1];
    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }
  }

  std::__shared_weak_count::__release_weak(v13);
  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_241A56354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransportICE::write(BasebandTransportICE *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4, char a5, int a6)
{
  v12 = a2;
  v10 = a4;
  v11 = a3;
  v9 = a5;
  v8 = a6;
  v6 = *(this + 49);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6, &v12, &v11, &v10, &v9, &v8);
}

uint64_t BasebandTransportICE::read(BasebandTransportICE *this, unsigned __int8 *a2, uint64_t a3, unsigned int *a4, char a5, int a6)
{
  v12 = a2;
  v10 = a4;
  v11 = a3;
  v9 = a5;
  v8 = a6;
  v6 = *(this + 53);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6, &v12, &v11, &v10, &v9, &v8);
}

uint64_t BasebandTransportICE::close_sync(BasebandTransportICE *this)
{
  v2 = *(this + 57);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t ___ZN20BasebandTransportICE17openARIClientPipeEN17BasebandTransport10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (!v2 || (v3 = a1[4], v4 = std::__shared_weak_count::lock(v2), (v17 = v4) == 0))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  if (!a1[5])
  {
    v11 = v4;
    result = 0xFFFFFFFFLL;
LABEL_23:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v13 = result;
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      result = v13;
    }

    goto LABEL_25;
  }

  v5 = *(v3 + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    Name = BasebandTransport::getName(v3);
    if (*(Name + 23) >= 0)
    {
      v16 = Name;
    }

    else
    {
      v16 = *Name;
    }

    LODWORD(__dst) = 136315138;
    *(&__dst + 4) = v16;
    _os_log_error_impl(&dword_241A16000, v5, OS_LOG_TYPE_ERROR, "Got AriHost::ARI_RT_REINIT callback for %s", &__dst, 0xCu);
    {
      goto LABEL_6;
    }
  }

  {
    goto LABEL_6;
  }

  {
    std::string::basic_string[abi:ne200100]<0>(&BasebandTransport::getName(void)::kName, "ipc.bb");
  }

LABEL_6:
  if (byte_27E55248F >= 0)
  {
    v6 = &BasebandTransport::getName(void)::kName;
  }

  else
  {
    v6 = BasebandTransport::getName(void)::kName;
  }

  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v7 | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v8;
    v19 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_19;
  }

  HIBYTE(v19) = v7;
  p_dst = &__dst;
  if (v7)
  {
LABEL_19:
    memmove(p_dst, v6, v8);
  }

  *(p_dst + v8) = 0;
  AriHost::ReRegisterClient();
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__dst);
  }

  result = 0;
  v11 = v17;
  if (v17)
  {
    goto LABEL_23;
  }

LABEL_25:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241A5671C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

BOOL BasebandTransportICE::writeARIClientPipe(BasebandTransportICE *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *(this + 2);
  if (!v5 || (v8 = *(this + 1), (v9 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(this + 117))
    {
LABEL_5:
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      started = AriHost::Send();
      v12 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
    if (*(this + 117))
    {
      goto LABEL_5;
    }
  }

  v14 = *(this + 116);
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  started = AriHost::StartStream();
  v12 = v10;
LABEL_6:
  std::__shared_weak_count::__release_weak(v12);
  if (started)
  {
    v13 = *(this + 5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v18 = a3;
      _os_log_error_impl(&dword_241A16000, v13, OS_LOG_TYPE_ERROR, "Failed to send %zu bytes on ARI pipe", buf, 0xCu);
    }
  }

  else if (a4)
  {
    *a4 = a3;
  }

  std::__shared_weak_count::__release_weak(v10);
  v15 = *MEMORY[0x277D85DE8];
  return started == 0;
}

void sub_241A569D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

uint64_t ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke(void *a1, uint64_t a2, int a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  if (a1[5])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke_2;
    block[3] = &__block_descriptor_tmp_5;
    block[4] = v7;
    block[5] = a2;
    v13 = a3;
    dispatch_async(*(v7 + 96), block);
    result = 0;
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return result;
    }

LABEL_8:
    v11 = result;
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    return v11;
  }

  result = 0xFFFFFFFFLL;
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  return result;
}

void ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
    (*(*v3 + 8))(v3, *(a1 + 40), *(a1 + 48), &__p);
    v4 = __p;
    v5 = v12 - __p;
    if (*(v2 + 80) == 1)
    {
      v6 = malloc_type_malloc(v12 - __p, 0x100004077774924uLL);
      memcpy(v6, v4, v5);
    }

    (*(*(v2 + 88) + 16))();
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (*(v2 + 80) == 1)
    {
      v8 = *(a1 + 40);
      v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
      memcpy(v9, v8, v7);
    }

    v10 = *(*(v2 + 88) + 16);

    v10();
  }
}

void sub_241A56CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandTransportICE::sendToDataHandler(BasebandTransportICE *this, unsigned __int8 *a2, size_t size)
{
  if (*(this + 80) == 1)
  {
    v6 = malloc_type_malloc(size, 0x100004077774924uLL);
    memcpy(v6, a2, size);
  }

  v7 = *(*(this + 11) + 16);

  return v7();
}

uint64_t ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke_10(void *a1, AriMsg *a2, unsigned int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a1[6];
  if (!v4 || (v7 = a1[4], v8 = std::__shared_weak_count::lock(v4), (v21 = v8) == 0))
  {
    result = 0xFFFFFFFFLL;
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = v8;
  if (!a1[5])
  {
    result = 0xFFFFFFFFLL;
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke_2_11;
  block[3] = &__block_descriptor_tmp_12_0;
  block[4] = v7;
  block[5] = a2;
  v19 = a3;
  dispatch_async(*(v7 + 96), block);
  BufCtx = AriMsg::GetBufCtx(a2, a3);
  *(v7 + 468) = BufCtx;
  v11 = *(v7 + 40);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (!v12)
  {
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

LABEL_12:
    v16 = result;
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    result = v16;
    v17 = *MEMORY[0x277D85DE8];
    return result;
  }

  *buf = 67109120;
  v23 = BufCtx;
  _os_log_impl(&dword_241A16000, v11, OS_LOG_TYPE_DEFAULT, "#I bypass will use ctx id 0x%x", buf, 8u);
  result = 0;
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241A56F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke_2_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
    (*(*v3 + 8))(v3, *(a1 + 40), *(a1 + 48), &__p);
    v4 = __p;
    v5 = v12 - __p;
    if (*(v2 + 80) == 1)
    {
      v6 = malloc_type_malloc(v12 - __p, 0x100004077774924uLL);
      memcpy(v6, v4, v5);
    }

    (*(*(v2 + 88) + 16))();
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (*(v2 + 80) == 1)
    {
      v8 = *(a1 + 40);
      v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
      memcpy(v9, v8, v7);
    }

    v10 = *(*(v2 + 88) + 16);

    v10();
  }
}

void sub_241A570BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandTransportICE::closeARIClientPipe_sync(BasebandTransportICE *this)
{
  AriHost::EndStream(*(this + 117));
  *(this + 117) = 0;
  AriHost::DeregisterClient(*(this + 116));
  *(this + 116) = 0;
  return 1;
}

void BasebandTransportICE::~BasebandTransportICE(BasebandTransportICE *this)
{
  BasebandTransportICE::~BasebandTransportICE(this);

  operator delete(v1);
}

{
  *this = &unk_2853A36F8;
  v2 = *(this + 59);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 57);
  if (v3 == (this + 432))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 53);
    if (v4 != (this + 400))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 53);
    if (v4 != (this + 400))
    {
LABEL_7:
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      v5 = *(this + 49);
      if (v5 != (this + 368))
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  (*(*v4 + 32))(v4);
  v5 = *(this + 49);
  if (v5 != (this + 368))
  {
LABEL_10:
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    v6 = this;

    goto LABEL_14;
  }

LABEL_17:
  (*(*v5 + 32))(v5);
  v6 = this;

LABEL_14:
  BasebandTransport::~BasebandTransport(v6);
}

uint64_t std::function<BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::~function(uint64_t a1)
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

uint64_t std::function<BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::~function(uint64_t a1)
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

uint64_t std::function<BOOL ()(void)>::~function(uint64_t a1)
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

void *std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_0,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_0>,BOOL ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2853A37E8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_0,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2853A37E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_0,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  AriHost::EndStream(*(v1 + 468));
  *(v1 + 468) = 0;
  AriHost::DeregisterClient(*(v1 + 464));
  *(v1 + 464) = 0;
  return 1;
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_0,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE16configureARIPipeEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE16configureARIPipeEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE16configureARIPipeEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE16configureARIPipeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    memset(v8, 170, 24);
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241A57854(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_1,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2853A3878;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_1,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE16configureARIPipeEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE16configureARIPipeEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE16configureARIPipeEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE16configureARIPipeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    memset(v8, 170, 24);
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241A57BE0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_2,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2853A3908;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_2,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2853A3908;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_2,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int **a4)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x4002000000;
  v21[3] = __Block_byref_object_copy__1;
  v21[4] = __Block_byref_object_dispose__1;
  __p = 0;
  v23 = 0;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = v5;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = ___ZZN20BasebandTransportICE16configureARIPipeEvENK3__2clEPKhmPjbj_block_invoke;
  v12[3] = &unk_278D04B18;
  v12[8] = v5;
  v12[9] = v6;
  v12[4] = v21;
  v12[5] = &v17;
  v12[6] = &v13;
  v12[7] = v4;
  v25 = v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_0;
  block[3] = &__block_descriptor_tmp_39;
  block[4] = v4 + 8;
  block[5] = &v25;
  v8 = *(v4 + 3);
  if (*(v4 + 4))
  {
    dispatch_async_and_wait(v8, block);
    v9 = v14[3];
    if (v9)
    {
LABEL_3:
      v10 = BasebandTransportICE::writeARIClientPipe(v4, v18[3], v9, v7);
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_sync(v8, block);
    v9 = v14[3];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v10 = 1;
LABEL_6:
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v21, 8);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_241A57E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_2,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE16configureARIPipeEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE16configureARIPipeEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE16configureARIPipeEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE16configureARIPipeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 __Block_byref_object_copy__1(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *___ZZN20BasebandTransportICE16configureARIPipeEvENK3__2clEPKhmPjbj_block_invoke(void *result)
{
  v1 = *(result[7] + 72);
  if (v1)
  {
    v2 = result;
    result = (**v1)(*(result[7] + 72), result[8], result[9], *(result[4] + 8) + 40);
    *(*(v2[5] + 8) + 24) = *(*(v2[4] + 8) + 40);
    *(*(v2[6] + 8) + 24) = *(*(v2[4] + 8) + 48) - *(*(v2[4] + 8) + 40);
  }

  return result;
}

void *std::__function::__value_func<BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    memset(v8, 170, 24);
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241A5825C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_0,std::allocator<BasebandTransportICE::configurePhysical(void)::$_0>,BOOL ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2853A3998;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_0,std::allocator<BasebandTransportICE::configurePhysical(void)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2853A3998;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_0,std::allocator<BasebandTransportICE::configurePhysical(void)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE17configurePhysicalEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE17configurePhysicalEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE17configurePhysicalEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE17configurePhysicalEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_1,std::allocator<BasebandTransportICE::configurePhysical(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2853A3A18;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_1,std::allocator<BasebandTransportICE::configurePhysical(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2853A3A18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_1,std::allocator<BasebandTransportICE::configurePhysical(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::operator()(uint64_t a1, unsigned __int8 **a2, unint64_t *a3, unsigned int **a4, unsigned __int8 *a5, unsigned int *a6)
{
  v6 = *a5;
  v7 = *a6;
  return BasebandTransport::read(*(a1 + 8), *a2, *a3, *a4);
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_1,std::allocator<BasebandTransportICE::configurePhysical(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE17configurePhysicalEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE17configurePhysicalEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE17configurePhysicalEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE17configurePhysicalEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_2,std::allocator<BasebandTransportICE::configurePhysical(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2853A3A98;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_2,std::allocator<BasebandTransportICE::configurePhysical(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2853A3A98;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_2,std::allocator<BasebandTransportICE::configurePhysical(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::operator()(uint64_t a1, const unsigned __int8 **a2, uint64_t *a3, unsigned int **a4, unsigned __int8 *a5, unsigned int *a6)
{
  v6 = *a5;
  v7 = *a6;
  return BasebandTransport::write(*(a1 + 8), *a2, *a3, *a4);
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_2,std::allocator<BasebandTransportICE::configurePhysical(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE17configurePhysicalEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE17configurePhysicalEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE17configurePhysicalEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE17configurePhysicalEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

const char *trace::toString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "Unknown";
  }

  else
  {
    return off_278D04BB8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "unknown";
  }

  else
  {
    return off_278D04C00[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_278D04C20[a1];
  }
}

{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_278D04C38[a1];
  }
}

{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_278D04C58[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_278D04C80[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_278D04C98[a1];
  }
}

uint64_t trace::toLogLevel(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 23) < 0)
  {
    v4 = *(a1 + 8);
    result = 7;
    if (v4 <= 5)
    {
      if (v4 != 4)
      {
        if (v4 != 5)
        {
          return result;
        }

        v1 = *v1;
        goto LABEL_10;
      }

      v1 = *v1;
      goto LABEL_45;
    }

    if (v4 == 6)
    {
      v21 = *v1;
      v22 = *v21;
      v23 = *(v21 + 2);
      if (v22 == 1332505665 && v23 == 26214)
      {
        return 0;
      }
    }

    else
    {
      if (v4 != 7)
      {
        return result;
      }

      v9 = *v1;
      if (*v9 == 1651664214 && *(v9 + 3) == 1702063970)
      {
        return 1;
      }

      v11 = *v9;
      v12 = *(v9 + 3);
      if (v11 == 1634100548 && v12 == 1953264993)
      {
        return 3;
      }
    }
  }

  else
  {
    v2 = *(a1 + 23);
    result = 7;
    if (v2 <= 5)
    {
      if (v2 != 4)
      {
        if (v2 != 5)
        {
          return result;
        }

LABEL_10:
        v5 = *v1;
        v6 = *(v1 + 4);
        if (v5 == 1969382724 && v6 == 103)
        {
          return 2;
        }

        return result;
      }

LABEL_45:
      v17 = bswap32(*v1);
      v18 = v17 >= 0x4C697465;
      v19 = v17 > 0x4C697465;
      v20 = !v18;
      if (v19 == v20)
      {
        return 4;
      }

      else
      {
        return 7;
      }
    }

    if (v2 != 6)
    {
      if (v2 != 7)
      {
        return result;
      }

      if (*v1 != 1651664214 || *(v1 + 3) != 1702063970)
      {
        if (*v1 ^ 0x61666544 | *(v1 + 3) ^ 0x746C7561)
        {
          return 7;
        }

        else
        {
          return 3;
        }
      }

      return 1;
    }

    v14 = *v1;
    v15 = *(v1 + 2);
    if (v14 == 1332505665 && v15 == 26214)
    {
      return 0;
    }
  }

  return result;
}

const char *trace::toString(int a1)
{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "Verbose";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Default";
  }
}

abm::trace::TraceInfoEntry *abm::trace::TraceInfoEntry::TraceInfoEntry(abm::trace::TraceInfoEntry *this)
{
  *this = 0;
  Timestamp::Timestamp((this + 8));
  *(this + 55) = 0;
  *(this + 32) = 0;
  *(this + 79) = 0;
  *(this + 103) = 0;
  return this;
}

{
  *this = 0;
  Timestamp::Timestamp((this + 8));
  *(this + 55) = 0;
  *(this + 32) = 0;
  *(this + 79) = 0;
  *(this + 103) = 0;
  return this;
}

void abm::trace::TraceInfo::create(const void **a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x80uLL);
  abm::trace::TraceInfo::TraceInfo(v4, a1);
  *a2 = v4;
  v5 = operator new(0x20uLL);
  v5[1] = 0;
  v6 = v5 + 1;
  *v5 = &unk_2853A3B48;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v7 = v4[1];
  if (v7)
  {
    if (v7->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
      *v4 = v4;
      v4[1] = v5;
      v8 = v5;
      std::__shared_weak_count::__release_weak(v7);
      v5 = v8;
      if (!atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
    *v4 = v4;
    v4[1] = v5;
    if (!atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_7:
      v9 = v5;
      (*(*v5 + 16))();
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_241A58A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<abm::trace::TraceInfo>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t abm::trace::TraceInfo::TraceInfo(uint64_t a1, const void **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 24), "com.apple.telephony.abm", "trace.info");
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = v5 + 11;
  if (v5 + 11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 < 0x17)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    v8 = (a1 + 32);
    *(a1 + 55) = v6;
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v6 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v6 | 7) + 1;
    }

    v8 = operator new(v7);
    *(a1 + 40) = v6;
    *(a1 + 48) = v7 | 0x8000000000000000;
    *(a1 + 32) = v8;
  }

  v9 = *a2;
  if (v4 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  memmove(v8, v10, v5);
LABEL_15:
  strcpy(v8 + v5, "/trace.info");
  v11 = xpc_array_create(0, 0);
  v12 = v11;
  if (v11)
  {
    *(a1 + 56) = v11;
  }

  else
  {
    v12 = xpc_null_create();
    *(a1 + 56) = v12;
    if (!v12)
    {
      v13 = xpc_null_create();
      v12 = 0;
      goto LABEL_22;
    }
  }

  if (MEMORY[0x245CF6530](v12) == MEMORY[0x277D86440])
  {
    xpc_retain(v12);
    goto LABEL_23;
  }

  v13 = xpc_null_create();
LABEL_22:
  *(a1 + 56) = v13;
LABEL_23:
  xpc_release(v12);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v14;
  if (v14)
  {
    *(a1 + 88) = v14;
  }

  else
  {
    v15 = xpc_null_create();
    *(a1 + 88) = v15;
    if (!v15)
    {
      v16 = xpc_null_create();
      v15 = 0;
      goto LABEL_30;
    }
  }

  if (MEMORY[0x245CF6530](v15) == MEMORY[0x277D86468])
  {
    xpc_retain(v15);
    goto LABEL_31;
  }

  v16 = xpc_null_create();
LABEL_30:
  *(a1 + 88) = v16;
LABEL_31:
  xpc_release(v15);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = a1 + 104;
  v17 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v18 = off_280C058E0;
  if (!off_280C058E0)
  {
    ctu::Gestalt::create_default_global(buf, v17);
    v19 = *buf;
    memset(buf, 0, sizeof(buf));
    v20 = *(&off_280C058E0 + 1);
    off_280C058E0 = v19;
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    v21 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v18 = off_280C058E0;
  }

  v22 = *(&off_280C058E0 + 1);
  if (*(&off_280C058E0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C058E0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  if ((*(*v18 + 152))(v18))
  {
    v23 = 1000;
  }

  else
  {
    v23 = 500;
  }

  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  *(a1 + 120) = v23;
  v24 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v25 = off_280C058E0;
  if (!off_280C058E0)
  {
    ctu::Gestalt::create_default_global(buf, v24);
    v26 = *buf;
    memset(buf, 0, sizeof(buf));
    v27 = *(&off_280C058E0 + 1);
    off_280C058E0 = v26;
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    v25 = off_280C058E0;
  }

  v29 = *(&off_280C058E0 + 1);
  if (*(&off_280C058E0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C058E0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  if ((*(*v25 + 152))(v25))
  {
    v30 = 15;
  }

  else
  {
    v30 = 14;
  }

  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  *(a1 + 124) = v30;
  v31 = *(a1 + 24);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_241A16000, v31, OS_LOG_TYPE_DEBUG, "#D New Trace Info", buf, 2u);
  }

  return a1;
}

void sub_241A58FB4(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  std::__tree<std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>,std::__map_value_compare<abm::trace::TraceInfoState,std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>,std::less<abm::trace::TraceInfoState>,true>,std::allocator<std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>>>::destroy(*(v1 + 104));
  xpc::dict::~dict(v2 + 3);
  std::vector<abm::trace::TraceInfoEntry>::~vector[abi:ne200100](v2);
  xpc::array::~array((v1 + 56));
  if (*(v1 + 55) < 0)
  {
    operator delete(*v3);
  }

  MEMORY[0x245CF5550](v1 + 24);
  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void abm::trace::TraceInfo::init(abm::trace::TraceInfo *this)
{
  v1 = *(this + 3);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_241A16000, v1, OS_LOG_TYPE_DEBUG, "#D New Trace Info", v2, 2u);
  }
}

void abm::trace::TraceInfo::~TraceInfo(abm::trace::TraceInfo *this)
{
  std::__tree<std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>,std::__map_value_compare<abm::trace::TraceInfoState,std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>,std::less<abm::trace::TraceInfoState>,true>,std::allocator<std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>>>::destroy(*(this + 13));
  xpc_release(*(this + 11));
  *(this + 11) = 0;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(this + 9);
    v4 = *(this + 8);
    if (v3 == v2)
    {
LABEL_13:
      *(this + 9) = v2;
      operator delete(v4);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        if ((*(v3 - 25) & 0x80000000) == 0)
        {
LABEL_7:
          if (*(v3 - 49) < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_4;
        }
      }

      else if ((*(v3 - 25) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 48));
      if (*(v3 - 49) < 0)
      {
LABEL_11:
        operator delete(*(v3 - 72));
      }

LABEL_4:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v3 - 96, *(v3 - 88));
      v3 -= 104;
      if (v3 == v2)
      {
        v4 = *(this + 8);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  xpc_release(*(this + 7));
  *(this + 7) = 0;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  MEMORY[0x245CF5550](this + 24);
  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

const char *abm::trace::TraceInfo::asString(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xF)
  {
    return "Unknown";
  }

  else
  {
    return off_278D04CF8[a2];
  }
}

void abm::trace::TraceInfo::push(uint64_t a1, int a2, const std::string *a3, _OWORD *a4, const std::string *a5, const std::string *a6)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v26 = v12;
  *&v26[16] = v12;
  v24 = v12;
  v25 = v12;
  v22 = v12;
  v23 = v12;
  Timestamp::Timestamp((&v22 + 8));
  *(&v25 + 7) = 0;
  LOBYTE(v24) = 0;
  *&v26[15] = 0;
  HIBYTE(v27) = 0;
  LODWORD(v22) = a2;
  if ((&v22 + 8) != a4)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<Timestamp::TimeDomain,timeval>,std::__tree_node<std::__value_type<Timestamp::TimeDomain,timeval>,void *> *,long>>(&v22 + 1, *a4, a4 + 1);
  }

  std::string::operator=(&v24, a3);
  std::string::operator=((&v25 + 8), a5);
  std::string::operator=(&v26[16], a6);
  abm::trace::TraceInfoEntry::TraceInfoEntry(v13, &v22);
  abm::trace::TraceInfo::push(a1, v13);
  if (v21 < 0)
  {
    operator delete(__p);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_5:
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v18);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_6:
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v14, v15);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v16);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v14, v15);
  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v26[15] & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    operator delete(*(&v25 + 1));
    if ((SBYTE7(v25) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    operator delete(v24);
    goto LABEL_9;
  }

LABEL_13:
  operator delete(*&v26[16]);
  if ((v26[15] & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (SBYTE7(v25) < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v22 + 8, v23);
}

void sub_241A593FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
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
  v16 = va_arg(va1, void);
  abm::trace::TraceInfoEntry::~TraceInfoEntry(va);
  abm::trace::TraceInfoEntry::~TraceInfoEntry(va1);
  _Unwind_Resume(a1);
}

void sub_241A59418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  abm::trace::TraceInfoEntry::~TraceInfoEntry(va);
  _Unwind_Resume(a1);
}

void abm::trace::TraceInfo::push(uint64_t a1, char *a2)
{
  if (*a2 == 13)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v5 = MEMORY[0x277D86468];
    if (v4 || (v4 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x245CF6530](v4) == v5)
      {
        xpc_retain(v4);
        v6 = v4;
      }

      else
      {
        v6 = xpc_null_create();
      }
    }

    else
    {
      v6 = xpc_null_create();
      v4 = 0;
    }

    xpc_release(v4);
    v20 = MEMORY[0x245CF6530](v6);
    if (v20 != v5)
    {
      v21 = *(a1 + 24);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p) = 0;
        _os_log_error_impl(&dword_241A16000, v21, OS_LOG_TYPE_ERROR, "Failed to create entry dictionary!", &__p, 2u);
      }

      goto LABEL_58;
    }

    Timestamp::asString((a2 + 8), 0, 9);
    if (SHIBYTE(v39) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v23 = xpc_string_create(p_p);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, "Timestamp", v23);
    v24 = xpc_null_create();
    xpc_release(v23);
    xpc_release(v24);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p);
      v25 = a2 + 56;
      if ((a2[79] & 0x80000000) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v25 = a2 + 56;
      if ((a2[79] & 0x80000000) == 0)
      {
LABEL_51:
        v26 = xpc_string_create(v25);
        if (!v26)
        {
          v26 = xpc_null_create();
        }

        xpc_dictionary_set_value(v6, "File Name", v26);
        v27 = xpc_null_create();
        xpc_release(v26);
        xpc_release(v27);
        v28 = a2 + 80;
        if (a2[103] < 0)
        {
          v28 = *v28;
        }

        v29 = xpc_string_create(v28);
        if (!v29)
        {
          v29 = xpc_null_create();
        }

        xpc_dictionary_set_value(v6, "File Size", v29);
        v30 = xpc_null_create();
        xpc_release(v29);
        xpc_release(v30);
        xpc_array_append_value(*(a1 + 56), v6);
LABEL_58:
        xpc_release(v6);
        if (v20 != v5)
        {
          return;
        }

        goto LABEL_78;
      }
    }

    v25 = *v25;
    goto LABEL_51;
  }

  if (*(a1 + 124) >= *a2)
  {
    v7 = *(a1 + 64);
    v9 = *(a1 + 72);
    v8 = (a1 + 64);
    if (0x4EC4EC4EC4EC4EC5 * ((v9 - v7) >> 3) != *(a1 + 120))
    {
      v7 = *(a1 + 72);
      v13 = *(a1 + 80);
      if (v9 < v13)
      {
LABEL_31:
        abm::trace::TraceInfoEntry::TraceInfoEntry(v7, a2);
        v19 = v7 + 104;
        *(a1 + 72) = v7 + 104;
LABEL_77:
        *(a1 + 72) = v19;
        goto LABEL_78;
      }

      goto LABEL_19;
    }

    if ((v7 + 104) != v9)
    {
      v10 = 0;
      do
      {
        v11 = v7 + v10;
        *(v7 + v10) = *(v7 + v10 + 104);
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<Timestamp::TimeDomain,timeval>,std::__tree_node<std::__value_type<Timestamp::TimeDomain,timeval>,void *> *,long>>((v7 + v10 + 8), *(v7 + v10 + 112), (v7 + v10 + 120));
        if (*(v7 + v10 + 55) < 0)
        {
          operator delete(*(v11 + 4));
        }

        *(v11 + 2) = *(v11 + 136);
        *(v11 + 6) = *(v11 + 19);
        v11[159] = 0;
        v11[136] = 0;
        if (v11[79] < 0)
        {
          operator delete(*(v11 + 7));
        }

        v12 = v7 + v10;
        *(v11 + 56) = *(v11 + 10);
        *(v11 + 9) = *(v11 + 22);
        *(v7 + v10 + 183) = 0;
        v11[160] = 0;
        if (*(v7 + v10 + 103) < 0)
        {
          operator delete(*(v12 + 10));
        }

        *(v12 + 5) = *(v12 + 184);
        *(v12 + 12) = *(v12 + 25);
        v12[207] = 0;
        v12[184] = 0;
        v10 += 104;
      }

      while ((v7 + v10 + 104) != v9);
      v9 = *(a1 + 72);
      v7 = (v7 + v10);
    }

    if (v9 == v7)
    {
LABEL_30:
      *(a1 + 72) = v7;
      v13 = *(a1 + 80);
      if (v7 < v13)
      {
        goto LABEL_31;
      }

LABEL_19:
      v14 = 0x4EC4EC4EC4EC4EC5 * ((v7 - *v8) >> 3);
      v15 = v14 + 1;
      if ((v14 + 1) > 0x276276276276276)
      {
        std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
      }

      v16 = 0x4EC4EC4EC4EC4EC5 * ((v13 - *v8) >> 3);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x13B13B13B13B13BLL)
      {
        v17 = 0x276276276276276;
      }

      else
      {
        v17 = v15;
      }

      v41 = a1 + 64;
      if (v17)
      {
        if (v17 > 0x276276276276276)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = operator new(104 * v17);
      }

      else
      {
        v18 = 0;
      }

      __p = v18;
      v38 = &v18[104 * v14];
      v40 = &v18[104 * v17];
      abm::trace::TraceInfoEntry::TraceInfoEntry(v38, a2);
      v19 = (v38 + 104);
      v39 = (v38 + 104);
      v32 = *(a1 + 64);
      v31 = *(a1 + 72);
      v43 = a1 + 64;
      v44 = &v47;
      v45 = &v48;
      v46 = 0xAAAAAAAAAAAAAA00;
      v33 = (v38 + v32 - v31);
      v47 = v33;
      v48 = v33;
      if (v32 == v31)
      {
LABEL_75:
        v36 = *(a1 + 64);
        *(a1 + 64) = v33;
        *(a1 + 72) = v19;
        *(a1 + 80) = v40;
        if (v36)
        {
          operator delete(v36);
        }

        goto LABEL_77;
      }

      v34 = (v38 + v32 - v31);
      v35 = v32;
      do
      {
        abm::trace::TraceInfoEntry::TraceInfoEntry(v34, v35);
        v35 = (v35 + 104);
        v34 = (v48 + 104);
        v48 += 104;
      }

      while (v35 != v31);
      LOBYTE(v46) = 1;
      while (1)
      {
        if (*(v32 + 103) < 0)
        {
          operator delete(*(v32 + 80));
          if ((*(v32 + 79) & 0x80000000) == 0)
          {
LABEL_70:
            if (*(v32 + 55) < 0)
            {
              goto LABEL_74;
            }

            goto LABEL_67;
          }
        }

        else if ((*(v32 + 79) & 0x80000000) == 0)
        {
          goto LABEL_70;
        }

        operator delete(*(v32 + 56));
        if (*(v32 + 55) < 0)
        {
LABEL_74:
          operator delete(*(v32 + 32));
        }

LABEL_67:
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v32 + 8, *(v32 + 16));
        v32 += 104;
        if (v32 == v31)
        {
          goto LABEL_75;
        }
      }
    }

    while (1)
    {
      if (*(v9 - 1) < 0)
      {
        operator delete(*(v9 - 3));
        if ((*(v9 - 25) & 0x80000000) == 0)
        {
LABEL_35:
          if (*(v9 - 49) < 0)
          {
            goto LABEL_39;
          }

          goto LABEL_32;
        }
      }

      else if ((*(v9 - 25) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      operator delete(*(v9 - 6));
      if (*(v9 - 49) < 0)
      {
LABEL_39:
        operator delete(*(v9 - 9));
      }

LABEL_32:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v9 - 96, *(v9 - 11));
      v9 = (v9 - 104);
      if (v9 == v7)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_78:
  __p = MEMORY[0x277D85DD0];
  v38 = 0x40000000;
  v39 = ___ZN3abm5trace9TraceInfo6notifyERKNS0_14TraceInfoEntryE_block_invoke;
  v40 = &__block_descriptor_tmp_28_0;
  v41 = a1;
  v42 = a2;
  os_unfair_lock_lock((a1 + 16));
  v39(&__p);
  os_unfair_lock_unlock((a1 + 16));
}

void sub_241A59B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<abm::trace::TraceInfoEntry>,abm::trace::TraceInfoEntry*>>::~__exception_guard_exceptions[abi:ne200100](&a15);
  std::__split_buffer<abm::trace::TraceInfoEntry>::~__split_buffer(&a9);
  _Unwind_Resume(a1);
}

void abm::trace::TraceInfoEntry::~TraceInfoEntry(void **this)
{
  if ((*(this + 103) & 0x80000000) == 0)
  {
    if ((*(this + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(this[7]);
    if ((*(this + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    operator delete(this[4]);
    goto LABEL_4;
  }

  operator delete(this[10]);
  if (*(this + 79) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(this + 55) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((this + 1), this[2]);
}

void abm::trace::TraceInfo::push(uint64_t a1, uint64_t a2, void *a3)
{
  if (MEMORY[0x245CF6530](*a3) == MEMORY[0x277D86468])
  {
    v6 = *a3;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      v6 = xpc_null_create();
    }

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    xpc_dictionary_set_value(*(a1 + 88), v7, v6);
    v8 = xpc_null_create();
    xpc_release(v6);
    xpc_release(v8);
  }
}

{
  if (MEMORY[0x245CF6530](*a3) == MEMORY[0x277D86440])
  {
    v6 = *a3;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      v6 = xpc_null_create();
    }

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    xpc_dictionary_set_value(*(a1 + 88), v7, v6);
    v8 = xpc_null_create();
    xpc_release(v6);
    xpc_release(v8);
  }
}

void abm::trace::TraceInfo::notify(os_unfair_lock_s *this, const abm::trace::TraceInfoEntry *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN3abm5trace9TraceInfo6notifyERKNS0_14TraceInfoEntryE_block_invoke;
  v3[3] = &__block_descriptor_tmp_28_0;
  v3[4] = this;
  v3[5] = a2;
  os_unfair_lock_lock(this + 4);
  ___ZN3abm5trace9TraceInfo6notifyERKNS0_14TraceInfoEntryE_block_invoke(v3);
  os_unfair_lock_unlock(this + 4);
}

uint64_t abm::trace::TraceInfo::flushDataToDisk(abm::trace::TraceInfo *this)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(this + 7);
  if (v2)
  {
    xpc_retain(*(this + 7));
  }

  else
  {
    v2 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(this + 11), "Segments", v2);
  v3 = xpc_null_create();
  xpc_release(v2);
  xpc_release(v3);
  abm::trace::TraceInfo::convertStateTransitionArray(this, &value);
  v4 = value;
  xpc_dictionary_set_value(*(this + 11), "State Transition", value);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  value = 0;
  abm::trace::TraceInfo::getHeader(this, &object);
  v6 = *MEMORY[0x277CECBF0];
  xpc_dictionary_set_value(*(this + 11), *MEMORY[0x277CECBF0], object);
  v7 = object;
  object = xpc_null_create();
  xpc_release(v7);
  xpc_release(object);
  object = 0;
  abm::trace::TraceInfo::getTraceDataRateSummary(this, &v38);
  v8 = v38;
  xpc_dictionary_set_value(*(this + 11), "Trace Data Rate Summary", v38);
  v9 = xpc_null_create();
  v38 = v9;
  xpc_release(v8);
  xpc_release(v9);
  v10 = *(this + 11);
  v37 = v10;
  v38 = 0;
  if (v10)
  {
    xpc_retain(v10);
    v11 = (this + 32);
    if ((*(this + 55) & 0x80000000) == 0)
    {
LABEL_6:
      __p = *v11;
      goto LABEL_9;
    }
  }

  else
  {
    v37 = xpc_null_create();
    v11 = (this + 32);
    if ((*(this + 55) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(this + 4), *(this + 5));
LABEL_9:
  v12 = util::writeJSON(&v37, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v37);
  v37 = 0;
  v13 = *(this + 3);
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 55) < 0)
      {
        v11 = v11->__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v42 = v11;
      _os_log_impl(&dword_241A16000, v13, OS_LOG_TYPE_DEFAULT, "#I Written %s", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (*(this + 55) < 0)
    {
      v11 = v11->__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v42 = v11;
    _os_log_error_impl(&dword_241A16000, v13, OS_LOG_TYPE_ERROR, "Failed to store %s", buf, 0xCu);
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = MEMORY[0x277D86468];
  if (v14 || (v14 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CF6530](v14) == v15)
    {
      xpc_retain(v14);
      v16 = v14;
    }

    else
    {
      v16 = xpc_null_create();
    }
  }

  else
  {
    v16 = xpc_null_create();
    v14 = 0;
  }

  xpc_release(v14);
  if (MEMORY[0x245CF6530](v16) != v15)
  {
    v17 = *(this + 3);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Failed to create information dictionary!";
LABEL_62:
      _os_log_error_impl(&dword_241A16000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v19 = xpc_dictionary_get_value(*(this + 11), v6);
  v20 = v19;
  if (v19)
  {
    xpc_retain(v19);
LABEL_29:
    xpc_retain(v20);
    v21 = v20;
    goto LABEL_30;
  }

  v20 = xpc_null_create();
  if (v20)
  {
    goto LABEL_29;
  }

  v21 = xpc_null_create();
  v20 = 0;
LABEL_30:
  xpc_dictionary_set_value(v16, v6, v21);
  v22 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v20);
  xpc_release(v21);
  if (v16)
  {
    xpc_retain(v16);
    v23 = v16;
  }

  else
  {
    v23 = xpc_null_create();
  }

  v24 = *(this + 11);
  *(this + 11) = v23;
  xpc_release(v24);
  v25 = xpc_array_create(0, 0);
  v26 = MEMORY[0x277D86440];
  if (v25 || (v25 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CF6530](v25) == v26)
    {
      xpc_retain(v25);
      v27 = v25;
    }

    else
    {
      v27 = xpc_null_create();
    }
  }

  else
  {
    v27 = xpc_null_create();
    v25 = 0;
  }

  xpc_release(v25);
  v28 = xpc_null_create();
  v29 = *(this + 7);
  *(this + 7) = v27;
  xpc_release(v29);
  xpc_release(v28);
  if (MEMORY[0x245CF6530](*(this + 7)) == v26)
  {
    v32 = (this + 64);
    v33 = *(this + 8);
    if (!v33)
    {
LABEL_57:
      *v32 = 0;
      *(this + 9) = 0;
      *(this + 10) = 0;
      goto LABEL_43;
    }

    v34 = *(this + 9);
    v35 = *(this + 8);
    if (v34 == v33)
    {
LABEL_56:
      *(this + 9) = v33;
      operator delete(v35);
      *v32 = 0;
      *(this + 9) = 0;
      *(this + 10) = 0;
      goto LABEL_57;
    }

    while (1)
    {
      if (*(v34 - 1) < 0)
      {
        operator delete(*(v34 - 24));
        if (*(v34 - 25) < 0)
        {
LABEL_47:
          operator delete(*(v34 - 48));
          if (*(v34 - 49) < 0)
          {
            goto LABEL_54;
          }

          goto LABEL_48;
        }
      }

      else if (*(v34 - 25) < 0)
      {
        goto LABEL_47;
      }

      if (*(v34 - 49) < 0)
      {
LABEL_54:
        operator delete(*(v34 - 72));
      }

LABEL_48:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v34 - 96, *(v34 - 88));
      v34 -= 104;
      if (v34 == v33)
      {
        v35 = *v32;
        goto LABEL_56;
      }
    }
  }

  v17 = *(this + 3);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v18 = "Failed to create information segment array!";
    goto LABEL_62;
  }

LABEL_42:
  v12 = 0;
LABEL_43:
  xpc_release(v16);
  v30 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_241A5A32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abm::trace::TraceInfo::convertStateTransitionArray(abm::trace::TraceInfo *this@<X0>, xpc_object_t *a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = xpc_array_create(0, 0);
  v5 = MEMORY[0x277D86440];
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CF6530](v4) == v5)
    {
      xpc_retain(v4);
      v6 = v4;
    }

    else
    {
      v6 = xpc_null_create();
    }
  }

  else
  {
    v6 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  if (MEMORY[0x245CF6530](v6) == v5)
  {
    v9 = *(this + 8);
    v8 = *(this + 9);
    if (v9 == v8)
    {
LABEL_48:
      *a2 = v6;
      v6 = xpc_null_create();
      goto LABEL_49;
    }

    v10 = MEMORY[0x277D86468];
    while (1)
    {
      v11 = xpc_dictionary_create(0, 0, 0);
      if (v11 || (v11 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x245CF6530](v11) == v10)
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
      v13 = MEMORY[0x245CF6530](v12);
      if (v13 == v10)
      {
        break;
      }

      v14 = *(this + 3);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v26 = *v9;
        v27 = "Unknown";
        if (v26 <= 0xF)
        {
          v27 = off_278D04CF8[v26];
        }

        *__p = 136315138;
        *&__p[4] = v27;
        _os_log_error_impl(&dword_241A16000, v14, OS_LOG_TYPE_ERROR, "Failed to create entry dictionary for %s!", __p, 0xCu);
      }

      *a2 = xpc_null_create();
LABEL_42:
      xpc_release(v12);
      if (v13 != v10)
      {
        goto LABEL_49;
      }

      v9 += 26;
      if (v9 == v8)
      {
        goto LABEL_48;
      }
    }

    Timestamp::asString((v9 + 2), 0, 9);
    if (v30 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = *__p;
    }

    v16 = xpc_string_create(v15);
    if (!v16)
    {
      v16 = xpc_null_create();
    }

    xpc_dictionary_set_value(v12, "Timestamp", v16);
    v17 = xpc_null_create();
    xpc_release(v16);
    xpc_release(v17);
    if (v30 < 0)
    {
      operator delete(*__p);
      v18 = (v9 + 8);
      v19 = *(v9 + 55);
      if ((v19 & 0x80000000) == 0)
      {
LABEL_29:
        if (!v19)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v18 = (v9 + 8);
      v19 = *(v9 + 55);
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    if (!*(v9 + 5))
    {
LABEL_37:
      v22 = *v9;
      v23 = "Unknown";
      if (v22 <= 0xF)
      {
        v23 = off_278D04CF8[v22];
      }

      v24 = xpc_string_create(v23);
      if (!v24)
      {
        v24 = xpc_null_create();
      }

      xpc_dictionary_set_value(v12, "Action", v24);
      v25 = xpc_null_create();
      xpc_release(v24);
      xpc_release(v25);
      xpc_array_append_value(v6, v12);
      goto LABEL_42;
    }

    v18 = *v18;
LABEL_34:
    v20 = xpc_string_create(v18);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    xpc_dictionary_set_value(v12, "Detail", v20);
    v21 = xpc_null_create();
    xpc_release(v20);
    xpc_release(v21);
    goto LABEL_37;
  }

  v7 = *(this + 3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *__p = 0;
    _os_log_error_impl(&dword_241A16000, v7, OS_LOG_TYPE_ERROR, "Failed to create entry array!", __p, 2u);
  }

  *a2 = xpc_null_create();
LABEL_49:
  xpc_release(v6);
  v28 = *MEMORY[0x277D85DE8];
}

void sub_241A5A7F4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abm::trace::TraceInfo::getHeader(abm::trace::TraceInfo *this@<X0>, xpc_object_t *a2@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *a2 = xpc_null_create();
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v4 = off_27E5523B8;
  if (!off_27E5523B8)
  {
    v5 = operator new(0x60uLL);
    strcpy(v5, "/private/var/wireless/Library/Preferences/com.apple.AppleBasebandManager.Statistics.plist");
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&__p.st_blksize = v6;
    *__p.st_qspare = v6;
    __p.st_birthtimespec = v6;
    *&__p.st_size = v6;
    __p.st_mtimespec = v6;
    __p.st_ctimespec = v6;
    *&__p.st_uid = v6;
    __p.st_atimespec = v6;
    *&__p.st_dev = v6;
    if (!stat(v5, &__p) && remove(v5, v7))
    {
      unlink(v5);
    }

    v8 = operator new(0x30uLL);
    MEMORY[0x245CF55F0](v8, @"com.apple.AppleBasebandManager.data", *MEMORY[0x277CBF040]);
    v8[3] = 0;
    v8[4] = 0;
    *(v8 + 10) = 0;
    *&__p.st_dev = v8;
    v9 = operator new(0x20uLL);
    v10 = v9;
    v9[2] = 0;
    v9[1] = 0;
    *v9 = &unk_2853A3BC8;
    v9[3] = v8;
    *&__p.st_dev = 0;
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v9 + 2, 1uLL, memory_order_relaxed);
    v8[3] = v8;
    v8[4] = v9;
    if (!atomic_fetch_add(v9 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v9 + 16))(v9);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *&__p.st_dev;
    if (*&__p.st_dev)
    {
      v12 = *(*&__p.st_dev + 32);
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      v13 = MEMORY[0x245CF5600](v11);
      operator delete(v13);
    }

    operator delete(v5);
    v14 = off_27E5523C0;
    off_27E5523B8 = v8;
    off_27E5523C0 = v10;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v4 = off_27E5523B8;
  }

  *&buf = v4;
  *(&buf + 1) = off_27E5523C0;
  if (off_27E5523C0)
  {
    atomic_fetch_add_explicit(off_27E5523C0 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v15 = *MEMORY[0x277CECBF0];
  v16 = strlen(*MEMORY[0x277CECBF0]);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v16 | 7) + 1;
    }

    p_p = operator new(v19);
    __p.st_ino = v17;
    *&__p.st_uid = v19 | 0x8000000000000000;
    *&__p.st_dev = p_p;
    goto LABEL_25;
  }

  HIBYTE(__p.st_gid) = v16;
  p_p = &__p;
  if (v16)
  {
LABEL_25:
    memmove(p_p, v15, v17);
  }

  *(&p_p->st_dev + v17) = 0;
  os_unfair_lock_lock(v4 + 10);
  if ((__p.st_gid & 0x80000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = *&__p.st_dev;
  }

  ctu::cf::MakeCFString::MakeCFString(&v43, v20);
  v21 = (**&v4->_os_unfair_lock_opaque)(v4, v43);
  v22 = v21;
  if (v21)
  {
    v23 = CFGetTypeID(v21);
    if (v23 == CFDictionaryGetTypeID())
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    CFRelease(v22);
    MEMORY[0x245CF55C0](&v43);
    os_unfair_lock_unlock(v4 + 10);
    if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
    {
LABEL_34:
      v25 = *(&buf + 1);
      if (!*(&buf + 1))
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v24 = 0;
    MEMORY[0x245CF55C0](&v43);
    os_unfair_lock_unlock(v4 + 10);
    if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  operator delete(*&__p.st_dev);
  v25 = *(&buf + 1);
  if (!*(&buf + 1))
  {
    goto LABEL_39;
  }

LABEL_38:
  if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
    if (!v24)
    {
      goto LABEL_52;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v24)
  {
    goto LABEL_52;
  }

LABEL_40:
  v43 = v24;
  CFRetain(v24);
  ctu::cf_to_xpc(&__p.st_dev, v24, v26);
  v27 = *&__p.st_dev;
  if (*&__p.st_dev && MEMORY[0x245CF6530](*&__p.st_dev) == MEMORY[0x277D86468])
  {
    xpc_retain(v27);
  }

  else
  {
    v27 = xpc_null_create();
  }

  v28 = xpc_null_create();
  v29 = *a2;
  *a2 = v27;
  xpc_release(v29);
  xpc_release(v28);
  xpc_release(*&__p.st_dev);
  v30 = xpc_string_create("<...>");
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(v27, *MEMORY[0x277CECBC8], v30);
  v31 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v31);
  v32 = xpc_string_create("<...>");
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  xpc_dictionary_set_value(v27, *MEMORY[0x277CECC10], v32);
  v33 = xpc_null_create();
  xpc_release(v32);
  xpc_release(v33);
  v34 = *(this + 3);
  if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_51;
  }

  v36 = MEMORY[0x245CF64D0](v27);
  memset(&__p, 170, 24);
  v37 = strlen(v36);
  if (v37 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v38 = v37;
  if (v37 >= 0x17)
  {
    if ((v37 | 7) == 0x17)
    {
      v40 = 25;
    }

    else
    {
      v40 = (v37 | 7) + 1;
    }

    v39 = operator new(v40);
    __p.st_ino = v38;
    *&__p.st_uid = v40 | 0x8000000000000000;
    *&__p.st_dev = v39;
    goto LABEL_61;
  }

  HIBYTE(__p.st_gid) = v37;
  v39 = &__p;
  if (v37)
  {
LABEL_61:
    memcpy(v39, v36, v38);
  }

  *(&v39->st_dev + v38) = 0;
  free(v36);
  v41 = &__p;
  if ((__p.st_gid & 0x80000000) != 0)
  {
    v41 = *&__p.st_dev;
  }

  LODWORD(buf) = 136315138;
  *(&buf + 4) = v41;
  _os_log_debug_impl(&dword_241A16000, v34, OS_LOG_TYPE_DEBUG, "#D Trace info header set to: %s", &buf, 0xCu);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v24 = v43;
  if (v43)
  {
LABEL_51:
    CFRelease(v24);
  }

LABEL_52:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_241A5AEC4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abm::trace::TraceInfo::getTraceDataRateSummary(NSObject **this@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = MEMORY[0x277D86468];
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CF6530](v4) == v5)
    {
      xpc_retain(v4);
      v6 = v4;
    }

    else
    {
      v6 = xpc_null_create();
    }
  }

  else
  {
    v6 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  if (MEMORY[0x245CF6530](v6) == v5)
  {
    TraceCollectionSummary = abm::trace::TraceInfo::getTraceCollectionSummary(this);
    v10 = v9;
    std::to_string(&v26, v9);
    v11 = std::string::append(&v26, " seconds");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v28 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v28 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = xpc_string_create(v13);
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, "Trace Snapshot Duration", v14);
    v15 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v15);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v26.__r_.__value_.__l.__data_);
LABEL_18:
    std::to_string(&v26, vcvtd_n_f64_s64(TraceCollectionSummary, 0x14uLL));
    v16 = std::string::append(&v26, " MB");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v28 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (v28 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    v19 = xpc_string_create(v18);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, "Trace Snapshot Size", v19);
    v20 = xpc_null_create();
    xpc_release(v19);
    xpc_release(v20);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    operator delete(v26.__r_.__value_.__l.__data_);
LABEL_25:
    std::to_string(&v26, (8 * TraceCollectionSummary) / v10 / 1000000.0);
    v21 = std::string::append(&v26, " Mbps");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v28 = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v28 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    v24 = xpc_string_create(v23);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, "Trace Average Data Rate", v24);
    v25 = xpc_null_create();
    xpc_release(v24);
    xpc_release(v25);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }
    }

    else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      *a2 = v6;
      v6 = xpc_null_create();
      goto LABEL_33;
    }

    operator delete(v26.__r_.__value_.__l.__data_);
    goto LABEL_32;
  }

  v7 = this[3];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&dword_241A16000, v7, OS_LOG_TYPE_ERROR, "Failed to create dictionary for trace data rate summary", __p, 2u);
  }

  *a2 = xpc_null_create();
LABEL_33:
  xpc_release(v6);
}

void sub_241A5B34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void abm::trace::TraceInfo::setHandler(os_unfair_lock_s *a1, int a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1174405120;
  v8 = ___ZN3abm5trace9TraceInfo10setHandlerENS0_14TraceInfoStateEN8dispatch8callbackIU13block_pointerFvNS0_14TraceInfoEntryEEEE_block_invoke;
  v9 = &__block_descriptor_tmp_12;
  v10 = a1;
  v13 = a2;
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  os_unfair_lock_lock(a1 + 4);
  v8(v7);
  os_unfair_lock_unlock(a1 + 4);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN3abm5trace9TraceInfo10setHandlerENS0_14TraceInfoStateEN8dispatch8callbackIU13block_pointerFvNS0_14TraceInfoEntryEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = (v2 + 104);
  v3 = *(v2 + 104);
  v5 = *(a1 + 56);
  if (!v3)
  {
    goto LABEL_95;
  }

  v6 = (v2 + 104);
  v7 = *(v2 + 104);
  do
  {
    if (*(v7 + 8) >= v5)
    {
      v6 = v7;
    }

    v7 = v7[*(v7 + 8) < v5];
  }

  while (v7);
  if (v6 == v4 || v5 < *(v6 + 8))
  {
    goto LABEL_95;
  }

  v8 = v6[1];
  if (v8)
  {
    v9 = v6[1];
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    v11 = v6;
    do
    {
      v10 = v11[2];
      v22 = *v10 == v11;
      v11 = v10;
    }

    while (!v22);
  }

  if (*(v2 + 96) != v6)
  {
    --*(v2 + 112);
    v12 = *v6;
    if (*v6)
    {
      goto LABEL_17;
    }

LABEL_24:
    v13 = v6;
    if (v8)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  *(v2 + 96) = v10;
  --*(v2 + 112);
  v12 = *v6;
  if (!*v6)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (!v8)
  {
    v8 = v12;
    v13 = v6;
    v14 = 0;
    v15 = v6[2];
    v12[2] = v15;
    v16 = *v15;
    if (*v15 == v6)
    {
      goto LABEL_26;
    }

LABEL_21:
    v15[1] = v8;
    v17 = *(v13 + 24);
    if (v13 == v6)
    {
      goto LABEL_36;
    }

LABEL_32:
    v18 = v6[2];
    v18[*v18 != v6] = v13;
    v13[2] = v18;
    v20 = *v6;
    v19 = v6[1];
    v20[2] = v13;
    *v13 = v20;
    v13[1] = v19;
    if (v19)
    {
      v19[2] = v13;
    }

    *(v13 + 24) = *(v6 + 24);
    if (v3 == v6)
    {
      v3 = v13;
    }

    goto LABEL_36;
  }

  do
  {
    v13 = v8;
    v8 = *v8;
  }

  while (v8);
  v8 = v13[1];
  if (!v8)
  {
LABEL_25:
    v15 = v13[2];
    v14 = 1;
    v16 = *v15;
    if (*v15 == v13)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = 0;
  v15 = v13[2];
  v8[2] = v15;
  v16 = *v15;
  if (*v15 != v13)
  {
    goto LABEL_21;
  }

LABEL_26:
  *v15 = v8;
  if (v13 == v3)
  {
    v16 = 0;
    v3 = v8;
    v17 = *(v13 + 24);
    if (v13 == v6)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v16 = v15[1];
  v17 = *(v13 + 24);
  if (v13 != v6)
  {
    goto LABEL_32;
  }

LABEL_36:
  if (!v3 || !v17)
  {
    goto LABEL_90;
  }

  if (!v14)
  {
    *(v8 + 24) = 1;
    goto LABEL_90;
  }

  while (1)
  {
    v23 = *(v16 + 2);
    v24 = *v23;
    v25 = *(v16 + 24);
    if (*v23 == v16)
    {
      break;
    }

    if ((*(v16 + 24) & 1) == 0)
    {
      *(v16 + 24) = 1;
      *(v23 + 24) = 0;
      v26 = *(v23 + 8);
      v27 = *v26;
      *(v23 + 8) = *v26;
      if (v27)
      {
        *(v27 + 16) = v23;
      }

      v28 = *(v23 + 16);
      v26[2] = v28;
      v28[*v28 != v23] = v26;
      *v26 = v23;
      *(v23 + 16) = v26;
      if (v3 == *v16)
      {
        v3 = v16;
      }

      v16 = *(*v16 + 8);
    }

    v29 = *v16;
    if (*v16 && v29[24] != 1)
    {
      v30 = *(v16 + 1);
      if (v30 && (v30[24] & 1) == 0)
      {
LABEL_81:
        v29 = v16;
      }

      else
      {
        v29[24] = 1;
        *(v16 + 24) = 0;
        v38 = *(v29 + 1);
        *v16 = v38;
        if (v38)
        {
          *(v38 + 16) = v16;
        }

        v39 = *(v16 + 2);
        v39[*v39 != v16] = v29;
        *(v29 + 1) = v16;
        *(v29 + 2) = v39;
        *(v16 + 2) = v29;
        v30 = v16;
      }

      v40 = *(v29 + 2);
      v29[24] = *(v40 + 24);
      *(v40 + 24) = 1;
      v30[24] = 1;
      v41 = *(v40 + 8);
      v42 = *v41;
      *(v40 + 8) = *v41;
      if (v42)
      {
        *(v42 + 16) = v40;
      }

      v43 = *(v40 + 16);
      v41[2] = v43;
      v43[*v43 != v40] = v41;
      *v41 = v40;
      goto LABEL_89;
    }

    v30 = *(v16 + 1);
    if (v30 && v30[24] != 1)
    {
      goto LABEL_81;
    }

    *(v16 + 24) = 0;
    v21 = *(v16 + 2);
    if (v21 == v3 || (v21[3] & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_44:
    v16 = *(v21[2] + (*v21[2] == v21));
  }

  if ((*(v16 + 24) & 1) == 0)
  {
    *(v16 + 24) = 1;
    *(v23 + 24) = 0;
    v31 = v24[1];
    *v23 = v31;
    if (v31)
    {
      *(v31 + 16) = v23;
    }

    v32 = *(v23 + 16);
    v32[*v32 != v23] = v24;
    v24[1] = v23;
    v24[2] = v32;
    *(v23 + 16) = v24;
    v33 = *(v16 + 1);
    if (v3 == v33)
    {
      v3 = v16;
    }

    v16 = *v33;
  }

  v34 = *v16;
  if (*v16 && v34[24] != 1)
  {
    goto LABEL_85;
  }

  v35 = *(v16 + 1);
  if (!v35 || v35[24] == 1)
  {
    *(v16 + 24) = 0;
    v21 = *(v16 + 2);
    v22 = *(v21 + 24) != 1 || v21 == v3;
    if (v22)
    {
LABEL_75:
      *(v21 + 24) = 1;
      goto LABEL_90;
    }

    goto LABEL_44;
  }

  if (v34 && (v34[24] & 1) == 0)
  {
LABEL_85:
    v35 = v16;
    goto LABEL_86;
  }

  v35[24] = 1;
  *(v16 + 24) = 0;
  v36 = *v35;
  *(v16 + 1) = *v35;
  if (v36)
  {
    *(v36 + 16) = v16;
  }

  v37 = *(v16 + 2);
  *(v35 + 2) = v37;
  v37[*v37 != v16] = v35;
  *v35 = v16;
  *(v16 + 2) = v35;
  v34 = v16;
LABEL_86:
  v40 = *(v35 + 2);
  v35[24] = *(v40 + 24);
  *(v40 + 24) = 1;
  v34[24] = 1;
  v41 = *v40;
  v44 = *(*v40 + 8);
  *v40 = v44;
  if (v44)
  {
    *(v44 + 16) = v40;
  }

  v45 = *(v40 + 16);
  v45[*v45 != v40] = v41;
  v41[1] = v40;
  v41[2] = v45;
LABEL_89:
  *(v40 + 16) = v41;
LABEL_90:
  v46 = v6[6];
  if (v46)
  {
    dispatch_release(v46);
  }

  v47 = v6[5];
  if (v47)
  {
    _Block_release(v47);
  }

  operator delete(v6);
  v5 = *(a1 + 56);
LABEL_95:
  v48 = *(a1 + 40);
  if (v48)
  {
    v49 = _Block_copy(v48);
    v50 = *(a1 + 48);
    if (v50)
    {
      goto LABEL_97;
    }
  }

  else
  {
    v49 = 0;
    v50 = *(a1 + 48);
    if (v50)
    {
LABEL_97:
      dispatch_retain(v50);
    }
  }

  v51 = *v4;
  v52 = (v2 + 104);
  if (*v4)
  {
    while (1)
    {
      while (1)
      {
        v52 = v51;
        v53 = *(v51 + 8);
        if (v53 <= v5)
        {
          break;
        }

        v51 = *v52;
        v4 = v52;
        if (!*v52)
        {
          goto LABEL_105;
        }
      }

      if (v53 >= v5)
      {
        break;
      }

      v51 = v52[1];
      if (!v51)
      {
        v4 = v52 + 1;
        goto LABEL_105;
      }
    }
  }

  else
  {
LABEL_105:
    v54 = operator new(0x38uLL);
    v54[8] = v5;
    if (v49)
    {
      *(v54 + 5) = _Block_copy(v49);
      *(v54 + 6) = v50;
      if (v50)
      {
        goto LABEL_107;
      }
    }

    else
    {
      *(v54 + 5) = 0;
      *(v54 + 6) = v50;
      if (v50)
      {
LABEL_107:
        dispatch_retain(v50);
      }
    }

    *v54 = 0;
    *(v54 + 1) = 0;
    *(v54 + 2) = v52;
    *v4 = v54;
    v55 = **(v2 + 96);
    if (v55)
    {
      *(v2 + 96) = v55;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 104), v54);
    ++*(v2 + 112);
  }

  if (v50)
  {
    dispatch_release(v50);
  }

  if (v49)
  {
    _Block_release(v49);
  }
}

void sub_241A5BA84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>::~pair(va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c73_ZTSN8dispatch8callbackIU13block_pointerFvN3abm5trace14TraceInfoEntryEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c73_ZTSN8dispatch8callbackIU13block_pointerFvN3abm5trace14TraceInfoEntryEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZN3abm5trace9TraceInfo6notifyERKNS0_14TraceInfoEntryE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(v1 + 104);
  v2 = v1 + 104;
  v3 = v4;
  if (v4)
  {
    v6 = **(a1 + 40);
    v7 = v2;
    do
    {
      if (*(v3 + 32) >= v6)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v6));
    }

    while (v3);
    if (v7 != v2 && v6 >= *(v7 + 32))
    {
      v8 = *(v7 + 40);
      if (v8)
      {
        v9 = _Block_copy(v8);
        v10 = v9;
        v11 = *(v7 + 48);
        v23 = v9;
        v24 = v11;
        if (!v11)
        {
          if (!v9)
          {
            return;
          }

          goto LABEL_34;
        }

        dispatch_retain(v11);
        if (v10)
        {
          abm::trace::TraceInfoEntry::TraceInfoEntry(v16, *(a1 + 40));
          v12 = _Block_copy(v10);
          v13 = v12;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 1174405120;
          block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3abm5trace14TraceInfoEntryEEEclIJS3_EEEvDpT__block_invoke;
          block[3] = &__block_descriptor_tmp_46;
          if (v12)
          {
            v14 = _Block_copy(v12);
          }

          else
          {
            v14 = 0;
          }

          aBlock = v14;
          abm::trace::TraceInfoEntry::TraceInfoEntry(&v27, v16);
          dispatch_async(v11, block);
          if (v35 < 0)
          {
            operator delete(__p);
            if ((v33 & 0x80000000) == 0)
            {
LABEL_21:
              if ((v31 & 0x80000000) == 0)
              {
                goto LABEL_22;
              }

              goto LABEL_26;
            }
          }

          else if ((v33 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          operator delete(v32);
          if ((v31 & 0x80000000) == 0)
          {
LABEL_22:
            std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v28, v29);
            v15 = aBlock;
            if (!aBlock)
            {
LABEL_28:
              if (v13)
              {
                _Block_release(v13);
              }

              if (v22 < 0)
              {
                operator delete(v21);
                if ((v20 & 0x80000000) == 0)
                {
LABEL_32:
                  if ((v18 & 0x80000000) == 0)
                  {
LABEL_33:
                    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v17, v17[1]);
                    dispatch_release(v11);
LABEL_34:
                    _Block_release(v10);
                    return;
                  }

LABEL_38:
                  operator delete(v17[3]);
                  goto LABEL_33;
                }
              }

              else if ((v20 & 0x80000000) == 0)
              {
                goto LABEL_32;
              }

              operator delete(v19);
              if ((v18 & 0x80000000) == 0)
              {
                goto LABEL_33;
              }

              goto LABEL_38;
            }

LABEL_27:
            _Block_release(v15);
            goto LABEL_28;
          }

LABEL_26:
          operator delete(v30);
          std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v28, v29);
          v15 = aBlock;
          if (!aBlock)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v11 = *(v7 + 48);
        if (!v11)
        {
          return;
        }

        dispatch_retain(v11);
      }

      dispatch_release(v11);
    }
  }
}

void sub_241A5BD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v29)
  {
    _Block_release(v29);
  }

  abm::trace::TraceInfoEntry::~TraceInfoEntry(&a10);
  dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>::~callback(&a23);
  _Unwind_Resume(a1);
}

void sub_241A5BDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>::~callback(va);
  _Unwind_Resume(a1);
}

uint64_t abm::trace::TraceInfo::getTraceCollectionSummary(abm::trace::TraceInfo *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (MEMORY[0x245CF6530](*(this + 7)) == MEMORY[0x277D86440])
  {
    v4 = *(this + 7);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = ___ZN3abm5trace9TraceInfo25getTraceCollectionSummaryEv_block_invoke;
    v11[3] = &unk_278D04CD8;
    v11[4] = &v20;
    v11[5] = &v16;
    v11[6] = &v12;
    v11[7] = this;
    xpc_array_apply(v4, v11);
    v5 = v17[3];
    v6 = v21[3];
    v7 = v5 - v6;
    if (v5 <= v6)
    {
      v8 = *(this + 3);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v25 = v7;
        _os_log_debug_impl(&dword_241A16000, v8, OS_LOG_TYPE_DEBUG, "#D Warning: duration (%lld) is less than 1", buf, 0xCu);
      }
    }

    v3 = v13[3];
  }

  else
  {
    v2 = *(this + 3);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_241A16000, v2, OS_LOG_TYPE_ERROR, "Null segments", buf, 2u);
    }

    v3 = 0;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_241A5BFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

BOOL ___ZN3abm5trace9TraceInfo25getTraceCollectionSummaryEv_block_invoke(void *a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a1[7];
  if (MEMORY[0x245CF6530](a3) != MEMORY[0x277D86468])
  {
    v6 = *(v5 + 24);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_241A16000, v6, OS_LOG_TYPE_ERROR, "Wrong value type for segments", &buf, 2u);
      result = 0;
    }

    goto LABEL_39;
  }

  memset(&__dst, 170, sizeof(__dst));
  string = xpc_dictionary_get_string(a3, "Timestamp");
  v9 = strlen(string);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
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

    p_dst = operator new(v13);
    __dst.__r_.__value_.__l.__size_ = v10;
    __dst.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v9;
    p_dst = &__dst;
    if (!v9)
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v12 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  memmove(p_dst, string, v10);
  p_dst->__r_.__value_.__s.__data_[v10] = 0;
  v12 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_8:
    if (v12)
    {
      __p = __dst;
      goto LABEL_17;
    }

LABEL_26:
    v22 = *(v5 + 24);
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "Timestamp";
      _os_log_error_impl(&dword_241A16000, v22, OS_LOG_TYPE_ERROR, "Cannot find key %s", &buf, 0xCu);
      result = 0;
    }

    goto LABEL_37;
  }

LABEL_15:
  if (!__dst.__r_.__value_.__l.__size_)
  {
    goto LABEL_26;
  }

  std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_17:
  v14 = Timestamp::convert(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v15 = *(v5 + 24);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
LABEL_19:
      v16 = *(a1[5] + 8);
      if (v14 < *(v16 + 24))
      {
        goto LABEL_20;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v15 = *(v5 + 24);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }
  }

  v28 = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = __dst.__r_.__value_.__r.__words[0];
  }

  v29 = *(*(a1[4] + 8) + 24);
  v30 = *(*(a1[5] + 8) + 24);
  LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
  *(buf.__r_.__value_.__r.__words + 4) = v28;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v14;
  HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
  v39 = v29;
  v40 = 2048;
  v41 = v30;
  _os_log_debug_impl(&dword_241A16000, v15, OS_LOG_TYPE_DEBUG, "#D Timestamp string: %s, timestamp count: %lld, first timestamp: %lld, last timestamp: %lld", &buf, 0x2Au);
  v16 = *(a1[5] + 8);
  if (v14 < *(v16 + 24))
  {
LABEL_20:
    v17 = *(a1[4] + 8);
    if (v14 > *(v17 + 24))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_44:
  *(v16 + 24) = v14;
  v17 = *(a1[4] + 8);
  if (v14 <= *(v17 + 24))
  {
LABEL_21:
    *(v17 + 24) = v14;
  }

LABEL_22:
  memset(&buf, 170, sizeof(buf));
  v18 = xpc_dictionary_get_string(a3, "File Size");
  v19 = strlen(v18);
  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v19 | 7) + 1;
    }

    p_buf = operator new(v23);
    buf.__r_.__value_.__l.__size_ = v20;
    buf.__r_.__value_.__r.__words[2] = v23 | 0x8000000000000000;
    buf.__r_.__value_.__r.__words[0] = p_buf;
    goto LABEL_32;
  }

  *(&buf.__r_.__value_.__s + 23) = v19;
  p_buf = &buf;
  if (v19)
  {
LABEL_32:
    memmove(p_buf, v18, v20);
  }

  p_buf->__r_.__value_.__s.__data_[v20] = 0;
  v24 = std::stoll(&buf, 0, 10);
  *(*(a1[6] + 8) + 24) += v24;
  v25 = *(v5 + 24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(*(a1[6] + 8) + 24);
    *v34 = 134218240;
    v35 = v31;
    v36 = 2048;
    v37 = v24;
    _os_log_debug_impl(&dword_241A16000, v25, OS_LOG_TYPE_DEBUG, "#D Total bytes received: %lld, current file size: %lld", v34, 0x16u);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_35:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_36:
  result = 1;
LABEL_37:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v26 = result;
    operator delete(__dst.__r_.__value_.__l.__data_);
    result = v26;
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241A5C470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

abm::trace::TraceInfoEntry *abm::trace::TraceInfoEntry::TraceInfoEntry(abm::trace::TraceInfoEntry *this, const abm::trace::TraceInfoEntry *a2)
{
  *this = *a2;
  v4 = (this + 32);
  Timestamp::Timestamp((this + 8), a2 + 1);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 6);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(this + 9) = *(a2 + 9);
    *(this + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v7 = *(a2 + 5);
    *(this + 12) = *(a2 + 12);
    *(this + 5) = v7;
  }

  return this;
}

void sub_241A5C7FC(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v1 + 8, *(v1 + 16));
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v1 + 8, *(v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t std::pair<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>::~callback(uint64_t a1)
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

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<abm::trace::TraceInfo *,std::shared_ptr<abm::trace::TraceInfo>::__shared_ptr_default_delete<abm::trace::TraceInfo,abm::trace::TraceInfo>,std::allocator<abm::trace::TraceInfo>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abm::trace::TraceInfo *,std::shared_ptr<abm::trace::TraceInfo>::__shared_ptr_default_delete<abm::trace::TraceInfo,abm::trace::TraceInfo>,std::allocator<abm::trace::TraceInfo>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    abm::trace::TraceInfo::~TraceInfo(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<abm::trace::TraceInfo *,std::shared_ptr<abm::trace::TraceInfo>::__shared_ptr_default_delete<abm::trace::TraceInfo,abm::trace::TraceInfo>,std::allocator<abm::trace::TraceInfo>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000241A66E07)
  {
    if (((v2 & 0x8000000241A66E07 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000241A66E07))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000241A66E07 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

abm::trace::TraceInfo **std::unique_ptr<abm::trace::TraceInfo>::~unique_ptr[abi:ne200100](abm::trace::TraceInfo **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    abm::trace::TraceInfo::~TraceInfo(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void **std::vector<abm::trace::TraceInfoEntry>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_13:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if ((*(v3 - 25) & 0x80000000) == 0)
        {
LABEL_7:
          if (*(v3 - 49) < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_4;
        }
      }

      else if ((*(v3 - 25) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 6));
      if (*(v3 - 49) < 0)
      {
LABEL_11:
        operator delete(*(v3 - 9));
      }

LABEL_4:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((v3 - 12), *(v3 - 11));
      v3 -= 13;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }

  return a1;
}

void std::__tree<std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>,std::__map_value_compare<abm::trace::TraceInfoState,std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>,std::less<abm::trace::TraceInfoState>,true>,std::allocator<std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>,std::__map_value_compare<abm::trace::TraceInfoState,std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>,std::less<abm::trace::TraceInfoState>,true>,std::allocator<std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>>>::destroy(*a1);
    std::__tree<std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>,std::__map_value_compare<abm::trace::TraceInfoState,std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>,std::less<abm::trace::TraceInfoState>,true>,std::allocator<std::__value_type<abm::trace::TraceInfoState,dispatch::callback<void({block_pointer})(abm::trace::TraceInfoEntry)>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(a1);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<abm::trace::TraceInfoEntry>,abm::trace::TraceInfoEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    while (v4 != v5)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
        if ((*(v4 - 25) & 0x80000000) == 0)
        {
LABEL_7:
          if (*(v4 - 49) < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_4;
        }
      }

      else if ((*(v4 - 25) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v4 - 48));
      if (*(v4 - 49) < 0)
      {
LABEL_11:
        operator delete(*(v4 - 72));
      }

LABEL_4:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v4 - 96, *(v4 - 88));
      v4 -= 104;
    }
  }

  return a1;
}

uint64_t std::__split_buffer<abm::trace::TraceInfoEntry>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if (*(i - 25) < 0)
      {
LABEL_9:
        operator delete(*(i - 48));
        if ((*(i - 49) & 0x80000000) == 0)
        {
          goto LABEL_2;
        }

        goto LABEL_10;
      }
    }

    else if (*(i - 25) < 0)
    {
      goto LABEL_9;
    }

    if ((*(i - 49) & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

LABEL_10:
    operator delete(*(i - 72));
LABEL_2:
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(i - 96, *(i - 88));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3abm5trace14TraceInfoEntryEEEclIJS3_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  abm::trace::TraceInfoEntry::TraceInfoEntry(v2, (a1 + 40));
  (*(v1 + 16))(v1, v2);
  if ((v8 & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v5);
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    operator delete(v3[3]);
    goto LABEL_4;
  }

  operator delete(__p);
  if (v6 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v3, v3[1]);
}

void sub_241A5CD5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abm::trace::TraceInfoEntry::~TraceInfoEntry(va);
  _Unwind_Resume(a1);
}

abm::trace::TraceInfoEntry *__copy_helper_block_e8_32c70_ZTSN8dispatch5blockIU13block_pointerFvN3abm5trace14TraceInfoEntryEEEE40c32_ZTSN3abm5trace14TraceInfoEntryE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;
  return abm::trace::TraceInfoEntry::TraceInfoEntry((a1 + 40), (a2 + 40));
}

void sub_241A5CDB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c70_ZTSN8dispatch5blockIU13block_pointerFvN3abm5trace14TraceInfoEntryEEEE40c32_ZTSN3abm5trace14TraceInfoEntryE(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 72));
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1 + 48, *(a1 + 56));
      v2 = *(a1 + 32);
      if (!v2)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 96));
  if (*(a1 + 95) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_9:
    _Block_release(v2);
  }
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = MEMORY[0x245CF5600](v1);

    operator delete(v3);
  }
}

uint64_t std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000241A66ED4)
  {
    if (((v2 & 0x8000000241A66ED4 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000241A66ED4))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000241A66ED4 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = MEMORY[0x245CF5600](v1);
    operator delete(v4);
    return v2;
  }

  return result;
}

uint64_t __cxx_global_var_init_8()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_241A16000);
  }

  return result;
}

uint64_t __cxx_global_var_init_40()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_241A16000);
  }

  return result;
}

void TraceFileCollection::create(TraceFileCollection *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x128uLL);
  TraceFileCollection::TraceFileCollection(v5, this);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<TraceFileCollection>::shared_ptr[abi:ne200100]<TraceFileCollection,std::shared_ptr<TraceFileCollection> ctu::SharedSynchronizable<TraceFileCollection>::make_shared_ptr<TraceFileCollection>(TraceFileCollection*)::{lambda(TraceFileCollection*)#1},0>(a2, v5);
  v6 = *a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN19TraceFileCollection4initEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_7;
  v8[4] = v6;
  v9 = v8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = v6;
  block[5] = &v9;
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    dispatch_async_and_wait(v7, block);
  }

  else
  {
    dispatch_sync(v7, block);
  }
}

void TraceFileCollection::init(TraceFileCollection *this)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN19TraceFileCollection4initEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_7;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
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

void TraceFileCollection::TraceFileCollection(TraceFileCollection *this, const TraceFileCollection::Parameters *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  label[17] = -86;
  v35 = -21846;
  v36 = 279620266;
  strcpy(label, "trace.collection");
  v4 = *(a2 + 29);
  v31 = 0x10AAAAAAAAAAAA00;
  *__p = *"trace.collection";
  ctu::OsLogContext::OsLogContext(v32, "com.apple.telephony.abm", __p);
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2(label, initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, v4, 0);
  dispatch_activate(v6);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(this + 3) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(this + 3) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x245CF5540](this + 32, v33);
  MEMORY[0x245CF5550](v33);
  ctu::OsLogContext::~OsLogContext(v32);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    operator delete(*label);
    *(this + 20) = *a2;
    v7 = this + 40;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v36) < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(this + 20) = *a2;
  v7 = this + 40;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
LABEL_7:
    v8 = *(a2 + 8);
    *(v7 + 3) = *(a2 + 3);
    *(v7 + 8) = v8;
    goto LABEL_11;
  }

LABEL_10:
  std::string::__init_copy_ctor_external((v7 + 8), *(a2 + 1), *(a2 + 2));
LABEL_11:
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v10 = *(a2 + 4);
  v9 = *(a2 + 5);
  v11 = v9 - v10;
  if (v9 != v10)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
    }

    v12 = operator new(v9 - v10);
    *(this + 9) = v12;
    *(this + 10) = v12;
    v13 = &v12[v11];
    *(this + 11) = &v12[v11];
    memcpy(v12, v10, v11);
    *(this + 10) = v13;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v14 = *(a2 + 56);
    *(this + 14) = *(a2 + 9);
    *(this + 6) = v14;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v15 = *(a2 + 5);
    *(this + 17) = *(a2 + 12);
    *(this + 120) = v15;
  }

  v16 = *(a2 + 104);
  *(this + 40) = *(a2 + 30);
  *(this + 9) = v16;
  *(this + 21) = *(a2 + 27);
  *(this + 44) = 0;
  *(this + 27) = 0;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  Timestamp::Timestamp((this + 224));
  *(this + 31) = 0;
  *(this + 32) = 0;
  v17 = dispatch_queue_attr_make_with_qos_class(0, *(a2 + 30), 0);
  *(this + 33) = dispatch_queue_create("trace.collection.writer", v17);
  v18 = dispatch_group_create();
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = v18;
  v19 = 2 * *(this + 37) * *(this + 38);
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0x800000;
  }

  v21 = *(this + 4);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *label = 134217984;
    *&label[4] = v20;
    _os_log_impl(&dword_241A16000, v21, OS_LOG_TYPE_DEFAULT, "#I Setting zone size: %lu", label, 0xCu);
  }

  HIBYTE(v29[2]) = 19;
  strcpy(v29, "BasebandLoggingZone");
  MallocZone::create(v29, v20, label);
  v22 = *label;
  *label = 0;
  *&label[8] = 0;
  v23 = *(this + 32);
  *(this + 248) = v22;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *&label[8];
  if (!*&label[8] || atomic_fetch_add((*&label[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v29[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  if (SHIBYTE(v29[2]) < 0)
  {
LABEL_31:
    operator delete(v29[0]);
  }

LABEL_32:
  v25 = *(this + 36);
  v26 = *(this + 4);
  v27 = (v25 << 10) / (*(this + 38) >> 10);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *label = 67109376;
    *&label[4] = v27;
    *&label[8] = 1024;
    *&label[10] = v25;
    _os_log_impl(&dword_241A16000, v26, OS_LOG_TYPE_DEFAULT, "#I ctor: Adjusting max file count as %u from the history size, %u", label, 0xEu);
  }

  *(this + 36) = v27;
  v28 = *MEMORY[0x277D85DE8];
}

void sub_241A5D670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 + 119) < 0)
  {
    operator delete(*(v27 + 96));
  }

  TraceFileCollection::HeaderOptions::~HeaderOptions(v28);
  MEMORY[0x245CF5550](v27 + 32);
  ctu::SharedSynchronizable<TCP>::~SharedSynchronizable(v27);
  _Unwind_Resume(a1);
}

double TraceFileCollection::getName@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0x10AAAAAAAAAAAA00;
  result = *"trace.collection";
  *a1 = *"trace.collection";
  return result;
}

void TraceFileCollection::getFileIndex_sync(TraceFileCollection *this, unsigned int *a2, unsigned int *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v6;
  v59 = v6;
  *&v56[0].__locale_ = v6;
  v57 = v6;
  v46[23] = 18;
  strcpy(v46, "(0x[0-9a-fA-F]{8})");
  v7 = *(this + 119);
  if (v7 >= 0)
  {
    v8 = this + 96;
  }

  else
  {
    v8 = *(this + 12);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 119);
  }

  else
  {
    v9 = *(this + 13);
  }

  v10 = std::string::append(v46, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  *&__dst[16] = *(&v10->__r_.__value_.__l + 2);
  *__dst = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v56, __dst, 0);
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if ((v46[23] & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_60:
    operator delete(*v46);
    goto LABEL_9;
  }

  if ((v46[23] & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_9:
  __p = 0;
  v54 = 0;
  v55 = 0;
  support::fs::readDir(this + 120, &__p);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v49 = 0xAAAAAAAAAAAAAA00;
  v51 = v12;
  v48 = 0;
  v50 = 0uLL;
  LOBYTE(v51) = 0;
  BYTE8(v51) = 0;
  v52 = 0;
  memset(v46, 0, sizeof(v46));
  v13 = __p;
  v14 = v54;
  if (__p == v54)
  {
    *a2 = 0;
    *a3 = 0;
    v39 = __p;
    if (!__p)
    {
      goto LABEL_57;
    }

    goto LABEL_62;
  }

  v43 = a3;
  v15 = 0;
  v16 = 0;
  v17 = &v47;
  v18 = 1;
  do
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v67 = v19;
    v64 = 0xAAAAAAAAAAAAAA00;
    v61 = 0xAAAAAAAAAAAAAAAALL;
    v62 = 0;
    v63 = 0;
    v65 = 0;
    v66 = 0;
    LOBYTE(v67) = 0;
    BYTE8(v67) = 0;
    v68 = 0;
    memset(__dst, 0, sizeof(__dst));
    second = *(&v13->matched + 7);
    if (second >= 0)
    {
      first = v13;
    }

    else
    {
      first = v13->first;
    }

    if (second < 0)
    {
      second = v13->second;
    }

    v22 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v56, first, &second[first], __dst, 0);
    v23 = *(&v13->matched + 7);
    if (v23 >= 0)
    {
      v24 = v13;
    }

    else
    {
      v24 = v13->first;
    }

    if (v23 < 0)
    {
      v23 = v13->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v46, v24, &v23[v24], __dst, 0);
    if (*__dst)
    {
      *&__dst[8] = *__dst;
      operator delete(*__dst);
    }

    if (v22)
    {
      memset(__dst, 170, 24);
      v25 = (*v46 + 16);
      if (*&v46[8] == *v46)
      {
        v25 = v17;
      }

      if (*v25 != 1)
      {
        memset(__dst, 0, 24);
        goto LABEL_39;
      }

      v26 = &v46[24];
      if (*&v46[8] != *v46)
      {
        v26 = *v46;
      }

      v27 = *v26;
      v28 = (*v46 + 8);
      if (*&v46[8] == *v46)
      {
        v28 = &v46[32];
      }

      v29 = *v28;
      v30 = *v28 - v27;
      if (v30 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v45 = v18;
      if (v30 > 0x16)
      {
        v44 = v16;
        v34 = v17;
        v35 = v14;
        v36 = v15;
        if ((v30 | 7) == 0x17)
        {
          v37 = 25;
        }

        else
        {
          v37 = (v30 | 7) + 1;
        }

        v31 = operator new(v37);
        *&__dst[8] = v30;
        *&__dst[16] = v37 | 0x8000000000000000;
        *__dst = v31;
        v15 = v36;
        v14 = v35;
        v17 = v34;
        v16 = v44;
        if (v29 == v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
        __dst[23] = *v28 - v27;
        v31 = __dst;
        if (v29 == v27)
        {
LABEL_37:
          v31[v30] = 0;
          v18 = v45;
LABEL_39:
          v32 = std::stol(__dst, 0, 16);
          if (v18)
          {
            v33 = v32;
          }

          else
          {
            v33 = v15;
          }

          if (v33 >= v32)
          {
            v15 = v32;
          }

          else
          {
            v15 = v33;
          }

          if (v16 <= v32)
          {
            v16 = v32;
          }

          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          v18 = 0;
          goto LABEL_12;
        }
      }

      memmove(v31, v27, v30);
      goto LABEL_37;
    }

LABEL_12:
    ++v13;
  }

  while (v13 != v14);
  v38 = *v46;
  *a2 = v15;
  *v43 = v16;
  if (v38)
  {
    *&v46[8] = v38;
    operator delete(v38);
  }

  v39 = __p;
  if (!__p)
  {
LABEL_57:
    v40 = v59;
    if (!v59)
    {
      goto LABEL_71;
    }

LABEL_69:
    if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    goto LABEL_71;
  }

LABEL_62:
  v41 = v54;
  if (v54 == v39)
  {
    v54 = v39;
    operator delete(v39);
    v40 = v59;
    if (!v59)
    {
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  do
  {
    v42 = *(v41 - 1);
    v41 -= 3;
    if (v42 < 0)
    {
      operator delete(*v41);
    }
  }

  while (v41 != v39);
  v54 = v39;
  operator delete(__p);
  v40 = v59;
  if (v59)
  {
    goto LABEL_69;
  }

LABEL_71:
  std::locale::~locale(v56);
}

void sub_241A5DC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, std::locale a36)
{
  std::vector<std::string>::~vector[abi:ne200100](&a33);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a36);
  _Unwind_Resume(a1);
}

uint64_t ___ZN19TraceFileCollection4initEv_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v3 = xmmword_27E552210;
  if (!xmmword_27E552210)
  {
    ctu::XpcJetsamAssertion::create_default_global(&buf.st_dev, v2);
    v4 = *&buf.st_dev;
    *&buf.st_dev = 0;
    buf.st_ino = 0;
    v5 = *(&xmmword_27E552210 + 1);
    xmmword_27E552210 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    st_ino = buf.st_ino;
    if (buf.st_ino && !atomic_fetch_add((buf.st_ino + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (st_ino->__on_zero_shared)(st_ino);
      std::__shared_weak_count::__release_weak(st_ino);
    }

    v3 = xmmword_27E552210;
  }

  v30 = v3;
  v31 = *(&xmmword_27E552210 + 1);
  if (*(&xmmword_27E552210 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_27E552210 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v29 = 21;
  strcpy(__p, "Trace File Collection");
  ctu::XpcJetsamAssertion::createActivity();
  v7 = v32;
  v32 = 0uLL;
  v8 = *(v1 + 288);
  *(v1 + 280) = v7;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = *(&v32 + 1);
    if (!*(&v32 + 1))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = *(&v32 + 1);
    if (!*(&v32 + 1))
    {
      goto LABEL_15;
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (v29 < 0)
  {
LABEL_16:
    operator delete(*__p);
  }

LABEL_17:
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  if (*(v1 + 280))
  {
    v10 = *(v1 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.st_dev) = 0;
      _os_log_impl(&dword_241A16000, v10, OS_LOG_TYPE_DEFAULT, "#I Taking Trace File Collection Assertion", &buf, 2u);
    }
  }

  TraceFileCollection::registerForMemoryPressure_sync(v1);
  v11 = (v1 + 120);
  v12 = *(v1 + 143);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v12 - 1;
    v14 = v1 + 120;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    if (*(*v11 + v13) == 47)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v13 = *(v1 + 128) - 1;
  v14 = v1 + 120;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (*(v14 + v13) != 47)
  {
LABEL_29:
    std::string::push_back((v1 + 120), 47);
    LOBYTE(v12) = *(v1 + 143);
  }

LABEL_30:
  v15.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v15.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&buf.st_blksize = v15;
  *buf.st_qspare = v15;
  buf.st_birthtimespec = v15;
  *&buf.st_size = v15;
  buf.st_mtimespec = v15;
  buf.st_ctimespec = v15;
  *&buf.st_uid = v15;
  buf.st_atimespec = v15;
  *&buf.st_dev = v15;
  if ((v12 & 0x80u) == 0)
  {
    v16 = (v1 + 120);
  }

  else
  {
    v16 = *v11;
  }

  if (!stat(v16, &buf))
  {
    v23 = *(v1 + 143) >= 0 ? (v1 + 120) : *(v1 + 120);
    v24 = opendir(v23);
    v25 = v24;
    if (v24)
    {
      v26 = readdir(v24);
      closedir(v25);
      if (v26)
      {
        TraceFileCollection::getFileIndex_sync(v1, (v1 + 200), (v1 + 204));
      }
    }
  }

  v17 = *(v1 + 32);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(v1 + 200);
    v19 = *(v1 + 204);
    buf.st_dev = 67109376;
    *&buf.st_mode = v18;
    LOWORD(buf.st_ino) = 1024;
    *(&buf.st_ino + 2) = v19;
    _os_log_impl(&dword_241A16000, v17, OS_LOG_TYPE_DEFAULT, "#I Init file index: fOldestFileNumber=%d, fNewestFileNumber=%d", &buf, 0xEu);
  }

  if (*(v1 + 200) || *(v1 + 204))
  {
    v20 = 1;
  }

  else
  {
    support::fs::removeDir((v1 + 120));
    if (!support::fs::createDir((v1 + 120), 0x1EDu, 1))
    {
      v27 = *(v1 + 32);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v1 + 143) < 0)
        {
          v11 = *v11;
        }

        buf.st_dev = 136315138;
        *&buf.st_mode = v11;
        _os_log_impl(&dword_241A16000, v27, OS_LOG_TYPE_DEFAULT, "#I Failed to create: %s", &buf, 0xCu);
      }
    }

    v20 = 0;
  }

  result = TraceFileCollection::createNewMemoryFile_sync(v1, v20);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void TraceFileCollection::registerForMemoryPressure_sync(TraceFileCollection *this)
{
  v2 = *(this + 24);
  if (*(this + 37))
  {
    if (!v2)
    {
      v5 = *(this + 4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241A16000, v5, OS_LOG_TYPE_DEFAULT, "#I Register for memory pressure notifications", buf, 2u);
      }

      v6 = dispatch_source_create(MEMORY[0x277D85D18], 0, 0x30uLL, *(this + 2));
      v7 = *(this + 24);
      *(this + 24) = v6;
      if (v7)
      {
        dispatch_release(v7);
        v6 = *(this + 24);
      }

      if (v6)
      {
        v8 = *(this + 1);
        if (!v8 || (v9 = *this, (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v11 = v10;
        p_shared_weak_owners = &v10->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v11);
        }

        v13 = *(this + 24);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 1174405120;
        handler[2] = ___ZN19TraceFileCollection30registerForMemoryPressure_syncEv_block_invoke;
        handler[3] = &__block_descriptor_tmp_33;
        handler[4] = this;
        handler[5] = v9;
        v15 = v11;
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        dispatch_source_set_event_handler(v13, handler);
        dispatch_activate(*(this + 24));
        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  else if (v2)
  {
    v3 = *(this + 4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I De-register from memory pressure notifications", buf, 2u);
      v2 = *(this + 24);
    }

    dispatch_source_cancel(v2);
    v4 = *(this + 24);
    *(this + 24) = 0;
    if (v4)
    {
      dispatch_release(v4);
    }
  }
}

void TraceFileCollection::~TraceFileCollection(TraceFileCollection *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = *(this + 4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I De-register from memory pressure notifications", buf, 2u);
      v2 = *(this + 24);
    }

    dispatch_source_cancel(v2);
    v4 = *(this + 24);
    *(this + 24) = 0;
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  if (*(this + 35))
  {
    usleep(0x30D40u);
    v5 = *(this + 4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_241A16000, v5, OS_LOG_TYPE_DEFAULT, "#I Releasing Trace File Collection Assertion", v20, 2u);
    }

    v6 = *(this + 36);
    *(this + 35) = 0;
    *(this + 36) = 0;
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v7 = this + 32;
        v8 = *(this + 4);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }
  }

  v7 = this + 32;
  v8 = *(this + 4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
LABEL_12:
    *v19 = 0;
    _os_log_impl(&dword_241A16000, v8, OS_LOG_TYPE_DEFAULT, "#I Destructor", v19, 2u);
  }

LABEL_13:
  v9 = *(this + 36);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 34);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 33);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 32);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 224, *(this + 29));
  v13 = *(this + 27);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(this + 24);
  if (v14)
  {
    dispatch_release(v14);
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
    if ((*(this + 119) & 0x80000000) == 0)
    {
LABEL_30:
      v15 = *(this + 9);
      if (!v15)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((*(this + 119) & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  operator delete(*(this + 12));
  v15 = *(this + 9);
  if (v15)
  {
LABEL_31:
    *(this + 10) = v15;
    operator delete(v15);
  }

LABEL_32:
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  MEMORY[0x245CF5550](v7);
  v16 = *(this + 3);
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = *(this + 2);
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 1);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }
}

void TraceFileCollection::deregisterForMemoryPressure_sync(TraceFileCollection *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v3 = *(this + 4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I De-register from memory pressure notifications", v5, 2u);
      v1 = *(this + 24);
    }

    dispatch_source_cancel(v1);
    v4 = *(this + 24);
    *(this + 24) = 0;
    if (v4)
    {
      dispatch_release(v4);
    }
  }
}

void TraceFileCollection::clear(uint64_t a1, uint64_t a2, char a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZN19TraceFileCollection5clearENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke;
  v6[3] = &__block_descriptor_tmp_8_1;
  v6[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v8 = a3;
  v9 = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = a1;
  block[5] = &v9;
  v5 = *(a1 + 16);
  if (*(a1 + 24))
  {
    dispatch_async_and_wait(v5, block);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  dispatch_sync(v5, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_8;
  }
}

void ___ZN19TraceFileCollection5clearENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    __p = *(a1 + 40);
  }

  TraceFileCollection::clear_sync(v2, &__p, *(a1 + 64));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_241A5E908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TraceFileCollection::clear_sync(uint64_t a1, uint64_t a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 272);
  v7 = dispatch_time(0, 2000000000);
  if (dispatch_group_wait(v6, v7))
  {
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_241A16000, v8, OS_LOG_TYPE_ERROR, "TraceFileCollection files will be removed on the next start", &v32, 2u);
    }

    goto LABEL_4;
  }

  if (*(a1 + 208))
  {
    v10 = *(a1 + 216);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    atomic_fetch_add((a1 + 172), 0xFFFFFFFF);
  }

  *(a1 + 200) = 0;
  v11 = *(a2 + 23);
  if ((v11 & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_4;
    }
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_4;
  }

  strcpy(&v29, "filecollection.scratch");
  *(&v29.__r_.__value_.__s + 23) = 22;
  if ((v11 & 0x80000000) == 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if ((v11 & 0x80000000) == 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::insert(&v29, 0, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v31 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  support::fs::createUniquePath(__p, &buf);
  v32 = buf;
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v29.__r_.__value_.__l.__data_);
LABEL_22:
  if (support::fs::createDir(a2, 0x1EDu, 1))
  {
    v17 = (a1 + 120);
    if (*(a1 + 143) >= 0)
    {
      v18 = (a1 + 120);
    }

    else
    {
      v18 = *(a1 + 120);
    }

    v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
    v20 = v32.__r_.__value_.__r.__words[0];
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v32;
    }

    else
    {
      v21 = v32.__r_.__value_.__r.__words[0];
    }

    rename(v18, v21, v16);
    if (!v22 && a3)
    {
      v23 = *(a1 + 32);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = a1 + 120;
        if (*(a1 + 143) < 0)
        {
          v24 = *v17;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v24;
        _os_log_impl(&dword_241A16000, v23, OS_LOG_TYPE_DEFAULT, "#I Creating folder %s", &buf, 0xCu);
      }

      if (!support::fs::createDir((a1 + 120), 0x1EDu, 1))
      {
        v25 = *(a1 + 32);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 143) < 0)
          {
            v17 = *v17;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v17;
          _os_log_error_impl(&dword_241A16000, v25, OS_LOG_TYPE_ERROR, "Failed to create folder: %s", &buf, 0xCu);
        }

        goto LABEL_50;
      }

      TraceFileCollection::createNewMemoryFile_sync(a1, 0);
      goto LABEL_41;
    }

    if (!v22)
    {
LABEL_41:
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 1174405120;
      block[2] = ___ZN19TraceFileCollection10clear_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke;
      block[3] = &__block_descriptor_tmp_26_0;
      if (v19 < 0)
      {
        std::string::__init_copy_ctor_external(&v28, v20, v32.__r_.__value_.__l.__size_);
      }

      else
      {
        v28 = v32;
      }

      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_async(global_queue, block);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    LOBYTE(v19) = *(&v32.__r_.__value_.__s + 23);
  }

LABEL_50:
  if ((v19 & 0x80) != 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

LABEL_4:
  v9 = *MEMORY[0x277D85DE8];
}

void sub_241A5ECE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
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

uint64_t TraceFileCollection::snapshot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1174405120;
  v13[2] = ___ZN19TraceFileCollection8snapshotERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_bNS0_10shared_ptrIN3abm5trace9TraceInfoEEE_block_invoke;
  v13[3] = &unk_2853A3C40;
  v15 = a5;
  v13[4] = &v16;
  v13[5] = a1;
  v13[6] = a4;
  v13[7] = a2;
  v7 = *a6;
  v6 = a6[1];
  v13[8] = a3;
  v13[9] = v7;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = v13;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = a1;
  block[5] = &v20;
  v9 = a1 + 16;
  v8 = *(a1 + 16);
  if (*(v9 + 8))
  {
    dispatch_async_and_wait(v8, block);
    v10 = *(v17 + 24);
    v11 = v14;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_sync(v8, block);
    v10 = *(v17 + 24);
    v11 = v14;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_9:
  _Block_object_dispose(&v16, 8);
  return v10;
}

void ___ZN19TraceFileCollection8snapshotERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_bNS0_10shared_ptrIN3abm5trace9TraceInfoEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  TraceFileCollection::prepareSnapshot_sync(v2);
  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 80);
    v7[0] = *(a1 + 72);
    v7[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(*(*(a1 + 32) + 8) + 24) = TraceFileCollection::finishSnapshot_sync(v2, v3, v4, v5, v7);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);

      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void TraceFileCollection::prepareSnapshot_sync(dispatch_group_t *this)
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_group_wait(this[34], 0xFFFFFFFFFFFFFFFFLL);
  TraceFileCollection::storeFile_sync(this, 0);
  dispatch_group_wait(this[34], 0xFFFFFFFFFFFFFFFFLL);
  v2 = this[4];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 37);
    v4 = *(this + 42);
    v5 = this[23];
    v7[0] = 67109632;
    v7[1] = v3;
    v8 = 1024;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_241A16000, v2, OS_LOG_TYPE_DEFAULT, "#I File collection state: maxMemoryFileCount=%u, fAppliedMemoryFileCount=%u, fDroppedBytes=%llu", v7, 0x18u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL TraceFileCollection::finishSnapshot_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v123 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 200);
  v9 = *(a1 + 204);
  memset(&v118, 170, sizeof(v118));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v118, *a2, *(a2 + 8));
  }

  else
  {
    v118 = *a2;
  }

  v11 = v9 + 1;
  if (v10 == v11)
  {
    updated = 1;
  }

  else
  {
    LOBYTE(updated) = 1;
    do
    {
      if (updated)
      {
        v59 = *(a5 + 8);
        v117[0] = *a5;
        v117[1] = v59;
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        updated = TraceFileCollection::updateInfoForSnapshotFiles_sync(a1, v10, a1 + 120, &v118, v117);
        if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v59->__on_zero_shared)(v59);
          std::__shared_weak_count::__release_weak(v59);
        }
      }

      else
      {
        updated = 0;
      }

      ++v10;
    }

    while (v11 != v10);
  }

  v13 = *a5;
  if (*a5)
  {
    __p[0].__r_.__value_.__r.__words[0] = operator new(0x20uLL);
    *&__p[0].__r_.__value_.__r.__words[1] = xmmword_241A66F20;
    strcpy(__p[0].__r_.__value_.__l.__data_, "Trace Collection Statistics");
    TraceFileCollection::getStatisticsAsDict_sync(a1, &object);
    abm::trace::TraceInfo::push(v13, __p, &object);
    xpc_release(object);
    object = 0;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    abm::trace::TraceInfo::flushDataToDisk(*a5);
  }

  *(&v120.__r_.__value_.__s + 23) = 17;
  strcpy(&v120, "Dropped (Bytes): ");
  std::to_string(__p, *(a1 + 184));
  v115 = __p[0];
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v115;
  }

  else
  {
    v14 = v115.__r_.__value_.__r.__words[0];
  }

  v15 = std::string::append(&v120, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v121.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v121.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  *(&__p[0].__r_.__value_.__s + 23) = 1;
  LOWORD(__p[0].__r_.__value_.__l.__data_) = 10;
  v17 = std::string::append(&v121, __p, 1uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v122.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v122.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v122;
  }

  else
  {
    v19 = v122.__r_.__value_.__r.__words[0];
  }

  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v122.__r_.__value_.__l.__size_;
  }

  std::string::append(&v118, v19, size);
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_91;
    }
  }

  else if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0].__r_.__value_.__l.__data_);
  if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_92:
    operator delete(v115.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_93;
  }

LABEL_91:
  operator delete(v121.__r_.__value_.__l.__data_);
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_92;
  }

LABEL_23:
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_93:
  operator delete(v120.__r_.__value_.__l.__data_);
LABEL_24:
  v120.__r_.__value_.__r.__words[0] = operator new(0x19uLL);
  *&v120.__r_.__value_.__r.__words[1] = xmmword_241A66F30;
  strcpy(v120.__r_.__value_.__l.__data_, "Max memory file count: ");
  v21 = *(a1 + 148);
  memset(&v115, 0, sizeof(v115));
  std::to_string(__p, v21);
  v115 = __p[0];
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v115;
  }

  else
  {
    v22 = v115.__r_.__value_.__r.__words[0];
  }

  v23 = std::string::append(&v120, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v121.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v121.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  *(&__p[0].__r_.__value_.__s + 23) = 1;
  LOWORD(__p[0].__r_.__value_.__l.__data_) = 10;
  v25 = std::string::append(&v121, __p, 1uLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v122.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v122.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v122;
  }

  else
  {
    v27 = v122.__r_.__value_.__r.__words[0];
  }

  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v122.__r_.__value_.__l.__size_;
  }

  std::string::append(&v118, v27, v28);
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_35:
      if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_96;
    }
  }

  else if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(__p[0].__r_.__value_.__l.__data_);
  if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_36:
    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_97:
    operator delete(v115.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_98;
  }

LABEL_96:
  operator delete(v121.__r_.__value_.__l.__data_);
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_97;
  }

LABEL_37:
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

LABEL_98:
  operator delete(v120.__r_.__value_.__l.__data_);
LABEL_38:
  v120.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v120.__r_.__value_.__r.__words[1] = xmmword_241A66F20;
  strcpy(v120.__r_.__value_.__l.__data_, "Applied memory file count: ");
  v29 = *(a1 + 168);
  memset(&v115, 0, sizeof(v115));
  std::to_string(__p, v29);
  v115 = __p[0];
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v115;
  }

  else
  {
    v30 = v115.__r_.__value_.__r.__words[0];
  }

  v31 = std::string::append(&v120, v30);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v121.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v121.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  *(&__p[0].__r_.__value_.__s + 23) = 1;
  LOWORD(__p[0].__r_.__value_.__l.__data_) = 10;
  v33 = std::string::append(&v121, __p, 1uLL);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v122.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v122.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &v122;
  }

  else
  {
    v35 = v122.__r_.__value_.__r.__words[0];
  }

  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v122.__r_.__value_.__l.__size_;
  }

  std::string::append(&v118, v35, v36);
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_49:
      if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_101;
    }
  }

  else if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(__p[0].__r_.__value_.__l.__data_);
  if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_50:
    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_102:
    operator delete(v115.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_103;
  }

LABEL_101:
  operator delete(v121.__r_.__value_.__l.__data_);
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_102;
  }

LABEL_51:
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_103:
  operator delete(v120.__r_.__value_.__l.__data_);
LABEL_52:
  *(&v121.__r_.__value_.__s + 23) = 13;
  strcpy(&v121, "Dump Reason: ");
  if (*(a4 + 23) >= 0)
  {
    v37 = a4;
  }

  else
  {
    v37 = *a4;
  }

  v38 = std::string::append(&v121, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v122.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v122.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  *(&v120.__r_.__value_.__s + 23) = 1;
  LOWORD(v120.__r_.__value_.__l.__data_) = 10;
  v40 = std::string::append(&v122, &v120, 1uLL);
  v41 = *&v40->__r_.__value_.__l.__data_;
  __p[0].__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
  *&__p[0].__r_.__value_.__l.__data_ = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = __p;
  }

  else
  {
    v42 = __p[0].__r_.__value_.__r.__words[0];
  }

  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = __p[0].__r_.__value_.__l.__size_;
  }

  v44 = std::string::append(&v118, v42, v43);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_63:
      if ((SHIBYTE(v122.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

LABEL_106:
      operator delete(v122.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

LABEL_107:
      operator delete(v121.__r_.__value_.__l.__data_);
      goto LABEL_65;
    }
  }

  else if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

  operator delete(v120.__r_.__value_.__l.__data_);
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_106;
  }

LABEL_64:
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_107;
  }

LABEL_65:
  *(a1 + 184) = 0;
  v45 = capabilities::radio::initium(v44);
  if (v45 & 1) != 0 || (capabilities::radio::dal(v45))
  {
    goto LABEL_120;
  }

  memset(&__p[0].__r_.__value_.__r.__words[1], 170, 0x230uLL);
  __p[19].__r_.__value_.__l.__size_ = 0;
  v46 = MEMORY[0x277D82860] + 64;
  __p[17].__r_.__value_.__l.__size_ = MEMORY[0x277D82860] + 64;
  v47 = MEMORY[0x277D82810];
  v48 = *(MEMORY[0x277D82810] + 16);
  __p[0].__r_.__value_.__r.__words[0] = *(MEMORY[0x277D82810] + 8);
  *(__p[0].__r_.__value_.__r.__words + *(__p[0].__r_.__value_.__r.__words[0] - 24)) = v48;
  v49 = (__p + *(__p[0].__r_.__value_.__r.__words[0] - 24));
  std::ios_base::init(v49, &__p[0].__r_.__value_.__r.__words[1]);
  v50 = MEMORY[0x277D82860] + 24;
  v49[1].__vftable = 0;
  v49[1].__fmtflags_ = -1;
  __p[0].__r_.__value_.__r.__words[0] = v50;
  __p[17].__r_.__value_.__l.__size_ = v46;
  MEMORY[0x245CF5850](&__p[0].__r_.__value_.__r.__words[1]);
  memset(&v122, 170, sizeof(v122));
  *(&v121.__r_.__value_.__s + 23) = 9;
  strcpy(&v121, "/info.txt");
  v51 = *(a1 + 143);
  if (v51 >= 0)
  {
    v52 = (a1 + 120);
  }

  else
  {
    v52 = *(a1 + 120);
  }

  if (v51 >= 0)
  {
    v53 = *(a1 + 143);
  }

  else
  {
    v53 = *(a1 + 128);
  }

  v54 = std::string::insert(&v121, 0, v52, v53);
  v55 = *&v54->__r_.__value_.__l.__data_;
  v122.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
  *&v122.__r_.__value_.__l.__data_ = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  std::ofstream::open();
  if (*(&__p[1].__r_.__value_.__r.__words[1] + *(__p[0].__r_.__value_.__r.__words[0] - 24)))
  {
    v56 = *(a1 + 32);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = &v122;
      if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v57 = v122.__r_.__value_.__r.__words[0];
      }

      LODWORD(v121.__r_.__value_.__l.__data_) = 136315138;
      *(v121.__r_.__value_.__r.__words + 4) = v57;
      v58 = "Failed to open info file: %s";
LABEL_115:
      _os_log_error_impl(&dword_241A16000, v56, OS_LOG_TYPE_ERROR, v58, &v121, 0xCu);
    }
  }

  else
  {
    std::ostream::write();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((__p + *(__p[0].__r_.__value_.__r.__words[0] - 24)), *(&__p[1].__r_.__value_.__r.__words[1] + *(__p[0].__r_.__value_.__r.__words[0] - 24)) | 4);
    }

    if ((__p[1].__r_.__value_.__s.__data_[*(__p[0].__r_.__value_.__r.__words[0] - 24) + 8] & 1) == 0)
    {
      goto LABEL_117;
    }

    v56 = *(a1 + 32);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v60 = &v122;
      if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v60 = v122.__r_.__value_.__r.__words[0];
      }

      LODWORD(v121.__r_.__value_.__l.__data_) = 136315138;
      *(v121.__r_.__value_.__r.__words + 4) = v60;
      v58 = "Failed to write: %s";
      goto LABEL_115;
    }
  }

  updated = 0;
LABEL_117:
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  __p[0].__r_.__value_.__r.__words[0] = *v47;
  *(__p[0].__r_.__value_.__r.__words + *(__p[0].__r_.__value_.__r.__words[0] - 24)) = v47[3];
  MEMORY[0x245CF5860](&__p[0].__r_.__value_.__r.__words[1]);
  std::ostream::~ostream();
  MEMORY[0x245CF5AE0](&__p[17].__r_.__value_.__r.__words[1]);
LABEL_120:
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
    if (*(a1 + 40) != 1)
    {
      goto LABEL_164;
    }
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_164;
  }

  memset(&__p[0].__r_.__value_.__r.__words[1], 170, 0x230uLL);
  __p[19].__r_.__value_.__l.__size_ = 0;
  v61 = MEMORY[0x277D82860] + 64;
  __p[17].__r_.__value_.__l.__size_ = MEMORY[0x277D82860] + 64;
  v62 = *(MEMORY[0x277D82810] + 16);
  __p[0].__r_.__value_.__r.__words[0] = *(MEMORY[0x277D82810] + 8);
  *(__p[0].__r_.__value_.__r.__words + *(__p[0].__r_.__value_.__r.__words[0] - 24)) = v62;
  v63 = (__p + *(__p[0].__r_.__value_.__r.__words[0] - 24));
  std::ios_base::init(v63, &__p[0].__r_.__value_.__r.__words[1]);
  v114 = a3;
  v64 = MEMORY[0x277D82860] + 24;
  v63[1].__vftable = 0;
  v63[1].__fmtflags_ = -1;
  __p[0].__r_.__value_.__r.__words[0] = v64;
  __p[17].__r_.__value_.__l.__size_ = v61;
  MEMORY[0x245CF5850](&__p[0].__r_.__value_.__r.__words[1]);
  memset(&v118, 170, sizeof(v118));
  v65 = *(a1 + 143);
  if (v65 >= 0)
  {
    v66 = *(a1 + 143);
  }

  else
  {
    v66 = *(a1 + 128);
  }

  v67 = *(a1 + 71);
  if (v67 >= 0)
  {
    v68 = *(a1 + 71);
  }

  else
  {
    v68 = *(a1 + 56);
  }

  v69 = v68 + v66;
  if (v68 + v66 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v69 <= 0x16)
  {
    memset(&v118, 0, sizeof(v118));
    v71 = &v118;
    *(&v118.__r_.__value_.__s + 23) = v68 + v66;
    if (!v66)
    {
      goto LABEL_142;
    }

    goto LABEL_138;
  }

  if ((v69 | 7) == 0x17)
  {
    v70 = 25;
  }

  else
  {
    v70 = (v69 | 7) + 1;
  }

  v71 = operator new(v70);
  v118.__r_.__value_.__l.__size_ = v68 + v66;
  v118.__r_.__value_.__r.__words[2] = v70 | 0x8000000000000000;
  v118.__r_.__value_.__r.__words[0] = v71;
  if (v66)
  {
LABEL_138:
    if (v65 >= 0)
    {
      v72 = (a1 + 120);
    }

    else
    {
      v72 = *(a1 + 120);
    }

    memmove(v71, v72, v66);
  }

LABEL_142:
  v73 = &v71[v66];
  if (v68)
  {
    if (v67 >= 0)
    {
      v74 = (a1 + 48);
    }

    else
    {
      v74 = *(a1 + 48);
    }

    memmove(v73, v74, v68);
  }

  v73[v68] = 0;
  std::ofstream::open();
  a3 = v114;
  if (*(&__p[1].__r_.__value_.__r.__words[1] + *(__p[0].__r_.__value_.__r.__words[0] - 24)))
  {
    v75 = *(a1 + 32);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = &v118;
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v76 = v118.__r_.__value_.__r.__words[0];
      }

      LODWORD(v122.__r_.__value_.__l.__data_) = 136315138;
      *(v122.__r_.__value_.__r.__words + 4) = v76;
      v77 = "Failed to open header file: %s";
LABEL_159:
      _os_log_error_impl(&dword_241A16000, v75, OS_LOG_TYPE_ERROR, v77, &v122, 0xCu);
    }
  }

  else
  {
    v78 = *(a1 + 72);
    v79 = *(a1 + 80);
    std::ostream::write();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((__p + *(__p[0].__r_.__value_.__r.__words[0] - 24)), *(&__p[1].__r_.__value_.__r.__words[1] + *(__p[0].__r_.__value_.__r.__words[0] - 24)) | 4);
    }

    if ((__p[1].__r_.__value_.__s.__data_[*(__p[0].__r_.__value_.__r.__words[0] - 24) + 8] & 1) == 0)
    {
      goto LABEL_161;
    }

    v75 = *(a1 + 32);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v80 = &v118;
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v80 = v118.__r_.__value_.__r.__words[0];
      }

      LODWORD(v122.__r_.__value_.__l.__data_) = 136315138;
      *(v122.__r_.__value_.__r.__words + 4) = v80;
      v77 = "Failed to write: %s";
      goto LABEL_159;
    }
  }

  updated = 0;
LABEL_161:
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  __p[0].__r_.__value_.__r.__words[0] = *MEMORY[0x277D82810];
  *(__p[0].__r_.__value_.__r.__words + *(__p[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x245CF5860](&__p[0].__r_.__value_.__r.__words[1]);
  std::ostream::~ostream();
  MEMORY[0x245CF5AE0](&__p[17].__r_.__value_.__r.__words[1]);
LABEL_164:
  v81 = abm::trace::kSnapshotFolder;
  v82 = strlen(abm::trace::kSnapshotFolder);
  if (v82 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v83 = v82;
  if (v82 >= 0x17)
  {
    if ((v82 | 7) == 0x17)
    {
      v85 = 25;
    }

    else
    {
      v85 = (v82 | 7) + 1;
    }

    v84 = operator new(v85);
    __p[0].__r_.__value_.__l.__size_ = v83;
    __p[0].__r_.__value_.__r.__words[2] = v85 | 0x8000000000000000;
    __p[0].__r_.__value_.__r.__words[0] = v84;
    goto LABEL_172;
  }

  *(&__p[0].__r_.__value_.__s + 23) = v82;
  v84 = __p;
  if (v82)
  {
LABEL_172:
    memmove(v84, v81, v83);
  }

  v84->__r_.__value_.__s.__data_[v83] = 0;
  support::fs::createDir(__p, 0x1EDu, 1);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v87 = (a1 + 120);
  if (*(a1 + 143) >= 0)
  {
    v88 = (a1 + 120);
  }

  else
  {
    v88 = *(a1 + 120);
  }

  if (*(a3 + 23) >= 0)
  {
    v89 = a3;
  }

  else
  {
    v89 = *a3;
  }

  rename(v88, v89, v86);
  if (v90)
  {
    v91 = *__error();
    v92 = *(a1 + 32);
    if (!os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
LABEL_183:
      updated = 0;
      goto LABEL_184;
    }

    v96 = *(a1 + 143);
    if (v96 >= 0)
    {
      v97 = *(a1 + 143);
    }

    else
    {
      v97 = *(a1 + 128);
    }

    v98 = v97 + 4;
    if (v97 + 4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v98 < 0x17)
    {
      memset(&v121, 0, sizeof(v121));
      v100 = &v121;
      *(&v121.__r_.__value_.__s + 23) = v97 + 4;
      if (!v97)
      {
        goto LABEL_205;
      }
    }

    else
    {
      if ((v98 | 7) == 0x17)
      {
        v99 = 25;
      }

      else
      {
        v99 = (v98 | 7) + 1;
      }

      v100 = operator new(v99);
      v121.__r_.__value_.__l.__size_ = v97 + 4;
      v121.__r_.__value_.__r.__words[2] = v99 | 0x8000000000000000;
      v121.__r_.__value_.__r.__words[0] = v100;
    }

    v101 = *v87;
    if (v96 >= 0)
    {
      v102 = (a1 + 120);
    }

    else
    {
      v102 = *v87;
    }

    memmove(v100, v102, v97);
LABEL_205:
    strcpy(v100 + v97, " to ");
    v103 = *(a3 + 23);
    if (v103 >= 0)
    {
      v104 = a3;
    }

    else
    {
      v104 = *a3;
    }

    if (v103 >= 0)
    {
      v105 = *(a3 + 23);
    }

    else
    {
      v105 = *(a3 + 8);
    }

    v106 = std::string::append(&v121, v104, v105);
    v107 = *&v106->__r_.__value_.__l.__data_;
    v122.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
    *&v122.__r_.__value_.__l.__data_ = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    v108 = std::string::append(&v122, " Error: ");
    v109 = *&v108->__r_.__value_.__l.__data_;
    v118.__r_.__value_.__r.__words[2] = v108->__r_.__value_.__r.__words[2];
    *&v118.__r_.__value_.__l.__data_ = v109;
    v108->__r_.__value_.__l.__size_ = 0;
    v108->__r_.__value_.__r.__words[2] = 0;
    v108->__r_.__value_.__r.__words[0] = 0;
    v110 = strerror(v91);
    v111 = std::string::append(&v118, v110);
    v112 = *&v111->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v111->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v112;
    v111->__r_.__value_.__l.__size_ = 0;
    v111->__r_.__value_.__r.__words[2] = 0;
    v111->__r_.__value_.__r.__words[0] = 0;
    v113 = __p;
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v113 = __p[0].__r_.__value_.__r.__words[0];
    }

    LODWORD(v120.__r_.__value_.__l.__data_) = 136315138;
    *(v120.__r_.__value_.__r.__words + 4) = v113;
    _os_log_error_impl(&dword_241A16000, v92, OS_LOG_TYPE_ERROR, "Failed to rename: %s", &v120, 0xCu);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if ((SHIBYTE(v118.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_215:
        if ((SHIBYTE(v122.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_216;
        }

        goto LABEL_220;
      }
    }

    else if ((SHIBYTE(v118.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_215;
    }

    operator delete(v118.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v122.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_216:
      if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_183;
      }

LABEL_221:
      operator delete(v121.__r_.__value_.__l.__data_);
      goto LABEL_183;
    }

LABEL_220:
    operator delete(v122.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_221;
  }

LABEL_184:
  if (!support::fs::createDir((a1 + 120), 0x1EDu, 1))
  {
    v93 = *(a1 + 32);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 143) < 0)
      {
        v87 = *v87;
      }

      LODWORD(__p[0].__r_.__value_.__l.__data_) = 136315138;
      *(__p[0].__r_.__value_.__r.__words + 4) = v87;
      _os_log_error_impl(&dword_241A16000, v93, OS_LOG_TYPE_ERROR, "Failed to create folder: %s", __p, 0xCu);
    }

    updated = 0;
  }

  *(a1 + 200) = 0;
  TraceFileCollection::createNewMemoryFile_sync(a1, 0);
  v94 = *MEMORY[0x277D85DE8];
  return updated;
}

void sub_241A60344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t object, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 137) < 0)
  {
    operator delete(*(v32 - 160));
  }

  std::ofstream::~ofstream(&a27);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_72c48_ZTSNSt3__110shared_ptrIN3abm5trace9TraceInfoEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_72c48_ZTSNSt3__110shared_ptrIN3abm5trace9TraceInfoEEE(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL TraceFileCollection::updateInfoForSnapshotFiles_sync(uint64_t a1, int a2, uint64_t a3, std::string *a4, uint64_t *a5)
{
  v114 = *MEMORY[0x277D85DE8];
  memset(v107, 170, sizeof(v107));
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __str[0] = v9;
  __str[1] = v9;
  snprintf(__str, 0x20uLL, "0x%08X%s", a2, ".meta");
  v10 = strlen(__str);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  v93 = a5;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    p_dst = operator new(v13);
    *(&__dst + 1) = v11;
    *&v111 = v13 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_9;
  }

  BYTE7(v111) = v10;
  p_dst = &__dst;
  if (v10)
  {
LABEL_9:
    memcpy(p_dst, __str, v11);
  }

  *(p_dst + v11) = 0;
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  v16 = SBYTE7(v111);
  if ((SBYTE7(v111) & 0x80u) == 0)
  {
    v17 = BYTE7(v111);
  }

  else
  {
    v17 = *(&__dst + 1);
  }

  v18 = v17 + v15;
  if (v17 + v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v18 <= 0x16)
  {
    memset(v107, 0, sizeof(v107));
    v20 = v107;
    HIBYTE(v107[2]) = v17 + v15;
    if (!v15)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if ((v18 | 7) == 0x17)
  {
    v19 = 25;
  }

  else
  {
    v19 = (v18 | 7) + 1;
  }

  v20 = operator new(v19);
  v107[1] = (v17 + v15);
  v107[2] = (v19 | 0x8000000000000000);
  v107[0] = v20;
  if (v15)
  {
LABEL_24:
    v21 = *a3;
    if (v14 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    memmove(v20, v22, v15);
  }

LABEL_28:
  v23 = &v20[v15];
  if (v17)
  {
    if (v16 >= 0)
    {
      v24 = &__dst;
    }

    else
    {
      v24 = __dst;
    }

    memmove(v23, v24, v17);
  }

  v23[v17] = 0;
  if (v16 < 0)
  {
    operator delete(__dst);
  }

  v25 = (a1 + 96);
  memset(__p, 170, sizeof(__p));
  if (*(a1 + 119) < 0)
  {
    v25 = *v25;
  }

  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __str[0] = v26;
  __str[1] = v26;
  snprintf(__str, 0x20uLL, "0x%08X%s", a2, v25);
  v27 = strlen(__str);
  if (v27 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v30 = 25;
    }

    else
    {
      v30 = (v27 | 7) + 1;
    }

    v29 = operator new(v30);
    __p[1] = v28;
    __p[2] = (v30 | 0x8000000000000000);
    __p[0] = v29;
    goto LABEL_45;
  }

  HIBYTE(__p[2]) = v27;
  v29 = __p;
  if (v27)
  {
LABEL_45:
    memcpy(v29, __str, v28);
  }

  *(v28 + v29) = 0;
  *&v31 = 0xAAAAAAAAAAAAAAAALL;
  *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v112 = v31;
  v113 = v31;
  __dst = v31;
  v111 = v31;
  memset(__str + 8, 170, 0x238uLL);
  *(&__str[29] + 1) = 0;
  v32 = MEMORY[0x277D82858] + 64;
  *(&__str[26] + 1) = MEMORY[0x277D82858] + 64;
  v33 = MEMORY[0x277D82808];
  v34 = *(MEMORY[0x277D82808] + 16);
  *&__str[0] = *(MEMORY[0x277D82808] + 8);
  *(__str + *(*&__str[0] - 24)) = v34;
  *(&__str[0] + 1) = 0;
  v35 = (__str + *(*&__str[0] - 24));
  std::ios_base::init(v35, &__str[1]);
  v36 = MEMORY[0x277D82858] + 24;
  v35[1].__vftable = 0;
  v35[1].__fmtflags_ = -1;
  *&__str[0] = v36;
  *(&__str[26] + 1) = v32;
  MEMORY[0x245CF5850](&__str[1]);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((__str + *(*&__str[0] - 24)), *(&__str[2] + *(*&__str[0] - 24)) | 4);
  }

  v37 = (__str + *(*&__str[0] - 24));
  if (!v37->__rdstate_)
  {
    std::ios_base::getloc(v37);
    v40 = std::locale::use_facet(v108, MEMORY[0x277D82680]);
    (v40->__vftable[2].~facet_0)(v40, 10);
    std::locale::~locale(v108);
    std::istream::getline();
    memset(v108, 170, 24);
    v41 = strlen(&__dst);
    if (v41 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v42 = v41;
    if (v41 >= 0x17)
    {
      if ((v41 | 7) == 0x17)
      {
        v44 = 25;
      }

      else
      {
        v44 = (v41 | 7) + 1;
      }

      v43 = operator new(v44);
      v108[1].__locale_ = v42;
      v108[2].__locale_ = (v44 | 0x8000000000000000);
      v108[0].__locale_ = v43;
    }

    else
    {
      HIBYTE(v108[2].__locale_) = v41;
      v43 = v108;
      if (!v41)
      {
LABEL_60:
        *(v42 + v43) = 0;
        std::operator+<char>();
        *(&__s.__r_.__value_.__s + 23) = 16;
        strcpy(&__s, "\nStarting From: ");
        v45 = std::string::append(&v103, &__s, 0x10uLL);
        v46 = *&v45->__r_.__value_.__l.__data_;
        v104.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
        *&v104.__r_.__value_.__l.__data_ = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        v47 = std::string::append(&v104, &__dst);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v105[2] = v47->__r_.__value_.__r.__words[2];
        *&v105[0].__locale_ = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v105[2].__locale_) >= 0)
        {
          locale = v105;
        }

        else
        {
          locale = v105[0].__locale_;
        }

        if (SHIBYTE(v105[2].__locale_) >= 0)
        {
          locale_high = HIBYTE(v105[2].__locale_);
        }

        else
        {
          locale_high = v105[1].__locale_;
        }

        std::string::append(a4, locale, locale_high);
        if (SHIBYTE(v105[2].__locale_) < 0)
        {
          operator delete(v105[0].__locale_);
          if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_68:
            if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            goto LABEL_131;
          }
        }

        else if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

        operator delete(v104.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_69:
          if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_70;
          }

LABEL_132:
          operator delete(v103.__r_.__value_.__l.__data_);
LABEL_70:
          std::ios_base::getloc((__str + *(*&__str[0] - 24)));
          v51 = std::locale::use_facet(v105, MEMORY[0x277D82680]);
          (v51->__vftable[2].~facet_0)(v51, 10);
          std::locale::~locale(v105);
          std::istream::getline();
          memset(v105, 170, 24);
          v52 = strlen(&__dst);
          if (v52 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v53 = v52;
          if (v52 >= 0x17)
          {
            if ((v52 | 7) == 0x17)
            {
              v55 = 25;
            }

            else
            {
              v55 = (v52 | 7) + 1;
            }

            v54 = operator new(v55);
            v105[1].__locale_ = v53;
            v105[2].__locale_ = (v55 | 0x8000000000000000);
            v105[0].__locale_ = v54;
          }

          else
          {
            HIBYTE(v105[2].__locale_) = v52;
            v54 = v105;
            if (!v52)
            {
LABEL_79:
              *(v53 + v54) = 0;
              *(&__s.__r_.__value_.__s + 23) = 15;
              strcpy(&__s, "\nSize (Bytes): ");
              v56 = std::string::append(&__s, &__dst);
              v57 = *&v56->__r_.__value_.__l.__data_;
              v103.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
              *&v103.__r_.__value_.__l.__data_ = v57;
              v56->__r_.__value_.__l.__size_ = 0;
              v56->__r_.__value_.__r.__words[2] = 0;
              v56->__r_.__value_.__r.__words[0] = 0;
              v101 = 1;
              strcpy(v100, "\n");
              v58 = std::string::append(&v103, v100, 1uLL);
              v59 = *&v58->__r_.__value_.__l.__data_;
              v104.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
              *&v104.__r_.__value_.__l.__data_ = v59;
              v58->__r_.__value_.__l.__size_ = 0;
              v58->__r_.__value_.__r.__words[2] = 0;
              v58->__r_.__value_.__r.__words[0] = 0;
              if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v60 = &v104;
              }

              else
              {
                v60 = v104.__r_.__value_.__r.__words[0];
              }

              if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v104.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v104.__r_.__value_.__l.__size_;
              }

              std::string::append(a4, v60, size);
              if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v104.__r_.__value_.__l.__data_);
                if ((v101 & 0x80000000) == 0)
                {
LABEL_87:
                  if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_135;
                }
              }

              else if ((v101 & 0x80000000) == 0)
              {
                goto LABEL_87;
              }

              operator delete(*v100);
              if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_88:
                if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_89;
                }

LABEL_136:
                operator delete(__s.__r_.__value_.__l.__data_);
LABEL_89:
                if (!std::filebuf::close())
                {
                  std::ios_base::clear((__str + *(*&__str[0] - 24)), *(&__str[2] + *(*&__str[0] - 24)) | 4);
                }

                if (SHIBYTE(v107[2]) >= 0)
                {
                  v63 = v107;
                }

                else
                {
                  v63 = v107[0];
                }

                if (remove(v63, v62))
                {
                  if (SHIBYTE(v107[2]) >= 0)
                  {
                    v64 = v107;
                  }

                  else
                  {
                    v64 = v107[0];
                  }

                  unlink(v64);
                }

                v65 = *(a3 + 23);
                if (v65 >= 0)
                {
                  v66 = *(a3 + 23);
                }

                else
                {
                  v66 = *(a3 + 8);
                }

                v67 = SHIBYTE(__p[2]);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v68 = HIBYTE(__p[2]);
                }

                else
                {
                  v68 = __p[1];
                }

                v69 = v68 + v66;
                if (v68 + v66 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v69 <= 0x16)
                {
                  memset(&v104, 0, sizeof(v104));
                  v71 = &v104;
                  *(&v104.__r_.__value_.__s + 23) = v68 + v66;
                  if (!v66)
                  {
                    goto LABEL_117;
                  }
                }

                else
                {
                  if ((v69 | 7) == 0x17)
                  {
                    v70 = 25;
                  }

                  else
                  {
                    v70 = (v69 | 7) + 1;
                  }

                  v71 = operator new(v70);
                  v104.__r_.__value_.__l.__size_ = v68 + v66;
                  v104.__r_.__value_.__r.__words[2] = v70 | 0x8000000000000000;
                  v104.__r_.__value_.__r.__words[0] = v71;
                  if (!v66)
                  {
LABEL_117:
                    if (v68)
                    {
                      if (v67 >= 0)
                      {
                        v74 = __p;
                      }

                      else
                      {
                        v74 = __p[0];
                      }

                      memmove(&v71[v66], v74, v68);
                    }

                    v71[v66 + v68] = 0;
                    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v75 = &v104;
                    }

                    else
                    {
                      v75 = v104.__r_.__value_.__r.__words[0];
                    }

                    v76 = chmod(v75, 0x1A4u);
                    v33 = MEMORY[0x277D82808];
                    v39 = v76 == 0;
                    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v104.__r_.__value_.__l.__data_);
                      v77 = *v93;
                      if (*v93)
                      {
LABEL_127:
                        *(&v99.__r_.__value_.__s + 23) = 0;
                        v99.__r_.__value_.__s.__data_[0] = 0;
                        if (SHIBYTE(v108[2].__locale_) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v97, v108[0].__locale_, v108[1].__locale_);
                        }

                        else
                        {
                          *&v97.__r_.__value_.__l.__data_ = *&v108[0].__locale_;
                          v97.__r_.__value_.__r.__words[2] = v108[2];
                        }

                        Timestamp::Timestamp(&v98, &v97, 9, 0);
                        if (SHIBYTE(__p[2]) >= 0)
                        {
                          v79 = __p;
                        }

                        else
                        {
                          v79 = __p[0];
                        }

                        v80 = strlen(v79);
                        if (v80 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        v81 = v80;
                        if (v80 >= 0x17)
                        {
                          if ((v80 | 7) == 0x17)
                          {
                            v83 = 25;
                          }

                          else
                          {
                            v83 = (v80 | 7) + 1;
                          }

                          v82 = operator new(v83);
                          v96.__r_.__value_.__l.__size_ = v81;
                          v96.__r_.__value_.__r.__words[2] = v83 | 0x8000000000000000;
                          v96.__r_.__value_.__r.__words[0] = v82;
                        }

                        else
                        {
                          *(&v96.__r_.__value_.__s + 23) = v80;
                          v82 = &v96;
                          if (!v80)
                          {
LABEL_154:
                            v82->__r_.__value_.__s.__data_[v81] = 0;
                            if (SHIBYTE(v105[2].__locale_) >= 0)
                            {
                              v84 = v105;
                            }

                            else
                            {
                              v84 = v105[0].__locale_;
                            }

                            v85 = strlen(v84);
                            if (v85 > 0x7FFFFFFFFFFFFFF7)
                            {
                              std::string::__throw_length_error[abi:ne200100]();
                            }

                            v86 = v85;
                            if (v85 >= 0x17)
                            {
                              if ((v85 | 7) == 0x17)
                              {
                                v88 = 25;
                              }

                              else
                              {
                                v88 = (v85 | 7) + 1;
                              }

                              v87 = operator new(v88);
                              v95.__r_.__value_.__l.__size_ = v86;
                              v95.__r_.__value_.__r.__words[2] = v88 | 0x8000000000000000;
                              v95.__r_.__value_.__r.__words[0] = v87;
                            }

                            else
                            {
                              *(&v95.__r_.__value_.__s + 23) = v85;
                              v87 = &v95;
                              if (!v85)
                              {
LABEL_166:
                                v87->__r_.__value_.__s.__data_[v86] = 0;
                                abm::trace::TraceInfo::push(v77, 13, &v99, &v98, &v96, &v95);
                                if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v95.__r_.__value_.__l.__data_);
                                  if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                  {
LABEL_168:
                                    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v98, *(&v98 + 1));
                                    if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                    {
                                      goto LABEL_169;
                                    }

                                    goto LABEL_180;
                                  }
                                }

                                else if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                {
                                  goto LABEL_168;
                                }

                                operator delete(v96.__r_.__value_.__l.__data_);
                                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v98, *(&v98 + 1));
                                if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                {
LABEL_169:
                                  if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_170;
                                  }

                                  goto LABEL_181;
                                }

LABEL_180:
                                operator delete(v97.__r_.__value_.__l.__data_);
                                if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                {
LABEL_170:
                                  if ((SHIBYTE(v105[2].__locale_) & 0x80000000) == 0)
                                  {
                                    goto LABEL_171;
                                  }

                                  goto LABEL_182;
                                }

LABEL_181:
                                operator delete(v99.__r_.__value_.__l.__data_);
                                if ((SHIBYTE(v105[2].__locale_) & 0x80000000) == 0)
                                {
LABEL_171:
                                  if ((SHIBYTE(v108[2].__locale_) & 0x80000000) == 0)
                                  {
                                    goto LABEL_172;
                                  }

LABEL_183:
                                  operator delete(v108[0].__locale_);
                                  goto LABEL_172;
                                }

LABEL_182:
                                operator delete(v105[0].__locale_);
                                if ((SHIBYTE(v108[2].__locale_) & 0x80000000) == 0)
                                {
                                  goto LABEL_172;
                                }

                                goto LABEL_183;
                              }
                            }

                            memmove(v87, v84, v86);
                            goto LABEL_166;
                          }
                        }

                        memmove(v82, v79, v81);
                        goto LABEL_154;
                      }
                    }

                    else
                    {
                      v77 = *v93;
                      if (*v93)
                      {
                        goto LABEL_127;
                      }
                    }

                    v78 = *(a1 + 32);
                    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(v104.__r_.__value_.__l.__data_) = 0;
                      _os_log_impl(&dword_241A16000, v78, OS_LOG_TYPE_DEFAULT, "#I No trace info object is given!", &v104, 2u);
                      if ((SHIBYTE(v105[2].__locale_) & 0x80000000) == 0)
                      {
                        goto LABEL_171;
                      }

                      goto LABEL_182;
                    }

                    goto LABEL_170;
                  }
                }

                v72 = *a3;
                if (v65 >= 0)
                {
                  v73 = a3;
                }

                else
                {
                  v73 = *a3;
                }

                memmove(v71, v73, v66);
                goto LABEL_117;
              }

LABEL_135:
              operator delete(v103.__r_.__value_.__l.__data_);
              if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_89;
              }

              goto LABEL_136;
            }
          }

          memcpy(v54, &__dst, v53);
          goto LABEL_79;
        }

LABEL_131:
        operator delete(__s.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_132;
      }
    }

    memcpy(v43, &__dst, v42);
    goto LABEL_60;
  }

  v38 = *(a1 + 32);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v92 = v107;
    if (SHIBYTE(v107[2]) < 0)
    {
      v92 = v107[0];
    }

    LODWORD(v108[0].__locale_) = 136315138;
    *(&v108[0].__locale_ + 4) = v92;
    _os_log_error_impl(&dword_241A16000, v38, OS_LOG_TYPE_ERROR, "File seems to have disappeared: %s", v108, 0xCu);
  }

  v39 = 0;
LABEL_172:
  *&__str[0] = *v33;
  *(__str + *(*&__str[0] - 24)) = v33[3];
  MEMORY[0x245CF5860](&__str[1]);
  std::istream::~istream();
  MEMORY[0x245CF5AE0](&__str[26] + 8);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v107[2]) & 0x80000000) == 0)
    {
      goto LABEL_174;
    }

LABEL_177:
    operator delete(v107[0]);
    v91 = *MEMORY[0x277D85DE8];
    return v39;
  }

  if (SHIBYTE(v107[2]) < 0)
  {
    goto LABEL_177;
  }

LABEL_174:
  v89 = *MEMORY[0x277D85DE8];
  return v39;
}

void sub_241A61544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  std::ifstream::~ifstream(&a73);
  MEMORY[0x245CF5AE0](a12);
  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  _Unwind_Resume(a1);
}

void sub_241A617B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if ((a57 & 0x80000000) == 0)
  {
    JUMPOUT(0x241A617A8);
  }

  JUMPOUT(0x241A617A0);
}

void sub_241A617C0()
{
  if (v0 < 0)
  {
    v2 = *(v1 - 176);
    JUMPOUT(0x241A617A4);
  }

  JUMPOUT(0x241A617A8);
}

void TraceFileCollection::getStatisticsAsDict_sync(TraceFileCollection *this@<X0>, xpc_object_t *a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  v6 = MEMORY[0x277D86468];
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
      v7 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CF6530](v5) == v6)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  *a2 = v7;
LABEL_9:
  xpc_release(v5);
  if (MEMORY[0x245CF6530](*a2) == v6)
  {
    v9 = *(this + 23);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&v28, v9);
    __p = v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v11 = xpc_string_create(p_p);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, "AP Dropped Bytes", v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v13 = *(this + 37);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&v28, v13);
    __p = v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    v15 = xpc_string_create(v14);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, "Max Memory File Count", v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v17 = *(this + 42);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&v28, v17);
    __p = v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p.__r_.__value_.__r.__words[0];
    }

    v19 = xpc_string_create(v18);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, "Applied Memory File Count", v19);
    v20 = xpc_null_create();
    xpc_release(v19);
    xpc_release(v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v21 = *(this + 44);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&v28, v21);
    __p = v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    v23 = xpc_string_create(v22);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, "Maximum Number of In Memory Files", v23);
    v24 = xpc_null_create();
    xpc_release(v23);
    xpc_release(v24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v25 = *(this + 4);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }
    }

    else
    {
      v25 = *(this + 4);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }
    }

    xpc::object::to_string(&v28, a2);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v28;
    }

    else
    {
      v26 = v28.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v26;
    _os_log_impl(&dword_241A16000, v25, OS_LOG_TYPE_DEFAULT, "#I Trace File Collection Statistics: %s", &__p, 0xCu);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = *(this + 4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_241A16000, v8, OS_LOG_TYPE_ERROR, "Failed to create state dump dictionary", &v28, 2u);
    }
  }

LABEL_47:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_241A61BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x245CF5860](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x245CF5AE0](a1 + 52);
  return a1;
}

void TraceFileCollection::setHistory(TraceFileCollection *this, int a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN19TraceFileCollection10setHistoryEi_block_invoke;
  v4[3] = &__block_descriptor_tmp_20_0;
  v4[4] = this;
  v5 = a2;
  v6 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = this;
  block[5] = &v6;
  v3 = this + 16;
  v2 = *(this + 2);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void ___ZN19TraceFileCollection10setHistoryEi_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = (*(a1 + 40) << 10) / (*(v1 + 152) >> 10);
  v3 = *(v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 144);
    v6[0] = 67109376;
    v6[1] = v2;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I setHistory: Adjusting max file count as %u from the history size, %u", v6, 0xEu);
  }

  *(v1 + 144) = v2;
  v5 = *MEMORY[0x277D85DE8];
}

void TraceFileCollection::setMaxMemoryFileCount(TraceFileCollection *this, int a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN19TraceFileCollection21setMaxMemoryFileCountEj_block_invoke;
  v4[3] = &__block_descriptor_tmp_21_0;
  v4[4] = this;
  v5 = a2;
  v6 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = this;
  block[5] = &v6;
  v3 = this + 16;
  v2 = *(this + 2);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void ___ZN19TraceFileCollection21setMaxMemoryFileCountEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 37) = *(a1 + 40);
  TraceFileCollection::registerForMemoryPressure_sync(v1);
}

void TraceFileCollection::setFileSize(TraceFileCollection *this, int a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN19TraceFileCollection11setFileSizeEj_block_invoke;
  v4[3] = &__block_descriptor_tmp_22_0;
  v4[4] = this;
  v5 = a2;
  v6 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = this;
  block[5] = &v6;
  v3 = this + 16;
  v2 = *(this + 2);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void ___ZN19TraceFileCollection11setFileSizeEj_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v1 + 152) = v2;
  v3 = *(v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2 >> 10;
    _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I Setting file size for trace collection: %u KB", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t TraceFileCollection::getFileSize(TraceFileCollection *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK19TraceFileCollection11getFileSizeEv_block_invoke;
  v5[3] = &unk_278D04E70;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = this;
  block[5] = &v10;
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

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t TraceFileCollection::getNumFilesCaptured(TraceFileCollection *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK19TraceFileCollection19getNumFilesCapturedEv_block_invoke;
  v5[3] = &unk_278D04E98;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = this;
  block[5] = &v10;
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

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

BOOL TraceFileCollection::allowNewMemoryFile_sync(TraceFileCollection *this)
{
  if (!*(this + 42))
  {
    return 1;
  }

  v1 = atomic_load(this + 43);
  return v1 < *(this + 42);
}

unint64_t TraceFileCollection::getDataFileName_sync@<X0>(TraceFileCollection *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = this + 96;
  if (*(this + 119) < 0)
  {
    v4 = *v4;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v5;
  v12 = v5;
  snprintf(__str, 0x20uLL, "0x%08X%s", a2, v4);
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (result | 7) + 1;
    }

    v9 = operator new(v8);
    a3[1] = v7;
    a3[2] = v8 | 0x8000000000000000;
    *a3 = v9;
    a3 = v9;
  }

  else
  {
    *(a3 + 23) = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  result = memcpy(a3, __str, v7);
LABEL_12:
  *(a3 + v7) = 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t TraceFileCollection::getMetaDataFileName_sync@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v4;
  v11 = v4;
  snprintf(__str, 0x20uLL, "0x%08X%s", a1, ".meta");
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (result | 7) + 1;
    }

    v8 = operator new(v7);
    a2[1] = v6;
    a2[2] = v7 | 0x8000000000000000;
    *a2 = v8;
    a2 = v8;
  }

  else
  {
    *(a2 + 23) = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  result = memcpy(a2, __str, v6);
LABEL_10:
  *(a2 + v6) = 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void ___ZN19TraceFileCollection30registerForMemoryPressure_syncEv_block_invoke(void *a1)
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
        data = dispatch_source_get_data(*(v3 + 192));
        *(v3 + 168) = *(v3 + 148);
        if (data == 16)
        {
          v7 = *(v3 + 32);
          v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&dword_241A16000, v7, OS_LOG_TYPE_DEFAULT, "#N Process memory limit warning", buf, 2u);
          }

          if (capabilities::radio::initium(v8))
          {
            v9 = *(v3 + 32);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_241A16000, v9, OS_LOG_TYPE_DEFAULT, "#N No seat belts", buf, 2u);
            }
          }

          else
          {
            *(v3 + 168) = *(v3 + 148) >> 1;
          }

          v10 = *(v3 + 192);
          if (v10)
          {
            v11 = *(v3 + 32);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_241A16000, v11, OS_LOG_TYPE_DEFAULT, "#I De-register from memory pressure notifications", buf, 2u);
              v10 = *(v3 + 192);
            }

            dispatch_source_cancel(v10);
            v12 = *(v3 + 192);
            *(v3 + 192) = 0;
            if (v12)
            {
              dispatch_release(v12);
            }
          }
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrI19TraceFileCollectionEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrI19TraceFileCollectionEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t TraceFileCollection::getNewestFileNumber(TraceFileCollection *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK19TraceFileCollection19getNewestFileNumberEv_block_invoke;
  v5[3] = &unk_278D04EC0;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = this;
  block[5] = &v10;
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

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t TraceFileCollection::Parameters::desc(TraceFileCollection::Parameters *this)
{
  v31 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[7] = v2;
  v30[8] = v2;
  v30[5] = v2;
  v30[6] = v2;
  v30[3] = v2;
  v30[4] = v2;
  v30[1] = v2;
  v30[2] = v2;
  v30[0] = v2;
  v28 = v2;
  v29 = v2;
  v26[2] = v2;
  *v27 = v2;
  v26[0] = v2;
  v26[1] = v2;
  v25 = v2;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v25);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "extension:", 10);
  v4 = *(this + 79);
  if (v4 >= 0)
  {
    v5 = this + 56;
  }

  else
  {
    v5 = *(this + 7);
  }

  if (v4 >= 0)
  {
    v6 = *(this + 79);
  }

  else
  {
    v6 = *(this + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ",scratch path:", 14);
  v9 = *(this + 103);
  if (v9 >= 0)
  {
    v10 = this + 80;
  }

  else
  {
    v10 = *(this + 10);
  }

  if (v9 >= 0)
  {
    v11 = *(this + 103);
  }

  else
  {
    v11 = *(this + 11);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ",max history:", 13);
  v14 = MEMORY[0x245CF5950](v13, *(this + 26));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ",Max Memory File Count:", 23);
  v16 = MEMORY[0x245CF5960](v15, *(this + 27));
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ",file size:", 11);
  v18 = MEMORY[0x245CF5960](v17, *(this + 28));
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", [header info]", 15);
  TraceFileCollection::HeaderOptions::desc(__p, this);
  if ((v24 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v21 = v24;
  }

  else
  {
    v21 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  *&v25 = *MEMORY[0x277D82828];
  *(&v26[-1] + *(v25 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v25 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[1]);
  }

  *(&v25 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  return MEMORY[0x245CF5AE0](v30);
}

void sub_241A62B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CF5A90](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_241A62DA4(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 8) = v4;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x245CF5AE0](v2);
  _Unwind_Resume(a1);
}

uint64_t TraceFileCollection::HeaderOptions::desc(TraceFileCollection::HeaderOptions *this)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[7] = v2;
  v20[8] = v2;
  v20[5] = v2;
  v20[6] = v2;
  v20[3] = v2;
  v20[4] = v2;
  v20[1] = v2;
  v20[2] = v2;
  v19 = v2;
  v20[0] = v2;
  *__p = v2;
  v18 = v2;
  v16[1] = v2;
  v16[2] = v2;
  v15 = v2;
  v16[0] = v2;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "create file:", 12);
  v4 = MEMORY[0x245CF5940](v3, *this);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ",append to each log file:", 25);
  v6 = MEMORY[0x245CF5940](v5, *(this + 1));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ",file name:", 11);
  v10 = *(this + 1);
  v9 = this + 8;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v12, v13);
  std::stringbuf::str();
  *&v15 = *MEMORY[0x277D82828];
  *(&v16[-1] + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v15 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v15 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x245CF5AE0](v20);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x245CF5AE0](a1 + 112);
  return a1;
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x277D82808];
  v2 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x245CF5860](a1 + 2);

  return std::istream::~istream();
}

void *std::shared_ptr<TraceFileCollection>::shared_ptr[abi:ne200100]<TraceFileCollection,std::shared_ptr<TraceFileCollection> ctu::SharedSynchronizable<TraceFileCollection>::make_shared_ptr<TraceFileCollection>(TraceFileCollection*)::{lambda(TraceFileCollection*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2853A3D10;
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

void sub_241A632E8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<TraceFileCollection> ctu::SharedSynchronizable<TraceFileCollection>::make_shared_ptr<TraceFileCollection>(TraceFileCollection*)::{lambda(TraceFileCollection*)#1}::operator() const(TraceFileCollection*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<TraceFileCollection *,std::shared_ptr<TraceFileCollection> ctu::SharedSynchronizable<TraceFileCollection>::make_shared_ptr<TraceFileCollection>(TraceFileCollection*)::{lambda(TraceFileCollection *)#1},std::allocator<TraceFileCollection>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TraceFileCollection *,std::shared_ptr<TraceFileCollection> ctu::SharedSynchronizable<TraceFileCollection>::make_shared_ptr<TraceFileCollection>(TraceFileCollection*)::{lambda(TraceFileCollection *)#1},std::allocator<TraceFileCollection>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI19TraceFileCollectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI19TraceFileCollectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI19TraceFileCollectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI19TraceFileCollectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<TraceFileCollection> ctu::SharedSynchronizable<TraceFileCollection>::make_shared_ptr<TraceFileCollection>(TraceFileCollection*)::{lambda(TraceFileCollection*)#1}::operator() const(TraceFileCollection*)::{lambda(void *)#1}::__invoke(TraceFileCollection *a1)
{
  if (a1)
  {
    TraceFileCollection::~TraceFileCollection(a1);

    operator delete(v1);
  }
}

uint64_t __cxx_global_var_init_9()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_241A16000);
  }

  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7910]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}