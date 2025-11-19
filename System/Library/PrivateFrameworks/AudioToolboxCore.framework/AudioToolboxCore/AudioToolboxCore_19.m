BOOL MarshalSpatialMixerImpulseResponses::Serialize(MarshalSpatialMixerImpulseResponses *this, CASerializer *a2, char *a3, unsigned int a4)
{
  if (a4 >= 0x28)
  {
    CASerializer::Write(a2, a3 + 8);
    CASerializer::Write(a2, a3 + 12);
    v16 = *(a3 + 2);
    CASerializer::Write(a2, &v16);
    v16 = *(a3 + 4);
    CASerializer::Write(a2, &v16);
    v7 = *(a3 + 8);
    CASerializer::Write(a2, *(a3 + 3));
    v8 = *(a3 + 4);
    if (*(a3 + 4))
    {
      v9 = 0;
      v10 = *(a3 + 6);
      do
      {
        if (v10)
        {
          v11 = 0;
          v12 = *(a3 + 2);
          do
          {
            if (v12)
            {
              v13 = 0;
              for (i = 0; i < v12; ++i)
              {
                CASerializer::Write(a2, (*(*(*a3 + 8 * v9) + 8 * v11) + v13));
                v12 = *(a3 + 2);
                v13 += 4;
              }
            }

            ++v11;
          }

          while (v11 != v10);
        }

        ++v9;
      }

      while (v9 != v8);
    }
  }

  return a4 > 0x27;
}

void MarshalSpatialMixerImpulseResponses::~MarshalSpatialMixerImpulseResponses(MarshalSpatialMixerImpulseResponses *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<unsigned int>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFFC);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<unsigned int>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t RawDataMarshaller::Deserialize(RawDataMarshaller *this, CADeserializer *a2, void **a3, unsigned int *a4)
{
  Marshaller::CheckDest(this, a3, a4, a2->var3 - a2->var2);
  v7 = *a3;
  v8 = *a4;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(a2);
  memcpy(v7, Ptr, *a4);
  return 1;
}

void RawDataMarshaller::~RawDataMarshaller(RawDataMarshaller *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

uint64_t TMarshaller<__CFURL const*>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 8) == 8)
  {
    Marshaller::CheckDest(a1, a3, a4, 8uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<__CFURL const*>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 8;
}

void TSimpleMarshaller<__CFURL const*>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<char>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<char>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<float>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFFC);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<float>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TMarshaller<float>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 4) == 4)
  {
    Marshaller::CheckDest(a1, a3, a4, 4uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<float>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 4)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 4;
}

void TSimpleMarshaller<float>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

void MarshalCFPropertyList::DeserializeT(MarshalCFPropertyList *this, CADeserializer *a2, const void **a3)
{
  Plist = CADeserializer::ReadPlist(a2);
  *a3 = Plist;
  if (Plist)
  {
    v6 = Plist;
    v8 = *(this + 2);
    v7 = *(this + 3);
    if (v8 >= v7)
    {
      v10 = *(this + 1);
      v11 = (v8 - v10) >> 3;
      if ((v11 + 1) >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = v7 - v10;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v14);
      }

      v15 = (8 * v11);
      *v15 = v6;
      v9 = 8 * v11 + 8;
      v16 = *(this + 1);
      v17 = *(this + 2) - v16;
      v18 = v15 - v17;
      memcpy(v15 - v17, v16, v17);
      v19 = *(this + 1);
      *(this + 1) = v18;
      *(this + 2) = v9;
      *(this + 3) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v8 = Plist;
      v9 = (v8 + 1);
    }

    *(this + 2) = v9;
  }
}

void MarshalCFPropertyList::SerializeT(MarshalCFPropertyList *this, CASerializer *a2, const void **a3)
{
  CASerializer::WritePlist(a2, *a3);
  v5 = *a3;
  if (*a3 && *(this + 32) == 1)
  {

    CFRelease(v5);
  }
}

uint64_t TMarshaller<void const*>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 8) == 8)
  {
    Marshaller::CheckDest(a1, a3, a4, 8uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<void const*>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 8;
}

void MarshalCFPropertyList::~MarshalCFPropertyList(MarshalCFPropertyList *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

FILE *CACopyObjectDescription(uint64_t a1, void *a2)
{
  v4 = BaseOpaqueObject::ResolveOpaqueRef();
  if (v4)
  {
    a1 = v4;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v7 = funopen(&v7, 0, CAMemoryStream::Write, 0, 0);
  (*(*a1 + 16))(a1, v7);
  v5 = CAMemoryStream::cstr(&v7);
  if (a2)
  {
    *a2 = v9;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  fclose(v7);
  free(v8);
  return v5;
}

void sub_18F70A9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, FILE *a9, void *a10)
{
  fclose(a9);
  free(a10);
  _Unwind_Resume(a1);
}

void CAShowFile(void *inObject, FILE *inFile)
{
  v3 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v3)
  {
    v3 = inObject;
  }

  v4 = *(*v3 + 16);

  v4();
}

void CAShow(void *inObject)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v2 = funopen(&v7, 0, CAMemoryStream::Write, 0, 0);
  v7 = v2;
  v3 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v3)
  {
    v3 = inObject;
  }

  (*(*v3 + 16))(v3, v2);
  v4 = CADefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CAMemoryStream::cstr(&v7);
    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fclose(v7);
  free(v8);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_18F70AB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, FILE *a9, void *a10)
{
  fclose(a9);
  free(a10);
  _Unwind_Resume(a1);
}

uint64_t _ReportRPCTimeout(char *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (iEjr08d2 >= 1)
  {
    goto LABEL_12;
  }

  special_port[0] = 0;
  sp = 0;
  task_get_special_port(*MEMORY[0x1E69E9A60], 4, special_port);
  result = bootstrap_look_up(special_port[0], "com.apple.coremedia.admin", &sp);
  if (!result)
  {
    v5 = CADefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = a2;
      _os_log_error_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, "%s posting message to kill audiomxd (%d)", buf, 0x12u);
    }

    v6 = sp;
    *&v20 = 0;
    *(&v20 + 1) = &v20;
    v21 = 0x2020000000;
    v7 = getFigRPCTimeout_KillAndForceCrashReportSymbolLoc(void)::ptr;
    v22 = getFigRPCTimeout_KillAndForceCrashReportSymbolLoc(void)::ptr;
    if (!getFigRPCTimeout_KillAndForceCrashReportSymbolLoc(void)::ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL49getFigRPCTimeout_KillAndForceCrashReportSymbolLocv_block_invoke;
      v26 = &unk_1E72C2B68;
      v27 = &v20;
      ___ZL49getFigRPCTimeout_KillAndForceCrashReportSymbolLocv_block_invoke(buf);
      v7 = *(*(&v20 + 1) + 24);
    }

    _Block_object_dispose(&v20, 8);
    if (!v7)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"kern_return_t local_FigRPCTimeout_KillAndForceCrashReport(mach_port_t, natural_t, rpc_cstring_t)"}];
      [v9 handleFailureInFunction:v10 file:@"RPCTimeout.mm" lineNumber:33 description:{@"%s", dlerror()}];

      while (1)
      {
        __break(1u);
LABEL_12:
        LogACQEvents();
        snprintf(buf, 0x100uLL, "%s: RPC timeout within audiomxd. Apparently deadlocked. Writing a stackshot and exiting.", a1);
        v11 = CADefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          LODWORD(v20) = 136315138;
          *(&v20 + 4) = buf;
          _os_log_fault_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_FAULT, "%s", &v20, 0xCu);
        }

        *special_port = 0;
        v17 = special_port;
        v18 = 0x2020000000;
        v19 = 0;
        *&v20 = 0;
        *(&v20 + 1) = &v20;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy__2583;
        v23 = __Block_byref_object_dispose__2584;
        v24 = dispatch_semaphore_create(0);
        a1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:buf encoding:134217984];
        v12 = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___Z17_ReportRPCTimeoutPKci_block_invoke;
        block[3] = &unk_1E72BAAF0;
        block[5] = special_port;
        block[4] = a1;
        block[6] = &v20;
        dispatch_async(v12, block);

        v13 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(*(*(&v20 + 1) + 40), v13);
        if (*(v17 + 24) == 1)
        {
          exit(1);
        }

        abort_with_reason();
      }
    }

    result = v7(v6, a2, a1);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F70AFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2583(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t ___Z17_ReportRPCTimeoutPKci_block_invoke(void *a1)
{
  v2 = a1[4];
  getpid();
  *(*(a1[5] + 8) + 24) = WriteStackshotReportWithPID();
  v3 = *(*(a1[6] + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

void *___ZL49getFigRPCTimeout_KillAndForceCrashReportSymbolLocv_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreMediaLibraryCore(char **)::frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = ___ZL20CoreMediaLibraryCorePPc_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E72BAB10;
    v8 = 0;
    CoreMediaLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreMediaLibraryCore(char **)::frameworkLibrary;
  if (!CoreMediaLibraryCore(char **)::frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreMediaLibrary()"];
    [a1 handleFailureInFunction:v2 file:@"RPCTimeout.mm" lineNumber:30 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "FigRPCTimeout_KillAndForceCrashReport");
  *(*(a1[4] + 8) + 24) = result;
  getFigRPCTimeout_KillAndForceCrashReportSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL20CoreMediaLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMediaLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CheckRPCError(char *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v6 = CADefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = a1;
      v13 = 1024;
      v14 = 0;
      _os_log_error_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, "%s is passing a serverPID of %d to CheckRPCError!", &v11, 0x12u);
    }
  }

  if (a3 == 268451843 || a3 == 268435460)
  {
    _ReportRPCTimeout(a1, a2);
  }

  else
  {
    v9 = (a3 & 0x3E00) != 0;
    if ((a3 & 0xFFFFC1FF) != 0)
    {
      v9 = 0;
    }

    if (WORD1(a3) == 4096 || v9)
    {
      v10 = CADefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = a1;
        v13 = 1024;
        v14 = a3;
        _os_log_error_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "CheckRPCError: %s returned server mach error 0x%x!", &v11, 0x12u);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t CA::ADMBuilder::Impl::parse_loudness_metadata(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  if (!strcmp(__s1, "integratedLoudness"))
  {
    operator new();
  }

  if (!strcmp(__s1, "loudnessRange"))
  {
    operator new();
  }

  if (!strcmp(__s1, "maxTruePeak"))
  {
    operator new();
  }

  if (!strcmp(__s1, "maxMomentary"))
  {
    operator new();
  }

  if (!strcmp(__s1, "maxShortTerm"))
  {
    operator new();
  }

  if (!strcmp(__s1, "dialogueLoudness"))
  {
    operator new();
  }

  return 1;
}

uint64_t MP4BoxParser_HandlerReference::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1751411826)
    {
      v3 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v3 + 4, 4uLL, this + 60);
      if (!result)
      {
        *(this + 15) = bswap32(*(this + 15));
      }
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

void MP4BoxParser_HandlerReference::~MP4BoxParser_HandlerReference(MP4BoxParser_HandlerReference *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void HapticSharedMemoryWriter::~HapticSharedMemoryWriter(xpc_object_t *this)
{
  SharableMemoryBlock::~SharableMemoryBlock(this);

  JUMPOUT(0x193ADF220);
}

uint64_t HapticSharedMemoryWriter::reserveForWrite(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  if ((a2 & 3) != 0)
  {
    __assert_rtn("reserveForWrite", "HapticSharedMemoryWriter.h", 25, "(inSize & 3) == 0");
  }

  v5 = *(a1 + 24);
  if (!v5)
  {
    if (kHSHMScope)
    {
      v10 = *kHSHMScope;
      if (!v10)
      {
LABEL_23:
        result = 0;
        *a4 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v35 = 136315650;
      v36 = "HapticSharedMemoryWriter.h";
      v37 = 1024;
      v38 = 29;
      v39 = 2080;
      v40 = "reserveForWrite";
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot write to shared ring buffer (already deallocated?)!", &v35, 0x1Cu);
    }

    goto LABEL_23;
  }

  v7 = *v5;
  *a4 = *v5;
  if (a2)
  {
    if (v7 >= a2)
    {
      if (a2 >= v7 >> 1)
      {
        if (kHSHMScope)
        {
          result = *kHSHMScope;
          v17 = result;
          if (!result)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
          v21 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v35 = 136315650;
          v36 = "HapticSharedMemoryWriter.h";
          v37 = 1024;
          v38 = 55;
          v39 = 2080;
          v40 = "reserveForWrite";
          v22 = "%25s:%-5d %s: WARNING: Not enough space in ring buffer";
          v23 = v17;
          v24 = OS_LOG_TYPE_DEBUG;
LABEL_36:
          _os_log_impl(&dword_18F5DF000, v23, v24, v22, &v35, 0x1Cu);
        }
      }

      else
      {
        for (i = -5; ; ++i)
        {
          v13 = v5[1];
          v14 = v13 - v5[2];
          if (v14 < 0)
          {
            v15 = ~v14;
          }

          else
          {
            v15 = *v5 + ~v14;
          }

          if (v15 >= a2)
          {
            goto LABEL_45;
          }

          if (!i)
          {
            break;
          }

          usleep(0x1388u);
        }

        if (v14 < 0)
        {
          v20 = ~v14;
        }

        else
        {
          v20 = *v5 + ~v14;
        }

        if (v20 >= a2)
        {
LABEL_45:
          v28 = *v5;
          v27 = v5 + 4;
          v26 = v28;
          if ((v13 + a2) >= v28)
          {
            v29 = v26;
          }

          else
          {
            v29 = 0;
          }

          v30 = v13 + a2 - v29;
          *(a3 + 28) = v30;
          *a3 = v27 + v13;
          if (v30 <= v13)
          {
            v31 = v26 - v13;
            *(a3 + 8) = v31;
            v32 = a2 >= v31;
            v33 = a2 - v31;
            if (v33 != 0 && v32)
            {
              *(a3 + 16) = v27;
              *(a3 + 24) = v33;
            }

            result = 1;
          }

          else
          {
            *(a3 + 8) = a2;
            *(a3 + 16) = 0;
            result = 1;
            *(a3 + 24) = 0;
          }

          goto LABEL_39;
        }

        if (kHSHMScope)
        {
          v17 = *kHSHMScope;
          if (!v17)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
          v34 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 136315650;
          v36 = "HapticSharedMemoryWriter.h";
          v37 = 1024;
          v38 = 50;
          v39 = 2080;
          v40 = "reserveForWrite";
          v22 = "%25s:%-5d %s: WARNING: Unable to wait for enough write space in ring buffer";
          v23 = v17;
          v24 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_36;
        }
      }

LABEL_37:
    }

    else
    {
      if (kHSHMScope)
      {
        result = *kHSHMScope;
        v9 = result;
        if (!result)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v19 = *a4;
        v35 = 136316162;
        v36 = "HapticSharedMemoryWriter.h";
        v38 = 39;
        v39 = 2080;
        v37 = 1024;
        v40 = "reserveForWrite";
        v41 = 1024;
        v42 = a2;
        v43 = 1024;
        v44 = v19;
        _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: WARNING: Command block size (%u) is larger than entire ring buffer (%u)", &v35, 0x28u);
      }
    }
  }

  result = 0;
LABEL_39:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t writeCommandToReserved(int a1, uint64_t a2, char *__src)
{
  LODWORD(v5) = *__src;
  v6 = *(a2 + 8);
  if (v6 >= v5)
  {
    v7 = *__src;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    memcpy(*a2, __src, v7);
    LODWORD(v5) = v5 - v7;
    *(a2 + 8) -= v7;
    *a2 += v7;
  }

  if (!v5)
  {
    return 1;
  }

  v8 = *(a2 + 24);
  if (!v8)
  {
    return 0;
  }

  v9 = v5 > v8;
  if (v5 >= v8)
  {
    v5 = v8;
  }

  else
  {
    v5 = v5;
  }

  v10 = &__src[v7];
  v11 = !v9;
  memcpy(*(a2 + 16), v10, v5);
  *(a2 + 24) -= v5;
  *(a2 + 16) += v5;
  return v11;
}

uint64_t writeCommand(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *a2;
  __dst = 0;
  LODWORD(__n) = 0;
  v14 = 0;
  v15 = 0;
  v11 = 0;
  v5 = HapticSharedMemoryWriter::reserveForWrite(a1, v4, &__dst, &v11);
  if (v5)
  {
    if (!__dst)
    {
      __assert_rtn("write", "HapticSharedMemoryWriter.h", 134, "res.address0 != NULL");
    }

    v6 = __n;
    if (!__n)
    {
      __assert_rtn("write", "HapticSharedMemoryWriter.h", 135, "res.size0 != 0");
    }

    memcpy(__dst, a2, __n);
    v7 = v15;
    if (v14 && v15)
    {
      memcpy(v14, a2 + v6, v15);
      v7 = 0;
      LODWORD(v15) = 0;
    }

    LODWORD(__n) = 0;
    v8 = *(a1 + 24);
    v9 = HIDWORD(v15) - v7;
    if (HIDWORD(v15) - v7 < 0)
    {
      v9 += *v8;
    }

    v8[1] = v9;
    __dmb(0xBu);
  }

  return v5;
}

uint64_t updateReservedWriteIndex(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 24);
  v3 = a2[7] - (a2[2] + a2[6]);
  if (v3 < 0)
  {
    v3 += *v2;
  }

  v2[1] = v3;
  __dmb(0xBu);
  return result;
}

uint64_t destroyHapticCommandWriter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    (*(*result + 16))(result);
    v2 = *(*v1 + 8);

    return v2(v1);
  }

  return result;
}

void sub_18F70C598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PropertyMarshaller::~PropertyMarshaller(va);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

uint64_t InternalAudioUnitPropertyMarshaller::GetMarshaller(InternalAudioUnitPropertyMarshaller *this, AudioUnitPropertyMarshaller *a2)
{
  result = AudioUnitPropertyMarshaller::CreateMarshaller(a2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void InternalAudioUnitPropertyMarshaller::~InternalAudioUnitPropertyMarshaller(InternalAudioUnitPropertyMarshaller *this)
{
  PropertyMarshaller::~PropertyMarshaller(this);

  JUMPOUT(0x193ADF220);
}

void sub_18F70C9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void sub_18F70CEF0(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v1, 0xE1C40AACF12E9);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void TestAUProcessingBlock::~TestAUProcessingBlock(TestAUProcessingBlock *this)
{
  AUProcessingBlock_AU_Instantiating::~AUProcessingBlock_AU_Instantiating(this);

  JUMPOUT(0x193ADF220);
}

void sub_18F70D908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, const void *a24, const void *a25)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a25);
  applesauce::CF::TypeRef::~TypeRef(&a24);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void sub_18F70EA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL AUProperty::Swizzler::addGetter(SEL name, objc_class *types, Class cls, void (*a4)(void))
{
  result = class_addMethod(cls, name, a4, types);
  if (!result)
  {
    __assert_rtn("addGetter", "AUAudioUnitProperties.mm", 580, "class_addMethod(cls, mGetSelector, imp, mGetterTypes)");
  }

  return result;
}

BOOL AUProperty::Swizzler::addSetter(SEL name, objc_class *types, Class cls, void (*a4)(void))
{
  result = class_addMethod(cls, name, a4, types);
  if (!result)
  {
    __assert_rtn("addSetter", "AUAudioUnitProperties.mm", 585, "class_addMethod(cls, mSetSelector, imp, mSetterTypes)");
  }

  return result;
}

IMP AUProperty::Swizzler::replaceGetter(SEL name, objc_class *types, Class cls, void (*a4)(void))
{
  result = class_replaceMethod(cls, name, a4, types);
  if (!result)
  {
    __assert_rtn("replaceGetter", "AUAudioUnitProperties.mm", 590, "class_replaceMethod(cls, mGetSelector, imp, mGetterTypes)");
  }

  return result;
}

IMP AUProperty::Swizzler::replaceSetter(SEL name, objc_class *types, Class cls, void (*a4)(void))
{
  result = class_replaceMethod(cls, name, a4, types);
  if (!result)
  {
    __assert_rtn("replaceSetter", "AUAudioUnitProperties.mm", 595, "class_replaceMethod(cls, mSetSelector, imp, mSetterTypes)");
  }

  return result;
}

uint64_t getPropertySizeXPC(AUAudioUnit *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = [AUAudioUnitProperty propertyWithKey:@"_v2fwd_PropertySize" v2propID:a2 scope:a3 element:a4];
  v14 = 0;
  v9 = [(AUAudioUnit *)v7 _valueForProperty:v8 error:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = [v10 code];
    v12 = 0;
  }

  else
  {
    v11 = [v9 unsignedIntValue];
    v12 = 0x100000000;
  }

  return v12 | v11;
}

void AUAudioUnitProperties::AUAudioUnitProperties(AUAudioUnitProperties *this)
{
  v4 = *MEMORY[0x1E69E9840];
  *this = &unk_1F0328E60;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCPtrKeyCallbacks, &kCPtrValueCallbacks);
  *this = &unk_1F0328E80;
  *(this + 1) = Mutable;
  *(this + 2) = &unk_1F0328E60;
  v3 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], &kCPtrValueCallbacks);
  *(this + 2) = &unk_1F0328EA0;
  *(this + 3) = v3;
  operator new();
}

void sub_18F712E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, TCFDictionaryBase *a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  TCFDictionaryBase::~TCFDictionaryBase(a10);
  TCFDictionaryBase::~TCFDictionaryBase(v20);
  _Unwind_Resume(a1);
}

void sub_18F713020(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TCFDictionaryBase::~TCFDictionaryBase(TCFDictionaryBase *this)
{
  *this = &unk_1F0328E60;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  TCFDictionaryBase::~TCFDictionaryBase(this);

  JUMPOUT(0x193ADF220);
}

BOOL TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeSetter_Bus);
}

void TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x33u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x33u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}

BOOL TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeSetter_Global);
}

void TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x33u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x33u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

BOOL TV3Property<BOOL,51u,3u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,51u,3u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,51u,3u>::marshalSetter_Bus);
}

void TV3Property<BOOL,51u,3u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x33);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F71355C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t CADeprecated::TSingleton<AUAudioUnitProperties>::instance()
{
  if (atomic_load_explicit(&CADeprecated::TSingleton<AUAudioUnitProperties>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&CADeprecated::TSingleton<AUAudioUnitProperties>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<AUAudioUnitProperties>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<AUAudioUnitProperties>::sInstance;
}

void *TV3Property<BOOL,51u,3u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x33);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

BOOL TV3Property<BOOL,51u,3u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,51u,3u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,51u,3u>::marshalSetter_Global);
}

void TV3Property<BOOL,51u,3u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x33);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F71388C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<BOOL,51u,3u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x33);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<BOOL,51u,3u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,51u,3u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<BOOL,51u,3u>::stubSetter);
}

char *TV3Property<BOOL,51u,3u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "B");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

objc_selector *AUAudioUnitProperties::accessorsForProperty(Class cls, objc_class *name, objc_selector **a3, objc_selector **a4, objc_selector **a5)
{
  v8 = cls;
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  Property = class_getProperty(cls, name);
  if (Property)
  {
    result = property_getAttributes(Property);
    v11 = result;
    do
    {
      v12 = *v11;
      if (!*v11)
      {
        break;
      }

      result = strchr(v11, 44);
      v13 = result;
      if (!result)
      {
        result = strlen(v11);
        v13 = (result + v11);
      }

      if (v13 + ~v11 >= 0x7F)
      {
        v14 = 127;
      }

      else
      {
        v14 = v13 + ~v11;
      }

      if (!a3 || (v15 = a3, v12 != 71))
      {
        if (!a4)
        {
          continue;
        }

        v15 = a4;
        if (v12 != 83)
        {
          continue;
        }
      }

      memcpy(__dst, v11 + 1, v14);
      __dst[v14] = 0;
      result = sel_registerName(__dst);
      *v15 = result;
      v11 = v13 + 1;
    }

    while (*v13);
    if (a3 && !*a3)
    {
      result = sel_registerName(name);
      *a3 = result;
    }

    if (a4 && !*a4)
    {
      snprintf(__dst, 0x80uLL, "set%s:", name);
      LOBYTE(v18) = __toupper(v18);
      result = sel_registerName(__dst);
      *a4 = result;
    }
  }

  else
  {
    do
    {
      result = class_getSuperclass(v8);
      v8 = result;
    }

    while (result);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__function::__value_func<int ()(objc_object *,void *,unsigned int &)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F713ED4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<int ()(objc_object *,void *,unsigned int &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__value_func<objc_object * ()(void const*,unsigned int,int &)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7141B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<objc_object * ()(void const*,unsigned int,int &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__value_func<objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F71449C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__value_func<int ()(OpaqueAudioComponentInstance *,objc_object *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F714780(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<int ()(OpaqueAudioComponentInstance *,objc_object *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x33u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x33u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<double,double,40u,ScalarConverter,3u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeSetter_Bus);
}

void TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeSetter_Bus(void *a1, double a2)
{
  v3 = a1;
  inData = a2;
  WeakRetained = objc_loadWeakRetained(v3 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x28u, *(v3 + 32), *(v3 + 33), &inData, 8u);
}

double TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0.0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x28u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<double,double,40u,ScalarConverter,3u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeSetter_Global);
}

void TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeSetter_Global(void *a1, const char *a2, double a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x28u, 0, 0, &inData, 8u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

double TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0.0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x28u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<double,40u,3u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<double,40u,3u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<double,40u,3u>::marshalSetter_Bus);
}

void TV3Property<double,40u,3u>::marshalSetter_Bus(void *a1, double a2)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v3 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v3 + 8), 0x28);
  if (Value)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(v9 + 14);
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v9 + 32) element:*(v9 + 33)];
    [WeakRetained _setValue:v5 forProperty:v8 error:0];
  }
}

void sub_18F715120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

double TV3Property<double,40u,3u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x28);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

BOOL TV3Property<double,40u,3u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<double,40u,3u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<double,40u,3u>::marshalSetter_Global);
}

void TV3Property<double,40u,3u>::marshalSetter_Global(void *a1, double a2)
{
  v8 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v3 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v3 + 8), 0x28);
  if (Value)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    v6 = v5;
    v7 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v8 _setValue:v5 forProperty:v7 error:0];
  }
}

void sub_18F715390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

double TV3Property<double,40u,3u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x28);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

void sub_18F715470(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

IMP TV3Property<double,40u,3u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<double,40u,3u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<double,40u,3u>::stubSetter);
}

char *TV3Property<double,40u,3u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "d");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "d");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  [*a3 doubleValue];
  inData = v4;
  return AudioUnitSetProperty(v3, 0x28u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0.0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x28u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, double **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      [v6 doubleValue];
      *v5 = v9;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::v2BridgeGetter_Common(OpaqueAudioComponentInstance *a1, AudioUnitScope inScope, AudioUnitElement inElement)
{
  memset(&v15, 0, sizeof(v15));
  outDataSize = 0;
  outWritable = 0;
  if (AudioUnitGetPropertyInfo(a1, 0x20u, inScope, inElement, &outDataSize, &outWritable))
  {
    v6 = 0;
    goto LABEL_6;
  }

  std::vector<int>::resize(&v15, outDataSize >> 2);
  begin = v15.__begin_;
  if (AudioUnitGetProperty(a1, 0x20u, inScope, inElement, v15.__begin_, &outDataSize))
  {
    v6 = 0;
    if (!begin)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  end = v15.__end_;
  v10 = objc_opt_new();
  if (end != begin)
  {
    v11 = begin;
    do
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v11];
      [v10 addObject:v12];

      ++v11;
    }

    while (v11 != end);
  }

  v6 = v10;

  if (begin)
  {
LABEL_5:
    operator delete(begin);
  }

LABEL_6:

  return v6;
}

void sub_18F715B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::TAUVectorProperty(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::TAUVectorProperty(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = *a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v6;
  v11 = a4;
  if ([obj countByEnumeratingWithState:&v13 objects:v17 count:16])
  {
    *v14;
    *v14;
    [**(&v13 + 1) unsignedIntValue];
    std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](1uLL);
  }

  LODWORD(v7) = 0;
  if (v5)
  {
    v8 = v11;
    if (*v11)
    {
      v7 = 0;
    }

    else
    {
      v7 = *v11;
    }

    memcpy(v5, 0, v7);
  }

  else
  {
    v8 = v11;
  }

  *v8 = v7;
  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

id TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::v2BridgeGetter_Bus(uint64_t a1)
{
  v1 = TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::v2BridgeGetter_Common(*(a1 + 120), *(a1 + 128), *(a1 + 132));

  return v1;
}

id TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::v2BridgeGetter_Global(void *a1)
{
  v1 = a1;
  v2 = TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::v2BridgeGetter_Common([v1 audioUnit], 0, 0);

  return v2;
}

void *TV3Property<NSArray * {__strong},32u,2u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x20);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSArray * {__strong},32u,2u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x20);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSArray * {__strong},32u,2u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeSetter_Bus);
}

void TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  inData = v5;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x1Eu, *(v4 + 32), *(v4 + 33), &inData, 8u);
}

id TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x1Eu, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeSetter_Global);
}

void TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeSetter_Global(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  inData = v6;
  if (AudioUnitSetProperty([v5 audioUnit], 0x1Eu, 0, 0, &inData, 8u))
  {
    v7 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v7, a2);
    (MethodImplementation)(v5, a2, v6);
  }
}

id TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x1Eu, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<NSString * {__strong},30u,3u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},30u,3u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},30u,3u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},30u,3u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x1E);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F7167FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},30u,3u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1E);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},30u,3u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},30u,3u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},30u,3u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},30u,3u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x1E);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F716A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},30u,3u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1E);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},30u,3u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},30u,3u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},30u,3u>::stubSetter);
}

char *TV3Property<NSString * {__strong},30u,3u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x1Eu, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x1Eu, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x67506366u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x67506366u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1733321574u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67506366);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F7175F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67506366);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1733321574u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67506366);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F717848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67506366);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1733321574u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1733321574u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v4 = *a2;
  v5 = *a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("operator()", "AUAudioUnitProperties.mm", 877, "[value isKindOfClass:[NSData class]]");
  }

  v6 = v5;
  v7 = AudioUnitSetProperty(v4, *(a1 + 8), 0, 0, [v6 bytes], objc_msgSend(v6, "length"));

  return v7;
}

uint64_t std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F0328CB0;
  *(a2 + 8) = *(result + 8);
  return result;
}

id std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  outWritable = 0;
  outDataSize = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(v4, *(a1 + 8), 0, 0, &outDataSize, &outWritable);
  if (PropertyInfo || (([MEMORY[0x1E695DF88] dataWithLength:outDataSize], v7 = objc_claimAutoreleasedReturnValue(), (PropertyInfo = AudioUnitGetProperty(v4, *(a1 + 8), 0, 0, objc_msgSend(v7, "mutableBytes"), &outDataSize)) != 0) ? (v8 = v7) : (v8 = 0), v8, PropertyInfo))
  {
    if (v5)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:PropertyInfo userInfo:0];
      *v5 = v9;
    }

    v7 = 0;
  }

  return v7;
}

uint64_t std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F0328C68;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(void const*,unsigned int,int &)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = 0;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:v5];
}

uint64_t std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("operator()", "AUAudioUnitProperties.mm", 845, "[value isKindOfClass:[NSData class]]");
  }

  v7 = v6;
  v8 = *a4;
  if ([v7 length] <= v8)
  {
    if (v5)
    {
      memcpy(v5, [v7 bytes], objc_msgSend(v7, "length"));
    }

    v9 = 0;
    *a4 = [v7 length];
  }

  else
  {
    v9 = 4294956445;
  }

  return v9;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x62787073u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x62787073u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1652060275u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x62787073);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71859C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x62787073);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1652060275u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x62787073);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F7187F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x62787073);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1652060275u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1652060275u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x62787072u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x62787072u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1652060274u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x62787072);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F718F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x62787072);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1652060274u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x62787072);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F7191F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x62787072);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1652060274u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1652060274u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x67727072u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x67727072u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1735553138u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67727072);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71999C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67727072);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1735553138u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67727072);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F719BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67727072);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1735553138u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1735553138u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x61757370u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x61757370u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1635087216u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x61757370);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71A39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x61757370);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1635087216u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x61757370);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71A5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x61757370);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1635087216u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1635087216u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x70727270u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x70727270u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSString * {__strong},1886548592u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1886548592u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1886548592u,17u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},1886548592u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x70727270);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71AD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},1886548592u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x70727270);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},1886548592u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1886548592u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1886548592u,17u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},1886548592u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x70727270);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71AFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},1886548592u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x70727270);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},1886548592u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1886548592u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},1886548592u,17u>::stubSetter);
}

char *TV3Property<NSString * {__strong},1886548592u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x70727370u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x70727370u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1886548848u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x70727370);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71B79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x70727370);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1886548848u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x70727370);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71B9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x70727370);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1886548848u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1886548848u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x67727478u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x67727478u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSString * {__strong},1735554168u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1735554168u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1735554168u,17u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},1735554168u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67727478);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71C19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},1735554168u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67727478);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},1735554168u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1735554168u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1735554168u,17u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},1735554168u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67727478);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71C3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},1735554168u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67727478);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},1735554168u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1735554168u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},1735554168u,17u>::stubSetter);
}

char *TV3Property<NSString * {__strong},1735554168u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x64737067u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x64737067u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSString * {__strong},1685287015u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1685287015u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1685287015u,17u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},1685287015u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x64737067);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71CB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},1685287015u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x64737067);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},1685287015u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1685287015u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1685287015u,17u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},1685287015u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x64737067);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71CDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},1685287015u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x64737067);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},1685287015u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1685287015u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},1685287015u,17u>::stubSetter);
}

char *TV3Property<NSString * {__strong},1685287015u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TAUProperty<BOOL,unsigned int,1844u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x734u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}

uint64_t TAUProperty<BOOL,unsigned int,1844u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x734u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

void *TV3Property<BOOL,1844u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x734);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

uint64_t TV3Property<BOOL,1844u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x734);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *TV3Property<BOOL,1844u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x734u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x734u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<long,int,1845u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x735u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x735u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  v4 = outData;
  if (Property)
  {
    v4 = 0;
  }

  v5 = v4;

  return v5;
}

BOOL TAUProperty<long,int,1845u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x735u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x735u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<long,1845u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<long,1845u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<long,1845u,1u>::marshalSetter_Bus);
}

void TV3Property<long,1845u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x735);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F71DCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<long,1845u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x735);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 integerValue];
  }

  return Value;
}

BOOL TV3Property<long,1845u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<long,1845u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<long,1845u,1u>::marshalSetter_Global);
}

void TV3Property<long,1845u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x735);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F71DF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<long,1845u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x735);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<long,1845u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<long,1845u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<long,1845u,1u>::stubSetter);
}

char *TV3Property<long,1845u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "q");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "q");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 integerValue];
  return AudioUnitSetProperty(v3, 0x735u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x735u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 intValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  inData = v5;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x736u, *(v4 + 32), *(v4 + 33), &inData, 8u);
}

id TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x736u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  inData = v6;
  if (AudioUnitSetProperty([v5 audioUnit], 0x736u, 0, 0, &inData, 8u))
  {
    v7 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v7, a2);
    (MethodImplementation)(v5, a2, v6);
  }
}

id TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x736u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<NSString * {__strong},1846u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1846u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1846u,1u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},1846u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x736);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71EA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},1846u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x736);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},1846u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1846u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1846u,1u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},1846u,1u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x736);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71ECE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},1846u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x736);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},1846u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1846u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},1846u,1u>::stubSetter);
}

char *TV3Property<NSString * {__strong},1846u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x736u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x736u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<long,int,65u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x41u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x41u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  v4 = outData;
  if (Property)
  {
    v4 = 0;
  }

  v5 = v4;

  return v5;
}

BOOL TAUProperty<long,int,65u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x41u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x41u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<long,65u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<long,65u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<long,65u,1u>::marshalSetter_Bus);
}

void TV3Property<long,65u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x41);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F71F7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<long,65u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x41);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 integerValue];
  }

  return Value;
}

BOOL TV3Property<long,65u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<long,65u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<long,65u,1u>::marshalSetter_Global);
}

void TV3Property<long,65u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x41);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F71FA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<long,65u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x41);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<long,65u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<long,65u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<long,65u,1u>::stubSetter);
}

char *TV3Property<long,65u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "q");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "q");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 integerValue];
  return AudioUnitSetProperty(v3, 0x41u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x41u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 intValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

uint64_t TAUProperty<long,int,64u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x40u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  v4 = outData;
  if (Property)
  {
    v4 = 0;
  }

  v5 = v4;

  return v5;
}

uint64_t TAUProperty<long,int,64u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x40u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

void *TV3Property<long,64u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x40);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 integerValue];
  }

  return Value;
}

uint64_t TV3Property<long,64u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x40);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *TV3Property<long,64u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "q");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 integerValue];
  return AudioUnitSetProperty(v3, 0x40u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x40u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:outData];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 intValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x42u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x42u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x42u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x42u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<unsigned long,66u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,66u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,66u,1u>::marshalSetter_Bus);
}

void TV3Property<unsigned long,66u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x42);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F720D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<unsigned long,66u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x42);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 unsignedIntegerValue];
  }

  return Value;
}

BOOL TV3Property<unsigned long,66u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,66u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,66u,1u>::marshalSetter_Global);
}

void TV3Property<unsigned long,66u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x42);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F720F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<unsigned long,66u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x42);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<unsigned long,66u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,66u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<unsigned long,66u,1u>::stubSetter);
}

char *TV3Property<unsigned long,66u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "Q");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "Q");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 unsignedIntegerValue];
  return AudioUnitSetProperty(v3, 0x42u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x42u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUProperty<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x2Fu, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

id TAUProperty<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x2Fu, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

void *TV3Property<NSArray * {__strong},47u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x2F);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSArray * {__strong},47u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x2F);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSArray * {__strong},47u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x2Fu, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x2Fu, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

uint64_t std::__function::__func<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  ArrayVectorConverter<int>::ObjToC::ObjToC(&inData, *a3);
  v4 = AudioUnitSetProperty(v3, 0x7D2u, 0, 0, inData, (v7 - inData) & 0xFFFFFFFC);
  if (inData)
  {
    v7 = inData;
    operator delete(inData);
  }

  return v4;
}

void sub_18F721DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ArrayVectorConverter<int>::ObjToC::ObjToC(const void **a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 intValue];
        v10 = v9;
        v12 = a1[1];
        v11 = a1[2];
        if (v12 >= v11)
        {
          v14 = *a1;
          v15 = v12 - *a1;
          v16 = v15 >> 2;
          v17 = (v15 >> 2) + 1;
          if (v17 >> 62)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v18 = v11 - v14;
          if (v18 >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v19 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v19);
          }

          *(4 * v16) = v10;
          v13 = 4 * v16 + 4;
          memcpy(0, v14, v15);
          v20 = *a1;
          *a1 = 0;
          a1[1] = v13;
          a1[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v12 = v9;
          v13 = (v12 + 4);
        }

        a1[1] = v13;
      }

      v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v21 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F721FD0(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

id std::__function::__func<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, unsigned int *a3, _DWORD *a4)
{
  v5 = *a2;
  v6 = *a3;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (v7)
  {
    ArrayVectorConverter<int>::CToObj::CToObj(&v10, v5, v6 >> 2);
    v8 = v10;
    *a4 = 0;
  }

  else
  {
    v8 = 0;
    *a4 = -50;
  }

  return v8;
}

uint64_t *ArrayVectorConverter<int>::CToObj::CToObj(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0;
  v6 = objc_opt_new();
  v7 = *a1;
  *a1 = v6;

  if (a3)
  {
    v8 = 4 * a3;
    do
    {
      v9 = *a1;
      v10 = [MEMORY[0x1E696AD98] numberWithInt:*a2];
      [v9 addObject:v10];

      ++a2;
      v8 -= 4;
    }

    while (v8);
  }

  return a1;
}

id TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Common(OpaqueAudioComponentInstance *a1, AudioUnitScope inScope, AudioUnitElement inElement)
{
  memset(&v12, 0, sizeof(v12));
  outDataSize = 0;
  outWritable = 0;
  if (AudioUnitGetPropertyInfo(a1, 0x7D2u, inScope, inElement, &outDataSize, &outWritable))
  {
    v6 = 0;
    goto LABEL_6;
  }

  std::vector<int>::resize(&v12, outDataSize >> 2);
  begin = v12.__begin_;
  if (AudioUnitGetProperty(a1, 0x7D2u, inScope, inElement, v12.__begin_, &outDataSize))
  {
    v6 = 0;
    if (!begin)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  ArrayVectorConverter<int>::CToObj::CToObj(&v9, begin, v12.__end_ - begin);
  v6 = v9;

  if (begin)
  {
LABEL_5:
    operator delete(begin);
  }

LABEL_6:

  return v6;
}

void sub_18F72237C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, void **a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  ArrayVectorConverter<int>::ObjToC::ObjToC(&__src, *a2);
  v6 = __src;
  LODWORD(v7) = (v10 - __src) & 0xFFFFFFFC;
  if (v5)
  {
    if (v7 >= *a4)
    {
      v7 = *a4;
    }

    else
    {
      v7 = v7;
    }

    memcpy(v5, __src, v7);
  }

  *a4 = v7;
  if (v6)
  {
    v10 = v6;
    operator delete(v6);
  }

  return 0;
}

BOOL TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeSetter_Bus);
}

void TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeSetter_Common(OpaqueAudioComponentInstance *a1, void *a2)
{
  ArrayVectorConverter<int>::ObjToC::ObjToC(&inData, a2);
  AudioUnitSetProperty(a1, 0x7D2u, 0, 0, inData, (v4 - inData) & 0xFFFFFFFC);
  if (inData)
  {
    v4 = inData;
    operator delete(inData);
  }
}

void sub_18F72261C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Bus(uint64_t a1)
{
  v1 = TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Common(*(a1 + 120), *(a1 + 128), *(a1 + 132));

  return v1;
}

BOOL TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeSetter_Global);
}

void TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v4 = a3;
  TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeSetter_Common([v5 audioUnit], v4);
}

id TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Global(void *a1)
{
  v1 = a1;
  v2 = TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Common([v1 audioUnit], 0, 0);

  return v2;
}

BOOL TV3Property<NSArray * {__strong},2002u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSArray * {__strong},2002u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSArray * {__strong},2002u,1u>::marshalSetter_Bus);
}

void TV3Property<NSArray * {__strong},2002u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x7D2);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F72292C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSArray * {__strong},2002u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x7D2);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSArray * {__strong},2002u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSArray * {__strong},2002u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSArray * {__strong},2002u,1u>::marshalSetter_Global);
}

void TV3Property<NSArray * {__strong},2002u,1u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x7D2);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F722B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSArray * {__strong},2002u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x7D2);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSArray * {__strong},2002u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSArray * {__strong},2002u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSArray * {__strong},2002u,1u>::stubSetter);
}

char *TV3Property<NSArray * {__strong},2002u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TAUProperty<BOOL,unsigned int,58u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x3Au, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}

uint64_t TAUProperty<BOOL,unsigned int,58u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x3Au, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

void *TV3Property<BOOL,58u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x3A);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

uint64_t TV3Property<BOOL,58u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x3A);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *TV3Property<BOOL,58u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x3Au, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x3Au, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  inData = v5;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x19u, *(v4 + 32), *(v4 + 33), &inData, 8u);
}

id TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x19u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  inData = v6;
  if (AudioUnitSetProperty([v5 audioUnit], 0x19u, 0, 0, &inData, 8u))
  {
    v7 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v7, a2);
    (MethodImplementation)(v5, a2, v6);
  }
}

id TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x19u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<NSString * {__strong},25u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},25u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},25u,1u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},25u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x19);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F723A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},25u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x19);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},25u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},25u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},25u,1u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},25u,1u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x19);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F723CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},25u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x19);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},25u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},25u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},25u,1u>::stubSetter);
}

char *TV3Property<NSString * {__strong},25u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3 && (v5 = (*(*v3 + 8))(v3)) != 0 && ((v6 = *(v5 + 8), v7 = v6[9], v8 = v6[10], v9 = v6[11], v8 == 1297108039) ? (v10 = v7 == 1635085670) : (v10 = 0), v10 ? (v11 = v9 == 1129074009) : (v11 = 0), v11))
  {
    v13 = 4294967292;
  }

  else
  {
    v12 = v4;
    inData = v4;
    v13 = AudioUnitSetProperty(v3, 0x19u, 0, 0, &inData, 8u);
  }

  return v13;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x19u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

void *TV3Property<NSArray * {__strong},13u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xD);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSArray * {__strong},13u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xD);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSArray * {__strong},13u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x25u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x25u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}

BOOL TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x25u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x25u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

BOOL TV3Property<BOOL,37u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,37u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,37u,1u>::marshalSetter_Bus);
}

void TV3Property<BOOL,37u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x25);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F724B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<BOOL,37u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x25);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

BOOL TV3Property<BOOL,37u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,37u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,37u,1u>::marshalSetter_Global);
}

void TV3Property<BOOL,37u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x25);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F724D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<BOOL,37u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x25);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<BOOL,37u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,37u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<BOOL,37u,1u>::stubSetter);
}

char *TV3Property<BOOL,37u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "B");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x25u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x25u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

uint64_t TAUProperty<BOOL,unsigned int,29u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x1Du, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}

uint64_t TAUProperty<BOOL,unsigned int,29u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x1Du, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

void *TV3Property<BOOL,29u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1D);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

uint64_t TV3Property<BOOL,29u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1D);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *TV3Property<BOOL,29u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x1Du, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x1Du, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x15u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x15u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}

BOOL TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x15u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x15u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

BOOL TV3Property<BOOL,21u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,21u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,21u,1u>::marshalSetter_Bus);
}

void TV3Property<BOOL,21u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x15);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F72608C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<BOOL,21u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x15);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

BOOL TV3Property<BOOL,21u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,21u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,21u,1u>::marshalSetter_Global);
}

void TV3Property<BOOL,21u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x15);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F7262E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<BOOL,21u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x15);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<BOOL,21u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,21u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<BOOL,21u,1u>::stubSetter);
}

char *TV3Property<BOOL,21u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "B");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::v2PropertySize(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    PropertySizeXPC = getPropertySizeXPC(v6, 21, a3, a4);
    v8 = PropertySizeXPC & 0x100000000;
    v9 = PropertySizeXPC;
  }

  else
  {
    v8 = 0x100000000;
    v9 = 4;
  }

  return v8 | v9;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x15u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x15u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x1Au, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x1Au, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x1Au, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x1Au, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<unsigned long,26u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,26u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,26u,1u>::marshalSetter_Bus);
}

void TV3Property<unsigned long,26u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x1A);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F726EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<unsigned long,26u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1A);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 unsignedIntegerValue];
  }

  return Value;
}

BOOL TV3Property<unsigned long,26u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,26u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,26u,1u>::marshalSetter_Global);
}

void TV3Property<unsigned long,26u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x1A);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F7270FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<unsigned long,26u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1A);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<unsigned long,26u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,26u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<unsigned long,26u,1u>::stubSetter);
}

char *TV3Property<unsigned long,26u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "Q");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "Q");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 unsignedIntegerValue];
  return AudioUnitSetProperty(v3, 0x1Au, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x1Au, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

double TAUProperty<double,double,20u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0.0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x14u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

double TAUProperty<double,double,20u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0.0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x14u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

double TV3Property<double,20u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x14);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

double TV3Property<double,20u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x14);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

void sub_18F727B0C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

char *TV3Property<double,20u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "d");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TAUPropertyBase<double,double,20u,ScalarConverter,0u>::v2PropertySize(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    PropertySizeXPC = getPropertySizeXPC(v6, 20, a3, a4);
    v8 = PropertySizeXPC & 0x100000000;
    v9 = PropertySizeXPC;
  }

  else
  {
    v8 = 0x100000000;
    v9 = 8;
  }

  return v8 | v9;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  [*a3 doubleValue];
  inData = v4;
  return AudioUnitSetProperty(v3, 0x14u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0.0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x14u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:outData];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      [v6 doubleValue];
      *v5 = v9;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

double TAUProperty<double,double,12u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0.0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0xCu, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

double TAUProperty<double,double,12u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0.0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0xCu, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

double TV3Property<double,12u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xC);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

double TV3Property<double,12u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xC);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

void sub_18F728364(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

char *TV3Property<double,12u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "d");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TAUPropertyBase<double,double,12u,ScalarConverter,0u>::v2PropertySize(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    PropertySizeXPC = getPropertySizeXPC(v6, 12, a3, a4);
    v8 = PropertySizeXPC & 0x100000000;
    v9 = PropertySizeXPC;
  }

  else
  {
    v8 = 0x100000000;
    v9 = 8;
  }

  return v8 | v9;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  [*a3 doubleValue];
  inData = v4;
  return AudioUnitSetProperty(v3, 0xCu, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0.0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0xCu, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:outData];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      [v6 doubleValue];
      *v5 = v9;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUProperty<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 16;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x24u, *(v1 + 32), *(v1 + 33), outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    PresetConverter::CToObj<true,false>::CToObj(&v6, outData);
    v4 = v6;
  }

  return v4;
}

id *PresetConverter::CToObj<true,false>::CToObj(id *a1, int *a2)
{
  *a1 = 0;
  v4 = objc_opt_new();
  v5 = *a1;
  *a1 = v4;

  [*a1 setNumber:*a2];
  v6 = *(a2 + 1);
  [*a1 setName:v6];

  return a1;
}

id TAUProperty<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 16;
  if (AudioUnitGetProperty([v3 audioUnit], 0x24u, 0, 0, outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    PresetConverter::CToObj<true,false>::CToObj(&v8, outData);
    v6 = v8;
  }

  return v6;
}

void *TV3Property<AUAudioUnitPreset * {__strong},36u,4u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x24);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<AUAudioUnitPreset * {__strong},36u,4u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x24);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<AUAudioUnitPreset * {__strong},36u,4u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  v4 = *a3;
  v8 = v4;
  inData[0] = PresetConverter::ObjToC<true>::operator AUPreset(&v8);
  inData[1] = v5;

  v6 = AudioUnitSetProperty(v3, 0x24u, 0, 0, inData, 0x10u);
  return v6;
}

uint64_t PresetConverter::ObjToC<true>::operator AUPreset(id *a1)
{
  v2 = [*a1 number];
  [*a1 name];

  return v2;
}

id std::__function::__func<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 16;
  Property = AudioUnitGetProperty(v3, 0x24u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v13 = outData;
    PresetConverter::CToObj<true,false>::CToObj(&v12, &v13);
    v8 = v12;

    v6 = v8;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 0x10u)
  {
    if (v5)
    {
      v9 = v6;
      v10 = [v9 number];
      v11 = [v9 name];
      *v5 = v10;
      v5[1] = v11;
    }

    v8 = 0;
    *a4 = 16;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUProperty<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x18u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    FactoryPresetsConverter::CToObj<true>::CToObj(&v6, outData);
    v4 = v6;
  }

  return v4;
}

id *FactoryPresetsConverter::CToObj<true>::CToObj(id *a1, CFArrayRef theArray)
{
  *a1 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
    v6 = *a1;
    *a1 = v5;

    if (Count >= 1)
    {
      v7 = 0;
      v8 = Count & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        v10 = objc_opt_new();
        [v10 setNumber:*ValueAtIndex];
        [v10 setName:*(ValueAtIndex + 1)];
        v11 = v10;
        v12 = v10;
        [*a1 addObject:v12];

        ++v7;
      }

      while (v8 != v7);
    }

    CFRelease(theArray);
  }

  return a1;
}

id TAUProperty<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x18u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    FactoryPresetsConverter::CToObj<true>::CToObj(&v8, outData);
    v6 = v8;
  }

  return v6;
}

void *TV3Property<NSArray * {__strong},24u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x18);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSArray * {__strong},24u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x18);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSArray * {__strong},24u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = v4;
  callBacks = *byte_1F0329498;
  v6 = [v5 count];
  v7 = CFArrayCreateMutable(0, v6, &callBacks);
  if (v6 >= 1)
  {
    v10[1] = [v4 objectAtIndexedSubscript:0];
    operator new();
  }

  v10[0] = v7;
  v8 = AudioUnitSetProperty(v3, 0x18u, 0, 0, v10, 8u);

  return v8;
}

void FactoryPresetsConverter::RefCountedAUPreset::cfRelease(FactoryPresetsConverter::RefCountedAUPreset *this, const __CFAllocator *a2, const void *a3)
{
  v3 = *(a2 + 4) - 1;
  *(a2 + 4) = v3;
  if (a2)
  {
    if (!v3)
    {
      JUMPOUT(0x193ADF220);
    }
  }
}

const __CFAllocator *FactoryPresetsConverter::RefCountedAUPreset::cfRetain(FactoryPresetsConverter::RefCountedAUPreset *this, const __CFAllocator *a2, const void *a3)
{
  result = a2;
  ++*(a2 + 4);
  return result;
}

id std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x18u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = *MEMORY[0x1E696A768];
      v7 = Property;
      v8 = MEMORY[0x1E696ABC0];
LABEL_4:
      v9 = [v8 errorWithDomain:v6 code:v7 userInfo:0];
      v10 = 0;
      *v4 = v9;
LABEL_7:

      goto LABEL_11;
    }
  }

  else
  {
    FactoryPresetsConverter::CToObj<true>::CToObj(&v15, outData);
    v11 = v15;

    if (v11)
    {
      v9 = v11;
      v10 = v9;
      goto LABEL_7;
    }

    if (v4)
    {
      v8 = MEMORY[0x1E696ABC0];
      v6 = *MEMORY[0x1E696A768];
      v7 = -10851;
      goto LABEL_4;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

uint64_t std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, CFMutableArrayRef **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      v14 = v5;
      v9 = v6;
      callBacks = *byte_1F0329498;
      v10 = [v9 count];
      v11 = CFArrayCreateMutable(0, v10, &callBacks);
      if (v10 >= 1)
      {
        v12 = [v9 objectAtIndexedSubscript:0];
        operator new();
      }

      *v14 = v11;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUProperty<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x32u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

id TAUProperty<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x32u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

void *TV3Property<NSDictionary * {__strong},50u,4u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x32);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSDictionary * {__strong},50u,4u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x32);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSDictionary * {__strong},50u,4u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x32u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x32u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUProperty<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

id TAUProperty<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

void *TV3Property<NSDictionary * {__strong},0u,4u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSDictionary * {__strong},0u,4u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSDictionary * {__strong},0u,4u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0xEu, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0xEu, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0xEu, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0xEu, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<unsigned long,14u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,14u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,14u,1u>::marshalSetter_Bus);
}

void TV3Property<unsigned long,14u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0xE);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F72B13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<unsigned long,14u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xE);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 unsignedIntegerValue];
  }

  return Value;
}