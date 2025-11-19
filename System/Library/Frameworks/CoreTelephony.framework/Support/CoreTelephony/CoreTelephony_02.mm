void ___ZN18VinylCommandDriver17tapeCancelSessionEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 280))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750C8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::tapeSetNickname(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver15tapeSetNicknameEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C618;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver15tapeSetNicknameEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 288))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750CAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::tapeGetRulesAuthTable(void *a1, int a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN18VinylCommandDriver21tapeGetRulesAuthTableEN10subscriber7SimSlotEU13block_pointerFvN3ctu6resultINSt3__16vectorIhNS4_9allocatorIhEEEENS4_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v9[3] = &unk_278A33868;
  v10 = a2;
  v9[4] = a3;
  v9[5] = a1;
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void VinylCommandDriver::tapeGetDeviceCapabilities(void *a1, uint64_t a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN18VinylCommandDriver25tapeGetDeviceCapabilitiesEU13block_pointerFvN3ctu6resultI22TapeDeviceCapabilitiesNSt3__15tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v8[3] = &unk_278A33890;
  v8[4] = a2;
  v8[5] = a1;
  v3 = a1[2];
  if (!v3 || (v4 = a1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v4;
  v10 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v8;
  dispatch_async(v7, block);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

uint64_t VinylCommandDriver::setVirtualSimMode(void *a1, char a2, char a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1174405120;
  v14[2] = ___ZN18VinylCommandDriver17setVirtualSimModeEbbNSt3__18functionIFvN3ctu6resultIb10VinylErrorEEEEE_block_invoke;
  v14[3] = &__block_descriptor_tmp_82;
  v14[4] = a1;
  v15[32] = a2;
  v15[33] = a3;
  std::__function::__value_func<void ()(ctu::result<BOOL,VinylError>)>::__value_func[abi:ne200100](v15, a4);
  v5 = a1[2];
  if (!v5 || (v6 = a1[1], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = a1[3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1174405120;
  v12[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v12[3] = &unk_284A7C748;
  v12[5] = v6;
  v13 = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v12[4] = v14;
  dispatch_async(v9, v12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  result = std::__function::__value_func<void ()(ctu::result<BOOL,VinylError>)>::~__value_func[abi:ne200100](v15);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23750CEF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ___ZN18VinylCommandDriver17setVirtualSimModeEbbNSt3__18functionIFvN3ctu6resultIb10VinylErrorEEEEE_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 72);
  v3 = *(a1 + 73);
  std::__function::__value_func<void ()(ctu::result<BOOL,VinylError>)>::__value_func[abi:ne200100](v6, a1 + 40);
  (*(*v1 + 320))(v1, v2 & 1, v3 & 1, v6);
  result = std::__function::__value_func<void ()(ctu::result<BOOL,VinylError>)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23750CFB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(ctu::result<BOOL,VinylError>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void VinylCommandDriver::requestPairingNonce(uint64_t a1, int a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::__value_func[abi:ne200100](v8, a3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_23750D17C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void VinylCommandDriver::sendPairingSignature(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  memset(v8, 0, sizeof(v8));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8, *a3, a3[1], a3[1] - *a3);
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, *a4, a4[1], a4[1] - *a4);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_23750D324(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v15 = *v13;
  if (*v13)
  {
    *(v12 + 24) = v15;
    operator delete(v15);
  }

  __clang_call_terminate(a1);
}

void VinylCommandDriver::readFile(uint64_t a1, int a2, int a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v15 = a5;
  std::__function::__value_func<void ()(std::string,std::optional<VinylDriverError>)>::__value_func[abi:ne200100](v16, a6);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v9))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void VinylCommandDriver::eapAkaAuth(uint64_t a1, int a2, uint64_t a3, __int16 a4, uint64_t *a5, uint64_t a6)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v15 = a4;
  v16 = *a5;
  std::map<subscriber::AuthInfo,std::vector<unsigned char>>::map[abi:ne200100](&v17, (a5 + 1));
  std::__function::__value_func<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>::__value_func[abi:ne200100](v18, a6);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v10))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void VinylCommandDriver::verifyPin(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a3, *(a3 + 8));
  }

  else
  {
    v10 = *a3;
  }

  v11 = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v8))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_23750D984(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 39) < 0)
  {
    operator delete(*(v17 + 16));
  }

  __clang_call_terminate(a1);
}

void VinylCommandDriver::stop(VinylCommandDriver *this)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN18VinylCommandDriver4stopEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_83;
  v7[4] = this;
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v7;
  dispatch_async(v6, block);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

uint64_t ___ZN18VinylCommandDriver4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(*v1 + 376))(v1, 0);
  v2 = *(*v1 + 152);

  return v2(v1);
}

void VinylCommandDriver::bootstrap(void *a1, NSObject **a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN18VinylCommandDriver9bootstrapEN8dispatch13group_sessionE_block_invoke;
  v9[3] = &__block_descriptor_tmp_84;
  v3 = *a2;
  v9[4] = a1;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(group);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void VinylCommandDriver::start(VinylCommandDriver *this)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN18VinylCommandDriver5startEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_85;
  v7[4] = this;
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v7;
  dispatch_async(v6, block);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void VinylCommandDriver::dumpState(VinylCommandDriver *this)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK18VinylCommandDriver9dumpStateEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_86;
  v7[4] = this;
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v7;
  dispatch_async(v6, block);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void VinylCommandDriver::flush(VinylCommandDriver *this)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN18VinylCommandDriver5flushEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_87;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_138;
  block[4] = this + 8;
  block[5] = &v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void VinylCommandDriver::setDelegate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void VinylCommandDriver::setDriverReadyCallback(void *a1, uint64_t a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN18VinylCommandDriver22setDriverReadyCallbackEU13block_pointerFv16VinylDriverReadyN5boost8optionalIN10subscriber7SimSlotEEEE_block_invoke;
  v8[3] = &unk_278A33938;
  v8[4] = a2;
  v8[5] = a1;
  v3 = a1[2];
  if (!v3 || (v4 = a1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v4;
  v10 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v8;
  dispatch_async(v7, block);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void VinylCommandDriver::setDriverReadyCallback_sync(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 72);
  *(a1 + 72) = v3;
  if (v4)
  {
    _Block_release(v4);
  }
}

uint64_t VinylCommandDriver::sendReadyCallback_sync(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void VinylCommandDriver::signPairingNonce_sync(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a1[11];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[10];
      if (v9)
      {
        v10 = a1[5];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          ctu::hex_sp();
          if (v14 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315138;
          v16 = p_p;
          _os_log_impl(&dword_2374EE000, v10, OS_LOG_TYPE_DEFAULT, "#I Requesting pairing signing: (%s)", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p);
          }
        }

        (*(*v9 + 16))(v9, a2, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void VinylIndicationResponseData::VinylIndicationResponseData(VinylIndicationResponseData *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

void *VinylIndicationResponseData::VinylIndicationResponseData(void *a1, uint64_t *a2, void **a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *a2;
  *a2 = 0;
  a1[3] = v5;
  a1[4] = v6;
  return a1;
}

void std::vector<std::array<unsigned char,16ul>>::__init_with_size[abi:ne200100]<std::array<unsigned char,16ul>*,std::array<unsigned char,16ul>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23750E600(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIK18VinylCommandDriverEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIK18VinylCommandDriverEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<VinylCommandDriver>::execute_wrapped<VinylCommandDriver::getVinylSlotTestMode(std::function<void ()(BOOL)>)::$_0>(VinylCommandDriver::getVinylSlotTestMode(std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<VinylCommandDriver::getVinylSlotTestMode(std::function<void ()(BOOL)>)::$_0,std::default_delete<VinylCommandDriver::getVinylSlotTestMode(std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v7, (v1 + 1));
  (*(*v2 + 120))(v2, v7);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v7);
  std::unique_ptr<VinylCommandDriver::getVinylSlotTestMode(std::function<void ()(BOOL)>)::$_0,std::default_delete<VinylCommandDriver::getVinylSlotTestMode(std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&v6);
  result = std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23750E800(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va2);
  std::unique_ptr<VinylCommandDriver::getVinylSlotTestMode(std::function<void ()(BOOL)>)::$_0,std::default_delete<VinylCommandDriver::getVinylSlotTestMode(std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<VinylCommandDriver::getVinylSlotTestMode(std::function<void ()(BOOL)>)::$_0,std::default_delete<VinylCommandDriver::getVinylSlotTestMode(std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v2 + 8);
    MEMORY[0x2383CD480](v2, 0x1020C4060DBCA02);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<VinylCommandDriver>::execute_wrapped<VinylCommandDriver::enableVinylSlotTestMode(BOOL,std::function<void ()(BOOL)>)::$_0>(VinylCommandDriver::enableVinylSlotTestMode(BOOL,std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<VinylCommandDriver::enableVinylSlotTestMode(BOOL,std::function<void ()(BOOL)>)::$_0,std::default_delete<VinylCommandDriver::enableVinylSlotTestMode(BOOL,std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v8, v1 + 16);
  (*(*v2 + 128))(v2, v3, v8);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v8);
  std::unique_ptr<VinylCommandDriver::enableVinylSlotTestMode(BOOL,std::function<void ()(BOOL)>)::$_0,std::default_delete<VinylCommandDriver::enableVinylSlotTestMode(BOOL,std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&v7);
  result = std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23750E930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va2);
  std::unique_ptr<VinylCommandDriver::enableVinylSlotTestMode(BOOL,std::function<void ()(BOOL)>)::$_0,std::default_delete<VinylCommandDriver::enableVinylSlotTestMode(BOOL,std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<VinylCommandDriver::enableVinylSlotTestMode(BOOL,std::function<void ()(BOOL)>)::$_0,std::default_delete<VinylCommandDriver::enableVinylSlotTestMode(BOOL,std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v2 + 16);
    MEMORY[0x2383CD480](v2, 0x1020C4014E40075);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ctu::result<BOOL,VinylError>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(ctu::result<BOOL,VinylError>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *dispatch::async<void ctu::SharedSynchronizable<VinylCommandDriver>::execute_wrapped<VinylCommandDriver::requestPairingNonce(subscriber::SimSlot,std::function<void ()(std::vector<unsigned char> const&)>)::$_0>(VinylCommandDriver::requestPairingNonce(subscriber::SimSlot,std::function<void ()(std::vector<unsigned char> const&)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<VinylCommandDriver::requestPairingNonce(subscriber::SimSlot,std::function<void ()(std::vector<unsigned char> const&)>)::$_0,std::default_delete<VinylCommandDriver::requestPairingNonce(subscriber::SimSlot,std::function<void ()(std::vector<unsigned char> const&)>)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned int **a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2374EE000, v3, OS_LOG_TYPE_DEFAULT, "#I Requesting pairing nonce", buf, 2u);
  }

  v4 = v1[2];
  std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::__value_func[abi:ne200100](buf, (v1 + 4));
  (*(*v2 + 328))(v2, v4, buf);
  std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::~__value_func[abi:ne200100](buf);
  std::unique_ptr<VinylCommandDriver::requestPairingNonce(subscriber::SimSlot,std::function<void ()(std::vector<unsigned char> const&)>)::$_0,std::default_delete<VinylCommandDriver::requestPairingNonce(subscriber::SimSlot,std::function<void ()(std::vector<unsigned char> const&)>)::$_0>>::~unique_ptr[abi:ne200100](&v8);
  result = std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23750EC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::~__value_func[abi:ne200100](&a11);
  std::unique_ptr<VinylCommandDriver::requestPairingNonce(subscriber::SimSlot,std::function<void ()(std::vector<unsigned char> const&)>)::$_0,std::default_delete<VinylCommandDriver::requestPairingNonce(subscriber::SimSlot,std::function<void ()(std::vector<unsigned char> const&)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<VinylCommandDriver::requestPairingNonce(subscriber::SimSlot,std::function<void ()(std::vector<unsigned char> const&)>)::$_0,std::default_delete<VinylCommandDriver::requestPairingNonce(subscriber::SimSlot,std::function<void ()(std::vector<unsigned char> const&)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(std::vector<unsigned char> const&)>::~__value_func[abi:ne200100](v2 + 16);
    MEMORY[0x2383CD480](v2, 0x1020C40D64A9D5ALL);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<VinylCommandDriver>::execute_wrapped<VinylCommandDriver::sendPairingSignature(subscriber::SimSlot,std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(VinylCommandDriver::sendPairingSignature(subscriber::SimSlot,std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<VinylCommandDriver::sendPairingSignature(subscriber::SimSlot,std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0,std::default_delete<VinylCommandDriver::sendPairingSignature(subscriber::SimSlot,std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned int **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    ctu::hex_sp();
    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315138;
    v12 = p_p;
    _os_log_impl(&dword_2374EE000, v3, OS_LOG_TYPE_DEFAULT, "#I Sending pairing signature for (%s)", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  (*(*v2 + 336))(v2, v1[2], v1 + 4, v1 + 10);
  std::unique_ptr<VinylCommandDriver::sendPairingSignature(subscriber::SimSlot,std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0,std::default_delete<VinylCommandDriver::sendPairingSignature(subscriber::SimSlot,std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>>::~unique_ptr[abi:ne200100](&v8);
  result = std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23750EE00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::unique_ptr<VinylCommandDriver::sendPairingSignature(subscriber::SimSlot,std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0,std::default_delete<VinylCommandDriver::sendPairingSignature(subscriber::SimSlot,std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<VinylCommandDriver::sendPairingSignature(subscriber::SimSlot,std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0,std::default_delete<VinylCommandDriver::sendPairingSignature(subscriber::SimSlot,std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      v2[6] = v3;
      operator delete(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      v2[3] = v4;
      operator delete(v4);
    }

    MEMORY[0x2383CD480](v2, 0x1030C402C66B30ELL);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<VinylCommandDriver>::execute_wrapped<VinylCommandDriver::readFile(subscriber::SimSlot,subscriber::SimFilePath,std::string const&,std::optional<unsigned char>,std::function<void ()(std::string,std::optional<VinylDriverError>)>)::$_0>(VinylCommandDriver::readFile(subscriber::SimSlot,subscriber::SimFilePath,std::string const&,std::optional<unsigned char>,std::function<void ()(std::string,std::optional<VinylDriverError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<VinylCommandDriver::readFile(subscriber::SimSlot,subscriber::SimFilePath,std::string const&,std::optional<unsigned char>,std::function<void ()(std::string,std::optional<VinylDriverError>)>)::$_0,std::default_delete<VinylCommandDriver::readFile(subscriber::SimSlot,subscriber::SimFilePath,std::string const&,std::optional<unsigned char>,std::function<void ()(std::string,std::optional<VinylDriverError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 12);
    v5 = subscriber::asString();
    v6 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v6 = *v6;
    }

    if (*(v1 + 41) == 1)
    {
      std::to_string(&v15, *(v1 + 40));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v15, "<>");
    }

    v7 = &v15;
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v15.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v17 = v5;
    v18 = 2080;
    v19 = v6;
    v20 = 2080;
    v21 = v7;
    _os_log_impl(&dword_2374EE000, v3, OS_LOG_TYPE_DEFAULT, "#I Reading file:%s for:(%s) on:(%s)", buf, 0x20u);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  v8 = *(v1 + 8);
  v9 = *(v1 + 12);
  v10 = *(v1 + 40);
  std::__function::__value_func<void ()(std::string,std::optional<VinylDriverError>)>::__value_func[abi:ne200100](buf, v1 + 48);
  (*(*v2 + 344))(v2, v8, v9, v1 + 16, v10, buf);
  std::__function::__value_func<void ()(std::string,std::optional<VinylDriverError>)>::~__value_func[abi:ne200100](buf);
  std::unique_ptr<VinylCommandDriver::readFile(subscriber::SimSlot,subscriber::SimFilePath,std::string const&,std::optional<unsigned char>,std::function<void ()(std::string,std::optional<VinylDriverError>)>)::$_0,std::default_delete<VinylCommandDriver::readFile(subscriber::SimSlot,subscriber::SimFilePath,std::string const&,std::optional<unsigned char>,std::function<void ()(std::string,std::optional<VinylDriverError>)>)::$_0>>::~unique_ptr[abi:ne200100](&v14);
  result = std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v13);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23750F028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  std::__function::__value_func<void ()(std::string,std::optional<VinylDriverError>)>::~__value_func[abi:ne200100](va2);
  std::unique_ptr<VinylCommandDriver::readFile(subscriber::SimSlot,subscriber::SimFilePath,std::string const&,std::optional<unsigned char>,std::function<void ()(std::string,std::optional<VinylDriverError>)>)::$_0,std::default_delete<VinylCommandDriver::readFile(subscriber::SimSlot,subscriber::SimFilePath,std::string const&,std::optional<unsigned char>,std::function<void ()(std::string,std::optional<VinylDriverError>)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<VinylCommandDriver::readFile(subscriber::SimSlot,subscriber::SimFilePath,std::string const&,std::optional<unsigned char>,std::function<void ()(std::string,std::optional<VinylDriverError>)>)::$_0,std::default_delete<VinylCommandDriver::readFile(subscriber::SimSlot,subscriber::SimFilePath,std::string const&,std::optional<unsigned char>,std::function<void ()(std::string,std::optional<VinylDriverError>)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(std::string,std::optional<VinylDriverError>)>::~__value_func[abi:ne200100](v2 + 48);
    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    MEMORY[0x2383CD480](v2, 0x1032C408F56B6CCLL);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<VinylCommandDriver>::execute_wrapped<VinylCommandDriver::eapAkaAuth(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,subscriber::SubscriberAuthRequest const&,std::function<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>)::$_0>(VinylCommandDriver::eapAkaAuth(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,subscriber::SubscriberAuthRequest const&,std::function<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<VinylCommandDriver::eapAkaAuth(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,subscriber::SubscriberAuthRequest const&,std::function<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>)::$_0,std::default_delete<VinylCommandDriver::eapAkaAuth(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,subscriber::SubscriberAuthRequest const&,std::function<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v4 = *v4;
    }

    if (*(v1 + 41) == 1)
    {
      std::to_string(&v12, *(v1 + 40));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v12, "<>");
    }

    v5 = &v12;
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v12.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v14 = v4;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&dword_2374EE000, v3, OS_LOG_TYPE_DEFAULT, "#I Performing eapAka for:(%s) on:(%s)", buf, 0x16u);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  v6 = *(v1 + 8);
  v7 = *(v1 + 40);
  v12.__r_.__value_.__r.__words[0] = *(v1 + 48);
  std::map<subscriber::AuthInfo,std::vector<unsigned char>>::map[abi:ne200100](&v12.__r_.__value_.__l.__size_, v1 + 56);
  std::__function::__value_func<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>::__value_func[abi:ne200100](buf, v1 + 80);
  (*(*v2 + 352))(v2, v6, v1 + 16, v7, &v12, buf);
  std::__function::__value_func<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>::~__value_func[abi:ne200100](buf);
  std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::destroy(&v12.__r_.__value_.__l.__size_, v12.__r_.__value_.__r.__words[2]);
  std::unique_ptr<VinylCommandDriver::eapAkaAuth(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,subscriber::SubscriberAuthRequest const&,std::function<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>)::$_0,std::default_delete<VinylCommandDriver::eapAkaAuth(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,subscriber::SubscriberAuthRequest const&,std::function<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>)::$_0>>::~unique_ptr[abi:ne200100](&v11);
  result = std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23750F268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15)
{
  std::__function::__value_func<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>::~__value_func[abi:ne200100](&a15);
  std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::destroy(v15 + 8, a13);
  std::unique_ptr<VinylCommandDriver::eapAkaAuth(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,subscriber::SubscriberAuthRequest const&,std::function<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>)::$_0,std::default_delete<VinylCommandDriver::eapAkaAuth(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,subscriber::SubscriberAuthRequest const&,std::function<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<VinylCommandDriver::eapAkaAuth(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,subscriber::SubscriberAuthRequest const&,std::function<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>)::$_0,std::default_delete<VinylCommandDriver::eapAkaAuth(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,subscriber::SubscriberAuthRequest const&,std::function<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>::~__value_func[abi:ne200100](v2 + 80);
    std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::destroy(v2 + 56, *(v2 + 64));
    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    MEMORY[0x2383CD480](v2, 0x1032C40AFBDC77CLL);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<VinylCommandDriver>::execute_wrapped<VinylCommandDriver::verifyPin(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,std::string const&)::$_0>(VinylCommandDriver::verifyPin(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,std::string const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<VinylCommandDriver::verifyPin(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,std::string const&)::$_0,std::default_delete<VinylCommandDriver::verifyPin(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,std::string const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v4 = *v4;
    }

    if (*(v1 + 41) == 1)
    {
      std::to_string(&v10, *(v1 + 40));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v10, "<>");
    }

    v5 = &v10;
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v12 = v4;
    v13 = 2080;
    v14 = v5;
    _os_log_impl(&dword_2374EE000, v3, OS_LOG_TYPE_DEFAULT, "#I Verifying pin for:(%s) on:(%s)", buf, 0x16u);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  (*(*v2 + 360))(v2, *(v1 + 8), v1 + 16, *(v1 + 40), v1 + 48);
  std::unique_ptr<VinylCommandDriver::verifyPin(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,std::string const&)::$_0,std::default_delete<VinylCommandDriver::verifyPin(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,std::string const&)::$_0>>::~unique_ptr[abi:ne200100](&v9);
  result = std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23750F47C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::unique_ptr<VinylCommandDriver::verifyPin(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,std::string const&)::$_0,std::default_delete<VinylCommandDriver::verifyPin(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,std::string const&)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<VinylCommandDriver::verifyPin(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,std::string const&)::$_0,std::default_delete<VinylCommandDriver::verifyPin(subscriber::SimSlot,std::string const&,std::optional<unsigned char>,std::string const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    MEMORY[0x2383CD480](v2, 0x1032C40E5EF64E3);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<VinylCommandDriver>::execute_wrapped<VinylCommandDriver::setDelegate(std::shared_ptr<VinylCommandDriverDelegate>)::$_0>(VinylCommandDriver::setDelegate(std::shared_ptr<VinylCommandDriverDelegate>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<VinylCommandDriver::setDelegate(std::shared_ptr<VinylCommandDriverDelegate>)::$_0,std::default_delete<VinylCommandDriver::setDelegate(std::shared_ptr<VinylCommandDriverDelegate>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v8 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 88);
  *(v2 + 80) = v3;
  *(v2 + 88) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = v1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  MEMORY[0x2383CD480](v1, 0x20C40960023A9);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v8);
}

_DWORD *NetworkListSelectionResult::NetworkListSelectionResult(_DWORD *result, int a2, int a3)
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

const char *NetworkListSelectionResult::getResultAsString(NetworkListSelectionResult *this)
{
  v1 = *this;
  if (v1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278A339F0[v1];
  }
}

const char *NetworkListSelectionResult::asString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278A339F0[a1];
  }
}

void write_rest_value(const CSGSearchRequest *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v40 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v40 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v40 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v40 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v38 = xpc_string_create(v7);
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  v26 = &v40;
  v27 = "wifi";
  xpc::dict::object_proxy::operator=(&v26, &v38, &v39);
  xpc_release(v39);
  v39 = 0;
  xpc_release(v38);
  v38 = 0;
  v36 = xpc_int64_create(*(a1 + 6));
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  v26 = &v40;
  v27 = "csg";
  xpc::dict::object_proxy::operator=(&v26, &v36, &v37);
  xpc_release(v37);
  v37 = 0;
  xpc_release(v36);
  v36 = 0;
  if (*(a1 + 96) == 1)
  {
    v34 = xpc_BOOL_create(1);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    v26 = &v40;
    v27 = "plmnValid";
    xpc::dict::object_proxy::operator=(&v26, &v34, &v35);
    xpc_release(v35);
    v35 = 0;
    xpc_release(v34);
    v34 = 0;
    MCCAndMNC::getMcc(&v26, (a1 + 32));
    MCC::getStringValue(&v29, &v26);
    MCCAndMNC::getMnc(v22, (a1 + 32));
    MCC::getStringValue(__p, v22);
    if ((v25 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v9 = v25;
    }

    else
    {
      v9 = __p[1];
    }

    v10 = std::string::append(&v29, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31 = v10->__r_.__value_.__r.__words[2];
    v30 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v31 >= 0)
    {
      v12 = &v30;
    }

    else
    {
      v12 = v30;
    }

    v32 = xpc_string_create(v12);
    if (!v32)
    {
      v32 = xpc_null_create();
    }

    v21[0] = &v40;
    v21[1] = "plmn";
    xpc::dict::object_proxy::operator=(v21, &v32, &v33);
    xpc_release(v33);
    v33 = 0;
    xpc_release(v32);
    v32 = 0;
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[1]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (v28 < 0)
    {
      operator delete(v27);
    }
  }

  else
  {
    v19 = xpc_BOOL_create(0);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    v26 = &v40;
    v27 = "plmnValid";
    xpc::dict::object_proxy::operator=(&v26, &v19, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v19);
    v19 = 0;
  }

  v13 = *(a1 + 26);
  v14 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v17, v13, v14, v15);
  v26 = &v40;
  v27 = "slot";
  xpc::dict::object_proxy::operator=(&v26, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v16 = v40;
  *a2 = v40;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v40);
}

void sub_23750F9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  xpc_release(*(v40 - 40));
  _Unwind_Resume(a1);
}

void write_rest_value(unsigned __int8 *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v20 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v20 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v20 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v20 = v6;
LABEL_9:
  xpc_release(v5);
  v8 = *a1;
  if (v8 > 3)
  {
    v9 = "???";
  }

  else
  {
    v9 = off_278A33A18[v8];
  }

  ctu::rest::detail::write_enum_string_value(v8, v9, v7);
  v16 = &v20;
  v17 = "action";
  xpc::dict::object_proxy::operator=(&v16, &object, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(object);
  object = 0;
  if ((a1[31] & 0x80u) == 0)
  {
    v10 = (a1 + 8);
  }

  else
  {
    v10 = *(a1 + 1);
  }

  v14 = xpc_string_create(v10);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v16 = &v20;
  v17 = "wifi";
  xpc::dict::object_proxy::operator=(&v16, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v12 = xpc_int64_create(*(a1 + 8));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v16 = &v20;
  v17 = "csg";
  xpc::dict::object_proxy::operator=(&v16, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v11 = v20;
  *a2 = v20;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v20);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v14 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v14 = v6;
LABEL_9:
  xpc_release(v5);
  v12 = xpc_int64_create(*a1);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "selection";
  xpc::dict::object_proxy::operator=(&v10, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v8 = xpc_BOOL_create(a1[1]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "internal";
  xpc::dict::object_proxy::operator=(&v10, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v14;
  *a2 = v14;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v14);
}

void read_rest_value(void **a1, xpc_object_t *a2)
{
  v22 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v22 && MEMORY[0x2383CD810](v22) == v3)
  {
    xpc_retain(v22);
  }

  else
  {
    v22 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v3)
  {
    *&v20 = &v22;
    *(&v20 + 1) = "wifi";
    xpc::dict::object_proxy::operator xpc::object(&v20, object);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    xpc::dyn_cast_or_default();
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v23;
    a1[2] = v24;
    xpc_release(object[0]);
    v6 = &v22;
    v7 = "csg";
    xpc::dict::object_proxy::operator xpc::object(&v6, &v23);
    *(a1 + 6) = xpc::dyn_cast_or_default();
    xpc_release(v23);
    v6 = &v22;
    v7 = "plmnValid";
    xpc::dict::object_proxy::operator xpc::object(&v6, &v23);
    v4 = xpc::dyn_cast_or_default();
    xpc_release(v23);
    if (v4)
    {
      v20 = 0uLL;
      v21 = 0;
      object[0] = &v22;
      object[1] = "plmn";
      xpc::dict::object_proxy::operator xpc::object(object, &v19);
      v6 = 0;
      v7 = 0;
      v8 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v8) < 0)
      {
        operator delete(v6);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }

      v20 = v23;
      v21 = v24;
      xpc_release(v19);
      MEMORY[0x2383CD020](&v6, &v20);
      std::optional<MCCAndMNC>::operator=[abi:ne200100]<MCCAndMNC,void>((a1 + 4), &v6);
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v10 < 0)
      {
        operator delete(v7);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    v6 = &v22;
    v7 = "slot";
    xpc::dict::object_proxy::operator xpc::object(&v6, &v23);
    v5 = MEMORY[0x2383CD810](v23);
    if (v5 == MEMORY[0x277D864C0])
    {
      LODWORD(v20) = *(a1 + 26);
      ctu::rest::detail::read_enum_string_value();
      *(a1 + 26) = v20;
    }

    else if (v5 == MEMORY[0x277D86448] || v5 == MEMORY[0x277D86498] || v5 == MEMORY[0x277D864C8])
    {
      *(a1 + 26) = xpc::dyn_cast_or_default();
    }

    xpc_release(v23);
  }

  else
  {
    v11[0] = 0;
    v16 = 0;
    v17 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v9 = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    HIBYTE(v8) = 0;
    LOBYTE(v6) = 0;
    *(a1 + 6) = 0;
    std::__optional_storage_base<MCCAndMNC,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<MCCAndMNC,false>>((a1 + 4), v11);
    *(a1 + 26) = v17;
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v6);
    }
  }

  xpc_release(v22);
}

void sub_237510008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, xpc_object_t object)
{
  MCCAndMNC::~MCCAndMNC(&__p);
  if (*(v27 - 73) < 0)
  {
    operator delete(*(v27 - 96));
  }

  xpc_release(*(v27 - 64));
  _Unwind_Resume(a1);
}

uint64_t std::optional<MCCAndMNC>::operator=[abi:ne200100]<MCCAndMNC,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == 1)
  {
    MCC::operator=();
    MCC::operator=();
  }

  else
  {
    std::__optional_storage_base<MCCAndMNC,false>::__construct[abi:ne200100]<MCCAndMNC>(a1, a2);
  }

  return a1;
}

void read_rest_value(uint64_t a1, void **a2)
{
  v3 = *a2;
  v8 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CD810](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v8 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v4)
  {
    __p = &v8;
    v12 = "action";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    v5 = MEMORY[0x2383CD810](object[0]);
    if (v5 == MEMORY[0x277D864C0])
    {
      LOBYTE(v6[0]) = *a1;
      ctu::rest::detail::read_enum_string_value();
      *a1 = v6[0];
    }

    else if (v5 == MEMORY[0x277D86448] || v5 == MEMORY[0x277D86498] || v5 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default();
    }

    xpc_release(object[0]);
    v6[0] = &v8;
    v6[1] = "wifi";
    xpc::dict::object_proxy::operator xpc::object(v6, &v7);
    __p = 0;
    v12 = 0;
    v13 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = *object;
    *(a1 + 24) = v10;
    xpc_release(v7);
    __p = &v8;
    v12 = "csg";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    *(a1 + 32) = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
  }

  else
  {
    *a1 = 0;
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  xpc_release(v8);
}

{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v7 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CD810](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v7 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v4)
  {
    v8 = &v7;
    v9[0] = "index";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v8 = &v7;
    v9[0] = "mcc";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    read_rest_value((a1 + 8), &object);
    xpc_release(object);
    v8 = &v7;
    v9[0] = "bandclass";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    *(a1 + 40) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v8 = &v7;
    v9[0] = "chan";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    *(a1 + 42) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v8 = &v7;
    v9[0] = "sectorid";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    ctu::rest::detail::read_raw_binary_value();
    xpc_release(object);
    v8 = &v7;
    v9[0] = "lat";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    *(a1 + 60) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v8 = &v7;
    v9[0] = "long";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    *(a1 + 64) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v8 = &v7;
    v9[0] = "pnoffset";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    *(a1 + 68) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    LOWORD(v8) = 0;
    MCC::MCC(v9);
    LOBYTE(v11[0]) = 0;
    memset(v11 + 2, 0, 28);
    *a1 = 0;
    MCC::operator=();
    *(a1 + 40) = v11[0];
    *(a1 + 54) = *(v11 + 14);
    if (v10 < 0)
    {
      operator delete(v9[1]);
    }
  }

  xpc_release(v7);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v3 = *a2;
  v12 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CD810](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v12 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v4)
  {
    v9 = &v12;
    v10 = "limited_service";
    xpc::dict::object_proxy::operator xpc::object(&v9, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v9 = &v12;
    v10 = "bearer_support";
    xpc::dict::object_proxy::operator xpc::object(&v9, &object);
    v5 = MEMORY[0x2383CD810](object);
    v6 = MEMORY[0x277D864C0];
    v7 = MEMORY[0x277D86448];
    if (v5 == MEMORY[0x277D864C0])
    {
      v13 = *(a1 + 4);
      ctu::rest::detail::read_enum_string_value();
      *(a1 + 4) = v13;
    }

    else if (v5 == MEMORY[0x277D86448] || v5 == MEMORY[0x277D86498] || v5 == MEMORY[0x277D864C8])
    {
      *(a1 + 4) = xpc::dyn_cast_or_default();
    }

    xpc_release(object);
    v9 = &v12;
    v10 = "access_barred";
    xpc::dict::object_proxy::operator xpc::object(&v9, &object);
    v8 = MEMORY[0x2383CD810](object);
    if (v8 == v6)
    {
      v13 = *(a1 + 8);
      ctu::rest::detail::read_enum_string_value();
      *(a1 + 8) = v13;
    }

    else if (v8 == v7 || v8 == MEMORY[0x277D86498] || v8 == MEMORY[0x277D864C8])
    {
      *(a1 + 8) = xpc::dyn_cast_or_default();
    }

    xpc_release(object);
  }

  else
  {
    *a1 = 0;
    *(a1 + 4) = 0x200000002;
  }

  xpc_release(v12);
}

void sub_23751034C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void std::__optional_storage_base<MCCAndMNC,false>::__construct[abi:ne200100]<MCCAndMNC>(uint64_t a1, uint64_t a2)
{
  v4 = MCC::MCC();
  MCC::MCC((v4 + 32), (a2 + 32));
  *(a1 + 64) = 1;
}

void sub_237510454(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<MCCAndMNC,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<MCCAndMNC,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {
      MCC::operator=();

      MCC::operator=();
    }
  }

  else if (*(a1 + 64))
  {

    std::__optional_destruct_base<MCCAndMNC,false>::reset[abi:ne200100](a1);
  }

  else
  {

    std::__optional_storage_base<MCCAndMNC,false>::__construct[abi:ne200100]<MCCAndMNC>(a1, a2);
  }
}

void CSGSearchRequest::~CSGSearchRequest(void **this)
{
  if (*(this + 96) == 1)
  {
    if (*(this + 95) < 0)
    {
      operator delete(this[9]);
    }

    if (*(this + 63) < 0)
    {
      operator delete(this[5]);
    }
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void CSGServingSystem::~CSGServingSystem(void **this)
{
  if (*(this + 80) == 1)
  {
    if (*(this + 79) < 0)
    {
      operator delete(this[7]);
    }

    if (*(this + 47) < 0)
    {
      operator delete(this[3]);
    }
  }
}

void *SuppServicesCommandDriver::SuppServicesCommandDriver(void *a1, NSObject **a2, const char *a3, void *a4)
{
  ctu::OsLogContext::OsLogContext(v10, *MEMORY[0x277CC4628], a3);
  a1[1] = 0;
  a1[2] = 0;
  v7 = *a2;
  a1[3] = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v11);
  MEMORY[0x2383CCDD0](v11);
  ctu::OsLogContext::~OsLogContext(v10);
  *a1 = &unk_284A7C788;
  v8 = a4[1];
  a1[6] = *a4;
  a1[7] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  a1[9] = 0;
  return a1;
}

void SuppServicesCommandDriver::~SuppServicesCommandDriver(SuppServicesCommandDriver *this)
{
  *this = &unk_284A7C788;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

uint64_t SuppServicesCommandDriver::supportsCallWaitingServiceClass(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v5 = ServiceMap;
  v6 = *(MEMORY[0x277CC4468] + 8);
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  cf[0] = v6;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v5[1].__m_.__sig, cf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(cf[0]) = 0;
      _os_log_error_impl(&dword_2374EE000, v14, OS_LOG_TYPE_ERROR, "Registry does not contain CarrierSettingsInterface, file a radar!!", cf, 2u);
    }

    LOBYTE(v15) = 0;
    if (v13)
    {
      return v15 & 1;
    }

LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    return v15 & 1;
  }

LABEL_13:
  cf[0] = 0;
  (*(*v12 + 96))(cf, v12, a2, 1, @"SupportsCallWaitingServiceClass", *MEMORY[0x277CBED10], 0);
  v15 = cf[0];
  v19 = 0;
  if (cf[0])
  {
    v16 = CFGetTypeID(cf[0]);
    if (v16 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v19, v15, v17);
      LOBYTE(v15) = v19;
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(cf);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  return v15 & 1;
}

void sub_237510904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((v12 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *FilePushTransaction::FilePushTransaction(_DWORD *a1, int a2, uint64_t a3)
{
  *a1 = a2;
  std::__function::__value_func<void ()(subscriber::SimSlot,FilePushTransactionStatus)>::__value_func[abi:ne200100]((a1 + 2), a3);
  a1[10] = 0;
  return a1;
}

{
  *a1 = a2;
  std::__function::__value_func<void ()(subscriber::SimSlot,FilePushTransactionStatus)>::__value_func[abi:ne200100]((a1 + 2), a3);
  a1[10] = 0;
  return a1;
}

void FilePushTransaction::~FilePushTransaction(FilePushTransaction *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *this;
    v4 = *(this + 10);
    v5 = v3;
    (*(*v2 + 48))(v2, &v5, &v4);
  }

  std::__function::__value_func<void ()(subscriber::SimSlot,FilePushTransactionStatus)>::~__value_func[abi:ne200100](this + 8);
}

uint64_t FilePushTransactionResult::FilePushTransactionResult(uint64_t result, int a2, char a3)
{
  *result = a2;
  *(result + 4) = a3;
  return result;
}

{
  *result = a2;
  *(result + 4) = a3;
  return result;
}

uint64_t std::__function::__value_func<void ()(subscriber::SimSlot,FilePushTransactionStatus)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(subscriber::SimSlot,FilePushTransactionStatus)>::~__value_func[abi:ne200100](uint64_t a1)
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

void BBDataCommandDriverEventHandler::~BBDataCommandDriverEventHandler(BBDataCommandDriverEventHandler *this)
{
  *this = &unk_284A7C950;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t subscriber::setFlagIf(void *a1, int *a2, int a3)
{
  result = MEMORY[0x2383CD810](*a1);
  if (result == MEMORY[0x277D864B0])
  {
    v6 = *a2 & ~a3;
  }

  else
  {
    v6 = *a2 | a3;
  }

  *a2 = v6;
  return result;
}

uint64_t DMSCommandDriver::DMSCommandDriver(uint64_t a1, void *a2, dispatch_object_t *a3, char *a4)
{
  ctu::OsLogContext::OsLogContext(v13, *MEMORY[0x277CC4628], a4);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = *a3;
  *(a1 + 24) = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 40, v14);
  MEMORY[0x2383CCDD0](v14);
  ctu::OsLogContext::~OsLogContext(v13);
  *a1 = &unk_284A7C9E0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "DMSCommandDriver");
  v10 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
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

  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  v8 = a2[1];
  *(a1 + 72) = *a2;
  *(a1 + 80) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  return a1;
}

void sub_237510E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
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

  MEMORY[0x2383CCDD0](v17 + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(v18);
  _Unwind_Resume(a1);
}

void DMSCommandDriver::~DMSCommandDriver(DMSCommandDriver *this)
{
  *this = &unk_284A7C9E0;
  std::__tree<STKRegisteredEvent>::destroy(*(this + 29));
  std::__function::__value_func<void ()(std::map<subscriber::SimSlot,unsigned short> const&)>::~__value_func[abi:ne200100](this + 192);
  std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(*(this + 22));
  std::__function::__value_func<void ()(std::map<subscriber::SimSlot,std::string> const&)>::~__value_func[abi:ne200100](this + 136);
  std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(*(this + 15));
  std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(*(this + 12));
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void DMSCommandDriver::start(Registry **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = (this + 6);
  if ((ctu::RestModule::isConnected((this + 6)) & 1) == 0)
  {
    Registry::createRestModuleOneTimeUseConnection(&v19, this[9]);
    ctu::RestModule::connect();
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  v3 = (this + 17);
  v21 = &unk_284A7CAC0;
  v22 = v2;
  v23 = &v21;
  if (&v21 != (this + 17))
  {
    v4 = this[20];
    if (v4 == v3)
    {
      v25 = v2;
      v26 = 0;
      v23 = 0;
      v24 = &unk_284A7CAC0;
      (*(*v4 + 3))(v4, &v21);
      (*(*this[20] + 32))(this[20]);
      this[20] = 0;
      v23 = &v21;
      v24[3](&v24, this + 136);
      (v24[4])(&v24);
    }

    else
    {
      this[17] = &unk_284A7CAC0;
      this[18] = v2;
      v23 = v4;
    }

    this[20] = v3;
  }

  std::__function::__value_func<void ()(std::map<subscriber::SimSlot,std::string> const&)>::~__value_func[abi:ne200100](&v21);
  v5 = this[20];
  if (v5)
  {
    (*(*v5 + 48))(v5, this + 168);
  }

  v6 = (this + 24);
  v21 = &unk_284A7CB50;
  v22 = v2;
  v23 = &v21;
  if (&v21 != (this + 24))
  {
    v7 = this[27];
    if (v7 == v6)
    {
      v25 = v2;
      v26 = 0;
      v23 = 0;
      v24 = &unk_284A7CB50;
      (*(*v7 + 3))(v7, &v21);
      (*(*this[27] + 32))(this[27]);
      this[27] = 0;
      v23 = &v21;
      v24[3](&v24, this + 192);
      (v24[4])(&v24);
    }

    else
    {
      this[24] = &unk_284A7CB50;
      this[25] = v2;
      v23 = v7;
    }

    this[27] = v6;
  }

  std::__function::__value_func<void ()(std::map<subscriber::SimSlot,unsigned short> const&)>::~__value_func[abi:ne200100](&v21);
  v8 = this[27];
  if (v8)
  {
    (*(*v8 + 48))(v8, this + 224);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/prefs-nb/imeis");
  v12 = MEMORY[0x277D85DD0];
  v13 = 0x40000000;
  v14 = ___ZN16DMSCommandDriver5startEv_block_invoke;
  v15 = &__block_descriptor_tmp_2;
  v16 = this;
  ctu::RestModule::getPropertyOnce();
  if (v18 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "/cc/prefs-nb/imei_svns");
  ctu::RestModule::getPropertyOnce();
  if (v11 < 0)
  {
    operator delete(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_237511404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ctu::rest::read_rest_value<subscriber::SimSlot,std::string>(void *a1, void *a2)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86440];
  if (a2 && (v4 = a2, MEMORY[0x2383CD810](a2) == v3))
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
  }

  v5 = a1 + 1;
  std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(a1[1]);
  *a1 = a1 + 1;
  a1[2] = 0;
  a1[1] = 0;
  if (MEMORY[0x2383CD810](v4) == v3)
  {
    object = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::array::iterator::iterator(&v21, &object, 0);
    xpc_release(object);
    object = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      object = xpc_null_create();
    }

    if (MEMORY[0x2383CD810](v4) == v3)
    {
      count = xpc_array_get_count(v4);
    }

    else
    {
      count = 0;
    }

    xpc::array::iterator::iterator(v20, &object, count);
    xpc_release(object);
    v7 = MEMORY[0x277D86468];
    for (i = v22; ; i = ++v22)
    {
      if (i == v20[1] && v21 == v20[0])
      {
        xpc_release(v20[0]);
        xpc_release(v21);
        goto LABEL_50;
      }

      v19 = 0;
      object = &v21;
      v30 = i;
      xpc::array::object_proxy::operator xpc::dict(&object, &v19);
      if (MEMORY[0x2383CD810](v19) == v7)
      {
        break;
      }

LABEL_46:
      xpc_release(v19);
    }

    memset(v32, 0, 15);
    v9 = v19;
    if (v19)
    {
      xpc_retain(v19);
      v25 = v9;
    }

    else
    {
      v9 = xpc_null_create();
      v25 = v9;
      if (!v9)
      {
        v10 = xpc_null_create();
        v9 = 0;
        goto LABEL_26;
      }
    }

    if (MEMORY[0x2383CD810](v9) == v7)
    {
      xpc_retain(v9);
      v10 = v25;
LABEL_27:
      if (MEMORY[0x2383CD810](v10) == v7)
      {
        object = &v25;
        v30 = "first";
        xpc::dict::object_proxy::operator xpc::object(&object, &v26);
        v14 = MEMORY[0x2383CD810](v26);
        if (v14 == MEMORY[0x277D864C0])
        {
          LODWORD(v23[0]) = 0;
          ctu::rest::detail::read_enum_string_value();
          v11 = v23[0];
        }

        else if (v14 == MEMORY[0x277D86448] || v14 == MEMORY[0x277D86498] || v14 == MEMORY[0x277D864C8])
        {
          v11 = xpc::dyn_cast_or_default();
        }

        else
        {
          v11 = 0;
        }

        xpc_release(v26);
        v23[0] = &v25;
        v23[1] = "second";
        xpc::dict::object_proxy::operator xpc::object(v23, &v24);
        object = 0;
        v30 = 0;
        v31 = 0;
        xpc::dyn_cast_or_default();
        if (SHIBYTE(v31) < 0)
        {
          operator delete(object);
        }

        v12 = v26;
        v32[0] = *v27;
        *(v32 + 7) = *&v27[7];
        v13 = v28;
        xpc_release(v24);
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      xpc_release(v25);
      xpc_release(v9);
      v15 = *v5;
      if (!*v5)
      {
LABEL_45:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = *(v15 + 32);
          if (v17 <= v11)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_45;
          }
        }

        if (v17 >= v11)
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_45;
        }
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }

      goto LABEL_46;
    }

    v10 = xpc_null_create();
LABEL_26:
    v25 = v10;
    goto LABEL_27;
  }

LABEL_50:
  xpc_release(v4);
  v18 = *MEMORY[0x277D85DE8];
}

void sub_237511880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, xpc_object_t a17, xpc_object_t a18, uint64_t a19, uint64_t a20, xpc_object_t object, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t DMSCommandDriver::stop(DMSCommandDriver *this)
{
  v2 = this + 136;
  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 27);
  *(this + 27) = 0;
  if (v4 == (this + 192))
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return MEMORY[0x2821F6AC8](this + 48);
}

void DMSCommandDriver::setImei(uint64_t a1, int a2, const std::string *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v31 = a2;
  v6 = a3;
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = a3->__r_.__value_.__r.__words[0];
  }

  v7 = xpc_string_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = MEMORY[0x2383CD810](v7);
  if (a2 == 1)
  {
    v9 = 4;
  }

  else
  {
    v9 = 16;
  }

  v10 = *(a1 + 64);
  v11 = v10 & ~v9;
  v12 = v10 | v9;
  if (v8 == MEMORY[0x277D864B0])
  {
    v12 = v11;
  }

  *(a1 + 64) = v12;
  xpc_release(v7);
  *buf = &v31;
  v13 = std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::__emplace_unique_key_args<subscriber::SimSlot,std::piecewise_construct_t const&,std::tuple<subscriber::SimSlot const&>,std::tuple<>>(a1 + 88, a2);
  v14 = *(v13 + 63);
  if (v14 >= 0)
  {
    v15 = *(v13 + 63);
  }

  else
  {
    v15 = v13[6];
  }

  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v17 = size;
  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (v15 != size)
  {
    goto LABEL_22;
  }

  v20 = v13[5];
  v18 = v13 + 5;
  v19 = v20;
  if (v14 < 0)
  {
    v18 = v19;
  }

  v21 = a3->__r_.__value_.__r.__words[0];
  v22 = v17 >= 0 ? a3 : a3->__r_.__value_.__r.__words[0];
  if (memcmp(v18, v22, v15))
  {
LABEL_22:
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = a3;
      if (v17 < 0)
      {
        v24 = a3->__r_.__value_.__r.__words[0];
      }

      v25 = subscriber::asString();
      *buf = 136315394;
      *&buf[4] = v24;
      v33 = 2080;
      v34 = v25;
      _os_log_impl(&dword_2374EE000, v23, OS_LOG_TYPE_DEFAULT, "#I updating imei %s for slot %s", buf, 0x16u);
    }

    *buf = &v31;
    v26 = std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::__emplace_unique_key_args<subscriber::SimSlot,std::piecewise_construct_t const&,std::tuple<subscriber::SimSlot const&>,std::tuple<>>(a1 + 88, v31);
    std::string::operator=((v26 + 5), a3);
    std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/prefs-nb/imeis");
    ctu::rest::write_rest_value<subscriber::SimSlot,std::string>(&object, (a1 + 88));
    ctu::RestModule::setProperty();
    xpc_release(object);
    object = 0;
    if (v30 < 0)
    {
      operator delete(__p);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_237511CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ctu::rest::write_rest_value<subscriber::SimSlot,std::string>(xpc_object_t *a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CD810](v4) == MEMORY[0x277D86440])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v8 = *a2;
  v6 = a2 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = MEMORY[0x277D86468];
    do
    {
      v10 = xpc_dictionary_create(0, 0, 0);
      v11 = v10;
      if (v10)
      {
        v27 = v10;
      }

      else
      {
        v11 = xpc_null_create();
        v27 = v11;
        if (!v11)
        {
          v12 = xpc_null_create();
          v11 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x2383CD810](v11) != v9)
      {
        v12 = xpc_null_create();
LABEL_16:
        v27 = v12;
        goto LABEL_17;
      }

      xpc_retain(v11);
LABEL_17:
      xpc_release(v11);
      v13 = *(v7 + 8);
      v14 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v25, v13, v14, v15);
      v23 = &v27;
      v24 = "first";
      xpc::dict::object_proxy::operator=(&v23, &v25, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v25);
      v25 = 0;
      if (*(v7 + 63) >= 0)
      {
        v16 = (v7 + 5);
      }

      else
      {
        v16 = v7[5];
      }

      v21 = xpc_string_create(v16);
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      v23 = &v27;
      v24 = "second";
      xpc::dict::object_proxy::operator=(&v23, &v21, &v22);
      xpc_release(v22);
      v22 = 0;
      xpc_release(v21);
      v21 = 0;
      v17 = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v27);
      xpc_array_append_value(v5, v17);
      xpc_release(v17);
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      v7 = v19;
    }

    while (v19 != v6);
  }

  *a1 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  xpc_release(v5);
}

void sub_237511FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(v17);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void DMSCommandDriver::setImeiSvn(uint64_t a1, int a2, const std::string *a3)
{
  v27 = a2;
  v6 = a3;
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = a3->__r_.__value_.__r.__words[0];
  }

  v7 = xpc_string_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = MEMORY[0x2383CD810](v7);
  if (a2 == 1)
  {
    v9 = 8;
  }

  else
  {
    v9 = 32;
  }

  v10 = *(a1 + 64);
  v11 = v10 & ~v9;
  v12 = v10 | v9;
  if (v8 == MEMORY[0x277D864B0])
  {
    v12 = v11;
  }

  *(a1 + 64) = v12;
  xpc_release(v7);
  v28 = &v27;
  v13 = std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::__emplace_unique_key_args<subscriber::SimSlot,std::piecewise_construct_t const&,std::tuple<subscriber::SimSlot const&>,std::tuple<>>(a1 + 112, a2);
  v14 = *(v13 + 63);
  if (v14 >= 0)
  {
    v15 = *(v13 + 63);
  }

  else
  {
    v15 = v13[6];
  }

  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v17 = size;
  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (v15 != size)
  {
    goto LABEL_22;
  }

  v20 = v13[5];
  v18 = v13 + 5;
  v19 = v20;
  if (v14 < 0)
  {
    v18 = v19;
  }

  v21 = a3->__r_.__value_.__r.__words[0];
  v22 = v17 >= 0 ? a3 : a3->__r_.__value_.__r.__words[0];
  if (memcmp(v18, v22, v15))
  {
LABEL_22:
    v28 = &v27;
    v23 = std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::__emplace_unique_key_args<subscriber::SimSlot,std::piecewise_construct_t const&,std::tuple<subscriber::SimSlot const&>,std::tuple<>>(a1 + 112, v27);
    std::string::operator=((v23 + 5), a3);
    std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/prefs-nb/imei_svns");
    ctu::rest::write_rest_value<subscriber::SimSlot,std::string>(&object, (a1 + 112));
    ctu::RestModule::setProperty();
    xpc_release(object);
    object = 0;
    if (v26 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_23751219C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DMSCommandDriver::setMeid(uint64_t a1, xpc_object_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 64) & 2) == 0)
  {
    goto LABEL_7;
  }

  v4 = xpc_string_create("");
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v5 = xpc_equal(*a2, v4);
  xpc_release(v4);
  if (v5)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2374EE000, v6, OS_LOG_TYPE_DEFAULT, "#I meid is already set", buf, 2u);
    }
  }

  else
  {
LABEL_7:
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(buf, a2);
      v8 = v14 >= 0 ? buf : *buf;
      *v15 = 136315138;
      v16 = v8;
      _os_log_impl(&dword_2374EE000, v7, OS_LOG_TYPE_DEFAULT, "#I setting meid %s", v15, 0xCu);
      if (v14 < 0)
      {
        operator delete(*buf);
      }
    }

    *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFD | (2 * (MEMORY[0x2383CD810](*a2) != MEMORY[0x277D864B0]));
    std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/prefs-nb/meid");
    object = *a2;
    if (*a2)
    {
      xpc_retain(*a2);
    }

    else
    {
      object = xpc_null_create();
    }

    ctu::RestModule::setProperty();
    xpc_release(object);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2375123C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DMSCommandDriver::setMin(uint64_t a1, int a2, const std::string *a3)
{
  v9[0] = 1;
  v10 = 0u;
  v11 = 0;
  v9[1] = a1 + 136;
  std::map<subscriber::SimSlot,std::string>::map[abi:ne200100](&v10, (a1 + 168));
  v5 = &v10 + 1;
  v6 = *(&v10 + 1);
  if (!*(&v10 + 1))
  {
    goto LABEL_8;
  }

  v7 = &v10 + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v7 != &v10 + 8 && (v5 = v7, *(v7 + 8) <= a2))
  {
    std::string::operator=((v7 + 40), a3);
  }

  else
  {
LABEL_8:
    v13 = 0;
    v12 = 0;
    if (!*std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::__find_equal<subscriber::SimSlot>(&v10, v5, &v13, &v12, a2))
    {
      operator new();
    }
  }

  return ctu::rest::GuardedPropertyScopedModifier<ctu::rest::property_source_t<rest::device_mins>,std::map<subscriber::SimSlot,std::string>>::~GuardedPropertyScopedModifier(v9);
}

void sub_237512590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operator delete(v9);
  ctu::rest::GuardedPropertyScopedModifier<ctu::rest::property_source_t<rest::device_mins>,std::map<subscriber::SimSlot,std::string>>::~GuardedPropertyScopedModifier(&a9);
  _Unwind_Resume(a1);
}

uint64_t DMSCommandDriver::clearMin(uint64_t a1, int a2)
{
  v10[0] = 1;
  v11 = 0u;
  v12 = 0;
  v10[1] = a1 + 136;
  std::map<subscriber::SimSlot,std::string>::map[abi:ne200100](&v11, (a1 + 168));
  if (*(&v11 + 1))
  {
    v3 = &v11 + 8;
    v4 = *(&v11 + 1);
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v3 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v3 != &v11 + 8 && *(v3 + 8) <= a2)
    {
      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        v7 = v3;
        do
        {
          v6 = *(v7 + 2);
          v8 = *v6 == v7;
          v7 = v6;
        }

        while (!v8);
      }

      if (v11 == v3)
      {
        *&v11 = v6;
      }

      --v12;
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(&v11 + 1), v3);
      if (v3[63] < 0)
      {
        operator delete(*(v3 + 5));
      }

      operator delete(v3);
    }
  }

  return ctu::rest::GuardedPropertyScopedModifier<ctu::rest::property_source_t<rest::device_mins>,std::map<subscriber::SimSlot,std::string>>::~GuardedPropertyScopedModifier(v10);
}

uint64_t DMSCommandDriver::setPrlVersion(uint64_t a1, int a2, __int16 a3)
{
  v9[0] = 1;
  v10 = 0u;
  v11 = 0;
  v9[1] = a1 + 192;
  std::map<subscriber::SimSlot,unsigned short>::map[abi:ne200100](&v10, (a1 + 224));
  v5 = &v10 + 1;
  v6 = *(&v10 + 1);
  if (*(&v10 + 1))
  {
    v7 = &v10 + 8;
    do
    {
      if (*(v6 + 7) >= a2)
      {
        v7 = v6;
      }

      v6 = *&v6[8 * (*(v6 + 7) < a2)];
    }

    while (v6);
    if (v7 != &v10 + 8)
    {
      if (*(v7 + 7) <= a2)
      {
        *(v7 + 16) = a3;
        return ctu::rest::GuardedPropertyScopedModifier<ctu::rest::property_source_t<rest::device_prl_versions>,std::map<subscriber::SimSlot,unsigned short>>::~GuardedPropertyScopedModifier(v9);
      }

      v5 = v7;
    }
  }

  v13 = 0;
  v12 = 0;
  if (!*std::__tree<std::__value_type<subscriber::SimSlot,unsigned short>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned short>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned short>>>::__find_equal<subscriber::SimSlot>(&v10, v5, &v13, &v12, a2))
  {
    operator new();
  }

  return ctu::rest::GuardedPropertyScopedModifier<ctu::rest::property_source_t<rest::device_prl_versions>,std::map<subscriber::SimSlot,unsigned short>>::~GuardedPropertyScopedModifier(v9);
}

uint64_t DMSCommandDriver::clearPrlVersion(uint64_t a1, int a2)
{
  v10[0] = 1;
  v11 = 0u;
  v12 = 0;
  v10[1] = a1 + 192;
  std::map<subscriber::SimSlot,unsigned short>::map[abi:ne200100](&v11, (a1 + 224));
  if (*(&v11 + 1))
  {
    v3 = &v11 + 8;
    v4 = *(&v11 + 1);
    do
    {
      if (*(v4 + 7) >= a2)
      {
        v3 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 7) < a2)];
    }

    while (v4);
    if (v3 != &v11 + 8 && *(v3 + 7) <= a2)
    {
      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        v7 = v3;
        do
        {
          v6 = *(v7 + 2);
          v8 = *v6 == v7;
          v7 = v6;
        }

        while (!v8);
      }

      if (v11 == v3)
      {
        *&v11 = v6;
      }

      --v12;
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(&v11 + 1), v3);
      operator delete(v3);
    }
  }

  return ctu::rest::GuardedPropertyScopedModifier<ctu::rest::property_source_t<rest::device_prl_versions>,std::map<subscriber::SimSlot,unsigned short>>::~GuardedPropertyScopedModifier(v10);
}

uint64_t DMSCommandDriver::clear(uint64_t a1, uint64_t a2, char a3)
{
  result = subscriber::makeSimSlotRange();
  v6 = v8;
  if (v8 != v9)
  {
    do
    {
      result = v10(*v6);
      if (result)
      {
        break;
      }

      ++v6;
    }

    while (v6 != v9);
    while (v6 != v9)
    {
      v7 = *v6;
      if ((a3 & 0x40) != 0)
      {
        result = DMSCommandDriver::clearMin(a1, *v6);
      }

      if (a3 < 0)
      {
        result = DMSCommandDriver::clearPrlVersion(a1, v7);
      }

      do
      {
        if (++v6 == v9)
        {
          break;
        }

        result = v10(*v6);
      }

      while ((result & 1) == 0);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::map<subscriber::SimSlot,unsigned short> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::map<subscriber::SimSlot,std::string> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

uint64_t std::__function::__func<ctu::rest::property_source_t<rest::device_mins>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,std::string> const&)#1},std::allocator<ctu::rest::property_source_t<rest::device_mins>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,std::string> const&)#1}>,void ()(std::map<subscriber::SimSlot,std::string> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A7CAC0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ctu::rest::property_source_t<rest::device_mins>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,std::string> const&)#1},std::allocator<ctu::rest::property_source_t<rest::device_mins>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,std::string> const&)#1}>,void ()(std::map<subscriber::SimSlot,std::string> const&)>::operator()(uint64_t a1, void *a2)
{
  v8 = 0;
  ctu::rest::write_rest_value<subscriber::SimSlot,std::string>(&v8, a2);
  v3 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/device_info/mins");
  v4 = v8;
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v4);
}

void sub_237512C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::rest::property_source_t<rest::device_mins>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,std::string> const&)#1},std::allocator<ctu::rest::property_source_t<rest::device_mins>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,std::string> const&)#1}>,void ()(std::map<subscriber::SimSlot,std::string> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ctu::rest::property_source_t<rest::device_prl_versions>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,unsigned short> const&)#1},std::allocator<ctu::rest::property_source_t<rest::device_prl_versions>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,unsigned short> const&)#1}>,void ()(std::map<subscriber::SimSlot,unsigned short> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A7CB50;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ctu::rest::property_source_t<rest::device_prl_versions>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,unsigned short> const&)#1},std::allocator<ctu::rest::property_source_t<rest::device_prl_versions>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,unsigned short> const&)#1}>,void ()(std::map<subscriber::SimSlot,unsigned short> const&)>::operator()(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CD810](v4) == MEMORY[0x277D86440])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v8 = *a2;
  v6 = a2 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = MEMORY[0x277D86468];
    do
    {
      v10 = xpc_dictionary_create(0, 0, 0);
      v11 = v10;
      if (v10)
      {
        v29 = v10;
      }

      else
      {
        v11 = xpc_null_create();
        v29 = v11;
        if (!v11)
        {
          v12 = xpc_null_create();
          v11 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x2383CD810](v11) != v9)
      {
        v12 = xpc_null_create();
LABEL_16:
        v29 = v12;
        goto LABEL_17;
      }

      xpc_retain(v11);
LABEL_17:
      xpc_release(v11);
      v13 = *(v7 + 7);
      v14 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v27, v13, v14, v15);
      __p = &v29;
      v23 = "first";
      xpc::dict::object_proxy::operator=(&__p, &v27, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v27);
      v27 = 0;
      v25 = xpc_int64_create(*(v7 + 16));
      if (!v25)
      {
        v25 = xpc_null_create();
      }

      __p = &v29;
      v23 = "second";
      xpc::dict::object_proxy::operator=(&__p, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v16 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v16 = xpc_null_create();
      }

      xpc_release(v29);
      xpc_array_append_value(v5, v16);
      xpc_release(v16);
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
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      v7 = v18;
    }

    while (v18 != v6);
  }

  if (v5)
  {
    xpc_retain(v5);
    v20 = v5;
  }

  else
  {
    v20 = xpc_null_create();
  }

  xpc_release(v5);
  v21 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/device_info/prl_versions");
  v29 = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    v29 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v29);
  v29 = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v20);
}

void sub_237513098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::rest::property_source_t<rest::device_prl_versions>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,unsigned short> const&)#1},std::allocator<ctu::rest::property_source_t<rest::device_prl_versions>::bind(ctu::RestModule &)::{lambda(std::map<subscriber::SimSlot,unsigned short> const&)#1}>,void ()(std::map<subscriber::SimSlot,unsigned short> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::__emplace_unique_key_args<subscriber::SimSlot,std::piecewise_construct_t const&,std::tuple<subscriber::SimSlot const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::map<subscriber::SimSlot,std::string>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = *(v5 + 8);
      v11 = 0;
      v12 = 0;
      if (!*std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::__find_equal<subscriber::SimSlot>(a1, v3, &v12, &v11, v6))
      {
        operator new();
      }

      v7 = v5[1];
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
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }

  return a1;
}

void sub_237513390(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(*v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::__find_equal<subscriber::SimSlot>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *(a2 + 8), v6 > a5))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
LABEL_18:
      if (v7)
      {
        *a3 = v9;
        return v9 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    if (*(v9 + 8) < a5)
    {
      goto LABEL_18;
    }

    v14 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v14;
          v16 = *(v14 + 32);
          if (v16 <= a5)
          {
            break;
          }

          v14 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v16 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v14 = v15[1];
      }

      while (v14);
      goto LABEL_43;
    }

LABEL_42:
    v15 = a1 + 1;
LABEL_43:
    *a3 = v15;
    return v5;
  }

  if (v6 >= a5)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v10 = a2[1];
  if (v10)
  {
    v11 = a2[1];
    do
    {
      a4 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v17 = a2;
    do
    {
      a4 = v17[2];
      v13 = *a4 == v17;
      v17 = a4;
    }

    while (!v13);
  }

  if (a4 != v5 && *(a4 + 8) <= a5)
  {
    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v18;
          v19 = *(v18 + 32);
          if (v19 <= a5)
          {
            break;
          }

          v18 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v19 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v18 = v15[1];
      }

      while (v18);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v10)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t ctu::rest::GuardedPropertyScopedModifier<ctu::rest::property_source_t<rest::device_mins>,std::map<subscriber::SimSlot,std::string>>::~GuardedPropertyScopedModifier(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_36;
      }

      v4 = *(a1 + 16);
      while (*(v3 + 8) == *(v4 + 8))
      {
        v5 = *(v3 + 63);
        if (v5 >= 0)
        {
          v6 = *(v3 + 63);
        }

        else
        {
          v6 = v3[6];
        }

        v7 = *(v4 + 63);
        v8 = v7;
        if ((v7 & 0x80u) != 0)
        {
          v7 = v4[6];
        }

        if (v6 != v7)
        {
          break;
        }

        v9 = v5 >= 0 ? v3 + 5 : v3[5];
        v10 = v8 >= 0 ? v4 + 5 : v4[5];
        if (memcmp(v9, v10, v6))
        {
          break;
        }

        v11 = v3[1];
        v12 = v3;
        if (v11)
        {
          do
          {
            v3 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v3 = v12[2];
            v13 = *v3 == v12;
            v12 = v3;
          }

          while (!v13);
        }

        v14 = v4[1];
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
            v15 = v4[2];
            v13 = *v15 == v4;
            v4 = v15;
          }

          while (!v13);
        }

        v4 = v15;
        if (v3 == v2 + 5)
        {
          goto LABEL_36;
        }
      }
    }

    v16 = v2 + 5;
    std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(v2[5]);
    v2[4] = *(a1 + 16);
    v17 = (a1 + 24);
    v18 = *(a1 + 24);
    v2[5] = v18;
    v19 = *(a1 + 32);
    v2[6] = v19;
    if (v19)
    {
      *(v18 + 16) = v16;
      *(a1 + 16) = v17;
      *v17 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v16;
    }

    v20 = v2[3];
    if (v20)
    {
      (*(*v20 + 48))(v20);
    }
  }

LABEL_36:
  std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(*(a1 + 24));
  return a1;
}

void *std::map<subscriber::SimSlot,unsigned short>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = *(v5 + 7);
      v11 = 0;
      v12 = 0;
      if (!*std::__tree<std::__value_type<subscriber::SimSlot,unsigned short>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned short>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned short>>>::__find_equal<subscriber::SimSlot>(a1, v3, &v12, &v11, v6))
      {
        operator new();
      }

      v7 = v5[1];
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
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<subscriber::SimSlot,unsigned short>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned short>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned short>>>::__find_equal<subscriber::SimSlot>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *(a2 + 7), v6 > a5))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
LABEL_18:
      if (v7)
      {
        *a3 = v9;
        return v9 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    if (*(v9 + 7) < a5)
    {
      goto LABEL_18;
    }

    v14 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v14;
          v16 = *(v14 + 28);
          if (v16 <= a5)
          {
            break;
          }

          v14 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v16 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v14 = v15[1];
      }

      while (v14);
      goto LABEL_43;
    }

LABEL_42:
    v15 = a1 + 1;
LABEL_43:
    *a3 = v15;
    return v5;
  }

  if (v6 >= a5)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v10 = a2[1];
  if (v10)
  {
    v11 = a2[1];
    do
    {
      a4 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v17 = a2;
    do
    {
      a4 = v17[2];
      v13 = *a4 == v17;
      v17 = a4;
    }

    while (!v13);
  }

  if (a4 != v5 && *(a4 + 7) <= a5)
  {
    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v18;
          v19 = *(v18 + 28);
          if (v19 <= a5)
          {
            break;
          }

          v18 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v19 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v18 = v15[1];
      }

      while (v18);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v10)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t ctu::rest::GuardedPropertyScopedModifier<ctu::rest::property_source_t<rest::device_prl_versions>,std::map<subscriber::SimSlot,unsigned short>>::~GuardedPropertyScopedModifier(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_27;
      }

      v4 = *(a1 + 16);
      while (1)
      {
        v5 = *(v3 + 7) == *(v4 + 7) && *(v3 + 16) == *(v4 + 16);
        if (!v5)
        {
          break;
        }

        v6 = v3[1];
        v7 = v3;
        if (v6)
        {
          do
          {
            v3 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v3 = v7[2];
            v5 = *v3 == v7;
            v7 = v3;
          }

          while (!v5);
        }

        v8 = v4[1];
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
            v9 = v4[2];
            v5 = *v9 == v4;
            v4 = v9;
          }

          while (!v5);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_27;
        }
      }
    }

    v10 = v2 + 5;
    std::__tree<STKRegisteredEvent>::destroy(v2[5]);
    v2[4] = *(a1 + 16);
    v11 = (a1 + 24);
    v12 = *(a1 + 24);
    v2[5] = v12;
    v13 = *(a1 + 32);
    v2[6] = v13;
    if (v13)
    {
      *(v12 + 16) = v10;
      *(a1 + 16) = v11;
      *v11 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v10;
    }

    v14 = v2[3];
    if (v14)
    {
      (*(*v14 + 48))(v14);
    }
  }

LABEL_27:
  std::__tree<STKRegisteredEvent>::destroy(*(a1 + 24));
  return a1;
}

const char *at::asString(int a1)
{
  v1 = "???";
  if (!a1)
  {
    v1 = "OK";
  }

  if (a1 == 1)
  {
    return "ERROR";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "Command Failed";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Command Successful";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "Send Confirmation Code";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Send Activation Code";
  }
}

const char *at::asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_278A33AC0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A33AE0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A33AF8[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_278A33B10[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_278A33B48[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A33B68[a1];
  }
}

void *AudioRoutingCommandDriver::AudioRoutingCommandDriver(void *a1, void *a2, NSObject **a3, uint64_t a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(v12, *MEMORY[0x277CC4628], a5);
  a1[1] = 0;
  a1[2] = 0;
  v9 = *a3;
  a1[3] = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v13);
  MEMORY[0x2383CCDD0](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_284A7CBE0;
  v10 = a2[1];
  a1[6] = *a2;
  a1[7] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  a1[9] = 0;
  a1[10] = a4;
  return a1;
}

void AudioRoutingCommandDriver::~AudioRoutingCommandDriver(AudioRoutingCommandDriver *this)
{
  *this = &unk_284A7CBE0;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

uint64_t *BBDataContextDriverInterface::BBDataContextDriverInterface(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + *(v3 - 56)) = a2[1];
  v4 = a3[1];
  result[1] = *a3;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void BBDataContextDriverInterface::~BBDataContextDriverInterface(BBDataContextDriverInterface *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 56)) = a2[1];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

std::__shared_weak_count *BBDataContextDriverInterface::getObserver@<X0>(BBDataContextDriverInterface *this@<X0>, void *a2@<X8>)
{
  result = *(this + 2);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    v5 = *(this + 1);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

{
  *a2 = 0;
  a2[1] = 0;
  result = *(this + 2);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(this + 1);
    }
  }

  return result;
}

void *CellMonitorCommandDriver::CellMonitorCommandDriver(void *a1, void *a2, NSObject **a3, uint64_t a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(v12, *MEMORY[0x277CC4628], a5);
  a1[1] = 0;
  a1[2] = 0;
  v9 = *a3;
  a1[3] = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v13);
  MEMORY[0x2383CCDD0](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_284A7D168;
  a1[6] = 0;
  a1[7] = 0;
  v10 = a2[1];
  a1[8] = *a2;
  a1[9] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[10] = a4;
  return a1;
}

void CellMonitorCommandDriver::~CellMonitorCommandDriver(CellMonitorCommandDriver *this)
{
  *this = &unk_284A7D168;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void enforceStringIsUtf8(NSObject **a1, const UInt8 *a2)
{
  v2 = a2;
  v4 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = CFStringCreateWithBytesNoCopy(0, a2, v5, 0x8000100u, 0, *MEMORY[0x277CBED00]);
  if (v6)
  {
    CFRelease(v6);
  }

  else
  {
    v7 = *a1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2374EE000, v7, OS_LOG_TYPE_DEFAULT, "#E Clearing operator name because it does not pass UTF8 check", v8, 2u);
    }

    if (v2[23] < 0)
    {
      **v2 = 0;
      *(v2 + 1) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }
}

void decodeOperatorName(NSObject **a1@<X0>, std::string::value_type **a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  v4 = a4;
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  if (a3)
  {
    if (a3 == 3)
    {
      swapAndDecodeString();
    }

    else
    {
      decodeString();
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = v7 - *a2;
    if (v8 >= 0x17)
    {
      std::string::__grow_by(a4, 0x16uLL, v8 - 22, 0, 0, 0, 0);
      v4->__r_.__value_.__l.__size_ = 0;
      a4 = v4->__r_.__value_.__r.__words[0];
      if ((v4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        a4 = v4;
      }
    }

    while (v6 != v7)
    {
      v9 = *v6++;
      a4->__r_.__value_.__s.__data_[0] = v9;
      a4 = (a4 + 1);
    }

    a4->__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      v4->__r_.__value_.__l.__size_ = v8;
    }

    else
    {
      *(&v4->__r_.__value_.__s + 23) = v8 & 0x7F;
    }

    enforceStringIsUtf8(a1, v4);
  }
}

void sub_23751437C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *ActivationCommandDriver::ActivationCommandDriver(void *a1, void *a2, NSObject **a3, uint64_t a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(v12, *MEMORY[0x277CC4628], a5);
  a1[1] = 0;
  a1[2] = 0;
  v9 = *a3;
  a1[3] = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v13);
  MEMORY[0x2383CCDD0](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_284A7D2B0;
  a1[6] = 0;
  a1[7] = 0;
  v10 = a2[1];
  a1[8] = *a2;
  a1[9] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[10] = a4;
  return a1;
}

void ActivationCommandDriver::~ActivationCommandDriver(ActivationCommandDriver *this)
{
  *this = &unk_284A7D2B0;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

_BYTE *ActivationCommandDriver::parseImei(_BYTE *this, unsigned __int8 *a2)
{
  v2 = 0;
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v3 = this[1];
  LOBYTE(v6[0]) = *this & 0xF0 | v3 & 0xF;
  do
  {
    v4 = this[v2 + 2];
    *(v6 + ++v2) = v3 & 0xF0 | v4 & 0xF;
    v3 = v4;
  }

  while (v2 != 6);
  HIBYTE(v6[0]) = this[7] | 0xF;
  *this = v6[0];
  v5 = *MEMORY[0x277D85DE8];
  return this;
}

const char *asString(int a1)
{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "kActivationState";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "kChipInfo";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "kNoAction";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "kBasebandWillBeReset";
  }
}

{
  if (a1 <= 7)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return "kBootedAssertionAcquired";
      }

      if (a1 == 4)
      {
        return "kExclusiveBasebandOperationAssertionAcquired";
      }
    }

    else
    {
      if (!a1)
      {
        return "kNone";
      }

      if (a1 == 1)
      {
        return "kPowerAssertionAcquired";
      }
    }
  }

  else if (a1 <= 31)
  {
    if (a1 == 8)
    {
      return "kPreventBasebandResetAssertionAcquired";
    }

    if (a1 == 16)
    {
      return "kTransferringFile";
    }
  }

  else
  {
    switch(a1)
    {
      case 32:
        return "kFileTransferComplete";
      case 64:
        return "kFinalizingTransaction";
      case 128:
        return "kTransactionComplete";
    }
  }

  return "??";
}

double SendFileProxy::SendFileProxy(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 11;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 97) = 0u;
  return result;
}

{
  v2 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 11;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 97) = 0u;
  return result;
}

uint64_t SendFileProxy::SendFileProxy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v8 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v8;
  }

  *(a1 + 112) = *(a2 + 112);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef((a1 + 120), (a2 + 120));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  return a1;
}

void sub_237514794(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void SendFileProxy::~SendFileProxy(SendFileProxy *this)
{
  v2 = *this;
  if (v2)
  {
    BasebandSettingsDriver::sendFile(v2, this);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(this + 15);
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t SendFileProxy::input(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 80);
  *(a1 + 72) = v4;
  *(a1 + 80) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t SendFileProxy::signature(uint64_t a1, const void **a2)
{
  v3 = (a1 + 120);
  if ((a1 + 120) != a2)
  {
    v6 = 0;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v6, a2);
    v4 = *v3;
    *v3 = v6;
    v6 = v4;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v6);
  }

  return a1;
}

void *EnhancedLQMCommandDriver::EnhancedLQMCommandDriver(void *a1, void *a2, NSObject **a3, uint64_t a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(v12, *MEMORY[0x277CC4628], a5);
  a1[1] = 0;
  a1[2] = 0;
  v9 = *a3;
  a1[3] = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v13);
  MEMORY[0x2383CCDD0](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_284A7D390;
  v10 = a2[1];
  a1[6] = *a2;
  a1[7] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = 0;
  a1[10] = 0;
  a1[8] = a4;
  return a1;
}

void EnhancedLQMCommandDriver::~EnhancedLQMCommandDriver(EnhancedLQMCommandDriver *this)
{
  *this = &unk_284A7D390;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void *ATCommandDriver::ATCommandDriver(void *a1, NSObject **a2, const char *a3)
{
  ctu::OsLogContext::OsLogContext(v7, *MEMORY[0x277CC4628], a3);
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a2;
  a1[3] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v8);
  MEMORY[0x2383CCDD0](v8);
  ctu::OsLogContext::~OsLogContext(v7);
  *a1 = &unk_284A7D4D8;
  a1[8] = 0;
  a1[7] = 0;
  a1[6] = a1 + 7;
  a1[15] = 0;
  a1[14] = 0;
  a1[12] = 0;
  a1[13] = a1 + 14;
  return a1;
}

uint64_t *ATCommandDriver::getSupportedCommands(ATCommandDriver *this)
{
  v34 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_1))
  {
    std::string::basic_string[abi:ne200100]<0>(v14, "A");
    v16 = *v14;
    v17 = v15;
    v14[1] = 0;
    v15 = 0;
    v14[0] = 0;
    v18 = 0;
    std::string::basic_string[abi:ne200100]<0>(v12, "D");
    v19 = *v12;
    v20 = v13;
    v12[1] = 0;
    v13 = 0;
    v12[0] = 0;
    v21 = 1;
    std::string::basic_string[abi:ne200100]<0>(v10, "+CHUP");
    v22 = *v10;
    v23 = v11;
    v10[1] = 0;
    v11 = 0;
    v10[0] = 0;
    v24 = 2;
    std::string::basic_string[abi:ne200100]<0>(v8, "+CEUICCPD");
    v25 = *v8;
    v26 = v9;
    v8[1] = 0;
    v9 = 0;
    v8[0] = 0;
    v27 = 5;
    std::string::basic_string[abi:ne200100]<0>(v6, "+CEUICCPM");
    v28 = *v6;
    v29 = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    v30 = 3;
    std::string::basic_string[abi:ne200100]<0>(__p, "+CEUICCPMETAI");
    v31 = *__p;
    v32 = v5;
    __p[1] = 0;
    v5 = 0;
    __p[0] = 0;
    v33 = 4;
    std::map<std::string const,ATCommandDriver::Event>::map[abi:ne200100](&v16, 6);
    for (i = 0; i != -192; i -= 32)
    {
      if (*(&v32 + i + 7) < 0)
      {
        operator delete(*(&v31 + i));
      }
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    __cxa_atexit(std::map<std::string const,ATCommandDriver::Event>::~map[abi:ne200100], &qword_2810D7950, &dword_2374EE000);
    __cxa_guard_release(&_MergedGlobals_1);
  }

  v1 = *MEMORY[0x277D85DE8];
  return &qword_2810D7950;
}

void sub_237514EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45)
{
  v47 = (v45 + 183);
  v48 = -192;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v49 -= 32;
    if (v50 < 0)
    {
      operator delete(*(v47 - 23));
    }

    v47 = v49;
    v48 += 32;
    if (!v48)
    {
      if (a14 < 0)
      {
        operator delete(__p);
      }

      if (a20 < 0)
      {
        operator delete(a15);
      }

      if (a26 < 0)
      {
        operator delete(a21);
      }

      if (a32 < 0)
      {
        operator delete(a27);
      }

      if (a38 < 0)
      {
        operator delete(a33);
      }

      if (a44 < 0)
      {
        operator delete(a39);
      }

      __cxa_guard_abort(&_MergedGlobals_1);
      _Unwind_Resume(a1);
    }
  }
}

void ATCommandDriver::~ATCommandDriver(ATCommandDriver *this)
{
  *this = &unk_284A7D4D8;
  std::__tree<std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>,std::__map_value_compare<ATCommandDriver::Event,std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>,std::less<ATCommandDriver::Event>,true>,std::allocator<std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>>>::destroy(*(this + 14));
  v2 = *(this + 12);
  if (v2 == (this + 72))
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  std::__tree<std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>,std::__map_value_compare<ATCommandDriver::Event,std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>,std::less<ATCommandDriver::Event>,true>,std::allocator<std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>>>::destroy(*(this + 7));
  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void ATCommandDriver::handleCommand_sync(ATCommandDriver *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v49 = *MEMORY[0x277D85DE8];
  v6 = a2[23];
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a2[23];
  }

  else
  {
    v8 = *(a2 + 1);
  }

  for (; v8; --v8)
  {
    a1 = __toupper(*v7);
    *v7++ = a1;
  }

  SupportedCommands = ATCommandDriver::getSupportedCommands(a1);
  v10 = qword_2810D7950;
  v11 = ATCommandDriver::getSupportedCommands(SupportedCommands);
  if (v10 == &qword_2810D7958)
  {
    ATCommandDriver::getSupportedCommands(v11);
LABEL_46:
    v24 = *(v5 + 5);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      LODWORD(v47.__r_.__value_.__l.__data_) = 136315138;
      *(v47.__r_.__value_.__r.__words + 4) = v4;
      _os_log_error_impl(&dword_2374EE000, v24, OS_LOG_TYPE_ERROR, "UnHandled AT Command (%s)", &v47, 0xCu);
    }
  }

  else
  {
    while (1)
    {
      if (*(v10 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v47, *(v10 + 32), *(v10 + 40));
      }

      else
      {
        v47 = *(v10 + 32);
      }

      v48 = *(v10 + 56);
      v12 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
      v13 = v47.__r_.__value_.__r.__words[0];
      v14 = (v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v47.__r_.__value_.__r.__words[2]) : v47.__r_.__value_.__l.__size_;
      v15 = *(v4 + 23);
      if ((v15 & 0x8000000000000000) != 0)
      {
        if (v14 == -1)
        {
LABEL_95:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v17 = *v4;
        v16 = *(v4 + 8) >= v14 ? v14 : *(v4 + 8);
      }

      else
      {
        if (v14 == -1)
        {
          goto LABEL_95;
        }

        v16 = v15 >= v14 ? v14 : *(v4 + 23);
        v17 = v4;
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v47;
      }

      else
      {
        v18 = v47.__r_.__value_.__r.__words[0];
      }

      v19 = memcmp(v17, v18, v16);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v16 == v14;
      }

      v21 = v20;
      if (v12 < 0)
      {
        operator delete(v13);
      }

      if (v21)
      {
        break;
      }

      v22 = *(v10 + 8);
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
        do
        {
          v23 = *(v10 + 16);
          v20 = *v23 == v10;
          v10 = v23;
        }

        while (!v20);
      }

      v10 = v23;
      if (v23 == &qword_2810D7958)
      {
        ATCommandDriver::getSupportedCommands(v19);
        goto LABEL_46;
      }
    }

    ATCommandDriver::getSupportedCommands(v19);
    v26 = *(v10 + 56);
    switch(v26)
    {
      case 2:
        std::__function::__value_func<void ()(at::ResultType)>::__value_func[abi:ne200100](v44, a3);
        v35 = std::map<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>::at(*(v5 + 7), 2);
        if (v35[3])
        {
          std::__function::__value_func<void ()(at::ResultType)>::__value_func[abi:ne200100](&v47, v44);
          v36 = v35[3];
          if (!v36)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v36 + 48))(v36, &v47);
          std::__function::__value_func<void ()(at::ResultType)>::~__value_func[abi:ne200100](&v47);
        }

        v29 = v44;
        goto LABEL_70;
      case 1:
        v30 = *(v4 + 23);
        if ((v30 & 0x80u) == 0)
        {
          v31 = v4;
        }

        else
        {
          v31 = *v4;
        }

        v32 = *(v10 + 55);
        if (v32 < 0)
        {
          v32 = *(v10 + 40);
        }

        if ((v30 & 0x80u) != 0)
        {
          v30 = *(v4 + 8);
        }

        if (v30 == v32)
        {
          v37 = *(v5 + 5);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v47.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_2374EE000, v37, OS_LOG_TYPE_DEFAULT, "#I ATD missing the number", &v47, 2u);
          }

          v38 = *(a3 + 24);
          v47.__r_.__value_.__s.__data_[0] = 1;
          if (!v38)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v38 + 48))(v38, &v47);
        }

        else
        {
          v33 = (v32 + v31);
          memset(&__dst, 0, sizeof(__dst));
          v34 = v30 - v32;
          if ((v30 - v32) >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v34 > 0x16)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v30 - v32;
          if (v33 != (v31 + v30))
          {
            memmove(&__dst, v33, v34);
          }

          __dst.__r_.__value_.__s.__data_[v34] = 0;
          v39 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = __dst;
          }

          std::__function::__value_func<void ()(at::ResultType)>::__value_func[abi:ne200100](v45, a3);
          if (*(v5 + 12))
          {
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v43, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              v43 = __p;
            }

            std::__function::__value_func<void ()(at::ResultType)>::__value_func[abi:ne200100](&v47, v45);
            v40 = *(v5 + 12);
            if (!v40)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v40 + 48))(v40, &v43, &v47);
            std::__function::__value_func<void ()(at::ResultType)>::~__value_func[abi:ne200100](&v47);
            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
            }
          }

          std::__function::__value_func<void ()(at::ResultType)>::~__value_func[abi:ne200100](v45);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v39 < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        break;
      case 0:
        std::__function::__value_func<void ()(at::ResultType)>::__value_func[abi:ne200100](v46, a3);
        v27 = std::map<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>::at(*(v5 + 7), 0);
        if (v27[3])
        {
          std::__function::__value_func<void ()(at::ResultType)>::__value_func[abi:ne200100](&v47, v46);
          v28 = v27[3];
          if (!v28)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v28 + 48))(v28, &v47);
          std::__function::__value_func<void ()(at::ResultType)>::~__value_func[abi:ne200100](&v47);
        }

        v29 = v46;
LABEL_70:
        std::__function::__value_func<void ()(at::ResultType)>::~__value_func[abi:ne200100](v29);
        break;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_237515640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::__function::__value_func<void ()(at::ResultType)>::~__value_func[abi:ne200100](&a29);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void ATCommandDriver::handleATProfileManagementCommand_sync(uint64_t a1, const at::ProfileManagementParameters *a2, uint64_t a3)
{
  v74[4] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  switch(v5)
  {
    case 3:
      at::ProfileManagementParameters::ProfileManagementParameters(v35, a2);
      std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::__value_func[abi:ne200100](v72, a3);
      v11 = std::map<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>::at(*(a1 + 112), 4);
      if (v11[3])
      {
        at::ProfileManagementParameters::ProfileManagementParameters(v61, v35);
        std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::__value_func[abi:ne200100](v74, v72);
        v12 = v11[3];
        if (!v12)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v12 + 48))(v12, v61, v74);
        std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::~__value_func[abi:ne200100](v74);
        if (v70 < 0)
        {
          operator delete(__p);
        }

        if (v68 < 0)
        {
          operator delete(v67);
        }

        if (v66 < 0)
        {
          operator delete(v65);
        }

        if (SHIBYTE(v64) < 0)
        {
          operator delete(*(&v63 + 1));
        }

        if (SBYTE7(v63) < 0)
        {
          operator delete(v62);
        }

        if (SHIBYTE(v61[3]) < 0)
        {
          operator delete(v61[1]);
        }
      }

      std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::~__value_func[abi:ne200100](v72);
      if (v47 < 0)
      {
        operator delete(v46);
      }

      if (v45 < 0)
      {
        operator delete(v44);
      }

      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v41 < 0)
      {
        operator delete(v40);
      }

      if (v39 < 0)
      {
        operator delete(v38);
      }

      if (v37 < 0)
      {
        v8 = v36;
        goto LABEL_91;
      }

      break;
    case 2:
      at::ProfileManagementParameters::ProfileManagementParameters(v22, a2);
      std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::__value_func[abi:ne200100](v71, a3);
      v9 = std::map<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>::at(*(a1 + 112), 5);
      if (v9[3])
      {
        at::ProfileManagementParameters::ProfileManagementParameters(v61, v22);
        std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::__value_func[abi:ne200100](v74, v71);
        v10 = v9[3];
        if (!v10)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v10 + 48))(v10, v61, v74);
        std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::~__value_func[abi:ne200100](v74);
        if (v70 < 0)
        {
          operator delete(__p);
        }

        if (v68 < 0)
        {
          operator delete(v67);
        }

        if (v66 < 0)
        {
          operator delete(v65);
        }

        if (SHIBYTE(v64) < 0)
        {
          operator delete(*(&v63 + 1));
        }

        if (SBYTE7(v63) < 0)
        {
          operator delete(v62);
        }

        if (SHIBYTE(v61[3]) < 0)
        {
          operator delete(v61[1]);
        }
      }

      std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::~__value_func[abi:ne200100](v71);
      if (v34 < 0)
      {
        operator delete(v33);
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }

      if (v30 < 0)
      {
        operator delete(v29);
      }

      if (v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 < 0)
      {
        v8 = v23;
        goto LABEL_91;
      }

      break;
    case 1:
      at::ProfileManagementParameters::ProfileManagementParameters(v48, a2);
      std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::__value_func[abi:ne200100](v73, a3);
      v6 = std::map<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>::at(*(a1 + 112), 3);
      if (v6[3])
      {
        at::ProfileManagementParameters::ProfileManagementParameters(v61, v48);
        std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::__value_func[abi:ne200100](v74, v73);
        v7 = v6[3];
        if (!v7)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v7 + 48))(v7, v61, v74);
        std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::~__value_func[abi:ne200100](v74);
        if (v70 < 0)
        {
          operator delete(__p);
        }

        if (v68 < 0)
        {
          operator delete(v67);
        }

        if (v66 < 0)
        {
          operator delete(v65);
        }

        if (SHIBYTE(v64) < 0)
        {
          operator delete(*(&v63 + 1));
        }

        if (SBYTE7(v63) < 0)
        {
          operator delete(v62);
        }

        if (SHIBYTE(v61[3]) < 0)
        {
          operator delete(v61[1]);
        }
      }

      std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::~__value_func[abi:ne200100](v73);
      if (v60 < 0)
      {
        operator delete(v59);
      }

      if (v58 < 0)
      {
        operator delete(v57);
      }

      if (v56 < 0)
      {
        operator delete(v55);
      }

      if (v54 < 0)
      {
        operator delete(v53);
      }

      if (v52 < 0)
      {
        operator delete(v51);
      }

      if (v50 < 0)
      {
        v8 = v49;
LABEL_91:
        operator delete(v8);
      }

      break;
    default:
      memset(v61, 0, sizeof(v61));
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      LOBYTE(v61[0]) = v5;
      BYTE2(v61[0]) = 1;
      v16 = 0;
      v15 = v61[0];
      v18 = 0;
      *v17 = *&v61[1];
      *v19 = 0u;
      v20 = 0;
      memset(v21, 0, sizeof(v21));
      v13 = *(a3 + 24);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13, &v15);
      v74[0] = v21;
      std::vector<VinylProfileDetails>::__destroy_vector::operator()[abi:ne200100](v74);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19[0]);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }

      v74[0] = &v63 + 1;
      std::vector<VinylProfileDetails>::__destroy_vector::operator()[abi:ne200100](v74);
      if (SBYTE7(v63) < 0)
      {
        operator delete(v62);
      }

      if (SHIBYTE(v61[3]) < 0)
      {
        v8 = v61[1];
        goto LABEL_91;
      }

      break;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_237515C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  at::ProfileManagementParameters::~ProfileManagementParameters(&STACK[0x220]);
  std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::~__value_func[abi:ne200100](v58 - 104);
  at::ProfileManagementParameters::~ProfileManagementParameters(&a58);
  _Unwind_Resume(a1);
}

void sub_237515D20(uint64_t a1, ...)
{
  va_start(va, a1);
  at::ProfileManagementResultParameters::~ProfileManagementResultParameters(va);
  at::ProfileManagementResultParameters::~ProfileManagementResultParameters(&STACK[0x220]);
  JUMPOUT(0x237515D18);
}

void at::ProfileManagementParameters::~ProfileManagementParameters(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void at::ProfileManagementResultParameters::~ProfileManagementResultParameters(void **this)
{
  v2 = this + 7;
  std::vector<VinylProfileDetails>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

at::ProfileManagementParameters *at::ProfileManagementParameters::ProfileManagementParameters(at::ProfileManagementParameters *this, const at::ProfileManagementParameters *a2)
{
  *this = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
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

  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v8 = *(a2 + 104);
    *(this + 15) = *(a2 + 15);
    *(this + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v9 = *(a2 + 8);
    *(this + 18) = *(a2 + 18);
    *(this + 8) = v9;
  }

  return this;
}

void sub_237515F4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>,std::__map_value_compare<ATCommandDriver::Event,std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>,std::less<ATCommandDriver::Event>,true>,std::allocator<std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>,std::__map_value_compare<ATCommandDriver::Event,std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>,std::less<ATCommandDriver::Event>,true>,std::allocator<std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>>>::destroy(*a1);
    std::__tree<std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>,std::__map_value_compare<ATCommandDriver::Event,std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>,std::less<ATCommandDriver::Event>,true>,std::allocator<std::__value_type<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>>>::destroy(a1[1]);
    v2 = a1[8];
    if (v2 == a1 + 5)
    {
      (*(*v2 + 32))(v2);
    }

    else if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>,std::__map_value_compare<ATCommandDriver::Event,std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>,std::less<ATCommandDriver::Event>,true>,std::allocator<std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>,std::__map_value_compare<ATCommandDriver::Event,std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>,std::less<ATCommandDriver::Event>,true>,std::allocator<std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>>>::destroy(*a1);
    std::__tree<std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>,std::__map_value_compare<ATCommandDriver::Event,std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>,std::less<ATCommandDriver::Event>,true>,std::allocator<std::__value_type<ATCommandDriver::Event,std::function<void ()(at::ProfileManagementParameters,std::function<void ()(at::ProfileManagementResultParameters)>)>>>>::destroy(a1[1]);
    v2 = a1[8];
    if (v2 == a1 + 5)
    {
      (*(*v2 + 32))(v2);
    }

    else if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    operator delete(a1);
  }
}

uint64_t std::map<std::string const,ATCommandDriver::Event>::map[abi:ne200100](uint64_t result, uint64_t a2)
{
  qword_2810D7960 = 0;
  qword_2810D7958 = 0;
  qword_2810D7950 = &qword_2810D7958;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 32 * a2);
    v5 = &qword_2810D7958;
    while (1)
    {
      if (v5 == &qword_2810D7958)
      {
        v6 = &qword_2810D7958;
      }

      else
      {
        if (v3)
        {
          do
          {
            v6 = v3;
            v3 = *(v3 + 8);
          }

          while (v3);
        }

        else
        {
          v7 = &qword_2810D7958;
          do
          {
            v6 = v7[2];
            v8 = *v6 == v7;
            v7 = v6;
          }

          while (v8);
        }

        result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 4, v2);
        v3 = qword_2810D7958;
        if ((result & 0x80) == 0)
        {
          if (qword_2810D7958)
          {
            v9 = &qword_2810D7958;
            do
            {
              while (1)
              {
                v10 = v3;
                if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, (v3 + 32)) & 0x80) == 0)
                {
                  break;
                }

                v3 = *v10;
                v9 = v10;
                if (!*v10)
                {
                  goto LABEL_22;
                }
              }

              result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10 + 4, v2);
              if ((result & 0x80) == 0)
              {
                goto LABEL_21;
              }

              v9 = v10 + 1;
              v3 = v10[1];
            }

            while (v3);
          }

LABEL_22:
          operator new();
        }
      }

      if (!v3)
      {
        goto LABEL_22;
      }

      v9 = v6 + 1;
LABEL_21:
      if (!*v9)
      {
        goto LABEL_22;
      }

      v2 += 4;
      if (v2 == v4)
      {
        return result;
      }

      v5 = qword_2810D7950;
      v3 = qword_2810D7958;
    }
  }

  return result;
}

void sub_2375162EC(_Unwind_Exception *a1)
{
  operator delete(v1);
  std::__tree<std::__value_type<PersonalityID,CallStateSummary>,std::__map_value_compare<PersonalityID,std::__value_type<PersonalityID,CallStateSummary>,std::less<PersonalityID>,true>,std::allocator<std::__value_type<PersonalityID,CallStateSummary>>>::destroy(*(v2 + 2392));
  _Unwind_Resume(a1);
}

uint64_t *std::map<ATCommandDriver::Event,std::function<void ()(std::function<void ()(at::ResultType)>)>>::at(uint64_t *a1, int a2)
{
  if (!a1)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 8);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__function::__value_func<void ()(at::ResultType)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(at::ResultType)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(at::ProfileManagementResultParameters)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *AudioCommandDriver::AudioCommandDriver(void *a1, void *a2, NSObject **a3, char *a4)
{
  ctu::OsLogContext::OsLogContext(v11, *MEMORY[0x277CC4628], a4);
  a1[1] = 0;
  a1[2] = 0;
  v8 = *a3;
  a1[3] = *a3;
  if (v8)
  {
    dispatch_retain(v8);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v12);
  MEMORY[0x2383CCDD0](v12);
  ctu::OsLogContext::~OsLogContext(v11);
  *a1 = &unk_284A7D5A8;
  v9 = a2[1];
  a1[6] = *a2;
  a1[7] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  a1[9] = 0;
  a1[10] = a4;
  return a1;
}

void AudioCommandDriver::~AudioCommandDriver(AudioCommandDriver *this)
{
  *this = &unk_284A7D5A8;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void AudioCommandDriver::bootstrap(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

const char *asString(char a1)
{
  if ((a1 - 1) > 3u)
  {
    return "kUnknown";
  }

  else
  {
    return off_278A33BC0[(a1 - 1)];
  }
}

void *DormancyCommandDriver::DormancyCommandDriver(void *a1, void *a2, uint64_t a3, char *a4, NSObject **a5)
{
  ctu::OsLogContext::OsLogContext(v12, *MEMORY[0x277CC4628], a4);
  a1[1] = 0;
  a1[2] = 0;
  v9 = *a5;
  a1[3] = *a5;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v13);
  MEMORY[0x2383CCDD0](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_284A7DB98;
  v10 = a2[1];
  a1[6] = *a2;
  a1[7] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = 0;
  a1[10] = 0;
  a1[8] = a3;
  return a1;
}

void DormancyCommandDriver::~DormancyCommandDriver(DormancyCommandDriver *this)
{
  *this = &unk_284A7DB98;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void DormancyCommandDriver::setObserver(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 80);
  *(a1 + 72) = v3;
  *(a1 + 80) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t operator++(unsigned __int8 *a1)
{
  v1 = *a1 + 1;
  *a1 = v1;
  return v1;
}

uint64_t convertBandToMaskForRat(uint64_t a1, int a2)
{
  if (a2 <= 4)
  {
    if (a2 <= 2)
    {
      if (!a2)
      {
        return ctConvertGsmBandToMask(a1);
      }

      if (a2 == 2)
      {
        return ctConvertUmtsBandToMask(a1);
      }

      return 0;
    }

    return ctConvertCdmaBandToMask(a1);
  }

  if (a2 > 8)
  {
    if (a2 == 9)
    {
      return ctConvertTdsBandToMask(a1);
    }

    if (a2 == 10)
    {
      return ctConvertNrBandToMask(a1);
    }
  }

  else
  {
    if (a2 == 5)
    {
      return ctConvertCdmaBandToMask(a1);
    }

    if (a2 == 7)
    {
      return ctConvertLteBandToMask(a1);
    }
  }

  return 0;
}

void convertMaskToBandsForRat(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  v6 = 0;
  v7 = 0;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v8 = a2 - 3;
  do
  {
    v9 = 1 << v7;
    if (((1 << v7) & a1) == 0)
    {
      goto LABEL_30;
    }

    v10 = 0;
    if (a2 > 6)
    {
      switch(a2)
      {
        case 10:
          v11 = ctConvertNR5GBandToInteger(v9);
          goto LABEL_16;
        case 9:
          v11 = ctConvertTdsBandToInteger(v9);
          goto LABEL_16;
        case 7:
          v11 = ctConvertLteBandToInteger(v9);
          goto LABEL_16;
      }
    }

    else
    {
      if (v8 < 3)
      {
        v11 = ctConvertCdmaBandToInteger(v9);
LABEL_16:
        v10 = v11;
        goto LABEL_17;
      }

      if (!a2)
      {
        v11 = ctConvertGsmBandToInteger(v9);
        goto LABEL_16;
      }

      if (a2 == 2)
      {
        v11 = ctConvertUmtsBandToInteger(v9);
        goto LABEL_16;
      }
    }

LABEL_17:
    v12 = a3[2];
    if (v6 >= v12)
    {
      v13 = *a3;
      v14 = v6 - *a3;
      v15 = v14 >> 1;
      if (v14 >> 1 <= -2)
      {
        std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
      }

      v16 = v12 - v13;
      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      v18 = v16 >= 0x7FFFFFFFFFFFFFFELL;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a3, v19);
      }

      *(2 * v15) = v10;
      v6 = (2 * v15 + 2);
      memcpy(0, v13, v14);
      v20 = *a3;
      *a3 = 0;
      a3[1] = v6;
      a3[2] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v6 = v10;
      v6 += 2;
    }

    a3[1] = v6;
LABEL_30:
    ++v7;
  }

  while (v7 != 64);
}

void sub_237516CA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *PhonebookCommandDriver::PhonebookCommandDriver(void *a1, void *a2, NSObject **a3, uint64_t a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(v12, *MEMORY[0x277CC4628], a5);
  a1[1] = 0;
  a1[2] = 0;
  v9 = *a3;
  a1[3] = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v13);
  MEMORY[0x2383CCDD0](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_284A7DCB0;
  v10 = a2[1];
  a1[6] = *a2;
  a1[7] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  a1[9] = 0;
  a1[10] = a4;
  return a1;
}

void PhonebookCommandDriver::~PhonebookCommandDriver(PhonebookCommandDriver *this)
{
  *this = &unk_284A7DCB0;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void PhonebookCommandDriver::printVector(uint64_t a1, unsigned __int8 **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = *(a1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *v2;
        *buf = 67109120;
        v9 = v6;
        _os_log_impl(&dword_2374EE000, v5, OS_LOG_TYPE_DEFAULT, "#I Array : %d", buf, 8u);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void PhonebookCommandDriver::swapPairs(int a1, std::string *this)
{
  memset(&__p, 0, sizeof(__p));
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *this;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    v5 = p_p + size;
    v6 = &p_p->__r_.__value_.__s.__data_[1];
    do
    {
      if (v5 == v6)
      {
        break;
      }

      v7 = p_p->__r_.__value_.__s.__data_[0];
      p_p->__r_.__value_.__s.__data_[0] = *v6;
      p_p = (p_p + 2);
      *v6 = v7;
      v6 += 2;
      size -= 2;
    }

    while (size);
  }

  std::string::operator=(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2375170B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PhonebookCommandDriver::decodeAdnExtended(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v53[0] = 0;
  v53[1] = 0;
  ctu::TextConverter::TextConverter(v53);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  ctu::TextConverter::setSource(v53, v5);
  ctu::TextConverter::pushConversion();
  v50 = 0;
  v51 = 0;
  v52 = 0;
  ctu::TextConverter::readChars(v53);
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &v50;
    if (v52 < 0)
    {
      v8 = v50;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&dword_2374EE000, v7, OS_LOG_TYPE_DEFAULT, "#I Hex format of the name: %s", buf, 0xCu);
  }

  if (v52 >= 0)
  {
    v9 = &v50 + HIBYTE(v52);
  }

  else
  {
    v9 = v50 + v51;
  }

  if (v52 >= 0)
  {
    v10 = &v50;
  }

  else
  {
    v10 = v50;
  }

  while (v10 != v9)
  {
    *v10 = __toupper(*v10);
    ++v10;
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = &v50;
    if (v52 < 0)
    {
      v12 = v50;
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&dword_2374EE000, v11, OS_LOG_TYPE_DEFAULT, "#I Upper case version of the name: %s", buf, 0xCu);
  }

  v49[0] = 0;
  v49[1] = 0;
  ctu::TextConverter::TextConverter(v49);
  if (v52 >= 0)
  {
    v13 = HIBYTE(v52);
  }

  else
  {
    v13 = v51;
  }

  if (v52 >= 0)
  {
    v14 = &v50;
  }

  else
  {
    v14 = v50;
  }

  ctu::TextConverter::setSource(v49, v14);
  ctu::TextConverter::pushConversion();
  v48[0] = 0;
  v48[1] = 0;
  ctu::TextConverter::TextConverter(v48);
  if (v52 >= 0)
  {
    v15 = &v50;
  }

  else
  {
    v15 = v50;
  }

  ctu::TextConverter::setSource(v48, v15);
  ctu::TextConverter::pushConversion();
  ctu::TextConverter::pushConversion();
  ctu::TextConverter::readChars(v48);
  if (v47 < 0)
  {
    operator delete(__p);
  }

  if (ctu::TextConverter::exceptionOccurred(v48))
  {
    v16 = &v50;
    if (v52 < 0)
    {
      v16 = v50;
    }

    if (*v16 != 56)
    {
      ctu::TextConverter::readChars(v49);
      if ((SBYTE7(v55) & 0x80u) == 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      v18 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v17, 0x940u);
      if (SBYTE7(v55) < 0)
      {
        operator delete(*buf);
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      *buf = 0u;
      v55 = 0u;
      if (v18)
      {
        CString = CFStringGetCString(v18, buf, 256, 0x8000100u);
        CFRelease(v18);
        if (CString)
        {
          v20 = *(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *v45 = 0;
            _os_log_impl(&dword_2374EE000, v20, OS_LOG_TYPE_DEFAULT, "#I Decoding with KSC5601 coding scheme", v45, 2u);
          }

          ctu::TextConverter::popConversion(v49);
          strlen(buf);
          ctu::TextConverter::setSource(v49, buf);
          goto LABEL_70;
        }
      }

      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        _os_log_impl(&dword_2374EE000, v21, OS_LOG_TYPE_DEFAULT, "#N Parser error when trying to decode with KSC5601 coding scheme", v45, 2u);
      }

      if (v52 >= 0)
      {
        v22 = &v50;
      }

      else
      {
        v22 = v50;
      }

      ctu::TextConverter::setSource(v49, v22);
    }
  }

  if (v13 < 2)
  {
    goto LABEL_67;
  }

  v23 = HIBYTE(v52);
  if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
    if (v50 == 56)
    {
      v24 = &v50;
      goto LABEL_59;
    }

LABEL_67:
    v28 = *(a1 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2374EE000, v28, OS_LOG_TYPE_DEFAULT, "#I Not UCS2, decoding it with 8-bit coding scheme", buf, 2u);
    }

LABEL_69:
    ctu::TextConverter::pushConversion();
    ctu::TextConverter::pushConversion();
    goto LABEL_70;
  }

  v24 = v50;
  if (*v50 != 56)
  {
    goto LABEL_67;
  }

LABEL_59:
  v25 = v24[1];
  if (v25 == 50)
  {
    if (v13 >= 8)
    {
      v34 = v50;
      if (v52 >= 0)
      {
        v34 = &v50;
      }

      v35 = ctu::TextConverter::decodeHexString((v34 + 2), 2);
      v36 = *(a1 + 40);
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (((v13 >> 1) - 4) < v35)
      {
        if (v37)
        {
          *buf = 0;
          _os_log_impl(&dword_2374EE000, v36, OS_LOG_TYPE_DEFAULT, "#N Parser error in length when trying to decode with UCS2 with header 82", buf, 2u);
        }

        goto LABEL_79;
      }

      if (v37)
      {
        *buf = 0;
        _os_log_impl(&dword_2374EE000, v36, OS_LOG_TYPE_DEFAULT, "#I Decoding with UCS2 0x82 header coding scheme", buf, 2u);
      }

      if (v52 >= 0)
      {
        v42 = &v51;
      }

      else
      {
        v42 = v50 + 8;
      }

      ctu::TextConverter::setSource(v49, v42);
      if (v52 >= 0)
      {
        v43 = &v50;
      }

      else
      {
        v43 = v50;
      }

      ctu::TextConverter::decodeHexString((v43 + 4), 2);
      if (v52 >= 0)
      {
        v44 = &v50;
      }

      else
      {
        v44 = v50;
      }

      ctu::TextConverter::decodeHexString((v44 + 6), 2);
      ctu::TextConverter::pushConversion();
      ctu::TextConverter::pushConversion();
      goto LABEL_70;
    }

    v38 = *(a1 + 40);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v39 = "#N Parser error when trying to decode with UCS2 with header 82";
      goto LABEL_91;
    }

LABEL_79:
    ctu::TextConverter::setSource(v49, 0);
    goto LABEL_70;
  }

  if (v25 != 49)
  {
    if (v25 != 48)
    {
      goto LABEL_70;
    }

    v26 = *(a1 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2374EE000, v26, OS_LOG_TYPE_DEFAULT, "#I Decoding with UCS2 0x80 header coding scheme", buf, 2u);
      v23 = HIBYTE(v52);
    }

    v27 = &v50;
    if (v23 < 0)
    {
      v27 = v50;
    }

    ctu::TextConverter::setSource(v49, v27 + 2);
    goto LABEL_69;
  }

  if (v13 < 6)
  {
    v38 = *(a1 + 40);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v39 = "#N Parser error when trying to decode with UCS2 with header 81";
LABEL_91:
      _os_log_impl(&dword_2374EE000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 2u);
      goto LABEL_79;
    }

    goto LABEL_79;
  }

  v30 = v50;
  if (v52 >= 0)
  {
    v30 = &v50;
  }

  v31 = ctu::TextConverter::decodeHexString((v30 + 2), 2);
  v32 = *(a1 + 40);
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if (((v13 >> 1) - 3) < v31)
  {
    if (v33)
    {
      *buf = 0;
      _os_log_impl(&dword_2374EE000, v32, OS_LOG_TYPE_DEFAULT, "#N Parser error in length when trying to decode with UCS2 with header 81", buf, 2u);
    }

    goto LABEL_79;
  }

  if (v33)
  {
    *buf = 0;
    _os_log_impl(&dword_2374EE000, v32, OS_LOG_TYPE_DEFAULT, "#I Decoding with UCS2 0x81 header coding scheme", buf, 2u);
  }

  if (v52 >= 0)
  {
    v40 = &v50;
  }

  else
  {
    v40 = v50;
  }

  ctu::TextConverter::setSource(v49, v40 + 6);
  if (v52 >= 0)
  {
    v41 = &v50;
  }

  else
  {
    v41 = v50;
  }

  ctu::TextConverter::decodeHexString((v41 + 4), 2);
  ctu::TextConverter::pushConversion();
  ctu::TextConverter::pushConversion();
LABEL_70:
  ctu::TextConverter::~TextConverter(v48);
  ctu::TextConverter::readChars(v49);
  ctu::TextConverter::~TextConverter(v49);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v50);
  }

  ctu::TextConverter::~TextConverter(v53);
  v29 = *MEMORY[0x277D85DE8];
}

void sub_23751793C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  ctu::TextConverter::~TextConverter(&a14);
  ctu::TextConverter::~TextConverter(&a16);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  ctu::TextConverter::~TextConverter(&a24);
  _Unwind_Resume(a1);
}

void PhonebookCommandDriver::convertToString(uint64_t a1@<X0>, char **a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 > 0x16)
  {
    operator new();
  }

  *(a3 + 23) = v6;
  v8 = a3;
  while (v4 != v5)
  {
    v9 = *v4++;
    *v8++ = v9;
  }

  *v8 = 0;
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a3 + 23);
    if ((v11 & 0x80u) == 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if ((v11 & 0x80u) != 0)
    {
      v11 = a3[1];
    }

    v14 = 136315394;
    v15 = v12;
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_2374EE000, v10, OS_LOG_TYPE_DEFAULT, "#I Converted from vector: %s, with size: %ld", &v14, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void PhonebookCommandDriver::decodeName(uint64_t a1@<X0>, char **a2@<X1>, uint64_t *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  PhonebookCommandDriver::convertToString(a1, a2, __p);
  PhonebookCommandDriver::decodeAdnExtended(a1, __p);
  v5 = *(a1 + 40);
  *a3 = *buf;
  a3[2] = v11;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&dword_2374EE000, v5, OS_LOG_TYPE_DEFAULT, "#I Decoded string: %s", buf, 0xCu);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_237517C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PhonebookCommandDriver::getVectorForString(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v9;
    _os_log_impl(&dword_2374EE000, v8, OS_LOG_TYPE_DEFAULT, "#I Converting %s to vector", &buf, 0xCu);
  }

  memset(&buf, 0, sizeof(buf));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *a2, *(a2 + 8));
  }

  else
  {
    buf = *a2;
  }

  if (a3)
  {
    v25[0] = 0;
    v25[1] = 0;
    ctu::TextConverter::TextConverter(v25);
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    ctu::TextConverter::setSource(v25, v11);
    ctu::TextConverter::pushConversion();
    ctu::TextConverter::pushConversion();
    Chars = ctu::TextConverter::readChars(v25);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    buf = v26;
    PhonebookCommandDriver::swapPairs(Chars, &buf);
    ctu::TextConverter::~TextConverter(v25);
  }

  v14 = 0;
  v15 = 0;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  while (1)
  {
    v16 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= SHIBYTE(buf.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_38;
    }

LABEL_24:
    p_buf = buf.__r_.__value_.__r.__words[0];
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    v18 = p_buf->__r_.__value_.__s.__data_[v15];
    v19 = a4[2];
    if (v14 >= v19)
    {
      v20 = v14;
      v21 = (v14 + 1);
      if ((v14 + 1) < 0)
      {
        *a4 = 0;
        std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
      }

      if (2 * v19 > v21)
      {
        v21 = 2 * v19;
      }

      if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        operator new();
      }

      *v14++ = v18;
      memcpy(0, 0, v20);
      a4[1] = v20 + 1;
      a4[2] = 0;
    }

    else
    {
      *v14++ = v18;
    }

    a4[1] = v14;
    ++v15;
  }

  if (v15 < buf.__r_.__value_.__l.__size_)
  {
    goto LABEL_24;
  }

LABEL_38:
  *a4 = 0;
  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v26.__r_.__value_.__l.__data_) = 134217984;
    *(v26.__r_.__value_.__r.__words + 4) = v14;
    _os_log_impl(&dword_2374EE000, v23, OS_LOG_TYPE_DEFAULT, "#I Vector size: %ld", &v26, 0xCu);
    v16 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  if (v16 < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v24 = *MEMORY[0x277D85DE8];
}

BOOL operator==(void *a1, void *a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  v8 = v3 == v2 || v6 == v5;
  if (v8)
  {
    v9 = v6;
    v10 = v3;
    return v10 == v2 && v9 == v5;
  }

  else
  {
    while (*(v3 + 7) == *(v6 + 7) && *(v3 + 8) == *(v6 + 8))
    {
      v14 = v3[1];
      if (v14)
      {
        do
        {
          v10 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v8 = *v10 == v3;
          v3 = v10;
        }

        while (!v8);
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v9 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v8 = *v9 == v6;
          v6 = v9;
        }

        while (!v8);
      }

      if (v10 != v2)
      {
        v3 = v10;
        v6 = v9;
        if (v9 != v5)
        {
          continue;
        }
      }

      return v10 == v2 && v9 == v5;
    }

    return 0;
  }
}

{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  v8 = v3 == v2 || v6 == v5;
  if (v8)
  {
    v9 = v6;
    v10 = v3;
    return v10 == v2 && v9 == v5;
  }

  else
  {
    while (*(v3 + 7) == *(v6 + 7) && *(v3 + 8) == *(v6 + 8))
    {
      v14 = v3[1];
      if (v14)
      {
        do
        {
          v10 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v8 = *v10 == v3;
          v3 = v10;
        }

        while (!v8);
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v9 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v8 = *v9 == v6;
          v6 = v9;
        }

        while (!v8);
      }

      if (v10 != v2)
      {
        v3 = v10;
        v6 = v9;
        if (v9 != v5)
        {
          continue;
        }
      }

      return v10 == v2 && v9 == v5;
    }

    return 0;
  }
}

BOOL operator!=(void *a1, void *a2)
{
  return !operator==(a1, a2);
}

{
  return !operator==(a2, a1);
}

void read_rest_value(MNC *a1, const xpc::object *a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  xpc::dyn_cast_or_default();
  MEMORY[0x2383CCD70](v4, &v2);
  MCC::operator=();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }
}

void sub_237518228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void write_rest_value(const GsmCell *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v28 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v28 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v28 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v28 = v6;
LABEL_9:
  xpc_release(v5);
  v26 = xpc_int64_create(*a1);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v24 = &v28;
  v25 = "index";
  xpc::dict::object_proxy::operator=(&v24, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  write_rest_value((a1 + 8), &v22);
  v24 = &v28;
  v25 = "mcc";
  xpc::dict::object_proxy::operator=(&v24, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  write_rest_value((a1 + 40), &object);
  v24 = &v28;
  v25 = "mnc";
  xpc::dict::object_proxy::operator=(&v24, &object, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(object);
  object = 0;
  v18 = xpc_int64_create(*(a1 + 72));
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v24 = &v28;
  v25 = "bandinfo";
  xpc::dict::object_proxy::operator=(&v24, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  v16 = xpc_int64_create(*(a1 + 37));
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v24 = &v28;
  v25 = "areacode";
  xpc::dict::object_proxy::operator=(&v24, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_int64_create(*(a1 + 38));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v24 = &v28;
  v25 = "cellid";
  xpc::dict::object_proxy::operator=(&v24, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v12 = xpc_int64_create(*(a1 + 39));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v24 = &v28;
  v25 = "arfcn";
  xpc::dict::object_proxy::operator=(&v24, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_int64_create(*(a1 + 20));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v24 = &v28;
  v25 = "lat";
  xpc::dict::object_proxy::operator=(&v24, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(*(a1 + 21));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v24 = &v28;
  v25 = "long";
  xpc::dict::object_proxy::operator=(&v24, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v28;
  *a2 = v28;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v28);
}

void write_rest_value(unsigned __int16 *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v30 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v30 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v30 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v30 = v6;
LABEL_9:
  xpc_release(v5);
  v28 = xpc_int64_create(*a1);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "index";
  xpc::dict::object_proxy::operator=(&v26, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  write_rest_value((a1 + 4), &v24);
  v26 = &v30;
  v27 = "mcc";
  xpc::dict::object_proxy::operator=(&v26, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  write_rest_value((a1 + 20), &v22);
  v26 = &v30;
  v27 = "mnc";
  xpc::dict::object_proxy::operator=(&v26, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  v20 = xpc_int64_create(*(a1 + 72));
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "bandinfo";
  xpc::dict::object_proxy::operator=(&v26, &v20, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v20);
  v20 = 0;
  v18 = xpc_int64_create(a1[37]);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "areacode";
  xpc::dict::object_proxy::operator=(&v26, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  v16 = xpc_int64_create(*(a1 + 19));
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "cellid";
  xpc::dict::object_proxy::operator=(&v26, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_int64_create(a1[40]);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "uarfcn";
  xpc::dict::object_proxy::operator=(&v26, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v12 = xpc_int64_create(a1[41]);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "scn";
  xpc::dict::object_proxy::operator=(&v26, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_int64_create(*(a1 + 21));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "lat";
  xpc::dict::object_proxy::operator=(&v26, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(*(a1 + 22));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "long";
  xpc::dict::object_proxy::operator=(&v26, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v30;
  *a2 = v30;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v30);
}

{
  v30 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v30 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v30 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v30 = v6;
LABEL_9:
  xpc_release(v5);
  v28 = xpc_int64_create(*a1);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "index";
  xpc::dict::object_proxy::operator=(&v26, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  write_rest_value((a1 + 4), &v24);
  v26 = &v30;
  v27 = "mcc";
  xpc::dict::object_proxy::operator=(&v26, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  write_rest_value((a1 + 20), &v22);
  v26 = &v30;
  v27 = "mnc";
  xpc::dict::object_proxy::operator=(&v26, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  v20 = xpc_int64_create(*(a1 + 72));
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "bandinfo";
  xpc::dict::object_proxy::operator=(&v26, &v20, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v20);
  v20 = 0;
  v18 = xpc_int64_create(a1[37]);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "areacode";
  xpc::dict::object_proxy::operator=(&v26, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  v16 = xpc_int64_create(*(a1 + 19));
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "cellid";
  xpc::dict::object_proxy::operator=(&v26, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_int64_create(a1[40]);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "uarfcn";
  xpc::dict::object_proxy::operator=(&v26, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v12 = xpc_int64_create(a1[41]);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "cell_param";
  xpc::dict::object_proxy::operator=(&v26, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_int64_create(*(a1 + 21));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "lat";
  xpc::dict::object_proxy::operator=(&v26, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(*(a1 + 22));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "long";
  xpc::dict::object_proxy::operator=(&v26, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v30;
  *a2 = v30;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v30);
}

{
  v32 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v32 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v32 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v32 = v6;
LABEL_9:
  xpc_release(v5);
  v30 = xpc_int64_create(*a1);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "index";
  xpc::dict::object_proxy::operator=(&v28, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  write_rest_value((a1 + 4), &v26);
  v28 = &v32;
  v29 = "mcc";
  xpc::dict::object_proxy::operator=(&v28, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  write_rest_value((a1 + 20), &v24);
  v28 = &v32;
  v29 = "mnc";
  xpc::dict::object_proxy::operator=(&v28, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  object = xpc_int64_create(*(a1 + 72));
  if (!object)
  {
    object = xpc_null_create();
  }

  v28 = &v32;
  v29 = "bandinfo";
  xpc::dict::object_proxy::operator=(&v28, &object, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(object);
  object = 0;
  v20 = xpc_int64_create(*(a1 + 19));
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "areacode";
  xpc::dict::object_proxy::operator=(&v28, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  v18 = xpc_int64_create(*(a1 + 20));
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "cellid";
  xpc::dict::object_proxy::operator=(&v28, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  v16 = xpc_int64_create(*(a1 + 21));
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "earfcn";
  xpc::dict::object_proxy::operator=(&v28, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_int64_create(a1[44]);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "pid";
  xpc::dict::object_proxy::operator=(&v28, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v12 = xpc_int64_create(*(a1 + 23));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "lat";
  xpc::dict::object_proxy::operator=(&v28, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_int64_create(*(a1 + 24));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "long";
  xpc::dict::object_proxy::operator=(&v28, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(*(a1 + 100));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "bandwidth";
  xpc::dict::object_proxy::operator=(&v28, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v32;
  *a2 = v32;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v32);
}

{
  v32 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v32 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v32 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v32 = v6;
LABEL_9:
  xpc_release(v5);
  v30 = xpc_int64_create(*a1);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "index";
  xpc::dict::object_proxy::operator=(&v28, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  write_rest_value((a1 + 4), &v26);
  v28 = &v32;
  v29 = "mcc";
  xpc::dict::object_proxy::operator=(&v28, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  write_rest_value((a1 + 20), &v24);
  v28 = &v32;
  v29 = "mnc";
  xpc::dict::object_proxy::operator=(&v28, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  object = xpc_int64_create(a1[36]);
  if (!object)
  {
    object = xpc_null_create();
  }

  v28 = &v32;
  v29 = "bandinfo";
  xpc::dict::object_proxy::operator=(&v28, &object, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(object);
  object = 0;
  v20 = xpc_int64_create(*(a1 + 19));
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "areacode";
  xpc::dict::object_proxy::operator=(&v28, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  v18 = xpc_uint64_create(*(a1 + 10));
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "cellid";
  xpc::dict::object_proxy::operator=(&v28, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  v16 = xpc_int64_create(*(a1 + 22));
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "nrarfcn";
  xpc::dict::object_proxy::operator=(&v28, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_int64_create(a1[46]);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "pid";
  xpc::dict::object_proxy::operator=(&v28, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v12 = xpc_int64_create(*(a1 + 24));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "lat";
  xpc::dict::object_proxy::operator=(&v28, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_int64_create(*(a1 + 25));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "long";
  xpc::dict::object_proxy::operator=(&v28, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(a1[52]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v28 = &v32;
  v29 = "bandwidth";
  xpc::dict::object_proxy::operator=(&v28, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v32;
  *a2 = v32;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v32);
}

{
  v38 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v38 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v38 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v38 = v6;
LABEL_9:
  xpc_release(v5);
  v36 = xpc_int64_create(*a1);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "index";
  xpc::dict::object_proxy::operator=(&v34, &v36, &v37);
  xpc_release(v37);
  v37 = 0;
  xpc_release(v36);
  v36 = 0;
  write_rest_value((a1 + 4), &v32);
  v34 = &v38;
  v35 = "mcc";
  xpc::dict::object_proxy::operator=(&v34, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  write_rest_value((a1 + 20), &v30);
  v34 = &v38;
  v35 = "mnc";
  xpc::dict::object_proxy::operator=(&v34, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  v28 = xpc_int64_create(*(a1 + 72));
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "bandclass";
  xpc::dict::object_proxy::operator=(&v34, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v26 = xpc_int64_create(a1[37]);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "chan";
  xpc::dict::object_proxy::operator=(&v34, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = xpc_int64_create(a1[38]);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "sid";
  xpc::dict::object_proxy::operator=(&v34, &v24, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v24);
  v24 = 0;
  v22 = xpc_int64_create(a1[39]);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "nid";
  xpc::dict::object_proxy::operator=(&v34, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  v20 = xpc_int64_create(a1[40]);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "baseid";
  xpc::dict::object_proxy::operator=(&v34, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  v18 = xpc_int64_create(*(a1 + 21));
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "lat";
  xpc::dict::object_proxy::operator=(&v34, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  v16 = xpc_int64_create(*(a1 + 22));
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "long";
  xpc::dict::object_proxy::operator=(&v34, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_int64_create(a1[46]);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "zoneid";
  xpc::dict::object_proxy::operator=(&v34, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v12 = xpc_int64_create(a1[47]);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "pnoffset";
  xpc::dict::object_proxy::operator=(&v34, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_int64_create(*(a1 + 96));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "ltmoffset";
  xpc::dict::object_proxy::operator=(&v34, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(*(a1 + 97));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v34 = &v38;
  v35 = "daylight";
  xpc::dict::object_proxy::operator=(&v34, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v38;
  *a2 = v38;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v38);
}

{
  v26 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v26 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v26 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v26 = v6;
LABEL_9:
  xpc_release(v5);
  v24 = xpc_int64_create(*a1);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "index";
  xpc::dict::object_proxy::operator=(&v22, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  write_rest_value((a1 + 4), &v20);
  v22 = &v26;
  v23 = "mcc";
  xpc::dict::object_proxy::operator=(&v22, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  v18 = xpc_int64_create(*(a1 + 40));
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "bandclass";
  xpc::dict::object_proxy::operator=(&v22, &v18, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  v16 = xpc_int64_create(a1[21]);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "chan";
  xpc::dict::object_proxy::operator=(&v22, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_data_create(a1 + 22, 0x10uLL);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "sectorid";
  xpc::dict::object_proxy::operator=(&v22, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v12 = xpc_int64_create(*(a1 + 15));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "lat";
  xpc::dict::object_proxy::operator=(&v22, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_int64_create(*(a1 + 16));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "long";
  xpc::dict::object_proxy::operator=(&v22, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(a1[34]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "pnoffset";
  xpc::dict::object_proxy::operator=(&v22, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v26;
  *a2 = v26;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v26);
}

void read_rest_value(GsmCell *a1, xpc_object_t *a2)
{
  v12 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v12 && MEMORY[0x2383CD810](v12) == v3)
  {
    xpc_retain(v12);
  }

  else
  {
    v12 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v3)
  {
    v5 = &v12;
    v6[0] = "index";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "mcc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 8), &object);
    xpc_release(object);
    v5 = &v12;
    v6[0] = "mnc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 40), &object);
    xpc_release(object);
    v5 = &v12;
    v6[0] = "bandinfo";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 72) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "areacode";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 37) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "cellid";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 38) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "arfcn";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 39) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "lat";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 20) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "long";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 21) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    LOWORD(v5) = 0;
    MCC::MCC(v6);
    MNC::MNC(&v8);
    LOBYTE(v11) = 0;
    *(&v11 + 2) = 0;
    *(&v11 + 1) = 0;
    *a1 = 0;
    MCC::operator=();
    MCC::operator=();
    *(a1 + 72) = v11;
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (v7 < 0)
    {
      operator delete(v6[1]);
    }
  }

  xpc_release(v12);
}

void sub_23751A680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  xpc_release(object);
  xpc_release(*(v18 - 40));
  _Unwind_Resume(a1);
}

void GsmCell::~GsmCell(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void read_rest_value(uint64_t a1, xpc_object_t *a2)
{
  v12 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v12 && MEMORY[0x2383CD810](v12) == v3)
  {
    xpc_retain(v12);
  }

  else
  {
    v12 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v3)
  {
    v5 = &v12;
    v6[0] = "index";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "mcc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 8), &object);
    xpc_release(object);
    v5 = &v12;
    v6[0] = "mnc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 40), &object);
    xpc_release(object);
    v5 = &v12;
    v6[0] = "bandinfo";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 72) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "areacode";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 74) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "cellid";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 76) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "uarfcn";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 80) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "scn";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 82) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "lat";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 84) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "long";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 88) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    LOWORD(v5) = 0;
    MCC::MCC(v6);
    MNC::MNC(&v8);
    v11[0] = 0;
    memset(&v11[2], 0, 18);
    *a1 = 0;
    MCC::operator=();
    MCC::operator=();
    *(a1 + 72) = *v11;
    *(a1 + 88) = *&v11[16];
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (v7 < 0)
    {
      operator delete(v6[1]);
    }
  }

  xpc_release(v12);
}

{
  v12 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v12 && MEMORY[0x2383CD810](v12) == v3)
  {
    xpc_retain(v12);
  }

  else
  {
    v12 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v3)
  {
    v5 = &v12;
    v6[0] = "index";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "mcc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 8), &object);
    xpc_release(object);
    v5 = &v12;
    v6[0] = "mnc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 40), &object);
    xpc_release(object);
    v5 = &v12;
    v6[0] = "bandinfo";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 72) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "areacode";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 74) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "cellid";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 76) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "uarfcn";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 80) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "cell_param";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 82) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "lat";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 84) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "long";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 88) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    LOWORD(v5) = 0;
    MCC::MCC(v6);
    MNC::MNC(&v8);
    v11[0] = 0;
    memset(&v11[2], 0, 18);
    *a1 = 0;
    MCC::operator=();
    MCC::operator=();
    *(a1 + 72) = *v11;
    *(a1 + 88) = *&v11[16];
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (v7 < 0)
    {
      operator delete(v6[1]);
    }
  }

  xpc_release(v12);
}

{
  v14 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v14 && MEMORY[0x2383CD810](v14) == v3)
  {
    xpc_retain(v14);
  }

  else
  {
    v14 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v3)
  {
    v5 = &v14;
    v6[0] = "index";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "mcc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 8), &object);
    xpc_release(object);
    v5 = &v14;
    v6[0] = "mnc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 40), &object);
    xpc_release(object);
    v5 = &v14;
    v6[0] = "bandinfo";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 72) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "areacode";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 76) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "cellid";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 80) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "earfcn";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 84) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "pid";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 88) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "lat";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 92) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "long";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 96) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "bandwidth";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 100) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    LOWORD(v5) = 0;
    MCC::MCC(v6);
    MNC::MNC(&v8);
    v11[0] = 0;
    LODWORD(v12) = 0;
    BYTE4(v12) = 0;
    DWORD2(v12) = 0;
    WORD6(v12) = 0;
    v13 = 0;
    *&v11[4] = 0;
    *&v11[10] = 0;
    *&v11[20] = 0;
    *&v11[27] = 0;
    *a1 = 0;
    MCC::operator=();
    MCC::operator=();
    *(a1 + 72) = *v11;
    *(a1 + 88) = *&v11[16];
    *(a1 + 104) = v12;
    *(a1 + 120) = v13;
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (v7 < 0)
    {
      operator delete(v6[1]);
    }
  }

  xpc_release(v14);
}

{
  v14 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v14 && MEMORY[0x2383CD810](v14) == v3)
  {
    xpc_retain(v14);
  }

  else
  {
    v14 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v3)
  {
    v5 = &v14;
    v6[0] = "index";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "mcc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 8), &object);
    xpc_release(object);
    v5 = &v14;
    v6[0] = "mnc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 40), &object);
    xpc_release(object);
    v5 = &v14;
    v6[0] = "bandinfo";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 72) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "areacode";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 76) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "cellid";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 80) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "nrarfcn";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 88) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "pid";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 92) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "lat";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 96) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "long";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 100) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v14;
    v6[0] = "bandwidth";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 104) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    LOWORD(v5) = 0;
    MCC::MCC(v6);
    MNC::MNC(&v8);
    *v11 = 0;
    *&v11[36] = 0;
    v11[40] = 0;
    *&v11[44] = 0;
    LOWORD(v12) = 0;
    memset(&v11[4], 0, 18);
    *&v11[24] = 0;
    *&v11[31] = 0;
    DWORD1(v12) = 3;
    *(&v12 + 1) = 0;
    v13 = 0;
    *a1 = 0;
    MCC::operator=();
    MCC::operator=();
    *(a1 + 88) = *&v11[16];
    *(a1 + 104) = *&v11[32];
    *(a1 + 120) = v12;
    *(a1 + 136) = v13;
    *(a1 + 72) = *v11;
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (v7 < 0)
    {
      operator delete(v6[1]);
    }
  }

  xpc_release(v14);
}

{
  v12 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v12 && MEMORY[0x2383CD810](v12) == v3)
  {
    xpc_retain(v12);
  }

  else
  {
    v12 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v3)
  {
    v5 = &v12;
    v6[0] = "index";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "mcc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 8), &object);
    xpc_release(object);
    v5 = &v12;
    v6[0] = "mnc";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    read_rest_value((a1 + 40), &object);
    xpc_release(object);
    v5 = &v12;
    v6[0] = "bandclass";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 72) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "chan";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 74) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "sid";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 76) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "nid";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 78) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "baseid";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 80) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "lat";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 84) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "long";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 88) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "zoneid";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 92) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "pnoffset";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 94) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "ltmoffset";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 96) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v12;
    v6[0] = "daylight";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 97) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    LOWORD(v5) = 0;
    MCC::MCC(v6);
    MNC::MNC(&v8);
    v11[0] = 0;
    *&v11[2] = 0;
    *&v11[12] = 0;
    *&v11[18] = 0;
    *a1 = 0;
    MCC::operator=();
    MCC::operator=();
    *(a1 + 72) = *v11;
    *(a1 + 82) = *&v11[10];
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (v7 < 0)
    {
      operator delete(v6[1]);
    }
  }

  xpc_release(v12);
}