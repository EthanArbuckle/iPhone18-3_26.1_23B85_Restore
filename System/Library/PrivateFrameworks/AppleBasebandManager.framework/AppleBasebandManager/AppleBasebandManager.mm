void ___ZN3abm6client7Manager15setEventHandlerERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEU13block_pointerFvPvP16dispatch_group_sE_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  TelephonyXPC::Event::getData(&v12, *a2);
  v4 = dispatch_group_create();
  (*(*(a1 + 32) + 16))();
  global_queue = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1174405120;
  v8[2] = ___ZN3abm6client7Manager15setEventHandlerERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEU13block_pointerFvPvP16dispatch_group_sE_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_7;
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v6 = *(a2 + 8);
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_group_notify(v4, global_queue, v8);
  v7 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  xpc_release(v12);
}

void sub_240122BE0(_Unwind_Exception *a1)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  xpc_release(*(v2 - 40));
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c21_ZTSN8dispatch5groupE40c48_ZTSNSt3__110shared_ptrIN12TelephonyXPC5EventEEE(void *a1, void *a2)
{
  v4 = a2[4];
  a1[4] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = a2[6];
  a1[5] = a2[5];
  a1[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32c21_ZTSN8dispatch5groupE40c48_ZTSNSt3__110shared_ptrIN12TelephonyXPC5EventEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  dispatch_release(v2);
}

void abm::client::PerformCommand(uint64_t *a1, int a2, void *a3, void *a4)
{
  if (*a1)
  {
    v8 = xpc_null_create();
    v9 = v8;
    if (a4)
    {
      xpc_retain(a4);
      xpc_release(v9);
      v10 = *a1;
      object = a4;
    }

    else
    {
      v10 = *a1;
      object = v8;
      if (!v8)
      {
        v11 = xpc_null_create();
        a4 = 0;
        goto LABEL_10;
      }

      a4 = v8;
    }

    if (MEMORY[0x245CBA9E0](a4) == MEMORY[0x277D86468])
    {
      xpc_retain(a4);
LABEL_11:
      abm::client::Manager::perform(v10, a2, a3, &object);
      xpc_release(object);
      object = 0;
      xpc_release(a4);
      return;
    }

    v11 = xpc_null_create();
LABEL_10:
    object = v11;
    goto LABEL_11;
  }
}

void sub_240122DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void abm::client::Manager::perform(uint64_t a1, int a2, void *aBlock, void **a4)
{
  if (!aBlock)
  {
    object = 0xAAAAAAAAAAAAAAAALL;
LABEL_11:
    v8 = 0;
    v12 = 0;
    v22 = 0;
    object = 0;
    v18 = 0;
    v19 = 0;
    v13 = *a4;
    v17 = *a4;
    if (!*a4)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v7 = _Block_copy(aBlock);
  v8 = v7;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  object = 0xAAAAAAAAAAAAAAAALL;
  if (!v7)
  {
    goto LABEL_11;
  }

  aBlocka[0] = MEMORY[0x277D85DD0];
  aBlocka[1] = 1174405120;
  aBlocka[2] = ___ZN3abm6client7Manager7performERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEU13block_pointerFvN12TelephonyXPC6ResultEPvEN3xpc4dictE_block_invoke;
  aBlocka[3] = &__block_descriptor_tmp_5_0;
  v21 = _Block_copy(v7);
  v9 = _Block_copy(aBlocka);
  v10 = *(a1 + 16);
  if (v10)
  {
    dispatch_retain(*(a1 + 16));
  }

  v22 = v9;
  object = v10;
  if (v9)
  {
    v11 = _Block_copy(v9);
    v10 = object;
    v4 = &v21;
    v18 = v11;
    v19 = object;
    if (!object)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = &v21;
  v18 = 0;
  v19 = v10;
  if (v10)
  {
LABEL_7:
    dispatch_retain(v10);
  }

LABEL_8:
  v12 = 1;
  v13 = *a4;
  v17 = *a4;
  if (!*a4)
  {
LABEL_9:
    v17 = xpc_null_create();
    goto LABEL_13;
  }

LABEL_12:
  xpc_retain(v13);
LABEL_13:
  TelephonyXPC::Command::create();
  xpc_release(v17);
  if (v19)
  {
    dispatch_release(v19);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  v14 = *a1;
  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  v15 = *v14;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  v24 = 0xAAAAAAAAAAAAAAAALL;
  TelephonyXPC::Client::perform();
  v16 = v25;
  if (v25 && !atomic_fetch_add((v25 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }

  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  if (v12 && *v4)
  {
    _Block_release(*v4);
  }

  if (v8)
  {
    _Block_release(v8);
  }
}

void sub_24012310C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](v24 - 80);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a14);
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a21);
  if ((v22 & 1) != 0 && *v23)
  {
    _Block_release(*v23);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c67_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC6ResultEPvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void ___ZN3abm6client7Manager7performERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEU13block_pointerFvN12TelephonyXPC6ResultEPvEN3xpc4dictE_block_invoke(uint64_t a1, int *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 32);
  v5 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    __p = *(a2 + 2);
  }

  (*(v4 + 16))(v4, &v5, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_24012326C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c67_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC6ResultEPvEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t ctu::PthreadMutexGuardPolicy<ConnectionObserver>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void ___ZN3abm6client15GetBasebandTimeENSt3__110shared_ptrINS0_7ManagerEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  if (!*(a1 + 32))
  {
    return;
  }

  v6 = xpc_null_create();
  v7 = v6;
  if (!*a2)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    if (v10 || (v10 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x245CBA9E0](v10) == MEMORY[0x277D86468])
      {
        xpc_retain(v10);
        v8 = v10;
      }

      else
      {
        v8 = xpc_null_create();
      }
    }

    else
    {
      v8 = xpc_null_create();
      v10 = 0;
    }

    xpc_release(v10);
    v11 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v11);
    value = xpc_dictionary_get_value(*a3, "KeyBasebandTimeSeconds");
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
    v14 = xpc_dictionary_get_value(*a3, "KeyBasebandTimeMicroSeconds");
    object[0] = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v15 = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
    memset(object, 170, sizeof(object));
    v16 = xpc_dictionary_get_value(*a3, "KeyBasebandTimeAsString");
    v24 = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      v24 = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    xpc_release(v24);
    v17 = xpc_int64_create(v13);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "KeyBasebandTimeSeconds", v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
    v19 = xpc_int64_create(v15);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "KeyBasebandTimeMicroSeconds", v19);
    v20 = xpc_null_create();
    xpc_release(v19);
    xpc_release(v20);
    if (SHIBYTE(object[2]) >= 0)
    {
      v21 = object;
    }

    else
    {
      v21 = object[0];
    }

    v22 = xpc_string_create(v21);
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "KeyBasebandTimeAsString", v22);
    v23 = xpc_null_create();
    xpc_release(v22);
    xpc_release(v23);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }

    v9 = *(a1 + 32);
    LODWORD(object[0]) = *a2;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_32:
    std::string::__init_copy_ctor_external(&object[1], *(a2 + 8), *(a2 + 16));
    goto LABEL_33;
  }

  v8 = v6;
  v9 = *(a1 + 32);
  LODWORD(object[0]) = *a2;
  if (*(a2 + 31) < 0)
  {
    goto LABEL_32;
  }

LABEL_4:
  *&object[1] = *(a2 + 8);
  v26 = *(a2 + 24);
LABEL_33:
  (*(v9 + 16))(v9, object, v8);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(object[1]);
  }

  xpc_release(v8);
}

void sub_240123990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  xpc_release(v17);
  _Unwind_Resume(a1);
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

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C98EA0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_240122000);
  }

  return result;
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_240122000);
  }

  return result;
}

void AppleBasebandManager::create(const void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v24 = *a2;
  if (*a2)
  {
    CFRetain(v5);
  }

  v6 = operator new(0x78uLL);
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  ctu::OsLogContext::OsLogContext(v28, "com.apple.telephony.abm", "AppleBasebandManager::State");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v8 = dispatch_queue_create_with_target_V2("AppleBasebandManager::State", initially_inactive, 0);
  dispatch_set_qos_class_floor(v8, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v8);
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v8;
  if (v8)
  {
    dispatch_retain(v8);
    *(v6 + 3) = 0;
    dispatch_release(v8);
  }

  else
  {
    *(v6 + 3) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x245CBA340](v6 + 32, v29);
  MEMORY[0x245CBA350](v29);
  ctu::OsLogContext::~OsLogContext(v28);
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = v10 + 7;
  if (v10 + 7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    v13 = v6 + 40;
    *(v6 + 6) = 0;
    *(v6 + 7) = 0;
    *(v6 + 5) = 0;
    v6[63] = v11;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    *(v6 + 6) = v11;
    *(v6 + 7) = v12 | 0x8000000000000000;
    *(v6 + 5) = v13;
  }

  v14 = *a1;
  if (v9 >= 0)
  {
    v15 = a1;
  }

  else
  {
    v15 = *a1;
  }

  memmove(v13, v15, v10);
LABEL_22:
  strcpy(v13 + v10, ".client");
  *(v6 + 8) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *(v6 + 9) = 0;
  *(v6 + 10) = 0;
  *(v6 + 11) = 0;
  *(v6 + 12) = v6 + 96;
  *(v6 + 13) = v6 + 96;
  *(v6 + 14) = 0;
  v25 = v6;
  v16 = operator new(0x20uLL);
  v16[1] = 0;
  v17 = v16 + 1;
  *v16 = &unk_2852187F0;
  v16[2] = 0;
  v16[3] = v6;
  v26 = v16;
  v18 = *(v6 + 1);
  if (!v18)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v16 + 2, 1uLL, memory_order_relaxed);
    *v6 = v6;
    *(v6 + 1) = v16;
    if (!atomic_fetch_add(v17, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_43;
    }

LABEL_29:
    v20 = cf;
    if (!cf)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v18->__shared_owners_ != -1)
  {
    goto LABEL_29;
  }

  atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v16 + 2, 1uLL, memory_order_relaxed);
  *v6 = v6;
  *(v6 + 1) = v16;
  v19 = v16;
  std::__shared_weak_count::__release_weak(v18);
  v16 = v19;
  if (atomic_fetch_add(v17, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_29;
  }

LABEL_43:
  v23 = v16;
  (*(*v16 + 16))();
  std::__shared_weak_count::__release_weak(v23);
  v20 = cf;
  if (cf)
  {
LABEL_30:
    CFRelease(v20);
  }

LABEL_31:
  if (v24)
  {
    CFRelease(v24);
  }

  v21 = operator new(0x10uLL);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    *v21 = v25;
    v21[1] = v26;
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *v21 = v25;
    v21[1] = 0;
  }

  AppleBasebandManager::State::init(v25);
  *a3 = v21;
  v28[0] = v21;
  v22 = operator new(0x20uLL);
  *v22 = &unk_285218B88;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = v21;
  a3[1] = v22;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v26)
  {
    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }
  }
}

void sub_240124154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  __cxa_end_catch();
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

AppleBasebandManager::State **AppleBasebandManager::AppleBasebandManager(AppleBasebandManager::State **a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  AppleBasebandManager::State::init(v3);
  return a1;
}

{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  AppleBasebandManager::State::init(v3);
  return a1;
}

uint64_t std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
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

void AppleBasebandManager::State::init(AppleBasebandManager::State *this)
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
  v9[2] = ___ZN20AppleBasebandManager5State4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_18_0;
  v9[4] = this;
  v9[5] = v3;
  v10 = v5;
  v11 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_20;
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

void AppleBasebandManager::setEventHandler(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0uLL;
  v12 = 0;
  ctu::cf::assign();
  v5 = *a1;
  memset(&v10, 0, sizeof(v10));
  if (*a3)
  {
    v6 = _Block_copy(*a3);
    v7 = *(a3 + 8);
    v8 = v6;
    v9 = v7;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = *(a3 + 8);
  v8 = 0;
  v9 = v7;
  if (v7)
  {
LABEL_3:
    dispatch_retain(v7);
  }

LABEL_4:
  AppleBasebandManager::State::setEventHandler(v5, &v10, &v8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
    v5 = *a3;
    if (*a3)
    {
LABEL_3:
      v6 = _Block_copy(v5);
      v7 = *(a3 + 8);
      v8 = v6;
      v9 = v7;
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v10 = *a2;
    v5 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  v7 = *(a3 + 8);
  v8 = 0;
  v9 = v7;
  if (v7)
  {
LABEL_4:
    dispatch_retain(v7);
  }

LABEL_5:
  AppleBasebandManager::State::setEventHandler(v4, &v10, &v8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void AppleBasebandManager::State::setEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN20AppleBasebandManager5State15setEventHandlerENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvNS1_10shared_ptrIN3abm6client5EventEEEEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_47_0;
  v9[4] = a1;
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

  v13 = v9;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = a1;
  block[5] = &v13;
  v7 = *(a1 + 16);
  if (*(a1 + 24))
  {
    dispatch_async_and_wait(v7, block);
    v8 = object;
    if (!object)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  dispatch_sync(v7, block);
  v8 = object;
  if (object)
  {
LABEL_10:
    dispatch_release(v8);
  }

LABEL_11:
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t dispatch::callback<void({block_pointer})(std::shared_ptr<abm::client::Event>)>::~callback(uint64_t a1)
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

void sub_240124890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<abm::client::Event>)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AppleBasebandManager::setEventHandler(uint64_t *a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v16 = 0uLL;
  v17 = 0;
  ctu::cf::assign();
  v7 = *a1;
  memset(&v15, 0, sizeof(v15));
  v8 = *a3;
  v14 = v8;
  if (v8)
  {
    xpc_retain(v8);
    v9 = *a4;
    if (*a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = xpc_null_create();
    v14 = v8;
    v9 = *a4;
    if (*a4)
    {
LABEL_3:
      v10 = _Block_copy(v9);
      v11 = *(a4 + 8);
      v12 = v10;
      v13 = v11;
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v10 = 0;
  v11 = *(a4 + 8);
  v12 = 0;
  v13 = v11;
  if (v11)
  {
LABEL_4:
    dispatch_retain(v11);
  }

LABEL_5:
  AppleBasebandManager::State::setEventHandler(v7, &v15, &v14, &v12);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  xpc_release(v8);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

{
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
    v7 = *a3;
    v13 = v7;
    if (v7)
    {
LABEL_3:
      xpc_retain(v7);
      v8 = *a4;
      if (*a4)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v14 = *a2;
    v7 = *a3;
    v13 = v7;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v7 = xpc_null_create();
  v13 = v7;
  v8 = *a4;
  if (*a4)
  {
LABEL_4:
    v9 = _Block_copy(v8);
    v10 = *(a4 + 8);
    v11 = v9;
    v12 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_14:
  v9 = 0;
  v10 = *(a4 + 8);
  v11 = 0;
  v12 = v10;
  if (v10)
  {
LABEL_5:
    dispatch_retain(v10);
  }

LABEL_6:
  AppleBasebandManager::State::setEventHandler(v6, &v14, &v13, &v11);
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  xpc_release(v7);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void AppleBasebandManager::State::setEventHandler(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1174405120;
  v12[2] = ___ZN20AppleBasebandManager5State15setEventHandlerENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS1_10shared_ptrIN3abm6client5EventEEEEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_48;
  v12[4] = a1;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    __p = *a2;
    v7 = *a3;
    v14 = v7;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = xpc_null_create();
    v8 = *a4;
    if (!*a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  v7 = *a3;
  v14 = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  xpc_retain(v7);
  v8 = *a4;
  if (*a4)
  {
LABEL_7:
    v8 = _Block_copy(v8);
  }

LABEL_8:
  v9 = *(a4 + 8);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v17 = v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = a1;
  block[5] = &v17;
  v10 = *(a1 + 16);
  if (*(a1 + 24))
  {
    dispatch_async_and_wait(v10, block);
    v11 = object;
    if (!object)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  dispatch_sync(v10, block);
  v11 = object;
  if (object)
  {
LABEL_12:
    dispatch_release(v11);
  }

LABEL_13:
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v14);
  v14 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_240124D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<abm::client::Event>)>::~callback(&a10);
  xpc_release(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AppleBasebandManager::eventsOn(AppleBasebandManager *this)
{
  v1 = *this;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN20AppleBasebandManager5State8eventsOnEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_49;
  v3[4] = v1;
  v4 = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_20;
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

void AppleBasebandManager::perform(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    AppleBasebandManager::State::perform(v3, v4, v5);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {

    AppleBasebandManager::State::perform(v3, v4, 0);
  }
}

void AppleBasebandManager::State::perform(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZN20AppleBasebandManager5State7performENSt3__110shared_ptrIN3abm6client7CommandEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_50;
  v6[4] = a1;
  v6[5] = a2;
  v7 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = a1;
  block[5] = &v8;
  v4 = a1 + 16;
  v3 = *(a1 + 16);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
    v5 = v7;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    dispatch_sync(v3, block);
    v5 = v7;
    if (!v7)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }
}

void AppleBasebandManager::perform(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
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

  cf = 0;
  abm::client::Command::create(&aBlock, &cf, &v14);
  if (cf)
  {
    CFRelease(cf);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v7 = *a1;
  v8 = v14;
  v9 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    AppleBasebandManager::State::perform(v7, v8, v9);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  else
  {
    AppleBasebandManager::State::perform(v7, v14, 0);
  }

  v10 = v15;
  if (v15)
  {
    if (!atomic_fetch_add((v15 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a3 + 8);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  cf = 0;
  abm::client::Command::create(a2, &aBlock, &cf, &v15);
  if (cf)
  {
    CFRelease(cf);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v8 = *a1;
  v9 = v15;
  v10 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    AppleBasebandManager::State::perform(v8, v9, v10);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  else
  {
    AppleBasebandManager::State::perform(v8, v15, 0);
  }

  v11 = v16;
  if (v16)
  {
    if (!atomic_fetch_add((v16 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_2401251BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(va1);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(uint64_t a1)
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

void sub_240125384(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(va1);
  _Unwind_Resume(a1);
}

void AppleBasebandManager::eventsOff(AppleBasebandManager *this)
{
  v1 = *this;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN20AppleBasebandManager5State9eventsOffEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_51;
  v3[4] = v1;
  v4 = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_20;
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

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__shared_ptr_pointer<AppleBasebandManager::State *,std::shared_ptr<AppleBasebandManager::State> ctu::SharedSynchronizable<AppleBasebandManager::State>::make_shared_ptr<AppleBasebandManager::State>(AppleBasebandManager::State*)::{lambda(AppleBasebandManager::State *)#1},std::allocator<AppleBasebandManager::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AppleBasebandManager::State *,std::shared_ptr<AppleBasebandManager::State> ctu::SharedSynchronizable<AppleBasebandManager::State>::make_shared_ptr<AppleBasebandManager::State>(AppleBasebandManager::State*)::{lambda(AppleBasebandManager::State *)#1},std::allocator<AppleBasebandManager::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<AppleBasebandManager::State> ctu::SharedSynchronizable<AppleBasebandManager::State>::make_shared_ptr<AppleBasebandManager::State>(AppleBasebandManager::State*)::{lambda(AppleBasebandManager::State*)#1}::operator() const(AppleBasebandManager::State*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = (a1 + 96);
  v3 = *(a1 + 104);
  if (v3 != (a1 + 96))
  {
    do
    {
      v4 = v3[3];
      v27 = 0;
      v28 = v4;
      if (v4)
      {
        v5 = v4[2];
        while (v5)
        {
          v6 = v5;
          atomic_compare_exchange_strong_explicit(v4 + 2, &v6, v5 + 1, memory_order_relaxed, memory_order_relaxed);
          v7 = v6 == v5;
          v5 = v6;
          if (v7)
          {
            v8 = v3[2];
            v27 = v8;
            if (v8)
            {
              boost::signals2::detail::connection_body_base::disconnect(v8);
            }

            if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v4 + 16))(v4);
              if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v4 + 24))(v4);
              }
            }

            break;
          }
        }
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (*(a1 + 112))
  {
    v9 = *(a1 + 104);
    v10 = *(*(a1 + 96) + 8);
    v11 = *v9;
    *(v11 + 8) = v10;
    *v10 = v11;
    *(a1 + 112) = 0;
    if (v9 != v2)
    {
      do
      {
        v12 = v9[1];
        v13 = v9[3];
        if (v13 && atomic_fetch_add(v13 + 3, 0xFFFFFFFF) == 1)
        {
          v14 = v9;
          (*(*v13 + 24))(v13);
          v9 = v14;
        }

        operator delete(v9);
        v9 = v12;
      }

      while (v12 != v2);
    }
  }

  v15 = **(a1 + 80);
  v27 = MEMORY[0x277D85DD0];
  v28 = 0x40000000;
  v29 = ___ZN3abm6client9Transport5State8checkOutEv_block_invoke;
  v30 = &__block_descriptor_tmp_43;
  v31 = v15;
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped((v15 + 8), &v27);
  if (*(a1 + 112))
  {
    v16 = *(a1 + 104);
    v17 = *(*(a1 + 96) + 8);
    v18 = *v16;
    *(v18 + 8) = v17;
    *v17 = v18;
    *(a1 + 112) = 0;
    if (v16 != v2)
    {
      do
      {
        v19 = v16[1];
        v20 = v16[3];
        if (v20 && atomic_fetch_add(v20 + 3, 0xFFFFFFFF) == 1)
        {
          v21 = v16;
          (*(*v20 + 24))(v20);
          v16 = v21;
        }

        operator delete(v16);
        v16 = v19;
      }

      while (v19 != v2);
    }
  }

  v22 = *(a1 + 88);
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v23 = *(a1 + 64);
    if (!v23)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v23 = *(a1 + 64);
  if (v23)
  {
LABEL_32:
    CFRelease(v23);
  }

LABEL_33:
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  MEMORY[0x245CBA350](a1 + 32);
  v24 = *(a1 + 24);
  if (v24)
  {
    dispatch_release(v24);
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    dispatch_release(v25);
  }

  v26 = *(a1 + 8);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  operator delete(a1);
}

void sub_2401258A4(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::shared_ptr<boost::signals2::detail::connection_body_base>::~shared_ptr(va);
  __clang_call_terminate(a1);
}

void boost::signals2::detail::connection_body_base::disconnect(boost::signals2::detail::connection_body_base *this)
{
  v12 = *MEMORY[0x277D85DE8];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[8] = v2;
  v7[9] = v2;
  v7[6] = v2;
  v7[7] = v2;
  v7[4] = v2;
  v7[5] = v2;
  v7[2] = v2;
  v7[3] = v2;
  v7[0] = v2;
  v7[1] = v2;
  v8 = 10;
  __p = v7;
  v10 = 0;
  v11 = this;
  (*(*this + 24))(this);
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(this, v7);
  }

  (*(*v11 + 32))(v11);
  v3 = __p;
  if (__p)
  {
    if (v10 > 0)
    {
      v5 = __p + 16 * v10;
      do
      {
        v6 = *(v5 - 1);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v3);
    }

    if (v8 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_240125A8C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    v3 = a1[22];
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (a1[20] >= 0xBuLL)
    {
      operator delete(a1[21]);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<void>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (!v2)
  {
    (*(*a1 + 40))(&v5);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(a2, &v5);
    v4 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      if (atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 176);
  if (v4 != *(a1 + 160))
  {
    v11 = *a2;
    *(*(a1 + 168) + 16 * v4) = *a2;
    v12 = *(&v11 + 1);
    if (!*(&v11 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v4 == -1)
  {
    v15 = *a2;
    *(*(a1 + 168) - 16) = *a2;
    v12 = *(&v15 + 1);
    if (!*(&v15 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (4 * v4 <= (v4 + 1))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4 * v4;
  }

  v6 = a1;
  if (v5 >= 0xB)
  {
    if (v5 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = operator new(16 * v5);
  }

  v7 = *(a1 + 168);
  if (v4)
  {
    v8 = &v7[2 * v4];
    v9 = v6;
    do
    {
      v10 = v7[1];
      *v9 = *v7;
      v9[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      }

      v7 += 2;
      v9 += 2;
    }

    while (v7 != v8);
    v7 = *(a1 + 168);
  }

  if (v7)
  {
    v13 = *(a1 + 176);
    if (v13 > 0)
    {
      v16 = &v7[2 * v13];
      do
      {
        v17 = *(v16 - 1);
        if (v17)
        {
          if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v17 + 16))(v17);
            if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v17 + 24))(v17);
            }
          }
        }

        v16 -= 2;
      }

      while (v16 > v7);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  *(a1 + 160) = v5;
  *(a1 + 168) = v6;
  v4 = *(a1 + 176);
  v14 = *a2;
  *&v6[2 * v4] = *a2;
  v12 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
LABEL_15:
    atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 176);
  }

LABEL_16:
  *(a1 + 176) = v4 + 1;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(uint64_t a1)
{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body_base>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::connection::~connection(boost::signals2::connection *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void *ctu::SharedSynchronizable<AppleBasebandManager::State>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN20AppleBasebandManager5State4initEv_block_invoke(uint64_t a1)
{
  v153 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  pthread_mutex_lock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  v3 = off_280AFDA78;
  if (!off_280AFDA78)
  {
    v4 = operator new(0x50uLL);
    ConnectionObserver::ConnectionObserver(v4);
    memset(v137, 170, 16);
    std::shared_ptr<ConnectionObserver>::shared_ptr[abi:ne200100]<ConnectionObserver,0>(v137, v4);
    v5 = *v137;
    *v137 = 0;
    *&v137[8] = 0;
    v6 = *(&off_280AFDA78 + 1);
    off_280AFDA78 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *&v137[8];
    if (*&v137[8] && !atomic_fetch_add((*&v137[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v3 = off_280AFDA78;
  }

  cf[1] = v3;
  v124 = *(&off_280AFDA78 + 1);
  if (*(&off_280AFDA78 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280AFDA78 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE13connect_eventIN5boost8signals26signalIFvvENS6_19optional_last_valueIvEEiNSt3__14lessIiEENS5_8functionIS8_EENSE_IFvRKNS6_10connectionEEEENS6_5mutexEEES2_vJEEEDTcl7connectfp_cvNSB_10shared_ptrIS2_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSR_ST_E_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_21;
  aBlock[4] = v2;
  aBlock[5] = AppleBasebandManager::State::handleServerReady_sync;
  aBlock[6] = 0;
  v8 = _Block_copy(aBlock);
  v115 = v3;
  v9 = v2[1];
  if (!v9 || (v117 = *v2, (v118 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v2[2];
  v127 = v10;
  if (v8)
  {
    v11 = _Block_copy(v8);
  }

  else
  {
    v11 = 0;
  }

  v128 = v11;
  dispatch_retain(v10);
  v129 = 0u;
  v130 = 0u;
  v133 = v10;
  if (v11)
  {
    v11 = _Block_copy(v11);
  }

  v134 = v11;
  dispatch_retain(v10);
  object = v10;
  v113 = v2;
  v114 = a1;
  v112 = v8;
  if (!v11)
  {
    v136 = 0;
    dispatch_retain(v10);
    goto LABEL_27;
  }

  v12 = _Block_copy(v11);
  v136 = v12;
  dispatch_retain(v10);
  if (!v12)
  {
LABEL_27:
    dispatch_retain(v10);
    v150 = 0;
    goto LABEL_28;
  }

  v13 = _Block_copy(v12);
  dispatch_retain(v10);
  v150 = 0;
  if (!v13)
  {
LABEL_28:
    dispatch_retain(v10);
    v13 = 0;
    v19 = 1;
LABEL_29:
    v18 = v13;
    dispatch_retain(v10);
    v14 = 0;
    v20 = 1;
LABEL_30:
    dispatch_retain(v10);
    v116 = 0;
    v21 = 1;
LABEL_31:
    dispatch_retain(v10);
    v16 = 0;
    v151 = v10;
    v22 = 1;
    goto LABEL_32;
  }

  v14 = _Block_copy(v13);
  dispatch_retain(v10);
  if (!v14)
  {
    v19 = 0;
    goto LABEL_29;
  }

  v15 = _Block_copy(v14);
  dispatch_retain(v10);
  if (!v15)
  {
    v18 = v13;
    v19 = 0;
    v20 = 0;
    goto LABEL_30;
  }

  v116 = v15;
  v16 = _Block_copy(v15);
  dispatch_retain(v10);
  if (!v16)
  {
    v18 = v13;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_31;
  }

  v17 = _Block_copy(v16);
  dispatch_retain(v10);
  v151 = v10;
  if (v17)
  {
    v18 = v13;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v152 = _Block_copy(v17);
    dispatch_retain(v10);
    dispatch_release(v10);
    _Block_release(v17);
    goto LABEL_33;
  }

  v18 = v13;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
LABEL_32:
  v152 = 0;
  dispatch_retain(v10);
  dispatch_release(v10);
LABEL_33:
  dispatch_release(v10);
  if ((v22 & 1) == 0)
  {
    _Block_release(v16);
  }

  dispatch_release(v10);
  if ((v21 & 1) == 0)
  {
    _Block_release(v116);
  }

  v150 = boost::function0<void>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>)::stored_vtable;
  dispatch_release(v10);
  if ((v20 & 1) == 0)
  {
    _Block_release(v14);
  }

  dispatch_release(v10);
  if ((v19 & 1) == 0)
  {
    _Block_release(v18);
  }

  *v137 = 0;
  memset(&v137[8], 170, 24);
  boost::function0<void>::move_assign(v137, &v150);
  boost::function0<void>::move_assign(&v150, &v130 + 8);
  boost::function0<void>::move_assign(&v130 + 8, v137);
  if (*v137 && (v137[0] & 1) == 0 && **v137)
  {
    (**v137)(&v137[8], &v137[8], 2);
  }

  if (v150)
  {
    if ((v150 & 1) == 0 && *v150)
    {
      (*v150)(&v151, &v151, 2u);
    }

    v150 = 0;
  }

  dispatch_release(object);
  if (v136)
  {
    _Block_release(v136);
  }

  dispatch_release(v133);
  if (v134)
  {
    _Block_release(v134);
  }

  atomic_fetch_add_explicit(&v118->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v23 = operator new(0x18uLL);
  *v23 = &unk_285218A48;
  v23[1] = v117;
  v23[2] = v118;
  atomic_fetch_add_explicit(&v118->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = operator new(0x18uLL);
  v24->isa = &unk_285218A48;
  v24[1].isa = v117;
  v24[2].isa = v118;
  atomic_fetch_add_explicit(&v118->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v151 = v24;
  LODWORD(v150) = 2;
  v25 = *(&v129 + 1);
  if (*(&v129 + 1) < v130)
  {
    isa = &unk_285218A48;
    v27 = operator new(0x18uLL);
    *v27 = &unk_285218A48;
    v27[1] = v117;
    v27[2] = v118;
    atomic_fetch_add_explicit(&v118->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v25 + 8) = v27;
    *v25 = 2;
    *(&v129 + 1) = v25 + 24;
LABEL_56:
    (isa)[1](v24);
    goto LABEL_57;
  }

  v58 = v129;
  v59 = *(&v129 + 1) - v129;
  v60 = (*(&v129 + 1) - v129) >> 3;
  v61 = 0xAAAAAAAAAAAAAAABLL * v60 + 1;
  if (v61 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((v130 - v129) >> 3) > v61)
  {
    v61 = 0x5555555555555556 * ((v130 - v129) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v130 - v129) >> 3) >= 0x555555555555555)
  {
    v62 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v62 = v61;
  }

  *&v138 = &v129;
  if (v62)
  {
    if (v62 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v63 = operator new(24 * v62);
  }

  else
  {
    v63 = 0;
  }

  v84 = &v63[8 * v60];
  *v137 = v63;
  *&v137[8] = v84;
  *&v137[16] = v84;
  *&v137[24] = &v63[24 * v62];
  v85 = operator new(0x18uLL);
  *v85 = &unk_285218A48;
  v85[1] = v117;
  v85[2] = v118;
  atomic_fetch_add_explicit(&v118->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(v84 + 1) = v85;
  *v84 = 2;
  *&v137[16] = v84 + 24;
  if (v58 != v25)
  {
    v111 = v59;
    v86 = 0;
    do
    {
      v87 = &v58[v86];
      v88 = &v63[v86];
      v89 = *&v58[v86 + 8];
      if ((*&v58[v86] ^ (*&v58[v86] >> 31)) == 2)
      {
        *(v88 + 1) = (*(*v89 + 32))(v89);
      }

      else
      {
        *(v88 + 1) = v89;
        v90 = *&v58[v86 + 16];
        *&v63[v86 + 16] = v90;
        if (v90)
        {
          atomic_fetch_add_explicit((v90 + 12), 1u, memory_order_relaxed);
        }
      }

      *&v63[v86] = *v87 ^ (*v87 >> 31);
      v86 += 24;
    }

    while (v87 + 6 != v25);
    v59 = v111;
    do
    {
      boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v58);
      v58 += 24;
    }

    while (v58 != v25);
    v58 = v129;
  }

  *&v129 = &v84[-v59];
  *(&v129 + 1) = v84 + 24;
  *&v130 = &v63[24 * v62];
  if (v58)
  {
    operator delete(v58);
  }

  v91 = v150 ^ (v150 >> 31);
  *(&v129 + 1) = v84 + 24;
  if (v91 == 2)
  {
    v24 = v151;
    if (!v151)
    {
      goto LABEL_57;
    }

    isa = v151->isa;
    goto LABEL_56;
  }

  if (v91 == 1)
  {
    v92 = v152;
    if (v152 && atomic_fetch_add(v152 + 3, 0xFFFFFFFF) == 1)
    {
LABEL_153:
      (*(*v92 + 24))(v92);
    }
  }

  else
  {
    v92 = v152;
    if (v152 && atomic_fetch_add(v152 + 3, 0xFFFFFFFF) == 1)
    {
      goto LABEL_153;
    }
  }

LABEL_57:
  (*(*v23 + 8))(v23);
  std::__shared_weak_count::__release_weak(v118);
  v28 = *(v115 + 5);
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v144 = v29;
  v145 = v29;
  v142 = v29;
  v143 = v29;
  v140 = v29;
  v141 = v29;
  v138 = v29;
  v139 = v29;
  *v137 = v29;
  *&v137[16] = v29;
  v30 = v28[3];
  v146 = 10;
  __p = v137;
  v148 = 0;
  v149 = v30;
  pthread_mutex_lock(v30);
  v31 = v28[1];
  if (!v31 || atomic_load_explicit((v31 + 8), memory_order_acquire) != 1)
  {
    v35 = operator new(0x20uLL);
    v36 = *v28;
    v37 = **v28;
    v38 = operator new(0x40uLL);
    boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::grouped_list(v38, v37);
    *v35 = v38;
    *(v35 + 1) = 0;
    boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>(v35, v38, v35 + 1);
    *(v35 + 2) = v36[2];
    v39 = v36[3];
    *(v35 + 3) = v39;
    if (v39)
    {
      atomic_fetch_add_explicit((v39 + 8), 1u, memory_order_relaxed);
    }

    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>(v28, v35);
    v32 = **v28;
    v34 = -1;
LABEL_64:
    v33 = *(v32 + 8);
    v150 = v33;
    if (v32 == v33)
    {
      goto LABEL_85;
    }

    goto LABEL_65;
  }

  v32 = **v28;
  v33 = v28[2];
  v34 = 1;
  if (v33 == v32)
  {
    goto LABEL_64;
  }

  v150 = v28[2];
LABEL_65:
  v40 = 0;
  do
  {
    v42 = v33[2];
    v43 = *(v42 + 32);
    if (v43)
    {
      for (i = *v43; i != v43[1]; i += 24)
      {
        if ((*i ^ (*i >> 31)) > 1)
        {
          if ((*(**(i + 8) + 24))(*(i + 8)))
          {
            goto LABEL_81;
          }
        }

        else
        {
          v45 = *(i + 16);
          if (!v45 || !atomic_load_explicit((v45 + 8), memory_order_acquire))
          {
LABEL_81:
            if (*(v42 + 24) == 1)
            {
              *(v42 + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v42, v137);
            }

            break;
          }
        }
      }
    }

    v46 = v150[2];
    if (*(v46 + 24))
    {
      v33 = v150[1];
    }

    else
    {
      v33 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::erase(**v28, (v46 + 64), &v150);
    }

    v150 = v33;
    ++v40;
  }

  while (v33 != **v28 && v34 >= v40);
LABEL_85:
  v28[2] = v33;
  v47 = operator new(0x50uLL);
  *(v47 + 1) = 0;
  *(v47 + 2) = 0;
  v47[24] = 1;
  *(v47 + 7) = 1;
  *v47 = &unk_2852188A0;
  v48 = operator new(0x38uLL);
  *v48 = 0;
  v48[1] = 0;
  v48[2] = 0;
  v49 = v129;
  v150 = v48;
  v151 = 0xAAAAAAAAAAAAAA00;
  v50 = *(&v129 + 1) - v129;
  if (*(&v129 + 1) != v129)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v50 >> 3) > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__throw_length_error[abi:ne200100]();
    }

    v51 = operator new(*(&v129 + 1) - v129);
    v52 = 0;
    *v48 = v51;
    v48[1] = v51;
    v48[2] = (v51 + v50);
    do
    {
      v53 = (v49 + v52);
      v54 = v51 + v52;
      v55 = *(v49 + v52 + 8);
      if ((*(v49 + v52) ^ (*(v49 + v52) >> 31)) == 2)
      {
        *(v54 + 1) = (*(*v55 + 32))(v55);
      }

      else
      {
        *(v54 + 1) = v55;
        v56 = *(v49 + v52 + 16);
        *(v51 + v52 + 16) = v56;
        if (v56)
        {
          atomic_fetch_add_explicit((v56 + 12), 1u, memory_order_relaxed);
        }
      }

      *(v51 + v52) = *v53 ^ (*v53 >> 31);
      v52 += 24;
    }

    while (v53 + 6 != *(&v49 + 1));
    v48[1] = (v51 + v52);
  }

  v48[3] = 0;
  v57 = *(&v130 + 1);
  if (*(&v130 + 1))
  {
    v48[3] = *(&v130 + 1);
    if (v57)
    {
      *(v48 + 2) = v131;
      v48[6] = v132;
    }

    else
    {
      (*v57)(&v131, v48 + 32, 0);
    }
  }

  *(v47 + 5) = 0;
  *(v47 + 4) = v48;
  v64 = operator new(0x18uLL);
  v64[1] = 0x100000001;
  *v64 = &unk_285218948;
  v64[2] = v48;
  *(v47 + 5) = v64;
  *(v47 + 6) = v28[3];
  v65 = v28[4];
  *(v47 + 7) = v65;
  if (v65)
  {
    atomic_fetch_add_explicit((v65 + 8), 1u, memory_order_relaxed);
  }

  *(v47 + 16) = 0;
  v47[68] = 0;
  object = v47;
  v136 = 0;
  v66 = operator new(0x18uLL);
  *(v66 + 1) = 0x100000001;
  *v66 = &unk_2852189A8;
  *(v66 + 2) = v47;
  v136 = v66;
  v67 = **v28;
  v68 = operator new(0x20uLL);
  v69 = v67 + 4;
  v68[2] = v47;
  v68[3] = v66;
  atomic_fetch_add_explicit(v66 + 2, 1u, memory_order_relaxed);
  v70 = *v67;
  *(v70 + 8) = v68;
  *v68 = v70;
  *v67 = v68;
  v68[1] = v67;
  ++v67[2];
  v71 = v67[4];
  if (v71)
  {
    v72 = v67 + 4;
    v73 = v67[4];
    do
    {
      v74 = *(v73 + 8);
      v75 = v74 == 2;
      v76 = v74 < 2;
      v77 = v74 < 2;
      if (!v76)
      {
        v72 = v73;
      }

      if (v75)
      {
        v72 = v73;
      }

      v73 = v73[v77];
    }

    while (v73);
    if (v72 == v69 || *(v72 + 8) != 2)
    {
      v78 = *(v71 + 8);
      while (v78 != 2)
      {
        if (v78 < 3)
        {
          v79 = v71[1];
          if (!v79)
          {
            v69 = v71 + 1;
            goto LABEL_127;
          }
        }

        else
        {
          v79 = *v71;
          v69 = v71;
          if (!*v71)
          {
            goto LABEL_127;
          }
        }

        v78 = *(v79 + 8);
        v71 = v79;
      }
    }

    *(v47 + 16) = 2;
    *(v47 + 68) = 0xAAAAAAAAAAAAAA00;
  }

  else
  {
    v71 = v67 + 4;
LABEL_127:
    v80 = operator new(0x38uLL);
    v80[4] = 0xAAAAAA0000000002;
    *(v80 + 10) = -1431655766;
    v80[6] = v68;
    *v80 = 0;
    v80[1] = 0;
    v80[2] = v71;
    *v69 = v80;
    v81 = *v67[3];
    if (v81)
    {
      v67[3] = v81;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v67[4], v80);
    ++v67[5];
    v47 = object;
    v66 = v136;
    LODWORD(object[8].isa) = 2;
    *(v47 + 68) = 0xAAAAAAAAAAAAAA00;
    if (!v66)
    {
      v125 = v47;
      v82 = v114;
      v83 = v136;
      if (!v136)
      {
        goto LABEL_155;
      }

      goto LABEL_133;
    }
  }

  v82 = v114;
  atomic_fetch_add_explicit(v66 + 3, 1u, memory_order_relaxed);
  *&v125 = v47;
  *(&v125 + 1) = v66;
  atomic_fetch_add_explicit(v66 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v66 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v66 + 24))(v66);
  }

  v83 = v136;
  if (v136)
  {
LABEL_133:
    if (atomic_fetch_add(v83 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v83 + 16))(v83);
      if (atomic_fetch_add(v83 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v83 + 24))(v83);
      }
    }
  }

LABEL_155:
  pthread_mutex_unlock(v149);
  v93 = __p;
  if (__p)
  {
    if (v148 > 0)
    {
      v109 = __p + 16 * v148;
      do
      {
        v110 = *(v109 - 1);
        if (v110)
        {
          if (atomic_fetch_add(v110 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v110 + 16))(v110);
            if (atomic_fetch_add(v110 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v110 + 24))(v110);
            }
          }
        }

        v109 -= 16;
      }

      while (v109 > v93);
    }

    if (v146 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v94 = v118;
  if (*(&v130 + 1))
  {
    if ((BYTE8(v130) & 1) == 0 && **(&v130 + 1))
    {
      (**(&v130 + 1))(&v131, &v131, 2);
    }

    *(&v130 + 1) = 0;
  }

  v95 = v129;
  if (v129)
  {
    v96 = *(&v129 + 1);
    v97 = v129;
    if (*(&v129 + 1) != v129)
    {
      do
      {
        v96 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v96);
      }

      while (v96 != v95);
      v97 = v129;
    }

    *(&v129 + 1) = v95;
    operator delete(v97);
    v94 = v118;
  }

  dispatch_release(v127);
  if (v128)
  {
    _Block_release(v128);
  }

  if (atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v98 = v112;
    if (!v112)
    {
      goto LABEL_176;
    }

    goto LABEL_175;
  }

  (v94->__on_zero_shared)(v94);
  std::__shared_weak_count::__release_weak(v94);
  v98 = v112;
  if (v112)
  {
LABEL_175:
    _Block_release(v98);
  }

LABEL_176:
  v99 = operator new(0x20uLL);
  v99[1] = v125;
  v125 = 0uLL;
  *(v99 + 1) = v113 + 12;
  v100 = v113[12];
  *v99 = v100;
  *(v100 + 1) = v99;
  v113[12] = v99;
  v113[14] = (v113[14] + 1);
  if (!v124 || atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v101 = v113[8];
    cf[0] = v101;
    if (!v101)
    {
      goto LABEL_180;
    }

    goto LABEL_179;
  }

  (v124->__on_zero_shared)(v124);
  std::__shared_weak_count::__release_weak(v124);
  v101 = v113[8];
  cf[0] = v101;
  if (v101)
  {
LABEL_179:
    CFRetain(v101);
  }

LABEL_180:
  v119[0] = MEMORY[0x277D85DD0];
  v119[1] = 1174405120;
  v119[2] = ___ZN20AppleBasebandManager5State4initEv_block_invoke_2;
  v119[3] = &__block_descriptor_tmp_3;
  v102 = *(v82 + 48);
  v119[4] = *(v82 + 40);
  v120 = v102;
  if (v102)
  {
    atomic_fetch_add_explicit(&v102->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v103 = _Block_copy(v119);
  v104 = v113[2];
  if (v104)
  {
    dispatch_retain(v113[2]);
  }

  v121 = v103;
  v122 = v104;
  abm::client::Transport::create((v113 + 5), cf, &v121, v137);
  v105 = *v137;
  *v137 = 0;
  *&v137[8] = 0;
  v106 = v113[11];
  *(v113 + 5) = v105;
  if (v106 && !atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v106->__on_zero_shared)(v106);
    std::__shared_weak_count::__release_weak(v106);
  }

  v107 = *&v137[8];
  if (*&v137[8] && !atomic_fetch_add((*&v137[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v107->__on_zero_shared)(v107);
    std::__shared_weak_count::__release_weak(v107);
  }

  if (v122)
  {
    dispatch_release(v122);
  }

  if (v121)
  {
    _Block_release(v121);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  AppleBasebandManager::State::checkIn_sync(v113);
  if (v120)
  {
    std::__shared_weak_count::__release_weak(v120);
  }

  v108 = *MEMORY[0x277D85DE8];
}

void sub_2401275E4(uint64_t a1, int a2)
{
  if (a2)
  {
    boost::signals2::slot_base::~slot_base(v2);
    JUMPOUT(0x240127908);
  }

  JUMPOUT(0x24012794CLL);
}

void sub_2401275FC()
{
  operator delete(v0);
  pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  JUMPOUT(0x24012794CLL);
}

void sub_2401276B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, char a26, uint64_t a27, const void *a28)
{
  dispatch::callback<void({block_pointer})(abm::client::TransportStatus)>::~callback(&a26);
  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a28);
  _Unwind_Resume(a1);
}

void sub_2401276DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  boost::signals2::connection::~connection(&a31);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void sub_2401276FC(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    (*(*v2 + 8))(v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x24012794CLL);
}

void sub_24012773C(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count((v2 + 8));
    JUMPOUT(0x240127954);
  }

  JUMPOUT(0x24012794CLL);
}

void sub_240127758(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::slot<void ()(void),boost::function<void ()(void)>>>(v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x24012794CLL);
}

void sub_240127778(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count(v2);
    JUMPOUT(0x240127910);
  }

  JUMPOUT(0x24012794CLL);
}

void sub_240127794(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x24012794CLL);
  }

  JUMPOUT(0x240127910);
}

void sub_2401277A0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a2)
  {
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(&a55);
    JUMPOUT(0x24012795CLL);
  }

  JUMPOUT(0x24012794CLL);
}

void sub_2401277B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x24012794CLL);
  }

  JUMPOUT(0x24012789CLL);
}

void sub_2401277C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x24012794CLL);
  }

  JUMPOUT(0x2401278C4);
}

void sub_2401277E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x24012794CLL);
  }

  JUMPOUT(0x240127900);
}

void sub_2401277EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a2)
  {
    boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::~shared_ptr(&a53);
    JUMPOUT(0x240127954);
  }

  JUMPOUT(0x24012794CLL);
}

void sub_240127804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, char a53, uint64_t a54, char a55)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AppleBasebandManager::State::handleServerReady_sync(AppleBasebandManager::State *this)
{
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v4[0]) = 0;
    _os_log_debug_impl(&dword_240122000, v2, OS_LOG_TYPE_DEBUG, "#D Server ready", v4, 2u);
  }

  v3 = **(this + 10);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN3abm6client9Transport5State9reconnectEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_31;
  v4[4] = v3;
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped((v3 + 8), v4);
  AppleBasebandManager::State::checkIn_sync(this);
  if (*(this + 19))
  {
    AppleBasebandManager::State::eventsOn_sync(this);
  }
}

void ___ZN20AppleBasebandManager5State4initEv_block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_16;
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
LABEL_15:
          if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_16;
          }

LABEL_19:
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            return;
          }

          goto LABEL_20;
        }

LABEL_11:
        AppleBasebandManager::State::changeCheckInState_sync(v7, 0);
        if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_16;
        }

        goto LABEL_19;
      }

      a2 = 0;
    }

    AppleBasebandManager::State::changeEventsState_sync(v7, a2);
    goto LABEL_15;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  AppleBasebandManager::State::changeCheckInState_sync(v7, 2);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

LABEL_16:
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return;
  }

LABEL_20:
  (v6->__on_zero_shared)(v6);

  std::__shared_weak_count::__release_weak(v6);
}

uint64_t __copy_helper_block_e8_32c53_ZTSNSt3__18weak_ptrIN20AppleBasebandManager5StateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c53_ZTSNSt3__18weak_ptrIN20AppleBasebandManager5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void AppleBasebandManager::State::checkIn_sync(AppleBasebandManager::State *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(this + 18);
  if (!v1)
  {
    AppleBasebandManager::State::changeCheckInState_sync(this, 1);
    v6 = **(this + 10);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 0x40000000;
    v17 = ___ZN3abm6client9Transport5State7checkInEv_block_invoke;
    v18 = &__block_descriptor_tmp_32;
    v19 = v6;
    p_buf = &buf;
    block = MEMORY[0x277D85DD0];
    v11 = 0x40000000;
    v12 = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v13 = &__block_descriptor_tmp_18;
    v14 = v6 + 8;
    p_p_buf = &p_buf;
    v7 = *(v6 + 24);
    if (*(v6 + 32))
    {
      dispatch_async_and_wait(v7, &block);
    }

    else
    {
      dispatch_sync(v7, &block);
    }

    goto LABEL_9;
  }

  v2 = *(this + 4);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_9;
  }

  if (v1 == 2)
  {
    v3 = &v11 + 1;
    HIBYTE(v12) = 9;
    LOBYTE(v11) = 110;
    v4 = "CheckedIn";
    goto LABEL_11;
  }

  if (v1 == 1)
  {
    v3 = &v11 + 2;
    HIBYTE(v12) = 10;
    LOWORD(v11) = 28233;
    v4 = "CheckingIn";
LABEL_11:
    block = *v4;
    goto LABEL_13;
  }

  v3 = &block + 7;
  HIBYTE(v12) = 7;
  qmemcpy(&block, "Unknown", 7);
LABEL_13:
  *v3 = 0;
  LODWORD(buf) = 136315138;
  *(&buf + 4) = &block;
  _os_log_debug_impl(&dword_240122000, v2, OS_LOG_TYPE_DEBUG, "#D Checked in state is %s, skipping", &buf, 0xCu);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(block);
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __copy_helper_block_e8_40c53_ZTSNSt3__18weak_ptrIN20AppleBasebandManager5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c53_ZTSNSt3__18weak_ptrIN20AppleBasebandManager5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

uint64_t ___ZN3ctu20SharedSynchronizableIN20AppleBasebandManager5StateEE13connect_eventIN5boost8signals26signalIFvvENS6_19optional_last_valueIvEEiNSt3__14lessIiEENS5_8functionIS8_EENSE_IFvRKNS6_10connectionEEEENS6_5mutexEEES2_vJEEEDTcl7connectfp_cvNSB_10shared_ptrIS2_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSR_ST_E_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(uint64_t a1)
{
  pthread_mutex_unlock(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

atomic_uint *boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>(uint64_t *a1, uint64_t a2)
{
  v6 = a2;
  result = boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>(&v6, a2, &v6 + 1);
  v4 = *a1;
  v5 = a1[1];
  *a1 = v6;
  *&v6 = v4;
  *(&v6 + 1) = v5;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_2401280A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_285218C48;
  *(result + 2) = a2;
  v6 = *a3;
  *a3 = result;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
    if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  return result;
}

void sub_24012819C(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      v7 = operator new(0x20uLL);
      v8 = v4[3];
      v7[2] = v4[2];
      v7[3] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
        v6 = *a1;
        v5 = *(a1 + 16);
      }

      *v7 = v6;
      v7[1] = a1;
      v6[1] = v7;
      *a1 = v7;
      *(a1 + 16) = ++v5;
      v4 = v4[1];
      v6 = v7;
    }

    while (v4 != a2);
  }

  *(a1 + 24) = 0;
  v9 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = a1 + 32;
  v10 = *(a2 + 24);
  v11 = (a2 + 32);
  if (v10 != (a2 + 32))
  {
    do
    {
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v34 = 0xAAAAAAAAAAAAAAAALL;
      v12 = std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>((a1 + 24), (a1 + 32), &v34, &v33, v10 + 8);
      if (*v12)
      {
        v13 = *(v10 + 1);
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v14 = operator new(0x38uLL);
        v15 = *(v10 + 2);
        v14[6] = *(v10 + 6);
        *(v14 + 2) = v15;
        v16 = v34;
        *v14 = 0;
        v14[1] = 0;
        v14[2] = v16;
        *v12 = v14;
        v17 = **v9;
        if (v17)
        {
          *v9 = v17;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v14);
        ++*(a1 + 40);
        v13 = *(v10 + 1);
        if (v13)
        {
          do
          {
LABEL_15:
            v18 = v13;
            v13 = *v13;
          }

          while (v13);
          goto LABEL_8;
        }
      }

      do
      {
        v18 = *(v10 + 2);
        v19 = *v18 == v10;
        v10 = v18;
      }

      while (!v19);
LABEL_8:
      v10 = v18;
    }

    while (v18 != v11);
  }

  *(a1 + 56) = *(a2 + 56);
  v20 = *(a2 + 24);
  if (v20 != v11)
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 8);
    do
    {
      v21[6] = v22;
      v23 = a2;
      if (v20 != v11)
      {
        v23 = *(v20 + 6);
      }

      v24 = *(v20 + 1);
      v25 = v24;
      v26 = v20;
      if (v24)
      {
        do
        {
          v27 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v27 = *(v26 + 2);
          v19 = *v27 == v26;
          v26 = v27;
        }

        while (!v19);
      }

      v28 = a2;
      if (v27 != v11)
      {
        v28 = *(v27 + 6);
      }

      while (v23 != v28)
      {
        v23 = *(v23 + 8);
        v22 = *(v22 + 8);
      }

      if (v24)
      {
        do
        {
          v29 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v29 = *(v20 + 2);
          v19 = *v29 == v20;
          v20 = v29;
        }

        while (!v19);
      }

      v30 = v21[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v21[2];
          v19 = *v31 == v21;
          v21 = v31;
        }

        while (!v19);
      }

      v20 = v29;
      v21 = v31;
    }

    while (v29 != v11);
  }

  return a1;
}

void sub_240128770(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v2, *(v1 + 32));
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_8;
  }

  v6 = *a5;
  v7 = *(a2 + 8);
  if (*a5 == v7)
  {
    if (v6 != 1)
    {
LABEL_6:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v8 = a5[2];
    v9 = *(a2 + 10);
    if (v8 >= v9)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_8:
    v11 = *a2;
    if (*a1 == a2)
    {
      v13 = a2;
    }

    else
    {
      if (v11)
      {
        v12 = *a2;
        do
        {
          v13 = v12;
          v12 = v12[1];
        }

        while (v12);
      }

      else
      {
        v17 = a2;
        do
        {
          v13 = v17[2];
          v18 = *v13 == v17;
          v17 = v13;
        }

        while (v18);
      }

      v19 = *(v13 + 8);
      v20 = *a5;
      if (v19 == *a5)
      {
        if (v19 != 1 || *(v13 + 10) >= a5[2])
        {
          goto LABEL_24;
        }
      }

      else if (v19 >= v20)
      {
LABEL_24:
        v21 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        if (v20 != 1)
        {
          while (1)
          {
            v26 = *(v21 + 8);
            v23 = v21;
            if (v20 == v26)
            {
              break;
            }

            if (v20 < v26)
            {
              v21 = *v21;
              v5 = v23;
              if (!*v23)
              {
                break;
              }
            }

            else
            {
              if (v26 >= v20)
              {
                break;
              }

              v5 = v21 + 1;
              v21 = v21[1];
              if (!v21)
              {
                break;
              }
            }
          }

LABEL_40:
          *a3 = v23;
          return v5;
        }

        v22 = a5[2];
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 8);
          if (v24 == 1)
          {
            v25 = *(v23 + 10);
            if (v22 >= v25)
            {
              if (v25 >= v22)
              {
                goto LABEL_40;
              }

              goto LABEL_33;
            }

LABEL_27:
            v21 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_40;
            }
          }

          else
          {
            if (v24 > 1)
            {
              goto LABEL_27;
            }

LABEL_33:
            v5 = v23 + 1;
            v21 = v23[1];
            if (!v21)
            {
              goto LABEL_40;
            }
          }
        }
      }
    }

    if (v11)
    {
      *a3 = v13;
      return v13 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v6 < v7)
  {
    goto LABEL_8;
  }

  if (v7 >= v6)
  {
    goto LABEL_6;
  }

LABEL_15:
  v14 = a2[1];
  if (v14)
  {
    v15 = a2[1];
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v27 = a2;
    do
    {
      v16 = v27[2];
      v18 = *v16 == v27;
      v27 = v16;
    }

    while (!v18);
  }

  if (v16 == v5)
  {
    goto LABEL_56;
  }

  v28 = *(v16 + 8);
  if (v6 == v28)
  {
    if (v6 == 1)
    {
      v29 = a5[2];
      if (v29 >= *(v16 + 10))
      {
        v30 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        goto LABEL_61;
      }

      goto LABEL_56;
    }

    goto LABEL_58;
  }

  if (v6 < v28)
  {
LABEL_56:
    if (v14)
    {
      *a3 = v16;
      return v16;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }
  }

LABEL_58:
  v30 = *v5;
  if (*v5)
  {
    if (v6 == 1)
    {
      v29 = a5[2];
LABEL_61:
      v31 = v30;
      while (1)
      {
        v30 = v31;
        v32 = *(v31 + 8);
        if (v32 == 1)
        {
          v33 = *(v30 + 10);
          if (v29 >= v33)
          {
            if (v33 >= v29)
            {
              goto LABEL_72;
            }

            goto LABEL_68;
          }

LABEL_62:
          v31 = *v30;
          v5 = v30;
          if (!*v30)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v32 > 1)
          {
            goto LABEL_62;
          }

LABEL_68:
          v5 = v30 + 1;
          v31 = v30[1];
          if (!v31)
          {
            goto LABEL_72;
          }
        }
      }
    }

    v34 = *(v30 + 8);
    while (v6 != v34)
    {
      if (v6 < v34)
      {
        v35 = *v30;
        v5 = v30;
        if (!*v30)
        {
          break;
        }
      }

      else
      {
        if (v34 >= v6)
        {
          break;
        }

        v5 = v30 + 1;
        v35 = v30[1];
        if (!v35)
        {
          break;
        }
      }

      v34 = *(v35 + 32);
      v30 = v35;
    }
  }

  else
  {
    v30 = a1 + 1;
  }

LABEL_72:
  *a3 = v30;
  return v5;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_285218BD8;
  *(result + 2) = a2;
  v6 = *a3;
  *a3 = result;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
    if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  return result;
}

void sub_240128F4C(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy((a1 + 3), a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy((v1 + 3), v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::erase(void *a1, int *a2, uint64_t **a3)
{
  v6 = a1 + 4;
  v5 = a1[4];
  if (!v5)
  {
    if (a1[10] != *a3)
    {
      goto LABEL_50;
    }

    v17 = (*a3)[1];
    v9 = v6;
    v21 = (v6 - 1);
    if (v17 != a1)
    {
LABEL_41:
      v35 = a2;
      std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(v21, a2, &std::piecewise_construct, &v35)[6] = v17;
      goto LABEL_50;
    }

    goto LABEL_28;
  }

  v7 = *a2;
  v8 = a2[2];
  v9 = v6;
  v10 = v5;
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v15 = *(v10 + 8);
        v16 = v15 < 1;
        if (v15 == 1)
        {
          v16 = *(v10 + 10) < v8;
        }

        if (!v16)
        {
          break;
        }

        v10 = v10[1];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      v9 = v10;
      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    do
    {
      v11 = *(v10 + 8);
      v12 = v11 == v7;
      v16 = v11 < v7;
      v13 = v11 < v7;
      if (v16)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (v12)
      {
        v13 = 0;
        v9 = v10;
      }

      else
      {
        v9 = v14;
      }

      v10 = v10[v13];
    }

    while (v10);
  }

LABEL_16:
  if (v9[6] == *a3)
  {
    v17 = (*a3)[1];
    if (v7 == 1)
    {
      v18 = v6;
      v19 = v5;
      while (1)
      {
        v20 = *(v19 + 8);
        if (v20 == 1)
        {
          if (v8 < *(v19 + 10))
          {
            goto LABEL_24;
          }

LABEL_19:
          v19 = v19[1];
          if (!v19)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v20 <= 1)
          {
            goto LABEL_19;
          }

LABEL_24:
          v18 = v19;
          v19 = *v19;
          if (!v19)
          {
            goto LABEL_39;
          }
        }
      }
    }

    v18 = v6;
    v24 = v5;
    do
    {
      v25 = *(v24 + 8);
      v26 = v7 == v25;
      v16 = v7 < v25;
      v27 = v7 >= v25;
      if (v16)
      {
        v28 = v24;
      }

      else
      {
        v28 = v18;
      }

      if (v26)
      {
        v27 = 1;
      }

      else
      {
        v18 = v28;
      }

      v24 = v24[v27];
    }

    while (v24);
LABEL_39:
    if (v18 == v6)
    {
      v21 = (v6 - 1);
      if (v17 != a1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v21 = (v6 - 1);
      if (v17 != v18[6])
      {
        goto LABEL_41;
      }
    }

LABEL_28:
    v22 = v9[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      v29 = v9;
      do
      {
        v23 = v29[2];
        v12 = *v23 == v29;
        v29 = v23;
      }

      while (!v12);
    }

    if (*v21 == v9)
    {
      *v21 = v23;
    }

    --a1[5];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v9);
    operator delete(v9);
  }

LABEL_50:
  v30 = *a3;
  v31 = **a3;
  v32 = (*a3)[1];
  *(v31 + 8) = v32;
  *v32 = v31;
  --a1[2];
  v33 = v30[3];
  if (v33)
  {
    if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v33 + 16))(v33);
      if (atomic_fetch_add(v33 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v33 + 24))(v33);
      }
    }
  }

  operator delete(v30);
  return v32;
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (!v2)
  {
    (*(*a1 + 40))(&v5);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(a2, &v5);
    v4 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      if (atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(uint64_t **a1, int *a2, uint64_t a3, void **a4)
{
  v7 = (a1 + 1);
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    if (*a2 != 1)
    {
      v13 = *(v6 + 8);
      if (v8 == v13)
      {
        return v6;
      }

      v10 = a1[1];
      while (1)
      {
        if (v8 < v13)
        {
          v6 = *v10;
          v7 = v10;
          if (!*v10)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= v8)
          {
            return v10;
          }

          v6 = v10[1];
          if (!v6)
          {
LABEL_21:
            v7 = v10 + 1;
            goto LABEL_22;
          }
        }

        v13 = *(v6 + 8);
        v10 = v6;
        if (v8 == v13)
        {
          return v6;
        }
      }
    }

    v9 = a2[2];
    while (1)
    {
      v10 = v6;
      v11 = *(v6 + 8);
      if (v11 == 1)
      {
        v12 = *(v6 + 10);
        if (v9 >= v12)
        {
          if (v12 >= v9)
          {
            return v10;
          }

          goto LABEL_10;
        }

LABEL_4:
        v6 = *v6;
        v7 = v10;
        if (!*v10)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v11 > 1)
        {
          goto LABEL_4;
        }

LABEL_10:
        v6 = v6[1];
        if (!v6)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v10 = (a1 + 1);
LABEL_22:
  v15 = operator new(0x38uLL);
  v16 = *(*a4 + 2);
  v15[4] = **a4;
  *(v15 + 10) = v16;
  v15[6] = 0;
  *v15 = 0;
  v15[1] = 0;
  v15[2] = v10;
  *v7 = v15;
  v17 = **a1;
  if (v17)
  {
    *a1 = v17;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
  a1[2] = (a1[2] + 1);
  return v15;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
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

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (v21 && (v21[3] & 1) == 0)
      {
LABEL_65:
        v20 = v7;
      }

      else
      {
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
    goto LABEL_70;
  }

  *(v26 + 24) = 1;
  *(v7 + 24) = 0;
  v27 = *v26;
  v7[1] = *v26;
  if (v27)
  {
    *(v27 + 16) = v7;
  }

  v28 = v7[2];
  v26[2] = v28;
  v28[*v28 != v7] = v26;
  *v26 = v7;
  v7[2] = v26;
  v25 = v7;
LABEL_70:
  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v20[3] = *MEMORY[0x277D85DE8];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[8] = v2;
  v15[9] = v2;
  v15[6] = v2;
  v15[7] = v2;
  v15[4] = v2;
  v15[5] = v2;
  v15[2] = v2;
  v15[3] = v2;
  v15[0] = v2;
  v15[1] = v2;
  v3 = *(a1 + 48);
  v16 = 10;
  v17 = v15;
  v18 = 0;
  v19 = v3;
  pthread_mutex_lock(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != v4[1])
    {
      while (1)
      {
        memset(v20, 170, 24);
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v5, v20);
        if ((*v5 ^ (*v5 >> 31)) == 2)
        {
          if (!(*(**(v5 + 8) + 24))(*(v5 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v5 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, v15);
        }

        v7 = 1;
        if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
        {
LABEL_13:
          v8 = v20[2];
          if (v20[2])
          {
            if (atomic_fetch_add((v20[2] + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v20[1])
        {
          (*(*v20[1] + 8))(v20[1]);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v5 += 24;
          if (v5 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v9 = *(a1 + 24);
  pthread_mutex_unlock(v19);
  v10 = v17;
  if (v17)
  {
    if (v18 > 0)
    {
      v13 = &v17[16 * v18];
      do
      {
        v14 = *(v13 - 1);
        if (v14)
        {
          if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v14 + 16))(v14);
            if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v14 + 24))(v14);
            }
          }
        }

        v13 -= 16;
      }

      while (v13 > v10);
    }

    if (v16 >= 0xB)
    {
      operator delete(v17);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_240129E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  v2 = (result + 32);
  *a2 = *(result + 32);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(result + 40);
    *v2 = 0;
    *(result + 40) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  else
  {
    *v2 = 0;
    *(result + 40) = 0;
  }

  return result;
}

void boost::signals2::slot_base::~slot_base(boost::signals2::slot_base *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = *this;
    if (v3 != v2)
    {
      do
      {
        v3 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v3);
      }

      while (v3 != v2);
      v4 = *this;
    }

    *(this + 1) = v2;
    operator delete(v4);
  }
}

atomic_uint *boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 == 2)
  {
    result = *(a1 + 8);
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  else if (v1 == 1)
  {
    result = *(a1 + 16);
    if (result && atomic_fetch_add(result + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 24))(result);
    }
  }

  else
  {
    result = *(a1 + 16);
    if (result && atomic_fetch_add(result + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 24))(result);
    }
  }

  return result;
}

uint64_t boost::weak_ptr<void>::~weak_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void ***std::__exception_guard_exceptions<std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::slot<void ()(void),boost::function<void ()(void)>>>(void **__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(__p + 4, __p + 4, 2);
        }
      }

      __p[3] = 0;
    }

    v4 = *__p;
    if (*__p)
    {
      v5 = __p[1];
      v6 = *__p;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *__p;
      }

      __p[1] = v4;
      operator delete(v6);
    }

    operator delete(__p);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(void),boost::function<void ()(void)>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(v1 + 4, v1 + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2852188A0;
  v2 = a1[7];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  *a1 = &unk_285218908;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result ^ (*result >> 31);
  if (v2 == 2)
  {
    (*(**(result + 8) + 16))(&v8);
    *(a2 + 8) = (*(*v8 + 16))(v8);
    *a2 = 1;
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  else if (v2 == 1)
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4 = *(v3 + 8);
      while (v4)
      {
        v5 = v4;
        atomic_compare_exchange_strong_explicit((v3 + 8), &v5, v4 + 1, memory_order_relaxed, memory_order_relaxed);
        v6 = v5 == v4;
        v4 = v5;
        if (v6)
        {
          *(a2 + 8) = *(result + 8);
          *(a2 + 16) = v3;
          *a2 = 0;
          return result;
        }
      }

      v3 = 0;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = v3;
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_24012A61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(uint64_t result)
{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
    if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 16))(v1);
      result = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        return v2;
      }
    }
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void (***boost::function<void ()(void)>::~function(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v9 == ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvvEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvvEEEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      dispatch_release(*a2);
      v8 = *(a2 + 1);
      if (v8)
      {
LABEL_9:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    *a2 = *a1;
    if (v7)
    {
      v7 = _Block_copy(v7);
      v6 = *a2;
    }

    *(a2 + 1) = v7;
    dispatch_retain(v6);
    if (a3 == 1)
    {
      dispatch_release(*a1);
      v8 = *(a1 + 8);
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }
}

void boost::detail::function::void_function_obj_invoker0<ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>,void>::invoke(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (!v1)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v3 = _Block_copy(v1);
  v4 = v3;
  if (!v3)
  {
LABEL_10:
    v16 = 1;
LABEL_11:
    v15 = 0;
    v19[0] = 0;
    goto LABEL_21;
  }

  v5 = _Block_copy(v3);
  v6 = v5;
  if (!v5)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v7 = _Block_copy(v5);
  v8 = v7;
  if (v7)
  {
    v9 = _Block_copy(v7);
    v10 = v9;
    if (v9)
    {
      v11 = _Block_copy(v9);
      v12 = v11;
      if (v11)
      {
        v13 = _Block_copy(v11);
        v14 = v13;
        if (v13)
        {
          v15 = _Block_copy(v13);
          v19[0] = v15;
          _Block_release(v14);
        }

        else
        {
          v15 = 0;
          v19[0] = 0;
        }

        _Block_release(v12);
      }

      else
      {
        v15 = 0;
        v19[0] = 0;
      }

      _Block_release(v10);
    }

    else
    {
      v15 = 0;
      v19[0] = 0;
    }

    _Block_release(v8);
  }

  else
  {
    v15 = 0;
    v19[0] = 0;
  }

  _Block_release(v6);
  v16 = 0;
LABEL_21:
  v17 = operator new(0x20uLL);
  *v17 = boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable;
  if (v15)
  {
    v18 = _Block_copy(v15);
  }

  else
  {
    v18 = 0;
  }

  v17[1] = v18;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_35;
  block[4] = v17;
  dispatch_async(v2, block);
  if (boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable && (boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable & 1) == 0 && boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable[0])
  {
    (boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable[0])(v19, v19, 2);
  }

  if ((v16 & 1) == 0)
  {
    _Block_release(v4);
  }
}

void sub_24012ABE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::function<void ()(void)>::~function(va);
  if ((v3 & 1) == 0)
  {
    _Block_release(v2);
  }

  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    std::runtime_error::runtime_error(&v7, "call to empty boost::function");
    v7.__vftable = &unk_285218E20;
    boost::throw_exception<boost::bad_function_call>(&v7);
  }

  (*((*v1 & 0xFFFFFFFFFFFFFFFELL) + 8))(v1 + 1);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      if ((v4 & 1) == 0)
      {
        v5 = *v4;
        if (v5)
        {
          v6 = *(a1 + 32);
          v5(v3 + 1, v6 + 1, 2);
          v3 = v6;
        }
      }

      *v3 = 0;
    }

    operator delete(v3);
  }
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_285218DF0;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_285218D78;
  *(a1 + 8) = &unk_285218DA8;
  *(a1 + 24) = &unk_285218DD0;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_285218E48;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

char *boost::wrapexcept<boost::bad_function_call>::clone(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_285218DF0;
  std::runtime_error::runtime_error((v2 + 8), (a1 + 8));
  *(v2 + 1) = &unk_285218E20;
  v3 = *(a1 + 32);
  *(v2 + 3) = &unk_285218E48;
  *(v2 + 4) = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 40) = *(a1 + 40);
  *(v2 + 14) = *(a1 + 56);
  *v2 = &unk_285218D78;
  *(v2 + 1) = &unk_285218DA8;
  *(v2 + 3) = &unk_285218DD0;
  boost::exception_detail::copy_boost_exception((v2 + 24), a1 + 24);
  return v2;
}

void sub_24012AFC0(_Unwind_Exception *a1)
{
  std::runtime_error::~runtime_error(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_285218E48;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(std::runtime_error *a1)
{
  a1[1].__vftable = &unk_285218E48;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

{
  a1[1].__vftable = &unk_285218E48;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  p_imp = &a1[-1].__imp_;
  std::runtime_error::~runtime_error(a1);

  operator delete(p_imp);
}

{
  a1->__vftable = &unk_285218E48;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

{
  a1->__vftable = &unk_285218E48;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete(&a1[-2].__imp_);
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

void *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285218DF0;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_285218E20;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_285218E48;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_285218D78;
  *(a1 + 8) = &unk_285218DA8;
  *(a1 + 24) = &unk_285218DD0;
  return a1;
}

uint64_t boost::exception_detail::copy_boost_exception(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    v5 = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a1 + 8);
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(*v4 + 40))(&v7);
  v5 = v7;
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
    if (v7)
    {
      (*(*v7 + 32))(v7);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
LABEL_8:
    result = (*(*result + 32))(result);
  }

LABEL_9:
  *(a1 + 8) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
    return (*(*v5 + 32))(v5);
  }

  return result;
}

void sub_24012B6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  _Unwind_Resume(a1);
}

void sub_24012B6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void sub_24012B6D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(void)>>::manage(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == ("N8dispatch5blockIU13block_pointerFvvEEE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N8dispatch5blockIU13block_pointerFvvEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t boost::function0<void>::move_assign(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_24012B898(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function0<void>::~function0(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

uint64_t std::__split_buffer<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(i - 24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<AppleBasebandManager::State>>::~foreign_weak_ptr_impl(uint64_t result)
{
  *result = &unk_285218A48;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<AppleBasebandManager::State>>::~foreign_weak_ptr_impl(std::__shared_weak_count **a1)
{
  *a1 = &unk_285218A48;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<AppleBasebandManager::State>>::lock(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 8);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = operator new(0x18uLL);
  *v7 = &unk_285218AA8;
  v7[1] = v6;
  v7[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = v7;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a2 = v7;
  }
}

void *boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<AppleBasebandManager::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_285218A48;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<AppleBasebandManager::State>>::~foreign_shared_ptr_impl(void *result)
{
  *result = &unk_285218AA8;
  v1 = result[2];
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

void boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<AppleBasebandManager::State>>::~foreign_shared_ptr_impl(void *a1)
{
  *a1 = &unk_285218AA8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<AppleBasebandManager::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_285218AA8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void **boost::signals2::slot<void ()(void),boost::function<void ()(void)>>::~slot(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 4, a1 + 4, 2);
      }
    }

    a1[3] = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

void *std::shared_ptr<ConnectionObserver>::shared_ptr[abi:ne200100]<ConnectionObserver,0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_285218CA8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = a2[1];
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *a2 = a2;
        a2[1] = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_24012BF18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ConnectionObserver>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<ConnectionObserver *,std::shared_ptr<ConnectionObserver>::__shared_ptr_default_delete<ConnectionObserver,ConnectionObserver>,std::allocator<ConnectionObserver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ConnectionObserver *,std::shared_ptr<ConnectionObserver>::__shared_ptr_default_delete<ConnectionObserver,ConnectionObserver>,std::allocator<ConnectionObserver>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ConnectionObserver::~ConnectionObserver(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ConnectionObserver *,std::shared_ptr<ConnectionObserver>::__shared_ptr_default_delete<ConnectionObserver,ConnectionObserver>,std::allocator<ConnectionObserver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrI18ConnectionObserverE27__shared_ptr_default_deleteIS1_S1_EE")
  {
    if (((v2 & "NSt3__110shared_ptrI18ConnectionObserverE27__shared_ptr_default_deleteIS1_S1_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrI18ConnectionObserverE27__shared_ptr_default_deleteIS1_S1_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrI18ConnectionObserverE27__shared_ptr_default_deleteIS1_S1_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

ConnectionObserver **std::unique_ptr<ConnectionObserver>::~unique_ptr[abi:ne200100](ConnectionObserver **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    ConnectionObserver::~ConnectionObserver(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void AppleBasebandManager::State::eventsOn_sync(AppleBasebandManager::State *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(this + 19);
  if (v1 == 1)
  {
    goto LABEL_4;
  }

  if (!v1)
  {
    v2 = this;
    AppleBasebandManager::State::changeEventsState_sync(this, 1);
    this = v2;
LABEL_4:
    v3 = **(this + 10);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 0x40000000;
    v17 = ___ZN3abm6client9Transport5State8eventsOnEv_block_invoke;
    v18 = &__block_descriptor_tmp_46;
    v19 = v3;
    p_buf = &buf;
    block = MEMORY[0x277D85DD0];
    v11 = 0x40000000;
    v12 = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v13 = &__block_descriptor_tmp_18;
    v14 = v3 + 8;
    p_p_buf = &p_buf;
    v4 = *(v3 + 24);
    if (*(v3 + 32))
    {
      dispatch_async_and_wait(v4, &block);
    }

    else
    {
      dispatch_sync(v4, &block);
    }

    goto LABEL_10;
  }

  v5 = *(this + 4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (v1 == 2)
    {
      v6 = &v11;
      block = 0x6E4F73746E657645;
      v7 = 8;
    }

    else
    {
      v6 = (&block + 7);
      qmemcpy(&block, "Unknown", 7);
      v7 = 7;
    }

    HIBYTE(v12) = v7;
    *v6 = 0;
    LODWORD(buf) = 136315138;
    *(&buf + 4) = &block;
    _os_log_debug_impl(&dword_240122000, v5, OS_LOG_TYPE_DEBUG, "#D Events state is %s, skipping", &buf, 0xCu);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(block);
    }
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
}

void AppleBasebandManager::State::changeEventsState_sync(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
      v6 = *(a1 + 76);
      if (v6 != 2)
      {
LABEL_4:
        if (v6 == 1)
        {
          v14 = 14;
          strcpy(v13, "EventsChanging");
          if (a2 != 2)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (!v6)
          {
            v14 = 9;
            strcpy(v13, "EventsOff");
            if (a2 == 2)
            {
              goto LABEL_16;
            }

LABEL_12:
            if (a2 == 1)
            {
              v7 = &v11;
              v12 = 14;
              qmemcpy(__p, "EventsChanging", sizeof(__p));
              goto LABEL_18;
            }

            v7 = &__p[9];
            v12 = 9;
            __p[8] = 102;
            v8 = *"EventsOff";
LABEL_17:
            *__p = v8;
LABEL_18:
            *v7 = 0;
            *buf = 136315650;
            v16 = v5;
            v17 = 2080;
            v18 = v13;
            v19 = 2080;
            v20 = __p;
            _os_log_impl(&dword_240122000, v4, OS_LOG_TYPE_DEFAULT, "#I [%s] Changing event state from %s to %s", buf, 0x20u);
            if (v12 < 0)
            {
              operator delete(*__p);
              if ((v14 & 0x80000000) == 0)
              {
                goto LABEL_20;
              }
            }

            else if ((v14 & 0x80000000) == 0)
            {
              goto LABEL_20;
            }

            operator delete(v13[0]);
            goto LABEL_20;
          }

          v14 = 7;
          strcpy(v13, "Unknown");
          if (a2 != 2)
          {
            goto LABEL_12;
          }
        }

LABEL_16:
        v7 = &__p[8];
        v12 = 8;
        v8 = 0x6E4F73746E657645;
        goto LABEL_17;
      }
    }

    else
    {
      v6 = *(a1 + 76);
      if (v6 != 2)
      {
        goto LABEL_4;
      }
    }

    v14 = 8;
    strcpy(v13, "EventsOn");
    if (a2 == 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_20:
  *(a1 + 76) = a2;
  v9 = *MEMORY[0x277D85DE8];
}

void AppleBasebandManager::State::changeCheckInState_sync(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
      v6 = *(a1 + 72);
      if (v6 != 2)
      {
LABEL_4:
        if (v6 == 1)
        {
          v7 = (&v17 + 2);
          v19 = 10;
          LOWORD(v17) = 28233;
          v8 = "CheckingIn";
        }

        else
        {
          if (v6)
          {
            v19 = 7;
            strcpy(&v16, "Unknown");
            if (a2 != 2)
            {
LABEL_11:
              if (a2 == 1)
              {
                v9 = (&v13 + 2);
                v15 = 10;
                LOWORD(v13) = 28233;
                v10 = "CheckingIn";
              }

              else
              {
                v9 = &v14;
                v15 = 12;
                v13 = 1850303589;
                v10 = "NotCheckedIn";
              }

LABEL_16:
              __p = *v10;
              *v9 = 0;
              *buf = 136315650;
              v21 = v5;
              v22 = 2080;
              v23 = &v16;
              v24 = 2080;
              p_p = &__p;
              _os_log_impl(&dword_240122000, v4, OS_LOG_TYPE_DEFAULT, "#I [%s] Changing checked in state from %s to %s", buf, 0x20u);
              if (v15 < 0)
              {
                operator delete(__p);
                if ((v19 & 0x80000000) == 0)
                {
                  goto LABEL_18;
                }
              }

              else if ((v19 & 0x80000000) == 0)
              {
                goto LABEL_18;
              }

              operator delete(v16);
              goto LABEL_18;
            }

LABEL_15:
            v9 = (&v13 + 1);
            v15 = 9;
            LOBYTE(v13) = 110;
            v10 = "CheckedIn";
            goto LABEL_16;
          }

          v7 = &v18;
          v19 = 12;
          v17 = 1850303589;
          v8 = "NotCheckedIn";
        }

LABEL_10:
        v16 = *v8;
        *v7 = 0;
        if (a2 != 2)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v6 = *(a1 + 72);
      if (v6 != 2)
      {
        goto LABEL_4;
      }
    }

    v7 = (&v17 + 1);
    v19 = 9;
    LOBYTE(v17) = 110;
    v8 = "CheckedIn";
    goto LABEL_10;
  }

LABEL_18:
  *(a1 + 72) = a2;
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t dispatch::callback<void({block_pointer})(abm::client::TransportStatus)>::~callback(uint64_t a1)
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

void ___ZN20AppleBasebandManager5State15setEventHandlerENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvNS1_10shared_ptrIN3abm6client5EventEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 40), *(a1 + 48));
    v3 = *(a1 + 64);
    if (v3)
    {
LABEL_3:
      v5 = _Block_copy(v3);
      v6 = *(a1 + 72);
      if (!v6)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    *&v9.__r_.__value_.__l.__data_ = *(a1 + 40);
    v4 = *(a1 + 56);
    v3 = *(a1 + 64);
    v9.__r_.__value_.__r.__words[2] = *(a1 + 56);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  v6 = *(a1 + 72);
  if (v6)
  {
LABEL_4:
    dispatch_retain(v6);
  }

LABEL_5:
  v7 = *(v2 + 80);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v9;
  }

  if (v5)
  {
    v8 = _Block_copy(v5);
    v10 = v8;
    v11 = v6;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = 0;
  v10 = 0;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    dispatch_retain(v6);
  }

LABEL_14:
  abm::client::Transport::setEventHandler(v7, &v12, &v10);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_24012C86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<abm::client::Event>)>::~callback(&a9);
  if ((a16 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c86_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN3abm6client5EventEEEEEE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c86_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN3abm6client5EventEEEEEE(uint64_t a1)
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

void ___ZN20AppleBasebandManager5State15setEventHandlerENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS1_10shared_ptrIN3abm6client5EventEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a1 + 40), *(a1 + 48));
    v3 = *(a1 + 64);
    if (v3)
    {
LABEL_3:
      xpc_retain(v3);
      v4 = *(a1 + 72);
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *&v11.__r_.__value_.__l.__data_ = *(a1 + 40);
    v3 = *(a1 + 64);
    v11.__r_.__value_.__r.__words[2] = *(a1 + 56);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v3 = xpc_null_create();
  v4 = *(a1 + 72);
  if (v4)
  {
LABEL_4:
    v5 = _Block_copy(v4);
    v6 = *(a1 + 80);
    aBlock = v5;
    object = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  v5 = 0;
  v6 = *(a1 + 80);
  aBlock = 0;
  object = v6;
  if (v6)
  {
LABEL_5:
    dispatch_retain(v6);
  }

LABEL_6:
  v7 = *(v2 + 80);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v11;
  }

  v14 = v3;
  if (v3)
  {
    xpc_retain(v3);
    v8 = v3;
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = xpc_null_create();
    v14 = v8;
    if (!v5)
    {
LABEL_15:
      v12 = v5;
      v13 = v6;
      if (!v6)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v5 = _Block_copy(v5);
  v12 = v5;
  v13 = v6;
  if (v6)
  {
LABEL_16:
    dispatch_retain(v6);
  }

LABEL_17:
  abm::client::Transport::setEventHandler(v7, &v15, &v14, &v12);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v8);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v3);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_24012CBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<abm::client::Event>)>::~callback(&a9);
  xpc_release(v25);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c15_ZTSN3xpc4dictE72c86_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN3abm6client5EventEEEEEE(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 63) & 0x80000000) == 0)
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    v5 = *(a2 + 64);
    *(a1 + 64) = v5;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(a1 + 64) = xpc_null_create();
    v6 = *(a2 + 72);
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  xpc_retain(v5);
  v6 = *(a2 + 72);
  if (v6)
  {
LABEL_7:
    v6 = _Block_copy(v6);
  }

LABEL_8:
  v7 = *(a2 + 80);
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c15_ZTSN3xpc4dictE72c86_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN3abm6client5EventEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    _Block_release(v3);
  }

  xpc_release(*(a1 + 64));
  *(a1 + 64) = 0;
  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void ___ZN20AppleBasebandManager5State7performENSt3__110shared_ptrIN3abm6client7CommandEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(v2 + 80);
    v9 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = *(v2 + 80);
    v9 = 0;
  }

  v8 = v1;
  abm::client::Transport::perform(v4, &v8);
  v5 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = v7;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v6 = v7;
    if (!v7)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_24012CE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIN3abm6client7CommandEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIN3abm6client7CommandEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN20AppleBasebandManager5State9eventsOffEv_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 76);
  if (v2 == 1)
  {
    goto LABEL_4;
  }

  if (v2 == 2)
  {
    AppleBasebandManager::State::changeEventsState_sync(*(a1 + 32), 1);
LABEL_4:
    v3 = **(v1 + 80);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 0x40000000;
    v17 = ___ZN3abm6client9Transport5State9eventsOffEv_block_invoke;
    v18 = &__block_descriptor_tmp_47;
    v19 = v3;
    p_buf = &buf;
    block = MEMORY[0x277D85DD0];
    v11 = 0x40000000;
    v12 = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v13 = &__block_descriptor_tmp_18;
    v14 = v3 + 8;
    p_p_buf = &p_buf;
    v4 = *(v3 + 24);
    if (*(v3 + 32))
    {
      dispatch_async_and_wait(v4, &block);
    }

    else
    {
      dispatch_sync(v4, &block);
    }

    goto LABEL_10;
  }

  v5 = *(v1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (v2)
    {
      v6 = &block + 7;
      qmemcpy(&block, "Unknown", 7);
      v7 = 7;
    }

    else
    {
      v6 = &v11 + 1;
      LOBYTE(v11) = 102;
      block = *"EventsOff";
      v7 = 9;
    }

    HIBYTE(v12) = v7;
    *v6 = 0;
    LODWORD(buf) = 136315138;
    *(&buf + 4) = &block;
    _os_log_debug_impl(&dword_240122000, v5, OS_LOG_TYPE_DEBUG, "#D Events state is %s, skipping", &buf, 0xCu);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(block);
    }
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
}

void std::__shared_ptr_pointer<AppleBasebandManager *,std::shared_ptr<AppleBasebandManager>::__shared_ptr_default_delete<AppleBasebandManager,AppleBasebandManager>,std::allocator<AppleBasebandManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<AppleBasebandManager *,std::shared_ptr<AppleBasebandManager>::__shared_ptr_default_delete<AppleBasebandManager,AppleBasebandManager>,std::allocator<AppleBasebandManager>>::__on_zero_shared(uint64_t a1)
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

uint64_t std::__shared_ptr_pointer<AppleBasebandManager *,std::shared_ptr<AppleBasebandManager>::__shared_ptr_default_delete<AppleBasebandManager,AppleBasebandManager>,std::allocator<AppleBasebandManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002401467E8)
  {
    if (((v2 & 0x80000002401467E8 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002401467E8))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002401467E8 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<AppleBasebandManager>::~unique_ptr[abi:ne200100](void **a1)
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

uint64_t __cxx_global_var_init_8()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ConnectionObserver>::~PthreadMutexGuardPolicy, &ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance, &dword_240122000);
  }

  return result;
}

std::string *abm::trace::getBasebandTraceDirSuffix@<X0>(abm::trace *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  memset(a2, 170, sizeof(std::string));
  *(&a2->__r_.__value_.__s + 23) = 0;
  a2->__r_.__value_.__s.__data_[0] = 0;
  result = capabilities::radio::vendor(this);
  if ((result - 2) < 3)
  {
    v5 = abm::trace::kICETraceSnapshotDirectorySuffix;
    return std::string::__assign_external(a2, *v5);
  }

  if (result == 1)
  {
    if (v2)
    {
      *(&a2->__r_.__value_.__s + 23) = 5;
      strcpy(a2, "-qdss");
      return result;
    }

    v5 = abm::trace::kEURTraceSnapshotDirectorySuffix;
    return std::string::__assign_external(a2, *v5);
  }

  return result;
}

void sub_24012D3AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void abm::trace::getCoreDumpDirSuffix(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&_MergedGlobals);
    if (v4)
    {
      v5 = capabilities::radio::maverick(v4);
      v6 = abm::trace::kEURCoreDumpSnapshotDirectorySuffix;
      if (!v5)
      {
        v6 = abm::trace::kCoreDumpSnapshotDirectorySuffix;
      }

      std::string::basic_string[abi:ne200100]<0>(*v6);
      __cxa_guard_release(&_MergedGlobals);
    }
  }

  if (byte_280AFDB0F < 0)
  {
    v3 = xmmword_280AFDAF8;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_280AFDAF8;
    a1->__r_.__value_.__r.__words[2] = unk_280AFDB08;
  }
}

uint64_t abm::trace::isSupported(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v3 = strcasecmp(*a1, abm::trace::kDIAG);
    if (v3)
    {
LABEL_3:
      v4 = v1;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v3 = strcasecmp(a1, abm::trace::kDIAG);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  if (capabilities::radio::maverick(v3))
  {
    return 1;
  }

  LOBYTE(v2) = v1[23];
  v4 = v1;
  if ((v2 & 0x80) == 0)
  {
LABEL_4:
    v5 = strcasecmp(v4, abm::trace::kICETrace);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (capabilities::radio::ice(v5))
    {
      return 1;
    }

    LOBYTE(v2) = v1[23];
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_11:
  v5 = strcasecmp(*v1, abm::trace::kICETrace);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 0x80) == 0)
  {
LABEL_6:
    v6 = v1;
    if (!strcasecmp(v1, abm::trace::kBasebandTrace))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *v1;
  if (!strcasecmp(*v1, abm::trace::kBasebandTrace))
  {
    return 1;
  }

LABEL_15:
  v7 = strcasecmp(v6, abm::trace::kEURCoreDump);
  if (v7)
  {
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (capabilities::radio::maverick(v7))
    {
      return 1;
    }

    if ((v1[23] & 0x80) == 0)
    {
LABEL_17:
      if (!strcasecmp(v1, abm::trace::kCoreDump) || !strcasecmp(v1, abm::trace::kSystemLogs))
      {
        return 1;
      }

      if (!strcasecmp(v1, abm::trace::kCompression))
      {
        goto LABEL_40;
      }

      if (strcasecmp(v1, abm::trace::kBasebandIPC))
      {
        if (!strcasecmp(v1, abm::trace::kIPC) || !strcasecmp(v1, "KernelPCI") || !strcasecmp(v1, abm::trace::kTapToRadar))
        {
          goto LABEL_40;
        }

LABEL_34:
        if (strcasecmp(v1, abm::trace::kProfile))
        {
          if (strcasecmp(v1, abm::trace::kTraceTailspin) && strcasecmp(v1, "Settings") && strcasecmp(v1, "LogFilter"))
          {
            return 0;
          }

          goto LABEL_40;
        }

        return 1;
      }

      goto LABEL_43;
    }
  }

  v1 = *v1;
  if (!strcasecmp(v1, abm::trace::kCoreDump) || !strcasecmp(v1, abm::trace::kSystemLogs))
  {
    return 1;
  }

  if (!strcasecmp(v1, abm::trace::kCompression))
  {
    goto LABEL_40;
  }

  if (strcasecmp(v1, abm::trace::kBasebandIPC))
  {
    if (!strcasecmp(v1, abm::trace::kIPC) || !strcasecmp(v1, "KernelPCI") || !strcasecmp(v1, abm::trace::kTapToRadar))
    {
LABEL_40:

      return MEMORY[0x2821F6560]();
    }

    goto LABEL_34;
  }

LABEL_43:

  return MEMORY[0x2821F6520]();
}

size_t std::string::basic_string[abi:ne200100]<0>(const char *a1)
{
  result = strlen(a1);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (result | 7) + 1;
    }

    v4 = operator new(v5);
    *(&xmmword_280AFDAF8 + 1) = v3;
    unk_280AFDB08 = v5 | 0x8000000000000000;
    *&xmmword_280AFDAF8 = v4;
  }

  else
  {
    v4 = &xmmword_280AFDAF8;
    byte_280AFDB0F = result;
    if (!result)
    {
      LOBYTE(xmmword_280AFDAF8) = 0;
      return result;
    }
  }

  result = memmove(v4, a1, v3);
  *(v4 + v3) = 0;
  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        v9 = this->__r_.__value_.__r.__words[0];
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, __s, __n);
LABEL_25:
          operator delete(v9);
LABEL_26:
          this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
          this->__r_.__value_.__r.__words[0] = v6;
LABEL_27:
          this->__r_.__value_.__l.__size_ = __n;
          goto LABEL_28;
        }

        v7 = __s;
LABEL_9:
        v12 = 2 * v8;
        if (__n > 2 * v8)
        {
          v12 = __n;
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
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __n);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = HIBYTE(v10);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = __s;
        v8 = 22;
        v9 = this;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_28:
  *(v6 + __n) = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void abm::client::GetTraceProperty(xpc_object_t object@<X1>, uint64_t *a2@<X0>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a2)
  {
    v9 = operator new(0x20uLL);
    strcpy(v9, "Invalid manager object passed");
    *a4 = -534716414;
    *(a4 + 8) = v9;
    *(a4 + 16) = xmmword_240146B80;
    return;
  }

  v6 = object;
  v8 = MEMORY[0x277D86468];
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v6 = xpc_null_create();
    if (!v6)
    {
      v10 = xpc_null_create();
      v6 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x245CBA9E0](v6) == v8)
  {
    xpc_retain(v6);
    v10 = v6;
  }

  else
  {
    v10 = xpc_null_create();
  }

LABEL_10:
  xpc_release(v6);
  if (MEMORY[0x245CBA9E0](v10) == v8)
  {
    if (a3)
    {
      a3 = _Block_copy(a3);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1174405120;
    v18[2] = ___ZN3abm6client16GetTracePropertyENSt3__110shared_ptrINS0_7ManagerEEEPvU13block_pointerFvN12TelephonyXPC6ResultES5_E_block_invoke;
    v18[3] = &__block_descriptor_tmp_4;
    if (a3)
    {
      v12 = _Block_copy(a3);
    }

    else
    {
      v12 = 0;
    }

    aBlock = v12;
    v13 = *a2;
    objecta = v10;
    __p = operator new(0x20uLL);
    v17 = xmmword_240146B70;
    strcpy(__p, "kCommandGetTraceProperty");
    if (v10)
    {
      xpc_retain(v10);
    }

    else
    {
      objecta = xpc_null_create();
    }

    abm::client::Manager::perform(v13, &__p, v18, &objecta);
    xpc_release(objecta);
    objecta = 0;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p);
      *a4 = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      v14 = aBlock;
      if (!aBlock)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      v14 = aBlock;
      if (!aBlock)
      {
LABEL_25:
        if (a3)
        {
          _Block_release(a3);
        }

        goto LABEL_27;
      }
    }

    _Block_release(v14);
    goto LABEL_25;
  }

  v11 = operator new(0x20uLL);
  strcpy(v11, "Invalid input dictionary passed");
  *a4 = -534716414;
  *(a4 + 8) = v11;
  *(a4 + 16) = xmmword_240146B60;
LABEL_27:
  xpc_release(v10);
}

void sub_24012DC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client16GetTracePropertyENSt3__110shared_ptrINS0_7ManagerEEEPvU13block_pointerFvN12TelephonyXPC6ResultES5_E_block_invoke(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  if (!*(a1 + 32))
  {
    return;
  }

  v6 = xpc_null_create();
  v20 = v6;
  if (!*a2)
  {
    memset(v19, 170, sizeof(v19));
    value = xpc_dictionary_get_value(*a3, "kKeyTracePropertyName");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    __p = 0;
    *&v22.__r_.__value_.__l.__data_ = 0uLL;
    xpc::dyn_cast_or_default();
    xpc_release(object);
    v9 = HIBYTE(v19[2]);
    if (SHIBYTE(v19[2]) < 0)
    {
      v9 = v19[1];
    }

    if (v9)
    {
      v10 = xpc_dictionary_create(0, 0, 0);
      if (v10 || (v10 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x245CBA9E0](v10) == MEMORY[0x277D86468])
        {
          xpc_retain(v10);
          v11 = v10;
        }

        else
        {
          v11 = xpc_null_create();
        }
      }

      else
      {
        v11 = xpc_null_create();
        v10 = 0;
      }

      xpc_release(v10);
      v14 = xpc_null_create();
      v15 = v20;
      v20 = v11;
      xpc_release(v15);
      xpc_release(v14);
      v16 = v19;
      if (SHIBYTE(v19[2]) < 0)
      {
        v16 = v19[0];
      }

      __p = &v20;
      v22.__r_.__value_.__r.__words[0] = v16;
      xpc::dict::object_proxy::operator=(&v17, &__p, *a3, "kKeyTracePropertyValue");
      xpc_release(v17);
      v17 = 0;
      if (SHIBYTE(v19[2]) < 0)
      {
LABEL_24:
        operator delete(v19[0]);
      }
    }

    else
    {
      v12 = operator new(0x28uLL);
      strcpy(v12, "Invalid trace property key returned");
      *a2 = -534716416;
      if (*(a2 + 31) < 0)
      {
        v13 = v12;
        operator delete(*(a2 + 8));
        v12 = v13;
      }

      *(a2 + 8) = v12;
      *(a2 + 16) = xmmword_240146B90;
      if (SHIBYTE(v19[2]) < 0)
      {
        goto LABEL_24;
      }
    }

    v6 = v20;
    v7 = *(a1 + 32);
    LODWORD(__p) = *a2;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_26:
    std::string::__init_copy_ctor_external(&v22, *(a2 + 8), *(a2 + 16));
    goto LABEL_27;
  }

  v7 = *(a1 + 32);
  LODWORD(__p) = *a2;
  if (*(a2 + 31) < 0)
  {
    goto LABEL_26;
  }

LABEL_4:
  v22 = *(a2 + 8);
LABEL_27:
  (*(v7 + 16))(v7, &__p, v6);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  xpc_release(v20);
}

void sub_24012DFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, void *__p, uint64_t a12, uint64_t a13, xpc_object_t object, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void xpc::dict::object_proxy::operator=(void *a1, uint64_t a2, xpc_object_t xdict, char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  v7 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v7 = xpc_null_create();
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_5;
    }
  }

  xpc_retain(v7);
  v8 = v7;
LABEL_5:
  xpc_dictionary_set_value(**a2, *(a2 + 8), v8);
  *a1 = v8;
  v9 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v7);
}

void abm::client::SetTraceProperty(xpc_object_t object@<X1>, uint64_t *a2@<X0>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a2)
  {
    v9 = operator new(0x20uLL);
    strcpy(v9, "Invalid manager object passed");
    *a4 = -534716414;
    *(a4 + 8) = v9;
    *(a4 + 16) = xmmword_240146B80;
    return;
  }

  v6 = object;
  v8 = MEMORY[0x277D86468];
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v6 = xpc_null_create();
    if (!v6)
    {
      v10 = xpc_null_create();
      v6 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x245CBA9E0](v6) == v8)
  {
    xpc_retain(v6);
    v10 = v6;
  }

  else
  {
    v10 = xpc_null_create();
  }

LABEL_10:
  xpc_release(v6);
  if (MEMORY[0x245CBA9E0](v10) == v8)
  {
    v12 = xpc_BOOL_create(1);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "kKeyTracePropertyWaitForCompletion", v12);
    v13 = xpc_null_create();
    xpc_release(v12);
    xpc_release(v13);
    if (a3)
    {
      a3 = _Block_copy(a3);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 1174405120;
    v20[2] = ___ZN3abm6client16SetTracePropertyENSt3__110shared_ptrINS0_7ManagerEEEPvU13block_pointerFvN12TelephonyXPC6ResultES5_E_block_invoke;
    v20[3] = &__block_descriptor_tmp_6;
    if (a3)
    {
      v14 = _Block_copy(a3);
    }

    else
    {
      v14 = 0;
    }

    aBlock = v14;
    v15 = *a2;
    objecta = v10;
    __p = operator new(0x20uLL);
    v19 = xmmword_240146B70;
    strcpy(__p, "kCommandSetTraceProperty");
    if (v10)
    {
      xpc_retain(v10);
    }

    else
    {
      objecta = xpc_null_create();
    }

    abm::client::Manager::perform(v15, &__p, v20, &objecta);
    xpc_release(objecta);
    objecta = 0;
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
      *a4 = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      v16 = aBlock;
      if (!aBlock)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      v16 = aBlock;
      if (!aBlock)
      {
LABEL_27:
        if (a3)
        {
          _Block_release(a3);
        }

        goto LABEL_29;
      }
    }

    _Block_release(v16);
    goto LABEL_27;
  }

  v11 = operator new(0x20uLL);
  strcpy(v11, "Invalid input dictionary passed");
  *a4 = -534716414;
  *(a4 + 8) = v11;
  *(a4 + 16) = xmmword_240146B60;
LABEL_29:
  xpc_release(v10);
}

void sub_24012E3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client16SetTracePropertyENSt3__110shared_ptrINS0_7ManagerEEEPvU13block_pointerFvN12TelephonyXPC6ResultES5_E_block_invoke(uint64_t a1, int *a2)
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

    (*(v2 + 16))(v2, &v3, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_24012E510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void abm::client::CollectTelephonyLogs(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a1)
  {
    v10 = operator new(0x20uLL);
    strcpy(v10, "Invalid manager object passed");
    *a4 = -534716414;
    *(a4 + 8) = v10;
    *(a4 + 16) = xmmword_240146B80;
    return;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v8) == MEMORY[0x277D86468])
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = xpc_string_create(v11);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "kKeyTraceDumpStateReason", v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = xpc_string_create("kCollectTelephonyLogs");
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "kKeyTraceAction", v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  if (a3)
  {
    a3 = _Block_copy(a3);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1174405120;
  v22[2] = ___ZN3abm6client20CollectTelephonyLogsENSt3__110shared_ptrINS0_7ManagerEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke;
  v22[3] = &__block_descriptor_tmp_9;
  if (a3)
  {
    v16 = _Block_copy(a3);
  }

  else
  {
    v16 = 0;
  }

  aBlock = v16;
  v17 = *a1;
  strcpy(__p, "kCommandTraceDumpState");
  v21 = 22;
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::client::Manager::perform(v17, __p, v22, &object);
  xpc_release(object);
  object = 0;
  if ((v21 & 0x80000000) == 0)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v18 = aBlock;
    if (!aBlock)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  operator delete(*__p);
  *a4 = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  v18 = aBlock;
  if (aBlock)
  {
LABEL_28:
    _Block_release(v18);
  }

LABEL_29:
  if (a3)
  {
    _Block_release(a3);
  }

  xpc_release(v9);
}

void sub_24012E818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client20CollectTelephonyLogsENSt3__110shared_ptrINS0_7ManagerEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke(uint64_t a1, int *a2, uint64_t *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      __p = *(a2 + 2);
    }

    (*(v3 + 16))(v3, &v5, v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_24012E954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void abm::client::CollectTelephonyLogsWithCoredump(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a1)
  {
    v10 = operator new(0x20uLL);
    strcpy(v10, "Invalid manager object passed");
    *a4 = -534716414;
    *(a4 + 8) = v10;
    *(a4 + 16) = xmmword_240146B80;
    return;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v8) == MEMORY[0x277D86468])
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v11 = xpc_string_create("HardReset");
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "KeyBasebandResetType", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_string_create("Other Errors");
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "KeyBasebandResetSubType", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_string_create("kCollectTelephonyLogsWithCoredump");
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "kKeyTraceAction", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  if (*(a2 + 23) >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  v18 = xpc_string_create(v17);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "KeyBasebandResetReason", v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  if (a3)
  {
    a3 = _Block_copy(a3);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1174405120;
  v26[2] = ___ZN3abm6client32CollectTelephonyLogsWithCoredumpENSt3__110shared_ptrINS0_7ManagerEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke;
  v26[3] = &__block_descriptor_tmp_12;
  if (a3)
  {
    v20 = _Block_copy(a3);
  }

  else
  {
    v20 = 0;
  }

  aBlock = v20;
  v21 = *a1;
  v25 = 20;
  strcpy(__p, "CommandResetBaseband");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::client::Manager::perform(v21, __p, v26, &object);
  xpc_release(object);
  object = 0;
  if ((v25 & 0x80000000) == 0)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v22 = aBlock;
    if (!aBlock)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  operator delete(*__p);
  *a4 = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  v22 = aBlock;
  if (aBlock)
  {
LABEL_32:
    _Block_release(v22);
  }

LABEL_33:
  if (a3)
  {
    _Block_release(a3);
  }

  xpc_release(v9);
}

void sub_24012ECEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client32CollectTelephonyLogsWithCoredumpENSt3__110shared_ptrINS0_7ManagerEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke(uint64_t a1, int *a2, uint64_t *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      __p = *(a2 + 2);
    }

    (*(v3 + 16))(v3, &v5, v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_24012EE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void abm::client::CollectBasebandLogs(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a1)
  {
    v10 = operator new(0x20uLL);
    strcpy(v10, "Invalid manager object passed");
    *a4 = -534716414;
    *(a4 + 8) = v10;
    *(a4 + 16) = xmmword_240146B80;
    return;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v8) == MEMORY[0x277D86468])
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = xpc_string_create(v11);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "kKeyTraceDumpStateReason", v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = xpc_string_create("kCollectBasebandLogs");
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "kKeyTraceAction", v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  if (a3)
  {
    a3 = _Block_copy(a3);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1174405120;
  v22[2] = ___ZN3abm6client19CollectBasebandLogsENSt3__110shared_ptrINS0_7ManagerEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke;
  v22[3] = &__block_descriptor_tmp_15;
  if (a3)
  {
    v16 = _Block_copy(a3);
  }

  else
  {
    v16 = 0;
  }

  aBlock = v16;
  v17 = *a1;
  strcpy(__p, "kCommandTraceDumpState");
  v21 = 22;
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::client::Manager::perform(v17, __p, v22, &object);
  xpc_release(object);
  object = 0;
  if ((v21 & 0x80000000) == 0)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v18 = aBlock;
    if (!aBlock)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  operator delete(*__p);
  *a4 = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  v18 = aBlock;
  if (aBlock)
  {
LABEL_28:
    _Block_release(v18);
  }

LABEL_29:
  if (a3)
  {
    _Block_release(a3);
  }

  xpc_release(v9);
}

void sub_24012F158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client19CollectBasebandLogsENSt3__110shared_ptrINS0_7ManagerEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke(uint64_t a1, int *a2, uint64_t *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      __p = *(a2 + 2);
    }

    (*(v3 + 16))(v3, &v5, v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_24012F294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void abm::client::GetTraceModeWithOwnership(uint64_t ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a1)
  {
    v8 = operator new(0x20uLL);
    strcpy(v8, "Invalid manager object passed");
    *a3 = -534716414;
    *(a3 + 8) = v8;
    *(a3 + 16) = xmmword_240146B80;
    return;
  }

  v37 = xpc_null_create();
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v6) == MEMORY[0x277D86468])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v9 = xpc_int64_create(15000);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, "Timeout", v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_string_create("BasebandTrace");
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, "kKeyTraceName", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_BOOL_create(1);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, "kKeyTracePropertyWaitForCompletion", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_string_create("TraceOwnership");
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, "kKeyTracePropertyName", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = *a1;
  object = v7;
  __p = operator new(0x20uLL);
  v33 = xmmword_240146B70;
  strcpy(__p, "kCommandGetTraceProperty");
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::client::Manager::perform(v17, &object, &v37, &v34);
  v18 = v34;
  v19 = v35;
  v20 = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35) = 0;
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
    if (v18)
    {
LABEL_22:
      v21 = operator new(0x28uLL);
      strcpy(v21, "Failed to get Baseband Trace ownership");
      *a3 = -534716414;
      *(a3 + 8) = v21;
      *(a3 + 16) = xmmword_240146BA0;
      if (v20 < 0)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }
  }

  else if (v18)
  {
    goto LABEL_22;
  }

  v34 = a2;
  v35 = "TraceOwnership";
  xpc::dict::object_proxy::operator=(&v30, &v34, v37, "kKeyTracePropertyValue");
  xpc_release(v30);
  v30 = 0;
  v22 = xpc_string_create("Mode");
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, "kKeyTracePropertyName", v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  v24 = *a1;
  __p = operator new(0x20uLL);
  v33 = xmmword_240146B70;
  strcpy(__p, "kCommandGetTraceProperty");
  v29 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v29 = xpc_null_create();
  }

  abm::client::Manager::perform(v24, &v29, &v37, &v34);
  v25 = v34;
  if (v20 < 0)
  {
    operator delete(v19);
  }

  v19 = v35;
  v26 = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35) = 0;
  xpc_release(v29);
  v29 = 0;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    if (v25)
    {
      goto LABEL_34;
    }

LABEL_39:
    v34 = a2;
    v35 = "Mode";
    xpc::dict::object_proxy::operator=(&v28, &v34, v37, "kKeyTracePropertyValue");
    xpc_release(v28);
    v28 = 0;
    *a3 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  operator delete(__p);
  if (!v25)
  {
    goto LABEL_39;
  }

LABEL_34:
  v27 = operator new(0x28uLL);
  strcpy(v27, "Failed to get Baseband Trace Mode");
  *a3 = -534716414;
  *(a3 + 8) = v27;
  *(a3 + 16) = xmmword_240146BB0;
  if (v26 < 0)
  {
LABEL_35:
    operator delete(v19);
  }

LABEL_36:
  xpc_release(v7);
  xpc_release(v37);
}