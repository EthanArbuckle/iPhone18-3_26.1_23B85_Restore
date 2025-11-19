void sub_23C224B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3abm14SystemLogsTask9init_syncEv_block_invoke_6(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_41;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v5);
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      goto LABEL_41;
    }
  }

  v11 = *(v7 + 80);
  if (v11)
  {
    dispatch_retain(*(v7 + 80));
    dispatch_group_enter(v11);
  }

  object = xpc_null_create();
  v12 = *(v7 + 136);
  if (v12)
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    if (v13 || (v13 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v13) == MEMORY[0x277D86468])
      {
        xpc_retain(v13);
        v14 = v13;
      }

      else
      {
        v14 = xpc_null_create();
      }
    }

    else
    {
      v14 = xpc_null_create();
      v13 = 0;
    }

    xpc_release(v13);
    v15 = xpc_null_create();
    v16 = object;
    object = v14;
    xpc_release(v16);
    xpc_release(v15);
    v17 = xpc_int64_create(v12);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(object, "Mode", v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
  }

  v19 = *(v7 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, &object);
    v20 = SHIBYTE(v29) >= 0 ? __p : __p[0];
    *buf = 136315138;
    v35 = v20;
    _os_log_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_DEFAULT, "#I Snapshot - running: %s", buf, 0xCu);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v21 = object;
  if (object)
  {
    xpc_retain(object);
    v22 = *a4;
    if (*a4)
    {
LABEL_27:
      v23 = _Block_copy(v22);
      goto LABEL_30;
    }
  }

  else
  {
    v21 = xpc_null_create();
    v22 = *a4;
    if (*a4)
    {
      goto LABEL_27;
    }
  }

  v23 = 0;
LABEL_30:
  v24 = *(a4 + 8);
  __p[0] = MEMORY[0x277D85DD0];
  __p[1] = 3321888768;
  v29 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke;
  v30 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
  if (!v23)
  {
    v33 = 0;
    aBlock = 0;
    v32 = v21;
    if (v21)
    {
      goto LABEL_32;
    }

LABEL_34:
    v32 = xpc_null_create();
    goto LABEL_35;
  }

  v25 = _Block_copy(v23);
  v33 = 0;
  aBlock = v25;
  v32 = v21;
  if (!v21)
  {
    goto LABEL_34;
  }

LABEL_32:
  xpc_retain(v21);
LABEL_35:
  dispatch_async(v24, __p);
  xpc_release(v32);
  v32 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v23)
  {
    _Block_release(v23);
  }

  xpc_release(v21);
  xpc_release(object);
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

LABEL_41:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_23C224F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t abm::SystemLogsTask::askForConfirmation_sync()
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 2;
  }

  result = TelephonyUtilIsCarrierBuild();
  if (result)
  {
    return 2;
  }

  return result;
}

void abm::SystemLogsTask::convertSysdiagnoseTimeFormat_sync(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  memset(v34, 170, sizeof(v34));
  Timestamp::Timestamp(v34);
  v33.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v33.tm_mon = v4;
  *&v33.tm_isdst = v4;
  *&v33.tm_sec = v4;
  v31 = v4;
  v30 = v4;
  v29 = v4;
  v28 = v4;
  v27 = v4;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v24 = v4;
  v23 = v4;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  *&v21[80] = v4;
  *&v21[64] = v4;
  *&v21[48] = v4;
  *&v21[32] = v4;
  *&v21[16] = v4;
  *v21 = v4;
  v20 = v4;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0;
  v5 = MEMORY[0x277D82898] + 64;
  v22[0] = MEMORY[0x277D82898] + 64;
  v6 = MEMORY[0x277D82820];
  v7 = *(MEMORY[0x277D82820] + 16);
  v19 = *(MEMORY[0x277D82820] + 8);
  *(&v19 + *(v19 - 24)) = v7;
  *&v20 = 0;
  v8 = (&v19 + *(v19 - 24));
  std::ios_base::init(v8, &v20 + 8);
  v9 = MEMORY[0x277D82898] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v19 = v9;
  v22[0] = v5;
  v10 = MEMORY[0x277D82868] + 16;
  *(&v20 + 1) = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EECE100](v21);
  memset(&v21[8], 0, 80);
  v11 = MEMORY[0x277D82878] + 16;
  *(&v20 + 1) = MEMORY[0x277D82878] + 16;
  *&v21[88] = 8;
  if (&v21[56] != a1)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__assign_no_alias<true>(&v21[56], *a1, *(a1 + 8));
    }

    else
    {
      *&v21[56] = *a1;
      *&v21[72] = *(a1 + 16);
    }
  }

  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v20 + 8);
  v37[0] = -86;
  MEMORY[0x23EECDE90](v37, &v19, 0);
  if (v37[0] == 1)
  {
    v36 = 0;
    std::ios_base::getloc((&v19 + *(v19 - 24)));
    std::locale::use_facet(&v35, MEMORY[0x277D826C8]);
    std::locale::~locale(&v35);
    v12 = *&v21[*(v19 - 24) + 16];
    std::time_get<char,std::istreambuf_iterator<char>>::get();
    std::ios_base::clear((&v19 + *(v19 - 24)), *&v21[*(v19 - 24) + 8] | v36);
  }

  v33.tm_isdst = -1;
  v13 = mktime(&v33);
  v14 = v34[1];
  if (v34[1])
  {
    while (1)
    {
      while (1)
      {
        v16 = v14;
        v17 = *(v14 + 32);
        if (v17 < 1)
        {
          break;
        }

        v14 = *v16;
        v15 = v16;
        if (!*v16)
        {
          goto LABEL_14;
        }
      }

      if ((v17 & 0x80000000) == 0)
      {
        break;
      }

      v14 = v16[1];
      if (!v14)
      {
        v15 = v16 + 1;
        goto LABEL_14;
      }
    }

    v18 = v16;
  }

  else
  {
    v15 = &v34[1];
    v16 = &v34[1];
LABEL_14:
    v18 = operator new(0x38uLL);
    v18[8] = 0;
    *(v18 + 5) = 0;
    *(v18 + 6) = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v16;
    *v15 = v18;
    if (*v34[0])
    {
      v34[0] = *v34[0];
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v34[1], v18);
    ++v34[2];
  }

  *(v18 + 5) = v13;
  *(v18 + 6) = 0;
  Timestamp::asString(v34, 0, 16, a2);
  v19 = *v6;
  *(&v19 + *(v19 - 24)) = v6[3];
  *(&v20 + 1) = v11;
  if ((v21[79] & 0x80000000) != 0)
  {
    operator delete(*&v21[56]);
  }

  *(&v20 + 1) = v10;
  std::locale::~locale(v21);
  std::istream::~istream();
  MEMORY[0x23EECE150](v22);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v34, v34[1]);
}

void sub_23C225484(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 112));
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((&a9 + *(a9 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x23C2252E0);
}

void sub_23C2254D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::istringstream::~istringstream(&a9);
  MEMORY[0x23EECE150](v24);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v25 - 136, *(v25 - 128));
  _Unwind_Resume(a1);
}

void abm::SystemLogsTask::snapshotSysdiagnose_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v82 = *MEMORY[0x277D85DE8];
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  memset(v75, 170, sizeof(v75));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v74, *a2, *(a2 + 8));
  }

  else
  {
    v74 = *a2;
  }

  abm::SystemLogsTask::convertSysdiagnoseTimeFormat_sync(&v74, v75);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  memset(&v73, 170, sizeof(v73));
  config::hw::product(v7);
  util::strip_non_alpha(&v73);
  v72 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v71[7] = v8;
  v71[8] = v8;
  v71[5] = v8;
  v71[6] = v8;
  v71[3] = v8;
  v71[4] = v8;
  v71[1] = v8;
  v71[2] = v8;
  v70 = v8;
  v71[0] = v8;
  *v68 = v8;
  v69 = v8;
  v66 = v8;
  v67 = v8;
  v64 = v8;
  v65 = v8;
  v63 = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v63);
  v59 = a1;
  v9 = strlen(abm::trace::kSysdiagnosePrefix[0]);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, abm::trace::kSysdiagnosePrefix[0], v9);
  if (SHIBYTE(v75[2]) >= 0)
  {
    v11 = v75;
  }

  else
  {
    v11 = v75[0];
  }

  if (SHIBYTE(v75[2]) >= 0)
  {
    v12 = HIBYTE(v75[2]);
  }

  else
  {
    v12 = v75[1];
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
  v14 = config::hw::watch(v13);
  if (v14)
  {
    v15 = "-Watch_OS-";
  }

  else
  {
    v15 = "-iPhone_OS-";
  }

  if (v14)
  {
    v16 = 10;
  }

  else
  {
    v16 = 11;
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  v18 = SHIBYTE(v73.__r_.__value_.__r.__words[2]);
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v73.__r_.__value_.__l.__size_;
  }

  v20 = size + 1;
  if (size + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v17;
  if (v20 < 0x17)
  {
    v81 = 0;
    __dst = 0uLL;
    p_dst = &__dst;
    HIBYTE(v81) = size + 1;
    if (!size)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if ((v20 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v20 | 7) + 1;
    }

    p_dst = operator new(v22);
    *(&__dst + 1) = size + 1;
    v81 = v22 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  if (v18 >= 0)
  {
    v24 = &v73;
  }

  else
  {
    v24 = v73.__r_.__value_.__r.__words[0];
  }

  memmove(p_dst, v24, size);
LABEL_32:
  *(p_dst + size) = 45;
  if (v81 >= 0)
  {
    v25 = &__dst;
  }

  else
  {
    v25 = __dst;
  }

  if (v81 >= 0)
  {
    v26 = HIBYTE(v81);
  }

  else
  {
    v26 = *(&__dst + 1);
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v25, v26);
  config::build::version(v27);
  if ((v62 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v62 & 0x80u) == 0)
  {
    v29 = v62;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "--", 2);
  v32 = *(a3 + 23);
  if (v32 >= 0)
  {
    v33 = a3;
  }

  else
  {
    v33 = *a3;
  }

  if (v32 >= 0)
  {
    v34 = *(a3 + 23);
  }

  else
  {
    v34 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
  if (v62 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v81) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  else if ((SHIBYTE(v81) & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

  operator delete(__dst);
LABEL_52:
  v35 = objc_autoreleasePoolPush();
  v78[0] = @"logarchive";
  v76[0] = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D24490]];
  v77[0] = &unk_284F00F98;
  v76[1] = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D244A0]];
  v77[1] = &unk_284F00F98;
  v76[2] = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D24470]];
  v77[2] = &unk_284F00F98;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v78[1] = @"basebandMeta";
  v79[0] = v36;
  v79[1] = &unk_284F00FC8;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
  v38 = [MEMORY[0x277CBEB38] dictionary];
  v39 = MEMORY[0x277CCACA8];
  if ((BYTE8(v70) & 0x10) != 0)
  {
    v42 = v70;
    if (v70 < *(&v67 + 1))
    {
      *&v70 = *(&v67 + 1);
      v42 = *(&v67 + 1);
    }

    v43 = v35;
    v44 = v67;
    v40 = v42 - v67;
    if ((v42 - v67) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_92;
    }
  }

  else
  {
    if ((BYTE8(v70) & 8) == 0)
    {
      v40 = 0;
      HIBYTE(v81) = 0;
      v41 = &__dst;
      goto LABEL_69;
    }

    v43 = v35;
    v44 = *(&v65 + 1);
    v40 = *(&v66 + 1) - *(&v65 + 1);
    if (*(&v66 + 1) - *(&v65 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_92:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v40 >= 0x17)
  {
    if ((v40 | 7) == 0x17)
    {
      v45 = 25;
    }

    else
    {
      v45 = (v40 | 7) + 1;
    }

    v41 = operator new(v45);
    *(&__dst + 1) = v40;
    v81 = v45 | 0x8000000000000000;
    *&__dst = v41;
  }

  else
  {
    HIBYTE(v81) = v40;
    v41 = &__dst;
    if (!v40)
    {
      goto LABEL_68;
    }
  }

  memmove(v41, v44, v40);
LABEL_68:
  v35 = v43;
LABEL_69:
  *(v41 + v40) = 0;
  if (v81 >= 0)
  {
    v46 = &__dst;
  }

  else
  {
    v46 = __dst;
  }

  [v38 setObject:objc_msgSend(v39 forKeyedSubscript:{"stringWithUTF8String:", v46), @"archiveName"}];
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__dst);
  }

  [v38 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"shouldCreateTarBall"];
  [v38 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"getMetrics"];
  [v38 setValue:v37 forKey:@"capOverride"];
  v47 = *(v59 + 40);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [objc_msgSend(v38 "description")];
    LODWORD(__dst) = 136315138;
    *(&__dst + 4) = v48;
    _os_log_impl(&dword_23C1C4000, v47, OS_LOG_TYPE_DEFAULT, "#I Snapshot - starting: collecting sysdiagnose with metaData: %s", &__dst, 0xCu);
  }

  v60 = 0;
  __p[0] = 0;
  v49 = [MEMORY[0x277D82CB0] sysdiagnoseWithMetadata:v38 withMetrics:&v60 withError:__p];
  v50 = __p[0];
  if (__p[0])
  {
    v51 = *(v59 + 40);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v58 = [objc_msgSend(v50 "description")];
      LODWORD(__dst) = 136315138;
      *(&__dst + 4) = v58;
      _os_log_error_impl(&dword_23C1C4000, v51, OS_LOG_TYPE_ERROR, "Error collecting sysdiagnose: %s", &__dst, 0xCu);
    }
  }

  else
  {
    v54 = v60;
    if (v60)
    {
      v55 = *(v59 + 40);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = [objc_msgSend(v54 "description")];
        LODWORD(__dst) = 136315138;
        *(&__dst + 4) = v56;
        _os_log_impl(&dword_23C1C4000, v55, OS_LOG_TYPE_DEFAULT, "#I Sysdiagnose metrics: %s", &__dst, 0xCu);
      }
    }
  }

  if (v49)
  {
    std::string::__assign_external(a4, [v49 UTF8String]);
  }

  objc_autoreleasePoolPop(v35);
  *&v63 = *MEMORY[0x277D82818];
  v52 = *(MEMORY[0x277D82818] + 72);
  *(&v63 + *(v63 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v64 = v52;
  *(&v64 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v69) < 0)
  {
    operator delete(v68[1]);
  }

  *(&v64 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v65);
  std::iostream::~basic_iostream();
  MEMORY[0x23EECE150](v71);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v75[2]) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }
  }

  else if ((SHIBYTE(v75[2]) & 0x80000000) == 0)
  {
LABEL_85:
    v53 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v75[0]);
  v57 = *MEMORY[0x277D85DE8];
}

void sub_23C225D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18, MEMORY[0x277D82818]);
  MEMORY[0x23EECE150](&a34);
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (*(v59 - 209) < 0)
  {
    operator delete(*(v59 - 232));
  }

  if (*(v58 + 23) < 0)
  {
    operator delete(*v58);
  }

  _Unwind_Resume(a1);
}

void abm::SystemLogsTask::snapshotOsLogArchive_sync(const std::string *a1@<X2>, uint64_t a2@<X0>, const std::string::value_type *a3@<X1>, uint64_t a4@<X3>, NSObject **a5@<X4>, std::string *a6@<X8>)
{
  v8 = a1;
  v74 = *MEMORY[0x277D85DE8];
  v70 = 0;
  if (util::convert<unsigned long>(a1, &v70, 0))
  {
    memset(a6, 170, sizeof(std::string));
    v12 = abm::trace::kLogDirPrefix[0];
    v13 = strlen(abm::trace::kLogDirPrefix[0]);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
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

      p_dst = operator new(v17);
      __dst.__r_.__value_.__l.__size_ = v14;
      __dst.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v13;
      p_dst = &__dst;
      if (!v13)
      {
LABEL_16:
        p_dst->__r_.__value_.__s.__data_[v14] = 0;
        v18 = *(a4 + 23);
        if (v18 >= 0)
        {
          v19 = a4;
        }

        else
        {
          v19 = *a4;
        }

        if (v18 >= 0)
        {
          v20 = *(a4 + 23);
        }

        else
        {
          v20 = *(a4 + 8);
        }

        v21 = std::string::insert(&__dst, 0, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v69.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v69.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = a3[23];
        if (v23 >= 0)
        {
          v24 = a3;
        }

        else
        {
          v24 = *a3;
        }

        if (v23 >= 0)
        {
          v25 = *(a3 + 23);
        }

        else
        {
          v25 = *(a3 + 1);
        }

        v26 = std::string::append(&v69, v24, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        *&buf.tm_mon = *(&v26->__r_.__value_.__l + 2);
        *&buf.tm_sec = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = strlen(abm::trace::kLogArchiveSuffix[0]);
        v29 = std::string::append(&buf, abm::trace::kLogArchiveSuffix[0], v28);
        v30 = *&v29->__r_.__value_.__l.__data_;
        a6->__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&a6->__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(buf.tm_year) < 0)
        {
          operator delete(*&buf.tm_sec);
          if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_30:
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_35;
          }
        }

        else if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        operator delete(v69.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_31:
          memset(&v69, 170, sizeof(v69));
          if ((SHIBYTE(a6->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_32:
            v67 = *a6;
            goto LABEL_37;
          }

LABEL_36:
          std::string::__init_copy_ctor_external(&v67, a6->__r_.__value_.__l.__data_, a6->__r_.__value_.__l.__size_);
LABEL_37:
          support::fs::createUniquePath(&v67, &v69);
          if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v67.__r_.__value_.__l.__data_);
          }

          buf.tm_zone = 0xAAAAAAAAAAAAAAAALL;
          *&v31 = 0xAAAAAAAAAAAAAAAALL;
          *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&buf.tm_mon = v31;
          *&buf.tm_isdst = v31;
          *&buf.tm_sec = v31;
          if (a3[23] < 0)
          {
            a3 = *a3;
          }

          if (strptime(a3, "%Y-%m-%d-%H-%M-%S", &buf))
          {
            buf.tm_isdst = -1;
            v32 = mktime(&buf);
            if (v32 == -1)
            {
              v33 = -1;
            }

            else
            {
              v33 = v32 - v70;
            }
          }

          else
          {
            v33 = 0;
          }

          xdict = 0xAAAAAAAAAAAAAAAALL;
          v34 = xpc_dictionary_create(0, 0, 0);
          v35 = v34;
          if (v34)
          {
            xdict = v34;
          }

          else
          {
            v35 = xpc_null_create();
            xdict = v35;
            if (!v35)
            {
              v36 = xpc_null_create();
              v35 = 0;
              goto LABEL_53;
            }
          }

          if (MEMORY[0x23EECEE80](v35) == MEMORY[0x277D86468])
          {
            xpc_retain(v35);
            goto LABEL_54;
          }

          v36 = xpc_null_create();
LABEL_53:
          xdict = v36;
LABEL_54:
          xpc_release(v35);
          v37 = xpc_BOOL_create(1);
          if (!v37)
          {
            v37 = xpc_null_create();
          }

          xpc_dictionary_set_value(xdict, *MEMORY[0x277D24480], v37);
          v38 = xpc_null_create();
          xpc_release(v37);
          xpc_release(v38);
          if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &v69;
          }

          else
          {
            v39 = v69.__r_.__value_.__r.__words[0];
          }

          v40 = xpc_string_create(v39);
          if (!v40)
          {
            v40 = xpc_null_create();
          }

          xpc_dictionary_set_value(xdict, *MEMORY[0x277D24498], v40);
          v41 = xpc_null_create();
          xpc_release(v40);
          xpc_release(v41);
          v42 = xpc_int64_create(v33);
          if (!v42)
          {
            v42 = xpc_null_create();
          }

          xpc_dictionary_set_value(xdict, *MEMORY[0x277D24478], v42);
          v43 = xpc_null_create();
          xpc_release(v42);
          xpc_release(v43);
          v44 = xpc_int64_create(v33);
          if (!v44)
          {
            v44 = xpc_null_create();
          }

          xpc_dictionary_set_value(xdict, *MEMORY[0x277D24488], v44);
          v45 = xpc_null_create();
          xpc_release(v44);
          xpc_release(v45);
          v46 = xpc_int64_create(v33);
          if (!v46)
          {
            v46 = xpc_null_create();
          }

          xpc_dictionary_set_value(xdict, *MEMORY[0x277D244A8], v46);
          v47 = xpc_null_create();
          xpc_release(v46);
          xpc_release(v47);
          v48 = *(a2 + 40);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            xpc::object::to_string(&__dst, &xdict);
            v49 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
            *v71 = 136315138;
            v72 = v49;
            _os_log_impl(&dword_23C1C4000, v48, OS_LOG_TYPE_DEFAULT, "#I Snapshot - starting: collecting systemlogs archive with parameters: %s", v71, 0xCu);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }
          }

          v60 = MEMORY[0x277D85DD0];
          v61 = 3321888768;
          v62 = ___ZN3abm14SystemLogsTask25snapshotOsLogArchive_syncENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_S7_N8dispatch13group_sessionE_block_invoke;
          v63 = &__block_descriptor_48_e8_40c30_ZTSN8dispatch13group_sessionE_e9_v16__0r_8l;
          v50 = *a5;
          v64 = a2;
          group = v50;
          if (v50)
          {
            dispatch_retain(v50);
            dispatch_group_enter(group);
          }

          if (OSLogCreateArchiveWithDictionary())
          {
            if (SHIBYTE(a6->__r_.__value_.__r.__words[2]) < 0)
            {
              *a6->__r_.__value_.__l.__data_ = 0;
              a6->__r_.__value_.__l.__size_ = 0;
            }

            else
            {
              a6->__r_.__value_.__s.__data_[0] = 0;
              *(&a6->__r_.__value_.__s + 23) = 0;
            }

LABEL_100:
            if (group)
            {
              dispatch_group_leave(group);
              if (group)
              {
                dispatch_release(group);
              }
            }

            xpc_release(xdict);
            if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v69.__r_.__value_.__l.__data_);
            }

            goto LABEL_105;
          }

          v58 = -1431655766;
          v59 = -1431655766;
          if (support::fs::getUidGid(1, &v59, &v58))
          {
            if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = v69;
            }

            updated = support::fs::updateOwner(&__p, v59, v58);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              v52 = updated;
              operator delete(__p.__r_.__value_.__l.__data_);
              if (v52)
              {
                goto LABEL_88;
              }
            }

            else if (updated)
            {
LABEL_88:
              if (&v69 != a6)
              {
                if (SHIBYTE(a6->__r_.__value_.__r.__words[2]) < 0)
                {
                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v54 = &v69;
                  }

                  else
                  {
                    v54 = v69.__r_.__value_.__r.__words[0];
                  }

                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v69.__r_.__value_.__l.__size_;
                  }

                  std::string::__assign_no_alias<false>(&a6->__r_.__value_.__l.__data_, v54, size);
                }

                else if ((*(&v69.__r_.__value_.__s + 23) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(a6, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
                }

                else
                {
                  *a6 = v69;
                }
              }

              goto LABEL_100;
            }
          }

          v53 = *(a2 + 40);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *(&__dst.__r_.__value_.__s + 23) = 9;
            __dst.__r_.__value_.__r.__words[0] = *"_wireless";
            LOWORD(__dst.__r_.__value_.__r.__words[1]) = str_1[8];
            *v71 = 136315138;
            v72 = &__dst;
            _os_log_error_impl(&dword_23C1C4000, v53, OS_LOG_TYPE_ERROR, "Failed to update to %s", v71, 0xCu);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }
          }

          goto LABEL_88;
        }

LABEL_35:
        operator delete(__dst.__r_.__value_.__l.__data_);
        memset(&v69, 170, sizeof(v69));
        if ((SHIBYTE(a6->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      }
    }

    memmove(p_dst, v12, v14);
    goto LABEL_16;
  }

  v16 = *(a2 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = v8->__r_.__value_.__r.__words[0];
    }

    buf.tm_sec = 136315138;
    *&buf.tm_min = v8;
    _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I Error on history value : %s", &buf, 0xCu);
  }

  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
LABEL_105:
  v56 = *MEMORY[0x277D85DE8];
}

void sub_23C2265E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_group_t group, xpc_object_t object, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  xpc_release(object);
  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 + 23) < 0)
  {
    operator delete(*v41);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t util::convert<unsigned long>(const std::string *a1, uint64_t *a2, int a3)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (strcasecmp(a1, "false") && strcasecmp(a1, "off") && strcasecmp(a1, "no"))
    {
      if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
      {
        v6 = a1;
        if (!strcasecmp(a1, "lite"))
        {
          goto LABEL_31;
        }

        goto LABEL_21;
      }

      goto LABEL_28;
    }

LABEL_27:
    v7 = 0;
LABEL_29:
    *a2 = v7;
    return 1;
  }

  v6 = a1->__r_.__value_.__r.__words[0];
  if (!strcasecmp(a1->__r_.__value_.__l.__data_, "false") || !strcasecmp(v6, "off") || !strcasecmp(v6, "no"))
  {
    goto LABEL_27;
  }

  if (!strcasecmp(v6, "true") || !strcasecmp(v6, "on") || !strcasecmp(v6, "yes") || !strcasecmp(v6, "full") || !strcasecmp(v6, "streaming"))
  {
LABEL_28:
    v7 = 1;
    goto LABEL_29;
  }

  if (!strcasecmp(v6, "lite"))
  {
LABEL_31:
    v7 = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v6, "background"))
  {
    goto LABEL_31;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v7 = std::stol(a1, &__idx, a3);
  v8 = 0;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx == size && (v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_29;
  }

  return v8;
}

uint64_t sub_23C2269B8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void ___ZN3abm14SystemLogsTask25snapshotOsLogArchive_syncENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_S7_N8dispatch13group_sessionE_block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = a2;
    _os_log_error_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_ERROR, "Error creating systemlogs archive: %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t dispatch::callback<void({block_pointer})(int,xpc::dict)>::~callback(uint64_t a1)
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

std::string **std::vector<std::string>::vector[abi:ne200100](std::string **a1, __int128 *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v5 = a3;
    v6 = operator new(24 * a3);
    *a1 = v6;
    a1[1] = v6;
    a1[2] = &v6[v5];
    v9 = v6;
    do
    {
      while ((*(a2 + 23) & 0x80000000) == 0)
      {
        v7 = *a2;
        v6->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v6->__r_.__value_.__l.__data_ = v7;
        ++v6;
        a2 = (a2 + 24);
        v9 = v6;
        if (!(--v5 * 24))
        {
          goto LABEL_7;
        }
      }

      std::string::__init_copy_ctor_external(v6, *a2, *(a2 + 1));
      a2 = (a2 + 24);
      v6 = ++v9;
      --v5;
    }

    while (v5 * 24);
LABEL_7:
    a1[1] = v6;
  }

  return a1;
}

void sub_23C226BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

void ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v1, &object);
  xpc_release(object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN3abm14SystemLogsTask9init_syncEvEUb_E3__1NS_14default_deleteIS3_EEED1B8ne200100Ev(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = _ZZZN3abm14SystemLogsTask9init_syncEvEUb_EN3__1D1Ev(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void _ZZN8dispatch5asyncIZZN3abm14SystemLogsTask9init_syncEvEUb_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_76;
  }

  v3 = *(a1 + 16);
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_76;
  }

  v5 = *a1;
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v5)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
    if (!v5)
    {
      goto LABEL_76;
    }
  }

  *(v3 + 136) = 1;
  memset(&__p, 170, sizeof(__p));
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v33 = *(a1 + 24);
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v32 = *(a1 + 48);
  }

  if (*(a1 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    v31 = *(a1 + 72);
  }

  v7 = *(a1 + 96);
  v30 = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  abm::SystemLogsTask::snapshotOsLogArchive_sync(&v32, v3, &v33, &v31, &v30, &__p);
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_22:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    v8 = *(v3 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v33.__r_.__value_.__l.__data_);
  v8 = *(v3 + 40);
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
LABEL_24:
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_27;
    }

LABEL_39:
    v14 = xpc_null_create();
    v15 = *(a1 + 104);
    if (v15)
    {
      v16 = _Block_copy(v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a1 + 112);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3321888768;
    v36 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke;
    v37 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v16)
    {
      v18 = _Block_copy(v16);
      v40 = -534716416;
      v38 = v18;
      v39 = v14;
      if (v14)
      {
LABEL_45:
        xpc_retain(v14);
LABEL_48:
        dispatch_async(v17, &buf);
        xpc_release(v39);
        v39 = 0;
        if (v38)
        {
          _Block_release(v38);
        }

        if (v16)
        {
          _Block_release(v16);
        }

        xpc_release(v14);
        goto LABEL_74;
      }
    }

    else
    {
      v40 = -534716416;
      v38 = 0;
      v39 = v14;
      if (v14)
      {
        goto LABEL_45;
      }
    }

    v39 = xpc_null_create();
    goto LABEL_48;
  }

LABEL_34:
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(buf) = 136315138;
  *(&buf + 4) = p_p;
  _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Snapshot systemlogs archive finished: [path=%s]", &buf, 0xCu);
  v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_27:
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v10) == MEMORY[0x277D86468])
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
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  v20 = xpc_string_create(v19);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, "PackagePath", v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  if (v11)
  {
    xpc_retain(v11);
    v22 = v11;
    v23 = *(a1 + 104);
    if (v23)
    {
LABEL_61:
      v24 = _Block_copy(v23);
      goto LABEL_64;
    }
  }

  else
  {
    v22 = xpc_null_create();
    v23 = *(a1 + 104);
    if (v23)
    {
      goto LABEL_61;
    }
  }

  v24 = 0;
LABEL_64:
  v25 = *(a1 + 112);
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3321888768;
  v36 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke;
  v37 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
  if (!v24)
  {
    v40 = 0;
    v38 = 0;
    v39 = v22;
    if (v22)
    {
      goto LABEL_66;
    }

LABEL_68:
    v39 = xpc_null_create();
    goto LABEL_69;
  }

  v26 = _Block_copy(v24);
  v40 = 0;
  v38 = v26;
  v39 = v22;
  if (!v22)
  {
    goto LABEL_68;
  }

LABEL_66:
  xpc_retain(v22);
LABEL_69:
  dispatch_async(v25, &buf);
  xpc_release(v39);
  v39 = 0;
  if (v38)
  {
    _Block_release(v38);
  }

  if (v24)
  {
    _Block_release(v24);
  }

  xpc_release(v22);
  xpc_release(v11);
LABEL_74:
  *(v3 + 136) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_76:
  if (a1)
  {
    v27 = _ZZZN3abm14SystemLogsTask9init_syncEvEUb_EN3__1D1Ev(a1);
    operator delete(v27);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_23C227420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN3abm14SystemLogsTask9init_syncEvEUb0_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = _ZZZN3abm14SystemLogsTask9init_syncEvEUb0_EN3__3D1Ev(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void _ZZN8dispatch5asyncIZZN3abm14SystemLogsTask9init_syncEvEUb0_E3__3EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_172;
  }

  v3 = *(a1 + 24);
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_172;
  }

  v5 = *a1;
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v5)
    {
      goto LABEL_172;
    }
  }

  else
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
    if (!v5)
    {
      goto LABEL_172;
    }
  }

  if (*(a1 + 16) == 1)
  {
    if ((TelephonyUtilIsInternalBuild() & 1) == 0 && (TelephonyUtilIsCarrierBuild() & 1) == 0)
    {
      goto LABEL_159;
    }

    *(v3 + 136) = 1;
    memset(&__p, 170, sizeof(__p));
    if (*(a1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v63, *(a1 + 56), *(a1 + 64));
    }

    else
    {
      v63 = *(a1 + 56);
    }

    if (*(a1 + 127) < 0)
    {
      std::string::__init_copy_ctor_external(&v62, *(a1 + 104), *(a1 + 112));
    }

    else
    {
      v62 = *(a1 + 104);
    }

    if (*(a1 + 151) < 0)
    {
      std::string::__init_copy_ctor_external(&v61, *(a1 + 128), *(a1 + 136));
    }

    else
    {
      v61 = *(a1 + 128);
    }

    v11 = *(a1 + 80);
    v60 = v11;
    if (v11)
    {
      dispatch_retain(v11);
      dispatch_group_enter(v11);
    }

    abm::SystemLogsTask::snapshotOsLogArchive_sync(&v62, v3, &v63, &v61, &v60, &__p);
    if (v11)
    {
      dispatch_group_leave(v11);
      dispatch_release(v11);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_34;
      }
    }

    else if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v62.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_30:
      v12 = *(v3 + 40);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }

LABEL_34:
    operator delete(v63.__r_.__value_.__l.__data_);
    v12 = *(v3 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

LABEL_35:
    HIBYTE(v70) = 7;
    strcpy(&block, "Dismiss");
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    p_block = &block;
    v67 = 2080;
    v68 = p_p;
    _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Snapshot systemlogs archive finished: option=%s [path=%s]", buf, 0x16u);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(block);
    }

LABEL_39:
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v17 = xpc_null_create();
      v18 = *(a1 + 88);
      if (v18)
      {
        v19 = _Block_copy(v18);
      }

      else
      {
        v19 = 0;
      }

      v34 = *(a1 + 96);
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 3321888768;
      v70 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke;
      v71 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v19)
      {
        v35 = _Block_copy(v19);
      }

      else
      {
        v35 = 0;
      }

      v74 = -534716416;
      v72 = v35;
      v73 = v17;
      if (v17)
      {
        xpc_retain(v17);
      }

      else
      {
        v73 = xpc_null_create();
      }

      dispatch_async(v34, &block);
      xpc_release(v73);
      v73 = 0;
      if (v72)
      {
        _Block_release(v72);
      }

      if (v19)
      {
        _Block_release(v19);
      }

      xpc_release(v17);
      goto LABEL_157;
    }

    v15 = xpc_dictionary_create(0, 0, 0);
    if (v15 || (v15 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v15) == MEMORY[0x277D86468])
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
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &__p;
    }

    else
    {
      v44 = __p.__r_.__value_.__r.__words[0];
    }

    v45 = xpc_string_create(v44);
    if (!v45)
    {
      v45 = xpc_null_create();
    }

    xpc_dictionary_set_value(v16, "PackagePath", v45);
    v46 = xpc_null_create();
    xpc_release(v45);
    xpc_release(v46);
    if (v16)
    {
      xpc_retain(v16);
      v47 = v16;
      v48 = *(a1 + 88);
      if (v48)
      {
LABEL_144:
        v49 = _Block_copy(v48);
        goto LABEL_147;
      }
    }

    else
    {
      v47 = xpc_null_create();
      v48 = *(a1 + 88);
      if (v48)
      {
        goto LABEL_144;
      }
    }

    v49 = 0;
LABEL_147:
    v50 = *(a1 + 96);
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 3321888768;
    v70 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke;
    v71 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v49)
    {
      v51 = _Block_copy(v49);
      v74 = 0;
      v72 = v51;
      v73 = v47;
      if (v47)
      {
LABEL_149:
        xpc_retain(v47);
LABEL_152:
        dispatch_async(v50, &block);
        xpc_release(v73);
        v73 = 0;
        if (v72)
        {
          _Block_release(v72);
        }

        if (v49)
        {
          _Block_release(v49);
        }

        xpc_release(v47);
        xpc_release(v16);
LABEL_157:
        *(v3 + 136) = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_159:
        v52 = xpc_null_create();
        v53 = *(a1 + 88);
        if (v53)
        {
          v54 = _Block_copy(v53);
        }

        else
        {
          v54 = 0;
        }

        v55 = *(a1 + 96);
        *&block = MEMORY[0x277D85DD0];
        *(&block + 1) = 3321888768;
        v70 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke;
        v71 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v54)
        {
          v56 = _Block_copy(v54);
          v74 = -534716416;
          v72 = v56;
          v73 = v52;
          if (v52)
          {
LABEL_164:
            xpc_retain(v52);
LABEL_167:
            dispatch_async(v55, &block);
            xpc_release(v73);
            v73 = 0;
            if (v72)
            {
              _Block_release(v72);
            }

            if (v54)
            {
              _Block_release(v54);
            }

            xpc_release(v52);
            *(v3 + 136) = 0;
            goto LABEL_172;
          }
        }

        else
        {
          v74 = -534716416;
          v72 = 0;
          v73 = v52;
          if (v52)
          {
            goto LABEL_164;
          }
        }

        v73 = xpc_null_create();
        goto LABEL_167;
      }
    }

    else
    {
      v74 = 0;
      v72 = 0;
      v73 = v47;
      if (v47)
      {
        goto LABEL_149;
      }
    }

    v73 = xpc_null_create();
    goto LABEL_152;
  }

  v7 = (a1 + 56);
  v8 = (v3 + 112);
  if (v3 + 112 != a1 + 56)
  {
    v9 = *(a1 + 79);
    if (*(v3 + 135) < 0)
    {
      if (v9 >= 0)
      {
        v20 = (a1 + 56);
      }

      else
      {
        v20 = *(a1 + 56);
      }

      if (v9 >= 0)
      {
        v21 = *(a1 + 79);
      }

      else
      {
        v21 = *(a1 + 64);
      }

      std::string::__assign_no_alias<false>(v8, v20, v21);
    }

    else if ((*(a1 + 79) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v8, *(a1 + 56), *(a1 + 64));
    }

    else
    {
      v10 = *v7;
      *(v3 + 128) = *(a1 + 72);
      *v8 = v10;
    }
  }

  *(v3 + 136) = 2;
  memset(&__p, 170, sizeof(__p));
  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    *&v63.__r_.__value_.__l.__data_ = *v7;
    v63.__r_.__value_.__r.__words[2] = *(a1 + 72);
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v62 = *(a1 + 32);
  }

  v22 = *(a1 + 80);
  if (v22)
  {
    dispatch_retain(*(a1 + 80));
    dispatch_group_enter(v22);
  }

  abm::SystemLogsTask::snapshotSysdiagnose_sync(v3, &v63, &v62, &__p);
  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_69:
      v23 = *(v3 + 40);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_70;
      }

      goto LABEL_79;
    }
  }

  else if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

  operator delete(v63.__r_.__value_.__l.__data_);
  v23 = *(v3 + 40);
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
LABEL_70:
    v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = __p.__r_.__value_.__l.__size_;
    }

    if (v24)
    {
      goto LABEL_73;
    }

LABEL_84:
    v29 = xpc_null_create();
    v30 = *(a1 + 88);
    if (v30)
    {
      v31 = _Block_copy(v30);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a1 + 96);
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 3321888768;
    v70 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke;
    v71 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v31)
    {
      v33 = _Block_copy(v31);
      v74 = -534716416;
      v72 = v33;
      v73 = v29;
      if (v29)
      {
LABEL_90:
        xpc_retain(v29);
LABEL_93:
        dispatch_async(v32, &block);
        xpc_release(v73);
        v73 = 0;
        if (v72)
        {
          _Block_release(v72);
        }

        if (v31)
        {
          _Block_release(v31);
        }

        xpc_release(v29);
        goto LABEL_131;
      }
    }

    else
    {
      v74 = -534716416;
      v72 = 0;
      v73 = v29;
      if (v29)
      {
        goto LABEL_90;
      }
    }

    v73 = xpc_null_create();
    goto LABEL_93;
  }

LABEL_79:
  v27 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(block) = 136315138;
  *(&block + 4) = v27;
  _os_log_impl(&dword_23C1C4000, v23, OS_LOG_TYPE_DEFAULT, "#I Snapshot sysdiagnose finished: [path=%s]", &block, 0xCu);
  v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = __p.__r_.__value_.__l.__size_;
  }

  if (!v28)
  {
    goto LABEL_84;
  }

LABEL_73:
  v25 = xpc_dictionary_create(0, 0, 0);
  if (v25 || (v25 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v25) == MEMORY[0x277D86468])
    {
      xpc_retain(v25);
      v26 = v25;
    }

    else
    {
      v26 = xpc_null_create();
    }
  }

  else
  {
    v26 = xpc_null_create();
    v25 = 0;
  }

  xpc_release(v25);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &__p;
  }

  else
  {
    v36 = __p.__r_.__value_.__r.__words[0];
  }

  v37 = xpc_string_create(v36);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v26, "PackagePath", v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  if (v26)
  {
    xpc_retain(v26);
    v39 = v26;
    v40 = *(a1 + 88);
    if (v40)
    {
LABEL_118:
      v41 = _Block_copy(v40);
      goto LABEL_121;
    }
  }

  else
  {
    v39 = xpc_null_create();
    v40 = *(a1 + 88);
    if (v40)
    {
      goto LABEL_118;
    }
  }

  v41 = 0;
LABEL_121:
  v42 = *(a1 + 96);
  *&block = MEMORY[0x277D85DD0];
  *(&block + 1) = 3321888768;
  v70 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke;
  v71 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
  if (!v41)
  {
    v74 = 0;
    v72 = 0;
    v73 = v39;
    if (v39)
    {
      goto LABEL_123;
    }

LABEL_125:
    v73 = xpc_null_create();
    goto LABEL_126;
  }

  v43 = _Block_copy(v41);
  v74 = 0;
  v72 = v43;
  v73 = v39;
  if (!v39)
  {
    goto LABEL_125;
  }

LABEL_123:
  xpc_retain(v39);
LABEL_126:
  dispatch_async(v42, &block);
  xpc_release(v73);
  v73 = 0;
  if (v72)
  {
    _Block_release(v72);
  }

  if (v41)
  {
    _Block_release(v41);
  }

  xpc_release(v39);
  xpc_release(v26);
LABEL_131:
  if (*(v3 + 135) < 0)
  {
    **(v3 + 112) = 0;
    *(v3 + 120) = 0;
    *(v3 + 136) = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_172;
    }
  }

  else
  {
    *(v3 + 112) = 0;
    *(v3 + 135) = 0;
    *(v3 + 136) = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_172;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_172:
  if (a1)
  {
    v57 = _ZZZN3abm14SystemLogsTask9init_syncEvEUb0_EN3__3D1Ev(a1);
    operator delete(v57);
  }

  v58 = *MEMORY[0x277D85DE8];
}

void sub_23C2280B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_47()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_48()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

double BasebandIPCTraceICE::createInternal@<D0>(_OWORD *a1@<X8>)
{
  v3 = operator new(0x70uLL);
  BasebandIPCTraceICE::BasebandIPCTraceICE(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<BasebandIPCTraceICE>::shared_ptr[abi:ne200100]<BasebandIPCTraceICE,std::shared_ptr<BasebandIPCTraceICE> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTraceICE>(BasebandIPCTraceICE*)::{lambda(BasebandIPCTraceICE*)#1},0>(&v5, v3);
  result = *&v5;
  *a1 = v5;
  return result;
}

void BasebandIPCTraceICE::BasebandIPCTraceICE(BasebandIPCTraceICE *this)
{
  v8 = 11;
  strcpy(__p, "trace.bbipc");
  ctu::OsLogContext::OsLogContext(v9, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_USER_INITIATED);
  ctu::OsLogContext::~OsLogContext(v9);
  *this = &unk_284EF95A8;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_284EFAC48;
  v6 = 11;
  strcpy(v5, "BasebandIPC");
  isSupported = abm::trace::isSupported(v5);
  if (v6 < 0)
  {
    v3 = isSupported;
    operator delete(v5[0]);
    isSupported = v3;
  }

  *(this + 96) = isSupported;
  v4 = (*(*this + 136))(this);
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  *(this + 13) = dispatch_queue_create(v4, 0);
}

void sub_23C2284C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  ctu::OsLogContext::~OsLogContext((v17 - 32));
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t BasebandIPCTraceICE::init(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v18 = *a2;
    v7 = a3[1];
    v16 = *a3;
    v17 = v7;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v18, *a2, *(a2 + 8));
  v7 = a3[1];
  v16 = *a3;
  v17 = v7;
  if (v7)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v8 = *a4;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = Trace::init(a1, &v18.__r_.__value_.__l.__data_, &v16, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v9)
    {
      goto LABEL_12;
    }

    return 0;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
  if (!v9)
  {
    return 0;
  }

LABEL_12:
  v14 = 7;
  strcpy(__p, "Enabled");
  memset(&v19, 0, sizeof(v19));
  result = prop::bbipc::get(__p, &v19);
  if (result)
  {
    result = util::convert<BOOL>(&v19, (a1 + 96), 0);
  }

  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return result;
    }

LABEL_22:
    v12 = result;
    operator delete(__p[0]);
    return v12;
  }

  v11 = result;
  operator delete(v19.__r_.__value_.__l.__data_);
  result = v11;
  if (v14 < 0)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_23C22868C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_object_t object, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BasebandIPCTraceICE::~BasebandIPCTraceICE(dispatch_object_t *this)
{
  *this = &unk_284EFAC48;
  if (this[13])
  {
    v2 = this;
    dispatch_release(this[13]);
    this = v2;
    v1 = vars8;
  }

  Trace::~Trace(this);
}

{
  *this = &unk_284EFAC48;
  if (this[13])
  {
    v2 = this;
    dispatch_release(this[13]);
    this = v2;
    v1 = vars8;
  }

  Trace::~Trace(this);
}

void BasebandIPCTraceICE::~BasebandIPCTraceICE(BasebandIPCTraceICE *this)
{
  *this = &unk_284EFAC48;
  v2 = *(this + 13);
  if (v2)
  {
    dispatch_release(v2);
  }

  Trace::~Trace(this);

  operator delete(v3);
}

uint64_t BasebandIPCTraceICE::snapshot(uint64_t a1, NSObject **a2, const __CFDictionary **a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v32[0] = 0xAAAAAAAAAAAAAAAALL;
  v32[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v32, *a3);
  memset(v31, 170, sizeof(v31));
  ctu::cf::MakeCFString::MakeCFString(buf, "kKeyTraceAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](buf);
  memset(__p, 170, sizeof(__p));
  strcpy(buf, "kTraceFilterActionNone");
  v35 = 22;
  ctu::cf::MakeCFString::MakeCFString(&v33, "kKeyTraceFilterAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v33);
  if (v35 < 0)
  {
    operator delete(*buf);
    v5 = SHIBYTE(__p[2]);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (__p[1] != 22)
    {
      v12 = *(a1 + 40);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    v6 = __p[0];
    goto LABEL_8;
  }

  v5 = SHIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5 != 22)
  {
    v12 = *(a1 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v6 = __p;
LABEL_8:
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 14);
  if (v7 != *"kTraceFilterActionNone" || v8 != *"lterActionNone" || v9 != *"tionNone")
  {
    v12 = *(a1 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    if (v5 < 0)
    {
LABEL_21:
      v13 = __p[0];
      goto LABEL_22;
    }

LABEL_19:
    v13 = __p;
LABEL_22:
    *buf = 136315138;
    *&buf[4] = v13;
    v14 = "#I Skipping snapshot as trace filter is '%s'";
    v15 = v12;
    v16 = 12;
LABEL_23:
    _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    goto LABEL_24;
  }

  if (SHIBYTE(v31[2]) < 0)
  {
    if (v31[1] != 21)
    {
      goto LABEL_41;
    }

    v19 = v31[0];
  }

  else
  {
    if (SHIBYTE(v31[2]) != 21)
    {
      goto LABEL_41;
    }

    v19 = v31;
  }

  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 13);
  if (v20 == *"kCollectTelephonyLogs" && v21 == *"TelephonyLogs" && v22 == *"honyLogs")
  {
    v26 = *a2;
    if (v26)
    {
      dispatch_retain(v26);
      dispatch_group_enter(v26);
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1174405120;
    v27[2] = ___ZN19BasebandIPCTraceICE8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
    v27[3] = &__block_descriptor_tmp_8_2;
    v27[4] = a1;
    ctu::cf::dict_adapter::dict_adapter(v28, v32);
    group = v26;
    if (v26)
    {
      dispatch_retain(v26);
      if (group)
      {
        dispatch_group_enter(group);
      }
    }

    ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v27);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    MEMORY[0x23EECD940](v28);
    if (v26)
    {
      dispatch_group_leave(v26);
      dispatch_release(v26);
    }

    goto LABEL_24;
  }

LABEL_41:
  v25 = *(a1 + 40);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v14 = "#I Skipping";
    v15 = v25;
    v16 = 2;
    goto LABEL_23;
  }

LABEL_24:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v31[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_28:
    operator delete(v31[0]);
    goto LABEL_26;
  }

  if (SHIBYTE(v31[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  result = MEMORY[0x23EECD940](v32);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C228BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v29)
  {
    dispatch_group_leave(v29);
    dispatch_release(v29);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    MEMORY[0x23EECD940](v30 - 104);
    _Unwind_Resume(a1);
  }

  MEMORY[0x23EECD940](v30 - 104);
  _Unwind_Resume(a1);
}

void ___ZN19BasebandIPCTraceICE8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v3)
  {
    dispatch_retain(*(v2 + 88));
    dispatch_group_enter(v3);
    if (*(v2 + 96) != 1)
    {
      goto LABEL_133;
    }
  }

  else if ((*(v2 + 96) & 1) == 0)
  {
    return;
  }

  v4 = 0x7FFFFFFFFFFFFFF7;
  memset(v80, 170, 24);
  v5 = *MEMORY[0x277CECB88];
  v6 = strlen(*MEMORY[0x277CECB88]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
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

    v8 = operator new(v9);
    __dst[1] = v7;
    __dst[2] = (v9 | 0x8000000000000000);
    __dst[0] = v8;
    goto LABEL_13;
  }

  HIBYTE(__dst[2]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_13:
    memmove(v8, v5, v7);
  }

  v10 = *MEMORY[0x277CECBB8];
  *(v7 + v8) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v77, v10);
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v77);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  memset(__dst, 170, sizeof(__dst));
  v11 = abm::trace::kSnapshotFolder[0];
  v12 = strlen(abm::trace::kSnapshotFolder[0]);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    v14 = operator new(v15);
    *(&v77 + 1) = v13;
    v78 = v15 | 0x8000000000000000;
    *&v77 = v14;
    goto LABEL_24;
  }

  HIBYTE(v78) = v12;
  v14 = &v77;
  if (v12)
  {
LABEL_24:
    memmove(v14, v11, v13);
  }

  *(v14 + v13) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v76, "kKeyTraceDumpStatePath");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v76);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  v16 = abm::trace::kLogDirPrefix[0];
  v17 = strlen(abm::trace::kLogDirPrefix[0]);
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
    v75.__r_.__value_.__l.__size_ = v18;
    v75.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
    v75.__r_.__value_.__r.__words[0] = v19;
    goto LABEL_35;
  }

  *(&v75.__r_.__value_.__s + 23) = v17;
  v19 = &v75;
  if (v17)
  {
LABEL_35:
    memmove(v19, v16, v18);
  }

  *(v19 + v18) = 0;
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v21 = __dst;
  }

  else
  {
    v21 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) >= 0)
  {
    v22 = HIBYTE(__dst[2]);
  }

  else
  {
    v22 = __dst[1];
  }

  v23 = std::string::insert(&v75, 0, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v76.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v76.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v80[2]) >= 0)
  {
    v25 = v80;
  }

  else
  {
    v25 = v80[0];
  }

  if (SHIBYTE(v80[2]) >= 0)
  {
    v26 = HIBYTE(v80[2]);
  }

  else
  {
    v26 = v80[1];
  }

  v27 = std::string::append(&v76, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v78 = v27->__r_.__value_.__r.__words[2];
  v77 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = SHIBYTE(v78);
  if ((SHIBYTE(v78) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v78) - 17) < 6)
    {
      v30 = SHIBYTE(v78) + 6;
      v31 = &v77;
      v32 = 22;
LABEL_54:
      v33 = 2 * v32;
      if (v30 > 2 * v32)
      {
        v33 = v30;
      }

      if ((v33 | 7) == 0x17)
      {
        v34 = 25;
      }

      else
      {
        v34 = (v33 | 7) + 1;
      }

      if (v33 >= 0x17)
      {
        v35 = v34;
      }

      else
      {
        v35 = 23;
      }

      v36 = v32 == 22;
      goto LABEL_63;
    }

    v41 = &v77;
LABEL_70:
    v42 = v41 + v29;
    *(v42 + 2) = 25456;
    *v42 = 1768055341;
    v43 = v29 + 6;
    if (SHIBYTE(v78) < 0)
    {
      *(&v77 + 1) = v29 + 6;
    }

    else
    {
      HIBYTE(v78) = v43 & 0x7F;
    }

    v40 = v41 + v43;
    goto LABEL_74;
  }

  v29 = *(&v77 + 1);
  v32 = (v78 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v32 - *(&v77 + 1) >= 6)
  {
    v41 = v77;
    goto LABEL_70;
  }

  v30 = *(&v77 + 1) + 6;
  if (0x7FFFFFFFFFFFFFF7 - (v78 & 0x7FFFFFFFFFFFFFFFLL) < *(&v77 + 1) + 6 - v32)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = v77;
  if (v32 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_54;
  }

  v36 = 0;
  v35 = 0x7FFFFFFFFFFFFFF7;
LABEL_63:
  v37 = operator new(v35);
  v38 = v37;
  if (v29)
  {
    memmove(v37, v31, v29);
  }

  v39 = &v38[v29];
  *(v39 + 2) = 25456;
  *v39 = 1768055341;
  if (!v36)
  {
    operator delete(v31);
  }

  *(&v77 + 1) = v30;
  v78 = v35 | 0x8000000000000000;
  *&v77 = v38;
  v40 = &v38[v30];
LABEL_74:
  *v40 = 0;
  v45 = *(&v77 + 1);
  v44 = v77;
  v46 = v78;
  v78 = 0;
  v77 = 0uLL;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }
  }

  else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_76;
  }

  operator delete(v75.__r_.__value_.__l.__data_);
LABEL_76:
  v47 = abm::trace::kScratchFolder[0];
  v48 = strlen(abm::trace::kScratchFolder[0]);
  if (v48 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v49 = v48;
  __sz = v45;
  if (v48 >= 0x17)
  {
    if ((v48 | 7) == 0x17)
    {
      v55 = 25;
    }

    else
    {
      v55 = (v48 | 7) + 1;
    }

    v50 = operator new(v55);
    *(&v77 + 1) = v49;
    v78 = v55 | 0x8000000000000000;
    *&v77 = v50;
LABEL_86:
    memmove(v50, v47, v49);
    *(v50 + v49) = 0;
    v51 = SHIBYTE(v78);
    if ((SHIBYTE(v78) & 0x8000000000000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_87;
  }

  HIBYTE(v78) = v48;
  v50 = &v77;
  if (v48)
  {
    goto LABEL_86;
  }

  LOBYTE(v77) = 0;
  v51 = SHIBYTE(v78);
  if ((SHIBYTE(v78) & 0x8000000000000000) == 0)
  {
LABEL_80:
    if (v51 - 10 < 0xD)
    {
      v69 = v44;
      v52 = v51 + 13;
      v53 = &v77;
      v54 = 22;
LABEL_90:
      v56 = 2 * v54;
      if (v52 > 2 * v54)
      {
        v56 = v52;
      }

      if ((v56 | 7) == 0x17)
      {
        v57 = 25;
      }

      else
      {
        v57 = (v56 | 7) + 1;
      }

      if (v56 >= 0x17)
      {
        v4 = v57;
      }

      else
      {
        v4 = 23;
      }

      v58 = v54 == 22;
      goto LABEL_99;
    }

    v62 = &v77;
LABEL_108:
    qmemcpy(v62 + v51, "bbipc.scratch", 13);
    v63 = v51 + 13;
    if (SHIBYTE(v78) < 0)
    {
      *(&v77 + 1) = v51 + 13;
    }

    else
    {
      HIBYTE(v78) = v63 & 0x7F;
    }

    v61 = v62 + v63;
    goto LABEL_112;
  }

LABEL_87:
  v51 = *(&v77 + 1);
  v54 = (v78 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v54 - *(&v77 + 1) >= 0xD)
  {
    v62 = v77;
    goto LABEL_108;
  }

  v52 = *(&v77 + 1) + 13;
  v69 = v44;
  if (0x7FFFFFFFFFFFFFF7 - (v78 & 0x7FFFFFFFFFFFFFFFLL) < *(&v77 + 1) + 13 - v54)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v53 = v77;
  if (v54 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_90;
  }

  v58 = 0;
LABEL_99:
  v59 = operator new(v4);
  v60 = v59;
  if (v51)
  {
    memmove(v59, v53, v51);
  }

  qmemcpy(&v60[v51], "bbipc.scratch", 13);
  if (!v58)
  {
    operator delete(v53);
  }

  *(&v77 + 1) = v52;
  v78 = v4 | 0x8000000000000000;
  *&v77 = v60;
  v61 = &v60[v52];
  v44 = v69;
LABEL_112:
  *v61 = 0;
  v64 = v77;
  v65 = v78;
  v66 = *(a1 + 56);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN19BasebandIPCTraceICE8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke_2;
  block[3] = &__block_descriptor_tmp_7_3;
  block[4] = v2;
  group = v66;
  if (v66)
  {
    dispatch_retain(v66);
    dispatch_group_enter(group);
  }

  if ((v65 & 0x8000000000000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v73, v64, *(&v64 + 1));
  }

  else
  {
    *&v73.__r_.__value_.__l.__data_ = v64;
    v73.__r_.__value_.__r.__words[2] = v65;
  }

  if ((v46 & 0x8000000000000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, v44, __sz);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = v44;
    __p.__r_.__value_.__l.__size_ = __sz;
    __p.__r_.__value_.__r.__words[2] = v46;
  }

  dispatch_async(global_queue, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_122:
      v68 = group;
      if (!group)
      {
        goto LABEL_128;
      }

      goto LABEL_126;
    }
  }

  else if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_122;
  }

  operator delete(v73.__r_.__value_.__l.__data_);
  v68 = group;
  if (!group)
  {
    goto LABEL_128;
  }

LABEL_126:
  dispatch_group_leave(v68);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_128:
  if ((v65 & 0x8000000000000000) != 0)
  {
    operator delete(v64);
    if ((v46 & 0x8000000000000000) == 0)
    {
LABEL_130:
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_137;
    }
  }

  else if ((v46 & 0x8000000000000000) == 0)
  {
    goto LABEL_130;
  }

  operator delete(v44);
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
LABEL_131:
    if ((SHIBYTE(v80[2]) & 0x80000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_138;
  }

LABEL_137:
  operator delete(__dst[0]);
  if ((SHIBYTE(v80[2]) & 0x80000000) == 0)
  {
LABEL_132:
    if (!v3)
    {
      return;
    }

    goto LABEL_133;
  }

LABEL_138:
  operator delete(v80[0]);
  if (v3)
  {
LABEL_133:
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

void sub_23C229468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t group, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v42 < 0)
  {
    operator delete(v39);
  }

  if (v40 < 0)
  {
    operator delete(v41);
  }

  if (*(v43 - 113) < 0)
  {
    operator delete(*(v43 - 136));
  }

  if (*(v43 - 89) < 0)
  {
    operator delete(*(v43 - 112));
  }

  if (v38)
  {
    dispatch_group_leave(v38);
    dispatch_release(v38);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C2295D8()
{
  if (!v0)
  {
    JUMPOUT(0x23C2295D0);
  }

  JUMPOUT(0x23C2295C0);
}

void ___ZN19BasebandIPCTraceICE8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v3 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v4 = xmmword_280C05A58;
  if (!xmmword_280C05A58)
  {
    ctu::XpcJetsamAssertion::create_default_global(v27, v3);
    v5 = v27[0];
    v27[0] = 0uLL;
    v6 = *(&xmmword_280C05A58 + 1);
    xmmword_280C05A58 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *(&v27[0] + 1);
    if (*(&v27[0] + 1) && !atomic_fetch_add((*(&v27[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = xmmword_280C05A58;
  }

  v8 = *(&xmmword_280C05A58 + 1);
  *buf = v4;
  *&buf[8] = *(&xmmword_280C05A58 + 1);
  if (*(&xmmword_280C05A58 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_280C05A58 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  *&v28[1] = operator new(0x20uLL);
  v29 = xmmword_23C32D570;
  strcpy(*&v28[1], "Baseband IPC Trace ICE Snapshot");
  ctu::XpcJetsamAssertion::createActivity();
  if (SHIBYTE(v29) < 0)
  {
    operator delete(*&v28[1]);
  }

  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v28[0] = 0;
  v9 = (a1 + 48);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = v10;
  v27[1] = v10;
  if (!support::fs::createDir((a1 + 48), 0x1EDu, 1))
  {
    v20 = *(v2 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    if (*(a1 + 71) < 0)
    {
      v9 = *v9;
    }

    *buf = 136315138;
    *&buf[4] = v9;
    v17 = "#E Failed create %s";
    v18 = v20;
LABEL_36:
    v19 = 12;
LABEL_37:
    _os_log_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_51;
  }

  v11 = AriHost::RegisterClient("BBIPCTrace", v28, *(v2 + 104), 0xFFFFFFFFLL);
  v12 = v28[0];
  if (v11 || !v28[0])
  {
    v21 = *(v2 + 40);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    *buf = 67109120;
    *&buf[4] = v12;
    v22 = "Failed AriHost::RegisterClient 0x%x";
LABEL_46:
    _os_log_error_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_ERROR, v22, buf, 8u);
    goto LABEL_51;
  }

  if ((KTLInitOptions() & 1) == 0)
  {
    v21 = *(v2 + 40);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    *buf = 67109120;
    *&buf[4] = v28[0];
    v22 = "Failed KTLInitOptions 0x%x";
    goto LABEL_46;
  }

  if ((KTLOpenChannel() & 1) == 0)
  {
    v21 = *(v2 + 40);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    *buf = 67109120;
    *&buf[4] = v28[0];
    v22 = "Failed KTLOpenChannel 0x%x";
    goto LABEL_46;
  }

  if (*(a1 + 71) < 0)
  {
    v13 = *v9;
  }

  if ((GetBBIPCLogs() & 1) == 0)
  {
    v21 = *(v2 + 40);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    *buf = 67109120;
    *&buf[4] = v28[0];
    v22 = "Failed GetBBIPCLogs 0x%x";
    goto LABEL_46;
  }

  v14 = (a1 + 72);
  if (!support::fs::createDir((a1 + 72), 0x1EDu, 1))
  {
    v23 = *(v2 + 40);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    if (*(a1 + 95) < 0)
    {
      v14 = *v14;
    }

    *buf = 136315138;
    *&buf[4] = v14;
    v17 = "#E Failed create dir %s";
    v18 = v23;
    goto LABEL_36;
  }

  if (!support::fs::rename((a1 + 48), (a1 + 72), v15))
  {
    v16 = *(v2 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 71) < 0)
      {
        v9 = *v9;
      }

      if (*(a1 + 95) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v14;
      v17 = "#E Failed to move %s to %s";
      v18 = v16;
      v19 = 22;
      goto LABEL_37;
    }
  }

LABEL_51:
  if (v28[0] && AriHost::DeregisterClient(v28[0]) && (v24 = *(v2 + 40), os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
  {
    *buf = 67109120;
    *&buf[4] = v28[0];
    _os_log_error_impl(&dword_23C1C4000, v24, OS_LOG_TYPE_ERROR, "Failed deregistering ARI Client: 0x%x", buf, 8u);
    v25 = v31;
    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v25 = v31;
    if (!v31)
    {
      goto LABEL_57;
    }
  }

  if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

LABEL_57:
  v26 = *MEMORY[0x277D85DE8];
}

void ___ZN19BasebandIPCTraceICE8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke_4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2 * 100.0 / a3;
    _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Progress: %f", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[1].__r_.__value_.__r.__words[2];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v7 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v7;
  }
}

void sub_23C229D60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(v1 + 40);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 40);
      if (!v2)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 48));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return;
  }

LABEL_7:
  dispatch_group_leave(v2);
  v3 = *(a1 + 40);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void __copy_helper_block_e8_40c27_ZTSN3ctu2cf12dict_adapterE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  ctu::cf::dict_adapter::dict_adapter((a1 + 40), (a2 + 40));
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 56);
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c27_ZTSN3ctu2cf12dict_adapterE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
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

  JUMPOUT(0x23EECD940);
}

void BasebandIPCTraceICE::dumpState(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1174405120;
  v4[2] = ___ZN19BasebandIPCTraceICE9dumpStateEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_9_3;
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

void ___ZN19BasebandIPCTraceICE9dumpStateEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  if (v2)
  {
    dispatch_retain(*(v1 + 88));
    dispatch_group_enter(v2);
  }

  v3 = *(v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 96);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Enabled = %d", v6, 8u);
  }

  if (v2)
  {
    dispatch_group_leave(v2);
    dispatch_release(v2);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t BasebandIPCTraceICE::setProperty(uint64_t a1, dispatch_object_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1174405120;
  v12[2] = ___ZN19BasebandIPCTraceICE11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke;
  v12[3] = &unk_284EFAD70;
  v12[5] = a1;
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(group);
  }

  v12[4] = &v16;
  v14 = a3;
  v15 = a4;
  v20 = v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_1;
  block[3] = &__block_descriptor_tmp_49;
  block[4] = a1 + 8;
  block[5] = &v20;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v8, block);
    v9 = *(v17 + 24);
    v10 = group;
    if (!group)
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_sync(v8, block);
    v9 = *(v17 + 24);
    v10 = group;
    if (!group)
    {
      goto LABEL_11;
    }
  }

  dispatch_group_leave(v10);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_11:
  _Block_object_dispose(&v16, 8);
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  return v9;
}

void ___ZN19BasebandIPCTraceICE11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = prop::bbipc::set(*(a1 + 56), *(a1 + 64));
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) != 1)
  {
    *(v3 + 24) = 0;
    return;
  }

  v4 = *(a1 + 56);
  memset(&__p, 0, sizeof(__p));
  if (prop::bbipc::get(v4, &__p))
  {
    v5 = util::convert<BOOL>(&__p, (v2 + 96), 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_7:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
}

void sub_23C22A2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 48);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 48);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

uint64_t BasebandIPCTraceICE::getProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN19BasebandIPCTraceICE11getPropertyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6__block_invoke;
  v7[3] = &unk_278BB8AA8;
  v7[4] = &v8;
  v7[5] = a2;
  v7[6] = a3;
  v12 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_1;
  block[3] = &__block_descriptor_tmp_49;
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

BOOL ___ZN19BasebandIPCTraceICE11getPropertyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6__block_invoke(uint64_t a1)
{
  result = prop::bbipc::get(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

atomic_ullong *std::shared_ptr<BasebandIPCTraceICE>::shared_ptr[abi:ne200100]<BasebandIPCTraceICE,std::shared_ptr<BasebandIPCTraceICE> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTraceICE>(BasebandIPCTraceICE*)::{lambda(BasebandIPCTraceICE*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EFADC8;
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

void sub_23C22A62C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BasebandIPCTraceICE> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTraceICE>(BasebandIPCTraceICE*)::{lambda(BasebandIPCTraceICE*)#1}::operator() const(BasebandIPCTraceICE*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BasebandIPCTraceICE *,std::shared_ptr<BasebandIPCTraceICE> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTraceICE>(BasebandIPCTraceICE*)::{lambda(BasebandIPCTraceICE *)#1},std::allocator<BasebandIPCTraceICE>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandIPCTraceICE *,std::shared_ptr<BasebandIPCTraceICE> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTraceICE>(BasebandIPCTraceICE*)::{lambda(BasebandIPCTraceICE *)#1},std::allocator<BasebandIPCTraceICE>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI19BasebandIPCTraceICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI19BasebandIPCTraceICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI19BasebandIPCTraceICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI19BasebandIPCTraceICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandIPCTraceICE> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTraceICE>(BasebandIPCTraceICE*)::{lambda(BasebandIPCTraceICE*)#1}::operator() const(BasebandIPCTraceICE*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t __cxx_global_var_init_12()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_13()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

void abm::AppMonitorInternal::create(const ctu::OsLogContext *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x58uLL);
  ctu::OsLogContext::OsLogContext(v5, a1);
  abm::AppMonitorInternal::AppMonitorInternal(v4);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<abm::AppMonitorInternal>::shared_ptr[abi:ne200100]<abm::AppMonitorInternal,std::shared_ptr<abm::AppMonitorInternal> ctu::SharedSynchronizable<abm::AppMonitorInternal>::make_shared_ptr<abm::AppMonitorInternal>(abm::AppMonitorInternal*)::{lambda(abm::AppMonitorInternal*)#1},0>(a2, v4);
  ctu::OsLogContext::~OsLogContext(v5);
}

void sub_23C22A85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void *abm::AppMonitor::AppMonitor(void *a1, const ctu::OsLogContext *a2)
{
  ctu::OsLogContext::OsLogContext(v4, a2);
  abm::AppMonitorInternal::create(v4, a1);
  ctu::OsLogContext::~OsLogContext(v4);
  return a1;
}

{
  ctu::OsLogContext::OsLogContext(v4, a2);
  abm::AppMonitorInternal::create(v4, a1);
  ctu::OsLogContext::~OsLogContext(v4);
  return a1;
}

void abm::AppMonitor::setAppStateHandler(NSObject **a1, NSObject **a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a3 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != a3)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_6:
    v11 = v6;
    goto LABEL_8;
  }

  v11 = v10;
  (*(*v6 + 24))(v6, v10);
LABEL_8:
  abm::AppMonitorInternal::setAppStateHandler(v4, &object, v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
    v7 = object;
    if (!object)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    (*(*v11 + 40))();
  }

  v7 = object;
  if (object)
  {
LABEL_12:
    dispatch_release(v7);
  }

LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23C22AA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

void abm::AppMonitorInternal::setAppStateHandler(NSObject *a1, dispatch_object_t *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  object[0] = a1;
  object[1] = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v5 = *(a3 + 24);
  if (v5)
  {
    if (v5 == a3)
    {
      v18 = v17;
      (*(*v5 + 24))(v5, v17);
      goto LABEL_8;
    }

    v5 = (*(*v5 + 16))(v5);
  }

  v18 = v5;
LABEL_8:
  isa = a1[1].isa;
  if (!isa || (v7.isa = a1->isa, (v8 = std::__shared_weak_count::lock(isa)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x30uLL);
  *v10 = *object;
  v11 = v18;
  if (v18)
  {
    if (v18 == v17)
    {
      v10[5] = v10 + 2;
      (*(*v11 + 24))(v11);
    }

    else
    {
      v10[5] = v18;
      v18 = 0;
    }
  }

  else
  {
    v10[5] = 0;
  }

  v12 = a1[2].isa;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v10;
  v13[1] = v7.isa;
  v13[2] = v9;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}>(abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = v18;
    if (v18 != v17)
    {
      goto LABEL_17;
    }

LABEL_21:
    (*(*v14 + 32))(v14);
    goto LABEL_19;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v14 = v18;
  if (v18 == v17)
  {
    goto LABEL_21;
  }

LABEL_17:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_23C22AD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::function<void ()(std::string,abm::AppState)>::~function(uint64_t a1)
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

BOOL abm::AppMonitor::addBundleID(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  result = abm::AppMonitorInternal::addBundleID(v2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v4;
  }

  return result;
}

void sub_23C22AE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL abm::AppMonitorInternal::addBundleID(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v13 = a1;
      std::string::__init_copy_ctor_external(&__p, *a2, v4);
      v3 = a1[1];
      if (!v3)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  else if (*(a2 + 23))
  {
    v13 = a1;
    __p = *a2;
    v3 = a1[1];
    if (!v3)
    {
LABEL_16:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

LABEL_7:
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = v6;
    v8 = operator new(0x20uLL);
    *v8 = v13;
    *(v8 + 8) = __p;
    memset(&__p, 0, sizeof(__p));
    v9 = a1[2];
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = operator new(0x18uLL);
    *v10 = v8;
    v10[1] = v5;
    v10[2] = v7;
    dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>(abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 1;
      }
    }

    else
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 1;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    return 1;
  }

  v12 = a1[4];
  result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(v13) = 0;
    _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "AppMonitor: skipping addition of empty bundle ID", &v13, 2u);
    return 0;
  }

  return result;
}

uint64_t abm::AppMonitor::removeBundleID(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *a2, *(a2 + 8));
    v3 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if (v3)
      {
        v9 = v2;
        __p = __s;
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __s = *a2;
    v3 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  if (__s.__r_.__value_.__l.__size_)
  {
    v9 = v2;
    std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
LABEL_8:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZNK3ctu20SharedSynchronizableIN3abm18AppMonitorInternalEE20execute_wrapped_syncIZNS2_14removeBundleIDENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEUlvE_EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSD__block_invoke;
    aBlock[3] = &__block_descriptor_48_e5_B8__0l;
    aBlock[4] = v2;
    aBlock[5] = &v9;
    v12 = _Block_copy(aBlock);
    v4 = v2[2];
    if (v2[3])
    {
      v19 = -86;
      block = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = ___ZN8dispatch19async_and_wait_implIRU8__strongU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke;
      v16 = &__block_descriptor_48_e5_v8__0l;
      v17 = &v19;
      v18 = &v12;
      dispatch_async_and_wait(v4, &block);
      v5 = v19;

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = -86;
      block = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = ___ZN8dispatch9sync_implIRU8__strongU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke;
      v16 = &__block_descriptor_48_e5_v8__0l;
      v17 = &v19;
      v18 = &v12;
      dispatch_sync(v4, &block);
      v5 = v19;

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
LABEL_16:
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v5 & 1;
    }

    goto LABEL_19;
  }

LABEL_11:
  v6 = v2[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(block) = 0;
    _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "AppMonitor: skipping removal of empty bundle ID", &block, 2u);
    v5 = 0;
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v5 & 1;
    }
  }

  else
  {
    v5 = 0;
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v5 & 1;
    }
  }

LABEL_19:
  operator delete(__s.__r_.__value_.__l.__data_);
  return v5 & 1;
}

void sub_23C22B2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void abm::AppMonitorInternal::start(abm::AppMonitorInternal *this)
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

  v7[0] = this;
  v7[1] = v3;
  v8 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::start(void)::{lambda(void)#1}>(this, v7);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void abm::AppMonitor::create(const ctu::OsLogContext *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<abm::AppMonitor,std::allocator<abm::AppMonitor>,ctu::OsLogContext &,0>(a1, a2);
}

void *abm::AppMonitorInternal::AppMonitorInternal(void *a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("AppMonitorInternal.queue", v2);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
    dispatch_retain(v3);
    a1[3] = 0;
    dispatch_release(v4);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x23EECD7F0](a1 + 4, v9);
  MEMORY[0x23EECD800](v9);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  a1[5] = v5;
  a1[6] = 0;
  a1[10] = 0;
  if (v5)
  {
    return a1;
  }

  v7 = a1[4];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    return a1;
  }

  *v8 = 0;
  _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "AppMonitor: failed to create bundle ID store", v8, 2u);
  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}>(abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v17 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v5 = v2[5];
  if (!v5)
  {
LABEL_6:
    v19 = v5;
    object = v17;
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (v5 != v2 + 2)
  {
    v5 = (*(*v5 + 16))(v5);
    goto LABEL_6;
  }

  v19 = v18;
  (*(*v5 + 24))(v5, v18);
  v5 = v19;
  object = v17;
  if (v19)
  {
LABEL_7:
    if (v5 == v18)
    {
      v22 = v21;
      (*(*v5 + 24))(v5, v21);
    }

    else
    {
      v22 = v5;
      v19 = 0;
    }

    goto LABEL_12;
  }

LABEL_10:
  v22 = 0;
LABEL_12:
  v24 = 0;
  v6 = operator new(0x30uLL);
  v7 = object;
  v8 = v22;
  *v6 = &unk_284EFAE18;
  v6[1] = v7;
  object = 0;
  if (v8)
  {
    if (v8 == v21)
    {
      v6[5] = v6 + 2;
      v9 = v6;
      (*(*v8 + 24))(v8);
      v6 = v9;
    }

    else
    {
      v6[5] = v8;
      v22 = 0;
    }
  }

  else
  {
    v6[5] = 0;
  }

  v24 = v6;
  if (v23 == (v4 + 56))
  {
    goto LABEL_22;
  }

  v10 = *(v4 + 80);
  if (v10 == (v4 + 56))
  {
    (*(*v10 + 24))(*(v4 + 80), v23);
    (*(**(v4 + 80) + 32))(*(v4 + 80));
    *(v4 + 80) = v24;
    v24 = v23;
    v10 = v23;
  }

  else
  {
    v24 = *(v4 + 80);
    *(v4 + 80) = v6;
    if (v10 != v23)
    {
      if (!v10)
      {
        goto LABEL_23;
      }

      v6 = v10;
LABEL_22:
      (*(*v6 + 40))(v6);
LABEL_23:
      v11 = v22;
      if (v22 != v21)
      {
        goto LABEL_24;
      }

      goto LABEL_47;
    }
  }

  (*(*v10 + 32))(v10);
  v11 = v22;
  if (v22 != v21)
  {
LABEL_24:
    if (v11)
    {
      (*(*v11 + 40))(v11);
    }

    v12 = object;
    if (object)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

LABEL_47:
  (*(*v11 + 32))(v11);
  v12 = object;
  if (object)
  {
LABEL_27:
    dispatch_release(v12);
  }

LABEL_28:
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  v13 = v2[5];
  if (v13 == v2 + 2)
  {
    (*(*v13 + 32))(v13);
    v14 = v2[1];
    if (!v14)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  v14 = v2[1];
  if (v14)
  {
LABEL_35:
    dispatch_release(v14);
  }

LABEL_36:
  operator delete(v2);
  v15 = a1[2];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *MEMORY[0x277D85DE8];

  operator delete(a1);
}

void sub_23C22BA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::~(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *a1;
    if (!*a1)
    {
      return a1;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *a1;
  if (*a1)
  {
LABEL_5:
    dispatch_release(v4);
  }

  return a1;
}

void *std::__function::__func<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1},std::allocator<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}>,void ()(std::string,abm::AppState)>::~__func(void *a1)
{
  *a1 = &unk_284EFAE18;
  v2 = a1 + 2;
  v3 = a1[5];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[1];
    if (!v4)
    {
      return a1;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
LABEL_5:
    dispatch_release(v4);
  }

  return a1;
}

void std::__function::__func<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1},std::allocator<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}>,void ()(std::string,abm::AppState)>::~__func(char *__p)
{
  *__p = &unk_284EFAE18;
  v2 = __p + 16;
  v3 = *(__p + 5);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(__p + 1);
    if (v4)
    {
LABEL_5:
      dispatch_release(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(__p + 1);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete(__p);
}

void *std::__function::__func<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1},std::allocator<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}>,void ()(std::string,abm::AppState)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_284EFAE18;
  v2[1] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_6;
  }

  if (v4 != a1 + 16)
  {
    v4 = (*(*v4 + 16))(v4);
LABEL_6:
    v2[5] = v4;
    return v2;
  }

  v2[5] = v2 + 2;
  (*(*v4 + 24))(v4);
  return v2;
}

void sub_23C22BD64(_Unwind_Exception *a1)
{
  v3 = v1[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1},std::allocator<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}>,void ()(std::string,abm::AppState)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_284EFAE18;
  a2[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = *(a1 + 40);
  if (!result)
  {
    goto LABEL_6;
  }

  if (result != a1 + 16)
  {
    result = (*(*result + 16))(result);
LABEL_6:
    a2[5] = result;
    return result;
  }

  a2[5] = a2 + 2;
  return (*(**(a1 + 40) + 24))(*(a1 + 40));
}

void sub_23C22BE48(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1},std::allocator<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}>,void ()(std::string,abm::AppState)>::destroy(uint64_t a1)
{
  v2 = a1 + 16;
  v3 = *(a1 + 40);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 8);
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
LABEL_5:

    dispatch_release(v4);
  }
}

void std::__function::__func<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1},std::allocator<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}>,void ()(std::string,abm::AppState)>::destroy_deallocate(char *__p)
{
  v2 = __p + 16;
  v3 = *(__p + 5);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(__p + 1);
    if (v4)
    {
LABEL_5:
      dispatch_release(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(__p + 1);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete(__p);
}

void std::__function::__func<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1},std::allocator<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}>,void ()(std::string,abm::AppState)>::operator()(uint64_t a1, uint64_t a2, int *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 8);
  *v16 = *(a2 + 16);
  *&v16[3] = *(a2 + 19);
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = *a3;
  v8 = *(a1 + 40);
  if (!v8)
  {
    goto LABEL_4;
  }

  if (v8 != a1 + 16)
  {
    v8 = (*(*v8 + 16))(v8);
LABEL_4:
    v18 = v8;
    goto LABEL_6;
  }

  v18 = v17;
  (*(*v8 + 24))(v8, v17);
LABEL_6:
  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v4, v5);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = v4;
    __p.__r_.__value_.__l.__size_ = v5;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = *v16;
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *&v16[3];
    *(&__p.__r_.__value_.__s + 23) = v6;
  }

  v20 = v7;
  v9 = *(a1 + 8);
  v10 = operator new(0x40uLL);
  v11 = v18;
  if (v18)
  {
    if (v18 == v17)
    {
      *(v10 + 3) = v10;
      v12 = v10;
      (*(*v11 + 24))(v11);
      v7 = v20;
      v10 = v12;
    }

    else
    {
      *(v10 + 3) = v18;
      v18 = 0;
    }
  }

  else
  {
    *(v10 + 3) = 0;
  }

  *(v10 + 32) = __p;
  memset(&__p, 0, sizeof(__p));
  *(v10 + 14) = v7;
  dispatch_async_f(v9, v10, dispatch::async<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v13 = v18;
    if (v18 != v17)
    {
LABEL_16:
      if (v13)
      {
        (*(*v13 + 40))(v13);
      }

      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(v4);
      v15 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
    v13 = v18;
    if (v18 != v17)
    {
      goto LABEL_16;
    }
  }

  (*(*v13 + 32))(v13);
  if (v6 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_23C22C22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1},std::allocator<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}>,void ()(std::string,abm::AppState)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3abm18AppMonitorInternal18setAppStateHandlerEN8dispatch5queueENSt3__18functionIFvNS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS_8AppStateEEEEENKUlvE_clEvEUlSA_SB_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3abm18AppMonitorInternal18setAppStateHandlerEN8dispatch5queueENSt3__18functionIFvNS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS_8AppStateEEEEENKUlvE_clEvEUlSA_SB_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3abm18AppMonitorInternal18setAppStateHandlerEN8dispatch5queueENSt3__18functionIFvNS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS_8AppStateEEEEENKUlvE_clEvEUlSA_SB_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3abm18AppMonitorInternal18setAppStateHandlerEN8dispatch5queueENSt3__18functionIFvNS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS_8AppStateEEEEENKUlvE_clEvEUlSA_SB_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(a1 + 56);
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &v4, &v5);
  if ((SHIBYTE(v4.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    operator delete(*(a1 + 32));
    v3 = *(a1 + 24);
    if (v3 != a1)
    {
      goto LABEL_8;
    }

LABEL_13:
    (*(*v3 + 32))(v3);
    operator delete(a1);
    return;
  }

  operator delete(v4.__r_.__value_.__l.__data_);
  if (*(a1 + 55) < 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  operator delete(a1);
}

void sub_23C22C42C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C22C440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}::operator() const(void)::{lambda(std::string,abm::AppState)#1}::operator() const(std::string,abm::AppState)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
      v3 = *(v2 + 24);
      if (v3 != v2)
      {
LABEL_4:
        if (v3)
        {
          (*(*v3 + 40))(v3);
        }

        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 24);
      if (v3 != v2)
      {
        goto LABEL_4;
      }
    }

    (*(*v3 + 32))(v3);
LABEL_8:
    operator delete(v2);
  }

  return a1;
}

void **std::unique_ptr<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::setAppStateHandler(dispatch::queue,std::function<void ()(std::string,abm::AppState)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[5];
    if (v3 == v1 + 2)
    {
      (*(*v3 + 32))(v3);
      v4 = v1[1];
      if (!v4)
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

      v4 = v1[1];
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    dispatch_release(v4);
LABEL_7:
    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>(abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(char **a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1 + 8);
  v5 = v4;
  if ((*a1)[31] < 0)
  {
    v5 = *v4;
  }

  v6 = v3[5];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v5, a1, v2}];
  [v6 addObject:v7];

  v8 = v3[4];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v2 + 8;
    if (v2[31] < 0)
    {
      v9 = *v4;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I AppMonitor: successfully added bundle ID %s to store", &buf, 0xCu);
  }

  v10 = v3[6];
  if (v10)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v21 = ___ZZN3abm18AppMonitorInternal11addBundleIDENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEENKUlvE_clEv_block_invoke;
    v22 = &__block_descriptor_40_e40_v16__0___RBSProcessMonitorConfiguring__8l;
    v23 = v3;
    [v10 updateConfiguration:&buf];
    v11 = v3[4];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v12 = v2 + 8;
    if (v2[31] < 0)
    {
      v12 = *v4;
    }

    v18 = 136315138;
    v19 = v12;
    v13 = "#I AppMonitor: successfully updated configuration after adding bundle ID %s";
    p_buf = &v18;
  }

  else
  {
    v11 = v3[4];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v15 = v2 + 8;
    if (v2[31] < 0)
    {
      v15 = *v4;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v15;
    v13 = "#I AppMonitor: skipping configuration update after adding bundle ID %s";
    p_buf = &buf;
  }

  _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, v13, p_buf, 0xCu);
LABEL_17:
  if (v2[31] < 0)
  {
    operator delete(*v4);
  }

  operator delete(v2);
  v16 = a1[2];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(a1);
  v17 = *MEMORY[0x277D85DE8];
}

void sub_23C22C82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_23C22C84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZZN3abm18AppMonitorInternal11addBundleIDENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEENKUlvE_clEv_block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifiers:*(*(a1 + 32) + 40)];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 setPredicates:v5];

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C22C920(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *std::unique_ptr<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t ___ZNK3ctu20SharedSynchronizableIN3abm18AppMonitorInternalEE20execute_wrapped_syncIZNS2_14removeBundleIDENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEUlvE_EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSD__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = v1 + 1;
  v4 = v1 + 1;
  if (*(v1 + 31) < 0)
  {
    v4 = *v3;
  }

  v5 = *(v2 + 40);
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v7 = [v5 containsObject:v6];

  v8 = *(v2 + 40);
  if ((v7 & 1) == 0)
  {
    v17 = [*(v2 + 40) count];
    v18 = *(v2 + 32);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (!v19)
      {
        goto LABEL_30;
      }

      if (*(v1 + 31) < 0)
      {
        v3 = *v3;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v3;
      v20 = "AppMonitor: store does not contain bundle ID %s, so it cannot be removed ";
    }

    else
    {
      if (!v19)
      {
        goto LABEL_30;
      }

      if (*(v1 + 31) < 0)
      {
        v3 = *v3;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v3;
      v20 = "AppMonitor: store does not contain any bundle IDs, so bundle ID %s cannot be removed";
    }

    _os_log_error_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_ERROR, v20, &buf, 0xCu);
    goto LABEL_30;
  }

  v9 = v1 + 1;
  if (*(v1 + 31) < 0)
  {
    v9 = *v3;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  [v8 removeObject:v10];

  v11 = *(v2 + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v1 + 1;
    if (*(v1 + 31) < 0)
    {
      v12 = *v3;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I AppMonitor: successfully removed bundle ID %s from store", &buf, 0xCu);
  }

  v13 = *(v2 + 48);
  if (v13)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v26 = ___ZZN3abm18AppMonitorInternal14removeBundleIDENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEENKUlvE_clEv_block_invoke;
    v27 = &__block_descriptor_40_e40_v16__0___RBSProcessMonitorConfiguring__8l;
    v28 = v2;
    [v13 updateConfiguration:&buf];
    v14 = *(v2 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 31) < 0)
      {
        v3 = *v3;
      }

      v23 = 136315138;
      v24 = v3;
      v15 = "#I AppMonitor: successfully updated configuration after removing bundle ID %s";
      p_buf = &v23;
LABEL_29:
      _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, v15, p_buf, 0xCu);
    }
  }

  else
  {
    v14 = *(v2 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 31) < 0)
      {
        v3 = *v3;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v3;
      v15 = "#I AppMonitor: skipping configuration update after removing bundle ID %s";
      p_buf = &buf;
      goto LABEL_29;
    }
  }

LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

void ___ZZN3abm18AppMonitorInternal14removeBundleIDENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEENKUlvE_clEv_block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifiers:*(*(a1 + 32) + 40)];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 setPredicates:v5];

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C22CD4C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t ___ZN8dispatch9sync_implIRU8__strongU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU8__strongU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::start(void)::{lambda(void)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x18uLL);
  *v8 = *a2;
  v8[2] = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::start(void)::{lambda(void)#1}>(abm::AppMonitorInternal::start(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::start(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<abm::AppMonitorInternal::start(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::start(void)::{lambda(void)#1}>(abm::AppMonitorInternal::start(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::start(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<abm::AppMonitorInternal::start(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v13 = *a1;
  v3 = **a1;
  if (*(v3 + 48))
  {
    v4 = *(v3 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_ERROR, "AppMonitor: already started", buf, 2u);
    }
  }

  else
  {
    v5 = MEMORY[0x277D46F80];
    *buf = MEMORY[0x277D85DD0];
    v16 = 3321888768;
    v17 = ___ZZN3abm18AppMonitorInternal5startEvENKUlvE_clEv_block_invoke;
    v18 = &__block_descriptor_56_ea8_40c49_ZTSNSt3__18weak_ptrIN3abm18AppMonitorInternalEEE_e40_v16__0___RBSProcessMonitorConfiguring__8l;
    v19 = v3;
    v20 = v2[1];
    v6 = v2[2];
    v21 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = [v5 monitorWithConfiguration:{buf, a1, v13}];
    v8 = *(v3 + 48);
    *(v3 + 48) = v7;

    v9 = *(v3 + 32);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I AppMonitor: started", v14, 2u);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }
  }

  v10 = v2[2];
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void sub_23C22D0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  std::unique_ptr<abm::AppMonitorInternal::start(void)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::start(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZZN3abm18AppMonitorInternal5startEvENKUlvE_clEv_block_invoke(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [MEMORY[0x277D46FB0] descriptor];
  [v5 setValues:1];
  v15[0] = @"com.apple.frontboard.visibility";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v5 setEndowmentNamespaces:v6];

  [v3 setStateDescriptor:v5];
  v7 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifiers:*(v4 + 40)];
  v14 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v3 setPredicates:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = ___ZZN3abm18AppMonitorInternal5startEvENKUlvE_clEv_block_invoke_2;
  v12[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__18weak_ptrIN3abm18AppMonitorInternalEEE_e74_v32__0__RBSProcessMonitor_8__RBSProcessHandle_16__RBSProcessStateUpdate_24l;
  v10 = a1[5];
  v9 = a1[6];
  v12[4] = v4;
  v12[5] = v10;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  [v3 setUpdateHandler:v12];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23C22D288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  _Unwind_Resume(a1);
}

void ___ZZN3abm18AppMonitorInternal5startEvENKUlvE_clEv_block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[6];
  if (!v10)
  {
    goto LABEL_54;
  }

  v11 = a1[4];
  v12 = std::__shared_weak_count::lock(v10);
  v48 = v12;
  if (!v12)
  {
    goto LABEL_54;
  }

  if (a1[5])
  {
    v13 = [v8 bundle];
    v14 = [v9 state];
    v15 = [v14 taskState];
    v16 = 0;
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = 2;

        if (v13)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      if (v15 != 4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v16 = 1;
        goto LABEL_17;
      }

      if (v15 != 2)
      {
LABEL_17:

        if (v13)
        {
LABEL_18:
          v22 = [v13 identifier];
          v23 = [v22 UTF8String];

          if (v23)
          {
            v24 = strlen(v23);
            if (v24 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v25 = v24;
            v44 = v23;
            if (v24 >= 0x17)
            {
              if ((v24 | 7) == 0x17)
              {
                v30 = 25;
              }

              else
              {
                v30 = (v24 | 7) + 1;
              }

              p_dst = operator new(v30);
              *(&__dst + 1) = v25;
              v46 = v30 | 0x8000000000000000;
              *&__dst = p_dst;
            }

            else
            {
              HIBYTE(v46) = v24;
              p_dst = &__dst;
              if (!v24)
              {
LABEL_33:
                *(p_dst + v25) = 0;
                *buf = v11;
                v43 = SHIBYTE(v46);
                if (SHIBYTE(v46) < 0)
                {
                  std::string::__init_copy_ctor_external(&buf[8], __dst, *(&__dst + 1));
                }

                else
                {
                  *&buf[8] = __dst;
                  v50 = v46;
                }

                v51 = v16;
                v31 = v11[1];
                if (!v31 || (v32 = *v11, (v33 = std::__shared_weak_count::lock(v31)) == 0))
                {
                  std::__throw_bad_weak_ptr[abi:ne200100]();
                }

                v34 = v33;
                v35 = operator new(0x28uLL);
                *v35 = *buf;
                v36 = (v35 + 8);
                if (SHIBYTE(v50) < 0)
                {
                  std::string::__init_copy_ctor_external(v36, *&buf[8], *&buf[16]);
                }

                else
                {
                  *&v36->__r_.__value_.__l.__data_ = *&buf[8];
                  *(v35 + 3) = v50;
                }

                *(v35 + 8) = v51;
                v37 = v11[2];
                atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
                v38 = operator new(0x18uLL);
                *v38 = v35;
                v38[1] = v32;
                v38[2] = v34;
                dispatch_async_f(v37, v38, dispatch::async<void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::invokeHandler(std::string const&,abm::AppState)::{lambda(void)#1}>(abm::AppMonitorInternal::invokeHandler(std::string const&,abm::AppState)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::invokeHandler(std::string const&,abm::AppState)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::invokeHandler(std::string const&,abm::AppState)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
                if (atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v39 = v44;
                  if ((SHIBYTE(v50) & 0x80000000) == 0)
                  {
                    goto LABEL_43;
                  }
                }

                else
                {
                  (v34->__on_zero_shared)(v34);
                  std::__shared_weak_count::__release_weak(v34);
                  v39 = v44;
                  if ((SHIBYTE(v50) & 0x80000000) == 0)
                  {
LABEL_43:
                    if ((v43 & 0x80000000) == 0)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_48;
                  }
                }

                operator delete(*&buf[8]);
                if ((v43 & 0x80000000) == 0)
                {
LABEL_44:
                  v40 = v11[4];
                  if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_51;
                  }

LABEL_49:
                  *buf = 136315394;
                  *&buf[4] = v39;
                  *&buf[12] = 1024;
                  *&buf[14] = v16;
                  v21 = "#D AppMonitor: received an event from bundle ID %s, state: 0x%x";
                  v28 = v40;
                  v29 = 18;
                  goto LABEL_50;
                }

LABEL_48:
                operator delete(__dst);
                v40 = v11[4];
                if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_51;
                }

                goto LABEL_49;
              }
            }

            memmove(p_dst, v23, v25);
            goto LABEL_33;
          }

          v27 = v16;
          v20 = v11[4];
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_51;
          }

          *buf = 67109120;
          *&buf[4] = v27;
          v21 = "#D AppMonitor: received an event from unknown bundle ID, state: 0x%x";
LABEL_25:
          v28 = v20;
          v29 = 8;
LABEL_50:
          _os_log_debug_impl(&dword_23C1C4000, v28, OS_LOG_TYPE_DEBUG, v21, buf, v29);
LABEL_51:

          v12 = v48;
          if (!v48)
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        }

LABEL_14:
        v19 = v16;
        v20 = v11[4];
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_51;
        }

        *buf = 67109120;
        *&buf[4] = v19;
        v21 = "#D AppMonitor: received an event from unknown bundle, state: 0x%x";
        goto LABEL_25;
      }
    }

    v17 = [v14 endowmentNamespaces];
    v18 = [v17 containsObject:@"com.apple.frontboard.visibility"];

    if (v18)
    {
      v16 = 4;
    }

    else
    {
      v16 = 3;
    }

    if (v13)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_52:
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v41 = v12;
    (v12->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_54:

  v42 = *MEMORY[0x277D85DE8];
}

void sub_23C22D79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  operator delete(v18);

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c49_ZTSNSt3__18weak_ptrIN3abm18AppMonitorInternalEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_40c49_ZTSNSt3__18weak_ptrIN3abm18AppMonitorInternalEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::invokeHandler(std::string const&,abm::AppState)::{lambda(void)#1}>(abm::AppMonitorInternal::invokeHandler(std::string const&,abm::AppState)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::invokeHandler(std::string const&,abm::AppState)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::invokeHandler(std::string const&,abm::AppState)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 80);
  if (v4)
  {
    if (*(v2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, v2[1], v2[2]);
      v4 = *(v3 + 80);
      v8 = *(v2 + 8);
      if (!v4)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }
    }

    else
    {
      v5 = *(v2 + 1);
      v7.__r_.__value_.__r.__words[2] = v2[3];
      *&v7.__r_.__value_.__l.__data_ = v5;
      v8 = *(v2 + 8);
    }

    (*(*v4 + 48))(v4, &v7, &v8);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
      if ((*(v2 + 31) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if (*(v2 + 31) < 0)
  {
LABEL_7:
    operator delete(v2[1]);
  }

LABEL_8:
  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
}

void sub_23C22D98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_23C22D9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<abm::AppMonitorInternal::start(void)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::start(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
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

void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::stop(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::stop(void)::{lambda(void)#1}>(abm::AppMonitorInternal::stop(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::stop(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<abm::AppMonitorInternal::stop(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::stop(void)::{lambda(void)#1}>(abm::AppMonitorInternal::stop(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::AppMonitorInternal::stop(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<abm::AppMonitorInternal::stop(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 48);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(v3 + 48);
    *(v3 + 48) = 0;
  }

  [*(v3 + 40) removeAllObjects];
  v6 = *(v3 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I AppMonitor: stopped", buf, 2u);
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_23C22DC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<abm::AppMonitorInternal>::shared_ptr[abi:ne200100]<abm::AppMonitorInternal,std::shared_ptr<abm::AppMonitorInternal> ctu::SharedSynchronizable<abm::AppMonitorInternal>::make_shared_ptr<abm::AppMonitorInternal>(abm::AppMonitorInternal*)::{lambda(abm::AppMonitorInternal*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EFAF08;
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

void sub_23C22DD50(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<abm::AppMonitorInternal> ctu::SharedSynchronizable<abm::AppMonitorInternal>::make_shared_ptr<abm::AppMonitorInternal>(abm::AppMonitorInternal*)::{lambda(abm::AppMonitorInternal*)#1}::operator() const(abm::AppMonitorInternal*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<abm::AppMonitorInternal *,std::shared_ptr<abm::AppMonitorInternal> ctu::SharedSynchronizable<abm::AppMonitorInternal>::make_shared_ptr<abm::AppMonitorInternal>(abm::AppMonitorInternal*)::{lambda(abm::AppMonitorInternal *)#1},std::allocator<abm::AppMonitorInternal>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<abm::AppMonitorInternal *,std::shared_ptr<abm::AppMonitorInternal> ctu::SharedSynchronizable<abm::AppMonitorInternal>::make_shared_ptr<abm::AppMonitorInternal>(abm::AppMonitorInternal*)::{lambda(abm::AppMonitorInternal *)#1},std::allocator<abm::AppMonitorInternal>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3abm18AppMonitorInternalEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3abm18AppMonitorInternalEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3abm18AppMonitorInternalEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3abm18AppMonitorInternalEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<abm::AppMonitorInternal> ctu::SharedSynchronizable<abm::AppMonitorInternal>::make_shared_ptr<abm::AppMonitorInternal>(abm::AppMonitorInternal*)::{lambda(abm::AppMonitorInternal*)#1}::operator() const(abm::AppMonitorInternal*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = *(a1 + 80);
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    MEMORY[0x23EECD800](a1 + 32);
    v4 = *(a1 + 24);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete(a1);
  }
}

void std::allocate_shared[abi:ne200100]<abm::AppMonitor,std::allocator<abm::AppMonitor>,ctu::OsLogContext &,0>(const ctu::OsLogContext *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = &unk_284EFAF58;
  ctu::OsLogContext::OsLogContext(v5, a1);
  ctu::OsLogContext::OsLogContext(v6, v5);
  abm::AppMonitorInternal::create(v6, v4 + 3);
  ctu::OsLogContext::~OsLogContext(v6);
  ctu::OsLogContext::~OsLogContext(v5);
  *a2 = v4 + 3;
  a2[1] = v4;
}

void sub_23C22DFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  ctu::OsLogContext::~OsLogContext(&a11);
  ctu::OsLogContext::~OsLogContext(&a9);
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<abm::AppMonitor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFAF58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<abm::AppMonitor>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _BYTE *a3)
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

_BYTE *bsp::tlv::abm::writeField(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGPresetID>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_23C22E13C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::DIAGPresetID>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGActiveIface>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_23C22E1FC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::DIAGActiveIface>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

_BYTE *bsp::tlv::abm::writeField(_BYTE *a1, _DWORD *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_23C22E2BC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::DIAGConfig>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGBuffering>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_23C22E37C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::DIAGBuffering>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGWMHigh>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_23C22E43C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::DIAGWMHigh>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::DIAGWMLow>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_23C22E4FC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<bsp::tlv::abm::DIAGWMLow>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
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

        if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
        {
          qword_280C05D48 = 0;
          qword_280C05D50 = 0;
          __cxa_guard_release(&qword_280C05D40);
        }

        if (_MergedGlobals_3 == -1)
        {
          v10 = qword_280C05D50;
          if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }
        }

        else
        {
          dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
          v10 = qword_280C05D50;
          if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
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
        _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Failed to write json to %s (error: %s)", buf, 0x16u);

LABEL_10:
        v11 = 0;
        v12 = cf;
        if (!cf)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
      {
        qword_280C05D48 = 0;
        qword_280C05D50 = 0;
        __cxa_guard_release(&qword_280C05D40);
      }

      if (_MergedGlobals_3 == -1)
      {
        v13 = qword_280C05D50;
        if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
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
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
        v13 = qword_280C05D50;
        if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
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
      _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, "Failed to write json to %s due to no space available or invalid path", buf, 0xCu);
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
  if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
  {
    qword_280C05D48 = 0;
    qword_280C05D50 = 0;
    __cxa_guard_release(&qword_280C05D40);
  }

  if (_MergedGlobals_3 != -1)
  {

    dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
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
    if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
    {
      qword_280C05D48 = 0;
      qword_280C05D50 = 0;
      __cxa_guard_release(&qword_280C05D40);
    }

    if (_MergedGlobals_3 == -1)
    {
      v13 = qword_280C05D50;
      if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
      v13 = qword_280C05D50;
      if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    *buf = 0;
    v14 = "Failed to write json to buffer due to invalid buffer";
LABEL_23:
    _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_24;
  }

  if (!a4)
  {
    if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
    {
      qword_280C05D48 = 0;
      qword_280C05D50 = 0;
      __cxa_guard_release(&qword_280C05D40);
    }

    if (_MergedGlobals_3 == -1)
    {
      v13 = qword_280C05D50;
      if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
      v13 = qword_280C05D50;
      if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
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

        if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
        {
          qword_280C05D48 = 0;
          qword_280C05D50 = 0;
          __cxa_guard_release(&qword_280C05D40);
        }

        if (_MergedGlobals_3 == -1)
        {
          v11 = qword_280C05D50;
          if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
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
          dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
          v11 = qword_280C05D50;
          if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }
        }

        v19 = [v10 localizedDescription];
        v20 = v19;
        v21 = [v19 UTF8String];
        *buf = 136315138;
        v25 = v21;
        _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Failed to write json to buffer (error: %s)", buf, 0xCu);

        goto LABEL_10;
      }

      if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
      {
        qword_280C05D48 = 0;
        qword_280C05D50 = 0;
        __cxa_guard_release(&qword_280C05D40);
      }

      if (_MergedGlobals_3 == -1)
      {
        v15 = qword_280C05D50;
        if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
        v15 = qword_280C05D50;
        if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }
      }

      *buf = 0;
      v16 = "Failed to write json to buffer due to stream opening failure";
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
      {
        qword_280C05D48 = 0;
        qword_280C05D50 = 0;
        __cxa_guard_release(&qword_280C05D40);
      }

      if (_MergedGlobals_3 == -1)
      {
        v15 = qword_280C05D50;
        if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
        {
LABEL_32:
          v12 = 0;
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
        v15 = qword_280C05D50;
        if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }
      }

      *buf = 0;
      v16 = "Failed to write json to buffer due to invalid stream";
    }

    _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_32;
  }

  if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
  {
    qword_280C05D48 = 0;
    qword_280C05D50 = 0;
    __cxa_guard_release(&qword_280C05D40);
  }

  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
    v13 = qword_280C05D50;
    if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v13 = qword_280C05D50;
  if (os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
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
    if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
    {
      qword_280C05D48 = 0;
      qword_280C05D50 = 0;
      __cxa_guard_release(&qword_280C05D40);
    }

    if (_MergedGlobals_3 == -1)
    {
      v10 = qword_280C05D50;
      if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
      v10 = qword_280C05D50;
      if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, v12, object, 0xCu);
    goto LABEL_17;
  }

  [(NSInputStream *)v8 open];
  if ([(NSInputStream *)v8 streamStatus]!= 2)
  {
    if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
    {
      qword_280C05D48 = 0;
      qword_280C05D50 = 0;
      __cxa_guard_release(&qword_280C05D40);
    }

    if (_MergedGlobals_3 == -1)
    {
      v10 = qword_280C05D50;
      if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
      v10 = qword_280C05D50;
      if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
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

void sub_23C22F3AC(_Unwind_Exception *exception_object, int a2)
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
      if (*buf && MEMORY[0x23EECEE80](*buf) == MEMORY[0x277D86468])
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

    if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
    {
      qword_280C05D48 = 0;
      qword_280C05D50 = 0;
      __cxa_guard_release(&qword_280C05D40);
    }

    if (_MergedGlobals_3 == -1)
    {
      v8 = qword_280C05D50;
      if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
      v8 = qword_280C05D50;
      if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    v9 = [v7 localizedDescription];
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to create json from stream (error: %@)", buf, 0xCu);

    goto LABEL_16;
  }

  if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
  {
    qword_280C05D48 = 0;
    qword_280C05D50 = 0;
    __cxa_guard_release(&qword_280C05D40);
  }

  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
    v10 = qword_280C05D50;
    if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v10 = qword_280C05D50;
  if (os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
  {
LABEL_10:
    *buf = 0;
    _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Failed to read stream due to no bytes available", buf, 2u);
  }

LABEL_17:

  v13 = *MEMORY[0x277D85DE8];
}

void sub_23C22F6E4(_Unwind_Exception *a1, int a2)
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

      if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
      {
        qword_280C05D48 = 0;
        qword_280C05D50 = 0;
        __cxa_guard_release(&qword_280C05D40);
      }

      if (_MergedGlobals_3 == -1)
      {
        v13 = qword_280C05D50;
        if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
        v13 = qword_280C05D50;
        if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
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
      if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
      {
        qword_280C05D48 = 0;
        qword_280C05D50 = 0;
        __cxa_guard_release(&qword_280C05D40);
      }

      if (_MergedGlobals_3 == -1)
      {
        v13 = qword_280C05D50;
        if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
        v13 = qword_280C05D50;
        if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }
      }

      v18 = 0;
      v14 = "Failed to create NSInputStream from json string";
      v15 = &v18;
    }

    _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
    goto LABEL_22;
  }

  if ((atomic_load_explicit(&qword_280C05D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D40))
  {
    qword_280C05D48 = 0;
    qword_280C05D50 = 0;
    __cxa_guard_release(&qword_280C05D40);
  }

  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
    v12 = qword_280C05D50;
    if (!os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  v12 = qword_280C05D50;
  if (os_log_type_enabled(qword_280C05D50, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    *buf = 0;
    _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Failed to create NSData from json string", buf, 2u);
  }

LABEL_23:
}

void ___ZN4utilL16sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "json.util");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

double DALTrace::createInternal@<D0>(_OWORD *a1@<X8>)
{
  v3 = operator new(0x150uLL);
  DALTrace::DALTrace(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<DALTrace>::shared_ptr[abi:ne200100]<DALTrace,std::shared_ptr<DALTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DALTrace>(DALTrace*)::{lambda(DALTrace*)#1},0>(&v5, v3);
  result = *&v5;
  *a1 = v5;
  return result;
}

void DALTrace::DALTrace(DALTrace *this)
{
  v17 = 8;
  strcpy(__p, "trace.bb");
  ctu::OsLogContext::OsLogContext(v18, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_USER_INITIATED);
  ctu::OsLogContext::~OsLogContext(v18);
  *this = &unk_284EF95A8;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_284EFAFC8;
  *(this + 12) = 0;
  *(this + 104) = 0;
  v3 = capabilities::trace::defaultHistorySizeMB(v2);
  v4 = 0x7FFFFFFF;
  if (v3 < 0x7FFFFFFF)
  {
    v4 = v3;
  }

  *(this + 27) = v4;
  v5 = capabilities::trace::defaultFileSizeBytes(v3);
  *(this + 16) = 0;
  *(this + 116) = 0;
  *(this + 28) = v5;
  *(this + 17) = 0;
  v6 = capabilities::radio::vendor(v5);
  if ((v6 - 1) > 3)
  {
    v7 = 25;
  }

  else
  {
    v7 = dword_23C32D580[v6 - 1];
  }

  v8 = capabilities::radio::dal(v6);
  v9 = v8;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v8);
  if (v9)
  {
    v11 = 1024;
  }

  else
  {
    v11 = 0x4000;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    if (v7 == 17)
    {
      v11 = 0x80000;
    }

    else if (v7 == 21 || v7 == 20)
    {
      v11 = 61440;
    }

    else
    {
      shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
      if ((v7 - 19) > 5)
      {
        v11 = 0x8000;
      }

      else
      {
        v11 = dword_23C32DF2C[v7 - 19];
      }
    }
  }

  *(this + 36) = v11;
  *(this + 37) = defaults::bbtrace::transport_read_count(shouldUseMinBasebandTransportIOReadSize);
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 168) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *(this + 50) = 1;
  *(this + 231) = 7;
  strcpy(this + 208, "Default");
  *(this + 58) = 0;
  *(this + 263) = 4;
  strcpy(this + 240, "Lite");
  v13 = *(this + 9);
  v12 = *(this + 10);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(this + 11);
  if (v14)
  {
    dispatch_retain(*(this + 11));
  }

  *(this + 66) = 0;
  *(this + 34) = v13;
  *(this + 35) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 36) = v14;
  if (v14)
  {
    dispatch_retain(v14);
    v15 = *(this + 36);
    if (v15)
    {
      dispatch_group_enter(v15);
    }

    dispatch_release(v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  *(this + 296) = 1;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 324) = 0;
  *(this + 82) = 500;
}

void sub_23C22FEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  ctu::OsLogContext::~OsLogContext(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void DALTrace::~DALTrace(DALTrace *this)
{
  *this = &unk_284EFAFC8;
  v2 = dispatch_group_create();
  v3 = v2;
  v4 = *(this + 23);
  if (v4)
  {
    object = v2;
    if (v2)
    {
      dispatch_retain(v2);
    }

    (*(*v4 + 120))(v4, &object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  v18 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v17[0] = 0;
  v17[1] = 0;
  DALTrace::stop_sync(this, &v18, v17);
  if (v3)
  {
    dispatch_release(v3);
  }

  v5 = dispatch_time(0, 1000000000);
  if (dispatch_group_wait(v3, v5))
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "Timeout for stopping trace service!", v16, 2u);
      *(this + 104) = 0;
      if (!v3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  *(this + 104) = 0;
  if (v3)
  {
LABEL_13:
    dispatch_release(v3);
  }

LABEL_14:
  v7 = *(this + 39);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 36);
  if (v8)
  {
    dispatch_group_leave(v8);
    v9 = *(this + 36);
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  v10 = *(this + 35);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if ((*(this + 263) & 0x80000000) == 0)
  {
    if ((*(this + 231) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    operator delete(*(this + 26));
    v11 = *(this + 24);
    if (!v11)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  operator delete(*(this + 30));
  if (*(this + 231) < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v11 = *(this + 24);
  if (!v11)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_30:
  v12 = *(this + 22);
  if (v12)
  {
    dispatch_group_leave(v12);
    v13 = *(this + 22);
    if (v13)
    {
      dispatch_release(v13);
    }
  }

  v14 = *(this + 20);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(this + 17);
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  Trace::~Trace(this);
}

{
  DALTrace::~DALTrace(this);

  operator delete(v1);
}

void DALTrace::stop_sync(uint64_t a1, dispatch_object_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v5);
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Stopping BB Trace", buf, 2u);
  }

  v25 = v5;
  if (!*(a1 + 152))
  {
    goto LABEL_9;
  }

  v54 = 0;
  LOBYTE(v53) = 0;
  Timestamp::Timestamp(v51);
  v50 = 0;
  *v49 = 0;
  LOBYTE(v48) = 0;
  abm::trace::TraceInfo::push();
  if ((v49[0] & 0x80000000) == 0)
  {
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_77;
  }

  operator delete(v48);
  if (v50 < 0)
  {
LABEL_77:
    operator delete(*&v49[1]);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v51, v52);
    if (v54 < 0)
    {
      goto LABEL_78;
    }

LABEL_9:
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_79;
    }

    goto LABEL_10;
  }

LABEL_8:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v51, v52);
  if ((v54 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_78:
  operator delete(v53);
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_79:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_10:
  v8 = *(a1 + 8);
  v9 = std::__shared_weak_count::lock(v7);
  if (!v9)
  {
    goto LABEL_79;
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = dispatch_group_create();
  v12 = v11;
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(v12);
  }

  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8DALTrace9stop_syncEN8dispatch5groupENS0_8callbackIU13block_pointerFvvEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_21_1;
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

  v43 = v12;
  if (v12)
  {
    dispatch_retain(v12);
    if (v43)
    {
      dispatch_group_enter(v43);
    }
  }

  v44 = v8;
  v45 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(aBlock);
  v14 = *(a1 + 24);
  if (v14)
  {
    dispatch_retain(*(a1 + 24));
  }

  v46 = v13;
  v47 = v14;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 1174405120;
  v34[2] = ___ZN8DALTrace9stop_syncEN8dispatch5groupENS0_8callbackIU13block_pointerFvvEEE_block_invoke_22;
  v34[3] = &__block_descriptor_tmp_25_0;
  v34[4] = a1;
  v35 = v5;
  if (v5)
  {
    dispatch_retain(v5);
    if (v35)
    {
      dispatch_group_enter(v35);
    }
  }

  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
    if (object)
    {
      dispatch_group_enter(object);
    }
  }

  v24 = v14;
  v37 = v8;
  v38 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = _Block_copy(v34);
  v16 = *(a1 + 24);
  if (v16)
  {
    dispatch_retain(*(a1 + 24));
  }

  v39 = v15;
  v40 = v16;
  if (v15)
  {
    v17 = _Block_copy(v15);
    v32 = v17;
    v33 = v16;
    if (!v16)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v17 = 0;
  v32 = 0;
  v33 = v16;
  if (v16)
  {
LABEL_33:
    dispatch_retain(v16);
  }

LABEL_34:
  DALTrace::setLogMode_sync(a1, 0, 1, &v32, 10);
  if (v16)
  {
    dispatch_release(v16);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v27 = a1;
  v28 = v8;
  v29 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (*a3)
  {
    v18 = _Block_copy(*a3);
    v19 = v13;
    v20 = v8;
    v21 = *(a3 + 8);
    v30 = v18;
    v31 = v21;
    if (!v21)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v19 = v13;
  v18 = 0;
  v20 = v8;
  v21 = *(a3 + 8);
  v30 = 0;
  v31 = v21;
  if (v21)
  {
LABEL_42:
    dispatch_retain(v21);
  }

LABEL_43:
  v22 = *(a1 + 24);
  v23 = operator new(0x30uLL);
  *v23 = v25;
  v23[1] = a1;
  v23[2] = v20;
  v23[3] = v10;
  v23[4] = v18;
  v23[5] = v21;
  v55 = 0;
  dispatch_group_notify_f(v12, v22, v23, dispatch::detail::group_notify<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0>(dispatch_group_s *,dispatch_queue_s *,DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0,std::default_delete<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0>>::~unique_ptr[abi:ne200100](&v55);
  if (v16)
  {
    dispatch_release(v16);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  if (v35)
  {
    dispatch_group_leave(v35);
    if (v35)
    {
      dispatch_release(v35);
    }
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (v43)
  {
    dispatch_group_leave(v43);
    if (v43)
    {
      dispatch_release(v43);
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

  if (v12)
  {
    dispatch_group_leave(v12);
    dispatch_release(v12);
    dispatch_release(v12);
  }

  std::__shared_weak_count::__release_weak(v10);
  if (v25)
  {
    dispatch_group_leave(v25);
    dispatch_release(v25);
  }
}

void sub_23C230730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, dispatch_group_t a24, dispatch_group_t object, uint64_t a26, std::__shared_weak_count *a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, dispatch_group_t a35, dispatch_group_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (*(v38 - 185) < 0)
  {
    operator delete(*(v38 - 208));
  }

  if (*(v38 - 161) < 0)
  {
    operator delete(*(v38 - 184));
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v38 - 160, *(v38 - 152));
  if (*(v38 - 113) < 0)
  {
    operator delete(*(v38 - 136));
    if (!group)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if (!group)
  {
    goto LABEL_7;
  }

  dispatch_group_leave(group);
  dispatch_release(group);
  _Unwind_Resume(a1);
}

uint64_t DALTrace::init(void *a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  v26 = 1;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    __p = *a2;
    v7 = a1 + 1;
    v8 = a3[1];
    v21 = *a3;
    v22 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  v7 = a1 + 1;
  v8 = a3[1];
  v21 = *a3;
  v22 = v8;
  if (v8)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v9 = *a4;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v24 = &v26;
  v25 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8DALTrace4initENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSJ__block_invoke;
  block[3] = &__block_descriptor_tmp_176;
  block[4] = v7;
  block[5] = &__p;
  v10 = a1[3];
  if (a1[4])
  {
    dispatch_async_and_wait(v10, block);
    v11 = object;
    if (!object)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  dispatch_sync(v10, block);
  v11 = object;
  if (object)
  {
LABEL_8:
    dispatch_release(v11);
  }

LABEL_9:
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v26 != 1)
    {
      return v26;
    }
  }

  else if (v26 != 1)
  {
    return v26;
  }

  v12 = a1[2];
  if (!v12 || (v13 = a1[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = operator new(8uLL);
  *v16 = a1;
  v17 = a1[3];
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v13;
  v18[2] = v15;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1>(DALTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1,std::default_delete<DALTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  return v26;
}

void DALTrace::reinit(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_23C1C4000, v1, OS_LOG_TYPE_DEFAULT, "#I reinit not implemented", v2, 2u);
  }
}

void DALTrace::prepare(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = v3;
  v8[1] = a1;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void DALTrace::start(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    v5 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = v3;
  v10[1] = v5;
  v10[2] = a1;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void DALTrace::stop(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    v5 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v3;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void DALTrace::abort(void *a1, dispatch_object_t *a2, const void **a3)
{
  v6 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v6);
    dispatch_retain(v6);
    dispatch_group_enter(v6);
  }

  v7 = *a3;
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v9 = a1[2];
  if (!v9 || (v10 = a1[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = a1;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v14 = a1[3];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v6)
    {
      return;
    }
  }

  else
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if (!v6)
    {
      return;
    }
  }

  dispatch_group_leave(v6);

  dispatch_release(v6);
}

void DALTrace::shutdown(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
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

  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x20uLL);
  *v12 = v3;
  v12[1] = v5;
  v12[2] = v7;
  v12[3] = a1;
  v13 = a1[3];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = operator new(0x18uLL);
  *v14 = v12;
  v14[1] = v9;
  v14[2] = v11;
  dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void sub_23C231274(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void DALTrace::enterLowPower(DALTrace *this, group *a2)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Enter low power not implemented", v3, 2u);
  }
}

void DALTrace::exitLowPower(DALTrace *this, group *a2)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Exit low power not implemented", v3, 2u);
  }
}

uint64_t DALTrace::snapshot(void *a1, NSObject **a2, const __CFDictionary **a3)
{
  v29[0] = 0xAAAAAAAAAAAAAAAALL;
  v29[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v29, *a3);
  memset(&v28, 170, sizeof(v28));
  __p = 0;
  group = 0;
  v25.__r_.__value_.__r.__words[0] = 0;
  ctu::cf::MakeCFString::MakeCFString(&v30, "kKeyTraceDumpStateReason");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v30);
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Snapshotting", &__p, 2u);
    v7 = a1[2];
    if (!v7)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v7 = a1[2];
    if (!v7)
    {
LABEL_35:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  v8 = a1[1];
  v9 = std::__shared_weak_count::lock(v7);
  if (!v9)
  {
    goto LABEL_35;
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = *a2;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
    v11 = *a2;
    if (v11)
    {
LABEL_8:
      dispatch_retain(v11);
      dispatch_group_enter(v11);
      __p = a1;
      group = v11;
      dispatch_retain(v11);
      if (group)
      {
        dispatch_group_enter(group);
      }

      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  __p = a1;
  group = 0;
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_11:
    v25 = v28;
    goto LABEL_15;
  }

LABEL_14:
  std::string::__init_copy_ctor_external(&v25, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
LABEL_15:
  v12 = *a3;
  cf[0] = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  cf[1] = v8;
  v27 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = a1[2];
  if (!v13 || (v14 = a1[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  v17 = operator new(0x40uLL);
  v18 = group;
  *v17 = __p;
  *(v17 + 1) = v18;
  *(v17 + 16) = v25;
  memset(&v25, 0, sizeof(v25));
  v19 = *cf;
  group = 0;
  cf[0] = 0;
  *(v17 + 40) = v19;
  *(v17 + 7) = v27;
  cf[1] = 0;
  v27 = 0;
  v20 = a1[3];
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v17;
  v21[1] = v14;
  v21[2] = v16;
  dispatch_async_f(v20, v21, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::__shared_weak_count::__release_weak(v10);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return MEMORY[0x23EECD940](v29);
}

void sub_23C2316C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v27)
  {
    dispatch_group_leave(v27);
    dispatch_release(v27);
  }

  std::__shared_weak_count::__release_weak(v26);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x23EECD940](&a26);
  _Unwind_Resume(a1);
}

void DALTrace::dumpState(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    v4 = a1[2];
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    __p = *a3;
    v4 = a1[2];
    if (!v4)
    {
LABEL_14:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  v5 = a1[1];
  v6 = std::__shared_weak_count::lock(v4);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = operator new(0x20uLL);
  *v8 = a1;
  v9 = (v8 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v8[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::dumpState(dispatch::group,std::string)::$_0>(DALTrace::dumpState(dispatch::group,std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::dumpState(dispatch::group,std::string)::$_0,std::default_delete<DALTrace::dumpState(dispatch::group,std::string)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_13;
  }
}

uint64_t DALTrace::setProperty(void *a1, dispatch_object_t *a2, uint64_t *a3, uint64_t *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
    v9 = *a2;
  }

  else
  {
    v9 = 0;
  }

  v21 = 0;
  v18[0] = a1;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = &v21;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  *block = MEMORY[0x277D85DD0];
  *&block[8] = 0x40000000;
  *&block[16] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8DALTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSH__block_invoke;
  v23 = &__block_descriptor_tmp_183;
  v24 = a1 + 1;
  v25 = v18;
  v10 = a1[3];
  if (a1[4])
  {
    dispatch_async_and_wait(v10, block);
    v11 = group;
    if (!group)
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_sync(v10, block);
    v11 = group;
    if (!group)
    {
      goto LABEL_14;
    }
  }

  dispatch_group_leave(v11);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_14:
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    v12 = 1;
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v13 = a1[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    *block = 136315394;
    *&block[4] = v16;
    *&block[12] = 2080;
    *&block[14] = v17;
    _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, "Setting %s to %s failed", block, 0x16u);
    v12 = v21;
    if (v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    if (v7)
    {
LABEL_21:
      dispatch_group_leave(v7);
      dispatch_release(v7);
    }
  }

LABEL_22:
  v14 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

uint64_t DALTrace::getProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 1;
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = &v7;
  v6[3] = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8DALTrace11getPropertyERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERSB_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSG__block_invoke;
  block[3] = &__block_descriptor_tmp_185;
  block[4] = a1 + 8;
  block[5] = v6;
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

  return v7;
}

void DALTrace::initBootSessionPrefs_sync(DALTrace *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = 15;
  strcpy(buf, "Reset_Mode_Boot");
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(buf, &__p))
  {
    LODWORD(v17.__r_.__value_.__l.__data_) = -1431655766;
    if (util::convert<int>(&__p, &v17, 0))
    {
      *(this + 25) = v17.__r_.__value_.__l.__data_;
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    operator delete(*buf);
    v2 = *(this + 5);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (!v3)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v20 < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v2 = *(this + 5);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_10:
  v4 = *(this + 25);
  if (v4 == 1)
  {
    v5 = &__p.__r_.__value_.__s.__data_[9];
    *(&__p.__r_.__value_.__s + 23) = 9;
    qmemcpy(&__p, "Last_Used", 9);
  }

  else if (v4)
  {
    v5 = &__p.__r_.__value_.__s.__data_[11];
    *(&__p.__r_.__value_.__s + 23) = 11;
    qmemcpy(&__p, "UnSpecified", 11);
  }

  else
  {
    v5 = &__p.__r_.__value_.__s.__data_[7];
    *(&__p.__r_.__value_.__s + 23) = 7;
    qmemcpy(&__p, "Default", 7);
  }

  *v5 = 0;
  *buf = 136315138;
  *&buf[4] = &__p;
  _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#N reset mode on AP boot: %s", buf, 0xCu);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_17:
  if (sys::isBootSessionChanged(v3) && !*(this + 25))
  {
    v20 = 4;
    strcpy(buf, "Mode");
    memset(&v17, 0, sizeof(v17));
    std::to_string(&__p, 0);
    v17 = __p;
    v12 = prop::bbtrace::set(buf, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
      if ((v20 & 0x80000000) == 0)
      {
LABEL_47:
        if (v12)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }
    }

    else if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    operator delete(*buf);
    if (v12)
    {
      goto LABEL_53;
    }

LABEL_51:
    v13 = *(this + 5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, "Failed to reset trace mode for new boot instance", &__p, 2u);
    }

LABEL_53:
    *(this + 24) = 0;
    v20 = 14;
    strcpy(buf, "TraceOwnership");
    memset(&v17, 0, sizeof(v17));
    std::to_string(&__p, 0);
    v17 = __p;
    v14 = prop::bbtrace::set(buf, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
      if ((v20 & 0x80000000) == 0)
      {
LABEL_55:
        if (v14)
        {
          goto LABEL_61;
        }

        goto LABEL_59;
      }
    }

    else if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    operator delete(*buf);
    if (v14)
    {
LABEL_61:
      *(this + 30) = 0;
      goto LABEL_62;
    }

LABEL_59:
    v15 = *(this + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Failed to reset trace transport owner id for new boot instance", &__p, 2u);
    }

    goto LABEL_61;
  }

  v20 = 4;
  strcpy(buf, "Mode");
  memset(&__p, 0, sizeof(__p));
  if (!prop::bbtrace::get(buf, &__p))
  {
    v7 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_28;
    }

LABEL_24:
    if (v20 < 0)
    {
      goto LABEL_29;
    }

LABEL_25:
    if (v7)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  LODWORD(v17.__r_.__value_.__l.__data_) = -1431655766;
  v6 = util::convert<int>(&__p, &v17, 0);
  v7 = v6;
  if (!v6)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  *(this + 24) = v17.__r_.__value_.__l.__data_;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_28:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  operator delete(*buf);
  if (v7)
  {
    goto LABEL_32;
  }

LABEL_30:
  v8 = *(this + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to get trace mode from preferences for same boot instance", &__p, 2u);
  }

LABEL_32:
  v20 = 14;
  strcpy(buf, "TraceOwnership");
  memset(&__p, 0, sizeof(__p));
  if (!prop::bbtrace::get(buf, &__p))
  {
    v10 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_41;
    }

LABEL_37:
    if (v20 < 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  LODWORD(v17.__r_.__value_.__l.__data_) = -1431655766;
  v9 = util::convert<int>(&__p, &v17, 0);
  v10 = v9;
  if (!v9)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  *(this + 30) = v17.__r_.__value_.__l.__data_;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_41:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v20 < 0)
  {
LABEL_42:
    operator delete(*buf);
    if (v10)
    {
      goto LABEL_62;
    }

    goto LABEL_43;
  }

LABEL_38:
  if (v10)
  {
    goto LABEL_62;
  }

LABEL_43:
  v11 = *(this + 5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Failed to get transport owner id from preferences for same boot instance", &__p, 2u);
  }

LABEL_62:
  v16 = *MEMORY[0x277D85DE8];
}