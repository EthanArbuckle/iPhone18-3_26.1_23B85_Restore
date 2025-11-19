void sub_24013C580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](v2 - 48);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_24013C5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, char a13)
{
  xpc_release(object);
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a13);
  _Unwind_Resume(a1);
}

void abm::client::Manager::perform(uint64_t **a1@<X0>, xpc_object_t *a2@<X2>, void **a3@<X3>, _DWORD *a4@<X8>)
{
  v48 = 0;
  v49 = &v48;
  v50 = 0x3002000000;
  v51 = __Block_byref_object_copy_;
  v52 = __Block_byref_object_dispose_;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v53 = xpc_null_create();
  v39 = 0;
  v40 = &v39;
  v41 = 0x4802000000;
  v42 = __Block_byref_object_copy__6;
  v43 = __Block_byref_object_dispose__7;
  v44 = 0xAAAAAAAAE020E002;
  v46 = 0;
  v47 = 0;
  __p = 0;
  v8 = a1[1];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = *a1;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10)
  {
    goto LABEL_17;
  }

  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v16 = v10;
  (v10->__on_zero_shared)();
  std::__shared_weak_count::__release_weak(v16);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_5:
  v11 = dispatch_group_create();
  v12 = v11;
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(v12);
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3abm6client7Manager7performERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictERSC__block_invoke;
  aBlock[3] = &unk_285219598;
  aBlock[6] = v9;
  v35 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  group = v12;
  if (v12)
  {
    dispatch_retain(v12);
    dispatch_group_enter(group);
  }

  aBlock[4] = &v39;
  aBlock[5] = &v48;
  v13 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v15 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v37 = v13;
  v38 = v15;
  if (v13)
  {
    v32 = _Block_copy(v13);
    v33 = v15;
    if (!v15)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v32 = 0;
  v33 = v15;
  if (v15)
  {
LABEL_13:
    dispatch_retain(v15);
  }

LABEL_14:
  object = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    object = xpc_null_create();
  }

  TelephonyXPC::Command::create();
  xpc_release(object);
  if (v33)
  {
    dispatch_release(v33);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  v20 = *a1;
  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  v21 = *v20;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  v54 = 0xAAAAAAAAAAAAAAAALL;
  TelephonyXPC::Client::perform();
  v22 = v55;
  if (v55 && !atomic_fetch_add((v55 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
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

  if (v38)
  {
    dispatch_release(v38);
  }

  if (v37)
  {
    _Block_release(v37);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v12)
  {
    dispatch_group_leave(v12);
    dispatch_release(v12);
    if (MEMORY[0x245CBA9E0](*a2) != MEMORY[0x277D86468])
    {
      goto LABEL_53;
    }

    value = xpc_dictionary_get_value(*a2, "Timeout");
    v54 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v54 = xpc_null_create();
    }

    v27 = xpc::dyn_cast_or_default();
    xpc_release(v54);
    if (v27)
    {
      v28 = dispatch_time(0, 1000000 * v27);
      if (!dispatch_group_wait(v12, v28))
      {
        goto LABEL_62;
      }
    }

    else
    {
LABEL_53:
      if (!dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_62:
        v29 = v49[5];
        if (v29)
        {
          xpc_retain(v49[5]);
        }

        else
        {
          v29 = xpc_null_create();
        }

        v30 = *a3;
        *a3 = v29;
        xpc_release(v30);
        goto LABEL_18;
      }
    }

    v23 = operator new(0x30uLL);
    strcpy(v23, "Timeout waiting for response from server");
    v24 = v40;
    *(v40 + 10) = -534716413;
    if (*(v24 + 71) < 0)
    {
      v25 = v23;
      operator delete(v24[6]);
      v23 = v25;
    }

    v24[6] = v23;
    v24[7] = 40;
    v24[8] = 0x8000000000000030;
  }

LABEL_18:
  v17 = v40;
  *a4 = *(v40 + 10);
  v18 = (a4 + 2);
  if (*(v17 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(v18, v17[6], v17[7]);
  }

  else
  {
    v19 = *(v17 + 3);
    v18->__r_.__value_.__r.__words[2] = v17[8];
    *&v18->__r_.__value_.__l.__data_ = v19;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v39, 8);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&v48, 8);
  xpc_release(v53);
}

void sub_24013CB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, dispatch_group_t group, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  xpc_release(*(v41 - 96));
  std::__shared_weak_count::__release_weak(v39);
  if (v40)
  {
    dispatch_release(v40);
    _Block_object_dispose(&a28, 8);
    if ((a39 & 0x80000000) == 0)
    {
LABEL_4:
      _Block_object_dispose((v41 - 144), 8);
      xpc_release(*(v41 - 104));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a28, 8);
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  operator delete(__p);
  goto LABEL_4;
}

xpc_object_t __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = xpc_null_create();
  *(a2 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__6(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u32[2] = a2[2].n128_u32[2];
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__7(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void ___ZN3abm6client7Manager7performERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictERSC__block_invoke(void *a1, uint64_t a2, xpc_object_t *a3)
{
  v4 = a1[7];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[6])
      {
        v9 = *(a1[4] + 8);
        *(v9 + 40) = *a2;
        if (v9 + 40 != a2)
        {
          v10 = *(a2 + 31);
          if (*(v9 + 71) < 0)
          {
            if (v10 >= 0)
            {
              v12 = (a2 + 8);
            }

            else
            {
              v12 = *(a2 + 8);
            }

            if (v10 >= 0)
            {
              v13 = *(a2 + 31);
            }

            else
            {
              v13 = *(a2 + 16);
            }

            std::string::__assign_no_alias<false>((v9 + 48), v12, v13);
          }

          else if ((*(a2 + 31) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>((v9 + 48), *(a2 + 8), *(a2 + 16));
          }

          else
          {
            v11 = *(a2 + 8);
            *(v9 + 64) = *(a2 + 24);
            *(v9 + 48) = v11;
          }
        }

        v14 = *(a1[5] + 8);
        v15 = *a3;
        if (v15)
        {
          xpc_retain(v15);
        }

        else
        {
          v15 = xpc_null_create();
        }

        v16 = *(v14 + 40);
        *(v14 + 40) = v15;
        xpc_release(v16);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);

        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void __copy_helper_block_e8_48c50_ZTSNSt3__18weak_ptrIN3abm6client7Manager5StateEEE64c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[7];
  a1[6] = a2[6];
  a1[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[8];
  a1[8] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[8];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_48c50_ZTSNSt3__18weak_ptrIN3abm6client7Manager5StateEEE64c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 64);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 56);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__shared_ptr_pointer<abm::client::Manager::State *,std::shared_ptr<abm::client::Manager::State>::__shared_ptr_default_delete<abm::client::Manager::State,abm::client::Manager::State>,std::allocator<abm::client::Manager::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abm::client::Manager::State *,std::shared_ptr<abm::client::Manager::State>::__shared_ptr_default_delete<abm::client::Manager::State,abm::client::Manager::State>,std::allocator<abm::client::Manager::State>>::__on_zero_shared(uint64_t a1)
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

uint64_t std::__shared_ptr_pointer<abm::client::Manager::State *,std::shared_ptr<abm::client::Manager::State>::__shared_ptr_default_delete<abm::client::Manager::State,abm::client::Manager::State>,std::allocator<abm::client::Manager::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000024014729ALL)
  {
    if (((v2 & 0x800000024014729ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024014729ALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024014729ALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<abm::client::Manager *,std::shared_ptr<abm::client::Manager>::__shared_ptr_default_delete<abm::client::Manager,abm::client::Manager>,std::allocator<abm::client::Manager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abm::client::Manager *,std::shared_ptr<abm::client::Manager>::__shared_ptr_default_delete<abm::client::Manager,abm::client::Manager>,std::allocator<abm::client::Manager>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(v1 + 8);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      v4 = v1;
    }

    else
    {
      v4 = v1;
    }

    operator delete(v4);
  }
}

uint64_t std::__shared_ptr_pointer<abm::client::Manager *,std::shared_ptr<abm::client::Manager>::__shared_ptr_default_delete<abm::client::Manager,abm::client::Manager>,std::allocator<abm::client::Manager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000240147375)
  {
    if (((v2 & 0x8000000240147375 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000240147375))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000240147375 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **std::unique_ptr<abm::client::Manager>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *abm::client::Command::Command(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void abm::client::Command::State::name(xpc_object_t *this)
{
  value = xpc_dictionary_get_value(this[2], kKeyCommand);
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
}

xpc_object_t abm::client::Command::get@<X0>(abm::client::Command *this@<X0>, void *a2@<X8>)
{
  v3 = *(*this + 16);
  *a2 = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void abm::client::Command::notify(uint64_t *a1, int a2, const void **a3)
{
  v4 = *a1;
  v5 = *a3;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  abm::client::Command::State::notify(v4, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_24013D498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void abm::client::Command::State::notify(uint64_t a1, int a2, CFTypeRef *a3)
{
  v4 = *a1;
  if (!v4 || !*(a1 + 8))
  {
    return;
  }

  v6 = *a3;
  if (*a3 && (CFRetain(*a3), (v4 = *a1) == 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = _Block_copy(v4);
  }

  v8 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEclIJiS6_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_8;
  if (v7)
  {
    v12 = a2;
    aBlock = _Block_copy(v7);
    cf = v6;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v12 = a2;
  aBlock = 0;
  cf = v6;
  if (v6)
  {
LABEL_11:
    CFRetain(v6);
  }

LABEL_12:
  dispatch_async(v8, block);
  if (cf)
  {
    CFRelease(cf);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void abm::client::Command::create(uint64_t a1@<X1>, ctu **a2@<X2>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v21 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v18 = 0;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x18uLL);
  if (*a1)
  {
    v7 = _Block_copy(*a1);
    v8 = *(a1 + 8);
    v15 = v7;
    v16 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v8 = *(a1 + 8);
  v15 = 0;
  v16 = v8;
  if (v8)
  {
LABEL_3:
    dispatch_retain(v8);
  }

LABEL_4:
  v9 = *a2;
  v14 = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  abm::client::Command::State::State(v6, __p, &v15, &v14);
  v19 = v6;
  v22 = v6;
  v10 = operator new(0x20uLL);
  v10->__shared_owners_ = 0;
  v10->__vftable = &unk_2852196A8;
  v10->__shared_weak_owners_ = 0;
  v10[1].__vftable = v6;
  v20 = v10;
  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  v11 = operator new(0x10uLL);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v11->~__shared_weak_count = v6;
  v11->~__shared_weak_count_0 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v11;
  v22 = v11;
  v12 = operator new(0x20uLL);
  v12->~__shared_weak_count = &unk_2852196F8;
  v12->~__shared_weak_count_0 = 0;
  v12->__on_zero_shared = 0;
  v12->__get_deleter = v11;
  a3[1] = v12;
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v13 = v20;
  if (!v20 || atomic_fetch_add((v20 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (SHIBYTE(v18) < 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }
}

void sub_24013D83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  std::unique_ptr<AppleBasebandManager>::~unique_ptr[abi:ne200100]((v25 - 72));
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a10);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a25);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24013D8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x24013D8B0);
  }

  JUMPOUT(0x24013D8B4);
}

void abm::client::Command::create(uint64_t a1@<X0>, uint64_t a2@<X1>, ctu **a3@<X2>, std::__shared_weak_count_vtbl **a4@<X8>)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0x18uLL);
  if (*a2)
  {
    v9 = _Block_copy(*a2);
    v10 = *(a2 + 8);
    v17 = v9;
    v18 = v10;
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  v10 = *(a2 + 8);
  v17 = 0;
  v18 = v10;
  if (v10)
  {
LABEL_3:
    dispatch_retain(v10);
  }

LABEL_4:
  v11 = *a3;
  v16 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  abm::client::Command::State::State(v8, a1, &v17, &v16);
  v19 = v8;
  v21 = v8;
  v12 = operator new(0x20uLL);
  v12->__shared_owners_ = 0;
  v12->__vftable = &unk_2852196A8;
  v12->__shared_weak_owners_ = 0;
  v12[1].__vftable = v8;
  v20 = v12;
  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  v13 = operator new(0x10uLL);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v13->~__shared_weak_count = v8;
  v13->~__shared_weak_count_0 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  *a4 = v13;
  v21 = v13;
  v14 = operator new(0x20uLL);
  v14->~__shared_weak_count = &unk_2852196F8;
  v14->~__shared_weak_count_0 = 0;
  v14->__on_zero_shared = 0;
  v14->__get_deleter = v13;
  a4[1] = v14;
  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = v20;
    if (!v20)
    {
      return;
    }
  }

  else
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v15 = v20;
    if (!v20)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);

    std::__shared_weak_count::__release_weak(v15);
  }
}

void sub_24013DB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *a16)
{
  std::unique_ptr<AppleBasebandManager>::~unique_ptr[abi:ne200100](&a16);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void sub_24013DB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  std::unique_ptr<abm::client::Command::State>::~unique_ptr[abi:ne200100](va2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(va1);
  _Unwind_Resume(a1);
}

void abm::client::Command::create(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x18uLL);
  if (*a3)
  {
    v9 = _Block_copy(*a3);
    v10 = *(a3 + 8);
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  v10 = *(a3 + 8);
  if (v10)
  {
LABEL_3:
    dispatch_retain(v10);
  }

LABEL_4:
  v11 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = xpc_null_create();
    if (v9)
    {
LABEL_6:
      v8->~__shared_weak_count = _Block_copy(v9);
      v8->~__shared_weak_count_0 = v10;
      if (!v10)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v8->~__shared_weak_count = 0;
  v8->~__shared_weak_count_0 = v10;
  if (v10)
  {
LABEL_7:
    dispatch_retain(v10);
  }

LABEL_8:
  v8->__on_zero_shared = v11;
  v12 = xpc_null_create();
  if (*(a1 + 23) >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  v14 = xpc_string_create(v13);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, kKeyCommand, v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = operator new(0x20uLL);
  v16->__shared_owners_ = 0;
  v16->__vftable = &unk_2852196A8;
  v16->__shared_weak_owners_ = 0;
  v16[1].__vftable = v8;
  xpc_release(v12);
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  v17 = operator new(0x10uLL);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  *v17 = v8;
  v17[1] = v16;
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  *a4 = v17;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2852196F8;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = v17;
  a4[1] = v18;
  if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = v16;
    if (!v16)
    {
      return;
    }
  }

  else
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v19 = v16;
    if (!v16)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);

    std::__shared_weak_count::__release_weak(v19);
  }
}

void sub_24013DE3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  std::unique_ptr<AppleBasebandManager>::~unique_ptr[abi:ne200100](va2);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_24013DE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24013DE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::unique_ptr<abm::client::Command::State>::~unique_ptr[abi:ne200100](va1);
  xpc_release(v4);
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(va);
  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEclIJiS6_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  cf = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  (*(v3 + 16))(v3, v1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_24013DF54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c84_ZTSN8dispatch5blockIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    result = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  v5 = _Block_copy(v4);
  result = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c84_ZTSN8dispatch5blockIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

uint64_t abm::client::Command::State::State(uint64_t a1, uint64_t a2, uint64_t a3, ctu **a4)
{
  v8 = *a3;
  if (*a3)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a3 + 8);
  *a1 = v8;
  *(a1 + 8) = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  v12 = MEMORY[0x277D86468];
  if (v10)
  {
    *(a1 + 16) = v10;
  }

  else
  {
    v11 = xpc_null_create();
    *(a1 + 16) = v11;
    if (!v11)
    {
      v13 = xpc_null_create();
      v11 = 0;
      goto LABEL_12;
    }
  }

  if (MEMORY[0x245CBA9E0](v11) == v12)
  {
    xpc_retain(v11);
    goto LABEL_13;
  }

  v13 = xpc_null_create();
LABEL_12:
  *(a1 + 16) = v13;
LABEL_13:
  xpc_release(v11);
  if (*a4)
  {
    ctu::cf_to_xpc(&object, *a4, v14);
    v15 = object;
    if (object && MEMORY[0x245CBA9E0](object) == v12)
    {
      xpc_retain(v15);
    }

    else
    {
      v15 = xpc_null_create();
    }

    v16 = xpc_null_create();
    v17 = *(a1 + 16);
    *(a1 + 16) = v15;
    xpc_release(v17);
    xpc_release(v16);
    xpc_release(object);
  }

  if (*(a2 + 23) >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  v19 = xpc_string_create(v18);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(a1 + 16), kKeyCommand, v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  return a1;
}

void sub_24013E1A8(_Unwind_Exception *a1)
{
  xpc::dict::~dict((v1 + 16));
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<abm::client::Command::State *,std::shared_ptr<abm::client::Command::State>::__shared_ptr_default_delete<abm::client::Command::State,abm::client::Command::State>,std::allocator<abm::client::Command::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abm::client::Command::State *,std::shared_ptr<abm::client::Command::State>::__shared_ptr_default_delete<abm::client::Command::State,abm::client::Command::State>,std::allocator<abm::client::Command::State>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v2 = *(v1 + 8);
    if (v2)
    {
      dispatch_release(v2);
    }

    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<abm::client::Command::State *,std::shared_ptr<abm::client::Command::State>::__shared_ptr_default_delete<abm::client::Command::State,abm::client::Command::State>,std::allocator<abm::client::Command::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000240147450)
  {
    if (((v2 & 0x8000000240147450 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000240147450))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000240147450 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<abm::client::Command::State>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_release(v3);
    }

    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__shared_ptr_pointer<abm::client::Command *,std::shared_ptr<abm::client::Command>::__shared_ptr_default_delete<abm::client::Command,abm::client::Command>,std::allocator<abm::client::Command>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abm::client::Command *,std::shared_ptr<abm::client::Command>::__shared_ptr_default_delete<abm::client::Command,abm::client::Command>,std::allocator<abm::client::Command>>::__on_zero_shared(uint64_t a1)
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

uint64_t std::__shared_ptr_pointer<abm::client::Command *,std::shared_ptr<abm::client::Command>::__shared_ptr_default_delete<abm::client::Command,abm::client::Command>,std::allocator<abm::client::Command>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000024014752BLL)
  {
    if (((v2 & 0x800000024014752BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024014752BLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024014752BLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void abm::client::Transport::create(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  v54 = *a2;
  if (*a2)
  {
    CFRetain(v7);
  }

  if (*a3)
  {
    v8 = _Block_copy(*a3);
    v9 = *(a3 + 8);
    v52 = v8;
    v53 = v9;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v9 = *(a3 + 8);
  v52 = 0;
  v53 = v9;
  if (v9)
  {
LABEL_5:
    dispatch_retain(v9);
  }

LABEL_6:
  v10 = operator new(0xA0uLL);
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v8)
  {
    aBlock = _Block_copy(v8);
    object = v9;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  aBlock = 0;
  object = v9;
  if (v9)
  {
LABEL_10:
    dispatch_retain(v9);
  }

LABEL_11:
  *(&v60.__r_.__value_.__s + 23) = 4;
  strcpy(&v60, ".xpc");
  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = *(a1 + 8);
  }

  v14 = std::string::insert(&v60, 0, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v64 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, *a1, *(a1 + 8));
  }

  else
  {
    v69 = *a1;
  }

  v16 = 0x7FFFFFFFFFFFFFF7;
  size = SHIBYTE(v69.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) - 13) < 0xA)
    {
      v18 = SHIBYTE(v69.__r_.__value_.__r.__words[2]) + 10;
      v19 = &v69;
      v20 = 22;
LABEL_30:
      v21 = 2 * v20;
      if (v18 > 2 * v20)
      {
        v21 = v18;
      }

      if ((v21 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v21 | 7) + 1;
      }

      if (v21 >= 0x17)
      {
        v16 = v22;
      }

      else
      {
        v16 = 23;
      }

      v23 = v20 == 22;
      goto LABEL_39;
    }

    v28 = &v69;
LABEL_46:
    v29 = v28 + size;
    *v29 = *".xpc.queue";
    *(v29 + 4) = 25973;
    v30 = size + 10;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      v69.__r_.__value_.__l.__size_ = size + 10;
    }

    else
    {
      *(&v69.__r_.__value_.__s + 23) = v30 & 0x7F;
    }

    v27 = v28 + v30;
    goto LABEL_50;
  }

  size = v69.__r_.__value_.__l.__size_;
  v20 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - v69.__r_.__value_.__l.__size_ >= 0xA)
  {
    v28 = v69.__r_.__value_.__r.__words[0];
    goto LABEL_46;
  }

  v18 = v69.__r_.__value_.__l.__size_ + 10;
  if (0x7FFFFFFFFFFFFFF7 - (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v69.__r_.__value_.__l.__size_ + 10 - v20)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v69.__r_.__value_.__r.__words[0];
  if (v20 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_30;
  }

  v23 = 0;
LABEL_39:
  v24 = operator new(v16);
  v25 = v24;
  if (size)
  {
    memmove(v24, v19, size);
  }

  v26 = v25 + size;
  *v26 = *".xpc.queue";
  *(v26 + 8) = 25973;
  if (!v23)
  {
    operator delete(v19);
  }

  v69.__r_.__value_.__l.__size_ = v18;
  v69.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
  v69.__r_.__value_.__r.__words[0] = v25;
  v27 = (v25 + v18);
LABEL_50:
  *v27 = 0;
  __dst = v69;
  memset(&v69, 0, sizeof(v69));
  v31 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v71 = dispatch_queue_create(p_dst, v31);
  v68 = 0;
  ctu::XpcClient::XpcClient();
  if (v68)
  {
    dispatch_release(v68);
  }

  if (v71)
  {
    dispatch_release(v71);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_59:
      if ((SHIBYTE(v64) & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

LABEL_65:
      operator delete(__p[0]);
      if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_66;
    }
  }

  else if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v69.__r_.__value_.__l.__data_);
  if (SHIBYTE(v64) < 0)
  {
    goto LABEL_65;
  }

LABEL_60:
  if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_66:
  operator delete(v60.__r_.__value_.__l.__data_);
LABEL_61:
  *v10 = &unk_285219798;
  ctu::OsLogContext::OsLogContext(&v60, "com.apple.telephony.abm", "abm.client");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x245CBA340](v10 + 72, &__dst);
  MEMORY[0x245CBA350](&__dst);
  ctu::OsLogContext::~OsLogContext(&v60);
  *v10 = &unk_285219798;
  *(v10 + 10) = 0;
  v33 = (v10 + 80);
  *(v10 + 11) = 0;
  *(v10 + 12) = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v10 + 104), *a1, *(a1 + 8));
  }

  else
  {
    *(v10 + 104) = *a1;
    *(v10 + 15) = *(a1 + 16);
  }

  v34 = aBlock;
  if (aBlock)
  {
    v34 = _Block_copy(aBlock);
  }

  *(v10 + 16) = v34;
  *(v10 + 17) = object;
  if (object)
  {
    dispatch_retain(object);
  }

  v35 = operator new(0x18uLL);
  v35[2] = 0;
  v35[1] = 0;
  *v35 = v35 + 1;
  *(v10 + 18) = v35;
  v60.__r_.__value_.__r.__words[0] = v35;
  v36 = operator new(0x20uLL);
  *v36 = &unk_285219810;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = v35;
  *(v10 + 19) = v36;
  v69.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v69.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(&v69, cf);
  v37 = kABMDefaultServiceName;
  v38 = strlen(kABMDefaultServiceName);
  if (v38 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v39 = v38;
  if (v38 >= 0x17)
  {
    if ((v38 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v38 | 7) + 1;
    }

    v40 = operator new(v41);
    __dst.__r_.__value_.__l.__size_ = v39;
    __dst.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v40;
    goto LABEL_80;
  }

  *(&__dst.__r_.__value_.__s + 23) = v38;
  v40 = &__dst;
  if (v38)
  {
LABEL_80:
    memmove(v40, v37, v39);
  }

  v40->__r_.__value_.__s.__data_[v39] = 0;
  ctu::cf::map_adapter::getString();
  if (v10[103] < 0)
  {
    operator delete(*v33);
  }

  *v33 = *&v60.__r_.__value_.__l.__data_;
  *(v10 + 12) = *(&v60.__r_.__value_.__l + 2);
  *(&v60.__r_.__value_.__s + 23) = 0;
  v60.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  MEMORY[0x245CBA3A0](&v69);
  v55 = v10;
  v42 = operator new(0x20uLL);
  v42[1] = 0;
  v43 = v42 + 1;
  *v42 = &unk_285219748;
  v42[2] = 0;
  v42[3] = v10;
  v56 = v42;
  v44 = *(v10 + 2);
  if (!v44)
  {
    atomic_fetch_add_explicit(v42 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v42 + 2, 1uLL, memory_order_relaxed);
    *(v10 + 1) = v10;
    *(v10 + 2) = v42;
    if (atomic_fetch_add(v43, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if (v44->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v42 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v42 + 2, 1uLL, memory_order_relaxed);
    *(v10 + 1) = v10;
    *(v10 + 2) = v42;
    v45 = v42;
    std::__shared_weak_count::__release_weak(v44);
    v42 = v45;
    if (!atomic_fetch_add(v43, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_90:
      v46 = v42;
      (*(*v42 + 16))();
      std::__shared_weak_count::__release_weak(v46);
    }
  }

LABEL_91:
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v60.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
  v60.__r_.__value_.__l.__size_ = 0x40000000;
  v60.__r_.__value_.__r.__words[2] = ___ZN3abm6client9Transport5State4initEv_block_invoke;
  v61 = &__block_descriptor_tmp_17;
  __dst.__r_.__value_.__r.__words[0] = &v60;
  v62 = v55;
  __p[0] = MEMORY[0x277D85DD0];
  __p[1] = 0x40000000;
  v64 = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v65 = &__block_descriptor_tmp_18;
  v66 = v55 + 8;
  v67 = &__dst;
  v47 = *(v55 + 3);
  if (*(v55 + 4))
  {
    dispatch_async_and_wait(v47, __p);
    v48 = v53;
    if (!v53)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  dispatch_sync(v47, __p);
  v48 = v53;
  if (v53)
  {
LABEL_99:
    dispatch_release(v48);
  }

LABEL_100:
  if (v52)
  {
    _Block_release(v52);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  v49 = operator new(0x10uLL);
  v50 = v49;
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
    *v49 = v55;
    v49[1] = v56;
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *v49 = v55;
    v49[1] = 0;
  }

  *a4 = v49;
  __p[0] = v49;
  v51 = operator new(0x20uLL);
  *v51 = &unk_285219AE0;
  v51[1] = 0;
  v51[2] = 0;
  v51[3] = v50;
  a4[1] = v51;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
  }

  if (v56)
  {
    if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
    }
  }
}

void sub_24013ECF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, const void *);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  if (v4[103] < 0)
  {
    operator delete(*v6);
  }

  MEMORY[0x245CBA350](v5);
  ctu::XpcClient::~XpcClient(v4);
  dispatch::callback<void({block_pointer})(abm::client::TransportStatus)>::~callback(va2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va3);
  operator delete(v4);
  dispatch::callback<void({block_pointer})(abm::client::TransportStatus)>::~callback(va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_24013ECFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_6:
      JUMPOUT(0x24013EF18);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(a20);
  goto LABEL_6;
}

void sub_24013ED58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  std::unique_ptr<AppleBasebandManager>::~unique_ptr[abi:ne200100](va2);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_24013ED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24013ED90(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<abm::client::Transport::State> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<abm::client::Transport::State>(abm::client::Transport::State*)::{lambda(abm::client::Transport::State*)#1}::operator() const(abm::client::Transport::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_24013EDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, const void *);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  if (*(v7 - 105) < 0)
  {
    operator delete(*(v7 - 128));
  }

  MEMORY[0x245CBA3A0](v7 - 160);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](v4 + 144);
  dispatch::callback<void({block_pointer})(abm::client::TransportStatus)>::~callback(v4 + 128);
  if (*(v4 + 127) < 0)
  {
    operator delete(*(v4 + 104));
  }

  if (*(v4 + 103) < 0)
  {
    operator delete(*v6);
  }

  MEMORY[0x245CBA350](v5);
  ctu::XpcClient::~XpcClient(v4);
  dispatch::callback<void({block_pointer})(abm::client::TransportStatus)>::~callback(va2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va3);
  operator delete(v4);
  dispatch::callback<void({block_pointer})(abm::client::TransportStatus)>::~callback(va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_24013EDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<std::map<std::string,abm::client::EventCallbackFilter>>::~unique_ptr[abi:ne200100](va);
  JUMPOUT(0x24013EEE0);
}

void sub_24013EE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    JUMPOUT(0x24013EEA4);
  }

  JUMPOUT(0x24013EF18);
}

void sub_24013EEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(abm::client::TransportStatus)>::~callback(va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void *abm::client::Transport::Transport(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void abm::client::Transport::perform(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZN3abm6client9Transport5State7performENSt3__110shared_ptrINS0_7CommandEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_19;
  v6[4] = v2;
  v6[5] = v3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped((v2 + 8), v6);
  v5 = v7;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void abm::client::Transport::reconnect(abm::client::Transport *this)
{
  v1 = *this;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3abm6client9Transport5State9reconnectEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_31;
  v2[4] = v1;
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped((v1 + 8), v2);
}

void abm::client::Transport::checkIn(abm::client::Transport *this)
{
  v1 = *this;
  v2 = *this + 8;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN3abm6client9Transport5State7checkInEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_32;
  v4[4] = v1;
  v5 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_18;
  block[4] = v2;
  block[5] = &v5;
  v3 = *(v1 + 24);
  if (*(v1 + 32))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void abm::client::Transport::checkOut(abm::client::Transport *this)
{
  v1 = *this;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3abm6client9Transport5State8checkOutEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_43;
  v2[4] = v1;
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped((v1 + 8), v2);
}

void abm::client::Transport::setEventHandler(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
    v5 = *a3;
    if (!*a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = *a2;
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

  abm::client::Transport::State::setEventHandler(v4, &v9, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_24013F390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<abm::client::Event>)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void abm::client::Transport::State::setEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1174405120;
  v7[2] = ___ZN3abm6client9Transport5State15setEventHandlerENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvNS3_10shared_ptrINS0_5EventEEEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_44;
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

  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped((a1 + 8), v7);
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

void abm::client::Transport::setEventHandler(uint64_t *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = *a1;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v13 = *a2;
    v7 = *a3;
    v12 = v7;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = xpc_null_create();
    v8 = *a4;
    if (!*a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  v7 = *a3;
  v12 = v7;
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

  abm::client::Transport::State::setEventHandler(v6, &v13, &v12, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v12);
  v12 = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_24013F5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<abm::client::Event>)>::~callback(&a10);
  xpc_release(object);
  object = 0;
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void abm::client::Transport::State::setEventHandler(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1174405120;
  v10[2] = ___ZN3abm6client9Transport5State15setEventHandlerENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS3_10shared_ptrINS0_5EventEEEEEE_block_invoke;
  v10[3] = &__block_descriptor_tmp_45;
  v10[4] = a1;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    __p = *a2;
    v7 = *a3;
    v12 = v7;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = xpc_null_create();
    v8 = *a4;
    if (!*a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  v7 = *a3;
  v12 = v7;
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

  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped((a1 + 8), v10);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v12);
  v12 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void abm::client::Transport::eventsOn(abm::client::Transport *this)
{
  v1 = *this;
  v2 = *this + 8;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN3abm6client9Transport5State8eventsOnEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_46;
  v4[4] = v1;
  v5 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_18;
  block[4] = v2;
  block[5] = &v5;
  v3 = *(v1 + 24);
  if (*(v1 + 32))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void abm::client::Transport::eventsOff(abm::client::Transport *this)
{
  v1 = *this;
  v2 = *this + 8;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN3abm6client9Transport5State9eventsOffEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_47;
  v4[4] = v1;
  v5 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_18;
  block[4] = v2;
  block[5] = &v5;
  v3 = *(v1 + 24);
  if (*(v1 + 32))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void std::__shared_ptr_pointer<abm::client::Transport::State *,std::shared_ptr<abm::client::Transport::State> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<abm::client::Transport::State>(abm::client::Transport::State*)::{lambda(abm::client::Transport::State *)#1},std::allocator<abm::client::Transport::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<abm::client::Transport::State *,std::shared_ptr<abm::client::Transport::State> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<abm::client::Transport::State>(abm::client::Transport::State*)::{lambda(abm::client::Transport::State *)#1},std::allocator<abm::client::Transport::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableINS_9XpcClientEE15make_shared_ptrIN3abm6client9Transport5StateEEENSt3__110shared_ptrIT_EEPSA_EUlPS7_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableINS_9XpcClientEE15make_shared_ptrIN3abm6client9Transport5StateEEENSt3__110shared_ptrIT_EEPSA_EUlPS7_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableINS_9XpcClientEE15make_shared_ptrIN3abm6client9Transport5StateEEENSt3__110shared_ptrIT_EEPSA_EUlPS7_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableINS_9XpcClientEE15make_shared_ptrIN3abm6client9Transport5StateEEENSt3__110shared_ptrIT_EEPSA_EUlPS7_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<abm::client::Transport::State> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<abm::client::Transport::State>(abm::client::Transport::State*)::{lambda(abm::client::Transport::State*)#1}::operator() const(abm::client::Transport::State*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void abm::client::Transport::State::handleServerError_sync(void *a1, xpc::object *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a1[9];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    xpc::object::to_string(object, a2);
    v17 = SHIBYTE(v19) >= 0 ? object : object[0];
    *buf = 136315138;
    v24 = v17;
    _os_log_error_impl(&dword_240122000, v4, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(object[0]);
    }
  }

  if (*a2 != MEMORY[0x277D86420])
  {
    pthread_mutex_lock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
    v5 = off_280AFDA78;
    if (!off_280AFDA78)
    {
      v6 = operator new(0x50uLL);
      ConnectionObserver::ConnectionObserver(v6);
      object[0] = 0xAAAAAAAAAAAAAAAALL;
      object[1] = 0xAAAAAAAAAAAAAAAALL;
      std::shared_ptr<ConnectionObserver>::shared_ptr[abi:ne200100]<ConnectionObserver,0>(object, v6);
      v7 = *object;
      object[0] = 0;
      object[1] = 0;
      v8 = *(&off_280AFDA78 + 1);
      off_280AFDA78 = v7;
      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      v9 = object[1];
      if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v5 = off_280AFDA78;
    }

    v10 = *(&off_280AFDA78 + 1);
    if (*(&off_280AFDA78 + 1))
    {
      atomic_fetch_add_explicit((*(&off_280AFDA78 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
    object[0] = MEMORY[0x277D85DD0];
    object[1] = 0x40000000;
    v19 = ___ZN18ConnectionObserver7suspendEv_block_invoke;
    v20 = &__block_descriptor_tmp_4;
    aBlock = v5;
    os_unfair_lock_lock(v5 + 4);
    v19(object);
    os_unfair_lock_unlock(v5 + 4);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    object[0] = xpc_null_create();
    ctu::XpcClient::setServer_sync();
    xpc_release(object[0]);
    v11 = a1[16];
    if (v11 && a1[17])
    {
      v12 = _Block_copy(v11);
      v13 = v12;
      v14 = a1[17];
      object[0] = MEMORY[0x277D85DD0];
      object[1] = 1174405120;
      v19 = ___ZNK8dispatch8callbackIU13block_pointerFvN3abm6client15TransportStatusEEEclIJS3_EEEvDpT__block_invoke;
      v20 = &__block_descriptor_tmp_9;
      if (v12)
      {
        v15 = _Block_copy(v12);
      }

      else
      {
        v15 = 0;
      }

      aBlock = v15;
      v22 = 4;
      dispatch_async(v14, object);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v13)
      {
        _Block_release(v13);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_24013FD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abm::client::Transport::State::handleMessage_sync(uint64_t a1, xpc::object *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    xpc::object::to_string(&__s1, a2);
    v42 = SHIBYTE(v50) >= 0 ? &__s1 : __s1;
    *buf = 136315138;
    *&buf[4] = v42;
    _os_log_debug_impl(&dword_240122000, v4, OS_LOG_TYPE_DEBUG, "#D Message From Server: %s", buf, 0xCu);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__s1);
    }
  }

  v5 = *(a1 + 16);
  if (!v5 || (v6 = *(a1 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
    memset(buf, 170, 16);
    v9 = *a2;
    v47 = v9;
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v47 = xpc_null_create();
    goto LABEL_9;
  }

  memset(buf, 170, 16);
  v9 = *a2;
  v47 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_6:
  xpc_retain(v9);
LABEL_9:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3abm6client9Transport5State18handleMessage_syncEN3xpc4dictE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_14;
  aBlock[4] = a1;
  aBlock[5] = v6;
  v44 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 24);
  if (v11)
  {
    dispatch_retain(*(a1 + 24));
  }

  v45 = v10;
  object = v11;
  abm::client::Event::create(&v47, &v45, buf);
  if (object)
  {
    dispatch_release(object);
  }

  if (v45)
  {
    _Block_release(v45);
  }

  xpc_release(v47);
  v47 = 0;
  abm::client::Event::State::name(**buf);
  v12 = strlen(kValueInvalid);
  if ((SHIBYTE(v50) & 0x8000000000000000) != 0)
  {
    if (v12 == v49)
    {
      if (v12 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v13 = __s1;
      v14 = memcmp(__s1, kValueInvalid, v12);
      operator delete(v13);
      if (!v14)
      {
        goto LABEL_81;
      }
    }

    else
    {
      operator delete(__s1);
    }
  }

  else if (v12 == SHIBYTE(v50) && !memcmp(&__s1, kValueInvalid, v12))
  {
    goto LABEL_81;
  }

  v15 = *(a1 + 144);
  abm::client::Event::State::name(**buf);
  v18 = *(v15 + 8);
  v16 = (v15 + 8);
  v17 = v18;
  v19 = HIBYTE(v50);
  if (!v18)
  {
    goto LABEL_59;
  }

  if (SHIBYTE(v50) >= 0)
  {
    p_s1 = &__s1;
  }

  else
  {
    p_s1 = __s1;
  }

  if (SHIBYTE(v50) >= 0)
  {
    v21 = HIBYTE(v50);
  }

  else
  {
    v21 = v49;
  }

  v22 = v16;
  do
  {
    while (1)
    {
      v23 = *(v17 + 55);
      v24 = v23 >= 0 ? v17 + 4 : v17[4];
      v25 = v23 >= 0 ? *(v17 + 55) : v17[5];
      v26 = v21 >= v25 ? v25 : v21;
      v27 = memcmp(v24, p_s1, v26);
      if (v27)
      {
        break;
      }

      if (v25 >= v21)
      {
        goto LABEL_46;
      }

LABEL_32:
      v17 = v17[1];
      if (!v17)
      {
        goto LABEL_47;
      }
    }

    if (v27 < 0)
    {
      goto LABEL_32;
    }

LABEL_46:
    v22 = v17;
    v17 = *v17;
  }

  while (v17);
LABEL_47:
  if (v22 == v16)
  {
    goto LABEL_59;
  }

  v28 = *(v22 + 55);
  if (v28 >= 0)
  {
    v29 = v22 + 4;
  }

  else
  {
    v29 = v22[4];
  }

  if (v28 >= 0)
  {
    v30 = *(v22 + 55);
  }

  else
  {
    v30 = v22[5];
  }

  if (v30 >= v21)
  {
    v31 = v21;
  }

  else
  {
    v31 = v30;
  }

  v32 = memcmp(p_s1, v29, v31);
  if (v32)
  {
    if (v32 < 0)
    {
      goto LABEL_59;
    }
  }

  else if (v21 < v30)
  {
LABEL_59:
    v22 = v16;
  }

  if (v19 < 0)
  {
    operator delete(__s1);
    if ((*(a1 + 144) + 8) != v22)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((*(a1 + 144) + 8) == v22)
    {
      goto LABEL_81;
    }

LABEL_64:
    v34 = *buf;
    v33 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    v35 = v22[7];
    if (v35)
    {
      v36 = _Block_copy(v35);
    }

    else
    {
      v36 = 0;
    }

    v37 = v22[8];
    __s1 = MEMORY[0x277D85DD0];
    v49 = 1174405120;
    v50 = ___ZNK8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN3abm6client5EventEEEEEclIJS6_EEEvDpT__block_invoke;
    v51 = &__block_descriptor_tmp_16;
    if (v36)
    {
      v52 = _Block_copy(v36);
      v53 = v34;
      v54 = v33;
      if (v33)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v52 = 0;
      v53 = v34;
      v54 = v33;
      if (v33)
      {
LABEL_71:
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    dispatch_async(v37, &__s1);
    v38 = v54;
    if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
      v39 = v52;
      if (v52)
      {
LABEL_75:
        _Block_release(v39);
      }
    }

    else
    {
      v39 = v52;
      if (v52)
      {
        goto LABEL_75;
      }
    }

    if (v36)
    {
      _Block_release(v36);
    }

    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }
  }

LABEL_81:
  v40 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  std::__shared_weak_count::__release_weak(v8);
  v41 = *MEMORY[0x277D85DE8];
}

void sub_240140370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abm::client::Transport::State::~State(abm::client::Transport::State *this)
{
  abm::client::Transport::State::~State(this);

  operator delete(v1);
}

{
  *this = &unk_285219798;
  v2 = *(this + 19);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    _Block_release(v4);
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
    if ((*(this + 103) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((*(this + 103) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(this + 10));
LABEL_10:
  MEMORY[0x245CBA350](this + 72);

  ctu::XpcClient::~XpcClient(this);
}

void std::__shared_ptr_pointer<std::map<std::string,abm::client::EventCallbackFilter> *,std::shared_ptr<std::map<std::string,abm::client::EventCallbackFilter>>::__shared_ptr_default_delete<std::map<std::string,abm::client::EventCallbackFilter>,std::map<std::string,abm::client::EventCallbackFilter>>,std::allocator<std::map<std::string,abm::client::EventCallbackFilter>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<std::map<std::string,abm::client::EventCallbackFilter> *,std::shared_ptr<std::map<std::string,abm::client::EventCallbackFilter>>::__shared_ptr_default_delete<std::map<std::string,abm::client::EventCallbackFilter>,std::map<std::string,abm::client::EventCallbackFilter>>,std::allocator<std::map<std::string,abm::client::EventCallbackFilter>>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__tree<std::__value_type<std::string,abm::client::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,abm::client::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,abm::client::EventCallbackFilter>>>::destroy(v1[1]);

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<std::map<std::string,abm::client::EventCallbackFilter> *,std::shared_ptr<std::map<std::string,abm::client::EventCallbackFilter>>::__shared_ptr_default_delete<std::map<std::string,abm::client::EventCallbackFilter>,std::map<std::string,abm::client::EventCallbackFilter>>,std::allocator<std::map<std::string,abm::client::EventCallbackFilter>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000240147812)
  {
    if (((v2 & 0x8000000240147812 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000240147812))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000240147812 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__tree<std::__value_type<std::string,abm::client::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,abm::client::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,abm::client::EventCallbackFilter>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,abm::client::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,abm::client::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,abm::client::EventCallbackFilter>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,abm::client::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,abm::client::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,abm::client::EventCallbackFilter>>>::destroy(*(a1 + 1));
    xpc_release(*(a1 + 9));
    *(a1 + 9) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 7);
    if (v3)
    {
      _Block_release(v3);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v4 = a1;
    }

    else
    {
      v4 = a1;
    }

    operator delete(v4);
  }
}

void abm::client::EventCallbackFilter::~EventCallbackFilter(xpc_object_t *this)
{
  xpc_release(this[2]);
  this[2] = 0;
  v2 = this[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*this)
  {
    _Block_release(*this);
  }
}

char ***std::unique_ptr<std::map<std::string,abm::client::EventCallbackFilter>>::~unique_ptr[abi:ne200100](char ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::__tree<std::__value_type<std::string,abm::client::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,abm::client::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,abm::client::EventCallbackFilter>>>::destroy(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void *__copy_helper_block_e8_32c72_ZTSN8dispatch5blockIU13block_pointerFvN3abm6client15TransportStatusEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c72_ZTSN8dispatch5blockIU13block_pointerFvN3abm6client15TransportStatusEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3abm6client9Transport5State18handleMessage_syncEN3xpc4dictE_block_invoke(void *a1, xpc_object_t *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v18 = v6;
    if (v6)
    {
      if (!a1[5])
      {
        goto LABEL_28;
      }

      reply = xpc_dictionary_create_reply(*a2);
      v8 = MEMORY[0x277D86468];
      if (reply || (reply = xpc_null_create()) != 0)
      {
        if (MEMORY[0x245CBA9E0](reply) == v8)
        {
          xpc_retain(reply);
          v9 = reply;
        }

        else
        {
          v9 = xpc_null_create();
        }
      }

      else
      {
        v9 = xpc_null_create();
        reply = 0;
      }

      xpc_release(reply);
      if (MEMORY[0x245CBA9E0](v9) == v8)
      {
        if (v9)
        {
          xpc_retain(v9);
          v10 = v9;
        }

        else
        {
          v10 = xpc_null_create();
        }

        if (MEMORY[0x245CBA9E0](*(v5 + 40)) == MEMORY[0x277D86450])
        {
          xpc_connection_send_message(*(v5 + 40), v10);
        }

        xpc_release(v10);
        v11 = *(v5 + 72);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          xpc::object::to_string(__p, a2);
          v14 = v16 >= 0 ? __p : __p[0];
          *buf = 136315138;
          v20 = v14;
          _os_log_debug_impl(&dword_240122000, v11, OS_LOG_TYPE_DEBUG, "#D Sent reply for: %s", buf, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      xpc_release(v9);
      v6 = v18;
      if (v18)
      {
LABEL_28:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v12 = v6;
          (v6->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v12);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2401408EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  xpc_release(v13);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN3abm6client5EventEEEEEclIJS6_EEEvDpT__block_invoke(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = a1[6];
  v6 = v4;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v6);
  v5 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void *__copy_helper_block_e8_32c83_ZTSN8dispatch5blockIU13block_pointerFvNSt3__110shared_ptrIN3abm6client5EventEEEEEE40c45_ZTSNSt3__110shared_ptrIN3abm6client5EventEEE(void *a1, void *a2)
{
  result = a2[4];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[5];
  v5 = a2[6];
  a1[4] = result;
  a1[5] = v6;
  a1[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c83_ZTSN8dispatch5blockIU13block_pointerFvNSt3__110shared_ptrIN3abm6client5EventEEEEEE40c45_ZTSNSt3__110shared_ptrIN3abm6client5EventEEE(uint64_t a1)
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

  _Block_release(v2);
}

void abm::client::Transport::State::reconnect_sync(dispatch_queue_t *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (this + 10);
  if (*(this + 103) < 0)
  {
    mach_service = xpc_connection_create_mach_service(*v2, this[3], 2uLL);
    if (mach_service)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mach_service = xpc_connection_create_mach_service(v2, this[3], 2uLL);
    if (mach_service)
    {
LABEL_3:
      v4 = mach_service;
      object = mach_service;
LABEL_6:
      xpc_retain(v4);
      goto LABEL_7;
    }
  }

  v4 = xpc_null_create();
  object = v4;
  if (v4)
  {
    goto LABEL_6;
  }

  v4 = 0;
  object = xpc_null_create();
LABEL_7:
  ctu::XpcClient::setServer_sync();
  xpc_release(object);
  v5 = this[9];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = this + 13;
    if (*(this + 127) < 0)
    {
      v6 = *v6;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&dword_240122000, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] Connecting to server", buf, 0xCu);
  }

  pthread_mutex_lock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  v7 = off_280AFDA78;
  if (!off_280AFDA78)
  {
    v8 = operator new(0x50uLL);
    ConnectionObserver::ConnectionObserver(v8);
    memset(buf, 170, sizeof(buf));
    std::shared_ptr<ConnectionObserver>::shared_ptr[abi:ne200100]<ConnectionObserver,0>(buf, v8);
    v9 = *buf;
    memset(buf, 0, sizeof(buf));
    v10 = *(&off_280AFDA78 + 1);
    off_280AFDA78 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v7 = off_280AFDA78;
  }

  v12 = *(&off_280AFDA78 + 1);
  if (*(&off_280AFDA78 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280AFDA78 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 0x40000000;
  v16 = ___ZN18ConnectionObserver6resumeEv_block_invoke;
  v17 = &__block_descriptor_tmp_0;
  v18 = v7;
  os_unfair_lock_lock(v7 + 4);
  v16(buf);
  os_unfair_lock_unlock(v7 + 4);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  xpc_release(v4);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_240140EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  operator delete(v11);
  pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client9Transport5State7performENSt3__110shared_ptrINS0_7CommandEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4[0] = a1[5];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::Transport::State::perform_sync(v2, v4);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void abm::client::Transport::State::perform_sync(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return;
  }

  v3 = *(a1 + 16);
  if (!v3 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1174405120;
  v25[2] = ___ZN3abm6client9Transport5State12perform_syncENSt3__110shared_ptrINS0_7CommandEEE_block_invoke;
  v25[3] = &__block_descriptor_tmp_24;
  v25[4] = a1;
  v25[5] = v5;
  v26 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = a2[1];
  v27 = *a2;
  v28 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

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

  pthread_mutex_lock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  v14 = off_280AFDA78;
  if (!off_280AFDA78)
  {
    v15 = operator new(0x50uLL);
    ConnectionObserver::ConnectionObserver(v15);
    *&aBlock = 0xAAAAAAAAAAAAAAAALL;
    *(&aBlock + 1) = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<ConnectionObserver>::shared_ptr[abi:ne200100]<ConnectionObserver,0>(&aBlock, v15);
    v16 = aBlock;
    aBlock = 0uLL;
    v17 = *(&off_280AFDA78 + 1);
    off_280AFDA78 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *(&aBlock + 1);
    if (*(&aBlock + 1) && !atomic_fetch_add((*(&aBlock + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v14 = off_280AFDA78;
  }

  v19 = *(&off_280AFDA78 + 1);
  if (*(&off_280AFDA78 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280AFDA78 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1174405120;
  v30 = ___ZN3abm6client9Transport5State10gateServerIU13block_pointerFvvEEEvT__block_invoke;
  v31 = &unk_2852199B0;
  v33 = v11;
  v34 = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v32 = v25;
  v20 = _Block_copy(&aBlock);
  v21 = v20;
  v22 = *(v14 + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN18ConnectionObserver4gateEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_28;
  if (v20)
  {
    v36 = _Block_copy(v20);
    dispatch_async(v22, block);
    v23 = v36;
    if (!v36)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v36 = 0;
  dispatch_async(v22, block);
  v23 = v36;
  if (v36)
  {
LABEL_26:
    _Block_release(v23);
  }

LABEL_27:
  if (v21)
  {
    _Block_release(v21);
  }

  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  std::__shared_weak_count::__release_weak(v13);
  v24 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_240141490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  operator delete(v18);
  pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  std::__shared_weak_count::__release_weak(v17);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](v19 + 56);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_285219918;
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

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcClientEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcClientEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3abm6client9Transport5State12perform_syncENSt3__110shared_ptrINS0_7CommandEEE_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_46;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  v27 = v4;
  if (!v4)
  {
    goto LABEL_46;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_44;
  }

  memset(&v25, 170, sizeof(v25));
  abm::client::Command::State::name(**(a1 + 56));
  v5 = *(v3 + 72);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v25.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v15;
    _os_log_debug_impl(&dword_240122000, v5, OS_LOG_TYPE_DEBUG, "#D Performing %s", &buf, 0xCu);
    v6 = **(a1 + 56);
    if (!*v6)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v6 = **(a1 + 56);
    if (!*v6)
    {
      goto LABEL_23;
    }
  }

  if (*(v6 + 8))
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      xpc_retain(*(v6 + 16));
    }

    else
    {
      v7 = xpc_null_create();
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN3abm6client9Transport5State12perform_syncENSt3__110shared_ptrINS0_7CommandEEE_block_invoke_21;
    aBlock[3] = &__block_descriptor_tmp_23;
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    aBlock[4] = v3;
    aBlock[5] = v9;
    v21 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v25;
    }

    v10 = *(a1 + 64);
    v23 = *(a1 + 56);
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = _Block_copy(aBlock);
    if (MEMORY[0x245CBA9E0](*(v3 + 40)) == MEMORY[0x277D86450])
    {
      v12 = *(v3 + 40);
      v13 = *(v3 + 24);
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 1174405120;
      v29 = ___ZN3abm6client9Transport5State20send_with_reply_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFvNS3_6objectEEEE_block_invoke;
      v30 = &__block_descriptor_tmp_30;
      v14 = v11 ? _Block_copy(v11) : 0;
      v31 = v14;
      xpc_connection_send_message_with_reply(v12, v7, v13, &buf);
      if (v31)
      {
        _Block_release(v31);
      }
    }

    if (v11)
    {
      _Block_release(v11);
    }

    xpc_release(v7);
    v17 = v24;
    if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    goto LABEL_41;
  }

LABEL_23:
  v16 = *(v6 + 16);
  if (v16)
  {
    xpc_retain(*(v6 + 16));
  }

  else
  {
    v16 = xpc_null_create();
  }

  if (MEMORY[0x245CBA9E0](*(v3 + 40)) == MEMORY[0x277D86450])
  {
    xpc_connection_send_message(*(v3 + 40), v16);
  }

  xpc_release(v16);
LABEL_41:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v4 = v27;
  if (v27)
  {
LABEL_44:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_46:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_240141AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3abm6client9Transport5State12perform_syncENSt3__110shared_ptrINS0_7CommandEEE_block_invoke_21(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (!v3)
  {
    goto LABEL_53;
  }

  v5 = *(a1 + 32);
  v6 = std::__shared_weak_count::lock(v3);
  v33 = v6;
  if (!v6)
  {
    goto LABEL_53;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_51;
  }

  v7 = *a2;
  v8 = MEMORY[0x277D86468];
  if (*a2 && MEMORY[0x245CBA9E0](*a2) == v8)
  {
    xpc_retain(v7);
  }

  else
  {
    v7 = xpc_null_create();
    if (!v7)
    {
      v7 = xpc_null_create();
      v9 = 0;
      goto LABEL_10;
    }
  }

  xpc_retain(v7);
  v9 = v7;
LABEL_10:
  *v35 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = Mutable;
  if (Mutable)
  {
    *v35 = Mutable;
  }

  if (MEMORY[0x245CBA9E0](v7) != v8)
  {
    v12 = -534716416;
    if (!v11)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  value = xpc_dictionary_get_value(v7, kKeyCommandData);
  ctu::xpc_to_cf(&cf, value, v14);
  v15 = cf;
  if (cf)
  {
    v16 = CFGetTypeID(cf);
    if (v16 != CFDictionaryGetTypeID())
    {
      v15 = 0;
      *v35 = 0;
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    CFRetain(v15);
  }

  *v35 = v15;
  if (v11)
  {
LABEL_21:
    CFRelease(v11);
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  v17 = xpc_dictionary_get_value(v7, kKeyCommandResult);
  cf = v17;
  if (v17)
  {
    xpc_retain(v17);
  }

  else
  {
    cf = xpc_null_create();
  }

  v12 = xpc::dyn_cast_or_default();
  xpc_release(cf);
  v11 = v15;
  if (!v15)
  {
LABEL_31:
    v32 = 0;
    v19 = *v35;
    if (!*v35)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_28:
  v18 = CFGetTypeID(v11);
  if (v18 != CFDictionaryGetTypeID())
  {
    goto LABEL_31;
  }

  v32 = v11;
  CFRetain(v11);
  v19 = *v35;
  if (*v35)
  {
LABEL_32:
    CFRelease(v19);
  }

LABEL_33:
  xpc_release(v7);
  v20 = *(v5 + 72);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v21)
    {
      v22 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v22 = *v22;
      }

      *v35 = 136315394;
      *&v35[4] = v22;
      v36 = 1024;
      v37 = v12;
      v23 = "#D Failure: %s Error: 0x%x";
      v24 = v20;
      v25 = 18;
      goto LABEL_44;
    }
  }

  else if (v21)
  {
    v29 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v29 = *v29;
    }

    *v35 = 136315138;
    *&v35[4] = v29;
    v23 = "#D Successful: %s";
    v24 = v20;
    v25 = 12;
LABEL_44:
    _os_log_debug_impl(&dword_240122000, v24, OS_LOG_TYPE_DEBUG, v23, v35, v25);
    v26 = *(a1 + 80);
    v27 = v32;
    if (!v32)
    {
      goto LABEL_45;
    }

LABEL_40:
    CFRetain(v27);
    v28 = *v26;
    *v35 = v27;
    CFRetain(v27);
    goto LABEL_46;
  }

  v26 = *(a1 + 80);
  v27 = v32;
  if (v32)
  {
    goto LABEL_40;
  }

LABEL_45:
  v28 = *v26;
  *v35 = 0;
LABEL_46:
  abm::client::Command::State::notify(v28, v12, v35);
  if (*v35)
  {
    CFRelease(*v35);
  }

  if (v27)
  {
    CFRelease(v27);
    CFRelease(v27);
  }

  xpc_release(v9);
  v6 = v33;
  if (v33)
  {
LABEL_51:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v30 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v30);
    }
  }

LABEL_53:
  v31 = *MEMORY[0x277D85DE8];
}

void sub_240141F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, xpc_object_t object, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c47_ZTSNSt3__110shared_ptrIN3abm6client7CommandEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_240142090(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c47_ZTSNSt3__110shared_ptrIN3abm6client7CommandEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    operator delete(*(a1 + 56));
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }

    goto LABEL_5;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(a1 + 79) < 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = *(a1 + 48);
  if (!v3)
  {
    return;
  }

LABEL_5:

  std::__shared_weak_count::__release_weak(v3);
}

void *__copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE56c47_ZTSNSt3__110shared_ptrIN3abm6client7CommandEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE56c47_ZTSNSt3__110shared_ptrIN3abm6client7CommandEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

void ___ZN3abm6client9Transport5State10gateServerIU13block_pointerFvvEEEvT__block_invoke(uint64_t *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[5];
      if (v5)
      {
        ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped((v5 + 8), a1[4]);
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3abm6client9Transport5State20send_with_reply_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFvNS3_6objectEEEE_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 32);
  objecta = v3;
  v5 = xpc_null_create();
  (*(v4 + 16))(v4, &objecta);
  xpc_release(objecta);
  xpc_release(v5);
}

void sub_2401423AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c55_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c55_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3abm6client9Transport5State7checkInEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = kCommandCheckIn;
  v3 = strlen(kCommandCheckIn);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v10 = v6 | 0x8000000000000000;
    __dst[0] = v5;
  }

  else
  {
    HIBYTE(v10) = v3;
    v5 = __dst;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  memmove(v5, v2, v4);
LABEL_10:
  *(v4 + v5) = 0;
  object = xpc_null_create();
  abm::client::Transport::State::createInternal_sync(&v11, v1, __dst, 0, &object);
  abm::client::Transport::State::perform_sync(v1, &v11);
  v7 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(object);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_240142590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a16);
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void abm::client::Transport::State::createInternal_sync(void *a1, uint64_t a2, uint64_t a3, int a4, xpc_object_t *a5)
{
  v10 = MEMORY[0x245CBA9E0](*a5);
  v11 = MEMORY[0x277D86468];
  if (v10 != MEMORY[0x277D86468])
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    if (v12 || (v12 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x245CBA9E0](v12) == v11)
      {
        xpc_retain(v12);
        v13 = v12;
      }

      else
      {
        v13 = xpc_null_create();
      }
    }

    else
    {
      v13 = xpc_null_create();
      v12 = 0;
    }

    xpc_release(v12);
    v14 = xpc_null_create();
    v15 = *a5;
    *a5 = v13;
    xpc_release(v15);
    xpc_release(v14);
  }

  v16 = (a2 + 104);
  if (*(a2 + 127) < 0)
  {
    v16 = *v16;
  }

  v17 = xpc_string_create(v16);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a5, kKeyClientName, v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  *a1 = 0;
  a1[1] = 0;
  v19 = *(a2 + 16);
  if (!v19 || (v20 = *(a2 + 8), (v21 = std::__shared_weak_count::lock(v19)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v21;
  p_shared_weak_owners = &v21->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v22);
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3abm6client9Transport5State19createInternal_syncENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_15TransportStatusEN3xpc4dictE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_36;
  aBlock[4] = a2;
  aBlock[5] = v20;
  v35 = v22;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v36 = a4;
  v24 = _Block_copy(aBlock);
  v25 = *(a2 + 24);
  if (v25)
  {
    dispatch_retain(v25);
  }

  v37 = v24;
  v38 = v25;
  v26 = *a5;
  v32 = v26;
  if (v26)
  {
    xpc_retain(v26);
    if (v24)
    {
      goto LABEL_21;
    }

LABEL_41:
    v30 = 0;
    object = v25;
    if (!v25)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v32 = xpc_null_create();
  if (!v24)
  {
    goto LABEL_41;
  }

LABEL_21:
  v30 = _Block_copy(v24);
  object = v25;
  if (v25)
  {
LABEL_22:
    dispatch_retain(v25);
  }

LABEL_23:
  abm::client::Command::create(a3, &v32, &v30, &v33);
  v27 = v33;
  v33 = 0uLL;
  v28 = a1[1];
  *a1 = v27;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = *(&v33 + 1);
  if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v30)
  {
    _Block_release(v30);
  }

  xpc_release(v32);
  v32 = 0;
  if (v38)
  {
    dispatch_release(v38);
  }

  if (v37)
  {
    _Block_release(v37);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  std::__shared_weak_count::__release_weak(v22);
}

void sub_240142968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(&a10);
  xpc_release(object);
  object = 0;
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v23 - 80);
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  std::__shared_weak_count::__release_weak(v22);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](v21);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client9Transport5State19createInternal_syncENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_15TransportStatusEN3xpc4dictE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = v4;
  if (*(a1 + 40))
  {
    v6 = v3[16];
    if (v6)
    {
      if (v3[17])
      {
        v7 = v3[9];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          abm::client::Transport::State::toString(__p, *(a1 + 56));
          if (SHIBYTE(v15) >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          *buf = 136315138;
          v20 = v13;
          _os_log_debug_impl(&dword_240122000, v7, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
          if (SHIBYTE(v15) < 0)
          {
            operator delete(__p[0]);
          }

          v6 = v3[16];
          v8 = *(a1 + 56);
          if (!v6)
          {
            v9 = 0;
            goto LABEL_9;
          }
        }

        else
        {
          v8 = *(a1 + 56);
        }

        v9 = _Block_copy(v6);
LABEL_9:
        v10 = v3[17];
        __p[0] = MEMORY[0x277D85DD0];
        __p[1] = 1174405120;
        v15 = ___ZNK8dispatch8callbackIU13block_pointerFvN3abm6client15TransportStatusEEEclIJS3_EEEvDpT__block_invoke;
        v16 = &__block_descriptor_tmp_9;
        if (v9)
        {
          v11 = _Block_copy(v9);
        }

        else
        {
          v11 = 0;
        }

        aBlock = v11;
        v18 = v8;
        dispatch_async(v10, __p);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v9)
        {
          _Block_release(v9);
        }
      }
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_240142BDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t abm::client::Transport::State::toString(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      *(result + 23) = 9;
      *(result + 8) = 110;
      *result = *"CheckedIn";
      result += 9;
      *result = 0;
      return result;
    }

    if (a2 == 1)
    {
      *(result + 23) = 10;
      *(result + 8) = 29813;
      *result = *"CheckedOut";
      result += 10;
      *result = 0;
      return result;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        *(result + 23) = 8;
        *result = 0x6E4F73746E657645;
        result += 8;
        *result = 0;
        return result;
      case 3:
        *(result + 23) = 9;
        *(result + 8) = 102;
        *result = *"EventsOff";
        result += 9;
        *result = 0;
        return result;
      case 4:
        *(result + 23) = 5;
        *result = 1869771333;
        *(result + 4) = 114;
        *(result + 5) = 0;
        result += 5;
        return result;
    }
  }

  *(result + 23) = 0;
  *result = 0;
  return result;
}

void ___ZN3abm6client9Transport5State8checkOutEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = kCommandCheckOut;
  v3 = strlen(kCommandCheckOut);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v10 = v6 | 0x8000000000000000;
    __dst[0] = v5;
  }

  else
  {
    HIBYTE(v10) = v3;
    v5 = __dst;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  memmove(v5, v2, v4);
LABEL_10:
  *(v4 + v5) = 0;
  object = xpc_null_create();
  abm::client::Transport::State::createInternal_sync(&v11, v1, __dst, 1, &object);
  abm::client::Transport::State::perform_sync(v1, &v11);
  v7 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(object);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_240142E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a16);
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN3abm6client9Transport5State15setEventHandlerENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvNS3_10shared_ptrINS0_5EventEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(a1 + 40), *(a1 + 48));
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
    *&v16.__r_.__value_.__l.__data_ = *(a1 + 40);
    v4 = *(a1 + 56);
    v3 = *(a1 + 64);
    v16.__r_.__value_.__r.__words[2] = *(a1 + 56);
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
  size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (v6)
    {
      v9 = _Block_copy(v5);
      v17 = v9;
      v18 = v6;
      dispatch_retain(v6);
      v10 = xpc_null_create();
      v19 = v10;
      v11 = std::__tree<std::__value_type<std::string,abm::client::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,abm::client::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,abm::client::EventCallbackFilter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*(v2 + 144), &v16.__r_.__value_.__l.__data_, &v16);
      v12 = v11[7];
      v11[7] = v9;
      if (v12)
      {
        _Block_release(v12);
      }

      v13 = v11[8];
      v11[8] = v6;
      if (v13)
      {
        dispatch_release(v13);
      }

      v14 = xpc_null_create();
      v15 = v11[9];
      v11[9] = v10;
      xpc_release(v15);
      xpc_release(v14);
LABEL_21:
      dispatch_release(v6);
      if (!v5)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (v6)
  {
    goto LABEL_21;
  }

  if (v5)
  {
LABEL_22:
    _Block_release(v5);
  }

LABEL_23:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_240143014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17)
{
  abm::client::EventCallbackFilter::~EventCallbackFilter(&a17);
  dispatch::callback<void({block_pointer})(std::shared_ptr<abm::client::Event>)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,abm::client::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,abm::client::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,abm::client::EventCallbackFilter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    while (1)
    {
      v10 = v5;
      v13 = v5[4];
      v11 = v5 + 4;
      v12 = v13;
      v14 = *(v11 + 23);
      if (v14 >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = v12;
      }

      if (v14 >= 0)
      {
        v16 = *(v11 + 23);
      }

      else
      {
        v16 = v11[1];
      }

      if (v16 >= v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      v18 = memcmp(v8, v15, v17);
      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_8;
        }

LABEL_22:
        v19 = memcmp(v15, v8, v17);
        if (v19)
        {
          if ((v19 & 0x80000000) == 0)
          {
            return v10;
          }
        }

        else if (v16 >= v9)
        {
          return v10;
        }

        v5 = v10[1];
        if (!v5)
        {
          v6 = v10 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        if (v9 >= v16)
        {
          goto LABEL_22;
        }

LABEL_8:
        v5 = *v10;
        v6 = v10;
        if (!*v10)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v10 = a1 + 1;
LABEL_29:
  v20 = operator new(0x50uLL);
  v21 = v20;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v20 + 32), *a3, *(a3 + 8));
  }

  else
  {
    *(v20 + 2) = *a3;
    *(v20 + 6) = *(a3 + 16);
  }

  v21[7] = 0;
  v21[8] = 0;
  v21[9] = 0;
  v21[9] = xpc_null_create();
  *v21 = 0;
  v21[1] = 0;
  v21[2] = v10;
  *v6 = v21;
  v22 = **a1;
  if (v22)
  {
    *a1 = v22;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v21);
  a1[2] = (a1[2] + 1);
  return v21;
}

void sub_2401431D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,abm::client::EventCallbackFilter>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,abm::client::EventCallbackFilter>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,abm::client::EventCallbackFilter>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,abm::client::EventCallbackFilter>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      xpc_release(*(v2 + 72));
      *(v2 + 72) = 0;
      v3 = *(v2 + 64);
      if (v3)
      {
        dispatch_release(v3);
      }

      v4 = *(v2 + 56);
      if (v4)
      {
        _Block_release(v4);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZN3abm6client9Transport5State15setEventHandlerENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS3_10shared_ptrINS0_5EventEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 40), *(a1 + 48));
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

      goto LABEL_18;
    }
  }

  else
  {
    *&v15.__r_.__value_.__l.__data_ = *(a1 + 40);
    v3 = *(a1 + 64);
    v15.__r_.__value_.__r.__words[2] = *(a1 + 56);
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
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  v5 = 0;
  v6 = *(a1 + 80);
  if (v6)
  {
LABEL_5:
    dispatch_retain(v6);
  }

LABEL_6:
  size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if (size && v5)
  {
    if (v6)
    {
      v8 = _Block_copy(v5);
      v16 = v8;
      v17 = v6;
      dispatch_retain(v6);
      v18 = v3;
      if (v3)
      {
        xpc_retain(v3);
        v9 = v3;
      }

      else
      {
        v9 = xpc_null_create();
        v18 = v9;
      }

      v10 = std::__tree<std::__value_type<std::string,abm::client::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,abm::client::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,abm::client::EventCallbackFilter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*(v2 + 144), &v15.__r_.__value_.__l.__data_, &v15);
      v11 = v10[7];
      v10[7] = v8;
      if (v11)
      {
        _Block_release(v11);
      }

      v12 = v10[8];
      v10[8] = v6;
      if (v12)
      {
        dispatch_release(v12);
      }

      v13 = xpc_null_create();
      v14 = v10[9];
      v10[9] = v9;
      xpc_release(v14);
      xpc_release(v13);
LABEL_26:
      dispatch_release(v6);
      if (!v5)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (v6)
  {
    goto LABEL_26;
  }

  if (v5)
  {
LABEL_27:
    _Block_release(v5);
  }

LABEL_28:
  xpc_release(v3);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_240143438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17)
{
  abm::client::EventCallbackFilter::~EventCallbackFilter(&a17);
  dispatch::callback<void({block_pointer})(std::shared_ptr<abm::client::Event>)>::~callback(&a9);
  xpc_release(v17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN3abm6client9Transport5State8eventsOnEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = kCommandEventsOn;
  v3 = strlen(kCommandEventsOn);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v3 | 7) + 1;
    }

    v5 = operator new(v9);
    __dst[1] = v4;
    v14 = v9 | 0x8000000000000000;
    __dst[0] = v5;
LABEL_17:
    memmove(v5, v2, v4);
    *(v4 + v5) = 0;
    v6 = *(v1 + 152);
    v10 = *(v1 + 144);
    v11 = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  HIBYTE(v14) = v3;
  v5 = __dst;
  if (v3)
  {
    goto LABEL_17;
  }

  LOBYTE(__dst[0]) = 0;
  v6 = *(v1 + 152);
  v10 = *(v1 + 144);
  v11 = v6;
  if (v6)
  {
LABEL_5:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_6:
  abm::client::Transport::State::convert_sync(&object, v1, &v10);
  abm::client::Transport::State::createInternal_sync(&v15, v1, __dst, 2, &object);
  abm::client::Transport::State::perform_sync(v1, &v15);
  v7 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(object);
  object = 0;
  v8 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(__dst[0]);
    return;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_20;
  }
}

void sub_240143664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a18);
  xpc_release(object);
  object = 0;
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void abm::client::Transport::State::convert_sync(xpc_object_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *a1 = xpc_null_create();
  if (*(*a3 + 16))
  {
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
    v8 = xpc_null_create();
    v9 = *a1;
    *a1 = v7;
    xpc_release(v9);
    xpc_release(v8);
    v10 = xpc_array_create(0, 0);
    if (v10 || (v10 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x245CBA9E0](v10) == MEMORY[0x277D86440])
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
    v12 = *(a2 + 144);
    v13 = *v12;
    if (*v12 != v12 + 1)
    {
      do
      {
        memset(&v29, 170, sizeof(v29));
        if (*(v13 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, v13[4], v13[5]);
        }

        else
        {
          v29 = *(v13 + 4);
        }

        v14 = v13[9];
        if (v14)
        {
          xpc_retain(v13[9]);
        }

        else
        {
          v14 = xpc_null_create();
        }

        v15 = xpc_dictionary_create(0, 0, 0);
        if (v15 || (v15 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x245CBA9E0](v15) == MEMORY[0x277D86468])
          {
            xpc_retain(v15);
            v16 = v15;
          }

          else
          {
            v16 = xpc_null_create();
          }
        }

        else
        {
          v16 = xpc_null_create();
          v15 = 0;
        }

        xpc_release(v15);
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v29;
        }

        else
        {
          v17 = v29.__r_.__value_.__r.__words[0];
        }

        v18 = xpc_string_create(v17);
        if (!v18)
        {
          v18 = xpc_null_create();
        }

        xpc_dictionary_set_value(v16, kKeyEvent, v18);
        v19 = xpc_null_create();
        xpc_release(v18);
        xpc_release(v19);
        if (v14)
        {
          xpc_retain(v14);
          v20 = v14;
        }

        else
        {
          v20 = xpc_null_create();
        }

        xpc_dictionary_set_value(v16, kKeyEventFilter, v20);
        v21 = xpc_null_create();
        xpc_release(v20);
        xpc_release(v21);
        xpc_array_append_value(v11, v16);
        xpc_release(v16);
        xpc_release(v14);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
          v22 = v13[1];
          if (v22)
          {
            do
            {
LABEL_41:
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
            goto LABEL_16;
          }
        }

        else
        {
          v22 = v13[1];
          if (v22)
          {
            goto LABEL_41;
          }
        }

        do
        {
          v23 = v13[2];
          v24 = *v23 == v13;
          v13 = v23;
        }

        while (!v24);
LABEL_16:
        v13 = v23;
      }

      while (v23 != (*(a2 + 144) + 8));
    }

    if (v11)
    {
      xpc_retain(v11);
      v25 = v11;
      v26 = a1;
    }

    else
    {
      v27 = xpc_null_create();
      v26 = a1;
      v25 = v27;
    }

    xpc_dictionary_set_value(*v26, kKeyEventsList, v25);
    v28 = xpc_null_create();
    xpc_release(v25);
    xpc_release(v28);
    xpc_release(v11);
  }
}

void sub_240143A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(v16);
  xpc::dict::~dict(a10);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client9Transport5State9eventsOffEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = kCommandEventsOff;
  v3 = strlen(kCommandEventsOff);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v3 | 7) + 1;
    }

    v5 = operator new(v9);
    __dst[1] = v4;
    v14 = v9 | 0x8000000000000000;
    __dst[0] = v5;
LABEL_17:
    memmove(v5, v2, v4);
    *(v4 + v5) = 0;
    v6 = *(v1 + 152);
    v10 = *(v1 + 144);
    v11 = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  HIBYTE(v14) = v3;
  v5 = __dst;
  if (v3)
  {
    goto LABEL_17;
  }

  LOBYTE(__dst[0]) = 0;
  v6 = *(v1 + 152);
  v10 = *(v1 + 144);
  v11 = v6;
  if (v6)
  {
LABEL_5:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_6:
  abm::client::Transport::State::convert_sync(&object, v1, &v10);
  abm::client::Transport::State::createInternal_sync(&v15, v1, __dst, 3, &object);
  abm::client::Transport::State::perform_sync(v1, &v15);
  v7 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(object);
  object = 0;
  v8 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(__dst[0]);
    return;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_20;
  }
}

void sub_240143D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a18);
  xpc_release(object);
  object = 0;
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<abm::client::Transport *,std::shared_ptr<abm::client::Transport>::__shared_ptr_default_delete<abm::client::Transport,abm::client::Transport>,std::allocator<abm::client::Transport>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abm::client::Transport *,std::shared_ptr<abm::client::Transport>::__shared_ptr_default_delete<abm::client::Transport,abm::client::Transport>,std::allocator<abm::client::Transport>>::__on_zero_shared(uint64_t a1)
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

uint64_t std::__shared_ptr_pointer<abm::client::Transport *,std::shared_ptr<abm::client::Transport>::__shared_ptr_default_delete<abm::client::Transport,abm::client::Transport>,std::allocator<abm::client::Transport>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000240147961)
  {
    if (((v2 & 0x8000000240147961 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000240147961))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000240147961 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

double abm::Overrides::Overrides(abm::Overrides *this)
{
  *(this + 48) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  *(this + 48) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void abm::InitServer(abm *this, const char *a2, const abm::Overrides *a3)
{
  if (qword_280AFDB98 == -1)
  {
    v3 = qword_280AFDB90;
    if (qword_280AFDB90)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = this;
    v5 = a2;
    dispatch_once(&qword_280AFDB98, &__block_literal_global_0);
    this = v4;
    a2 = v5;
    v3 = qword_280AFDB90;
    if (qword_280AFDB90)
    {
LABEL_3:
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN3abm10InitServerEPKcRKNS_9OverridesE_block_invoke;
      block[3] = &__block_descriptor_tmp_1;
      block[4] = v3;
      block[5] = this;
      block[6] = a2;
      if (_MergedGlobals_1 != -1)
      {
        dispatch_once(&_MergedGlobals_1, block);
      }

      return;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_240122000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed on loading BasebandManager library for initializing server", v6, 2u);
  }
}

void ___ZN3abm10InitServerEPKcRKNS_9OverridesE_block_invoke(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280AFDB40, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v5 = __cxa_guard_acquire(&qword_280AFDB40);
    a1 = v4;
    if (v5)
    {
      off_280AFDB38 = dlsym(*(v4 + 32), "AppleBasebandManagerInitServer");
      __cxa_guard_release(&qword_280AFDB40);
      a1 = v4;
    }
  }

  v1 = off_280AFDB38;
  if (off_280AFDB38)
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 40);

    v1(v3, v2);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_240122000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed on loading AppleBasebandManagerInitServer", v6, 2u);
  }
}

uint64_t abm::StartServer(abm *this, dispatch_group_s *a2)
{
  if (qword_280AFDB98 != -1)
  {
    dispatch_once(&qword_280AFDB98, &__block_literal_global_0);
    v3 = qword_280AFDB90;
    if (qword_280AFDB90)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "Failed on loading BasebandManager library for starting service";
    v8 = buf;
    goto LABEL_14;
  }

  v3 = qword_280AFDB90;
  if (!qword_280AFDB90)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((atomic_load_explicit(&qword_280AFDB50, memory_order_acquire) & 1) == 0)
  {
    __handle = v3;
    if (__cxa_guard_acquire(&qword_280AFDB50))
    {
      off_280AFDB48 = dlsym(__handle, "AppleBasebandManagerStartServer");
      __cxa_guard_release(&qword_280AFDB50);
    }
  }

  v4 = off_280AFDB48;
  if (!off_280AFDB48)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v11 = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "Failed on loading AppleBasebandManagerStartServer";
    v8 = &v11;
LABEL_14:
    _os_log_error_impl(&dword_240122000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    return 0;
  }

  return v4(this);
}

uint64_t abm::StopServer(abm *this, dispatch_group_s *a2)
{
  if (qword_280AFDB98 != -1)
  {
    dispatch_once(&qword_280AFDB98, &__block_literal_global_0);
    v3 = qword_280AFDB90;
    if (qword_280AFDB90)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = qword_280AFDB90;
  if (!qword_280AFDB90)
  {
    return 0;
  }

LABEL_3:
  if ((atomic_load_explicit(&qword_280AFDB60, memory_order_acquire) & 1) == 0)
  {
    __handle = v3;
    if (__cxa_guard_acquire(&qword_280AFDB60))
    {
      off_280AFDB58 = dlsym(__handle, "AppleBasebandManagerStopServer");
      __cxa_guard_release(&qword_280AFDB60);
    }
  }

  v4 = off_280AFDB58;
  if (!off_280AFDB58)
  {
    return 0;
  }

  return v4(this);
}

uint64_t abm::ShutdownServer(abm *this, dispatch_group_s *a2)
{
  if (qword_280AFDB98 != -1)
  {
    dispatch_once(&qword_280AFDB98, &__block_literal_global_0);
    v3 = qword_280AFDB90;
    if (qword_280AFDB90)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = qword_280AFDB90;
  if (!qword_280AFDB90)
  {
    return 0;
  }

LABEL_3:
  if ((atomic_load_explicit(&qword_280AFDB70, memory_order_acquire) & 1) == 0)
  {
    __handle = v3;
    if (__cxa_guard_acquire(&qword_280AFDB70))
    {
      off_280AFDB68 = dlsym(__handle, "AppleBasebandManagerShutdownServer");
      __cxa_guard_release(&qword_280AFDB70);
    }
  }

  v4 = off_280AFDB68;
  if (!off_280AFDB68)
  {
    return 0;
  }

  return v4(this);
}

uint64_t abm::GetProfile(abm *this)
{
  if (qword_280AFDB98 == -1)
  {
    v1 = qword_280AFDB90;
    if (!qword_280AFDB90)
    {
      return abm::GetProfile(void)::sProfile;
    }
  }

  else
  {
    dispatch_once(&qword_280AFDB98, &__block_literal_global_0);
    v1 = qword_280AFDB90;
    if (!qword_280AFDB90)
    {
      return abm::GetProfile(void)::sProfile;
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN3abm10GetProfileEv_block_invoke;
  block[3] = &__block_descriptor_tmp_11;
  block[4] = v1;
  if (qword_280AFDB78 == -1)
  {
    return abm::GetProfile(void)::sProfile;
  }

  dispatch_once(&qword_280AFDB78, block);
  return abm::GetProfile(void)::sProfile;
}

void ___ZN3abm10GetProfileEv_block_invoke(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280AFDB88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AFDB88))
  {
    off_280AFDB80 = dlsym(*(a1 + 32), "AppleBasebandManagerGetProfile");
    __cxa_guard_release(&qword_280AFDB88);
  }

  if (off_280AFDB80)
  {
    abm::GetProfile(void)::sProfile = off_280AFDB80();
  }
}

void *___ZN3abmL11loadLibraryEv_block_invoke(capabilities::radio *a1)
{
  result = capabilities::radio::vendor(a1);
  if ((result - 1) <= 3)
  {
    result = dlopen(off_278C9A388[result - 1], 1);
    qword_280AFDB90 = result;
  }

  return result;
}

void abm::client::CreateManager(dispatch_object_t object@<X1>, uint64_t a2@<X0>, std::__shared_weak_count_vtbl ***a3@<X8>)
{
  objecta = object;
  if (object)
  {
    v3 = a2;
    v4 = a3;
    dispatch_retain(object);
    a3 = v4;
    a2 = v3;
  }

  abm::client::Manager::create(a2, &objecta, a3);
  if (objecta)
  {
    dispatch_release(objecta);
  }
}

void sub_2401447E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void abm::client::RegisterEventHandler(uint64_t *a1, int a2, void *a3)
{
  v3 = *a1;
  if (*a1)
  {
    v6 = xpc_null_create();
    v7 = v6;
    abm::client::Manager::setEventHandler(v3, a2, &v7, a3);
    xpc_release(v6);
  }
}

void abm::client::RegisterEventHandler(uint64_t *a1, void *a2, abm::client *this, void *a4)
{
  v6 = a2;
  if (abm::client::EventFilterIsWellFormed(this, a2))
  {
    v8 = *a1;
    if (*a1)
    {
      if (this)
      {
        xpc_retain(this);
        if (MEMORY[0x245CBA9E0](this) == MEMORY[0x277D86468])
        {
          xpc_retain(this);
          v9 = this;
        }

        else
        {
          v9 = xpc_null_create();
        }

        xpc_release(this);
        v11 = *a1;
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        abm::client::Manager::setEventHandler(v11, v6, &object, a4);
        xpc_release(object);
        object = 0;
        xpc_release(v9);
      }

      else
      {
        v10 = xpc_null_create();
        v13 = v10;
        abm::client::Manager::setEventHandler(v8, v6, &v13, a4);
        xpc_release(v10);
      }
    }
  }
}

uint64_t abm::client::EventFilterIsWellFormed(abm::client *this, void *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v2 = 1;
  v12 = 1;
  if (this)
  {
    v4 = MEMORY[0x245CBA9E0](this, a2);
    v5 = MEMORY[0x277D86468];
    if (v4 == MEMORY[0x277D86468])
    {
      xpc_retain(this);
      if (MEMORY[0x245CBA9E0](this) == v5)
      {
        xpc_retain(this);
        v6 = this;
      }

      else
      {
        v6 = xpc_null_create();
      }

      xpc_release(this);
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 0x40000000;
      applier[2] = ___ZN3abm6client23EventFilterIsWellFormedEPv_block_invoke;
      applier[3] = &unk_278C9A810;
      applier[4] = &v9;
      xpc_dictionary_apply(v6, applier);
      v2 = *(v10 + 24);
      xpc_release(v6);
    }

    else
    {
      v2 = 0;
      *(v10 + 24) = 0;
    }
  }

  _Block_object_dispose(&v9, 8);
  return v2 & 1;
}

void sub_240144B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  xpc_release(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

xpc_object_t abm::client::CreateOrUpdateEventFilter(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = xpc_null_create();
  v7 = xpc_null_create();
  v8 = xpc_null_create();
  v9 = v8;
  if (*a2 == a2[1])
  {
    v13 = v7;
    v14 = v8;
    v12 = v6;
LABEL_24:
    v7 = a3;
    goto LABEL_25;
  }

  v10 = xpc_array_create(0, 0);
  v11 = MEMORY[0x277D86440];
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v10) == v11)
    {
      xpc_retain(v10);
      v12 = v10;
    }

    else
    {
      v12 = xpc_null_create();
    }
  }

  else
  {
    v12 = xpc_null_create();
    v10 = 0;
  }

  xpc_release(v10);
  v15 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v15);
  if (MEMORY[0x245CBA9E0](v12) != v11)
  {
    goto LABEL_23;
  }

  v16 = MEMORY[0x277D86468];
  if (a3)
  {
    if (MEMORY[0x245CBA9E0](a3) == v16)
    {
      xpc_retain(a3);
      v17 = a3;
    }

    else
    {
      v17 = xpc_null_create();
    }

    v20 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v20);
    xpc_release(a3);
    v7 = v17;
  }

  else
  {
    v18 = xpc_dictionary_create(0, 0, 0);
    if (v18 || (v18 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x245CBA9E0](v18) == v16)
      {
        xpc_retain(v18);
        v19 = v18;
      }

      else
      {
        v19 = xpc_null_create();
      }
    }

    else
    {
      v19 = xpc_null_create();
      v18 = 0;
    }

    xpc_release(v18);
    v21 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v21);
    v7 = v19;
  }

  if (MEMORY[0x245CBA9E0](v7) != v16)
  {
LABEL_23:
    v13 = v7;
    v14 = v9;
    goto LABEL_24;
  }

  v23 = xpc_dictionary_create(0, 0, 0);
  if (v23 || (v23 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v23) == v16)
    {
      xpc_retain(v23);
      v14 = v23;
    }

    else
    {
      v14 = xpc_null_create();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v23 = 0;
  }

  xpc_release(v23);
  v24 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v24);
  if (MEMORY[0x245CBA9E0](v14) != v16)
  {
    v13 = v7;
    goto LABEL_24;
  }

  v26 = *a2;
  for (i = a2[1]; v26 != i; v26 += 24)
  {
    v27 = v26;
    if (*(v26 + 23) < 0)
    {
      v27 = *v26;
    }

    v28 = xpc_string_create(v27);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    xpc_array_append_value(v12, v28);
    xpc_release(v28);
  }

  if (v12)
  {
    xpc_retain(v12);
    v29 = v12;
  }

  else
  {
    v29 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, kKeyEventFilterAllowList, v29);
  v30 = xpc_null_create();
  xpc_release(v29);
  xpc_release(v30);
  if (v14)
  {
    xpc_retain(v14);
    v31 = v14;
  }

  else
  {
    v31 = xpc_null_create();
  }

  if (*(a1 + 23) >= 0)
  {
    v32 = a1;
  }

  else
  {
    v32 = *a1;
  }

  xpc_dictionary_set_value(v7, v32, v31);
  v33 = xpc_null_create();
  xpc_release(v31);
  xpc_release(v33);
  v13 = xpc_null_create();
LABEL_25:
  xpc_release(v14);
  xpc_release(v13);
  xpc_release(v12);
  return v7;
}

void sub_240144F98(_Unwind_Exception *a1)
{
  xpc_release(v3);
  xpc_release(v4);
  xpc_release(v1);
  xpc_release(v2);
  _Unwind_Resume(a1);
}

xpc_object_t abm::client::CreateOrUpdateEventFilter(uint64_t a1, int64_t **a2, void *a3)
{
  v6 = xpc_null_create();
  v7 = xpc_null_create();
  v8 = xpc_null_create();
  v9 = v8;
  if (*a2 == a2[1])
  {
    v13 = v7;
    v14 = v8;
    v12 = v6;
LABEL_24:
    v7 = a3;
    goto LABEL_25;
  }

  v10 = xpc_array_create(0, 0);
  v11 = MEMORY[0x277D86440];
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v10) == v11)
    {
      xpc_retain(v10);
      v12 = v10;
    }

    else
    {
      v12 = xpc_null_create();
    }
  }

  else
  {
    v12 = xpc_null_create();
    v10 = 0;
  }

  xpc_release(v10);
  v15 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v15);
  if (MEMORY[0x245CBA9E0](v12) != v11)
  {
    goto LABEL_23;
  }

  v16 = MEMORY[0x277D86468];
  if (a3)
  {
    if (MEMORY[0x245CBA9E0](a3) == v16)
    {
      xpc_retain(a3);
      v17 = a3;
    }

    else
    {
      v17 = xpc_null_create();
    }

    v20 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v20);
    xpc_release(a3);
    v7 = v17;
  }

  else
  {
    v18 = xpc_dictionary_create(0, 0, 0);
    if (v18 || (v18 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x245CBA9E0](v18) == v16)
      {
        xpc_retain(v18);
        v19 = v18;
      }

      else
      {
        v19 = xpc_null_create();
      }
    }

    else
    {
      v19 = xpc_null_create();
      v18 = 0;
    }

    xpc_release(v18);
    v21 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v21);
    v7 = v19;
  }

  if (MEMORY[0x245CBA9E0](v7) != v16)
  {
LABEL_23:
    v13 = v7;
    v14 = v9;
    goto LABEL_24;
  }

  v23 = xpc_dictionary_create(0, 0, 0);
  if (v23 || (v23 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v23) == v16)
    {
      xpc_retain(v23);
      v14 = v23;
    }

    else
    {
      v14 = xpc_null_create();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v23 = 0;
  }

  xpc_release(v23);
  v24 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v24);
  if (MEMORY[0x245CBA9E0](v14) != v16)
  {
    v13 = v7;
    goto LABEL_24;
  }

  v26 = *a2;
  for (i = a2[1]; v26 != i; ++v26)
  {
    v27 = xpc_int64_create(*v26);
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    xpc_array_append_value(v12, v27);
    xpc_release(v27);
  }

  if (v12)
  {
    xpc_retain(v12);
    v28 = v12;
  }

  else
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, kKeyEventFilterAllowList, v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
  if (v14)
  {
    xpc_retain(v14);
    v30 = v14;
  }

  else
  {
    v30 = xpc_null_create();
  }

  if (*(a1 + 23) >= 0)
  {
    v31 = a1;
  }

  else
  {
    v31 = *a1;
  }

  xpc_dictionary_set_value(v7, v31, v30);
  v32 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v32);
  v13 = xpc_null_create();
LABEL_25:
  xpc_release(v14);
  xpc_release(v13);
  xpc_release(v12);
  return v7;
}

void sub_240145438(_Unwind_Exception *a1)
{
  xpc_release(v3);
  xpc_release(v4);
  xpc_release(v1);
  xpc_release(v2);
  _Unwind_Resume(a1);
}

BOOL ___ZN3abm6client23EventFilterIsWellFormedEPv_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3 || (v5 = MEMORY[0x245CBA9E0](a3), v6 = MEMORY[0x277D86468], v5 != MEMORY[0x277D86468]))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return 0;
  }

  xpc_retain(a3);
  if (MEMORY[0x245CBA9E0](a3) == v6)
  {
    xpc_retain(a3);
    v8 = a3;
  }

  else
  {
    v8 = xpc_null_create();
  }

  xpc_release(a3);
  value = xpc_dictionary_get_value(v8, kKeyEventFilterAllowList);
  v10 = value;
  v11 = MEMORY[0x277D86440];
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v10 = xpc_null_create();
    if (!v10)
    {
      v12 = xpc_null_create();
      v10 = 0;
      goto LABEL_14;
    }
  }

  if (MEMORY[0x245CBA9E0](v10) == v11)
  {
    xpc_retain(v10);
    v12 = v10;
  }

  else
  {
    v12 = xpc_null_create();
  }

LABEL_14:
  xpc_release(v10);
  v13 = MEMORY[0x245CBA9E0](v12);
  v14 = v13 == v11;
  if (v13 != v11)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  xpc_release(v12);
  xpc_release(v8);
  return v14;
}

void sub_240145600(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

void abm::client::PerformCommand(uint64_t ***a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v8 = xpc_null_create();
    v9 = v8;
    if (a2)
    {
      xpc_retain(a2);
      xpc_release(v9);
    }

    else
    {
      a2 = v8;
    }

    object = a2;
    v16 = xpc_null_create();
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *a4 = v11;
    *(a4 + 16) = v11;
    v12 = *a1;
    if (a2 && MEMORY[0x245CBA9E0](a2) == MEMORY[0x277D86468])
    {
      xpc_retain(a2);
    }

    else
    {
      object = xpc_null_create();
    }

    abm::client::Manager::perform(v12, &object, &v16, a4);
    xpc_release(object);
    object = 0;
    if (!a3 || *a4)
    {
      v13 = v16;
    }

    else
    {
      v13 = xpc_null_create();
      v14 = v16;
      v16 = v13;
      *a3 = v14;
    }

    xpc_release(v13);
    xpc_release(a2);
  }

  else
  {
    v10 = operator new(0x20uLL);
    strcpy(v10, "Invalid manager object passed");
    *a4 = -534716414;
    *(a4 + 8) = v10;
    *(a4 + 16) = xmmword_240146B80;
  }
}

void sub_2401457B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  if (*(v11 + 31) < 0)
  {
    operator delete(*(v11 + 8));
  }

  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ***abm::client::EventsOn(void ***result)
{
  if (*result)
  {
    return MEMORY[0x2821D6680](***result);
  }

  return result;
}

void ***abm::client::EventsOff(void ***result)
{
  if (*result)
  {
    return MEMORY[0x2821D6688](***result);
  }

  return result;
}

uint64_t __cxx_global_var_init_4()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_240122000);
  }

  return result;
}

uint64_t TelephonyXPC::Client::setEventHandler()
{
  return MEMORY[0x2821D6658]();
}

{
  return MEMORY[0x2821D6660]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2821F6A58]();
}

{
  return MEMORY[0x2821F6A60]();
}

{
  return MEMORY[0x2821F6A70]();
}

{
  return MEMORY[0x2821F6A80]();
}

{
  return MEMORY[0x2821F6A88]();
}

{
  return MEMORY[0x2821F6A98]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}