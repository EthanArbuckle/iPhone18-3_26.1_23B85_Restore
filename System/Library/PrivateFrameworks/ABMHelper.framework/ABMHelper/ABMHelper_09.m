void sub_23C232114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void DALTrace::prepare_sync(DALTrace *this)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 24);
    if (v3 > 8)
    {
      v4 = "Unknown";
    }

    else
    {
      v4 = off_278BB8C20[v3];
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Preparing BB Trace with mode: %s", buf, 0xCu);
  }

  if (!*(this + 16) && ((v6 = *(this + 24), v6 != 7) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    DALTrace::createTraceReader_sync(this);
  }

  else
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEBUG, "#D Skipped creating new file reader instance", buf, 2u);
    }
  }

  v8 = *(this + 24);
  if (v8 != 7 && v8 != 2)
  {
    if (v8)
    {
      goto LABEL_80;
    }

    LOBYTE(v37) = 0;
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v9 = off_280C05A08;
    if (!off_280C05A08)
    {
      SharedData::create_default_global(buf);
      v10 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v11 = *(&off_280C05A08 + 1);
      off_280C05A08 = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v9 = off_280C05A08;
    }

    v34 = v9;
    v35 = *(&off_280C05A08 + 1);
    if (*(&off_280C05A08 + 1))
    {
      atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    *buf = operator new(0x38uLL);
    *&v33[50] = 0;
    *&v33[52] = 0;
    *&v33[56] = 0x8000000000000038;
    *&buf[8] = xmmword_23C32DBD0;
    strcpy(*buf, "Firmware version changed since last commcenter launch");
    strcpy(v33, "ast commcenter l changed since lFirmware version5");
    os_unfair_lock_lock((v9 + 40));
    Preferences::getPreference<BOOL>(v9, buf, &v37);
    os_unfair_lock_unlock((v9 + 40));
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
      v13 = v35;
      if (!v35)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v13 = v35;
      if (!v35)
      {
        goto LABEL_42;
      }
    }

    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (v37 == 1)
      {
LABEL_43:
        strcpy(buf, "FW version has changed");
        buf[23] = 22;
        DALTrace::cleanupScratchFolder(this, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        v18 = off_280C05A08;
        if (!off_280C05A08)
        {
          SharedData::create_default_global(buf);
          v19 = *buf;
          *buf = 0;
          *&buf[8] = 0;
          v20 = *(&off_280C05A08 + 1);
          off_280C05A08 = v19;
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

          v18 = off_280C05A08;
        }

        v34 = v18;
        v35 = *(&off_280C05A08 + 1);
        if (*(&off_280C05A08 + 1))
        {
          atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        v22 = operator new(0x38uLL);
        *buf = v22;
        *&buf[8] = *&v33[48];
        *v22 = *&v33[32];
        *(v22 + 1) = *&v33[16];
        *(v22 + 2) = *v33;
        strcpy(v22 + 45, "r launch");
        os_unfair_lock_lock((v18 + 40));
        if (buf[23] >= 0)
        {
          v23 = buf;
        }

        else
        {
          v23 = *buf;
        }

        ctu::cf::MakeCFString::MakeCFString(&key, v23);
        v24 = *MEMORY[0x277CBED10];
        v37 = v24;
        if (v24)
        {
          v25 = *MEMORY[0x277CBF030];
          CFPreferencesSetValue(key, v24, *(v18 + 8), *(v18 + 16), *MEMORY[0x277CBF030]);
          v26 = CFPreferencesSynchronize(*(v18 + 8), *(v18 + 16), v25) != 0;
          CFRelease(v24);
          MEMORY[0x23EECD8F0](&key);
          os_unfair_lock_unlock((v18 + 40));
          if ((buf[23] & 0x80000000) == 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v26 = 0;
          MEMORY[0x23EECD8F0](&key);
          os_unfair_lock_unlock((v18 + 40));
          if ((buf[23] & 0x80000000) == 0)
          {
LABEL_60:
            v27 = v35;
            if (!v35)
            {
              goto LABEL_72;
            }

            goto LABEL_70;
          }
        }

        operator delete(*buf);
        v27 = v35;
        if (!v35)
        {
LABEL_72:
          if (!v26)
          {
            v28 = *(this + 5);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "Firmware version changed since last commcenter launch";
              _os_log_error_impl(&dword_23C1C4000, v28, OS_LOG_TYPE_ERROR, "Failed to get value of key %s from plist", buf, 0xCu);
            }
          }

LABEL_75:
          started = DALTrace::startTraceReader_sync(this);
          v15 = *(this + 5);
          if (started)
          {
            if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              goto LABEL_78;
            }

            goto LABEL_79;
          }

          if (!os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            goto LABEL_87;
          }

          *buf = 0;
          v17 = "Failed to open TRACE transport during prepare stage; ignore this failure and proceed";
LABEL_90:
          _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, v17, buf, 2u);
          goto LABEL_87;
        }

LABEL_70:
        if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        goto LABEL_72;
      }

LABEL_65:
      if ((*(this + 296) & 1) == 0)
      {
        *buf = operator new(0x38uLL);
        *&buf[8] = xmmword_23C32DBE0;
        strcpy(*buf, "Property 'Retain Previous Trace' is set to false");
        DALTrace::cleanupScratchFolder(this, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_75;
    }

LABEL_42:
    if (v37 == 1)
    {
      goto LABEL_43;
    }

    goto LABEL_65;
  }

  v14 = DALTrace::startTraceWithUSBBridgeInterface(this);
  v15 = *(this + 5);
  if (!v14)
  {
    if (!os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v17 = "Failed to start trace via usb bridge";
    goto LABEL_90;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, "#I Succeeded in starting usb bridge", buf, 2u);
  }

  v8 = *(this + 24);
  if (v8 != 7)
  {
    goto LABEL_80;
  }

  v16 = DALTrace::startTraceReader_sync(this);
  v15 = *(this + 5);
  if ((v16 & 1) == 0)
  {
    if (!os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v17 = "Failed to open TRACE transport during prepare stage; ignore this failure and proceed";
    goto LABEL_90;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
LABEL_78:
    _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, "#I Succeeded opening trace transport", buf, 2u);
  }

LABEL_79:
  v8 = *(this + 24);
LABEL_80:
  if (v8 == 4 && *(this + 30) == 2)
  {
    v30 = *(this + 5);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v30, OS_LOG_TYPE_DEFAULT, "#I Logging through proxy bridge", buf, 2u);
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  *(this + 324) = v31;
  *(this + 168) = 1;
LABEL_87:
  v32 = *MEMORY[0x277D85DE8];
}

void DALTrace::createTraceReader_sync(DALTrace *this)
{
  v94 = *MEMORY[0x277D85DE8];
  v2 = 0x7FFFFFFFFFFFFFF7;
  memset(v63, 170, 24);
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
      v11 = 25;
    }

    else
    {
      v11 = (v4 | 7) + 1;
    }

    v6 = operator new(v11);
    *&__dst[8] = v5;
    *&__dst[16] = v11 | 0x8000000000000000;
    *__dst = v6;
LABEL_11:
    memmove(v6, v3, v5);
    v6[v5] = 0;
    v7 = __dst[23];
    if ((__dst[23] & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  __dst[23] = v4;
  v6 = __dst;
  if (v4)
  {
    goto LABEL_11;
  }

  __dst[0] = 0;
  v7 = __dst[23];
  if ((__dst[23] & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (v7 - 7 < 0x10)
    {
      v8 = v7 + 16;
      v9 = __dst;
      v10 = 22;
LABEL_15:
      v12 = 2 * v10;
      if (v8 > 2 * v10)
      {
        v12 = v8;
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
        v2 = v13;
      }

      else
      {
        v2 = 23;
      }

      v14 = v10 == 22;
      goto LABEL_24;
    }

    v18 = __dst;
LABEL_31:
    *&v18[v7] = *"BBTrace.scratch/";
    v19 = v7 + 16;
    if ((__dst[23] & 0x80000000) != 0)
    {
      *&__dst[8] = v7 + 16;
    }

    else
    {
      __dst[23] = v19 & 0x7F;
    }

    v17 = &v18[v19];
    goto LABEL_35;
  }

LABEL_12:
  v7 = *&__dst[8];
  v10 = (*&__dst[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 - *&__dst[8] >= 0x10)
  {
    v18 = *__dst;
    goto LABEL_31;
  }

  v8 = *&__dst[8] + 16;
  if (0x7FFFFFFFFFFFFFF7 - (*&__dst[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&__dst[8] + 16 - v10)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *__dst;
  if (v10 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v14 = 0;
LABEL_24:
  v15 = operator new(v2);
  v16 = v15;
  if (v7)
  {
    memmove(v15, v9, v7);
  }

  *&v16[v7] = *"BBTrace.scratch/";
  if (!v14)
  {
    operator delete(v9);
  }

  *&__dst[8] = v8;
  *&__dst[16] = v2 | 0x8000000000000000;
  *__dst = v16;
  v17 = &v16[v8];
LABEL_35:
  *v17 = 0;
  *v63 = *__dst;
  v63[2] = *&__dst[16];
  v20 = *(this + 5);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v63;
    if (SHIBYTE(v63[2]) < 0)
    {
      v21 = v63[0];
    }

    *__dst = 136315138;
    *&__dst[4] = v21;
    _os_log_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_DEFAULT, "#I scratch path is %s", __dst, 0xCu);
  }

  v57 = 0xAAAAAAAAAAAA0000;
  *v58 = 0u;
  v59 = 0u;
  *v60 = 0u;
  memset(v61, 0, sizeof(v61));
  *v62 = 0;
  *&v62[8] = 0x1500100000;
  *&v62[16] = 0xAAAAAAAA00000015;
  if (SHIBYTE(v63[2]) < 0)
  {
    std::string::__assign_no_alias<true>(&v61[3], v63[0], v63[1]);
    if (SHIBYTE(v61[2]) < 0)
    {
      v61[1] = 7;
      v22 = v61[0];
      goto LABEL_43;
    }
  }

  else
  {
    *&v61[3] = *v63;
    v61[5] = v63[2];
  }

  v22 = v61;
  HIBYTE(v61[2]) = 7;
LABEL_43:
  strcpy(v22, ".muxraw");
  *v62 = *(this + 27);
  *&v62[4] = vrev64_s32(*(this + 112));
  *&v62[12] = 0x1100000011;
  v23 = *(this + 2);
  if (!v23 || (v24 = *(this + 80), v25 = *(this + 1), (v26 = std::__shared_weak_count::lock(v23)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = v26;
  p_shared_weak_owners = &v26->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v27);
  }

  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v90 = v29;
  v91 = v29;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  *(&v91 + 1) = 0;
  v30 = operator new(0x20uLL);
  *v30 = &unk_284EFB638;
  v30[1] = this;
  v30[2] = v25;
  v30[3] = v27;
  *(&v91 + 1) = v30;
  v89 = 0xAAAAAAAAAAAAAAAALL;
  *&v31 = 0xAAAAAAAAAAAAAAAALL;
  *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v88[0] = v31;
  v88[1] = v31;
  LODWORD(v88[0]) = *(this + 80);
  v32 = operator new(0x20uLL);
  *v32 = &unk_284EFB638;
  v32[1] = this;
  v32[2] = v25;
  v32[3] = v27;
  atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v89 = v32;
  *&v33 = 0xAAAAAAAAAAAAAAAALL;
  *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v84 = v33;
  v85 = 0xAAAAAAAAAAAAAAAALL;
  *v83 = v33;
  *&v83[16] = v33;
  v74 = v33;
  *&__dst[8] = v33;
  *__dst = 0;
  *&__dst[16] = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  v73 = 0x1500100000;
  LODWORD(v74) = 21;
  WORD4(v74) = 0;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0;
  v82 = 0x1500100000;
  *v83 = 21;
  *&v83[12] = 0;
  *&v83[24] = 0;
  v86 = 0;
  v87 = 0xAAAAAAAA00000015;
  v34 = *(this + 3);
  if (v34)
  {
    dispatch_retain(*(this + 3));
    v35 = *__dst;
    *__dst = v34;
    if (v35)
    {
      dispatch_release(v35);
    }
  }

  v36 = (*(*this + 136))(this);
  if (*(v36 + 23) >= 0)
  {
    v37 = v36;
  }

  else
  {
    v37 = *v36;
  }

  *&__dst[8] = v37;
  TraceFileCollection::Parameters::operator=(&__dst[16], &v57);
  *&v83[8] = 0;
  *&v83[12] = v24 | 0xAAAAAA1900000000;
  *&v83[24] = v88[0];
  v41 = v89;
  if (!v89)
  {
    goto LABEL_56;
  }

  if (v89 != (v88 + 8))
  {
    v41 = (*(*v89 + 16))(v89, v38, v39, v40);
LABEL_56:
    v93 = v41;
    goto LABEL_58;
  }

  v93 = buf;
  (*(*v89 + 24))(v89, buf, v39, v40);
LABEL_58:
  std::__function::__value_func<void ()(xpc::dict const&)>::swap[abi:ne200100](buf, &v84);
  if (v93 == buf)
  {
    (*(*v93 + 32))(v93);
  }

  else if (v93)
  {
    (*(*v93 + 40))(v93, v42, v43, v44);
  }

  LODWORD(v87) = 17;
  abm::trace::TraceReader::Config::Config(v64, __dst);
  abm::trace::TraceReader::create();
  v45 = *buf;
  memset(buf, 0, sizeof(buf));
  v46 = *(this + 17);
  *(this + 8) = v45;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
    v47 = *&buf[8];
    if (!*&buf[8])
    {
LABEL_66:
      abm::trace::TraceReader::Config::~Config(v64);
      v48 = *(this + 16);
      v49 = *(this + 5);
      v50 = v49;
      if (v48)
      {
        goto LABEL_67;
      }

LABEL_77:
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v49, OS_LOG_TYPE_ERROR, "Failed to create trace reader", buf, 2u);
        abm::trace::TraceReader::Config::~Config(__dst);
        v51 = v89;
        if (v89 != (v88 + 8))
        {
          goto LABEL_79;
        }

LABEL_69:
        (*(*v51 + 32))(v51);
        v52 = *(&v91 + 1);
        if (*(&v91 + 1) == &v90)
        {
          goto LABEL_70;
        }

        goto LABEL_82;
      }

LABEL_78:
      abm::trace::TraceReader::Config::~Config(__dst);
      v51 = v89;
      if (v89 != (v88 + 8))
      {
        goto LABEL_79;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v47 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_66;
    }
  }

  if (atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  (v47->__on_zero_shared)(v47);
  std::__shared_weak_count::__release_weak(v47);
  abm::trace::TraceReader::Config::~Config(v64);
  v54 = *(this + 16);
  v49 = *(this + 5);
  v50 = v49;
  if (!v54)
  {
    goto LABEL_77;
  }

LABEL_67:
  if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_78;
  }

  *buf = 0;
  _os_log_debug_impl(&dword_23C1C4000, v49, OS_LOG_TYPE_DEBUG, "#D Created trace reader!", buf, 2u);
  abm::trace::TraceReader::Config::~Config(__dst);
  v51 = v89;
  if (v89 == (v88 + 8))
  {
    goto LABEL_69;
  }

LABEL_79:
  if (v51)
  {
    (*(*v51 + 40))(v51);
  }

  v52 = *(&v91 + 1);
  if (*(&v91 + 1) == &v90)
  {
LABEL_70:
    (*(*v52 + 32))(v52);
    std::__shared_weak_count::__release_weak(v27);
    if (SHIBYTE(v61[5]) < 0)
    {
      goto LABEL_71;
    }

    goto LABEL_85;
  }

LABEL_82:
  if (v52)
  {
    (*(*v52 + 40))(v52);
  }

  std::__shared_weak_count::__release_weak(v27);
  if (SHIBYTE(v61[5]) < 0)
  {
LABEL_71:
    operator delete(v61[3]);
    if (SHIBYTE(v61[2]) < 0)
    {
      goto LABEL_72;
    }

LABEL_86:
    v53 = *(&v59 + 1);
    if (!*(&v59 + 1))
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_85:
  if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_86;
  }

LABEL_72:
  operator delete(v61[0]);
  v53 = *(&v59 + 1);
  if (*(&v59 + 1))
  {
LABEL_87:
    v60[0] = v53;
    operator delete(v53);
  }

LABEL_88:
  if (SBYTE7(v59) < 0)
  {
    operator delete(v58[0]);
    if ((SHIBYTE(v63[2]) & 0x80000000) == 0)
    {
      goto LABEL_90;
    }
  }

  else if ((SHIBYTE(v63[2]) & 0x80000000) == 0)
  {
LABEL_90:
    v55 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v63[0]);
  v56 = *MEMORY[0x277D85DE8];
}

void sub_23C233404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  TraceFileCollection::Parameters::~Parameters(&a9);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DALTrace::cleanupScratchFolder(uint64_t a1, uint64_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = 0x7FFFFFFFFFFFFFF7;
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

    v8 = operator new(v13);
    *&__dst[8] = v7;
    *&__dst[16] = v13 | 0x8000000000000000;
    *__dst = v8;
LABEL_11:
    memmove(v8, v5, v7);
    v8[v7] = 0;
    v9 = __dst[23];
    if ((__dst[23] & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  __dst[23] = v6;
  v8 = __dst;
  if (v6)
  {
    goto LABEL_11;
  }

  __dst[0] = 0;
  v9 = __dst[23];
  if ((__dst[23] & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (v9 - 7 < 0x10)
    {
      v10 = v9 + 16;
      v11 = __dst;
      v12 = 22;
LABEL_15:
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
        v4 = v15;
      }

      else
      {
        v4 = 23;
      }

      v16 = v12 == 22;
      goto LABEL_24;
    }

    v20 = __dst;
LABEL_31:
    *&v20[v9] = *"BBTrace.scratch/";
    v21 = v9 + 16;
    if ((__dst[23] & 0x80000000) != 0)
    {
      *&__dst[8] = v9 + 16;
    }

    else
    {
      __dst[23] = v21 & 0x7F;
    }

    v19 = &v20[v21];
    goto LABEL_35;
  }

LABEL_12:
  v9 = *&__dst[8];
  v12 = (*&__dst[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 - *&__dst[8] >= 0x10)
  {
    v20 = *__dst;
    goto LABEL_31;
  }

  v10 = *&__dst[8] + 16;
  if (0x7FFFFFFFFFFFFFF7 - (*&__dst[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&__dst[8] + 16 - v12)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = *__dst;
  if (v12 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v16 = 0;
LABEL_24:
  v17 = operator new(v4);
  v18 = v17;
  if (v9)
  {
    memmove(v17, v11, v9);
  }

  *&v18[v9] = *"BBTrace.scratch/";
  if (!v16)
  {
    operator delete(v11);
  }

  *&__dst[8] = v10;
  *&__dst[16] = v4 | 0x8000000000000000;
  *__dst = v18;
  v19 = &v18[v10];
LABEL_35:
  *v19 = 0;
  *__p = *__dst;
  v29 = *&__dst[16];
  v22 = *(a1 + 128);
  if (v22)
  {
    abm::trace::TraceReader::clearFiles(v22);
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a2;
      }

      v25 = __p;
      if (v29 < 0)
      {
        v25 = __p[0];
      }

      *__dst = 136315394;
      *&__dst[4] = v24;
      *&__dst[12] = 2080;
      *&__dst[14] = v25;
      _os_log_impl(&dword_23C1C4000, v23, OS_LOG_TYPE_DEFAULT, "#I %s, %s is removed", __dst, 0x16u);
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_46;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v26 = *(a1 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *__dst = 0;
      _os_log_error_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_ERROR, "TraceReader is not ready", __dst, 2u);
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  if (SHIBYTE(v29) < 0)
  {
LABEL_46:
    operator delete(__p[0]);
  }

LABEL_47:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_23C2337D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DALTrace::startTraceReader_sync(DALTrace *this)
{
  if (*(this + 104))
  {
    if (*(this + 16))
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

      *&buf[4] = -1431655936;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      *buf = 20;
      v23 = 0xAAAAAAAAAAAAAA00;
      *&buf[8] = 10;
      v6 = capabilities::radio::dal(v4);
      shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v6);
      capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
      *&v22 = *(this + 18);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN8DALTrace21startTraceReader_syncEv_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_25;
      aBlock[4] = this;
      aBlock[5] = v3;
      v20 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = *(this + 16);
      v18 = _Block_copy(aBlock);
      v9 = abm::trace::TraceReader::start();
      if (v18)
      {
        _Block_release(v18);
      }

      if (!v9)
      {
        goto LABEL_15;
      }

      if (*(this + 22))
      {
        goto LABEL_15;
      }

      v10 = *(this + 11);
      if (!v10)
      {
        goto LABEL_15;
      }

      dispatch_retain(*(this + 11));
      dispatch_group_enter(v10);
      v11 = *(this + 22);
      *(this + 22) = v10;
      if (v11)
      {
        dispatch_group_leave(v11);
        dispatch_release(v11);
      }

      v12 = *(this + 5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *v17 = 0;
        _os_log_debug_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEBUG, "#D Holding task group", v17, 2u);
        v13 = v20;
        if (!v20)
        {
          goto LABEL_17;
        }
      }

      else
      {
LABEL_15:
        v13 = v20;
        if (!v20)
        {
LABEL_17:
          std::__shared_weak_count::__release_weak(v5);
          return v9;
        }
      }

      std::__shared_weak_count::__release_weak(v13);
      goto LABEL_17;
    }

    v15 = *(this + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Failed to start Trace reader; object does not exist", buf, 2u);
    }

    return 0;
  }

  else
  {
    v14 = *(this + 5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Trace is not enabled; skip starting trace reader", buf, 2u);
    }

    return 1;
  }
}

void sub_23C233AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *aBlock, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
    std::__shared_weak_count::__release_weak(v18);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

BOOL DALTrace::startTraceWithUSBBridgeInterface(DALTrace *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I starting USB bridge interface", v25, 2u);
  }

  v3 = *(this + 24);
  if (v3 != 2 && v3 != 7)
  {
    v11 = *(this + 5);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v13 = trace::toString(v3);
      *v25 = 136315138;
      *&v25[4] = v13;
      v14 = "Invalid trace mode (%s) to start trace via USB interface";
LABEL_28:
      v21 = v11;
      v22 = 12;
LABEL_36:
      _os_log_error_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_ERROR, v14, v25, v22);
      result = 0;
      v24 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_33;
  }

  v5 = *(this + 38);
  if (!v5)
  {
    SoftwareBypassShim::create(v25);
    v6 = *v25;
    *v25 = 0uLL;
    v7 = *(this + 39);
    *(this + 19) = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = *&v25[8];
      if (!*&v25[8])
      {
LABEL_13:
        v5 = *(this + 38);
        if (v5)
        {
          goto LABEL_14;
        }

LABEL_32:
        v15 = *(this + 5);
        result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_33;
        }

        *v25 = 0;
        v14 = "Failed to create bypass control object";
        goto LABEL_35;
      }
    }

    else
    {
      v8 = *&v25[8];
      if (!*&v25[8])
      {
        goto LABEL_13;
      }
    }

    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_13;
    }

    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v5 = *(this + 38);
    if (!v5)
    {
      goto LABEL_32;
    }
  }

LABEL_14:
  if (!*(v5 + 3))
  {
    v15 = *(this + 5);
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_33;
    }

    *v25 = 0;
    v14 = "Expected to use software bypass, but it is not supported";
LABEL_35:
    v21 = v15;
    v22 = 2;
    goto LABEL_36;
  }

  v9 = *(this + 24);
  if (v9 == 2)
  {
    v10 = 73;
  }

  else
  {
    if (v9 != 7)
    {
      v11 = *(this + 5);
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v20 = trace::toString(v9);
        *v25 = 136315138;
        *&v25[4] = v20;
        v14 = "Unexpected trace mode: %s";
        goto LABEL_28;
      }

LABEL_33:
      v23 = *MEMORY[0x277D85DE8];
      return result;
    }

    v10 = 8;
  }

  v16 = SoftwareBypassShim::bypassCtl(v5, v10);
  v17 = *(this + 5);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = SoftwareBypassShim::bypassInterfaceMaskAsString(*(this + 38), v10);
    *v25 = 136315394;
    *&v25[4] = v18;
    *&v25[12] = 1024;
    *&v25[14] = v16;
    _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I bypassCtl( %s): success: %d", v25, 0x12u);
  }

  result = v16;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TraceFileCollection::Parameters::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 == a2)
  {
    goto LABEL_35;
  }

  v5 = *(a2 + 31);
  if (*(a1 + 31) < 0)
  {
    if (v5 >= 0)
    {
      v7 = (a2 + 8);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v5 >= 0)
    {
      v8 = *(a2 + 31);
    }

    else
    {
      v8 = *(a2 + 16);
    }

    std::string::__assign_no_alias<false>(v4, v7, v8);
  }

  else if ((*(a2 + 31) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v6;
  }

  std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>((a1 + 32), *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
  v9 = *(a2 + 79);
  if (*(a1 + 79) < 0)
  {
    if (v9 >= 0)
    {
      v13 = (a2 + 56);
    }

    else
    {
      v13 = *(a2 + 56);
    }

    if (v9 >= 0)
    {
      v14 = *(a2 + 79);
    }

    else
    {
      v14 = *(a2 + 64);
    }

    std::string::__assign_no_alias<false>((a1 + 56), v13, v14);
    v11 = (a2 + 80);
    v12 = *(a2 + 103);
    if (*(a1 + 103) < 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if ((*(a2 + 79) & 0x80) == 0)
  {
    v10 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v10;
    v11 = (a2 + 80);
    v12 = *(a2 + 103);
    if (*(a1 + 103) < 0)
    {
      goto LABEL_27;
    }

LABEL_24:
    if ((v12 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 80), *(a2 + 80), *(a2 + 88));
    }

    else
    {
      v15 = *v11;
      *(a1 + 96) = v11[2];
      *(a1 + 80) = v15;
    }

    goto LABEL_35;
  }

  std::string::__assign_no_alias<true>((a1 + 56), *(a2 + 56), *(a2 + 64));
  v11 = (a2 + 80);
  v12 = *(a2 + 103);
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  if ((v12 & 0x80u) == 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(a2 + 80);
  }

  if ((v12 & 0x80u) == 0)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(a2 + 88);
  }

  std::string::__assign_no_alias<false>((a1 + 80), v16, v17);
LABEL_35:
  v18 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v18;
  return a1;
}

void ___ZN8DALTrace21startTraceReader_syncEv_block_invoke(void *a1, _DWORD *a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    return;
  }

  if (a1[5])
  {
    if (*a2 == 3)
    {
      v10 = *(v5 + 40);
      v8 = v6;
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      v6 = v8;
      if (v11)
      {
        *v13 = 0;
        _os_log_debug_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEBUG, "#D No Logging Traffic detected (Stalled?)", v13, 2u);
LABEL_12:
        v6 = v8;
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_13;
        }

        return;
      }
    }

    else if (*a2 == 2)
    {
      v7 = *(v5 + 40);
      v8 = v6;
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      v6 = v8;
      if (v9)
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "TRACE transport error, triggering modem reset for Trace transport error", buf, 2u);
        goto LABEL_12;
      }
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_13:
    v12 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v12);
  }
}

void DALTrace::start_sync(DALTrace *this, group *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = *(this + 23);
  if (v4)
  {
    if (!(*(*v4 + 128))(v4))
    {
LABEL_86:
      v22 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_9:
    if ((*(this + 168) & 1) == 0)
    {
      v7 = *(this + 5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I Trace not yet prepared; begin the preparation process before starting the trace", buf, 2u);
      }

      DALTrace::prepare_sync(this);
    }

    if (!*(this + 19))
    {
      goto LABEL_15;
    }

    v54 = 0;
    LOBYTE(v53) = 0;
    Timestamp::Timestamp(v51);
    v50 = 0;
    LOWORD(v49) = 0;
    LOBYTE(v48) = 0;
    abm::trace::TraceInfo::push();
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v51, v52);
    if (v54 < 0)
    {
      operator delete(v53);
      v8 = *(this + 23);
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_15:
      v8 = *(this + 23);
      if (!v8)
      {
LABEL_17:
        v9 = *(this + 2);
        if (!v9 || (v10 = *(this + 1), (v11 = std::__shared_weak_count::lock(v9)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v12 = v11;
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v12);
        }

        gr_name = a2->gr_name;
        if (gr_name)
        {
          dispatch_retain(gr_name);
          dispatch_group_enter(gr_name);
        }

        memset(buf, 170, 16);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZN8DALTrace10start_syncEN8dispatch5groupE_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_14_2;
        aBlock[4] = this;
        group = gr_name;
        if (gr_name)
        {
          dispatch_retain(gr_name);
          dispatch_group_enter(group);
        }

        v46 = v10;
        v47 = v12;
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v14 = _Block_copy(aBlock);
        v15 = *(this + 3);
        if (v15)
        {
          dispatch_retain(*(this + 3));
        }

        *buf = v14;
        *&buf[8] = v15;
        v42 = 0xAAAAAAAAAAAAAAAALL;
        v43 = 0xAAAAAAAAAAAAAAAALL;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 1174405120;
        v36[2] = ___ZN8DALTrace10start_syncEN8dispatch5groupE_block_invoke_15;
        v36[3] = &__block_descriptor_tmp_16_2;
        v36[4] = this;
        v37 = gr_name;
        if (gr_name)
        {
          dispatch_retain(gr_name);
          dispatch_group_enter(v37);
        }

        v38 = v10;
        v39 = v12;
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (v14)
        {
          v40 = _Block_copy(v14);
          v41 = v15;
          if (!v15)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v40 = 0;
          v41 = v15;
          if (!v15)
          {
LABEL_32:
            v16 = _Block_copy(v36);
            v17 = *(this + 3);
            if (v17)
            {
              dispatch_retain(*(this + 3));
            }

            v42 = v16;
            v43 = v17;
            v34 = 0xAAAAAAAAAAAAAAAALL;
            v35 = 0xAAAAAAAAAAAAAAAALL;
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 1174405120;
            v28[2] = ___ZN8DALTrace10start_syncEN8dispatch5groupE_block_invoke_17;
            v28[3] = &__block_descriptor_tmp_20_2;
            v28[4] = this;
            v29 = gr_name;
            if (gr_name)
            {
              dispatch_retain(gr_name);
              dispatch_group_enter(v29);
            }

            v30 = v10;
            v31 = v12;
            atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            if (v16)
            {
              v32 = _Block_copy(v16);
              object = v17;
              if (!v17)
              {
                goto LABEL_39;
              }
            }

            else
            {
              v32 = 0;
              object = v17;
              if (!v17)
              {
LABEL_39:
                v25 = v14;
                v18 = _Block_copy(v28);
                v19 = *(this + 3);
                if (v19)
                {
                  dispatch_retain(*(this + 3));
                }

                v34 = v18;
                v35 = v19;
                v20 = *(this + 50);
                if (v18)
                {
                  v21 = _Block_copy(v18);
                  v26 = v21;
                  v27 = v19;
                  if (!v19)
                  {
LABEL_44:
                    DALTrace::setLogMode_sync(this, v20, 1, &v26, 18);
                    if (v19)
                    {
                      dispatch_release(v19);
                    }

                    if (v21)
                    {
                      _Block_release(v21);
                    }

                    if (v19)
                    {
                      dispatch_release(v19);
                    }

                    if (v18)
                    {
                      _Block_release(v18);
                    }

                    if (object)
                    {
                      dispatch_release(object);
                    }

                    if (v32)
                    {
                      _Block_release(v32);
                    }

                    if (v31)
                    {
                      std::__shared_weak_count::__release_weak(v31);
                    }

                    if (v29)
                    {
                      dispatch_group_leave(v29);
                      if (v29)
                      {
                        dispatch_release(v29);
                      }
                    }

                    if (v17)
                    {
                      dispatch_release(v17);
                    }

                    if (v16)
                    {
                      _Block_release(v16);
                    }

                    if (v41)
                    {
                      dispatch_release(v41);
                    }

                    if (v40)
                    {
                      _Block_release(v40);
                    }

                    if (v39)
                    {
                      std::__shared_weak_count::__release_weak(v39);
                    }

                    if (v37)
                    {
                      dispatch_group_leave(v37);
                      if (v37)
                      {
                        dispatch_release(v37);
                      }
                    }

                    if (v15)
                    {
                      dispatch_release(v15);
                    }

                    if (v25)
                    {
                      _Block_release(v25);
                    }

                    if (v47)
                    {
                      std::__shared_weak_count::__release_weak(v47);
                    }

                    if (group)
                    {
                      dispatch_group_leave(group);
                      if (group)
                      {
                        dispatch_release(group);
                      }
                    }

                    if (gr_name)
                    {
                      dispatch_group_leave(gr_name);
                      dispatch_release(gr_name);
                    }

                    std::__shared_weak_count::__release_weak(v12);
                    goto LABEL_86;
                  }
                }

                else
                {
                  v21 = 0;
                  v26 = 0;
                  v27 = v19;
                  if (!v19)
                  {
                    goto LABEL_44;
                  }
                }

                dispatch_retain(v19);
                goto LABEL_44;
              }
            }

            dispatch_retain(v17);
            goto LABEL_39;
          }
        }

        dispatch_retain(v15);
        goto LABEL_32;
      }
    }

    (*(*v8 + 112))(v8);
    goto LABEL_17;
  }

  DALTrace::createTraceCommandDriver(this);
  if (*(this + 23))
  {
    v6 = a2->gr_name;
    if (a2->gr_name)
    {
      dispatch_retain(a2->gr_name);
    }

    DALTrace::setLPMHandlers_sync(this, v5);
    if (v6)
    {
      dispatch_release(v6);
    }

    goto LABEL_9;
  }

  v23 = GetOsLogContext()[1];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_23C1C4000, v23, OS_LOG_TYPE_FAULT, "Trace command driver must be present", buf, 2u);
  }

  v24 = GetOsLogContext()[1];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    *&buf[4] = "ABM ASSERT";
    *&buf[12] = 2080;
    *&buf[14] = "fTraceCommandDriver";
    v56 = 2080;
    v57 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/ABMHelper/Server/Tasks/Wireless/Trace/DALTrace/DALTrace.cpp";
    v58 = 1024;
    v59 = 643;
    _os_log_fault_impl(&dword_23C1C4000, v24, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
  }

  __break(1u);
}

void sub_23C2347C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_group_t group, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, dispatch_group_t object, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, dispatch_group_t a42, uint64_t a43, std::__shared_weak_count *a44)
{
  if (v44)
  {
    dispatch_release(v44);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DALTrace::createTraceCommandDriver(DALTrace *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Creating trace command driver", buf, 2u);
  }

  v3 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v4 = off_280C059B8;
  if (!off_280C059B8)
  {
    CommandDriverFactory::create_default_global(buf, v3);
    v5 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v6 = *(&off_280C059B8 + 1);
    off_280C059B8 = v5;
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

    v4 = off_280C059B8;
  }

  v14 = *(&off_280C059B8 + 1);
  if (*(&off_280C059B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C059B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v4 + 128))(&v15, v4);
  v8 = v15;
  v15 = 0uLL;
  v9 = *(this + 24);
  *(this + 184) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(&v15 + 1);
  if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (!*(this + 23))
  {
    v12 = GetOsLogContext()[1];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_FAULT, "Trace command driver must be present!", buf, 2u);
    }

    v13 = GetOsLogContext()[1];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      *&buf[4] = "ABM ASSERT";
      *&buf[12] = 2080;
      *&buf[14] = "fTraceCommandDriver";
      v17 = 2080;
      v18 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/ABMHelper/Server/Tasks/Wireless/Trace/DALTrace/DALTrace.cpp";
      v19 = 1024;
      v20 = 829;
      _os_log_fault_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
    }

    __break(1u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void DALTrace::setLPMHandlers_sync(DALTrace *this, group *a2)
{
  v3 = *(this + 2);
  if (!v3 || (v4 = std::__shared_weak_count::lock(v3)) == 0)
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

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN8DALTrace19setLPMHandlers_syncEN8dispatch5groupE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_61;
  aBlock[4] = this;
  v6 = _Block_copy(aBlock);
  v7 = *(this + 3);
  if (v7)
  {
    dispatch_retain(*(this + 3));
  }

  v20 = v6;
  v21 = v7;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v16[2] = ___ZN8DALTrace19setLPMHandlers_syncEN8dispatch5groupE_block_invoke_62;
  v16[3] = &__block_descriptor_tmp_63;
  v16[4] = this;
  v8 = _Block_copy(v16);
  v9 = *(this + 3);
  if (v9)
  {
    dispatch_retain(*(this + 3));
  }

  v17 = v8;
  v18 = v9;
  v10 = *(this + 23);
  if (v6)
  {
    v14 = _Block_copy(v6);
    object = v7;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = 0;
  object = v7;
  if (v7)
  {
LABEL_11:
    dispatch_retain(v7);
  }

LABEL_12:
  (*(*v10 + 80))(v10, &v14);
  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  v11 = *(this + 23);
  if (v8)
  {
    v12 = _Block_copy(v8);
    v13 = v9;
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v12 = 0;
  v13 = v9;
  if (v9)
  {
LABEL_18:
    dispatch_retain(v9);
  }

LABEL_19:
  (*(*v11 + 88))(v11, &v12);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_23C234FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  dispatch::callback<void({block_pointer})(void)>::~callback(&a18);
  dispatch::callback<void({block_pointer})(dispatch::group_session)>::~callback(v19 - 96);
  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

void ___ZN8DALTrace10start_syncEN8dispatch5groupE_block_invoke(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1[7];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[6])
      {
        v7 = *a2;
        if (*a2)
        {
          v8 = *(v5 + 40);
          v9 = v6;
          v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
          v6 = v9;
          if (v10)
          {
            v13 = 138412290;
            v14 = v7;
            _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to enable timer (%@)", &v13, 0xCu);
            v6 = v9;
            if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_8;
            }

            goto LABEL_7;
          }
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v11 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
}

void ___ZN8DALTrace10start_syncEN8dispatch5groupE_block_invoke_15(void *a1, uint64_t *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1[7];
  if (!v3)
  {
    goto LABEL_26;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v32 = v6;
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = v6;
  if (a1[6])
  {
    v8 = *a2;
    if (*a2 && (v9 = *(v5 + 40), os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
    {
      v18 = (v5 + 208);
      if (*(v5 + 231) < 0)
      {
        v18 = *v18;
      }

      *buf = 136315394;
      v34 = v18;
      v35 = 2112;
      v36 = v8;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to set log level to %s (%@)", buf, 0x16u);
      if (!*(v5 + 152))
      {
LABEL_9:
        if (*(v5 + 324) == 1)
        {
          v10 = *(v5 + 328);
          v11 = a1[8];
          if (v11)
          {
            v12 = _Block_copy(v11);
            v13 = a1[9];
            v21 = v12;
            v22 = v13;
            if (!v13)
            {
LABEL_13:
              DALTrace::enableTimer_sync(v5, v10, &v21);
              if (v13)
              {
                dispatch_release(v13);
              }

              if (v12)
              {
                _Block_release(v12);
              }

              goto LABEL_24;
            }
          }

          else
          {
            v12 = 0;
            v13 = a1[9];
            v21 = 0;
            v22 = v13;
            if (!v13)
            {
              goto LABEL_13;
            }
          }

          dispatch_retain(v13);
          goto LABEL_13;
        }

        v14 = a1[8];
        if (v14)
        {
          v15 = _Block_copy(v14);
          v16 = a1[9];
          v19 = v15;
          v20 = v16;
          if (!v16)
          {
LABEL_20:
            DALTrace::disableTimer_sync(v5, &v19);
            if (v16)
            {
              dispatch_release(v16);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            goto LABEL_24;
          }
        }

        else
        {
          v15 = 0;
          v16 = a1[9];
          v19 = 0;
          v20 = v16;
          if (!v16)
          {
            goto LABEL_20;
          }
        }

        dispatch_retain(v16);
        goto LABEL_20;
      }
    }

    else if (!*(v5 + 152))
    {
      goto LABEL_9;
    }

    v30 = 0;
    LOBYTE(v29) = 0;
    Timestamp::Timestamp(v27);
    v26 = 0;
    LOBYTE(v25) = 0;
    v24 = 0;
    LOBYTE(__p) = 0;
    abm::trace::TraceInfo::push();
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v27, v28);
    if (v30 < 0)
    {
      operator delete(v29);
    }

    goto LABEL_9;
  }

LABEL_24:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_26:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_23C2353D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DALTrace::enableTimer_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
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
  DALTrace::setFlushTimer_sync(a1, a2, &v8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }
}

void DALTrace::disableTimer_sync(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = _Block_copy(*a2);
    v5 = *(a2 + 8);
    v6 = v4;
    v7 = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0;
  v5 = *(a2 + 8);
  v6 = 0;
  v7 = v5;
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  DALTrace::setFlushTimer_sync(a1, 0xFFFFFFFFLL, &v6);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN8DALTrace10start_syncEN8dispatch5groupE_block_invoke_17(void *a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1[7];
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v19 = v6;
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  if (a1[6])
  {
    v8 = *a2;
    if (*a2 && (v9 = *(v5 + 40), os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
    {
      v14 = *(v5 + 200);
      if (v14 > 2)
      {
        v15 = "Unknown";
      }

      else
      {
        v15 = off_278BB8C68[v14];
      }

      *buf = 136315394;
      v21 = v15;
      v22 = 2112;
      v23 = v8;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to set log mode to %s (%@)", buf, 0x16u);
      v10 = a1[8];
      if (v10)
      {
LABEL_7:
        v11 = _Block_copy(v10);
        v12 = a1[9];
        v16 = v11;
        v17 = v12;
        if (!v12)
        {
LABEL_9:
          DALTrace::setLogLevel_sync(v5, (v5 + 208), &v16);
          if (v12)
          {
            dispatch_release(v12);
          }

          if (v11)
          {
            _Block_release(v11);
          }

          goto LABEL_13;
        }

LABEL_8:
        dispatch_retain(v12);
        goto LABEL_9;
      }
    }

    else
    {
      v10 = a1[8];
      if (v10)
      {
        goto LABEL_7;
      }
    }

    v11 = 0;
    v12 = a1[9];
    v16 = 0;
    v17 = v12;
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_13:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_23C235784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DALTrace::setLogLevel_sync(uint64_t a1, const void **a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v26 = v6;
  v27 = v6;
  *&block[0].__locale_ = v6;
  v25 = v6;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](block, ".*\\.bin", 0);
  v7 = std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a2, block, 0);
  v8 = v27;
  if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    std::locale::~locale(block);
    if (v7)
    {
LABEL_4:
      if (*a3)
      {
        v9 = _Block_copy(*a3);
        v10 = *(a3 + 8);
        v22 = v9;
        v23 = v10;
        if (!v10)
        {
LABEL_7:
          DALTrace::sendCustomizedMask_sync(a1, a2, &v22);
          if (v10)
          {
            dispatch_release(v10);
          }

          if (v9)
          {
            _Block_release(v9);
          }

          return;
        }
      }

      else
      {
        v9 = 0;
        v10 = *(a3 + 8);
        v22 = 0;
        v23 = v10;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      dispatch_retain(v10);
      goto LABEL_7;
    }
  }

  else
  {
    std::locale::~locale(block);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v11 = trace::toLogLevel(a2);
  v12 = *(a1 + 184);
  if (v12 && (*(*v12 + 128))(v12))
  {
    v13 = *(a1 + 184);
    v14 = *a3;
    if (*a3)
    {
      v14 = _Block_copy(v14);
    }

    v15 = *(a3 + 8);
    aBlock = v14;
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    (*(*v13 + 160))(v13, v11, &aBlock);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block[0].__locale_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_ERROR, "Trace command driver is not ready", block, 2u);
    }

    __p = operator new(0x28uLL);
    strcpy(__p, "Trace command driver is not ready");
    CreateError();
    operator delete(__p);
    if (*a3 && *(a3 + 8))
    {
      CFRetain(0xAAAAAAAAAAAAAAAALL);
      if (*a3)
      {
        v17 = _Block_copy(*a3);
      }

      else
      {
        v17 = 0;
      }

      v18 = *(a3 + 8);
      block[0].__locale_ = MEMORY[0x277D85DD0];
      block[1].__locale_ = 1174405120;
      *&v25 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
      *(&v25 + 1) = &__block_descriptor_tmp_195;
      if (v17)
      {
        v26[0] = _Block_copy(v17);
        v26[1] = 0xAAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26[0] = 0;
        v26[1] = 0xAAAAAAAAAAAAAAAALL;
      }

      CFRetain(0xAAAAAAAAAAAAAAAALL);
      dispatch_async(v18, block);
      if (v26[1])
      {
        CFRelease(v26[1]);
      }

      if (v26[0])
      {
        _Block_release(v26[0]);
      }

      if (v17)
      {
        _Block_release(v17);
      }

      CFRelease(0xAAAAAAAAAAAAAAAALL);
    }

    CFRelease(0xAAAAAAAAAAAAAAAALL);
  }
}

void sub_23C235B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(va);
  _Unwind_Resume(a1);
}

void sub_23C235B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DALTrace::setLogMode_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 184);
  if (v7 && (*(*v7 + 128))(v7))
  {
    v11 = *(a1 + 184);
    v12 = *a4;
    if (*a4)
    {
      v12 = _Block_copy(v12);
    }

    v13 = *(a4 + 8);
    aBlock = v12;
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    (*(*v11 + 152))(v11, a2, a3, &aBlock, a5);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  else
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block[0]) = 0;
      _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "Trace command driver is not ready", block, 2u);
    }

    __p = operator new(0x28uLL);
    strcpy(__p, "Trace command driver is not ready");
    CreateError();
    operator delete(__p);
    if (*a4 && *(a4 + 8))
    {
      CFRetain(0xAAAAAAAAAAAAAAAALL);
      if (*a4)
      {
        v15 = _Block_copy(*a4);
      }

      else
      {
        v15 = 0;
      }

      v16 = *(a4 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_195;
      if (v15)
      {
        v21 = _Block_copy(v15);
        v22 = 0xAAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = 0;
        v22 = 0xAAAAAAAAAAAAAAAALL;
      }

      CFRetain(0xAAAAAAAAAAAAAAAALL);
      dispatch_async(v16, block);
      if (v22)
      {
        CFRelease(v22);
      }

      if (v21)
      {
        _Block_release(v21);
      }

      if (v15)
      {
        _Block_release(v15);
      }

      CFRelease(0xAAAAAAAAAAAAAAAALL);
    }

    CFRelease(0xAAAAAAAAAAAAAAAALL);
  }
}

void sub_23C235E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(va);
  _Unwind_Resume(a1);
}

void sub_23C235E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DALTrace::closeTransport_sync(DALTrace *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Closing Transport", v4, 2u);
  }

  DALTrace::stopTraceReader_sync(this);
  v3 = *(this + 22);
  if (v3)
  {
    *(this + 22) = 0;
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

void DALTrace::cleanupTransportResources_sync(NSObject **this)
{
  DALTrace::stopTraceReader_sync(this);
  v2 = this[22];
  if (v2)
  {
    this[22] = 0;
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void DALTrace::stopTraceReader_sync(DALTrace *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    abm::trace::TraceReader::wait(v2);
    v3 = abm::trace::TraceReader::stop(*(this + 16));
    v4 = *(this + 5);
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Succeeded stopping reader", v5, 2u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_ERROR, "Failed to stop reader", buf, 2u);
    }
  }
}

void DALTrace::leaveTaskGroup_sync(DALTrace *this)
{
  v1 = *(this + 22);
  if (v1)
  {
    *(this + 22) = 0;
    dispatch_group_leave(v1);

    dispatch_release(v1);
  }
}

void DALTrace::abort_sync(DALTrace *this, group *a2)
{
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Abort received", buf, 2u);
  }

  if (!*(this + 19))
  {
    goto LABEL_5;
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
    v5 = *(this + 23);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    v5 = *(this + 23);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  gr_name = a2->gr_name;
  object = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
  }

  (*(*v5 + 120))(v5, &object);
  if (object)
  {
    dispatch_release(object);
  }

LABEL_10:
  *(this + 168) = 0;
}

void sub_23C236204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace9stop_syncEN8dispatch5groupENS0_8callbackIU13block_pointerFvvEEE_block_invoke(void *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1[8];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[7])
      {
        v8 = *a2;
        v9 = *(v5 + 40);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = 138412290;
            v12 = v8;
            _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "stop_sync: failed to disable the timer (%@)", &v11, 0xCu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I stop_sync: disabled timer successfully", &v11, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ___ZN8DALTrace9stop_syncEN8dispatch5groupENS0_8callbackIU13block_pointerFvvEEE_block_invoke_22(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1[8];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[7])
      {
        v7 = *a2;
        if (*a2)
        {
          v8 = *(v5 + 40);
          v9 = v6;
          v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
          v6 = v9;
          if (v10)
          {
            v13 = 138412290;
            v14 = v7;
            _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "stop_sync: failed to set log to disabled (%@)", &v13, 0xCu);
            v6 = v9;
            if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_8;
            }

            goto LABEL_7;
          }
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v11 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (*a1)
  {
    dispatch_group_leave(*a1);
    if (*a1)
    {
      dispatch_release(*a1);
    }
  }

  return a1;
}

uint64_t DALTrace::isCustomizedMask(uint64_t a1, uint64_t a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[2] = v3;
  v8 = v3;
  v7[0] = v3;
  v7[1] = v3;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v7, ".*\\.bin", 0);
  v4 = std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a2, v7, 0);
  v5 = v8;
  if (v8 && !atomic_fetch_add((v8 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::locale::~locale(v7);
  return v4;
}

void DALTrace::sendCustomizedMask_sync(uint64_t a1, const void **a2, uint64_t a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = v4 + 17;
  if (v4 + 17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    v44 = 47;
    *v43 = *"/usr/lib/bbmasks/";
    v11 = &v44 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v43[1] = (v4 + 17);
    v44 = v9 | 0x8000000000000000;
    v43[0] = v10;
    v10[16] = 47;
    *v10 = *"/usr/lib/bbmasks/";
    v11 = v10 + 17;
  }

  v12 = *a2;
  if (v3 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  memmove(v11, v13, v4);
LABEL_15:
  v11[v4] = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if ((support::fs::loadFile(v43, &v40) & 1) == 0)
  {
    v22 = *(a1 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v30 = v43;
      if (v44 < 0)
      {
        v30 = v43[0];
      }

      LODWORD(block) = 136315138;
      *(&block + 4) = v30;
      _os_log_error_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_ERROR, "Failed to load customized file %s", &block, 0xCu);
    }

    cf = 0xAAAAAAAAAAAAAAAALL;
    v37 = operator new(0x20uLL);
    v38 = xmmword_23C32CA80;
    strcpy(v37, "Failed to load customized file");
    CreateError();
    operator delete(v37);
    if (*a3 && *(a3 + 8))
    {
      CFRetain(cf);
      if (*a3)
      {
        v24 = _Block_copy(*a3);
      }

      else
      {
        v24 = 0;
      }

      v26 = *(a3 + 8);
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 1174405120;
      v46 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
      v47 = &__block_descriptor_tmp_195;
      if (v24)
      {
        v48 = _Block_copy(v24);
        v49 = cf;
      }

      else
      {
        v48 = 0;
        v49 = cf;
      }

      CFRetain(cf);
      dispatch_async(v26, &block);
      if (v49)
      {
        CFRelease(v49);
      }

      if (v48)
      {
        _Block_release(v48);
      }

      if (v24)
      {
        _Block_release(v24);
      }

      CFRelease(cf);
    }

    v27 = cf;
    goto LABEL_68;
  }

  v14 = *(a1 + 184);
  if (!v14 || !(*(*v14 + 128))(v14))
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block) = 0;
      _os_log_error_impl(&dword_23C1C4000, v23, OS_LOG_TYPE_ERROR, "Trace command driver is not ready", &block, 2u);
    }

    cf = 0xAAAAAAAAAAAAAAAALL;
    v31 = operator new(0x28uLL);
    strcpy(v31, "Trace command driver is not ready");
    CreateError();
    operator delete(v31);
    if (*a3 && *(a3 + 8))
    {
      CFRetain(cf);
      if (*a3)
      {
        v25 = _Block_copy(*a3);
      }

      else
      {
        v25 = 0;
      }

      v28 = *(a3 + 8);
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 1174405120;
      v46 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
      v47 = &__block_descriptor_tmp_195;
      if (v25)
      {
        v48 = _Block_copy(v25);
        v49 = cf;
      }

      else
      {
        v48 = 0;
        v49 = cf;
      }

      CFRetain(cf);
      dispatch_async(v28, &block);
      if (v49)
      {
        CFRelease(v49);
      }

      if (v48)
      {
        _Block_release(v48);
      }

      if (v25)
      {
        _Block_release(v25);
      }

      CFRelease(cf);
    }

    v27 = cf;
LABEL_68:
    CFRelease(v27);
    goto LABEL_69;
  }

  v15 = *(a1 + 184);
  v35 = 0;
  v36 = 0;
  __p = 0;
  v16 = v40;
  v17 = v41 - v40;
  if (v41 != v40)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v18 = operator new(v41 - v40);
    v19 = &v18[v17];
    __p = v18;
    v36 = &v18[v17];
    memcpy(v18, v16, v17);
    v35 = v19;
  }

  v20 = *a3;
  if (*a3)
  {
    v20 = _Block_copy(v20);
  }

  v21 = *(a3 + 8);
  aBlock = v20;
  object = v21;
  if (v21)
  {
    dispatch_retain(v21);
  }

  (*(*v15 + 176))(v15, &__p, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

LABEL_69:
  if (v40)
  {
    operator delete(v40);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_23C236C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DALTrace::triggerLogFlush_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Flushing in progress...", buf, 2u);
  }

  v7 = *(a1 + 184);
  if (v7 && (*(*v7 + 128))(v7))
  {
    v8 = *(a1 + 184);
    v9 = *a2;
    if (*a2)
    {
      v9 = _Block_copy(v9);
    }

    v10 = *(a2 + 8);
    aBlock = v9;
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    (*(*v8 + 168))(v8, &aBlock, a3);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Trace command driver is not ready", buf, 2u);
    }

    __p = operator new(0x28uLL);
    strcpy(__p, "Trace command driver is not ready");
    CreateError();
    operator delete(__p);
    if (*a2 && *(a2 + 8))
    {
      CFRetain(0xAAAAAAAAAAAAAAAALL);
      if (*a2)
      {
        v12 = _Block_copy(*a2);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 8);
      *buf = MEMORY[0x277D85DD0];
      v18 = 1174405120;
      v19 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
      v20 = &__block_descriptor_tmp_195;
      if (v12)
      {
        v21 = _Block_copy(v12);
        v22 = 0xAAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = 0;
        v22 = 0xAAAAAAAAAAAAAAAALL;
      }

      CFRetain(0xAAAAAAAAAAAAAAAALL);
      dispatch_async(v13, buf);
      if (v22)
      {
        CFRelease(v22);
      }

      if (v21)
      {
        _Block_release(v21);
      }

      if (v12)
      {
        _Block_release(v12);
      }

      CFRelease(0xAAAAAAAAAAAAAAAALL);
    }

    CFRelease(0xAAAAAAAAAAAAAAAALL);
  }
}

void sub_23C236FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(va);
  _Unwind_Resume(a1);
}

void sub_23C236FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DALTrace::setPropEnabled_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (prop::bbtrace::set(a3, a4))
  {
    memset(&v30.gr_passwd + 4, 0, 20);
    v31 = 0;
    if (prop::bbtrace::get(a3, &v30.gr_gid))
    {
      v7 = util::convert<int>(&v30.gr_gid, &v30.gr_passwd + 1, 0);
      if (SHIBYTE(v31) < 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = 0;
      if (SHIBYTE(v31) < 0)
      {
LABEL_4:
        operator delete(*&v30.gr_gid);
        if ((v7 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    if ((v7 & 1) == 0)
    {
LABEL_5:
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v30.gr_gid) = 0;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to get enabled property!", &v30.gr_gid, 2u);
      }

      goto LABEL_10;
    }

LABEL_13:
    gr_passwd_high = HIDWORD(v30.gr_passwd);
    v13 = *(a1 + 104);
    v14 = *(a1 + 40);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (gr_passwd_high == v13)
    {
      if (v15)
      {
        v16 = "disabled";
        if (v13)
        {
          v16 = "enabled";
        }

        v30.gr_gid = 136315138;
        *(&v30.gr_gid + 1) = v16;
        _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I It is already %s", &v30.gr_gid, 0xCu);
      }

      goto LABEL_10;
    }

    if (v15)
    {
      v30.gr_gid = 67109376;
      *(&v30.gr_gid + 1) = v13;
      LOWORD(v30.gr_mem) = 1024;
      *(&v30.gr_mem + 2) = gr_passwd_high;
      _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Setting enable from %d to %d", &v30.gr_gid, 0xEu);
      gr_passwd_high = HIDWORD(v30.gr_passwd);
    }

    *(a1 + 104) = gr_passwd_high != 0;
    v17 = *(a1 + 16);
    if (!v17 || (v18 = std::__shared_weak_count::lock(v17)) == 0)
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v19 = v18;
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v19);
    }

    v20 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
      dispatch_group_enter(v20);
    }

    if (*(a1 + 104) == 1)
    {
      v21 = *a2;
      v30.gr_name = v21;
      if (v21)
      {
        dispatch_retain(v21);
      }

      DALTrace::start_sync(a1, &v30);
      if (v21)
      {
        dispatch_release(v21);
      }

LABEL_48:
      if (v20)
      {
        dispatch_group_leave(v20);
        dispatch_release(v20);
      }

      std::__shared_weak_count::__release_weak(v19);
      goto LABEL_10;
    }

    *&v30.gr_gid = 0xAAAAAAAAAAAAAAAALL;
    v30.gr_mem = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN8DALTrace19setPropEnabled_syncEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke;
    aBlock[3] = &__block_descriptor_tmp_30;
    aBlock[4] = a1;
    v22 = _Block_copy(aBlock);
    v23 = *(a1 + 24);
    if (v23)
    {
      dispatch_retain(*(a1 + 24));
    }

    *&v30.gr_gid = v22;
    v30.gr_mem = v23;
    v24 = *a2;
    v28 = v24;
    if (v24)
    {
      dispatch_retain(v24);
    }

    if (v22)
    {
      v25 = _Block_copy(v22);
      v26 = v25;
      v27 = v23;
      if (!v23)
      {
LABEL_38:
        DALTrace::stop_sync(a1, &v28, &v26);
        if (v23)
        {
          dispatch_release(v23);
        }

        if (v25)
        {
          _Block_release(v25);
        }

        if (v24)
        {
          dispatch_release(v24);
        }

        if (v23)
        {
          dispatch_release(v23);
        }

        if (v22)
        {
          _Block_release(v22);
        }

        goto LABEL_48;
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v27 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    dispatch_retain(v23);
    goto LABEL_38;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v30.gr_gid) = 0;
    _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to set enabled property!", &v30.gr_gid, 2u);
  }

  v7 = 0;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23C2373F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace19setPropEnabled_syncEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = (v1 + 128);
  v2 = *(v1 + 128);
  if (v2)
  {
    abm::trace::TraceReader::clearFiles(v2);
    v4 = *(v1 + 136);
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    if (!v4)
    {
      *v3 = 0;
      *(v1 + 136) = 0;
      return;
    }

    if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = *(v1 + 136);
      *v3 = 0;
      *(v1 + 136) = 0;
      if (!v5)
      {
        return;
      }
    }

    else
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = *(v1 + 136);
      *v3 = 0;
      *(v1 + 136) = 0;
      if (!v5)
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
}

uint64_t DALTrace::setPropHistory_sync(uint64_t a1, dispatch_object_t *a2, char *a3, const std::string *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  v27 = 0;
  util::convert<int>(a4, &v27, 0);
  v8 = v27;
  if (v27)
  {
    v9 = *(a1 + 112) >> 20;
    if (v27 > 0x10000 || v9 > v27)
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v8;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = v9;
        v12 = "Invalid input history size - %d MB (for trace file size - %d MB)";
        v13 = v11;
        v14 = 14;
LABEL_32:
        _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, v12, &buf, v14);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  if (v27 == *(a1 + 108))
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v8;
      _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, "#I History size is already %d MB", &buf, 8u);
    }

    v16 = 1;
    goto LABEL_22;
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v12 = "Failed to set history property!";
      v13 = v19;
      v14 = 2;
      goto LABEL_32;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  v26 = 0;
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(a3, &buf))
  {
    v16 = util::convert<int>(&buf, &v26, 0);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_17:
      operator delete(buf.__r_.__value_.__l.__data_);
      v17 = *(a1 + 40);
      v18 = v17;
      if ((v16 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  v17 = *(a1 + 40);
  v18 = v17;
  if ((v16 & 1) == 0)
  {
LABEL_18:
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_ERROR, "Failed to get history property!", &buf, 2u);
    }

    goto LABEL_22;
  }

LABEL_27:
  v22 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  v23 = v26;
  if (v22)
  {
    v24 = *(a1 + 108);
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v24;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v26;
    _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting history from %d MB to %d MB", &buf, 0xEu);
    v23 = v26;
  }

  *(a1 + 108) = v23;
  v25 = *(a1 + 128);
  if (v25)
  {
    abm::trace::TraceReader::updateHistorySize(v25);
  }

LABEL_22:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_23C237890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

BOOL DALTrace::isValidTraceHistorySizeInMB(DALTrace *this, int a2)
{
  if (!a2)
  {
    return 1;
  }

  return a2 <= 0x10000 && a2 >= *(this + 28) >> 20;
}

uint64_t DALTrace::dumpState_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v140 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v139[7] = v6;
  v139[8] = v6;
  v139[5] = v6;
  v139[6] = v6;
  v139[3] = v6;
  v139[4] = v6;
  v139[1] = v6;
  v139[2] = v6;
  v138 = v6;
  v139[0] = v6;
  *v136 = v6;
  v137 = v6;
  v134 = v6;
  v135 = v6;
  v132 = v6;
  v133 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v132);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v132, "\n----- BB Trace Dump State -----\n", 33);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v132, "Trace Enabled         : ", 24);
  *(v7 + *(*v7 - 24) + 8) |= 1u;
  v8 = *(a1 + 104);
  v9 = MEMORY[0x23EECDF10]();
  v141.__r_.__value_.__s.__data_[0] = 10;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v141, 1);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Mode                  : ", 24);
  v12 = *(a1 + 96);
  if (v12 > 8)
  {
    v13 = "Unknown";
  }

  else
  {
    v13 = off_278BB8C20[v12];
  }

  v14 = strlen(v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v141, 1);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Reset Mode On AP Boot : ", 24);
  v18 = *(a1 + 100);
  if (v18 == 1)
  {
    v19 = 9;
    v131 = 9;
    qmemcpy(v130, "Last_Used", 9);
  }

  else if (v18)
  {
    v19 = 11;
    v131 = 11;
    qmemcpy(v130, "UnSpecified", 11);
  }

  else
  {
    v19 = 7;
    v131 = 7;
    qmemcpy(v130, "Default", 7);
  }

  *(v130 + v19) = 0;
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v130, v19);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v141, 1);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Trace Ownership       : ", 24);
  std::to_string(&v141, *(a1 + 120));
  v129 = v141;
  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v129;
  }

  else
  {
    v23 = v129.__r_.__value_.__r.__words[0];
  }

  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v129.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v129.__r_.__value_.__l.__size_;
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, size);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, &v141, 1);
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Baseband's Log Mode   : ", 24);
  v28 = *(a1 + 200);
  if (v28 > 2)
  {
    v29 = "Unknown";
  }

  else
  {
    v29 = off_278BB8C68[v28];
  }

  v30 = strlen(v29);
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, &v141, 1);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Baseband's Log Level  : ", 24);
  v34 = *(a1 + 231);
  if (v34 >= 0)
  {
    v35 = a1 + 208;
  }

  else
  {
    v35 = *(a1 + 208);
  }

  if (v34 >= 0)
  {
    v36 = *(a1 + 231);
  }

  else
  {
    v36 = *(a1 + 216);
  }

  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, &v141, 1);
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Sleep Mode            : ", 24);
  v40 = *(a1 + 232);
  if (v40 > 2)
  {
    v41 = "Unknown";
  }

  else
  {
    v41 = off_278BB8C68[v40];
  }

  v42 = strlen(v41);
  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v41, v42);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, &v141, 1);
  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Sleep Level           : ", 24);
  v46 = *(a1 + 263);
  if (v46 >= 0)
  {
    v47 = a1 + 240;
  }

  else
  {
    v47 = *(a1 + 240);
  }

  if (v46 >= 0)
  {
    v48 = *(a1 + 263);
  }

  else
  {
    v48 = *(a1 + 248);
  }

  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v47, v48);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, &v141, 1);
  v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Trace Ownership       : ", 24);
  std::to_string(&v141, *(a1 + 120));
  v128 = v141;
  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v128;
  }

  else
  {
    v52 = v128.__r_.__value_.__r.__words[0];
  }

  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v128.__r_.__value_.__l.__size_;
  }

  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v52, v53);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, &v141, 1);
  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "History (MB)          : ", 24);
  v57 = *(a1 + 108);
  if (!v57)
  {
    LODWORD(v64) = 8;
    *(&v127.__r_.__value_.__s + 23) = 8;
    v65 = 0x6574696E69666E49;
    strcpy(&v127, "Infinite");
    goto LABEL_68;
  }

  std::to_string(&v141, v57);
  v126 = v141;
  v58 = SHIBYTE(v141.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v58 = v126.__r_.__value_.__l.__size_;
    v63 = (v126.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v63 - v126.__r_.__value_.__l.__size_ < 3)
    {
      v122 = v57;
      v66 = 0x7FFFFFFFFFFFFFF7;
      v61 = v126.__r_.__value_.__l.__size_ + 3;
      if (0x7FFFFFFFFFFFFFF7 - (v126.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v126.__r_.__value_.__l.__size_ + 3 - v63)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v59 = a2;
      v62 = v126.__r_.__value_.__r.__words[0];
      v60 = a3;
      if (v63 > 0x3FFFFFFFFFFFFFF2)
      {
        v69 = 0;
LABEL_56:
        v70 = operator new(v66);
        v71 = v70;
        if (v58)
        {
          memmove(v70, v62, v58);
        }

        v72 = v71 + v58;
        *(v72 + 2) = 66;
        *v72 = 19744;
        if (!v69)
        {
          operator delete(v62);
        }

        v126.__r_.__value_.__l.__size_ = v61;
        v126.__r_.__value_.__r.__words[2] = v66 | 0x8000000000000000;
        v126.__r_.__value_.__r.__words[0] = v71;
        v73 = (v71 + v61);
        a3 = v60;
        a2 = v59;
        v57 = v122;
        goto LABEL_67;
      }

LABEL_47:
      v67 = 2 * v63;
      if (v61 > 2 * v63)
      {
        v67 = v61;
      }

      if ((v67 | 7) == 0x17)
      {
        v68 = 25;
      }

      else
      {
        v68 = (v67 | 7) + 1;
      }

      if (v67 >= 0x17)
      {
        v66 = v68;
      }

      else
      {
        v66 = 23;
      }

      v69 = v63 == 22;
      goto LABEL_56;
    }

    v74 = v126.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v126.__r_.__value_.__r.__words[2]) - 20) < 3)
    {
      v122 = v57;
      v59 = a2;
      v60 = a3;
      v61 = SHIBYTE(v126.__r_.__value_.__r.__words[2]) + 3;
      v62 = &v126;
      v63 = 22;
      goto LABEL_47;
    }

    v74 = &v126;
  }

  v75 = v74 + v58;
  v75[2] = 66;
  *v75 = 19744;
  v76 = v58 + 3;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    v126.__r_.__value_.__l.__size_ = v58 + 3;
  }

  else
  {
    *(&v126.__r_.__value_.__s + 23) = v76 & 0x7F;
  }

  v73 = v74 + v76;
LABEL_67:
  *v73 = 0;
  v127 = v126;
  memset(&v126, 0, sizeof(v126));
  v64 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
  v65 = v127.__r_.__value_.__r.__words[0];
LABEL_68:
  if ((v64 & 0x80u) == 0)
  {
    v77 = &v127;
  }

  else
  {
    v77 = v65;
  }

  if ((v64 & 0x80u) == 0)
  {
    v78 = v64;
  }

  else
  {
    v78 = v127.__r_.__value_.__l.__size_;
  }

  v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v77, v78);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, &v141, 1);
  v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Max memory file count : ", 24);
  v82 = *(a1 + 116);
  if (v82)
  {
    std::to_string(&v141, v82);
    v125 = v141;
  }

  else
  {
    *(&v125.__r_.__value_.__s + 23) = 8;
    strcpy(&v125, "No limit");
  }

  if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v83 = &v125;
  }

  else
  {
    v83 = v125.__r_.__value_.__r.__words[0];
  }

  if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v84 = v125.__r_.__value_.__l.__size_;
  }

  v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v83, v84);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, &v141, 1);
  v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "File Size (Bytes)     : ", 24);
  v88 = MEMORY[0x23EECDF40](v87, *(a1 + 112));
  v141.__r_.__value_.__s.__data_[0] = 10;
  v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, &v141, 1);
  v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "Transport Read Size   : ", 24);
  v91 = MEMORY[0x23EECDF40](v90, *(a1 + 144));
  v141.__r_.__value_.__s.__data_[0] = 10;
  v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, &v141, 1);
  v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "Transport Read Count  : ", 24);
  v94 = MEMORY[0x23EECDF40](v93, *(a1 + 148));
  v141.__r_.__value_.__s.__data_[0] = 10;
  v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, &v141, 1);
  v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, "Error Handling        : ", 24);
  v97 = *(a1 + 264);
  if (v97 > 2)
  {
    v98 = "Unknown";
  }

  else
  {
    v98 = off_278BB8C08[v97];
  }

  v99 = strlen(v98);
  v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, v98, v99);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, &v141, 1);
  v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Peak Bandwidth (Mbps) : ", 24);
  std::to_string(&v141, *(a1 + 320));
  v124 = v141;
  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v103 = &v124;
  }

  else
  {
    v103 = v124.__r_.__value_.__r.__words[0];
  }

  if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v104 = HIBYTE(v124.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v104 = v124.__r_.__value_.__l.__size_;
  }

  v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, v103, v104);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, &v141, 1);
  v107 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "Flush Timer Interval:   ", 24);
  if (*(a1 + 324) == 1)
  {
    std::to_string(&v141, *(a1 + 328));
    __p = v141;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 19;
    strcpy(&__p, "NA (Not in BBProxy)");
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
    v109 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v109 = __p.__r_.__value_.__l.__size_;
  }

  v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, p_p, v109);
  v141.__r_.__value_.__s.__data_[0] = 10;
  v111 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, &v141, 1);
  v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, "Reason                : ", 24);
  v113 = *(a2 + 23);
  if (v113 >= 0)
  {
    v114 = a2;
  }

  else
  {
    v114 = *a2;
  }

  if (v113 >= 0)
  {
    v115 = *(a2 + 23);
  }

  else
  {
    v115 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, v114, v115);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_109:
      if ((SHIBYTE(v125.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_115;
    }
  }

  else if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_109;
  }

  operator delete(v124.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v125.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_110:
    if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_111;
    }

LABEL_116:
    operator delete(v127.__r_.__value_.__l.__data_);
    if (!v57)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

LABEL_115:
  operator delete(v125.__r_.__value_.__l.__data_);
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_116;
  }

LABEL_111:
  if (!v57)
  {
LABEL_118:
    if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_141;
  }

LABEL_117:
  if ((SHIBYTE(v126.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

  operator delete(v126.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_119:
    if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

LABEL_142:
    operator delete(v129.__r_.__value_.__l.__data_);
    if ((v131 & 0x80000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_143;
  }

LABEL_141:
  operator delete(v128.__r_.__value_.__l.__data_);
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_142;
  }

LABEL_120:
  if ((v131 & 0x80000000) == 0)
  {
    goto LABEL_121;
  }

LABEL_143:
  operator delete(v130[0]);
LABEL_121:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v132, "\n---------------------------------\n", 35);
  if ((BYTE8(v138) & 0x10) != 0)
  {
    v117 = v138;
    if (v138 < *(&v135 + 1))
    {
      *&v138 = *(&v135 + 1);
      v117 = *(&v135 + 1);
    }

    v118 = v135;
    v116 = v117 - v135;
    if ((v117 - v135) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_139;
    }
  }

  else
  {
    if ((BYTE8(v138) & 8) == 0)
    {
      v116 = 0;
      a3[23] = 0;
      goto LABEL_135;
    }

    v118 = *(&v133 + 1);
    v116 = *(&v134 + 1) - *(&v133 + 1);
    if (*(&v134 + 1) - *(&v133 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_139:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v116 >= 0x17)
  {
    if ((v116 | 7) == 0x17)
    {
      v119 = 25;
    }

    else
    {
      v119 = (v116 | 7) + 1;
    }

    v120 = operator new(v119);
    *(a3 + 1) = v116;
    *(a3 + 2) = v119 | 0x8000000000000000;
    *a3 = v120;
    a3 = v120;
    goto LABEL_134;
  }

  a3[23] = v116;
  if (v116)
  {
LABEL_134:
    memmove(a3, v118, v116);
  }

LABEL_135:
  a3[v116] = 0;
  *&v132 = *MEMORY[0x277D82828];
  *(&v132 + *(v132 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v132 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v137) < 0)
  {
    operator delete(v136[1]);
  }

  *(&v132 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v133);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v139);
}

void sub_23C2384AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
    if (a46 < 0)
    {
LABEL_7:
      operator delete(a41);
      if ((a52 & 0x80000000) == 0)
      {
LABEL_11:
        std::ostringstream::~ostringstream(&a53, MEMORY[0x277D82828]);
        MEMORY[0x23EECE150](&a67);
        _Unwind_Resume(a1);
      }

LABEL_10:
      operator delete(a47);
      goto LABEL_11;
    }
  }

  else if (a46 < 0)
  {
    goto LABEL_7;
  }

  if ((a52 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t DALTrace::setPropTraceMode_sync(uint64_t a1, dispatch_object_t *a2, char *a3, const std::string *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  v8 = -1431655766;
  LODWORD(buf.__r_.__value_.__l.__data_) = -1431655766;
  if (util::convert<int>(a4, &buf, 0))
  {
    data = buf.__r_.__value_.__l.__data_;
    v11 = (a1 + 96);
    v10 = *(a1 + 96);
    if (v10 == LODWORD(buf.__r_.__value_.__l.__data_))
    {
      v8 = buf.__r_.__value_.__l.__data_;
      goto LABEL_7;
    }

    if (LODWORD(buf.__r_.__value_.__l.__data_) == 4)
    {
      if (*(a1 + 104) == 1)
      {
        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = trace::toString(v10);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = v15;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = "Passive With Logging Configuration";
          v16 = "Mode transitioning %s -> %s, enabled must be set to false";
          goto LABEL_39;
        }

LABEL_60:
        v18 = 0;
        if (!v7)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (*(a1 + 120))
      {
        goto LABEL_26;
      }

      v20 = *(a1 + 40);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v30 = trace::toString(v10);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v30;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "Passive With Logging Configuration";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
      v36 = 0;
      v22 = "Mode transitioning %s -> %s, trace channel owner (%d) not set properly";
LABEL_64:
      _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, v22, &buf, 0x1Cu);
      v18 = 0;
      if (!v7)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }
  }

  else
  {
    v11 = (a1 + 96);
    v10 = *(a1 + 96);
    if (v10 == -1431655766)
    {
LABEL_7:
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (v8 > 8)
        {
          v13 = "Unknown";
        }

        else
        {
          v13 = off_278BB8C20[v8];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v13;
        _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Mode is already set to %s", &buf, 0xCu);
        v18 = 1;
        if (!v7)
        {
          goto LABEL_62;
        }

LABEL_61:
        dispatch_group_leave(v7);
        dispatch_release(v7);
        goto LABEL_62;
      }

LABEL_52:
      v18 = 1;
      if (!v7)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    data = -1431655766;
  }

  if (v10 == 4)
  {
    if (*(a1 + 104) == 1)
    {
      v14 = *(a1 + 40);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v17 = trace::toString(data);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "Passive With Logging Configuration";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v17;
      v16 = "Mode transitioning %s -> %s, enabled must be set to false";
      goto LABEL_39;
    }

    v19 = *(a1 + 120);
    if (v19)
    {
      v20 = *(a1 + 40);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v21 = trace::toString(data);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = "Passive With Logging Configuration";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v21;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
      v36 = v19;
      v22 = "Mode transitioning %s -> %s and trace transport owner can't be %d";
      goto LABEL_64;
    }
  }

LABEL_26:
  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    if (a3[23] < 0)
    {
      a3 = *a3;
    }

    if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
    {
      a4 = a4->__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = a3;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
    v16 = "Failed to set %s property to %s";
LABEL_39:
    _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, v16, &buf, 0x16u);
    v18 = 0;
    if (!v7)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  memset(&buf, 0, sizeof(buf));
  if (!prop::bbtrace::get(a3, &buf))
  {
    v24 = 0;
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v34 = -1431655766;
  v23 = util::convert<int>(&buf, &v34, 0);
  v24 = v23;
  if (v23)
  {
    v8 = v34;
  }

  else
  {
    v8 = -1431655766;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_42:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_43:
  v25 = *(a1 + 40);
  if (v24)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *v11;
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v26;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = v8;
      _os_log_impl(&dword_23C1C4000, v25, OS_LOG_TYPE_DEFAULT, "#I Setting trace transport mode from %d to %d", &buf, 0xEu);
    }

    *v11 = v8;
    if (v8 == 7 || v8 == 2)
    {
      v33 = 15;
      strcpy(__p, "Reset_Mode_Boot");
      std::to_string(&v31, 1);
      DALTrace::setPropTraceResetModeReboot_sync(a1, v27, __p, &v31);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_52;
  }

  if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_60;
  }

  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
  *(buf.__r_.__value_.__r.__words + 4) = a3;
  _os_log_error_impl(&dword_23C1C4000, v25, OS_LOG_TYPE_ERROR, "Failed to get %s property", &buf, 0xCu);
  v18 = 0;
  if (v7)
  {
    goto LABEL_61;
  }

LABEL_62:
  v28 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_23C238BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_7:
      if (v28)
      {
LABEL_8:
        dispatch_group_leave(v28);
        dispatch_release(v28);
        _Unwind_Resume(a1);
      }

LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(a16);
  if (v28)
  {
    goto LABEL_8;
  }

  goto LABEL_9;
}

BOOL DALTrace::setPropTraceResetModeReboot_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a3;
    if (a3[23] < 0)
    {
      v8 = *a3;
      v9 = a4;
      if ((*(a4 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = a4;
      if ((*(a4 + 23) & 0x80000000) == 0)
      {
LABEL_4:
        *buf = 136315394;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = v9;
        _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I Setting bbtrace property with key %s and value %s", buf, 0x16u);
        goto LABEL_5;
      }
    }

    v9 = *a4;
    goto LABEL_4;
  }

LABEL_5:
  if (prop::bbtrace::set(a3, a4))
  {
    memset(buf, 0, 24);
    if (prop::bbtrace::get(a3, buf))
    {
      *v26 = -1431655766;
      v10 = util::convert<int>(buf, v26, 0);
      v11 = v10;
      if (v10)
      {
        v12 = *v26;
      }

      else
      {
        v12 = 0;
      }

      if ((buf[23] & 0x80000000) != 0)
      {
LABEL_23:
        operator delete(*buf);
        if ((v11 & 1) == 0)
        {
LABEL_24:
          v13 = *(a1 + 40);
          result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 0;
            v15 = "Failed to get - Reset mode on AP boot - property!";
            goto LABEL_26;
          }

          goto LABEL_48;
        }

LABEL_16:
        v16 = *(a1 + 100);
        v17 = *(a1 + 40);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v12 == v16)
        {
          if (v18)
          {
            if (v12 == 1)
            {
              v19 = &buf[9];
              buf[23] = 9;
              qmemcpy(buf, "Last_Used", 9);
            }

            else if (v12)
            {
              v19 = &buf[11];
              buf[23] = 11;
              qmemcpy(buf, "UnSpecified", 11);
            }

            else
            {
              v19 = &buf[7];
              buf[23] = 7;
              qmemcpy(buf, "Default", 7);
            }

            *v19 = 0;
            *v26 = 136315394;
            *&v26[4] = buf;
            v27 = 1024;
            v28 = v12;
            _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I Reset mode on AP boot is already %s (%d)", v26, 0x12u);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }
        }

        else
        {
          if (v18)
          {
            if (v16 == 1)
            {
              v20 = &v26[9];
              v29 = 9;
              qmemcpy(v26, "Last_Used", 9);
            }

            else if (v16)
            {
              v20 = &v26[11];
              v29 = 11;
              qmemcpy(v26, "UnSpecified", 11);
            }

            else
            {
              v20 = &v26[7];
              v29 = 7;
              qmemcpy(v26, "Default", 7);
            }

            *v20 = 0;
            if (v12 == 1)
            {
              v21 = &__p[9];
              v25 = 9;
              qmemcpy(__p, "Last_Used", 9);
            }

            else if (v12)
            {
              v21 = v24;
              v25 = 11;
              qmemcpy(__p, "UnSpecified", sizeof(__p));
            }

            else
            {
              v21 = &__p[7];
              v25 = 7;
              qmemcpy(__p, "Default", 7);
            }

            *v21 = 0;
            *buf = 136315906;
            *&buf[4] = v26;
            *&buf[12] = 1024;
            *&buf[14] = v16;
            *&buf[18] = 2080;
            *&buf[20] = __p;
            v31 = 1024;
            v32 = v12;
            _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting - Reset mode on AP boot - from %s (%d) to %s (%d)", buf, 0x22u);
            if (v25 < 0)
            {
              operator delete(*__p);
            }

            if (v29 < 0)
            {
              operator delete(*v26);
            }
          }

          *(a1 + 100) = v12;
        }

        result = 1;
        goto LABEL_48;
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
      if ((buf[23] & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v13 = *(a1 + 40);
  result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    v15 = "Failed to set - Reset mode on AP boot - property!";
LABEL_26:
    _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    result = 0;
  }

LABEL_48:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C2390B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL DALTrace::setPropTraceOwnership_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 104) == 1)
  {
    v5 = *(a1 + 40);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v7 = "Setting trace ownership, enabled must be set to false";
LABEL_21:
      _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, v7, &buf, 2u);
      result = 0;
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (prop::bbtrace::set(a3, a4))
  {
    memset(&buf, 0, sizeof(buf));
    v9 = -1431655766;
    if (prop::bbtrace::get(a3, &buf))
    {
      v16 = -1431655766;
      v10 = util::convert<int>(&buf, &v16, 0);
      v11 = v10;
      if (v10)
      {
        v9 = v16;
      }

      else
      {
        v9 = -1431655766;
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_18:
        operator delete(buf.__r_.__value_.__l.__data_);
        if ((v11 & 1) == 0)
        {
LABEL_19:
          v5 = *(a1 + 40);
          result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
          if (result)
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            v7 = "Failed to get trace ownership";
            goto LABEL_21;
          }

          goto LABEL_26;
        }

LABEL_15:
        v12 = *(a1 + 120);
        v13 = *(a1 + 40);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v9 == v12)
        {
          if (v14)
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v9;
            _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Trace ownership is already set to %d", &buf, 8u);
          }
        }

        else
        {
          if (v14)
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v12;
            LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 2) = v9;
            _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Setting trace ownership from %d to %d", &buf, 0xEu);
          }

          *(a1 + 120) = v9;
        }

        result = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v11 = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_18;
      }
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 40);
  result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v7 = "Failed to set trace ownership property!";
    goto LABEL_21;
  }

LABEL_26:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C239300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DALTrace::setPropTraceLogMode_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if (prop::bbtrace::set(a3, a4))
  {
    memset(&buf, 0, sizeof(buf));
    if (prop::bbtrace::get(a3, &buf))
    {
      v40 = -1431655766;
      v8 = util::convert<int>(&buf, &v40, 0);
      v9 = v8;
      if (v8)
      {
        v10 = v40;
      }

      else
      {
        v10 = 1;
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_9:
        operator delete(buf.__r_.__value_.__l.__data_);
        if ((v9 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v9 = 0;
      v10 = 1;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_9;
      }
    }

    if ((v9 & 1) == 0)
    {
LABEL_10:
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Failed to get trace log mode", &buf, 2u);
        v12 = 0;
        if (!v7)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_19:
    v16 = *(a1 + 104);
    v17 = *(a1 + 40);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if ((v16 & 1) == 0)
    {
      if (v18)
      {
        if (v10 > 2)
        {
          v22 = "Unknown";
        }

        else
        {
          v22 = off_278BB8C68[v10];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v22;
        _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I Trace is disabled, not sending mipc command to baseband to set %s", &buf, 0xCu);
      }

      *(a1 + 200) = v10;
      v12 = 1;
      if (v7)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (!v18)
    {
LABEL_30:
      v23 = *(a1 + 16);
      if (!v23 || (v24 = *(a1 + 8), (v25 = std::__shared_weak_count::lock(v23)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v26 = v25;
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v26);
      }

      memset(&buf, 170, 16);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN8DALTrace24setPropTraceLogMode_syncEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke;
      aBlock[3] = &__block_descriptor_tmp_58_1;
      aBlock[4] = a1;
      group = v7;
      if (v7)
      {
        dispatch_retain(v7);
        dispatch_group_enter(group);
      }

      v35 = v24;
      v36 = v26;
      atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v37 = a3;
      v38 = a4;
      v39 = v10;
      v27 = _Block_copy(aBlock);
      v28 = *(a1 + 24);
      if (v28)
      {
        dispatch_retain(*(a1 + 24));
      }

      buf.__r_.__value_.__r.__words[0] = v27;
      buf.__r_.__value_.__l.__size_ = v28;
      if (v27)
      {
        v29 = _Block_copy(v27);
        v31 = v29;
        v32 = v28;
        if (!v28)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v29 = 0;
        v31 = 0;
        v32 = v28;
        if (!v28)
        {
LABEL_41:
          DALTrace::setLogMode_sync(a1, v10, 1, &v31, 18);
          if (v28)
          {
            dispatch_release(v28);
          }

          if (v29)
          {
            _Block_release(v29);
          }

          if (v28)
          {
            dispatch_release(v28);
          }

          if (v27)
          {
            _Block_release(v27);
          }

          if (v36)
          {
            std::__shared_weak_count::__release_weak(v36);
          }

          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

          std::__shared_weak_count::__release_weak(v26);
          v12 = 1;
          if (v7)
          {
            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }

      dispatch_retain(v28);
      goto LABEL_41;
    }

    v19 = *(a1 + 200);
    if (v19 > 2)
    {
      v20 = "Unknown";
      if (v10 > 2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v20 = off_278BB8C68[v19];
      if (v10 > 2)
      {
LABEL_23:
        v21 = "Unknown";
LABEL_29:
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = v20;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v21;
        _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting trace log mode from %s to %s", &buf, 0x16u);
        goto LABEL_30;
      }
    }

    v21 = off_278BB8C68[v10];
    goto LABEL_29;
  }

  v13 = *(a1 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (*(a4 + 23) >= 0)
    {
      v30 = a4;
    }

    else
    {
      v30 = *a4;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v30;
    _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, "Failed to set trace log mode to %s", &buf, 0xCu);
    v12 = 0;
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

LABEL_14:
  v12 = 0;
  if (v7)
  {
LABEL_15:
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_23C2397B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t group, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace24setPropTraceLogMode_syncEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke(uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v21 = 0;
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_24;
  }

  v21 = std::__shared_weak_count::lock(v4);
  if (!v21)
  {
    goto LABEL_27;
  }

  if (!*(a1 + 48))
  {
    goto LABEL_24;
  }

  v6 = *a2;
  if (!*a2)
  {
    *(v3 + 200) = *(a1 + 80);
    v10 = v21;
    goto LABEL_25;
  }

  v7 = *(v3 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to set log mode (%@)", &buf, 0xCu);
    v8 = *(v3 + 200);
    if (v8 <= 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(v3 + 200);
    if (v8 <= 2)
    {
LABEL_7:
      v9 = off_278BB8C68[v8];
      goto LABEL_11;
    }
  }

  v9 = "Unknown";
LABEL_11:
  v11 = *(a1 + 64);
  v12 = strlen(v9);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
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

    p_buf = operator new(v15);
    *(&buf + 1) = v13;
    v23 = v15 | 0x8000000000000000;
    *&buf = p_buf;
  }

  else
  {
    HIBYTE(v23) = v12;
    p_buf = &buf;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  memcpy(p_buf, v9, v13);
LABEL_20:
  *(p_buf + v13) = 0;
  v16 = prop::bbtrace::set(v11, &buf);
  if (SHIBYTE(v23) < 0)
  {
    v17 = v16;
    operator delete(buf);
    v16 = v17;
  }

  if ((v16 & 1) != 0 || (v18 = *(v3 + 40), !os_log_type_enabled(v18, OS_LOG_TYPE_ERROR)))
  {
LABEL_24:
    v10 = v21;
    if (!v21)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v20 = *(a1 + 72);
  if (*(v20 + 23) < 0)
  {
    v20 = *v20;
  }

  LODWORD(buf) = 136315138;
  *(&buf + 4) = v20;
  _os_log_error_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_ERROR, "Failed to revert trace log mode to %s", &buf, 0xCu);
  v10 = v21;
LABEL_25:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_27:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23C239AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t DALTrace::setPropTraceLogLevel_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = prop::bbtrace::set(a3, a4);
  if ((v50[3] & 1) == 0)
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (*(a4 + 23) >= 0)
      {
        v42 = a4;
      }

      else
      {
        v42 = *a4;
      }

      LODWORD(v54) = 136315138;
      *(&v54 + 4) = v42;
      _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Failed to set trace log level to %s", &v54, 0xCu);
    }

    v13 = 0;
    goto LABEL_29;
  }

  memset(&__dst, 0, sizeof(__dst));
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v8;
  v57 = v8;
  v54 = v8;
  v55 = v8;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v54, ".*\\.bin", 0);
  v9 = std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a4, &v54, 0);
  v10 = v57;
  if (v57 && !atomic_fetch_add((v57 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::locale::~locale(&v54);
    if (v9)
    {
LABEL_7:
      if (&__dst != a4)
      {
        v11 = *(a4 + 23);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v11 >= 0)
          {
            v25 = a4;
          }

          else
          {
            v25 = *a4;
          }

          if (v11 >= 0)
          {
            v26 = *(a4 + 23);
          }

          else
          {
            v26 = *(a4 + 8);
          }

          std::string::__assign_no_alias<false>(&__dst.__r_.__value_.__l.__data_, v25, v26);
        }

        else if ((*(a4 + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&__dst, *a4, *(a4 + 8));
        }

        else
        {
          __dst = *a4;
        }
      }

LABEL_40:
      if (*(a1 + 104))
      {
        v27 = *(a1 + 16);
        if (!v27 || (v28 = *(a1 + 8), (v29 = std::__shared_weak_count::lock(v27)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v30 = v29;
        p_shared_weak_owners = &v29->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v30);
        }

        *&v54 = 0xAAAAAAAAAAAAAAAALL;
        *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZN8DALTrace25setPropTraceLogLevel_syncEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke;
        aBlock[3] = &unk_284EFB1B0;
        aBlock[5] = a1;
        aBlock[6] = v28;
        v44 = v30;
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        group = v7;
        if (v7)
        {
          dispatch_retain(v7);
          dispatch_group_enter(group);
        }

        v46 = a3;
        aBlock[4] = &v49;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = __dst;
        }

        v35 = _Block_copy(aBlock);
        v36 = *(a1 + 24);
        if (v36)
        {
          dispatch_retain(*(a1 + 24));
        }

        *&v54 = v35;
        *(&v54 + 1) = v36;
        v37 = (a1 + 208);
        if ((a1 + 208) != &__dst)
        {
          if (*(a1 + 231) < 0)
          {
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            std::string::__assign_no_alias<false>(v37, p_dst, size);
          }

          else if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v37, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            *v37 = *&__dst.__r_.__value_.__l.__data_;
            *(a1 + 224) = *(&__dst.__r_.__value_.__l + 2);
          }
        }

        v13 = *(v50 + 24);
        if (v36)
        {
          dispatch_release(v36);
        }

        if (v35)
        {
          _Block_release(v35);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }

        if (v44)
        {
          std::__shared_weak_count::__release_weak(v44);
        }

        std::__shared_weak_count::__release_weak(v30);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v32 = *(a1 + 40);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = &__dst;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v33 = __dst.__r_.__value_.__r.__words[0];
          }

          LODWORD(v54) = 136315138;
          *(&v54 + 4) = v33;
          _os_log_impl(&dword_23C1C4000, v32, OS_LOG_TYPE_DEFAULT, "#I Trace is disabled, not sending mipc command to baseband to set %s", &v54, 0xCu);
        }

        v34 = (a1 + 208);
        if ((a1 + 208) != &__dst)
        {
          if (*(a1 + 231) < 0)
          {
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__dst;
            }

            else
            {
              v38 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = __dst.__r_.__value_.__l.__size_;
            }

            std::string::__assign_no_alias<false>(v34, v38, v39);
          }

          else if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v34, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            *v34 = *&__dst.__r_.__value_.__l.__data_;
            *(a1 + 224) = *(&__dst.__r_.__value_.__l + 2);
          }
        }

        v13 = 1;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_29;
    }
  }

  else
  {
    std::locale::~locale(&v54);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  v54 = 0uLL;
  *&v55 = 0;
  if (prop::bbtrace::get(a3, &v54))
  {
    v53 = -1431655766;
    v14 = util::convert<int>(&v54, &v53, 0);
    v15 = v14;
    if (v14)
    {
      v16 = v53;
    }

    else
    {
      v16 = 3;
    }

    if (SBYTE7(v55) < 0)
    {
LABEL_19:
      operator delete(v54);
      v17 = v50;
      *(v50 + 24) = v15;
      if ((v15 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v15 = 0;
    v16 = 3;
    if (SBYTE7(v55) < 0)
    {
      goto LABEL_19;
    }
  }

  v17 = v50;
  *(v50 + 24) = v15;
  if ((v15 & 1) == 0)
  {
LABEL_20:
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v54) = 0;
      v19 = "Failed to get trace log level";
      v20 = v18;
      v21 = 2;
      goto LABEL_100;
    }

LABEL_27:
    v13 = 0;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_24:
  *(v17 + 24) = v16 < 5;
  if (v16 < 5)
  {
    std::string::__assign_external(&__dst, off_278BB8C80[v16]);
    goto LABEL_40;
  }

  v22 = *(a1 + 40);
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_27;
  }

  LODWORD(v54) = 67109120;
  DWORD1(v54) = v16;
  v19 = "Invalid log level %d";
  v20 = v22;
  v21 = 8;
LABEL_100:
  _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, v19, &v54, v21);
  v13 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_28:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_29:
  _Block_object_dispose(&v49, 8);
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_23C23A160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, dispatch_group_t group, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::__shared_weak_count::__release_weak(v33);
  if (a31 < 0)
  {
    operator delete(__p);
    _Block_object_dispose(&a32, 8);
    if (!v32)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a32, 8);
    if (!v32)
    {
      goto LABEL_10;
    }
  }

  dispatch_group_leave(v32);
  dispatch_release(v32);
  goto LABEL_10;
}

void sub_23C23A280()
{
  if (!v0)
  {
    JUMPOUT(0x23C23A278);
  }

  JUMPOUT(0x23C23A268);
}

void ___ZN8DALTrace25setPropTraceLogLevel_syncEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke(uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v22 = 0;
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_31;
  }

  v22 = std::__shared_weak_count::lock(v4);
  if (!v22)
  {
    goto LABEL_34;
  }

  if (!*(a1 + 48))
  {
    goto LABEL_31;
  }

  v6 = *a2;
  v7 = *(v3 + 40);
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = (v3 + 208);
      if (*(v3 + 231) < 0)
      {
        v17 = *v17;
      }

      *buf = 136315138;
      *&buf[4] = v17;
      _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I Succeed to set log level %s", buf, 0xCu);
      v11 = (a1 + 80);
      v12 = (a1 + 80);
      if ((*(a1 + 103) & 0x80000000) == 0)
      {
LABEL_13:
        v13 = *(a1 + 72);
        v14 = strlen(v12);
        if (v14 < 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_14;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v11 = (a1 + 80);
      v12 = (a1 + 80);
      if ((*(a1 + 103) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    v12 = *v11;
    v13 = *(a1 + 72);
    v14 = strlen(*v11);
    if (v14 < 0x7FFFFFFFFFFFFFF8)
    {
LABEL_14:
      v15 = v14;
      if (v14 >= 0x17)
      {
        if ((v14 | 7) == 0x17)
        {
          v18 = 25;
        }

        else
        {
          v18 = (v14 | 7) + 1;
        }

        v16 = operator new(v18);
        *&buf[8] = v15;
        *&buf[16] = v18 | 0x8000000000000000;
        *buf = v16;
      }

      else
      {
        buf[23] = v14;
        v16 = buf;
        if (!v14)
        {
LABEL_27:
          v16[v15] = 0;
          *(*(*(a1 + 32) + 8) + 24) = prop::bbtrace::set(v13, buf);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
          {
            v10 = *(v3 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              if (*(a1 + 103) < 0)
              {
                v11 = *v11;
              }

              *buf = 136315138;
              *&buf[4] = v11;
              goto LABEL_41;
            }
          }

LABEL_31:
          v19 = v22;
          if (!v22)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }
      }

      memmove(v16, v12, v15);
      goto LABEL_27;
    }

LABEL_21:
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v21 = (v3 + 208);
    if (*(v3 + 231) < 0)
    {
      v21 = *v21;
    }

    *buf = 136315394;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to set log level %s (%@)", buf, 0x16u);
  }

  v8 = *(a1 + 72);
  v9 = (v3 + 208);
  if (prop::bbtrace::set(v8, v3 + 208))
  {
    goto LABEL_31;
  }

  v10 = *(v3 + 40);
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_31;
  }

  if (*(v3 + 231) < 0)
  {
    v9 = *v9;
  }

  *buf = 136315138;
  *&buf[4] = v9;
LABEL_41:
  _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Failed to reset trace log level to %s", buf, 0xCu);
  v19 = v22;
LABEL_32:
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_34:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_23C23A5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_48c29_ZTSNSt3__18weak_ptrI5TraceEE64c30_ZTSN8dispatch13group_sessionE80c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = *(a1 + 64);
    if (v6)
    {
      dispatch_group_enter(v6);
    }
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }
}

void sub_23C23A694(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(v1 + 64);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = *(v1 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_48c29_ZTSNSt3__18weak_ptrI5TraceEE64c30_ZTSN8dispatch13group_sessionE80c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

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

uint64_t DALTrace::setPropSleepLogMode_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v10 = *(a1 + 40);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    if (*(a4 + 23) >= 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = *a4;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v11;
    v12 = "Failed to set sleep log mode to %s";
    v13 = v10;
    v14 = 12;
LABEL_32:
    _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, v12, &__p, v14);
    v20 = 0;
    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  memset(&__p, 0, sizeof(__p));
  if (!prop::bbtrace::get(a3, &__p))
  {
    v9 = 0;
    v8 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    v15 = *(a1 + 40);
    v16 = v15;
    if (!v8)
    {
      goto LABEL_22;
    }

LABEL_17:
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v17 = *(a1 + 232);
    if (v17 > 2)
    {
      v18 = "Unknown";
      if (v9 > 2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = off_278BB8C68[v17];
      if (v9 > 2)
      {
LABEL_20:
        v19 = "Unknown";
LABEL_28:
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v18;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v19;
        _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, "#I Setting sleep log mode to %s to %s", &__p, 0x16u);
LABEL_29:
        *(a1 + 232) = v9;
        v20 = 1;
        if (!v7)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    v19 = off_278BB8C68[v9];
    goto LABEL_28;
  }

  v23 = -1431655766;
  v8 = util::convert<int>(&__p, &v23, 0);
  if (v8)
  {
    v9 = v23;
  }

  else
  {
    v9 = 0;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(__p.__r_.__value_.__l.__data_);
  v15 = *(a1 + 40);
  v16 = v15;
  if (v8)
  {
    goto LABEL_17;
  }

LABEL_22:
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v12 = "Failed to set sleep log mode";
    v13 = v15;
    v14 = 2;
    goto LABEL_32;
  }

LABEL_23:
  v20 = 0;
  if (v7)
  {
LABEL_24:
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

LABEL_25:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_23C23A990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DALTrace::setPropSleepLogLevel_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (*(a4 + 23) >= 0)
      {
        v21 = a4;
      }

      else
      {
        v21 = *a4;
      }

      LODWORD(v27[0].__locale_) = 136315138;
      *(&v27[0].__locale_ + 4) = v21;
      _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "Failed to set sleep log level to %s", v27, 0xCu);
      v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_49;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v8;
  v30 = v8;
  *&v27[0].__locale_ = v8;
  v28 = v8;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v27, ".*\\.bin", 0);
  v9 = std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a4, v27, 0);
  v10 = v30;
  if (v30 && !atomic_fetch_add((v30 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::locale::~locale(v27);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    std::locale::~locale(v27);
    if (v9)
    {
LABEL_7:
      v11 = (a1 + 240);
      if (a1 + 240 != a4)
      {
        v12 = *(a4 + 23);
        if (*(a1 + 263) < 0)
        {
          if (v12 >= 0)
          {
            v19 = a4;
          }

          else
          {
            v19 = *a4;
          }

          if (v12 >= 0)
          {
            v20 = *(a4 + 23);
          }

          else
          {
            v20 = *(a4 + 8);
          }

          std::string::__assign_no_alias<false>(v11, v19, v20);
        }

        else if ((*(a4 + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v11, *a4, *(a4 + 8));
        }

        else
        {
          v13 = *a4;
          *(a1 + 256) = *(a4 + 16);
          *v11 = v13;
        }
      }

      v15 = 1;
      goto LABEL_45;
    }
  }

  v27[0].__locale_ = 0;
  v27[1].__locale_ = 0;
  *&v28 = 0;
  if (!prop::bbtrace::get(a3, v27))
  {
    LODWORD(v15) = 0;
    v16 = 4;
    if ((SBYTE7(v28) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v26 = -1431655766;
  LODWORD(v15) = util::convert<int>(v27, &v26, 0);
  if (v15)
  {
    v16 = v26;
  }

  else
  {
    v16 = 4;
  }

  if (SBYTE7(v28) < 0)
  {
LABEL_21:
    operator delete(v27[0].__locale_);
  }

LABEL_22:
  if (v16 < 5)
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0].__locale_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_ERROR, "Failed to set sleep log level", v27, 2u);
      if (v16 <= 4)
      {
        goto LABEL_28;
      }

LABEL_43:
      v18 = "Unknown";
      goto LABEL_44;
    }
  }

  if (v16 > 4)
  {
    goto LABEL_43;
  }

LABEL_28:
  v18 = off_278BB8C80[v16];
LABEL_44:
  std::string::__assign_external((a1 + 240), v18);
LABEL_45:
  v22 = *(a1 + 40);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = (a1 + 240);
    if (*(a1 + 263) < 0)
    {
      v23 = *v23;
    }

    LODWORD(v27[0].__locale_) = 136315138;
    *(&v27[0].__locale_ + 4) = v23;
    _os_log_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_DEFAULT, "#I Setting sleep log level to %s", v27, 0xCu);
  }

LABEL_49:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_23C23AD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (!v16)
  {
    _Unwind_Resume(exception_object);
  }

  dispatch_group_leave(v16);
  dispatch_release(v16);
  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace19setLPMHandlers_syncEN8dispatch5groupE_block_invoke(uint64_t a1, NSObject **a2)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 152))
  {
    goto LABEL_3;
  }

  v18 = 0;
  LOBYTE(v17) = 0;
  Timestamp::Timestamp(v15);
  v14 = 0;
  LOBYTE(v13) = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v15, v16);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_3:
    v4 = *(v3 + 232);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_15:
    v5 = *a2;
    v8 = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(v5);
    }

    DALTrace::handleSleepTransitionToDisabled(v3, &v8);
    goto LABEL_18;
  }

  operator delete(v17);
  v4 = *(v3 + 232);
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v4 == 2)
  {
    v5 = *a2;
    v9 = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(v5);
    }

    DALTrace::handleSleepTransitionToWrapping(v3, &v9);
    goto LABEL_18;
  }

  if (v4 == 1)
  {
    v5 = *a2;
    v10 = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(v5);
    }

    DALTrace::handleSleepTransitionToStreaming(v3, &v10);
LABEL_18:
    if (v5)
    {
      dispatch_group_leave(v5);
      dispatch_release(v5);
    }

    return;
  }

  v6 = *(v3 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "Entering sleep: reacing Unkown state", v7, 2u);
  }
}

void sub_23C23AF4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26)
{
  if (v26)
  {
    dispatch_group_leave(v26);
    dispatch_release(v26);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DALTrace::handleSleepTransitionToStreaming(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (!v3 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  v8 = *(a1 + 88);
  if (v8)
  {
    dispatch_retain(*(a1 + 88));
    dispatch_group_enter(v8);
  }

  v59 = 0xAAAAAAAAAAAAAAAALL;
  v60 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8DALTrace32handleSleepTransitionToStreamingEN8dispatch13group_sessionE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_72_2;
  aBlock[4] = a1;
  v55 = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v55);
  }

  v56 = *a2;
  if (v56)
  {
    dispatch_retain(v56);
    dispatch_group_enter(v56);
  }

  v57 = v5;
  v58 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = _Block_copy(aBlock);
  v10 = *(a1 + 24);
  if (v10)
  {
    dispatch_retain(*(a1 + 24));
  }

  v59 = v9;
  v60 = v10;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 1174405120;
  v45[2] = ___ZN8DALTrace32handleSleepTransitionToStreamingEN8dispatch13group_sessionE_block_invoke_73;
  v45[3] = &__block_descriptor_tmp_75;
  v45[4] = a1;
  group = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(group);
  }

  v11 = *a2;
  v47 = v11;
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(v47);
  }

  v48 = v5;
  v49 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v9)
  {
    v50 = _Block_copy(v9);
    v51 = v10;
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v50 = 0;
  v51 = v10;
  if (v10)
  {
LABEL_19:
    dispatch_retain(v10);
  }

LABEL_20:
  v12 = _Block_copy(v45);
  v13 = *(a1 + 24);
  if (v13)
  {
    dispatch_retain(*(a1 + 24));
  }

  v52 = v12;
  v53 = v13;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 1174405120;
  v36[2] = ___ZN8DALTrace32handleSleepTransitionToStreamingEN8dispatch13group_sessionE_block_invoke_76;
  v36[3] = &__block_descriptor_tmp_80_0;
  v36[4] = a1;
  v37 = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v37);
  }

  v14 = *a2;
  v38 = v14;
  if (v14)
  {
    dispatch_retain(v14);
    dispatch_group_enter(v38);
  }

  v39 = v5;
  v40 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v12)
  {
    v41 = _Block_copy(v12);
    v42 = v13;
    if (!v13)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v41 = 0;
  v42 = v13;
  if (v13)
  {
LABEL_28:
    dispatch_retain(v13);
  }

LABEL_29:
  v22 = v9;
  v15 = _Block_copy(v36);
  v16 = *(a1 + 24);
  if (v16)
  {
    dispatch_retain(*(a1 + 24));
  }

  v43 = v15;
  v44 = v16;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  object = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 1174405120;
  v27[2] = ___ZN8DALTrace32handleSleepTransitionToStreamingEN8dispatch13group_sessionE_block_invoke_81;
  v27[3] = &__block_descriptor_tmp_85;
  v27[4] = a1;
  v28 = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v28);
  }

  v17 = *a2;
  v29 = v17;
  if (v17)
  {
    dispatch_retain(v17);
    dispatch_group_enter(v29);
  }

  v30 = v5;
  v31 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v12)
  {
    v32 = _Block_copy(v12);
    v33 = v13;
    if (!v13)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v32 = 0;
  v33 = v13;
  if (v13)
  {
LABEL_37:
    dispatch_retain(v13);
  }

LABEL_38:
  v18 = _Block_copy(v27);
  v19 = *(a1 + 24);
  if (v19)
  {
    dispatch_retain(*(a1 + 24));
  }

  v34 = v18;
  object = v19;
  if (*(a1 + 200) == 1)
  {
    if (v18)
    {
      v20 = _Block_copy(v18);
      v19 = object;
      v25 = v20;
      v26 = object;
      if (!object)
      {
LABEL_44:
        DALTrace::triggerLogFlush_sync(a1, &v25, 18);
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
      v26 = v19;
      if (!v19)
      {
        goto LABEL_44;
      }
    }

    dispatch_retain(v19);
    goto LABEL_44;
  }

  v21 = *(a1 + 232);
  if (!v15)
  {
    v23 = 0;
    v24 = v16;
    if (!v16)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v23 = _Block_copy(v15);
  v24 = v16;
  if (v16)
  {
LABEL_50:
    dispatch_retain(v16);
  }

LABEL_51:
  DALTrace::setLogMode_sync(a1, v21, 1, &v23, 18);
  if (v24)
  {
    dispatch_release(v24);
  }

  if (v23)
  {
    _Block_release(v23);
  }

LABEL_55:
  if (object)
  {
    dispatch_release(object);
  }

  if (v34)
  {
    _Block_release(v34);
  }

  if (v33)
  {
    dispatch_release(v33);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  if (v29)
  {
    dispatch_group_leave(v29);
    if (v29)
    {
      dispatch_release(v29);
    }
  }

  if (v28)
  {
    dispatch_group_leave(v28);
    if (v28)
    {
      dispatch_release(v28);
    }
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (v42)
  {
    dispatch_release(v42);
  }

  if (v41)
  {
    _Block_release(v41);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  if (v38)
  {
    dispatch_group_leave(v38);
    if (v38)
    {
      dispatch_release(v38);
    }
  }

  if (v37)
  {
    dispatch_group_leave(v37);
    if (v37)
    {
      dispatch_release(v37);
    }
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v51)
  {
    dispatch_release(v51);
  }

  if (v50)
  {
    _Block_release(v50);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  if (v47)
  {
    dispatch_group_leave(v47);
    if (v47)
    {
      dispatch_release(v47);
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

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  if (v58)
  {
    std::__shared_weak_count::__release_weak(v58);
  }

  if (v56)
  {
    dispatch_group_leave(v56);
    if (v56)
    {
      dispatch_release(v56);
    }
  }

  if (v55)
  {
    dispatch_group_leave(v55);
    if (v55)
    {
      dispatch_release(v55);
    }
  }

  if (v8)
  {
    dispatch_group_leave(v8);
    dispatch_release(v8);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_23C23B668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, dispatch_group_t object, dispatch_group_t group, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, dispatch_group_t a32, dispatch_group_t a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, dispatch_group_t a45, dispatch_group_t a46, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a10);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a25);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a23);
  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
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

  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a38);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a36);
  if (a35)
  {
    std::__shared_weak_count::__release_weak(a35);
  }

  if (a33)
  {
    dispatch_group_leave(a33);
    if (a33)
    {
      dispatch_release(a33);
    }
  }

  if (a32)
  {
    dispatch_group_leave(a32);
    if (a32)
    {
      dispatch_release(a32);
    }
  }

  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v51 - 208);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a49);
  if (a48)
  {
    std::__shared_weak_count::__release_weak(a48);
  }

  if (a46)
  {
    dispatch_group_leave(a46);
    if (a46)
    {
      dispatch_release(a46);
    }
  }

  if (a45)
  {
    dispatch_group_leave(a45);
    if (a45)
    {
      dispatch_release(a45);
    }
  }

  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v51 - 120);
  v53 = *(v51 - 128);
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  v54 = *(v51 - 144);
  if (v54)
  {
    dispatch_group_leave(v54);
    v55 = *(v51 - 144);
    if (v55)
    {
      dispatch_release(v55);
    }
  }

  v56 = *(v51 - 152);
  if (v56)
  {
    dispatch_group_leave(v56);
    v57 = *(v51 - 152);
    if (v57)
    {
      dispatch_release(v57);
    }
  }

  if (v50)
  {
    dispatch_group_leave(v50);
    dispatch_release(v50);
  }

  std::__shared_weak_count::__release_weak(v49);
  _Unwind_Resume(a1);
}

void DALTrace::handleSleepTransitionToWrapping(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (!v3 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  v8 = *(a1 + 88);
  if (v8)
  {
    dispatch_retain(*(a1 + 88));
    dispatch_group_enter(v8);
  }

  v49 = 0xAAAAAAAAAAAAAAAALL;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8DALTrace31handleSleepTransitionToWrappingEN8dispatch13group_sessionE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_88_0;
  aBlock[4] = a1;
  v45 = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v45);
  }

  v46 = *a2;
  if (v46)
  {
    dispatch_retain(v46);
    dispatch_group_enter(v46);
  }

  v47 = v5;
  v48 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = _Block_copy(aBlock);
  v10 = *(a1 + 24);
  if (v10)
  {
    dispatch_retain(*(a1 + 24));
  }

  v49 = v9;
  v50 = v10;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 1174405120;
  v35[2] = ___ZN8DALTrace31handleSleepTransitionToWrappingEN8dispatch13group_sessionE_block_invoke_89;
  v35[3] = &__block_descriptor_tmp_92;
  v35[4] = a1;
  group = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(group);
  }

  v11 = *a2;
  v37 = v11;
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(v37);
  }

  v38 = v5;
  v39 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v9)
  {
    v40 = _Block_copy(v9);
    v41 = v10;
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v40 = 0;
  v41 = v10;
  if (v10)
  {
LABEL_19:
    dispatch_retain(v10);
  }

LABEL_20:
  v21 = v9;
  v12 = _Block_copy(v35);
  v13 = *(a1 + 24);
  if (v13)
  {
    dispatch_retain(*(a1 + 24));
  }

  v42 = v12;
  v43 = v13;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1174405120;
  v26[2] = ___ZN8DALTrace31handleSleepTransitionToWrappingEN8dispatch13group_sessionE_block_invoke_93;
  v26[3] = &__block_descriptor_tmp_97;
  v26[4] = a1;
  v27 = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v27);
  }

  v14 = *a2;
  v28 = v14;
  if (v14)
  {
    dispatch_retain(v14);
    dispatch_group_enter(v28);
  }

  v29 = v5;
  v30 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = v21;
  if (v21)
  {
    v15 = _Block_copy(v21);
  }

  v31 = v15;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v16 = _Block_copy(v26);
  v17 = *(a1 + 24);
  if (v17)
  {
    dispatch_retain(*(a1 + 24));
  }

  v33 = v16;
  v34 = v17;
  if (*(a1 + 200) == 2)
  {
    if (v16)
    {
      v18 = _Block_copy(v16);
      v24 = v18;
      v25 = v17;
      if (!v17)
      {
LABEL_36:
        DALTrace::triggerLogFlush_sync(a1, &v24, 18);
        if (v17)
        {
          dispatch_release(v17);
        }

        if (v18)
        {
          _Block_release(v18);
        }

        goto LABEL_47;
      }
    }

    else
    {
      v18 = 0;
      v24 = 0;
      v25 = v17;
      if (!v17)
      {
        goto LABEL_36;
      }
    }

    dispatch_retain(v17);
    goto LABEL_36;
  }

  v19 = *(a1 + 232);
  if (!v12)
  {
    v20 = 0;
    v22 = 0;
    v23 = v13;
    if (!v13)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v20 = _Block_copy(v12);
  v22 = v20;
  v23 = v13;
  if (v13)
  {
LABEL_42:
    dispatch_retain(v13);
  }

LABEL_43:
  DALTrace::setLogMode_sync(a1, v19, 1, &v22, 18);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v20)
  {
    _Block_release(v20);
  }

LABEL_47:
  if (v17)
  {
    dispatch_release(v17);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v31)
  {
    _Block_release(v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  if (v28)
  {
    dispatch_group_leave(v28);
    if (v28)
    {
      dispatch_release(v28);
    }
  }

  if (v27)
  {
    dispatch_group_leave(v27);
    if (v27)
    {
      dispatch_release(v27);
    }
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v41)
  {
    dispatch_release(v41);
  }

  if (v40)
  {
    _Block_release(v40);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  if (v37)
  {
    dispatch_group_leave(v37);
    if (v37)
    {
      dispatch_release(v37);
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

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  if (v46)
  {
    dispatch_group_leave(v46);
    if (v46)
    {
      dispatch_release(v46);
    }
  }

  if (v45)
  {
    dispatch_group_leave(v45);
    if (v45)
    {
      dispatch_release(v45);
    }
  }

  if (v8)
  {
    dispatch_group_leave(v8);
    dispatch_release(v8);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_23C23BD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_group_t object, dispatch_group_t group, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, dispatch_group_t a33, dispatch_group_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a11);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a26);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a24);
  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
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

  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v39 - 208);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a37);
  if (a36)
  {
    std::__shared_weak_count::__release_weak(a36);
  }

  if (a34)
  {
    dispatch_group_leave(a34);
    if (a34)
    {
      dispatch_release(a34);
    }
  }

  if (a33)
  {
    dispatch_group_leave(a33);
    if (a33)
    {
      dispatch_release(a33);
    }
  }

  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v39 - 120);
  v41 = *(v39 - 128);
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *(v39 - 144);
  if (v42)
  {
    dispatch_group_leave(v42);
    v43 = *(v39 - 144);
    if (v43)
    {
      dispatch_release(v43);
    }
  }

  v44 = *(v39 - 152);
  if (v44)
  {
    dispatch_group_leave(v44);
    v45 = *(v39 - 152);
    if (v45)
    {
      dispatch_release(v45);
    }
  }

  if (v38)
  {
    dispatch_group_leave(v38);
    dispatch_release(v38);
  }

  std::__shared_weak_count::__release_weak(v37);
  _Unwind_Resume(a1);
}

void DALTrace::handleSleepTransitionToDisabled(uint64_t a1, NSObject **a2)
{
  v3 = *(a1 + 16);
  if (!v3 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  v8 = *(a1 + 88);
  if (v8)
  {
    dispatch_retain(*(a1 + 88));
    dispatch_group_enter(v8);
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8DALTrace31handleSleepTransitionToDisabledEN8dispatch13group_sessionE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_100_2;
  aBlock[4] = a1;
  group = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(group);
  }

  v9 = *a2;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(object);
  }

  v19 = v5;
  v20 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 24);
  if (v11)
  {
    dispatch_retain(*(a1 + 24));
  }

  v21 = v10;
  v22 = v11;
  v12 = *(a1 + 232);
  if (v10)
  {
    v13 = _Block_copy(v10);
    v14 = v13;
    v15 = v11;
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 = 0;
  v14 = 0;
  v15 = v11;
  if (v11)
  {
LABEL_15:
    dispatch_retain(v11);
  }

LABEL_16:
  DALTrace::setLogMode_sync(a1, v12, 1, &v14, 18);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
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

  std::__shared_weak_count::__release_weak(v7);
}

void sub_23C23C104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t object, dispatch_group_t group, uint64_t a19, std::__shared_weak_count *a20)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a10);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v22 - 80);
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

  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  if (v21)
  {
    dispatch_group_leave(v21);
    dispatch_release(v21);
  }

  std::__shared_weak_count::__release_weak(v20);
  _Unwind_Resume(a1);
}

void ___ZN8DALTrace19setLPMHandlers_syncEN8dispatch5groupE_block_invoke_62(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Low power exit event received", buf, 2u);
  }

  if (*(v1 + 152) && (v9 = 0, LOBYTE(v8) = 0, Timestamp::Timestamp(v6), abm::trace::TraceInfo::push(), std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v6, v7), v9 < 0))
  {
    operator delete(v8);
    v3 = *(v1 + 200);
    if (v3)
    {
LABEL_6:
      if (v3 == 2)
      {
        DALTrace::handleWakeTransistionToWrapping_sync(v1);
      }

      else if (v3 == 1)
      {
        DALTrace::handleWakeTransistionToStreaming_sync(v1);
      }

      else
      {
        v4 = *(v1 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_ERROR, "Exiting sleep: reacing Unkown state", buf, 2u);
        }
      }

      return;
    }
  }

  else
  {
    v3 = *(v1 + 200);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  v5 = *(v1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I trace collection is disabled, no action is needed", buf, 2u);
  }
}

void sub_23C23C354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a21, a22);
      if ((*(v22 - 33) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a21, a22);
  if ((*(v22 - 33) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v22 - 56));
  _Unwind_Resume(a1);
}

void DALTrace::handleWakeTransistionToStreaming_sync(DALTrace *this)
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

  v6 = *(this + 11);
  if (v6)
  {
    dispatch_retain(*(this + 11));
    dispatch_group_enter(v6);
  }

  v68 = 0xAAAAAAAAAAAAAAAALL;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8DALTrace37handleWakeTransistionToStreaming_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_104;
  aBlock[4] = this;
  v65 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v65);
  }

  v66 = v3;
  v67 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v7 = _Block_copy(aBlock);
  v8 = *(this + 3);
  if (v8)
  {
    dispatch_retain(*(this + 3));
  }

  v68 = v7;
  v69 = v8;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 1174405120;
  v56[2] = ___ZN8DALTrace37handleWakeTransistionToStreaming_syncEv_block_invoke_105;
  v56[3] = &__block_descriptor_tmp_109;
  v56[4] = this;
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  v58 = v3;
  v59 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v7)
  {
    v60 = _Block_copy(v7);
    v61 = v8;
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v60 = 0;
  v61 = v8;
  if (v8)
  {
LABEL_15:
    dispatch_retain(v8);
  }

LABEL_16:
  v9 = _Block_copy(v56);
  v10 = *(this + 3);
  if (v10)
  {
    dispatch_retain(*(this + 3));
  }

  v62 = v9;
  v63 = v10;
  v54 = 0xAAAAAAAAAAAAAAAALL;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 1174405120;
  v48[2] = ___ZN8DALTrace37handleWakeTransistionToStreaming_syncEv_block_invoke_110;
  v48[3] = &__block_descriptor_tmp_114;
  v48[4] = this;
  v49 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v49);
  }

  v50 = v3;
  v51 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v9)
  {
    v52 = _Block_copy(v9);
    v53 = v10;
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v52 = 0;
  v53 = v10;
  if (v10)
  {
LABEL_22:
    dispatch_retain(v10);
  }

LABEL_23:
  v11 = _Block_copy(v48);
  v12 = *(this + 3);
  if (v12)
  {
    dispatch_retain(*(this + 3));
  }

  v54 = v11;
  v55 = v12;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 1174405120;
  v40[2] = ___ZN8DALTrace37handleWakeTransistionToStreaming_syncEv_block_invoke_115;
  v40[3] = &__block_descriptor_tmp_119;
  v40[4] = this;
  v41 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v41);
  }

  v42 = v3;
  v43 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v9)
  {
    v44 = _Block_copy(v9);
    object = v10;
    if (!v10)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v44 = 0;
  object = v10;
  if (v10)
  {
LABEL_29:
    dispatch_retain(v10);
  }

LABEL_30:
  v13 = _Block_copy(v40);
  v14 = *(this + 3);
  if (v14)
  {
    dispatch_retain(*(this + 3));
  }

  v46 = v13;
  v47 = v14;
  v15 = *(this + 58);
  if (v15)
  {
    if (v15 == 1)
    {
      goto LABEL_34;
    }

    goto LABEL_49;
  }

  if (DALTrace::startTraceReader_sync(this))
  {
    if (*(this + 58) == 1)
    {
LABEL_34:
      if (v13)
      {
        v16 = _Block_copy(v13);
        v32 = v16;
        v33 = v14;
        if (!v14)
        {
LABEL_37:
          DALTrace::triggerLogFlush_sync(this, &v32, 18);
          if (v14)
          {
            dispatch_release(v14);
          }

          if (v16)
          {
            _Block_release(v16);
          }

          goto LABEL_56;
        }
      }

      else
      {
        v16 = 0;
        v32 = 0;
        v33 = v14;
        if (!v14)
        {
          goto LABEL_37;
        }
      }

      dispatch_retain(v14);
      goto LABEL_37;
    }

LABEL_49:
    v17 = *(this + 50);
    if (v11)
    {
      v18 = _Block_copy(v11);
      v30 = v18;
      v31 = v12;
      if (!v12)
      {
LABEL_52:
        DALTrace::setLogMode_sync(this, v17, 1, &v30, 18);
        if (v12)
        {
          dispatch_release(v12);
        }

        if (v18)
        {
          _Block_release(v18);
        }

LABEL_56:
        if (!v14)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v18 = 0;
      v30 = 0;
      v31 = v12;
      if (!v12)
      {
        goto LABEL_52;
      }
    }

    dispatch_retain(v12);
    goto LABEL_52;
  }

  v19 = *(this + 5);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_ERROR, "Failed to open transport", buf, 2u);
  }

  *buf = operator new(0x30uLL);
  v39 = xmmword_23C32DBF0;
  strcpy(*buf, "Failed to open transport during ap sleep");
  v20 = *MEMORY[0x277CECC38];
  v21 = strlen(*MEMORY[0x277CECC38]);
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

    p_dst = operator new(v24);
    *(&__dst + 1) = v22;
    v37 = v24 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_121;
  }

  HIBYTE(v37) = v21;
  p_dst = &__dst;
  if (v21)
  {
LABEL_121:
    memmove(p_dst, v20, v22);
  }

  *(p_dst + v22) = 0;
  v25 = *MEMORY[0x277CECD60];
  v26 = strlen(*MEMORY[0x277CECD60]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    p_p = operator new(v29);
    *(&__p + 1) = v27;
    v35 = v29 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_130;
  }

  HIBYTE(v35) = v26;
  p_p = &__p;
  if (v26)
  {
LABEL_130:
    memmove(p_p, v25, v27);
  }

  *(p_p + v27) = 0;
  DALTrace::doErrorHandling(this, buf, &__dst, &__p);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
LABEL_133:
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_138;
    }
  }

  else if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_133;
  }

  operator delete(__dst);
  if ((SHIBYTE(v39) & 0x80000000) == 0)
  {
LABEL_134:
    v14 = v47;
    if (!v47)
    {
      goto LABEL_58;
    }

LABEL_57:
    dispatch_release(v14);
    goto LABEL_58;
  }

LABEL_138:
  operator delete(*buf);
  v14 = v47;
  if (v47)
  {
    goto LABEL_57;
  }

LABEL_58:
  if (v46)
  {
    _Block_release(v46);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v44)
  {
    _Block_release(v44);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  if (v41)
  {
    dispatch_group_leave(v41);
    if (v41)
    {
      dispatch_release(v41);
    }
  }

  if (v55)
  {
    dispatch_release(v55);
  }

  if (v54)
  {
    _Block_release(v54);
  }

  if (v53)
  {
    dispatch_release(v53);
  }

  if (v52)
  {
    _Block_release(v52);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_weak(v51);
  }

  if (v49)
  {
    dispatch_group_leave(v49);
    if (v49)
    {
      dispatch_release(v49);
    }
  }

  if (v63)
  {
    dispatch_release(v63);
  }

  if (v62)
  {
    _Block_release(v62);
  }

  if (v61)
  {
    dispatch_release(v61);
  }

  if (v60)
  {
    _Block_release(v60);
  }

  if (v59)
  {
    std::__shared_weak_count::__release_weak(v59);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v69)
  {
    dispatch_release(v69);
  }

  if (v68)
  {
    _Block_release(v68);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_weak(v67);
  }

  if (v65)
  {
    dispatch_group_leave(v65);
    if (v65)
    {
      dispatch_release(v65);
    }
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_23C23CB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, dispatch_group_t group, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, dispatch_group_t object, uint64_t a49, std::__shared_weak_count *a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, dispatch_group_t a60, uint64_t a61, std::__shared_weak_count *a62, uint64_t a63)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if (a24 < 0)
    {
LABEL_5:
      operator delete(a19);
      if (a30 < 0)
      {
LABEL_8:
        operator delete(a25);
        dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a41);
        dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v65 + 64);
        v69 = a38;
        if (a38)
        {
LABEL_13:
          std::__shared_weak_count::__release_weak(v69);
          v70 = group;
          if (!group)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

LABEL_11:
        v70 = group;
        if (!group)
        {
LABEL_15:
          dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a53);
          dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v66 + 64);
          if (a50)
          {
            std::__shared_weak_count::__release_weak(a50);
          }

          if (object)
          {
            dispatch_group_leave(object);
            if (object)
            {
              dispatch_release(object);
            }
          }

          dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v67 - 200);
          dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a63);
          if (a62)
          {
            std::__shared_weak_count::__release_weak(a62);
          }

          if (a60)
          {
            dispatch_group_leave(a60);
            if (a60)
            {
              dispatch_release(a60);
            }
          }

          dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v67 - 120);
          v71 = *(v67 - 128);
          if (v71)
          {
            std::__shared_weak_count::__release_weak(v71);
          }

          v72 = *(v67 - 144);
          if (v72)
          {
            dispatch_group_leave(v72);
            v73 = *(v67 - 144);
            if (v73)
            {
              dispatch_release(v73);
            }
          }

          if (v64)
          {
            dispatch_group_leave(v64);
            dispatch_release(v64);
          }

          std::__shared_weak_count::__release_weak(v63);
          _Unwind_Resume(a1);
        }

LABEL_14:
        dispatch_group_leave(v70);
        dispatch_release(group);
        goto LABEL_15;
      }

LABEL_10:
      dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a41);
      dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v65 + 64);
      v69 = a38;
      if (a38)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else if (a24 < 0)
  {
    goto LABEL_5;
  }

  if (a30 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

void DALTrace::handleWakeTransistionToWrapping_sync(DALTrace *this)
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

  v6 = *(this + 11);
  if (v6)
  {
    dispatch_retain(*(this + 11));
    dispatch_group_enter(v6);
  }

  v72 = 0xAAAAAAAAAAAAAAAALL;
  v73 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8DALTrace36handleWakeTransistionToWrapping_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_123_1;
  aBlock[4] = this;
  v69 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v69);
  }

  v70 = v3;
  v71 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v7 = _Block_copy(aBlock);
  v8 = *(this + 3);
  if (v8)
  {
    dispatch_retain(*(this + 3));
  }

  v72 = v7;
  v73 = v8;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 1174405120;
  v60[2] = ___ZN8DALTrace36handleWakeTransistionToWrapping_syncEv_block_invoke_124;
  v60[3] = &__block_descriptor_tmp_127_0;
  v60[4] = this;
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  v62 = v3;
  v63 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v7)
  {
    v64 = _Block_copy(v7);
    v65 = v8;
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v64 = 0;
  v65 = v8;
  if (v8)
  {
LABEL_15:
    dispatch_retain(v8);
  }

LABEL_16:
  v9 = _Block_copy(v60);
  v10 = *(this + 3);
  if (v10)
  {
    dispatch_retain(*(this + 3));
  }

  v66 = v9;
  v67 = v10;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  v59 = 0xAAAAAAAAAAAAAAAALL;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 1174405120;
  v52[2] = ___ZN8DALTrace36handleWakeTransistionToWrapping_syncEv_block_invoke_128;
  v52[3] = &__block_descriptor_tmp_132;
  v52[4] = this;
  v53 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v53);
  }

  v54 = v3;
  v55 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v9)
  {
    v56 = _Block_copy(v9);
    v57 = v10;
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v56 = 0;
  v57 = v10;
  if (v10)
  {
LABEL_22:
    dispatch_retain(v10);
  }

LABEL_23:
  v11 = _Block_copy(v52);
  v12 = *(this + 3);
  if (v12)
  {
    dispatch_retain(*(this + 3));
  }

  v58 = v11;
  v59 = v12;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 1174405120;
  v44[2] = ___ZN8DALTrace36handleWakeTransistionToWrapping_syncEv_block_invoke_133;
  v44[3] = &__block_descriptor_tmp_137_0;
  v44[4] = this;
  v45 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v45);
  }

  v46 = v3;
  v47 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v7)
  {
    v48 = _Block_copy(v7);
    object = v8;
    if (!v8)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v48 = 0;
  object = v8;
  if (v8)
  {
LABEL_29:
    dispatch_retain(v8);
  }

LABEL_30:
  v13 = _Block_copy(v44);
  v14 = *(this + 3);
  if (v14)
  {
    dispatch_retain(*(this + 3));
  }

  v50 = v13;
  v51 = v14;
  v15 = *(this + 58);
  if (v15)
  {
LABEL_33:
    if (v15 != 2)
    {
      if (v15 != 1)
      {
        goto LABEL_88;
      }

      v16 = *(this + 50);
      if (v9)
      {
        v17 = _Block_copy(v9);
        v36 = v17;
        v37 = v10;
        if (!v10)
        {
LABEL_38:
          DALTrace::setLogMode_sync(this, v16, 1, &v36, 18);
          if (v10)
          {
            dispatch_release(v10);
          }

          if (v17)
          {
            _Block_release(v17);
          }

          goto LABEL_88;
        }
      }

      else
      {
        v17 = 0;
        v36 = 0;
        v37 = v10;
        if (!v10)
        {
          goto LABEL_38;
        }
      }

      dispatch_retain(v10);
      goto LABEL_38;
    }

    if (v13)
    {
      v20 = _Block_copy(v13);
      v34 = v20;
      v35 = v14;
      if (!v14)
      {
LABEL_60:
        DALTrace::triggerLogFlush_sync(this, &v34, 18);
        if (v14)
        {
          dispatch_release(v14);
        }

        if (v20)
        {
          _Block_release(v20);
        }

        goto LABEL_88;
      }
    }

    else
    {
      v20 = 0;
      v34 = 0;
      v35 = v14;
      if (!v14)
      {
        goto LABEL_60;
      }
    }

    dispatch_retain(v14);
    goto LABEL_60;
  }

  if ((DALTrace::startTraceReader_sync(this) & 1) == 0)
  {
    v21 = *(this + 5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_ERROR, "Failed to open transport", buf, 2u);
    }

    *buf = operator new(0x20uLL);
    v43 = xmmword_23C32C5A0;
    strcpy(*buf, "Failed to open transport");
    v22 = *MEMORY[0x277CECC38];
    v23 = strlen(*MEMORY[0x277CECC38]);
    if (v23 > 0x7FFFFFFFFFFFFFF7)
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

      p_dst = operator new(v26);
      *(&__dst + 1) = v24;
      v41 = v26 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v41) = v23;
      p_dst = &__dst;
      if (!v23)
      {
LABEL_75:
        *(p_dst + v24) = 0;
        v27 = *MEMORY[0x277CECD60];
        v28 = strlen(*MEMORY[0x277CECD60]);
        if (v28 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v29 = v28;
        if (v28 >= 0x17)
        {
          if ((v28 | 7) == 0x17)
          {
            v31 = 25;
          }

          else
          {
            v31 = (v28 | 7) + 1;
          }

          p_p = operator new(v31);
          *(&__p + 1) = v29;
          v39 = v31 | 0x8000000000000000;
          *&__p = p_p;
        }

        else
        {
          HIBYTE(v39) = v28;
          p_p = &__p;
          if (!v28)
          {
LABEL_84:
            p_p[v29] = 0;
            DALTrace::doErrorHandling(this, buf, &__dst, &__p);
            if (SHIBYTE(v39) < 0)
            {
              operator delete(__p);
              if ((SHIBYTE(v41) & 0x80000000) == 0)
              {
LABEL_86:
                if ((SHIBYTE(v43) & 0x80000000) == 0)
                {
LABEL_87:
                  v14 = v51;
                  goto LABEL_88;
                }

LABEL_147:
                operator delete(*buf);
                goto LABEL_87;
              }
            }

            else if ((SHIBYTE(v41) & 0x80000000) == 0)
            {
              goto LABEL_86;
            }

            operator delete(__dst);
            if ((SHIBYTE(v43) & 0x80000000) == 0)
            {
              goto LABEL_87;
            }

            goto LABEL_147;
          }
        }

        memmove(p_p, v27, v29);
        goto LABEL_84;
      }
    }

    memmove(p_dst, v22, v24);
    goto LABEL_75;
  }

  v15 = *(this + 58);
  if (v15)
  {
    goto LABEL_33;
  }

  v18 = *(this + 50);
  if (!v9)
  {
    v19 = 0;
    v32 = 0;
    v33 = v10;
    if (!v10)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v19 = _Block_copy(v9);
  v32 = v19;
  v33 = v10;
  if (v10)
  {
LABEL_52:
    dispatch_retain(v10);
  }

LABEL_53:
  DALTrace::setLogMode_sync(this, v18, 0, &v32, 10);
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v19)
  {
    _Block_release(v19);
  }

LABEL_88:
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v50)
  {
    _Block_release(v50);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v48)
  {
    _Block_release(v48);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  if (v45)
  {
    dispatch_group_leave(v45);
    if (v45)
    {
      dispatch_release(v45);
    }
  }

  if (v59)
  {
    dispatch_release(v59);
  }

  if (v58)
  {
    _Block_release(v58);
  }

  if (v57)
  {
    dispatch_release(v57);
  }

  if (v56)
  {
    _Block_release(v56);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  if (v53)
  {
    dispatch_group_leave(v53);
    if (v53)
    {
      dispatch_release(v53);
    }
  }

  if (v67)
  {
    dispatch_release(v67);
  }

  if (v66)
  {
    _Block_release(v66);
  }

  if (v65)
  {
    dispatch_release(v65);
  }

  if (v64)
  {
    _Block_release(v64);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v73)
  {
    dispatch_release(v73);
  }

  if (v72)
  {
    _Block_release(v72);
  }

  if (v71)
  {
    std::__shared_weak_count::__release_weak(v71);
  }

  if (v69)
  {
    dispatch_group_leave(v69);
    if (v69)
    {
      dispatch_release(v69);
    }
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_23C23D5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, NSObject *group, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, dispatch_group_t object, uint64_t a51, std::__shared_weak_count *a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, dispatch_group_t a62, uint64_t a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if (a26 < 0)
    {
LABEL_5:
      operator delete(a21);
      if (a32 < 0)
      {
LABEL_10:
        operator delete(a27);
        dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a43);
        dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v67 + 64);
        v71 = a40;
        if (a40)
        {
LABEL_7:
          std::__shared_weak_count::__release_weak(v71);
          v70 = group;
          if (!group)
          {
            goto LABEL_16;
          }

LABEL_14:
          dispatch_group_leave(v70);
          dispatch_release(group);
LABEL_16:
          dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a55);
          dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a53);
          if (a52)
          {
            std::__shared_weak_count::__release_weak(a52);
          }

          if (object)
          {
            dispatch_group_leave(object);
            if (object)
            {
              dispatch_release(object);
            }
          }

          dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v68 - 200);
          dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a65);
          if (a64)
          {
            std::__shared_weak_count::__release_weak(a64);
          }

          if (a62)
          {
            dispatch_group_leave(a62);
            if (a62)
            {
              dispatch_release(a62);
            }
          }

          dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v68 - 120);
          v72 = *(v68 - 128);
          if (v72)
          {
            std::__shared_weak_count::__release_weak(v72);
          }

          v73 = *(v68 - 144);
          if (v73)
          {
            dispatch_group_leave(v73);
            v74 = *(v68 - 144);
            if (v74)
            {
              dispatch_release(v74);
            }
          }

          if (v66)
          {
            dispatch_group_leave(v66);
            dispatch_release(v66);
          }

          std::__shared_weak_count::__release_weak(v65);
          _Unwind_Resume(a1);
        }

LABEL_13:
        v70 = group;
        if (!group)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }

LABEL_12:
      dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a43);
      dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v67 + 64);
      v71 = a40;
      if (a40)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if (a26 < 0)
  {
    goto LABEL_5;
  }

  if (a32 < 0)
  {
    goto LABEL_10;
  }

  goto LABEL_12;
}