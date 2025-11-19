void __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (v3)
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    (*(*v3 + 8))(v3, v2[30], *(a1 + 64), &__p);
    (*(v2[11] + 16))();
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = v2[30];
    v5 = *(a1 + 64);
    v6 = *(v2[11] + 16);

    v6();
  }
}

void sub_241A47F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BasebandTransport *___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_79(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 236) == 1)
  {
    return BasebandTransport::queueRead_sync(result);
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17BasebandTransport12timerOn_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (!v6)
      {
LABEL_15:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        return;
      }

      v7 = *(v3 + 280);
      v8 = *(v3 + 320);
      v9 = *(v3 + 288) - *(v3 + 328);
      v11 = *(v3 + 288) == *(v3 + 328);
      *(v3 + 296) = v7 - v8;
      *(v3 + 304) = v9;
      v10 = (v3 + 272);
      v11 = v11 && v7 == v8;
      if (v11)
      {
        v12 = 3;
      }

      else
      {
        if (*v10 != 3)
        {
LABEL_12:
          v13 = *(v3 + 288);
          *(v3 + 312) = *v10;
          *(v3 + 328) = v13;
          *(v3 + 344) = *(v3 + 304);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 1174405120;
          block[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2;
          block[3] = &__block_descriptor_tmp_83;
          block[4] = v3;
          block[5] = v6;
          v16 = v4;
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          dispatch_async(*(v3 + 96), block);
          v14 = v16;
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }

          goto LABEL_15;
        }

        v12 = 1;
      }

      *v10 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 216);
  v10 = *(v5 + 344);
  v7 = *(v5 + 328);
  v9[0] = *(v5 + 312);
  v9[1] = v7;
  return (*(v6 + 16))(v6, v9, a3, a4, a5);
}

void BasebandTransport::getStatus(BasebandTransport *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAA0000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  v4[0] = a2;
  v4[1] = this;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_109;
  block[4] = this + 8;
  block[5] = v4;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void ___ZN17BasebandTransport9dumpStateEb_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  *(v2 + 296) = vsubq_s64(*(v2 + 280), *(v2 + 320));
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Parameters::toString(__p, (v2 + 48));
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v10 = v4;
    _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(v2 + 40);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Status::toString(__p, (v2 + 272));
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (*(a1 + 40) != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (*(a1 + 40) == 1)
  {
LABEL_14:
    *(v2 + 272) = 0;
    *(v2 + 276) = 0;
    *(v2 + 320) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 280) = 0u;
    *(v2 + 296) = 0u;
    *(v2 + 309) = 0;
    BasebandTransport::timerOn_sync(v2);
  }

LABEL_15:
  v6 = *MEMORY[0x277D85DE8];
}

void BasebandTransport::reportStatus(uint64_t a1, int a2, void **a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1174405120;
  v7[2] = ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_88;
  v7[4] = a1;
  v9 = a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  aBlock = v4;
  v10 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_99;
  block[4] = a1 + 8;
  block[5] = &v10;
  v5 = *(a1 + 24);
  if (!*(a1 + 32))
  {
    dispatch_sync(v5, block);
    v6 = aBlock;
    if (!aBlock)
    {
      return;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v5, block);
  v6 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v6);
  }
}

void ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 232) = v1;
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 216);
  *(v3 + 216) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  BasebandTransport::timerOn_sync(v3);
}

void *__copy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::function<void ()(dispatch_workloop_s *)>::~function(uint64_t a1)
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

void std::__shared_ptr_pointer<BasebandTransportMAV *,std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV *)#1},std::allocator<BasebandTransportMAV>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransportMAV *,std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV *)#1},std::allocator<BasebandTransportMAV>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV*)#1}::operator() const(BasebandTransportMAV*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void std::__shared_ptr_pointer<BasebandTransportICE *,std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE *)#1},std::allocator<BasebandTransportICE>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransportICE *,std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE *)#1},std::allocator<BasebandTransportICE>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE*)#1}::operator() const(BasebandTransportICE*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport*)#1}::operator() const(BasebandTransport*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v4 = a1[5];
  v2 = *(a1 + 1);
  v3 = *(a1 + 3);
  (*(*a1 + 2))();
  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_241A489DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
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

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v2 = *(a1 + 4);
  v3 = a1[1];
  (*(*a1 + 2))();
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_241A48AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v2 = a1[1];
  v3 = *(a1 + 4);
  (*(*a1 + 2))();
  if ((*(a1 + 20) & 1) == 0)
  {
    free(a1[1]);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_241A48B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2853A32F8;
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

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2853A3338;
  return result;
}

uint64_t std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17BasebandTransport12openPCI_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17BasebandTransport12openPCI_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *v1;
  v2 = v1[1];
  result = *(v2 + 272);
  v5 = *(v2 + 288);
  *(v3 + 32) = *(v2 + 304);
  *v3 = result;
  *(v3 + 16) = v5;
  return result;
}

uint64_t TraceDataRateObserver::TraceDataRateObserver(uint64_t a1, uint64_t a2)
{
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v5 = dispatch_queue_create_with_target_V2("TraceDataRateObserver", initially_inactive, 0);
  dispatch_set_qos_class_floor(v5, QOS_CLASS_UTILITY, 0);
  dispatch_activate(v5);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    *(a1 + 24) = 0;
    dispatch_release(v5);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 32), "com.apple.telephony.abm", "trace.data.rate.observer");
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = *a2;
  v6 = *(a2 + 32);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (v6 != a2 + 8)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_7:
    *(a1 + 104) = v6;
    return a1;
  }

  *(a1 + 104) = a1 + 80;
  (*(**(a2 + 32) + 24))(*(a2 + 32));
  return a1;
}

void sub_241A4900C(_Unwind_Exception *a1)
{
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v3);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v2);
  MEMORY[0x245CF5550](v1 + 4);
  ctu::SharedSynchronizable<TCP>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void TraceDataRateObserver::create(int *a1@<X0>, TraceDataRateObserver **a2@<X8>)
{
  if (*a1)
  {
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    a2[1] = 0xAAAAAAAAAAAAAAAALL;
    std::allocate_shared[abi:ne200100]<TraceDataRateObserver,std::allocator<TraceDataRateObserver>,TraceDataRateObserver::Parameters &,0>(a1, a2);
    if (*a2)
    {
      TraceDataRateObserver::start(*a2);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void TraceDataRateObserver::start(TraceDataRateObserver *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::start(void)::$_0>(TraceDataRateObserver::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceDataRateObserver::start(void)::$_0,dispatch_queue_s *::default_delete<TraceDataRateObserver::start(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void TraceDataRateObserver::~TraceDataRateObserver(TraceDataRateObserver *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    support::misc::safe_timer::stop(v2);
  }

  v3 = *(this + 5);
  if (!v3)
  {
LABEL_6:
    v5 = *(this + 13);
    if (v5 != (this + 80))
    {
      goto LABEL_7;
    }

LABEL_12:
    (*(*v5 + 32))(v5);
    v6 = *(this + 8);
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v11 = *(this + 5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_4stopEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_19;
  block[4] = v3;
  block[5] = &v11;
  v4 = *(v3 + 16);
  if (*(v3 + 24))
  {
    dispatch_async_and_wait(v4, block);
    goto LABEL_6;
  }

  dispatch_sync(v4, block);
  v5 = *(this + 13);
  if (v5 == (this + 80))
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v7 = *(this + 6);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  MEMORY[0x245CF5550](this + 32);
  v8 = *(this + 3);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void TraceDataRateObserver::stop_sync(TraceDataRateObserver *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    support::misc::safe_timer::stop(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    v5 = *(this + 5);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_4stopEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
    block[3] = &__block_descriptor_tmp_19;
    block[4] = v3;
    block[5] = &v5;
    v4 = *(v3 + 16);
    if (*(v3 + 24))
    {
      dispatch_async_and_wait(v4, block);
    }

    else
    {
      dispatch_sync(v4, block);
    }
  }
}

void TraceDataRateObserver::start_sync(TraceDataRateObserver *this)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!*(this + 18))
  {
    v8 = *(this + 4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block) = 0;
      _os_log_error_impl(&dword_241A16000, v8, OS_LOG_TYPE_ERROR, "Failed to configure trace data rate module with 0 peak bandwidth; please assign value larger than zero", &block, 2u);
      v9 = *MEMORY[0x277D85DE8];
      return;
    }

    goto LABEL_50;
  }

  *&v41 = 60000;
  DWORD2(v41) = 17;
  *&block = 0xAAAAAAAAAAAAAAAALL;
  *(&block + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<DataRateObserver,std::allocator<DataRateObserver>,DataRateObserver::Config,0>(&v41, &block);
  v2 = block;
  block = 0uLL;
  v3 = *(this + 6);
  *(this + 40) = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(&block + 1);
  if (*(&block + 1) && !atomic_fetch_add((*(&block + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = *(this + 5);
    if (v5)
    {
LABEL_8:
      *&v41 = v5;
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 0x40000000;
      v35 = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_5startEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
      v36 = &__block_descriptor_tmp_2;
      v37 = v5;
      v38 = &v41;
      v6 = *(v5 + 16);
      if (*(v5 + 24))
      {
        dispatch_async_and_wait(v6, &block);
        v7 = *(this + 1);
        if (!v7)
        {
LABEL_54:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        dispatch_sync(v6, &block);
        v7 = *(this + 1);
        if (!v7)
        {
          goto LABEL_54;
        }
      }

      v15 = *this;
      v16 = std::__shared_weak_count::lock(v7);
      if (!v16)
      {
        goto LABEL_54;
      }

      v17 = v16;
      p_shared_weak_owners = &v16->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v17);
      }

      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v41 = v19;
      v42 = v19;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      *(&v42 + 1) = 0;
      v20 = operator new(0x20uLL);
      *v20 = &unk_2853A3440;
      v20[1] = this;
      v20[2] = v15;
      v20[3] = v17;
      *(&v42 + 1) = v20;
      __p = operator new(0x20uLL);
      v33 = xmmword_241A66350;
      strcpy(__p, "trace.data.rate.observer");
      v21 = operator new(0x20uLL);
      *v21 = &unk_2853A3440;
      v21[1] = this;
      v21[2] = v15;
      v21[3] = v17;
      atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v40 = v21;
      support::misc::safe_timer::create(&__p, 86400000, 86400000, v39, QOS_CLASS_UTILITY, &block);
      v24 = block;
      if (block)
      {
        v25 = operator new(0x20uLL);
        *v25 = &unk_2853A27C0;
        v25[1] = 0;
        v25[2] = 0;
        v25[3] = v24;
        *&block = 0;
        v26 = *(this + 8);
        *(this + 7) = v24;
        *(this + 8) = v25;
        if (!v26)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *&block = 0;
        v26 = *(this + 8);
        *(this + 7) = 0;
        *(this + 8) = 0;
        if (!v26)
        {
          goto LABEL_31;
        }
      }

      if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

LABEL_31:
      v27 = block;
      *&block = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      if (v40 == v39)
      {
        (*(*v40 + 32))(v40);
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v40)
        {
          (*(*v40 + 40))(v40, v22, v23);
        }

        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
LABEL_37:
          v28 = *(this + 7);
          if (v28)
          {
            goto LABEL_38;
          }

          goto LABEL_42;
        }
      }

      operator delete(__p);
      v28 = *(this + 7);
      if (v28)
      {
LABEL_38:
        v29 = *(v28 + 23);
        if (v29 == dispatch_get_specific("CurrentQueue"))
        {
          support::misc::safe_timer::start_sync(v28);
        }

        else
        {
          *&block = MEMORY[0x277D85DD0];
          *(&block + 1) = 0x40000000;
          v35 = ___ZN7support4misc10safe_timer5startEv_block_invoke;
          v36 = &__block_descriptor_tmp_8;
          v37 = v28;
          dispatch_sync(v29, &block);
        }

LABEL_45:
        if (*(&v42 + 1) == &v41)
        {
          (*(**(&v42 + 1) + 32))(*(&v42 + 1));
        }

        else if (*(&v42 + 1))
        {
          (*(**(&v42 + 1) + 40))(*(&v42 + 1));
        }

        std::__shared_weak_count::__release_weak(v17);
        goto LABEL_50;
      }

LABEL_42:
      v30 = *(this + 4);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LOWORD(block) = 0;
        _os_log_error_impl(&dword_241A16000, v30, OS_LOG_TYPE_ERROR, "CA timer instance gone", &block, 2u);
      }

      goto LABEL_45;
    }
  }

  else
  {
    v5 = *(this + 5);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v10 = *(this + 4);
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(this + 7);
    if (!v11)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  LOWORD(block) = 0;
  _os_log_error_impl(&dword_241A16000, v10, OS_LOG_TYPE_ERROR, "Failed to create data rate observer, stopping data rate monitor", &block, 2u);
  v11 = *(this + 7);
  if (v11)
  {
LABEL_16:
    support::misc::safe_timer::stop(v11);
  }

LABEL_17:
  v12 = *(this + 5);
  if (!v12)
  {
LABEL_50:
    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  *&v41 = *(this + 5);
  *&block = MEMORY[0x277D85DD0];
  *(&block + 1) = 0x40000000;
  v35 = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_4stopEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  v36 = &__block_descriptor_tmp_19;
  v37 = v12;
  v38 = &v41;
  v13 = *(v12 + 16);
  if (*(v12 + 24))
  {
    dispatch_async_and_wait(v13, &block);
  }

  else
  {
    dispatch_sync(v13, &block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_241A49AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::function<void ()(void)>::~function(v23 - 96);
  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void sub_241A49B50(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void TraceDataRateObserver::feedSample(TraceDataRateObserver *this, uint64_t a2)
{
  v3 = *(this + 1);
  if (!v3 || (v5 = *this, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[1] = a2;
  v9 = *(this + 2);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::feedSample(unsigned long)::$_0>(TraceDataRateObserver::feedSample(unsigned long)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceDataRateObserver::feedSample(unsigned long)::$_0,dispatch_queue_s *::default_delete<TraceDataRateObserver::feedSample(unsigned long)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void TraceDataRateObserver::prepAnalyticsData_sync(uint64_t a1@<X0>, uint64_t *a2@<X1>, const std::string *a3@<X2>, uint64_t a4@<X8>)
{
  v129 = *MEMORY[0x277D85DE8];
  *&v120[24] = 0xFFFFFFFFFFFFFFFFLL;
  v128 = unk_241A664C8;
  v118 = 0xAAAAAAAAAAAAAAAALL;
  v121 = xmmword_241A66360;
  v122 = xmmword_241A66370;
  *v123 = xmmword_241A66380;
  *&v123[16] = xmmword_241A66390;
  *&v123[32] = xmmword_241A663A0;
  v124 = xmmword_241A663B0;
  v7 = v116;
  memset(v120, 0, 32);
  v117 = 0uLL;
  v119 = 0x3FE0000000000000;
  v125 = xmmword_241A663C0;
  v126 = 1.0;
  v127 = xmmword_241A663D0;
  *a4 = xmmword_241A665B0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *a4 = 0;
  *(a4 + 16) = 0;
  v8 = operator new(0x30uLL);
  *(a4 + 48) = 0u;
  *(a4 + 32) = v8 + 3;
  *(a4 + 40) = v8 + 3;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  *(a4 + 24) = v8;
  *(a4 + 64) = 0u;
  v9 = *a2;
  v103 = a2[1];
  if (*a2 != v103)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v102 = _Q0;
    do
    {
      *&v116[48] = 0xAAAAAAAAAAAAAAAALL;
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v116[16] = v14;
      *&v116[32] = v14;
      *v116 = v14;
      Timestamp::Timestamp(v116, v9);
      Timestamp::Timestamp(&v116[24], (v9 + 24));
      v15 = *(v9 + 48);
      *&v116[48] = v15;
      v16 = *&v116[32];
      if (*&v116[32])
      {
        v17 = &v116[32];
        do
        {
          v18 = *(v16 + 32);
          if ((v18 & 0x80000000) == 0)
          {
            v17 = v16;
          }

          v16 = *(v16 + ((v18 >> 28) & 8));
        }

        while (v16);
        if (v17 == &v116[32] || *(v17 + 8) > 0)
        {
          v19 = 0;
          v16 = 0;
          v20 = *&v116[8];
          if (!*&v116[8])
          {
            goto LABEL_23;
          }
        }

        else
        {
          v16 = *(v17 + 12);
          v19 = 1000000 * *(v17 + 5);
          v20 = *&v116[8];
          if (!*&v116[8])
          {
LABEL_23:
            v23 = 0;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v19 = 0;
        v20 = *&v116[8];
        if (!*&v116[8])
        {
          goto LABEL_23;
        }
      }

      v21 = &v116[8];
      do
      {
        v22 = *(v20 + 32);
        if ((v22 & 0x80000000) == 0)
        {
          v21 = v20;
        }

        v20 = *(v20 + ((v22 >> 28) & 8));
      }

      while (v20);
      if (v21 == &v116[8] || *(v21 + 8) > 0)
      {
        v23 = 0;
        v20 = 0;
      }

      else
      {
        v20 = *(v21 + 12);
        v23 = -1000000 * *(v21 + 5);
      }

LABEL_25:
      v24 = vcvtd_n_f64_u32(v15, 0x14uLL);
      v25 = v16 + v19 + v23 - v20;
      if (v25 < 0)
      {
        v25 = v20 - (v16 + v19 + v23);
      }

      v26 = (v25 / 0xF4240uLL);
      v27 = v24 * 8.0 / v26;
      v28 = *(a1 + 32);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        Timestamp::asString(v116, 0, 9);
        v84 = v107;
        v85 = v106;
        Timestamp::asString(&v116[24], 0, 9);
        v86 = &v106;
        if (v84 < 0)
        {
          v86 = v85;
        }

        p_p = &__p;
        if (v105 < 0)
        {
          p_p = __p;
        }

        *buf = 136316162;
        *v109 = v86;
        *&v109[8] = 2080;
        *&v109[10] = p_p;
        v110 = 2048;
        v111 = v24;
        v112 = 2048;
        v113 = v26;
        v114 = 2048;
        v115 = v24 * 8.0 / v26;
        _os_log_debug_impl(&dword_241A16000, v28, OS_LOG_TYPE_DEBUG, "#D Start time: %s, end time: %s, amount: %f MB, duration: %f seconds, data rate: %f Mbps", buf, 0x34u);
        if (v105 < 0)
        {
          operator delete(__p);
          if ((v107 & 0x80000000) == 0)
          {
            goto LABEL_28;
          }
        }

        else if ((v107 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        operator delete(v106);
      }

LABEL_28:
      v29 = v117;
      v30 = v117 + 1;
      *&v117 = v30;
      v31 = v27 + *(&v117 + 1);
      *(&v117 + 1) = v27 + *(&v117 + 1);
      if (v30 <= 1)
      {
        *&v120[8 * v29] = v27;
      }

      else
      {
        *(&v118 + 1) = (v27 - v31 / v30) * (v27 - v31 / v30) / v29 + *(&v118 + 1) * v29 / v30;
        if (v30 > 5)
        {
          v32 = *v120;
          if (*v120 > v27)
          {
            v33 = 1;
            *v120 = v24 * 8.0 / v26;
            v34 = 4;
LABEL_45:
            v41 = v33 + (v34 & 0xFFFFFFFFFFFFFFFCLL);
            v42 = &v123[8 * v33 - 16];
            v43 = v34 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v44 = vaddq_f64(*v42, v102);
              v42[-1] = vaddq_f64(v42[-1], v102);
              *v42 = v44;
              v42 += 2;
              v43 -= 4;
            }

            while (v43);
            if (v34 != (v34 & 0xFFFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_48:
                *(&v121 + v41) = *(&v121 + v41) + 1.0;
                ++v41;
              }

              while (v41 != 5);
            }

            v32 = *v120;
LABEL_50:
            v45 = vaddq_f64(v124, *&v123[8]);
            *&v123[8] = v45;
            v46 = vaddq_f64(v125, *&v123[24]);
            *&v123[24] = v46;
            v48 = *(&v121 + 1);
            v47 = *&v122;
            *&v123[40] = v126 + *&v123[40];
            v49 = v45.f64[1] - *(&v121 + 1);
            v50 = *&v122 - *(&v121 + 1);
            v51 = *&v121 - *(&v121 + 1);
            v52 = *&v120[16];
            v53 = *&v120[8];
            v54 = v45.f64[1] - *(&v121 + 1) < 1.0 || v50 <= 1.0;
            if (!v54 || (v49 <= -1.0 ? (_NF = v51 < -1.0) : (_NF = 0), _NF))
            {
              v56 = (*&v120[16] - *&v120[8]) / v50;
              v57 = (v49 / fabs(v49));
              v58 = (v32 - *&v120[8]) / v51;
              v59 = *&v120[8] + v57 / (v50 - v51) * ((v50 - v57) * v58 + (v57 - v51) * v56);
              if (v32 < v59 && v59 < *&v120[16])
              {
                goto LABEL_70;
              }

              v61 = *&v120[8] + v56;
              if (v49 <= 0.0)
              {
                v61 = *&v120[8];
              }

              v59 = v49 >= 0.0 ? v61 : v61 - v58;
              if (v49 != 0.0)
              {
LABEL_70:
                *&v120[8] = v59;
              }

              v48 = *(&v121 + 1) + v57;
              *(&v121 + 1) = v48;
              v53 = v59;
            }

            v62 = v46.f64[0] - *&v122;
            v63 = *(&v122 + 1) - *&v122;
            v64 = v48 - *&v122;
            if (v46.f64[0] - *&v122 >= 1.0 && v63 > 1.0 || v62 <= -1.0 && v64 < -1.0)
            {
              v65 = (*&v120[24] - *&v120[16]) / v63;
              v66 = (v62 / fabs(v62));
              v67 = (v53 - *&v120[16]) / v64;
              v68 = *&v120[16] + v66 / (v63 - v64) * (v67 * (v63 - v66) + (v66 - v64) * v65);
              if (v53 < v68 && v68 < *&v120[24])
              {
                goto LABEL_86;
              }

              if (v62 > 0.0)
              {
                v52 = *&v120[16] + v65;
              }

              v68 = v62 >= 0.0 ? v52 : v52 - v67;
              if (v62 != 0.0)
              {
LABEL_86:
                *&v120[16] = v68;
              }

              v47 = *&v122 + v66;
              *&v122 = v47;
              v52 = v68;
            }

            v46.f64[0] = v46.f64[1] - *(&v122 + 1);
            v70 = *v123 - *(&v122 + 1);
            v71 = v47 - *(&v122 + 1);
            if (v46.f64[1] - *(&v122 + 1) >= 1.0 && v70 > 1.0 || v46.f64[0] <= -1.0 && v71 < -1.0)
            {
              v72 = (*&v120[32] - *&v120[24]) / v70;
              v73 = (v52 - *&v120[24]) / v71;
              v74 = (v46.f64[0] / fabs(v46.f64[0]));
              v75 = *&v120[24] + v74 / (v70 - v71) * (v73 * (v70 - v74) + (v74 - v71) * v72);
              if (v52 < v75 && v75 < *&v120[32])
              {
                goto LABEL_102;
              }

              v77 = *&v120[24] + v72;
              if (v46.f64[0] <= 0.0)
              {
                v77 = *&v120[24];
              }

              v75 = v46.f64[0] >= 0.0 ? v77 : v77 - v73;
              if (v46.f64[0] != 0.0)
              {
LABEL_102:
                *&v120[24] = v75;
              }

              *(&v122 + 1) = *(&v122 + 1) + v74;
            }

            goto LABEL_104;
          }

          if (*&v120[32] <= v27)
          {
            v33 = 4;
            *&v120[32] = v24 * 8.0 / v26;
          }

          else
          {
            v35 = 5;
            v36 = v120;
            do
            {
              v37 = v35 >> 1;
              v38 = &v36[v35 >> 1];
              v40 = *v38;
              v39 = v38 + 1;
              v35 += ~(v35 >> 1);
              if (v40 > v27)
              {
                v35 = v37;
              }

              else
              {
                v36 = v39;
              }
            }

            while (v35);
            v33 = (v36 - v120) >> 3;
            if (v33 >= 5)
            {
              goto LABEL_50;
            }

            v34 = 5 - v33;
            if (5 - v33 > 3)
            {
              goto LABEL_45;
            }
          }

          v41 = v33;
          goto LABEL_48;
        }

        *&v120[8 * v29] = v27;
        if (v30 == 5)
        {
          buf[0] = -86;
          std::__sort<std::__less<double,double> &,double *>();
        }
      }

LABEL_104:
      if (v27 > *&v127)
      {
        *&v127 = v24 * 8.0 / v26;
      }

      HIDWORD(v78) = HIDWORD(v127);
      if (v27 < *(&v127 + 1))
      {
        *(&v127 + 1) = v24 * 8.0 / v26;
      }

      LODWORD(v78) = *(a1 + 72);
      v79 = (v27 - v78) / v78 * 100.0;
      v80 = 0.0;
      if (v79 >= 0.0)
      {
        v80 = v79;
        if (v79 == 0.0)
        {
          v80 = 1.0;
        }
      }

      LODWORD(v7) = vcvtpd_u64_f64(v80 / 10.0);
      v81 = *(a4 + 24);
      v82 = (*(a4 + 32) - v81) >> 2;
      if (v82 <= v7)
      {
        v83 = *(a1 + 32);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *v109 = v7;
          *&v109[4] = 2048;
          *&v109[6] = v82;
          _os_log_error_impl(&dword_241A16000, v83, OS_LOG_TYPE_ERROR, "The current bucket key value %d exceeds bucket size %zu", buf, 0x12u);
          v81 = *(a4 + 24);
        }

        LODWORD(v7) = 11;
      }

      ++*(v81 + 4 * v7);
      v7 = v116;
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v116[24], *&v116[32]);
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v116, *&v116[8]);
      v9 += 56;
    }

    while (v9 != v103);
  }

  std::string::operator=((a4 + 48), a3);
  *(a4 + 16) = *(a1 + 72);
  v88 = *(&v117 + 1) / v117;
  v89 = *&v120[16];
  v90 = v127;
  v91 = *(a1 + 32);
  v92 = sqrt(*(&v118 + 1));
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    *v116 = 134219008;
    *&v116[4] = v88;
    *&v116[12] = 2048;
    *&v116[14] = v89;
    *&v116[22] = 2048;
    *&v116[24] = v92;
    *&v116[32] = 2048;
    *&v116[34] = v90;
    *&v116[42] = 2048;
    *&v116[44] = *(&v90 + 1);
    _os_log_impl(&dword_241A16000, v91, OS_LOG_TYPE_DEFAULT, "#I Mean: %f, median: %f, standard deviation: %f, max %f, min: %f", v116, 0x34u);
  }

  *a4 = v88;
  *(a4 + 4) = v89;
  *(a4 + 8) = v92;
  *(a4 + 72) = *&v90;
  *(a4 + 76) = *(&v90 + 1);
  v94 = *(a4 + 24);
  v93 = *(a4 + 32);
  if (v93 != v94)
  {
    v95 = 0;
    do
    {
      v96 = *(a1 + 32);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
      {
        v97 = *(v94 + 4 * v95);
        v98 = *(a1 + 72);
        v99 = sBucketDeltaRange[v95];
        *v116 = 134218754;
        *&v116[4] = v95;
        *&v116[12] = 1024;
        *&v116[14] = v97;
        *&v116[18] = 1024;
        *&v116[20] = v98;
        *&v116[24] = 2080;
        *&v116[26] = v99;
        _os_log_debug_impl(&dword_241A16000, v96, OS_LOG_TYPE_DEBUG, "#D Bucket %zu: %d samples exceeds peak bandwidth (%u Mbps) by this percentage range: %s", v116, 0x22u);
        v94 = *(a4 + 24);
        v93 = *(a4 + 32);
      }

      ++v95;
    }

    while (v95 < (v93 - v94) >> 2);
  }

  v100 = *MEMORY[0x277D85DE8];
}

void sub_241A4A6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  DataRateObserver::Sample::~Sample(&a38);
  TraceDataRateObserver::CAData::~CAData(v38);
  _Unwind_Resume(a1);
}

void sub_241A4A738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, void *a36)
{
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a35, a36);
  TraceDataRateObserver::CAData::~CAData(v36);
  _Unwind_Resume(a1);
}

void TraceDataRateObserver::calculateStatistics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 8) / *a3;
  v5 = *(a3 + 56);
  v7 = *(a3 + 200);
  v6 = *(a3 + 208);
  v8 = *(a1 + 32);
  v9 = sqrt(*(a3 + 24));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134219008;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v9;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_241A16000, v8, OS_LOG_TYPE_DEFAULT, "#I Mean: %f, median: %f, standard deviation: %f, max %f, min: %f", &v11, 0x34u);
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v9;
  *(a2 + 72) = v7;
  *(a2 + 76) = v6;
  v10 = *MEMORY[0x277D85DE8];
}

void TraceDataRateObserver::CAData::~CAData(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this[3];
  if (v2)
  {
    this[4] = v2;
    operator delete(v2);
  }
}

void TraceDataRateObserver::reportToCA_sync(TraceDataRateObserver *a1, char *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2 + 48;
    if (a2[71] < 0)
    {
      v5 = *v5;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_241A16000, v4, OS_LOG_TYPE_DEFAULT, "#I Reporting CA data %s", buf, 0xCu);
  }

  *buf = 0xAAAAAAAAAAAAAAAALL;
  TraceDataRateObserver::convertCADataToDict_sync(a1, a2, buf);
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = MEMORY[0x277D86468];
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CF6530](v6) == v7)
    {
      xpc_retain(v6);
      v8 = v6;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v9 = xpc_string_create(*MEMORY[0x277CECBB0]);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x277CECBD8], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_string_create(*MEMORY[0x277CECC00]);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x277CECB90], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_BOOL_create(1);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x277CECCF8], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = *buf;
  if (*buf)
  {
    xpc_retain(*buf);
    v16 = v15;
  }

  else
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x277CECCE8], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  xdict = 0xAAAAAAAAAAAAAAAALL;
  v18 = xpc_dictionary_create(0, 0, 0);
  v19 = v18;
  if (v18)
  {
    xdict = v18;
  }

  else
  {
    v19 = xpc_null_create();
    xdict = v19;
    if (!v19)
    {
      v20 = xpc_null_create();
      v19 = 0;
      goto LABEL_27;
    }
  }

  if (MEMORY[0x245CF6530](v19) == v7)
  {
    xpc_retain(v19);
    goto LABEL_28;
  }

  v20 = xpc_null_create();
LABEL_27:
  xdict = v20;
LABEL_28:
  xpc_release(v19);
  v21 = xdict;
  if (MEMORY[0x245CF6530](xdict) == v7)
  {
    v23 = xpc_string_create(*MEMORY[0x277CECB50]);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x277CECB60], v23);
    v24 = xpc_null_create();
    xpc_release(v23);
    xpc_release(v24);
    if (v8)
    {
      xpc_retain(v8);
      v21 = xdict;
      v25 = v8;
    }

    else
    {
      v25 = xpc_null_create();
    }

    xpc_dictionary_set_value(v21, *MEMORY[0x277CECB58], v25);
    v26 = xpc_null_create();
    xpc_release(v25);
    xpc_release(v26);
    v27 = *(a1 + 13);
    if (!v27)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v27 + 48))(v27, &xdict);
    v21 = xdict;
  }

  else
  {
    v22 = *(a1 + 4);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      _os_log_error_impl(&dword_241A16000, v22, OS_LOG_TYPE_ERROR, "Failed to allocate xpc dict for stats", v29, 2u);
    }
  }

  xpc_release(v21);
  xpc_release(v8);
  xpc_release(v15);
  v28 = *MEMORY[0x277D85DE8];
}

void sub_241A4ACE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void TraceDataRateObserver::convertCADataToDict_sync(TraceDataRateObserver *this@<X0>, const TraceDataRateObserver::CAData *a2@<X1>, xpc_object_t *a3@<X8>)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = MEMORY[0x277D86468];
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CF6530](v6) == v7)
    {
      xpc_retain(v6);
      v8 = v6;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  if (MEMORY[0x245CF6530](v8) == v7)
  {
    v10 = xpc_array_create(0, 0);
    v11 = MEMORY[0x277D86440];
    if (v10 || (v10 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x245CF6530](v10) == v11)
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
    if (MEMORY[0x245CF6530](v12) == v11)
    {
      v14 = *(a2 + 3);
      if (*(a2 + 4) != v14)
      {
        v15 = 0;
        do
        {
          v16 = xpc_int64_create(*(v14 + 4 * v15));
          if (!v16)
          {
            v16 = xpc_null_create();
          }

          xpc_array_append_value(v12, v16);
          xpc_release(v16);
          ++v15;
          v14 = *(a2 + 3);
        }

        while (v15 < (*(a2 + 4) - v14) >> 2);
      }

      if (v12)
      {
        xpc_retain(v12);
        v17 = v12;
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, *MEMORY[0x277CECCE0], v17);
      v18 = xpc_null_create();
      xpc_release(v17);
      xpc_release(v18);
      v19 = xpc_int64_create(*(a2 + 4));
      if (!v19)
      {
        v19 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, *MEMORY[0x277CECD18], v19);
      v20 = xpc_null_create();
      xpc_release(v19);
      xpc_release(v20);
      v21 = xpc_int64_create(*(a2 + 18));
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, *MEMORY[0x277CECB98], v21);
      v22 = xpc_null_create();
      xpc_release(v21);
      xpc_release(v22);
      v23 = xpc_int64_create(*(a2 + 19));
      if (!v23)
      {
        v23 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, *MEMORY[0x277CECBA0], v23);
      v24 = xpc_null_create();
      xpc_release(v23);
      xpc_release(v24);
      v25 = xpc_int64_create(*a2);
      if (!v25)
      {
        v25 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, *MEMORY[0x277CECBC0], v25);
      v26 = xpc_null_create();
      xpc_release(v25);
      xpc_release(v26);
      v27 = xpc_int64_create(*(a2 + 1));
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, *MEMORY[0x277CECC48], v27);
      v28 = xpc_null_create();
      xpc_release(v27);
      xpc_release(v28);
      v31 = *(a2 + 6);
      v30 = a2 + 48;
      v29 = v31;
      if (v30[23] >= 0)
      {
        v32 = v30;
      }

      else
      {
        v32 = v29;
      }

      v33 = xpc_string_create(v32);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, *MEMORY[0x277CECB68], v33);
      v34 = xpc_null_create();
      xpc_release(v33);
      xpc_release(v34);
      *a3 = v8;
      v8 = xpc_null_create();
    }

    else
    {
      v13 = *(this + 4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v35[0] = 0;
        _os_log_error_impl(&dword_241A16000, v13, OS_LOG_TYPE_ERROR, "Failed to create xpc array for delta data", v35, 2u);
      }

      *a3 = xpc_null_create();
    }

    xpc_release(v12);
  }

  else
  {
    v9 = *(this + 4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_241A16000, v9, OS_LOG_TYPE_ERROR, "Failed to create xpc dict for CA data", buf, 2u);
    }

    *a3 = xpc_null_create();
  }

  xpc_release(v8);
}

void sub_241A4B2D4(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

void TraceDataRateObserver::forceReportToCA(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v3 = a1[1];
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    __p = *a2;
    v3 = a1[1];
    if (!v3)
    {
LABEL_14:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  v4 = *a1;
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = operator new(0x20uLL);
  *v7 = a1;
  v8 = (v7 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v7[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v9 = a1[2];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v7;
  v10[1] = v4;
  v10[2] = v6;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::forceReportToCA(std::string const&)::$_0>(TraceDataRateObserver::forceReportToCA(std::string const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceDataRateObserver::forceReportToCA(std::string const&)::$_0,std::default_delete<TraceDataRateObserver::forceReportToCA(std::string const&)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_13;
  }
}

void TraceDataRateObserver::updateTraceBandwidth(TraceDataRateObserver *this, int a2)
{
  v3 = *(this + 1);
  if (!v3 || (v5 = *this, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[2] = a2;
  v9 = *(this + 2);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::updateTraceBandwidth::$_0>(TraceDataRateObserver::updateTraceBandwidth::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceDataRateObserver::updateTraceBandwidth::$_0,dispatch_queue_s *::default_delete<TraceDataRateObserver::updateTraceBandwidth::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void TraceDataRateObserver::snapshot(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v7[0] = a1;
  v7[1] = v3;
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21TraceDataRateObserverE20execute_wrapped_syncIZNS1_8snapshotENSt3__110shared_ptrIN3abm5trace9TraceInfoEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = a1;
  block[5] = v7;
  v5 = a1 + 16;
  v4 = *(a1 + 16);
  if (*(v5 + 8))
  {
    dispatch_async_and_wait(v4, block);
    v6 = v8;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    dispatch_sync(v4, block);
    v6 = v8;
    if (!v8)
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

void std::allocate_shared[abi:ne200100]<TraceDataRateObserver,std::allocator<TraceDataRateObserver>,TraceDataRateObserver::Parameters &,0>(int *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x88uLL);
  v4->__shared_owners_ = 0;
  p_shared_owners = &v4->__shared_owners_;
  v4->__shared_weak_owners_ = 0;
  v4->__vftable = &unk_2853A33F0;
  v7 = -86;
  std::allocator<TraceDataRateObserver>::construct[abi:ne200100]<TraceDataRateObserver,TraceDataRateObserver::Parameters &>(&v7, &v4[1], a1);
  *a2 = v4 + 1;
  a2[1] = v4;
  shared_owners = v4[1].__shared_owners_;
  if (shared_owners)
  {
    if (shared_owners->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v4[1].__vftable = &v4[1];
      v4[1].__shared_owners_ = v4;
      std::__shared_weak_count::__release_weak(shared_owners);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[1].__vftable = &v4[1];
    v4[1].__shared_owners_ = v4;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_7:
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_241A4B80C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<TraceDataRateObserver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2853A33F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::allocator<TraceDataRateObserver>::construct[abi:ne200100]<TraceDataRateObserver,TraceDataRateObserver::Parameters &>(uint64_t a1, uint64_t a2, int *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v4 = *(a3 + 4);
  if (v4)
  {
    if (v4 == a3 + 2)
    {
      v9 = v8;
      (*(*v4 + 24))(v4, v8);
    }

    else
    {
      v9 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v9 = 0;
  }

  TraceDataRateObserver::TraceDataRateObserver(a2, &v7);
  result = v9;
  if (v9 == v8)
  {
    result = (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    result = (*(*v9 + 40))(v9);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void TraceDataRateObserver::Parameters::~Parameters(TraceDataRateObserver::Parameters *this)
{
  v1 = this + 8;
  v2 = *(this + 4);
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }
}

void *std::unique_ptr<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::start(void)::$_0>(TraceDataRateObserver::start(void)::$_0 &&)::{lambda(void)#1},std::default_delete<TraceDataRateObserver::start(void)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[2];
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

void dispatch::async<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::start(void)::$_0>(TraceDataRateObserver::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceDataRateObserver::start(void)::$_0,dispatch_queue_s *::default_delete<TraceDataRateObserver::start(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  TraceDataRateObserver::start_sync(**a1);
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

void sub_241A4BBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::start(void)::$_0>(TraceDataRateObserver::start(void)::$_0 &&)::{lambda(void)#1},std::default_delete<TraceDataRateObserver::start(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<TraceDataRateObserver::start_sync(void)::$_0,std::allocator<TraceDataRateObserver::start_sync(void)::$_0>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2853A3440;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<TraceDataRateObserver::start_sync(void)::$_0,std::allocator<TraceDataRateObserver::start_sync(void)::$_0>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2853A3440;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<TraceDataRateObserver::start_sync(void)::$_0,std::allocator<TraceDataRateObserver::start_sync(void)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2853A3440;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<TraceDataRateObserver::start_sync(void)::$_0,std::allocator<TraceDataRateObserver::start_sync(void)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2853A3440;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<TraceDataRateObserver::start_sync(void)::$_0,std::allocator<TraceDataRateObserver::start_sync(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<TraceDataRateObserver::start_sync(void)::$_0,std::allocator<TraceDataRateObserver::start_sync(void)::$_0>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<TraceDataRateObserver::start_sync(void)::$_0,std::allocator<TraceDataRateObserver::start_sync(void)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[2])
      {
        goto LABEL_16;
      }

      v6 = v3[1];
      if (!v6 || (v7 = *v3, (v8 = std::__shared_weak_count::lock(v6)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v9 = v8;
      v10 = operator new(8uLL);
      *v10 = v3;
      v11 = v3[2];
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = operator new(0x18uLL);
      *v12 = v10;
      v12[1] = v7;
      v12[2] = v9;
      dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::start_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>(TraceDataRateObserver::start_sync(void)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceDataRateObserver::start_sync(void)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<TraceDataRateObserver::start_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_16:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t std::__function::__func<TraceDataRateObserver::start_sync(void)::$_0,std::allocator<TraceDataRateObserver::start_sync(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN21TraceDataRateObserver10start_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN21TraceDataRateObserver10start_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN21TraceDataRateObserver10start_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN21TraceDataRateObserver10start_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::start_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>(TraceDataRateObserver::start_sync(void)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceDataRateObserver::start_sync(void)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<TraceDataRateObserver::start_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = **a1;
  memset(v23, 170, sizeof(v23));
  DataRateObserver::gatherSamples(v3[5], v23);
  memset(v22, 170, sizeof(v22));
  memset(&v21[1], 170, 32);
  v21[0] = xmmword_241A665B0;
  *(&block.__r_.__value_.__s + 23) = 18;
  strcpy(&block, "1 hour timer fired");
  TraceDataRateObserver::prepAnalyticsData_sync(v3, v23, &block, v21);
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  v14 = v21[0];
  v15 = v21[1];
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v4 = *(&v21[1] + 1);
  v5 = *&v21[2] - *(&v21[1] + 1);
  if (*&v21[2] != *(&v21[1] + 1))
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(*&v21[2] - *(&v21[1] + 1));
    v7 = &v6[v5];
    v16 = v6;
    v18 = &v6[v5];
    memcpy(v6, v4, v5);
    v17 = v7;
  }

  if ((v22[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v22, *&v22[8]);
  }

  else
  {
    __p = *v22;
  }

  v20 = *&v22[24];
  TraceDataRateObserver::reportToCA_sync(v3, &v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v24 = v3[5];
  block.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
  block.__r_.__value_.__l.__size_ = 0x40000000;
  block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_12clearSamplesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  v26 = &__block_descriptor_tmp_25;
  v27 = v24;
  v28 = &v24;
  v8 = *(v24 + 2);
  if (*(v24 + 3))
  {
    dispatch_async_and_wait(v8, &block);
    if ((v22[23] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  dispatch_sync(v8, &block);
  if ((v22[23] & 0x80000000) != 0)
  {
LABEL_15:
    operator delete(*v22);
  }

LABEL_16:
  if (*(&v21[1] + 1))
  {
    *&v21[2] = *(&v21[1] + 1);
    operator delete(*(&v21[1] + 1));
  }

  v9 = v23[0];
  if (!v23[0])
  {
LABEL_29:
    operator delete(v2);
    v12 = v1[2];
    if (!v12)
    {
LABEL_32:
      operator delete(v1);
      return;
    }

LABEL_30:
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    goto LABEL_32;
  }

  if (v23[1] == v23[0])
  {
    operator delete(v23[0]);
    goto LABEL_29;
  }

  v10 = v23[1] - 56;
  do
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v10 + 24, *(v10 + 32));
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v10, *(v10 + 8));
    v11 = v10 == v9;
    v10 -= 56;
  }

  while (!v11);
  v23[1] = v9;
  operator delete(v23[0]);
  v1 = a1;
  operator delete(v2);
  if (a1)
  {
    v12 = *(a1 + 16);
    if (!v12)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }
}

void sub_241A4C270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  TraceDataRateObserver::CAData::~CAData(&a23);
  std::vector<DataRateObserver::Sample>::~vector[abi:ne200100]((v24 - 144));
  operator delete(v23);
  std::unique_ptr<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::start(void)::$_0>(TraceDataRateObserver::start(void)::$_0 &&)::{lambda(void)#1},std::default_delete<TraceDataRateObserver::start(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::feedSample(unsigned long)::$_0>(TraceDataRateObserver::feedSample(unsigned long)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceDataRateObserver::feedSample(unsigned long)::$_0,dispatch_queue_s *::default_delete<TraceDataRateObserver::feedSample(unsigned long)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v7 = *(**a1 + 40);
  v8 = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_10feedSampleEjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = v7;
  block[5] = &v7;
  v4 = *(v7 + 16);
  if (*(v7 + 24))
  {
    dispatch_async_and_wait(v4, block);
    operator delete(v2);
    v5 = a1[2];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_sync(v4, block);
    operator delete(v2);
    v5 = a1[2];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_3:
    v6 = a1;

    goto LABEL_5;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v6 = a1;

LABEL_5:
  operator delete(v6);
}

void dispatch::async<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::forceReportToCA(std::string const&)::$_0>(TraceDataRateObserver::forceReportToCA(std::string const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceDataRateObserver::forceReportToCA(std::string const&)::$_0,std::default_delete<TraceDataRateObserver::forceReportToCA(std::string const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v1 = *a1;
  v16 = *a1;
  v2 = **a1;
  memset(v27, 170, sizeof(v27));
  DataRateObserver::gatherSamples(*(v2 + 40), v27);
  if ((0x6DB6DB6DB6DB6DB7 * ((v27[1] - v27[0]) >> 3)) <= 9)
  {
    v3 = *(v2 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_241A16000, v3, OS_LOG_TYPE_ERROR, "The interval between this report and the last report is less than 10 minutes, aborting report", buf, 2u);
    }

    goto LABEL_19;
  }

  memset(v26, 170, sizeof(v26));
  *buf = xmmword_241A665B0;
  *v25 = unk_241A665C0;
  TraceDataRateObserver::prepAnalyticsData_sync(v2, v27, (v1 + 1), buf);
  v17 = *buf;
  v18 = v25[0];
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v4 = v25[1];
  v5 = *&v26[0] - v25[1];
  if (*&v26[0] != v25[1])
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(*&v26[0] - v25[1]);
    v7 = &v6[v5];
    v19 = v6;
    v21 = &v6[v5];
    memcpy(v6, v4, v5);
    v20 = v7;
  }

  if (SBYTE7(v26[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *&v26[1], *(&v26[1] + 1));
  }

  else
  {
    __p = *&v26[1];
  }

  v23 = *(&v26[2] + 1);
  TraceDataRateObserver::reportToCA_sync(v2, &v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  v28 = *(v2 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_12clearSamplesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_25;
  block[4] = v28;
  block[5] = &v28;
  v8 = *(v28 + 16);
  if (*(v28 + 24))
  {
    dispatch_async_and_wait(v8, block);
    if ((SBYTE7(v26[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  dispatch_sync(v8, block);
  if (SBYTE7(v26[2]) < 0)
  {
LABEL_16:
    operator delete(*&v26[1]);
  }

LABEL_17:
  if (v25[1])
  {
    *&v26[0] = v25[1];
    operator delete(v25[1]);
  }

LABEL_19:
  v9 = v27[0];
  if (!v27[0])
  {
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

  v10 = v27[0];
  if (v27[1] != v27[0])
  {
    v11 = v27[1] - 56;
    do
    {
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v11 + 24, *(v11 + 32));
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v11, *(v11 + 8));
      v12 = v11 == v9;
      v11 -= 56;
    }

    while (!v12);
    v10 = v27[0];
    v1 = v16;
  }

  v27[1] = v9;
  operator delete(v10);
  if (v1)
  {
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_27:
      operator delete(v1);
      goto LABEL_28;
    }

LABEL_35:
    operator delete(v1[1]);
    goto LABEL_27;
  }

LABEL_28:
  v13 = a1;
  if (a1)
  {
    v14 = *(a1 + 16);
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v13 = a1;
      }
    }

    operator delete(v13);
  }
}

void sub_241A4C730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  TraceDataRateObserver::CAData::~CAData(&a23);
  std::vector<DataRateObserver::Sample>::~vector[abi:ne200100]((v23 - 128));
  std::unique_ptr<TraceDataRateObserver::forceReportToCA(std::string const&)::$_0,std::default_delete<TraceDataRateObserver::forceReportToCA(std::string const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::start(void)::$_0>(TraceDataRateObserver::start(void)::$_0 &&)::{lambda(void)#1},std::default_delete<TraceDataRateObserver::start(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<TraceDataRateObserver::forceReportToCA(std::string const&)::$_0,std::default_delete<TraceDataRateObserver::forceReportToCA(std::string const&)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<TraceDataRateObserver>::execute_wrapped<TraceDataRateObserver::updateTraceBandwidth(unsigned int)::$_0>(TraceDataRateObserver::updateTraceBandwidth(unsigned int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceDataRateObserver::updateTraceBandwidth(unsigned int)::$_0,dispatch_queue_s *::default_delete<TraceDataRateObserver::updateTraceBandwidth(unsigned int)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v3 + 72);
    v6 = *(v2 + 2);
    v9[0] = 67109376;
    v9[1] = v5;
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&dword_241A16000, v4, OS_LOG_TYPE_DEFAULT, "#I Updating bandwidth from %u Mbps to %u Mbps", v9, 0xEu);
  }

  *(v3 + 72) = *(v2 + 2);
  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
  v8 = *MEMORY[0x277D85DE8];
}

void ___ZNK3ctu20SharedSynchronizableI21TraceDataRateObserverE20execute_wrapped_syncIZNS1_8snapshotENSt3__110shared_ptrIN3abm5trace9TraceInfoEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke(uint64_t a1)
{
  v142 = *MEMORY[0x277D85DE8];
  v112 = *(a1 + 40);
  v1 = *v112;
  v2 = *(*v112 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241A16000, v2, OS_LOG_TYPE_DEFAULT, "#I Snapshotting trace data rate", buf, 2u);
  }

  v141 = 0xAAAAAAAAAAAAAAAALL;
  v135 = xmmword_241A66360;
  v131 = 0xAAAAAAAAAAAAAAAALL;
  memset(v133, 0, sizeof(v133));
  v136 = xmmword_241A66370;
  *v137 = xmmword_241A66380;
  *&v137[16] = xmmword_241A66390;
  *&v137[32] = xmmword_241A663A0;
  v138 = xmmword_241A663B0;
  v139 = xmmword_241A663C0;
  v134 = 0.0;
  memset(buf, 0, sizeof(buf));
  v132 = 0x3FE0000000000000;
  v140 = 1.0;
  memset(v123, 170, sizeof(v123));
  DataRateObserver::gatherSamples(*(v1 + 40), v123);
  memset(v122, 170, sizeof(v122));
  Timestamp::Timestamp(v122);
  memset(v121, 170, sizeof(v121));
  Timestamp::Timestamp(v121);
  v3 = v123[0];
  v4 = v123[1];
  if (v123[1] != v123[0])
  {
    if (v122 != v123[0])
    {
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<Timestamp::TimeDomain,timeval>,std::__tree_node<std::__value_type<Timestamp::TimeDomain,timeval>,void *> *,long>>(v122, *v123[0], v123[0] + 1);
      v3 = v123[0];
      v4 = v123[1];
    }

    if (v121 != (v4 - 32))
    {
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<Timestamp::TimeDomain,timeval>,std::__tree_node<std::__value_type<Timestamp::TimeDomain,timeval>,void *> *,long>>(v121, *(v4 - 4), v4 - 3);
      v3 = v123[0];
      v4 = v123[1];
    }

    if (v3 != v4)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v113 = _Q0;
      do
      {
        v120 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v118[16] = v9;
        v119 = v9;
        *v118 = v9;
        Timestamp::Timestamp(v118, v3);
        Timestamp::Timestamp(&v118[24], v3 + 3);
        v10 = *(v3 + 12);
        LODWORD(v120) = v10;
        v11 = v119;
        if (v119)
        {
          v12 = &v119;
          do
          {
            v13 = *(v11 + 32);
            if ((v13 & 0x80000000) == 0)
            {
              v12 = v11;
            }

            v11 = *(v11 + ((v13 >> 28) & 8));
          }

          while (v11);
          if (v12 == &v119 || *(v12 + 8) > 0)
          {
            v14 = 0;
            v11 = 0;
            v15 = *&v118[8];
            if (!*&v118[8])
            {
              goto LABEL_28;
            }
          }

          else
          {
            v11 = *(v12 + 12);
            v14 = 1000000 * *(v12 + 5);
            v15 = *&v118[8];
            if (!*&v118[8])
            {
LABEL_28:
              v18 = 0;
              goto LABEL_32;
            }
          }
        }

        else
        {
          v14 = 0;
          v15 = *&v118[8];
          if (!*&v118[8])
          {
            goto LABEL_28;
          }
        }

        v16 = &v118[8];
        do
        {
          v17 = *(v15 + 32);
          if ((v17 & 0x80000000) == 0)
          {
            v16 = v15;
          }

          v15 = *(v15 + ((v17 >> 28) & 8));
        }

        while (v15);
        if (v16 == &v118[8] || *(v16 + 8) > 0)
        {
          v18 = 0;
          v15 = 0;
        }

        else
        {
          v15 = *(v16 + 12);
          v18 = -1000000 * *(v16 + 5);
        }

LABEL_32:
        v19 = vcvtd_n_f64_u32(v10, 0x14uLL);
        v20 = v11 + v14 + v18 - v15;
        if (v20 < 0)
        {
          v20 = v15 - (v11 + v14 + v18);
        }

        v21 = (v20 / 0xF4240uLL);
        v22 = v19 * 8.0 / v21;
        v23 = *(v1 + 32);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          Timestamp::asString(v118, 0, 9);
          v73 = v117;
          v74 = v116;
          Timestamp::asString(&v118[24], 0, 9);
          v75 = &v116;
          if (v73 < 0)
          {
            v75 = v74;
          }

          p_p = &__p;
          if (v115 < 0)
          {
            p_p = __p;
          }

          LODWORD(v124.__r_.__value_.__l.__data_) = 136316162;
          *(v124.__r_.__value_.__r.__words + 4) = v75;
          WORD2(v124.__r_.__value_.__r.__words[1]) = 2080;
          *(&v124.__r_.__value_.__r.__words[1] + 6) = p_p;
          HIWORD(v124.__r_.__value_.__r.__words[2]) = 2048;
          v125 = v19;
          v126 = 2048;
          v127 = v21;
          v128 = 2048;
          v129 = v19 * 8.0 / v21;
          _os_log_debug_impl(&dword_241A16000, v23, OS_LOG_TYPE_DEBUG, "#D Start time: %s, end time: %s, amount: %f MB, duration: %f seconds, data rate: %f Mbps", &v124, 0x34u);
          if (v115 < 0)
          {
            operator delete(__p);
            if ((v117 & 0x80000000) == 0)
            {
              goto LABEL_35;
            }
          }

          else if ((v117 & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          operator delete(v116);
        }

LABEL_35:
        v24 = *buf;
        v25 = *buf + 1;
        *buf = v25;
        v26 = v22 + *&buf[8];
        *&buf[8] = v22 + *&buf[8];
        if (v25 <= 1)
        {
          v133[v24] = v22;
        }

        else
        {
          *(&v131 + 1) = (v22 - v26 / v25) * (v22 - v26 / v25) / v24 + *(&v131 + 1) * v24 / v25;
          if (v25 > 5)
          {
            v27 = v133[0];
            if (v133[0] > v22)
            {
              v28 = 1;
              v133[0] = v19 * 8.0 / v21;
              v29 = 4;
LABEL_41:
              v30 = v28 + (v29 & 0xFFFFFFFFFFFFFFFCLL);
              v31 = &v137[8 * v28 - 16];
              v32 = v29 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v33 = vaddq_f64(*v31, v113);
                v31[-1] = vaddq_f64(v31[-1], v113);
                *v31 = v33;
                v31 += 2;
                v32 -= 4;
              }

              while (v32);
              if (v29 != (v29 & 0xFFFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_54:
                  *(&v135 + v30) = *(&v135 + v30) + 1.0;
                  ++v30;
                }

                while (v30 != 5);
              }

              v27 = v133[0];
LABEL_56:
              v40 = vaddq_f64(v138, *&v137[8]);
              *&v137[8] = v40;
              v41 = vaddq_f64(v139, *&v137[24]);
              *&v137[24] = v41;
              v43 = *(&v135 + 1);
              v42 = *&v136;
              *&v137[40] = v140 + *&v137[40];
              v44 = v40.f64[1] - *(&v135 + 1);
              v45 = *&v136 - *(&v135 + 1);
              v46 = *&v135 - *(&v135 + 1);
              v47 = v133[2];
              v48 = v133[1];
              v49 = v40.f64[1] - *(&v135 + 1) < 1.0 || v45 <= 1.0;
              if (!v49 || (v44 <= -1.0 ? (_NF = v46 < -1.0) : (_NF = 0), _NF))
              {
                v51 = (v133[2] - v133[1]) / v45;
                v52 = (v44 / fabs(v44));
                v53 = (v27 - v133[1]) / v46;
                v54 = v133[1] + v52 / (v45 - v46) * ((v45 - v52) * v53 + (v52 - v46) * v51);
                if (v27 < v54 && v54 < v133[2])
                {
                  goto LABEL_76;
                }

                v56 = v133[1] + v51;
                if (v44 <= 0.0)
                {
                  v56 = v133[1];
                }

                v54 = v44 >= 0.0 ? v56 : v56 - v53;
                if (v44 != 0.0)
                {
LABEL_76:
                  v133[1] = v54;
                }

                v43 = *(&v135 + 1) + v52;
                *(&v135 + 1) = v43;
                v48 = v54;
              }

              v57 = v41.f64[0] - *&v136;
              v58 = *(&v136 + 1) - *&v136;
              v59 = v43 - *&v136;
              if (v41.f64[0] - *&v136 >= 1.0 && v58 > 1.0 || v57 <= -1.0 && v59 < -1.0)
              {
                v60 = (v133[3] - v133[2]) / v58;
                v61 = (v57 / fabs(v57));
                v62 = (v48 - v133[2]) / v59;
                v63 = v133[2] + v61 / (v58 - v59) * (v62 * (v58 - v61) + (v61 - v59) * v60);
                if (v48 < v63 && v63 < v133[3])
                {
                  goto LABEL_92;
                }

                if (v57 > 0.0)
                {
                  v47 = v133[2] + v60;
                }

                v63 = v57 >= 0.0 ? v47 : v47 - v62;
                if (v57 != 0.0)
                {
LABEL_92:
                  v133[2] = v63;
                }

                v42 = *&v136 + v61;
                *&v136 = v42;
                v47 = v63;
              }

              v41.f64[0] = v41.f64[1] - *(&v136 + 1);
              v65 = *v137 - *(&v136 + 1);
              v66 = v42 - *(&v136 + 1);
              if (v41.f64[1] - *(&v136 + 1) >= 1.0 && v65 > 1.0 || v41.f64[0] <= -1.0 && v66 < -1.0)
              {
                v67 = (v134 - v133[3]) / v65;
                v68 = (v47 - v133[3]) / v66;
                v69 = (v41.f64[0] / fabs(v41.f64[0]));
                v70 = v133[3] + v69 / (v65 - v66) * (v68 * (v65 - v69) + (v69 - v66) * v67);
                if (v47 < v70 && v70 < v134)
                {
                  goto LABEL_108;
                }

                v72 = v133[3] + v67;
                if (v41.f64[0] <= 0.0)
                {
                  v72 = v133[3];
                }

                v70 = v41.f64[0] >= 0.0 ? v72 : v72 - v68;
                if (v41.f64[0] != 0.0)
                {
LABEL_108:
                  v133[3] = v70;
                }

                *(&v136 + 1) = *(&v136 + 1) + v69;
              }

              goto LABEL_11;
            }

            if (v134 <= v22)
            {
              v28 = 4;
              v134 = v19 * 8.0 / v21;
            }

            else
            {
              v34 = 5;
              v35 = v133;
              do
              {
                v36 = v34 >> 1;
                v37 = &v35[v34 >> 1];
                v39 = *v37;
                v38 = v37 + 1;
                v34 += ~(v34 >> 1);
                if (v39 > v22)
                {
                  v34 = v36;
                }

                else
                {
                  v35 = v38;
                }
              }

              while (v34);
              v28 = v35 - v133;
              if (v28 >= 5)
              {
                goto LABEL_56;
              }

              v29 = 5 - v28;
              if (5 - v28 > 3)
              {
                goto LABEL_41;
              }
            }

            v30 = v28;
            goto LABEL_54;
          }

          v133[v24] = v22;
          if (v25 == 5)
          {
            v124.__r_.__value_.__s.__data_[0] = -86;
            std::__sort<std::__less<double,double> &,double *>();
          }
        }

LABEL_11:
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v118[24], v119);
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v118, *&v118[8]);
        v3 += 56;
      }

      while (v3 != v4);
    }

    v78 = *buf;
    v77 = *&buf[8];
    v79 = *(&v131 + 1);
    v80 = v133[2];
    v81 = xpc_dictionary_create(0, 0, 0);
    v82 = MEMORY[0x277D86468];
    if (v81 || (v81 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x245CF6530](v81) == v82)
      {
        xpc_retain(v81);
        v83 = v81;
      }

      else
      {
        v83 = xpc_null_create();
      }
    }

    else
    {
      v83 = xpc_null_create();
      v81 = 0;
    }

    xpc_release(v81);
    if (MEMORY[0x245CF6530](v83) != v82)
    {
      v84 = *(v1 + 32);
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_128;
      }

      *v118 = 0;
      v111 = "Failed to create xpc dict for analytics";
      goto LABEL_180;
    }

    Timestamp::asString(v122, 0, 9);
    if (v118[23] >= 0)
    {
      v89 = v118;
    }

    else
    {
      v89 = *v118;
    }

    v90 = xpc_string_create(v89);
    if (!v90)
    {
      v90 = xpc_null_create();
    }

    xpc_dictionary_set_value(v83, "Trace Data Rate Collection Start Time", v90);
    v91 = xpc_null_create();
    xpc_release(v90);
    xpc_release(v91);
    if ((v118[23] & 0x80000000) != 0)
    {
      operator delete(*v118);
    }

    Timestamp::asString(v121, 0, 9);
    if (v118[23] >= 0)
    {
      v92 = v118;
    }

    else
    {
      v92 = *v118;
    }

    v93 = xpc_string_create(v92);
    if (!v93)
    {
      v93 = xpc_null_create();
    }

    xpc_dictionary_set_value(v83, "Trace Data Rate Collection End Time", v93);
    v94 = xpc_null_create();
    xpc_release(v93);
    xpc_release(v94);
    v95 = v77 / v78;
    if ((v118[23] & 0x80000000) != 0)
    {
      operator delete(*v118);
    }

    std::to_string(&v124, v95);
    v96 = std::string::append(&v124, "Mbps");
    v97 = *&v96->__r_.__value_.__l.__data_;
    *&v118[16] = *(&v96->__r_.__value_.__l + 2);
    *v118 = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    if (v118[23] >= 0)
    {
      v98 = v118;
    }

    else
    {
      v98 = *v118;
    }

    v99 = xpc_string_create(v98);
    if (!v99)
    {
      v99 = xpc_null_create();
    }

    xpc_dictionary_set_value(v83, "Trace Date Rate Mean", v99);
    v100 = xpc_null_create();
    xpc_release(v99);
    xpc_release(v100);
    if ((v118[23] & 0x80000000) != 0)
    {
      operator delete(*v118);
      if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_158;
      }
    }

    else if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_158;
    }

    operator delete(v124.__r_.__value_.__l.__data_);
LABEL_158:
    std::to_string(&v124, v80);
    v101 = std::string::append(&v124, "Mbps");
    v102 = *&v101->__r_.__value_.__l.__data_;
    *&v118[16] = *(&v101->__r_.__value_.__l + 2);
    *v118 = v102;
    v101->__r_.__value_.__l.__size_ = 0;
    v101->__r_.__value_.__r.__words[2] = 0;
    v101->__r_.__value_.__r.__words[0] = 0;
    if (v118[23] >= 0)
    {
      v103 = v118;
    }

    else
    {
      v103 = *v118;
    }

    v104 = xpc_string_create(v103);
    if (!v104)
    {
      v104 = xpc_null_create();
    }

    xpc_dictionary_set_value(v83, "Trace Date Rate Median", v104);
    v105 = xpc_null_create();
    xpc_release(v104);
    xpc_release(v105);
    if ((v118[23] & 0x80000000) != 0)
    {
      operator delete(*v118);
      v106 = sqrt(v79);
      if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_165;
      }
    }

    else
    {
      v106 = sqrt(v79);
      if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_165:
        v107 = xpc_double_create(v106);
        if (!v107)
        {
          v107 = xpc_null_create();
        }

        xpc_dictionary_set_value(v83, "Trace Date Rate Standard Deviation", v107);
        v108 = xpc_null_create();
        xpc_release(v107);
        xpc_release(v108);
        v109 = v112[1];
        if (v109)
        {
          *v118 = operator new(0x20uLL);
          *&v118[8] = xmmword_241A663E0;
          strcpy(*v118, "Trace Date Rate Statistics");
          v124.__r_.__value_.__r.__words[0] = v83;
          if (v83)
          {
            xpc_retain(v83);
          }

          else
          {
            v124.__r_.__value_.__r.__words[0] = xpc_null_create();
          }

          abm::trace::TraceInfo::push(v109, v118, &v124);
          xpc_release(v124.__r_.__value_.__l.__data_);
          v124.__r_.__value_.__r.__words[0] = 0;
          if ((v118[23] & 0x80000000) != 0)
          {
            operator delete(*v118);
          }

          goto LABEL_128;
        }

        v84 = *(v1 + 32);
        if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
LABEL_128:
          xpc_release(v83);
          goto LABEL_129;
        }

        *v118 = 0;
        v111 = "Failed to snapshot trace data rate: trace info is null";
LABEL_180:
        _os_log_error_impl(&dword_241A16000, v84, OS_LOG_TYPE_ERROR, v111, v118, 2u);
        goto LABEL_128;
      }
    }

    v110 = v106;
    operator delete(v124.__r_.__value_.__l.__data_);
    v106 = v110;
    goto LABEL_165;
  }

LABEL_129:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v121, v121[1]);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v122, v122[1]);
  v85 = v123[0];
  if (v123[0])
  {
    v86 = v123[0];
    if (v123[1] != v123[0])
    {
      v87 = v123[1] - 56;
      do
      {
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((v87 + 24), *(v87 + 4));
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v87, *(v87 + 1));
        _ZF = v87 == v85;
        v87 -= 56;
      }

      while (!_ZF);
      v86 = v123[0];
    }

    v123[1] = v85;
    operator delete(v86);
  }

  v88 = *MEMORY[0x277D85DE8];
}

void sub_241A4D5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, xpc_object_t object, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *BasebandTransportMAV::BasebandTransportMAV(void *a1, NSObject **a2, dispatch_qos_class_t a3)
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

  *a1 = &unk_2853A34C0;
  return a1;
}

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

  *a1 = &unk_2853A34C0;
  return a1;
}

void sub_241A4D834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_241A4D8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void BasebandTransportMAV::~BasebandTransportMAV(BasebandTransportMAV *this)
{
  BasebandTransport::~BasebandTransport(this);

  operator delete(v1);
}

uint64_t BasebandTransportMAV::switchDIAG_sync(BasebandTransportMAV *this)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 1;
  if (*(this + 12) != 2)
  {
    goto LABEL_42;
  }

  v2 = dispatch_queue_create("internal diag queue", 0);
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v3 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v4 = off_27E5521C0;
  if (!off_27E5521C0)
  {
    CommandDriverFactory::create_default_global(buf, v3);
    v5 = *buf;
    memset(buf, 0, sizeof(buf));
    v6 = *(&off_27E5521C0 + 1);
    off_27E5521C0 = v5;
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

    v4 = off_27E5521C0;
  }

  v8 = *(&off_27E5521C0 + 1);
  v27 = v4;
  v28 = *(&off_27E5521C0 + 1);
  if (*(&off_27E5521C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_27E5521C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN20BasebandTransportMAV15switchDIAG_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_6;
  aBlock[4] = this;
  v9 = _Block_copy(aBlock);
  if (v2)
  {
    dispatch_retain(v2);
  }

  v25 = v9;
  object = v2;
  (*(*v4 + 120))(&v29, v4, &v25);
  if (object)
  {
    dispatch_release(object);
  }

  if (v25)
  {
    _Block_release(v25);
  }

  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v10 = dispatch_group_create();
  v11 = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(v11);
  }

  v12 = v29;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1174405120;
  v20[2] = ___ZN20BasebandTransportMAV15switchDIAG_syncEv_block_invoke_3;
  v20[3] = &unk_2853A3500;
  group = v11;
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(group);
  }

  v20[4] = &v31;
  v13 = _Block_copy(v20);
  if (v2)
  {
    dispatch_retain(v2);
  }

  v22 = v13;
  v23 = v2;
  (**v12)(v12, 1, 0xAAAAAAAA00000004, 0xAAAAAAAAAAAAAAAALL, &v22);
  if (v23)
  {
    dispatch_release(v23);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (!v11)
  {
    v16 = dispatch_time(0, 6000000000);
    dispatch_group_wait(0, v16);
    v15 = v30;
    if (!v30)
    {
      goto LABEL_40;
    }

LABEL_38:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    goto LABEL_40;
  }

  dispatch_group_leave(v11);
  dispatch_release(v11);
  v14 = dispatch_time(0, 6000000000);
  dispatch_group_wait(v11, v14);
  dispatch_release(v11);
  v15 = v30;
  if (v30)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (v2)
  {
    dispatch_release(v2);
  }

LABEL_42:
  v17 = *(this + 5);
  if (*(v32 + 24) == 1)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241A16000, v17, OS_LOG_TYPE_DEFAULT, "#I Switch succeeded", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_241A16000, v17, OS_LOG_TYPE_ERROR, "Switch failed", buf, 2u);
  }

  v18 = *(v32 + 24);
  _Block_object_dispose(&v31, 8);
  return v18;
}

void sub_241A4DDCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_group_t group, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (v25)
  {
    dispatch_release(v25);
  }

  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void ___ZN20BasebandTransportMAV15switchDIAG_syncEv_block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v6 = v2;
    v7 = v3;
    v4 = *(*(a1 + 32) + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&dword_241A16000, v4, OS_LOG_TYPE_DEBUG, "#D Diag driver is started", v5, 2u);
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

uint64_t ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(diag::CommandDriver::Event,dispatch::group_session)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(BOOL)>::~callback(uint64_t a1)
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

uint64_t __cxx_global_var_init_6_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_241A16000);
  }

  return result;
}

uint64_t TraceFile::handleReadData(TraceFile *this, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(this + 16);
  v5 = *(this + 17);
  v7 = v5 - v6;
  if (a3 <= v5 - v6)
  {
    v8 = v6 + a3;
  }

  else if (*(this + 72))
  {
    *(this + 15) += a3 - v7;
    v8 = v5;
  }

  else
  {
    v8 = *(this + 17);
    v3 = (v5 - v6);
    if (!v7)
    {
      return (v5 - v6);
    }
  }

  *(this + 16) = v8;
  v10 = *(this + 14);
  v11 = v10 & (v5 - 1);
  v12 = (v5 - v11);
  *(this + 14) = v10 + v3;
  v13 = v3 - v12;
  if (v3 <= v12)
  {
    v13 = v3;
  }

  else
  {
    v14 = a2;
    memcpy((*(this + 4) + v11), a2, v12);
    v11 = 0;
    a2 = &v14[v12];
  }

  memcpy((*(this + 4) + v11), a2, v13);
  return v3;
}

BOOL TraceFile::writeToCompletion(TraceFile *this, int __fd, const unsigned __int8 *__buf, size_t __nbyte)
{
  v6 = __nbyte;
  do
  {
    v7 = v6;
    if (!v6)
    {
      break;
    }

    v8 = write(__fd, __buf, v6);
    v6 = v7 - v8;
    __buf += v8;
  }

  while ((v8 & 0x8000000000000000) == 0);
  return v7 == 0;
}

void std::__shared_ptr_pointer<TraceFile *,std::shared_ptr<TraceFile>::__shared_ptr_default_delete<TraceFile,TraceFile>,std::allocator<TraceFile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TraceFile *,std::shared_ptr<TraceFile>::__shared_ptr_default_delete<TraceFile,TraceFile>,std::allocator<TraceFile>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000241A66779)
  {
    if (((v2 & 0x8000000241A66779 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000241A66779))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000241A66779 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

TraceFile **std::unique_ptr<TraceFile>::~unique_ptr[abi:ne200100](TraceFile **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    TraceFile::~TraceFile(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void abm::trace::TraceReader::create(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = operator new(0xB8uLL);
  v5 = *a1;
  v13[0] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v13[1] = *(a1 + 8);
  TraceFileCollection::Parameters::Parameters(&v14, (a1 + 16));
  TraceFileCollection::Parameters::Parameters(v15, (a1 + 144));
  v15[16] = *(a1 + 272);
  v16 = *(a1 + 280);
  v17 = *(a1 + 288);
  v6 = *(a1 + 320);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != a1 + 296)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_6:
    v19 = v6;
    goto LABEL_8;
  }

  v19 = &v18;
  (*(*v6 + 24))(v6);
LABEL_8:
  v20 = *(a1 + 328);
  abm::trace::TraceReader::TraceReader(v4, v13);
  *a2 = v4;
  v7 = operator new(0x20uLL);
  v7[1] = 0;
  v8 = v7 + 1;
  *v7 = &unk_2853A3638;
  v7[2] = 0;
  v7[3] = v4;
  a2[1] = v7;
  v9 = *(v4 + 2);
  if (v9)
  {
    if (v9->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v7 + 2, 1uLL, memory_order_relaxed);
      *(v4 + 1) = v4;
      *(v4 + 2) = v7;
      v10 = v7;
      std::__shared_weak_count::__release_weak(v9);
      v7 = v10;
      if (!atomic_fetch_add(v8, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v7 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 1) = v4;
    *(v4 + 2) = v7;
    if (!atomic_fetch_add(v8, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_13:
      v11 = v7;
      (*(*v7 + 16))();
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  abm::trace::TraceReader::Config::~Config(v13);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_241A4E6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  TraceFileCollection::Parameters::~Parameters((v11 + 144));
  TraceFileCollection::Parameters::~Parameters((v11 + 16));
  if (object)
  {
    dispatch_release(object);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t abm::trace::TraceReader::TraceReader(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = ctu::OsLogLogger::OsLogLogger(a1, "com.apple.telephony", *(a2 + 8));
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v5 = dispatch_queue_attr_make_with_qos_class(0, *(a2 + 328), 0);
  object = dispatch_queue_create("tracereader.queue", v5);
  BasebandTransport::create(&object, *(a2 + 328), (a1 + 24));
  if (object)
  {
    dispatch_release(object);
  }

  TraceFileCollection::create((a2 + 16), (a1 + 40));
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  v7 = *(a2 + 272);
  *(a1 + 128) = 0u;
  *(a1 + 120) = v7;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  if (v7 == 2)
  {
    TraceFileCollection::create((a2 + 144), v28);
    v8 = *v28;
    v28[0] = 0;
    v28[1] = 0;
    v9 = *(a1 + 64);
    *(a1 + 56) = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = v28[1];
    if (v28[1] && !atomic_fetch_add(v28[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v7 = *(a1 + 120);
  }

  if (v7 == 3)
  {
    TraceFileCollection::create((a2 + 144), v28);
    v11 = *v28;
    v28[0] = 0;
    v28[1] = 0;
    v12 = *(a1 + 64);
    *(a1 + 56) = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = v28[1];
    if (v28[1] && !atomic_fetch_add(v28[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    StreamingInstance = abm::trace::TraceReader::createStreamingInstance(a1, a2, *(a2 + 8));
  }

  if (capabilities::trace::supportsDataRateObserver(StreamingInstance) && *(a2 + 276))
  {
    v28[0] = 0xAAAAAAAAAAAAAAAALL;
    v28[1] = 0xAAAAAAAAAAAAAAAALL;
    _ZNSt3__115allocate_sharedB8ne200100I25TracePeakDataRateObserverNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v28);
    v14 = *(a2 + 280);
    v15 = *v28;
    v16 = v28[0];
    *(v28[0] + 13) = (1000000 * *(a2 + 276));
    *(v16 + 96) = v14;
    v28[0] = 0;
    v28[1] = 0;
    v17 = *(a1 + 80);
    *(a1 + 72) = v15;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = v28[1];
    if (v28[1] && !atomic_fetch_add(v28[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      v30 = *(a2 + 288);
      v19 = *(a2 + 320);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v30 = *(a2 + 288);
      v19 = *(a2 + 320);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    if (v19 == a2 + 296)
    {
      v32 = v31;
      (*(*v19 + 24))(v19, v31);
LABEL_33:
      if (v30)
      {
        v28[0] = 0xAAAAAAAAAAAAAAAALL;
        v28[1] = 0xAAAAAAAAAAAAAAAALL;
        std::allocate_shared[abi:ne200100]<TraceDataRateObserver,std::allocator<TraceDataRateObserver>,TraceDataRateObserver::Parameters &,0>(&v30, v28);
        if (v28[0])
        {
          TraceDataRateObserver::start(v28[0]);
          v20 = v28[0];
          v21 = v28[1];
          v28[0] = 0;
          v28[1] = 0;
          v22 = *(a1 + 176);
          *(a1 + 168) = v20;
          *(a1 + 176) = v21;
          if (!v22)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v23 = v28[1];
          v28[0] = 0;
          v28[1] = 0;
          v22 = *(a1 + 176);
          *(a1 + 168) = 0;
          *(a1 + 176) = v23;
          if (!v22)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        v28[0] = 0;
        v28[1] = 0;
        v22 = *(a1 + 176);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        if (!v22)
        {
          goto LABEL_42;
        }
      }

      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }

LABEL_42:
      v24 = v28[1];
      if (v28[1] && !atomic_fetch_add(v28[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v24->__on_zero_shared)(v24);
        std::__shared_weak_count::__release_weak(v24);
        v25 = v32;
        if (v32 != v31)
        {
LABEL_45:
          if (v25)
          {
            (*(*v25 + 40))(v25);
          }

          goto LABEL_49;
        }
      }

      else
      {
        v25 = v32;
        if (v32 != v31)
        {
          goto LABEL_45;
        }
      }

      (*(*v25 + 32))(v25);
      goto LABEL_49;
    }

    v19 = (*(*v19 + 16))(v19);
LABEL_29:
    v32 = v19;
    goto LABEL_33;
  }

LABEL_49:
  v26 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_241A4EC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, char a13)
{
  TraceDataRateObserver::Parameters::~Parameters(&a13);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100]((v16 + 5));
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100]((v16 + 3));
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100]((v16 + 1));
  if (*v16)
  {
    _Block_release(*v16);
  }

  if (*(v13 + 119) < 0)
  {
    operator delete(*(v13 + 96));
  }

  v18 = *(v13 + 88);
  if (v18)
  {
    _Block_release(v18);
  }

  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v15);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v14);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v13 + 40);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v13 + 24);
  v19 = *(v13 + 16);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
    MEMORY[0x245CF5550](v13);
    _Unwind_Resume(a1);
  }

  MEMORY[0x245CF5550](v13);
  _Unwind_Resume(a1);
}

void sub_241A4ED78(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL abm::trace::TraceReader::createStreamingInstance(uint64_t a1, dispatch_object_t *a2, char *a3)
{
  if (*(a1 + 152))
  {
    v4 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_241A16000, v4, OS_LOG_TYPE_ERROR, "Streaming instance exists!", buf, 2u);
    }

    return 1;
  }

  v5 = *a2;
  if (*a2)
  {
    v6 = a3;
    dispatch_retain(*a2);
    dispatch_retain(v5);
    a3 = v6;
  }

  v13 = v5;
  TraceSocketStreamer::create(a3, &v13, buf);
  v8 = *buf;
  v7 = v15;
  *buf = 0;
  v15 = 0;
  v12 = v7;
  if (v5)
  {
    dispatch_release(v5);
    v7 = v12;
  }

  v9 = *(a1 + 160);
  *(a1 + 152) = v8;
  *(a1 + 160) = v7;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  if (*(a1 + 152))
  {
    return 1;
  }

  v11 = *a1;
  result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    _os_log_error_impl(&dword_241A16000, v11, OS_LOG_TYPE_ERROR, "Failed to create streaming instance", buf, 2u);
    return 0;
  }

  return result;
}

void sub_241A4EF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!v10)
  {
    std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

  dispatch_release(v10);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a10);
  dispatch_release(v10);
  _Unwind_Resume(a1);
}

void abm::trace::TraceReader::~TraceReader(abm::trace::TraceReader *this)
{
  v3 = (this + 24);
  v2 = *(this + 3);
  if (v2)
  {
    BasebandTransport::close(v2);
    v4 = *(this + 4);
    *(this + 3) = 0;
    *(this + 4) = 0;
    if (!v4)
    {
      *v3 = 0;
      v3[1] = 0;
      v6 = *(this + 19);
      if (!v6)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(this + 4);
    *v3 = 0;
    v3[1] = 0;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  v6 = *(this + 19);
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_9:
  (*(*v6 + 24))(v6);
  v7 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_241A16000, v7, OS_LOG_TYPE_DEFAULT, "#I Successfully stopped trace streamer!", v24, 2u);
  }

LABEL_12:
  v8 = (this + 72);
  if (*(this + 9))
  {
    v9 = *(this + 10);
    *(this + 9) = 0;
    *(this + 10) = 0;
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v10 = *(this + 10);
      *v8 = 0;
      *(this + 10) = 0;
      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

    else
    {
      *v8 = 0;
      *(this + 10) = 0;
    }
  }

  v11 = (this + 168);
  if (*(this + 21))
  {
    v12 = *(this + 22);
    *(this + 21) = 0;
    *(this + 22) = 0;
    if (v12)
    {
      if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v13 = *(this + 22);
      *v11 = 0;
      *(this + 22) = 0;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }
    }

    else
    {
      *v11 = 0;
      *(this + 22) = 0;
    }
  }

  v14 = *(this + 22);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(this + 20);
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(this + 18);
  if (!v16 || atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v17 = *(this + 16);
    if (!v17)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  v17 = *(this + 16);
  if (v17)
  {
LABEL_37:
    _Block_release(v17);
  }

LABEL_38:
  if ((*(this + 119) & 0x80000000) == 0)
  {
    v18 = *(this + 11);
    if (!v18)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  operator delete(*(this + 12));
  v18 = *(this + 11);
  if (v18)
  {
LABEL_42:
    _Block_release(v18);
  }

LABEL_43:
  v19 = *(this + 10);
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(this + 8);
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *(this + 6);
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = *(this + 4);
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(this + 2);
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  MEMORY[0x245CF5550](this);
}

uint64_t abm::trace::TraceReader::start(uint64_t a1, unsigned int *a2, int a3, const void **a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    v46 = 0xAAAAAA0000000000;
    v47 = 0u;
    v48 = 0u;
    *&buf = &v46;
    *(&buf + 1) = v5;
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 0x40000000;
    *&v50 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
    *(&v50 + 1) = &__block_descriptor_tmp_109;
    v51 = v5 + 8;
    p_buf = &buf;
    v9 = *(v5 + 24);
    if (*(v5 + 32))
    {
      dispatch_async_and_wait(v9, &block);
      if (v46 == 1)
      {
LABEL_4:
        v10 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(block) = 0;
          _os_log_impl(&dword_241A16000, v10, OS_LOG_TYPE_DEFAULT, "#I Transport is opened already", &block, 2u);
        }

        v11 = 1;
        goto LABEL_72;
      }
    }

    else
    {
      dispatch_sync(v9, &block);
      if (v46 == 1)
      {
        goto LABEL_4;
      }
    }

    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN3abm5trace11TraceReader5startERKN17BasebandTransport10ParametersENSt3__16chrono8durationIxNS6_5ratioILl1ELl1EEEEEN8dispatch5blockIU13block_pointerFvNS2_6StatusEEEE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_10;
    aBlock[4] = a1;
    aBlock[5] = v14;
    v45 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = _Block_copy(aBlock);
    v16 = *(a1 + 128);
    *(a1 + 128) = v15;
    if (v16)
    {
      _Block_release(v16);
    }

    v17 = *(a1 + 152);
    if (v17 && ((*(*v17 + 16))(v17) & 1) == 0)
    {
      v21 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        LOWORD(block) = 0;
        _os_log_error_impl(&dword_241A16000, v21, OS_LOG_TYPE_ERROR, "Failed to start trace streamer; either socket connection is alive or TCP stack is abnormal", &block, 2u);
      }

      goto LABEL_26;
    }

    if (!*(a1 + 120))
    {
LABEL_41:
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 1174405120;
      v39[2] = ___ZN3abm5trace11TraceReader5startERKN17BasebandTransport10ParametersENSt3__16chrono8durationIxNS6_5ratioILl1ELl1EEEEEN8dispatch5blockIU13block_pointerFvNS2_6StatusEEEE_block_invoke_9;
      v39[3] = &__block_descriptor_tmp_13_0;
      v39[4] = a1;
      v39[5] = v14;
      v40 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = _Block_copy(v39);
      v26 = v25;
      v27 = *(a1 + 24);
      v28 = *(a2 + 1);
      block = *a2;
      v50 = v28;
      v51 = *(a2 + 4);
      if (v25)
      {
        v29 = _Block_copy(v25);
      }

      else
      {
        v29 = 0;
      }

      v38 = v29;
      v11 = (**v27)(v27, &block, &v38);
      if (v38)
      {
        _Block_release(v38);
      }

      if (v11)
      {
        v30 = *(a1 + 24);
        if (*a4)
        {
          v31 = _Block_copy(*a4);
          v37 = v31;
          BasebandTransport::reportStatus(v30, a3, &v37);
          if (v31)
          {
            _Block_release(v31);
          }
        }

        else
        {
          v37 = 0;
          BasebandTransport::reportStatus(v30, a3, &v37);
        }
      }

      else
      {
        v32 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
        {
          BasebandTransport::asString(*a2, &block);
          v33 = (SBYTE7(v50) & 0x80u) == 0 ? &block : block;
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v33;
          _os_log_error_impl(&dword_241A16000, v32, OS_LOG_TYPE_ERROR, "Failed to open %s transport channel", &buf, 0xCu);
          if (SBYTE7(v50) < 0)
          {
            operator delete(block);
          }
        }
      }

      if (v26)
      {
        _Block_release(v26);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_weak(v40);
      }

      goto LABEL_68;
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 1174405120;
    v42[2] = ___ZN3abm5trace11TraceReader5startERKN17BasebandTransport10ParametersENSt3__16chrono8durationIxNS6_5ratioILl1ELl1EEEEEN8dispatch5blockIU13block_pointerFvNS2_6StatusEEEE_block_invoke_4;
    v42[3] = &__block_descriptor_tmp_8_0;
    v42[4] = a1;
    v42[5] = v14;
    v43 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = _Block_copy(v42);
    v19 = v18;
    if (v18)
    {
      v20 = _Block_copy(v18);
    }

    else
    {
      v20 = 0;
    }

    v41 = v20;
    support::parsers::acp::ParserEngine::create(&v41, 1, &block);
    v22 = block;
    block = 0uLL;
    v23 = *(a1 + 144);
    *(a1 + 136) = v22;
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v24 = *(&block + 1);
    if (*(&block + 1) && !atomic_fetch_add((*(&block + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    if (v41)
    {
      _Block_release(v41);
    }

    if (*(a1 + 136))
    {
      if (v19)
      {
        _Block_release(v19);
      }

      if (v43)
      {
        std::__shared_weak_count::__release_weak(v43);
      }

      goto LABEL_41;
    }

    v34 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block) = 0;
      _os_log_error_impl(&dword_241A16000, v34, OS_LOG_TYPE_ERROR, "Failed to create packetParserEngine", &block, 2u);
      if (!v19)
      {
LABEL_61:
        if (v43)
        {
          std::__shared_weak_count::__release_weak(v43);
          v11 = 0;
          goto LABEL_68;
        }

LABEL_26:
        v11 = 0;
LABEL_68:
        if (v45)
        {
          std::__shared_weak_count::__release_weak(v45);
        }

        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        goto LABEL_72;
      }
    }

    else if (!v19)
    {
      goto LABEL_61;
    }

    _Block_release(v19);
    goto LABEL_61;
  }

  v12 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    LOWORD(block) = 0;
    _os_log_error_impl(&dword_241A16000, v12, OS_LOG_TYPE_ERROR, "Transport is not ready!", &block, 2u);
  }

  v11 = 0;
LABEL_72:
  v35 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_241A4FAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *aBlock, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3abm5trace11TraceReader5startERKN17BasebandTransport10ParametersENSt3__16chrono8durationIxNS6_5ratioILl1ELl1EEEEEN8dispatch5blockIU13block_pointerFvNS2_6StatusEEEE_block_invoke(void *a1, TraceFileCollection **a2, const unsigned __int8 *a3, unsigned int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (a1[5])
      {
        if (*a2)
        {
          Data = TraceFileCollection::handleReadData(*a2, a3, a4);
          if (!TraceFileCollection::getInMemoryRemaining(*a2))
          {
            v13 = *v9;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *block = 0;
              _os_log_debug_impl(&dword_241A16000, v13, OS_LOG_TYPE_DEBUG, "#D Archiving", block, 2u);
            }

            v14 = *a2;
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 0x40000000;
            v18[2] = ___ZN19TraceFileCollection7archiveEb_block_invoke;
            v18[3] = &__block_descriptor_tmp_7_0;
            v18[4] = v14;
            v19 = 1;
            v20 = v18;
            *block = MEMORY[0x277D85DD0];
            *&block[8] = 0x40000000;
            *&block[16] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
            v22 = &__block_descriptor_tmp_82;
            v23 = v14;
            v24 = &v20;
            v15 = *(v14 + 2);
            if (*(v14 + 3))
            {
              dispatch_async_and_wait(v15, block);
            }

            else
            {
              dispatch_sync(v15, block);
            }
          }

          if (Data && a4 > Data)
          {
            TraceFileCollection::handleReadData(*a2, &a3[Data], a4 - Data);
          }
        }

        else
        {
          v16 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            *block = 136315394;
            *&block[4] = "null";
            *&block[12] = 1024;
            *&block[14] = a4;
            _os_log_error_impl(&dword_241A16000, v16, OS_LOG_TYPE_ERROR, "File collection (%s) is not ready. Dropping received TRACE chunk size %u", block, 0x12u);
          }
        }
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __copy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN3abm5trace11TraceReaderEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN3abm5trace11TraceReaderEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3abm5trace11TraceReader5startERKN17BasebandTransport10ParametersENSt3__16chrono8durationIxNS6_5ratioILl1ELl1EEEEEN8dispatch5blockIU13block_pointerFvNS2_6StatusEEEE_block_invoke_4(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_25;
  }

  v21 = std::__shared_weak_count::lock(v4);
  if (!v21)
  {
    goto LABEL_28;
  }

  if (!a1[5])
  {
    goto LABEL_25;
  }

  BytePtr = CFDataGetBytePtr(*(*a2 + 8));
  Length = CFDataGetLength(*(*a2 + 8));
  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = Length;
    _os_log_debug_impl(&dword_241A16000, v8, OS_LOG_TYPE_DEBUG, "#D Writing Superframe of size %u bytes", buf, 8u);
    v9 = *(v3 + 120);
    if (v9 != 3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *(v3 + 120);
    if (v9 != 3)
    {
LABEL_6:
      if (v9 == 2)
      {
        v10 = *(v3 + 128);
        v12 = *(v3 + 64);
        *buf = *(v3 + 56);
        v23 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        if (v9 != 1)
        {
          goto LABEL_25;
        }

        v10 = *(v3 + 128);
        v11 = *(v3 + 48);
        *buf = *(v3 + 40);
        v23 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      (*(v10 + 16))(v10, buf, BytePtr, Length);
      v13 = v23;
      if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
        v14 = v21;
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  v15 = *(v3 + 128);
  v16 = *(v3 + 64);
  *buf = *(v3 + 56);
  v23 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v15 + 16))(v15, buf, BytePtr, Length);
  v17 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(v3 + 152);
  if (v18)
  {
    (*(*v18 + 40))(v18, BytePtr, Length);
    goto LABEL_25;
  }

  v19 = *v3;
  if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
LABEL_25:
    v14 = v21;
    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  *buf = 0;
  _os_log_error_impl(&dword_241A16000, v19, OS_LOG_TYPE_ERROR, "streamer object gone!", buf, 2u);
  v14 = v21;
LABEL_26:
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_28:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_241A5016C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZN3abm5trace11TraceReader5startERKN17BasebandTransport10ParametersENSt3__16chrono8durationIxNS6_5ratioILl1ELl1EEEEEN8dispatch5blockIU13block_pointerFvNS2_6StatusEEEE_block_invoke_9(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v22 = 0;
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_24;
  }

  v22 = std::__shared_weak_count::lock(v5);
  if (!v22)
  {
    goto LABEL_27;
  }

  if (!a1[5])
  {
    goto LABEL_24;
  }

  v8 = *v4;
  if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(v4 + 72);
    v10 = &loc_241A64000;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  LODWORD(block) = 67109120;
  HIDWORD(block) = a3;
  _os_log_debug_impl(&dword_241A16000, v8, OS_LOG_TYPE_DEBUG, "#D Received TRACE chunk size %u", &block, 8u);
  v9 = *(v4 + 72);
  v10 = &loc_241A64000;
  if (v9)
  {
LABEL_6:
    block = MEMORY[0x277D85DD0];
    v26 = v10[230];
    v27 = ___ZN25TracePeakDataRateObserver10feedSampleEj_block_invoke;
    v28 = &__block_descriptor_tmp_6;
    v29 = v9;
    LODWORD(v30) = a3;
    os_unfair_lock_lock(v9 + 4);
    v27(&block);
    os_unfair_lock_unlock(v9 + 4);
  }

LABEL_7:
  v11 = *(v4 + 168);
  if (v11)
  {
    TraceDataRateObserver::feedSample(v11, a3);
  }

  v12 = *(v4 + 120);
  if ((v12 - 2) < 2)
  {
    v17 = *(v4 + 128);
    v18 = *(v4 + 48);
    block = *(v4 + 40);
    v26 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(v17 + 16))(v17, &block, a2, a3);
    v19 = v26;
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

  else if (v12 != 1)
  {
    if (!v12)
    {
      v13 = *(v4 + 128);
      v14 = *(v4 + 48);
      block = *(v4 + 40);
      v26 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(v13 + 16))(v13, &block, a2, a3);
      v15 = v26;
      if (v26)
      {
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
          v16 = v22;
          goto LABEL_25;
        }
      }
    }

LABEL_24:
    v16 = v22;
    if (!v22)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v23[0] = *(v4 + 136);
  v23[1] = a2;
  v24 = a3;
  block = MEMORY[0x277D85DD0];
  v26 = v10[230];
  v27 = ___ZNK3ctu20SharedSynchronizableIN7support7parsers3acp12ParserEngineEE20execute_wrapped_syncIZNS4_7addDataEPhjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
  v28 = &__block_descriptor_tmp_11_0;
  v29 = v23[0] + 8;
  v30 = v23;
  v20 = *(v23[0] + 24);
  if (*(v23[0] + 32))
  {
    dispatch_async_and_wait(v20, &block);
    goto LABEL_24;
  }

  dispatch_sync(v20, &block);
  v16 = v22;
LABEL_25:
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_27:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_241A50504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_241A5052C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t abm::trace::TraceReader::stop(abm::trace::TraceReader *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    result = BasebandTransport::close(v2);
    v4 = *(this + 19);
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    result = 1;
    v4 = *(this + 19);
    if (!v4)
    {
      return result;
    }
  }

  v5 = result;
  v6 = (*(*v4 + 24))(v4);
  v7 = *this;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_241A16000, v7, OS_LOG_TYPE_DEFAULT, "#I Successfully stopped trace streamer", v8, 2u);
    }

    return v5;
  }

  else
  {
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_error_impl(&dword_241A16000, v7, OS_LOG_TYPE_ERROR, "Failed to stop trace streamer", buf, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t abm::trace::TraceReader::snapshot(uint64_t a1, const __CFDictionary **a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v146 = *MEMORY[0x277D85DE8];
  v141[0] = 0xAAAAAAAAAAAAAAAALL;
  v141[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v141, *a2);
  memset(v140, 170, sizeof(v140));
  v8 = *MEMORY[0x277CECB88];
  v9 = strlen(*MEMORY[0x277CECB88]);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
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

    p_dst = operator new(v12);
    __dst.__r_.__value_.__l.__size_ = v10;
    __dst.__r_.__value_.__r.__words[2] = v12 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_9;
  }

  *(&__dst.__r_.__value_.__s + 23) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_9:
    memmove(p_dst, v8, v10);
  }

  v13 = *MEMORY[0x277CECBB8];
  p_dst->__r_.__value_.__s.__data_[v10] = 0;
  ctu::cf::MakeCFString::MakeCFString(v133, v13);
  ctu::cf::map_adapter::getString();
  MEMORY[0x245CF55C0](v133);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  memset(v139, 170, sizeof(v139));
  v14 = *MEMORY[0x277CECD48];
  v15 = strlen(*MEMORY[0x277CECD48]);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    v17 = operator new(v18);
    __dst.__r_.__value_.__l.__size_ = v16;
    __dst.__r_.__value_.__r.__words[2] = v18 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v17;
    goto LABEL_20;
  }

  *(&__dst.__r_.__value_.__s + 23) = v15;
  v17 = &__dst;
  if (v15)
  {
LABEL_20:
    memmove(v17, v14, v16);
  }

  v19 = *MEMORY[0x277CECB78];
  v17->__r_.__value_.__s.__data_[v16] = 0;
  ctu::cf::MakeCFString::MakeCFString(v133, v19);
  ctu::cf::map_adapter::getString();
  MEMORY[0x245CF55C0](v133);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  memset(__s1, 170, sizeof(__s1));
  v20 = *MEMORY[0x277CECC78];
  v21 = strlen(*MEMORY[0x277CECC78]);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v21 | 7) + 1;
    }

    v23 = operator new(v24);
    __dst.__r_.__value_.__l.__size_ = v22;
    __dst.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v23;
    goto LABEL_31;
  }

  *(&__dst.__r_.__value_.__s + 23) = v21;
  v23 = &__dst;
  if (v21)
  {
LABEL_31:
    memmove(v23, v20, v22);
  }

  v25 = *MEMORY[0x277CECC28];
  v23->__r_.__value_.__s.__data_[v22] = 0;
  ctu::cf::MakeCFString::MakeCFString(v133, v25);
  ctu::cf::map_adapter::getString();
  MEMORY[0x245CF55C0](v133);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  memset(&v137, 170, sizeof(v137));
  v26 = abm::trace::kSnapshotFolder;
  v27 = strlen(abm::trace::kSnapshotFolder);
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
    v135[1] = v28;
    v135[2] = (v30 | 0x8000000000000000);
    v135[0] = v29;
    goto LABEL_42;
  }

  HIBYTE(v135[2]) = v27;
  v29 = v135;
  if (v27)
  {
LABEL_42:
    memmove(v29, v26, v28);
  }

  v31 = *MEMORY[0x277CECC70];
  *(v28 + v29) = 0;
  ctu::cf::MakeCFString::MakeCFString(__p, v31);
  ctu::cf::map_adapter::getString();
  MEMORY[0x245CF55C0](__p);
  v32 = abm::trace::kLogDirPrefix;
  v33 = strlen(abm::trace::kLogDirPrefix);
  if (v33 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v33;
  if (v33 >= 0x17)
  {
    if ((v33 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v33 | 7) + 1;
    }

    v35 = operator new(v36);
    __p[1] = v34;
    __p[2] = (v36 | 0x8000000000000000);
    __p[0] = v35;
    goto LABEL_51;
  }

  HIBYTE(__p[2]) = v33;
  v35 = __p;
  if (v33)
  {
LABEL_51:
    memmove(v35, v32, v34);
  }

  *(v34 + v35) = 0;
  if (SHIBYTE(__p[2]) >= 0)
  {
    v37 = __p;
  }

  else
  {
    v37 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v38 = HIBYTE(__p[2]);
  }

  else
  {
    v38 = __p[1];
  }

  v39 = std::string::append(&v136, v37, v38);
  v40 = *&v39->__r_.__value_.__l.__data_;
  *&v133[16] = *(&v39->__r_.__value_.__l + 2);
  *v133 = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v140[2]) >= 0)
  {
    v41 = v140;
  }

  else
  {
    v41 = v140[0];
  }

  if (SHIBYTE(v140[2]) >= 0)
  {
    v42 = HIBYTE(v140[2]);
  }

  else
  {
    v42 = v140[1];
  }

  v43 = std::string::append(v133, v41, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = std::string::append(&__dst, abm::trace::kICETraceSnapshotDirectorySuffix);
  v46 = *&v45->__r_.__value_.__l.__data_;
  v137.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v137.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v133[23] & 0x80000000) == 0)
    {
LABEL_66:
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_91;
    }
  }

  else if ((v133[23] & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(*v133);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
LABEL_67:
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_92:
    operator delete(v136.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v135[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_93;
  }

LABEL_91:
  operator delete(__p[0]);
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_92;
  }

LABEL_68:
  if ((SHIBYTE(v135[2]) & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

LABEL_93:
  operator delete(v135[0]);
LABEL_69:
  *&v47 = 0xAAAAAAAAAAAAAAAALL;
  *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v133 = v47;
  *&v133[16] = v47;
  v133[0] = 0;
  v133[24] = 0;
  v48 = *(a1 + 120);
  if ((v48 - 2) < 2)
  {
    v49 = SHIBYTE(v137.__r_.__value_.__r.__words[2]);
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v137.__r_.__value_.__l.__size_;
    }

    v51 = size + 5;
    if (size + 5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v51 < 0x17)
    {
      memset(&__dst, 0, sizeof(__dst));
      v53 = &__dst;
      *(&__dst.__r_.__value_.__s + 23) = size + 5;
      if (!size)
      {
LABEL_99:
        strcpy(v53 + size, "-live");
        *v133 = __dst;
        v133[24] = 1;
        goto LABEL_108;
      }
    }

    else
    {
      if ((v51 | 7) == 0x17)
      {
        v52 = 25;
      }

      else
      {
        v52 = (v51 | 7) + 1;
      }

      v53 = operator new(v52);
      __dst.__r_.__value_.__l.__size_ = size + 5;
      __dst.__r_.__value_.__r.__words[2] = v52 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v53;
    }

    if (v49 >= 0)
    {
      v59 = &v137;
    }

    else
    {
      v59 = v137.__r_.__value_.__r.__words[0];
    }

    memmove(v53, v59, size);
    goto LABEL_99;
  }

  if (v48 != 1)
  {
    goto LABEL_108;
  }

  v54 = SHIBYTE(v137.__r_.__value_.__r.__words[2]);
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v55 = v137.__r_.__value_.__l.__size_;
  }

  v56 = v55 + 5;
  if (v55 + 5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v56 >= 0x17)
  {
    if ((v56 | 7) == 0x17)
    {
      v57 = 25;
    }

    else
    {
      v57 = (v56 | 7) + 1;
    }

    v58 = operator new(v57);
    __dst.__r_.__value_.__l.__size_ = v55 + 5;
    __dst.__r_.__value_.__r.__words[2] = v57 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v58;
    goto LABEL_101;
  }

  memset(&__dst, 0, sizeof(__dst));
  v58 = &__dst;
  *(&__dst.__r_.__value_.__s + 23) = v55 + 5;
  if (v55)
  {
LABEL_101:
    if (v54 >= 0)
    {
      v60 = &v137;
    }

    else
    {
      v60 = v137.__r_.__value_.__r.__words[0];
    }

    memmove(v58, v60, v55);
  }

  strcpy(v58 + v55, "-live");
  if (v54 < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  v137 = __dst;
LABEL_108:
  memset(&v136, 170, sizeof(v136));
  v61 = *MEMORY[0x277CECCD0];
  memset(&__dst, 0, sizeof(__dst));
  ctu::cf::MakeCFString::MakeCFString(v135, v61);
  ctu::cf::map_adapter::getString();
  MEMORY[0x245CF55C0](v135);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  memset(v135, 170, sizeof(v135));
  v62 = *MEMORY[0x277CECBA8];
  *(&__dst.__r_.__value_.__s + 23) = 7;
  strcpy(&__dst, "Unknown");
  ctu::cf::MakeCFString::MakeCFString(__p, v62);
  ctu::cf::map_adapter::getString();
  MEMORY[0x245CF55C0](__p);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v63 = strlen(v20);
    v64 = SHIBYTE(__s1[2]);
    if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_112;
    }

LABEL_118:
    if (v63 != __s1[1])
    {
      v66 = *a1;
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_142;
      }

      goto LABEL_140;
    }

    if (v63 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v65 = memcmp(__s1[0], v20, v63);
    if (v65)
    {
      goto LABEL_114;
    }

    goto LABEL_121;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  v63 = strlen(v20);
  v64 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    goto LABEL_118;
  }

LABEL_112:
  if (v63 != v64)
  {
    v66 = *a1;
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_142;
    }

    goto LABEL_138;
  }

  v65 = memcmp(__s1, v20, v63);
  if (v65)
  {
LABEL_114:
    v66 = *a1;
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_142;
    }

    if ((v64 & 0x80000000) != 0)
    {
LABEL_140:
      v78 = __s1[0];
      goto LABEL_141;
    }

LABEL_138:
    v78 = __s1;
LABEL_141:
    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v78;
    _os_log_impl(&dword_241A16000, v66, OS_LOG_TYPE_DEFAULT, "#I Skipping snapshot as trace filter is '%s'", &__dst, 0xCu);
    goto LABEL_142;
  }

LABEL_121:
  if (!*(a1 + 24))
  {
    v81 = *a1;
    if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_142;
    }

    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
    v82 = "Transport is not ready!";
LABEL_188:
    _os_log_error_impl(&dword_241A16000, v81, OS_LOG_TYPE_ERROR, v82, &__dst, 2u);
    goto LABEL_142;
  }

  if (!*(a1 + 40))
  {
    v81 = *a1;
    if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_142;
    }

    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
    v82 = "File Collection is not ready!";
    goto LABEL_188;
  }

  if ((*(a1 + 120) & 0xFFFFFFFE) == 2 && !*(a1 + 56))
  {
    v81 = *a1;
    if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_142;
    }

    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
    v82 = "Secondary File Collection is not ready!";
    goto LABEL_188;
  }

  memset(__p, 170, 24);
  capabilities::radio::firmwarePrefix(&v131, v65);
  v67 = std::string::insert(&v131, 0, "Baseband Trace\nBBFW Version: ");
  v68 = *&v67->__r_.__value_.__l.__data_;
  v132.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
  *&v132.__r_.__value_.__l.__data_ = v68;
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v135[2]) >= 0)
  {
    v69 = v135;
  }

  else
  {
    v69 = v135[0];
  }

  if (SHIBYTE(v135[2]) >= 0)
  {
    v70 = HIBYTE(v135[2]);
  }

  else
  {
    v70 = v135[1];
  }

  v71 = std::string::append(&v132, v69, v70);
  v72 = *&v71->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v72;
  v71->__r_.__value_.__l.__size_ = 0;
  v71->__r_.__value_.__r.__words[2] = 0;
  v71->__r_.__value_.__r.__words[0] = 0;
  v73 = std::string::append(&__dst, "\n");
  v74 = *&v73->__r_.__value_.__l.__data_;
  __p[2] = v73->__r_.__value_.__r.__words[2];
  *__p = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_133;
    }

LABEL_164:
    operator delete(v132.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_165;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_164;
  }

LABEL_133:
  if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_134;
  }

LABEL_165:
  operator delete(v131.__r_.__value_.__l.__data_);
LABEL_134:
  v75 = strlen(*MEMORY[0x277CECB80]);
  v76 = v75;
  if ((SHIBYTE(v139[2]) & 0x8000000000000000) == 0)
  {
    if (v75 == SHIBYTE(v139[2]))
    {
      v77 = v139;
      goto LABEL_169;
    }

LABEL_170:
    a3 = 1;
    goto LABEL_171;
  }

  if (v75 != v139[1])
  {
    goto LABEL_170;
  }

  if (v75 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v77 = v139[0];
LABEL_169:
  if (memcmp(v77, *MEMORY[0x277CECB80], v76))
  {
    goto LABEL_170;
  }

  BasebandTransport::close(*(a1 + 24));
  v85 = *(a1 + 168);
  if (v85)
  {
    v86 = a4[1];
    v130[0] = *a4;
    v130[1] = v86;
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
      TraceDataRateObserver::snapshot(v85, v130);
      if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v86->__on_zero_shared)(v86);
        std::__shared_weak_count::__release_weak(v86);
      }
    }

    else
    {
      TraceDataRateObserver::snapshot(v85, v130);
    }

    v112 = *(a1 + 168);
    *(&__dst.__r_.__value_.__s + 23) = 14;
    strcpy(&__dst, "trace shutdown");
    TraceDataRateObserver::forceReportToCA(v112, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

LABEL_171:
  v83 = *a4;
  if (!*a4)
  {
    goto LABEL_178;
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v129, v137.__r_.__value_.__l.__data_, v137.__r_.__value_.__l.__size_);
  }

  else
  {
    v129 = v137;
  }

  Timestamp::Timestamp(&v128);
  *(&v127.__r_.__value_.__s + 23) = 0;
  v127.__r_.__value_.__s.__data_[0] = 0;
  *(&v126.__r_.__value_.__s + 23) = 0;
  v126.__r_.__value_.__s.__data_[0] = 0;
  abm::trace::TraceInfo::push(v83, 9, &v129, &v128, &v127, &v126);
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_177:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v128, *(&v128 + 1));
      if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_184;
    }
  }

  else if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_177;
  }

  operator delete(v127.__r_.__value_.__l.__data_);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v128, *(&v128 + 1));
  if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_178:
    v84 = *a5;
    if (!*a5)
    {
      goto LABEL_197;
    }

    goto LABEL_179;
  }

LABEL_184:
  operator delete(v129.__r_.__value_.__l.__data_);
  v84 = *a5;
  if (!*a5)
  {
    goto LABEL_197;
  }

LABEL_179:
  if (v133[24] != 1)
  {
    goto LABEL_197;
  }

  if ((v133[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v125, *v133, *&v133[8]);
  }

  else
  {
    v125 = *v133;
  }

  Timestamp::Timestamp(&v124);
  *(&v123.__r_.__value_.__s + 23) = 0;
  v123.__r_.__value_.__s.__data_[0] = 0;
  *(&v122.__r_.__value_.__s + 23) = 0;
  v122.__r_.__value_.__s.__data_[0] = 0;
  abm::trace::TraceInfo::push(v84, 9, &v125, &v124, &v123, &v122);
  if ((SHIBYTE(v122.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_204;
  }

  operator delete(v122.__r_.__value_.__l.__data_);
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_204:
    operator delete(v123.__r_.__value_.__l.__data_);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v124, *(&v124 + 1));
    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_205;
    }

LABEL_197:
    v87 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_198;
    }

LABEL_206:
    if (!os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_201;
    }

    goto LABEL_207;
  }

LABEL_196:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v124, *(&v124 + 1));
  if ((SHIBYTE(v125.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_197;
  }

LABEL_205:
  operator delete(v125.__r_.__value_.__l.__data_);
  v87 = *a1;
  if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_206;
  }

LABEL_198:
  v88 = v135;
  if (SHIBYTE(v135[2]) < 0)
  {
    v88 = v135[0];
  }

  LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
  *(__dst.__r_.__value_.__r.__words + 4) = v88;
  _os_log_impl(&dword_241A16000, v87, OS_LOG_TYPE_DEFAULT, "#I Snapshot: BBFW=%s", &__dst, 0xCu);
  v87 = *a1;
  if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
LABEL_201:
    v89 = *(a1 + 72);
    if (!v89)
    {
      goto LABEL_215;
    }

    goto LABEL_210;
  }

LABEL_207:
  v90 = &v137;
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v90 = v137.__r_.__value_.__r.__words[0];
  }

  LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
  *(__dst.__r_.__value_.__r.__words + 4) = v90;
  WORD2(__dst.__r_.__value_.__r.__words[1]) = 1024;
  *(&__dst.__r_.__value_.__r.__words[1] + 6) = a3;
  _os_log_impl(&dword_241A16000, v87, OS_LOG_TYPE_DEFAULT, "#I Snapshot: Path=%s [move=%d]", &__dst, 0x12u);
  v89 = *(a1 + 72);
  if (v89)
  {
LABEL_210:
    v91 = a4[1];
    v120 = *a4;
    v121 = v91;
    if (v91)
    {
      atomic_fetch_add_explicit((v91 + 8), 1uLL, memory_order_relaxed);
    }

    TracePeakDataRateObserver::snapshot(v89, &v120);
    v92 = v121;
    if (v121 && !atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v92->__on_zero_shared)(v92);
      std::__shared_weak_count::__release_weak(v92);
    }
  }

LABEL_215:
  v93 = *(a1 + 168);
  if (v93)
  {
    v94 = a4[1];
    v119[0] = *a4;
    v119[1] = v94;
    if (v94)
    {
      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      TraceDataRateObserver::snapshot(v93, v119);
      if (!atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v94->__on_zero_shared)(v94);
        std::__shared_weak_count::__release_weak(v94);
      }
    }

    else
    {
      TraceDataRateObserver::snapshot(v93, v119);
    }
  }

  v95 = *(a1 + 24);
  __dst.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
  __dst.__r_.__value_.__l.__size_ = 0x40000000;
  __dst.__r_.__value_.__r.__words[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
  v143 = &__block_descriptor_tmp_87;
  v144 = v95;
  v145 = 1;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped((v95 + 8), &__dst);
  v96 = *(a1 + 152);
  if (!v96)
  {
    goto LABEL_239;
  }

  v132.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  (*(*v96 + 32))(&v132);
  if (MEMORY[0x245CF6530](v132.__r_.__value_.__r.__words[0]) != MEMORY[0x277D86468])
  {
    v97 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_241A16000, v97, OS_LOG_TYPE_ERROR, "get empty stats", &__dst, 2u);
    }
  }

  v98 = *a4;
  v99 = *MEMORY[0x277CECCB0];
  v100 = strlen(*MEMORY[0x277CECCB0]);
  if (v100 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v101 = v100;
  if (v100 >= 0x17)
  {
    if ((v100 | 7) == 0x17)
    {
      v103 = 25;
    }

    else
    {
      v103 = (v100 | 7) + 1;
    }

    v102 = operator new(v103);
    __dst.__r_.__value_.__l.__size_ = v101;
    __dst.__r_.__value_.__r.__words[2] = v103 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v102;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v100;
    v102 = &__dst;
    if (!v100)
    {
      goto LABEL_233;
    }
  }

  memmove(v102, v99, v101);
LABEL_233:
  v102->__r_.__value_.__s.__data_[v101] = 0;
  v104 = v132.__r_.__value_.__r.__words[0];
  v118 = v132.__r_.__value_.__r.__words[0];
  if (v132.__r_.__value_.__r.__words[0])
  {
    xpc_retain(v132.__r_.__value_.__l.__data_);
  }

  else
  {
    v104 = xpc_null_create();
    v118 = v104;
  }

  abm::trace::TraceInfo::push(v98, &__dst, &v118);
  xpc_release(v104);
  v118 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  xpc_release(v132.__r_.__value_.__l.__data_);
LABEL_239:
  v105 = *(a1 + 40);
  v106 = a4[1];
  v116 = *a4;
  v117 = v106;
  if (v106)
  {
    atomic_fetch_add_explicit((v106 + 8), 1uLL, memory_order_relaxed);
  }

  TraceFileCollection::snapshot(v105, &v137, &v136, __p, a3, &v116);
  v107 = v117;
  if (v117 && !atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v107->__on_zero_shared)(v107);
    std::__shared_weak_count::__release_weak(v107);
  }

  v108 = *(a1 + 56);
  if (v108 && v133[24] == 1)
  {
    v109 = a5[1];
    v114 = *a5;
    v115 = v109;
    if (v109)
    {
      atomic_fetch_add_explicit((v109 + 8), 1uLL, memory_order_relaxed);
    }

    TraceFileCollection::snapshot(v108, v133, &v136, __p, a3, &v114);
    v110 = v115;
    if (v115 && !atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v110->__on_zero_shared)(v110);
      std::__shared_weak_count::__release_weak(v110);
    }
  }

  v111 = *a1;
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_241A16000, v111, OS_LOG_TYPE_DEFAULT, "#I snapshot complete", &__dst, 2u);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_142:
  if (SHIBYTE(v135[2]) < 0)
  {
    operator delete(v135[0]);
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_144:
      if (v133[24] != 1)
      {
        goto LABEL_150;
      }

      goto LABEL_148;
    }
  }

  else if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_144;
  }

  operator delete(v136.__r_.__value_.__l.__data_);
  if (v133[24] != 1)
  {
    goto LABEL_150;
  }

LABEL_148:
  if ((v133[23] & 0x80000000) != 0)
  {
    operator delete(*v133);
  }

LABEL_150:
  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
    {
LABEL_152:
      if ((SHIBYTE(v139[2]) & 0x80000000) == 0)
      {
        goto LABEL_153;
      }

LABEL_157:
      operator delete(v139[0]);
      if ((SHIBYTE(v140[2]) & 0x80000000) == 0)
      {
        goto LABEL_154;
      }

LABEL_158:
      operator delete(v140[0]);
      goto LABEL_154;
    }
  }

  else if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
  {
    goto LABEL_152;
  }

  operator delete(__s1[0]);
  if (SHIBYTE(v139[2]) < 0)
  {
    goto LABEL_157;
  }

LABEL_153:
  if (SHIBYTE(v140[2]) < 0)
  {
    goto LABEL_158;
  }

LABEL_154:
  result = MEMORY[0x245CF55E0](v141);
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241A51904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, xpc_object_t object, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, char a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  if (*(v76 - 137) < 0)
  {
    operator delete(*(v76 - 160));
  }

  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a59 == 1 && a58 < 0)
  {
    operator delete(a53);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (*(v76 - 225) < 0)
  {
    operator delete(*(v76 - 248));
  }

  if (*(v76 - 201) < 0)
  {
    operator delete(*(v76 - 224));
  }

  if (*(v76 - 177) < 0)
  {
    operator delete(*(v76 - 200));
  }

  MEMORY[0x245CF55E0](v76 - 176);
  _Unwind_Resume(a1);
}

void sub_241A51CF8()
{
  if ((*(v0 - 225) & 0x80000000) == 0)
  {
    JUMPOUT(0x241A51CC8);
  }

  JUMPOUT(0x241A51CC0);
}

void sub_241A51D10()
{
  if ((*(v0 - 177) & 0x80000000) == 0)
  {
    JUMPOUT(0x241A51CE8);
  }

  JUMPOUT(0x241A51CE0);
}

void abm::trace::TraceReader::clearFiles(abm::trace::TraceReader *this, char a2, int a3)
{
  v6 = (this + 40);
  v7 = *(this + 5);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = abm::trace::kTrashFolder;
  v9 = strlen(abm::trace::kTrashFolder);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_47;
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
    v27 = v12 | 0x8000000000000000;
    __dst[0] = v11;
  }

  else
  {
    HIBYTE(v27) = v9;
    v11 = __dst;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  memmove(v11, v8, v10);
LABEL_11:
  *(v10 + v11) = 0;
  TraceFileCollection::clear(v7, __dst, a2);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst[0]);
    if (!a3)
    {
      goto LABEL_22;
    }
  }

  else if (!a3)
  {
    goto LABEL_22;
  }

  v13 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v14 = *(this + 6);
    *v6 = 0;
    v6[1] = 0;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
  }

LABEL_22:
  v16 = (this + 56);
  v15 = *(this + 7);
  if (!v15)
  {
    return;
  }

  v17 = abm::trace::kTrashFolder;
  v18 = strlen(abm::trace::kTrashFolder);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_47:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v18 | 7) + 1;
    }

    v20 = operator new(v21);
    __p[1] = v19;
    v25 = v21 | 0x8000000000000000;
    __p[0] = v20;
    goto LABEL_31;
  }

  HIBYTE(v25) = v18;
  v20 = __p;
  if (v18)
  {
LABEL_31:
    memmove(v20, v17, v19);
  }

  *(v19 + v20) = 0;
  TraceFileCollection::clear(v15, __p, a2);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  v22 = *(this + 8);
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (!v22)
  {
    *v16 = 0;
    *(this + 8) = 0;
    return;
  }

  if (atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v23 = *(this + 8);
    *v16 = 0;
    *(this + 8) = 0;
    if (!v23)
    {
      return;
    }
  }

  else
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v23 = *(this + 8);
    *v16 = 0;
    *(this + 8) = 0;
    if (!v23)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);

    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_241A5206C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void abm::trace::TraceReader::updateHistorySize(abm::trace::TraceReader *this, int a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 0x40000000;
    v10 = ___ZN19TraceFileCollection10setHistoryEi_block_invoke;
    v11 = &__block_descriptor_tmp_20_0;
    v12 = v4;
    v13 = a2;
    v14 = &v8;
    block = MEMORY[0x277D85DD0];
    v16 = 0x40000000;
    v17 = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v18 = &__block_descriptor_tmp_82;
    v19 = v4;
    v20 = &v14;
    v5 = *(v4 + 16);
    if (!*(v4 + 24))
    {
      dispatch_sync(v5, &block);
      v6 = *(this + 7);
      if (!v6)
      {
        return;
      }

      goto LABEL_5;
    }

    dispatch_async_and_wait(v5, &block);
  }

  v6 = *(this + 7);
  if (!v6)
  {
    return;
  }

LABEL_5:
  v8 = MEMORY[0x277D85DD0];
  v9 = 0x40000000;
  v10 = ___ZN19TraceFileCollection10setHistoryEi_block_invoke;
  v11 = &__block_descriptor_tmp_20_0;
  v12 = v6;
  v13 = a2;
  v14 = &v8;
  block = MEMORY[0x277D85DD0];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_82;
  v19 = v6;
  v20 = &v14;
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    dispatch_async_and_wait(v7, &block);
  }

  else
  {
    dispatch_sync(v7, &block);
  }
}

void abm::trace::TraceReader::updateTraceBandwidth(abm::trace::TraceReader *this, int a2)
{
  v4 = *(this + 9);
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___ZN25TracePeakDataRateObserver20updateTraceBandwidthEj_block_invoke;
    v6[3] = &__block_descriptor_tmp_7;
    v6[4] = v4;
    v7 = a2;
    os_unfair_lock_lock(v4 + 4);
    ___ZN25TracePeakDataRateObserver20updateTraceBandwidthEj_block_invoke(v6);
    os_unfair_lock_unlock(v4 + 4);
  }

  v5 = *(this + 21);
  if (v5)
  {

    TraceDataRateObserver::updateTraceBandwidth(v5, a2);
  }
}

void abm::trace::TraceReader::updateMaxMemoryFileCount(abm::trace::TraceReader *this, int a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 0x40000000;
    v10 = ___ZN19TraceFileCollection21setMaxMemoryFileCountEj_block_invoke;
    v11 = &__block_descriptor_tmp_21_0;
    v12 = v4;
    v13 = a2;
    v14 = &v8;
    block = MEMORY[0x277D85DD0];
    v16 = 0x40000000;
    v17 = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v18 = &__block_descriptor_tmp_82;
    v19 = v4;
    v20 = &v14;
    v5 = *(v4 + 16);
    if (!*(v4 + 24))
    {
      dispatch_sync(v5, &block);
      v6 = *(this + 7);
      if (!v6)
      {
        return;
      }

      goto LABEL_5;
    }

    dispatch_async_and_wait(v5, &block);
  }

  v6 = *(this + 7);
  if (!v6)
  {
    return;
  }

LABEL_5:
  v8 = MEMORY[0x277D85DD0];
  v9 = 0x40000000;
  v10 = ___ZN19TraceFileCollection21setMaxMemoryFileCountEj_block_invoke;
  v11 = &__block_descriptor_tmp_21_0;
  v12 = v6;
  v13 = a2;
  v14 = &v8;
  block = MEMORY[0x277D85DD0];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_82;
  v19 = v6;
  v20 = &v14;
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    dispatch_async_and_wait(v7, &block);
  }

  else
  {
    dispatch_sync(v7, &block);
  }
}

void abm::trace::TraceReader::updateFileSize(abm::trace::TraceReader *this, int a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 0x40000000;
    v10 = ___ZN19TraceFileCollection11setFileSizeEj_block_invoke;
    v11 = &__block_descriptor_tmp_22_0;
    v12 = v4;
    v13 = a2;
    v14 = &v8;
    block = MEMORY[0x277D85DD0];
    v16 = 0x40000000;
    v17 = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v18 = &__block_descriptor_tmp_82;
    v19 = v4;
    v20 = &v14;
    v5 = *(v4 + 16);
    if (!*(v4 + 24))
    {
      dispatch_sync(v5, &block);
      v6 = *(this + 7);
      if (!v6)
      {
        return;
      }

      goto LABEL_5;
    }

    dispatch_async_and_wait(v5, &block);
  }

  v6 = *(this + 7);
  if (!v6)
  {
    return;
  }

LABEL_5:
  v8 = MEMORY[0x277D85DD0];
  v9 = 0x40000000;
  v10 = ___ZN19TraceFileCollection11setFileSizeEj_block_invoke;
  v11 = &__block_descriptor_tmp_22_0;
  v12 = v6;
  v13 = a2;
  v14 = &v8;
  block = MEMORY[0x277D85DD0];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_82;
  v19 = v6;
  v20 = &v14;
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    dispatch_async_and_wait(v7, &block);
  }

  else
  {
    dispatch_sync(v7, &block);
  }
}

TraceFileCollection *abm::trace::TraceReader::getCurrentIndex(abm::trace::TraceReader *this)
{
  result = *(this + 5);
  if (result)
  {
    return TraceFileCollection::getNewestFileNumber(result);
  }

  return result;
}

uint64_t abm::trace::TraceReader::notifyCellularLoggingPortNumber(abm::trace::TraceReader *this)
{
  v2 = (*(**(this + 19) + 48))(*(this + 19));
  if ((v2 & 1) == 0)
  {
    v3 = *this;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I forward streaming info fail", v5, 2u);
    }
  }

  return v2;
}

void abm::trace::TraceReader::wait(abm::trace::TraceReader *this, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(this + 3);
  v16 = 0xAAAAAA0000000000;
  v17 = 0u;
  v18 = 0u;
  v19 = &v16;
  v20 = v4;
  *&block = MEMORY[0x277D85DD0];
  *(&block + 1) = 0x40000000;
  v22 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  v23 = &__block_descriptor_tmp_109;
  v24 = v4 + 8;
  v25 = &v19;
  v5 = *(v4 + 24);
  if (*(v4 + 32))
  {
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    dispatch_sync(v5, &block);
  }

  v6 = v17;
  v7 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(block) = 134217984;
    *(&block + 4) = v6;
    _os_log_impl(&dword_241A16000, v7, OS_LOG_TYPE_DEFAULT, "#I current rx bytes: %llu", &block, 0xCu);
  }

  if ((1000 * a2) >= 0x32)
  {
    v8 = 1000 * a2 / 0x32u;
    v9 = MEMORY[0x277D85DD0];
    while (1)
    {
      usleep(0xC350u);
      v10 = *(this + 3);
      v16 = 0xAAAAAA0000000000;
      v17 = 0u;
      v18 = 0u;
      v19 = &v16;
      v20 = v10;
      *&block = v9;
      *(&block + 1) = 0x40000000;
      v22 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
      v23 = &__block_descriptor_tmp_109;
      v24 = v10 + 8;
      v25 = &v19;
      v11 = *(v10 + 24);
      if (*(v10 + 32))
      {
        dispatch_async_and_wait(v11, &block);
      }

      else
      {
        dispatch_sync(v11, &block);
      }

      v12 = v17;
      v13 = *this;
      v14 = os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT);
      if (v6 == v12)
      {
        break;
      }

      v6 = v12;
      if (v14)
      {
        LODWORD(block) = 134217984;
        *(&block + 4) = v12;
        _os_log_impl(&dword_241A16000, v13, OS_LOG_TYPE_DEFAULT, "#I current rx bytes: %llu", &block, 0xCu);
      }

      if (!--v8)
      {
        goto LABEL_17;
      }
    }

    if (v14)
    {
      LOWORD(block) = 0;
      _os_log_impl(&dword_241A16000, v13, OS_LOG_TYPE_DEFAULT, "#I No incoming data, exiting wait", &block, 2u);
    }
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
}

TraceFileCollection::Parameters *TraceFileCollection::Parameters::Parameters(TraceFileCollection::Parameters *this, const TraceFileCollection::Parameters *a2)
{
  *this = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
    *(this + 4) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    v6 = *(a2 + 4);
    v5 = *(a2 + 5);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    if ((v7 & 0x8000000000000000) != 0)
    {
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
    }

    v10 = operator new(v7);
    *(this + 4) = v10;
    *(this + 5) = v10;
    v11 = &v10[v7];
    *(this + 6) = &v10[v7];
    memcpy(v10, v6, v7);
    *(this + 5) = v11;
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v6 = *(a2 + 4);
  v9 = *(a2 + 5);
  v7 = v9 - v6;
  if (v9 != v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a2 + 79) & 0x80000000) == 0)
  {
LABEL_4:
    v8 = *(a2 + 56);
    *(this + 9) = *(a2 + 9);
    *(this + 56) = v8;
    goto LABEL_9;
  }

LABEL_8:
  std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
LABEL_9:
  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v12 = *(a2 + 5);
    *(this + 12) = *(a2 + 12);
    *(this + 5) = v12;
  }

  v13 = *(a2 + 104);
  *(this + 30) = *(a2 + 30);
  *(this + 104) = v13;
  return this;
}

void sub_241A52AFC(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
    TraceFileCollection::HeaderOptions::~HeaderOptions(v1);
    _Unwind_Resume(a1);
  }

  TraceFileCollection::HeaderOptions::~HeaderOptions(v1);
  _Unwind_Resume(a1);
}

void sub_241A52B34(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

void TraceFileCollection::Parameters::~Parameters(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
    if ((*(this + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this[4];
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 79) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[7]);
  v2 = this[4];
  if (v2)
  {
LABEL_4:
    this[5] = v2;
    operator delete(v2);
  }

LABEL_5:
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void TraceFileCollection::HeaderOptions::~HeaderOptions(TraceFileCollection::HeaderOptions *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void abm::trace::TraceReader::Config::~Config(abm::trace::TraceReader::Config *this)
{
  v2 = this + 296;
  v3 = *(this + 40);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(this + 247) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if ((*(this + 247) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(this + 223) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  operator delete(*(this + 28));
  if ((*(this + 223) & 0x80000000) == 0)
  {
LABEL_6:
    v4 = *(this + 22);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  operator delete(*(this + 25));
  v4 = *(this + 22);
  if (v4)
  {
LABEL_7:
    *(this + 23) = v4;
    operator delete(v4);
  }

LABEL_8:
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
    if ((*(this + 119) & 0x80000000) == 0)
    {
LABEL_10:
      if ((*(this + 95) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((*(this + 119) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(this + 12));
  if ((*(this + 95) & 0x80000000) == 0)
  {
LABEL_11:
    v5 = *(this + 6);
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_24:
  operator delete(*(this + 9));
  v5 = *(this + 6);
  if (v5)
  {
LABEL_12:
    *(this + 7) = v5;
    operator delete(v5);
  }

LABEL_13:
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*this)
  {
    dispatch_release(*this);
  }
}

void std::__shared_ptr_pointer<abm::trace::TraceReader *,std::shared_ptr<abm::trace::TraceReader>::__shared_ptr_default_delete<abm::trace::TraceReader,abm::trace::TraceReader>,std::allocator<abm::trace::TraceReader>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abm::trace::TraceReader *,std::shared_ptr<abm::trace::TraceReader>::__shared_ptr_default_delete<abm::trace::TraceReader,abm::trace::TraceReader>,std::allocator<abm::trace::TraceReader>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    abm::trace::TraceReader::~TraceReader(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<abm::trace::TraceReader *,std::shared_ptr<abm::trace::TraceReader>::__shared_ptr_default_delete<abm::trace::TraceReader,abm::trace::TraceReader>,std::allocator<abm::trace::TraceReader>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000241A66850)
  {
    if (((v2 & 0x8000000241A66850 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000241A66850))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000241A66850 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

abm::trace::TraceReader **std::unique_ptr<abm::trace::TraceReader>::~unique_ptr[abi:ne200100](abm::trace::TraceReader **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    abm::trace::TraceReader::~TraceReader(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_241A16000);
  }

  return result;
}

uint64_t abm::trace::getBasebandTraceDirSuffix@<X0>(abm::trace *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this;
  memset(a2, 170, 24);
  a2[23] = 0;
  *a2 = 0;
  result = capabilities::radio::vendor(this);
  if ((result - 2) >= 3)
  {
    if (result != 1)
    {
      return result;
    }

    v5 = &abm::trace::kEURTraceSnapshotDirectorySuffix;
    if (v2)
    {
      v5 = &abm::trace::kEURQDSSTraceSnapshotDirectorySuffix;
    }
  }

  else
  {
    v5 = &abm::trace::kICETraceSnapshotDirectorySuffix;
  }

  return MEMORY[0x245CF57C0](a2, *v5);
}

void sub_241A52F7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void abm::trace::getCoreDumpDirSuffix(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&_MergedGlobals_2);
    if (v4)
    {
      v5 = capabilities::radio::maverick(v4);
      v6 = &abm::trace::kEURCoreDumpSnapshotDirectorySuffix;
      if (!v5)
      {
        v6 = &abm::trace::kCoreDumpSnapshotDirectorySuffix;
      }

      std::string::basic_string[abi:ne200100]<0>(&xmmword_27E552440, *v6);
      __cxa_guard_release(&_MergedGlobals_2);
    }
  }

  if (byte_27E552457 < 0)
  {
    v3 = xmmword_27E552440;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_27E552440;
    a1->__r_.__value_.__r.__words[2] = unk_27E552450;
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
        if (!strcasecmp(v1, abm::trace::kIPC) || !strcasecmp(v1, abm::trace::kKernelPCI) || !strcasecmp(v1, abm::trace::kTapToRadar))
        {
          goto LABEL_40;
        }

LABEL_34:
        if (strcasecmp(v1, abm::trace::kProfile))
        {
          if (strcasecmp(v1, abm::trace::kTraceTailspin) && strcasecmp(v1, abm::trace::kTraceSettings) && strcasecmp(v1, abm::trace::kTraceFilter))
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
    if (!strcasecmp(v1, abm::trace::kIPC) || !strcasecmp(v1, abm::trace::kKernelPCI) || !strcasecmp(v1, abm::trace::kTapToRadar))
    {
LABEL_40:

      return MEMORY[0x2821F6560]();
    }

    goto LABEL_34;
  }

LABEL_43:

  return MEMORY[0x2821F6520]();
}

void Timestamp::Timestamp(Timestamp *this, const Timestamp **a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
      v15 = 0xAAAAAAAAAAAAAAAALL;
      v6 = std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__find_equal<Timestamp::TimeDomain>(this, v3, &v15, &v14, v5 + 8);
      if (*v6)
      {
        v7 = *(v5 + 1);
        if (v7)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = operator new(0x38uLL);
        v9 = *(v5 + 2);
        v8[6] = *(v5 + 6);
        *(v8 + 2) = v9;
        v10 = v15;
        *v8 = 0;
        v8[1] = 0;
        v8[2] = v10;
        *v6 = v8;
        v11 = **this;
        if (v11)
        {
          *this = v11;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v8);
        ++*(this + 2);
        v7 = *(v5 + 1);
        if (v7)
        {
          do
          {
LABEL_10:
            v12 = v7;
            v7 = *v7;
          }

          while (v7);
          goto LABEL_3;
        }
      }

      do
      {
        v12 = *(v5 + 2);
        v13 = *v12 == v5;
        v5 = v12;
      }

      while (!v13);
LABEL_3:
      v5 = v12;
    }

    while (v12 != v4);
  }
}

void *Timestamp::Timestamp(void *a1, _OWORD *a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

__n128 Timestamp::set(uint64_t **a1, __n128 *a2, int a3)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 32);
        if (v9 <= a3)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a3)
      {
        break;
      }

      v6 = *(v8 + 1);
      if (!v6)
      {
        v7 = v8 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = (a1 + 1);
LABEL_8:
    v10 = v8;
    v8 = operator new(0x38uLL);
    *(v8 + 8) = a3;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = v10;
    *v7 = v8;
    v11 = **a1;
    if (v11)
    {
      *a1 = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v8);
    a1[2] = (a1[2] + 1);
  }

  result = *a2;
  *(v8 + 40) = *a2;
  return result;
}

void *Timestamp::Timestamp(void *a1, uint64_t a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

uint64_t **Timestamp::Timestamp(uint64_t **a1, char *a2, char a3, int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  v7 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  v27 = 0x11AAAAAAAAAA0053;
  *__p = *"%Y-%m-%d-%H-%M-%S";
  if ((a3 & 0x10) != 0)
  {
    MEMORY[0x245CF57C0](__p, "%Y.%m.%d_%H-%M-%S%z");
  }

  *(&v24 + 1) = 0xAAAAAAAA00000000;
  memset(&v25, 0, sizeof(v25));
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (v27 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (strptime(a2, v8, &v25))
  {
    v25.tm_isdst = -1;
    *&v24 = mktime(&v25);
    if (v24 != -1)
    {
      goto LABEL_18;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = __error();
      v21 = strerror(*v20);
      *buf = 136315138;
      v29 = v21;
      _os_log_error_impl(&dword_241A16000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to convert to absolute time. Error: %s\n", buf, 0xCu);
      v24 = 0uLL;
      if ((gettimeofday(&v24, 0) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v24 = 0uLL;
      if ((gettimeofday(&v24, 0) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v9 = __error();
    v10 = strerror(*v9);
    *buf = 136315138;
    v29 = v10;
    v11 = MEMORY[0x277D86220];
    v12 = "Failed to get current time after absolute time conversion failed. Error: %s\n";
    goto LABEL_35;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241A16000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to convert time from string format\n", buf, 2u);
  }

  v24 = 0uLL;
  if (gettimeofday(&v24, 0) < 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v22 = __error();
    v23 = strerror(*v22);
    *buf = 136315138;
    v29 = v23;
    v11 = MEMORY[0x277D86220];
    v12 = "Failed to get current time after conversion failure. Error: %s\n";
LABEL_35:
    _os_log_error_impl(&dword_241A16000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
  }

LABEL_18:
  v13 = *v7;
  v14 = v7;
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = *(v13 + 32);
        if (v15 <= a4)
        {
          break;
        }

        v13 = *v14;
        v7 = v14;
        if (!*v14)
        {
          goto LABEL_25;
        }
      }

      if (v15 >= a4)
      {
        break;
      }

      v13 = v14[1];
      if (!v13)
      {
        v7 = v14 + 1;
        goto LABEL_25;
      }
    }

    *(v14 + 5) = v24;
    if (SHIBYTE(v27) < 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_25:
    v16 = operator new(0x38uLL);
    *(v16 + 8) = a4;
    *(v16 + 5) = 0;
    *(v16 + 6) = 0;
    *v16 = 0;
    *(v16 + 1) = 0;
    *(v16 + 2) = v14;
    *v7 = v16;
    v17 = **a1;
    if (v17)
    {
      *a1 = v17;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v16);
    a1[2] = (a1[2] + 1);
    *(v16 + 40) = v24;
    if (SHIBYTE(v27) < 0)
    {
LABEL_28:
      operator delete(__p[0]);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_241A53A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t Timestamp::get(uint64_t a1, void *a2, int a3)
{
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a3)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a3));
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a3)
  {
    return 0;
  }

  *a2 = *(v6 + 40);
  return 1;
}

uint64_t *Timestamp::convert(uint64_t a1)
{
  memset(v8, 170, sizeof(v8));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  Timestamp::Timestamp(v8, &__p, 9, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  else
  {
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  v2 = &v8[1];
  v3 = v1;
  do
  {
    v4 = *(v3 + 8);
    if ((v4 & 0x80000000) == 0)
    {
      v2 = v3;
    }

    v3 = *(v3 + ((v4 >> 28) & 8));
  }

  while (v3);
  if (v2 != &v8[1] && *(v2 + 8) <= 0)
  {
    v5 = v2[5];
    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
LABEL_15:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v8, v1);
  return v5;
}

void sub_241A53BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Timestamp::timediffUSec(Timestamp *this, const Timestamp *a2, const Timestamp *a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 8);
      if ((v7 & 0x80000000) == 0)
      {
        v6 = v4;
      }

      v4 = *&v4[(v7 >> 28) & 8];
    }

    while (v4);
    if (v6 == v3 || *(v6 + 8) > 0)
    {
      v8 = 0;
      v4 = 0;
      v11 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v11;
      if (!v11)
      {
LABEL_21:
        v18 = &v4[v8] - v10;
        if (v18 >= 0)
        {
          return v18;
        }

        else
        {
          return -v18;
        }
      }
    }

    else
    {
      v4 = *(v6 + 12);
      v8 = 1000000 * *(v6 + 5);
      v17 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = *(a2 + 1);
    v9 = a2 + 8;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v13 = v9;
  do
  {
    v14 = *(v10 + 8);
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v10;
    }

    v10 = *&v10[(v14 >> 28) & 8];
  }

  while (v10);
  if (v13 == v9 || *(v13 + 8) > 0)
  {
    v15 = &v4[v8];
    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    v19 = &v4[v8 - *(v13 + 12) + -1000000 * *(v13 + 5)];
    if (v19 >= 0)
    {
      return v19;
    }

    else
    {
      return -v19;
    }
  }
}

uint64_t *std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__find_equal<Timestamp::TimeDomain>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 32);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 8))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 32);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void MallocZone::create(uint64_t a1@<X0>, vm_size_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2853A3688;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = __p;
  }

  zone = malloc_create_zone(a2, 0);
  v8 = v6 + 3;
  v6[3] = zone;
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v11;
  }

  else
  {
    v9 = v11.__r_.__value_.__r.__words[0];
  }

  malloc_set_zone_name(zone, v9);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    *a3 = v8;
    a3[1] = v6;
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  *a3 = v8;
  a3[1] = v6;
}

void sub_241A53FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a14 & 0x80000000) == 0)
  {
    std::__shared_weak_count::~__shared_weak_count(v21);
    operator delete(v23);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v24);
  _Unwind_Resume(a1);
}

malloc_zone_t **MallocZone::MallocZone(malloc_zone_t **a1, uint64_t a2, vm_size_t start_size)
{
  zone = malloc_create_zone(start_size, 0);
  *a1 = zone;
  if (*(a2 + 23) < 0)
  {
    malloc_set_zone_name(zone, *a2);
  }

  else
  {
    malloc_set_zone_name(zone, a2);
  }

  return a1;
}

{
  zone = malloc_create_zone(start_size, 0);
  *a1 = zone;
  if (*(a2 + 23) < 0)
  {
    malloc_set_zone_name(zone, *a2);
  }

  else
  {
    malloc_set_zone_name(zone, a2);
  }

  return a1;
}

void MallocZone::~MallocZone(malloc_zone_t **this)
{
  malloc_destroy_zone(*this);
  *this = 0;
}

{
  malloc_destroy_zone(*this);
  *this = 0;
}

void std::__shared_ptr_emplace<MallocZone::create(std::string,unsigned long)::MallocZoneNoPrivate,std::allocator<MallocZone::create(std::string,unsigned long)::MallocZoneNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2853A3688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t util::writeJSON(ctu **a1, uint64_t *a2)
{
  v2 = a2;
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  v5 = MEMORY[0x277CBEB78];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v7 = [v5 outputStreamToFileAtPath:v6 append:0];

  if (v7)
  {
    [v7 open];
    if ([v7 streamStatus] == 2)
    {
      if ([v7 hasSpaceAvailable])
      {
        cf = 0xAAAAAAAAAAAAAAAALL;
        ctu::xpc_to_cf(&cf, *a1, v8);
        v19 = 0;
        [MEMORY[0x277CCAAA0] writeJSONObject:cf toStream:v7 options:1 error:&v19];
        v9 = v19;
        if (!v9)
        {
          v11 = 1;
          v12 = cf;
          if (!cf)
          {
LABEL_19:

            goto LABEL_20;
          }

LABEL_18:
          CFRelease(v12);
          goto LABEL_19;
        }

        if ((atomic_load_explicit(&qword_27E552460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552460))
        {
          qword_27E552468 = 0;
          qword_27E552470 = 0;
          __cxa_guard_release(&qword_27E552460);
        }

        if (_MergedGlobals_3 == -1)
        {
          v10 = qword_27E552470;
          if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }
        }

        else
        {
          dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
          v10 = qword_27E552470;
          if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }
        }

        if (*(v2 + 23) < 0)
        {
          v2 = *v2;
        }

        v16 = [v9 localizedDescription];
        v17 = v16;
        v18 = [v16 UTF8String];
        *buf = 136315394;
        v22 = v2;
        v23 = 2080;
        v24 = v18;
        _os_log_error_impl(&dword_241A16000, v10, OS_LOG_TYPE_ERROR, "Failed to write json to %s (error: %s)", buf, 0x16u);

LABEL_10:
        v11 = 0;
        v12 = cf;
        if (!cf)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
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
LABEL_16:
          v11 = 0;
LABEL_20:
          [v7 close];
          goto LABEL_21;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
        v13 = qword_27E552470;
        if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }
      }

      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      *buf = 136315138;
      v22 = v2;
      _os_log_error_impl(&dword_241A16000, v13, OS_LOG_TYPE_ERROR, "Failed to write json to %s due to no space available or invalid path", buf, 0xCu);
      goto LABEL_16;
    }
  }

  v11 = 0;
LABEL_21:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void util::sGetOsLogContext(util *this)
{
  if ((atomic_load_explicit(&qword_27E552460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552460))
  {
    qword_27E552468 = 0;
    qword_27E552470 = 0;
    __cxa_guard_release(&qword_27E552460);
  }

  if (_MergedGlobals_3 != -1)
  {

    dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
  }
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t util::writeJSONToBuffer(ctu **a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a2)
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
        goto LABEL_24;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v13 = qword_27E552470;
      if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    *buf = 0;
    v14 = "Failed to write json to buffer due to invalid buffer";
LABEL_23:
    _os_log_error_impl(&dword_241A16000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_24;
  }

  if (!a4)
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
        goto LABEL_24;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v13 = qword_27E552470;
      if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    *buf = 0;
    v14 = "Failed to write json to buffer due to invalid bytes written parameter";
    goto LABEL_23;
  }

  if (a3)
  {
    v6 = [MEMORY[0x277CBEB78] outputStreamToBuffer:a2 capacity:a3];
    v7 = v6;
    if (v6)
    {
      [v6 open];
      if ([v7 streamStatus] == 2)
      {
        cf = 0xAAAAAAAAAAAAAAAALL;
        ctu::xpc_to_cf(&cf, *a1, v8);
        v22 = 0;
        v9 = [MEMORY[0x277CCAAA0] writeJSONObject:cf toStream:v7 options:1 error:&v22];
        v10 = v22;
        if (!v10)
        {
          *a4 = v9;
          v12 = 1;
          goto LABEL_34;
        }

        if ((atomic_load_explicit(&qword_27E552460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552460))
        {
          qword_27E552468 = 0;
          qword_27E552470 = 0;
          __cxa_guard_release(&qword_27E552460);
        }

        if (_MergedGlobals_3 == -1)
        {
          v11 = qword_27E552470;
          if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
          {
LABEL_10:
            v12 = 0;
LABEL_34:
            [v7 close];
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_37;
          }
        }

        else
        {
          dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
          v11 = qword_27E552470;
          if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }
        }

        v19 = [v10 localizedDescription];
        v20 = v19;
        v21 = [v19 UTF8String];
        *buf = 136315138;
        v25 = v21;
        _os_log_error_impl(&dword_241A16000, v11, OS_LOG_TYPE_ERROR, "Failed to write json to buffer (error: %s)", buf, 0xCu);

        goto LABEL_10;
      }

      if ((atomic_load_explicit(&qword_27E552460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552460))
      {
        qword_27E552468 = 0;
        qword_27E552470 = 0;
        __cxa_guard_release(&qword_27E552460);
      }

      if (_MergedGlobals_3 == -1)
      {
        v15 = qword_27E552470;
        if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
        v15 = qword_27E552470;
        if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }
      }

      *buf = 0;
      v16 = "Failed to write json to buffer due to stream opening failure";
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
        v15 = qword_27E552470;
        if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
        {
LABEL_32:
          v12 = 0;
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
        v15 = qword_27E552470;
        if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }
      }

      *buf = 0;
      v16 = "Failed to write json to buffer due to invalid stream";
    }

    _os_log_error_impl(&dword_241A16000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_32;
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
    v13 = qword_27E552470;
    if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v13 = qword_27E552470;
  if (os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
  {
LABEL_22:
    *buf = 0;
    v14 = "Failed to write json to buffer due to no buffer capacity";
    goto LABEL_23;
  }

LABEL_24:
  v12 = 0;
LABEL_38:
  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void util::createDictFromJSONFile(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_null_create();
  *a2 = v4;
  v5 = MEMORY[0x277CBEAE0];
  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  v8 = [v5 inputStreamWithFileAtPath:v7];

  if (!v8)
  {
    if ((atomic_load_explicit(&qword_27E552460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552460))
    {
      qword_27E552468 = 0;
      qword_27E552470 = 0;
      __cxa_guard_release(&qword_27E552460);
    }

    if (_MergedGlobals_3 == -1)
    {
      v10 = qword_27E552470;
      if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v10 = qword_27E552470;
      if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }
    }

    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    *object = 136315138;
    *&object[4] = v11;
    v12 = "Failed to create NSInputStream from file %s";
LABEL_25:
    _os_log_error_impl(&dword_241A16000, v10, OS_LOG_TYPE_ERROR, v12, object, 0xCu);
    goto LABEL_17;
  }

  [(NSInputStream *)v8 open];
  if ([(NSInputStream *)v8 streamStatus]!= 2)
  {
    if ((atomic_load_explicit(&qword_27E552460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552460))
    {
      qword_27E552468 = 0;
      qword_27E552470 = 0;
      __cxa_guard_release(&qword_27E552460);
    }

    if (_MergedGlobals_3 == -1)
    {
      v10 = qword_27E552470;
      if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v10 = qword_27E552470;
      if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }
    }

    if (*(a1 + 23) >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    *object = 136315138;
    *&object[4] = v14;
    v12 = "Failed to open NSInputStream from file %s";
    goto LABEL_25;
  }

  util::sCreateDictFromOpenJSONStream(object, v8);
  v9 = *object;
  *object = xpc_null_create();
  *a2 = v9;
  xpc_release(v4);
  xpc_release(*object);
  [(NSInputStream *)v8 close];
LABEL_17:

  v13 = *MEMORY[0x277D85DE8];
}

void sub_241A55108(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void util::sCreateDictFromOpenJSONStream(util *this, NSInputStream *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *this = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_null_create();
  *this = v4;
  if ([(NSInputStream *)v3 hasBytesAvailable])
  {
    v14 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v3 options:0 error:&v14];
    v7 = v14;
    if (!v7)
    {
      ctu::cf_to_xpc(buf, v5, v6);
      v11 = *buf;
      if (*buf && MEMORY[0x245CF6530](*buf) == MEMORY[0x277D86468])
      {
        xpc_retain(v11);
      }

      else
      {
        v11 = xpc_null_create();
      }

      v12 = xpc_null_create();
      *this = v11;
      xpc_release(v4);
      xpc_release(v12);
      xpc_release(*buf);
      goto LABEL_16;
    }

    if ((atomic_load_explicit(&qword_27E552460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552460))
    {
      qword_27E552468 = 0;
      qword_27E552470 = 0;
      __cxa_guard_release(&qword_27E552460);
    }

    if (_MergedGlobals_3 == -1)
    {
      v8 = qword_27E552470;
      if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v8 = qword_27E552470;
      if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    v9 = [v7 localizedDescription];
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_error_impl(&dword_241A16000, v8, OS_LOG_TYPE_ERROR, "Failed to create json from stream (error: %@)", buf, 0xCu);

    goto LABEL_16;
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
    v10 = qword_27E552470;
    if (!os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v10 = qword_27E552470;
  if (os_log_type_enabled(qword_27E552470, OS_LOG_TYPE_ERROR))
  {
LABEL_10:
    *buf = 0;
    _os_log_error_impl(&dword_241A16000, v10, OS_LOG_TYPE_ERROR, "Failed to read stream due to no bytes available", buf, 2u);
  }

LABEL_17:

  v13 = *MEMORY[0x277D85DE8];
}