void CoredumpTrace::snapshot_sync(CoredumpTrace *this, uint64_t a2, const __CFDictionary **a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(this + 143) < 0)
  {
    **(this + 15) = 0;
    *(this + 16) = 0;
    if (CoredumpTrace::createScratchPath_sync(this))
    {
LABEL_3:
      v30[0] = 0xAAAAAAAAAAAAAAAALL;
      v30[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v30, *a3);
      memset(&__p, 170, sizeof(__p));
      HIBYTE(buf.st_gid) = 0;
      LOBYTE(buf.st_dev) = 0;
      ctu::cf::MakeCFString::MakeCFString(&object, "kKeyTraceDumpStateReason");
      ctu::cf::map_adapter::getString();
      MEMORY[0x23EECD8F0](&object);
      if (SHIBYTE(buf.st_gid) < 0)
      {
        operator delete(*&buf.st_dev);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        v28 = __p;
        goto LABEL_11;
      }

      std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
LABEL_11:
      v6 = (*(*this + 152))(this, &v28);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        v7 = v6;
        operator delete(v28.__r_.__value_.__l.__data_);
        if (v7)
        {
          goto LABEL_17;
        }
      }

      else if (v6)
      {
LABEL_17:
        v9 = (*(*this + 160))(this);
        if (v9 && *(this + 200) == 1)
        {
          *(this + 200) = 0;
          CoredumpTrace::cleanCrashReport_sync(this);
          object = 0xAAAAAAAAAAAAAAAALL;
          object = xpc_null_create();
          v27 = xpc_null_create();
          v10 = *(this + 5);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = (this + 144);
            if (*(this + 167) < 0)
            {
              v11 = *v11;
            }

            buf.st_dev = 136315138;
            *&buf.st_mode = v11;
            _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Looking for crash report file: %s", &buf, 0xCu);
          }

          v12 = *(this + 18);
          v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v13.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&buf.st_blksize = v13;
          *buf.st_qspare = v13;
          buf.st_birthtimespec = v13;
          *&buf.st_size = v13;
          buf.st_mtimespec = v13;
          buf.st_ctimespec = v13;
          buf.st_atimespec = v13;
          *&buf.st_dev = v13;
          *&buf.st_uid = v13;
          if (*(this + 167) >= 0)
          {
            v14 = this + 144;
          }

          else
          {
            v14 = v12;
          }

          if (!stat(v14, &buf))
          {
            util::createDictFromJSONFile(this + 18, &buf);
            v15 = *&buf.st_dev;
            *&buf.st_dev = xpc_null_create();
            v16 = object;
            object = v15;
            xpc_release(v16);
            xpc_release(*&buf.st_dev);
            if (MEMORY[0x23EECEE80](object) == MEMORY[0x277D86468])
            {
              *&buf.st_dev = &object;
              buf.st_ino = "bb_state";
              xpc::dict::object_proxy::operator xpc::dict(&buf, &v26);
              v17 = v26;
              v26 = xpc_null_create();
              v18 = v27;
              v27 = v17;
              xpc_release(v18);
              xpc_release(v26);
            }
          }

          v26 = 0xAAAAAAAAAAAAAAAALL;
          (*(*this + 168))(&v26, this, &object);
          CoredumpTrace::storeCrashReason_sync(this, &v26);
          CoredumpTrace::submitCrashReason_sync(this, &v26);
          v19 = (*(*this + 184))(this, &v26, &v27);
          if (capabilities::abs::supportsLCDM(v19))
          {
            memset(&buf, 170, 24);
            CoredumpTrace::loadCrashContext_sync(this, &buf);
            v20 = *&buf.st_dev;
            if (buf.st_ino != *&buf.st_dev)
            {
              CoredumpTrace::storeCrashContext_sync(this, &buf);
            }

            if (v20)
            {
              operator delete(v20);
            }
          }

          xpc_release(v26);
          xpc_release(v27);
          xpc_release(object);
        }

        if ((*(this + 112) & 1) != 0 || !capabilities::trace::supportsCoredumpCrashReasonOnCustomerBuild(v9))
        {
          v23 = *a3;
          v25 = v23;
          if (v23)
          {
            CFRetain(v23);
          }

          CoredumpTrace::moveToSnapshotPath_sync(this, &v25);
          if (v23)
          {
            CFRelease(v23);
          }
        }

        else
        {
          v21 = (this + 120);
          if (!support::fs::removeDirContents(this + 120, 0) || !support::fs::removeDir(this + 120))
          {
            v22 = *(this + 5);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              if (*(this + 143) < 0)
              {
                v21 = *v21;
              }

              buf.st_dev = 136315138;
              *&buf.st_mode = v21;
              _os_log_error_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_ERROR, "Failed to clean up scratch path %s", &buf, 0xCu);
            }
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MEMORY[0x23EECD940](v30);
        goto LABEL_50;
      }

      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.st_dev) = 0;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to crash baseband, continuing with coredump anyway (coredump may be invalid)", &buf, 2u);
      }

      goto LABEL_17;
    }
  }

  else
  {
    *(this + 120) = 0;
    *(this + 143) = 0;
    if (CoredumpTrace::createScratchPath_sync(this))
    {
      goto LABEL_3;
    }
  }

  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.st_dev) = 0;
    _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, "Failed to create scratch path", &buf, 2u);
  }

LABEL_50:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_23C26177C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t a11, xpc_object_t object, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, xpc_object_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CoredumpTrace::cleanCrashReport_sync(CoredumpTrace *this)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  v2 = this + 144;
  support::fs::loadFile(this + 18, &__p);
  memset(__dst, 170, sizeof(__dst));
  v3 = __p;
  v4 = v19 - __p;
  if ((v19 - __p) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v4 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    __dst[2] = (v6 | 0x8000000000000000);
    __dst[0] = v5;
    goto LABEL_9;
  }

  HIBYTE(__dst[2]) = v19 - __p;
  v5 = __dst;
  if (v19 != __p)
  {
LABEL_9:
    memmove(v5, v3, v4);
  }

  *(v5 + v4) = 0;
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) >= 0)
  {
    v8 = HIBYTE(__dst[2]);
  }

  else
  {
    v8 = __dst[1];
  }

  if (v8)
  {
    v9 = MEMORY[0x277D85DE0];
    do
    {
      v10 = *v7;
      if ((v10 & 0x80000000) != 0)
      {
        if (!__maskrune(*v7, 0x40000uLL))
        {
          v11 = __maskrune(v10, 0x4000uLL);
LABEL_24:
          if (!v11)
          {
            *v7 = 32;
          }
        }
      }

      else if ((*(v9 + 4 * v10 + 60) & 0x40000) == 0)
      {
        v11 = *(v9 + 4 * v10 + 60) & 0x4000;
        goto LABEL_24;
      }

      v7 = (v7 + 1);
      --v8;
    }

    while (v8);
  }

  if (*(this + 167) >= 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = *(this + 18);
  }

  v13 = open(v12, 1537, 420);
  if ((v13 & 0x80000000) == 0)
  {
    if (SHIBYTE(__dst[2]) >= 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if (SHIBYTE(__dst[2]) >= 0)
    {
      v15 = HIBYTE(__dst[2]);
    }

    else
    {
      v15 = __dst[1];
    }

    do
    {
      if (!v15)
      {
        break;
      }

      v16 = write(v13, v14, v15);
      v15 -= v16;
      v14 = (v14 + v16);
    }

    while ((v16 & 0x8000000000000000) == 0);
      ;
    }
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_23C261A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    v19 = a17;
    if (!a17)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v19 = a17;
    if (!a17)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  _Unwind_Resume(exception_object);
}

void CoredumpTrace::loadCrashContext_sync(CoredumpTrace *this@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (this + 168);
    if (*(this + 191) < 0)
    {
      v5 = *v5;
    }

    v18.st_dev = 136315138;
    *&v18.st_mode = v5;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Looking for crash context file: %s", &v18, 0xCu);
  }

  v7 = (this + 168);
  v6 = *(this + 21);
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v18.st_blksize = v8;
  *v18.st_qspare = v8;
  v18.st_birthtimespec = v8;
  *&v18.st_size = v8;
  v18.st_mtimespec = v8;
  v18.st_ctimespec = v8;
  *&v18.st_uid = v8;
  v18.st_atimespec = v8;
  *&v18.st_dev = v8;
  if (*(this + 191) >= 0)
  {
    v9 = this + 168;
  }

  else
  {
    v9 = v6;
  }

  v10 = stat(v9, &v18);
  v11 = *(this + 5);
  if (!v10)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18.st_dev) = 0;
      _os_log_debug_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEBUG, "#D Found crash context file", &v18, 2u);
    }

    File = support::fs::loadFile(this + 168, a2);
    v11 = *(this + 5);
    if (File)
    {
      if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a2 + 8) - *a2;
        v18.st_dev = 134217984;
        *&v18.st_mode = v14;
        _os_log_debug_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEBUG, "#D Loaded crash context data from file (size = %zu bytes)", &v18, 0xCu);
        v15 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      if (*(this + 191) < 0)
      {
        v7 = *v7;
      }

      v18.st_dev = 136315138;
      *&v18.st_mode = v7;
      v12 = "Failed to load crash context file: %s";
      goto LABEL_23;
    }

LABEL_19:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    goto LABEL_19;
  }

  if (*(this + 191) < 0)
  {
    v7 = *v7;
  }

  v18.st_dev = 136315138;
  *&v18.st_mode = v7;
  v12 = "Crash context file not found: %s";
LABEL_23:
  _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, v12, &v18, 0xCu);
  v17 = *MEMORY[0x277D85DE8];
}

void sub_23C261D54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoredumpTrace::storeCrashContext_sync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v17 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 72);
      v16 = v7;
      if (v7)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v9 = *a2;
        v8 = *(a2 + 8);
        v10 = v8 - *a2;
        if (v8 == *a2)
        {
          v11 = 0;
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
          }

          v11 = operator new(v8 - *a2);
          v13 = v11;
          v15 = &v11[v10];
          memcpy(v11, v9, v10);
          v14 = &v11[v10];
        }

        v12[0] = 0;
        v12[1] = 0;
        abm::BasebandTracingTask::setLastCrashContext(v7, &v13, v12);
        if (v11)
        {
          v14 = v11;
          operator delete(v11);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_23C261EA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(int,xpc::dict)>::~callback(va);
  if (v2)
  {
    operator delete(v2);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

BOOL CoredumpTrace::moveToSnapshotPath_sync(uint64_t a1, const __CFDictionary **a2)
{
  v71 = *MEMORY[0x277D85DE8];
  memset(&v68, 0, sizeof(v68));
  v67[0] = 0xAAAAAAAAAAAAAAAALL;
  v67[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v67, *a2);
  memset(v66, 170, sizeof(v66));
  strcpy(&__p, "kTraceFilterActionNone");
  HIBYTE(__p.st_gid) = 22;
  ctu::cf::MakeCFString::MakeCFString(v65, "kKeyTraceFilterAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](v65);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  memset(v65, 170, sizeof(v65));
  v3 = *MEMORY[0x277CECB88];
  v4 = strlen(*MEMORY[0x277CECB88]);
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

    p_p = operator new(v7);
    __p.st_ino = v5;
    *&__p.st_uid = v7 | 0x8000000000000000;
    *&__p.st_dev = p_p;
    goto LABEL_11;
  }

  HIBYTE(__p.st_gid) = v4;
  p_p = &__p;
  if (v4)
  {
LABEL_11:
    memmove(p_p, v3, v5);
  }

  v8 = *MEMORY[0x277CECBB8];
  *(&p_p->st_dev + v5) = 0;
  ctu::cf::MakeCFString::MakeCFString(&__dst, v8);
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&__dst);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
    v9 = SHIBYTE(v66[2]);
    if ((SHIBYTE(v66[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if (v9 == 22)
      {
        v10 = v66;
        goto LABEL_19;
      }

LABEL_26:
      std::string::__assign_external(&v68, abm::trace::kTrashFolder[0]);
      v16 = 1;
      goto LABEL_27;
    }
  }

  else
  {
    v9 = SHIBYTE(v66[2]);
    if ((SHIBYTE(v66[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  if (v66[1] != 22)
  {
    goto LABEL_26;
  }

  v10 = v66[0];
LABEL_19:
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 14);
  if (v11 != *"kTraceFilterActionNone" || v12 != *"lterActionNone" || v13 != *"tionNone")
  {
    goto LABEL_26;
  }

  v38 = abm::trace::kSnapshotFolder[0];
  v39 = strlen(abm::trace::kSnapshotFolder[0]);
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

    p_dst = operator new(v42);
    __dst.__r_.__value_.__l.__size_ = v40;
    __dst.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v39;
    p_dst = &__dst;
    if (!v39)
    {
      goto LABEL_65;
    }
  }

  memmove(p_dst, v38, v40);
LABEL_65:
  p_dst->__r_.__value_.__s.__data_[v40] = 0;
  ctu::cf::MakeCFString::MakeCFString(&v62, "kKeyTraceDumpStatePath");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v62);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  *&v68.__r_.__value_.__l.__data_ = *&__p.st_dev;
  v68.__r_.__value_.__r.__words[2] = *&__p.st_uid;
  HIBYTE(__p.st_gid) = 0;
  LOBYTE(__p.st_dev) = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v16 = 0;
LABEL_27:
  v18 = (a1 + 120);
  v17 = *(a1 + 120);
  v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__p.st_blksize = v19;
  *__p.st_qspare = v19;
  __p.st_birthtimespec = v19;
  *&__p.st_size = v19;
  __p.st_mtimespec = v19;
  __p.st_ctimespec = v19;
  *&__p.st_uid = v19;
  __p.st_atimespec = v19;
  *&__p.st_dev = v19;
  if (*(a1 + 143) >= 0)
  {
    v20 = (a1 + 120);
  }

  else
  {
    v20 = v17;
  }

  if (!stat(v20, &__p))
  {
    v25 = *(a1 + 143) >= 0 ? (a1 + 120) : *(a1 + 120);
    v26 = opendir(v25);
    v27 = v26;
    if (v26)
    {
      v28 = readdir(v26);
      closedir(v27);
      if (v28)
      {
        memset(&__p, 170, 24);
        v29 = abm::trace::kLogDirPrefix[0];
        v30 = SHIBYTE(v68.__r_.__value_.__r.__words[2]);
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v68.__r_.__value_.__l.__size_;
        }

        v32 = strlen(abm::trace::kLogDirPrefix[0]);
        v33 = size + v32;
        if (size + v32 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v34 = v32;
        v61 = v16;
        if (v33 <= 0x16)
        {
          memset(&v62, 0, sizeof(v62));
          v36 = &v62;
          *(&v62.__r_.__value_.__s + 23) = size + v32;
          if (!size)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if ((v33 | 7) == 0x17)
          {
            v35 = 25;
          }

          else
          {
            v35 = (v33 | 7) + 1;
          }

          v36 = operator new(v35);
          v62.__r_.__value_.__l.__size_ = v33;
          v62.__r_.__value_.__r.__words[2] = v35 | 0x8000000000000000;
          v62.__r_.__value_.__r.__words[0] = v36;
          if (!size)
          {
LABEL_75:
            v44 = &v36[size];
            if (v34)
            {
              memmove(v44, v29, v34);
            }

            v44[v34] = 0;
            if (SHIBYTE(v65[2]) >= 0)
            {
              v45 = v65;
            }

            else
            {
              v45 = v65[0];
            }

            if (SHIBYTE(v65[2]) >= 0)
            {
              v46 = HIBYTE(v65[2]);
            }

            else
            {
              v46 = v65[1];
            }

            v47 = std::string::append(&v62, v45, v46);
            v48 = *&v47->__r_.__value_.__l.__data_;
            __dst.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
            *&__dst.__r_.__value_.__l.__data_ = v48;
            v47->__r_.__value_.__l.__size_ = 0;
            v47->__r_.__value_.__r.__words[2] = 0;
            v47->__r_.__value_.__r.__words[0] = 0;
            v49 = strlen(abm::trace::kCoreDumpSnapshotDirectorySuffix[0]);
            v50 = std::string::append(&__dst, abm::trace::kCoreDumpSnapshotDirectorySuffix[0], v49);
            v51 = *&v50->__r_.__value_.__l.__data_;
            v64 = v50->__r_.__value_.__r.__words[2];
            *v63 = v51;
            v50->__r_.__value_.__l.__size_ = 0;
            v50->__r_.__value_.__r.__words[2] = 0;
            v50->__r_.__value_.__r.__words[0] = 0;
            support::fs::createUniquePath(v63, &__p);
            if (SHIBYTE(v64) < 0)
            {
              operator delete(v63[0]);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_85:
                if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_86:
                  support::fs::createDir(&__p, 0x1EDu, 1);
                  CoredumpTrace::sanitizeScratchFolder(a1);
                  if (*(a1 + 143) >= 0)
                  {
                    v53 = (a1 + 120);
                  }

                  else
                  {
                    v53 = *(a1 + 120);
                  }

                  if ((__p.st_gid & 0x80000000) == 0)
                  {
                    v54 = &__p;
                  }

                  else
                  {
                    v54 = *&__p.st_dev;
                  }

                  rename(v53, v54, v52);
                  v22 = v55 == 0;
                  v56 = *(a1 + 40);
                  if (v55)
                  {
                    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                    {
                      v57 = &__p;
                      if ((__p.st_gid & 0x80000000) != 0)
                      {
                        v57 = *&__p.st_dev;
                      }

                      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                      *(__dst.__r_.__value_.__r.__words + 4) = v57;
                      _os_log_error_impl(&dword_23C1C4000, v56, OS_LOG_TYPE_ERROR, "Failed creating coredump snapshot path. snapshotUniquePath=[%s]", &__dst, 0xCu);
                    }
                  }

                  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
                  {
                    v58 = &__p;
                    if ((__p.st_gid & 0x80000000) != 0)
                    {
                      v58 = *&__p.st_dev;
                    }

                    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                    *(__dst.__r_.__value_.__r.__words + 4) = v58;
                    _os_log_impl(&dword_23C1C4000, v56, OS_LOG_TYPE_DEFAULT, "#I Coredump files are placed in path [%s]", &__dst, 0xCu);
                  }

                  if (v61)
                  {
                    v59 = *(a1 + 40);
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                    {
                      v60 = v66;
                      if (SHIBYTE(v66[2]) < 0)
                      {
                        v60 = v66[0];
                      }

                      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                      *(__dst.__r_.__value_.__r.__words + 4) = v60;
                      _os_log_impl(&dword_23C1C4000, v59, OS_LOG_TYPE_DEFAULT, "#I Trashing coredump logs. Trace filter is '%s'", &__dst, 0xCu);
                    }

                    support::fs::removeDir(&__p);
                  }

                  if (SHIBYTE(__p.st_gid) < 0)
                  {
                    operator delete(*&__p.st_dev);
                  }

                  goto LABEL_33;
                }

LABEL_99:
                operator delete(v62.__r_.__value_.__l.__data_);
                goto LABEL_86;
              }
            }

            else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_85;
            }

            operator delete(__dst.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_86;
            }

            goto LABEL_99;
          }
        }

        if (v30 >= 0)
        {
          v43 = &v68;
        }

        else
        {
          v43 = v68.__r_.__value_.__r.__words[0];
        }

        memmove(v36, v43, size);
        goto LABEL_75;
      }
    }
  }

  v21 = *(a1 + 40);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 143) < 0)
    {
      v18 = *v18;
    }

    __p.st_dev = 136315138;
    *&__p.st_mode = v18;
    _os_log_error_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_ERROR, "Failed: Couldn't find Scratch path [%s] to move to Snapshot path", &__p, 0xCu);
  }

  v22 = 0;
LABEL_33:
  if ((SHIBYTE(v65[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v66[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_54:
    operator delete(v66[0]);
    MEMORY[0x23EECD940](v67);
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_55:
    operator delete(v68.__r_.__value_.__l.__data_);
    v37 = *MEMORY[0x277D85DE8];
    return v22;
  }

  operator delete(v65[0]);
  if (SHIBYTE(v66[2]) < 0)
  {
    goto LABEL_54;
  }

LABEL_35:
  MEMORY[0x23EECD940](v67);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_55;
  }

LABEL_36:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_23C262650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, _Unwind_Exception *exception_object, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if (a49 < 0)
    {
LABEL_5:
      operator delete(a44);
      if ((a15 & 0x80000000) == 0)
      {
LABEL_9:
        if (a28 < 0)
        {
          operator delete(a23);
        }

        if (a34 < 0)
        {
          operator delete(a29);
        }

        MEMORY[0x23EECD940](&a35);
        if (a42 < 0)
        {
          operator delete(a37);
        }

        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a10);
      goto LABEL_9;
    }
  }

  else if (a49 < 0)
  {
    goto LABEL_5;
  }

  if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void CoredumpTrace::sanitizeScratchFolder(CoredumpTrace *this)
{
  v47 = *MEMORY[0x277D85DE8];
  if ((TelephonyUtilIsInternalBuild() & 1) == 0)
  {
    IsCarrierBuild = TelephonyUtilIsCarrierBuild();
    if ((IsCarrierBuild & 1) == 0)
    {
      if (capabilities::radio::initium(IsCarrierBuild))
      {
        memset(v41, 170, sizeof(v41));
        HIBYTE(v44) = 11;
        strcpy(&v43, "report.json");
        v46 = 12;
        strcpy(__p, "crashlog.fcd");
        std::vector<std::string>::vector[abi:ne200100](v41, &v43, 2uLL);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43);
        }

        v43 = 0uLL;
        v3 = (this + 120);
        v44 = 0;
        support::fs::readDir(this + 120, &v43);
        v5 = *(&v43 + 1);
        v4 = v43;
        if (v43 != *(&v43 + 1))
        {
          while (1)
          {
            v7 = *(v4 + 23);
            if (v7 < 0)
            {
              v8 = *(v4 + 8);
              if (v8 == 1)
              {
                if (**v4 != 46)
                {
                  goto LABEL_24;
                }
              }

              else if (v8 != 2 || **v4 != 11822)
              {
LABEL_24:
                v9 = v41[0];
                v10 = v41[1];
                if (v41[0] != v41[1])
                {
                  if (v7 >= 0)
                  {
                    v11 = *(v4 + 23);
                  }

                  else
                  {
                    v11 = *(v4 + 8);
                  }

                  if (v7 >= 0)
                  {
                    v12 = v4;
                  }

                  else
                  {
                    v12 = *v4;
                  }

                  while (1)
                  {
                    v13 = *(v9 + 23);
                    v14 = v13;
                    if ((v13 & 0x80u) != 0)
                    {
                      v13 = v9[1];
                    }

                    if (v13 == v11)
                    {
                      v15 = v14 >= 0 ? v9 : *v9;
                      if (!memcmp(v15, v12, v11))
                      {
                        break;
                      }
                    }

                    v9 += 3;
                    if (v9 == v10)
                    {
                      goto LABEL_40;
                    }
                  }
                }

                if (v9 != v10)
                {
                  goto LABEL_11;
                }

LABEL_40:
                v16 = *(this + 143);
                if (v16 >= 0)
                {
                  v17 = *(this + 143);
                }

                else
                {
                  v17 = *(this + 16);
                }

                v18 = v17 + 1;
                if (v17 + 1 >= 0x7FFFFFFFFFFFFFF8)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v18 < 0x17)
                {
                  memset(&v40, 0, sizeof(v40));
                  v20 = &v40;
                  *(&v40.__r_.__value_.__s + 23) = v17 + 1;
                  if (v17)
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  if ((v18 | 7) == 0x17)
                  {
                    v19 = 25;
                  }

                  else
                  {
                    v19 = (v18 | 7) + 1;
                  }

                  v20 = operator new(v19);
                  v40.__r_.__value_.__l.__size_ = v17 + 1;
                  v40.__r_.__value_.__r.__words[2] = v19 | 0x8000000000000000;
                  v40.__r_.__value_.__r.__words[0] = v20;
LABEL_50:
                  v21 = *v3;
                  if (v16 >= 0)
                  {
                    v22 = this + 120;
                  }

                  else
                  {
                    v22 = *v3;
                  }

                  memmove(v20, v22, v17);
                }

                *&v20[v17] = 47;
                v23 = *(v4 + 23);
                if (v23 >= 0)
                {
                  v24 = v4;
                }

                else
                {
                  v24 = *v4;
                }

                if (v23 >= 0)
                {
                  v25 = *(v4 + 23);
                }

                else
                {
                  v25 = *(v4 + 8);
                }

                v26 = std::string::append(&v40, v24, v25);
                buf = *v26;
                v26->__r_.__value_.__l.__size_ = 0;
                v26->__r_.__value_.__r.__words[2] = 0;
                v26->__r_.__value_.__r.__words[0] = 0;
                v28 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                v29 = buf.__r_.__value_.__r.__words[0];
                if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_buf = &buf;
                }

                else
                {
                  p_buf = buf.__r_.__value_.__r.__words[0];
                }

                if (remove(p_buf, v27))
                {
                  unlink(p_buf);
                }

                if (v28 < 0)
                {
                  operator delete(v29);
                  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_69;
                  }
                }

                else if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_69:
                  operator delete(v40.__r_.__value_.__l.__data_);
                }

                v6 = *(this + 5);
                if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
                {
                  v31 = v4;
                  if (*(v4 + 23) < 0)
                  {
                    v31 = *v4;
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                  *(buf.__r_.__value_.__r.__words + 4) = v31;
                  _os_log_debug_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEBUG, "#D Removed the not-allowed file %s on customer build", &buf, 0xCu);
                }
              }
            }

            else if (v7 == 1)
            {
              if (*v4 != 46)
              {
                goto LABEL_24;
              }
            }

            else if (*(v4 + 23) != 2 || *v4 != 11822)
            {
              goto LABEL_24;
            }

LABEL_11:
            v4 += 24;
            if (v4 == v5)
            {
              v4 = v43;
              break;
            }
          }
        }

        if (v4)
        {
          v32 = *(&v43 + 1);
          v33 = v4;
          if (*(&v43 + 1) != v4)
          {
            do
            {
              v34 = *(v32 - 1);
              v32 -= 3;
              if (v34 < 0)
              {
                operator delete(*v32);
              }
            }

            while (v32 != v4);
            v33 = v43;
          }

          *(&v43 + 1) = v4;
          operator delete(v33);
        }

        v35 = v41[0];
        if (v41[0])
        {
          v36 = v41[1];
          v37 = v41[0];
          if (v41[1] != v41[0])
          {
            do
            {
              v38 = *(v36 - 1);
              v36 -= 3;
              if (v38 < 0)
              {
                operator delete(*v36);
              }
            }

            while (v36 != v35);
            v37 = v41[0];
          }

          v41[1] = v35;
          operator delete(v37);
        }
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_23C262BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  std::vector<std::string>::~vector[abi:ne200100](&a24);
  std::vector<std::string>::~vector[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void CoredumpTrace::loadRawCrashReport_sync(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (support::fs::loadFile((a1 + 144), &v17))
  {
    v5 = v17;
    v6 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v6 | 7) + 1;
      }

      v7 = operator new(v11);
      __p[1] = v6;
      v16 = v11 | 0x8000000000000000;
      __p[0] = v7;
    }

    else
    {
      HIBYTE(v16) = v18 - v17;
      v7 = __p;
      if (v18 == v17)
      {
        goto LABEL_17;
      }
    }

    memmove(v7, v5, v6);
LABEL_17:
    *(v7 + v6) = 0;
    if (v16 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = xpc_string_create(v12);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, "fullreport", v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_24;
  }

  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  v9 = xpc_string_create(v8);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "ioerror", v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
LABEL_24:
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_23C262E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoredumpTrace::parseCrashReason_sync(CoredumpTrace *this@<X0>, const xpc::dict *a2@<X1>, xpc_object_t *a3@<X8>)
{
  v142 = *MEMORY[0x277D85DE8];
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_null_create();
  *a3 = v6;
  __p[0] = 0;
  __p[1] = 0;
  v130 = 0;
  v7 = MEMORY[0x23EECEE80](*a2);
  v8 = MEMORY[0x277D86468];
  if (v7 == MEMORY[0x277D86468])
  {
    v17 = *(this + 5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      xpc::object::to_string(&v131.st_dev, a2);
      v39 = (v131.st_gid & 0x80000000) == 0 ? &v131 : *&v131.st_dev;
      *buf = 136315138;
      *&buf[4] = v39;
      _os_log_debug_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
      if (SHIBYTE(v131.st_gid) < 0)
      {
        operator delete(*&v131.st_dev);
      }
    }

    xdict = 0xAAAAAAAAAAAAAAAALL;
    *&v131.st_dev = a2;
    v131.st_ino = "title";
    xpc::dict::object_proxy::operator xpc::dict(&v131, &xdict);
    v18 = MEMORY[0x23EECEE80](xdict);
    if (v18 == v8)
    {
      value = xpc_dictionary_get_value(xdict, "name");
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      memset(&v131, 0, 24);
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v131.st_gid) < 0)
      {
        operator delete(*&v131.st_dev);
      }
    }

    else
    {
      buf[23] = 7;
      strcpy(buf, "unknown");
    }

    if (SHIBYTE(v130) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v130 = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (v18 == v8)
    {
      xpc_release(object);
    }

    v26 = *(this + 5);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = __p;
      if (v130 < 0)
      {
        v27 = __p[0];
      }

      v131.st_dev = 136315138;
      *&v131.st_mode = v27;
      _os_log_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_DEFAULT, "#I Found crash '%s'", &v131, 0xCu);
    }

    xarray = 0xAAAAAAAAAAAAAAAALL;
    v28 = xpc_dictionary_get_value(*a2, "crash_details");
    v29 = v28;
    v30 = MEMORY[0x277D86440];
    if (v28)
    {
      xpc_retain(v28);
      xarray = v29;
    }

    else
    {
      v29 = xpc_null_create();
      xarray = v29;
      if (!v29)
      {
        v31 = xpc_null_create();
        v29 = 0;
        goto LABEL_46;
      }
    }

    if (MEMORY[0x23EECEE80](v29) == v30)
    {
      xpc_retain(v29);
LABEL_47:
      xpc_release(v29);
      if (MEMORY[0x23EECEE80](xarray) != v30 || MEMORY[0x23EECEE80](xarray) != v30 || !xpc_array_get_count(xarray))
      {
        goto LABEL_91;
      }

      *&v131.st_dev = &xarray;
      v131.st_ino = 0;
      xpc::array::object_proxy::operator xpc::dict(&v131, buf);
      v32 = *buf;
      *buf = xpc_null_create();
      *a3 = v32;
      xpc_release(v6);
      xpc_release(*buf);
      v33 = xarray;
      if (xarray)
      {
        xpc_retain(xarray);
        *&v131.st_dev = v33;
      }

      else
      {
        v33 = xpc_null_create();
        *&v131.st_dev = v33;
        if (!v33)
        {
          v33 = 0;
          *&v131.st_dev = xpc_null_create();
          goto LABEL_66;
        }
      }

      xpc_retain(v33);
LABEL_66:
      v131.st_ino = 0;
      xpc_release(v33);
      v40 = xarray;
      if (xarray)
      {
        xpc_retain(xarray);
      }

      else
      {
        v40 = xpc_null_create();
      }

      if (MEMORY[0x23EECEE80](xarray) == v30)
      {
        count = xpc_array_get_count(xarray);
      }

      else
      {
        count = 0;
      }

      if (v40)
      {
        xpc_retain(v40);
        v42 = v40;
      }

      else
      {
        v42 = xpc_null_create();
      }

      xpc_release(v40);
      st_ino = v131.st_ino;
      if (v131.st_ino == count)
      {
        goto LABEL_83;
      }

      while (1)
      {
        __dst = 0xAAAAAAAAAAAAAAAALL;
        *buf = &v131;
        *&buf[8] = st_ino;
        xpc::array::object_proxy::operator xpc::dict(buf, &__dst);
        v44 = xpc_dictionary_get_value(__dst, "crash_in_crash");
        v45 = v44;
        if (v44)
        {
          xpc_retain(v44);
        }

        else
        {
          v45 = xpc_null_create();
        }

        v46 = xpc_string_create("0");
        if (!v46)
        {
          v46 = xpc_null_create();
        }

        v47 = xpc_equal(v45, v46);
        xpc_release(v46);
        xpc_release(v45);
        if (v47)
        {
          break;
        }

        xpc_release(__dst);
        st_ino = v131.st_ino + 1;
        v131.st_ino = st_ino;
        if (st_ino == count)
        {
LABEL_83:
          if (*&v131.st_dev == v42)
          {
            goto LABEL_90;
          }
        }
      }

      if (__dst)
      {
        v48 = __dst;
        xpc_retain(__dst);
      }

      else
      {
        v48 = xpc_null_create();
      }

      v49 = *a3;
      *a3 = v48;
      xpc_release(v49);
      xpc_release(__dst);
LABEL_90:
      xpc_release(v42);
      xpc_release(*&v131.st_dev);
      v6 = *a3;
LABEL_91:
      if (MEMORY[0x23EECEE80](v6) != v8)
      {
        v50 = *(this + 5);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v131.st_dev) = 0;
          _os_log_impl(&dword_23C1C4000, v50, OS_LOG_TYPE_DEFAULT, "#I Loading raw crash report file due to unrecognized or missing system_details", &v131, 2u);
        }

        v51 = xpc_dictionary_create(0, 0, 0);
        if (v51 || (v51 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x23EECEE80](v51) == v8)
          {
            xpc_retain(v51);
            v52 = v51;
          }

          else
          {
            v52 = xpc_null_create();
          }
        }

        else
        {
          v52 = xpc_null_create();
          v51 = 0;
        }

        xpc_release(v51);
        v60 = xpc_null_create();
        v61 = *a3;
        *a3 = v52;
        xpc_release(v61);
        xpc_release(v60);
        v62 = operator new(0x40uLL);
        strcpy(v62, "Coredump invalid, unrecognized or missing crash details: ");
        qmemcpy(v119, " crash details: r missing crash , unrecognized oCoredump invalid", sizeof(v119));
        v63 = operator new(0x80uLL);
        v64 = v119[2];
        *v63 = v119[3];
        *(v63 + 1) = v64;
        v65 = v119[0];
        *(v63 + 2) = v119[1];
        *(v63 + 41) = v65;
        strcpy(v63 + 57, "report.json");
        operator delete(v62);
        *&v131.st_dev = v63;
        *&v131.st_ino = xmmword_23C32E4D0;
        CoredumpTrace::loadRawCrashReport_sync(this, a3, &v131);
        if (SHIBYTE(v131.st_gid) < 0)
        {
          operator delete(*&v131.st_dev);
        }

LABEL_244:
        xpc_release(xarray);
        xpc_release(xdict);
        goto LABEL_245;
      }

      if (v130 >= 0)
      {
        v53 = __p;
      }

      else
      {
        v53 = __p[0];
      }

      v54 = xpc_string_create(v53);
      if (!v54)
      {
        v54 = xpc_null_create();
      }

      xpc_dictionary_set_value(v6, "name", v54);
      v55 = xpc_null_create();
      xpc_release(v54);
      xpc_release(v55);
      v140 = 0xAAAAAAAAAAAAAAAALL;
      v56.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v56.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      v138 = v56;
      v139 = v56;
      v136 = v56;
      v137 = v56;
      v134 = v56;
      v135 = v56;
      v132 = v56;
      v133 = v56;
      *&v131.st_blksize = v56;
      *v131.st_qspare = v56;
      v131.st_birthtimespec = v56;
      *&v131.st_size = v56;
      v131.st_mtimespec = v56;
      v131.st_ctimespec = v56;
      v131.st_atimespec = v56;
      *&v131.st_dev = v56;
      *&v131.st_uid = v56;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v131);
      v57 = xpc_dictionary_get_value(v6, "log_data");
      v58 = MEMORY[0x277D82440];
      if (!v57)
      {
LABEL_147:
        if (!xpc_dictionary_get_value(v6, "ucs_crash_id"))
        {
          goto LABEL_215;
        }

        v81 = xpc_dictionary_get_value(*a3, "ucs_crash_id");
        __dst = v81;
        if (v81)
        {
          xpc_retain(v81);
        }

        else
        {
          __dst = xpc_null_create();
        }

        xpc::dyn_cast_or_default();
        if ((buf[23] & 0x80u) == 0)
        {
          v82 = buf[23];
        }

        else
        {
          v82 = *&buf[8];
        }

        if ((buf[23] & 0x8000000000000000) != 0)
        {
          operator delete(*buf);
        }

        xpc_release(__dst);
        if (!v82)
        {
          goto LABEL_215;
        }

        if ((v131.st_gen & 0x10) != 0)
        {
          tv_nsec = *&v131.st_blksize;
          if (*&v131.st_blksize < v131.st_ctimespec.tv_nsec)
          {
            *&v131.st_blksize = v131.st_ctimespec.tv_nsec;
            tv_nsec = v131.st_ctimespec.tv_nsec;
          }

          p_st_ctimespec = &v131.st_ctimespec;
        }

        else
        {
          if ((v131.st_gen & 8) == 0)
          {
            v83 = 0;
            buf[23] = 0;
            v84 = buf;
            goto LABEL_173;
          }

          p_st_ctimespec = &v131.st_atimespec.tv_nsec;
          tv_nsec = v131.st_mtimespec.tv_nsec;
        }

        tv_sec = p_st_ctimespec->tv_sec;
        v83 = tv_nsec - p_st_ctimespec->tv_sec;
        if (v83 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v83 >= 0x17)
        {
          if ((v83 | 7) == 0x17)
          {
            v88 = 25;
          }

          else
          {
            v88 = (v83 | 7) + 1;
          }

          v84 = operator new(v88);
          *&buf[8] = v83;
          *&buf[16] = v88 | 0x8000000000000000;
          *buf = v84;
        }

        else
        {
          buf[23] = tv_nsec - LOBYTE(p_st_ctimespec->tv_sec);
          v84 = buf;
          if (!v83)
          {
LABEL_173:
            v84[v83] = 0;
            if (buf[23] < 0)
            {
              v89 = *&buf[8];
              operator delete(*buf);
              if (!v89)
              {
                goto LABEL_178;
              }
            }

            else if (!buf[23])
            {
LABEL_178:
              memset(buf, 170, sizeof(buf));
              v90 = xpc_dictionary_get_value(*a3, "ucs_crash_id");
              __dst = v90;
              if (v90)
              {
                xpc_retain(v90);
              }

              else
              {
                __dst = xpc_null_create();
              }

              xpc::dyn_cast_or_default();
              xpc_release(__dst);
              v91 = buf[23];
              v92 = buf;
              if ((buf[23] & 0x80u) != 0)
              {
                v92 = *buf;
              }

              if ((buf[23] & 0x80u) != 0)
              {
                v91 = *&buf[8];
              }

              v120 = v92;
              v121 = v91;
              first_not_of = ctu::llvm::StringRef::find_first_not_of();
              if (first_not_of >= v121)
              {
                v94 = v121;
              }

              else
              {
                v94 = first_not_of;
              }

              if (*v58 >= v121 - v94)
              {
                v95 = v121 - v94;
              }

              else
              {
                v95 = *v58;
              }

              __dst = v120 + v94;
              v124 = v95;
              last_not_of = ctu::llvm::StringRef::find_last_not_of();
              v98 = __dst;
              v97 = v124;
              if (last_not_of + 1 < v124)
              {
                v99 = last_not_of + 1;
              }

              else
              {
                v99 = v124;
              }

              v100 = v124 - v95 + v99;
              v124 = 0xAAAAAAAAAAAAAAAALL;
              v125 = 0xAAAAAAAAAAAAAAAALL;
              if (v100 >= v97)
              {
                v101 = v97;
              }

              else
              {
                v101 = v100;
              }

              __dst = 0xAAAAAAAAAAAAAAAALL;
              if (v101 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v101 >= 0x17)
              {
                if ((v101 | 7) == 0x17)
                {
                  v103 = 25;
                }

                else
                {
                  v103 = (v101 | 7) + 1;
                }

                p_dst = operator new(v103);
                v124 = v101;
                v125 = v103 | 0x8000000000000000;
                __dst = p_dst;
              }

              else
              {
                HIBYTE(v125) = v101;
                p_dst = &__dst;
                if (!v101)
                {
                  goto LABEL_206;
                }
              }

              memmove(p_dst, v98, v101);
LABEL_206:
              *(p_dst + v101) = 0;
              v122 = 2;
              strcpy(&v120, "c:");
              v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131.st_uid, &v120, 2);
              if (v125 >= 0)
              {
                v105 = &__dst;
              }

              else
              {
                v105 = __dst;
              }

              if (v125 >= 0)
              {
                v106 = HIBYTE(v125);
              }

              else
              {
                v106 = v124;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, v105, v106);
              if (v122 < 0)
              {
                operator delete(v120);
                if ((SHIBYTE(v125) & 0x80000000) == 0)
                {
LABEL_214:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_215;
                  }

LABEL_221:
                  operator delete(*buf);
                  st_gen = v131.st_gen;
                  if ((v131.st_gen & 0x10) == 0)
                  {
                    goto LABEL_216;
                  }

                  goto LABEL_222;
                }
              }

              else if ((SHIBYTE(v125) & 0x80000000) == 0)
              {
                goto LABEL_214;
              }

              operator delete(__dst);
              if (buf[23] < 0)
              {
                goto LABEL_221;
              }

LABEL_215:
              st_gen = v131.st_gen;
              if ((v131.st_gen & 0x10) == 0)
              {
LABEL_216:
                if ((st_gen & 8) == 0)
                {
                  v108 = 0;
                  buf[23] = 0;
                  v109 = buf;
                  goto LABEL_234;
                }

                p_tv_nsec = &v131.st_atimespec.tv_nsec;
                v111 = v131.st_mtimespec.tv_nsec;
LABEL_225:
                v112 = p_tv_nsec->tv_sec;
                v108 = v111 - p_tv_nsec->tv_sec;
                if (v108 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v108 >= 0x17)
                {
                  if ((v108 | 7) == 0x17)
                  {
                    v113 = 25;
                  }

                  else
                  {
                    v113 = (v108 | 7) + 1;
                  }

                  v109 = operator new(v113);
                  *&buf[8] = v108;
                  *&buf[16] = v113 | 0x8000000000000000;
                  *buf = v109;
                }

                else
                {
                  buf[23] = v111 - LOBYTE(p_tv_nsec->tv_sec);
                  v109 = buf;
                  if (!v108)
                  {
                    goto LABEL_234;
                  }
                }

                memmove(v109, v112, v108);
LABEL_234:
                *(v109 + v108) = 0;
                if ((buf[23] & 0x80u) == 0)
                {
                  v114 = buf;
                }

                else
                {
                  v114 = *buf;
                }

                v115 = xpc_string_create(v114);
                if (!v115)
                {
                  v115 = xpc_null_create();
                }

                xpc_dictionary_set_value(*a3, "log_data", v115);
                v116 = xpc_null_create();
                xpc_release(v115);
                xpc_release(v116);
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }

                *&v131.st_dev = *MEMORY[0x277D82818];
                v117 = *(MEMORY[0x277D82818] + 72);
                *(&v131.st_dev + *(*&v131.st_dev - 24)) = *(MEMORY[0x277D82818] + 64);
                *&v131.st_uid = v117;
                *&v131.st_rdev = MEMORY[0x277D82878] + 16;
                if (SHIBYTE(v131.st_blocks) < 0)
                {
                  operator delete(v131.st_birthtimespec.tv_nsec);
                }

                *&v131.st_rdev = MEMORY[0x277D82868] + 16;
                std::locale::~locale(&v131.st_atimespec);
                std::iostream::~basic_iostream();
                MEMORY[0x23EECE150](v131.st_qspare);
                goto LABEL_244;
              }

LABEL_222:
              v111 = *&v131.st_blksize;
              if (*&v131.st_blksize < v131.st_ctimespec.tv_nsec)
              {
                *&v131.st_blksize = v131.st_ctimespec.tv_nsec;
                v111 = v131.st_ctimespec.tv_nsec;
              }

              p_tv_nsec = &v131.st_ctimespec;
              goto LABEL_225;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131.st_uid, ", ", 2);
            goto LABEL_178;
          }
        }

        memmove(v84, tv_sec, v83);
        goto LABEL_173;
      }

      memset(buf, 170, sizeof(buf));
      v59 = xpc_dictionary_get_value(v6, "log_data");
      __dst = v59;
      if (v59)
      {
        xpc_retain(v59);
      }

      else
      {
        __dst = xpc_null_create();
      }

      xpc::dyn_cast_or_default();
      xpc_release(__dst);
      v66 = buf[23];
      v67 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v67 = *buf;
      }

      if ((buf[23] & 0x80u) != 0)
      {
        v66 = *&buf[8];
      }

      v120 = v67;
      v121 = v66;
      v68 = ctu::llvm::StringRef::find_first_not_of();
      if (v68 >= v121)
      {
        v69 = v121;
      }

      else
      {
        v69 = v68;
      }

      if (*v58 >= v121 - v69)
      {
        v70 = v121 - v69;
      }

      else
      {
        v70 = *v58;
      }

      __dst = v120 + v69;
      v124 = v70;
      v71 = ctu::llvm::StringRef::find_last_not_of();
      v73 = __dst;
      v72 = v124;
      if (v71 + 1 < v124)
      {
        v74 = v71 + 1;
      }

      else
      {
        v74 = v124;
      }

      v75 = v124 - v70 + v74;
      v124 = 0xAAAAAAAAAAAAAAAALL;
      v125 = 0xAAAAAAAAAAAAAAAALL;
      if (v75 >= v72)
      {
        v76 = v72;
      }

      else
      {
        v76 = v75;
      }

      __dst = 0xAAAAAAAAAAAAAAAALL;
      if (v76 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v76 >= 0x17)
      {
        if ((v76 | 7) == 0x17)
        {
          v78 = 25;
        }

        else
        {
          v78 = (v76 | 7) + 1;
        }

        v77 = operator new(v78);
        v124 = v76;
        v125 = v78 | 0x8000000000000000;
        __dst = v77;
      }

      else
      {
        HIBYTE(v125) = v76;
        v77 = &__dst;
        if (!v76)
        {
          goto LABEL_136;
        }
      }

      memmove(v77, v73, v76);
LABEL_136:
      *(v77 + v76) = 0;
      if (v125 >= 0)
      {
        v79 = &__dst;
      }

      else
      {
        v79 = __dst;
      }

      if (v125 >= 0)
      {
        v80 = HIBYTE(v125);
      }

      else
      {
        v80 = v124;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131.st_uid, v79, v80);
      if (SHIBYTE(v125) < 0)
      {
        operator delete(__dst);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      v6 = *a3;
      goto LABEL_147;
    }

    v31 = xpc_null_create();
LABEL_46:
    xarray = v31;
    goto LABEL_47;
  }

  v10 = (this + 144);
  v9 = *(this + 18);
  v11.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v11.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v131.st_blksize = v11;
  *v131.st_qspare = v11;
  v131.st_birthtimespec = v11;
  *&v131.st_size = v11;
  v131.st_mtimespec = v11;
  v131.st_ctimespec = v11;
  v131.st_atimespec = v11;
  *&v131.st_dev = v11;
  *&v131.st_uid = v11;
  if (*(this + 167) >= 0)
  {
    v12 = this + 144;
  }

  else
  {
    v12 = v9;
  }

  v13 = stat(v12, &v131);
  v14 = *(this + 5);
  if (v13)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      if (*(this + 167) < 0)
      {
        v10 = *v10;
      }

      v131.st_dev = 136315138;
      *&v131.st_mode = v10;
      _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "File not found: %s", &v131, 0xCu);
    }

    v15 = xpc_dictionary_create(0, 0, 0);
    if (v15 || (v15 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v15) == v8)
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
    v22 = xpc_null_create();
    v23 = *a3;
    *a3 = v16;
    xpc_release(v23);
    xpc_release(v22);
    strcpy(&v131, "report.json missing");
    HIBYTE(v131.st_gid) = 19;
    v24 = xpc_string_create(&v131);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    xpc_dictionary_set_value(v16, "ioerror", v24);
    v25 = xpc_null_create();
    xpc_release(v24);
    xpc_release(v25);
  }

  else
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v131.st_dev) = 0;
      _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Loading raw crash report file due to processing errors", &v131, 2u);
    }

    v19 = xpc_dictionary_create(0, 0, 0);
    if (v19 || (v19 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v19) == v8)
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
    v34 = xpc_null_create();
    v35 = *a3;
    *a3 = v20;
    xpc_release(v35);
    xpc_release(v34);
    v36 = operator new(0x28uLL);
    qmemcpy(&v119[2], ", file read erroCoredump invalid", 32);
    strcpy(v36, "Coredump invalid, file read error: ");
    v37 = operator new(0x50uLL);
    strcpy(v37 + 31, "or: report.json");
    v38 = v119[2];
    *v37 = v119[3];
    *(v37 + 1) = v38;
    operator delete(v36);
    *&v131.st_dev = v37;
    *&v131.st_ino = xmmword_23C32E4B0;
    CoredumpTrace::loadRawCrashReport_sync(this, a3, &v131);
  }

  if (SHIBYTE(v131.st_gid) < 0)
  {
    operator delete(*&v131.st_dev);
  }

LABEL_245:
  if (SHIBYTE(v130) < 0)
  {
    operator delete(__p[0]);
  }

  v118 = *MEMORY[0x277D85DE8];
}

void sub_23C263FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, xpc_object_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, xpc_object_t object, xpc_object_t a30, xpc_object_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, xpc_object_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void xpc::array::object_proxy::operator xpc::dict(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v4) != MEMORY[0x277D86468])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

uint64_t CoredumpTrace::makeCrashString@<X0>(xpc_object_t *a1@<X1>, _BYTE *a2@<X8>)
{
  v67 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66[7] = v5;
  v66[8] = v5;
  v66[5] = v5;
  v66[6] = v5;
  v66[3] = v5;
  v66[4] = v5;
  v66[1] = v5;
  v66[2] = v5;
  v65 = v5;
  v66[0] = v5;
  *v63 = v5;
  v64 = v5;
  v61 = v5;
  v62 = v5;
  v59 = v5;
  v60 = v5;
  v58 = v5;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v58);
  if (xpc_dictionary_get_value(*a1, "ioerror"))
  {
    memset(&__p, 170, sizeof(__p));
    value = xpc_dictionary_get_value(*a1, "ioerror");
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v68 = 0;
    v69 = 0;
    v70 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v70) < 0)
    {
      operator delete(v68);
    }

    xpc_release(object[0]);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, p_p, size);
LABEL_29:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_95;
  }

  if (xpc_dictionary_get_value(*a1, "fullreport"))
  {
    memset(&__p, 170, sizeof(__p));
    v7 = xpc_dictionary_get_value(*a1, "fullreport");
    object[0] = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v68 = 0;
    v69 = 0;
    v70 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v70) < 0)
    {
      operator delete(v68);
    }

    xpc_release(object[0]);
    util::strip_non_printable(&__p);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "RAW=", 4);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    goto LABEL_29;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "TASK=", 5);
  v11 = xpc_dictionary_get_value(*a1, "host_taskname");
  v56 = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    v56 = xpc_null_create();
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v70) < 0)
  {
    operator delete(v68);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v15, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " @ ", 3);
  v19 = xpc_dictionary_get_value(*a1, "host_filename");
  v53 = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    v53 = xpc_null_create();
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v70) < 0)
  {
    operator delete(v68);
  }

  if ((v55 & 0x80u) == 0)
  {
    v20 = object;
  }

  else
  {
    v20 = object[0];
  }

  if ((v55 & 0x80u) == 0)
  {
    v21 = v55;
  }

  else
  {
    v21 = object[1];
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ":", 1);
  v24 = xpc_dictionary_get_value(*a1, "host_line");
  v50 = v24;
  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    v50 = xpc_null_create();
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v70) < 0)
  {
    operator delete(v68);
  }

  if ((v52 & 0x80u) == 0)
  {
    v25 = v51;
  }

  else
  {
    v25 = v51[0];
  }

  if ((v52 & 0x80u) == 0)
  {
    v26 = v52;
  }

  else
  {
    v26 = v51[1];
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ",CPU=", 5);
  v29 = xpc_dictionary_get_value(*a1, "subsystem");
  v47 = v29;
  if (v29)
  {
    xpc_retain(v29);
  }

  else
  {
    v47 = xpc_null_create();
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v70) < 0)
  {
    operator delete(v68);
  }

  if ((v49 & 0x80u) == 0)
  {
    v30 = v48;
  }

  else
  {
    v30 = v48[0];
  }

  if ((v49 & 0x80u) == 0)
  {
    v31 = v49;
  }

  else
  {
    v31 = v48[1];
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ",LOG=", 5);
  v34 = xpc_dictionary_get_value(*a1, "log_data");
  v44 = v34;
  if (v34)
  {
    xpc_retain(v34);
  }

  else
  {
    v44 = xpc_null_create();
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v70) < 0)
  {
    operator delete(v68);
  }

  if ((v46 & 0x80u) == 0)
  {
    v35 = v45;
  }

  else
  {
    v35 = v45[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v36 = v46;
  }

  else
  {
    v36 = v45[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  xpc_release(v44);
  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  xpc_release(v47);
  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  xpc_release(v50);
  if (v55 < 0)
  {
    operator delete(object[0]);
  }

  xpc_release(v53);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v56);
LABEL_95:
  if ((BYTE8(v65) & 0x10) != 0)
  {
    v38 = v65;
    if (v65 < *(&v62 + 1))
    {
      *&v65 = *(&v62 + 1);
      v38 = *(&v62 + 1);
    }

    v39 = v62;
    v37 = v38 - v62;
    if ((v38 - v62) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_113;
    }
  }

  else
  {
    if ((BYTE8(v65) & 8) == 0)
    {
      v37 = 0;
      a2[23] = 0;
      goto LABEL_109;
    }

    v39 = *(&v60 + 1);
    v37 = *(&v61 + 1) - *(&v60 + 1);
    if (*(&v61 + 1) - *(&v60 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_113:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v41 = operator new(v40);
    *(a2 + 1) = v37;
    *(a2 + 2) = v40 | 0x8000000000000000;
    *a2 = v41;
    a2 = v41;
    goto LABEL_108;
  }

  a2[23] = v37;
  if (v37)
  {
LABEL_108:
    memmove(a2, v39, v37);
  }

LABEL_109:
  a2[v37] = 0;
  *&v58 = *MEMORY[0x277D82818];
  v42 = *(MEMORY[0x277D82818] + 72);
  *(&v58 + *(v58 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v59 = v42;
  *(&v59 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63[1]);
  }

  *(&v59 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v60);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EECE150](v66);
}

void sub_23C264AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, xpc_object_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, xpc_object_t a30, xpc_object_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, xpc_object_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  xpc_release(a16);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  xpc_release(a23);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  xpc_release(a30);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  xpc_release(a37);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a44);
  _Unwind_Resume(a1);
}

void CoredumpTrace::updateAnalyticsEvent_sync(CoredumpTrace *this, xpc_object_t *a2, void **a3)
{
  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Updating Analytics metric of crash info", buf, 2u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = MEMORY[0x277D86468];
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v7) == v8)
    {
      xpc_retain(v7);
      v9 = v7;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  (*(*this + 176))(buf, this, a2);
  if ((buf[23] & 0x80u) == 0)
  {
    v10 = buf;
  }

  else
  {
    v10 = *buf;
  }

  v11 = xpc_string_create(v10);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "resetReason", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  memset(buf, 170, 24);
  value = xpc_dictionary_get_value(*a2, "host_line");
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  memset(object, 170, sizeof(object));
  v14 = xpc_dictionary_get_value(*a2, "host_filename");
  __p[0] = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(__p[0]);
  memset(__p, 170, sizeof(__p));
  if (SHIBYTE(object[2]) >= 0)
  {
    v15 = HIBYTE(object[2]);
  }

  else
  {
    v15 = object[1];
  }

  v16 = v15 + 1;
  if (v15 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 < 0x17)
  {
    memset(&v56, 0, sizeof(v56));
    v18 = &v56;
    *(&v56.__r_.__value_.__s + 23) = v15 + 1;
    if (!v15)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if ((v16 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v16 | 7) + 1;
    }

    v18 = operator new(v17);
    v56.__r_.__value_.__l.__size_ = v15 + 1;
    v56.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
    v56.__r_.__value_.__r.__words[0] = v18;
  }

  if (SHIBYTE(object[2]) >= 0)
  {
    v19 = object;
  }

  else
  {
    v19 = object[0];
  }

  memmove(v18, v19, v15);
LABEL_36:
  *&v18[v15] = 58;
  if ((buf[23] & 0x80u) == 0)
  {
    v20 = buf;
  }

  else
  {
    v20 = *buf;
  }

  if ((buf[23] & 0x80u) == 0)
  {
    v21 = buf[23];
  }

  else
  {
    v21 = *&buf[8];
  }

  v22 = std::string::append(&v56, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  __p[2] = v22->__r_.__value_.__r.__words[2];
  *__p = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = xpc_string_create(v24);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "shortResetReason", v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  if (SHIBYTE(object[2]) >= 0)
  {
    v27 = object;
  }

  else
  {
    v27 = object[0];
  }

  v28 = xpc_string_create(v27);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "basebandCrashFileName", v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
  if (capabilities::radio::initium(v30))
  {
    if (MEMORY[0x23EECEE80](*a3) == v8)
    {
      v55 = v9;
      if (v9)
      {
        xpc_retain(v9);
      }

      else
      {
        v55 = xpc_null_create();
      }

      CrashReportMetrics::updateAnalyticsEvent(&v55, a3);
      xpc_release(v55);
      v55 = 0;
    }

    else
    {
      v31 = *(this + 5);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v56.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_23C1C4000, v31, OS_LOG_TYPE_ERROR, "Invalid baseband state dictionary", &v56, 2u);
      }
    }
  }

  v32 = xpc_dictionary_create(0, 0, 0);
  if (v32 || (v32 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v32) == v8)
    {
      xpc_retain(v32);
      v33 = v32;
    }

    else
    {
      v33 = xpc_null_create();
    }
  }

  else
  {
    v33 = xpc_null_create();
    v32 = 0;
  }

  xpc_release(v32);
  v34 = xpc_string_create("metricsCCBasebandResetInfo");
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  xpc_dictionary_set_value(v33, *MEMORY[0x277CECB90], v34);
  v35 = xpc_null_create();
  xpc_release(v34);
  xpc_release(v35);
  v36 = xpc_string_create("Crash");
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(v33, *MEMORY[0x277CECBE0], v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  if (v9)
  {
    xpc_retain(v9);
    v38 = v9;
  }

  else
  {
    v38 = xpc_null_create();
  }

  xpc_dictionary_set_value(v33, *MEMORY[0x277CECCE8], v38);
  v39 = xpc_null_create();
  xpc_release(v38);
  xpc_release(v39);
  v40 = xpc_string_create(*MEMORY[0x277CECBE8]);
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  xpc_dictionary_set_value(v33, *MEMORY[0x277CECBD8], v40);
  v41 = xpc_null_create();
  xpc_release(v40);
  xpc_release(v41);
  v42 = xpc_dictionary_create(0, 0, 0);
  if (v42 || (v42 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v42) == v8)
    {
      xpc_retain(v42);
      v43 = v42;
    }

    else
    {
      v43 = xpc_null_create();
    }
  }

  else
  {
    v43 = xpc_null_create();
    v42 = 0;
  }

  xpc_release(v42);
  v44 = xpc_string_create(*MEMORY[0x277CECB50]);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  xpc_dictionary_set_value(v43, *MEMORY[0x277CECB60], v44);
  v45 = xpc_null_create();
  xpc_release(v44);
  xpc_release(v45);
  if (v33)
  {
    xpc_retain(v33);
    v46 = v33;
  }

  else
  {
    v46 = xpc_null_create();
  }

  xpc_dictionary_set_value(v43, *MEMORY[0x277CECB58], v46);
  v47 = xpc_null_create();
  xpc_release(v46);
  xpc_release(v47);
  v48 = *(this + 10);
  if (v48)
  {
    size = std::__shared_weak_count::lock(v48);
    v56.__r_.__value_.__l.__size_ = size;
    if (size)
    {
      v52 = *(this + 9);
      v56.__r_.__value_.__r.__words[0] = v52;
      if (!v52)
      {
        goto LABEL_107;
      }

      v54 = v43;
      if (v43)
      {
        xpc_retain(v43);
      }

      else
      {
        v54 = xpc_null_create();
      }

      abm::BasebandTracingTask::commandReportStatsAWD(v52, &v54);
      xpc_release(v54);
      v54 = 0;
      size = v56.__r_.__value_.__l.__size_;
      if (v56.__r_.__value_.__l.__size_)
      {
LABEL_107:
        if (!atomic_fetch_add(size + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          v53 = size;
          (*(*size + 16))(size, v50, v51);
          std::__shared_weak_count::__release_weak(v53);
        }
      }
    }
  }

  xpc_release(v43);
  xpc_release(v33);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(object[2]) & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

LABEL_102:
    operator delete(object[0]);
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

LABEL_103:
    operator delete(*buf);
    goto LABEL_100;
  }

  operator delete(__p[0]);
  if (SHIBYTE(object[2]) < 0)
  {
    goto LABEL_102;
  }

LABEL_99:
  if (buf[23] < 0)
  {
    goto LABEL_103;
  }

LABEL_100:
  xpc_release(v9);
}

void sub_23C2654DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  xpc_release(object);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  xpc_release(v35);
  _Unwind_Resume(a1);
}

void CoredumpTrace::~CoredumpTrace(CoredumpTrace *this)
{
  CoredumpTrace::~CoredumpTrace(this);

  operator delete(v1);
}

{
  *this = &unk_284EFBBD0;
  v2 = *(this + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
    if ((*(this + 167) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(this + 143) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 167) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(this + 18));
  if ((*(this + 143) & 0x80000000) == 0)
  {
LABEL_6:
    v3 = *(this + 13);
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(this + 15));
  v3 = *(this + 13);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_13:
  if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_7:
    v4 = this;

    goto LABEL_9;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  v4 = this;

LABEL_9:
  Trace::~Trace(v4);
}

void Bsp::BspCommandDriver::~BspCommandDriver(Bsp::BspCommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
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

atomic_ullong *std::shared_ptr<CoredumpTrace>::shared_ptr[abi:ne200100]<CoredumpTrace,std::shared_ptr<CoredumpTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<CoredumpTrace>(CoredumpTrace*)::{lambda(CoredumpTrace*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EFBDD8;
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

void sub_23C265A38(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<CoredumpTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<CoredumpTrace>(CoredumpTrace*)::{lambda(CoredumpTrace*)#1}::operator() const(CoredumpTrace*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CoredumpTrace *,std::shared_ptr<CoredumpTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<CoredumpTrace>(CoredumpTrace*)::{lambda(CoredumpTrace *)#1},std::allocator<CoredumpTrace>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CoredumpTrace *,std::shared_ptr<CoredumpTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<CoredumpTrace>(CoredumpTrace*)::{lambda(CoredumpTrace *)#1},std::allocator<CoredumpTrace>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI13CoredumpTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI13CoredumpTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI13CoredumpTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI13CoredumpTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<CoredumpTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<CoredumpTrace>(CoredumpTrace*)::{lambda(CoredumpTrace*)#1}::operator() const(CoredumpTrace*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x23EECD960]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000023C32E692)
  {
    if (((v2 & 0x800000023C32E692 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023C32E692))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023C32E692 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x23EECD960]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t __cxx_global_var_init_83()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_84()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_85()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_86()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

void ServerLogging::~ServerLogging(ServerLogging *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 10));
    *(this + 10) = 0;
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
    if ((*(this + 55) & 0x80000000) == 0)
    {
LABEL_5:
      MEMORY[0x23EECD800](this + 24);
      v3 = *(this + 1);
      if (!v3)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  else if ((*(this + 55) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(this + 4));
  MEMORY[0x23EECD800](this + 24);
  v3 = *(this + 1);
  if (!v3)
  {
    return;
  }

LABEL_6:
  std::__shared_weak_count::__release_weak(v3);
}

uint64_t ServerLogging::ServerLogging(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ctu::OsLogContext::OsLogContext(&v26, "com.apple.telephony.abm", "server.logging");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x23EECD7F0](a1 + 24, &v25);
  MEMORY[0x23EECD800](&v25);
  ctu::OsLogContext::~OsLogContext(&v26);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v6;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v7;
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v8 = off_280C05A08;
  if (!off_280C05A08)
  {
    SharedData::create_default_global(&v26);
    v9 = *&v26.__r_.__value_.__l.__data_;
    *&v26.__r_.__value_.__l.__data_ = 0uLL;
    v10 = *(&off_280C05A08 + 1);
    off_280C05A08 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    size = v26.__r_.__value_.__l.__size_;
    if (v26.__r_.__value_.__l.__size_ && !atomic_fetch_add((v26.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v8 = off_280C05A08;
  }

  v23 = v8;
  v24 = *(&off_280C05A08 + 1);
  if (*(&off_280C05A08 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v12 = abm::trace::kCurrentSnapshotFolder;
  v13 = strlen(abm::trace::kCurrentSnapshotFolder);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
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

    v15 = operator new(v16);
    __dst[1] = v14;
    v22 = v16 | 0x8000000000000000;
    __dst[0] = v15;
LABEL_26:
    memmove(v15, v12, v14);
    *(v14 + v15) = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  HIBYTE(v22) = v13;
  v15 = __dst;
  if (v13)
  {
    goto LABEL_26;
  }

  LOBYTE(__dst[0]) = 0;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
LABEL_21:
    __p = *a3;
    goto LABEL_28;
  }

LABEL_27:
  std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 1));
LABEL_28:
  os_unfair_lock_lock(v8 + 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = __p;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v25;
  }

  if (v22 >= 0)
  {
    v17 = __dst;
  }

  else
  {
    v17 = __dst[0];
  }

  ctu::cf::plist_adapter::set<std::string>(v8, &v26, v17);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_39:
      os_unfair_lock_unlock(v8 + 10);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_45;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  os_unfair_lock_unlock(v8 + 10);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_40:
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_46:
    operator delete(__dst[0]);
    v18 = v24;
    if (!v24)
    {
      return a1;
    }

    goto LABEL_47;
  }

LABEL_45:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_46;
  }

LABEL_41:
  v18 = v24;
  if (!v24)
  {
    return a1;
  }

LABEL_47:
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  return a1;
}

void sub_23C26628C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

void ServerLogging::init(os_unfair_lock_s *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN13ServerLogging4initEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_4;
  v2[4] = this;
  os_unfair_lock_lock(this + 4);
  ___ZN13ServerLogging4initEv_block_invoke(v2);
  os_unfair_lock_unlock(this + 4);
}

void ___ZN13ServerLogging4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Init", v4, 2u);
  }

  v3 = ServerLogging::monitorSnapshotPath_sync(v1);
  *(v1 + 10) = v3;
  ServerLogging::clearScratchFolders_sync(v3);
}

NSObject *ServerLogging::monitorSnapshotPath_sync(ServerLogging *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = this + 56;
  v2 = *(this + 7);
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v20.st_blksize = v4;
  *v20.st_qspare = v4;
  v20.st_birthtimespec = v4;
  *&v20.st_size = v4;
  v20.st_mtimespec = v4;
  v20.st_ctimespec = v4;
  *&v20.st_uid = v4;
  v20.st_atimespec = v4;
  *&v20.st_dev = v4;
  if (*(this + 79) >= 0)
  {
    v5 = this + 56;
  }

  else
  {
    v5 = v2;
  }

  if (stat(v5, &v20))
  {
    v6 = *(this + 3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3;
      if (*(this + 79) < 0)
      {
        v7 = *v3;
      }

      v20.st_dev = 136315138;
      *&v20.st_mode = v7;
      _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Snapshot path %s was not found, so recreating it", &v20, 0xCu);
    }

    support::fs::createDir(v3, 0x1EDu, 1);
  }

  if (*(this + 79) < 0)
  {
    v8 = open(*v3, 0x8000);
    if ((v8 & 0x80000000) != 0)
    {
LABEL_17:
      result = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v8 = open(v3, 0x8000);
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  v9 = v8;
  v10 = v8;
  global_queue = dispatch_get_global_queue(17, 0);
  v12 = dispatch_source_create(MEMORY[0x277D85D48], v10, 0x21uLL, global_queue);
  if (!v12)
  {
    close(v9);
    goto LABEL_17;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_7_0;
  handler[4] = this;
  v19 = v9;
  v13 = v12;
  dispatch_source_set_event_handler(v12, handler);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v16[2] = ___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke_8;
  v16[3] = &__block_descriptor_tmp_9;
  v17 = v9;
  dispatch_source_set_cancel_handler(v13, v16);
  dispatch_activate(v13);
  result = v13;
LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void ServerLogging::clearScratchFolders_sync(ServerLogging *this)
{
  v1 = abm::trace::kTrashFolder[0];
  v2 = strlen(abm::trace::kTrashFolder[0]);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    if ((v2 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v2 | 7) + 1;
    }

    v4 = operator new(v5);
    __dst[1] = v3;
    v9 = v5 | 0x8000000000000000;
    __dst[0] = v4;
    goto LABEL_9;
  }

  HIBYTE(v9) = v2;
  v4 = __dst;
  if (v2)
  {
LABEL_9:
    memmove(v4, v1, v3);
  }

  *(v3 + v4) = 0;
  support::fs::createDir(__dst, 0x1EDu, 1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async(global_queue, &__block_literal_global_3);
  capabilities::abs::logScratchPath(__dst, v7);
  support::fs::createDir(__dst, 0x1EDu, 1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_23C2667D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN13ServerLogging24clearScratchFolders_syncEv_block_invoke()
{
  v0 = abm::trace::kTrashFolder[0];
  v1 = strlen(abm::trace::kTrashFolder[0]);
  if (v1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 >= 0x17)
  {
    if ((v1 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (v1 | 7) + 1;
    }

    v3 = operator new(v4);
    __dst[1] = v2;
    v6 = v4 | 0x8000000000000000;
    __dst[0] = v3;
    goto LABEL_9;
  }

  HIBYTE(v6) = v1;
  v3 = __dst;
  if (v1)
  {
LABEL_9:
    memmove(v3, v0, v2);
  }

  *(v2 + v3) = 0;
  support::fs::removeDirContents(__dst, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_23C2668D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ServerLogging::backupFolders_sync(capabilities::abs *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  v7 = (a4 + 8);
  *a4 = 0;
  *(a4 + 16) = 0;
  capabilities::abs::logScratchPath(&__p, a1);
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v40.st_blksize = v8;
  *v40.st_qspare = v8;
  v40.st_birthtimespec = v8;
  *&v40.st_size = v8;
  v40.st_mtimespec = v8;
  v40.st_ctimespec = v8;
  *&v40.st_uid = v8;
  v40.st_atimespec = v8;
  *&v40.st_dev = v8;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (stat(p_p, &v40))
  {
    LODWORD(v10) = 0;
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    v12 = opendir(v11);
    v10 = v12;
    if (v12)
    {
      v13 = readdir(v12);
      closedir(v10);
      LODWORD(v10) = v13 != 0;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v10)
    {
      return;
    }
  }

  else if (!v10)
  {
    return;
  }

  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = a2[1];
  }

  v16 = v15 + 7;
  if (v15 + 7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 < 0x17)
  {
    memset(&__p, 0, sizeof(__p));
    v18 = &__p;
    *(&__p.__r_.__value_.__s + 23) = v15 + 7;
    if (!v15)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((v16 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v16 | 7) + 1;
    }

    v18 = operator new(v17);
    __p.__r_.__value_.__l.__size_ = v15 + 7;
    __p.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = v18;
  }

  v19 = *a2;
  if (v14 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  memmove(v18, v20, v15);
LABEL_29:
  strcpy(v18 + v15, "log-bb-");
  Timestamp::Timestamp(v35);
  Timestamp::asString(v35, 0, 9, v37);
  if ((v38 & 0x80u) == 0)
  {
    v21 = v37;
  }

  else
  {
    v21 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v22 = v38;
  }

  else
  {
    v22 = v37[1];
  }

  v23 = std::string::append(&__p, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  *&v40.st_uid = *(&v23->__r_.__value_.__l + 2);
  *&v40.st_dev = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 8);
  }

  v28 = std::string::append(&v40, v26, v27);
  v29 = v28->__r_.__value_.__r.__words[0];
  *v7 = v28->__r_.__value_.__l.__size_;
  *(v7 + 7) = *(&v28->__r_.__value_.__r.__words[1] + 7);
  v30 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  st_gid_high = SHIBYTE(v40.st_gid);
  *a4 = v29;
  *(a4 + 23) = v30;
  if ((st_gid_high & 0x80000000) == 0)
  {
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_48:
    operator delete(v37[0]);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v35, v36);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  operator delete(*&v40.st_dev);
  if (v38 < 0)
  {
    goto LABEL_48;
  }

LABEL_43:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v35, v36);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_49:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_44:
  capabilities::abs::logScratchPath(&v40.st_dev, v32);
  support::fs::moveDirUnique(&v40, a4, &v33);
  if ((v34 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40.st_gid) & 0x80000000) == 0)
    {
      return;
    }

LABEL_51:
    operator delete(*&v40.st_dev);
    return;
  }

  operator delete(v33);
  if (SHIBYTE(v40.st_gid) < 0)
  {
    goto LABEL_51;
  }
}

void sub_23C266BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v2 + 56);
    if (*(v2 + 79) < 0)
    {
      v4 = *v4;
    }

    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Snapshot path %s was removed", &v7, 0xCu);
  }

  dispatch_release(*(v2 + 80));
  *(v2 + 80) = 0;
  close(*(a1 + 40));
  result = ServerLogging::monitorSnapshotPath_sync(v2);
  *(v2 + 80) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void initServerLogging(void)
{
  if (initServerLogging(void)::sOnce != -1)
  {
    dispatch_once(&initServerLogging(void)::sOnce, &__block_literal_global_12);
  }
}

uint64_t ___Z17initServerLoggingv_block_invoke()
{
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_280C06510 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v0 = qword_280C06510;
    if (!os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_4);
  v0 = qword_280C06510;
  if (os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_INFO))
  {
LABEL_4:
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_23C1C4000, v0, OS_LOG_TYPE_INFO, "Initializing server logging and registering log handlers", &buf, 2u);
  }

LABEL_5:
  v1 = pthread_mutex_lock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  if (qword_280C05AF8)
  {
    goto LABEL_6;
  }

  capabilities::abs::logScratchPath(&buf, v1);
  v4 = strlen(kDaemonLogScratchDir);
  v5 = std::string::append(&buf, kDaemonLogScratchDir, v4);
  v15 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  memset(__p, 170, sizeof(__p));
  capabilities::abs::logSnapshotPath(__p, v5);
  v6 = operator new(0x58uLL);
  ServerLogging::ServerLogging(v6, &v15, __p);
  buf.__r_.__value_.__r.__words[0] = v6;
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__vftable = &unk_284EFBEB8;
  v2->__shared_weak_owners_ = 0;
  v2[1].__vftable = v6;
  buf.__r_.__value_.__r.__words[0] = 0;
  v8 = *(v6 + 1);
  if (!v8)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v6 = v6;
    *(v6 + 1) = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v8->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v6 = v6;
    *(v6 + 1) = v2;
    std::__shared_weak_count::__release_weak(v8);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_15:
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }

LABEL_16:
  if (buf.__r_.__value_.__r.__words[0])
  {
    ServerLogging::~ServerLogging(buf.__r_.__value_.__l.__data_);
    operator delete(v9);
  }

  buf.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
  buf.__r_.__value_.__l.__size_ = 0x40000000;
  buf.__r_.__value_.__r.__words[2] = ___ZN13ServerLogging4initEv_block_invoke;
  v17 = &__block_descriptor_tmp_4;
  v18 = v6;
  os_unfair_lock_lock(v6 + 4);
  (buf.__r_.__value_.__r.__words[2])(&buf);
  os_unfair_lock_unlock(v6 + 4);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      v10 = off_280C05B00;
      qword_280C05AF8 = v6;
      off_280C05B00 = v2;
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  v10 = off_280C05B00;
  qword_280C05AF8 = v6;
  off_280C05B00 = v2;
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_6:
  v2 = off_280C05B00;
  if (off_280C05B00)
  {
LABEL_25:
    v3 = 0;
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_26;
  }

  v3 = 1;
LABEL_26:
  v11 = pthread_mutex_unlock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  if ((v3 & 1) != 0 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return abm::debug::registerLogHandlers(v11);
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return abm::debug::registerLogHandlers(v13);
}

void sub_23C267144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::unique_ptr<ServerLogging>::~unique_ptr[abi:ne200100](&a23);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  pthread_mutex_unlock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ServerLogging::~ServerLogging(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000023C32E75BLL)
  {
    if (((v2 & 0x800000023C32E75BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023C32E75BLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023C32E75BLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

ServerLogging **std::unique_ptr<ServerLogging>::~unique_ptr[abi:ne200100](ServerLogging **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    ServerLogging::~ServerLogging(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t __cxx_global_var_init_13_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy, &ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t support::transport::ARI::initRT(support::transport::ARI *this, char *__s, dispatch_queue_s *a3)
{
  strcpy(&v51, "com.apple.ARITransport");
  *(&v51.__r_.__value_.__s + 23) = 22;
  if (!__s || !*__s)
  {
    v24 = *(this + 13);
    LOBYTE(rep) = 1;
    v25 = (*(*v24 + 16))(v24, 1, **(this + 10));
    if (v25)
    {
      if (*(v24 + 17))
      {
        support::log::buffer::borrow(v25);
        v26 = 2;
      }

      else
      {
        v26 = 0;
      }

      if (v26 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v39 = _os_log_send_and_compose_impl();
        if (v39)
        {
          v40 = v39;
          __dst.__r_.__value_.__l.__data_ = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_284EFC008;
          __p[1] = this + 40;
          v49 = &rep;
          p_dst = &__dst;
          support::log::manager::message_delegates(v24, __p, v40);
        }
      }
    }

    goto LABEL_77;
  }

  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
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
    __dst.__r_.__value_.__l.__size_ = v7;
    __dst.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v8;
    goto LABEL_11;
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  v8 = &__dst;
  if (v6)
  {
LABEL_11:
    memcpy(v8, __s, v7);
  }

  v8->__r_.__value_.__s.__data_[v7] = 0;
  v10 = std::string::insert(&__dst, 0, ".", 1uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v49 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v49) >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (SHIBYTE(v49) >= 0)
  {
    v13 = HIBYTE(v49);
  }

  else
  {
    v13 = __p[1];
  }

  std::string::append(&v51, v12, v13);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_20:
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v51;
  }

  else
  {
    v14 = v51.__r_.__value_.__r.__words[0];
  }

  v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v16 = dispatch_queue_create(v14, v15);
  v17 = *(this + 1);
  *(this + 1) = v16;
  if (v17)
  {
    dispatch_release(v17);
    v16 = *(this + 1);
  }

  if (!v16)
  {
    v27 = *(this + 13);
    LOBYTE(rep) = 1;
    v28 = (*(*v27 + 16))(v27, 1, **(this + 10));
    if (v28)
    {
      if (*(v27 + 17))
      {
        support::log::buffer::borrow(v28);
        v29 = 2;
      }

      else
      {
        v29 = 0;
      }

      if (v29 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v41 = _os_log_send_and_compose_impl();
        if (v41)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_77;
  }

  if (AriHost::Init(v16))
  {
    v27 = *(this + 13);
    LOBYTE(rep) = 1;
    v30 = (*(*v27 + 16))(v27, 1, **(this + 10));
    if (v30)
    {
      if (*(v27 + 17))
      {
        support::log::buffer::borrow(v30);
        v31 = 2;
      }

      else
      {
        v31 = 0;
      }

      if (v31 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v41 = _os_log_send_and_compose_impl();
        if (v41)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_77;
  }

  if (AriHost::RegisterClient(__s, this + 16, *(this + 1), a3))
  {
    v27 = *(this + 13);
    LOBYTE(rep) = 1;
    v32 = (*(*v27 + 16))(v27, 1, **(this + 10));
    if (v32)
    {
      if (*(v27 + 17))
      {
        support::log::buffer::borrow(v32);
        v33 = 2;
      }

      else
      {
        v33 = 0;
      }

      if (v33 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v41 = _os_log_send_and_compose_impl();
        if (v41)
        {
LABEL_76:
          v42 = v41;
          __dst.__r_.__value_.__l.__data_ = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_284EFC008;
          __p[1] = this + 40;
          v49 = &rep;
          p_dst = &__dst;
          support::log::manager::message_delegates(v27, __p, v42);
        }
      }
    }

LABEL_77:
    v22 = 0;
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v22;
    }

    goto LABEL_41;
  }

  v18 = operator new(0x20uLL);
  *v18 = 0u;
  *(v18 + 1) = 0u;
  __dst.__r_.__value_.__r.__words[0] = v18;
  v19 = *(this + 4);
  if (KTLInitOptions())
  {
    if (KTLOpenChannel())
    {
      __dst.__r_.__value_.__r.__words[0] = 0;
      v20 = *(this + 3);
      *(this + 3) = v18;
      if (!v20)
      {
        v22 = 1;
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_41;
        }

        return v22;
      }

      if (v20[1])
      {
        TelephonyUtilTransportFree();
        v21 = v20[1];
        v22 = 1;
        if (v21)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v22 = 1;
      }

      goto LABEL_40;
    }

    v34 = *(this + 13);
    v46 = 1;
    v37 = (*(*v34 + 16))(v34, 1, **(this + 10));
    if (v37)
    {
      if (*(v34 + 17))
      {
        support::log::buffer::borrow(v37);
        v38 = 2;
      }

      else
      {
        v38 = 0;
      }

      if (v38 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v43 = _os_log_send_and_compose_impl();
        if (v43)
        {
          goto LABEL_86;
        }
      }
    }
  }

  else
  {
    v34 = *(this + 13);
    v46 = 1;
    v35 = (*(*v34 + 16))(v34, 1, **(this + 10));
    if (v35)
    {
      if (*(v34 + 17))
      {
        support::log::buffer::borrow(v35);
        v36 = 2;
      }

      else
      {
        v36 = 0;
      }

      if (v36 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v43 = _os_log_send_and_compose_impl();
        if (v43)
        {
LABEL_86:
          v44 = v43;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_284EFC008;
          __p[1] = this + 40;
          v49 = &v46;
          p_dst = &rep;
          support::log::manager::message_delegates(v34, __p, v44);
        }
      }
    }
  }

  __dst.__r_.__value_.__r.__words[0] = 0;
  if (!v18[1])
  {
    v22 = 0;
    operator delete(v18);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v22;
    }

    goto LABEL_41;
  }

  TelephonyUtilTransportFree();
  v22 = 0;
  v21 = v18[1];
  v20 = v18;
  if (v21)
  {
LABEL_33:
    operator delete(v21);
    operator delete(v20);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_41;
    }

    return v22;
  }

LABEL_40:
  operator delete(v20);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_41:
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  return v22;
}

void sub_23C267D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::unique_ptr<KTLOptions,support::transport::ARI::KTLOptionsDestructor>::~unique_ptr[abi:ne200100](&a14);
  if (a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void **std::unique_ptr<KTLOptions,support::transport::ARI::KTLOptionsDestructor>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (v1[1])
    {
      TelephonyUtilTransportFree();
      v3 = v1[1];
      if (v3)
      {
        operator delete(v3);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t support::transport::ARI::initLibTU(support::transport::ARI *this, const char *__s, int a3)
{
  strcpy(&v59, "com.apple.ARITransport");
  *(&v59.__r_.__value_.__s + 23) = 22;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  if (!__s || !*__s)
  {
    v23 = *(this + 13);
    LOBYTE(rep) = 1;
    v24 = (*(*v23 + 16))(v23, 1, **(this + 10));
    if (v24)
    {
      if (*(v23 + 17))
      {
        support::log::buffer::borrow(v24);
        v25 = 2;
      }

      else
      {
        v25 = 0;
      }

      if (v25 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v37 = _os_log_send_and_compose_impl();
        if (v37)
        {
          v38 = v37;
          __dst.__r_.__value_.__l.__data_ = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_284EFC008;
          __p[1] = this + 40;
          v51 = &rep;
          p_dst = &__dst;
          support::log::manager::message_delegates(v23, __p, v38);
        }
      }
    }

LABEL_79:
    result = 0;
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_38;
    }

    return result;
  }

  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
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
    __dst.__r_.__value_.__l.__size_ = v7;
    __dst.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v8;
    goto LABEL_11;
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  v8 = &__dst;
  if (v6)
  {
LABEL_11:
    memcpy(v8, __s, v7);
  }

  v8->__r_.__value_.__s.__data_[v7] = 0;
  v10 = std::string::insert(&__dst, 0, ".", 1uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v51 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v51) >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (SHIBYTE(v51) >= 0)
  {
    v13 = HIBYTE(v51);
  }

  else
  {
    v13 = __p[1];
  }

  std::string::append(&v59, v12, v13);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_20:
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v59;
  }

  else
  {
    v14 = v59.__r_.__value_.__r.__words[0];
  }

  v15 = dispatch_queue_create(v14, 0);
  v16 = *(this + 1);
  *(this + 1) = v15;
  if (v16)
  {
    dispatch_release(v16);
    v15 = *(this + 1);
  }

  if (!v15)
  {
    v26 = *(this + 13);
    LOBYTE(rep) = 1;
    v27 = (*(*v26 + 16))(v26, 1, **(this + 10));
    if (v27)
    {
      if (*(v26 + 17))
      {
        support::log::buffer::borrow(v27);
        v28 = 2;
      }

      else
      {
        v28 = 0;
      }

      if (v28 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v39 = _os_log_send_and_compose_impl();
        if (v39)
        {
          v40 = v39;
          __dst.__r_.__value_.__l.__data_ = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_284EFC008;
          __p[1] = this + 40;
          v51 = &rep;
          p_dst = &__dst;
          support::log::manager::message_delegates(v26, __p, v40);
        }
      }
    }

    goto LABEL_79;
  }

  TelephonyBasebandPCITransportInitParameters();
  v17 = *(this + 1);
  DWORD2(v54) = a3;
  LODWORD(v55) = v55 | 1;
  LODWORD(v53) = 8;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 0x40000000;
  v48[2] = ___ZN7support9transport3ARI9initLibTUEPKcjj_block_invoke;
  v48[3] = &__block_descriptor_tmp_5;
  v48[4] = this;
  __dst.__r_.__value_.__r.__words[0] = 0;
  *(&v53 + 1) = v17;
  *&v54 = v48;
  operator new(0x58uLL);
  if ((TelephonyBasebandPCITransportCreate() & 1) == 0)
  {
    v29 = *(this + 13);
    v47 = 1;
    v30 = (*(*v29 + 16))(v29, 1, **(this + 10));
    if (v30)
    {
      if (*(v29 + 17))
      {
        support::log::buffer::borrow(v30);
        v31 = 2;
      }

      else
      {
        v31 = 0;
      }

      if (v31 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v41 = _os_log_send_and_compose_impl();
        if (v41)
        {
          v42 = v41;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_284EFC008;
          __p[1] = this + 40;
          v51 = &v47;
          p_dst = &rep;
          support::log::manager::message_delegates(v29, __p, v42);
        }
      }
    }

    goto LABEL_79;
  }

  v18 = operator new(0x20uLL);
  *v18 = 0u;
  v18[1] = 0u;
  __dst.__r_.__value_.__r.__words[0] = v18;
  if ((KTLInitOptions() & 1) == 0)
  {
    v32 = *(this + 13);
    v47 = 1;
    v33 = (*(*v32 + 16))(v32, 1, **(this + 10));
    if (!v33)
    {
      goto LABEL_75;
    }

    if (*(v32 + 17))
    {
      support::log::buffer::borrow(v33);
      v34 = 2;
    }

    else
    {
      v34 = 0;
    }

    if (!(v34 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_75;
    }

    LOWORD(__p[0]) = 0;
    v43 = _os_log_send_and_compose_impl();
    if (!v43)
    {
      goto LABEL_75;
    }

LABEL_74:
    v44 = v43;
    rep = std::chrono::system_clock::now().__d_.__rep_;
    __p[0] = &unk_284EFC008;
    __p[1] = this + 40;
    v51 = &v47;
    p_dst = &rep;
    support::log::manager::message_delegates(v32, __p, v44);
LABEL_75:
    __dst.__r_.__value_.__r.__words[0] = 0;
    if (*(v18 + 1))
    {
      TelephonyUtilTransportFree();
      v45 = *(v18 + 1);
      if (v45)
      {
        operator delete(v45);
      }
    }

    operator delete(v18);
    goto LABEL_79;
  }

  if ((KTLOpenChannel() & 1) == 0)
  {
    v32 = *(this + 13);
    v47 = 1;
    v35 = (*(*v32 + 16))(v32, 1, **(this + 10));
    if (!v35)
    {
      goto LABEL_75;
    }

    if (*(v32 + 17))
    {
      support::log::buffer::borrow(v35);
      v36 = 2;
    }

    else
    {
      v36 = 0;
    }

    if (!(v36 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_75;
    }

    LOWORD(__p[0]) = 0;
    v43 = _os_log_send_and_compose_impl();
    if (!v43)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  __dst.__r_.__value_.__r.__words[0] = 0;
  v19 = *(this + 3);
  *(this + 3) = v18;
  if (!v19)
  {
    result = 1;
    if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (v19[1])
  {
    TelephonyUtilTransportFree();
    v20 = v19[1];
    if (v20)
    {
      operator delete(v20);
    }
  }

  operator delete(v19);
  result = 1;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_38:
    v22 = result;
    operator delete(v59.__r_.__value_.__l.__data_);
    return v22;
  }

  return result;
}

void sub_23C26873C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::unique_ptr<KTLOptions,support::transport::ARI::KTLOptionsDestructor>::~unique_ptr[abi:ne200100](&a18);
  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN7support9transport3ARI9initLibTUEPKcjj_block_invoke(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (a2 == 1)
  {
    v24 = 1;
    v6 = (*(*v3 + 16))(v3, a2, **(v2 + 80));
    if (v6)
    {
      if (v3[17])
      {
        v7 = 2;
        support::log::buffer::borrow(v6);
      }

      else
      {
        v7 = 0;
      }

      if (v7 | os_log_type_enabled(**(v2 + 80), OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        v16 = _os_log_send_and_compose_impl();
        if (v16)
        {
          v12 = v16;
          v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          rep = v13.__d_.__rep_;
          v25 = &unk_284EFC008;
          v26 = v2 + 40;
          v27 = &v24;
          p_rep = &rep;
          v17 = v3 + 15;
          for (i = v3[16]; i != v17; i = *(i + 8))
          {
            v13.__d_.__rep_ = (***(i + 16))(*(i + 16), &v25, v12);
          }

          goto LABEL_29;
        }
      }
    }
  }

  else if (a2)
  {
    v8 = a2;
    v24 = 1;
    v9 = (*(*v3 + 16))(v3, 1, **(v2 + 80));
    if (v9)
    {
      if (v3[17])
      {
        v10 = 2;
        support::log::buffer::borrow(v9);
      }

      else
      {
        v10 = 0;
      }

      if (v10 | os_log_type_enabled(**(v2 + 80), OS_LOG_TYPE_ERROR))
      {
        LODWORD(v25) = 67109120;
        HIDWORD(v25) = v8;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v12 = v19;
          v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          rep = v13.__d_.__rep_;
          v25 = &unk_284EFC008;
          v26 = v2 + 40;
          v27 = &v24;
          p_rep = &rep;
          v20 = v3 + 15;
          for (j = v3[16]; j != v20; j = *(j + 8))
          {
            v13.__d_.__rep_ = (***(j + 16))(*(j + 16), &v25, v12);
          }

          goto LABEL_29;
        }
      }
    }
  }

  else
  {
    v24 = 1;
    v4 = (*(*v3 + 16))(v3, 1, **(v2 + 80));
    if (v4)
    {
      if (v3[17])
      {
        v5 = 2;
        support::log::buffer::borrow(v4);
      }

      else
      {
        v5 = 0;
      }

      if (v5 | os_log_type_enabled(**(v2 + 80), OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        v11 = _os_log_send_and_compose_impl();
        if (v11)
        {
          v12 = v11;
          v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          rep = v13.__d_.__rep_;
          v25 = &unk_284EFC008;
          v26 = v2 + 40;
          v27 = &v24;
          p_rep = &rep;
          v14 = v3 + 15;
          for (k = v3[16]; k != v14; k = *(k + 8))
          {
            v13.__d_.__rep_ = (***(k + 16))(*(k + 16), &v25, v12);
          }

LABEL_29:
          support::log::manager::release_log_buffer(v13.__d_.__rep_, v12);
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void support::transport::ARI::create(support::transport::ARI *this@<X0>, dispatch_queue_s *a2@<X1>, char a3@<W3>, const support::log::manager *a4@<X4>, support::transport::ARI **a5@<X8>)
{
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v11;
  v39 = v11;
  v37[1] = v11;
  v37[2] = v11;
  v37[0] = v11;
  v35 = operator new(0x30uLL);
  v36 = xmmword_23C32E010;
  strcpy(v35, "com.apple.telephony.basebandservices.support");
  v34 = 10;
  strcpy(__p, "ari.create");
  support::log::client::client(v37, &v35, __p, a4);
  if (v34 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    operator delete(v35);
    goto LABEL_3;
  }

  if (SHIBYTE(v36) < 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x70uLL);
  support::transport::ARI::ARI(v12, a4);
  *a5 = v12;
  v13 = getprogname();
  if (!strncmp(v13, "CommCenter", 0xAuLL))
  {
    goto LABEL_13;
  }

  v14 = getprogname();
  if (!strncmp(v14, "CommCenter-asan", 0xFuLL))
  {
    goto LABEL_13;
  }

  v15 = getprogname();
  if (!strncmp(v15, "basebandd", 9uLL))
  {
    goto LABEL_13;
  }

  HIBYTE(v28) = 10;
  strcpy(v27, "CommCenter");
  if ((ctu::isProcessRunning() & 1) == 0)
  {
    v32 = 9;
    strcpy(v31, "basebandd");
    isProcessRunning = ctu::isProcessRunning();
    if (SHIBYTE(v28) < 0)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  isProcessRunning = 1;
  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
LABEL_12:
    if (!isProcessRunning)
    {
      goto LABEL_20;
    }

LABEL_13:
    if (a3)
    {
      if (support::transport::ARI::initRT(v12, this, a2))
      {
        goto LABEL_15;
      }

      v30 = 1;
      v18 = *(&v39 + 1);
      v23 = (*(**(&v39 + 1) + 16))(*(&v39 + 1), 1, *v38);
      if (!v23)
      {
        goto LABEL_38;
      }

      if (*(v18 + 17))
      {
        support::log::buffer::borrow(v23);
        v24 = 2;
      }

      else
      {
        v24 = 0;
      }

      if (!(v24 | os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR)))
      {
        goto LABEL_38;
      }

      LOWORD(v27[0]) = 0;
      v25 = _os_log_send_and_compose_impl();
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v30 = 1;
      v18 = *(&v39 + 1);
      v21 = (*(**(&v39 + 1) + 16))(*(&v39 + 1), 1, *v38);
      if (!v21)
      {
        goto LABEL_38;
      }

      if (*(v18 + 17))
      {
        support::log::buffer::borrow(v21);
        v22 = 2;
      }

      else
      {
        v22 = 0;
      }

      if (!(v22 | os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR)))
      {
        goto LABEL_38;
      }

      LOWORD(v27[0]) = 0;
      v25 = _os_log_send_and_compose_impl();
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_37;
  }

LABEL_19:
  operator delete(v27[0]);
  if (isProcessRunning)
  {
    goto LABEL_13;
  }

LABEL_20:
  if (support::transport::ARI::initLibTU(v12, this, a2))
  {
    goto LABEL_15;
  }

  v30 = 1;
  v18 = *(&v39 + 1);
  v19 = (*(**(&v39 + 1) + 16))(*(&v39 + 1), 1, *v38);
  if (v19)
  {
    if (*(v18 + 17))
    {
      support::log::buffer::borrow(v19);
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    if (v20 | os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0]) = 0;
      v25 = _os_log_send_and_compose_impl();
      if (v25)
      {
LABEL_37:
        v26 = v25;
        v31[0] = std::chrono::system_clock::now().__d_.__rep_;
        v27[0] = &unk_284EFC008;
        v27[1] = v37 + 8;
        v28 = &v30;
        v29 = v31;
        support::log::manager::message_delegates(v18, v27, v26);
      }
    }
  }

LABEL_38:
  *a5 = 0;
  (*(*v12 + 8))(v12);
LABEL_15:
  *&v37[0] = &unk_284EFB908;
  v17 = v39;
  if (v39)
  {
    if (!atomic_fetch_add((v39 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_23C2692AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  *v37 = 0;
  (*(*v38 + 8))(v38);
  support::log::client::~client(&a37);
  _Unwind_Resume(a1);
}

support::transport::ARI *support::transport::ARI::ARI(support::transport::ARI *this, const support::log::manager *a2)
{
  *this = &unk_284EFBF08;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  v7 = operator new(0x30uLL);
  v8 = xmmword_23C32E010;
  strcpy(v7, "com.apple.telephony.basebandservices.support");
  v6 = 3;
  LODWORD(__p) = 6910561;
  support::log::client::client(this + 4, &v7, &__p, a2);
  if (v6 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(v7);
  return this;
}

void sub_23C2694A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      std::unique_ptr<KTLOptions,support::transport::ARI::KTLOptionsDestructor>::~unique_ptr[abi:ne200100](v21);
      v23 = *(v20 + 8);
      if (!v23)
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
  std::unique_ptr<KTLOptions,support::transport::ARI::KTLOptionsDestructor>::~unique_ptr[abi:ne200100](v21);
  v23 = *(v20 + 8);
  if (!v23)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v23);
  _Unwind_Resume(a1);
}

void support::transport::ARI::~ARI(support::transport::ARI *this)
{
  *this = &unk_284EFBF08;
  if (*(this + 3))
  {
    KTLCloseChannel();
  }

  v2 = *(this + 4);
  if (v2)
  {
    AriHost::DeregisterClient(v2);
  }

  *(this + 4) = &unk_284EFB908;
  v3 = *(this + 12);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = *(this + 3);
    *(this + 3) = 0;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(this + 3);
    *(this + 3) = 0;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4[1])
  {
    TelephonyUtilTransportFree();
    v5 = v4[1];
    if (v5)
    {
      operator delete(v5);
    }
  }

  operator delete(v4);
LABEL_12:
  v6 = *(this + 1);
  if (v6)
  {
    dispatch_release(v6);
  }
}

{
  support::transport::ARI::~ARI(this);

  operator delete(v1);
}

support::transport::ARI *support::transport::AriRT::AriRT(support::transport::AriRT *this, const support::log::manager *a2)
{
  result = support::transport::ARI::ARI(this, a2);
  *result = &unk_284EFBF28;
  return result;
}

{
  result = support::transport::ARI::ARI(this, a2);
  *result = &unk_284EFBF28;
  return result;
}

void support::transport::AriRT::create(support::transport::AriRT *this@<X0>, dispatch_queue_s *a2@<X1>, const support::log::manager *a3@<X3>, support::transport::ARI **a4@<X8>)
{
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v9;
  v26 = v9;
  v24[2] = v9;
  v24[0] = v9;
  v24[1] = v9;
  v22 = operator new(0x30uLL);
  v23 = xmmword_23C32E010;
  strcpy(v22, "com.apple.telephony.basebandservices.support");
  v21 = 13;
  strcpy(__p, "ari.rt.create");
  support::log::client::client(v24, &v22, __p, a3);
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v22);
LABEL_3:
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x70uLL);
  support::transport::ARI::ARI(v10, a3);
  *v10 = &unk_284EFBF28;
  *a4 = v10;
  if (support::transport::ARI::initRT(v10, this, a2))
  {
    *&v24[0] = &unk_284EFB908;
    v11 = v26;
    if (!v26)
    {
      return;
    }

    goto LABEL_5;
  }

  v19 = 1;
  v12 = *(&v26 + 1);
  v13 = (*(**(&v26 + 1) + 16))(*(&v26 + 1), 1, *v25);
  if (v13)
  {
    if (*(v12 + 17))
    {
      support::log::buffer::borrow(v13);
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    if (v14 | os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18[0]) = 0;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        rep = std::chrono::system_clock::now().__d_.__rep_;
        v18[0] = &unk_284EFC008;
        v18[1] = v24 + 8;
        v18[2] = &v19;
        v18[3] = &rep;
        support::log::manager::message_delegates(v12, v18, v16);
      }
    }
  }

  *a4 = 0;
  (*(*v10 + 8))(v10);
  *&v24[0] = &unk_284EFB908;
  v11 = v26;
  if (v26)
  {
LABEL_5:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_23C2699E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *v17 = 0;
  (*(*v18 + 8))(v18);
  support::log::client::~client(va);
  _Unwind_Resume(a1);
}

void sub_23C269A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23C269A40);
}

support::transport::ARI *support::transport::AriSelfHostedRT::AriSelfHostedRT(support::transport::AriSelfHostedRT *this, const support::log::manager *a2)
{
  result = support::transport::ARI::ARI(this, a2);
  *(result + 14) = 0;
  *(result + 15) = 0;
  *result = &unk_284EFBF48;
  *(result + 32) = -1;
  *(result + 17) = 0;
  return result;
}

{
  result = support::transport::ARI::ARI(this, a2);
  *(result + 14) = 0;
  *(result + 15) = 0;
  *result = &unk_284EFBF48;
  *(result + 32) = -1;
  *(result + 17) = 0;
  return result;
}

void support::transport::AriSelfHostedRT::~AriSelfHostedRT(std::__shared_weak_count **this)
{
  *this = &unk_284EFBF48;
  support::transport::AriSelfHostedRT::shutdownRTServer(this);
  v2 = this[17];
  if (v2)
  {
    dlclose(v2);
    this[17] = 0;
  }

  v3 = this[15];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  support::transport::ARI::~ARI(this);
}

{
  *this = &unk_284EFBF48;
  support::transport::AriSelfHostedRT::shutdownRTServer(this);
  v2 = this[17];
  if (v2)
  {
    dlclose(v2);
    this[17] = 0;
  }

  v3 = this[15];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  support::transport::ARI::~ARI(this);
}

{
  *this = &unk_284EFBF48;
  support::transport::AriSelfHostedRT::shutdownRTServer(this);
  v2 = this[17];
  if (v2)
  {
    dlclose(v2);
    this[17] = 0;
  }

  v3 = this[15];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  support::transport::ARI::~ARI(this);

  operator delete(v4);
}

void support::transport::AriSelfHostedRT::shutdownRTServer(support::transport::AriSelfHostedRT *this)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(this + 32))
  {
    goto LABEL_2;
  }

  v3 = *(this + 17);
  if (v3)
  {
    v4 = dlsym(v3, "AriHostRtShutdown");
    v5 = dlerror();
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 13);
      v37 = 1;
      v8 = (*(*v7 + 16))(v7, 1, **(this + 10));
      if (v8)
      {
        if (v7[17])
        {
          v9 = 2;
          support::log::buffer::borrow(v8);
        }

        else
        {
          v9 = 0;
        }

        if (v9 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
        {
          LODWORD(v38) = 136315138;
          *(&v38 + 4) = v6;
          v22 = _os_log_send_and_compose_impl();
          if (v22)
          {
            v23 = v22;
            v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
            rep = v24.__d_.__rep_;
            *&v38 = &unk_284EFC008;
            *(&v38 + 1) = this + 40;
            v39 = &v37;
            p_rep = &rep;
            v25 = v7 + 15;
            for (i = v7[16]; i != v25; i = *(i + 8))
            {
              v24.__d_.__rep_ = (***(i + 16))(*(i + 16), &v38, v23);
            }

LABEL_24:
            support::log::manager::release_log_buffer(v24.__d_.__rep_, v23);
          }
        }
      }
    }

    else
    {
      if (v4)
      {
        v13 = v4();
        v14 = *(this + 13);
        v15 = this + 40;
        if (v13)
        {
          v16 = v13;
          v37 = 1;
          v17 = (*(*v14 + 16))(v14, 1, **(this + 10));
          if (!v17)
          {
            goto LABEL_2;
          }

          if (*(v14 + 17))
          {
            v18 = 2;
            support::log::buffer::borrow(v17);
          }

          else
          {
            v18 = 0;
          }

          if (!(v18 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR)))
          {
            goto LABEL_2;
          }

          LODWORD(v38) = 67109120;
          DWORD1(v38) = v16;
          v32 = _os_log_send_and_compose_impl();
          if (!v32)
          {
            goto LABEL_2;
          }
        }

        else
        {
          v37 = 4;
          v30 = (*(*v14 + 16))(v14, 4, **(this + 10));
          if (!v30)
          {
            goto LABEL_2;
          }

          if (*(v14 + 17))
          {
            v31 = 2;
            support::log::buffer::borrow(v30);
          }

          else
          {
            v31 = 0;
          }

          if (!(v31 | os_log_type_enabled(**(this + 10), (*(v14 + 112) < 4u))))
          {
            goto LABEL_2;
          }

          LOWORD(v38) = 0;
          v32 = _os_log_send_and_compose_impl();
          if (!v32)
          {
            goto LABEL_2;
          }
        }

        v33 = v32;
        rep = std::chrono::system_clock::now().__d_.__rep_;
        *&v38 = &unk_284EFC008;
        *(&v38 + 1) = v15;
        v39 = &v37;
        p_rep = &rep;
        support::log::manager::message_delegates(v14, &v38, v33);
        goto LABEL_2;
      }

      v19 = *(this + 13);
      v37 = 1;
      v20 = (*(*v19 + 16))(v19, 1, **(this + 10));
      if (v20)
      {
        if (*(v19 + 17))
        {
          v21 = 2;
          support::log::buffer::borrow(v20);
        }

        else
        {
          v21 = 0;
        }

        if (v21 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
        {
          LOWORD(v38) = 0;
          v34 = _os_log_send_and_compose_impl();
          if (v34)
          {
            v35 = v34;
            rep = std::chrono::system_clock::now().__d_.__rep_;
            *&v38 = &unk_284EFC008;
            *(&v38 + 1) = this + 40;
            v39 = &v37;
            p_rep = &rep;
            support::log::manager::message_delegates(v19, &v38, v35);
          }
        }
      }
    }
  }

  else
  {
    v10 = *(this + 13);
    v37 = 1;
    v11 = (*(*v10 + 16))(v10, 1, **(this + 10));
    if (v11)
    {
      if (v10[17])
      {
        v12 = 2;
        support::log::buffer::borrow(v11);
      }

      else
      {
        v12 = 0;
      }

      if (v12 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(v38) = 0;
        v27 = _os_log_send_and_compose_impl();
        if (v27)
        {
          v23 = v27;
          v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          rep = v24.__d_.__rep_;
          *&v38 = &unk_284EFC008;
          *(&v38 + 1) = this + 40;
          v39 = &v37;
          p_rep = &rep;
          v28 = v10 + 15;
          for (j = v10[16]; j != v28; j = *(j + 8))
          {
            v24.__d_.__rep_ = (***(j + 16))(*(j + 16), &v38, v23);
          }

          goto LABEL_24;
        }
      }
    }
  }

LABEL_2:
  v1 = *MEMORY[0x277D85DE8];
}

void support::transport::AriSelfHostedRT::create(support::transport::AriSelfHostedRT *this@<X0>, dispatch_queue_s *a2@<X1>, const support::log::manager *a3@<X3>, support::transport::ARI **a4@<X8>)
{
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v9;
  v28 = v9;
  v26[2] = v9;
  v26[0] = v9;
  v26[1] = v9;
  v24 = operator new(0x30uLL);
  v25 = xmmword_23C32E010;
  strcpy(v24, "com.apple.telephony.basebandservices.support");
  __p = operator new(0x20uLL);
  v23 = xmmword_23C32C720;
  strcpy(__p, "ari.self.hosted.rt.create");
  support::log::client::client(v26, &v24, &__p, a3);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v24);
LABEL_3:
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x90uLL);
  support::transport::ARI::ARI(v10, a3);
  *(v10 + 14) = 0;
  *(v10 + 15) = 0;
  *v10 = &unk_284EFBF48;
  *(v10 + 32) = -1;
  *(v10 + 17) = 0;
  *a4 = v10;
  if (support::transport::AriSelfHostedRT::initRTServer(v10))
  {
    if (support::transport::ARI::initRT(v10, this, a2))
    {
      *&v26[0] = &unk_284EFB908;
      v11 = v28;
      if (!v28)
      {
        return;
      }

      goto LABEL_6;
    }

    v21 = 1;
    v12 = *(&v28 + 1);
    v15 = (*(**(&v28 + 1) + 16))(*(&v28 + 1), 1, *v27);
    if (v15)
    {
      if (*(v12 + 17))
      {
        support::log::buffer::borrow(v15);
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      if (v16 | os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20[0]) = 0;
        v17 = _os_log_send_and_compose_impl();
        if (v17)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    v21 = 1;
    v12 = *(&v28 + 1);
    v13 = (*(**(&v28 + 1) + 16))(*(&v28 + 1), 1, *v27);
    if (v13)
    {
      if (*(v12 + 17))
      {
        support::log::buffer::borrow(v13);
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      if (v14 | os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20[0]) = 0;
        v17 = _os_log_send_and_compose_impl();
        if (v17)
        {
LABEL_24:
          v18 = v17;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          v20[0] = &unk_284EFC008;
          v20[1] = v26 + 8;
          v20[2] = &v21;
          v20[3] = &rep;
          support::log::manager::message_delegates(v12, v20, v18);
        }
      }
    }
  }

  *a4 = 0;
  (*(*v10 + 8))(v10);
  *&v26[0] = &unk_284EFB908;
  v11 = v28;
  if (!v28)
  {
    return;
  }

LABEL_6:
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_23C26A780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  *v31 = 0;
  (*(*v32 + 8))(v32);
  support::log::client::~client(&a31);
  _Unwind_Resume(a1);
}

uint64_t support::transport::AriSelfHostedRT::initRTServer(support::transport::AriSelfHostedRT *this)
{
  v86 = *MEMORY[0x277D85DE8];
  HIBYTE(v84) = 10;
  strcpy(&__p, "CommCenter");
  if (ctu::isProcessRunning())
  {
    v2 = 0;
    if (SHIBYTE(v84) < 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v82 = 9;
    strcpy(v81, "basebandd");
    v2 = ctu::isProcessRunning() ^ 1;
    if (SHIBYTE(v84) < 0)
    {
LABEL_3:
      operator delete(__p.__m_);
      v3 = *(this + 13);
      v4 = this + 40;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v3 = *(this + 13);
  v4 = this + 40;
  if (!v2)
  {
LABEL_4:
    LOBYTE(rep) = 4;
    v5 = (*(*v3 + 16))(v3, 4, **(this + 10));
    if (v5)
    {
      if (*(v3 + 136))
      {
        support::log::buffer::borrow(v5);
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      if (v6 | os_log_type_enabled(**(this + 10), (*(v3 + 112) < 4u)))
      {
        LOWORD(__p.__m_) = 0;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v81[0] = v11.__d_.__rep_;
          __p.__m_ = &unk_284EFC008;
          *&__p.__owns_ = v4;
          v84 = &rep;
          p_rep = v81;
          v12 = v3 + 120;
          for (i = *(v3 + 128); i != v12; i = *(i + 8))
          {
            v11.__d_.__rep_ = (***(i + 16))(*(i + 16), &__p, v10);
          }

          support::log::manager::release_log_buffer(v11.__d_.__rep_, v10);
        }
      }
    }

    result = 1;
    goto LABEL_53;
  }

LABEL_9:
  LOBYTE(rep) = 4;
  v7 = (*(*v3 + 16))(v3, 4, **(this + 10));
  if (v7)
  {
    if (*(v3 + 136))
    {
      support::log::buffer::borrow(v7);
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (v8 | os_log_type_enabled(**(this + 10), (*(v3 + 112) < 4u)))
    {
      LODWORD(__p.__m_) = 136315138;
      *(&__p.__m_ + 4) = "/usr/lib/libARIServer.dylib";
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        v17.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v81[0] = v17.__d_.__rep_;
        __p.__m_ = &unk_284EFC008;
        *&__p.__owns_ = v4;
        v84 = &rep;
        p_rep = v81;
        v18 = v3 + 120;
        for (j = *(v3 + 128); j != v18; j = *(j + 8))
        {
          v17.__d_.__rep_ = (***(j + 16))(*(j + 16), &__p, v16);
        }

        support::log::manager::release_log_buffer(v17.__d_.__rep_, v16);
      }
    }
  }

  v20 = dlopen("/usr/lib/libARIServer.dylib", 2);
  *(this + 17) = v20;
  if (!v20)
  {
    v26 = *(this + 13);
    LOBYTE(rep) = 1;
    v27 = (*(*v26 + 16))(v26, 1, **(this + 10));
    if (!v27)
    {
      goto LABEL_52;
    }

    if (v26[17])
    {
      support::log::buffer::borrow(v27);
      v28 = 2;
    }

    else
    {
      v28 = 0;
    }

    if (!(v28 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_52;
    }

    LODWORD(__p.__m_) = 136315138;
    *(&__p.__m_ + 4) = "/usr/lib/libARIServer.dylib";
    v42 = _os_log_send_and_compose_impl();
    if (!v42)
    {
      goto LABEL_52;
    }

    v38 = v42;
    v39.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v81[0] = v39.__d_.__rep_;
    __p.__m_ = &unk_284EFC008;
    *&__p.__owns_ = v4;
    v84 = &rep;
    p_rep = v81;
    v43 = v26 + 15;
    for (k = v26[16]; k != v43; k = *(k + 8))
    {
      v39.__d_.__rep_ = (***(k + 16))(*(k + 16), &__p, v38);
    }

    goto LABEL_51;
  }

  v21 = dlsym(v20, "AriHostRtInit");
  v22 = dlerror();
  if (v22)
  {
    v23 = *(this + 13);
    LOBYTE(rep) = 1;
    v24 = (*(*v23 + 16))(v23, 1, **(this + 10));
    if (!v24)
    {
      goto LABEL_52;
    }

    if (v23[17])
    {
      support::log::buffer::borrow(v24);
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    if (!(v25 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_52;
    }

    LODWORD(__p.__m_) = 136315138;
    *(&__p.__m_ + 4) = v22;
    v37 = _os_log_send_and_compose_impl();
    if (!v37)
    {
      goto LABEL_52;
    }

    v38 = v37;
    v39.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v81[0] = v39.__d_.__rep_;
    __p.__m_ = &unk_284EFC008;
    *&__p.__owns_ = v4;
    v84 = &rep;
    p_rep = v81;
    v40 = v23 + 15;
    for (m = v23[16]; m != v40; m = *(m + 8))
    {
      v39.__d_.__rep_ = (***(m + 16))(*(m + 16), &__p, v38);
    }

LABEL_51:
    support::log::manager::release_log_buffer(v39.__d_.__rep_, v38);
LABEL_52:
    result = 0;
    goto LABEL_53;
  }

  if (!v21)
  {
    v34 = *(this + 13);
    LOBYTE(rep) = 1;
    v35 = (*(*v34 + 16))(v34, 1, **(this + 10));
    if (v35)
    {
      if (*(v34 + 17))
      {
        support::log::buffer::borrow(v35);
        v36 = 2;
      }

      else
      {
        v36 = 0;
      }

      if (v36 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__m_) = 0;
        v62 = _os_log_send_and_compose_impl();
        if (v62)
        {
          v63 = v62;
          v81[0] = std::chrono::system_clock::now().__d_.__rep_;
          __p.__m_ = &unk_284EFC008;
          *&__p.__owns_ = v4;
          v84 = &rep;
          p_rep = v81;
          support::log::manager::message_delegates(v34, &__p, v63);
        }
      }
    }

    goto LABEL_52;
  }

  v29 = operator new(0x90uLL);
  *(v29 + 1) = 0;
  *(v29 + 2) = 0;
  *v29 = &unk_284EFC038;
  *(v29 + 3) = 850045863;
  *(v29 + 17) = 0;
  *(v29 + 2) = 0u;
  *(v29 + 3) = 0u;
  *(v29 + 4) = 0u;
  *(v29 + 10) = 0;
  *(v29 + 11) = 1018212795;
  *(v29 + 6) = 0u;
  *(v29 + 7) = 0u;
  *(v29 + 121) = 0u;
  v81[0] = v29 + 24;
  v81[1] = v29;
  v30 = *(this + 13);
  v80 = 4;
  v31 = (*(*v30 + 16))(v30, 4, **(this + 10));
  if (v31)
  {
    v32 = v4;
    if (*(v30 + 17))
    {
      support::log::buffer::borrow(v31);
      v33 = 2;
    }

    else
    {
      v33 = 0;
    }

    v46 = v33 | os_log_type_enabled(**(this + 10), (*(v30 + 112) < 4u));
    v4 = v32;
    if (v46)
    {
      LOWORD(__p.__m_) = 0;
      v47 = _os_log_send_and_compose_impl();
      if (v47)
      {
        v48 = v47;
        rep = std::chrono::system_clock::now().__d_.__rep_;
        __p.__m_ = &unk_284EFC008;
        *&__p.__owns_ = v32;
        v84 = &v80;
        p_rep = &rep;
        support::log::manager::message_delegates(v30, &__p, v48);
      }
    }
  }

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 1174405120;
  v77[2] = ___ZN7support9transport15AriSelfHostedRT12initRTServerEv_block_invoke;
  v77[3] = &__block_descriptor_tmp_15_0;
  v77[4] = v29 + 24;
  v78 = v29;
  atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
  v49 = dispatch_queue_create("AriHostRtInit", 0);
  v50 = v21("ABMRT/PCIe/ARI", v77, v49, 1);
  *(this + 32) = v50;
  if (v49)
  {
    dispatch_release(v49);
    v50 = *(this + 32);
  }

  if (v50 == -92)
  {
    v56 = *(this + 13);
    v80 = 1;
    v57 = (*(*v56 + 16))(v56, 1, **(this + 10));
    if (v57)
    {
      if (*(v56 + 17))
      {
        support::log::buffer::borrow(v57);
        v58 = 2;
      }

      else
      {
        v58 = 0;
      }

      if (v58 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__m_) = 0;
        v69 = _os_log_send_and_compose_impl();
        if (v69)
        {
          goto LABEL_108;
        }
      }
    }

    goto LABEL_109;
  }

  if (v50)
  {
    v56 = *(this + 13);
    v80 = 1;
    v59 = (*(*v56 + 16))(v56, 1, **(this + 10));
    if (v59)
    {
      if (*(v56 + 17))
      {
        support::log::buffer::borrow(v59);
        v60 = 2;
      }

      else
      {
        v60 = 0;
      }

      if (v60 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__m_) = 0;
        v69 = _os_log_send_and_compose_impl();
        if (v69)
        {
LABEL_108:
          v70 = v69;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          __p.__m_ = &unk_284EFC008;
          *&__p.__owns_ = v4;
          v84 = &v80;
          p_rep = &rep;
          support::log::manager::message_delegates(v56, &__p, v70);
        }
      }
    }

LABEL_109:
    result = 0;
    v71 = v78;
    if (v78)
    {
      goto LABEL_120;
    }

    goto LABEL_122;
  }

  __p.__m_ = (v29 + 24);
  *&__p.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((v29 + 24));
  v51.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 5000000000;
  do
  {
    if (v29[136])
    {
      goto LABEL_86;
    }

    if (v51.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v54.__d_.__rep_ = v51.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v54.__d_.__rep_ < 1)
    {
      continue;
    }

    std::chrono::steady_clock::now();
    v55.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v55.__d_.__rep_)
    {
      v52 = 0;
      goto LABEL_64;
    }

    if (v55.__d_.__rep_ < 1)
    {
      if (v55.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v52 = 0x8000000000000000;
        goto LABEL_64;
      }
    }

    else if (v55.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v52 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_77;
    }

    v52 = 1000 * v55.__d_.__rep_;
LABEL_77:
    if (v52 > (v54.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v53.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_65;
    }

LABEL_64:
    v53.__d_.__rep_ = v52 + v54.__d_.__rep_;
LABEL_65:
    std::condition_variable::__do_timed_wait((v29 + 88), &__p, v53);
    std::chrono::steady_clock::now();
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v51.__d_.__rep_);
  if (v29[136] == 1)
  {
LABEL_86:
    v61 = 0;
    goto LABEL_92;
  }

  v61 = 1;
LABEL_92:
  if (__p.__owns_)
  {
    std::mutex::unlock(__p.__m_);
  }

  v64 = *(this + 13);
  if (v61)
  {
    v80 = 1;
    v65 = (*(*v64 + 16))(v64, 1, **(this + 10));
    if (v65)
    {
      if (*(v64 + 17))
      {
        support::log::buffer::borrow(v65);
        v66 = 2;
      }

      else
      {
        v66 = 0;
      }

      if (v66 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__m_) = 0;
        v72 = _os_log_send_and_compose_impl();
        if (v72)
        {
          goto LABEL_118;
        }
      }
    }
  }

  else
  {
    v80 = 4;
    v67 = (*(*v64 + 16))(v64, 4, **(this + 10));
    if (v67)
    {
      if (*(v64 + 17))
      {
        support::log::buffer::borrow(v67);
        v68 = 2;
      }

      else
      {
        v68 = 0;
      }

      if (v68 | os_log_type_enabled(**(this + 10), (v64[112] < 4u)))
      {
        LOWORD(__p.__m_) = 0;
        v72 = _os_log_send_and_compose_impl();
        if (v72)
        {
LABEL_118:
          v73 = v72;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          __p.__m_ = &unk_284EFC008;
          *&__p.__owns_ = v4;
          v84 = &v80;
          p_rep = &rep;
          support::log::manager::message_delegates(v64, &__p, v73);
        }
      }
    }
  }

  result = v61 ^ 1u;
  v71 = v78;
  if (v78)
  {
LABEL_120:
    if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v74 = result;
      (v71->__on_zero_shared)(v71);
      std::__shared_weak_count::__release_weak(v71);
      result = v74;
    }
  }

LABEL_122:
  v75 = v81[1];
  if (v81[1] && !atomic_fetch_add((v81[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v76 = result;
    (v75->__on_zero_shared)(v75);
    std::__shared_weak_count::__release_weak(v75);
    result = v76;
  }

LABEL_53:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C26B864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v12 + 32);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C26B8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (v20)
  {
    dispatch_release(v20);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v21 + 32);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

void sub_23C26B900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C26B914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7support9transport15AriSelfHostedRT12initRTServerEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::mutex::lock(v2);
  v3 = *(a1 + 32);
  *(v3 + 112) = 1;
  std::condition_variable::notify_one((v3 + 64));

  std::mutex::unlock(v2);
}

uint64_t __copy_helper_block_e8_32c89_ZTSNSt3__110shared_ptrIZN7support9transport15AriSelfHostedRT12initRTServerEvE8syncVarsEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c89_ZTSNSt3__110shared_ptrIZN7support9transport15AriSelfHostedRT12initRTServerEvE8syncVarsEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void support::transport::AriRT::~AriRT(support::transport::AriRT *this)
{
  support::transport::ARI::~ARI(this);

  operator delete(v1);
}

void std::__shared_ptr_emplace<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars,std::allocator<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFC038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars,std::allocator<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>>::__on_zero_shared(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 88));

  std::mutex::~mutex((a1 + 24));
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t *GetOsLogContext(void)
{
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_280C06510 = 0;
  }

  if (GetOsLogContext(void)::onceToken != -1)
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_4);
  }

  return &GetOsLogContext(void)::sOsLogContext;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void ResetDetection::create(NSObject **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x78uLL);
  v7 = *a1;
  v8 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  ResetDetection::ResetDetection(v6, &v8, a2);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ResetDetection>::shared_ptr[abi:ne200100]<ResetDetection,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1},0>(a3, v6);
  if (v7)
  {

    dispatch_release(v7);
  }
}

void sub_23C26BD00(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    dispatch_release(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t ResetDetection::ResetDetection(uint64_t a1, NSObject **a2, uint64_t a3)
{
  ctu::OsLogContext::OsLogContext(v9, "com.apple.telephony.abm", "reset.detect");
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 24) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x23EECD7F0](a1 + 32, v10);
  MEMORY[0x23EECD800](v10);
  ctu::OsLogContext::~OsLogContext(v9);
  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  v7 = *MEMORY[0x277CBECE8];
  *(a1 + 56) = TelephonyBasebandCreateController();
  *(a1 + 64) = 2;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 104;
  return a1;
}

void ResetDetection::~ResetDetection(ResetDetection *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  v4 = *(this + 6);
  *(this + 6) = 0;
  v5 = *MEMORY[0x277CBF058];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN14ResetDetectionD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_7;
  block[4] = v4;
  CFRunLoopPerformBlock(v3, v5, block);
  CFRunLoopWakeUp(*(this + 5));
  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*(this + 13));
  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*(this + 10));
  v6 = *(this + 7);
  if (v6)
  {
    CFRelease(v6);
  }

  MEMORY[0x23EECD800](this + 32);
  v7 = *(this + 3);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN14ResetDetectionD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[1];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(v1);
  }
}

void ResetDetection::start(ResetDetection *this)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 0x40000000;
  v1[2] = ___ZN14ResetDetection5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_3;
  v1[4] = this;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(this, v1);
}

void ___ZN14ResetDetection5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[4];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Started", buf, 2u);
  }

  v3 = operator new(0x10uLL);
  v4 = v1[1];
  if (!v4 || (v5 = *v1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *v3 = v5;
  v3[1] = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v1[6] = v3;
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v1[6];
    v7 = v1[7];
    v9 = v1[5];
    if (TelephonyBasebandRegisterForReset())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    v12 = v1[6];
    v11 = v1[7];
    v13 = v1[5];
    if (TelephonyBasebandRegisterForReset())
    {
      goto LABEL_10;
    }
  }

  v14 = v1[4];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "failed registering for reset detect", v16, 2u);
    if (!v1[7])
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!v1[7])
  {
    return;
  }

LABEL_11:
  v19 = 1;
  if (TelephonyBasebandGetReset())
  {
    *(v1 + 16) = v19;
  }

  else
  {
    v15 = v1[4];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "failed to poll for reset detect", v18, 2u);
    }
  }
}

void ResetDetection::sResetDetectCallback(ResetDetection *this, void *a2, int a3, unsigned int a4, void *a5)
{
  if (this)
  {
    v5 = *(this + 1);
    if (v5)
    {
      v7 = *this;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        v9 = v8;
        if (v7)
        {
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 0x40000000;
          v10[2] = ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke;
          v10[3] = &__block_descriptor_tmp_6;
          v10[4] = v7;
          v11 = a3;
          ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(v7, v10);
        }

        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t ResetDetection::poll(ResetDetection *this, BOOL *a2)
{
  result = *(this + 7);
  if (result)
  {
    v9 = 1;
    result = TelephonyBasebandGetReset();
    if (result)
    {
      *a2 = v9;
    }

    else
    {
      v5 = *(this + 4);
      v6 = result;
      v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      result = v6;
      if (v7)
      {
        *v8 = 0;
        _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, "failed to poll for reset detect", v8, 2u);
        return v6;
      }
    }
  }

  return result;
}

void ResetDetection::add(uint64_t *a1, uint64_t a2, char a3, void **a4, uint64_t a5)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1174405120;
  v10[2] = ___ZN14ResetDetection3addENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN8dispatch5blockIU13block_pointerFviEEEy_block_invoke;
  v10[3] = &__block_descriptor_tmp_4_1;
  v10[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v14 = a3;
    v9 = *a4;
    if (!*a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v14 = a3;
  v9 = *a4;
  if (*a4)
  {
LABEL_5:
    v9 = _Block_copy(v9);
  }

LABEL_6:
  aBlock = v9;
  v13 = a5;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(a1, v10);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN14ResetDetection3addENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN8dispatch5blockIU13block_pointerFviEEEy_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 80);
    *buf = 136315394;
    v24 = v4;
    v25 = 1024;
    v26 = v5;
    _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Added detection with key '%s', reset=%d", buf, 0x12u);
  }

  v6 = *(v2 + 64);
  v7 = v6;
  if (v6)
  {
    if (v6 == 2)
    {
      goto LABEL_25;
    }

    v7 = 1;
    if (v6 != 1)
    {
      v7 = 2;
    }

    if (!*(a1 + 80))
    {
      v7 = 0;
    }
  }

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 80);
  }

  v9 = v6 | *(a1 + 80);
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  if (v7 == 1)
  {
    v11 = 0;
  }

  if ((v10 & 1) == 0 && (v11 & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
    goto LABEL_47;
  }

LABEL_25:
  v12 = *(a1 + 63);
  if (*(a1 + 80))
  {
    if (v12 < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v22 = *(a1 + 40);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = _Block_copy(v13);
    }

    else
    {
      v14 = 0;
    }

    v21 = v14;
    ResetDetection::addToBlocks_sync(v2, &v22, &v21, (v2 + 72), *(a1 + 72));
    if (v14)
    {
      _Block_release(v14);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v22.__r_.__value_.__r.__words[0];
LABEL_46:
      operator delete(v17);
    }
  }

  else
  {
    if (v12 < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v20 = *(a1 + 40);
    }

    v15 = *(a1 + 64);
    if (v15)
    {
      v16 = _Block_copy(v15);
    }

    else
    {
      v16 = 0;
    }

    v19 = v16;
    ResetDetection::addToBlocks_sync(v2, &v20, &v19, (v2 + 96), *(a1 + 72));
    if (v16)
    {
      _Block_release(v16);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v20.__r_.__value_.__r.__words[0];
      goto LABEL_46;
    }
  }

LABEL_47:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_23C26C710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ResetDetection::addToBlocks_sync(uint64_t *a1, uint64_t a2, void **a3, uint64_t **a4, dispatch_time_t a5)
{
  v10 = dispatch_source_create(MEMORY[0x277D85D38], 1uLL, 0, a1[2]);
  dispatch_source_set_timer(v10, a5, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v11 = a1[1];
  if (!v11 || (v12 = *a1, (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  p_shared_weak_owners = &v13->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v14);
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 1174405120;
  handler[2] = ___ZN14ResetDetection16addToBlocks_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFviEEERNS0_3mapIS6_NS0_4pairIP17dispatch_source_sSB_EENS0_4lessIS6_EENS4_INSD_IKS6_SG_EEEEEEy_block_invoke;
  handler[3] = &__block_descriptor_tmp_5_2;
  handler[4] = a1;
  handler[5] = v12;
  v38 = v14;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v39 = a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(v10);
  v16 = *a3;
  if (*a3)
  {
    v16 = _Block_copy(v16);
  }

  v36 = v16;
  v18 = a4 + 1;
  v17 = a4[1];
  if (v17)
  {
    v19 = *(a2 + 23);
    if (v19 >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    if (v19 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 8);
    }

    while (1)
    {
      v22 = v17;
      v25 = v17[4];
      v23 = v17 + 4;
      v24 = v25;
      v26 = *(v23 + 23);
      if (v26 >= 0)
      {
        v27 = v23;
      }

      else
      {
        v27 = v24;
      }

      if (v26 >= 0)
      {
        v28 = *(v23 + 23);
      }

      else
      {
        v28 = v23[1];
      }

      if (v28 >= v21)
      {
        v29 = v21;
      }

      else
      {
        v29 = v28;
      }

      v30 = memcmp(v20, v27, v29);
      if (v30)
      {
        if (v30 < 0)
        {
          goto LABEL_17;
        }

LABEL_31:
        v31 = memcmp(v27, v20, v29);
        if (v31)
        {
          if ((v31 & 0x80000000) == 0)
          {
            goto LABEL_45;
          }
        }

        else if (v28 >= v21)
        {
LABEL_45:
          v35 = v22[8];
          v22[7] = v10;
          v22[8] = v36;
          if (v35)
          {
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        v17 = v22[1];
        if (!v17)
        {
          v18 = v22 + 1;
          goto LABEL_38;
        }
      }

      else
      {
        if (v21 >= v28)
        {
          goto LABEL_31;
        }

LABEL_17:
        v17 = *v22;
        v18 = v22;
        if (!*v22)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v22 = a4 + 1;
LABEL_38:
  v32 = operator new(0x48uLL);
  v33 = v32;
  v41 = v32;
  v42 = a4;
  v43 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v32 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v32 + 2) = *a2;
    *(v32 + 6) = *(a2 + 16);
  }

  v33[7] = 0;
  v33[8] = 0;
  *v33 = 0;
  v33[1] = 0;
  v33[2] = v22;
  *v18 = v33;
  v34 = **a4;
  if (v34)
  {
    *a4 = v34;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a4[1], v33);
  a4[2] = (a4[2] + 1);
  v35 = v33[8];
  v33[7] = v10;
  v33[8] = v36;
  if (v35)
  {
LABEL_46:
    _Block_release(v35);
  }

LABEL_47:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  std::__shared_weak_count::__release_weak(v14);
}

void sub_23C26CAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>>>>::~unique_ptr[abi:ne200100]((v27 - 104));
  std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>::~pair(&a11);
  if (a26 < 0)
  {
    operator delete(__p);
    v29 = a19;
    if (!a19)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v26);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v29 = a19;
    if (!a19)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v29);
  std::__shared_weak_count::__release_weak(v26);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c43_ZTSN8dispatch5blockIU13block_pointerFviEEE(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 63) & 0x80000000) == 0)
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    result = *(a2 + 64);
    if (!result)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  result = *(a2 + 64);
  if (result)
  {
LABEL_5:
    result = _Block_copy(result);
  }

LABEL_6:
  *(a1 + 64) = result;
  return result;
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c43_ZTSN8dispatch5blockIU13block_pointerFviEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void ___ZN14ResetDetection16addToBlocks_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFviEEERNS0_3mapIS6_NS0_4pairIP17dispatch_source_sSB_EENS0_4lessIS6_EENS4_INSD_IKS6_SG_EEEEEEy_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!*(a1 + 40))
  {
    goto LABEL_54;
  }

  v6 = *(a1 + 56);
  v9 = *(v6 + 8);
  v7 = (v6 + 8);
  v8 = v9;
  if (!v9)
  {
    goto LABEL_54;
  }

  v10 = *(a1 + 87);
  if (v10 >= 0)
  {
    v11 = (a1 + 64);
  }

  else
  {
    v11 = *(a1 + 64);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 87);
  }

  else
  {
    v12 = *(a1 + 72);
  }

  v13 = v7;
  do
  {
    while (1)
    {
      v14 = *(v8 + 55);
      v15 = v14 >= 0 ? (v8 + 4) : v8[4];
      v16 = v14 >= 0 ? *(v8 + 55) : v8[5];
      v17 = v12 >= v16 ? v16 : v12;
      v18 = memcmp(v15, v11, v17);
      if (v18)
      {
        break;
      }

      if (v16 >= v12)
      {
        goto LABEL_26;
      }

LABEL_12:
      v8 = v8[1];
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    if (v18 < 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    v13 = v8;
    v8 = *v8;
  }

  while (v8);
LABEL_27:
  if (v13 != v7)
  {
    v19 = v13[4];
    v20 = *(v13 + 55);
    if (v20 >= 0)
    {
      v21 = v13 + 4;
    }

    else
    {
      v21 = v13[4];
    }

    if (v20 >= 0)
    {
      v22 = *(v13 + 55);
    }

    else
    {
      v22 = v13[5];
    }

    if (v22 >= v12)
    {
      v23 = v12;
    }

    else
    {
      v23 = v22;
    }

    v24 = memcmp(v11, v21, v23);
    if (v24)
    {
      if (v24 < 0)
      {
        goto LABEL_54;
      }

LABEL_41:
      ResetDetection::invokeBlock_sync(v3, (v13 + 4), 3760250883);
      v25 = *(a1 + 56);
      v26 = v13[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        v28 = v13;
        do
        {
          v27 = v28[2];
          v29 = *v27 == v28;
          v28 = v27;
        }

        while (!v29);
      }

      if (*v25 == v13)
      {
        *v25 = v27;
      }

      v30 = v25[1];
      v25[2] = (v25[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v30, v13);
      v31 = v13[8];
      if (v31)
      {
        _Block_release(v31);
      }

      if (*(v13 + 55) < 0)
      {
        operator delete(v13[4]);
      }

      operator delete(v13);
    }

    else if (v12 >= v22)
    {
      goto LABEL_41;
    }
  }

LABEL_54:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void ResetDetection::invokeBlock_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(&__p, 170, sizeof(__p));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v6)
  {
    v8 = _Block_copy(v6);
    *(a2 + 24) = 0;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
  *(a2 + 24) = 0;
  if (v7)
  {
LABEL_6:
    dispatch_source_cancel(v7);
    dispatch_release(v7);
  }

LABEL_7:
  v9 = *(a1 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v14 = p_p;
    _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Signalling %s", buf, 0xCu);
  }

  v8[2](v8, a3);
  _Block_release(v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23C26CFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrI14ResetDetectionEE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v3 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v3;
  }
}

void sub_23C26D060(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrI14ResetDetectionEE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
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

void ResetDetection::notifyResetDetectBlocks_sync(uint64_t a1, uint64_t a2)
{
  v3 = &v15;
  v4 = *(a2 + 8);
  v15 = *a2;
  v16[0] = v4;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v16[1] = v5;
  if (v5)
  {
    v3 = v4 + 16;
  }

  *v3 = v16;
  *a2 = a2 + 8;
  v6 = v15;
  if (v15 != v16)
  {
    while (1)
    {
      aBlock = 0xAAAAAAAAAAAAAAAALL;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v7;
      v13 = v7;
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(__p, v6[4], v6[5]);
      }

      else
      {
        *__p = *(v6 + 2);
        *&v13 = v6[6];
      }

      v8 = v6[8];
      *(&v13 + 1) = v6[7];
      if (v8)
      {
        v8 = _Block_copy(v8);
      }

      aBlock = v8;
      ResetDetection::invokeBlock_sync(a1, __p, 0);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (SBYTE7(v13) < 0)
      {
        operator delete(__p[0]);
        v9 = v6[1];
        if (v9)
        {
          do
          {
LABEL_17:
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
          goto LABEL_5;
        }
      }

      else
      {
        v9 = v6[1];
        if (v9)
        {
          goto LABEL_17;
        }
      }

      do
      {
        v10 = v6[2];
        v11 = *v10 == v6;
        v6 = v10;
      }

      while (!v11);
LABEL_5:
      v6 = v10;
      if (v10 == v16)
      {
        v4 = v16[0];
        break;
      }
    }
  }

  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(v4);
}

void sub_23C26D234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15)
{
  std::pair<std::string const,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>::~pair(&a9);
  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(a15);
  _Unwind_Resume(a1);
}

void ResetDetection::resetDetectCallback(ResetDetection *this, void *a2, unsigned int a3, int a4, void *a5)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke;
  v5[3] = &__block_descriptor_tmp_6;
  v5[4] = this;
  v6 = a4;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(this, v5);
}

void ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == -469794815)
  {
    v5 = *(v1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I baseband alive detected", &state, 2u);
    }

    *(v1 + 64) = 0;
    ResetDetection::notifyResetDetectBlocks_sync(v1, v1 + 96);
  }

  else if (v2 == -469794816)
  {
    v3 = _os_activity_create(&dword_23C1C4000, "Baseband state: reset detected", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v3, &state);
    os_activity_scope_leave(&state);
    v4 = *(v1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I baseband reset detected", &state, 2u);
    }

    *(v1 + 64) = 1;
    ResetDetection::notifyResetDetectBlocks_sync(v1, v1 + 72);
    if (v3)
    {
      os_release(v3);
    }
  }
}

void sub_23C26D414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::os::scoped_activity::~scoped_activity(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t std::pair<std::string const,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ctu::os::scoped_activity::~scoped_activity(void **this)
{
  v1 = *this;
  if (v1)
  {
    os_release(v1);
  }
}

void *std::shared_ptr<ResetDetection>::shared_ptr[abi:ne200100]<ResetDetection,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EFC108;
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

void sub_23C26D604(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1}::operator() const(ResetDetection*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<ResetDetection *,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection *)#1},std::allocator<ResetDetection>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ResetDetection *,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection *)#1},std::allocator<ResetDetection>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1}::operator() const(ResetDetection*)::{lambda(void *)#1}::__invoke(ResetDetection *a1)
{
  if (a1)
  {
    ResetDetection::~ResetDetection(a1);

    operator delete(v1);
  }
}

void std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 8);
    if (v2)
    {
      _Block_release(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI14ResetDetectionE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284EFC150;
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

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14ResetDetectionEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14ResetDetectionEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        _Block_release(v3);
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

void *diag::DIAGConfigurerPCI::DIAGConfigurerPCI(void *a1, int *a2, uint64_t a3)
{
  v13 = *a2;
  v6 = *(a2 + 1);
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = *(a2 + 3);
  v15 = *(a2 + 2);
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v17 = v8;
  v18 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  diag::DIAGConfigurer::DIAGConfigurer(a1, &v13, a3);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = cf;
    if (!cf)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = cf;
  if (cf)
  {
LABEL_13:
    CFRelease(v11);
  }

LABEL_14:
  *a1 = &unk_284EFC190;
  a1[15] = 0;
  a1[16] = 0;
  return a1;
}

void diag::DIAGConfigurerPCI::~DIAGConfigurerPCI(diag::DIAGConfigurerPCI *this)
{
  *this = &unk_284EFC190;
  v1 = *(this + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  diag::DIAGConfigurer::~DIAGConfigurer(this);
}

{
  *this = &unk_284EFC190;
  v1 = *(this + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  diag::DIAGConfigurer::~DIAGConfigurer(this);
}

{
  *this = &unk_284EFC190;
  v1 = *(this + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    diag::DIAGConfigurer::~DIAGConfigurer(this);
  }

  else
  {
    diag::DIAGConfigurer::~DIAGConfigurer(this);
  }

  operator delete(v2);
}

void diag::DIAGConfigurerPCI::reset(diag::DIAGConfigurerPCI *this)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN4diag17DIAGConfigurerPCI5resetEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_8;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4diag14DIAGConfigurerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke_0;
  block[3] = &__block_descriptor_tmp_13_0;
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

void ___ZN4diag17DIAGConfigurerPCI5resetEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Resetting DIAG configuration", v3, 2u);
  }

  if ((*(v1 + 48) | 4) == 4)
  {
    BasebandTransport::close(*(v1 + 64));
  }
}

void diag::DIAGConfigurerPCI::starting(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZN4diag17DIAGConfigurerPCI8startingEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_3_1;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<diag::DIAGConfigurer>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4diag17DIAGConfigurerPCI8startingEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke(capabilities::radio *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 4);
  if ((*(v2 + 48) | 4) == 4)
  {
    v3 = *(v2 + 64);
    *buf = 2;
    buf[4] = 0;
    *&buf[8] = 10;
    v4 = capabilities::radio::dal(a1);
    if (v4)
    {
      v5 = 1024;
    }

    else
    {
      v5 = 0x4000;
    }

    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v4);
    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
      v5 = 0x8000;
    }

    *&buf[16] = v5;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      v8 = 4;
    }

    else
    {
      capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
      v8 = 16;
    }

    *&buf[20] = v8;
    v27 = 0;
    LOBYTE(v28) = 0;
    aBlock = 0;
    v15 = (**v3)(v3, buf, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v15)
    {
      LOBYTE(v11) = 1;
LABEL_22:
      v14 = *(a1 + 5);
      if (!v14)
      {
        goto LABEL_44;
      }

      goto LABEL_36;
    }

    v16 = *(v2 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_ERROR, "Failed to opening transport.", buf, 2u);
    }

    BasebandTransport::close(*(v2 + 64));
LABEL_35:
    LOBYTE(v11) = 0;
    v14 = *(a1 + 5);
    if (!v14)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  v9 = *(v2 + 120);
  if (v9)
  {
    if (*(v9 + 3))
    {
      goto LABEL_11;
    }
  }

  else
  {
    SoftwareBypassShim::create(buf);
    v17 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v18 = *(v2 + 128);
    *(v2 + 120) = v17;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v19 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    v9 = *(v2 + 120);
    if (*(v9 + 3))
    {
LABEL_11:
      if (*(*(v2 + 112) + 22))
      {
        v10 = 11;
      }

      else
      {
        v10 = 13;
      }

      LODWORD(v11) = SoftwareBypassShim::bypassCtl(v9, v10);
      v12 = *(v2 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = SoftwareBypassShim::bypassInterfaceMaskAsString(*(v2 + 120), v10);
        *buf = 136315394;
        *&buf[4] = v13;
        *&buf[12] = 1024;
        *&buf[14] = v11;
        _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I bypassCtl( %s): success: %d", buf, 0x12u);
        v14 = *(a1 + 5);
        if (!v14)
        {
          goto LABEL_44;
        }

        goto LABEL_36;
      }

      goto LABEL_22;
    }
  }

  v11 = *(v2 + 40);
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_35;
  }

  *buf = 0;
  _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Expected to use software bypass, but it is not supported", buf, 2u);
  LOBYTE(v11) = 0;
  v14 = *(a1 + 5);
  if (!v14)
  {
    goto LABEL_44;
  }

LABEL_36:
  if (*(a1 + 6))
  {
    v20 = _Block_copy(v14);
    v21 = v20;
    v22 = *(a1 + 6);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 1174405120;
    *&buf[16] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v27 = &__block_descriptor_tmp_14_3;
    if (v20)
    {
      v23 = _Block_copy(v20);
    }

    else
    {
      v23 = 0;
    }

    v28 = v23;
    v29 = v11;
    dispatch_async(v22, buf);
    if (v28)
    {
      _Block_release(v28);
    }

    if (v21)
    {
      _Block_release(v21);
    }
  }

LABEL_44:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_23C26E380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_40c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1)
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

void diag::DIAGConfigurerPCI::started(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZN4diag17DIAGConfigurerPCI7startedEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_6_3;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<diag::DIAGConfigurer>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4diag17DIAGConfigurerPCI7startedEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 48) == 4)
  {
    v3 = BasebandTransport::close(*(v2 + 64));
    v4 = a1[5];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v3 = 1;
    v4 = a1[5];
    if (!v4)
    {
      return;
    }
  }

  if (a1[6])
  {
    v5 = _Block_copy(v4);
    v6 = v5;
    v7 = a1[6];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_14_3;
    if (v5)
    {
      v8 = _Block_copy(v5);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v3;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}