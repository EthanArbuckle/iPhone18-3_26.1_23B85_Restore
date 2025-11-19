void ICETrace::closeTransport_sync(ICETrace *this)
{
  BasebandTransport::close(*(this + 42));
  if (*(this + 416) == 1)
  {
    dispatch_group_leave(*(this + 11));
    *(this + 416) = 0;
  }
}

void std::shared_ptr<TraceFileCollection>::reset[abi:ne200100](void *a1)
{
  v1 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t ICETrace::openTransport_sync(ICETrace *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 42);
  v29 = 0xAAAAAA0000000000;
  v30 = 0u;
  v31 = 0u;
  v32[0] = &v29;
  v32[1] = v6;
  block = MEMORY[0x277D85DD0];
  v34 = 0x40000000;
  v35 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  v36 = &__block_descriptor_tmp_108;
  v37 = v6 + 8;
  v38 = v32;
  v7 = *(v6 + 24);
  if (*(v6 + 32))
  {
    dispatch_async_and_wait(v7, &block);
    if (v29 == 1)
    {
LABEL_7:
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(block) = 0;
        _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Transport is open already", &block, 2u);
      }

      v9 = 1;
      goto LABEL_35;
    }
  }

  else
  {
    dispatch_sync(v7, &block);
    if (v29 == 1)
    {
      goto LABEL_7;
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8ICETrace18openTransport_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_6_2;
  aBlock[4] = this;
  aBlock[5] = v3;
  v28 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = _Block_copy(aBlock);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1174405120;
  v25[2] = ___ZN8ICETrace18openTransport_syncEv_block_invoke_7;
  v25[3] = &__block_descriptor_tmp_12_3;
  v25[4] = this;
  v25[5] = v3;
  v26 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(v25);
  v12 = *(this + 44);
  *(this + 44) = v11;
  if (v12)
  {
    _Block_release(v12);
  }

  v13 = capabilities::radio::dal(v12);
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v13);
  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  }

  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
  if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
  {
    capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  }

  v16 = *(this + 42);
  block = 0xAAAAAA0000000009;
  v34 = 10;
  v35 = *(this + 292);
  v36 = 0;
  LOBYTE(v37) = 0;
  *(&v37 + 1) = -1431655766;
  HIDWORD(v37) = -1431655766;
  if (v10)
  {
    v17 = _Block_copy(v10);
  }

  else
  {
    v17 = 0;
  }

  v24 = v17;
  v9 = (**v16)(v16, &block, &v24);
  v18 = v24;
  if (v24)
  {
    _Block_release(v24);
  }

  if (v9 && (config::hw::watch(v18) & 1) == 0 && (*(this + 248) & 1) == 0)
  {
    v19 = *(this + 42);
    v20 = *(this + 44);
    if (v20)
    {
      v21 = _Block_copy(v20);
      v23 = v21;
      BasebandTransport::reportStatus(v19, 600, &v23);
      if (v21)
      {
        _Block_release(v21);
      }
    }

    else
    {
      v23 = 0;
      BasebandTransport::reportStatus(v19, 600, &v23);
    }
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

LABEL_35:
  std::__shared_weak_count::__release_weak(v5);
  return v9;
}

void sub_23C20DCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *aBlock, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (v26)
  {
    _Block_release(v26);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  std::__shared_weak_count::__release_weak(v25);
  _Unwind_Resume(a1);
}

void ___ZN8ICETrace18openTransport_syncEv_block_invoke(void *a1, const unsigned __int8 *a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        if (*(v7 + 280) == 1 && (*(v7 + 300) & 1) == 0 && (v10 = *(v7 + 312)) != 0)
        {
          v11 = *(v7 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            v22 = a3;
            _os_log_debug_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEBUG, "#D Received TRACE chunk size %d", buf, 8u);
            v10 = *(v7 + 312);
          }

          TraceFileCollection::handleReadData(v10, a2);
          v12 = TraceFileCollection::getInMemoryRemaining(*(v7 + 312));
          v13 = v12;
          v14 = capabilities::radio::dal(v12);
          v15 = v14;
          shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v14);
          if (v15)
          {
            v17 = 2048;
          }

          else
          {
            v17 = 0x8000;
          }

          if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
          {
            capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
            v17 = 0x10000;
          }

          if (v13 <= v17)
          {
            v18 = *(v7 + 40);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_DEBUG, "#D Archiving...", buf, 2u);
            }

            TraceFileCollection::archive(*(v7 + 312));
          }
        }

        else
        {
          v19 = *(v7 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            v22 = a3;
            _os_log_debug_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_DEBUG, "#D Trace disabled. Dropping received TRACE chunk size %d", buf, 8u);
            if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }
        }
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_20:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
}

void ___ZN8ICETrace18openTransport_syncEv_block_invoke_7(void *a1, _DWORD *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v48 = v6;
    if (v6)
    {
      if (a1[5])
      {
        if (*a2 == 3)
        {
          v13 = v6;
          v14 = *(v5 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#E No Logging Traffic detected (Stalled?)", &buf, 2u);
          }

          v6 = v13;
        }

        else if (*a2 == 2)
        {
          v7 = *(v5 + 40);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#E TRACE transport error", &buf, 2u);
          }

          *&v8 = 0xAAAAAAAAAAAAAAAALL;
          *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v45 = v8;
          v46 = v8;
          v43 = v8;
          v44 = v8;
          v41 = v8;
          v42 = v8;
          buf = v8;
          v9 = *MEMORY[0x277CECC38];
          v10 = strlen(*MEMORY[0x277CECC38]);
          if (v10 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v11 = v10;
          if (v10 >= 0x17)
          {
            if ((v10 | 7) == 0x17)
            {
              v15 = 25;
            }

            else
            {
              v15 = (v10 | 7) + 1;
            }

            p_dst = operator new(v15);
            *(&__dst + 1) = v11;
            v39 = v15 | 0x8000000000000000;
            *&__dst = p_dst;
          }

          else
          {
            HIBYTE(v39) = v10;
            p_dst = &__dst;
            if (!v10)
            {
LABEL_20:
              *(p_dst + v11) = 0;
              v16 = *MEMORY[0x277CECD60];
              v17 = strlen(*MEMORY[0x277CECD60]);
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
                *(&v36 + 1) = v18;
                v37 = v20 | 0x8000000000000000;
                *&v36 = v19;
              }

              else
              {
                HIBYTE(v37) = v17;
                v19 = &v36;
                if (!v17)
                {
LABEL_29:
                  v19[v18] = 0;
                  BYTE7(v35[1]) = 21;
                  strcpy(v35, "TRACE transport error");
                  Timestamp::Timestamp(v31);
                  Timestamp::asString(v31, 0, 9, __p);
                  v30 = 0;
                  LOBYTE(v29) = 0;
                  ResetInfo::ResetInfo(&buf, &__dst, &v36, v35, __p, 7, &v29);
                  if (v34 < 0)
                  {
                    operator delete(__p[0]);
                    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v31, v32);
                    if ((SHIBYTE(v37) & 0x80000000) == 0)
                    {
LABEL_31:
                      if ((SHIBYTE(v39) & 0x80000000) == 0)
                      {
                        goto LABEL_32;
                      }

LABEL_44:
                      operator delete(__dst);
LABEL_32:
                      ResetInfo::ResetInfo(&v22, &buf);
                      ICETrace::commandResetModem_sync(v5, &v22);
                      if (v28 < 0)
                      {
                        operator delete(v27);
                        if ((v26 & 0x80000000) == 0)
                        {
LABEL_34:
                          if ((v24 & 0x80000000) == 0)
                          {
                            goto LABEL_35;
                          }

                          goto LABEL_47;
                        }
                      }

                      else if ((v26 & 0x80000000) == 0)
                      {
                        goto LABEL_34;
                      }

                      operator delete(v25);
                      if ((v24 & 0x80000000) == 0)
                      {
LABEL_35:
                        if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_36;
                        }

                        goto LABEL_48;
                      }

LABEL_47:
                      operator delete(v23);
                      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_36:
                        if ((SHIBYTE(v46) & 0x80000000) == 0)
                        {
                          goto LABEL_37;
                        }

                        goto LABEL_49;
                      }

LABEL_48:
                      operator delete(v22.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v46) & 0x80000000) == 0)
                      {
LABEL_37:
                        if ((SBYTE7(v44) & 0x80000000) == 0)
                        {
                          goto LABEL_38;
                        }

                        goto LABEL_50;
                      }

LABEL_49:
                      operator delete(*(&v45 + 1));
                      if ((SBYTE7(v44) & 0x80000000) == 0)
                      {
LABEL_38:
                        if ((SHIBYTE(v42) & 0x80000000) == 0)
                        {
                          goto LABEL_39;
                        }

                        goto LABEL_51;
                      }

LABEL_50:
                      operator delete(v43);
                      if ((SHIBYTE(v42) & 0x80000000) == 0)
                      {
LABEL_39:
                        if ((SBYTE7(v41) & 0x80000000) == 0)
                        {
                          goto LABEL_40;
                        }

                        goto LABEL_52;
                      }

LABEL_51:
                      operator delete(*(&v41 + 1));
                      if ((SBYTE7(v41) & 0x80000000) == 0)
                      {
LABEL_40:
                        v6 = v48;
                        if (!v48)
                        {
                          return;
                        }

                        goto LABEL_53;
                      }

LABEL_52:
                      operator delete(buf);
                      v6 = v48;
                      if (!v48)
                      {
                        return;
                      }

                      goto LABEL_53;
                    }
                  }

                  else
                  {
                    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v31, v32);
                    if ((SHIBYTE(v37) & 0x80000000) == 0)
                    {
                      goto LABEL_31;
                    }
                  }

                  operator delete(v36);
                  if ((SHIBYTE(v39) & 0x80000000) == 0)
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_44;
                }
              }

              memmove(v19, v16, v18);
              goto LABEL_29;
            }
          }

          memmove(p_dst, v9, v11);
          goto LABEL_20;
        }
      }

LABEL_53:
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v21 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v21);
      }
    }
  }
}

void sub_23C20E39C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ResetInfo::~ResetInfo(va);
  ResetInfo::~ResetInfo((v2 - 192));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2 - 80);
  _Unwind_Resume(a1);
}

void sub_23C20E3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a27, a28);
  if (a45 < 0)
  {
    operator delete(a40);
    if ((*(v45 - 193) & 0x80000000) == 0)
    {
LABEL_5:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v45 - 80);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v45 - 193) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v45 - 216));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v45 - 80);
  _Unwind_Resume(a1);
}

void ICETrace::commandResetModem_sync(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    dispatch_retain(*(a1 + 88));
    dispatch_group_enter(v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    v19 = v6;
    if (v6)
    {
      v7 = *(a1 + 72);
      v18 = v7;
      if (!v7)
      {
LABEL_18:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v9 = v6;
          (v6->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v9);
        }

        goto LABEL_20;
      }

      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Request to reset baseband", buf, 2u);
      }

      ResetInfo::ResetInfo(&v10, a2);
      abm::BasebandTracingTask::commandResetModem(v7, &v10);
      if (v16 < 0)
      {
        operator delete(__p);
        if ((v14 & 0x80000000) == 0)
        {
LABEL_10:
          if ((v12 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_16;
        }
      }

      else if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(v13);
      if ((v12 & 0x80000000) == 0)
      {
LABEL_11:
        if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_17:
        operator delete(v10.__r_.__value_.__l.__data_);
        v6 = v19;
        if (!v19)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

LABEL_16:
      operator delete(v11);
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_12:
        v6 = v19;
        if (!v19)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

LABEL_20:
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }
}

void sub_23C20E5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
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

uint64_t ICETrace::issueStartCommands_sync(ICETrace *this, group *a2)
{
  v3 = *(this + 2);
  if (!v3 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  gr_name = a2->gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(gr_name);
  }

  v67 = 0xAAAAAAAAAAAAAAAALL;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8ICETrace23issueStartCommands_syncEN8dispatch5groupE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_16_1;
  aBlock[4] = this;
  v64 = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(v64);
  }

  v65 = v5;
  v66 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = _Block_copy(aBlock);
  v10 = *(this + 3);
  if (v10)
  {
    dispatch_retain(*(this + 3));
  }

  v67 = v9;
  v68 = v10;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 1174405120;
  v57[2] = ___ZN8ICETrace23issueStartCommands_syncEN8dispatch5groupE_block_invoke_17;
  v57[3] = &__block_descriptor_tmp_21_0;
  v57[4] = this;
  group = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(group);
  }

  v59 = v5;
  v60 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(v57);
  v12 = *(this + 3);
  if (v12)
  {
    dispatch_retain(*(this + 3));
  }

  v61 = v11;
  v62 = v12;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 1174405120;
  v49[2] = ___ZN8ICETrace23issueStartCommands_syncEN8dispatch5groupE_block_invoke_22;
  v49[3] = &__block_descriptor_tmp_23_0;
  v49[4] = this;
  v50 = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(v50);
  }

  v51 = v5;
  v52 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v11)
  {
    v53 = _Block_copy(v11);
    v54 = v12;
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v53 = 0;
  v54 = v12;
  if (v12)
  {
LABEL_19:
    dispatch_retain(v12);
  }

LABEL_20:
  v34 = v11;
  v13 = _Block_copy(v49);
  v14 = *(this + 3);
  v36 = v13;
  if (v14)
  {
    dispatch_retain(v14);
    v13 = v36;
  }

  v55 = v13;
  v56 = v14;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 1174405120;
  v39[2] = ___ZN8ICETrace23issueStartCommands_syncEN8dispatch5groupE_block_invoke_24;
  v39[3] = &__block_descriptor_tmp_31_0;
  v39[4] = this;
  v40 = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(v40);
  }

  v41 = v5;
  v42 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = v36;
  if (v36)
  {
    v15 = _Block_copy(v36);
  }

  v43 = v15;
  v44 = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  if (v9)
  {
    v45 = _Block_copy(v9);
    object = v10;
    if (!v10)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v45 = 0;
  object = v10;
  if (v10)
  {
LABEL_30:
    dispatch_retain(v10);
  }

LABEL_31:
  v33 = v9;
  v35 = _Block_copy(v39);
  v16 = *(this + 3);
  if (v16)
  {
    dispatch_retain(*(this + 3));
  }

  v47 = v35;
  v48 = v16;
  if (*(this + 23) != *(this + 22))
  {
    goto LABEL_42;
  }

  if (*(this + 127) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *(this + 13), *(this + 14));
  }

  else
  {
    v38 = *(this + 104);
  }

  ICETrace::loadTraceConfigFile_sync(this, &v38, this + 22, 0);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    v17 = (this + 200);
    if (*(this + 26) != *(this + 25))
    {
      goto LABEL_49;
    }
  }

  else
  {
LABEL_42:
    v17 = (this + 200);
    if (*(this + 26) != *(this + 25))
    {
      goto LABEL_49;
    }
  }

  if (*(this + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *(this + 16), *(this + 17));
  }

  else
  {
    v37 = *(this + 128);
  }

  ICETrace::loadTraceConfigFile_sync(this, &v37, v17, 0);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

LABEL_49:
  if (*(this + 23) != *(this + 22) && *(this + 26) != *(this + 25))
  {
    v18 = *(this + 24);
    v19 = xpc_dictionary_create(0, 0, 0);
    if (v19 || (v19 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v19) == MEMORY[0x277D86468])
      {
        xpc_retain(v19);
        v20 = v19;
      }

      else
      {
        v20 = xpc_null_create();
      }
    }

    else
    {
      v20 = xpc_null_create();
      v19 = 0;
    }

    xpc_release(v19);
    v24 = xpc_null_create();
    xpc_release(v24);
    v25 = xpc_int64_create(v18);
    if (v25 || (v25 = xpc_null_create()) != 0)
    {
      xpc_retain(v25);
      v26 = v25;
    }

    else
    {
      v26 = xpc_null_create();
      v25 = 0;
    }

    xpc_dictionary_set_value(v20, "Mode", v26);
    v27 = xpc_null_create();
    xpc_release(v26);
    xpc_release(v27);
    if (v20)
    {
      xpc_retain(v20);
      v28 = v20;
    }

    else
    {
      v28 = xpc_null_create();
    }

    xpc_release(v25);
    xpc_release(v20);
    v29 = xpc_null_create();
    xpc_release(v29);
    if (v28)
    {
      xpc_retain(v28);
      v30 = v28;
      v31 = v35;
      if (v35)
      {
LABEL_118:
        v32 = _Block_copy(v31);
        goto LABEL_121;
      }
    }

    else
    {
      v30 = xpc_null_create();
      v31 = v35;
      if (v35)
      {
        goto LABEL_118;
      }
    }

    v32 = 0;
LABEL_121:
    *buf = MEMORY[0x277D85DD0];
    v70 = 1174405120;
    v71 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEclIJS5_S7_EEEvDpT__block_invoke;
    v72 = &__block_descriptor_tmp_176_0;
    if (v32)
    {
      v73 = _Block_copy(v32);
      v74 = 0;
      v75 = v30;
      if (v30)
      {
LABEL_123:
        xpc_retain(v30);
        goto LABEL_126;
      }
    }

    else
    {
      v73 = 0;
      v74 = 0;
      v75 = v30;
      if (v30)
      {
        goto LABEL_123;
      }
    }

    v75 = xpc_null_create();
LABEL_126:
    dispatch_async(v16, buf);
    xpc_release(v75);
    v75 = 0;
    if (v74)
    {
      CFRelease(v74);
    }

    if (v73)
    {
      _Block_release(v73);
    }

    if (v32)
    {
      _Block_release(v32);
    }

    xpc_release(v30);
    xpc_release(v28);
    v22 = 1;
    if (!v16)
    {
      goto LABEL_59;
    }

LABEL_58:
    dispatch_release(v16);
    goto LABEL_59;
  }

  v21 = *(this + 5);
  v22 = 0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEFAULT, "#E Cannot find trace config file!", buf, 2u);
    v22 = 0;
  }

  if (v16)
  {
    goto LABEL_58;
  }

LABEL_59:
  if (v35)
  {
    _Block_release(v35);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v45)
  {
    _Block_release(v45);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  if (v43)
  {
    _Block_release(v43);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v40)
  {
    dispatch_group_leave(v40);
    if (v40)
    {
      dispatch_release(v40);
    }
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  if (v36)
  {
    _Block_release(v36);
  }

  if (v54)
  {
    dispatch_release(v54);
  }

  if (v53)
  {
    _Block_release(v53);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_weak(v52);
  }

  if (v50)
  {
    dispatch_group_leave(v50);
    if (v50)
    {
      dispatch_release(v50);
    }
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v34)
  {
    _Block_release(v34);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v33)
  {
    _Block_release(v33);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  if (v64)
  {
    dispatch_group_leave(v64);
    if (v64)
    {
      dispatch_release(v64);
    }
  }

  if (gr_name)
  {
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
  }

  std::__shared_weak_count::__release_weak(v7);
  return v22;
}

void sub_23C20EE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, dispatch_group_t group, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, dispatch_group_t object, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, dispatch_group_t a58, uint64_t a59, std::__shared_weak_count *a60)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::dict)>::~callback(&a39);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a37);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v63 + 64);
  if (a34)
  {
    std::__shared_weak_count::__release_weak(a34);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a51);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v62 + 64);
  if (a48)
  {
    std::__shared_weak_count::__release_weak(a48);
  }

  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v64 - 256);
  if (a60)
  {
    std::__shared_weak_count::__release_weak(a60);
  }

  if (a58)
  {
    dispatch_group_leave(a58);
    if (a58)
    {
      dispatch_release(a58);
    }
  }

  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v64 - 176);
  v66 = *(v64 - 184);
  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  v67 = *(v64 - 200);
  if (v67)
  {
    dispatch_group_leave(v67);
    v68 = *(v64 - 200);
    if (v68)
    {
      dispatch_release(v68);
    }
  }

  if (v61)
  {
    dispatch_group_leave(v61);
    dispatch_release(v61);
  }

  std::__shared_weak_count::__release_weak(v60);
  _Unwind_Resume(a1);
}

void ___ZN8ICETrace23issueStartCommands_syncEN8dispatch5groupE_block_invoke(void *a1, uint64_t *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = *(v4 + 88);
  if (v5)
  {
    dispatch_retain(*(v4 + 88));
    dispatch_group_enter(v5);
  }

  v65 = 0;
  v66 = 0;
  v6 = a1[7];
  if (!v6)
  {
    goto LABEL_81;
  }

  v66 = std::__shared_weak_count::lock(v6);
  if (!v66)
  {
    goto LABEL_84;
  }

  v65 = a1[6];
  if (!v65)
  {
    goto LABEL_81;
  }

  v7 = *a2;
  v8 = *(v4 + 40);
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Successfully set mode", buf, 2u);
    }

    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v72 = v14;
    v73 = v14;
    v70 = v14;
    v71 = v14;
    v68 = v14;
    v69 = v14;
    *buf = v14;
    v15 = *MEMORY[0x277CECC40];
    v16 = strlen(*MEMORY[0x277CECC40]);
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      if ((v16 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v16 | 7) + 1;
      }

      p_dst = operator new(v27);
      *(&__dst + 1) = v17;
      v64 = v27 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v64) = v16;
      p_dst = &__dst;
      if (!v16)
      {
LABEL_58:
        *(p_dst + v17) = 0;
        v28 = *MEMORY[0x277CECD38];
        v29 = strlen(*MEMORY[0x277CECD38]);
        if (v29 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v30 = v29;
        if (v29 >= 0x17)
        {
          if ((v29 | 7) == 0x17)
          {
            v32 = 25;
          }

          else
          {
            v32 = (v29 | 7) + 1;
          }

          v31 = operator new(v32);
          *(&v61 + 1) = v30;
          v62 = v32 | 0x8000000000000000;
          *&v61 = v31;
        }

        else
        {
          HIBYTE(v62) = v29;
          v31 = &v61;
          if (!v29)
          {
LABEL_67:
            v31[v30] = 0;
            v33 = operator new(0x40uLL);
            v59 = v33;
            v60 = xmmword_23C32D520;
            strcpy(v33, "Requesting Soft Reset to make the sync'd trace mode active");
            Timestamp::Timestamp(v55);
            Timestamp::asString(v55, 0, 9, v44);
            v43 = 0;
            LOBYTE(v42) = 0;
            ResetInfo::ResetInfo(buf, &__dst, &v61, &v59, v44, 7, &v42);
            if (v45 < 0)
            {
              operator delete(v44[0]);
            }

            std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v55, v56);
            operator delete(v33);
            if (SHIBYTE(v62) < 0)
            {
              operator delete(v61);
            }

            if (SHIBYTE(v64) < 0)
            {
              operator delete(__dst);
            }

            ResetInfo::ResetInfo(&v35, buf);
            ICETrace::commandResetModem_sync(v4, &v35);
            if (v41 < 0)
            {
              operator delete(v40);
              if ((v39 & 0x80000000) == 0)
              {
LABEL_75:
                if ((v37 & 0x80000000) == 0)
                {
                  goto LABEL_76;
                }

                goto LABEL_89;
              }
            }

            else if ((v39 & 0x80000000) == 0)
            {
              goto LABEL_75;
            }

            operator delete(v38);
            if ((v37 & 0x80000000) == 0)
            {
LABEL_76:
              if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_77;
              }

              goto LABEL_90;
            }

LABEL_89:
            operator delete(v36);
            if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_77:
              if ((SHIBYTE(v73) & 0x80000000) == 0)
              {
                goto LABEL_78;
              }

              goto LABEL_48;
            }

LABEL_90:
            operator delete(v35.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v73) & 0x80000000) == 0)
            {
              goto LABEL_78;
            }

LABEL_48:
            operator delete(*(&v72 + 1));
            if (SBYTE7(v71) < 0)
            {
              goto LABEL_49;
            }

            goto LABEL_79;
          }
        }

        memmove(v31, v28, v30);
        goto LABEL_67;
      }
    }

    memmove(p_dst, v15, v17);
    goto LABEL_58;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v7;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Unable to set mode %@", buf, 0xCu);
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72 = v9;
  v73 = v9;
  v70 = v9;
  v71 = v9;
  v68 = v9;
  v69 = v9;
  *buf = v9;
  v10 = *MEMORY[0x277CECC38];
  v11 = strlen(*MEMORY[0x277CECC38]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v11 | 7) + 1;
    }

    v13 = operator new(v19);
    *(&__dst + 1) = v12;
    v64 = v19 | 0x8000000000000000;
    *&__dst = v13;
    goto LABEL_23;
  }

  HIBYTE(v64) = v11;
  v13 = &__dst;
  if (v11)
  {
LABEL_23:
    memmove(v13, v10, v12);
  }

  *(v13 + v12) = 0;
  v20 = *MEMORY[0x277CECD38];
  v21 = strlen(*MEMORY[0x277CECD38]);
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
    *(&v61 + 1) = v22;
    v62 = v24 | 0x8000000000000000;
    *&v61 = v23;
    goto LABEL_32;
  }

  HIBYTE(v62) = v21;
  v23 = &v61;
  if (v21)
  {
LABEL_32:
    memmove(v23, v20, v22);
  }

  *(v23 + v22) = 0;
  v25 = operator new(0x28uLL);
  v59 = v25;
  v60 = xmmword_23C32D510;
  strcpy(v25, "Failed to sync trace mode between AP/BB");
  Timestamp::Timestamp(v55);
  Timestamp::asString(v55, 0, 9, __p);
  v54 = 0;
  LOBYTE(v53) = 0;
  ResetInfo::ResetInfo(buf, &__dst, &v61, &v59, __p, 7, &v53);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v55, v56);
  operator delete(v25);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(__dst);
  }

  ResetInfo::ResetInfo(&v46, buf);
  ICETrace::commandResetModem_sync(v4, &v46);
  if (v52 < 0)
  {
    operator delete(v51);
    if ((v50 & 0x80000000) == 0)
    {
LABEL_41:
      if ((v48 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

LABEL_46:
      operator delete(v47);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_47;
      }

      goto LABEL_77;
    }
  }

  else if ((v50 & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(v49);
  if (v48 < 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_47:
  operator delete(v46.__r_.__value_.__l.__data_);
  if (SHIBYTE(v73) < 0)
  {
    goto LABEL_48;
  }

LABEL_78:
  if (SBYTE7(v71) < 0)
  {
LABEL_49:
    operator delete(v70);
    if (SHIBYTE(v69) < 0)
    {
      goto LABEL_50;
    }

    goto LABEL_80;
  }

LABEL_79:
  if (SHIBYTE(v69) < 0)
  {
LABEL_50:
    operator delete(*(&v68 + 1));
    if (SBYTE7(v68) < 0)
    {
      goto LABEL_51;
    }

    goto LABEL_81;
  }

LABEL_80:
  if (SBYTE7(v68) < 0)
  {
LABEL_51:
    operator delete(*buf);
    v26 = v66;
    if (!v66)
    {
      goto LABEL_84;
    }

    goto LABEL_82;
  }

LABEL_81:
  v26 = v66;
  if (!v66)
  {
    goto LABEL_84;
  }

LABEL_82:
  if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

LABEL_84:
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_23C20F6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  ResetInfo::~ResetInfo(&a9);
  ResetInfo::~ResetInfo((v10 - 208));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v10 - 224);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23C20F814()
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 224);
  if (v0)
  {
    JUMPOUT(0x23C20F7E8);
  }

  JUMPOUT(0x23C20F80CLL);
}

void ___ZN8ICETrace23issueStartCommands_syncEN8dispatch5groupE_block_invoke_17(void *a1, __CFError **a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = *(v4 + 88);
  if (v5)
  {
    dispatch_retain(*(v4 + 88));
    dispatch_group_enter(v5);
  }

  v43 = 0;
  v44 = 0;
  v6 = a1[7];
  if (!v6)
  {
    goto LABEL_46;
  }

  v44 = std::__shared_weak_count::lock(v6);
  if (!v44)
  {
    goto LABEL_49;
  }

  v43 = a1[6];
  if (!v43)
  {
    goto LABEL_46;
  }

  v7 = *a2;
  v8 = *(v4 + 40);
  if (*a2)
  {
    if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed ARI trace command: %@", buf, 0xCu);
      v7 = *a2;
    }

    if (CFErrorGetCode(v7) == 2)
    {
      v9 = *(v4 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "File access error!", buf, 2u);
        v10 = v44;
        goto LABEL_47;
      }

LABEL_46:
      v10 = v44;
      if (!v44)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v11;
    v51 = v11;
    v48 = v11;
    v49 = v11;
    v46 = v11;
    v47 = v11;
    *buf = v11;
    v12 = *MEMORY[0x277CECC38];
    v13 = strlen(*MEMORY[0x277CECC38]);
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

      p_dst = operator new(v16);
      *(&__dst + 1) = v14;
      v42 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v42) = v13;
      p_dst = &__dst;
      if (!v13)
      {
LABEL_23:
        *(p_dst + v14) = 0;
        v17 = *MEMORY[0x277CECD38];
        v18 = strlen(*MEMORY[0x277CECD38]);
        if (v18 > 0x7FFFFFFFFFFFFFF7)
        {
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
          *(&v39 + 1) = v19;
          v40 = v21 | 0x8000000000000000;
          *&v39 = v20;
        }

        else
        {
          HIBYTE(v40) = v18;
          v20 = &v39;
          if (!v18)
          {
LABEL_32:
            v20[v19] = 0;
            v22 = operator new(0x20uLL);
            v37 = v22;
            v38 = xmmword_23C32C5A0;
            strcpy(v22, "Failed ARI trace command");
            Timestamp::Timestamp(v33);
            Timestamp::asString(v33, 0, 9, __p);
            v32 = 0;
            LOBYTE(v31) = 0;
            ResetInfo::ResetInfo(buf, &__dst, &v39, &v37, __p, 7, &v31);
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }

            std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v33, v34);
            operator delete(v22);
            if (SHIBYTE(v40) < 0)
            {
              operator delete(v39);
            }

            if (SHIBYTE(v42) < 0)
            {
              operator delete(__dst);
            }

            ResetInfo::ResetInfo(&v24, buf);
            ICETrace::commandResetModem_sync(v4, &v24);
            if (v30 < 0)
            {
              operator delete(v29);
              if ((v28 & 0x80000000) == 0)
              {
LABEL_40:
                if ((v26 & 0x80000000) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_54;
              }
            }

            else if ((v28 & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            operator delete(v27);
            if ((v26 & 0x80000000) == 0)
            {
LABEL_41:
              if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_42;
              }

              goto LABEL_55;
            }

LABEL_54:
            operator delete(v25);
            if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_42:
              if ((SHIBYTE(v51) & 0x80000000) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_56;
            }

LABEL_55:
            operator delete(v24.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v51) & 0x80000000) == 0)
            {
LABEL_43:
              if ((SBYTE7(v49) & 0x80000000) == 0)
              {
                goto LABEL_44;
              }

              goto LABEL_57;
            }

LABEL_56:
            operator delete(*(&v50 + 1));
            if ((SBYTE7(v49) & 0x80000000) == 0)
            {
LABEL_44:
              if ((SHIBYTE(v47) & 0x80000000) == 0)
              {
                goto LABEL_45;
              }

              goto LABEL_58;
            }

LABEL_57:
            operator delete(v48);
            if ((SHIBYTE(v47) & 0x80000000) == 0)
            {
LABEL_45:
              if ((SBYTE7(v46) & 0x80000000) == 0)
              {
                goto LABEL_46;
              }

              goto LABEL_59;
            }

LABEL_58:
            operator delete(*(&v46 + 1));
            if ((SBYTE7(v46) & 0x80000000) == 0)
            {
              goto LABEL_46;
            }

LABEL_59:
            operator delete(*buf);
            v10 = v44;
            if (!v44)
            {
              goto LABEL_49;
            }

            goto LABEL_47;
          }
        }

        memmove(v20, v17, v19);
        goto LABEL_32;
      }
    }

    memmove(p_dst, v12, v14);
    goto LABEL_23;
  }

  if (!os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_46;
  }

  *buf = 0;
  _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Trace command succeeded.", buf, 2u);
  v10 = v44;
LABEL_47:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_49:
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_23C20FCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  ResetInfo::~ResetInfo(&a9);
  ResetInfo::~ResetInfo((v50 - 208));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 224);
  if (!v49)
  {
    _Unwind_Resume(a1);
  }

  dispatch_group_leave(v49);
  dispatch_release(v49);
  _Unwind_Resume(a1);
}

void ___ZN8ICETrace23issueStartCommands_syncEN8dispatch5groupE_block_invoke_22(void *a1, __CFError **a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = *(v4 + 88);
  if (v5)
  {
    dispatch_retain(*(v4 + 88));
    dispatch_group_enter(v5);
  }

  v54 = 0;
  v55 = 0;
  v6 = a1[7];
  if (!v6)
  {
    goto LABEL_60;
  }

  v55 = std::__shared_weak_count::lock(v6);
  if (!v55)
  {
    goto LABEL_63;
  }

  v54 = a1[6];
  if (!v54)
  {
    goto LABEL_60;
  }

  v7 = *a2;
  if (!*a2)
  {
    *&buf[8] = 0xAAAAAAAAAAAAAAAALL;
    *&buf[16] = 0xAAAAAAAAAAAAAAAALL;
    v11 = *(v4 + 248);
    *buf = &unk_284EFAAC8;
    buf[8] = 1;
    buf[9] = v11;
    *&buf[12] = *(v4 + 252);
    v12 = *(v4 + 360);
    v13 = a1[8];
    if (v13)
    {
      v13 = _Block_copy(v13);
    }

    v14 = a1[9];
    aBlock = v13;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    (*(*v12 + 64))(v12, buf, &aBlock);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v15 = *(v4 + 360);
    v16 = a1[8];
    if (v16)
    {
      v16 = _Block_copy(v16);
    }

    v17 = a1[9];
    v31 = v16;
    v32 = v17;
    if (v17)
    {
      dispatch_retain(v17);
    }

    (*(*v15 + 16))(v15, &v31);
    if (v32)
    {
      dispatch_release(v32);
    }

    if (v31)
    {
      _Block_release(v31);
    }

    goto LABEL_60;
  }

  v8 = *(v4 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v7;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to set masks: %@", buf, 0xCu);
    v7 = *a2;
  }

  if (CFErrorGetCode(v7) != 2)
  {
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v60 = v18;
    v61 = v18;
    v58 = v18;
    v59 = v18;
    *&buf[16] = v18;
    v57 = v18;
    *buf = v18;
    v19 = *MEMORY[0x277CECC38];
    v20 = strlen(*MEMORY[0x277CECC38]);
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      if ((v20 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v20 | 7) + 1;
      }

      p_dst = operator new(v23);
      *(&__dst + 1) = v21;
      v53 = v23 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v53) = v20;
      p_dst = &__dst;
      if (!v20)
      {
LABEL_37:
        *(p_dst + v21) = 0;
        v24 = *MEMORY[0x277CECD38];
        v25 = strlen(*MEMORY[0x277CECD38]);
        if (v25 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v26 = v25;
        if (v25 >= 0x17)
        {
          if ((v25 | 7) == 0x17)
          {
            v28 = 25;
          }

          else
          {
            v28 = (v25 | 7) + 1;
          }

          v27 = operator new(v28);
          *(&v50 + 1) = v26;
          v51 = v28 | 0x8000000000000000;
          *&v50 = v27;
        }

        else
        {
          HIBYTE(v51) = v25;
          v27 = &v50;
          if (!v25)
          {
LABEL_46:
            v27[v26] = 0;
            v29 = operator new(0x20uLL);
            v48 = v29;
            v49 = xmmword_23C32C5A0;
            strcpy(v29, "Failed ARI trace command");
            Timestamp::Timestamp(v44);
            Timestamp::asString(v44, 0, 9, __p);
            v43 = 0;
            LOBYTE(v42) = 0;
            ResetInfo::ResetInfo(buf, &__dst, &v50, &v48, __p, 7, &v42);
            if (v47 < 0)
            {
              operator delete(__p[0]);
            }

            std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v44, v45);
            operator delete(v29);
            if (SHIBYTE(v51) < 0)
            {
              operator delete(v50);
            }

            if (SHIBYTE(v53) < 0)
            {
              operator delete(__dst);
            }

            ResetInfo::ResetInfo(&v35, buf);
            ICETrace::commandResetModem_sync(v4, &v35);
            if (v41 < 0)
            {
              operator delete(v40);
              if ((v39 & 0x80000000) == 0)
              {
LABEL_54:
                if ((v37 & 0x80000000) == 0)
                {
                  goto LABEL_55;
                }

                goto LABEL_68;
              }
            }

            else if ((v39 & 0x80000000) == 0)
            {
              goto LABEL_54;
            }

            operator delete(v38);
            if ((v37 & 0x80000000) == 0)
            {
LABEL_55:
              if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_56;
              }

              goto LABEL_69;
            }

LABEL_68:
            operator delete(v36);
            if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_56:
              if ((SHIBYTE(v61) & 0x80000000) == 0)
              {
                goto LABEL_57;
              }

              goto LABEL_70;
            }

LABEL_69:
            operator delete(v35.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v61) & 0x80000000) == 0)
            {
LABEL_57:
              if ((SBYTE7(v59) & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

              goto LABEL_71;
            }

LABEL_70:
            operator delete(*(&v60 + 1));
            if ((SBYTE7(v59) & 0x80000000) == 0)
            {
LABEL_58:
              if ((SHIBYTE(v57) & 0x80000000) == 0)
              {
                goto LABEL_59;
              }

LABEL_72:
              operator delete(*&buf[24]);
              if ((buf[23] & 0x80000000) != 0)
              {
                goto LABEL_73;
              }

LABEL_60:
              v10 = v55;
              if (!v55)
              {
                goto LABEL_63;
              }

              goto LABEL_61;
            }

LABEL_71:
            operator delete(v58);
            if ((SHIBYTE(v57) & 0x80000000) == 0)
            {
LABEL_59:
              if ((buf[23] & 0x80000000) == 0)
              {
                goto LABEL_60;
              }

LABEL_73:
              operator delete(*buf);
              v10 = v55;
              if (!v55)
              {
                goto LABEL_63;
              }

              goto LABEL_61;
            }

            goto LABEL_72;
          }
        }

        memmove(v27, v24, v26);
        goto LABEL_46;
      }
    }

    memmove(p_dst, v19, v21);
    goto LABEL_37;
  }

  v9 = *(v4 + 40);
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_60;
  }

  *buf = 0;
  _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "File access error!", buf, 2u);
  v10 = v55;
LABEL_61:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_63:
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_23C210368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C210438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v10 - 224);
  if (!v9)
  {
    JUMPOUT(0x23C21041CLL);
  }

  JUMPOUT(0x23C21040CLL);
}

void sub_23C210460()
{
  if (*(v0 - 225) < 0)
  {
    JUMPOUT(0x23C21046CLL);
  }

  JUMPOUT(0x23C210400);
}

void sub_23C210484()
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 224);
  if (!v0)
  {
    JUMPOUT(0x23C21041CLL);
  }

  JUMPOUT(0x23C21040CLL);
}

void sub_23C210498()
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 224);
  if (!v0)
  {
    JUMPOUT(0x23C21041CLL);
  }

  JUMPOUT(0x23C21040CLL);
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(uint64_t a1)
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

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1, void *a2)
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

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = a2[8];
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = a2[9];
  a1[8] = v7;
  a1[9] = v8;
  if (v8)
  {

    dispatch_retain(v8);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = a1[5];
    if (v6)
    {

      dispatch_release(v6);
    }
  }
}

void ___ZN8ICETrace23issueStartCommands_syncEN8dispatch5groupE_block_invoke_24(void *a1, uint64_t *a2, xpc_object_t *a3)
{
  v134 = *MEMORY[0x277D85DE8];
  v6 = a1[4];
  v7 = *(v6 + 88);
  if (v7)
  {
    dispatch_retain(*(v6 + 88));
    dispatch_group_enter(v7);
  }

  v122 = 0;
  v121 = 0;
  v8 = a1[7];
  if (!v8)
  {
    goto LABEL_162;
  }

  v122 = std::__shared_weak_count::lock(v8);
  if (!v122)
  {
    goto LABEL_165;
  }

  v121 = a1[6];
  if (!v121)
  {
    goto LABEL_162;
  }

  v9 = *a2;
  if (!v9)
  {
    value = xpc_dictionary_get_value(*a3, "Mode");
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v24 = xpc::dyn_cast_or_default();
    xpc_release(*buf);
    if (*(v6 + 96) == v24)
    {
      v25 = *(v6 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if (v24 > 6)
        {
          v26 = "Unknown";
        }

        else
        {
          v26 = off_278BB8A48[v24 & 7];
        }

        *buf = 136315138;
        *&buf[4] = v26;
        _os_log_impl(&dword_23C1C4000, v25, OS_LOG_TYPE_DEFAULT, "#I Trace mode (%s) get success.  Baseband mode matches AP setting.", buf, 0xCu);
        v24 = *(v6 + 96);
      }

      *(v6 + 304) = 0;
      if (v24 != 6 && v24)
      {
        goto LABEL_85;
      }

      v49 = ICETrace::openTransport_sync(v6);
      v50 = *(v6 + 40);
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
      if (v49)
      {
        if (v51)
        {
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v50, OS_LOG_TYPE_DEFAULT, "#I Transport open success", buf, 2u);
        }

LABEL_85:
        *&v126 = 0xAAAAAAAAAAAAAAAALL;
        *&v52 = 0xAAAAAAAAAAAAAAAALL;
        *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v125 = v52;
        v124 = v52;
        *buf = v52;
        trace::TraceMaskInfo::TraceMaskInfo(buf, v6 + 176, v6 + 200);
        v53 = *(v6 + 360);
        v54 = a1[8];
        if (v54)
        {
          v54 = _Block_copy(v54);
        }

        v55 = a1[9];
        v99 = v54;
        v100 = v55;
        if (v55)
        {
          dispatch_retain(v55);
        }

        (*(*v53 + 56))(v53, buf, &v99);
        if (v100)
        {
          dispatch_release(v100);
        }

        if (v99)
        {
          _Block_release(v99);
        }

        *buf = &unk_284EFAAF0;
        if (v125)
        {
          *(&v125 + 1) = v125;
          operator delete(v125);
        }

        if (*&buf[8])
        {
          *&v124 = *&buf[8];
          operator delete(*&buf[8]);
        }

        goto LABEL_162;
      }

      if (v51)
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v50, OS_LOG_TYPE_DEFAULT, "#E Failed to open TRACE transport", buf, 2u);
      }

      *&v56 = 0xAAAAAAAAAAAAAAAALL;
      *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v129 = v56;
      v128 = v56;
      v127 = v56;
      v126 = v56;
      v125 = v56;
      v124 = v56;
      *buf = v56;
      v57 = *MEMORY[0x277CECC38];
      v58 = strlen(*MEMORY[0x277CECC38]);
      if (v58 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v59 = v58;
      if (v58 >= 0x17)
      {
        if ((v58 | 7) == 0x17)
        {
          v61 = 25;
        }

        else
        {
          v61 = (v58 | 7) + 1;
        }

        p_dst = operator new(v61);
        *(&__dst + 1) = v59;
        *&v91 = v61 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        BYTE7(v91) = v58;
        p_dst = &__dst;
        if (!v58)
        {
LABEL_108:
          *(p_dst + v59) = 0;
          v62 = *MEMORY[0x277CECD60];
          v63 = strlen(*MEMORY[0x277CECD60]);
          if (v63 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v64 = v63;
          if (v63 >= 0x17)
          {
            if ((v63 | 7) == 0x17)
            {
              v66 = 25;
            }

            else
            {
              v66 = (v63 | 7) + 1;
            }

            v65 = operator new(v66);
            *(&v132 + 1) = v64;
            v133 = v66 | 0x8000000000000000;
            *&v132 = v65;
          }

          else
          {
            HIBYTE(v133) = v63;
            v65 = &v132;
            if (!v63)
            {
              goto LABEL_117;
            }
          }

          memmove(v65, v62, v64);
LABEL_117:
          *(v65 + v64) = 0;
          v67 = operator new(0x20uLL);
          v119 = v67;
          v120 = xmmword_23C32CA80;
          strcpy(v67, "Failed to open TRACE transport");
          Timestamp::Timestamp(&v115);
          Timestamp::asString(&v115, 0, 9, v104);
          v103 = 0;
          LOBYTE(v102) = 0;
          ResetInfo::ResetInfo(buf, &__dst, &v132, &v119, v104, 7, &v102);
          if (v105 < 0)
          {
            operator delete(v104[0]);
          }

          std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v115, *(&v115 + 1));
          operator delete(v67);
          if (SHIBYTE(v133) < 0)
          {
            operator delete(v132);
          }

          if (SBYTE7(v91) < 0)
          {
            operator delete(__dst);
          }

          ResetInfo::ResetInfo(&v101, buf);
          ICETrace::commandResetModem_sync(v6, &v101);
          ResetInfo::~ResetInfo(&v101.__r_.__value_.__l.__data_);
          ResetInfo::~ResetInfo(buf);
          goto LABEL_162;
        }
      }

      memmove(p_dst, v57, v59);
      goto LABEL_108;
    }

    ++*(v6 + 304);
    v131 = 0xAAAAAAAAAAAAAAAALL;
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v130[7] = v27;
    v130[8] = v27;
    v130[5] = v27;
    v130[6] = v27;
    v130[3] = v27;
    v130[4] = v27;
    v130[1] = v27;
    v130[2] = v27;
    v129 = v27;
    v130[0] = v27;
    v127 = v27;
    v128 = v27;
    v125 = v27;
    v126 = v27;
    *buf = v27;
    v124 = v27;
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "AP STT (Mode = ", 15);
    v29 = *(v6 + 96);
    if (v29 > 6)
    {
      v30 = "Unknown";
    }

    else
    {
      v30 = off_278BB8A48[v29];
    }

    v31 = strlen(v30);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") mismatch with BB XSIO mode (XSIO = ", 37);
    if (v24 > 6)
    {
      v34 = "Unknown";
    }

    else
    {
      v34 = off_278BB8A48[v24 & 7];
    }

    v35 = strlen(v34);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ") count=", 8);
    MEMORY[0x23EECDF40](v37, *(v6 + 304));
    v38 = *(v6 + 40);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      std::stringbuf::str[abi:ne200100](&buf[8], &__dst);
      v82 = (SBYTE7(v91) & 0x80u) == 0 ? &__dst : __dst;
      LODWORD(v132) = 136315138;
      *(&v132 + 4) = v82;
      _os_log_error_impl(&dword_23C1C4000, v38, OS_LOG_TYPE_ERROR, "%s", &v132, 0xCu);
      if (SBYTE7(v91) < 0)
      {
        operator delete(__dst);
      }
    }

    v39 = *(v6 + 304);
    if (v39 <= 2)
    {
      v40 = *(v6 + 360);
      v41 = *(v6 + 96);
      v42 = a1[10];
      if (v42)
      {
        v42 = _Block_copy(v42);
      }

      v43 = a1[11];
      aBlock = v42;
      object = v43;
      if (v43)
      {
        dispatch_retain(v43);
      }

      (*(*v40 + 48))(v40, v41, &aBlock);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      goto LABEL_159;
    }

    if (v39 != 3)
    {
LABEL_159:
      *buf = *MEMORY[0x277D82828];
      *&buf[*(*buf - 24)] = *(MEMORY[0x277D82828] + 24);
      *&buf[8] = MEMORY[0x277D82878] + 16;
      if (SHIBYTE(v128) < 0)
      {
        operator delete(*(&v127 + 1));
      }

      *&buf[8] = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v124);
      std::ostream::~ostream();
      MEMORY[0x23EECE150](v130);
      goto LABEL_162;
    }

    *&v44 = 0xAAAAAAAAAAAAAAAALL;
    *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v95 = v44;
    v96 = v44;
    v93 = v44;
    v94 = v44;
    v91 = v44;
    v92 = v44;
    __dst = v44;
    v45 = *MEMORY[0x277CECC38];
    v46 = strlen(*MEMORY[0x277CECC38]);
    if (v46 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v47 = v46;
    if (v46 >= 0x17)
    {
      if ((v46 | 7) == 0x17)
      {
        v68 = 25;
      }

      else
      {
        v68 = (v46 | 7) + 1;
      }

      v48 = operator new(v68);
      *(&v132 + 1) = v47;
      v133 = v68 | 0x8000000000000000;
      *&v132 = v48;
    }

    else
    {
      HIBYTE(v133) = v46;
      v48 = &v132;
      if (!v46)
      {
LABEL_129:
        v48[v47] = 0;
        v69 = *MEMORY[0x277CECD60];
        v70 = strlen(*MEMORY[0x277CECD60]);
        if (v70 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v71 = v70;
        if (v70 >= 0x17)
        {
          if ((v70 | 7) == 0x17)
          {
            v73 = 25;
          }

          else
          {
            v73 = (v70 | 7) + 1;
          }

          v72 = operator new(v73);
          *(&v120 + 1) = v73 | 0x8000000000000000;
          v119 = v72;
          *&v120 = v71;
        }

        else
        {
          HIBYTE(v120) = v70;
          v72 = &v119;
          if (!v70)
          {
LABEL_138:
            *(v72 + v71) = 0;
            if ((BYTE8(v129) & 0x10) != 0)
            {
              v76 = v129;
              if (v129 < *(&v126 + 1))
              {
                *&v129 = *(&v126 + 1);
                v76 = *(&v126 + 1);
              }

              v77 = &v126;
            }

            else
            {
              if ((BYTE8(v129) & 8) == 0)
              {
                v74 = 0;
                HIBYTE(v116) = 0;
                v75 = &v115;
                goto LABEL_154;
              }

              v77 = &v124 + 1;
              v76 = *(&v125 + 1);
            }

            v78 = *v77;
            v74 = v76 - *v77;
            if (v74 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v74 >= 0x17)
            {
              if ((v74 | 7) == 0x17)
              {
                v79 = 25;
              }

              else
              {
                v79 = (v74 | 7) + 1;
              }

              v75 = operator new(v79);
              v116 = v79 | 0x8000000000000000;
              *&v115 = v75;
              *(&v115 + 1) = v74;
            }

            else
            {
              HIBYTE(v116) = v76 - *v77;
              v75 = &v115;
              if (!v74)
              {
LABEL_154:
                v75[v74] = 0;
                Timestamp::Timestamp(v86);
                Timestamp::asString(v86, 0, 9, v88);
                v85 = 0;
                LOBYTE(v84) = 0;
                ResetInfo::ResetInfo(&__dst, &v132, &v119, &v115, v88, 3, &v84);
                if (v89 < 0)
                {
                  operator delete(v88[0]);
                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v86, v87);
                  if ((SHIBYTE(v116) & 0x80000000) == 0)
                  {
LABEL_156:
                    if ((SHIBYTE(v120) & 0x80000000) == 0)
                    {
                      goto LABEL_157;
                    }

                    goto LABEL_170;
                  }
                }

                else
                {
                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v86, v87);
                  if ((SHIBYTE(v116) & 0x80000000) == 0)
                  {
                    goto LABEL_156;
                  }
                }

                operator delete(v115);
                if ((SHIBYTE(v120) & 0x80000000) == 0)
                {
LABEL_157:
                  if ((SHIBYTE(v133) & 0x80000000) == 0)
                  {
LABEL_158:
                    ResetInfo::ResetInfo(&v83, &__dst);
                    ICETrace::commandResetModem_sync(v6, &v83);
                    ResetInfo::~ResetInfo(&v83.__r_.__value_.__l.__data_);
                    *(v6 + 304) = 0;
                    ResetInfo::~ResetInfo(&__dst);
                    goto LABEL_159;
                  }

LABEL_171:
                  operator delete(v132);
                  goto LABEL_158;
                }

LABEL_170:
                operator delete(v119);
                if ((SHIBYTE(v133) & 0x80000000) == 0)
                {
                  goto LABEL_158;
                }

                goto LABEL_171;
              }
            }

            memmove(v75, v78, v74);
            goto LABEL_154;
          }
        }

        memmove(v72, v69, v71);
        goto LABEL_138;
      }
    }

    memmove(v48, v45, v47);
    goto LABEL_129;
  }

  v10 = *(v6 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#E Failed to get trace mode: %@", buf, 0xCu);
  }

  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v129 = v11;
  v128 = v11;
  v127 = v11;
  v126 = v11;
  v125 = v11;
  v124 = v11;
  *buf = v11;
  v12 = *MEMORY[0x277CECC38];
  v13 = strlen(*MEMORY[0x277CECC38]);
  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v13 | 7) + 1;
    }

    v15 = operator new(v17);
    *(&__dst + 1) = v14;
    *&v91 = v17 | 0x8000000000000000;
    *&__dst = v15;
    goto LABEL_19;
  }

  BYTE7(v91) = v13;
  v15 = &__dst;
  if (v13)
  {
LABEL_19:
    memmove(v15, v12, v14);
  }

  *(v15 + v14) = 0;
  v18 = *MEMORY[0x277CECD38];
  v19 = strlen(*MEMORY[0x277CECD38]);
  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    v21 = operator new(v22);
    *(&v132 + 1) = v20;
    v133 = v22 | 0x8000000000000000;
    *&v132 = v21;
    goto LABEL_28;
  }

  HIBYTE(v133) = v19;
  v21 = &v132;
  if (v19)
  {
LABEL_28:
    memmove(v21, v18, v20);
  }

  *(v21 + v20) = 0;
  v23 = operator new(0x20uLL);
  v119 = v23;
  v120 = xmmword_23C32C5A0;
  strcpy(v23, "Failed to get trace mode");
  Timestamp::Timestamp(&v115);
  Timestamp::asString(&v115, 0, 9, __p);
  v114 = 0;
  LOBYTE(v113) = 0;
  ResetInfo::ResetInfo(buf, &__dst, &v132, &v119, __p, 7, &v113);
  if (v118 < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v115, *(&v115 + 1));
  operator delete(v23);
  if (SHIBYTE(v133) < 0)
  {
    operator delete(v132);
  }

  if (SBYTE7(v91) < 0)
  {
    operator delete(__dst);
  }

  ResetInfo::ResetInfo(&v106, buf);
  ICETrace::commandResetModem_sync(v6, &v106);
  if (v112 < 0)
  {
    operator delete(v111);
    if ((v110 & 0x80000000) == 0)
    {
LABEL_37:
      if ((v108 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    }
  }

  else if ((v110 & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(v109);
  if ((v108 & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_47;
  }

LABEL_46:
  operator delete(v107);
  if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_39:
    if ((SHIBYTE(v129) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

LABEL_47:
  operator delete(v106.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v129) & 0x80000000) == 0)
  {
LABEL_40:
    if ((SBYTE7(v127) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_49;
  }

LABEL_48:
  operator delete(*(&v128 + 1));
  if ((SBYTE7(v127) & 0x80000000) == 0)
  {
LABEL_41:
    if ((SHIBYTE(v125) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_50;
  }

LABEL_49:
  operator delete(v126);
  if ((SHIBYTE(v125) & 0x80000000) == 0)
  {
LABEL_42:
    if (SBYTE7(v124) < 0)
    {
      goto LABEL_51;
    }

    goto LABEL_162;
  }

LABEL_50:
  operator delete(*(&v124 + 1));
  if (SBYTE7(v124) < 0)
  {
LABEL_51:
    operator delete(*buf);
  }

LABEL_162:
  v80 = v122;
  if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v80->__on_zero_shared)(v80);
    std::__shared_weak_count::__release_weak(v80);
  }

LABEL_165:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v81 = *MEMORY[0x277D85DE8];
}

void sub_23C211404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33)
{
  ResetInfo::~ResetInfo(&a10);
  ResetInfo::~ResetInfo(&a33);
  std::ostringstream::~ostringstream(&STACK[0x2D0]);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&STACK[0x2C0]);
  if (v33)
  {
    dispatch_group_leave(v33);
    dispatch_release(v33);
  }

  _Unwind_Resume(a1);
}

void trace::TraceMaskInfo::~TraceMaskInfo(trace::TraceMaskInfo *this)
{
  *this = &unk_284EFAAF0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE80c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1, void *a2)
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

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = a2[8];
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = a2[9];
  a1[8] = v7;
  a1[9] = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = a2[10];
  if (v9)
  {
    v9 = _Block_copy(v9);
  }

  v10 = a2[11];
  a1[10] = v9;
  a1[11] = v10;
  if (v10)
  {

    dispatch_retain(v10);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE80c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = a1[5];
    if (v8)
    {

      dispatch_release(v8);
    }
  }
}

BOOL ICETrace::loadTraceConfigFile_sync(uint64_t a1, std::string::size_type a2, void *a3, int a4)
{
  v72 = a1;
  v90 = *MEMORY[0x277D85DE8];
  v82 = 0;
  v83 = 0;
  *(&buf.__r_.__value_.__s + 23) = 19;
  v84 = 0;
  strcpy(&buf, "kKeyTraceConfigPath");
  defaults::bbtrace::get(&buf, &v82);
  v70 = a3;
  v71 = a2;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v80 = 0;
  memset(v81, 170, sizeof(v81));
  HIBYTE(v81[2]) = 0;
  LOBYTE(v81[0]) = 0;
  v78 = 0;
  v79 = 0;
  v7 = KTLGetKDMProductName();
  v8 = strlen(v7);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v8 | 7) + 1;
    }

    p_dst = operator new(v15);
    __dst.__r_.__value_.__l.__size_ = v9;
    __dst.__r_.__value_.__r.__words[2] = v15 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v8;
    p_dst = &__dst;
    if (!v8)
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  memmove(p_dst, v7, v9);
  p_dst->__r_.__value_.__s.__data_[v9] = 0;
  size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
LABEL_7:
    if (size - 19 < 4)
    {
      v12 = size + 4;
      v13 = &__dst;
      v14 = 22;
LABEL_17:
      v16 = 2 * v14;
      if (v12 > 2 * v14)
      {
        v16 = v12;
      }

      if ((v16 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v16 | 7) + 1;
      }

      if (v16 >= 0x17)
      {
        v18 = v17;
      }

      else
      {
        v18 = 23;
      }

      v19 = v14 == 22;
      goto LABEL_26;
    }

    v23 = &__dst;
    *(&__dst.__r_.__value_.__l.__data_ + size) = 777792046;
    v24 = size + 4;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

LABEL_14:
  size = __dst.__r_.__value_.__l.__size_;
  v14 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v14 - __dst.__r_.__value_.__l.__size_ >= 4)
  {
    v23 = __dst.__r_.__value_.__r.__words[0];
    *(__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_) = 777792046;
    v24 = size + 4;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      *(&__dst.__r_.__value_.__s + 23) = v24 & 0x7F;
LABEL_35:
      v22 = v23 + v24;
      goto LABEL_36;
    }

LABEL_34:
    __dst.__r_.__value_.__l.__size_ = v24;
    goto LABEL_35;
  }

  v12 = __dst.__r_.__value_.__l.__size_ + 4;
  if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 4 - v14)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = __dst.__r_.__value_.__r.__words[0];
  if (v14 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_17;
  }

  v19 = 0;
  v18 = 0x7FFFFFFFFFFFFFF7;
LABEL_26:
  v20 = operator new(v18);
  v21 = v20;
  if (size)
  {
    memmove(v20, v13, size);
  }

  *(v21 + size) = 777792046;
  if (!v19)
  {
    operator delete(v13);
  }

  __dst.__r_.__value_.__l.__size_ = v12;
  __dst.__r_.__value_.__r.__words[2] = v18 | 0x8000000000000000;
  __dst.__r_.__value_.__r.__words[0] = v21;
  v22 = (v21 + v12);
LABEL_36:
  *v22 = 0;
  v89 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  KTLGetMaskFileExtensionName();
  if (v74 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v26 = strlen(p_p);
  v27 = std::string::append(&v89, p_p, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(&v76, &buf, 0);
  filtered_files = ctu::fs::get_filtered_files();
  v30 = v77;
  if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    std::locale::~locale(&v76);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_42:
      if ((v74 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_52;
    }
  }

  else
  {
    std::locale::~locale(&v76);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if ((v74 & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(__p);
  if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_44:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_54;
  }

LABEL_53:
  operator delete(v89.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_45:
    if (filtered_files)
    {
      goto LABEL_46;
    }

LABEL_55:
    v32 = *(v72 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v32, OS_LOG_TYPE_ERROR, "Failed to get files", &buf, 2u);
    }

    goto LABEL_101;
  }

LABEL_54:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (!filtered_files)
  {
    goto LABEL_55;
  }

LABEL_46:
  if (a4)
  {
    v31 = v71;
    if (*(v71 + 23) < 0)
    {
      v31 = *v71;
    }

    KTLGetETBFilename(&v89, v31);
  }

  else
  {
    v33 = v71;
    if (*(v71 + 23) < 0)
    {
      v33 = *v71;
    }

    KTLGetKDMFilename(&v89, v33);
  }

  buf = v89;
  v34 = v78;
  v35 = v79;
  v36 = SHIBYTE(v89.__r_.__value_.__r.__words[2]);
  if (v78 != v79)
  {
    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      v38 = *(v34 + 23);
      v39 = v34;
      if ((v38 & 0x8000000000000000) != 0)
      {
        v39 = *v34;
      }

      if (!strcasecmp(p_buf, v39))
      {
        break;
      }

      v34 += 3;
      if (v34 == v35)
      {
        goto LABEL_82;
      }
    }

    if (v34 != v81)
    {
      if (SHIBYTE(v81[2]) < 0)
      {
        v41 = *v34;
        if ((v38 & 0x80000000) == 0)
        {
          v42 = v34;
        }

        else
        {
          v42 = *v34;
        }

        if ((v38 & 0x80000000) == 0)
        {
          v43 = v38;
        }

        else
        {
          v43 = v34[1];
        }

        std::string::__assign_no_alias<false>(v81, v42, v43);
      }

      else if ((v38 & 0x80000000) != 0)
      {
        std::string::__assign_no_alias<true>(v81, *v34, v34[1]);
      }

      else
      {
        v40 = *v34;
        v81[2] = v34[2];
        *v81 = v40;
      }
    }
  }

LABEL_82:
  if (v36 < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    v44 = SHIBYTE(v81[2]);
    if (SHIBYTE(v81[2]) >= 0)
    {
      v45 = HIBYTE(v81[2]);
    }

    else
    {
      v45 = v81[1];
    }

    if (v45)
    {
LABEL_87:
      memset(&v89, 170, sizeof(v89));
      v46 = SHIBYTE(v84);
      if (v84 >= 0)
      {
        v47 = HIBYTE(v84);
      }

      else
      {
        v47 = v83;
      }

      v48 = v47 + v45;
      if (v47 + v45 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v48 <= 0x16)
      {
        memset(&v89, 0, sizeof(v89));
        v50 = &v89;
        *(&v89.__r_.__value_.__s + 23) = v47 + v45;
        if (!v47)
        {
          goto LABEL_108;
        }
      }

      else
      {
        if ((v48 | 7) == 0x17)
        {
          v49 = 25;
        }

        else
        {
          v49 = (v48 | 7) + 1;
        }

        v50 = operator new(v49);
        v89.__r_.__value_.__l.__size_ = v47 + v45;
        v89.__r_.__value_.__r.__words[2] = v49 | 0x8000000000000000;
        v89.__r_.__value_.__r.__words[0] = v50;
        if (!v47)
        {
LABEL_108:
          v54 = &v50[v47];
          if (v44 >= 0)
          {
            v55 = v81;
          }

          else
          {
            v55 = v81[0];
          }

          memmove(v54, v55, v45);
          v54[v45] = 0;
          v56 = v70;
          if (ctu::fs::load_file())
          {
            v52 = 1;
            v57 = *(v72 + 40);
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_128;
            }
          }

          else if (a4 == 1)
          {
            *(&buf.__r_.__value_.__s + 23) = 8;
            strcpy(&buf, "Disabled");
            if (*(v71 + 23) >= 0)
            {
              v58 = v71;
            }

            else
            {
              v58 = *v71;
            }

            v52 = strcasecmp(&buf, v58) == 0;
            v57 = *(v72 + 40);
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
LABEL_128:
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              goto LABEL_130;
            }
          }

          else
          {
            v52 = 0;
            v57 = *(v72 + 40);
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_128;
            }
          }

          if (*(v71 + 23) < 0)
          {
            v71 = *v71;
          }

          KTLGetMaskFileExtensionName();
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v59 = &__dst;
          }

          else
          {
            v59 = __dst.__r_.__value_.__r.__words[0];
          }

          v60 = v56[1] - *v56;
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
          *(buf.__r_.__value_.__r.__words + 4) = v71;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v59;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v86 = v60;
          v87 = 1024;
          v88 = v52;
          _os_log_impl(&dword_23C1C4000, v57, OS_LOG_TYPE_DEFAULT, "#I Read file %s.%s(%lu bytes) success: %d", &buf, 0x26u);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          goto LABEL_128;
        }
      }

      if (v46 >= 0)
      {
        v53 = &v82;
      }

      else
      {
        v53 = v82;
      }

      memmove(v50, v53, v47);
      goto LABEL_108;
    }
  }

  else
  {
    v44 = SHIBYTE(v81[2]);
    if (SHIBYTE(v81[2]) >= 0)
    {
      v45 = HIBYTE(v81[2]);
    }

    else
    {
      v45 = v81[1];
    }

    if (v45)
    {
      goto LABEL_87;
    }
  }

LABEL_101:
  v51 = *(v72 + 40);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    KTLGetMaskFileExtensionName();
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &buf;
    }

    else
    {
      v68 = buf.__r_.__value_.__r.__words[0];
    }

    v69 = v71;
    if (*(v71 + 23) < 0)
    {
      v69 = *v71;
    }

    LODWORD(v89.__r_.__value_.__l.__data_) = 136315394;
    *(v89.__r_.__value_.__r.__words + 4) = v68;
    WORD2(v89.__r_.__value_.__r.__words[1]) = 2080;
    *(&v89.__r_.__value_.__r.__words[1] + 6) = v69;
    _os_log_error_impl(&dword_23C1C4000, v51, OS_LOG_TYPE_ERROR, "Error loading baseband %s file: %s", &v89, 0x16u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v52 = 0;
LABEL_130:
  v61 = v78;
  if (v78)
  {
    v62 = v79;
    v63 = v78;
    if (v79 != v78)
    {
      do
      {
        v64 = *(v62 - 1);
        v62 -= 3;
        if (v64 < 0)
        {
          operator delete(*v62);
        }
      }

      while (v62 != v61);
      v63 = v78;
    }

    v79 = v61;
    operator delete(v63);
  }

  if (SHIBYTE(v81[2]) < 0)
  {
    operator delete(v81[0]);
    if ((SHIBYTE(v84) & 0x80000000) == 0)
    {
      goto LABEL_140;
    }

LABEL_143:
    operator delete(v82);
    v67 = *MEMORY[0x277D85DE8];
    return v52;
  }

  if (SHIBYTE(v84) < 0)
  {
    goto LABEL_143;
  }

LABEL_140:
  v65 = *MEMORY[0x277D85DE8];
  return v52;
}

void sub_23C2120F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (v46 < 0)
  {
    operator delete(v47);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a32);
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void ICETrace::setLPMHandlers_sync(ICETrace *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
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

  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8ICETrace19setLPMHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_37;
  aBlock[4] = this;
  aBlock[5] = v3;
  v22 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v7 = _Block_copy(aBlock);
  v8 = *(this + 3);
  if (v8)
  {
    dispatch_retain(*(this + 3));
  }

  v23 = v7;
  v24 = v8;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1174405120;
  v17[2] = ___ZN8ICETrace19setLPMHandlers_syncEv_block_invoke_38;
  v17[3] = &__block_descriptor_tmp_47;
  v17[4] = this;
  v17[5] = v3;
  v18 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = _Block_copy(v17);
  v10 = *(this + 3);
  if (v10)
  {
    dispatch_retain(*(this + 3));
  }

  v19 = v9;
  v20 = v10;
  v11 = *(this + 45);
  if (v11)
  {
    if (v7)
    {
      v15 = _Block_copy(v7);
      object = v8;
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = 0;
      object = v8;
      if (!v8)
      {
LABEL_13:
        (*(*v11 + 80))(v11, &v15);
        if (object)
        {
          dispatch_release(object);
        }

        if (v15)
        {
          _Block_release(v15);
        }

        v12 = *(this + 45);
        if (v9)
        {
          v13 = _Block_copy(v9);
          v14 = v10;
          if (!v10)
          {
LABEL_20:
            (*(*v12 + 88))(v12, &v13);
            if (v14)
            {
              dispatch_release(v14);
            }

            if (v13)
            {
              _Block_release(v13);
            }

            goto LABEL_24;
          }
        }

        else
        {
          v13 = 0;
          v14 = v10;
          if (!v10)
          {
            goto LABEL_20;
          }
        }

        dispatch_retain(v10);
        goto LABEL_20;
      }
    }

    dispatch_retain(v8);
    goto LABEL_13;
  }

LABEL_24:
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_23C212514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  dispatch::callback<void({block_pointer})(void)>::~callback(&a20);
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
    dispatch::callback<void({block_pointer})(dispatch::group_session)>::~callback(v29 - 96);
    v31 = a28;
    if (!a28)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v28);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    dispatch::callback<void({block_pointer})(dispatch::group_session)>::~callback(v29 - 96);
    v31 = a28;
    if (!a28)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v31);
  std::__shared_weak_count::__release_weak(v28);
  _Unwind_Resume(a1);
}

void ___ZN8ICETrace19setLPMHandlers_syncEv_block_invoke(void *a1, dispatch_object_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v46 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_69:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v8 = *(v5 + 88);
      if (v8)
      {
        dispatch_retain(*(v5 + 88));
        dispatch_group_enter(v8);
      }

      v9 = *(v5 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I ARI Low Power enter event received", buf, 2u);
      }

      if (*(v5 + 424))
      {
        v44 = 0;
        LOBYTE(v43) = 0;
        Timestamp::Timestamp(v41);
        v40 = 0;
        LOBYTE(v39) = 0;
        v38 = 0;
        LOBYTE(__p) = 0;
        abm::trace::TraceInfo::push();
        if (v38 < 0)
        {
          operator delete(__p);
          if ((v40 & 0x80000000) == 0)
          {
LABEL_11:
            std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v41, v42);
            if ((v44 & 0x80000000) == 0)
            {
              goto LABEL_12;
            }

LABEL_21:
            operator delete(v43);
            if (*(v5 + 272))
            {
              goto LABEL_22;
            }

            goto LABEL_13;
          }
        }

        else if ((v40 & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        operator delete(v39);
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v41, v42);
        if (v44 < 0)
        {
          goto LABEL_21;
        }
      }

LABEL_12:
      if (*(v5 + 272))
      {
        goto LABEL_22;
      }

LABEL_13:
      v10 = *(v5 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Holding ARI LPM Enter session until EnterLowPower call", buf, 2u);
      }

      v11 = *a2;
      if (*a2)
      {
        dispatch_retain(*a2);
        dispatch_group_enter(v11);
      }

      v12 = *(v5 + 264);
      *(v5 + 264) = v11;
      if (v12)
      {
        dispatch_group_leave(v12);
        dispatch_release(v12);
      }

LABEL_22:
      memset(buf, 170, sizeof(buf));
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN8ICETrace19setLPMHandlers_syncEv_block_invoke_32;
      aBlock[3] = &__block_descriptor_tmp_33_2;
      v13 = *a2;
      aBlock[4] = v5;
      group = v13;
      if (v13)
      {
        dispatch_retain(v13);
        dispatch_group_enter(group);
      }

      v33 = v8;
      if (v8)
      {
        dispatch_retain(v8);
        dispatch_group_enter(v33);
      }

      v14 = a1[6];
      v34 = a1[5];
      v35 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = _Block_copy(aBlock);
      v16 = *(v5 + 24);
      if (v16)
      {
        dispatch_retain(*(v5 + 24));
      }

      *buf = v15;
      *&buf[8] = v16;
      *(v5 + 261) = 0;
      v17 = *(v5 + 336);
      v18 = *(v5 + 352);
      if (v18)
      {
        v19 = _Block_copy(v18);
        v30 = v19;
        BasebandTransport::reportStatus(v17, 0, &v30);
        if (v19)
        {
          _Block_release(v19);
        }
      }

      else
      {
        v30 = 0;
        BasebandTransport::reportStatus(v17, 0, &v30);
      }

      v20 = *(v5 + 260);
      v21 = *(v5 + 40);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v20 == 1)
      {
        if (v22)
        {
          *v29 = 0;
          _os_log_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEFAULT, "#I Enabling sleep profile for LPM", v29, 2u);
        }

        v23 = *(v5 + 360);
        if (!v23)
        {
          goto LABEL_55;
        }

        if (v15)
        {
          v27 = _Block_copy(v15);
          object = v16;
          if (!v16)
          {
LABEL_41:
            (*(*v23 + 24))(v23, &v27);
            if (object)
            {
              dispatch_release(object);
            }

            if (v27)
            {
              _Block_release(v27);
            }

LABEL_55:
            if (v16)
            {
              dispatch_release(v16);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            if (v35)
            {
              std::__shared_weak_count::__release_weak(v35);
            }

            if (v33)
            {
              dispatch_group_leave(v33);
              if (v33)
              {
                dispatch_release(v33);
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

            if (v8)
            {
              dispatch_group_leave(v8);
              dispatch_release(v8);
            }

            goto LABEL_69;
          }
        }

        else
        {
          v27 = 0;
          object = v16;
          if (!v16)
          {
            goto LABEL_41;
          }
        }

        dispatch_retain(v16);
        goto LABEL_41;
      }

      if (v22)
      {
        *v29 = 0;
        _os_log_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEFAULT, "#I Pausing traffic for LPM", v29, 2u);
      }

      v24 = *(v5 + 360);
      if (!v24)
      {
        goto LABEL_55;
      }

      if (v15)
      {
        v25 = _Block_copy(v15);
        v26 = v16;
        if (!v16)
        {
LABEL_51:
          (*(*v24 + 32))(v24, &v25);
          if (v26)
          {
            dispatch_release(v26);
          }

          if (v25)
          {
            _Block_release(v25);
          }

          goto LABEL_55;
        }
      }

      else
      {
        v25 = 0;
        v26 = v16;
        if (!v16)
        {
          goto LABEL_51;
        }
      }

      dispatch_retain(v16);
      goto LABEL_51;
    }
  }
}

void sub_23C212AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_group_t object, dispatch_group_t group, uint64_t a23, std::__shared_weak_count *a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a9);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a25);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  if (v32)
  {
    dispatch_group_leave(v32);
    dispatch_release(v32);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v33 - 80);
  _Unwind_Resume(a1);
}

void ___ZN8ICETrace19setLPMHandlers_syncEv_block_invoke_32(void *a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1[8];
  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  if (a1[7])
  {
    v8 = *a2;
    v9 = *(v5 + 40);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v15 = 138412290;
        v16 = v8;
        v11 = "#E Unable to switch to sleep configuration: %@";
        v12 = v9;
        v13 = 12;
LABEL_9:
        _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, v11, &v15, v13);
      }
    }

    else if (v10)
    {
      LOWORD(v15) = 0;
      v11 = "#I Successfully configured sleep";
      v12 = v9;
      v13 = 2;
      goto LABEL_9;
    }

    *(v5 + 261) = *a2 == 0;
  }

  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE56c29_ZTSNSt3__18weak_ptrI5TraceEE(void *a1, void *a2)
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

  v8 = a2[8];
  a1[7] = a2[7];
  a1[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE56c29_ZTSNSt3__18weak_ptrI5TraceEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[6];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[5];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = a1[5];
    if (v6)
    {

      dispatch_release(v6);
    }
  }
}

void ___ZN8ICETrace19setLPMHandlers_syncEv_block_invoke_38(void *a1)
{
  v2 = a1[4];
  v76 = 0;
  v77 = 0;
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_96;
  }

  v77 = std::__shared_weak_count::lock(v3);
  if (!v77)
  {
    return;
  }

  v76 = a1[5];
  if (!v76)
  {
    goto LABEL_96;
  }

  v4 = *(v2 + 88);
  if (v4)
  {
    dispatch_retain(*(v2 + 88));
    dispatch_group_enter(v4);
  }

  if (!*(v2 + 424))
  {
    goto LABEL_8;
  }

  v75 = 0;
  LOBYTE(v74) = 0;
  Timestamp::Timestamp(v72);
  v71 = 0;
  LOWORD(v70) = 0;
  LOBYTE(v69) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v72, v73);
  if (v75 < 0)
  {
    operator delete(v74);
    if (*(v2 + 261))
    {
LABEL_9:
      memset(buf, 170, sizeof(buf));
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN8ICETrace19setLPMHandlers_syncEv_block_invoke_40;
      aBlock[3] = &__block_descriptor_tmp_44_0;
      aBlock[4] = v2;
      group = v4;
      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(group);
      }

      v5 = a1[6];
      v33 = a1[5];
      v34 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = _Block_copy(aBlock);
      v7 = v6;
      v8 = *(v2 + 24);
      if (v8)
      {
        dispatch_retain(*(v2 + 24));
      }

      *buf = v7;
      *&buf[8] = v8;
      v9 = *(v2 + 360);
      if (!v9)
      {
        goto LABEL_23;
      }

      if (v7)
      {
        v29 = _Block_copy(v7);
        object = v8;
        if (!v8)
        {
LABEL_19:
          (*(*v9 + 16))(v9, &v29);
          if (object)
          {
            dispatch_release(object);
          }

          v6 = v29;
          if (v29)
          {
            _Block_release(v29);
          }

LABEL_23:
          v10 = *(v2 + 96);
          if ((v10 == 6 || !v10) && (config::hw::watch(v6) & 1) == 0 && (*(v2 + 248) & 1) == 0)
          {
            v11 = *(v2 + 336);
            v12 = *(v2 + 352);
            if (v12)
            {
              v13 = _Block_copy(v12);
              v28 = v13;
              BasebandTransport::reportStatus(v11, 600, &v28);
              if (v13)
              {
                _Block_release(v13);
              }
            }

            else
            {
              v28 = 0;
              BasebandTransport::reportStatus(v11, 600, &v28);
            }
          }

          if (v8)
          {
            dispatch_release(v8);
          }

          if (v7)
          {
            _Block_release(v7);
          }

          if (v34)
          {
            std::__shared_weak_count::__release_weak(v34);
          }

          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

LABEL_94:
          if (!v4)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }
      }

      else
      {
        v29 = 0;
        object = v8;
        if (!v8)
        {
          goto LABEL_19;
        }
      }

      dispatch_retain(v8);
      goto LABEL_19;
    }
  }

  else
  {
LABEL_8:
    if (*(v2 + 261))
    {
      goto LABEL_9;
    }
  }

  v14 = *(v2 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#E Detected failure on last LPM entry", buf, 2u);
  }

  if (*(v2 + 424))
  {
    v68 = 0;
    LOBYTE(v67) = 0;
    Timestamp::Timestamp(v65);
    v64 = 0;
    LOBYTE(v63) = 0;
    v62 = 0;
    LOBYTE(v61) = 0;
    abm::trace::TraceInfo::push();
    if (v62 < 0)
    {
      operator delete(v61);
      if ((v64 & 0x80000000) == 0)
      {
LABEL_36:
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v65, v66);
        if ((v68 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

LABEL_83:
        operator delete(v67);
        goto LABEL_37;
      }
    }

    else if ((v64 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    operator delete(v63);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v65, v66);
    if ((v68 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_83;
  }

LABEL_37:
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60 = v15;
  v59 = v15;
  v58 = v15;
  v57 = v15;
  v56 = v15;
  v55 = v15;
  *buf = v15;
  v16 = *MEMORY[0x277CECC38];
  v17 = strlen(*MEMORY[0x277CECC38]);
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

    p_dst = operator new(v20);
    *(&__dst + 1) = v18;
    v53 = v20 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_45;
  }

  HIBYTE(v53) = v17;
  p_dst = &__dst;
  if (v17)
  {
LABEL_45:
    memmove(p_dst, v16, v18);
  }

  *(p_dst + v18) = 0;
  v21 = *MEMORY[0x277CECD38];
  v22 = strlen(*MEMORY[0x277CECD38]);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v22 | 7) + 1;
    }

    v24 = operator new(v25);
    *(&v50 + 1) = v23;
    v51 = v25 | 0x8000000000000000;
    *&v50 = v24;
    goto LABEL_54;
  }

  HIBYTE(v51) = v22;
  v24 = &v50;
  if (v22)
  {
LABEL_54:
    memmove(v24, v21, v23);
  }

  *(v24 + v23) = 0;
  v26 = operator new(0x28uLL);
  v48 = v26;
  v49 = xmmword_23C32D530;
  strcpy(v26, "Detected failure on last LPM entry");
  Timestamp::Timestamp(v44);
  Timestamp::asString(v44, 0, 9, __p);
  v43 = 0;
  LOBYTE(v42) = 0;
  ResetInfo::ResetInfo(buf, &__dst, &v50, &v48, __p, 7, &v42);
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v44, v45);
  operator delete(v26);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(__dst);
  }

  ResetInfo::ResetInfo(&v35, buf);
  ICETrace::commandResetModem_sync(v2, &v35);
  if (v41 < 0)
  {
    operator delete(v40);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_63:
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_72;
    }
  }

  else if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

  operator delete(v38);
  if ((v37 & 0x80000000) == 0)
  {
LABEL_64:
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v36);
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_65:
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v35.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v60) & 0x80000000) == 0)
  {
LABEL_66:
    if ((SBYTE7(v58) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(*(&v59 + 1));
  if ((SBYTE7(v58) & 0x80000000) == 0)
  {
LABEL_67:
    if ((SHIBYTE(v56) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_76:
    operator delete(*(&v55 + 1));
    if ((SBYTE7(v55) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_77;
  }

LABEL_75:
  operator delete(v57);
  if (SHIBYTE(v56) < 0)
  {
    goto LABEL_76;
  }

LABEL_68:
  if ((SBYTE7(v55) & 0x80000000) == 0)
  {
    goto LABEL_94;
  }

LABEL_77:
  operator delete(*buf);
  if (v4)
  {
LABEL_95:
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

LABEL_96:
  v27 = v77;
  if (v77)
  {
    if (!atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }
  }
}

void sub_23C2134B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_group_t group, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, char a53)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a11);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a53);
  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v53)
  {
    dispatch_group_leave(v53);
    dispatch_release(v53);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v54 - 96);
  _Unwind_Resume(a1);
}

void sub_23C21365C()
{
  if (!v0)
  {
    JUMPOUT(0x23C21364CLL);
  }

  JUMPOUT(0x23C21363CLL);
}

void ___ZN8ICETrace19setLPMHandlers_syncEv_block_invoke_40(void *a1, uint64_t *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a1[7];
  if (!v3)
  {
    goto LABEL_54;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v45 = v6;
  if (!v6)
  {
    goto LABEL_54;
  }

  if (a1[6])
  {
    v7 = v6;
    v8 = *a2;
    v9 = *(v5 + 40);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#E Unable to switch to active configuration: %@", buf, 0xCu);
      }

      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v51 = v11;
      v52 = v11;
      v49 = v11;
      v50 = v11;
      v47 = v11;
      v48 = v11;
      *buf = v11;
      v12 = *MEMORY[0x277CECC38];
      v13 = strlen(*MEMORY[0x277CECC38]);
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

        p_dst = operator new(v16);
        *(&__dst + 1) = v14;
        v43 = v16 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v43) = v13;
        p_dst = &__dst;
        if (!v13)
        {
LABEL_19:
          *(p_dst + v14) = 0;
          v17 = *MEMORY[0x277CECD38];
          v18 = strlen(*MEMORY[0x277CECD38]);
          if (v18 > 0x7FFFFFFFFFFFFFF7)
          {
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
            *(&v40 + 1) = v19;
            v41 = v21 | 0x8000000000000000;
            *&v40 = v20;
          }

          else
          {
            HIBYTE(v41) = v18;
            v20 = &v40;
            if (!v18)
            {
LABEL_28:
              v20[v19] = 0;
              v22 = operator new(0x38uLL);
              v38 = v22;
              v39 = xmmword_23C32D540;
              strcpy(v22, "Failed to enable active trace profile with ARI command");
              Timestamp::Timestamp(v34);
              Timestamp::asString(v34, 0, 9, __p);
              v33 = 0;
              LOBYTE(v32) = 0;
              ResetInfo::ResetInfo(buf, &__dst, &v40, &v38, __p, 7, &v32);
              if (v37 < 0)
              {
                operator delete(__p[0]);
              }

              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v34, v35);
              operator delete(v22);
              if (SHIBYTE(v41) < 0)
              {
                operator delete(v40);
              }

              if (SHIBYTE(v43) < 0)
              {
                operator delete(__dst);
              }

              ResetInfo::ResetInfo(&v25, buf);
              ICETrace::commandResetModem_sync(v5, &v25);
              if (v31 < 0)
              {
                operator delete(v30);
                if ((v29 & 0x80000000) == 0)
                {
LABEL_36:
                  if ((v27 & 0x80000000) == 0)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_46;
                }
              }

              else if ((v29 & 0x80000000) == 0)
              {
                goto LABEL_36;
              }

              operator delete(v28);
              if ((v27 & 0x80000000) == 0)
              {
LABEL_37:
                if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_38;
                }

                goto LABEL_47;
              }

LABEL_46:
              operator delete(v26);
              if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_38:
                if ((SHIBYTE(v52) & 0x80000000) == 0)
                {
                  goto LABEL_39;
                }

                goto LABEL_48;
              }

LABEL_47:
              operator delete(v25.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v52) & 0x80000000) == 0)
              {
LABEL_39:
                if ((SBYTE7(v50) & 0x80000000) == 0)
                {
                  goto LABEL_40;
                }

                goto LABEL_49;
              }

LABEL_48:
              operator delete(*(&v51 + 1));
              if ((SBYTE7(v50) & 0x80000000) == 0)
              {
LABEL_40:
                if ((SHIBYTE(v48) & 0x80000000) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_50;
              }

LABEL_49:
              operator delete(v49);
              if ((SHIBYTE(v48) & 0x80000000) == 0)
              {
LABEL_41:
                if ((SBYTE7(v47) & 0x80000000) == 0)
                {
                  goto LABEL_42;
                }

                goto LABEL_51;
              }

LABEL_50:
              operator delete(*(&v47 + 1));
              if ((SBYTE7(v47) & 0x80000000) == 0)
              {
LABEL_42:
                v6 = v45;
                if (!v45)
                {
                  goto LABEL_54;
                }

                goto LABEL_52;
              }

LABEL_51:
              operator delete(*buf);
              v6 = v45;
              if (!v45)
              {
                goto LABEL_54;
              }

              goto LABEL_52;
            }
          }

          memmove(v20, v17, v19);
          goto LABEL_28;
        }
      }

      memmove(p_dst, v12, v14);
      goto LABEL_19;
    }

    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Successfully configured active trace", buf, 2u);
    }

    v6 = v7;
  }

LABEL_52:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v23 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v23);
  }

LABEL_54:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_23C213A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  ResetInfo::~ResetInfo(&a9);
  ResetInfo::~ResetInfo((v9 - 192));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 208);
  _Unwind_Resume(a1);
}

void sub_23C213AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, void *a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a26, a27);
  operator delete(v49);
  if (a43 < 0)
  {
    operator delete(a38);
    if ((a49 & 0x80000000) == 0)
    {
LABEL_5:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 208);
      _Unwind_Resume(a1);
    }
  }

  else if ((a49 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a44);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 208);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(dispatch::group_session)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(void)>::~callback(uint64_t a1)
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

void ICETrace::clearLPMHandlers_sync(ICETrace *this)
{
  v2 = *(this + 45);
  if (v2)
  {
    aBlock = 0;
    object = 0;
    (*(*v2 + 80))(v2, &aBlock);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v3 = *(this + 45);
    v4 = 0;
    v5 = 0;
    (*(*v3 + 88))(v3, &v4);
    if (v5)
    {
      dispatch_release(v5);
    }

    if (v4)
    {
      _Block_release(v4);
    }
  }
}

void sub_23C213CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  dispatch::callback<void({block_pointer})(dispatch::group_session)>::~callback(va);
  _Unwind_Resume(a1);
}

void ICETrace::prepare_sync(ICETrace *this)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 24);
    if (v3 > 6)
    {
      v4 = "Unknown";
    }

    else
    {
      v4 = off_278BB8A48[v3];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Preparing BB Trace with mode: %s", &buf, 0xCu);
  }

  *(this + 300) = 0;
  ICETrace::setTraceMode_sync(this, *(this + 24));
  memset(&v52, 170, sizeof(v52));
  v5 = abm::trace::kScratchFolder[0];
  v6 = strlen(abm::trace::kScratchFolder[0]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v6 | 7) + 1;
    }

    p_buf = operator new(v13);
    buf.__r_.__value_.__l.__size_ = v7;
    buf.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
    buf.__r_.__value_.__r.__words[0] = p_buf;
LABEL_16:
    memmove(p_buf, v5, v7);
    p_buf->__r_.__value_.__s.__data_[v7] = 0;
    size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  *(&buf.__r_.__value_.__s + 23) = v6;
  p_buf = &buf;
  if (v6)
  {
    goto LABEL_16;
  }

  buf.__r_.__value_.__s.__data_[0] = 0;
  size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
LABEL_10:
    if (size - 7 < 0x10)
    {
      v10 = size + 16;
      v11 = &buf;
      v12 = 22;
LABEL_20:
      v14 = 2 * v12;
      if (v10 > 2 * v12)
      {
        v14 = v10;
      }

      if ((v14 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v14 | 7) + 1;
      }

      if (v14 >= 0x17)
      {
        v16 = v15;
      }

      else
      {
        v16 = 23;
      }

      v17 = v12 == 22;
      goto LABEL_29;
    }

    v21 = &buf;
LABEL_36:
    *(&v21->__r_.__value_.__l.__data_ + size) = *"BBTrace.scratch/";
    v22 = size + 16;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      buf.__r_.__value_.__l.__size_ = size + 16;
    }

    else
    {
      *(&buf.__r_.__value_.__s + 23) = v22 & 0x7F;
    }

    v20 = v21 + v22;
    goto LABEL_40;
  }

LABEL_17:
  size = buf.__r_.__value_.__l.__size_;
  v12 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 - buf.__r_.__value_.__l.__size_ >= 0x10)
  {
    v21 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_36;
  }

  v10 = buf.__r_.__value_.__l.__size_ + 16;
  if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 16 - v12)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = buf.__r_.__value_.__r.__words[0];
  if (v12 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_20;
  }

  v17 = 0;
  v16 = 0x7FFFFFFFFFFFFFF7;
LABEL_29:
  v18 = operator new(v16);
  v19 = v18;
  if (size)
  {
    memmove(v18, v11, size);
  }

  *(v19 + size) = *"BBTrace.scratch/";
  if (!v17)
  {
    operator delete(v11);
  }

  buf.__r_.__value_.__l.__size_ = v10;
  buf.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
  buf.__r_.__value_.__r.__words[0] = v19;
  v20 = (v19 + v10);
LABEL_40:
  *v20 = 0;
  v52 = buf;
  v23 = (this + 312);
  if (*(this + 39) || (v26 = *(this + 24), v26 != 6) && v26)
  {
    v24 = *(this + 5);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_23C1C4000, v24, OS_LOG_TYPE_DEFAULT, "#I Continuing trace with previous TraceFileCollection instance", &buf, 2u);
      if (*(this + 440))
      {
        goto LABEL_84;
      }

      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v51 = 18;
  strcpy(__p, "MaxMemoryFileCount");
  memset(&buf, 0, sizeof(buf));
  v27 = prop::bbtrace::get(__p, &buf);
  if (v27)
  {
    v27 = util::convert<unsigned int>(&buf, this + 69, 0);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }
  }

  else if ((v51 & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  operator delete(*__p);
LABEL_50:
  buf.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAA0000;
  v59 = -1431655766;
  *&buf.__r_.__value_.__r.__words[1] = 0u;
  v54 = 0u;
  v55 = 0u;
  memset(v56, 0, sizeof(v56));
  v57 = 0;
  *v58 = 0x1500100000;
  *&v58[8] = 21;
  if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v56[1] = v52;
LABEL_56:
    v28 = v56;
    *(&v56[0].__r_.__value_.__s + 23) = 5;
    goto LABEL_57;
  }

  v27 = std::string::__assign_no_alias<true>(v56[1].__r_.__value_.__r.__words, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  if ((SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_56;
  }

  v56[0].__r_.__value_.__l.__size_ = 5;
  v28 = v56[0].__r_.__value_.__r.__words[0];
LABEL_57:
  strcpy(v28, ".istp");
  v29 = *(this + 69);
  LODWORD(v57) = *(this + 71);
  HIDWORD(v57) = v29;
  *v58 = *(this + 72);
  if (config::hw::watch(v27))
  {
    *&v58[4] = 0x1100000011;
  }

  TraceFileCollection::create(__p, &buf, v30);
  v31 = *__p;
  *__p = 0;
  *&__p[8] = 0;
  v32 = *(this + 40);
  *v23 = v31;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *&__p[8];
  if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    if ((SHIBYTE(v56[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_65:
      if ((SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_101;
    }
  }

  else if ((SHIBYTE(v56[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v56[1].__r_.__value_.__l.__data_);
  if ((SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_66:
    v25 = *(&v54 + 1);
    if (!*(&v54 + 1))
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_101:
  operator delete(v56[0].__r_.__value_.__l.__data_);
  v25 = *(&v54 + 1);
  if (*(&v54 + 1))
  {
LABEL_67:
    *&v55 = v25;
    operator delete(v25);
  }

LABEL_68:
  if (SBYTE7(v54) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__size_);
    if (*(this + 440))
    {
      goto LABEL_84;
    }

    goto LABEL_70;
  }

LABEL_69:
  if (*(this + 440))
  {
    goto LABEL_84;
  }

LABEL_70:
  if (!*v23)
  {
    goto LABEL_84;
  }

  v34 = *(this + 5);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v46 = &v52;
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v46 = v52.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v46;
    _os_log_error_impl(&dword_23C1C4000, v34, OS_LOG_TYPE_ERROR, "Removing scratch folder: %s", &buf, 0xCu);
    v47 = *v23;
  }

  v35 = abm::trace::kTrashFolder[0];
  v36 = strlen(abm::trace::kTrashFolder[0]);
  if (v36 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v37 = v36;
  if (v36 >= 0x17)
  {
    if ((v36 | 7) == 0x17)
    {
      v39 = 25;
    }

    else
    {
      v39 = (v36 | 7) + 1;
    }

    v38 = operator new(v39);
    __dst[1] = v37;
    v49 = v39 | 0x8000000000000000;
    __dst[0] = v38;
    goto LABEL_80;
  }

  HIBYTE(v49) = v36;
  v38 = __dst;
  if (v36)
  {
LABEL_80:
    memmove(v38, v35, v37);
  }

  *(v37 + v38) = 0;
  v25 = TraceFileCollection::clear();
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_84:
  if (config::hw::watch(v25) && !*(this + 24))
  {
    v40 = ICETrace::openTransport_sync(this);
    v41 = *(this + 5);
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    if (v40)
    {
      if (v42)
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v43 = "#I Transport open success";
LABEL_91:
        _os_log_impl(&dword_23C1C4000, v41, OS_LOG_TYPE_DEFAULT, v43, &buf, 2u);
      }
    }

    else if (v42)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v43 = "#E Failed to open TRACE transport during prepare stage; ignore this failure and proceed";
      goto LABEL_91;
    }
  }

  if (*v23)
  {
    if ((*(this + 416) & 1) == 0)
    {
      v44 = *(this + 11);
      if (v44)
      {
        dispatch_group_enter(v44);
        *(this + 416) = 1;
      }
    }
  }

  *(this + 417) = 1;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_23C214434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  TraceFileCollection::Parameters::~Parameters(&a30);
  if (a28 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ICETrace::setTraceMode_sync(uint64_t a1, unsigned int a2)
{
  v58 = *MEMORY[0x277D85DE8];
  if (!a2 && (*(a1 + 273) & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "Active on AP";
      _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "#D Mode (%s) has not changed", buf, 0xCu);
    }

    v5 = 1;
    v6 = *MEMORY[0x277D85DE8];
    return v5;
  }

  if (a2 > 6 || ((1 << a2) & 0x45) == 0)
  {
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_ERROR, "Invalid Mode selected: %d", buf, 8u);
    }

    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v56 = v22;
    v57 = v22;
    v54 = v22;
    v55 = v22;
    *&buf[16] = v22;
    v53 = v22;
    *buf = v22;
    v23 = *MEMORY[0x277CECC38];
    v24 = strlen(*MEMORY[0x277CECC38]);
    if (v24 > 0x7FFFFFFFFFFFFFF7)
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
      *(&__dst + 1) = v25;
      v51 = v27 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v51) = v24;
      p_dst = &__dst;
      if (!v24)
      {
LABEL_46:
        *(p_dst + v25) = 0;
        v28 = *MEMORY[0x277CECD38];
        v29 = strlen(*MEMORY[0x277CECD38]);
        if (v29 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v30 = v29;
        if (v29 >= 0x17)
        {
          if ((v29 | 7) == 0x17)
          {
            v32 = 25;
          }

          else
          {
            v32 = (v29 | 7) + 1;
          }

          v31 = operator new(v32);
          *(&v48 + 1) = v30;
          v49 = v32 | 0x8000000000000000;
          *&v48 = v31;
        }

        else
        {
          HIBYTE(v49) = v29;
          v31 = &v48;
          if (!v29)
          {
LABEL_55:
            v31[v30] = 0;
            BYTE7(v47[1]) = 21;
            strcpy(v47, "Invalid Mode selected");
            Timestamp::Timestamp(v43);
            Timestamp::asString(v43, 0, 9, __p);
            v42 = 0;
            LOBYTE(v41) = 0;
            ResetInfo::ResetInfo(buf, &__dst, &v48, v47, __p, 7, &v41);
            if (v46 < 0)
            {
              operator delete(__p[0]);
              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v43, v44);
              if ((SHIBYTE(v49) & 0x80000000) == 0)
              {
LABEL_57:
                if ((SHIBYTE(v51) & 0x80000000) == 0)
                {
                  goto LABEL_58;
                }

LABEL_69:
                operator delete(__dst);
LABEL_58:
                ResetInfo::ResetInfo(&v34, buf);
                ICETrace::commandResetModem_sync(a1, &v34);
                if (v40 < 0)
                {
                  operator delete(v39);
                  if ((v38 & 0x80000000) == 0)
                  {
LABEL_60:
                    if ((v36 & 0x80000000) == 0)
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_72;
                  }
                }

                else if ((v38 & 0x80000000) == 0)
                {
                  goto LABEL_60;
                }

                operator delete(v37);
                if ((v36 & 0x80000000) == 0)
                {
LABEL_61:
                  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_62;
                  }

                  goto LABEL_73;
                }

LABEL_72:
                operator delete(v35);
                if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_62:
                  *(a1 + 96) = 0;
                  if ((SHIBYTE(v57) & 0x80000000) == 0)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_74;
                }

LABEL_73:
                operator delete(v34.__r_.__value_.__l.__data_);
                *(a1 + 96) = 0;
                if ((SHIBYTE(v57) & 0x80000000) == 0)
                {
LABEL_63:
                  if ((SBYTE7(v55) & 0x80000000) == 0)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_75;
                }

LABEL_74:
                operator delete(*(&v56 + 1));
                if ((SBYTE7(v55) & 0x80000000) == 0)
                {
LABEL_64:
                  if ((SHIBYTE(v53) & 0x80000000) == 0)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_76;
                }

LABEL_75:
                operator delete(v54);
                if ((SHIBYTE(v53) & 0x80000000) == 0)
                {
LABEL_65:
                  if ((buf[23] & 0x80000000) == 0)
                  {
LABEL_66:
                    v5 = 0;
                    v33 = *MEMORY[0x277D85DE8];
                    return v5;
                  }

LABEL_77:
                  operator delete(*buf);
                  goto LABEL_66;
                }

LABEL_76:
                operator delete(*&buf[24]);
                if ((buf[23] & 0x80000000) == 0)
                {
                  goto LABEL_66;
                }

                goto LABEL_77;
              }
            }

            else
            {
              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v43, v44);
              if ((SHIBYTE(v49) & 0x80000000) == 0)
              {
                goto LABEL_57;
              }
            }

            operator delete(v48);
            if ((SHIBYTE(v51) & 0x80000000) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_69;
          }
        }

        memmove(v31, v28, v30);
        goto LABEL_55;
      }
    }

    memmove(p_dst, v23, v25);
    goto LABEL_46;
  }

  v7 = *(a1 + 400);
  if (v7)
  {
    if (*(v7 + 3))
    {
      goto LABEL_10;
    }

LABEL_30:
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_ERROR, "expected to use software bypass, but it is not supported", buf, 2u);
    }

    v5 = 0;
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  SoftwareBypassShim::create(buf);
  v15 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v16 = *(a1 + 408);
  *(a1 + 400) = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v7 = *(a1 + 400);
  if (!*(v7 + 3))
  {
    goto LABEL_30;
  }

LABEL_10:
  if (a2 == 6)
  {
    v8 = 56;
  }

  else
  {
    v8 = 0;
  }

  if (a2 == 2)
  {
    v9 = 9;
  }

  else
  {
    v9 = v8;
  }

  v5 = SoftwareBypassShim::bypassCtl(v7, v9);
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = SoftwareBypassShim::bypassInterfaceMaskAsString(*(a1 + 400), v9);
    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I bypassCtl( %s): success: %d", buf, 0x12u);
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

LABEL_33:
    v19 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v12 = *(a1 + 40);
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_33;
  }

LABEL_20:
  v13 = "failure";
  if (v5)
  {
    v13 = "success";
  }

  *buf = 136315138;
  *&buf[4] = v13;
  _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Set mode %s", buf, 0xCu);
  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_23C214B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ResetInfo::~ResetInfo(va);
  ResetInfo::~ResetInfo((v2 - 192));
  _Unwind_Resume(a1);
}

void sub_23C214B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a27, a28);
  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v45 - 193) < 0)
  {
    operator delete(*(v45 - 216));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ICETrace::start_sync(uint64_t a1, char **a2, const void **a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 417))
  {
    v6 = *(a1 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_3;
    }
  }

  else
  {
    (*(*a1 + 152))(a1);
    v6 = *(a1 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_3:
      if (!*(a1 + 424))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v7 = *(a1 + 96);
  if (v7 > 6)
  {
    v8 = "Unknown";
  }

  else
  {
    v8 = off_278BB8A48[v7];
  }

  *buf = 136315138;
  v33 = v8;
  _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Starting BB Trace with mode: %s", buf, 0xCu);
  if (!*(a1 + 424))
  {
LABEL_11:
    v9 = *a2;
    v25.gr_name = v9;
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_10:
  v31 = 0;
  LOBYTE(v30) = 0;
  Timestamp::Timestamp(v28);
  v27 = 0;
  LOBYTE(v26) = 0;
  HIBYTE(v25.gr_mem) = 0;
  LOBYTE(v25.gr_passwd) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v28, v29);
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v30);
  v9 = *a2;
  v25.gr_name = v9;
  if (v9)
  {
LABEL_12:
    dispatch_retain(v9);
  }

LABEL_13:
  started = ICETrace::issueStartCommands_sync(a1, &v25);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (started)
  {
    ICETrace::setLPMHandlers_sync(a1);
    if (*(a1 + 424))
    {
      v24 = 0;
      LOBYTE(v23) = 0;
      Timestamp::Timestamp(v21);
      v20 = 0;
      LOBYTE(v19) = 0;
      v18 = 0;
      LOBYTE(v17) = 0;
      abm::trace::TraceInfo::push();
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v21, v22);
      if (v24 < 0)
      {
        operator delete(v23);
      }
    }
  }

  else
  {
    v11 = *(a1 + 320);
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    ICETrace::setTraceMode_sync(a1, 0);
    *(a1 + 280) = 0;
    v12 = *a2;
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    v13 = *a3;
    cf = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    (*(*a1 + 168))(a1, &object, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (object)
    {
      dispatch_release(object);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_23C214F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, dispatch_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ICETrace::reinit(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1174405120;
  v4[2] = ___ZN8ICETrace6reinitEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_50;
  v4[4] = a1;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(group);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v4);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

void ___ZN8ICETrace6reinitEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 264);
  *(v1 + 264) = 0;
  if (v2)
  {
    dispatch_group_leave(v2);
    dispatch_release(v2);
  }

  *(v1 + 272) = 0;
}

void ICETrace::prepare(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1174405120;
  v4[2] = ___ZN8ICETrace7prepareEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_53;
  v4[4] = a1;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(group);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v4);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

void ___ZN8ICETrace7prepareEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  if (v2)
  {
    dispatch_retain(*(v1 + 88));
    dispatch_group_enter(v2);
  }

  if (*(v1 + 280) == 1)
  {
    (*(*v1 + 152))(v1);
  }

  if (v2)
  {
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_23C2152D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ICETrace::start(uint64_t a1, dispatch_object_t *a2, const void **a3)
{
  v6 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v6);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN8ICETrace5startEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_54_0;
  v9[4] = a1;
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  v7 = *a3;
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *a2;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v9);
  if (object)
  {
    dispatch_release(object);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }
}

void ___ZN8ICETrace5startEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v3)
  {
    dispatch_retain(*(v2 + 88));
    dispatch_group_enter(v3);
  }

  v27[0] = 0xAAAAAAAAAAAAAAAALL;
  v27[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v27, *(a1 + 48));
  memset(v26, 170, sizeof(v26));
  v4 = *MEMORY[0x277CECC18];
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  ctu::cf::MakeCFString::MakeCFString(&v23, v4);
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v23);
  if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    v5 = *(v2 + 360);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_8:
    v6 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v7 = off_280C059B8;
    if (!off_280C059B8)
    {
      CommandDriverFactory::create_default_global(__p, v6);
      v8 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v9 = *(&off_280C059B8 + 1);
      off_280C059B8 = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v10 = __p[1];
      if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      v7 = off_280C059B8;
    }

    v21[1] = v7;
    v22 = *(&off_280C059B8 + 1);
    if (*(&off_280C059B8 + 1))
    {
      atomic_fetch_add_explicit((*(&off_280C059B8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    (*(*v7 + 128))(&v23, v7);
    v11 = v23;
    v23 = 0uLL;
    v12 = *(v2 + 368);
    *(v2 + 360) = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *(&v23 + 1);
    if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    goto LABEL_27;
  }

  operator delete(__p[0]);
  v5 = *(v2 + 360);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (((*(*v5 + 128))(v5) & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_27:
  ICETrace::processETB_sync(v2);
  v14 = *(a1 + 56);
  if (*(v2 + 280) == 1)
  {
    v21[0] = *(a1 + 56);
    if (v14)
    {
      dispatch_retain(v14);
    }

    v15 = *(a1 + 48);
    cf = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    (*(*v2 + 160))(v2, v21, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v16 = v21[0];
    if (!v21[0])
    {
      goto LABEL_44;
    }

LABEL_43:
    dispatch_release(v16);
    goto LABEL_44;
  }

  object = *(a1 + 56);
  if (v14)
  {
    dispatch_retain(v14);
  }

  v17 = *(a1 + 48);
  v18 = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  (*(*v2 + 168))(v2, &object, &v18);
  if (v18)
  {
    CFRelease(v18);
  }

  v16 = object;
  if (object)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (SHIBYTE(v26[2]) < 0)
  {
    operator delete(v26[0]);
  }

  MEMORY[0x23EECD940](v27);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

void sub_23C21581C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x23EECD940](v29 - 64);
  if (v28)
  {
    dispatch_group_leave(v28);
    dispatch_release(v28);
  }

  _Unwind_Resume(a1);
}

void ICETrace::processETB_sync(ICETrace *this)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!capabilities::abs::supportsETB(this))
  {
    goto LABEL_46;
  }

  HIBYTE(v33) = 8;
  strcpy(v32, "Disabled");
  v3 = (this + 152);
  v2 = *(this + 19);
  v4 = *(this + 175);
  v5 = v4 >= 0 ? this + 152 : *(this + 19);
  if (!strcasecmp(v32, v5))
  {
    goto LABEL_46;
  }

  if (v4 < 0)
  {
    if (!*(this + 20))
    {
      goto LABEL_46;
    }

    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    std::string::__init_copy_ctor_external(&v31, v2, *(this + 20));
  }

  else
  {
    if (!v4)
    {
      goto LABEL_46;
    }

    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    *&v31.__r_.__value_.__l.__data_ = *v3;
    v31.__r_.__value_.__r.__words[2] = *(this + 21);
  }

  TraceConfigFile_sync = ICETrace::loadTraceConfigFile_sync(this, &v31, v32, 1);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    v21 = TraceConfigFile_sync;
    operator delete(v31.__r_.__value_.__l.__data_);
    if (v21)
    {
LABEL_13:
      if ((this + 224) != v32)
      {
        std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(this + 28, v32[0], v32[1], v32[1] - v32[0]);
      }

      v7 = *(this + 2);
      if (!v7 || (v8 = *(this + 1), (v9 = std::__shared_weak_count::lock(v7)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v10 = v9;
      p_shared_weak_owners = &v9->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v10);
      }

      memset(buf, 170, 16);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN8ICETrace15processETB_syncEv_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_137;
      aBlock[4] = this;
      aBlock[5] = v8;
      v30 = v10;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v12 = _Block_copy(aBlock);
      v13 = *(this + 3);
      if (v13)
      {
        dispatch_retain(*(this + 3));
      }

      *buf = v12;
      *&buf[8] = v13;
      v14 = *(this + 45);
      if (!v14)
      {
LABEL_34:
        if (v13)
        {
          dispatch_release(v13);
        }

        if (v12)
        {
          _Block_release(v12);
        }

        if (v30)
        {
          std::__shared_weak_count::__release_weak(v30);
        }

        std::__shared_weak_count::__release_weak(v10);
        v20 = v32[0];
        if (!v32[0])
        {
          goto LABEL_46;
        }

LABEL_45:
        v32[1] = v20;
        operator delete(v20);
        goto LABEL_46;
      }

      __p = 0;
      v27 = 0;
      v28 = 0;
      v16 = *(this + 28);
      v15 = *(this + 29);
      v17 = v15 - v16;
      if (v15 != v16)
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
        }

        v18 = operator new(v15 - v16);
        v19 = &v18[v17];
        __p = v18;
        v28 = &v18[v17];
        memcpy(v18, v16, v17);
        v27 = v19;
      }

      if (v12)
      {
        v24 = _Block_copy(v12);
        object = v13;
        if (!v13)
        {
LABEL_28:
          (*(*v14 + 104))(v14, &__p, &v24);
          if (object)
          {
            dispatch_release(object);
          }

          if (v24)
          {
            _Block_release(v24);
          }

          if (__p)
          {
            v27 = __p;
            operator delete(__p);
          }

          goto LABEL_34;
        }
      }

      else
      {
        v24 = 0;
        object = v13;
        if (!v13)
        {
          goto LABEL_28;
        }
      }

      dispatch_retain(v13);
      goto LABEL_28;
    }
  }

  else if (TraceConfigFile_sync)
  {
    goto LABEL_13;
  }

  v22 = *(this + 5);
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v20 = v32[0];
    if (!v32[0])
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (*(this + 175) < 0)
  {
    v3 = *v3;
  }

  *buf = 136315138;
  *&buf[4] = v3;
  _os_log_error_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_ERROR, "Failed to load ETB config: %s", buf, 0xCu);
  v20 = v32[0];
  if (v32[0])
  {
    goto LABEL_45;
  }

LABEL_46:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_23C215CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE56c21_ZTSN8dispatch5groupE(void *a1, void *a2)
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
    CFRetain(v6);
  }

  v7 = a2[7];
  a1[7] = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE56c21_ZTSN8dispatch5groupE(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[5];
    if (v5)
    {

      dispatch_release(v5);
    }
  }
}

void ICETrace::stop_sync(uint64_t a1, NSObject **a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Stopping", buf, 2u);
  }

  if (!*(a1 + 424))
  {
    goto LABEL_7;
  }

  v36 = 0;
  LOBYTE(v35) = 0;
  Timestamp::Timestamp(v33);
  v32 = 0;
  *v31 = 0;
  LOBYTE(v30) = 0;
  abm::trace::TraceInfo::push();
  if ((v31[0] & 0x80000000) == 0)
  {
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

  operator delete(v30);
  if (v32 < 0)
  {
LABEL_35:
    operator delete(*&v31[1]);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v33, v34);
    if (v36 < 0)
    {
      goto LABEL_36;
    }

LABEL_7:
    BasebandTransport::close(*(a1 + 336));
    if (*(a1 + 416) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_6:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v33, v34);
  if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_36:
  operator delete(v35);
  BasebandTransport::close(*(a1 + 336));
  if (*(a1 + 416) == 1)
  {
LABEL_8:
    dispatch_group_leave(*(a1 + 88));
    *(a1 + 416) = 0;
  }

LABEL_9:
  ICETrace::setTraceMode_sync(a1, 0);
  v5 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(a1 + 8), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8ICETrace9stop_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_58_0;
  aBlock[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  v26 = v7;
  v27 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 24);
  if (v11)
  {
    dispatch_retain(*(a1 + 24));
  }

  v28 = v10;
  v29 = v11;
  v12 = *(a1 + 360);
  if (v12 && (*(*v12 + 128))(v12))
  {
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = *(a1 + 248);
    *buf = &unk_284EFAAC8;
    LOBYTE(v23) = 0;
    BYTE1(v23) = v13;
    *(&v23 + 4) = *(a1 + 252);
    v14 = *(a1 + 360);
    if (v10)
    {
      v20 = _Block_copy(v10);
      object = v11;
      if (!v11)
      {
LABEL_25:
        (*(*v14 + 64))(v14, buf, &v20);
        if (object)
        {
          dispatch_release(object);
        }

        if (v20)
        {
          _Block_release(v20);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v20 = 0;
      object = v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    dispatch_retain(v11);
    goto LABEL_25;
  }

LABEL_29:
  ICETrace::clearLPMHandlers_sync(a1);
  v15 = *(a1 + 368);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    *(a1 + 417) = 0;
    if (!*(a1 + 424))
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(a1 + 417) = 0;
    if (!*(a1 + 424))
    {
      goto LABEL_39;
    }
  }

  v19 = 0;
  LOBYTE(v18) = 0;
  Timestamp::Timestamp(v16);
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v16, v17);
  if (v19 < 0)
  {
    operator delete(v18);
  }

LABEL_39:
  if (v29)
  {
    dispatch_release(v29);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v9);
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }
}

void sub_23C2162E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, dispatch_group_t group, uint64_t a42, std::__shared_weak_count *a43)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a30);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v45 - 176);
  if (a43)
  {
    std::__shared_weak_count::__release_weak(a43);
    v47 = group;
    if (!group)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v47 = group;
    if (!group)
    {
      goto LABEL_7;
    }
  }

  dispatch_group_leave(v47);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_7:
  std::__shared_weak_count::__release_weak(v44);
  if (v43)
  {
    dispatch_group_leave(v43);
    dispatch_release(v43);
  }

  _Unwind_Resume(a1);
}

void sub_23C21642C()
{
  if (!v0)
  {
    JUMPOUT(0x23C216424);
  }

  JUMPOUT(0x23C216414);
}

void ___ZN8ICETrace9stop_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(void *a1, uint64_t *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = *(v4 + 88);
  if (v5)
  {
    dispatch_retain(*(v4 + 88));
    dispatch_group_enter(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    v46 = v7;
    if (v7)
    {
      if (a1[6])
      {
        v8 = v7;
        v9 = *a2;
        v10 = *(v4 + 40);
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          if (v11)
          {
            *buf = 138412290;
            *&buf[4] = v9;
            _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#E Stop failed: %@", buf, 0xCu);
          }

          *&v12 = 0xAAAAAAAAAAAAAAAALL;
          *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v52 = v12;
          v53 = v12;
          v50 = v12;
          v51 = v12;
          v48 = v12;
          v49 = v12;
          *buf = v12;
          v13 = *MEMORY[0x277CECC38];
          v14 = strlen(*MEMORY[0x277CECC38]);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
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

            p_dst = operator new(v17);
            *(&__dst + 1) = v15;
            v44 = v17 | 0x8000000000000000;
            *&__dst = p_dst;
          }

          else
          {
            HIBYTE(v44) = v14;
            p_dst = &__dst;
            if (!v14)
            {
LABEL_21:
              *(p_dst + v15) = 0;
              v18 = *MEMORY[0x277CECD38];
              v19 = strlen(*MEMORY[0x277CECD38]);
              if (v19 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v20 = v19;
              if (v19 >= 0x17)
              {
                if ((v19 | 7) == 0x17)
                {
                  v22 = 25;
                }

                else
                {
                  v22 = (v19 | 7) + 1;
                }

                v21 = operator new(v22);
                *(&v41 + 1) = v20;
                v42 = v22 | 0x8000000000000000;
                *&v41 = v21;
              }

              else
              {
                HIBYTE(v42) = v19;
                v21 = &v41;
                if (!v19)
                {
LABEL_30:
                  v21[v20] = 0;
                  v23 = operator new(0x28uLL);
                  v39 = v23;
                  v40 = xmmword_23C32D550;
                  strcpy(v23, "Failed to stop trace with ARI command");
                  Timestamp::Timestamp(v35);
                  Timestamp::asString(v35, 0, 9, __p);
                  v34 = 0;
                  LOBYTE(v33) = 0;
                  ResetInfo::ResetInfo(buf, &__dst, &v41, &v39, __p, 7, &v33);
                  if (v38 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v35, v36);
                  operator delete(v23);
                  if (SHIBYTE(v42) < 0)
                  {
                    operator delete(v41);
                  }

                  if (SHIBYTE(v44) < 0)
                  {
                    operator delete(__dst);
                  }

                  ResetInfo::ResetInfo(&v26, buf);
                  ICETrace::commandResetModem_sync(v4, &v26);
                  if (v32 < 0)
                  {
                    operator delete(v31);
                    if ((v30 & 0x80000000) == 0)
                    {
LABEL_38:
                      if ((v28 & 0x80000000) == 0)
                      {
                        goto LABEL_39;
                      }

                      goto LABEL_48;
                    }
                  }

                  else if ((v30 & 0x80000000) == 0)
                  {
                    goto LABEL_38;
                  }

                  operator delete(v29);
                  if ((v28 & 0x80000000) == 0)
                  {
LABEL_39:
                    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_40;
                    }

                    goto LABEL_49;
                  }

LABEL_48:
                  operator delete(v27);
                  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_40:
                    if ((SHIBYTE(v53) & 0x80000000) == 0)
                    {
                      goto LABEL_41;
                    }

                    goto LABEL_50;
                  }

LABEL_49:
                  operator delete(v26.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v53) & 0x80000000) == 0)
                  {
LABEL_41:
                    if ((SBYTE7(v51) & 0x80000000) == 0)
                    {
                      goto LABEL_42;
                    }

                    goto LABEL_51;
                  }

LABEL_50:
                  operator delete(*(&v52 + 1));
                  if ((SBYTE7(v51) & 0x80000000) == 0)
                  {
LABEL_42:
                    if ((SHIBYTE(v49) & 0x80000000) == 0)
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_52;
                  }

LABEL_51:
                  operator delete(v50);
                  if ((SHIBYTE(v49) & 0x80000000) == 0)
                  {
LABEL_43:
                    if ((SBYTE7(v48) & 0x80000000) == 0)
                    {
                      goto LABEL_44;
                    }

LABEL_53:
                    operator delete(*buf);
                    v7 = v46;
                    if (!v46)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_54;
                  }

LABEL_52:
                  operator delete(*(&v48 + 1));
                  if ((SBYTE7(v48) & 0x80000000) == 0)
                  {
LABEL_44:
                    v7 = v46;
                    if (!v46)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_54;
                  }

                  goto LABEL_53;
                }
              }

              memmove(v21, v18, v20);
              goto LABEL_30;
            }
          }

          memmove(p_dst, v13, v15);
          goto LABEL_21;
        }

        if (v11)
        {
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Stop successful.", buf, 2u);
        }

        v7 = v8;
      }

LABEL_54:
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v24 = v7;
        (v7->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v24);
      }
    }
  }

LABEL_56:
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_23C216884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  ResetInfo::~ResetInfo(&a9);
  ResetInfo::~ResetInfo((v50 - 208));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 224);
  if (!v49)
  {
    _Unwind_Resume(a1);
  }

  dispatch_group_leave(v49);
  dispatch_release(v49);
  _Unwind_Resume(a1);
}

void ICETrace::stop(uint64_t a1, dispatch_object_t *a2, const void **a3)
{
  v6 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v6);
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
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

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1174405120;
  v13[2] = ___ZN8ICETrace4stopEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v13[3] = &__block_descriptor_tmp_59_0;
  v13[4] = a1;
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  v15 = v8;
  v16 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = *a2;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = *a3;
  cf = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v13);
  if (cf)
  {
    CFRelease(cf);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v10);
  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }
}

void sub_23C216B3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8ICETrace4stopEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(void *a1)
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
    v12 = v5;
    if (v5)
    {
      v6 = v5;
      v11 = a1[6];
      if (v11 && *(v2 + 280) == 1)
      {
        v7 = a1[8];
        object = v7;
        if (v7)
        {
          dispatch_retain(v7);
        }

        v8 = a1[9];
        cf = v8;
        if (v8)
        {
          CFRetain(v8);
        }

        (*(*v2 + 168))(v2, &object, &cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if (object)
        {
          dispatch_release(object);
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

void sub_23C216C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, char a11)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
    if (!v11)
    {
      goto LABEL_3;
    }
  }

  dispatch_group_leave(v11);
  dispatch_release(v11);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c21_ZTSN8dispatch5groupE72c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1, void *a2)
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

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = a2[8];
  a1[8] = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  result = a2[9];
  a1[9] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c21_ZTSN8dispatch5groupE72c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = a1[5];
    if (v6)
    {

      dispatch_release(v6);
    }
  }
}

void ICETrace::abort(uint64_t a1, dispatch_object_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v4);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZN8ICETrace5abortEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_60_0;
  v6[4] = a1;
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(group);
  }

  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }
}

void ___ZN8ICETrace5abortEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v3)
  {
    dispatch_retain(*(v2 + 88));
    dispatch_group_enter(v3);
  }

  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Abort received", buf, 2u);
  }

  if (!*(v2 + 424))
  {
    goto LABEL_7;
  }

  v15 = 0;
  LOBYTE(v14) = 0;
  Timestamp::Timestamp(v12);
  v11 = 0;
  LOBYTE(v10) = 0;
  v9 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v12, v13);
  if (v15 < 0)
  {
    operator delete(v14);
    v5 = *(v2 + 360);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_7:
    v5 = *(v2 + 360);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(a1 + 48);
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  (*(*v5 + 120))(v5, &object);
  if (object)
  {
    dispatch_release(object);
  }

LABEL_12:
  BasebandTransport::close(*(v2 + 336));
  if (*(v2 + 416) == 1)
  {
    dispatch_group_leave(*(v2 + 88));
    *(v2 + 416) = 0;
  }

  *(v2 + 417) = 0;
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

void sub_23C217098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v24)
  {
    dispatch_group_leave(v24);
    dispatch_release(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C217110()
{
  if (!v0)
  {
    JUMPOUT(0x23C217108);
  }

  JUMPOUT(0x23C2170F8);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 40);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void ICETrace::shutdown(uint64_t a1, dispatch_object_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v4);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZN8ICETrace8shutdownEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_63_0;
  v6[4] = a1;
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(group);
  }

  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }
}

void ___ZN8ICETrace8shutdownEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v3)
  {
    dispatch_retain(*(v2 + 88));
    dispatch_group_enter(v3);
  }

  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I shutdown received", buf, 2u);
  }

  v5 = *(v2 + 360);
  if (v5)
  {
    v6 = *(a1 + 48);
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    (*(*v5 + 120))(v5, &object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  BasebandTransport::close(*(v2 + 336));
  if (*(v2 + 416) == 1)
  {
    dispatch_group_leave(*(v2 + 88));
    *(v2 + 416) = 0;
  }

  v7 = *(v2 + 368);
  *(v2 + 360) = 0;
  *(v2 + 368) = 0;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(v2 + 320);
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  *(v2 + 417) = 0;
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

void sub_23C217488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if (!v10)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v10)
  {
    goto LABEL_6;
  }

  dispatch_group_leave(v10);
  dispatch_release(v10);
  goto LABEL_6;
}

void ICETrace::enterLowPower(ICETrace *this, group *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN8ICETrace13enterLowPowerEN8dispatch5groupE_block_invoke;
  v4[3] = &__block_descriptor_tmp_64;
  v4[4] = this;
  v5 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_0;
  block[3] = &__block_descriptor_tmp_174;
  block[4] = this + 8;
  block[5] = &v5;
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

void ___ZN8ICETrace13enterLowPowerEN8dispatch5groupE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 272) = 1;
  v2 = *(v1 + 264);
  *(v1 + 264) = 0;
  if (v2)
  {
    dispatch_group_leave(v2);
    dispatch_release(v2);
  }

  v3 = *(v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I EnterLowPower received", v4, 2u);
  }
}

void ICETrace::exitLowPower(ICETrace *this, group *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN8ICETrace12exitLowPowerEN8dispatch5groupE_block_invoke;
  v4[3] = &__block_descriptor_tmp_65;
  v4[4] = this;
  v5 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_0;
  block[3] = &__block_descriptor_tmp_174;
  block[4] = this + 8;
  block[5] = &v5;
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

void ___ZN8ICETrace12exitLowPowerEN8dispatch5groupE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 272) = 0;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I ExitLowPower received", v3, 2u);
  }
}

void ICETrace::snapshot(uint64_t a1, dispatch_object_t *a2, const __CFDictionary **a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v5);
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "snapshot";
    _os_log_debug_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
  }

  v62[0] = 0xAAAAAAAAAAAAAAAALL;
  v62[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v62, *a3);
  memset(buf, 170, sizeof(buf));
  v7 = *MEMORY[0x277CECB88];
  v8 = strlen(*MEMORY[0x277CECB88]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

    p_dst = operator new(v11);
    __dst.__r_.__value_.__l.__size_ = v9;
    __dst.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_13;
  }

  *(&__dst.__r_.__value_.__s + 23) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_13:
    memmove(p_dst, v7, v9);
  }

  v12 = *MEMORY[0x277CECBB8];
  p_dst->__r_.__value_.__s.__data_[v9] = 0;
  ctu::cf::MakeCFString::MakeCFString(__p, v12);
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](__p);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  memset(&__dst, 170, sizeof(__dst));
  __p[0] = operator new(0x28uLL);
  *&__p[1] = xmmword_23C32C700;
  strcpy(__p[0], "kCollectTelephonyLogsWithCoredump");
  ctu::cf::MakeCFString::MakeCFString(&v59, "kKeyTraceAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v59);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  memset(__p, 170, sizeof(__p));
  strcpy(&v59, "kTraceFilterActionNone");
  *(&v59.__r_.__value_.__s + 23) = 22;
  ctu::cf::MakeCFString::MakeCFString(&v63, "kKeyTraceFilterAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v63);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v13 = abm::trace::kSnapshotFolder[0];
  v14 = strlen(abm::trace::kSnapshotFolder[0]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
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
    v56[1] = v15;
    v57 = v17 | 0x8000000000000000;
    v56[0] = v16;
    goto LABEL_28;
  }

  HIBYTE(v57) = v14;
  v16 = v56;
  if (v14)
  {
LABEL_28:
    memmove(v16, v13, v15);
  }

  *(v15 + v16) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v53, "kKeyTraceDumpStatePath");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v53);
  v18 = abm::trace::kLogDirPrefix[0];
  v19 = strlen(abm::trace::kLogDirPrefix[0]);
  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    v21 = operator new(v22);
    v54 = v20;
    v55 = v22 | 0x8000000000000000;
    v53 = v21;
    goto LABEL_37;
  }

  HIBYTE(v55) = v19;
  v21 = &v53;
  if (v19)
  {
LABEL_37:
    memmove(v21, v18, v20);
  }

  *(v21 + v20) = 0;
  if (v55 >= 0)
  {
    v23 = &v53;
  }

  else
  {
    v23 = v53;
  }

  if (v55 >= 0)
  {
    v24 = HIBYTE(v55);
  }

  else
  {
    v24 = v54;
  }

  v25 = std::string::append(&v58, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v27 = buf;
  }

  else
  {
    v27 = *buf;
  }

  if ((buf[23] & 0x80u) == 0)
  {
    v28 = buf[23];
  }

  else
  {
    v28 = *&buf[8];
  }

  v29 = std::string::append(&v63, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = strlen(abm::trace::kICETraceSnapshotDirectorySuffix[0]);
  v32 = std::string::append(&v59, abm::trace::kICETraceSnapshotDirectorySuffix[0], v31);
  v33 = v32->__r_.__value_.__r.__words[0];
  size = v32->__r_.__value_.__l.__size_;
  v35 = v32->__r_.__value_.__r.__words[2];
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_52:
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_63;
    }
  }

  else if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

  operator delete(v63.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v55) & 0x80000000) == 0)
  {
LABEL_53:
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_64:
    operator delete(v58.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v57) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_65;
  }

LABEL_63:
  operator delete(v53);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_64;
  }

LABEL_54:
  if ((SHIBYTE(v57) & 0x80000000) == 0)
  {
    goto LABEL_55;
  }

LABEL_65:
  operator delete(v56[0]);
LABEL_55:
  memset(&v59, 170, sizeof(v59));
  memset(&v63, 0, sizeof(v63));
  ctu::cf::MakeCFString::MakeCFString(&v58, "kKeyTraceDumpStateReason");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v58);
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  ctu::cf::MakeCFString::MakeCFString(&v58, *MEMORY[0x277CECBA8]);
  v36 = (a1 + 376);
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v58);
  if (*(a1 + 399) < 0)
  {
    operator delete(*v36);
    *v36 = *&v63.__r_.__value_.__l.__data_;
    *(a1 + 392) = *(&v63.__r_.__value_.__l + 2);
    v37 = SHIBYTE(__p[2]);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

LABEL_67:
    if (__p[1] != 22)
    {
      v44 = *(a1 + 40);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_84;
      }

      goto LABEL_82;
    }

    v38 = __p[0];
    goto LABEL_69;
  }

  *v36 = *&v63.__r_.__value_.__l.__data_;
  *(a1 + 392) = *(&v63.__r_.__value_.__l + 2);
  v37 = SHIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_67;
  }

LABEL_59:
  if (v37 != 22)
  {
    v44 = *(a1 + 40);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

  v38 = __p;
LABEL_69:
  v39 = *v38;
  v40 = v38[1];
  v41 = *(v38 + 14);
  if (v39 != *"kTraceFilterActionNone" || v40 != *"lterActionNone" || v41 != *"tionNone")
  {
    v44 = *(a1 + 40);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    if (v37 < 0)
    {
LABEL_82:
      v45 = __p[0];
      goto LABEL_83;
    }

LABEL_80:
    v45 = __p;
LABEL_83:
    LODWORD(v63.__r_.__value_.__l.__data_) = 136315138;
    *(v63.__r_.__value_.__r.__words + 4) = v45;
    _os_log_impl(&dword_23C1C4000, v44, OS_LOG_TYPE_DEFAULT, "#I Skipping snapshot as trace filter is '%s'", &v63, 0xCu);
    goto LABEL_84;
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 1174405120;
  v48[2] = ___ZN8ICETrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v48[3] = &__block_descriptor_tmp_69_0;
  v48[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v50 = __dst;
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v51 = v59;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v52, v33, size);
  }

  else
  {
    v52.__r_.__value_.__r.__words[0] = v33;
    v52.__r_.__value_.__l.__size_ = size;
    v52.__r_.__value_.__r.__words[2] = v35;
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v48);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_111:
      if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_116;
    }
  }

  else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_111;
  }

  operator delete(v51.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_112:
    v47 = group;
    if (!group)
    {
      goto LABEL_84;
    }

    goto LABEL_117;
  }

LABEL_116:
  operator delete(v50.__r_.__value_.__l.__data_);
  v47 = group;
  if (!group)
  {
    goto LABEL_84;
  }

LABEL_117:
  dispatch_group_leave(v47);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_84:
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
    if ((v35 & 0x8000000000000000) == 0)
    {
LABEL_86:
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_94;
    }
  }

  else if ((v35 & 0x8000000000000000) == 0)
  {
    goto LABEL_86;
  }

  operator delete(v33);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
LABEL_87:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_95;
  }

LABEL_94:
  operator delete(__p[0]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_88:
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_89;
    }

LABEL_96:
    operator delete(*buf);
    MEMORY[0x23EECD940](v62);
    if (!v5)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_95:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (buf[23] < 0)
  {
    goto LABEL_96;
  }

LABEL_89:
  MEMORY[0x23EECD940](v62);
  if (v5)
  {
LABEL_90:
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

LABEL_91:
  v46 = *MEMORY[0x277D85DE8];
}

void sub_23C217FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      v65 = group;
      if (!group)
      {
LABEL_8:
        if (a53 < 0)
        {
          operator delete(a48);
        }

        if (v62 < 0)
        {
          operator delete(v61);
        }

        if (a60 < 0)
        {
          operator delete(a55);
        }

        if (*(v63 - 177) < 0)
        {
          operator delete(*(v63 - 200));
        }

        if (*(v63 - 105) < 0)
        {
          operator delete(*(v63 - 128));
        }

        MEMORY[0x23EECD940](v63 - 176);
        if (v60)
        {
          dispatch_group_leave(v60);
          dispatch_release(v60);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      dispatch_group_leave(v65);
      dispatch_release(group);
      goto LABEL_8;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  v65 = group;
  if (!group)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN8ICETrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v3)
  {
    dispatch_retain(*(v2 + 88));
    dispatch_group_enter(v3);
  }

  if (*(v2 + 280) == 1 && *(v2 + 312))
  {
    capabilities::radio::firmwarePrefix(&v46, a1);
    v4 = std::string::insert(&v46, 0, "Baseband Trace\nBBFW Version: ", 0x1DuLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = (v2 + 376);
    v7 = *(v2 + 399);
    if (v7 >= 0)
    {
      v8 = (v2 + 376);
    }

    else
    {
      v8 = *(v2 + 376);
    }

    if (v7 >= 0)
    {
      v9 = *(v2 + 399);
    }

    else
    {
      v9 = *(v2 + 384);
    }

    v10 = std::string::append(&v47, v8, v9);
    v11 = *v10;
    *&buf[16] = v10[2];
    *buf = v11;
    v10[1] = 0;
    v10[2] = 0;
    *v10 = 0;
    v12 = buf[23];
    if ((buf[23] & 0x8000000000000000) != 0)
    {
      v12 = *&buf[8];
      v15 = *&buf[16] & 0x7FFFFFFFFFFFFFFFLL;
      v14 = (*&buf[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 == *&buf[8])
      {
        v16 = 0x7FFFFFFFFFFFFFF7;
        if (v15 == 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v13 = *buf;
        if (v14 > 0x3FFFFFFFFFFFFFF2)
        {
          v19 = 0;
LABEL_26:
          v10 = operator new(v16);
          v20 = v10;
          if (v14)
          {
            v10 = memmove(v10, v13, v14);
          }

          *(v20 + v14) = 10;
          if (!v19)
          {
            operator delete(v13);
          }

          *&buf[8] = v15;
          *&buf[16] = v16 | 0x8000000000000000;
          *buf = v20;
          v21 = v20 + v15;
LABEL_36:
          *v21 = 0;
          __p = *buf;
          v49 = *&buf[16];
          memset(buf, 0, sizeof(buf));
          if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_38:
              v23 = (a1 + 48);
              v24 = *(a1 + 71);
              if ((v24 & 0x80000000) == 0)
              {
                goto LABEL_39;
              }

              goto LABEL_43;
            }
          }

          else if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_38;
          }

          operator delete(v46.__r_.__value_.__l.__data_);
          v23 = (a1 + 48);
          v24 = *(a1 + 71);
          if ((v24 & 0x80000000) == 0)
          {
LABEL_39:
            if (v24 != 17)
            {
              goto LABEL_52;
            }

            goto LABEL_45;
          }

LABEL_43:
          if (*(a1 + 56) != 17)
          {
            goto LABEL_52;
          }

          v23 = *v23;
LABEL_45:
          v25 = *v23;
          v26 = v23[1];
          v27 = *(v23 + 16);
          if (v25 == *"kShutdownAllTrace" && v26 == *"nAllTrace" && v27 == str_76[16])
          {
            capabilities::debug::environment(v10);
            v30 = capabilities::debug::operator&() != 0;
            *(v2 + 300) = 1;
            BasebandTransport::close(*(v2 + 336));
            if (*(v2 + 416) == 1)
            {
              dispatch_group_leave(*(v2 + 88));
              *(v2 + 416) = 0;
            }

            ICETrace::setTraceMode_sync(v2, 0);
LABEL_53:
            if (!*(v2 + 424))
            {
              goto LABEL_60;
            }

            *buf = operator new(0x20uLL);
            *&buf[8] = xmmword_23C32C720;
            strcpy(*buf, "Trace State Configuration");
            ICETrace::getStateAsDict_sync(v2, a1 + 72, &object);
            abm::trace::TraceInfo::push();
            xpc_release(object);
            object = 0;
            if (buf[23] < 0)
            {
              operator delete(*buf);
              v32 = *(v2 + 424);
              if ((*(a1 + 119) & 0x80000000) == 0)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v31 = *(v2 + 424);
              if ((*(a1 + 119) & 0x80000000) == 0)
              {
LABEL_56:
                v44 = *(a1 + 96);
                goto LABEL_59;
              }
            }

            std::string::__init_copy_ctor_external(&v44, *(a1 + 96), *(a1 + 104));
LABEL_59:
            Timestamp::Timestamp(v42);
            abm::trace::TraceInfo::push();
            std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v42, v43);
            if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v44.__r_.__value_.__l.__data_);
              v33 = *(v2 + 40);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_61;
              }

              goto LABEL_64;
            }

LABEL_60:
            v33 = *(v2 + 40);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
LABEL_61:
              if (*(v2 + 399) < 0)
              {
                v6 = *v6;
              }

              *buf = 136315138;
              *&buf[4] = v6;
              _os_log_impl(&dword_23C1C4000, v33, OS_LOG_TYPE_DEFAULT, "#I Snapshot: BBFW=%s", buf, 0xCu);
              v33 = *(v2 + 40);
            }

LABEL_64:
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = (a1 + 96);
              if (*(a1 + 119) < 0)
              {
                v34 = *v34;
              }

              *buf = 136315394;
              *&buf[4] = v34;
              *&buf[12] = 1024;
              *&buf[14] = v30;
              _os_log_impl(&dword_23C1C4000, v33, OS_LOG_TYPE_DEFAULT, "#I Snapshot: Path=%s [move=%d]", buf, 0x12u);
            }

            v35 = *(v2 + 336);
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
            v51 = &__block_descriptor_tmp_86;
            v52 = v35;
            v53 = 1;
            ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped((v35 + 8), buf);
            v36 = *(v2 + 312);
            v37 = *(v2 + 432);
            v40 = *(v2 + 424);
            v41 = v37;
            if (v37)
            {
              atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            TraceFileCollection::snapshot();
            if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v41->__on_zero_shared)(v41);
              std::__shared_weak_count::__release_weak(v41);
            }

            v38 = *(v2 + 40);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23C1C4000, v38, OS_LOG_TYPE_DEFAULT, "#I snapshot complete", buf, 2u);
            }

            if (SHIBYTE(v49) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_77;
          }

LABEL_52:
          v30 = 1;
          goto LABEL_53;
        }

LABEL_17:
        v17 = 2 * v14;
        if (v15 > 2 * v14)
        {
          v17 = v15;
        }

        if ((v17 | 7) == 0x17)
        {
          v18 = 25;
        }

        else
        {
          v18 = (v17 | 7) + 1;
        }

        if (v17 >= 0x17)
        {
          v16 = v18;
        }

        else
        {
          v16 = 23;
        }

        v19 = v14 == 22;
        goto LABEL_26;
      }

      v13 = *buf;
    }

    else
    {
      v13 = buf;
      if (buf[23] == 22)
      {
        v14 = 22;
        v15 = 23;
        goto LABEL_17;
      }
    }

    v13[v12] = 10;
    v22 = v12 + 1;
    if (buf[23] < 0)
    {
      *&buf[8] = v22;
    }

    else
    {
      buf[23] = v22 & 0x7F;
    }

    v21 = &v13[v22];
    goto LABEL_36;
  }

LABEL_77:
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_23C21888C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, xpc_object_t object, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (v53)
  {
    dispatch_group_leave(v53);
    dispatch_release(v53);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C2189D0()
{
  if (!v0)
  {
    JUMPOUT(0x23C2189C8);
  }

  JUMPOUT(0x23C2189B8);
}

void ICETrace::getStateAsDict_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  v8 = MEMORY[0x277D86468];
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v9 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v7) == v8)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v9 = xpc_null_create();
LABEL_8:
  *a3 = v9;
LABEL_9:
  xpc_release(v7);
  v10 = *a3;
  if (MEMORY[0x23EECEE80](*a3) != v8)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Failed to create state dump dictionary", &buf, 2u);
    }

    return;
  }

  if (*(a1 + 280))
  {
    v12 = "true";
  }

  else
  {
    v12 = "false";
  }

  v13 = xpc_string_create(v12);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "Enabled", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = *(a1 + 96);
  if (v15 > 8)
  {
    v16 = "Unknown";
  }

  else
  {
    v16 = off_278BB8A00[v15];
  }

  v17 = xpc_string_create(v16);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "Mode", v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  ICETrace::historyAsString_sync(a1, &buf);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  v20 = xpc_string_create(p_buf);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "History", v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 248))
  {
    v22 = "true";
  }

  else
  {
    v22 = "false";
  }

  v23 = xpc_string_create(v22);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "BackgroundMode", v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  std::to_string(&buf, *(a1 + 252));
  __p = buf;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v26 = xpc_string_create(p_p);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a3, "High_Watermark", v26);
  v27 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v27);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v28 = *(a1 + 256);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&buf, v28);
  __p = buf;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  v30 = xpc_string_create(v29);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v31 = *a3;
  xpc_dictionary_set_value(*a3, "Low_Watermark", v30);
  v32 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v33 = (a1 + 104);
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v33 = (a1 + 104);
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  v33 = *v33;
LABEL_48:
  v34 = xpc_string_create(v33);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  xpc_dictionary_set_value(v31, "File", v34);
  v35 = xpc_null_create();
  xpc_release(v34);
  xpc_release(v35);
  if (*(a1 + 260))
  {
    v36 = "true";
  }

  else
  {
    v36 = "false";
  }

  v37 = xpc_string_create(v36);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v31, "Enabled_During_Sleep", v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v39 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v39 = *v39;
  }

  v40 = xpc_string_create(v39);
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  xpc_dictionary_set_value(v31, "File_Sleep", v40);
  v41 = xpc_null_create();
  xpc_release(v40);
  xpc_release(v41);
  v42 = *(a1 + 288);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&buf, v42);
  __p = buf;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &__p;
  }

  else
  {
    v43 = __p.__r_.__value_.__r.__words[0];
  }

  v44 = xpc_string_create(v43);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a3, "FileSize", v44);
  v45 = xpc_null_create();
  xpc_release(v44);
  xpc_release(v45);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v46 = *(a1 + 292);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&buf, v46);
  __p = buf;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = &__p;
  }

  else
  {
    v47 = __p.__r_.__value_.__r.__words[0];
  }

  v48 = xpc_string_create(v47);
  if (!v48)
  {
    v48 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a3, "SizeIO", v48);
  v49 = xpc_null_create();
  xpc_release(v48);
  xpc_release(v49);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v50 = *(a1 + 296);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&buf, v50);
  __p = buf;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = &__p;
  }

  else
  {
    v51 = __p.__r_.__value_.__r.__words[0];
  }

  v52 = xpc_string_create(v51);
  if (!v52)
  {
    v52 = xpc_null_create();
  }

  v53 = *a3;
  xpc_dictionary_set_value(*a3, "NumberOfReadIO", v52);
  v54 = xpc_null_create();
  xpc_release(v52);
  xpc_release(v54);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v55 = (a1 + 152);
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v55 = (a1 + 152);
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }
  }

  v55 = *v55;
LABEL_80:
  v56 = xpc_string_create(v55);
  if (!v56)
  {
    v56 = xpc_null_create();
  }

  xpc_dictionary_set_value(v53, "ETBFile", v56);
  v57 = xpc_null_create();
  xpc_release(v56);
  xpc_release(v57);
  if (*(a2 + 23) >= 0)
  {
    v58 = a2;
  }

  else
  {
    v58 = *a2;
  }

  v59 = xpc_string_create(v58);
  if (!v59)
  {
    v59 = xpc_null_create();
  }

  xpc_dictionary_set_value(v53, *MEMORY[0x277CECCC8], v59);
  v60 = xpc_null_create();
  xpc_release(v59);
  xpc_release(v60);
  v61 = *(a1 + 176);
  v62 = *(a1 + 184);
  v63 = v62 - v61;
  if ((v62 - v61) > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v63 <= 0x16)
  {
    *(&buf.__r_.__value_.__s + 23) = v62 - v61;
    v64 = &buf;
    if (v62 == v61)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if ((v63 | 7) == 0x17)
  {
    v78 = 25;
  }

  else
  {
    v78 = (v63 | 7) + 1;
  }

  v64 = operator new(v78);
  buf.__r_.__value_.__l.__size_ = v62 - v61;
  buf.__r_.__value_.__r.__words[2] = v78 | 0x8000000000000000;
  buf.__r_.__value_.__r.__words[0] = v64;
  if (v62 != v61)
  {
LABEL_90:
    memmove(v64, v61, v62 - v61);
  }

LABEL_91:
  v64->__r_.__value_.__s.__data_[v63] = 0;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = &buf;
  }

  else
  {
    v65 = buf.__r_.__value_.__r.__words[0];
  }

  v66 = xpc_string_create(v65);
  if (!v66)
  {
    v66 = xpc_null_create();
  }

  xpc_dictionary_set_value(v53, "Active Mask", v66);
  v67 = xpc_null_create();
  xpc_release(v66);
  xpc_release(v67);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v68 = *(a1 + 200);
  v69 = *(a1 + 208);
  v70 = v69 - v68;
  if ((v69 - v68) > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v70 > 0x16)
  {
    if ((v70 | 7) == 0x17)
    {
      v79 = 25;
    }

    else
    {
      v79 = (v70 | 7) + 1;
    }

    v71 = operator new(v79);
    buf.__r_.__value_.__l.__size_ = v69 - v68;
    buf.__r_.__value_.__r.__words[2] = v79 | 0x8000000000000000;
    buf.__r_.__value_.__r.__words[0] = v71;
    if (v69 == v68)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  *(&buf.__r_.__value_.__s + 23) = v69 - v68;
  v71 = &buf;
  if (v69 != v68)
  {
LABEL_101:
    memmove(v71, v68, v69 - v68);
  }

LABEL_102:
  v71->__r_.__value_.__s.__data_[v70] = 0;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = &buf;
  }

  else
  {
    v72 = buf.__r_.__value_.__r.__words[0];
  }

  v73 = xpc_string_create(v72);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  xpc_dictionary_set_value(v53, "Sleep Mask", v73);
  v74 = xpc_null_create();
  xpc_release(v73);
  xpc_release(v74);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 440))
  {
    v75 = "true";
  }

  else
  {
    v75 = "false";
  }

  v76 = xpc_string_create(v75);
  if (!v76)
  {
    v76 = xpc_null_create();
  }

  xpc_dictionary_set_value(v53, "Retain_Previous_Trace", v76);
  v77 = xpc_null_create();
  xpc_release(v76);
  xpc_release(v77);
}