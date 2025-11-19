void DIAGTrace::reinitService_sync(DIAGTrace *this, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Service reinit requested with preserve = %d", buf, 8u);
  }

  if (a2)
  {
    v5 = *(this + 40);
    v6 = *(this + 5);
    if (v5)
    {
      if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Service will be reinitialized", buf, 2u);
        v5 = *(this + 40);
      }

      diag::Service::Internal::init(*v5);
      goto LABEL_27;
    }
  }

  else
  {
    v6 = *(this + 5);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Service will be created", buf, 2u);
  }

  v7 = *(this + 2);
  if (!v7 || (v8 = *(this + 1), (v9 = std::__shared_weak_count::lock(v7)) == 0))
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

  v11 = operator new(0x10uLL);
  v12 = *(this + 26);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN9DIAGTrace18reinitService_syncEb_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_7_2;
  aBlock[4] = this;
  aBlock[5] = v8;
  v19 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(aBlock);
  v14 = *(this + 3);
  if (v14)
  {
    dispatch_retain(*(this + 3));
  }

  v20 = v13;
  object = v14;
  diag::Service::Service(v11, v12, &v20);
  *buf = v11;
  v15 = operator new(0x20uLL);
  *v15 = &unk_284EF9D10;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = v11;
  v16 = *(this + 41);
  *(this + 40) = v11;
  *(this + 41) = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  std::__shared_weak_count::__release_weak(v10);
LABEL_27:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_23C1F55C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9DIAGTrace18reinitService_syncEb_block_invoke(void *a1, int a2, size_t *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_77;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v58 = v8;
  if (!v8)
  {
    goto LABEL_77;
  }

  v9 = a1[5];
  v57 = v9;
  if (a2 == 4 && v9)
  {
    v10 = v7[5];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v35 = a3;
      if (*(a3 + 23) < 0)
      {
        v35 = *a3;
      }

      *buf = 136315138;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Service error. %s", buf, 0xCu);
    }

    v56 = 0x13AAAAAA00AAAAAALL;
    qmemcpy(v55, "Diag trace faile", sizeof(v55));
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v64 = v11;
    v65 = v11;
    v62 = v11;
    v63 = v11;
    v60 = v11;
    v61 = v11;
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
      v54 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v54) = v13;
      p_dst = &__dst;
      if (!v13)
      {
LABEL_15:
        *(p_dst + v14) = 0;
        v17 = *MEMORY[0x277CECD10];
        v18 = strlen(*MEMORY[0x277CECD10]);
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
          *(&v51 + 1) = v19;
          v52 = v21 | 0x8000000000000000;
          *&v51 = v20;
        }

        else
        {
          HIBYTE(v52) = v18;
          v20 = &v51;
          if (!v18)
          {
LABEL_24:
            v20[v19] = 0;
            v22 = SHIBYTE(v56);
            if (v56 >= 0)
            {
              v23 = HIBYTE(v56);
            }

            else
            {
              v23 = v55[1];
            }

            v24 = *(a3 + 23);
            if (v24 >= 0)
            {
              v25 = *(a3 + 23);
            }

            else
            {
              v25 = a3[1];
            }

            v26 = v25 + v23;
            if (v25 + v23 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v26 <= 0x16)
            {
              v50 = 0;
              v49 = 0uLL;
              v28 = &v49;
              HIBYTE(v50) = v25 + v23;
              if (!v23)
              {
                goto LABEL_42;
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
              *(&v49 + 1) = v25 + v23;
              v50 = v27 | 0x8000000000000000;
              *&v49 = v28;
              if (!v23)
              {
LABEL_42:
                v30 = &v28[v23];
                if (v25)
                {
                  v31 = *a3;
                  if (v24 >= 0)
                  {
                    v32 = a3;
                  }

                  else
                  {
                    v32 = *a3;
                  }

                  memmove(v30, v32, v25);
                }

                v30[v25] = 0;
                Timestamp::Timestamp(v45);
                Timestamp::asString(v45, 0, 9, __p);
                v44 = 0;
                LOBYTE(v43) = 0;
                ResetInfo::ResetInfo(buf, &__dst, &v51, &v49, __p, 7, &v43);
                if (v48 < 0)
                {
                  operator delete(__p[0]);
                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v45, v46);
                  if ((SHIBYTE(v50) & 0x80000000) == 0)
                  {
LABEL_49:
                    if ((SHIBYTE(v52) & 0x80000000) == 0)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_64;
                  }
                }

                else
                {
                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v45, v46);
                  if ((SHIBYTE(v50) & 0x80000000) == 0)
                  {
                    goto LABEL_49;
                  }
                }

                operator delete(v49);
                if ((SHIBYTE(v52) & 0x80000000) == 0)
                {
LABEL_50:
                  if ((SHIBYTE(v54) & 0x80000000) == 0)
                  {
                    goto LABEL_51;
                  }

LABEL_65:
                  operator delete(__dst);
LABEL_51:
                  ResetInfo::ResetInfo(&v36, buf);
                  DIAGTrace::commandResetModem_sync(v7, &v36);
                  if (v42 < 0)
                  {
                    operator delete(v41);
                    if ((v40 & 0x80000000) == 0)
                    {
LABEL_53:
                      if ((v38 & 0x80000000) == 0)
                      {
                        goto LABEL_54;
                      }

                      goto LABEL_68;
                    }
                  }

                  else if ((v40 & 0x80000000) == 0)
                  {
                    goto LABEL_53;
                  }

                  operator delete(v39);
                  if ((v38 & 0x80000000) == 0)
                  {
LABEL_54:
                    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_69;
                  }

LABEL_68:
                  operator delete(v37);
                  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_55:
                    if ((SHIBYTE(v65) & 0x80000000) == 0)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_70;
                  }

LABEL_69:
                  operator delete(v36.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v65) & 0x80000000) == 0)
                  {
LABEL_56:
                    if ((SBYTE7(v63) & 0x80000000) == 0)
                    {
                      goto LABEL_57;
                    }

                    goto LABEL_71;
                  }

LABEL_70:
                  operator delete(*(&v64 + 1));
                  if ((SBYTE7(v63) & 0x80000000) == 0)
                  {
LABEL_57:
                    if ((SHIBYTE(v61) & 0x80000000) == 0)
                    {
                      goto LABEL_58;
                    }

                    goto LABEL_72;
                  }

LABEL_71:
                  operator delete(v62);
                  if ((SHIBYTE(v61) & 0x80000000) == 0)
                  {
LABEL_58:
                    if ((SBYTE7(v60) & 0x80000000) == 0)
                    {
                      goto LABEL_59;
                    }

                    goto LABEL_73;
                  }

LABEL_72:
                  operator delete(*(&v60 + 1));
                  if ((SBYTE7(v60) & 0x80000000) == 0)
                  {
LABEL_59:
                    if ((v22 & 0x80000000) == 0)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_74;
                  }

LABEL_73:
                  operator delete(*buf);
                  if ((v22 & 0x80000000) == 0)
                  {
LABEL_60:
                    v8 = v58;
                    if (!v58)
                    {
                      goto LABEL_77;
                    }

                    goto LABEL_75;
                  }

LABEL_74:
                  operator delete(v55[0]);
                  v8 = v58;
                  if (!v58)
                  {
                    goto LABEL_77;
                  }

                  goto LABEL_75;
                }

LABEL_64:
                operator delete(v51);
                if ((SHIBYTE(v54) & 0x80000000) == 0)
                {
                  goto LABEL_51;
                }

                goto LABEL_65;
              }
            }

            if (v22 >= 0)
            {
              v29 = v55;
            }

            else
            {
              v29 = v55[0];
            }

            memmove(v28, v29, v23);
            goto LABEL_42;
          }
        }

        memmove(v20, v17, v19);
        goto LABEL_24;
      }
    }

    memmove(p_dst, v12, v14);
    goto LABEL_15;
  }

LABEL_75:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v33 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_77:
  v34 = *MEMORY[0x277D85DE8];
}

void sub_23C1F5B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  ResetInfo::~ResetInfo(&a9);
  ResetInfo::~ResetInfo((v59 - 224));
  if (v58 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v59 - 240);
  _Unwind_Resume(a1);
}

void DIAGTrace::commandResetModem_sync(void *a1, __int128 *a2)
{
  v3 = a1[10];
  if (!v3)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v3);
  v18 = v5;
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = a1[9];
  v17 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = a1[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Request to reset baseband", buf, 2u);
  }

  ResetInfo::ResetInfo(&v9, a2);
  abm::BasebandTracingTask::commandResetModem(v7, &v9);
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

LABEL_14:
      operator delete(v10);
      if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_16:
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(v12);
  if (v11 < 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_15:
  operator delete(v9.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_16;
  }
}

void sub_23C1F5D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  ResetInfo::~ResetInfo(&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 48);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c29_ZTSNSt3__18weak_ptrI5TraceEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c29_ZTSNSt3__18weak_ptrI5TraceEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t dispatch::callback<void({block_pointer})(diag::Service::State,std::string)>::~callback(uint64_t a1)
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

uint64_t DIAGTrace::getDefaultEnabled(DIAGTrace *this)
{
  IsCarrierBuild = TelephonyUtilIsCarrierBuild();
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  v3 = IsInternalBuild;
  LODWORD(result) = config::hw::watch(IsInternalBuild);
  if (v3)
  {
    return result;
  }

  else
  {
    return IsCarrierBuild;
  }
}

uint64_t prop::bbtrace::get<BOOL>(char *a1, BOOL *a2)
{
  memset(&__p, 0, sizeof(__p));
  result = prop::bbtrace::get(a1, &__p);
  if (result)
  {
    result = util::convert<BOOL>(&__p, a2, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v4;
  }

  return result;
}

void sub_23C1F5EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL DIAGTrace::initTraceMode_sync(DIAGTrace *this)
{
  v21 = 15;
  strcpy(v20, "Reset_Mode_Boot");
  memset(&__p, 0, sizeof(__p));
  v2 = prop::bbtrace::get(v20, &__p);
  if (v2)
  {
    LODWORD(v19.__r_.__value_.__l.__data_) = -1431655766;
    v2 = util::convert<int>(&__p, &v19, 0);
    if (v2)
    {
      *(this + 27) = v19.__r_.__value_.__l.__data_;
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    operator delete(v20[0]);
    if (!sys::isBootSessionChanged(v3))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v21 < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!sys::isBootSessionChanged(v2))
  {
LABEL_11:
    v21 = 4;
    strcpy(v20, "Mode");
    memset(&__p, 0, sizeof(__p));
    if (prop::bbtrace::get(v20, &__p))
    {
      LODWORD(v19.__r_.__value_.__l.__data_) = -1431655766;
      v4 = util::convert<int>(&__p, &v19, 0);
      v5 = v4;
      if (!v4)
      {
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v21 & 0x80000000) == 0)
        {
LABEL_15:
          if (v5)
          {
            goto LABEL_16;
          }

          goto LABEL_27;
        }

LABEL_26:
        operator delete(v20[0]);
        if (v5)
        {
LABEL_16:
          v21 = 14;
          strcpy(v20, "TraceOwnership");
          memset(&__p, 0, sizeof(__p));
          if (prop::bbtrace::get(v20, &__p))
          {
            LODWORD(v19.__r_.__value_.__l.__data_) = -1431655766;
            v7 = util::convert<int>(&__p, &v19, 0);
            v8 = v7;
            if (!v7)
            {
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_19;
              }

LABEL_46:
              operator delete(__p.__r_.__value_.__l.__data_);
              if ((v21 & 0x80000000) == 0)
              {
LABEL_20:
                if ((v8 & 1) == 0)
                {
LABEL_49:
                  v9 = *(this + 5);
                  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
                  if (result)
                  {
                    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                    v16 = "Failed to get transport owner id from preferences for same boot instance";
LABEL_68:
                    _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, v16, &__p, 2u);
                    return 0;
                  }

                  return result;
                }

LABEL_48:
                v14 = *MEMORY[0x277CBECE8];
                ctu::cf::update<char const*,int>(*(this + 39), "Mode", *(this + 26), *MEMORY[0x277CBECE8], v6);
                ctu::cf::update<char const*,int>(*(this + 39), "Mode", *(this + 28), v14, v15);
                return 1;
              }

LABEL_47:
              operator delete(v20[0]);
              if ((v8 & 1) == 0)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            }

            *(this + 28) = v19.__r_.__value_.__l.__data_;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v8 = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_46;
            }
          }

LABEL_19:
          if ((v21 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_47;
        }

LABEL_27:
        v9 = *(this + 5);
        result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        if (result)
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          v16 = "Failed to get trace mode from preferences for same boot instance";
          goto LABEL_68;
        }

        return result;
      }

      *(this + 26) = v19.__r_.__value_.__l.__data_;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v5 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_25;
      }
    }

LABEL_14:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_10:
  if (*(this + 27))
  {
    goto LABEL_11;
  }

  v11 = *(this + 5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I AP reboot detected, resetting trace properties", &__p, 2u);
  }

  v21 = 4;
  strcpy(v20, "Mode");
  memset(&__p, 0, sizeof(__p));
  if (!prop::bbtrace::get(v20, &__p))
  {
    v13 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_54;
    }

LABEL_36:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_55;
  }

  LODWORD(v19.__r_.__value_.__l.__data_) = -1431655766;
  v12 = util::convert<int>(&__p, &v19, 0);
  v13 = v12;
  if (v12)
  {
    *(this + 26) = v19.__r_.__value_.__l.__data_;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_54;
    }

    goto LABEL_36;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_54:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_37:
    if (v13)
    {
      goto LABEL_38;
    }

    goto LABEL_56;
  }

LABEL_55:
  operator delete(v20[0]);
  if (v13)
  {
LABEL_38:
    v21 = 14;
    strcpy(v20, "TraceOwnership");
    memset(&__p, 0, sizeof(__p));
    if (prop::bbtrace::get(v20, &__p))
    {
      LODWORD(v19.__r_.__value_.__l.__data_) = -1431655766;
      if (util::convert<int>(&__p, &v19, 0))
      {
        *(this + 28) = v19.__r_.__value_.__l.__data_;
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_43:
        if (*(this + 26) != 4)
        {
          goto LABEL_48;
        }

LABEL_60:
        v21 = 4;
        strcpy(v20, "Mode");
        memset(&v19, 0, sizeof(v19));
        std::to_string(&__p, 0);
        v19 = __p;
        v17 = prop::bbtrace::set(v20, &v19);
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
          if ((v21 & 0x80000000) == 0)
          {
LABEL_62:
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_71;
          }
        }

        else if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        operator delete(v20[0]);
        if (v17)
        {
LABEL_63:
          *(this + 26) = 0;
          v21 = 14;
          strcpy(v20, "TraceOwnership");
          memset(&v19, 0, sizeof(v19));
          std::to_string(&__p, 0);
          v19 = __p;
          v18 = prop::bbtrace::set(v20, &v19);
          if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v19.__r_.__value_.__l.__data_);
            if ((v21 & 0x80000000) == 0)
            {
LABEL_65:
              if (v18)
              {
LABEL_66:
                *(this + 28) = 0;
                goto LABEL_48;
              }

LABEL_75:
              v9 = *(this + 5);
              result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
              if (result)
              {
                LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                v16 = "Failed to reset trace transport owner id for new boot instance";
                goto LABEL_68;
              }

              return result;
            }
          }

          else if ((v21 & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          operator delete(v20[0]);
          if (v18)
          {
            goto LABEL_66;
          }

          goto LABEL_75;
        }

LABEL_71:
        v9 = *(this + 5);
        result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        if (result)
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          v16 = "Failed to reset diag trace mode for new boot instance";
          goto LABEL_68;
        }

        return result;
      }
    }

    else if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    operator delete(v20[0]);
    if (*(this + 26) != 4)
    {
      goto LABEL_48;
    }

    goto LABEL_60;
  }

LABEL_56:
  v9 = *(this + 5);
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v16 = "Failed to get trace mode from preferences";
    goto LABEL_68;
  }

  return result;
}

void sub_23C1F64EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::bbtrace::get<int>(char *a1, _DWORD *a2)
{
  memset(&__p, 0, sizeof(__p));
  result = prop::bbtrace::get(a1, &__p);
  if (result)
  {
    result = util::convert<int>(&__p, a2, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v4;
  }

  return result;
}

void sub_23C1F65FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DIAGTrace::filterHistory(DIAGTrace *this)
{
  if (this)
  {
    v1 = this;
  }

  else
  {
    v1 = 2048;
  }

  if (this >= 0)
  {
    return v1;
  }

  else
  {
    return 256;
  }
}

uint64_t prop::bbtrace::get<diag::config::DuringAPSleep>(char *a1, int *a2)
{
  memset(&__p, 0, sizeof(__p));
  result = prop::bbtrace::get(a1, &__p);
  if (result)
  {
    v6 = -1431655766;
    result = util::convert<int>(&__p, &v6, 0);
    if (result)
    {
      *a2 = v6;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v4;
  }

  return result;
}

void sub_23C1F66BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::bbtrace::get<unsigned int>(char *a1, _DWORD *a2)
{
  memset(&__p, 0, sizeof(__p));
  result = prop::bbtrace::get(a1, &__p);
  if (result)
  {
    result = util::convert<unsigned int>(&__p, a2, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v4;
  }

  return result;
}

void sub_23C1F6750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::bbtrace::get<diag::config::Recovery>(char *a1, int *a2)
{
  memset(&__p, 0, sizeof(__p));
  result = prop::bbtrace::get(a1, &__p);
  if (result)
  {
    v6 = -1431655766;
    result = util::convert<int>(&__p, &v6, 0);
    if (result)
    {
      *a2 = v6;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v4;
  }

  return result;
}

void sub_23C1F67F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::bbtrace::get<abm::ResetTraceModeOnAPBoot>(char *a1, int *a2)
{
  memset(&__p, 0, sizeof(__p));
  result = prop::bbtrace::get(a1, &__p);
  if (result)
  {
    v6 = -1431655766;
    result = util::convert<int>(&__p, &v6, 0);
    if (result)
    {
      *a2 = v6;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v4;
  }

  return result;
}

void sub_23C1F68A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::bbtrace::get<diag::config::Mode>(char *a1, int *a2)
{
  memset(&__p, 0, sizeof(__p));
  result = prop::bbtrace::get(a1, &__p);
  if (result)
  {
    v6 = -1431655766;
    result = util::convert<int>(&__p, &v6, 0);
    if (result)
    {
      *a2 = v6;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v4;
  }

  return result;
}

void sub_23C1F6948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DIAGTrace::pushServiceConfig_sync(DIAGTrace *this)
{
  v1 = *(this + 40);
  if (v1)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Pushing config dictionary to Diag service", v10, 2u);
      v1 = *(this + 40);
    }

    v4 = *(this + 39);
    if (v4 && (v5 = CFGetTypeID(v4), v5 == CFDictionaryGetTypeID()))
    {
      CFRetain(v4);
      v6 = *v1;
      cf = v4;
      CFRetain(v4);
      v7 = 0;
      diag::Service::Internal::updateConfig(v6, &cf);
      v8 = cf;
      if (!cf)
      {
LABEL_10:
        if ((v7 & 1) == 0)
        {
          CFRelease(v4);
        }

        return;
      }
    }

    else
    {
      v4 = 0;
      v9 = *v1;
      cf = 0;
      v7 = 1;
      diag::Service::Internal::updateConfig(v9, &cf);
      v8 = cf;
      if (!cf)
      {
        goto LABEL_10;
      }
    }

    CFRelease(v8);
    goto LABEL_10;
  }
}

void DIAGTrace::start_sync(DIAGTrace *this, NSObject **a2, uint64_t a3, char a4)
{
  if (*(this + 40))
  {
    DIAGTrace::pushServiceConfig_sync(this);
    v7 = *a2;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(v7);
    }

    v8 = *(this + 2);
    if (!v8 || (v9 = *(this + 1), (v10 = std::__shared_weak_count::lock(v8)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v11 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *(this + 40);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN9DIAGTrace10start_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEb_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_9_2;
    aBlock[4] = this;
    group = v7;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(group);
    }

    v19 = v9;
    v20 = v11;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v21 = a4;
    v13 = _Block_copy(aBlock);
    v14 = v13;
    v15 = *(this + 3);
    if (v15)
    {
      dispatch_retain(v15);
      v22 = v14;
      v23 = v15;
      diag::Service::start(v12, &v22, a4);
      dispatch_release(v15);
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v22 = v13;
      v23 = 0;
      diag::Service::start(v12, &v22, a4);
      if (!v14)
      {
LABEL_18:
        if (v20)
        {
          std::__shared_weak_count::__release_weak(v20);
        }

        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }

        std::__shared_weak_count::__release_weak(v11);
        if (v7)
        {
          dispatch_group_leave(v7);
          dispatch_release(v7);
        }

        return;
      }
    }

    _Block_release(v14);
    goto LABEL_18;
  }

  v16 = *(this + 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I Can not start without a service object", buf, 2u);
  }
}

void sub_23C1F6CB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9DIAGTrace10start_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEb_block_invoke(uint64_t a1, int a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_89;
  }

  v7 = *(a1 + 32);
  v8 = std::__shared_weak_count::lock(v4);
  v59 = v8;
  if (!v8)
  {
    goto LABEL_89;
  }

  if (*(a1 + 48))
  {
    v9 = *(v7 + 40);
    if (a2 != 4)
    {
      v10 = v8;
      v11 = *(v7 + 40);
      if (a2 == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Start complete", buf, 2u);
        }

        DIAGTrace::stallDetection_sync(v7, *(v7 + 232));
        v8 = v10;
        if ((*(v7 + 344) & 1) == 0 && *(v7 + 88) && (*(a1 + 64) & 1) == 0)
        {
          dispatch_group_enter(*(v7 + 88));
          v8 = v10;
          *(v7 + 344) = 1;
        }
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a3 + 23) < 0)
          {
            a3 = *a3;
          }

          *buf = 136315138;
          *&buf[4] = a3;
          _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Start skipped. %s", buf, 0xCu);
        }

        v8 = v10;
      }

      goto LABEL_87;
    }

    if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
    {
      v36 = a3;
      if (*(a3 + 23) < 0)
      {
        v36 = *a3;
      }

      *buf = 136315138;
      *&buf[4] = v36;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Start error. %s", buf, 0xCu);
    }

    v57 = 0x13AAAAAA00AAAAAALL;
    qmemcpy(v56, "Diag start faile", sizeof(v56));
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v65 = v12;
    v66 = v12;
    v63 = v12;
    v64 = v12;
    v61 = v12;
    v62 = v12;
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
      v55 = v17 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v55) = v14;
      p_dst = &__dst;
      if (!v14)
      {
LABEL_27:
        *(p_dst + v15) = 0;
        v18 = *MEMORY[0x277CECD10];
        v19 = strlen(*MEMORY[0x277CECD10]);
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
          *(&v52 + 1) = v20;
          v53 = v22 | 0x8000000000000000;
          *&v52 = v21;
        }

        else
        {
          HIBYTE(v53) = v19;
          v21 = &v52;
          if (!v19)
          {
LABEL_36:
            v21[v20] = 0;
            v23 = SHIBYTE(v57);
            if (v57 >= 0)
            {
              v24 = HIBYTE(v57);
            }

            else
            {
              v24 = v56[1];
            }

            v25 = *(a3 + 23);
            if (v25 >= 0)
            {
              v26 = *(a3 + 23);
            }

            else
            {
              v26 = a3[1];
            }

            v27 = v26 + v24;
            if (v26 + v24 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v27 <= 0x16)
            {
              v51 = 0;
              v50 = 0uLL;
              v29 = &v50;
              HIBYTE(v51) = v26 + v24;
            }

            else
            {
              if ((v27 | 7) == 0x17)
              {
                v28 = 25;
              }

              else
              {
                v28 = (v27 | 7) + 1;
              }

              v29 = operator new(v28);
              *(&v50 + 1) = v26 + v24;
              v51 = v28 | 0x8000000000000000;
              *&v50 = v29;
            }

            if (v24)
            {
              if (v23 >= 0)
              {
                v30 = v56;
              }

              else
              {
                v30 = v56[0];
              }

              memmove(v29, v30, v24);
            }

            v31 = &v29[v24];
            if (v26)
            {
              v32 = *a3;
              if (v25 >= 0)
              {
                v33 = a3;
              }

              else
              {
                v33 = *a3;
              }

              memmove(v31, v33, v26);
            }

            v31[v26] = 0;
            Timestamp::Timestamp(v46);
            Timestamp::asString(v46, 0, 9, __p);
            v45 = 0;
            LOBYTE(v44) = 0;
            ResetInfo::ResetInfo(buf, &__dst, &v52, &v50, __p, 7, &v44);
            if (v49 < 0)
            {
              operator delete(__p[0]);
              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v46, v47);
              if ((SHIBYTE(v51) & 0x80000000) == 0)
              {
LABEL_61:
                if ((SHIBYTE(v53) & 0x80000000) == 0)
                {
                  goto LABEL_62;
                }

                goto LABEL_76;
              }
            }

            else
            {
              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v46, v47);
              if ((SHIBYTE(v51) & 0x80000000) == 0)
              {
                goto LABEL_61;
              }
            }

            operator delete(v50);
            if ((SHIBYTE(v53) & 0x80000000) == 0)
            {
LABEL_62:
              if ((SHIBYTE(v55) & 0x80000000) == 0)
              {
                goto LABEL_63;
              }

LABEL_77:
              operator delete(__dst);
LABEL_63:
              ResetInfo::ResetInfo(&v37, buf);
              DIAGTrace::commandResetModem_sync(v7, &v37);
              if (v43 < 0)
              {
                operator delete(v42);
                if ((v41 & 0x80000000) == 0)
                {
LABEL_65:
                  if ((v39 & 0x80000000) == 0)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_80;
                }
              }

              else if ((v41 & 0x80000000) == 0)
              {
                goto LABEL_65;
              }

              operator delete(v40);
              if ((v39 & 0x80000000) == 0)
              {
LABEL_66:
                if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_67;
                }

                goto LABEL_81;
              }

LABEL_80:
              operator delete(v38);
              if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_67:
                if ((SHIBYTE(v66) & 0x80000000) == 0)
                {
                  goto LABEL_68;
                }

                goto LABEL_82;
              }

LABEL_81:
              operator delete(v37.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v66) & 0x80000000) == 0)
              {
LABEL_68:
                if ((SBYTE7(v64) & 0x80000000) == 0)
                {
                  goto LABEL_69;
                }

                goto LABEL_83;
              }

LABEL_82:
              operator delete(*(&v65 + 1));
              if ((SBYTE7(v64) & 0x80000000) == 0)
              {
LABEL_69:
                if ((SHIBYTE(v62) & 0x80000000) == 0)
                {
                  goto LABEL_70;
                }

                goto LABEL_84;
              }

LABEL_83:
              operator delete(v63);
              if ((SHIBYTE(v62) & 0x80000000) == 0)
              {
LABEL_70:
                if ((SBYTE7(v61) & 0x80000000) == 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_85;
              }

LABEL_84:
              operator delete(*(&v61 + 1));
              if ((SBYTE7(v61) & 0x80000000) == 0)
              {
LABEL_71:
                if ((v23 & 0x80000000) == 0)
                {
                  goto LABEL_72;
                }

                goto LABEL_86;
              }

LABEL_85:
              operator delete(*buf);
              if ((v23 & 0x80000000) == 0)
              {
LABEL_72:
                v8 = v59;
                if (!v59)
                {
                  goto LABEL_89;
                }

                goto LABEL_87;
              }

LABEL_86:
              operator delete(v56[0]);
              v8 = v59;
              if (!v59)
              {
                goto LABEL_89;
              }

              goto LABEL_87;
            }

LABEL_76:
            operator delete(v52);
            if ((SHIBYTE(v55) & 0x80000000) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_77;
          }
        }

        memmove(v21, v18, v20);
        goto LABEL_36;
      }
    }

    memmove(p_dst, v13, v15);
    goto LABEL_27;
  }

LABEL_87:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v34 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v34);
  }

LABEL_89:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_23C1F72A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  ResetInfo::~ResetInfo(&a9);
  ResetInfo::~ResetInfo((v59 - 224));
  if (v58 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v59 - 240);
  _Unwind_Resume(a1);
}

void DIAGTrace::stallDetection_sync(const __CFDictionary **this, char a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (this[40])
  {
    memset(v25, 170, sizeof(v25));
    ctu::cf::dict_adapter::dict_adapter(v25, this[39]);
    ctu::cf::MakeCFString::MakeCFString(buf, diag::config::kBufferingOnAPAwake[0]);
    Bool = ctu::cf::map_adapter::getBool(v25, *buf);
    MEMORY[0x23EECD8F0](buf);
    if (Bool & 1 | ((a2 & 1) == 0) || *(this + 26))
    {
      v5 = 0;
      v6 = this[5];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = *(this + 59) != 0;
      v6 = this[5];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }
    }

    v7 = "disabled";
    if (v5)
    {
      v7 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I DIAG: stall detection is %s", buf, 0xCu);
LABEL_8:
    if (!v5)
    {
      v18 = this[40];
      v20[0] = 0;
      v20[1] = 0;
      diag::Service::setStallHandler(v18, 15, v20);
LABEL_26:
      MEMORY[0x23EECD940](v25);
      goto LABEL_27;
    }

    *(this + 60) = *(this + 59);
    v8 = this[2];
    if (!v8 || (v9 = this[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
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

    v13 = this[40];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN9DIAGTrace19stallDetection_syncEb_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_100_1;
    aBlock[4] = this;
    aBlock[5] = v9;
    v22 = v11;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v14 = _Block_copy(aBlock);
    v15 = v14;
    v16 = this[3];
    if (v16)
    {
      dispatch_retain(v16);
      v23 = v15;
      v24 = v16;
      diag::Service::setStallHandler(v13, 15, &v23);
      dispatch_release(v16);
      if (!v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v23 = v14;
      v24 = 0;
      diag::Service::setStallHandler(v13, 15, &v23);
      if (!v15)
      {
LABEL_23:
        if (v22)
        {
          std::__shared_weak_count::__release_weak(v22);
        }

        std::__shared_weak_count::__release_weak(v11);
        goto LABEL_26;
      }
    }

    _Block_release(v15);
    goto LABEL_23;
  }

  v17 = this[5];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I No DIAG service", v25, 2u);
  }

LABEL_27:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23C1F768C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE(void *a1, void *a2)
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
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
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

void DIAGTrace::destroyService_sync(uint64_t a1, NSObject **a2, const void **a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Request to destroy service", buf, 2u);
  }

  v7 = *a2;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  v8 = dispatch_group_create();
  v10 = v8;
  if ((*(a1 + 96) & 2) == 0)
  {
    v21 = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    v11 = *a3;
    v20 = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    DIAGTrace::stop_sync(a1, &v21, v9, 0);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v12 = *(a1 + 16);
  if (!v12 || (v13 = *(a1 + 8), (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1174405120;
  v16[2] = ___ZN9DIAGTrace19destroyService_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v16[3] = &__block_descriptor_tmp_14_1;
  v16[4] = a1;
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(group);
  }

  v18 = v13;
  v19 = v15;
  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  dispatch_group_notify(v10, *(a1 + 24), v16);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v15);
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }
}

void sub_23C1F79D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  if (v10)
  {
    dispatch_release(v10);
    dispatch_release(v10);
  }

  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

void DIAGTrace::stop_sync(DIAGTrace *this, NSObject **a2, uint64_t a3, char a4)
{
  if (*(this + 40))
  {
    DIAGTrace::stallDetection_sync(this, 0);
    v7 = *a2;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(v7);
    }

    v8 = *(this + 2);
    if (!v8 || (v9 = *(this + 1), (v10 = std::__shared_weak_count::lock(v8)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v11 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = *(this + 40);
      if ((*(this + 96) & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v11);
      v12 = *(this + 40);
      if ((*(this + 96) & 2) == 0)
      {
LABEL_8:
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZN9DIAGTrace9stop_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEb_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_20_1;
        aBlock[4] = this;
        group = v7;
        if (v7)
        {
          dispatch_retain(v7);
          dispatch_group_enter(group);
        }

        v28 = v9;
        v29 = v11;
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v30 = a4;
        v13 = _Block_copy(aBlock);
        v14 = *(this + 3);
        if (v14)
        {
          dispatch_retain(v14);
        }

        v31[0] = v13;
        v31[1] = v14;
        diag::Service::stop(v12, v31, a4);
        if (v14)
        {
          dispatch_release(v14);
        }

        if (v13)
        {
          _Block_release(v13);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_weak(v29);
        }

        if (!group)
        {
          goto LABEL_36;
        }

        dispatch_group_leave(group);
        v15 = group;
        if (!group)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 1174405120;
    v20[2] = ___ZN9DIAGTrace9stop_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEb_block_invoke_21;
    v20[3] = &__block_descriptor_tmp_24;
    v20[4] = this;
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(object);
    }

    v22 = v9;
    v23 = v11;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = _Block_copy(v20);
    v18 = v17;
    v19 = *(this + 3);
    if (v19)
    {
      dispatch_retain(v19);
      v24 = v18;
      v25 = v19;
      diag::Service::reset(v12, &v24);
      dispatch_release(v19);
      if (!v18)
      {
LABEL_31:
        if (v23)
        {
          std::__shared_weak_count::__release_weak(v23);
        }

        if (!object)
        {
          goto LABEL_36;
        }

        dispatch_group_leave(object);
        v15 = object;
        if (!object)
        {
          goto LABEL_36;
        }

LABEL_35:
        dispatch_release(v15);
LABEL_36:
        std::__shared_weak_count::__release_weak(v11);
        if (v7)
        {
          dispatch_group_leave(v7);
          dispatch_release(v7);
        }

        return;
      }
    }

    else
    {
      v24 = v17;
      v25 = 0;
      diag::Service::reset(v12, &v24);
      if (!v18)
      {
        goto LABEL_31;
      }
    }

    _Block_release(v18);
    goto LABEL_31;
  }

  v16 = *(this + 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I Service not initialized. Ignoring stop request", buf, 2u);
  }
}

void sub_23C1F7D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, dispatch_group_t group, uint64_t a26, std::__shared_weak_count *a27)
{
  dispatch::callback<void({block_pointer})(diag::Service::State,std::string)>::~callback(v29 - 96);
  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::__shared_weak_count::__release_weak(v28);
  if (v27)
  {
    dispatch_group_leave(v27);
    dispatch_release(v27);
  }

  _Unwind_Resume(a1);
}

void ___ZN9DIAGTrace19destroyService_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[6] || (v6 = *(v3 + 320)) == 0)
      {
LABEL_17:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        return;
      }

      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I Reset service before destroying it", buf, 2u);
        v6 = *(v3 + 320);
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1174405120;
      v12[2] = ___ZN9DIAGTrace19destroyService_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke_10;
      v12[3] = &__block_descriptor_tmp_11_1;
      v8 = a1[5];
      v12[4] = v3;
      group = v8;
      if (v8)
      {
        dispatch_retain(v8);
        dispatch_group_enter(group);
      }

      v9 = _Block_copy(v12);
      v10 = v9;
      v11 = *(v3 + 24);
      if (v11)
      {
        dispatch_retain(*(v3 + 24));
        v14 = v10;
        v15 = v11;
        diag::Service::reset(v6, &v14);
        dispatch_release(v11);
        if (!v10)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v14 = v9;
        v15 = 0;
        diag::Service::reset(v6, &v14);
        if (!v10)
        {
LABEL_14:
          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

          goto LABEL_17;
        }
      }

      _Block_release(v10);
      goto LABEL_14;
    }
  }
}

void ___ZN9DIAGTrace19destroyService_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke_10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v10 = 136315138;
    v11 = a3;
    _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Reset complete. %s", &v10, 0xCu);
  }

  v6 = *(v4 + 328);
  *(v4 + 320) = 0;
  *(v4 + 328) = 0;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = *(v4 + 40);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = *(v4 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
LABEL_8:
    LOWORD(v10) = 0;
    _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I Destroyed service", &v10, 2u);
  }

LABEL_9:
  if (*(v4 + 344) == 1)
  {
    v8 = *(v4 + 88);
    if (v8)
    {
      dispatch_group_leave(v8);
      *(v4 + 344) = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void DIAGTrace::abort_sync(const __CFDictionary **this, uint64_t a2, const __CFDictionary **a3)
{
  if (this[40])
  {
    DIAGTrace::stallDetection_sync(this, 0);
    v33[0] = 0xAAAAAAAAAAAAAAAALL;
    v33[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v33, *a3);
    memset(__s1, 170, sizeof(__s1));
    v5 = *MEMORY[0x277CECC20];
    memset(__p, 0, sizeof(__p));
    ctu::cf::MakeCFString::MakeCFString(&v29, v5);
    ctu::cf::map_adapter::getString();
    MEMORY[0x23EECD8F0](&v29);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    memset(__p, 170, sizeof(__p));
    v29 = operator new(0x28uLL);
    v30 = xmmword_23C32C700;
    strcpy(v29, "kCollectTelephonyLogsWithCoredump");
    ctu::cf::MakeCFString::MakeCFString(&v34, "kKeyTraceAction");
    ctu::cf::map_adapter::getString();
    MEMORY[0x23EECD8F0](&v34);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    v6 = *MEMORY[0x277CECC38];
    v7 = strlen(*MEMORY[0x277CECC38]);
    if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
    {
      if (v7 == __s1[1])
      {
        if (v7 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(__s1[0], v6, v7))
        {
          goto LABEL_37;
        }
      }
    }

    else if (v7 == SHIBYTE(__s1[2]) && !memcmp(__s1, v6, v7))
    {
      goto LABEL_37;
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      if (__p[1] != 15)
      {
        if (__p[1] != 17)
        {
          goto LABEL_30;
        }

        v9 = __p[0];
LABEL_23:
        v10 = *v9;
        v11 = v9[1];
        v12 = *(v9 + 16);
        if (v10 != *"kShutdownAllTrace" || v11 != *"nAllTrace" || v12 != str_76[16])
        {
          goto LABEL_30;
        }

LABEL_37:
        v15 = 0;
        v16 = this[2];
        if (!v16)
        {
          goto LABEL_60;
        }

LABEL_38:
        v18 = this[1];
        v19 = std::__shared_weak_count::lock(v16);
        if (v19)
        {
          v20 = v19;
          p_shared_weak_owners = &v19->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v20);
          }

          v22 = this[40];
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZN9DIAGTrace10abort_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
          aBlock[3] = &__block_descriptor_tmp_17;
          aBlock[4] = this;
          aBlock[5] = v18;
          v27 = v20;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          v23 = _Block_copy(aBlock);
          v24 = this[3];
          if (v24)
          {
            dispatch_retain(v24);
          }

          v28[0] = v23;
          v28[1] = v24;
          diag::Service::abort(v22, v15, v28);
          if (v24)
          {
            dispatch_release(v24);
          }

          if (v23)
          {
            _Block_release(v23);
          }

          if (v27)
          {
            std::__shared_weak_count::__release_weak(v27);
          }

          std::__shared_weak_count::__release_weak(v20);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
            {
              goto LABEL_51;
            }
          }

          else if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
          {
LABEL_51:
            MEMORY[0x23EECD940](v33);
            return;
          }

          operator delete(__s1[0]);
          goto LABEL_51;
        }

LABEL_60:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      if (*__p[0] == *"kReinitAllTrace" && *(__p[0] + 7) == *"AllTrace")
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(__p[2]) != 15)
      {
        if (HIBYTE(__p[2]) != 17)
        {
          goto LABEL_30;
        }

        v9 = __p;
        goto LABEL_23;
      }

      if (__p[0] == *"kReinitAllTrace" && *(__p + 7) == *"AllTrace")
      {
        goto LABEL_37;
      }
    }

LABEL_30:
    v15 = 1;
    v16 = this[2];
    if (!v16)
    {
      goto LABEL_60;
    }

    goto LABEL_38;
  }

  v8 = this[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__s1[0]) = 0;
    _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Service not initialized. Ignoring abort request", __s1, 2u);
  }
}

void sub_23C1F8500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  dispatch::callback<void({block_pointer})(diag::Service::State,std::string)>::~callback(&a17);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v30);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 73) < 0)
  {
    operator delete(*(v31 - 96));
  }

  MEMORY[0x23EECD940](v31 - 72);
  _Unwind_Resume(a1);
}

void ___ZN9DIAGTrace10abort_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(void *a1, uint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[5])
      {
        v9 = *(v6 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a3 + 23) < 0)
          {
            a3 = *a3;
          }

          v12 = 136315138;
          v13 = a3;
          _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Abort complete. %s", &v12, 0xCu);
        }

        if (*(v6 + 344) == 1)
        {
          v10 = *(v6 + 88);
          if (v10)
          {
            dispatch_group_leave(v10);
            *(v6 + 344) = 0;
          }
        }
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

void ___ZN9DIAGTrace9stop_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEb_block_invoke(uint64_t a1, int a2, uint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_24;
  }

  v7 = *(a1 + 32);
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8;
  if (*(a1 + 48))
  {
    v10 = *(v7 + 40);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (a2 == 4)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v17 = 136315138;
      v18 = a3;
      v12 = "#I Stop error. %s";
    }

    else
    {
      if (!a2)
      {
        if (v11)
        {
          LOWORD(v17) = 0;
          v12 = "#I Stop complete";
          v13 = v10;
          v14 = 2;
LABEL_17:
          _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
        }

LABEL_18:
        if (*(v7 + 344) == 1)
        {
          v15 = *(v7 + 88);
          if (v15)
          {
            if ((*(a1 + 64) & 1) == 0)
            {
              dispatch_group_leave(v15);
              *(v7 + 344) = 0;
            }
          }
        }

        goto LABEL_22;
      }

      if (!v11)
      {
        goto LABEL_18;
      }

      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v17 = 136315138;
      v18 = a3;
      v12 = "#I Stop skipped. %s";
    }

    v13 = v10;
    v14 = 12;
    goto LABEL_17;
  }

LABEL_22:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_24:
  v16 = *MEMORY[0x277D85DE8];
}

void ___ZN9DIAGTrace9stop_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEb_block_invoke_21(void *a1, int a2, uint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a1[7];
  if (!v4)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = v8;
  if (a1[6])
  {
    v10 = *(v7 + 40);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (a2 == 4)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v17 = 136315138;
      v18 = a3;
      v12 = "#I Reset error. %s";
    }

    else
    {
      if (!a2)
      {
        if (v11)
        {
          LOWORD(v17) = 0;
          v12 = "#I Reset complete";
          v13 = v10;
          v14 = 2;
LABEL_17:
          _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
        }

LABEL_18:
        if (*(v7 + 344) == 1)
        {
          v15 = *(v7 + 88);
          if (v15)
          {
            dispatch_group_leave(v15);
            *(v7 + 344) = 0;
          }
        }

        goto LABEL_21;
      }

      if (!v11)
      {
        goto LABEL_18;
      }

      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v17 = 136315138;
      v18 = a3;
      v12 = "#I Reset skipped. %s";
    }

    v13 = v10;
    v14 = 12;
    goto LABEL_17;
  }

LABEL_21:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_23:
  v16 = *MEMORY[0x277D85DE8];
}

void DIAGTrace::restartService_sync(DIAGTrace *this, group *a2)
{
  if (*(this + 244) == 1)
  {
    gr_name = a2->gr_name;
    if (a2->gr_name)
    {
      dispatch_retain(a2->gr_name);
      dispatch_group_enter(gr_name);
    }

    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Restarting service", buf, 2u);
    }

    *buf = 0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = *buf;
      *buf = Mutable;
      if (v7)
      {
        CFRelease(v7);
      }
    }

    v8 = dispatch_group_create();
    v10 = v8;
    v20 = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    v11 = *buf;
    if (*buf && (v12 = CFGetTypeID(*buf), v12 == CFDictionaryGetTypeID()))
    {
      v19 = v11;
      CFRetain(v11);
    }

    else
    {
      v11 = 0;
      v19 = 0;
    }

    DIAGTrace::stop_sync(this, &v20, v9, 0);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      dispatch_release(v10);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1174405120;
    v15[2] = ___ZN9DIAGTrace19restartService_syncEN8dispatch5groupE_block_invoke;
    v15[3] = &__block_descriptor_tmp_25;
    v15[4] = this;
    group = gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(group);
    }

    v14 = a2->gr_name;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    cf = *buf;
    if (*buf)
    {
      CFRetain(*buf);
    }

    dispatch_group_notify(v10, *(this + 3), v15);
    if (cf)
    {
      CFRelease(cf);
    }

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

    if (v10)
    {
      dispatch_release(v10);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    if (gr_name)
    {
      dispatch_group_leave(gr_name);
      dispatch_release(gr_name);
    }
  }

  else
  {
    v13 = *(this + 5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Restart skipped. Diag trace is disabled", buf, 2u);
    }
  }
}

void sub_23C1F8CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  if (v10)
  {
    dispatch_release(v10);
    dispatch_release(v10);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v11 - 64));
    if (!v9)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v11 - 64));
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  dispatch_group_leave(v9);
  dispatch_release(v9);
  _Unwind_Resume(a1);
}

void ___ZN9DIAGTrace19restartService_syncEN8dispatch5groupE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = a1[7];
  if (v4 && (v5 = CFGetTypeID(v4), v5 == CFDictionaryGetTypeID()))
  {
    CFRetain(v4);
  }

  else
  {
    v4 = 0;
  }

  DIAGTrace::start_sync(v2);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {

    dispatch_release(v3);
  }
}

void sub_23C1F8E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  if (v9)
  {
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c21_ZTSN8dispatch5groupE56c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(void *a1, void *a2)
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
  }

  result = a2[7];
  a1[7] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c21_ZTSN8dispatch5groupE56c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    dispatch_release(v3);
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

void DIAGTrace::enterLowPower_sync(DIAGTrace *this, group *a2)
{
  if (*(this + 40))
  {
    gr_name = a2->gr_name;
    if (a2->gr_name)
    {
      dispatch_retain(a2->gr_name);
      dispatch_group_enter(gr_name);
    }

    v4 = *(this + 2);
    if (!v4 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v4)) == 0))
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

    v8 = *(this + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1174405120;
    v13[2] = ___ZN9DIAGTrace18enterLowPower_syncEN8dispatch5groupE_block_invoke;
    v13[3] = &__block_descriptor_tmp_29_0;
    v13[4] = this;
    group = gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(group);
    }

    v15 = v5;
    v16 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v9 = _Block_copy(v13);
    v10 = v9;
    v11 = *(this + 3);
    if (v11)
    {
      dispatch_retain(v11);
      v17 = v10;
      v18 = v11;
      diag::Service::sleep(v8, &v17);
      dispatch_release(v11);
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v17 = v9;
      v18 = 0;
      diag::Service::sleep(v8, &v17);
      if (!v10)
      {
LABEL_18:
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

        std::__shared_weak_count::__release_weak(v7);
        if (gr_name)
        {
          dispatch_group_leave(gr_name);
          dispatch_release(gr_name);
        }

        return;
      }
    }

    _Block_release(v10);
    goto LABEL_18;
  }

  v12 = *(this + 5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Service not initialized. Ignoring enter low-power request", buf, 2u);
  }
}

void sub_23C1F9148(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9DIAGTrace18enterLowPower_syncEN8dispatch5groupE_block_invoke(void *a1, int a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a1[7];
  if (!v4)
  {
    goto LABEL_88;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v58 = v8;
  if (!v8)
  {
    goto LABEL_88;
  }

  v9 = v8;
  if (a1[6])
  {
    v10 = *(v7 + 40);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (a2 != 4)
    {
      if (a2 == 2)
      {
        if (v11)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Enter low-power complete", &buf, 2u);
        }

        DIAGTrace::stallDetection_sync(v7, 0);
      }

      else if (v11)
      {
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = a3;
        _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Enter low-power skipped. %s", &buf, 0xCu);
      }

      goto LABEL_86;
    }

    if (v11)
    {
      v12 = a3;
      if (*(a3 + 23) < 0)
      {
        v12 = *a3;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Enter low-power error. %s", &buf, 0xCu);
    }

    v55 = operator new(0x20uLL);
    v56 = xmmword_23C32C5A0;
    strcpy(v55, "Enter low-power failed. ");
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v65 = v13;
    v64 = v13;
    v63 = v13;
    v62 = v13;
    v61 = v13;
    v60 = v13;
    buf = v13;
    v14 = *MEMORY[0x277CECC38];
    v15 = strlen(*MEMORY[0x277CECC38]);
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

      p_dst = operator new(v18);
      *(&__dst + 1) = v16;
      v54 = v18 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v54) = v15;
      p_dst = &__dst;
      if (!v15)
      {
LABEL_26:
        *(p_dst + v16) = 0;
        v19 = *MEMORY[0x277CECD10];
        v20 = strlen(*MEMORY[0x277CECD10]);
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

          v22 = operator new(v23);
          *(&v51 + 1) = v21;
          v52 = v23 | 0x8000000000000000;
          *&v51 = v22;
        }

        else
        {
          HIBYTE(v52) = v20;
          v22 = &v51;
          if (!v20)
          {
LABEL_35:
            v22[v21] = 0;
            v24 = SHIBYTE(v56);
            if (v56 >= 0)
            {
              v25 = HIBYTE(v56);
            }

            else
            {
              v25 = v56;
            }

            v26 = *(a3 + 23);
            if (v26 >= 0)
            {
              v27 = *(a3 + 23);
            }

            else
            {
              v27 = a3[1];
            }

            v28 = v27 + v25;
            if (v27 + v25 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v28 <= 0x16)
            {
              v50 = 0;
              v49 = 0uLL;
              v30 = &v49;
              HIBYTE(v50) = v27 + v25;
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
              *(&v49 + 1) = v27 + v25;
              v50 = v29 | 0x8000000000000000;
              *&v49 = v30;
            }

            if (v25)
            {
              if (v24 >= 0)
              {
                v31 = &v55;
              }

              else
              {
                v31 = v55;
              }

              memmove(v30, v31, v25);
            }

            v32 = &v30[v25];
            if (v27)
            {
              v33 = *a3;
              if (v26 >= 0)
              {
                v34 = a3;
              }

              else
              {
                v34 = *a3;
              }

              memmove(v32, v34, v27);
            }

            v32[v27] = 0;
            Timestamp::Timestamp(v45);
            Timestamp::asString(v45, 0, 9, __p);
            v44 = 0;
            LOBYTE(v43) = 0;
            ResetInfo::ResetInfo(&buf, &__dst, &v51, &v49, __p, 7, &v43);
            if (v48 < 0)
            {
              operator delete(__p[0]);
              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v45, v46);
              if ((SHIBYTE(v50) & 0x80000000) == 0)
              {
LABEL_60:
                if ((SHIBYTE(v52) & 0x80000000) == 0)
                {
                  goto LABEL_61;
                }

                goto LABEL_75;
              }
            }

            else
            {
              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v45, v46);
              if ((SHIBYTE(v50) & 0x80000000) == 0)
              {
                goto LABEL_60;
              }
            }

            operator delete(v49);
            if ((SHIBYTE(v52) & 0x80000000) == 0)
            {
LABEL_61:
              if ((SHIBYTE(v54) & 0x80000000) == 0)
              {
                goto LABEL_62;
              }

LABEL_76:
              operator delete(__dst);
LABEL_62:
              ResetInfo::ResetInfo(&v36, &buf);
              DIAGTrace::commandResetModem_sync(v7, &v36);
              if (v42 < 0)
              {
                operator delete(v41);
                if ((v40 & 0x80000000) == 0)
                {
LABEL_64:
                  if ((v38 & 0x80000000) == 0)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_79;
                }
              }

              else if ((v40 & 0x80000000) == 0)
              {
                goto LABEL_64;
              }

              operator delete(v39);
              if ((v38 & 0x80000000) == 0)
              {
LABEL_65:
                if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_66;
                }

                goto LABEL_80;
              }

LABEL_79:
              operator delete(v37);
              if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_66:
                if ((SHIBYTE(v65) & 0x80000000) == 0)
                {
                  goto LABEL_67;
                }

                goto LABEL_81;
              }

LABEL_80:
              operator delete(v36.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v65) & 0x80000000) == 0)
              {
LABEL_67:
                if ((SBYTE7(v63) & 0x80000000) == 0)
                {
                  goto LABEL_68;
                }

                goto LABEL_82;
              }

LABEL_81:
              operator delete(*(&v64 + 1));
              if ((SBYTE7(v63) & 0x80000000) == 0)
              {
LABEL_68:
                if ((SHIBYTE(v61) & 0x80000000) == 0)
                {
                  goto LABEL_69;
                }

                goto LABEL_83;
              }

LABEL_82:
              operator delete(v62);
              if ((SHIBYTE(v61) & 0x80000000) == 0)
              {
LABEL_69:
                if ((SBYTE7(v60) & 0x80000000) == 0)
                {
                  goto LABEL_70;
                }

                goto LABEL_84;
              }

LABEL_83:
              operator delete(*(&v60 + 1));
              if ((SBYTE7(v60) & 0x80000000) == 0)
              {
LABEL_70:
                if ((v24 & 0x80000000) == 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_85;
              }

LABEL_84:
              operator delete(buf);
              if ((v24 & 0x80000000) == 0)
              {
LABEL_71:
                v9 = v58;
                if (!v58)
                {
                  goto LABEL_88;
                }

                goto LABEL_86;
              }

LABEL_85:
              operator delete(v55);
              v9 = v58;
              if (!v58)
              {
                goto LABEL_88;
              }

              goto LABEL_86;
            }

LABEL_75:
            operator delete(v51);
            if ((SHIBYTE(v54) & 0x80000000) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_76;
          }
        }

        memmove(v22, v19, v21);
        goto LABEL_35;
      }
    }

    memmove(p_dst, v14, v16);
    goto LABEL_26;
  }

LABEL_86:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_88:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_23C1F9700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  ResetInfo::~ResetInfo(&a10);
  ResetInfo::~ResetInfo((v60 - 224));
  if (v59 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v60 - 240);
  _Unwind_Resume(a1);
}

void DIAGTrace::exitLowPower_sync(DIAGTrace *this, group *a2)
{
  if (*(this + 40))
  {
    gr_name = a2->gr_name;
    if (a2->gr_name)
    {
      dispatch_retain(a2->gr_name);
      dispatch_group_enter(gr_name);
    }

    v4 = *(this + 2);
    if (!v4 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v4)) == 0))
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

    v8 = *(this + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1174405120;
    v13[2] = ___ZN9DIAGTrace17exitLowPower_syncEN8dispatch5groupE_block_invoke;
    v13[3] = &__block_descriptor_tmp_33_1;
    v13[4] = this;
    group = gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(group);
    }

    v15 = v5;
    v16 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v9 = _Block_copy(v13);
    v10 = v9;
    v11 = *(this + 3);
    if (v11)
    {
      dispatch_retain(v11);
      v17 = v10;
      v18 = v11;
      diag::Service::wake(v8, &v17);
      dispatch_release(v11);
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v17 = v9;
      v18 = 0;
      diag::Service::wake(v8, &v17);
      if (!v10)
      {
LABEL_18:
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

        std::__shared_weak_count::__release_weak(v7);
        if (gr_name)
        {
          dispatch_group_leave(gr_name);
          dispatch_release(gr_name);
        }

        return;
      }
    }

    _Block_release(v10);
    goto LABEL_18;
  }

  v12 = *(this + 5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Service not initialized. Ignoring exit low-power request", buf, 2u);
  }
}

void sub_23C1F9A30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9DIAGTrace17exitLowPower_syncEN8dispatch5groupE_block_invoke(void *a1, int a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a1[7];
  if (!v4)
  {
    goto LABEL_89;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v59 = v8;
  if (!v8)
  {
    goto LABEL_89;
  }

  if (a1[6])
  {
    v9 = v8;
    v10 = *(v7 + 40);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (a2 != 4)
    {
      if (a2 == 1)
      {
        if (v11)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Exit low-power complete", &buf, 2u);
        }

        DIAGTrace::stallDetection_sync(v7, *(v7 + 232));
        v8 = v9;
      }

      else
      {
        if (v11)
        {
          if (*(a3 + 23) < 0)
          {
            a3 = *a3;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = a3;
          _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Exit low-power skipped. %s", &buf, 0xCu);
        }

        v8 = v9;
      }

      goto LABEL_87;
    }

    if (v11)
    {
      v12 = a3;
      if (*(a3 + 23) < 0)
      {
        v12 = *a3;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Exit low-power error. %s", &buf, 0xCu);
    }

    v56 = operator new(0x20uLL);
    v57 = xmmword_23C32CBF0;
    strcpy(v56, "Diag exit low-power failed. ");
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v66 = v13;
    v65 = v13;
    v64 = v13;
    v63 = v13;
    v62 = v13;
    v61 = v13;
    buf = v13;
    v14 = *MEMORY[0x277CECC38];
    v15 = strlen(*MEMORY[0x277CECC38]);
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

      p_dst = operator new(v18);
      *(&__dst + 1) = v16;
      v55 = v18 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v55) = v15;
      p_dst = &__dst;
      if (!v15)
      {
LABEL_27:
        *(p_dst + v16) = 0;
        v19 = *MEMORY[0x277CECD10];
        v20 = strlen(*MEMORY[0x277CECD10]);
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

          v22 = operator new(v23);
          *(&v52 + 1) = v21;
          v53 = v23 | 0x8000000000000000;
          *&v52 = v22;
        }

        else
        {
          HIBYTE(v53) = v20;
          v22 = &v52;
          if (!v20)
          {
LABEL_36:
            v22[v21] = 0;
            v24 = SHIBYTE(v57);
            if (v57 >= 0)
            {
              v25 = HIBYTE(v57);
            }

            else
            {
              v25 = v57;
            }

            v26 = *(a3 + 23);
            if (v26 >= 0)
            {
              v27 = *(a3 + 23);
            }

            else
            {
              v27 = a3[1];
            }

            v28 = v27 + v25;
            if (v27 + v25 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v28 <= 0x16)
            {
              v51 = 0;
              v50 = 0uLL;
              v30 = &v50;
              HIBYTE(v51) = v27 + v25;
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
              *(&v50 + 1) = v27 + v25;
              v51 = v29 | 0x8000000000000000;
              *&v50 = v30;
            }

            if (v25)
            {
              if (v24 >= 0)
              {
                v31 = &v56;
              }

              else
              {
                v31 = v56;
              }

              memmove(v30, v31, v25);
            }

            v32 = &v30[v25];
            if (v27)
            {
              v33 = *a3;
              if (v26 >= 0)
              {
                v34 = a3;
              }

              else
              {
                v34 = *a3;
              }

              memmove(v32, v34, v27);
            }

            v32[v27] = 0;
            Timestamp::Timestamp(v46);
            Timestamp::asString(v46, 0, 9, __p);
            v45 = 0;
            LOBYTE(v44) = 0;
            ResetInfo::ResetInfo(&buf, &__dst, &v52, &v50, __p, 7, &v44);
            if (v49 < 0)
            {
              operator delete(__p[0]);
              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v46, v47);
              if ((SHIBYTE(v51) & 0x80000000) == 0)
              {
LABEL_61:
                if ((SHIBYTE(v53) & 0x80000000) == 0)
                {
                  goto LABEL_62;
                }

                goto LABEL_76;
              }
            }

            else
            {
              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v46, v47);
              if ((SHIBYTE(v51) & 0x80000000) == 0)
              {
                goto LABEL_61;
              }
            }

            operator delete(v50);
            if ((SHIBYTE(v53) & 0x80000000) == 0)
            {
LABEL_62:
              if ((SHIBYTE(v55) & 0x80000000) == 0)
              {
                goto LABEL_63;
              }

LABEL_77:
              operator delete(__dst);
LABEL_63:
              ResetInfo::ResetInfo(&v37, &buf);
              DIAGTrace::commandResetModem_sync(v7, &v37);
              if (v43 < 0)
              {
                operator delete(v42);
                if ((v41 & 0x80000000) == 0)
                {
LABEL_65:
                  if ((v39 & 0x80000000) == 0)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_80;
                }
              }

              else if ((v41 & 0x80000000) == 0)
              {
                goto LABEL_65;
              }

              operator delete(v40);
              if ((v39 & 0x80000000) == 0)
              {
LABEL_66:
                if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_67;
                }

                goto LABEL_81;
              }

LABEL_80:
              operator delete(v38);
              if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_67:
                if ((SHIBYTE(v66) & 0x80000000) == 0)
                {
                  goto LABEL_68;
                }

                goto LABEL_82;
              }

LABEL_81:
              operator delete(v37.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v66) & 0x80000000) == 0)
              {
LABEL_68:
                if ((SBYTE7(v64) & 0x80000000) == 0)
                {
                  goto LABEL_69;
                }

                goto LABEL_83;
              }

LABEL_82:
              operator delete(*(&v65 + 1));
              if ((SBYTE7(v64) & 0x80000000) == 0)
              {
LABEL_69:
                if ((SHIBYTE(v62) & 0x80000000) == 0)
                {
                  goto LABEL_70;
                }

                goto LABEL_84;
              }

LABEL_83:
              operator delete(v63);
              if ((SHIBYTE(v62) & 0x80000000) == 0)
              {
LABEL_70:
                if ((SBYTE7(v61) & 0x80000000) == 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_85;
              }

LABEL_84:
              operator delete(*(&v61 + 1));
              if ((SBYTE7(v61) & 0x80000000) == 0)
              {
LABEL_71:
                if ((v24 & 0x80000000) == 0)
                {
                  goto LABEL_72;
                }

                goto LABEL_86;
              }

LABEL_85:
              operator delete(buf);
              if ((v24 & 0x80000000) == 0)
              {
LABEL_72:
                v8 = v59;
                if (!v59)
                {
                  goto LABEL_89;
                }

                goto LABEL_87;
              }

LABEL_86:
              operator delete(v56);
              v8 = v59;
              if (!v59)
              {
                goto LABEL_89;
              }

              goto LABEL_87;
            }

LABEL_76:
            operator delete(v52);
            if ((SHIBYTE(v55) & 0x80000000) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_77;
          }
        }

        memmove(v22, v19, v21);
        goto LABEL_36;
      }
    }

    memmove(p_dst, v14, v16);
    goto LABEL_27;
  }

LABEL_87:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v35 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v35);
  }

LABEL_89:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_23C1F9FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  ResetInfo::~ResetInfo(&a10);
  ResetInfo::~ResetInfo((v60 - 224));
  if (v59 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v60 - 240);
  _Unwind_Resume(a1);
}

void DIAGTrace::snapshot_sync(void *a1, dispatch_object_t *a2, const __CFDictionary **a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v5);
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
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

  v90[0] = 0xAAAAAAAAAAAAAAAALL;
  v90[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v90, *a3);
  memset(v89, 170, sizeof(v89));
  v10 = *MEMORY[0x277CECB88];
  v11 = strlen(*MEMORY[0x277CECB88]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  v73 = v7;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    __dst[1] = v12;
    __dst[2] = (v14 | 0x8000000000000000);
    __dst[0] = v13;
    goto LABEL_15;
  }

  HIBYTE(__dst[2]) = v11;
  v13 = __dst;
  if (v11)
  {
LABEL_15:
    memmove(v13, v10, v12);
  }

  v15 = *MEMORY[0x277CECBB8];
  *(v12 + v13) = 0;
  ctu::cf::MakeCFString::MakeCFString(__p, v15);
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](__p);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  memset(__dst, 170, sizeof(__dst));
  __p[0] = operator new(0x28uLL);
  *&__p[1] = xmmword_23C32C700;
  strcpy(__p[0], "kCollectTelephonyLogsWithCoredump");
  ctu::cf::MakeCFString::MakeCFString(&v93, "kKeyTraceAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v93);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  memset(__p, 170, sizeof(__p));
  strcpy(&v93, "kTraceFilterActionNone");
  *(&v93.__r_.__value_.__s + 23) = 22;
  ctu::cf::MakeCFString::MakeCFString(&v86, "kKeyTraceFilterAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v86);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v16 = abm::trace::kSnapshotFolder[0];
  v17 = strlen(abm::trace::kSnapshotFolder[0]);
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
    goto LABEL_30;
  }

  *(&v85.__r_.__value_.__s + 23) = v17;
  v19 = &v85;
  if (v17)
  {
LABEL_30:
    memmove(v19, v16, v18);
  }

  *(v19 + v18) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v91, "kKeyTraceDumpStatePath");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v91);
  v21 = abm::trace::kLogDirPrefix[0];
  v22 = strlen(abm::trace::kLogDirPrefix[0]);
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
    *(&v91 + 1) = v23;
    v92 = v25 | 0x8000000000000000;
    *&v91 = v24;
    goto LABEL_39;
  }

  HIBYTE(v92) = v22;
  v24 = &v91;
  if (v22)
  {
LABEL_39:
    memmove(v24, v21, v23);
  }

  *(v24 + v23) = 0;
  if (v92 >= 0)
  {
    v26 = &v91;
  }

  else
  {
    v26 = v91;
  }

  if (v92 >= 0)
  {
    v27 = HIBYTE(v92);
  }

  else
  {
    v27 = *(&v91 + 1);
  }

  v28 = std::string::append(&v86, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v93.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v93.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v89[2]) >= 0)
  {
    v30 = v89;
  }

  else
  {
    v30 = v89[0];
  }

  if (SHIBYTE(v89[2]) >= 0)
  {
    v31 = HIBYTE(v89[2]);
  }

  else
  {
    v31 = v89[1];
  }

  v32 = std::string::append(&v93, v30, v31);
  size = v32->__r_.__value_.__l.__size_;
  __s = v32->__r_.__value_.__r.__words[0];
  v75 = v32->__r_.__value_.__r.__words[2];
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v92) & 0x80000000) == 0)
    {
LABEL_54:
      if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_61;
    }
  }

  else if ((SHIBYTE(v92) & 0x80000000) == 0)
  {
    goto LABEL_54;
  }

  operator delete(v91);
  if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_55:
    if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_62:
    operator delete(v85.__r_.__value_.__l.__data_);
    v34 = SHIBYTE(__p[2]);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_63;
  }

LABEL_61:
  operator delete(v86.__r_.__value_.__l.__data_);
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_62;
  }

LABEL_56:
  v34 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
LABEL_57:
    if (v34 != 22)
    {
      v41 = a1[5];
      v43 = v75;
      v42 = v5;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_76;
      }

      goto LABEL_153;
    }

    v35 = __p;
LABEL_65:
    v36 = *v35;
    v37 = v35[1];
    v38 = *(v35 + 14);
    if (v36 != *"kTraceFilterActionNone" || v37 != *"lterActionNone" || v38 != *"tionNone")
    {
      v41 = a1[5];
      v43 = v75;
      v42 = v5;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        if (v34 < 0)
        {
          goto LABEL_78;
        }

LABEL_76:
        v44 = __p;
        goto LABEL_79;
      }

      goto LABEL_153;
    }

    if (SHIBYTE(__dst[2]) < 0)
    {
      if (__dst[1] != 17)
      {
        goto LABEL_97;
      }

      v45 = __dst[0];
    }

    else
    {
      if (SHIBYTE(__dst[2]) != 17)
      {
        goto LABEL_97;
      }

      v45 = __dst;
    }

    v46 = *v45;
    v47 = v45[1];
    v48 = *(v45 + 16);
    if (v46 == *"kShutdownAllTrace" && v47 == *"nAllTrace" && v48 == str_76[16])
    {
      capabilities::debug::environment(v32);
      v51 = capabilities::debug::operator&() != 0;
LABEL_98:
      memset(&v93, 170, sizeof(v93));
      memset(&v86, 0, sizeof(v86));
      ctu::cf::MakeCFString::MakeCFString(&v85, "kKeyTraceDumpStateReason");
      ctu::cf::map_adapter::getString();
      MEMORY[0x23EECD8F0](&v85);
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      memset(&v86, 170, sizeof(v86));
      v52 = *MEMORY[0x277CECC88];
      memset(&v85, 0, sizeof(v85));
      ctu::cf::MakeCFString::MakeCFString(&v91, v52);
      ctu::cf::map_adapter::getString();
      MEMORY[0x23EECD8F0](&v91);
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
        v53 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v54 = v86.__r_.__value_.__l.__size_;
        }

        if (v54)
        {
LABEL_105:
          v72 = size;
          v55 = SHIBYTE(v93.__r_.__value_.__r.__words[2]);
          if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v56 = v93.__r_.__value_.__l.__size_;
          }

          v57 = v56 + 4;
          if (v56 + 4 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v57 < 0x17)
          {
            memset(&v85, 0, sizeof(v85));
            v59 = &v85;
            *(&v85.__r_.__value_.__s + 23) = v56 + 4;
            if (!v56)
            {
              goto LABEL_125;
            }
          }

          else
          {
            v71 = v51;
            if ((v57 | 7) == 0x17)
            {
              v58 = 25;
            }

            else
            {
              v58 = (v57 | 7) + 1;
            }

            v59 = operator new(v58);
            v85.__r_.__value_.__l.__size_ = v56 + 4;
            v85.__r_.__value_.__r.__words[2] = v58 | 0x8000000000000000;
            v85.__r_.__value_.__r.__words[0] = v59;
            v51 = v71;
          }

          if (v55 >= 0)
          {
            v61 = &v93;
          }

          else
          {
            v61 = v93.__r_.__value_.__r.__words[0];
          }

          memmove(v59, v61, v56);
LABEL_125:
          strcpy(v59 + v56, " w/ ");
          if (v53 >= 0)
          {
            v62 = &v86;
          }

          else
          {
            v62 = v86.__r_.__value_.__r.__words[0];
          }

          v63 = std::string::append(&v85, v62, v54);
          v64 = v63->__r_.__value_.__r.__words[0];
          *&v91 = v63->__r_.__value_.__l.__size_;
          *(&v91 + 7) = *(&v63->__r_.__value_.__r.__words[1] + 7);
          v65 = HIBYTE(v63->__r_.__value_.__r.__words[2]);
          v63->__r_.__value_.__l.__size_ = 0;
          v63->__r_.__value_.__r.__words[2] = 0;
          v63->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          v93.__r_.__value_.__r.__words[0] = v64;
          v93.__r_.__value_.__l.__size_ = v91;
          *(&v93.__r_.__value_.__r.__words[1] + 7) = *(&v91 + 7);
          *(&v93.__r_.__value_.__s + 23) = v65;
          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v85.__r_.__value_.__l.__data_);
          }

          size = v72;
          v60 = a1[40];
          v43 = v75;
          v42 = v5;
          if (!v60)
          {
LABEL_151:
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_153:
                if ((v43 & 0x8000000000000000) == 0)
                {
                  goto LABEL_154;
                }

                goto LABEL_80;
              }
            }

            else if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_153;
            }

            operator delete(v93.__r_.__value_.__l.__data_);
            if ((v43 & 0x8000000000000000) == 0)
            {
              goto LABEL_154;
            }

LABEL_80:
            operator delete(__s);
            if (SHIBYTE(__p[2]) < 0)
            {
              goto LABEL_81;
            }

            goto LABEL_155;
          }

LABEL_133:
          v66 = operator new(0x20uLL);
          v83 = v66;
          v84 = xmmword_23C32C720;
          strcpy(v66, "Trace State Configuration");
          DIAGTrace::getStateAsDict_sync(a1, &v93, &object);
          diag::Service::pushInfo(v60, &v83, &object);
          xpc_release(object);
          object = 0;
          operator delete(v66);
          v67 = a1[40];
          if ((v43 & 0x8000000000000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v81, __s, size);
          }

          else
          {
            v81.__r_.__value_.__r.__words[0] = __s;
            v81.__r_.__value_.__l.__size_ = size;
            v81.__r_.__value_.__r.__words[2] = v43;
          }

          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZN9DIAGTrace13snapshot_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
          aBlock[3] = &__block_descriptor_tmp_38_1;
          aBlock[4] = a1;
          group = v42;
          if (v42)
          {
            dispatch_retain(v42);
            dispatch_group_enter(group);
          }

          v78 = v73;
          v79 = v9;
          atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v68 = _Block_copy(aBlock);
          v69 = a1[3];
          if (v69)
          {
            dispatch_retain(v69);
          }

          v80[0] = v68;
          v80[1] = v69;
          diag::Service::snapshot(v67, &v81, &v93, v51, v80);
          if (v69)
          {
            dispatch_release(v69);
          }

          if (v68)
          {
            _Block_release(v68);
          }

          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v81.__r_.__value_.__l.__data_);
          }

          if (v79)
          {
            std::__shared_weak_count::__release_weak(v79);
          }

          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

          goto LABEL_151;
        }
      }

      else
      {
        v53 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v54 = v86.__r_.__value_.__l.__size_;
        }

        if (v54)
        {
          goto LABEL_105;
        }
      }

      v60 = a1[40];
      v43 = v75;
      v42 = v5;
      if (!v60)
      {
        goto LABEL_151;
      }

      goto LABEL_133;
    }

LABEL_97:
    v51 = 1;
    goto LABEL_98;
  }

LABEL_63:
  if (__p[1] == 22)
  {
    v35 = __p[0];
    goto LABEL_65;
  }

  v41 = a1[5];
  v43 = v75;
  v42 = v5;
  if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_153;
  }

LABEL_78:
  v44 = __p[0];
LABEL_79:
  LODWORD(v93.__r_.__value_.__l.__data_) = 136315138;
  *(v93.__r_.__value_.__r.__words + 4) = v44;
  _os_log_impl(&dword_23C1C4000, v41, OS_LOG_TYPE_DEFAULT, "#I Skipping snapshot as trace filter is '%s'", &v93, 0xCu);
  if ((v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_80;
  }

LABEL_154:
  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_81:
    operator delete(__p[0]);
    if (SHIBYTE(__dst[2]) < 0)
    {
      goto LABEL_82;
    }

    goto LABEL_156;
  }

LABEL_155:
  if (SHIBYTE(__dst[2]) < 0)
  {
LABEL_82:
    operator delete(__dst[0]);
    if (SHIBYTE(v89[2]) < 0)
    {
      goto LABEL_83;
    }

    goto LABEL_157;
  }

LABEL_156:
  if (SHIBYTE(v89[2]) < 0)
  {
LABEL_83:
    operator delete(v89[0]);
    MEMORY[0x23EECD940](v90);
    std::__shared_weak_count::__release_weak(v9);
    if (!v42)
    {
      goto LABEL_159;
    }

    goto LABEL_158;
  }

LABEL_157:
  MEMORY[0x23EECD940](v90);
  std::__shared_weak_count::__release_weak(v9);
  if (v42)
  {
LABEL_158:
    dispatch_group_leave(v42);
    dispatch_release(v42);
  }

LABEL_159:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_23C1FAB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, dispatch_group_t group, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_group_t object, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, xpc_object_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (*(v54 - 193) < 0)
  {
    operator delete(*(v54 - 216));
  }

  if (*(v54 - 169) < 0)
  {
    operator delete(*(v54 - 192));
  }

  MEMORY[0x23EECD940](v54 - 168);
  std::__shared_weak_count::__release_weak(v53);
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(a1);
}

void DIAGTrace::getStateAsDict_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
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

  if (*(a1 + 244))
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
  if (*(a1 + 124))
  {
    v15 = "true";
  }

  else
  {
    v15 = "false";
  }

  v16 = xpc_string_create(v15);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "High_Tput", v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  if (*(a1 + 125))
  {
    v18 = "true";
  }

  else
  {
    v18 = "false";
  }

  v19 = xpc_string_create(v18);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "Data_Logging", v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  DIAGTrace::historyAsString(a1, &buf);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  v22 = xpc_string_create(p_buf);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "History", v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    v24 = *(a1 + 104);
    if (v24 <= 4)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v24 = *(a1 + 104);
    if (v24 <= 4)
    {
LABEL_34:
      v25 = off_278BB87D8[v24];
      goto LABEL_37;
    }
  }

  v25 = "Unknown";
LABEL_37:
  v26 = xpc_string_create(v25);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "Mode", v26);
  v27 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v27);
  v28 = *(a1 + 108);
  if (v28 == 1)
  {
    v29 = &buf.__r_.__value_.__s.__data_[9];
    *(&buf.__r_.__value_.__s + 23) = 9;
    qmemcpy(&buf, "Last_Used", 9);
  }

  else if (v28)
  {
    v29 = &buf.__r_.__value_.__s.__data_[11];
    *(&buf.__r_.__value_.__s + 23) = 11;
    qmemcpy(&buf, "UnSpecified", 11);
  }

  else
  {
    v29 = &buf.__r_.__value_.__s.__data_[7];
    *(&buf.__r_.__value_.__s + 23) = 7;
    qmemcpy(&buf, "Default", 7);
  }

  *v29 = 0;
  v30 = xpc_string_create(&buf);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "Reset_Mode_Boot", v30);
  v31 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v31);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  std::to_string(&buf, *(a1 + 112));
  __p = buf;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v33 = xpc_string_create(p_p);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  v34 = *a3;
  xpc_dictionary_set_value(*a3, "TraceOwnership", v33);
  v35 = xpc_null_create();
  xpc_release(v33);
  xpc_release(v35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v36 = (a1 + 128);
    if ((*(a1 + 151) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v36 = (a1 + 128);
    if ((*(a1 + 151) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }
  }

  v36 = *v36;
LABEL_55:
  v37 = xpc_string_create(v36);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v34, "File", v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v39 = (a1 + 152);
  if (*(a1 + 175) < 0)
  {
    v39 = *v39;
  }

  v40 = xpc_string_create(v39);
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  xpc_dictionary_set_value(v34, "File_Secondary", v40);
  v41 = xpc_null_create();
  xpc_release(v40);
  xpc_release(v41);
  v42 = (a1 + 176);
  if (*(a1 + 199) < 0)
  {
    v42 = *v42;
  }

  v43 = xpc_string_create(v42);
  if (!v43)
  {
    v43 = xpc_null_create();
  }

  xpc_dictionary_set_value(v34, diag::config::kExtraDMCFileKey[0], v43);
  v44 = xpc_null_create();
  xpc_release(v43);
  xpc_release(v44);
  v45 = *(a1 + 120);
  if (v45 > 2)
  {
    v46 = "Unknown";
  }

  else
  {
    v46 = off_278BB8800[v45];
  }

  v47 = xpc_string_create(v46);
  if (!v47)
  {
    v47 = xpc_null_create();
  }

  xpc_dictionary_set_value(v34, diag::config::kEnabledDuringSleepKey[0], v47);
  v48 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v48);
  if (*(a1 + 232))
  {
    v49 = "true";
  }

  else
  {
    v49 = "false";
  }

  v50 = xpc_string_create(v49);
  if (!v50)
  {
    v50 = xpc_null_create();
  }

  xpc_dictionary_set_value(v34, diag::config::kStallDetectionKey[0], v50);
  v51 = xpc_null_create();
  xpc_release(v50);
  xpc_release(v51);
  v52 = *(a1 + 236);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&buf, v52);
  __p = buf;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = &__p;
  }

  else
  {
    v53 = __p.__r_.__value_.__r.__words[0];
  }

  v54 = xpc_string_create(v53);
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  v55 = *a3;
  xpc_dictionary_set_value(*a3, diag::config::kStallDetectionRetriesKey[0], v54);
  v56 = xpc_null_create();
  xpc_release(v54);
  xpc_release(v56);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v57 = *(a1 + 116);
    if (v57 <= 2)
    {
      goto LABEL_82;
    }

LABEL_86:
    v58 = "Unknown";
    goto LABEL_87;
  }

  v57 = *(a1 + 116);
  if (v57 > 2)
  {
    goto LABEL_86;
  }

LABEL_82:
  v58 = off_278BB8818[v57];
LABEL_87:
  v59 = xpc_string_create(v58);
  if (!v59)
  {
    v59 = xpc_null_create();
  }

  xpc_dictionary_set_value(v55, diag::config::kStallDetectionRecoveryKey[0], v59);
  v60 = xpc_null_create();
  xpc_release(v59);
  xpc_release(v60);
  v61 = *(a1 + 304);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&buf, v61);
  __p = buf;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &__p;
  }

  else
  {
    v62 = __p.__r_.__value_.__r.__words[0];
  }

  v63 = xpc_string_create(v62);
  if (!v63)
  {
    v63 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a3, "FileSize", v63);
  v64 = xpc_null_create();
  xpc_release(v63);
  xpc_release(v64);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v65 = *(a1 + 248);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&buf, v65);
  __p = buf;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = &__p;
  }

  else
  {
    v66 = __p.__r_.__value_.__r.__words[0];
  }

  v67 = xpc_string_create(v66);
  if (!v67)
  {
    v67 = xpc_null_create();
  }

  v68 = *a3;
  xpc_dictionary_set_value(v68, "Retain_Previous_Trace", v67);
  v69 = xpc_null_create();
  xpc_release(v67);
  xpc_release(v69);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v70 = a2;
  }

  else
  {
    v70 = *a2;
  }

  v71 = xpc_string_create(v70);
  if (!v71)
  {
    v71 = xpc_null_create();
  }

  xpc_dictionary_set_value(v68, *MEMORY[0x277CECCC8], v71);
  v72 = xpc_null_create();
  xpc_release(v71);
  xpc_release(v72);
}

void sub_23C1FB73C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C1FB5F8);
}

void sub_23C1FB748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    xpc::dict::~dict(v14);
    _Unwind_Resume(a1);
  }

  xpc::dict::~dict(v14);
  _Unwind_Resume(a1);
}

void ___ZN9DIAGTrace13snapshot_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(void *a1, uint64_t a2, uint64_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1[7];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[6])
      {
        v9 = *(v6 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a3 + 23) < 0)
          {
            a3 = *a3;
          }

          v11 = 136315138;
          v12 = a3;
          _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Snapshot complete. %s", &v11, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t DIAGTrace::updateEnableProperty_sync(uint64_t a1, int a2, int *a3, uint64_t a4, const __CFAllocator *a5)
{
  if (*(a1 + 245))
  {
    return 0;
  }

  result = ctu::cf::update<char const*,BOOL>(*(a1 + 312), "Enabled", a2, *MEMORY[0x277CBECE8], a5);
  if (result)
  {
    if (*(a1 + 244) != a2)
    {
      *a3 = a2 ^ 1;
      *(a1 + 244) = a2;
    }

    return 1;
  }

  return result;
}

BOOL DIAGTrace::checkAllDMCName_sync(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 151) >= 0)
  {
    v3 = (a1 + 128);
  }

  else
  {
    v3 = *(a1 + 128);
  }

  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (strcasecmp(v3, v4))
  {
    return 0;
  }

  if (*(a1 + 175) >= 0)
  {
    v6 = (a1 + 152);
  }

  else
  {
    v6 = *(a1 + 152);
  }

  if (strcasecmp(v6, v4))
  {
    return 0;
  }

  v9 = *(a1 + 176);
  v8 = a1 + 176;
  v7 = v9;
  if (*(v8 + 23) >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  return strcasecmp(v10, v4) == 0;
}

BOOL DIAGTrace::checkOneOfDMCName_sync(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 151) >= 0)
  {
    v3 = (a1 + 128);
  }

  else
  {
    v3 = *(a1 + 128);
  }

  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (!strcasecmp(v3, v4))
  {
    return 1;
  }

  v5 = *(a1 + 175) >= 0 ? (a1 + 152) : *(a1 + 152);
  if (!strcasecmp(v5, v4))
  {
    return 1;
  }

  v8 = *(a1 + 176);
  v7 = a1 + 176;
  v6 = v8;
  if (*(v7 + 23) >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  return strcasecmp(v9, v4) == 0;
}

uint64_t DIAGTrace::updateDMCSetting_sync(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = a2;
  v44 = *MEMORY[0x277D85DE8];
  v6 = a2[23];
  if ((v6 & 0x80000000) == 0)
  {
    if (strcasecmp(a2, "File"))
    {
      v7 = v4;
      if (strcasecmp(v4, "File_Secondary"))
      {
        goto LABEL_4;
      }

LABEL_11:
      v9 = (a1 + 152);
      if (a1 + 152 != a3)
      {
        v10 = *(a3 + 23);
        if ((*(a1 + 175) & 0x80000000) == 0)
        {
          if ((*(a3 + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v9, *a3, *(a3 + 8));
            if ((v4[23] & 0x80000000) == 0)
            {
LABEL_68:
              strcpy(v4, "File_Secondary");
              v4[23] = 14;
              if (prop::bbtrace::set(v4, a3))
              {
                goto LABEL_35;
              }

LABEL_69:
              v25 = 0;
              v31 = *MEMORY[0x277D85DE8];
              return v25;
            }
          }

          else
          {
            v11 = *a3;
            *(a1 + 168) = *(a3 + 16);
            *v9 = v11;
            if ((v4[23] & 0x80000000) == 0)
            {
              goto LABEL_68;
            }
          }

LABEL_67:
          operator delete(*v4);
          goto LABEL_68;
        }

        if (v10 >= 0)
        {
          v29 = a3;
        }

        else
        {
          v29 = *a3;
        }

        if (v10 >= 0)
        {
          v30 = *(a3 + 23);
        }

        else
        {
          v30 = *(a3 + 8);
        }

        std::string::__assign_no_alias<false>(v9, v29, v30);
      }

      if ((v4[23] & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

LABEL_16:
    v12 = (a1 + 128);
    if (a1 + 128 != a3)
    {
      v13 = *(a3 + 23);
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        if ((*(a3 + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v12, *a3, *(a3 + 8));
          if ((v4[23] & 0x80000000) == 0)
          {
LABEL_34:
            strcpy(v4, "File");
            v4[23] = 4;
            if (prop::bbtrace::set(v4, a3))
            {
              goto LABEL_35;
            }

            goto LABEL_69;
          }
        }

        else
        {
          v14 = *a3;
          *(a1 + 144) = *(a3 + 16);
          *v12 = v14;
          if ((v4[23] & 0x80000000) == 0)
          {
            goto LABEL_34;
          }
        }

LABEL_33:
        operator delete(*v4);
        goto LABEL_34;
      }

      if (v13 >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      if (v13 >= 0)
      {
        v19 = *(a3 + 23);
      }

      else
      {
        v19 = *(a3 + 8);
      }

      std::string::__assign_no_alias<false>(v12, v18, v19);
    }

    if ((v4[23] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v7 = *a2;
  if (!strcasecmp(*a2, "File"))
  {
    goto LABEL_16;
  }

  if (!strcasecmp(v7, "File_Secondary"))
  {
    goto LABEL_11;
  }

LABEL_4:
  if (strcasecmp(v7, diag::config::kExtraDMCFileKey[0]))
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 < 0)
      {
        v4 = *v4;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v4;
      _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Failed to get matched DMC file key: %s", &buf, 0xCu);
    }

    goto LABEL_69;
  }

  v15 = (a1 + 176);
  if (a1 + 176 != a3)
  {
    v16 = *(a3 + 23);
    if (*(a1 + 199) < 0)
    {
      if (v16 >= 0)
      {
        v32 = a3;
      }

      else
      {
        v32 = *a3;
      }

      if (v16 >= 0)
      {
        v33 = *(a3 + 23);
      }

      else
      {
        v33 = *(a3 + 8);
      }

      std::string::__assign_no_alias<false>(v15, v32, v33);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v15, *a3, *(a3 + 8));
    }

    else
    {
      v17 = *a3;
      *(a1 + 192) = *(a3 + 16);
      *v15 = v17;
    }
  }

  v34 = diag::config::kExtraDMCFileKey[0];
  v35 = strlen(diag::config::kExtraDMCFileKey[0]);
  if (v35 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v36 = v35;
  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    p_buf = operator new(v38);
    buf.__r_.__value_.__l.__size_ = v36;
    buf.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
    buf.__r_.__value_.__r.__words[0] = p_buf;
    goto LABEL_90;
  }

  *(&buf.__r_.__value_.__s + 23) = v35;
  p_buf = &buf;
  if (v35)
  {
LABEL_90:
    memmove(p_buf, v34, v36);
  }

  p_buf->__r_.__value_.__s.__data_[v36] = 0;
  if (v4[23] < 0)
  {
    operator delete(*v4);
  }

  *v4 = buf;
  if (!prop::bbtrace::set(v4, a3))
  {
    goto LABEL_69;
  }

LABEL_35:
  v20 = *(a1 + 312);
  if (v4[23] < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *v4, *(v4 + 1));
  }

  else
  {
    buf = *v4;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v21 = *MEMORY[0x277CBECE8];
  value = 0;
  ctu::cf::convert_copy();
  v22 = value;
  v41 = value;
  value = 0;
  ctu::cf::convert_copy();
  v23 = value;
  v40 = value;
  if (v22)
  {
    v24 = value == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = !v24;
  if (v24)
  {
    if (!value)
    {
      goto LABEL_51;
    }
  }

  else
  {
    CFDictionarySetValue(v20, v22, value);
  }

  CFRelease(v23);
LABEL_51:
  if (v22)
  {
    CFRelease(v22);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

LABEL_58:
    operator delete(buf.__r_.__value_.__l.__data_);
    v28 = *MEMORY[0x277D85DE8];
    return v25;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_58;
  }

LABEL_55:
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void sub_23C1FC0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DIAGTrace::ratifyDMCFile_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  v5 = *(a3 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (!v5)
  {
    return 0;
  }

  v8 = diag::config::kThroughputDMCFile[0];
  v9 = strlen(diag::config::kThroughputDMCFile[0]);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_207;
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
    v117 = v10;
    v118 = v13 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_16;
  }

  HIBYTE(v118) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_16:
    memmove(p_dst, v8, v10);
  }

  *(p_dst + v10) = 0;
  if (*(a1 + 151) >= 0)
  {
    v14 = (a1 + 128);
  }

  else
  {
    v14 = *(a1 + 128);
  }

  v15 = SHIBYTE(v118);
  v16 = __dst;
  if (v118 >= 0)
  {
    v17 = &__dst;
  }

  else
  {
    v17 = __dst;
  }

  if (!strcasecmp(v14, v17) || (*(a1 + 175) >= 0 ? (v18 = (a1 + 152)) : (v18 = *(a1 + 152)), !strcasecmp(v18, v17)))
  {
    v20 = 1;
    if (v15 < 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*(a1 + 199) >= 0)
    {
      v19 = (a1 + 176);
    }

    else
    {
      v19 = *(a1 + 176);
    }

    v20 = strcasecmp(v19, v17) == 0;
    if (v15 < 0)
    {
LABEL_36:
      operator delete(v16);
      if (*(a2 + 23) < 0)
      {
        goto LABEL_37;
      }

LABEL_35:
      v115 = *a2;
      goto LABEL_38;
    }
  }

  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

LABEL_37:
  std::string::__init_copy_ctor_external(&v115, *a2, *(a2 + 8));
LABEL_38:
  result = DIAGTrace::updateDMCSetting_sync(a1, &v115, a3);
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    v21 = result;
    operator delete(v115.__r_.__value_.__l.__data_);
    result = v21;
    if (!v21)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  v22 = diag::config::kThroughputDMCFile[0];
  v23 = strlen(diag::config::kThroughputDMCFile[0]);
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_207;
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
    v117 = v24;
    v118 = v26 | 0x8000000000000000;
    __dst = v25;
    goto LABEL_50;
  }

  HIBYTE(v118) = v23;
  v25 = &__dst;
  if (v23)
  {
LABEL_50:
    memmove(v25, v22, v24);
  }

  *(v25 + v24) = 0;
  if (*(a1 + 151) >= 0)
  {
    v27 = (a1 + 128);
  }

  else
  {
    v27 = *(a1 + 128);
  }

  v28 = SHIBYTE(v118);
  v29 = __dst;
  if (v118 >= 0)
  {
    v30 = &__dst;
  }

  else
  {
    v30 = __dst;
  }

  if (!strcasecmp(v27, v30) || (*(a1 + 175) >= 0 ? (v31 = (a1 + 152)) : (v31 = *(a1 + 152)), !strcasecmp(v31, v30)))
  {
    v33 = 1;
    if (v28 < 0)
    {
      goto LABEL_73;
    }

LABEL_68:
    if (!v33)
    {
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (*(a1 + 199) >= 0)
  {
    v32 = (a1 + 176);
  }

  else
  {
    v32 = *(a1 + 176);
  }

  v33 = strcasecmp(v32, v30) == 0;
  if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

LABEL_73:
  operator delete(v29);
  if (!v33)
  {
LABEL_74:
    v38 = diag::config::kNoneDMCFile[0];
    v39 = strlen(diag::config::kNoneDMCFile[0]);
    if (v39 <= 0x7FFFFFFFFFFFFFF7)
    {
      v40 = v39;
      if (v39 >= 0x17)
      {
        if ((v39 | 7) == 0x17)
        {
          v53 = 25;
        }

        else
        {
          v53 = (v39 | 7) + 1;
        }

        v41 = operator new(v53);
        v117 = v40;
        v118 = v53 | 0x8000000000000000;
        __dst = v41;
      }

      else
      {
        HIBYTE(v118) = v39;
        v41 = &__dst;
        if (!v39)
        {
LABEL_101:
          *(v41 + v40) = 0;
          if (*(a1 + 151) >= 0)
          {
            v54 = (a1 + 128);
          }

          else
          {
            v54 = *(a1 + 128);
          }

          v55 = SHIBYTE(v118);
          v56 = __dst;
          if (v118 >= 0)
          {
            v57 = &__dst;
          }

          else
          {
            v57 = __dst;
          }

          v58 = strcasecmp(v54, v57);
          if (v58 || (*(a1 + 175) >= 0 ? (v59 = (a1 + 152)) : (v59 = *(a1 + 152)), v58 = strcasecmp(v59, v57), v58))
          {
            v60 = v20;
            if ((v55 & 0x80000000) == 0)
            {
              goto LABEL_113;
            }
          }

          else
          {
            if (*(a1 + 199) >= 0)
            {
              v105 = (a1 + 176);
            }

            else
            {
              v105 = *(a1 + 176);
            }

            v58 = strcasecmp(v105, v57);
            v60 = v20 || v58 == 0;
            if ((v55 & 0x80000000) == 0)
            {
LABEL_113:
              if (v60)
              {
                goto LABEL_114;
              }

              return 1;
            }
          }

          operator delete(v56);
          if (v60)
          {
LABEL_114:
            v107 = 4;
            strcpy(v106, "File");
            v61 = config::hw::watch(v58);
            if (v61)
            {
              v62 = "Lite";
            }

            else
            {
              v62 = "Default";
            }

            if (v61)
            {
              v63 = 4;
            }

            else
            {
              v63 = 7;
            }

            HIBYTE(v118) = v63;
            memcpy(&__dst, v62, v63);
            *(&__dst | v63) = 0;
            result = DIAGTrace::updateDMCSetting_sync(a1, v106, &__dst);
            if (SHIBYTE(v118) < 0)
            {
              v64 = result;
              operator delete(__dst);
              result = v64;
            }

            if (v107 < 0)
            {
              v65 = result;
              v66 = v106;
LABEL_204:
              operator delete(*v66);
              return v65;
            }

            return result;
          }

          return 1;
        }
      }

      memmove(v41, v38, v40);
      goto LABEL_101;
    }

LABEL_207:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_69:
  v34 = diag::config::kThroughputDMCFile[0];
  v35 = strlen(diag::config::kThroughputDMCFile[0]);
  if (v35 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_207;
  }

  v36 = v35;
  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v42 = 25;
    }

    else
    {
      v42 = (v35 | 7) + 1;
    }

    v37 = operator new(v42);
    v117 = v36;
    v118 = v42 | 0x8000000000000000;
    __dst = v37;
    goto LABEL_82;
  }

  HIBYTE(v118) = v35;
  v37 = &__dst;
  if (v35)
  {
LABEL_82:
    memmove(v37, v34, v36);
  }

  *(v37 + v36) = 0;
  if (*(a1 + 151) >= 0)
  {
    v43 = (a1 + 128);
  }

  else
  {
    v43 = *(a1 + 128);
  }

  v44 = SHIBYTE(v118);
  v45 = __dst;
  if (v118 >= 0)
  {
    v46 = &__dst;
  }

  else
  {
    v46 = __dst;
  }

  v47 = strcasecmp(v43, v46);
  if (v44 < 0)
  {
    v48 = v47;
    operator delete(v45);
    v47 = v48;
  }

  if (!v47)
  {
    updated = 1;
    v68 = diag::config::kThroughputDMCFile[0];
    v69 = strlen(diag::config::kThroughputDMCFile[0]);
    if (v69 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_207;
    }

    goto LABEL_134;
  }

  v114 = 4;
  strcpy(v113, "File");
  v49 = diag::config::kNoneDMCFile[0];
  v50 = strlen(diag::config::kNoneDMCFile[0]);
  if (v50 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v51 = v50;
  if (v50 >= 0x17)
  {
    if ((v50 | 7) == 0x17)
    {
      v70 = 25;
    }

    else
    {
      v70 = (v50 | 7) + 1;
    }

    v52 = operator new(v70);
    v117 = v51;
    v118 = v70 | 0x8000000000000000;
    __dst = v52;
  }

  else
  {
    HIBYTE(v118) = v50;
    v52 = &__dst;
    if (!v50)
    {
      goto LABEL_131;
    }
  }

  memmove(v52, v49, v51);
LABEL_131:
  *(v52 + v51) = 0;
  updated = DIAGTrace::updateDMCSetting_sync(a1, v113, &__dst);
  if (SHIBYTE(v118) < 0)
  {
    operator delete(__dst);
    if ((v114 & 0x80000000) == 0)
    {
LABEL_133:
      v68 = diag::config::kThroughputDMCFile[0];
      v69 = strlen(diag::config::kThroughputDMCFile[0]);
      if (v69 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_207;
      }

      goto LABEL_134;
    }
  }

  else if ((v114 & 0x80000000) == 0)
  {
    goto LABEL_133;
  }

  operator delete(v113[0]);
  v68 = diag::config::kThroughputDMCFile[0];
  v69 = strlen(diag::config::kThroughputDMCFile[0]);
  if (v69 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_207;
  }

LABEL_134:
  v71 = v69;
  if (v69 >= 0x17)
  {
    if ((v69 | 7) == 0x17)
    {
      v73 = 25;
    }

    else
    {
      v73 = (v69 | 7) + 1;
    }

    v72 = operator new(v73);
    v117 = v71;
    v118 = v73 | 0x8000000000000000;
    __dst = v72;
    goto LABEL_141;
  }

  HIBYTE(v118) = v69;
  v72 = &__dst;
  if (v69)
  {
LABEL_141:
    memmove(v72, v68, v71);
  }

  *(v72 + v71) = 0;
  if (*(a1 + 175) >= 0)
  {
    v74 = (a1 + 152);
  }

  else
  {
    v74 = *(a1 + 152);
  }

  v75 = SHIBYTE(v118);
  v76 = __dst;
  if (v118 >= 0)
  {
    v77 = &__dst;
  }

  else
  {
    v77 = __dst;
  }

  v78 = strcasecmp(v74, v77);
  if (v75 < 0)
  {
    operator delete(v76);
  }

  if (v78)
  {
    v112 = 14;
    strcpy(__p, "File_Secondary");
    v79 = diag::config::kNoneDMCFile[0];
    v80 = strlen(diag::config::kNoneDMCFile[0]);
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
      v117 = v81;
      v118 = v83 | 0x8000000000000000;
      __dst = v82;
    }

    else
    {
      HIBYTE(v118) = v80;
      v82 = &__dst;
      if (!v80)
      {
        goto LABEL_160;
      }
    }

    memmove(v82, v79, v81);
LABEL_160:
    *(v82 + v81) = 0;
    updated = DIAGTrace::updateDMCSetting_sync(a1, __p, &__dst);
    if (SHIBYTE(v118) < 0)
    {
      operator delete(__dst);
    }

    if (v112 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v84 = diag::config::kThroughputDMCFile[0];
  v85 = strlen(diag::config::kThroughputDMCFile[0]);
  if (v85 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_207;
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
    v117 = v86;
    v118 = v88 | 0x8000000000000000;
    __dst = v87;
    goto LABEL_172;
  }

  HIBYTE(v118) = v85;
  v87 = &__dst;
  if (v85)
  {
LABEL_172:
    memmove(v87, v84, v86);
  }

  *(v87 + v86) = 0;
  if (*(a1 + 199) >= 0)
  {
    v89 = (a1 + 176);
  }

  else
  {
    v89 = *(a1 + 176);
  }

  v90 = SHIBYTE(v118);
  v91 = __dst;
  if (v118 >= 0)
  {
    v92 = &__dst;
  }

  else
  {
    v92 = __dst;
  }

  v93 = strcasecmp(v89, v92);
  if (v90 < 0)
  {
    operator delete(v91);
  }

  result = updated;
  if (!v93)
  {
    return result;
  }

  v94 = diag::config::kExtraDMCFileKey[0];
  v95 = strlen(diag::config::kExtraDMCFileKey[0]);
  if (v95 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_207;
  }

  v96 = v95;
  if (v95 >= 0x17)
  {
    if ((v95 | 7) == 0x17)
    {
      v98 = 25;
    }

    else
    {
      v98 = (v95 | 7) + 1;
    }

    v97 = operator new(v98);
    v109 = v96;
    v110 = v98 | 0x8000000000000000;
    *v108 = v97;
    goto LABEL_190;
  }

  HIBYTE(v110) = v95;
  v97 = v108;
  if (v95)
  {
LABEL_190:
    memmove(v97, v94, v96);
  }

  *(v97 + v96) = 0;
  v99 = diag::config::kNoneDMCFile[0];
  v100 = strlen(diag::config::kNoneDMCFile[0]);
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
    v117 = v101;
    v118 = v103 | 0x8000000000000000;
    __dst = v102;
    goto LABEL_199;
  }

  HIBYTE(v118) = v100;
  v102 = &__dst;
  if (v100)
  {
LABEL_199:
    memmove(v102, v99, v101);
  }

  *(v102 + v101) = 0;
  result = DIAGTrace::updateDMCSetting_sync(a1, v108, &__dst);
  if (SHIBYTE(v118) < 0)
  {
    v104 = result;
    operator delete(__dst);
    result = v104;
  }

  if (SHIBYTE(v110) < 0)
  {
    v65 = result;
    v66 = v108;
    goto LABEL_204;
  }

  return result;
}

void sub_23C1FCB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 81) < 0)
  {
    operator delete(*(v38 - 104));
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DIAGTrace::handleTputDMCforADPL_sync(config::hw *a1, int *a2)
{
  v36 = 4;
  strcpy(__p, "File");
  v4 = config::hw::watch(a1);
  if (v4)
  {
    v5 = "Lite";
  }

  else
  {
    v5 = "Default";
  }

  if (v4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 7;
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  memcpy(&__dst, v5, v6);
  *(&__dst | v6) = 0;
  updated = DIAGTrace::updateDMCSetting_sync(a1, __p, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_9:
      if (!updated)
      {
        return 0;
      }

      goto LABEL_13;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
  if (!updated)
  {
    return 0;
  }

LABEL_13:
  v34 = 14;
  strcpy(v33, "File_Secondary");
  v8 = diag::config::kNoneDMCFile[0];
  v9 = strlen(diag::config::kNoneDMCFile[0]);
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
    goto LABEL_21;
  }

  *(&__dst.__r_.__value_.__s + 23) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_21:
    memmove(p_dst, v8, v10);
  }

  p_dst->__r_.__value_.__s.__data_[v10] = 0;
  v13 = DIAGTrace::updateDMCSetting_sync(a1, v33, &__dst);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    operator delete(v33[0]);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_28;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (v34 < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (!v13)
  {
    return 0;
  }

LABEL_28:
  v14 = diag::config::kExtraDMCFileKey[0];
  v15 = strlen(diag::config::kExtraDMCFileKey[0]);
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
    v31[1] = v16;
    v32 = v18 | 0x8000000000000000;
    v31[0] = v17;
    goto LABEL_36;
  }

  HIBYTE(v32) = v15;
  v17 = v31;
  if (v15)
  {
LABEL_36:
    memmove(v17, v14, v16);
  }

  *(v16 + v17) = 0;
  v19 = diag::config::kNoneDMCFile[0];
  v20 = strlen(diag::config::kNoneDMCFile[0]);
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

    v22 = operator new(v23);
    __dst.__r_.__value_.__l.__size_ = v21;
    __dst.__r_.__value_.__r.__words[2] = v23 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v22;
    goto LABEL_45;
  }

  *(&__dst.__r_.__value_.__s + 23) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_45:
    memmove(v22, v19, v21);
  }

  v22->__r_.__value_.__s.__data_[v21] = 0;
  v24 = DIAGTrace::updateDMCSetting_sync(a1, v31, &__dst);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v31[0]);
    v30 = 5;
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_52;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v32) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v30 = 5;
  if (!v24)
  {
    return 0;
  }

LABEL_52:
  v29 = 12;
  strcpy(v28, "Data_Logging");
  std::to_string(&__dst, 0);
  v27 = __dst;
  v25 = DIAGTrace::setProperty_sync(a1, v28, &v27, &v30);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v28[0]);
    if (v25)
    {
      goto LABEL_55;
    }

    return 0;
  }

  operator delete(v27.__r_.__value_.__l.__data_);
  if (v29 < 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (v25)
  {
LABEL_55:
    *a2 = v30;
    return 1;
  }

  return 0;
}

void sub_23C1FCF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DIAGTrace::setProperty_sync(uint64_t a1, char *a2, uint64_t a3, int *a4)
{
  v112 = *MEMORY[0x277D85DE8];
  *a4 = 5;
  *(&__p.__r_.__value_.__s + 23) = 7;
  strcpy(&__p, "Enabled");
  if (a2[23] >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (!strcasecmp(v8, &__p))
  {
    LOBYTE(v106[0]) = 0;
    result = prop::bbtrace::set(a2, a3);
    if (!result)
    {
      goto LABEL_236;
    }

    memset(&__p, 0, sizeof(__p));
    if (prop::bbtrace::get(a2, &__p))
    {
      v15 = util::convert<BOOL>(&__p, v106, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_14:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          goto LABEL_235;
        }

        goto LABEL_49;
      }
    }

    if (!v15)
    {
      goto LABEL_235;
    }

LABEL_49:
    if (*(a1 + 245))
    {
      goto LABEL_76;
    }

    v30 = LOBYTE(v106[0]);
    if (!ctu::cf::update<char const*,BOOL>(*(a1 + 312), "Enabled", LOBYTE(v106[0]), *MEMORY[0x277CBECE8], v14))
    {
      goto LABEL_76;
    }

LABEL_56:
    if (*(a1 + 244) != v30)
    {
      *a4 = v30 ^ 1;
      *(a1 + 244) = v30;
    }

    goto LABEL_76;
  }

  *(&__p.__r_.__value_.__s + 23) = 9;
  __p.__r_.__value_.__r.__words[0] = *"High_Tput";
  LOWORD(__p.__r_.__value_.__r.__words[1]) = str_14[8];
  if (!strcasecmp(v8, &__p))
  {
    LOBYTE(v106[0]) = 0;
    result = prop::bbtrace::set(a2, a3);
    if (!result)
    {
      goto LABEL_236;
    }

    memset(&__p, 0, sizeof(__p));
    if (prop::bbtrace::get(a2, &__p))
    {
      v17 = util::convert<BOOL>(&__p, v106, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v17 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_59:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (!v17)
    {
      goto LABEL_235;
    }

    v32 = LOBYTE(v106[0]);
    if (*(a1 + 124) == LOBYTE(v106[0]))
    {
      goto LABEL_76;
    }

    *(a1 + 124) = v106[0];
    ctu::cf::update<char const*,BOOL>(*(a1 + 312), "High_Tput", v32, *MEMORY[0x277CBECE8], v16);
LABEL_74:
    if (*(a1 + 244) == 1)
    {
      *a4 = 4;
    }

    goto LABEL_76;
  }

  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "Data_Logging");
  if (!strcasecmp(v8, &__p))
  {
    LOBYTE(v106[0]) = 0;
    result = prop::bbtrace::set(a2, a3);
    if (!result)
    {
      goto LABEL_236;
    }

    memset(&__p, 0, sizeof(__p));
    if (prop::bbtrace::get(a2, &__p))
    {
      v19 = util::convert<BOOL>(&__p, v106, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v19 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_70:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (!v19)
    {
      goto LABEL_235;
    }

    v37 = LOBYTE(v106[0]);
    if (*(a1 + 125) == LOBYTE(v106[0]))
    {
      goto LABEL_76;
    }

    *(a1 + 125) = v106[0];
    ctu::cf::update<char const*,BOOL>(*(a1 + 312), "Data_Logging", v37, *MEMORY[0x277CBECE8], v18);
    goto LABEL_74;
  }

  v9 = diag::config::kTempEnabledKey[0];
  v10 = strlen(diag::config::kTempEnabledKey[0]);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v10 | 7) + 1;
    }

    p_p = operator new(v20);
    __p.__r_.__value_.__l.__size_ = v11;
    __p.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = p_p;
    goto LABEL_28;
  }

  *(&__p.__r_.__value_.__s + 23) = v10;
  p_p = &__p;
  if (v10)
  {
LABEL_28:
    memmove(p_p, v9, v11);
  }

  p_p->__r_.__value_.__s.__data_[v11] = 0;
  if (a2[23] >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v23 = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p.__r_.__value_.__r.__words[0];
  }

  v25 = strcasecmp(v21, v24);
  v26 = v25;
  if ((v22 & 0x80000000) == 0)
  {
    if (v25)
    {
      goto LABEL_37;
    }

LABEL_53:
    __p.__r_.__value_.__s.__data_[0] = -86;
    result = util::convert<BOOL>(a3, &__p, 0);
    if (!result)
    {
      goto LABEL_236;
    }

    if ((*(a1 + 245) & 1) == 0)
    {
      v30 = __p.__r_.__value_.__s.__data_[0];
      result = ctu::cf::update<char const*,BOOL>(*(a1 + 312), "Enabled", __p.__r_.__value_.__s.__data_[0], *MEMORY[0x277CBECE8], v31);
      if (!result)
      {
        goto LABEL_236;
      }

      goto LABEL_56;
    }

LABEL_235:
    result = 0;
    goto LABEL_236;
  }

  operator delete(v23);
  if (!v26)
  {
    goto LABEL_53;
  }

LABEL_37:
  *(&__p.__r_.__value_.__s + 23) = 4;
  strcpy(&__p, "Mode");
  if (a2[23] >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  if (!strcasecmp(v27, &__p))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
    if (util::convert<int>(a3, &__p, 0))
    {
      data = __p.__r_.__value_.__l.__data_;
      if (LODWORD(__p.__r_.__value_.__l.__data_) == 4)
      {
        if (*(a1 + 244) == 1)
        {
          v34 = *(a1 + 40);
          result = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_236;
          }

          v35 = *(a1 + 104);
          if (v35 > 4)
          {
            v36 = "Unknown";
          }

          else
          {
            v36 = off_278BB87D8[v35];
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = v36;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = "Passive With Logging Configuration";
          v74 = "Mode transitioning %s -> %s, enabled must be set to false";
          v75 = v34;
          goto LABEL_219;
        }

        v54 = *(a1 + 112);
        if ((v54 - 1) < 2)
        {
          goto LABEL_115;
        }

        v59 = *(a1 + 40);
        result = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_236;
        }

        v60 = *(a1 + 104);
        if (v60 > 4)
        {
          v61 = "Unknown";
        }

        else
        {
          v61 = off_278BB87D8[v60];
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
        *(__p.__r_.__value_.__r.__words + 4) = v61;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = "Passive With Logging Configuration";
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
        v110 = v54;
        v74 = "Mode transitioning %s -> %s, trace channel owner (%d) not set properly";
        v75 = v59;
        goto LABEL_233;
      }
    }

    else
    {
      data = -1431655766;
    }

    if (*(a1 + 104) != 4)
    {
      goto LABEL_115;
    }

    if (*(a1 + 244) == 1)
    {
      v41 = *(a1 + 40);
      result = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_236;
      }

      if (data > 3)
      {
        v42 = "Unknown";
      }

      else
      {
        v42 = off_278BB87B8[data];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = "Passive With Logging Configuration";
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v42;
      v74 = "Mode transitioning %s -> %s, enabled must be set to false";
LABEL_203:
      v75 = v41;
LABEL_219:
      v82 = 22;
LABEL_234:
      _os_log_error_impl(&dword_23C1C4000, v75, OS_LOG_TYPE_ERROR, v74, &__p, v82);
      goto LABEL_235;
    }

    v47 = *(a1 + 112);
    if ((v47 - 1) > 1)
    {
LABEL_115:
      result = prop::bbtrace::set(a2, a3);
      if (!result)
      {
        goto LABEL_236;
      }

      LODWORD(v104[0]) = -1431655766;
      result = prop::bbtrace::get<diag::config::Mode>(a2, v104);
      v108 = 5;
      if (!result)
      {
        goto LABEL_236;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, diag::config::kTempEnabledKey[0]);
      std::string::basic_string[abi:ne200100]<0>(v106, "false");
      v55 = DIAGTrace::setProperty_sync(a1, &__p, v106, &v108);
      if (v107 < 0)
      {
        operator delete(v106[0]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_119:
          if (!v55)
          {
            goto LABEL_235;
          }

LABEL_137:
          v62 = v104[0];
          if (*(a1 + 104) != LODWORD(v104[0]))
          {
            *(a1 + 104) = v104[0];
            *a4 = v108;
            result = 1;
            if ((v62 | 4) != 4)
            {
              *(a1 + 245) = 1;
            }

            goto LABEL_236;
          }

          goto LABEL_76;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v55)
      {
        goto LABEL_235;
      }

      goto LABEL_137;
    }

    v48 = *(a1 + 40);
    result = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_236;
    }

    if (data > 3)
    {
      v49 = "Unknown";
    }

    else
    {
      v49 = off_278BB87B8[data];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
    *(__p.__r_.__value_.__r.__words + 4) = "Passive With Logging Configuration";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v49;
    HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
    v110 = v47;
    v74 = "Mode transitioning %s -> %s and trace transport owner can't be %d";
    v75 = v48;
LABEL_233:
    v82 = 28;
    goto LABEL_234;
  }

  *(&__p.__r_.__value_.__s + 23) = 15;
  strcpy(&__p, "Reset_Mode_Boot");
  if (strcasecmp(v27, &__p))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "TraceOwnership");
    v28 = util::equal_nocase(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v28)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "TraceOwnership");
      result = DIAGTrace::setPropTraceOwnership_sync(a1, &__p, a3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v29 = result;
        operator delete(__p.__r_.__value_.__l.__data_);
        result = v29;
      }

      goto LABEL_236;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, diag::config::kTempModeKey[0]);
    v39 = util::equal_nocase(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v39)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
      if ((util::convert<int>(a3, &__p, 0) & 1) == 0 || LODWORD(__p.__r_.__value_.__l.__data_) > 4)
      {
        goto LABEL_235;
      }

      if (*(a1 + 104) != LODWORD(__p.__r_.__value_.__l.__data_))
      {
        if (*(a1 + 244) == 1)
        {
          v40 = *(a1 + 40);
          result = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_23C1C4000, v40, OS_LOG_TYPE_DEFAULT, "#I Cannot change mode while trace is enabled", &__p, 2u);
            goto LABEL_235;
          }
        }

        else
        {
          *(a1 + 104) = __p.__r_.__value_.__l.__data_;
          result = 1;
        }

LABEL_236:
        v86 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_76:
      result = 1;
      goto LABEL_236;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "History");
    v43 = util::equal_nocase(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v43)
    {
      result = prop::bbtrace::set(a2, a3);
      if (!result)
      {
        goto LABEL_236;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
      v45 = prop::bbtrace::get<int>(a2, &__p);
      v46 = __p.__r_.__value_.__l.__data_;
      if (*(a1 + 224) != LODWORD(__p.__r_.__value_.__l.__data_))
      {
        *(a1 + 224) = __p.__r_.__value_.__l.__data_;
        ctu::cf::update<char const*,int>(*(a1 + 312), "History", v46, *MEMORY[0x277CBECE8], v44);
LABEL_112:
        *a4 = 3;
        goto LABEL_113;
      }

      goto LABEL_113;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "MaxMemoryFileCount");
    v50 = util::equal_nocase(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v51 = v50;
      operator delete(__p.__r_.__value_.__l.__data_);
      v50 = v51;
    }

    if (v50)
    {
      result = prop::bbtrace::set(a2, a3);
      if (!result)
      {
        goto LABEL_236;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
      v45 = prop::bbtrace::get<unsigned int>(a2, &__p);
      v53 = __p.__r_.__value_.__l.__data_;
      if (*(a1 + 228) != LODWORD(__p.__r_.__value_.__l.__data_))
      {
        *(a1 + 228) = __p.__r_.__value_.__l.__data_;
        ctu::cf::update<char const*,unsigned int>(*(a1 + 312), "MaxMemoryFileCount", v53, *MEMORY[0x277CBECE8], v52);
        goto LABEL_112;
      }

LABEL_113:
      result = v45;
      goto LABEL_236;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "File");
    if (util::equal_nocase(a2, &__p))
    {
      v56 = 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_123;
      }

LABEL_148:
      if (!v56)
      {
        goto LABEL_124;
      }

      goto LABEL_149;
    }

    std::string::basic_string[abi:ne200100]<0>(v106, "File_Secondary");
    if (util::equal_nocase(a2, v106))
    {
      v56 = 1;
      if (v107 < 0)
      {
        goto LABEL_142;
      }

LABEL_147:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_148;
      }

LABEL_123:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v56)
      {
LABEL_124:
        std::string::basic_string[abi:ne200100]<0>(&__p, "File_Sleep");
        v57 = util::equal_nocase(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v57)
        {
          if (util::equal_nocase((a1 + 200), a3))
          {
            goto LABEL_76;
          }

          diag::getFileInfo(a3, &__p);
          if (v111)
          {
            v58 = 1;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_130;
            }

LABEL_206:
            if (!v58)
            {
              goto LABEL_186;
            }

            goto LABEL_207;
          }

          std::string::basic_string[abi:ne200100]<0>(v106, diag::config::kNoneDMCFile[0]);
          v58 = util::equal_nocase(a3, v106);
          if (v107 < 0)
          {
            operator delete(v106[0]);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_206;
            }
          }

          else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_206;
          }

LABEL_130:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v58)
          {
            goto LABEL_186;
          }

LABEL_207:
          result = prop::bbtrace::set(a2, a3);
          if (result)
          {
            v77 = *(a1 + 312);
            if (*(a3 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
            }

            else
            {
              __p = *a3;
            }

            v90 = ctu::cf::update<char const*,std::string>(v77, "File_Sleep", &__p, *MEMORY[0x277CBECE8], v76);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v90)
            {
              std::string::operator=((a1 + 200), a3);
              *a4 = 2;
              result = 1;
              goto LABEL_236;
            }

            goto LABEL_235;
          }

          goto LABEL_236;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, diag::config::kEnabledDuringSleepKey[0]);
        v64 = util::equal_nocase(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v65 = v64;
          operator delete(__p.__r_.__value_.__l.__data_);
          v64 = v65;
        }

        if (v64)
        {
          result = prop::bbtrace::set(a2, a3);
          if (!result)
          {
            goto LABEL_236;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
          result = prop::bbtrace::get<diag::config::DuringAPSleep>(a2, &__p);
          if (!result)
          {
            goto LABEL_236;
          }

          v67 = __p.__r_.__value_.__l.__data_;
          if (*(a1 + 120) == LODWORD(__p.__r_.__value_.__l.__data_))
          {
            goto LABEL_76;
          }

          *(a1 + 120) = __p.__r_.__value_.__l.__data_;
          result = ctu::cf::update<char const*,int>(*(a1 + 312), diag::config::kEnabledDuringSleepKey[0], v67, *MEMORY[0x277CBECE8], v66);
          goto LABEL_179;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, diag::config::kBufferingOnAPAwake[0]);
        v68 = util::equal_nocase(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v68)
        {
          result = prop::bbtrace::set(a2, a3);
          if (!result)
          {
            goto LABEL_236;
          }

          __p.__r_.__value_.__s.__data_[0] = -86;
          result = prop::bbtrace::get<BOOL>(a2, &__p);
          if (!result)
          {
            goto LABEL_236;
          }

          v70 = __p.__r_.__value_.__s.__data_[0];
          if (*(a1 + 246) == __p.__r_.__value_.__s.__data_[0])
          {
            goto LABEL_76;
          }

          *(a1 + 246) = __p.__r_.__value_.__s.__data_[0];
          result = ctu::cf::update<char const*,int>(*(a1 + 312), diag::config::kBufferingOnAPAwake[0], v70, *MEMORY[0x277CBECE8], v69);
LABEL_179:
          *a4 = 2;
          goto LABEL_236;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, diag::config::kStallDetectionKey[0]);
        v78 = util::equal_nocase(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v78)
        {
          result = prop::bbtrace::set(a2, a3);
          if (!result)
          {
            goto LABEL_236;
          }

          __p.__r_.__value_.__s.__data_[0] = -86;
          if (!prop::bbtrace::get<BOOL>(a2, &__p))
          {
            goto LABEL_235;
          }

          v80 = __p.__r_.__value_.__s.__data_[0];
          if (*(a1 + 232) == __p.__r_.__value_.__s.__data_[0])
          {
            goto LABEL_76;
          }

          *(a1 + 232) = __p.__r_.__value_.__s.__data_[0];
          v81 = ctu::cf::update<char const*,int>(*(a1 + 312), diag::config::kStallDetectionKey[0], v80, *MEMORY[0x277CBECE8], v79);
          DIAGTrace::stallDetection_sync(a1, *(a1 + 232));
          goto LABEL_246;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, diag::config::kStallDetectionRetriesKey[0]);
        v83 = util::equal_nocase(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v83)
        {
          result = prop::bbtrace::set(a2, a3);
          if (!result)
          {
            goto LABEL_236;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
          if (!prop::bbtrace::get<unsigned int>(a2, &__p))
          {
            goto LABEL_235;
          }

          v85 = __p.__r_.__value_.__l.__data_;
          if (*(a1 + 236) == LODWORD(__p.__r_.__value_.__l.__data_))
          {
            goto LABEL_76;
          }

          *(a1 + 236) = __p.__r_.__value_.__l.__data_;
          v81 = ctu::cf::update<char const*,unsigned int>(*(a1 + 312), diag::config::kStallDetectionRetriesKey[0], v85, *MEMORY[0x277CBECE8], v84);
          DIAGTrace::stallDetection_sync(a1, *(a1 + 232));
          goto LABEL_246;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, diag::config::kStallDetectionRecoveryKey[0]);
        v87 = util::equal_nocase(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v87)
        {
          result = prop::bbtrace::set(a2, a3);
          if (!result)
          {
            goto LABEL_236;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
          if (!prop::bbtrace::get<diag::config::Recovery>(a2, &__p))
          {
            goto LABEL_235;
          }

          v89 = __p.__r_.__value_.__l.__data_;
          if (*(a1 + 116) == LODWORD(__p.__r_.__value_.__l.__data_))
          {
            goto LABEL_76;
          }

          *(a1 + 116) = __p.__r_.__value_.__l.__data_;
          v81 = ctu::cf::update<char const*,unsigned int>(*(a1 + 312), diag::config::kStallDetectionRecoveryKey[0], v89, *MEMORY[0x277CBECE8], v88);
          DIAGTrace::stallDetection_sync(a1, *(a1 + 232));
LABEL_246:
          result = v81;
          goto LABEL_236;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "CellularLoggingAllowed");
        v91 = util::equal_nocase(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v91)
        {
          result = prop::bbtrace::set(a2, a3);
          if (result)
          {
            result = prop::bbtrace::get<BOOL>(a2, (a1 + 247));
          }

          goto LABEL_236;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "CarrierName1");
        v92 = util::equal_nocase(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v92)
        {
          result = prop::bbtrace::set(a2, a3);
          if (result)
          {
            result = prop::bbtrace::get(a2, a1 + 256);
          }

          goto LABEL_236;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "CarrierName2");
        v93 = util::equal_nocase(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v93)
        {
          result = prop::bbtrace::set(a2, a3);
          if (result)
          {
            result = prop::bbtrace::get(a2, a1 + 280);
          }

          goto LABEL_236;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "FileSize");
        v94 = util::equal_nocase(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v94)
        {
          result = prop::bbtrace::set(a2, a3);
          if (!result)
          {
            goto LABEL_236;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
          v45 = prop::bbtrace::get<unsigned int>(a2, &__p);
          v96 = __p.__r_.__value_.__l.__data_;
          if (*(a1 + 304) == LODWORD(__p.__r_.__value_.__l.__data_))
          {
            goto LABEL_113;
          }

          *(a1 + 304) = __p.__r_.__value_.__l.__data_;
          ctu::cf::update<char const*,unsigned int>(*(a1 + 312), "FileSize", v96, *MEMORY[0x277CBECE8], v95);
          goto LABEL_112;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "Retain_Previous_Trace");
        v97 = util::equal_nocase(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v97)
        {
          if (prop::bbtrace::set(a2, a3))
          {
            __p.__r_.__value_.__s.__data_[0] = 1;
            v81 = prop::bbtrace::get<BOOL>(a2, &__p);
            v99 = __p.__r_.__value_.__s.__data_[0];
            if (__p.__r_.__value_.__s.__data_[0] != *(a1 + 248))
            {
              *(a1 + 248) = __p.__r_.__value_.__s.__data_[0];
              ctu::cf::update<char const*,BOOL>(*(a1 + 312), "Retain_Previous_Trace", v99, *MEMORY[0x277CBECE8], v98);
            }

            goto LABEL_246;
          }

          v41 = *(a1 + 40);
          result = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_236;
          }

          if (a2[23] >= 0)
          {
            v102 = a2;
          }

          else
          {
            v102 = *a2;
          }

          if (*(a3 + 23) >= 0)
          {
            v103 = a3;
          }

          else
          {
            v103 = *a3;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = v102;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v103;
          v74 = "Failed to set property %s to %s";
        }

        else
        {
          v41 = *(a1 + 40);
          result = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_236;
          }

          if (a2[23] >= 0)
          {
            v100 = a2;
          }

          else
          {
            v100 = *a2;
          }

          if (*(a3 + 23) >= 0)
          {
            v101 = a3;
          }

          else
          {
            v101 = *a3;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = v100;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v101;
          v74 = "Unrecognized Set property request. Key=%s, Value=%s";
        }

        goto LABEL_203;
      }

LABEL_149:
      std::string::basic_string[abi:ne200100]<0>(&__p, "File");
      if (util::equal_nocase(a2, &__p) && util::equal_nocase((a1 + 128), a3))
      {
        v63 = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_182:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v63)
          {
            goto LABEL_76;
          }

          goto LABEL_183;
        }

LABEL_170:
        if (!v63)
        {
          goto LABEL_76;
        }

LABEL_183:
        diag::getFileInfo(a3, &__p);
        if (v111)
        {
          v71 = 1;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_185;
          }

LABEL_192:
          if (!v71)
          {
            goto LABEL_186;
          }

          goto LABEL_193;
        }

        std::string::basic_string[abi:ne200100]<0>(v106, diag::config::kNoneDMCFile[0]);
        v71 = util::equal_nocase(a3, v106);
        if (v107 < 0)
        {
          operator delete(v106[0]);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_192;
          }
        }

        else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_192;
        }

LABEL_185:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v71)
        {
LABEL_186:
          std::string::basic_string[abi:ne200100]<0>(&__p, "Setting DMC File Failed");
          std::string::basic_string[abi:ne200100]<0>(v106, "File does not exist");
          if (v107 < 0)
          {
            operator delete(v106[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_235;
        }

LABEL_193:
        result = DIAGTrace::ratifyDMCFile_sync(a1, a2, a3);
        if (!result)
        {
          goto LABEL_236;
        }

        *a4 = 2;
        if (capabilities::diag::supportsADPL(result))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, diag::config::kThroughputDMCFile[0]);
          v72 = DIAGTrace::checkOneOfDMCName_sync(a1, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            v73 = v72;
            operator delete(__p.__r_.__value_.__l.__data_);
            v72 = v73;
          }

          if (v72)
          {
            result = DIAGTrace::handleTputDMCforADPL_sync(a1, a4);
            goto LABEL_236;
          }
        }

        goto LABEL_76;
      }

      std::string::basic_string[abi:ne200100]<0>(v106, "File_Secondary");
      if (util::equal_nocase(a2, v106) && util::equal_nocase((a1 + 152), a3))
      {
        v63 = 0;
        if (v107 < 0)
        {
LABEL_181:
          operator delete(v106[0]);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_182;
          }

          goto LABEL_170;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v104, diag::config::kExtraDMCFileKey[0]);
        v63 = !util::equal_nocase(a2, v104) || !util::equal_nocase((a1 + 176), a3);
        if (v105 < 0)
        {
          operator delete(v104[0]);
          if (v107 < 0)
          {
            goto LABEL_181;
          }
        }

        else if (v107 < 0)
        {
          goto LABEL_181;
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_182;
      }

      goto LABEL_170;
    }

    std::string::basic_string[abi:ne200100]<0>(v104, diag::config::kExtraDMCFileKey[0]);
    v56 = util::equal_nocase(a2, v104);
    if (v105 < 0)
    {
      operator delete(v104[0]);
      if ((v107 & 0x80000000) == 0)
      {
        goto LABEL_147;
      }
    }

    else if ((v107 & 0x80000000) == 0)
    {
      goto LABEL_147;
    }

LABEL_142:
    operator delete(v106[0]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_123;
  }

  result = prop::bbtrace::set(a2, a3);
  if (!result)
  {
    goto LABEL_236;
  }

  v38 = *MEMORY[0x277D85DE8];

  return prop::bbtrace::get<abm::ResetTraceModeOnAPBoot>(a2, (a1 + 108));
}

void sub_23C1FE580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<BOOL>@<D0>(int a1@<W0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, a1);
  result = *&v4.__r_.__value_.__l.__data_;
  *a2 = v4;
  return result;
}

void sub_23C1FE63C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C1FE62CLL);
}

void sub_23C1FE648(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL DIAGTrace::setPropTraceOwnership_sync(uint64_t a1, char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 244) == 1)
  {
    v4 = *(a1 + 40);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v6 = "Setting trace ownership, enabled must be set to false";
LABEL_21:
      _os_log_error_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_ERROR, v6, &buf, 2u);
      result = 0;
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (prop::bbtrace::set(a2, a3))
  {
    memset(&buf, 0, sizeof(buf));
    v8 = -1431655766;
    if (prop::bbtrace::get(a2, &buf))
    {
      v15 = -1431655766;
      v9 = util::convert<int>(&buf, &v15, 0);
      v10 = v9;
      if (v9)
      {
        v8 = v15;
      }

      else
      {
        v8 = -1431655766;
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_18:
        operator delete(buf.__r_.__value_.__l.__data_);
        if ((v10 & 1) == 0)
        {
LABEL_19:
          v4 = *(a1 + 40);
          result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
          if (result)
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            v6 = "Failed to get trace ownership";
            goto LABEL_21;
          }

          goto LABEL_26;
        }

LABEL_15:
        v11 = *(a1 + 112);
        v12 = *(a1 + 40);
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (v8 == v11)
        {
          if (v13)
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v8;
            _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Trace ownership is already set to %d", &buf, 8u);
          }
        }

        else
        {
          if (v13)
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v11;
            LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 2) = v8;
            _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Setting trace ownership from %d to %d", &buf, 0xEu);
          }

          *(a1 + 112) = v8;
        }

        result = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v10 = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_18;
      }
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v4 = *(a1 + 40);
  result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v6 = "Failed to set trace ownership property!";
    goto LABEL_21;
  }

LABEL_26:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C1FE888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL DIAGTrace::getProperty_sync(uint64_t a1, char *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a2[23];
  if ((v6 & 0x80000000) == 0)
  {
    if (strcasecmp(a2, "Enabled") && strcasecmp(a2, diag::config::kTempEnabledKey[0]))
    {
      if (strcasecmp(a2, "Mode"))
      {
        if (strcasecmp(a2, "Reset_Mode_Boot"))
        {
          if (strcasecmp(a2, "TraceOwnership"))
          {
            if (strcasecmp(a2, "History"))
            {
              if (strcasecmp(a2, "MaxMemoryFileCount"))
              {
                if (strcasecmp(a2, "File"))
                {
                  if (strcasecmp(a2, "File_Secondary"))
                  {
                    if (strcasecmp(a2, diag::config::kExtraDMCFileKey[0]))
                    {
                      if (strcasecmp(a2, "File_Sleep"))
                      {
                        if (strcasecmp(a2, diag::config::kEnabledDuringSleepKey[0]))
                        {
                          if (strcasecmp(a2, diag::config::kBufferingOnAPAwake[0]))
                          {
                            if (strcasecmp(a2, diag::config::kStallDetectionKey[0]))
                            {
                              if (strcasecmp(a2, diag::config::kStallDetectionRetriesKey[0]))
                              {
                                if (strcasecmp(a2, diag::config::kStallDetectionRecoveryKey[0]))
                                {
                                  if (strcasecmp(a2, "State"))
                                  {
                                    if (strcasecmp(a2, "CellularLoggingAllowed"))
                                    {
                                      if (strcasecmp(a2, "CarrierName1"))
                                      {
                                        if (strcasecmp(a2, "CarrierName2"))
                                        {
                                          if (strcasecmp(a2, "High_Tput"))
                                          {
                                            if (strcasecmp(a2, "Data_Logging"))
                                            {
                                              v7 = a2;
                                              if (strcasecmp(a2, "FileSize"))
                                              {
                                                goto LABEL_25;
                                              }

                                              goto LABEL_53;
                                            }

LABEL_97:
                                            util::to_str<BOOL>(*(a1 + 125), &buf);
                                            goto LABEL_82;
                                          }

LABEL_96:
                                          util::to_str<BOOL>(*(a1 + 124), &buf);
                                          goto LABEL_82;
                                        }

                                        goto LABEL_95;
                                      }

                                      goto LABEL_94;
                                    }

LABEL_93:
                                    util::to_str<BOOL>(*(a1 + 247), &buf);
                                    goto LABEL_82;
                                  }

LABEL_89:
                                  std::string::basic_string[abi:ne200100]<0>(__p, "");
                                  DIAGTrace::dumpState_sync(a1, __p, 0, 10, &buf);
                                  std::string::operator=(a3, &buf);
                                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(buf.__r_.__value_.__l.__data_);
                                  }

                                  if (v28 < 0)
                                  {
                                    operator delete(__p[0]);
                                  }

                                  goto LABEL_69;
                                }

LABEL_85:
                                v24 = *(a1 + 116);
                                if (v24 <= 2)
                                {
                                  v25 = off_278BB8818;
                                  goto LABEL_78;
                                }

                                goto LABEL_87;
                              }

LABEL_81:
                              util::to_str<unsigned int>(*(a1 + 236), &buf);
                              goto LABEL_82;
                            }

LABEL_80:
                            util::to_str<BOOL>(*(a1 + 232), &buf);
                            goto LABEL_82;
                          }

LABEL_79:
                          util::to_str<BOOL>(*(a1 + 246), &buf);
                          goto LABEL_82;
                        }

LABEL_76:
                        v24 = *(a1 + 120);
                        if (v24 <= 2)
                        {
                          v25 = off_278BB8800;
LABEL_78:
                          v26 = v25[v24];
LABEL_88:
                          std::string::__assign_external(a3, v26);
                          goto LABEL_69;
                        }

LABEL_87:
                        v26 = "Unknown";
                        goto LABEL_88;
                      }

                      goto LABEL_74;
                    }

                    goto LABEL_73;
                  }

                  goto LABEL_72;
                }

LABEL_71:
                v23 = (a1 + 128);
LABEL_75:
                std::string::operator=(a3, v23);
LABEL_69:
                result = 1;
                goto LABEL_70;
              }

              goto LABEL_65;
            }

LABEL_59:
            v15 = *(a1 + 224);
            v16 = v15 < 0;
            if (!v15)
            {
              v15 = 2048;
            }

            if (v16)
            {
              v17 = 256;
            }

            else
            {
              v17 = v15;
            }

            v29[0] = 0;
            *(v29 + 7) = 0;
            std::to_string(&buf, v17);
            goto LABEL_66;
          }

          goto LABEL_58;
        }

        goto LABEL_57;
      }

      goto LABEL_56;
    }

LABEL_54:
    v11 = *(a1 + 244);
    v29[0] = 0;
    *(v29 + 7) = 0;
    std::to_string(&buf, v11);
LABEL_66:
    v29[0] = buf.__r_.__value_.__l.__size_;
    v19 = buf.__r_.__value_.__r.__words[0];
    *(v29 + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v20 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v21 = v29[0];
    *a3 = v19;
    *(a3 + 8) = v21;
    *(a3 + 15) = *(v29 + 7);
    *(a3 + 23) = v20;
    goto LABEL_69;
  }

  v7 = *a2;
  if (!strcasecmp(*a2, "Enabled") || !strcasecmp(v7, diag::config::kTempEnabledKey[0]))
  {
    goto LABEL_54;
  }

  if (!strcasecmp(v7, "Mode"))
  {
LABEL_56:
    v12 = *(a1 + 104);
    v29[0] = 0;
    *(v29 + 7) = 0;
    std::to_string(&buf, v12);
    goto LABEL_66;
  }

  if (!strcasecmp(v7, "Reset_Mode_Boot"))
  {
LABEL_57:
    v13 = *(a1 + 108);
    v29[0] = 0;
    *(v29 + 7) = 0;
    std::to_string(&buf, v13);
    goto LABEL_66;
  }

  if (!strcasecmp(v7, "TraceOwnership"))
  {
LABEL_58:
    v14 = *(a1 + 112);
    v29[0] = 0;
    *(v29 + 7) = 0;
    std::to_string(&buf, v14);
    goto LABEL_66;
  }

  if (!strcasecmp(v7, "History"))
  {
    goto LABEL_59;
  }

  if (!strcasecmp(v7, "MaxMemoryFileCount"))
  {
LABEL_65:
    v18 = *(a1 + 228);
    v29[0] = 0;
    *(v29 + 7) = 0;
    std::to_string(&buf, v18);
    goto LABEL_66;
  }

  if (!strcasecmp(v7, "File"))
  {
    goto LABEL_71;
  }

  if (!strcasecmp(v7, "File_Secondary"))
  {
LABEL_72:
    v23 = (a1 + 152);
    goto LABEL_75;
  }

  if (!strcasecmp(v7, diag::config::kExtraDMCFileKey[0]))
  {
LABEL_73:
    v23 = (a1 + 176);
    goto LABEL_75;
  }

  if (!strcasecmp(v7, "File_Sleep"))
  {
LABEL_74:
    v23 = (a1 + 200);
    goto LABEL_75;
  }

  if (!strcasecmp(v7, diag::config::kEnabledDuringSleepKey[0]))
  {
    goto LABEL_76;
  }

  if (!strcasecmp(v7, diag::config::kBufferingOnAPAwake[0]))
  {
    goto LABEL_79;
  }

  if (!strcasecmp(v7, diag::config::kStallDetectionKey[0]))
  {
    goto LABEL_80;
  }

  if (!strcasecmp(v7, diag::config::kStallDetectionRetriesKey[0]))
  {
    goto LABEL_81;
  }

  if (!strcasecmp(v7, diag::config::kStallDetectionRecoveryKey[0]))
  {
    goto LABEL_85;
  }

  if (!strcasecmp(v7, "State"))
  {
    goto LABEL_89;
  }

  if (!strcasecmp(v7, "CellularLoggingAllowed"))
  {
    goto LABEL_93;
  }

  if (!strcasecmp(v7, "CarrierName1"))
  {
LABEL_94:
    v23 = (a1 + 256);
    goto LABEL_75;
  }

  if (!strcasecmp(v7, "CarrierName2"))
  {
LABEL_95:
    v23 = (a1 + 280);
    goto LABEL_75;
  }

  if (!strcasecmp(v7, "High_Tput"))
  {
    goto LABEL_96;
  }

  if (!strcasecmp(v7, "Data_Logging"))
  {
    goto LABEL_97;
  }

  if (!strcasecmp(v7, "FileSize"))
  {
LABEL_53:
    util::to_str<unsigned int>(*(a1 + 304), &buf);
LABEL_82:
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = buf;
    goto LABEL_69;
  }

LABEL_25:
  if (!strcasecmp(v7, "Retain_Previous_Trace"))
  {
    util::to_str<BOOL>(*(a1 + 248), &buf);
    goto LABEL_82;
  }

  v8 = *(a1 + 40);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v10 = *a2;
    if (v6 >= 0)
    {
      v10 = a2;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v10;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Unrecognized Get property request. Key=%s", &buf, 0xCu);
    result = 0;
  }

LABEL_70:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C1FEFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<unsigned int>@<D0>(unsigned int a1@<W0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, a1);
  result = *&v4.__r_.__value_.__l.__data_;
  *a2 = v4;
  return result;
}

void sub_23C1FF10C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C1FF0FCLL);
}

void sub_23C1FF118(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DIAGTrace::dumpState_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, std::string::value_type a4@<W3>, _BYTE *a5@<X8>)
{
  v118 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v117[7] = v10;
  v117[8] = v10;
  v117[5] = v10;
  v117[6] = v10;
  v117[3] = v10;
  v117[4] = v10;
  v117[1] = v10;
  v117[2] = v10;
  v116 = v10;
  v117[0] = v10;
  *v114 = v10;
  v115 = v10;
  v112 = v10;
  v113 = v10;
  v110 = v10;
  v111 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v110);
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v110, "\n----- DIAG Trace Dump State -----\n", 35);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v110, "Enabled: ", 9);
  *(v11 + *(*v11 - 24) + 8) |= 1u;
  v12 = *(a1 + 244);
  v13 = MEMORY[0x23EECDF10]();
  v119.__r_.__value_.__s.__data_[0] = a4;
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v119, 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "QDSS: ", 6);
  *(v15 + *(*v15 - 24) + 8) |= 1u;
  v16 = *(a1 + 124);
  v17 = MEMORY[0x23EECDF10]();
  v119.__r_.__value_.__s.__data_[0] = a4;
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v119, 1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "ADPL: ", 6);
  *(v19 + *(*v19 - 24) + 8) |= 1u;
  v20 = *(a1 + 125);
  v21 = MEMORY[0x23EECDF10]();
  v119.__r_.__value_.__s.__data_[0] = a4;
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, &v119, 1);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "History: ", 9);
  DIAGTrace::historyAsString(a1, v108);
  if ((v109 & 0x80u) == 0)
  {
    v24 = v108;
  }

  else
  {
    v24 = v108[0];
  }

  if ((v109 & 0x80u) == 0)
  {
    v25 = v109;
  }

  else
  {
    v25 = v108[1];
  }

  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
  v119.__r_.__value_.__s.__data_[0] = a4;
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, &v119, 1);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Mode: ", 6);
  v29 = *(a1 + 104);
  if (v29 > 4)
  {
    v30 = "Unknown";
  }

  else
  {
    v30 = off_278BB87D8[v29];
  }

  v31 = strlen(v30);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v119.__r_.__value_.__s.__data_[0] = a4;
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, &v119, 1);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Reset Mode On AP Boot  : ", 25);
  v35 = *(a1 + 108);
  if (v35 == 1)
  {
    v36 = 9;
    v107 = 9;
    qmemcpy(v106, "Last_Used", 9);
  }

  else if (v35)
  {
    v36 = 11;
    v107 = 11;
    qmemcpy(v106, "UnSpecified", 11);
  }

  else
  {
    v36 = 7;
    v107 = 7;
    qmemcpy(v106, "Default", 7);
  }

  *(v106 + v36) = 0;
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v106, v36);
  v119.__r_.__value_.__s.__data_[0] = a4;
  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, &v119, 1);
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Trace Ownership: ", 17);
  std::to_string(&v119, *(a1 + 112));
  v105 = v119;
  if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v105;
  }

  else
  {
    v40 = v105.__r_.__value_.__r.__words[0];
  }

  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v105.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v105.__r_.__value_.__l.__size_;
  }

  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, size);
  v119.__r_.__value_.__s.__data_[0] = a4;
  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, &v119, 1);
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "DMC 1: ", 7);
  v45 = *(a1 + 151);
  if (v45 >= 0)
  {
    v46 = a1 + 128;
  }

  else
  {
    v46 = *(a1 + 128);
  }

  if (v45 >= 0)
  {
    v47 = *(a1 + 151);
  }

  else
  {
    v47 = *(a1 + 136);
  }

  v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
  v119.__r_.__value_.__s.__data_[0] = a4;
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, &v119, 1);
  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "DMC 2: ", 7);
  v51 = *(a1 + 175);
  if (v51 >= 0)
  {
    v52 = a1 + 152;
  }

  else
  {
    v52 = *(a1 + 152);
  }

  if (v51 >= 0)
  {
    v53 = *(a1 + 175);
  }

  else
  {
    v53 = *(a1 + 160);
  }

  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v52, v53);
  v119.__r_.__value_.__s.__data_[0] = a4;
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, &v119, 1);
  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "DMC 3: ", 7);
  v57 = *(a1 + 199);
  if (v57 >= 0)
  {
    v58 = a1 + 176;
  }

  else
  {
    v58 = *(a1 + 176);
  }

  if (v57 >= 0)
  {
    v59 = *(a1 + 199);
  }

  else
  {
    v59 = *(a1 + 184);
  }

  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v58, v59);
  v119.__r_.__value_.__s.__data_[0] = a4;
  v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, &v119, 1);
  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "Enabled During Sleep: ", 22);
  v63 = *(a1 + 120);
  if (v63 > 2)
  {
    v64 = "Unknown";
  }

  else
  {
    v64 = off_278BB8800[v63];
  }

  v65 = strlen(v64);
  v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v64, v65);
  v119.__r_.__value_.__s.__data_[0] = a4;
  v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, &v119, 1);
  v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Stall Detection: ", 17);
  v69 = MEMORY[0x23EECDF10](v68, *(a1 + 232));
  v119.__r_.__value_.__s.__data_[0] = a4;
  v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, &v119, 1);
  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Stall Retries: ", 15);
  v72 = MEMORY[0x23EECDF40](v71, *(a1 + 236));
  v119.__r_.__value_.__s.__data_[0] = a4;
  v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, &v119, 1);
  v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "Stall Recovery: ", 16);
  v75 = *(a1 + 116);
  if (v75 > 2)
  {
    v76 = "Unknown";
  }

  else
  {
    v76 = off_278BB8818[v75];
  }

  v77 = strlen(v76);
  v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v76, v77);
  v119.__r_.__value_.__s.__data_[0] = a4;
  v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, &v119, 1);
  v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "Max memory file count: ", 23);
  v81 = *(a1 + 228);
  if (v81)
  {
    std::to_string(&v119, v81);
    __p = v119;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 8;
    strcpy(&__p, "No limit");
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
    v83 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v83 = __p.__r_.__value_.__l.__size_;
  }

  v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, p_p, v83);
  v119.__r_.__value_.__s.__data_[0] = a4;
  v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, &v119, 1);
  v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "File Size : ", 12);
  v87 = MEMORY[0x23EECDF40](v86, *(a1 + 304));
  v119.__r_.__value_.__s.__data_[0] = a4;
  v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, &v119, 1);
  v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Retain Previous Trace: ", 23);
  *(v89 + *(*v89 - 24) + 8) |= 1u;
  v90 = *(a1 + 248);
  v91 = MEMORY[0x23EECDF10]();
  v119.__r_.__value_.__s.__data_[0] = a4;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, &v119, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_58:
      if ((v107 & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_65;
    }
  }

  else if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  operator delete(v105.__r_.__value_.__l.__data_);
  if ((v107 & 0x80000000) == 0)
  {
LABEL_59:
    if ((v109 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_66;
  }

LABEL_65:
  operator delete(v106[0]);
  if ((v109 & 0x80000000) == 0)
  {
LABEL_60:
    v92 = *(a2 + 23);
    if ((v92 & 0x8000000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_67;
  }

LABEL_66:
  operator delete(v108[0]);
  v92 = *(a2 + 23);
  if ((v92 & 0x8000000000000000) == 0)
  {
LABEL_61:
    if (!v92)
    {
      goto LABEL_75;
    }

    goto LABEL_68;
  }

LABEL_67:
  if (!*(a2 + 8))
  {
    goto LABEL_75;
  }

LABEL_68:
  v119.__r_.__value_.__s.__data_[0] = a4;
  v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v110, &v119, 1);
  v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "Reason: ", 8);
  v95 = *(a2 + 23);
  if (v95 >= 0)
  {
    v96 = a2;
  }

  else
  {
    v96 = *a2;
  }

  if (v95 >= 0)
  {
    v97 = *(a2 + 23);
  }

  else
  {
    v97 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, v96, v97);
LABEL_75:
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v110, "\n---------------------------------\n", 35);
  }

  if ((BYTE8(v116) & 0x10) != 0)
  {
    v99 = v116;
    if (v116 < *(&v113 + 1))
    {
      *&v116 = *(&v113 + 1);
      v99 = *(&v113 + 1);
    }

    v100 = v113;
    v98 = v99 - v113;
    if ((v99 - v113) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_95;
    }
  }

  else
  {
    if ((BYTE8(v116) & 8) == 0)
    {
      v98 = 0;
      a5[23] = 0;
      goto LABEL_91;
    }

    v100 = *(&v111 + 1);
    v98 = *(&v112 + 1) - *(&v111 + 1);
    if (*(&v112 + 1) - *(&v111 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_95:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v98 >= 0x17)
  {
    if ((v98 | 7) == 0x17)
    {
      v101 = 25;
    }

    else
    {
      v101 = (v98 | 7) + 1;
    }

    v102 = operator new(v101);
    *(a5 + 1) = v98;
    *(a5 + 2) = v101 | 0x8000000000000000;
    *a5 = v102;
    a5 = v102;
    goto LABEL_90;
  }

  a5[23] = v98;
  if (v98)
  {
LABEL_90:
    memmove(a5, v100, v98);
  }

LABEL_91:
  a5[v98] = 0;
  *&v110 = *MEMORY[0x277D82828];
  *(&v110 + *(v110 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v110 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v114[1]);
  }

  *(&v110 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v111);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v117);
}

void sub_23C1FF9F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C1FF6A8);
}

void sub_23C1FFA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a34 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a23);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_5:
    std::ostringstream::~ostringstream(&a35);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a29);
  std::ostringstream::~ostringstream(&a35);
  _Unwind_Resume(a1);
}

uint64_t DIAGTrace::historyAsString@<X0>(uint64_t this@<X0>, char *a2@<X8>)
{
  v2 = a2;
  if (!*(this + 224))
  {
    a2[23] = 8;
    strcpy(a2, "Infinite");
    return this;
  }

  v3 = this;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[7] = v4;
  v18[8] = v4;
  v18[5] = v4;
  v18[6] = v4;
  v18[3] = v4;
  v18[4] = v4;
  v18[1] = v4;
  v18[2] = v4;
  v17 = v4;
  v18[0] = v4;
  *__p = v4;
  v16 = v4;
  v13 = v4;
  *__src = v4;
  v11 = v4;
  v12 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  v5 = MEMORY[0x23EECDF30](&v11, *(v3 + 224));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " MB", 3);
  if ((BYTE8(v17) & 0x10) != 0)
  {
    v7 = v17;
    if (v17 < __src[1])
    {
      *&v17 = __src[1];
      v7 = __src[1];
    }

    v8 = __src[0];
    v6 = v7 - __src[0];
    if ((v7 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v17) & 8) == 0)
    {
      v6 = 0;
      v2[23] = 0;
      goto LABEL_17;
    }

    v8 = *(&v12 + 1);
    v6 = *(&v13 + 1) - *(&v12 + 1);
    if (*(&v13 + 1) - *(&v12 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
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
    *(v2 + 1) = v6;
    *(v2 + 2) = v9 | 0x8000000000000000;
    *v2 = v10;
    v2 = v10;
  }

  else
  {
    v2[23] = v6;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  memmove(v2, v8, v6);
LABEL_17:
  v2[v6] = 0;
  *&v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v11 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v11 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v12);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v18);
}