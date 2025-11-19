void sub_23C1DD260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::locale a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  xpc_release(object);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a26);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a41);
  _Unwind_Resume(a1);
}

uint64_t abm::TapToRadarTask::fileRadar_sync(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, xpc_object_t *a5, uint64_t a6)
{
  v10 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v10 setScheme:@"tap-to-radar"];
  v91 = v10;
  [v10 setHost:@"new"];
  [v11 addObject:{objc_msgSend(MEMORY[0x277CCAD18], "queryItemWithName:value:", @"Keywords", @"677561"}];
  [v11 addObject:{objc_msgSend(MEMORY[0x277CCAD18], "queryItemWithName:value:", @"ComponentID", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", *(*(a1 + 104) + 16)))}];
  [v11 addObject:{objc_msgSend(MEMORY[0x277CCAD18], "queryItemWithName:value:", @"ComponentName", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", **(a1 + 104)))}];
  [v11 addObject:{objc_msgSend(MEMORY[0x277CCAD18], "queryItemWithName:value:", @"ComponentVersion", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", *(*(a1 + 104) + 8)))}];
  [v11 addObject:{objc_msgSend(MEMORY[0x277CCAD18], "queryItemWithName:value:", @"Classification", @"Crash/Hang/Data Loss"}];
  [v11 addObject:{objc_msgSend(MEMORY[0x277CCAD18], "queryItemWithName:value:", @"Reproducibility", @"I Didn't Try"}];
  v116 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v115[7] = v12;
  v115[8] = v12;
  v115[5] = v12;
  v115[6] = v12;
  v115[3] = v12;
  v115[4] = v12;
  v115[1] = v12;
  v115[2] = v12;
  v114 = v12;
  v115[0] = v12;
  v112 = v12;
  v113 = v12;
  v110 = v12;
  v111 = v12;
  v108 = v12;
  v109 = v12;
  v107 = v12;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v107);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, "[", 1);
  v14 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v15 = off_280C05AA8;
  if (!off_280C05AA8)
  {
    ctu::Gestalt::create_default_global(&v117.st_dev, v14);
    v16 = *&v117.st_dev;
    *&v117.st_dev = 0;
    v117.st_ino = 0;
    v17 = *(&off_280C05AA8 + 1);
    off_280C05AA8 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    st_ino = v117.st_ino;
    if (v117.st_ino && !atomic_fetch_add((v117.st_ino + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (st_ino->__on_zero_shared)(st_ino);
      std::__shared_weak_count::__release_weak(st_ino);
    }

    v15 = off_280C05AA8;
  }

  v93[0] = v15;
  v93[1] = *(&off_280C05AA8 + 1);
  if (*(&off_280C05AA8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05AA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v92 = v11;
  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v15 + 40))(__p, v15);
  if ((SBYTE7(v95) & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((SBYTE7(v95) & 0x80u) == 0)
  {
    v20 = BYTE7(v95);
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v19, v20);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " | ", 3);
  v23 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v24 = off_280C05AA8;
  if (!off_280C05AA8)
  {
    ctu::Gestalt::create_default_global(__dst, v23);
    v25 = __dst[0];
    __dst[0] = 0uLL;
    v26 = *(&off_280C05AA8 + 1);
    off_280C05AA8 = v25;
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }

    v27 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v24 = off_280C05AA8;
  }

  v28 = *(&off_280C05AA8 + 1);
  v105 = v24;
  v106 = *(&off_280C05AA8 + 1);
  if (*(&off_280C05AA8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05AA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (**v24)(&v117, v24);
  if ((v117.st_gid & 0x80000000) == 0)
  {
    v29 = &v117;
  }

  else
  {
    v29 = *&v117.st_dev;
  }

  if ((v117.st_gid & 0x80000000) == 0)
  {
    st_gid_high = HIBYTE(v117.st_gid);
  }

  else
  {
    st_gid_high = v117.st_ino;
  }

  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v29, st_gid_high);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "] ", 2);
  v33 = *(a3 + 23);
  if (v33 >= 0)
  {
    v34 = a3;
  }

  else
  {
    v34 = *a3;
  }

  if (v33 >= 0)
  {
    v35 = *(a3 + 23);
  }

  else
  {
    v35 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
  if (SHIBYTE(v117.st_gid) < 0)
  {
    operator delete(*&v117.st_dev);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
    if ((SBYTE7(v95) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (SBYTE7(v95) < 0)
  {
LABEL_44:
    operator delete(__p[0]);
  }

LABEL_45:
  if (v93[1] && !atomic_fetch_add(v93[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v93[1] + 16))(v93[1]);
    std::__shared_weak_count::__release_weak(v93[1]);
  }

  memset(__dst, 170, 24);
  if ((BYTE8(v114) & 0x10) != 0)
  {
    v38 = v114;
    if (v114 < *(&v111 + 1))
    {
      *&v114 = *(&v111 + 1);
      v38 = *(&v111 + 1);
    }

    v39 = v111;
    v36 = v38 - v111;
    if ((v38 - v111) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_167;
    }
  }

  else
  {
    if ((BYTE8(v114) & 8) == 0)
    {
      v36 = 0;
      BYTE7(v95) = 0;
      v37 = __p;
      goto LABEL_62;
    }

    v39 = *(&v109 + 1);
    v36 = *(&v110 + 1) - *(&v109 + 1);
    if (*(&v110 + 1) - *(&v109 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_167:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v36 >= 0x17)
  {
    if ((v36 | 7) == 0x17)
    {
      v40 = 25;
    }

    else
    {
      v40 = (v36 | 7) + 1;
    }

    v37 = operator new(v40);
    __p[1] = v36;
    *&v95 = v40 | 0x8000000000000000;
    __p[0] = v37;
    goto LABEL_61;
  }

  BYTE7(v95) = v36;
  v37 = __p;
  if (v36)
  {
LABEL_61:
    memmove(v37, v39, v36);
  }

LABEL_62:
  *(v37 + v36) = 0;
  v41 = BYTE7(v95);
  if ((SBYTE7(v95) & 0x80u) == 0)
  {
    v42 = __p;
  }

  else
  {
    v41 = __p[1];
    v42 = __p[0];
  }

  if (v41 >= 0xC8)
  {
    v43 = 200;
  }

  else
  {
    v43 = v41;
  }

  if (v41 >= 0x17)
  {
    if ((v43 | 7) == 0x17)
    {
      v51 = 25;
    }

    else
    {
      v51 = (v43 | 7) + 1;
    }

    v44 = operator new(v51);
    *(&__dst[0] + 1) = v43;
    *&__dst[1] = v51 | 0x8000000000000000;
    *&__dst[0] = v44;
LABEL_83:
    memmove(v44, v42, v43);
    v45 = 0x277CCA000;
    v46 = 0x277CCA000;
    *(v44 + v43) = 0;
    if ((SBYTE7(v95) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_84;
  }

  BYTE7(__dst[1]) = v43;
  v44 = __dst;
  if (v41)
  {
    goto LABEL_83;
  }

  v45 = 0x277CCA000uLL;
  v46 = 0x277CCA000uLL;
  *(__dst + v43) = 0;
  if ((SBYTE7(v95) & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

LABEL_84:
  operator delete(__p[0]);
LABEL_71:
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v47 = __dst;
  }

  else
  {
    v47 = *&__dst[0];
  }

  [v11 addObject:{objc_msgSend(*(v45 + 3352), "queryItemWithName:value:", @"Title", objc_msgSend(*(v46 + 3240), "stringWithUTF8String:", v47, &v108))}];
  if (*(a4 + 23) >= 0)
  {
    v48 = a4;
  }

  else
  {
    v48 = *a4;
  }

  [v11 addObject:{objc_msgSend(*(v45 + 3352), "queryItemWithName:value:", @"Description", objc_msgSend(*(v46 + 3240), "stringWithUTF8String:", v48))}];
  [v11 addObject:{objc_msgSend(*(v45 + 3352), "queryItemWithName:value:", @"DeleteOnAttach", @"1"}];
  v103 = 0xAAAAAAAAAAAAAAAALL;
  *&v49 = 0xAAAAAAAAAAAAAAAALL;
  *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v102[7] = v49;
  v102[8] = v49;
  v102[5] = v49;
  v102[6] = v49;
  v102[3] = v49;
  v102[4] = v49;
  v102[1] = v49;
  v102[2] = v49;
  v101 = v49;
  v102[0] = v49;
  *v99 = v49;
  v100 = v49;
  v97 = v49;
  v98 = v49;
  v95 = v49;
  v96 = v49;
  *__p = v49;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
  v50 = *a5;
  if (*a5)
  {
    xpc_retain(*a5);
LABEL_86:
    xpc_retain(v50);
    v52 = v50;
    goto LABEL_87;
  }

  v50 = xpc_null_create();
  if (v50)
  {
    goto LABEL_86;
  }

  v50 = xpc_null_create();
  v52 = 0;
LABEL_87:
  xpc_release(v52);
  v53 = *a5;
  if (*a5)
  {
    xpc_retain(*a5);
  }

  else
  {
    v53 = xpc_null_create();
  }

  if (MEMORY[0x23EECEE80](*a5) == MEMORY[0x277D86440])
  {
    count = xpc_array_get_count(*a5);
    if (v53)
    {
      goto LABEL_92;
    }

LABEL_94:
    v55 = xpc_null_create();
    goto LABEL_95;
  }

  count = 0;
  if (!v53)
  {
    goto LABEL_94;
  }

LABEL_92:
  xpc_retain(v53);
  v55 = v53;
LABEL_95:
  xpc_release(v53);
  if (count || v50 != v55)
  {
    v56 = 0;
    v57 = count - 1;
    while (1)
    {
      while (1)
      {
        memset(v93, 170, sizeof(v93));
        value = xpc_array_get_value(v50, v56);
        *&v117.st_dev = value;
        if (value)
        {
          xpc_retain(value);
        }

        else
        {
          *&v117.st_dev = xpc_null_create();
        }

        xpc::dyn_cast_or_default();
        xpc_release(*&v117.st_dev);
        if (SHIBYTE(v93[2]) >= 0)
        {
          v59 = v93;
        }

        else
        {
          v59 = v93[0];
        }

        if (SHIBYTE(v93[2]) >= 0)
        {
          v60 = HIBYTE(v93[2]);
        }

        else
        {
          v60 = v93[1];
        }

        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, v59, v60);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, ",", 1);
        v62.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v62.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v117.st_blksize = v62;
        *v117.st_qspare = v62;
        v117.st_birthtimespec = v62;
        *&v117.st_size = v62;
        v117.st_mtimespec = v62;
        v117.st_ctimespec = v62;
        *&v117.st_uid = v62;
        v117.st_atimespec = v62;
        *&v117.st_dev = v62;
        if (SHIBYTE(v93[2]) >= 0)
        {
          v63 = v93;
        }

        else
        {
          v63 = v93[0];
        }

        if (!stat(v63, &v117))
        {
          v64 = SHIBYTE(v93[2]) >= 0 ? v93 : v93[0];
          v65 = opendir(v64);
          v66 = v65;
          if (v65)
          {
            readdir(v65);
            closedir(v66);
          }
        }

        ctu::fs::chmod();
        if ((SHIBYTE(v93[2]) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(v93[0]);
        v67 = v56 + 1;
        v68 = v57 == v56++;
        if (v68)
        {
          goto LABEL_122;
        }
      }

      v67 = v56 + 1;
      v68 = v57 == v56++;
      if (v68)
      {
LABEL_122:
        v56 = v67;
        if (v50 == v55)
        {
          break;
        }
      }
    }
  }

  xpc_release(v55);
  xpc_release(v50);
  strlen(abm::trace::kSnapshotFolder[0]);
  ctu::fs::chmod();
  v69 = *(a6 + 23);
  if (a2 == 3)
  {
    v70 = *(a6 + 8);
  }

  else
  {
    v70 = *(a6 + 8);
    if (v69 >= 0)
    {
      v71 = *(a6 + 23);
    }

    else
    {
      v71 = *(a6 + 8);
    }

    if (!v71)
    {
      v75 = @"sysdiagnose-only";
      goto LABEL_136;
    }
  }

  if (v69 >= 0)
  {
    v72 = a6;
  }

  else
  {
    v72 = *a6;
  }

  if (v69 >= 0)
  {
    v73 = *(a6 + 23);
  }

  else
  {
    v73 = v70;
  }

  v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, v72, v73);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, ",", 1);
  v75 = @"-1";
LABEL_136:
  [v92 addObject:{objc_msgSend(MEMORY[0x277CCAD18], "queryItemWithName:value:", @"autodiagnostics", v75)}];
  v76 = MEMORY[0x277CCAD18];
  v77 = MEMORY[0x277CCACA8];
  if ((BYTE8(v101) & 0x10) != 0)
  {
    v80 = v101;
    if (v101 < *(&v98 + 1))
    {
      *&v101 = *(&v98 + 1);
      v80 = *(&v98 + 1);
    }

    v81 = v98;
    v78 = v80 - v98;
    if ((v80 - v98) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_169;
    }
  }

  else
  {
    if ((BYTE8(v101) & 8) == 0)
    {
      v78 = 0;
      HIBYTE(v117.st_gid) = 0;
      v79 = &v117;
      goto LABEL_150;
    }

    v81 = *(&v96 + 1);
    v78 = *(&v97 + 1) - *(&v96 + 1);
    if (*(&v97 + 1) - *(&v96 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_169:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v78 >= 0x17)
  {
    if ((v78 | 7) == 0x17)
    {
      v82 = 25;
    }

    else
    {
      v82 = (v78 | 7) + 1;
    }

    v79 = operator new(v82);
    v117.st_ino = v78;
    *&v117.st_uid = v82 | 0x8000000000000000;
    *&v117.st_dev = v79;
    goto LABEL_149;
  }

  HIBYTE(v117.st_gid) = v78;
  v79 = &v117;
  if (v78)
  {
LABEL_149:
    memmove(v79, v81, v78);
  }

LABEL_150:
  *(v79 + v78) = 0;
  if ((v117.st_gid & 0x80000000) == 0)
  {
    v83 = &v117;
  }

  else
  {
    v83 = *&v117.st_dev;
  }

  [v92 addObject:{objc_msgSend(v76, "queryItemWithName:value:", @"Attachments", objc_msgSend(v77, "stringWithUTF8String:", v83))}];
  if (SHIBYTE(v117.st_gid) < 0)
  {
    operator delete(*&v117.st_dev);
  }

  [v91 setQueryItems:v92];
  [objc_msgSend(MEMORY[0x277CC1E80] "defaultWorkspace")];
  if (v91)
  {
  }

  if (v92)
  {
  }

  __p[0] = *MEMORY[0x277D82818];
  v84 = __p[0];
  v85 = *(MEMORY[0x277D82818] + 72);
  v86 = *(MEMORY[0x277D82818] + 64);
  *(__p + *(__p[0] - 3)) = v86;
  v87 = v85;
  *&v95 = v85;
  *(&v95 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99[1]);
  }

  *(&v95 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v96);
  std::iostream::~basic_iostream();
  MEMORY[0x23EECE150](v102);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  *&v107 = v84;
  *(&v107 + *(v84 - 3)) = v86;
  *&v108 = v87;
  *(&v108 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v113) < 0)
  {
    operator delete(*(&v112 + 1));
  }

  *(&v108 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v109);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EECE150](v115);
}

void sub_23C1DE328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a14);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a62);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL abm::TapToRadarTask::checkTraceLogsInArchive_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  archive_read_new();
  v31 = 0xAAAAAAAAAAAAAAAALL;
  if (archive_read_support_format_tar() || archive_read_support_filter_all())
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "Failed to open archive", __p, 2u);
    }

LABEL_5:
    archive_read_free();
    goto LABEL_6;
  }

  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  open_filename = archive_read_open_filename();
  if (open_filename)
  {
    v11 = open_filename;
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v28 = a2;
      }

      else
      {
        v28 = *a2;
      }

      *__p = 136315394;
      *&__p[4] = v28;
      *&__p[12] = 1024;
      *&__p[14] = v11;
      _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Failed to open %s with Error %d", __p, 0x12u);
    }

    goto LABEL_5;
  }

  next_header = archive_read_next_header();
  if (!next_header)
  {
    while (*(a3 + 8) != *a3)
    {
      v14 = archive_entry_pathname();
      v15 = *a3;
      if (*a3 < *(a3 + 8))
      {
        v16 = v14;
        v17 = (v15 + 1);
        while (1)
        {
          *&v18 = 0xAAAAAAAAAAAAAAAALL;
          *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v29[2] = v18;
          v30 = v18;
          v29[0] = v18;
          v29[1] = v18;
          std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v29, *v15, 0);
          v19 = strlen(v16);
          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v39 = v20;
          v36 = 0xAAAAAAAAAAAAAA00;
          v33 = 0xAAAAAAAAAAAAAAAALL;
          v34 = 0;
          v35 = 0;
          v37 = 0;
          v38 = 0;
          LOBYTE(v39) = 0;
          BYTE8(v39) = 0;
          v40 = 0;
          memset(__p, 0, sizeof(__p));
          v21 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v29, v16, &v16[v19], __p, 4160);
          if (v21 && (v39 & 1) != 0)
          {
            v21 = 0;
          }

          if (*__p)
          {
            *&__p[8] = *__p;
            operator delete(*__p);
          }

          if (v21)
          {
            break;
          }

          v22 = v30;
          if (v30 && !atomic_fetch_add((v30 + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }

          std::locale::~locale(v29);
          ++v15;
          v17 += 8;
          if (v15 >= *(a3 + 8))
          {
            goto LABEL_33;
          }
        }

        v23 = *(a3 + 8);
        v24 = v23 - v17;
        if (v23 != v17)
        {
          memmove(v17 - 8, v17, v23 - v17);
        }

        *(a3 + 8) = &v17[v24 - 8];
        v25 = v30;
        if (v30 && !atomic_fetch_add((v30 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        std::locale::~locale(v29);
      }

LABEL_33:
      next_header = archive_read_next_header();
      if (next_header)
      {
        goto LABEL_34;
      }
    }

    archive_read_free();
    goto LABEL_41;
  }

LABEL_34:
  archive_read_free();
  if (next_header == 1)
  {
LABEL_41:
    result = 1;
    goto LABEL_7;
  }

  v26 = *(a1 + 40);
  result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    goto LABEL_7;
  }

  if (*(a2 + 23) >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  *__p = 136315394;
  *&__p[4] = v27;
  *&__p[12] = 1024;
  *&__p[14] = next_header;
  _os_log_error_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_ERROR, "Failed while reading archive %s with Error %d", __p, 0x12u);
LABEL_6:
  result = 0;
LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C1DE900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a9);
  _Unwind_Resume(a1);
}

uint64_t util::convert<BOOL>(const std::string *a1, BOOL *a2, int a3)
{
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = a1->__r_.__value_.__r.__words[0];
    if (strcasecmp(a1->__r_.__value_.__l.__data_, "false") && strcasecmp(v6, "off") && strcasecmp(v6, "no"))
    {
      if (!strcasecmp(v6, "true") || !strcasecmp(v6, "on") || !strcasecmp(v6, "yes") || !strcasecmp(v6, "full") || !strcasecmp(v6, "streaming") || !strcasecmp(v6, "lite"))
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

LABEL_28:
    v10 = 0;
LABEL_30:
    *a2 = v10;
    return 1;
  }

  if (!strcasecmp(a1, "false") || !strcasecmp(a1, "off") || !strcasecmp(a1, "no"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(a1, "true"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "on"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "yes"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "full"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "streaming"))
  {
    goto LABEL_29;
  }

  v6 = a1;
  if (!strcasecmp(a1, "lite"))
  {
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v6, "background"))
  {
LABEL_29:
    v10 = 1;
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v7 = std::stol(a1, &__idx, a3);
  result = 0;
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v10 = v7 != 0;
  if (__idx == size && v7 < 2)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_23C1DEB58(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void ___ZN3abm14TapToRadarTask32checkAttachmentForRadarType_syncENS_6helper9RadarTypeERN3xpc5arrayE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v5 = 136315138;
    v6 = a2;
    _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Failed to find logs with [%s]", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

BOOL abm::TapToRadarTask::sysdiagnoseDumpRequired(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = *(a3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 8);
  }

  return v4 == 0;
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
  std::iostream::~basic_iostream();
  MEMORY[0x23EECE150](a1 + 128);
  return a1;
}

void *ctu::os::signpost_interval::signpost_interval(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2 + 2;
  v6 = a2 + 5;
  v5 = a2[5];
  if (!v5)
  {
    v6 = a1 + 5;
    goto LABEL_5;
  }

  if (v5 != v4)
  {
    a1[5] = v5;
LABEL_5:
    *v6 = 0;
    goto LABEL_7;
  }

  a1[5] = a1 + 2;
  v7 = a2;
  (*(**v6 + 24))(*v6, a1 + 2);
  a2 = v7;
LABEL_7:
  *a2 = 0;
  a2[1] = 0;
  v8 = a2[5];
  a2[5] = 0;
  if (v8 == v4)
  {
    (*(*v8 + 32))(v8);
    return a1;
  }

  else
  {
    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    return a1;
  }
}

xpc_object_t *xpc::array::array(xpc_object_t *a1, xpc_object_t object)
{
  *a1 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  return a1;
}

uint64_t std::function<void ()(os_log_s *,unsigned long long)>::~function(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>::~callback(uint64_t a1)
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

void ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__0ES2_EEEvDpT__block_invoke(uint64_t a1)
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

xpc_object_t __copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void *_ZNKSt3__110__function6__funcIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__1NS_9allocatorIS4_EEFvP8os_log_syEE7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_284EF9330;
  return result;
}

void _ZNSt3__110__function6__funcIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__1NS_9allocatorIS4_EEFvP8os_log_syEEclEOS8_Oy(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_23C1C4000, v4, OS_SIGNPOST_INTERVAL_END, v3, "CellularTapToRadar", "", v5, 2u);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__1NS_9allocatorIS4_EEFvP8os_log_syEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3abm14TapToRadarTask9init_syncEvEUb_E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3abm14TapToRadarTask9init_syncEvEUb_E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3abm14TapToRadarTask9init_syncEvEUb_E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3abm14TapToRadarTask9init_syncEvEUb_E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *_ZNSt3__110unique_ptrIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 143) < 0)
    {
      operator delete(*(v1 + 120));
    }

    xpc_release(*(v1 + 112));
    *(v1 + 112) = 0;
    if (*(v1 + 111) < 0)
    {
      operator delete(*(v1 + 88));
      if ((*(v1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((*(v1 + 79) & 0x80000000) == 0)
    {
LABEL_6:
      ctu::os::signpost_interval::~signpost_interval(v1);
      operator delete(v3);
      return v2;
    }

    operator delete(*(v1 + 56));
    goto LABEL_6;
  }

  return result;
}

void *_ZZN8dispatch5asyncIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_(uint64_t a1)
{
  v25[0] = a1;
  v2 = *(a1 + 80);
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:@"Dismiss" forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  if (*(a1 + 48) == 5)
  {
    v4 = @"Cellular Audio Problem Detected";
  }

  else
  {
    v4 = @"Cellular Problem Detected";
  }

  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CBF188]];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBF1B0]];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67340]];
  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67320]];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D673D8]];
  if (TelephonyUtilIsInternalBuild())
  {
    [v3 setObject:@"File Radar" forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  }

  v5 = a1 + 56;
  if (*(a1 + 79) < 0)
  {
    v5 = *(a1 + 56);
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277CBF198]];
  [v3 setObject:@"Disable notifications" forKeyedSubscript:*MEMORY[0x277CBF218]];
  error = 0;
  responseFlags = 3;
  v7 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 300.0, 3uLL, &error, v3);
  v8 = v7;
  if (v7 && !error)
  {
    error = CFUserNotificationReceiveResponse(v7, 0.0, &responseFlags);
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    if (responseFlags == 1)
    {
      v10 = IsInternalBuild;
    }

    else
    {
      v10 = 0;
    }

    if (v10 == 1 && !error)
    {
      memset(__p, 170, 24);
      abm::TapToRadarTask::prepareRadar_sync(*(a1 + 48), a1 + 88, (a1 + 112), a1 + 120, __p);
      abm::TapToRadarTask::fileRadar_sync(v2, *(a1 + 48), a1 + 56, __p, (a1 + 112), a1 + 120);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      goto LABEL_18;
    }

    if (responseFlags == 2 && !error)
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
      v30 = 0xAAAAAAAAAAAAAAAALL;
      __p[23] = 10;
      strcpy(__p, "TapToRadar");
      v12 = *(v2 + 24);
      abm::client::CreateManager();
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
      v15 = xpc_string_create("TTR");
      if (!v15)
      {
        v15 = xpc_null_create();
      }

      xpc_dictionary_set_value(v14, "kKeyTraceName", v15);
      v16 = xpc_null_create();
      xpc_release(v15);
      xpc_release(v16);
      v17 = xpc_string_create("Mode");
      if (!v17)
      {
        v17 = xpc_null_create();
      }

      xpc_dictionary_set_value(v14, "kKeyTracePropertyName", v17);
      v18 = xpc_null_create();
      xpc_release(v17);
      xpc_release(v18);
      memset(buf, 0, 24);
      std::to_string(__p, 0);
      *buf = *__p;
      *&buf[16] = *&__p[16];
      if (__p[23] >= 0)
      {
        v19 = buf;
      }

      else
      {
        v19 = *buf;
      }

      v20 = xpc_string_create(v19);
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      xpc_dictionary_set_value(v14, "kKeyTracePropertyValue", v20);
      v21 = xpc_null_create();
      xpc_release(v20);
      xpc_release(v21);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v22;
      *&__p[16] = v22;
      v25[1] = v29;
      v26 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *buf = operator new(0x20uLL);
      *&buf[8] = xmmword_23C32C5A0;
      strcpy(*buf, "kCommandSetTraceProperty");
      abm::client::PerformCommand();
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      if (*__p && (v23 = *(v2 + 40), os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v23, OS_LOG_TYPE_ERROR, "Failed to disable Radar Notifications", buf, 2u);
        if ((__p[31] & 0x80000000) == 0)
        {
          goto LABEL_50;
        }
      }

      else if ((__p[31] & 0x80000000) == 0)
      {
LABEL_50:
        xpc_release(v14);
        v24 = v30;
        if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
        }

        goto LABEL_18;
      }

      operator delete(*&__p[8]);
      goto LABEL_50;
    }

LABEL_18:
    CFRelease(v8);
    return _ZNSt3__110unique_ptrIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(v25);
  }

  if (v7)
  {
    goto LABEL_18;
  }

  return _ZNSt3__110unique_ptrIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(v25);
}

void sub_23C1DF998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  xpc_release(v24);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v25 - 80);
  _ZNSt3__110unique_ptrIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void sub_23C1DF9F4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C1DF7A8);
}

void sub_23C1DFA00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x23C1DF9BCLL);
}

void sub_23C1DFA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _ZNSt3__110unique_ptrIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(&a10);
    _Unwind_Resume(a1);
  }

  _ZNSt3__110unique_ptrIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1, char *a2, int a3)
{
  v6 = MEMORY[0x23EECE100]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x277D82680]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = strlen(a2);
  if (std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(a1, a2, &a2[v7]) != &a2[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_23C1DFB24(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(uint64_t a1, std::basic_regex<char> *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_284EF8B98;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_284EF8BF0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (v11 != 64)
    {
      if (v11 == 128)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(a1, a2, a3);
      }

      if (v11 == 256)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(a1, a2, a3);
      }

LABEL_44:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
    }

LABEL_15:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, a2, a3);
  }

  v10 = *(a1 + 40);
  *(a1 + 56) = v10;
  v11 = *(a1 + 24) & 0x1F0;
  if (v11 > 0x3F)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v11)
  {
    if (v11 == 16)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, a2, a3);
    }

    if (v11 != 32)
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

  v13 = a2;
  while (1)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v13, a3);
    if (result == v13)
    {
      break;
    }

LABEL_25:
    v14 = result == v13;
    v13 = result;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  v15 = *(a1 + 56);
  v16 = *(a1 + 28);
  v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v13, a3);
  if (v17 != v13)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v17, a3, v15, (v16 + 1), (*(a1 + 28) + 1));
    goto LABEL_25;
  }

  result = v13;
LABEL_30:
  if (result == a2)
  {
    v18 = result;
    v19 = operator new(0x10uLL);
    result = v18;
    v20 = *(a1 + 56);
    v21 = *(v20 + 8);
    v19[1] = v21;
    *(v20 + 8) = v19;
    *(a1 + 56) = v19;
  }

  if (result != a3)
  {
LABEL_35:
    if (*result != 124)
    {
      return result;
    }

    v29 = *(a1 + 56);
    v30 = result + 1;
    v31 = result + 1;
    while (1)
    {
      v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v31, a3);
      if (v32 == v31)
      {
        v33 = *(a1 + 56);
        v34 = *(a1 + 28);
        v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v31, a3);
        if (v35 == v31)
        {
          v32 = v31;
LABEL_42:
          v36 = v32;
          if (v32 == v30)
          {
            v37 = operator new(0x10uLL);
            v38 = *(a1 + 56);
            v39 = *(v38 + 8);
            v37[1] = v39;
            *(v38 + 8) = v37;
            *(a1 + 56) = v37;
          }

          v22 = operator new(0x18uLL);
          v23 = *(v29 + 8);
          v22[1] = *(v10 + 8);
          v22[2] = v23;
          *v22 = &unk_284EF91B0;
          *(v10 + 8) = v22;
          *(v29 + 8) = 0;
          v24 = operator new(0x10uLL);
          v25 = *(a1 + 56);
          v26 = *(v25 + 8);
          v24[1] = v26;
          *(v29 + 8) = v24;
          *(v25 + 8) = 0;
          v27 = operator new(0x10uLL);
          v28 = *(v29 + 8);
          *v27 = &unk_284EF91F8;
          v27[1] = v28;
          *(v25 + 8) = v27;
          *(a1 + 56) = *(v29 + 8);
          result = v36;
          if (v36 == a3)
          {
            return result;
          }

          goto LABEL_35;
        }

        v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v35, a3, v33, (v34 + 1), (*(a1 + 28) + 1));
      }

      v14 = v32 == v31;
      v31 = v32;
      if (v14)
      {
        goto LABEL_42;
      }
    }
  }

  return result;
}

void sub_23C1DFFCC(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  result = a2;
  while (1)
  {
    v8 = result;
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, result, a3);
    if (result == v8)
    {
      break;
    }

LABEL_2:
    if (result == v8)
    {
      goto LABEL_7;
    }
  }

  v9 = a1->__end_;
  marked_count = a1->__marked_count_;
  v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v8);
  if (v11 != v8)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v9, marked_count + 1, a1->__marked_count_ + 1);
    goto LABEL_2;
  }

  result = v8;
LABEL_7:
  if (v8 == a2)
  {
    v12 = result;
    v13 = operator new(0x10uLL);
    result = v12;
    v14 = a1->__end_;
    first = v14->__first_;
    v13->__first_ = first;
    v14->__first_ = v13;
    a1->__end_ = v13;
  }

  if (v8 != a3)
  {
LABEL_12:
    if (*result != 124)
    {
      return result;
    }

    v23 = a1->__end_;
    v24 = (result + 1);
    v25 = result + 1;
    while (1)
    {
      v26 = v25;
      v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v25, a3);
      if (v25 == v26)
      {
        v27 = a1->__end_;
        v28 = a1->__marked_count_;
        v29 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v26);
        if (v29 == v26)
        {
          v25 = v26;
LABEL_19:
          v30 = v25;
          if (v26 == v24)
          {
            v31 = operator new(0x10uLL);
            v32 = a1->__end_;
            v33 = v32->__first_;
            v31->__first_ = v33;
            v32->__first_ = v31;
            a1->__end_ = v31;
          }

          v16 = operator new(0x18uLL);
          v17 = v23->__first_;
          v16[1].__vftable = end->__first_;
          v16[2].__vftable = v17;
          v16->__vftable = &unk_284EF91B0;
          end->__first_ = v16;
          v23->__first_ = 0;
          v18 = operator new(0x10uLL);
          v19 = a1->__end_;
          v20 = v19->__first_;
          v18[1].__vftable = v20;
          v23->__first_ = v18;
          v19->__first_ = 0;
          v21 = operator new(0x10uLL);
          v22 = v23->__first_;
          v21->__vftable = &unk_284EF91F8;
          v21[1].__vftable = v22;
          v19->__first_ = v21;
          a1->__end_ = v23->__first_;
          result = v30;
          if (v26 == a3)
          {
            return result;
          }

          goto LABEL_12;
        }

        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v29, a3, v27, v28 + 1, a1->__marked_count_ + 1);
      }

      if (v25 == v26)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    v6 = operator new(0x18uLL);
    v7 = (*(a1 + 24) & 0x5F0) == 1024;
    v8 = *(a1 + 56);
    v9 = *(v8 + 8);
    *v6 = &unk_284EF8CE8;
    v6[1] = v9;
    *(v6 + 16) = v7;
    *(v8 + 8) = v6;
    *(a1 + 56) = v6;
    ++v3;
  }

  if (v3 != a3)
  {
    while (1)
    {
      if (v3 == a3)
      {
        v13 = v3;
LABEL_11:
        if (v13 == a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v10 = *(a1 + 56);
      v11 = *(a1 + 28);
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v3, a3);
      if (v12 == v3)
      {
        break;
      }

      v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v12, a3, v10, (v11 + 1), (*(a1 + 28) + 1));
      v14 = v13 == v3;
      v3 = v13;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    v13 = v3;
    if (v3 == a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    v3 = &v13->__traits_.__loc_.__locale_ + 1;
    if ((&v13->__traits_.__loc_.__locale_ + 1) != a3 || LOBYTE(v13->__traits_.__loc_.__locale_) != 36)
    {
      goto LABEL_18;
    }

    v15 = operator new(0x18uLL);
    v16 = (*(a1 + 24) & 0x5F0) == 1024;
    v17 = *(a1 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_284EF8D30;
    v15[1] = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(a1 + 56) = v15;
  }

  v13 = v3;
LABEL_18:
  v3 = v13;
  if (v13 != a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  return v3;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
LABEL_11:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 != a3)
  {
    while (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v9 = *(a1 + 56);
      v10 = (&v8->__traits_.__loc_.__locale_ + 1);
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, (&v8->__traits_.__loc_.__locale_ + 1), a3);
      if (v11 == (&v8->__traits_.__loc_.__locale_ + 1))
      {
        goto LABEL_11;
      }

      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v11, a3);
      }

      while (v11 != v8);
      if (v8 == v10)
      {
        goto LABEL_11;
      }

      v12 = operator new(0x18uLL);
      v13 = *(v9 + 8);
      v12[1] = *(v6 + 8);
      v12[2] = v13;
      *v12 = &unk_284EF91B0;
      *(v6 + 8) = v12;
      *(v9 + 8) = 0;
      v14 = operator new(0x10uLL);
      v15 = *(a1 + 56);
      v16 = *(v15 + 8);
      v14[1] = v16;
      *(v9 + 8) = v14;
      *(v15 + 8) = 0;
      v17 = operator new(0x10uLL);
      v18 = *(v9 + 8);
      *v17 = &unk_284EF91F8;
      v17[1] = v18;
      *(v15 + 8) = v17;
      *(a1 + 56) = *(v9 + 8);
      if (v8 == a3)
      {
        return v8;
      }
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_284EF91B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_284EF91F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return v10;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(uint64_t a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_284EF91B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_284EF91F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = (&v24->__traits_.__loc_.__locale_ + 1);
    }
  }

  while (v10 != a3);
  return v10;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      if (a2 + 1 != a3)
      {
        v13 = a2[1];
        if (v13 == 66)
        {
          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          first = v14->__end_->__first_;
          *v16 = &unk_284EF8D78;
          *(v16 + 1) = first;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 1;
        }

        else
        {
          if (v13 != 98)
          {
            return a2;
          }

          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          v17 = v14->__end_->__first_;
          *v16 = &unk_284EF8D78;
          *(v16 + 1) = v17;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 0;
        }

        v14->__end_->__first_ = v16;
        v14->__end_ = v16;
        return v15 + 2;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9[1] = end->__first_;
    v12 = &unk_284EF8CE8;
LABEL_14:
    *v9 = v12;
    *(v9 + 16) = v10;
    end->__first_ = v9;
    v7->__end_ = v9;
    return v8 + 1;
  }

  if (v3 == 36)
  {
    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9[1] = end->__first_;
    v12 = &unk_284EF8D30;
    goto LABEL_14;
  }

  v5 = v3 == 40;
  v4 = a2 + 1;
  v5 = !v5 || v4 == a3;
  if (v5)
  {
    return a2;
  }

  v5 = *v4 == 63;
  v18 = a2 + 2;
  if (!v5 || v18 == a3)
  {
    return a2;
  }

  v20 = *v18;
  if (v20 == 33)
  {
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v35.__loop_count_ = v29;
    *&v35.__start_.__cntrl_ = v29;
    *&v35.__traits_.__loc_.__locale_ = v29;
    *&v35.__traits_.__col_ = v29;
    v31 = a2;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
    v33 = a1;
    v35.__flags_ = a1->__flags_;
    v34 = a3;
    v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, v31 + 3, a3);
    LODWORD(v31) = v35.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v33, &v35, 1, v33->__marked_count_);
    v33->__marked_count_ += v31;
    if (v27 == v34 || *v27 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_32;
  }

  if (v20 != 61)
  {
    return a2;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v35.__loop_count_ = v21;
  *&v35.__start_.__cntrl_ = v21;
  *&v35.__traits_.__loc_.__locale_ = v21;
  *&v35.__traits_.__col_ = v21;
  v23 = a2;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
  v25 = a1;
  v35.__flags_ = a1->__flags_;
  v26 = a3;
  v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, v23 + 3, a3);
  LODWORD(v23) = v35.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v25, &v35, 0, v25->__marked_count_);
  v25->__marked_count_ += v23;
  if (v27 == v26 || *v27 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_32:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v35.__traits_.__loc_);
  return v27 + 1;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low != 40)
    {
      if (locale_low == 46)
      {
        v4 = a1;
        v6 = operator new(0x10uLL);
        v7 = *(v4 + 56);
        v8 = *(v7 + 8);
        *v6 = &unk_284EF8E08;
        v6[1] = v8;
        *(v7 + 8) = v6;
        *(v4 + 56) = v6;
        return (&this->__traits_.__loc_.__locale_ + 1);
      }

      if (locale_low - 42 >= 2)
      {
        goto LABEL_27;
      }

LABEL_47:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    v14 = &this->__traits_.__loc_.__locale_ + 1;
    if ((&this->__traits_.__loc_.__locale_ + 1) != a3)
    {
      if ((&this->__traits_.__loc_.__locale_ + 2) != a3 && *v14 == 63 && BYTE2(this->__traits_.__loc_.__locale_) == 58)
      {
        v15 = (a1 + 36);
        ++*(a1 + 36);
        v16 = a3;
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, &this->__traits_.__loc_.__locale_ + 3, a3);
        if (v17 == v16)
        {
          goto LABEL_56;
        }

        v18 = v17;
        if (*v17 != 41)
        {
          goto LABEL_56;
        }

LABEL_43:
        --*v15;
        return (v18 + 1);
      }

      if ((*(a1 + 24) & 2) != 0)
      {
        v23 = *(a1 + 28);
      }

      else
      {
        v19 = a1;
        v20 = a3;
        v21 = operator new(0x18uLL);
        a3 = v20;
        v22 = v21;
        a1 = v19;
        v23 = *(v19 + 28) + 1;
        *(v19 + 28) = v23;
        v24 = *(v19 + 56);
        v25 = *(v24 + 8);
        *v22 = &unk_284EF9048;
        v22[1] = v25;
        *(v22 + 4) = v23;
        *(v24 + 8) = v22;
        *(v19 + 56) = v22;
      }

      v15 = (a1 + 36);
      ++*(a1 + 36);
      v29 = a1;
      v30 = a3;
      v31 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, v14, a3);
      if (v31 != v30)
      {
        v18 = v31;
        if (*v31 == 41)
        {
          if ((*(v29 + 24) & 2) == 0)
          {
            v32 = operator new(0x18uLL);
            v33 = *(v29 + 56);
            v34 = *(v33 + 8);
            *v32 = &unk_284EF9090;
            v32[1] = v34;
            *(v32 + 4) = v23;
            *(v33 + 8) = v32;
            *(v29 + 56) = v32;
          }

          goto LABEL_43;
        }
      }
    }

LABEL_56:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (LOBYTE(this->__traits_.__loc_.__locale_) > 0x5Bu)
  {
    if (locale_low != 92)
    {
      if (locale_low == 123)
      {
        goto LABEL_47;
      }

      goto LABEL_27;
    }

    v11 = &this->__traits_.__loc_.__locale_ + 1;
    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v13 = *v11;
    if (v13 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      return (&this->__traits_.__loc_.__locale_ + 2);
    }

    if ((v13 - 49) <= 8)
    {
      v26 = (v13 - 48);
      v9 = &this->__traits_.__loc_.__locale_ + 2;
      if ((&this->__traits_.__loc_.__locale_ + 2) == a3)
      {
        v28 = a3;
      }

      else
      {
        while (1)
        {
          v27 = *v9;
          if ((v27 - 48) > 9)
          {
            break;
          }

          if (v26 >= 0x19999999)
          {
            goto LABEL_57;
          }

          v26 = v27 + 10 * v26 - 48;
          if (++v9 == a3)
          {
            v9 = a3;
            break;
          }
        }

        v28 = a3;
        if (!v26)
        {
LABEL_57:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
        }
      }

      if (v26 > *(a1 + 28))
      {
        goto LABEL_57;
      }

      v35 = a1;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v26);
      a1 = v35;
      a3 = v28;
      if (v9 != v11)
      {
        return v9;
      }
    }

    v36 = a1;
    v37 = a3;
    v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v11, a3);
    v39 = v37;
    v9 = v38;
    if (v38 == v11)
    {
      v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(v36, v11, v39, 0);
      if (v40 == v11)
      {
        return this;
      }

      else
      {
        return v40;
      }
    }

    return v9;
  }

  if (locale_low != 91)
  {
    if (locale_low == 63)
    {
      goto LABEL_47;
    }

LABEL_27:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, this, a3);
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, this, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  v6 = *(a1 + 24) & 0x1F0;
  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low == 42)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (v6)
      {
        v19 = 1;
      }

      else
      {
        v19 = v8 == a3;
      }

      if (!v19 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 0;
        goto LABEL_34;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 0;
      goto LABEL_43;
    }

    if (locale_low == 43)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 1;
LABEL_34:
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v10, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 0);
        return v9;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 1;
      goto LABEL_43;
    }

    return this;
  }

  if (locale_low == 63)
  {
    v20 = (&this->__traits_.__loc_.__locale_ + 1);
    if (v6)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (v21 || LOBYTE(v20->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 1);
      return v20;
    }

    else
    {
      v22 = &this->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 0);
      return v22;
    }
  }

  else
  {
    if (locale_low != 123)
    {
      return this;
    }

    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v11 = BYTE1(this->__traits_.__loc_.__locale_);
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      goto LABEL_69;
    }

    v12 = v11 - 48;
    v13 = (&this->__traits_.__loc_.__locale_ + 2);
    if ((&this->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v14 = LOBYTE(v13->__traits_.__loc_.__locale_);
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          break;
        }

        if (v12 >= 214748364)
        {
          goto LABEL_69;
        }

        v12 = v14 + 10 * v12 - 48;
        v13 = (v13 + 1);
        if (v13 == a3)
        {
          v13 = a3;
          break;
        }
      }
    }

    if (v13 == a3)
    {
      goto LABEL_70;
    }

    v15 = LOBYTE(v13->__traits_.__loc_.__locale_);
    if (v15 != 44)
    {
      if (v15 == 125)
      {
        v16 = (&v13->__traits_.__loc_.__locale_ + 1);
        if (v6 || v16 == a3 || LOBYTE(v16->__traits_.__loc_.__locale_) != 63)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 1);
          return v16;
        }

        else
        {
          v17 = &v13->__traits_.__loc_.__locale_ + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 0);
          return v17;
        }
      }

LABEL_69:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

    if ((&v13->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v24 = BYTE1(v13->__traits_.__loc_.__locale_);
    if (v24 == 125)
    {
      v8 = (&v13->__traits_.__loc_.__locale_ + 2);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v10 = v12;
        v9 = &v13->__traits_.__loc_.__locale_ + 3;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_34;
      }

      v23 = v12;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
LABEL_43:
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v23, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
      return v8;
    }

    if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
    {
      goto LABEL_70;
    }

    v25 = v24 - 48;
    v26 = (&v13->__traits_.__loc_.__locale_ + 2);
    if (v26 != a3)
    {
      while (1)
      {
        v27 = LOBYTE(v26->__traits_.__loc_.__locale_);
        if ((v27 & 0xF8) != 0x30 && (v27 & 0xFE) != 0x38)
        {
          break;
        }

        if (v25 >= 214748364)
        {
          goto LABEL_69;
        }

        v25 = v27 + 10 * v25 - 48;
        v26 = (v26 + 1);
        if (v26 == a3)
        {
          v26 = a3;
          break;
        }
      }
    }

    if (v26 == a3 || LOBYTE(v26->__traits_.__loc_.__locale_) != 125)
    {
LABEL_70:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

    if (v25 < v12)
    {
      goto LABEL_69;
    }

    v28 = (&v26->__traits_.__loc_.__locale_ + 1);
    if (v6 || v28 == a3 || LOBYTE(v28->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 1);
      return v28;
    }

    else
    {
      v29 = &v26->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 0);
      return v29;
    }
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_23;
    }

    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      ++v7;
    }

    if (v7 == a3)
    {
      goto LABEL_23;
    }

    do
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v7, a3, v8);
      v10 = v9 == v7;
      v7 = v9;
    }

    while (!v10);
    if (v9 == a3)
    {
      goto LABEL_23;
    }

    if (*v9 == 45)
    {
      v11 = v9;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      v9 = v11 + 1;
    }

    if (v9 == a3 || *v9 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v9 + 1;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v18 = a2;
          v19 = 12;
          goto LABEL_80;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v18 = a2;
          v19 = 10;
          goto LABEL_80;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v18 = a2;
            v19 = 0;
            goto LABEL_80;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 0;
          return a2 + 1;
        case 'c':
          if (a2 + 1 == a3)
          {
            goto LABEL_96;
          }

          v6 = a2[1];
          if (((v6 & 0xDF) - 65) > 0x19u)
          {
            goto LABEL_96;
          }

          v7 = v6 & 0x1F;
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v7;
            *(a4 + 1) = 0;
            return a2 + 2;
          }

          else
          {
            v20 = a2;
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
            return v20 + 2;
          }

        case '_':
          goto LABEL_96;
      }
    }

    goto LABEL_74;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v18 = a2;
        v19 = 13;
        goto LABEL_80;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v18 = a2;
        v19 = 9;
        goto LABEL_80;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

LABEL_74:
    if ((v4 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[*a2] & 0x500) != 0)
    {
      goto LABEL_96;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v18 = a2;
    v19 = v4;
LABEL_80:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v19);
    return v18 + 1;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v9 = a2[1];
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
    {
      goto LABEL_96;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_96;
    }

    v10 = *a2;
    v11 = -48;
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
    {
      v10 |= 0x20u;
      if ((v10 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v11 = -87;
    }

    v5 = 16 * (v11 + v10);
LABEL_46:
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v12 = a2[1];
    v13 = -48;
    if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
    {
      v12 |= 0x20u;
      if ((v12 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v13 = -87;
    }

    if (a2 + 2 != a3)
    {
      v14 = a2[2];
      v15 = -48;
      if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
      {
        goto LABEL_56;
      }

      v14 |= 0x20u;
      if ((v14 - 97) < 6)
      {
        v15 = -87;
LABEL_56:
        v16 = v14 + 16 * (v5 + v13 + v12) + v15;
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v16;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v17 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
        return v17 + 3;
      }
    }

LABEL_96:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_46;
    }

    goto LABEL_74;
  }

  if (!a4)
  {
    v18 = a2;
    v19 = 11;
    goto LABEL_80;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v4 = *a2;
  if (v4 == 93)
  {
    return;
  }

  v7 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  if (a2 + 1 == a3 || v4 != 91)
  {
    goto LABEL_23;
  }

  v8 = a2[1];
  if (v8 != 46)
  {
    if (v8 != 58)
    {
      if (v8 == 61)
      {
        std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v7 = 0;
LABEL_23:
      v17 = *(a1 + 24) & 0x1F0;
      goto LABEL_35;
    }

    if (a3 - (a2 + 2) >= 2)
    {
      v9 = a3 - a2 - 4;
      v10 = a2 + 2;
      v11 = a2 + 3;
      if (a2[2] != 58)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (*v11 == 93)
      {
        if (v10 != a3)
        {
          v25 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2 + 2, v10, *(a1 + 24) & 1);
          if (!v25)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
          }

          *(a4 + 160) |= v25;
          if (SHIBYTE(v36) < 0)
          {
            goto LABEL_70;
          }

          return;
        }
      }

      else
      {
LABEL_13:
        while (v9)
        {
          --v9;
          v10 = v11;
          v12 = *v11++;
          if (v12 == 58)
          {
            goto LABEL_12;
          }
        }
      }
    }

LABEL_88:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 - (a2 + 2) < 2)
  {
    goto LABEL_88;
  }

  v13 = a3 - a2 - 4;
  v14 = a2 + 2;
  v15 = a2 + 3;
  if (a2[2] != 46)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (*v15 != 93)
  {
LABEL_19:
    while (v13)
    {
      --v13;
      v14 = v15;
      v16 = *v15++;
      if (v16 == 46)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_88;
  }

  if (v14 == a3)
  {
    goto LABEL_88;
  }

  v19 = a1;
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2 + 2, v14, &v37);
  a1 = v19;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    a1 = v19;
  }

  v36 = v38;
  *__p = v37;
  v20 = HIBYTE(v38);
  v7 = SHIBYTE(v38);
  v21 = *(&v37 + 1);
  if (v38 < 0)
  {
    v20 = __p[1];
  }

  if ((v20 - 1) >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  a2 = v14 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  if (v38 >= 0)
  {
    v21 = SHIBYTE(v38);
  }

  if (v21)
  {
    v18 = v14 + 2;
    if (a2 == a3)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_35:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v22) = *a2;
LABEL_44:
    if (v7 < 0)
    {
      v26 = __p[0];
      __p[1] = 1;
      *__p[0] = v22;
      v26[1] = 0;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    else
    {
      HIBYTE(v36) = 1;
      LOWORD(__p[0]) = v22;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_51;
  }

  v22 = *a2;
  if (v22 != 92)
  {
    goto LABEL_44;
  }

  v23 = a1;
  if (v17)
  {
    v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, a2 + 1, a3, __p);
  }

  else
  {
    v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, a2 + 1, a3, __p, a4);
  }

  v18 = v24;
  a1 = v23;
  if (v18 == a3)
  {
LABEL_52:
    if (SHIBYTE(v36) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_69;
      }

      if (__p[1] != 1)
      {
        v28 = __p[0];
LABEL_68:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v28, *(v28 + 1));
LABEL_69:
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v28 = __p[0];
    }

    else
    {
      if (!HIBYTE(v36))
      {
        goto LABEL_69;
      }

      v28 = __p;
      if (HIBYTE(v36) != 1)
      {
        goto LABEL_68;
      }
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v28);
    goto LABEL_69;
  }

LABEL_51:
  v27 = *v18;
  if (v27 == 93)
  {
    goto LABEL_52;
  }

  v29 = v18 + 1;
  if (v18 + 1 == a3 || v27 != 45 || *v29 == 93)
  {
    goto LABEL_52;
  }

  v37 = 0uLL;
  v38 = 0;
  v30 = v18 + 2;
  if (v18 + 2 != a3 && *v29 == 91 && *v30 == 46)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v18 + 3, a3, &v37);
    goto LABEL_79;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v29) = *v29;
    goto LABEL_77;
  }

  LODWORD(v29) = *v29;
  if (v29 != 92)
  {
LABEL_77:
    HIBYTE(v38) = 1;
    LOWORD(v37) = v29;
    goto LABEL_79;
  }

  if (v17)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v30, a3, &v37);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v30, a3, &v37, a4);
  }

LABEL_79:
  *v33 = *__p;
  v34 = v36;
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  *v31 = v37;
  v32 = v38;
  v37 = 0uLL;
  v38 = 0;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](a4, v33, v31);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
LABEL_81:
      if ((SHIBYTE(v38) & 0x80000000) == 0)
      {
        goto LABEL_82;
      }

LABEL_86:
      operator delete(v37);
      if (SHIBYTE(v36) < 0)
      {
        goto LABEL_70;
      }

      return;
    }
  }

  else if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    goto LABEL_81;
  }

  operator delete(v33[0]);
  if (SHIBYTE(v38) < 0)
  {
    goto LABEL_86;
  }

LABEL_82:
  if (SHIBYTE(v36) < 0)
  {
LABEL_70:
    operator delete(__p[0]);
  }
}

void sub_23C1E2060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_38;
  }

  v7 = a2;
  v8 = a2 + 1;
  if (*a2 != 61)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v8 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v7 = v8;
      v9 = *v8++;
      if (v9 == 61)
      {
        goto LABEL_3;
      }
    }

LABEL_38:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (v7 == a3)
  {
    goto LABEL_38;
  }

  memset(v19, 170, sizeof(v19));
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v7, v19);
  v10 = SHIBYTE(v19[2]);
  if ((SHIBYTE(v19[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v19[2]))
    {
      memset(__p, 170, sizeof(__p));
      v11 = v19;
      goto LABEL_13;
    }

LABEL_39:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v19[1];
  if (!v19[1])
  {
    goto LABEL_39;
  }

  memset(__p, 170, sizeof(__p));
  v11 = v19[0];
LABEL_13:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v11, v10 + v11, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_15:
      v12 = *(a4 + 144);
      if (v12 >= *(a4 + 152))
      {
        *(a4 + 144) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a4 + 144), __p[0], __p[1]);
        }

        else
        {
          v13 = *__p;
          *(v12 + 16) = __p[2];
          *v12 = v13;
        }

        *(a4 + 144) = v12 + 24;
        *(a4 + 144) = v12 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_32;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_15;
  }

  v14 = HIBYTE(v19[2]);
  if (SHIBYTE(v19[2]) < 0)
  {
    v14 = v19[1];
  }

  if (v14 == 2)
  {
    v16 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v16 = v19[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v16, *(v16 + 1));
  }

  else
  {
    if (v14 != 1)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
    }

    v15 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v15 = v19[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v15);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_36:
    operator delete(__p[0]);
    if (SHIBYTE(v19[2]) < 0)
    {
      goto LABEL_37;
    }

    return v7 + 2;
  }

LABEL_32:
  if ((SHIBYTE(v19[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_37:
  operator delete(v19[0]);
  return v7 + 2;
}

void sub_23C1E2310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = a2 + 1;
  if (*a2 != 46)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v7 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v6 = v7;
      v8 = *v7++;
      if (v8 == 46)
      {
        goto LABEL_3;
      }
    }

LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (v6 == a3)
  {
    goto LABEL_14;
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 8;
    return a2 + 1;
  }

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

LABEL_25:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 0;
    return a2 + 1;
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_75:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v4 != 34 && v4 != 47)
      {
        goto LABEL_48;
      }
    }

    else if (v4 != 92)
    {
      if (v4 == 97)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 7;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
          return a2 + 1;
        }
      }

      if (v4 == 98)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 8;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 8);
          return a2 + 1;
        }
      }

      goto LABEL_48;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      return a2 + 1;
    }
  }

  if (*a2 <= 0x71u)
  {
    if (v4 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
        return a2 + 1;
      }
    }

    if (v4 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
        return a2 + 1;
      }
    }
  }

  else
  {
    switch(v4)
    {
      case 'r':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 13;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 13);
          return a2 + 1;
        }

      case 't':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 9;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
          return a2 + 1;
        }

      case 'v':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 11;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
          return a2 + 1;
        }
    }
  }

LABEL_48:
  if ((v4 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_75;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v8 = *v9 + 8 * v8 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v10 = *v9 + 8 * v8 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v8 = v10;
      }
    }
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    result = v9;
    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    return v9;
  }

  return result;
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v13, &v12[v13]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  result = std::__get_classname(v14, a4);
  if (SHIBYTE(__dst[2]) < 0)
  {
    v16 = result;
    operator delete(__dst[0]);
    return v16;
  }

  return result;
}

void sub_23C1E2C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  if (result == a2 && result != a3 && result + 1 != a3 && *result == 92)
  {
    v7 = result[1];
    if (v7 == 40)
    {
      v8 = (result + 2);
      if ((*(a1 + 24) & 2) != 0)
      {
        v10 = *(a1 + 28);
      }

      else
      {
        v9 = operator new(0x18uLL);
        v10 = *(a1 + 28) + 1;
        *(a1 + 28) = v10;
        v11 = *(a1 + 56);
        v12 = *(v11 + 8);
        *v9 = &unk_284EF9048;
        v9[1] = v12;
        *(v9 + 4) = v10;
        *(v11 + 8) = v9;
        *(a1 + 56) = v9;
      }

      while (v8 != a3)
      {
        v14 = *(a1 + 56);
        v15 = *(a1 + 28);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v8, a3);
        if (v16 == v8)
        {
          break;
        }

        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v16, a3, v14, (v15 + 1), (*(a1 + 28) + 1));
        v18 = v17 == v8;
        v8 = v17;
        if (v18)
        {
          goto LABEL_20;
        }
      }

      v17 = v8;
LABEL_20:
      if (v17 == a3 || (&v17->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v17->__traits_.__loc_.__locale_) != 92 || BYTE1(v17->__traits_.__loc_.__locale_) != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      result = v17 + 2 * (BYTE1(v17->__traits_.__loc_.__locale_) == 41);
      if ((*(a1 + 24) & 2) == 0)
      {
        v19 = result;
        v20 = operator new(0x18uLL);
        result = v19;
        v21 = *(a1 + 56);
        v22 = *(v21 + 8);
        *v20 = &unk_284EF9090;
        v20[1] = v22;
        *(v20 + 4) = v10;
        *(v21 + 8) = v20;
        *(a1 + 56) = v20;
      }
    }

    else if (((v7 & 0xF8) == 0x30 || (v7 & 0xFE) == 0x38) && (v7 - 49) <= 8)
    {
      if ((v7 - 48) > *(a1 + 28))
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      v13 = result;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v7 - 48);
      return v13 + 2;
    }
  }

  return result;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = this;
  if (this == a3)
  {
    return v6;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low == 42)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
    return (v6 + 1);
  }

  if ((&this->__traits_.__loc_.__locale_ + 1) == a3 || locale_low != 92 || BYTE1(this->__traits_.__loc_.__locale_) != 123)
  {
    return v6;
  }

  v9 = (this + 2 * (BYTE1(this->__traits_.__loc_.__locale_) == 123));
  if (v9 == a3)
  {
    goto LABEL_41;
  }

  v10 = LOBYTE(v9->__traits_.__loc_.__locale_);
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    goto LABEL_41;
  }

  v11 = v10 - 48;
  v12 = (&v9->__traits_.__loc_.__locale_ + 1);
  if ((&v9->__traits_.__loc_.__locale_ + 1) != a3)
  {
    while (1)
    {
      v13 = LOBYTE(v12->__traits_.__loc_.__locale_);
      if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
      {
        break;
      }

      if (v11 >= 214748364)
      {
        goto LABEL_41;
      }

      v11 = v13 + 10 * v11 - 48;
      v12 = (v12 + 1);
      if (v12 == a3)
      {
        v12 = a3;
        break;
      }
    }
  }

  if (v12 == a3)
  {
    goto LABEL_42;
  }

  v14 = (&v12->__traits_.__loc_.__locale_ + 1);
  v15 = LOBYTE(v12->__traits_.__loc_.__locale_);
  if (v15 != 44)
  {
    if (v14 != a3 && v15 == 92 && LOBYTE(v14->__traits_.__loc_.__locale_) == 125)
    {
      v19 = &v12->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v11, a4, __mexp_begin, __mexp_end, 1);
      return v19;
    }

LABEL_42:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

  if (v14 != a3 && ((v16 = LOBYTE(v14->__traits_.__loc_.__locale_), (v16 & 0xF8) == 0x30) || (v16 & 0xFE) == 0x38))
  {
    v17 = v16 - 48;
    v14 = (&v12->__traits_.__loc_.__locale_ + 2);
    if ((&v12->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v20 = LOBYTE(v14->__traits_.__loc_.__locale_);
        if ((v20 & 0xF8) != 0x30 && (v20 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_41;
        }

        v17 = v20 + 10 * v17 - 48;
        v14 = (v14 + 1);
        if (v14 == a3)
        {
          v14 = a3;
          break;
        }
      }
    }
  }

  else
  {
    v17 = -1;
  }

  if (v14 == a3 || (&v14->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v14->__traits_.__loc_.__locale_) != 92 || BYTE1(v14->__traits_.__loc_.__locale_) != 125)
  {
    goto LABEL_42;
  }

  v18 = v14 + 2 * (BYTE1(v14->__traits_.__loc_.__locale_) == 125);
  if (v17 != -1)
  {
    if (v17 >= v11)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v17, a4, __mexp_begin, __mexp_end, 1);
      return v18;
    }

LABEL_41:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
  return v18;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 1;
    v3 = *a2;
    if (a2 + 1 != a3 || v3 != 36)
    {
      if ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
        return v4;
      }

      if (v4 == a3 || v3 != 92)
      {
        if (v3 == 46)
        {
          v10 = operator new(0x10uLL);
          end = a1->__end_;
          first = end->__first_;
          v10->__vftable = &unk_284EF9240;
          v10->__first_ = first;
          end->__first_ = v10;
          a1->__end_ = v10;
          return v4;
        }
      }

      else
      {
        v7 = *v4;
        if ((v7 - 36) <= 0x3A && ((1 << (v7 - 36)) & 0x580000000000441) != 0)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
          return a2 + 2;
        }
      }
    }
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (this == a3)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, this, a3);
    if (v11 != this)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  v9 = (locale_low - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_22;
  }

  if (((1 << (locale_low - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_4;
  }

  if (v9 == 5)
  {
    if (!*(a1 + 36))
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_22:
    if ((locale_low - 123) >= 2)
    {
LABEL_23:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale_low);
      v11 = &this->__traits_.__loc_.__locale_ + 1;
      goto LABEL_32;
    }
  }

LABEL_4:
  v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, this, a3);
  v11 = v10;
  if (v10 == this)
  {
    if (LOBYTE(v10->__traits_.__loc_.__locale_) == 46)
    {
      v12 = operator new(0x10uLL);
      v13 = *(a1 + 56);
      v14 = *(v13 + 8);
      *v12 = &unk_284EF9240;
      v12[1] = v14;
      *(v13 + 8) = v12;
      *(a1 + 56) = v12;
      ++v11;
      goto LABEL_9;
    }

LABEL_8:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, this, a3);
  }

LABEL_9:
  if (v11 == this && v11 != a3)
  {
    v15 = *v11;
    switch(v15)
    {
      case '$':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = &unk_284EF8D30;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v21 = *(a1 + 28);
        }

        else
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 28) + 1;
          *(a1 + 28) = v21;
          v22 = *(a1 + 56);
          v23 = *(v22 + 8);
          *v20 = &unk_284EF9048;
          v20[1] = v23;
          *(v20 + 4) = v21;
          *(v22 + 8) = v20;
          *(a1 + 56) = v20;
        }

        ++*(a1 + 36);
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v11 + 1, a3);
        if (v24 == a3 || (v11 = v24, *v24 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v25 = operator new(0x18uLL);
          v26 = *(a1 + 56);
          v27 = *(v26 + 8);
          *v25 = &unk_284EF9090;
          v25[1] = v27;
          *(v25 + 4) = v21;
          *(v26 + 8) = v25;
          *(a1 + 56) = v25;
        }

        --*(a1 + 36);
        goto LABEL_30;
      case '^':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = &unk_284EF8CE8;
        break;
      default:
        goto LABEL_31;
    }

    *v16 = v19;
    *(v16 + 16) = v17;
    *(v18 + 8) = v16;
    *(a1 + 56) = v16;
LABEL_30:
    ++v11;
  }

LABEL_31:
  if (v11 == this)
  {
    return v11;
  }

LABEL_32:
  v28 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v6, (v7 + 1), v28);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3 || (&this->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(this->__traits_.__loc_.__locale_) != 92)
  {
    return this;
  }

  v3 = BYTE1(this->__traits_.__loc_.__locale_);
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    v5 = this;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return &v5->__traits_.__loc_.__locale_ + 2;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v7 = &this->__traits_.__loc_.__locale_ + 1;

    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v7, a3, 0);
  }

  else
  {
    v8 = this;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v3);
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    return v8 + v10;
  }
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

uint64_t __cxx_global_var_init_95()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_96()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

SAHEURCoreDumpTraceProtocol *EURCoreDumpTraceProtocol::create(EURCoreDumpTraceProtocol *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((capabilities::coredump::getPersonality(this) & 0xFFFFFFFE) != 2)
  {
    v4 = GetOsLogContext()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 136315906;
      v6 = "ABM ASSERT";
      v7 = 2080;
      v8 = "false";
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/ABMHelper/Server/Tasks/Wireless/Trace/CoreDump/EURCoreDumpTraceProtocol.cpp";
      v11 = 1024;
      v12 = 29;
      _os_log_fault_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", &v5, 0x26u);
    }

    __break(1u);
  }

  v1 = operator new(0x40uLL);
  SAHEURCoreDumpTraceProtocol::SAHEURCoreDumpTraceProtocol(v1);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void EURCoreDumpTraceProtocol::EURCoreDumpTraceProtocol(EURCoreDumpTraceProtocol *this)
{
  ctu::OsLogLogger::OsLogLogger((this + 8), "com.apple.telephony", "trace.coredump");
  *this = &unk_284EF93F8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

uint64_t EURCoreDumpTraceProtocol::collectBasebandCrashListM20(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v17 = *(a1 + 16);
  }

  v4 = ETLEFSearchBasebandCrashReasonM20();
  v5 = v4;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    if (v5)
    {
LABEL_6:
      v6 = v18;
      v7 = v19;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 0x40000000;
      v13 = ___ZN24EURCoreDumpTraceProtocol27collectBasebandCrashListM20ERNSt3__14listIN8coredump13CommandDriver29EURCoreDumpTraceProtocolCrashENS0_9allocatorIS4_EEEE_block_invoke;
      v14 = &__block_descriptor_tmp_0;
      v15 = a1;
      for (i = a2; v6 != v7; v6 += 388)
      {
        v13(v12, v6);
      }

      goto LABEL_11;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11[0] = 0;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "\tFailed: Looking for CoreDump reason", v11, 2u);
    v9 = v18;
    if (!v18)
    {
      return v5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v9 = v18;
  if (v18)
  {
LABEL_12:
    v19 = v9;
    operator delete(v9);
  }

  return v5;
}

void sub_23C1E3A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 - 72);
  if (v24)
  {
    *(v22 - 64) = v24;
    operator delete(v24);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN24EURCoreDumpTraceProtocol27collectBasebandCrashListM20ERNSt3__14listIN8coredump13CommandDriver29EURCoreDumpTraceProtocolCrashENS0_9allocatorIS4_EEEE_block_invoke(uint64_t a1, const std::string::value_type *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *v14 = 0u;
  memset(__p, 0, sizeof(__p));
  std::string::__assign_external(v14, a2 + 132);
  std::string::__assign_external(&__p[1], a2 + 68);
  v16 = *a2;
  v5 = *(a1 + 40);
  v6 = operator new(0x48uLL);
  v7 = v6;
  *v6 = 0;
  *(v6 + 1) = 0;
  if (SHIBYTE(__p[0]) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 16), v14[0], v14[1]);
  }

  else
  {
    *(v6 + 1) = *v14;
    *(v6 + 4) = __p[0];
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 40), __p[1], __p[2]);
  }

  else
  {
    *(v7 + 40) = *&__p[1];
    *(v7 + 7) = __p[3];
  }

  *(v7 + 8) = v16;
  v8 = *v5;
  *v7 = *v5;
  *(v7 + 1) = v5;
  *(v8 + 8) = v7;
  *v5 = v7;
  ++v5[2];
  v9 = *(v4 + 8);
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    operator delete(v14[0]);
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(__p[3]) >= 0)
  {
    v11 = &__p[1];
  }

  else
  {
    v11 = __p[1];
  }

  v12 = v14;
  if (SHIBYTE(__p[0]) < 0)
  {
    v12 = v14[0];
  }

  *buf = 136315650;
  v18 = v11;
  v19 = 1024;
  v20 = v16;
  v21 = 2080;
  v22 = v12;
  _os_log_debug_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEBUG, "#D \tAdding Crash reason: File:%s, Line:%d, String:%s.", buf, 0x1Cu);
  if (SHIBYTE(__p[3]) < 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_23C1E3CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 39) < 0)
  {
    operator delete(*(v9 + 16));
  }

  operator delete(v9);
  std::pair<std::string,std::string>::~pair(&a9);
  _Unwind_Resume(a1);
}

BOOL EURCoreDumpTraceProtocol::moveToSnapshotPath(uint64_t a1, const __CFDictionary **a2)
{
  v107 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 16);
  v4 = *(a1 + 16);
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v106.st_blksize = v6;
  *v106.st_qspare = v6;
  v106.st_birthtimespec = v6;
  *&v106.st_size = v6;
  v106.st_mtimespec = v6;
  v106.st_ctimespec = v6;
  *&v106.st_uid = v6;
  v106.st_atimespec = v6;
  *&v106.st_dev = v6;
  if (*(a1 + 39) >= 0)
  {
    v7 = (a1 + 16);
  }

  else
  {
    v7 = v4;
  }

  if (!stat(v7, &v106))
  {
    v11 = *(a1 + 39) >= 0 ? v5 : *(a1 + 16);
    v12 = opendir(v11);
    v13 = v12;
    if (v12)
    {
      v14 = readdir(v12);
      closedir(v13);
      if (v14)
      {
        v104[0] = 0xAAAAAAAAAAAAAAAALL;
        v104[1] = 0xAAAAAAAAAAAAAAAALL;
        ctu::cf::dict_adapter::dict_adapter(v104, *a2);
        memset(&v106, 170, 24);
        v15 = *MEMORY[0x277CECB88];
        v16 = strlen(*MEMORY[0x277CECB88]);
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

          v18 = operator new(v19);
          __dst[1] = v17;
          __dst[2] = (v19 | 0x8000000000000000);
          __dst[0] = v18;
        }

        else
        {
          HIBYTE(__dst[2]) = v16;
          v18 = __dst;
          if (!v16)
          {
LABEL_21:
            v20 = *MEMORY[0x277CECBB8];
            *(v17 + v18) = 0;
            ctu::cf::MakeCFString::MakeCFString(__p, v20);
            ctu::cf::map_adapter::getString();
            MEMORY[0x23EECD8F0](__p);
            if (SHIBYTE(__dst[2]) < 0)
            {
              operator delete(__dst[0]);
            }

            memset(__dst, 170, sizeof(__dst));
            v21 = abm::trace::kSnapshotFolder[0];
            v22 = strlen(abm::trace::kSnapshotFolder[0]);
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
              __p[1] = v23;
              __p[2] = (v25 | 0x8000000000000000);
              __p[0] = v24;
            }

            else
            {
              HIBYTE(__p[2]) = v22;
              v24 = __p;
              if (!v22)
              {
LABEL_32:
                *(v23 + v24) = 0;
                ctu::cf::MakeCFString::MakeCFString(&v101, "kKeyTraceDumpStatePath");
                ctu::cf::map_adapter::getString();
                MEMORY[0x23EECD8F0](&v101);
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                memset(__p, 170, sizeof(__p));
                strcpy(&v101, "kTraceFilterActionNone");
                *(&v101.__r_.__value_.__s + 23) = 22;
                ctu::cf::MakeCFString::MakeCFString(&v105, "kKeyTraceFilterAction");
                ctu::cf::map_adapter::getString();
                MEMORY[0x23EECD8F0](&v105);
                if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v101.__r_.__value_.__l.__data_);
                  v26 = SHIBYTE(__p[2]);
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_36;
                  }
                }

                else
                {
                  v26 = SHIBYTE(__p[2]);
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
LABEL_36:
                    if (v26 != 22)
                    {
                      goto LABEL_48;
                    }

                    v27 = __p;
                    goto LABEL_41;
                  }
                }

                if (__p[1] != 22)
                {
                  goto LABEL_48;
                }

                v27 = __p[0];
LABEL_41:
                v28 = *v27;
                v29 = v27[1];
                v30 = *(v27 + 14);
                if (v28 != *"kTraceFilterActionNone" || v29 != *"lterActionNone" || v30 != *"tionNone")
                {
LABEL_48:
                  v33 = abm::trace::kTrashFolder[0];
                  v34 = strlen(abm::trace::kTrashFolder[0]);
                  if (v34 > 0x7FFFFFFFFFFFFFF7)
                  {
                    std::string::__throw_length_error[abi:ne200100]();
                  }

                  v35 = v34;
                  if (v34 >= 0x17)
                  {
                    if ((v34 | 7) == 0x17)
                    {
                      v37 = 25;
                    }

                    else
                    {
                      v37 = (v34 | 7) + 1;
                    }

                    v36 = operator new(v37);
                    v100.__r_.__value_.__l.__size_ = v35;
                    v100.__r_.__value_.__r.__words[2] = v37 | 0x8000000000000000;
                    v100.__r_.__value_.__r.__words[0] = v36;
                  }

                  else
                  {
                    *(&v100.__r_.__value_.__s + 23) = v34;
                    v36 = &v100;
                    if (!v34)
                    {
LABEL_57:
                      v36[v35] = 0;
                      v38 = abm::trace::kLogDirPrefix[0];
                      v39 = strlen(abm::trace::kLogDirPrefix[0]);
                      if (v39 > 0x7FFFFFFFFFFFFFF7)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v40 = v39;
                      if (v39 >= 0x17)
                      {
                        if ((v39 | 7) == 0x17)
                        {
                          v42 = 25;
                        }

                        else
                        {
                          v42 = (v39 | 7) + 1;
                        }

                        v41 = operator new(v42);
                        v98 = v40;
                        v99 = v42 | 0x8000000000000000;
                        v97 = v41;
                      }

                      else
                      {
                        HIBYTE(v99) = v39;
                        v41 = &v97;
                        if (!v39)
                        {
LABEL_66:
                          *(v41 + v40) = 0;
                          if (v99 >= 0)
                          {
                            v43 = &v97;
                          }

                          else
                          {
                            v43 = v97;
                          }

                          if (v99 >= 0)
                          {
                            v44 = HIBYTE(v99);
                          }

                          else
                          {
                            v44 = v98;
                          }

                          v45 = std::string::append(&v100, v43, v44);
                          v46 = *&v45->__r_.__value_.__l.__data_;
                          v105.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
                          *&v105.__r_.__value_.__l.__data_ = v46;
                          v45->__r_.__value_.__l.__size_ = 0;
                          v45->__r_.__value_.__r.__words[2] = 0;
                          v45->__r_.__value_.__r.__words[0] = 0;
                          if ((v106.st_gid & 0x80000000) == 0)
                          {
                            v47 = &v106;
                          }

                          else
                          {
                            v47 = *&v106.st_dev;
                          }

                          if ((v106.st_gid & 0x80000000) == 0)
                          {
                            st_gid_high = HIBYTE(v106.st_gid);
                          }

                          else
                          {
                            st_gid_high = v106.st_ino;
                          }

                          v49 = std::string::append(&v105, v47, st_gid_high);
                          v50 = *&v49->__r_.__value_.__l.__data_;
                          v101.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
                          *&v101.__r_.__value_.__l.__data_ = v50;
                          v49->__r_.__value_.__l.__size_ = 0;
                          v49->__r_.__value_.__r.__words[2] = 0;
                          v49->__r_.__value_.__r.__words[0] = 0;
                          v51 = abm::trace::kEURCoreDumpSnapshotDirectorySuffix[0];
                          v52 = strlen(abm::trace::kEURCoreDumpSnapshotDirectorySuffix[0]);
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
                            v95 = v53;
                            v96 = v55 | 0x8000000000000000;
                            v94 = v54;
                          }

                          else
                          {
                            HIBYTE(v96) = v52;
                            v54 = &v94;
                            if (!v52)
                            {
LABEL_87:
                              *(v54 + v53) = 0;
                              if (v96 >= 0)
                              {
                                v56 = &v94;
                              }

                              else
                              {
                                v56 = v94;
                              }

                              if (v96 >= 0)
                              {
                                v57 = HIBYTE(v96);
                              }

                              else
                              {
                                v57 = v95;
                              }

                              v58 = std::string::append(&v101, v56, v57);
                              v59 = v58->__r_.__value_.__r.__words[0];
                              size = v58->__r_.__value_.__l.__size_;
                              v58->__r_.__value_.__r.__words[0] = 0;
                              v58->__r_.__value_.__l.__size_ = 0;
                              v61 = v58->__r_.__value_.__r.__words[2];
                              v58->__r_.__value_.__r.__words[2] = 0;
                              if (SHIBYTE(v96) < 0)
                              {
                                operator delete(v94);
                                if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                {
LABEL_95:
                                  if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_96;
                                  }

                                  goto LABEL_105;
                                }
                              }

                              else if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                              {
                                goto LABEL_95;
                              }

                              operator delete(v101.__r_.__value_.__l.__data_);
                              if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                              {
LABEL_96:
                                if ((SHIBYTE(v99) & 0x80000000) == 0)
                                {
                                  goto LABEL_97;
                                }

                                goto LABEL_106;
                              }

LABEL_105:
                              operator delete(v105.__r_.__value_.__l.__data_);
                              if ((SHIBYTE(v99) & 0x80000000) == 0)
                              {
LABEL_97:
                                if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                {
                                  goto LABEL_98;
                                }

                                goto LABEL_107;
                              }

LABEL_106:
                              operator delete(v97);
                              if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                              {
LABEL_98:
                                v62 = 1;
                                memset(&v101, 170, sizeof(v101));
                                if ((v61 & 0x8000000000000000) == 0)
                                {
LABEL_99:
                                  v93.__r_.__value_.__r.__words[0] = v59;
                                  v93.__r_.__value_.__l.__size_ = size;
                                  v93.__r_.__value_.__r.__words[2] = v61;
                                  goto LABEL_109;
                                }

LABEL_108:
                                std::string::__init_copy_ctor_external(&v93, v59, size);
LABEL_109:
                                support::fs::createUniquePath(&v93, &v101);
                                if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v93.__r_.__value_.__l.__data_);
                                }

                                support::fs::createDir(__dst, 0x1EDu, 1);
                                if (*(a1 + 39) >= 0)
                                {
                                  v64 = v5;
                                }

                                else
                                {
                                  v64 = *(a1 + 16);
                                }

                                if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                {
                                  v65 = &v101;
                                }

                                else
                                {
                                  v65 = v101.__r_.__value_.__r.__words[0];
                                }

                                rename(v64, v65, v63);
                                v67 = v66 == 0;
                                v68 = *(a1 + 8);
                                if (v62)
                                {
                                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v69 = __p;
                                    if (SHIBYTE(__p[2]) < 0)
                                    {
                                      v69 = __p[0];
                                    }

                                    LODWORD(v105.__r_.__value_.__l.__data_) = 136315138;
                                    *(v105.__r_.__value_.__r.__words + 4) = v69;
                                    _os_log_impl(&dword_23C1C4000, v68, OS_LOG_TYPE_DEFAULT, "#I Success: Trashing coredump logs. Trace filter is %s", &v105, 0xCu);
                                  }

                                  support::fs::removeDir(&v101);
                                }

                                else if (v66)
                                {
                                  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                                  {
                                    v70 = &v101;
                                    if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                    {
                                      v70 = v101.__r_.__value_.__r.__words[0];
                                    }

                                    LODWORD(v105.__r_.__value_.__l.__data_) = 136315138;
                                    *(v105.__r_.__value_.__r.__words + 4) = v70;
                                    _os_log_error_impl(&dword_23C1C4000, v68, OS_LOG_TYPE_ERROR, "Failed: Creating CoreDump snapshot path. snapshotUniquePath=[%s]", &v105, 0xCu);
                                  }
                                }

                                else if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                                {
                                  v75 = &v101;
                                  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                  {
                                    v75 = v101.__r_.__value_.__r.__words[0];
                                  }

                                  LODWORD(v105.__r_.__value_.__l.__data_) = 136315138;
                                  *(v105.__r_.__value_.__r.__words + 4) = v75;
                                  _os_log_impl(&dword_23C1C4000, v68, OS_LOG_TYPE_DEFAULT, "#I Success: CoreDump files are placed in path [%s]", &v105, 0xCu);
                                }

                                if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v101.__r_.__value_.__l.__data_);
                                  if ((v61 & 0x8000000000000000) == 0)
                                  {
LABEL_138:
                                    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                                    {
                                      goto LABEL_139;
                                    }

                                    goto LABEL_144;
                                  }
                                }

                                else if ((v61 & 0x8000000000000000) == 0)
                                {
                                  goto LABEL_138;
                                }

                                operator delete(v59);
                                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                                {
LABEL_139:
                                  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_140;
                                  }

                                  goto LABEL_145;
                                }

LABEL_144:
                                operator delete(__p[0]);
                                if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
                                {
LABEL_140:
                                  if ((SHIBYTE(v106.st_gid) & 0x80000000) == 0)
                                  {
LABEL_141:
                                    MEMORY[0x23EECD940](v104);
                                    result = v67;
                                    goto LABEL_6;
                                  }

LABEL_146:
                                  operator delete(*&v106.st_dev);
                                  goto LABEL_141;
                                }

LABEL_145:
                                operator delete(__dst[0]);
                                if ((SHIBYTE(v106.st_gid) & 0x80000000) == 0)
                                {
                                  goto LABEL_141;
                                }

                                goto LABEL_146;
                              }

LABEL_107:
                              operator delete(v100.__r_.__value_.__l.__data_);
                              v62 = 1;
                              memset(&v101, 170, sizeof(v101));
                              if ((v61 & 0x8000000000000000) == 0)
                              {
                                goto LABEL_99;
                              }

                              goto LABEL_108;
                            }
                          }

                          memmove(v54, v51, v53);
                          goto LABEL_87;
                        }
                      }

                      memmove(v41, v38, v40);
                      goto LABEL_66;
                    }
                  }

                  memmove(v36, v33, v35);
                  goto LABEL_57;
                }

                v71 = abm::trace::kLogDirPrefix[0];
                v72 = strlen(abm::trace::kLogDirPrefix[0]);
                if (v72 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v73 = v72;
                if (v72 >= 0x17)
                {
                  if ((v72 | 7) == 0x17)
                  {
                    v76 = 25;
                  }

                  else
                  {
                    v76 = (v72 | 7) + 1;
                  }

                  v74 = operator new(v76);
                  v100.__r_.__value_.__l.__size_ = v73;
                  v100.__r_.__value_.__r.__words[2] = v76 | 0x8000000000000000;
                  v100.__r_.__value_.__r.__words[0] = v74;
                }

                else
                {
                  *(&v100.__r_.__value_.__s + 23) = v72;
                  v74 = &v100;
                  if (!v72)
                  {
LABEL_152:
                    v74[v73] = 0;
                    if (SHIBYTE(__dst[2]) >= 0)
                    {
                      v77 = __dst;
                    }

                    else
                    {
                      v77 = __dst[0];
                    }

                    if (SHIBYTE(__dst[2]) >= 0)
                    {
                      v78 = HIBYTE(__dst[2]);
                    }

                    else
                    {
                      v78 = __dst[1];
                    }

                    v79 = std::string::insert(&v100, 0, v77, v78);
                    v80 = *&v79->__r_.__value_.__l.__data_;
                    v105.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
                    *&v105.__r_.__value_.__l.__data_ = v80;
                    v79->__r_.__value_.__l.__size_ = 0;
                    v79->__r_.__value_.__r.__words[2] = 0;
                    v79->__r_.__value_.__r.__words[0] = 0;
                    if ((v106.st_gid & 0x80000000) == 0)
                    {
                      v81 = &v106;
                    }

                    else
                    {
                      v81 = *&v106.st_dev;
                    }

                    if ((v106.st_gid & 0x80000000) == 0)
                    {
                      st_ino = HIBYTE(v106.st_gid);
                    }

                    else
                    {
                      st_ino = v106.st_ino;
                    }

                    v83 = std::string::append(&v105, v81, st_ino);
                    v84 = *&v83->__r_.__value_.__l.__data_;
                    v101.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
                    *&v101.__r_.__value_.__l.__data_ = v84;
                    v83->__r_.__value_.__l.__size_ = 0;
                    v83->__r_.__value_.__r.__words[2] = 0;
                    v83->__r_.__value_.__r.__words[0] = 0;
                    v85 = abm::trace::kEURCoreDumpSnapshotDirectorySuffix[0];
                    v86 = strlen(abm::trace::kEURCoreDumpSnapshotDirectorySuffix[0]);
                    if (v86 > 0x7FFFFFFFFFFFFFF7)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v87 = v86;
                    if (v86 >= 0x17)
                    {
                      if ((v86 | 7) == 0x17)
                      {
                        v89 = 25;
                      }

                      else
                      {
                        v89 = (v86 | 7) + 1;
                      }

                      v88 = operator new(v89);
                      v98 = v87;
                      v99 = v89 | 0x8000000000000000;
                      v97 = v88;
                    }

                    else
                    {
                      HIBYTE(v99) = v86;
                      v88 = &v97;
                      if (!v86)
                      {
LABEL_173:
                        *(v88 + v87) = 0;
                        if (v99 >= 0)
                        {
                          v90 = &v97;
                        }

                        else
                        {
                          v90 = v97;
                        }

                        if (v99 >= 0)
                        {
                          v91 = HIBYTE(v99);
                        }

                        else
                        {
                          v91 = v98;
                        }

                        v92 = std::string::append(&v101, v90, v91);
                        v59 = v92->__r_.__value_.__r.__words[0];
                        size = v92->__r_.__value_.__l.__size_;
                        v92->__r_.__value_.__r.__words[0] = 0;
                        v92->__r_.__value_.__l.__size_ = 0;
                        v61 = v92->__r_.__value_.__r.__words[2];
                        v92->__r_.__value_.__r.__words[2] = 0;
                        if (SHIBYTE(v99) < 0)
                        {
                          operator delete(v97);
                          if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
LABEL_181:
                            if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
                              goto LABEL_182;
                            }

                            goto LABEL_187;
                          }
                        }

                        else if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_181;
                        }

                        operator delete(v101.__r_.__value_.__l.__data_);
                        if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
LABEL_182:
                          if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_183;
                          }

                          goto LABEL_188;
                        }

LABEL_187:
                        operator delete(v105.__r_.__value_.__l.__data_);
                        if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
LABEL_183:
                          v62 = 0;
                          memset(&v101, 170, sizeof(v101));
                          if ((v61 & 0x8000000000000000) == 0)
                          {
                            goto LABEL_99;
                          }

                          goto LABEL_108;
                        }

LABEL_188:
                        operator delete(v100.__r_.__value_.__l.__data_);
                        v62 = 0;
                        memset(&v101, 170, sizeof(v101));
                        if ((v61 & 0x8000000000000000) == 0)
                        {
                          goto LABEL_99;
                        }

                        goto LABEL_108;
                      }
                    }

                    memmove(v88, v85, v87);
                    goto LABEL_173;
                  }
                }

                memmove(v74, v71, v73);
                goto LABEL_152;
              }
            }

            memmove(v24, v21, v23);
            goto LABEL_32;
          }
        }

        memmove(v18, v15, v17);
        goto LABEL_21;
      }
    }
  }

  v8 = *(a1 + 8);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    if (*(a1 + 39) < 0)
    {
      v5 = v5->__pn_.__r_.__value_.__r.__words[0];
    }

    v106.st_dev = 136315138;
    *&v106.st_mode = v5;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed: Couldn't find Scratch path [%s] to move to Snapshot path", &v106, 0xCu);
    result = 0;
  }

LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C1E4798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if (a32 < 0)
    {
LABEL_5:
      operator delete(a27);
      if ((a53 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_8:
      operator delete(a48);
LABEL_9:
      if (a26 < 0)
      {
        operator delete(a21);
      }

      if (a39 < 0)
      {
        operator delete(a34);
      }

      if (a45 < 0)
      {
        operator delete(a40);
      }

      if (a60 < 0)
      {
        operator delete(a55);
      }

      MEMORY[0x23EECD940](&a46);
      _Unwind_Resume(a1);
    }
  }

  else if (a32 < 0)
  {
    goto LABEL_5;
  }

  if ((a53 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_23C1E49A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if ((a42 & 0x80000000) == 0)
  {
    JUMPOUT(0x23C1E4998);
  }

  JUMPOUT(0x23C1E4990);
}

BOOL EURCoreDumpTraceProtocol::createScratchPath(EURCoreDumpTraceProtocol *this)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(this + 39) < 0)
  {
    **(this + 2) = 0;
    *(this + 3) = 0;
  }

  else
  {
    *(this + 16) = 0;
    *(this + 39) = 0;
  }

  v2 = 0x7FFFFFFFFFFFFFF7;
  v3 = abm::trace::kScratchFolder[0];
  v4 = strlen(abm::trace::kScratchFolder[0]);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    p_dst = operator new(v7);
    __dst.__r_.__value_.__l.__size_ = v5;
    __dst.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_12;
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  p_dst = &__dst;
  if (v4)
  {
LABEL_12:
    memmove(p_dst, v3, v5);
  }

  p_dst->__r_.__value_.__s.__data_[v5] = 0;
  v8 = EURCoreDumpTrace::kCoreDumpScratchFolder[0];
  v9 = strlen(EURCoreDumpTrace::kCoreDumpScratchFolder[0]);
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

    p_p = operator new(v12);
    v38 = v10;
    v39 = v12 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_21;
  }

  HIBYTE(v39) = v9;
  p_p = &__p;
  if (v9)
  {
LABEL_21:
    memmove(p_p, v8, v10);
  }

  *(p_p + v10) = 0;
  if (v39 >= 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p;
  }

  if (v39 >= 0)
  {
    v14 = HIBYTE(v39);
  }

  else
  {
    v14 = v38;
  }

  v15 = std::string::append(&__dst, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 15) < 8)
    {
      v18 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 8;
      p_buf = &buf;
      v20 = 22;
LABEL_34:
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
        v2 = v22;
      }

      else
      {
        v2 = 23;
      }

      v23 = v20 == 22;
      goto LABEL_43;
    }

    v27 = &buf;
LABEL_50:
    *(v27->__r_.__value_.__r.__words + size) = 0x706D756465726F63;
    v28 = size + 8;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      buf.__r_.__value_.__l.__size_ = size + 8;
    }

    else
    {
      *(&buf.__r_.__value_.__s + 23) = v28 & 0x7F;
    }

    v26 = v27 + v28;
    goto LABEL_54;
  }

  size = buf.__r_.__value_.__l.__size_;
  v20 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - buf.__r_.__value_.__l.__size_ >= 8)
  {
    v27 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_50;
  }

  v18 = buf.__r_.__value_.__l.__size_ + 8;
  if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 8 - v20)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  p_buf = buf.__r_.__value_.__r.__words[0];
  if (v20 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_34;
  }

  v23 = 0;
LABEL_43:
  v24 = operator new(v2);
  v25 = v24;
  if (size)
  {
    memmove(v24, p_buf, size);
  }

  *(v25 + size) = 0x706D756465726F63;
  if (!v23)
  {
    operator delete(p_buf);
  }

  buf.__r_.__value_.__l.__size_ = v18;
  buf.__r_.__value_.__r.__words[2] = v2 | 0x8000000000000000;
  buf.__r_.__value_.__r.__words[0] = v25;
  v26 = (v25 + v18);
LABEL_54:
  *v26 = 0;
  v29 = *&buf.__r_.__value_.__l.__data_;
  v30 = buf.__r_.__value_.__r.__words[2];
  memset(&buf, 0, sizeof(buf));
  if ((SHIBYTE(v39) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_59:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_60;
  }

  operator delete(__p);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_59;
  }

LABEL_56:
  if ((v30 & 0x8000000000000000) == 0)
  {
LABEL_57:
    *&v36.__r_.__value_.__l.__data_ = v29;
    v36.__r_.__value_.__r.__words[2] = v30;
    goto LABEL_61;
  }

LABEL_60:
  std::string::__init_copy_ctor_external(&v36, v29, *(&v29 + 1));
LABEL_61:
  support::fs::createUniquePath(&v36, &buf);
  v31 = (this + 16);
  if (*(this + 39) < 0)
  {
    operator delete(*v31);
  }

  *v31 = *&buf.__r_.__value_.__l.__data_;
  *(this + 4) = *(&buf.__r_.__value_.__l + 2);
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  Dir = support::fs::createDir(this + 16, 0x1EDu, 1);
  if (!Dir && (v33 = *(this + 1), os_log_type_enabled(v33, OS_LOG_TYPE_ERROR)))
  {
    if (*(this + 39) < 0)
    {
      v31 = *v31;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v31;
    _os_log_error_impl(&dword_23C1C4000, v33, OS_LOG_TYPE_ERROR, "Failed: Creating CoreDump scratch path. fScratchFolder=[%s]", &buf, 0xCu);
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }
  }

  else if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_68:
    operator delete(v29);
  }

  v34 = *MEMORY[0x277D85DE8];
  return Dir;
}

void sub_23C1E4DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (v34 < 0)
  {
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
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

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

void KernelPCITrace::KernelPCITrace(KernelPCITrace *this)
{
  v4 = 9;
  strcpy(__p, "trace.pci");
  ctu::OsLogContext::OsLogContext(v5, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_USER_INITIATED);
  ctu::OsLogContext::~OsLogContext(v5);
  *this = &unk_284EF95A8;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_284EF9428;
  *(this + 24) = capabilities::ipc::defaultPCIBinaryTraceHistorySizeMB(v2);
  *(this + 100) = 0;
  *(this + 26) = 4;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 14) = this + 120;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 160) = 0;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
}

void sub_23C1E51BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  ctu::OsLogContext::~OsLogContext(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void Trace::~Trace(Trace *this)
{
  *this = &unk_284EF95A8;
  v2 = *(this + 11);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  MEMORY[0x23EECD800](this + 40);
  v4 = *(this + 4);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void KernelPCITrace::~KernelPCITrace(KernelPCITrace *this)
{
  *this = &unk_284EF9428;
  v2 = *(this + 25);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 23);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(this + 21);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  std::__tree<KernelPCITrace::BuffContext *>::destroy(*(this + 15));

  Trace::~Trace(this);
}

{
  KernelPCITrace::~KernelPCITrace(this);

  operator delete(v1);
}

double KernelPCITrace::createInternal@<D0>(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0xD8uLL);
  KernelPCITrace::KernelPCITrace(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<KernelPCITrace>::shared_ptr[abi:ne200100]<KernelPCITrace,std::shared_ptr<KernelPCITrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<KernelPCITrace>(KernelPCITrace*)::{lambda(KernelPCITrace*)#1},0>(&v5, v3);
  result = *&v5;
  *a1 = v5;
  return result;
}

uint64_t KernelPCITrace::init(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  *(a1 + 208) = 0;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v16 = *a2;
    v7 = a3[1];
    v14 = *a3;
    v15 = v7;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
  v7 = a3[1];
  v14 = *a3;
  v15 = v7;
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

  v9 = Trace::init(a1, &v16.__r_.__value_.__l.__data_, &v14, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if (!v9)
    {
      return v9;
    }
  }

  else if (!v9)
  {
    return v9;
  }

  v12 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN14KernelPCITrace4initENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSJ__block_invoke;
  block[3] = &__block_descriptor_tmp_41;
  block[4] = a1 + 8;
  block[5] = &v12;
  v11 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v11, block);
  }

  else
  {
    dispatch_sync(v11, block);
  }

  return v9;
}

void sub_23C1E55B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (object)
  {
    dispatch_release(object);
    v19 = a12;
    if (!a12)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v19 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v19);
  if ((a18 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t Trace::init(uint64_t a1, void **a2, uint64_t *a3, NSObject **a4)
{
  v7 = (a1 + 48);
  if (v7 == a2)
  {
    goto LABEL_10;
  }

  if (*(a1 + 71) < 0)
  {
    v11 = a2[1];
    if (*(a2 + 23) >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v12 = v11;
    }

    std::string::__assign_no_alias<false>(v7, a2, v12);
LABEL_10:
    v10 = *a3;
    v9 = a3[1];
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) == 0)
  {
    v8 = *a2;
    v7[2] = a2[2];
    *v7 = v8;
    v10 = *a3;
    v9 = a3[1];
    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_11:
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  std::string::__assign_no_alias<true>(v7, *a2, a2[1]);
  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_12:
  v13 = *(a1 + 80);
  *(a1 + 72) = v10;
  *(a1 + 80) = v9;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a4;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = *(a1 + 88);
  *(a1 + 88) = v14;
  if (v15)
  {
    dispatch_release(v15);
  }

  return 1;
}

void KernelPCITrace::initProperty_sync(KernelPCITrace *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = "initProperty_sync";
    _os_log_debug_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEBUG, "#D %s", &__p, 0xCu);
  }

  v6 = 7;
  strcpy(v5, "Enabled");
  memset(&__p, 0, sizeof(__p));
  if (prop::ipc::get(v5, &__p))
  {
    util::convert<BOOL>(&__p, this + 100, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v5[0]);
LABEL_7:
  v6 = 7;
  strcpy(v5, "History");
  memset(&__p, 0, sizeof(__p));
  if (prop::ipc::get(v5, &__p))
  {
    util::convert<int>(&__p, this + 24, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v5[0]);
LABEL_11:
  v6 = 11;
  strcpy(v5, "BufferCount");
  memset(&__p, 0, sizeof(__p));
  if (prop::ipc::get(v5, &__p))
  {
    util::convert<unsigned int>(&__p, this + 26, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
LABEL_15:
    v3 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v5[0]);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_23C1E5904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void *KernelPCITrace::createBuffContext_sync(KernelPCITrace *this, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  v5 = *(this + 2);
  if (!v5 || (v6 = *(this + 1), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    *v4 = 0;
    v4[1] = a2;
    v4[2] = v6;
    v4[3] = v7;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v10 = v4[1];
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
    *v4 = 0;
    v4[1] = a2;
    v4[2] = v6;
    v4[3] = v8;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v10 = v4[1];
    if (!v10)
    {
LABEL_5:
      std::__shared_weak_count::__release_weak(v8);
      v12 = (this + 120);
      v11 = *(this + 15);
      if (v11)
      {
        goto LABEL_11;
      }

LABEL_9:
      v13 = v12;
LABEL_15:
      v15 = operator new(0x28uLL);
      v15[4] = v4;
      *v15 = 0;
      v15[1] = 0;
      v15[2] = v13;
      *v12 = v15;
      v16 = **(this + 14);
      if (v16)
      {
        *(this + 14) = v16;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 15), v15);
      ++*(this + 16);
      return v4;
    }
  }

  *v4 = malloc_type_malloc(v10, 0x100004077774924uLL);
  std::__shared_weak_count::__release_weak(v8);
  v12 = (this + 120);
  v11 = *(this + 15);
  if (!v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
LABEL_11:
    while (1)
    {
      v13 = v11;
      v14 = v11[4];
      if (v4 >= v14)
      {
        break;
      }

      v11 = *v13;
      v12 = v13;
      if (!*v13)
      {
        goto LABEL_15;
      }
    }

    if (v14 >= v4)
    {
      return v4;
    }

    v11 = v13[1];
    if (!v11)
    {
      v12 = v13 + 1;
      goto LABEL_15;
    }
  }
}

void sub_23C1E5AE4(_Unwind_Exception *a1)
{
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  std::__shared_weak_count::__release_weak(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void KernelPCITrace::deleteBuffContext_sync(void *a1, void **a2)
{
  if (a2)
  {
    v2 = a1[15];
    if (v2)
    {
      v3 = a1 + 15;
      v4 = a1[15];
      do
      {
        v5 = v4[4];
        v6 = v5 >= a2;
        v7 = v5 < a2;
        if (v6)
        {
          v3 = v4;
        }

        v4 = v4[v7];
      }

      while (v4);
      if (v3 != a1 + 15 && v3[4] <= a2)
      {
        v8 = v3[1];
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
          v10 = v3;
          do
          {
            v9 = v10[2];
            v11 = *v9 == v10;
            v10 = v9;
          }

          while (!v11);
        }

        if (a1[14] == v3)
        {
          a1[14] = v9;
        }

        --a1[16];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v2, v3);
        operator delete(v3);
        v13 = a2;
        if (*a2)
        {
          free(*a2);
          v13 = a2;
        }

        if (v13[3])
        {
          std::__shared_weak_count::__release_weak(v13[3]);
          v13 = a2;
        }

        operator delete(v13);
      }
    }
  }
}

void KernelPCITrace::deleteAllBuffContext_sync(KernelPCITrace *this)
{
  v2 = *(this + 14);
  v3 = this + 120;
  if (v2 != this + 120)
  {
    do
    {
      v4 = *(v2 + 4);
      if (v4)
      {
        if (*v4)
        {
          free(*v4);
        }

        v5 = *(v4 + 24);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        operator delete(v4);
      }

      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  std::__tree<KernelPCITrace::BuffContext *>::destroy(*(this + 15));
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = v3;
}

void KernelPCITrace::updateTraceState_sync(uint64_t a1, NSObject **a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 100) == 1)
    {
      goto LABEL_3;
    }

LABEL_30:
    *(a1 + 160) = 0;
    v17 = dispatch_group_create();
    v18 = v17;
    v25 = v17;
    if (v17)
    {
      dispatch_retain(v17);
      dispatch_group_enter(v18);
    }

    v24 = 0;
    KernelPCITrace::snapshot_sync(a1, &v25, &v24);
    if (v18)
    {
      dispatch_group_leave(v18);
      dispatch_release(v18);
    }

    v19 = *(a1 + 24);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1174405120;
    v22[2] = ___ZN14KernelPCITrace21updateTraceState_syncEN8dispatch13group_sessionE_block_invoke;
    v22[3] = &__block_descriptor_tmp_22;
    v20 = *a2;
    v22[4] = a1;
    group = v20;
    if (v20)
    {
      dispatch_retain(v20);
      dispatch_group_enter(group);
    }

    dispatch_group_notify(v18, v19, v22);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (v18)
    {
      dispatch_release(v18);
    }

    goto LABEL_41;
  }

  *v33 = 136315138;
  *&v33[4] = "updateTraceState_sync";
  _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "#D %s", v33, 0xCu);
  if (*(a1 + 100) != 1)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (*(a1 + 160))
  {
    goto LABEL_41;
  }

  *(a1 + 160) = 1;
  v5 = *(a1 + 184);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v38 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v6;
  v36 = v6;
  v35 = v6;
  v34 = v6;
  *&v33[8] = v6;
  v7 = operator new(0x40uLL);
  strcpy(v7, "/var/wireless/Library/Logs/AppleBasebandManager/pci.scratch/");
  v8 = *(a1 + 96);
  *v33 = 6906736;
  v33[23] = 3;
  std::string::__init_copy_ctor_external(&v34, v7, 0x3CuLL);
  *&v36 = 0;
  *(&v36 + 1) = 0x400000000000000;
  *&v37 = v8 << 20;
  *(&v37 + 1) = 0x100000;
  LOBYTE(v38) = 1;
  *(&v35 + 1) = 1735355438;
  operator delete(v7);
  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Create and open log writer", buf, 2u);
  }

  v10 = operator new(0xB8uLL);
  CircularFileLogWriter::CircularFileLogWriter(v10, v33);
  std::shared_ptr<CircularFileLogWriter>::shared_ptr[abi:ne200100]<CircularFileLogWriter,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1},0>(buf, v10);
  v11 = *buf;
  memset(buf, 0, sizeof(buf));
  v12 = *(a1 + 184);
  *(a1 + 176) = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(a1 + 176);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 0x40000000;
  v26[2] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
  v26[3] = &__block_descriptor_tmp;
  v26[4] = v14;
  v27 = v26;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 0x40000000;
  v29 = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v30 = &__block_descriptor_tmp_21;
  v31 = v14 + 8;
  v32 = &v27;
  v15 = *(v14 + 24);
  if (*(v14 + 32))
  {
    dispatch_async_and_wait(v15, buf);
  }

  else
  {
    dispatch_sync(v15, buf);
  }

  if ((KernelPCITrace::registerWithKernel_sync(a1) & 1) == 0)
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#E Registering with Kernel driver failed. De-register to cleanup", buf, 2u);
    }

    KernelPCITrace::deregisterWithKernel_sync(a1);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(*(&v35 + 1));
    if ((SBYTE7(v35) & 0x80000000) == 0)
    {
LABEL_24:
      if ((v33[23] & 0x80000000) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }
  }

  else if ((SBYTE7(v35) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v34);
  if ((v33[23] & 0x80000000) != 0)
  {
LABEL_28:
    operator delete(*v33);
  }

LABEL_41:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_23C1E61DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  operator delete(v29);
  CircularFileLogWriter::Params::~Params(&a29);
  _Unwind_Resume(a1);
}

void sub_23C1E61F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  operator delete(v34);
  _Unwind_Resume(a1);
}

void sub_23C1E6248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  if (!v7)
  {
    _Unwind_Resume(a1);
  }

  dispatch_group_leave(v7);
  dispatch_release(v7);
  dispatch_release(v7);
  _Unwind_Resume(a1);
}

uint64_t KernelPCITrace::registerWithKernel_sync(KernelPCITrace *this)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    *buf = 136315138;
    *&buf[4] = "registerWithKernel_sync";
    _os_log_debug_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
    if (*(this + 208))
    {
      goto LABEL_5;
    }
  }

  else if (*(this + 208))
  {
    goto LABEL_5;
  }

  v3 = *(this + 11);
  if (v3)
  {
    dispatch_group_enter(v3);
    *(this + 208) = 1;
  }

LABEL_5:
  v4 = *(this + 25);
  *(this + 24) = 0;
  *(this + 25) = 0;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  pci::transport::kernelControl::create(buf, v3);
  v5 = *buf;
  if (*buf)
  {
    v6 = operator new(0x20uLL);
    *v6 = &unk_284EF9558;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v5;
    *buf = 0;
    v7 = *(this + 25);
    *(this + 24) = v5;
    *(this + 25) = v6;
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_18:
    if (!v5)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  *buf = 0;
  v7 = *(this + 25);
  *(this + 24) = 0;
  *(this + 25) = 0;
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *buf;
  *buf = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v5 = *(this + 24);
  if (!v5)
  {
LABEL_15:
    v9 = *(this + 5);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 0;
      v11 = "#E ABP Control object creation failed";
LABEL_29:
      _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      result = 0;
      goto LABEL_30;
    }

    goto LABEL_30;
  }

LABEL_19:
  if ((*(*v5 + 24))(v5))
  {
    result = *(this + 10);
    if (!result)
    {
      goto LABEL_30;
    }

    result = std::__shared_weak_count::lock(result);
    if (!result)
    {
      goto LABEL_30;
    }

    v12 = result;
    v13 = *(this + 9);
    if (v13)
    {
      v14 = *(this + 24);
      v15 = *(v13 + 12);
      if (v15 && (v16 = std::__shared_weak_count::lock(v15)) != 0)
      {
        v17 = *(v13 + 11);
        if (v17)
        {
          v18 = *(v17 + 88);
        }

        else
        {
          v18 = 0;
        }

        if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v20 = v16;
          v21 = v18;
          (v16->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v20);
          v18 = v21;
        }
      }

      else
      {
        v18 = 0;
      }

      v22 = (*(*v14 + 40))(v14, v18);
      v23 = *(this + 5);
      result = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (!result)
        {
          goto LABEL_54;
        }

        *buf = 0;
        v24 = "#E ABP Control open failed";
        v25 = v23;
      }

      else
      {
        if (result)
        {
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v23, OS_LOG_TYPE_DEFAULT, "#I Started and opened ABP control interface", buf, 2u);
        }

        v26 = (*(**(this + 24) + 96))(*(this + 24), &KernelPCITrace::registerWithKernel_sync(void)::bufferSize);
        if (KernelPCITrace::registerWithKernel_sync(void)::bufferSize)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        if (v27 == 1)
        {
          BuffContext_sync = KernelPCITrace::createBuffContext_sync(this, KernelPCITrace::registerWithKernel_sync(void)::bufferSize);
          v29 = (*(**(this + 24) + 64))(*(this + 24), *BuffContext_sync, *(BuffContext_sync + 2), 1, flushLogsCompletionCB, BuffContext_sync);
          v30 = *(this + 5);
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
          if (v29)
          {
            if (v31)
            {
              *buf = 67109376;
              *&buf[4] = KernelPCITrace::registerWithKernel_sync(void)::bufferSize >> 10;
              *&buf[8] = 1024;
              *&buf[10] = v29;
              _os_log_impl(&dword_23C1C4000, v30, OS_LOG_TYPE_DEFAULT, "#E Failed assigning buffer of size '%u KB' to fetch logs during init. Status [0x%x]", buf, 0xEu);
            }

            KernelPCITrace::deleteBuffContext_sync(this, BuffContext_sync);
          }

          else
          {
            if (v31)
            {
              *buf = 67109120;
              *&buf[4] = KernelPCITrace::registerWithKernel_sync(void)::bufferSize >> 10;
              _os_log_impl(&dword_23C1C4000, v30, OS_LOG_TYPE_DEFAULT, "#I Assign buffer of size '%u KB' to fetch logs during init", buf, 8u);
            }

            if (!*(this + 26))
            {
LABEL_64:
              RunLoop = abm::BasebandTracingTask::getRunLoop(v13);
              CFRunLoopWakeUp(RunLoop);
              result = 1;
              if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                goto LABEL_30;
              }

              goto LABEL_55;
            }

            v34 = 0;
            while (1)
            {
              v35 = KernelPCITrace::createBuffContext_sync(this, 0x10000);
              v36 = (*(**(this + 24) + 64))(*(this + 24), *v35, *(v35 + 2), 0, readLogsCompletionCB, v35);
              v37 = *(this + 5);
              if (v36)
              {
                break;
              }

              ++v34;
              if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *&buf[4] = v34;
                *&buf[8] = 2048;
                *&buf[10] = 64;
                _os_log_impl(&dword_23C1C4000, v37, OS_LOG_TYPE_DEFAULT, "#I Pre-assign buffer # %d of size '%ld KB' to fetch logs", buf, 0x12u);
              }

              if (v34 >= *(this + 26))
              {
                goto LABEL_64;
              }
            }

            v39 = v36;
            if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
            {
              *buf = 67109632;
              *&buf[4] = v34 + 1;
              *&buf[8] = 2048;
              *&buf[10] = 64;
              v41 = 1024;
              v42 = v39;
              _os_log_error_impl(&dword_23C1C4000, v37, OS_LOG_TYPE_ERROR, "Failed pre-assigning buffer # %d of size '%ld KB' to fetch logs. Status [0x%x]", buf, 0x18u);
            }

            KernelPCITrace::deleteBuffContext_sync(this, v35);
          }

          goto LABEL_53;
        }

        v32 = *(this + 5);
        result = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          goto LABEL_54;
        }

        *buf = 0;
        v24 = "#E Failed to get internal buffer size from kernel";
        v25 = v32;
      }

      _os_log_impl(&dword_23C1C4000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    }

LABEL_53:
    result = 0;
LABEL_54:
    if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_30;
    }

LABEL_55:
    v33 = result;
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    result = v33;
    goto LABEL_30;
  }

  v9 = *(this + 5);
  result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 0;
    v11 = "#E ABP Control start failed";
    goto LABEL_29;
  }

LABEL_30:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C1E69B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C1E69CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C1E69E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C1E69F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C1E6A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void KernelPCITrace::deregisterWithKernel_sync(KernelPCITrace *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "deregisterWithKernel_sync";
    _os_log_debug_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEBUG, "#D %s", &v9, 0xCu);
    v3 = *(this + 24);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *(this + 24);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Close ABM Control port", &v9, 2u);
    v3 = *(this + 24);
  }

  (*(*v3 + 56))(v3);
  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Stop ABP control interface", &v9, 2u);
  }

  (*(**(this + 24) + 32))(*(this + 24));
  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Destroy ABP control object", &v9, 2u);
  }

  v7 = *(this + 25);
  *(this + 24) = 0;
  *(this + 25) = 0;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (*(this + 208) != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(this + 208) == 1)
  {
LABEL_12:
    dispatch_group_leave(*(this + 11));
    *(this + 208) = 0;
  }

LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
}

void KernelPCITrace::snapshot_sync(uint64_t a1, NSObject **a2, const __CFDictionary **a3)
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "snapshot_sync";
    _os_log_debug_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
    if (!*(a1 + 192))
    {
      goto LABEL_141;
    }

LABEL_3:
    v87[0] = 0xAAAAAAAAAAAAAAAALL;
    v87[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v87, *a3);
    memset(buf, 170, sizeof(buf));
    __p[0] = operator new(0x28uLL);
    *&__p[1] = xmmword_23C32C700;
    strcpy(__p[0], "kCollectTelephonyLogsWithCoredump");
    ctu::cf::MakeCFString::MakeCFString(v85, "kKeyTraceAction");
    ctu::cf::map_adapter::getString();
    MEMORY[0x23EECD8F0](v85);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    memset(__p, 170, sizeof(__p));
    v7 = *MEMORY[0x277CECBB8];
    memset(v85, 0, sizeof(v85));
    ctu::cf::MakeCFString::MakeCFString(__dst, v7);
    ctu::cf::map_adapter::getString();
    MEMORY[0x23EECD8F0](__dst);
    if (SHIBYTE(v85[2]) < 0)
    {
      operator delete(v85[0]);
    }

    v8 = 0x7FFFFFFFFFFFFFF7;
    memset(v85, 170, sizeof(v85));
    v9 = HIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) < 0)
    {
      v9 = __p[1];
    }

    if (v9)
    {
      v10 = abm::trace::kSnapshotFolder;
    }

    else
    {
      v10 = abm::trace::kTrashFolder;
    }

    v11 = *v10;
    v12 = strlen(*v10);
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
      *(&__dst[0] + 1) = v13;
      *&__dst[1] = v15 | 0x8000000000000000;
      *&__dst[0] = v14;
    }

    else
    {
      BYTE7(__dst[1]) = v12;
      v14 = __dst;
      if (!v12)
      {
LABEL_21:
        *(v14 + v13) = 0;
        ctu::cf::MakeCFString::MakeCFString(v82, "kKeyTraceDumpStatePath");
        ctu::cf::map_adapter::getString();
        MEMORY[0x23EECD8F0](v82);
        if (SBYTE7(__dst[1]) < 0)
        {
          operator delete(*&__dst[0]);
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
          v80.__r_.__value_.__l.__size_ = v18;
          v80.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
          v80.__r_.__value_.__r.__words[0] = v19;
        }

        else
        {
          *(&v80.__r_.__value_.__s + 23) = v17;
          v19 = &v80;
          if (!v17)
          {
LABEL_32:
            v19[v18] = 0;
            if (SHIBYTE(v85[2]) >= 0)
            {
              v21 = v85;
            }

            else
            {
              v21 = v85[0];
            }

            if (SHIBYTE(v85[2]) >= 0)
            {
              v22 = HIBYTE(v85[2]);
            }

            else
            {
              v22 = v85[1];
            }

            v23 = std::string::insert(&v80, 0, v21, v22);
            v24 = *&v23->__r_.__value_.__l.__data_;
            v81.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
            *&v81.__r_.__value_.__l.__data_ = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__p[2]) >= 0)
            {
              v25 = __p;
            }

            else
            {
              v25 = __p[0];
            }

            if (SHIBYTE(__p[2]) >= 0)
            {
              v26 = HIBYTE(__p[2]);
            }

            else
            {
              v26 = __p[1];
            }

            v27 = std::string::append(&v81, v25, v26);
            v28 = *&v27->__r_.__value_.__l.__data_;
            v83 = v27->__r_.__value_.__r.__words[2];
            *v82 = v28;
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            v29 = SHIBYTE(v83);
            if ((SHIBYTE(v83) & 0x8000000000000000) != 0)
            {
              v29 = v82[1];
              v32 = v83 & 0x7FFFFFFFFFFFFFFFLL;
              v31 = (v83 & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v31 == v82[1])
              {
                if (v32 == 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v30 = v82[0];
                if (v31 >= 0x3FFFFFFFFFFFFFF3)
                {
                  v36 = 0;
                  v35 = 0x7FFFFFFFFFFFFFF7;
LABEL_59:
                  v37 = operator new(v35);
                  v38 = v37;
                  if (v31)
                  {
                    memmove(v37, v30, v31);
                  }

                  v38[v31] = 45;
                  if (!v36)
                  {
                    operator delete(v30);
                  }

                  v82[1] = v32;
                  v83 = v35 | 0x8000000000000000;
                  v82[0] = v38;
                  v39 = &v38[v32];
LABEL_69:
                  *v39 = 0;
                  *&__dst[1] = v83;
                  __dst[0] = *v82;
                  v82[1] = 0;
                  v83 = 0;
                  v82[0] = 0;
                  v41 = SBYTE7(__dst[1]);
                  if ((SBYTE7(__dst[1]) & 0x8000000000000000) != 0)
                  {
                    v41 = *(&__dst[0] + 1);
                    v44 = (*&__dst[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                    if (v44 - *(&__dst[0] + 1) < 3)
                    {
                      v42 = *(&__dst[0] + 1) + 3;
                      if (0x7FFFFFFFFFFFFFF7 - (*&__dst[1] & 0x7FFFFFFFFFFFFFFFuLL) < *(&__dst[0] + 1) + 3 - v44)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v43 = *&__dst[0];
                      if (v44 >= 0x3FFFFFFFFFFFFFF3)
                      {
                        v47 = 0;
LABEL_84:
                        v48 = operator new(v8);
                        v49 = v48;
                        if (v41)
                        {
                          memmove(v48, v43, v41);
                        }

                        v50 = &v49[v41];
                        v50[2] = 105;
                        *v50 = 25456;
                        if (!v47)
                        {
                          operator delete(v43);
                        }

                        *(&__dst[0] + 1) = v42;
                        *&__dst[1] = v8 | 0x8000000000000000;
                        *&__dst[0] = v49;
                        v51 = &v49[v42];
LABEL_95:
                        *v51 = 0;
                        v88[0] = *(&__dst[0] + 1);
                        v55 = *&__dst[0];
                        *(v88 + 7) = *(__dst + 15);
                        v56 = BYTE7(__dst[1]);
                        memset(__dst, 0, 24);
                        if ((*(a1 + 159) & 0x80000000) == 0)
                        {
                          v57 = v88[0];
                          *(a1 + 136) = v55;
                          *(a1 + 144) = v57;
                          *(a1 + 151) = *(v88 + 7);
                          *(a1 + 159) = v56;
                          if (SHIBYTE(v83) < 0)
                          {
                            goto LABEL_97;
                          }

LABEL_104:
                          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
                          {
LABEL_98:
                            operator delete(v81.__r_.__value_.__l.__data_);
                            if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                            {
                              goto LABEL_99;
                            }

                            goto LABEL_106;
                          }

LABEL_105:
                          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                          {
LABEL_99:
                            operator delete(v80.__r_.__value_.__l.__data_);
                            v58 = buf[23];
                            if (buf[23] < 0)
                            {
LABEL_100:
                              if (*&buf[8] != 17)
                              {
                                goto LABEL_120;
                              }

                              v59 = *buf;
                              goto LABEL_109;
                            }

LABEL_107:
                            if (v58 != 17)
                            {
                              goto LABEL_120;
                            }

                            v59 = buf;
LABEL_109:
                            v62 = *v59;
                            v63 = *(v59 + 1);
                            v64 = v59[16];
                            if (v62 == *"kShutdownAllTrace" && v63 == *"nAllTrace" && v64 == str_76[16])
                            {
                              v67 = *(a1 + 40);
                              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                              {
                                LOWORD(__dst[0]) = 0;
                                _os_log_impl(&dword_23C1C4000, v67, OS_LOG_TYPE_DEFAULT, "#I Snapshot requested as part of shutdown", __dst, 2u);
                              }

                              *(a1 + 160) = 0;
                            }

LABEL_120:
                            v68 = *a2;
                            if (v68)
                            {
                              dispatch_retain(v68);
                              dispatch_group_enter(v68);
                            }

                            v69 = *(a1 + 168);
                            *(a1 + 168) = v68;
                            if (v69)
                            {
                              dispatch_group_leave(v69);
                              dispatch_release(v69);
                            }

                            BuffContext_sync = KernelPCITrace::createBuffContext_sync(a1, 0x10000);
                            v71 = (*(**(a1 + 192) + 64))(*(a1 + 192), *BuffContext_sync, *(BuffContext_sync + 2), 1, flushLogsCompletionCB, BuffContext_sync);
                            v72 = *(a1 + 40);
                            v73 = os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);
                            if (v71)
                            {
                              if (v73)
                              {
                                LOWORD(__dst[0]) = 0;
                                _os_log_impl(&dword_23C1C4000, v72, OS_LOG_TYPE_DEFAULT, "#E Failed assigning additional buffer for snapshot", __dst, 2u);
                              }

                              KernelPCITrace::deleteBuffContext_sync(a1, BuffContext_sync);
                            }

                            else if (v73)
                            {
                              LOWORD(__dst[0]) = 0;
                              _os_log_impl(&dword_23C1C4000, v72, OS_LOG_TYPE_DEFAULT, "#I Assign additional buffer for snapshot", __dst, 2u);
                            }

                            v74 = KernelPCITrace::createBuffContext_sync(a1, 0);
                            v75 = (*(**(a1 + 192) + 64))(*(a1 + 192), *v74, *(v74 + 2), 1, flushLogsCompletionCB, v74);
                            v76 = *(a1 + 40);
                            v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
                            if (v75)
                            {
                              if (v77)
                              {
                                LOWORD(__dst[0]) = 0;
                                _os_log_impl(&dword_23C1C4000, v76, OS_LOG_TYPE_DEFAULT, "#E Failed assigning null-buffer to trigger snapshot", __dst, 2u);
                              }

                              KernelPCITrace::deleteBuffContext_sync(a1, v74);
                              v78 = *(a1 + 168);
                              *(a1 + 168) = 0;
                              if (v78)
                              {
                                dispatch_group_leave(v78);
                                dispatch_release(v78);
                              }
                            }

                            else if (v77)
                            {
                              LOWORD(__dst[0]) = 0;
                              _os_log_impl(&dword_23C1C4000, v76, OS_LOG_TYPE_DEFAULT, "#I Assign null-buffer to trigger snapshot", __dst, 2u);
                            }

                            if (SHIBYTE(v85[2]) < 0)
                            {
                              operator delete(v85[0]);
                              if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                              {
LABEL_139:
                                if ((buf[23] & 0x80000000) == 0)
                                {
LABEL_140:
                                  MEMORY[0x23EECD940](v87);
                                  goto LABEL_141;
                                }

LABEL_144:
                                operator delete(*buf);
                                goto LABEL_140;
                              }
                            }

                            else if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                            {
                              goto LABEL_139;
                            }

                            operator delete(__p[0]);
                            if ((buf[23] & 0x80000000) == 0)
                            {
                              goto LABEL_140;
                            }

                            goto LABEL_144;
                          }

LABEL_106:
                          v58 = buf[23];
                          if (buf[23] < 0)
                          {
                            goto LABEL_100;
                          }

                          goto LABEL_107;
                        }

                        operator delete(*(a1 + 136));
                        v60 = SBYTE7(__dst[1]);
                        v61 = v88[0];
                        *(a1 + 136) = v55;
                        *(a1 + 144) = v61;
                        *(a1 + 151) = *(v88 + 7);
                        *(a1 + 159) = v56;
                        if (v60 < 0)
                        {
                          operator delete(*&__dst[0]);
                          if ((SHIBYTE(v83) & 0x80000000) == 0)
                          {
                            goto LABEL_104;
                          }
                        }

                        else if ((SHIBYTE(v83) & 0x80000000) == 0)
                        {
                          goto LABEL_104;
                        }

LABEL_97:
                        operator delete(v82[0]);
                        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
                        {
                          goto LABEL_98;
                        }

                        goto LABEL_105;
                      }

LABEL_75:
                      v45 = 2 * v44;
                      if (v42 > 2 * v44)
                      {
                        v45 = v42;
                      }

                      if ((v45 | 7) == 0x17)
                      {
                        v46 = 25;
                      }

                      else
                      {
                        v46 = (v45 | 7) + 1;
                      }

                      if (v45 >= 0x17)
                      {
                        v8 = v46;
                      }

                      else
                      {
                        v8 = 23;
                      }

                      v47 = v44 == 22;
                      goto LABEL_84;
                    }

                    v52 = *&__dst[0];
                  }

                  else
                  {
                    if ((SBYTE7(__dst[1]) - 20) < 3)
                    {
                      v42 = SBYTE7(__dst[1]) + 3;
                      v43 = __dst;
                      v44 = 22;
                      goto LABEL_75;
                    }

                    v52 = __dst;
                  }

                  v53 = v52 + v41;
                  v53[2] = 105;
                  *v53 = 25456;
                  v54 = v41 + 3;
                  if (SBYTE7(__dst[1]) < 0)
                  {
                    *(&__dst[0] + 1) = v41 + 3;
                  }

                  else
                  {
                    BYTE7(__dst[1]) = v54 & 0x7F;
                  }

                  v51 = v52 + v54;
                  goto LABEL_95;
                }

LABEL_50:
                v33 = 2 * v31;
                if (v32 > 2 * v31)
                {
                  v33 = v32;
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

                v36 = v31 == 22;
                goto LABEL_59;
              }

              v30 = v82[0];
            }

            else
            {
              v30 = v82;
              if (SHIBYTE(v83) == 22)
              {
                v31 = 22;
                v32 = 23;
                goto LABEL_50;
              }
            }

            *(v29 + v30) = 45;
            v40 = v29 + 1;
            if (SHIBYTE(v83) < 0)
            {
              v82[1] = v40;
            }

            else
            {
              HIBYTE(v83) = v40 & 0x7F;
            }

            v39 = &v40[v30];
            goto LABEL_69;
          }
        }

        memmove(v19, v16, v18);
        goto LABEL_32;
      }
    }

    memmove(v14, v11, v13);
    goto LABEL_21;
  }

  if (*(a1 + 192))
  {
    goto LABEL_3;
  }

LABEL_141:
  v79 = *MEMORY[0x277D85DE8];
}

void sub_23C1E764C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if (a28 < 0)
    {
LABEL_5:
      operator delete(a23);
      if (a21 < 0)
      {
LABEL_8:
        operator delete(a16);
        if ((a15 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_11:
      if ((a15 & 0x80000000) == 0)
      {
LABEL_9:
        if ((a42 & 0x80000000) == 0)
        {
LABEL_14:
          if (a48 < 0)
          {
            operator delete(a43);
          }

          if (*(v48 - 105) < 0)
          {
            operator delete(*(v48 - 128));
          }

          MEMORY[0x23EECD940](v48 - 160);
          _Unwind_Resume(a1);
        }

LABEL_13:
        operator delete(a37);
        goto LABEL_14;
      }

LABEL_12:
      operator delete(a10);
      if ((a42 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_5;
  }

  if (a21 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
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

void ___ZN14KernelPCITrace21updateTraceState_syncEN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  KernelPCITrace::deregisterWithKernel_sync(v1);
  v2 = *(v1 + 22);
  if (v2)
  {
    v3 = *(v1 + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Closing log writer", buf, 2u);
      v2 = *(v1 + 22);
    }

    (*(*v2 + 16))(v2);
    v4 = *(v1 + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Clearing log writer files", v8, 2u);
    }

    (*(**(v1 + 22) + 64))(*(v1 + 22));
    v5 = *(v1 + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Releasing log writer object", v7, 2u);
    }

    v6 = *(v1 + 23);
    *(v1 + 22) = 0;
    *(v1 + 23) = 0;
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
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

void KernelPCITrace::flushLogsCompletion(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a1[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "flushLogsCompletion";
    _os_log_debug_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEBUG, "#D %s", &v17, 0xCu);
    v9 = a1[2];
    if (!v9)
    {
LABEL_8:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v9 = a1[2];
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v10 = a1[1];
  v11 = std::__shared_weak_count::lock(v9);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = a1;
  v13[1] = a2;
  *(v13 + 4) = a4;
  v13[3] = a3;
  v14 = a1[3];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_23C1E7BD0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void flushLogsCompletionCB(void *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1[3];
    if (v4)
    {
      v7 = std::__shared_weak_count::lock(v4);
      if (v7)
      {
        v8 = v7;
        v9 = a1[2];
        if (v9)
        {
          v10 = **v9;
          KernelPCITrace::flushLogsCompletion(v11, a1, a3, a2);
        }

        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }
      }
    }
  }
}

{
  if (a1)
  {
    v4 = a1[3];
    if (v4)
    {
      v7 = std::__shared_weak_count::lock(v4);
      if (v7)
      {
        v8 = a3;
        v9 = v7;
        v10 = a1[2];
        if (v10)
        {
          KernelPCIRestoreTrace::flushLogsCompletion(v10, a1, v8, a2);
        }

        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }
}

{
  if (a1)
  {
    v4 = a1[3];
    if (v4)
    {
      v7 = std::__shared_weak_count::lock(v4);
      if (v7)
      {
        v8 = v7;
        v9 = a1[2];
        if (v9)
        {
          v10 = **v9;
          KernelPCIABPTrace::flushLogsCompletion(v11, a1, a3, a2);
        }

        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);

          std::__shared_weak_count::__release_weak(v8);
        }
      }
    }
  }
}

uint64_t KernelPCITrace::setProperty_sync(uint64_t a1, NSObject **a2, char *a3, char *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = "setProperty_sync";
    _os_log_debug_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEBUG, "#D %s", &__p, 0xCu);
  }

  if ((prop::ipc::set(a3, a4) & 1) == 0)
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (a3[23] >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      if (a4[23] >= 0)
      {
        v19 = a4;
      }

      else
      {
        v19 = *a4;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v18;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v19;
      _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Set property to file failed; key=%s value=%s", &__p, 0x16u);
    }

    v11 = 0;
    goto LABEL_14;
  }

  *(&__p.__r_.__value_.__s + 23) = 7;
  strcpy(&__p, "Enabled");
  if (a3[23] >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (!strcasecmp(v9, &__p))
  {
    LOBYTE(v21) = -86;
    memset(&__p, 0, sizeof(__p));
    if (prop::ipc::get(a3, &__p))
    {
      v11 = util::convert<BOOL>(&__p, &v21, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v11 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_22:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (v11 && v21 != *(a1 + 100))
    {
      *(a1 + 100) = v21;
      v15 = *a2;
      v22 = v15;
      if (v15)
      {
        dispatch_retain(v15);
        dispatch_group_enter(v15);
      }

      KernelPCITrace::updateTraceState_sync(a1, &v22);
      if (v15)
      {
        dispatch_group_leave(v15);
        dispatch_release(v15);
      }
    }

    goto LABEL_14;
  }

  *(&__p.__r_.__value_.__s + 23) = 7;
  strcpy(&__p, "History");
  if (!strcasecmp(v9, &__p))
  {
    v21 = -1431655766;
    memset(&__p, 0, sizeof(__p));
    if (prop::ipc::get(a3, &__p))
    {
      v11 = util::convert<int>(&__p, &v21, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v11 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_33:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (v11)
    {
      v16 = v21;
      if (*(a1 + 96) != v21)
      {
        *(a1 + 96) = v21;
        v17 = *(a1 + 176);
        if (v17)
        {
          CircularFileLogWriter::setCapacity(v17, v16 << 20);
        }
      }
    }

    goto LABEL_14;
  }

  *(&__p.__r_.__value_.__s + 23) = 11;
  strcpy(&__p, "BufferCount");
  if (!strcasecmp(v9, &__p))
  {
    memset(&__p, 0, sizeof(__p));
    if (prop::ipc::get(a3, &__p))
    {
      v11 = util::convert<unsigned int>(&__p, (a1 + 104), 0);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_14;
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    if (a4[23] >= 0)
    {
      v20 = a4;
    }

    else
    {
      v20 = *a4;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v9;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v20;
    _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Unrecognized Set property request. Key=%s, Value=%s", &__p, 0x16u);
  }

  v11 = 1;
LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_23C1E80E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL KernelPCITrace::getProperty_sync(uint64_t a1, char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "getProperty_sync";
    _os_log_debug_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
  }

  HIBYTE(v16) = 5;
  strcpy(buf, "State");
  if (a2[23] >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (strcasecmp(v7, buf))
  {
    result = prop::ipc::get(a2, a3);
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  v14 = 0;
  LOBYTE(__p) = 0;
  KernelPCITrace::dumpState_sync(a1, &__p, 0, 10, buf);
  if (buf != a3)
  {
    if (*(a3 + 23) < 0)
    {
      if (v16 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      if (v16 >= 0)
      {
        v11 = HIBYTE(v16);
      }

      else
      {
        v11 = *&buf[8];
      }

      std::string::__assign_no_alias<false>(a3, v10, v11);
    }

    else if (v16 < 0)
    {
      std::string::__assign_no_alias<true>(a3, *buf, *&buf[8]);
    }

    else
    {
      *a3 = *buf;
      *(a3 + 16) = v16;
    }
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(*buf);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    operator delete(__p);
    goto LABEL_22;
  }

  if (v14 < 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  result = 1;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C1E8304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
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

uint64_t KernelPCITrace::dumpState_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[7] = v10;
  v45[8] = v10;
  v45[5] = v10;
  v45[6] = v10;
  v45[3] = v10;
  v45[4] = v10;
  v45[1] = v10;
  v45[2] = v10;
  v45[0] = v10;
  v43 = v10;
  v44 = v10;
  v41 = v10;
  *v42 = v10;
  v39 = v10;
  v40 = v10;
  v38 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v38);
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "\n----- KernelPCI Trace Dump State -----\n", 40);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Enabled: ", 9);
  v12 = MEMORY[0x23EECDF10](v11, *(a1 + 100));
  LOBYTE(__p[0]) = a4;
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, __p, 1);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "History: ", 9);
  KernelPCITrace::historyAsString(a1, __p);
  if ((v37 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v16 = v37;
  }

  else
  {
    v16 = __p[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  v47 = a4;
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v47, 1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Buffer size: ", 13);
  v20 = MEMORY[0x23EECDF60](v19, 0x10000);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " bytes", 6);
  v47 = a4;
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, &v47, 1);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Buffer count: ", 14);
  MEMORY[0x23EECDF40](v23, *(a1 + 104));
  if (v37 < 0)
  {
    operator delete(__p[0]);
    v24 = *(a2 + 23);
    if ((v24 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (!v24)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v24 = *(a2 + 23);
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!*(a2 + 8))
  {
    goto LABEL_22;
  }

LABEL_15:
  LOBYTE(__p[0]) = a4;
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, __p, 1);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Reason: ", 8);
  v27 = *(a2 + 23);
  if (v27 >= 0)
  {
    v28 = a2;
  }

  else
  {
    v28 = *a2;
  }

  if (v27 >= 0)
  {
    v29 = *(a2 + 23);
  }

  else
  {
    v29 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
LABEL_22:
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "\n--------------------------------------\n", 40);
  }

  if ((BYTE8(v44) & 0x10) != 0)
  {
    v31 = v44;
    if (v44 < *(&v41 + 1))
    {
      *&v44 = *(&v41 + 1);
      v31 = *(&v41 + 1);
    }

    v32 = v41;
    v30 = v31 - v41;
    if ((v31 - v41) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if ((BYTE8(v44) & 8) == 0)
    {
      v30 = 0;
      a5[23] = 0;
      goto LABEL_38;
    }

    v32 = *(&v39 + 1);
    v30 = *(&v40 + 1) - *(&v39 + 1);
    if (*(&v40 + 1) - *(&v39 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_42:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v30 >= 0x17)
  {
    if ((v30 | 7) == 0x17)
    {
      v33 = 25;
    }

    else
    {
      v33 = (v30 | 7) + 1;
    }

    v34 = operator new(v33);
    *(a5 + 1) = v30;
    *(a5 + 2) = v33 | 0x8000000000000000;
    *a5 = v34;
    a5 = v34;
    goto LABEL_37;
  }

  a5[23] = v30;
  if (v30)
  {
LABEL_37:
    memmove(a5, v32, v30);
  }

LABEL_38:
  a5[v30] = 0;
  *&v38 = *MEMORY[0x277D82828];
  *(&v38 + *(v38 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v38 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[1]);
  }

  *(&v38 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v39);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v45);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x277D82828] + 16);
  v5 = *(MEMORY[0x277D82828] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x277D828A0] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EECE100](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_23C1E88DC(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x23EECE150](v1);
  _Unwind_Resume(a1);
}

uint64_t KernelPCITrace::historyAsString@<X0>(uint64_t this@<X0>, char *a2@<X8>)
{
  v2 = a2;
  if (!*(this + 96))
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
  v5 = MEMORY[0x23EECDF30](&v11, *(v3 + 96));
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
  MEMORY[0x23EECE150](a1 + 112);
  return a1;
}

void KernelPCITrace::start(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void KernelPCITrace::shutdown(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(KernelPCITrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCITrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<KernelPCITrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void KernelPCITrace::snapshot(void *a1, dispatch_object_t *a2, const void **a3)
{
  v5 = *a2;
  if (!*a2)
  {
    v7 = 0;
    v8 = *a3;
    if (!*a3)
    {
      goto LABEL_8;
    }

LABEL_7:
    CFRetain(v8);
    goto LABEL_8;
  }

  dispatch_retain(*a2);
  dispatch_group_enter(v5);
  v7 = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a3;
  if (*a3)
  {
    goto LABEL_7;
  }

LABEL_8:
  v9 = a1[2];
  if (!v9 || (v10 = a1[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = a1;
  v13[1] = v5;
  v13[2] = v7;
  v13[3] = v8;
  v14 = a1[3];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);

    std::__shared_weak_count::__release_weak(v12);
  }
}

void KernelPCITrace::dumpState(NSObject *a1, NSObject **a2, uint64_t a3)
{
  v5 = *a2;
  group[0] = a1;
  group[1] = *a2;
  if (*a2)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  isa = a1[2].isa;
  if (!isa || (v7 = a1[1].isa, (v8 = std::__shared_weak_count::lock(isa)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x28uLL);
  *v10 = *group;
  v11 = (v10 + 16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(v10 + 4) = *(&__p.__r_.__value_.__l + 2);
  }

  v12 = a1[3].isa;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v10;
  v13[1] = v7;
  v13[2] = v9;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0>(KernelPCITrace::dumpState(dispatch::group,std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0,std::default_delete<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }
}