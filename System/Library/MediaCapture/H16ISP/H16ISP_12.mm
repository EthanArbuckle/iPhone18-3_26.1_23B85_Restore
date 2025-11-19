void H16ISP::H16ISPMetadataDictCreatorGraphNode::~H16ISPMetadataDictCreatorGraphNode(H16ISP::H16ISPMetadataDictCreatorGraphNode *this)
{
  *this = &unk_2838138E0;
  v2 = *(this + 11);
  if (v2)
  {
    MEMORY[0x22AA55B40](v2, 0x1060C80A6619778);
  }

  v3 = *(this + 12);
  if (v3)
  {
    MEMORY[0x22AA55B40](v3, 0x1000C808D959DE2);
  }

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPMetadataDictCreatorGraphNode::~H16ISPMetadataDictCreatorGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISPExclaveDebugService::StartDebugService(H16ISPExclaveDebugService *this, int a2)
{
  if ((*this & 2) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "ISPExclaveExfiltrationThread");
    v7 = a2;
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
      v9 = 1;
      if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v6.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v8 = v6;
      v9 = 1;
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v8;
    }

    v5 = v9;
    InitExclaveFiltrationServiceThread();
  }

  return 3758097084;
}

void sub_2248D135C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 25) < 0)
  {
    operator delete(*(v37 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_2248D1538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x22AA55B60](v16, v17);
  _Unwind_Resume(a1);
}

uint64_t H16ISPExclaveDebugService::StopDebugService(H16ISPExclaveDebugService *this)
{
  pthread_mutex_lock(&MutexLock);
  bStopService = 1;

  return pthread_mutex_unlock(&MutexLock);
}

uint64_t ISPExclaveFiltrationThreadMain(_DWORD *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 2);
  v3 = *(a1 + 31);
  v4 = (a1 + 2);
  if (v3 < 0)
  {
    v4 = *v2;
  }

  pthread_setname_np(v4);
  pthread_mutex_lock(&MutexLock);
  if (bStopService)
  {
LABEL_13:
    pthread_mutex_unlock(&MutexLock);
    goto LABEL_14;
  }

  while (1)
  {
    pthread_mutex_unlock(&MutexLock);
    v5 = a1[8];
    if (v5 == 1)
    {
      break;
    }

    if (v5)
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ISPExclaveFiltrationThreadMain((a1 + 8), v12, v13, v14, v15, v16, v17, v18);
      }

      goto LABEL_14;
    }

    bzero(&v22, 0x214uLL);
    v27 = *a1;
    v21 = 851970;
    if (ispExclaveKitCommand())
    {
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v19 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v19;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        ISPExclaveFiltrationThreadMain();
      }

      goto LABEL_14;
    }

LABEL_9:
    v6 = v29;
    pthread_mutex_lock(&MutexLock);
    v7 = bStopService;
    pthread_mutex_unlock(&MutexLock);
    if (v7)
    {
      goto LABEL_14;
    }

    if (v6)
    {
      usleep(1000 * v6);
    }

    pthread_mutex_lock(&MutexLock);
    if (bStopService)
    {
      goto LABEL_13;
    }
  }

  bzero(&v22, 0x214uLL);
  v27 = *a1;
  v21 = 851971;
  v28 = 1;
  if (!ispExclaveKitCommand())
  {
    goto LABEL_9;
  }

  v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v20 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v20;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    ISPExclaveFiltrationThreadMain();
  }

LABEL_14:
  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v8 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *a1;
    v10 = a1[8];
    v21 = 136315650;
    v22 = "ISPExclaveFiltrationThreadMain";
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    v26 = v10;
    _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_INFO, "%s - Exiting filtration debug service thread, ch %d filtration type %d\n", &v21, 0x18u);
    goto LABEL_19;
  }

  if (a1)
  {
LABEL_19:
    if (*(a1 + 31) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x22AA55B60](a1, 0x1012C40927D503CLL);
  }

  return 0;
}

void rotationMatrixToAngles(uint64_t a1@<X0>, long double *a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *a2 = atan2(v4, v5);
  a2[1] = atan2(-*(a1 + 48), sqrt(v5 * v5 + v4 * v4));
  a2[2] = atan2(*(a1 + 24), *a1);
}

BOOL GMC_ToleranceTest(__int128 *a1, double *a2, double *a3)
{
  v5 = a1[3];
  v12 = a1[2];
  v13 = v5;
  v14 = *(a1 + 8);
  v6 = a1[1];
  v10 = *a1;
  v11 = v6;
  rotationMatrixToAngles(&v10, v15);
  v7 = 0;
  *&v11 = 0;
  v10 = 0uLL;
  do
  {
    *(&v10 + v7 * 8) = v15[v7] * 1000.0;
  }

  while (v7++ < 2);
  *a3 = v10;
  *(a3 + 2) = v11;
  return fabs(*a3) <= a2[85] && fabs(a3[1]) <= a2[86] && fabs(a3[2]) <= a2[87];
}

double H16ISP::H16ISPGraphExclaveExitNode::H16ISPGraphExclaveExitNode(H16ISP::H16ISPGraphExclaveExitNode *this, H16ISP::H16ISPDevice *a2)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 25);
  *v3 = &unk_283813958;
  *(v3 + 80) = 0;
  *(v3 + 88) = a2;
  *(v3 + 84) = 0;
  result = 0.0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0;
  return result;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 25);
  *v3 = &unk_283813958;
  *(v3 + 80) = 0;
  *(v3 + 88) = a2;
  *(v3 + 84) = 0;
  result = 0.0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0;
  return result;
}

void H16ISP::H16ISPGraphExclaveExitNode::~H16ISPGraphExclaveExitNode(H16ISP::H16ISPGraphExclaveExitNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPGraphExclaveExitNode::onDeactivate(H16ISP::H16ISPGraphExclaveExitNode *this)
{
  v1 = *(this + 21);
  if (v1)
  {
    v3 = 0;
    v4 = (this + 112);
    do
    {
      if (*v4)
      {
        dispatch_sync(*v4, &__block_literal_global_1);
        dispatch_release(*v4);
        *v4 = 0;
        v1 = *(this + 21);
      }

      ++v3;
      v4 += 3;
    }

    while (v3 < v1);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveExitNode::RegisterH16ISPExclaveMetadataReceivedForChannel(H16ISP::H16ISPGraphExclaveExitNode *this, int a2, int (*a3)(void *, unint64_t, const __CFDictionary *))
{
  if (!*(this + 16))
  {
    return 3758097112;
  }

  v3 = *(this + 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN6H16ISP26H16ISPGraphExclaveExitNode47RegisterH16ISPExclaveMetadataReceivedForChannelEjPFiPvyPK14__CFDictionaryE_block_invoke;
  block[3] = &__block_descriptor_tmp_2;
  block[4] = this;
  block[5] = a3;
  v6 = a2;
  dispatch_async(v3, block);
  return 0;
}

NSObject *___ZN6H16ISP26H16ISPGraphExclaveExitNode47RegisterH16ISPExclaveMetadataReceivedForChannelEjPFiPvyPK14__CFDictionaryE_block_invoke(NSObject *result)
{
  isa = result[4].isa;
  v2 = *(isa + 21);
  if (v2 <= 2)
  {
    v3 = isa + 24 * v2 + 96;
    *(v3 + 8) = result[5];
    *v3 = result[6].isa;
    result = H16ISP::CreateFixedPrioritySerialDispatchQueue("com.apple.h16ispgraphexclaveexit.callback.queue", 0x3A);
    v4 = *(isa + 21);
    *(isa + 3 * v4 + 14) = result;
    *(isa + 21) = v4 + 1;
  }

  return result;
}

uint64_t H16ISP::H16ISPGraphExclaveExitNode::onMessageProcessing(H16ISP::H16ISPDevice **this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 9) & (1 << H16ISP::H16ISPFilterGraphNode::GetType(this));
  *(this + 80) = v4 != 0;
  if (v4)
  {
    pthread_mutex_lock((a2 + 8));
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v25 = 0;
    v5 = *(a2 + 24);
    v6 = *(a2 + 90);
    v7 = *(a2 + 10);
    v8 = *(a2 + 11);
    v9 = *(a2 + 46);
    if (v9)
    {
      v25 = *(a2 + 46);
      CFRetain(v9);
    }

    else
    {
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphExclaveExitNode::onMessageProcessing(v6, v11);
      }
    }

    pthread_mutex_unlock((a2 + 8));
    v12 = *(*&buf[8] + 24);
    if (v12)
    {
      v13 = *(this + 21);
      if (v13)
      {
        v14 = 0;
        v15 = (this + 14);
        while (1)
        {
          if (v5 == *(v15 - 4))
          {
            if (*(v15 - 1))
            {
              v16 = *v15;
              if (*v15)
              {
                break;
              }
            }
          }

          ++v14;
          v15 += 3;
          if (v13 == v14)
          {
            goto LABEL_19;
          }
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN6H16ISP26H16ISPGraphExclaveExitNode19onMessageProcessingEPNS_24H16ISPFilterGraphMessageE_block_invoke;
        block[3] = &unk_2785313C8;
        block[6] = v14;
        block[7] = v7;
        block[8] = v8;
        block[4] = buf;
        block[5] = this;
        dispatch_async(v16, block);
        if (H16ISP::H16ISPDevice::enabledExclaveDebug(this[11]))
        {
          v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
          {
            v18 = os_log_create("com.apple.isp", "exclaves");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v18;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v20 = 67109376;
            v21 = v6;
            v22 = 1024;
            v23 = v5;
            _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_DEFAULT, "[Exclaves]: Sent Secure Metadata: reqId 0x%08X channel=%u\n", v20, 0xEu);
          }
        }
      }

      else
      {
LABEL_19:
        CFRelease(v12);
        *(*&buf[8] + 24) = 0;
      }
    }

    kdebug_trace();
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "onMessageProcessing";
      *&buf[12] = 2080;
      *&buf[14] = "onMessageProcessing";
      _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_INFO, "%s - %s:: Skipped processing exit node\n", buf, 0x16u);
    }
  }

  return 0;
}

void sub_2248D203C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN6H16ISP26H16ISPGraphExclaveExitNode19onMessageProcessingEPNS_24H16ISPFilterGraphMessageE_block_invoke(void *a1)
{
  (*(a1[5] + 24 * a1[6] + 104))(a1[7], a1[8], *(*(a1[4] + 8) + 24));
  CFRelease(*(*(a1[4] + 8) + 24));
  *(*(a1[4] + 8) + 24) = 0;
}

uint64_t H16ISP::H16ISPGraphFaceTrackingNode::onActivate(H16ISP::H16ISPGraphFaceTrackingNode *this)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    if (!*(this + 16))
    {
      goto LABEL_21;
    }

    if (*(*(*(this + 12) + 4304) + 104 * *(*(this + 15) + 16) + 60) == 2 && *(this + 36) > 0)
    {
      v5 = MEMORY[0x277CBED10];
    }

    else
    {
      v5 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CECDE0], *v5);
    v6 = *(this + 36);
    if (v6 == 7)
    {
      v7 = *MEMORY[0x277CECDF0];
      v8 = MEMORY[0x277CECDF8];
    }

    else
    {
      if (v6 != 8)
      {
        v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v10 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPGraphFaceTrackingNode::onActivate(this + 36, v10);
        }

LABEL_17:
        CFDictionarySetValue(v4, *MEMORY[0x277CECF00], *MEMORY[0x277CBED10]);
        valuePtr = 1;
        v11 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(v4, *MEMORY[0x277CECEA0], v11);
        CFRelease(v11);
        if (!CVAFaceTrackingCreate())
        {
          v9 = 0;
LABEL_19:
          CFRelease(v4);
          return v9;
        }

LABEL_21:
        H16ISP::H16ISPGraphFaceTrackingNode::onActivate(this, &v14);
        v9 = v14;
        goto LABEL_19;
      }

      v7 = *MEMORY[0x277CECDF0];
      v8 = MEMORY[0x277CECE00];
    }

    CFDictionarySetValue(v4, v7, *v8);
    goto LABEL_17;
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphFaceTrackingNode::onDeactivate(H16ISP::H16ISPGraphFaceTrackingNode *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    CFRelease(v2);
    *(this + 11) = 0;
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphFaceTrackingNode::onMessageProcessing(H16ISP::H16ISPGraphFaceTrackingNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v136 = 0;
  valuePtr = 0;
  v133 = 0;
  v134 = &v133;
  v135 = 0x2000000000;
  v4 = dispatch_semaphore_create(0);
  value[0] = MEMORY[0x277D85DD0];
  value[1] = 0x40000000;
  value[2] = ___ZN6H16ISP27H16ISPGraphFaceTrackingNode19onMessageProcessingEPNS_24H16ISPFilterGraphMessageE_block_invoke;
  value[3] = &unk_2785313F0;
  value[4] = &v133;
  value[5] = v4;
  v5 = *(*(this + 12) + 4304);
  v131 = -1;
  pthread_mutex_lock((a2 + 8));
  v107 = this;
  v108 = a2 + 80;
  dsema = v4;
  v105 = a2;
  if (*(this + 16) < 2uLL)
  {
    v15 = *(this + 15);
    v8 = *(v15 + 20);
    v131 = *(v15 + 16);
  }

  else
  {
    v6 = 0;
    v7 = a2 + 112;
    v8 = 47;
    do
    {
      v9 = &v108[344 * v6];
      if (*(v9 + 5))
      {
        if (std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::find<unsigned int>(v107 + 13, v9 + 4))
        {
          v10 = *(v9 + 5);
          if (v10)
          {
            v11 = 0;
            v12 = v7;
            v13 = v7;
            do
            {
              v14 = *v13;
              v13 += 4;
              if (v14 == 2)
              {
                v11 = *(v12 - 1);
              }

              v12 = v13;
              --v10;
            }

            while (v10);
            if (v11)
            {
              operator new();
            }
          }
        }
      }

      ++v6;
      v7 += 344;
    }

    while (v6 != 3);
  }

  v16 = 0;
  v17 = 0;
  v114 = 0;
  v115 = 0;
  cf = 0;
  v116 = 0uLL;
  v18 = v5 + 8;
  key = *MEMORY[0x277CF3F70];
  v119 = *MEMORY[0x277CF5098];
  v117 = *MEMORY[0x277CF5090];
  v19 = MEMORY[0x277CF5118];
  if (v8 != 10)
  {
    v19 = MEMORY[0x277CF5178];
  }

  theDict = *v19;
  v20 = MEMORY[0x277CF5128];
  if (v8 != 10)
  {
    v20 = MEMORY[0x277CF5300];
  }

  v110 = *v20;
  v21 = a2 + 112;
  do
  {
    v22 = &v108[344 * v16];
    v112 = v21;
    if (*(v22 + 5))
    {
      v23 = 0;
      v24 = v17;
      do
      {
        v17 = *(v21 - 1);
        if (*(v18 + 104 * *(v22 + 4) + 8) == 1718186595)
        {
          v25 = *v21;
          if (*v21 == 2)
          {
            CVPixelBufferRetain(*(v21 - 1));
            v115 = v17;
          }

          else if (v25 == 15)
          {
            CVPixelBufferRetain(*(v21 - 1));
            *(&v116 + 1) = v17;
          }

          else if (v25 == 17)
          {
            CVPixelBufferRetain(*(v21 - 1));
            *&v116 = v17;
          }
        }

        if (*(v22 + 4) != v131)
        {
          goto LABEL_40;
        }

        if (*v21 == v8)
        {
          CVPixelBufferRetain(v17);
          Attachment = CVBufferGetAttachment(v17, key, 0);
          cf = Attachment;
          if (Attachment)
          {
            CFRetain(Attachment);
            v27 = CFDictionaryGetValue(cf, v119);
            if (v27)
            {
              CFNumberGetValue(v27, kCFNumberIntType, &valuePtr + 4);
            }

            v28 = CFDictionaryGetValue(cf, v117);
            if (v28)
            {
              CFNumberGetValue(v28, kCFNumberIntType, &valuePtr);
            }

            if (CFDictionaryContainsKey(cf, theDict))
            {
              v29 = CFDictionaryGetValue(cf, theDict);
              CGRectMakeWithDictionaryRepresentation(v29, &rect);
            }

            else if (CFDictionaryContainsKey(cf, v110))
            {
              v30 = CFDictionaryGetValue(cf, v110);
              CGRectMakeWithDictionaryRepresentation(v30, &rect);
            }

            else
            {
              rect.origin.x = 0.0;
              rect.origin.y = 0.0;
              rect.size.width = SHIDWORD(valuePtr);
              rect.size.height = valuePtr;
            }
          }

          else
          {
            cf = 0;
          }

          goto LABEL_41;
        }

        if (*v21 == 2)
        {
          CVPixelBufferRetain(v17);
          v114 = v17;
          v17 = v24;
        }

        else
        {
LABEL_40:
          v17 = v24;
        }

LABEL_41:
        ++v23;
        v21 += 16;
        v24 = v17;
      }

      while (v23 < *(v22 + 5));
    }

    ++v16;
    v21 = v112 + 344;
  }

  while (v16 != 3);
  pthread_mutex_unlock((v105 + 8));
  theDicta = 0;
  if (!HIDWORD(valuePtr) || !valuePtr)
  {
    goto LABEL_110;
  }

  if (v116)
  {
    v31 = *(&v116 + 1);
    if (*(&v116 + 1))
    {
      CVPixelBufferRelease(*(&v116 + 1));
      v31 = 0;
    }
  }

  else
  {
    v31 = *(&v116 + 1);
  }

  theDicta = 0;
  *(&v116 + 1) = v31;
  if (v17 && v114 && cf)
  {
    v32 = CVBufferGetAttachment(v17, @"CameraIntrinsicMatrixPrivate", 0);
    if (v32)
    {
      BytePtr = CFDataGetBytePtr(v32);
      v34 = *MEMORY[0x277CBECE8];
      theDicta = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (theDicta)
      {
        Mutable = CFDictionaryCreateMutable(v34, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v37 = H16ISP::CFArrayCreateFromMatrix(BytePtr, v35);
          if (v37)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x277CECE88], v37);
            CFRelease(v37);
          }

          v39 = CFDictionaryCreateMutable(v34, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v39)
          {
            v40 = *(MEMORY[0x277D860B0] + 16);
            v141.origin = *MEMORY[0x277D860B0];
            v141.size = v40;
            v142 = *(MEMORY[0x277D860B0] + 32);
            v41 = H16ISP::CFArrayCreateFromMatrix(&v141, v38);
            if (v41)
            {
              CFDictionarySetValue(v39, *MEMORY[0x277CECEA8], v41);
              CFRelease(v41);
            }

            v42 = CFArrayCreateMutable(v34, 0, MEMORY[0x277CBF128]);
            if (v42)
            {
              *v139 = 0;
              v43 = CFNumberCreate(v34, kCFNumberIntType, v139);
              CFArrayAppendValue(v42, v43);
              CFRelease(v43);
              *v139 = 0;
              v44 = CFNumberCreate(v34, kCFNumberIntType, v139);
              CFArrayAppendValue(v42, v44);
              CFRelease(v44);
              *v139 = 0;
              v45 = CFNumberCreate(v34, kCFNumberIntType, v139);
              CFArrayAppendValue(v42, v45);
              CFRelease(v45);
              CFDictionarySetValue(v39, *MEMORY[0x277CECEE8], v42);
              CFRelease(v42);
            }

            CFDictionarySetValue(Mutable, *MEMORY[0x277CECE58], v39);
            CFRelease(v39);
          }

          CFDictionarySetValue(theDicta, *MEMORY[0x277CECDC0], Mutable);
          CFRelease(Mutable);
        }

        if (v115)
        {
          operator new();
        }

        if (v116 != 0)
        {
          if (*(&v116 + 1))
          {
            operator new();
          }

          if (v116)
          {
            CFDictionarySetValue(theDicta, *MEMORY[0x277CECDE8], v116);
            LODWORD(v141.origin.x) = 1040187392;
            v46 = CFNumberCreate(v34, kCFNumberFloatType, &v141);
            CFDictionarySetValue(theDicta, *MEMORY[0x277CECE08], v46);
            CFRelease(v46);
          }

          CFDictionarySetValue(theDicta, *MEMORY[0x277CECEB0], *MEMORY[0x277CBED10]);
          v47 = CFDictionaryCreateMutable(v34, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v47)
          {
            v48 = MEMORY[0x277D860B0];
            v49 = *(MEMORY[0x277D860B0] + 16);
            *time = *MEMORY[0x277D860B0];
            *&time[16] = v49;
            v130 = *(MEMORY[0x277D860B0] + 32);
            if (v116)
            {
              v50 = v116;
            }

            else
            {
              v50 = *(&v116 + 1);
            }

            Width = CVPixelBufferGetWidth(v50);
            Height = CVPixelBufferGetHeight(v50);
            v53 = CVPixelBufferGetWidth(v17);
            v54 = CVPixelBufferGetHeight(v17);
            v56 = 0;
            v57 = Height / v53;
            v58 = Width / v54;
            v59 = v57 * *BytePtr;
            v60 = v58 * *(BytePtr + 5);
            v62 = *time;
            v61 = *&time[16];
            v63 = (COERCE_FLOAT(*(BytePtr + 2)) + 0.5) * v57 + -0.5;
            v64 = DWORD2(v130);
            v65 = (COERCE_FLOAT(HIDWORD(*(BytePtr + 4))) + 0.5) * v58 + -0.5;
            v67 = v48[1];
            v126 = *v48;
            v127 = v67;
            v128 = v48[2];
            v66 = v48[2];
            v67.i32[0] = 0;
            v67.i32[1] = 1.0;
            v67.i32[2] = *(v48 + 2);
            v68.i64[0] = COERCE_UNSIGNED_INT(-1.0);
            v68.i32[2] = *(v48 + 6);
            *v139 = v126;
            *&v139[16] = v127;
            v140 = v128;
            do
            {
              *(&v141.origin + v56) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, COERCE_FLOAT(*&v139[v56])), v68, *&v139[v56], 1), v66, *&v139[v56], 2);
              v56 += 16;
            }

            while (v56 != 48);
            DWORD2(v126) = LODWORD(v141.origin.y);
            v127.i32[2] = LODWORD(v141.size.height);
            DWORD2(v128) = DWORD2(v142);
            *&time[8] = DWORD2(v62);
            *&v126 = v141.origin.x;
            v127.i64[0] = *&v141.size.width;
            *&v62 = v60;
            *&time[24] = DWORD2(v61);
            *&v128 = v142;
            *(&v61 + 1) = v59;
            *time = v62;
            *&time[16] = v61;
            *&v69 = (Width - 1) - v65;
            *(&v69 + 1) = v63;
            DWORD2(v130) = v64;
            *&v130 = v69;
            v70 = H16ISP::CFArrayCreateFromMatrix(time, v55);
            if (v70)
            {
              CFDictionarySetValue(v47, *MEMORY[0x277CECE88], v70);
              CFRelease(v70);
            }

            v72 = CFDictionaryCreateMutable(v34, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v72)
            {
              v73 = H16ISP::CFArrayCreateFromMatrix(&v126, v71);
              if (v73)
              {
                CFDictionarySetValue(v72, *MEMORY[0x277CECEA8], v73);
                CFRelease(v73);
              }

              v74 = CFArrayCreateMutable(v34, 0, MEMORY[0x277CBF128]);
              if (v74)
              {
                LODWORD(v141.origin.x) = 0;
                v75 = CFNumberCreate(v34, kCFNumberIntType, &v141);
                CFArrayAppendValue(v74, v75);
                CFRelease(v75);
                LODWORD(v141.origin.x) = 0;
                v76 = CFNumberCreate(v34, kCFNumberIntType, &v141);
                CFArrayAppendValue(v74, v76);
                CFRelease(v76);
                LODWORD(v141.origin.x) = 0;
                v77 = CFNumberCreate(v34, kCFNumberIntType, &v141);
                CFArrayAppendValue(v74, v77);
                CFRelease(v77);
                CFDictionarySetValue(v72, *MEMORY[0x277CECEE8], v74);
                CFRelease(v74);
              }

              CFDictionarySetValue(v47, *MEMORY[0x277CECE58], v72);
              CFRelease(v72);
            }

            CFDictionarySetValue(theDicta, *MEMORY[0x277CECDC8], v47);
            CFRelease(v47);
          }
        }

        v78 = CFArrayCreateMutable(v34, 0, MEMORY[0x277CBF128]);
        v79 = MEMORY[0x277CECEC8];
        if (v78)
        {
          v80 = CFDictionaryGetValue(cf, *MEMORY[0x277CF4BC8]);
          if (v80)
          {
            v81 = 0;
            v82 = rect.origin.x / SHIDWORD(valuePtr);
            v83 = rect.size.width / SHIDWORD(valuePtr);
            v84 = rect.origin.y / valuePtr;
            v85 = *MEMORY[0x277CF50B8];
            keya = *MEMORY[0x277CF4CA0];
            v120 = *MEMORY[0x277CECE18];
            v118 = *MEMORY[0x277CF4A40];
            v113 = *MEMORY[0x277CECE10];
            v106 = *MEMORY[0x277CECE28];
            v109 = *v79;
            v111 = *MEMORY[0x277CF52E8];
            v86 = rect.size.height / valuePtr;
            while (v81 < CFArrayGetCount(v80))
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v80, v81);
              if (CFDictionaryContainsKey(ValueAtIndex, v85))
              {
                v88 = v85;
                v89 = CFDictionaryGetValue(ValueAtIndex, v85);
                CGRectMakeWithDictionaryRepresentation(v89, &v141);
                x = v141.origin.x;
                y = v141.origin.y;
                v92 = v141.size.width;
                v93 = v141.size.height;
                v94 = CFDictionaryCreateMutable(v34, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v94)
                {
                  *&v126 = 0;
                  v95 = CFDictionaryGetValue(ValueAtIndex, keya);
                  CFDictionarySetValue(v94, v120, v95);
                  v96 = CFDictionaryGetValue(ValueAtIndex, v118);
                  CFDictionarySetValue(v94, v113, v96);
                  v143.origin.x = (x - v82) / v83;
                  v143.origin.y = (y - v84) / v86;
                  v143.size.width = v92 / v83;
                  v143.size.height = v93 / v86;
                  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v143);
                  if (DictionaryRepresentation)
                  {
                    CFDictionarySetValue(v94, v106, DictionaryRepresentation);
                    CFRelease(DictionaryRepresentation);
                  }

                  v98 = CFDictionaryGetValue(ValueAtIndex, v111);
                  CFNumberGetValue(v98, kCFNumberLongLongType, &v126);
                  v99 = FigHostTimeToNanoseconds();
                  CMTimeMake(v139, v99, 1000000000);
                  *time = *v139;
                  *&time[16] = *&v139[16];
                  v100 = CMTimeCopyAsDictionary(time, v34);
                  CFDictionarySetValue(v94, v109, v100);
                  CFRelease(v100);
                  CFArrayAppendValue(v78, v94);
                  CFRelease(v94);
                }

                v85 = v88;
              }

              ++v81;
            }
          }

          CFDictionarySetValue(theDicta, *MEMORY[0x277CECE30], v78);
          CFRelease(v78);
        }

        v101 = CFDictionaryGetValue(cf, *MEMORY[0x277CF3F80]);
        if (v101)
        {
          CFDictionarySetValue(theDicta, *v79, v101);
        }

        if (CFDictionaryCreateMutable(v34, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
        {
          operator new();
        }

        CFDictionarySetValue(theDicta, *MEMORY[0x277CECD98], *MEMORY[0x277CBED28]);
        CFDictionarySetValue(theDicta, *MEMORY[0x277CECD90], *MEMORY[0x277CBED10]);
        CFDictionarySetValue(theDicta, *MEMORY[0x277CECDD0], v17);
        CFDictionarySetValue(theDicta, *MEMORY[0x277CECDB8], value);
        if (!CVAFaceTrackingProcess())
        {
          dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
          v102 = v134[3];
          if (v102)
          {
            CVBufferSetAttachment(v17, *MEMORY[0x277CF3FC0], v102, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v134[3]);
          }
        }

        goto LABEL_110;
      }
    }

    theDicta = 0;
LABEL_111:
    CVPixelBufferRelease(v17);
  }

  else
  {
LABEL_110:
    if (v17)
    {
      goto LABEL_111;
    }
  }

  if (v114)
  {
    CVPixelBufferRelease(v114);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v116)
  {
    CVPixelBufferRelease(v116);
  }

  if (*(&v116 + 1))
  {
    CVPixelBufferRelease(*(&v116 + 1));
  }

  if (v115)
  {
    CVPixelBufferRelease(v115);
  }

  if (dsema)
  {
    dispatch_release(dsema);
  }

  if (theDicta)
  {
    CFRelease(theDicta);
  }

  _Block_object_dispose(&v133, 8);
  return 0;
}

intptr_t ___ZN6H16ISP27H16ISPGraphFaceTrackingNode19onMessageProcessingEPNS_24H16ISPFilterGraphMessageE_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  CFRetain(*(*(*(a1 + 32) + 8) + 24));
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

__CFArray *H16ISP::CFArrayCreateFromMatrix(H16ISP *this, simd_float3x3 *a2)
{
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v5 = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
    if (v5)
    {
      v6 = v5;
      valuePtr = *this;
      v7 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
      CFArrayAppendValue(v6, v7);
      CFRelease(v7);
      valuePtr = *(this + 4);
      v8 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
      CFArrayAppendValue(v6, v8);
      CFRelease(v8);
      valuePtr = *(this + 8);
      v9 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
      CFArrayAppendValue(v6, v9);
      CFRelease(v9);
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v6);
    }

    v10 = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
    if (v10)
    {
      v11 = v10;
      valuePtr = *(this + 1);
      v12 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
      CFArrayAppendValue(v11, v12);
      CFRelease(v12);
      valuePtr = *(this + 5);
      v13 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
      CFArrayAppendValue(v11, v13);
      CFRelease(v13);
      valuePtr = *(this + 9);
      v14 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
      CFArrayAppendValue(v11, v14);
      CFRelease(v14);
      CFArrayAppendValue(Mutable, v11);
      CFRelease(v11);
    }

    v15 = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
    if (v15)
    {
      v16 = v15;
      valuePtr = *(this + 2);
      v17 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
      CFArrayAppendValue(v16, v17);
      CFRelease(v17);
      valuePtr = *(this + 6);
      v18 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
      CFArrayAppendValue(v16, v18);
      CFRelease(v18);
      valuePtr = *(this + 10);
      v19 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
      CFArrayAppendValue(v16, v19);
      CFRelease(v19);
      CFArrayAppendValue(Mutable, v16);
      CFRelease(v16);
    }
  }

  return Mutable;
}

uint64_t H16ISP::H16ISPGraphFaceTrackingNode::H16ISPGraphFaceTrackingNode(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, int a5)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(a1, 6);
  *v10 = &unk_2838139F0;
  v10[10] = a2;
  v10[11] = 0;
  v10[12] = a3;
  std::unordered_map<unsigned int,H16ISP::H16ISPFrameReceiverBufferPoolType>::unordered_map((v10 + 13), a4);
  *(a1 + 144) = a5;
  CFRetain(a2);
  return a1;
}

void sub_2248D39EC(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::~__hash_table(v1 + 104);
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(v1);
  _Unwind_Resume(a1);
}

void H16ISP::H16ISPGraphFaceTrackingNode::~H16ISPGraphFaceTrackingNode(H16ISP::H16ISPGraphFaceTrackingNode *this)
{
  *this = &unk_2838139F0;
  v2 = *(this + 11);
  if (v2)
  {
    CFRelease(v2);
    *(this + 11) = 0;
  }

  CFRelease(*(this + 10));
  std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::~__hash_table(this + 104);

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPGraphFaceTrackingNode::~H16ISPGraphFaceTrackingNode(this);

  JUMPOUT(0x22AA55B60);
}

BOOL GMC_SpatialCoverageTest(uint64_t a1, uint64_t a2, double *a3)
{
  Matrix<unsigned int>::Matrix(&v21, *(a2 + 116) / 32, *(a2 + 112) / 32);
  v6 = *(a1 + 20);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(a1 + 16);
      if (!v8)
      {
        __assert_rtn("operator()", "Matrix.hpp", 125, "row < m_rows && col < m_cols");
      }

      if (v8 == 1)
      {
        __assert_rtn("operator()", "Matrix.hpp", 125, "row < m_rows && col < m_cols");
      }

      v9 = *(a2 + 112);
      v10 = v9 + 31;
      if (v9 >= 0)
      {
        v10 = *(a2 + 112);
      }

      v11 = (*(a1 + 8) + 8 * i);
      v12 = fmin((*(a2 + 116) / 32 - 1), fmax((v11[v6] * 0.03125), 0.0));
      if (v23 <= v12 || (v13 = fmin(((v10 >> 5) - 1), fmax((*v11 * 0.03125), 0.0)), v24 <= v13))
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      v22[v13 + v24 * v12] = 1;
      v6 = *(a1 + 20);
    }
  }

  if (v24 * v23)
  {
    v14 = v22;
    v15 = 0.0;
    v16 = v24 * v23;
    do
    {
      v17 = *v14++;
      v15 = v15 + v17;
      --v16;
    }

    while (v16);
  }

  else
  {
    v15 = 0.0;
  }

  v18 = v15 / (v24 * v23);
  v19 = v18 > *(a2 + 536);
  *a3 = v18;
  Matrix<unsigned int>::~Matrix(&v21);
  return v19;
}

uint64_t Matrix<unsigned int>::Matrix(uint64_t result, int a2, int a3)
{
  *result = &unk_283813A68;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_283813A68;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = 0;
  return result;
}

void Matrix<unsigned int>::~Matrix(uint64_t a1)
{
  Matrix<unsigned int>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t Matrix<unsigned int>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283813A68;
  if (*(a1 + 8) && *(a1 + 24) == 1)
  {
    MEMORY[0x22AA55B40]();
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  return a1;
}

void H16ISP::H16ISPDeviceController::~H16ISPDeviceController(H16ISP::H16ISPDeviceController *this)
{
  for (i = 0; i < CFArrayGetCount(*this); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*this, i);
    H16ISP::H16ISPDevice::DisableDeviceMessages(ValueAtIndex);
  }

  v4 = *(this + 14);
  if (v4)
  {
    IOObjectRelease(v4);
  }

  if (*this)
  {
    CFRelease(*this);
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 3);
    if (v6)
    {
      CFRunLoopRemoveSource(*(this + 6), v6, *MEMORY[0x277CBF058]);
      *(this + 3) = 0;
      v5 = *(this + 2);
    }

    IONotificationPortDestroy(v5);
  }

  v7 = *(this + 9);
  if (v7)
  {
    dispatch_sync(v7, &__block_literal_global_2);
    dispatch_release(*(this + 9));
    *(this + 9) = 0;
  }

  pthread_cond_destroy(this + 3);
  pthread_mutex_destroy((this + 80));
  v8 = *(this + 6);
  if (v8)
  {
    CFRelease(v8);
  }
}

void H16ISP::cfArrayReleaseH16ISPUnitObject(H16ISP *this, const __CFAllocator *a2, const void *a3)
{
  if (a2)
  {
    H16ISP::H16ISPDevice::~H16ISPDevice(a2);

    JUMPOUT(0x22AA55B60);
  }
}

double readAnalyticsIsfThresholds(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  if (!readAnalyticsFile("/var/mobile/Library/ISP/Pearl/IsfThresholds.bin", v2, 0x20u))
  {
    if (PCECalibration::readColorAssembly(v8))
    {
      v6[2] = v8[2];
      v6[3] = v8[3];
      v7 = v9;
      v6[0] = v8[0];
      v6[1] = v8[1];
      v4 = 0uLL;
      v5 = 0.0;
      GeomUtils::CalcRotationAngleFromMatrix<double>(v6, &v4);
      *(v2 + 8) = v4;
      result = v5;
      *(v2 + 24) = v5;
    }
  }

  return result;
}

BOOL readAnalyticsFile(const char *a1, void *a2, unsigned int a3)
{
  v5 = fopen(a1, "rb");
  if (v5)
  {
    v6 = v5;
    v7 = fread(a2, 1uLL, a3, v5);
    fclose(v6);
    return v7 == a3;
  }

  else
  {
    bzero(a2, a3);
    return 0;
  }
}

uint64_t GeomUtils::CalcRotationAngleFromMatrix<double>(uint64_t a1, long double *a2)
{
  *a2 = atan2(*(a1 + 56), *(a1 + 64)) * 1000.0;
  a2[1] = atan2(-*(a1 + 48), sqrt(*(a1 + 64) * *(a1 + 64) + *(a1 + 56) * *(a1 + 56))) * 1000.0;
  a2[2] = atan2(*(a1 + 24), *a1) * 1000.0;
  return 0;
}

FILE *writeAnalyticsFile(const char *a1, const void *a2, unsigned int a3)
{
  result = fopen(a1, "wb");
  if (result)
  {
    v6 = result;
    fwrite(a2, a3, 1uLL, result);

    return fclose(v6);
  }

  return result;
}

void reportIsfResults(int a1, double *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 2)
  {
    if ((analytics_send_event_lazy() & 1) == 0)
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        reportIsfResults();
      }
    }

    checkIsfThresholds(a2, a6);
    if (!a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (analytics_send_event_lazy())
    {
      goto LABEL_13;
    }

    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      if (a1)
      {
        return;
      }

      goto LABEL_14;
    }

    reportIsfResults();
    if (!a1)
    {
LABEL_14:
      checkIsfThresholds(a2, a6);
    }
  }
}

void checkIsfThresholds(double *a1, uint64_t a2)
{
  checkIsfThresholdPerAxis("X", a2, *a1 - *(a2 + 8));
  checkIsfThresholdPerAxis("Y", (a2 + 2), a1[1] - *(a2 + 16));
  v4 = a1[2] - *(a2 + 24);

  checkIsfThresholdPerAxis("Z", (a2 + 4), v4);
}

void reportProjectorGmcResults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *v28 = 3;
  v29 = -1;
  v30 = -1;
  v31 = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  v27 = _Q0;
  v32 = _Q0;
  v33 = xmmword_2249BC0B0;
  v34 = vdupq_n_s64(0x7FF8000000000000uLL);
  readAnalyticsProjectorGmcHistory(v28);
  v13 = a5[1];
  v14 = a5[8];
  v15 = *(a2 + 376);
  if ((v15 & 0x80000000) == 0)
  {
    v30 = a5[1];
    *(&v32 + 1) = v14;
LABEL_4:
    v31 = v13;
    *&v33 = v14;
    goto LABEL_5;
  }

  if (v15 == -10)
  {
    goto LABEL_4;
  }

LABEL_5:
  v29 = v13;
  *&v32 = v14;
  v16 = a5[5];
  *(&v33 + 1) = a5[4];
  v34.i64[0] = v16;
  v34.i64[1] = a5[6];
  writeAnalyticsFile("/var/mobile/Library/ISP/Pearl/GmcThresholds.bin", v28, 0x1C4u);
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      reportProjectorGmcResults();
    }
  }

  if (*(a2 + 376) >= 0.0)
  {
    v35 = 3;
    memset(&v41[40], 255, 24);
    v42 = v27;
    v43 = xmmword_2249BC0B0;
    v44 = vdupq_n_s64(0x7FF8000000000000uLL);
    readAnalyticsProjectorGmcHistory(&v35);
    v18 = *(a1 + 13240);
    v48[2] = *(a1 + 13224);
    v48[3] = v18;
    v49 = *(a1 + 13256);
    v19 = *(a1 + 13208);
    v48[0] = *(a1 + 13192);
    v48[1] = v19;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    GeomUtils::CalcRotationAngleFromMatrix<double>(v48, &v45);
    v20 = v46;
    v21 = v47;
    ++v36;
    checkGmcThresholdPerAxis("X", &v37, v45);
    checkGmcThresholdPerAxis("Y", &v38, v20);
    checkGmcThresholdPerAxis("Z", &v39, v21);
    v22 = 0;
    v40 = v40 * 0.99 + llround((*(a2 + 88) * *(a1 + 24) / *(a1 + 32) + -1.0) * 10000.0) * 0.01;
    v23 = 0.05;
    do
    {
      v24 = v40;
      if (v40 > v23)
      {
        v25 = v41[v22]++ + 1;
        if (v25 == 10)
        {
          reportGmcEflTolerance(v23);
          v24 = v40;
        }
      }

      if (v24 < -v23)
      {
        v26 = v41[v22 + 1]++ + 1;
        if (v26 == 10)
        {
          reportGmcEflTolerance(-v23);
        }
      }

      v23 = v23 + 0.05;
      v22 += 2;
    }

    while (v22 != 40);
    writeAnalyticsFile("/var/mobile/Library/ISP/Pearl/GmcThresholds.bin", &v35, 0x1C4u);
  }
}

FILE *readAnalyticsProjectorGmcHistory(char *a1)
{
  result = readAnalyticsFile("/var/mobile/Library/ISP/Pearl/GmcThresholds.bin", a1, 0x1C4u);
  if (result)
  {
    _ZF = *a1 == 3;
  }

  else
  {
    _ZF = 0;
  }

  if (!_ZF)
  {
    memset(&v8[47], 255, 24);
    *a1 = 3;
    memcpy(a1 + 4, v8, 0x190uLL);
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 404) = _Q0;
    *(a1 + 420) = xmmword_2249BC0B0;
    *(a1 + 436) = vdupq_n_s64(0x7FF8000000000000uLL);

    return writeAnalyticsFile("/var/mobile/Library/ISP/Pearl/GmcThresholds.bin", a1, 0x1C4u);
  }

  return result;
}

void *___Z25reportProjectorGmcResultsRK26sCIspCmdChPearlCalibrationRK18GMCInnerStatisticsiS1_RK22H16ISPAnalyticsGMCInfo_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "Duration", *(*(a1 + 32) + 24));
    xpc_dictionary_set_int64(v3, "Status", *(*(a1 + 40) + 376));
    v4 = *(a1 + 40);
    if ((v4[47] & 0x80000000) == 0)
    {
      xpc_dictionary_set_double(v3, "SpatialCoverage", *v4);
      xpc_dictionary_set_double(v3, "RotationX", *(*(a1 + 32) + 32));
      xpc_dictionary_set_double(v3, "RotationY", *(*(a1 + 32) + 40));
      xpc_dictionary_set_double(v3, "RotationZ", *(*(a1 + 32) + 48));
      v5 = (*(*(a1 + 40) + 88) * *(*(a1 + 48) + 24) / *(*(a1 + 48) + 32) + -1.0) * 100.0;
      xpc_dictionary_set_double(v3, "EflPctDiffFromAssembly", v5);
      xpc_dictionary_set_double(v3, "EflPctDiffFromPrev", v5 - (*(*(a1 + 40) + 88) * *(*(a1 + 56) + 24) / *(*(a1 + 56) + 32) + -1.0) * 100.0);
    }

    if (*(a1 + 124) == 1)
    {
      xpc_dictionary_set_uint64(v3, "TimeSincePrevSuccessfulRun", *(a1 + 64));
    }

    if (*(a1 + 125) == 1)
    {
      xpc_dictionary_set_uint64(v3, "TimeSincePrevConvergence", *(a1 + 72));
      xpc_dictionary_set_double(v3, "TemperatureDiffSincePrevConvergence", *(a1 + 80));
    }

    xpc_dictionary_set_uint64(v3, "TimeSincePrevRun", *(a1 + 88));
    xpc_dictionary_set_double(v3, "RotationXDiffFromPrev", *(a1 + 96));
    xpc_dictionary_set_double(v3, "RotationYDiffFromPrev", *(a1 + 104));
    xpc_dictionary_set_double(v3, "RotationZDiffFromPrev", *(a1 + 112));
    xpc_dictionary_set_uint64(v3, "TriggeringReason", *(*(a1 + 32) + 60));
    xpc_dictionary_set_double(v3, "Temperature", *(*(a1 + 32) + 64));
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    if (v7 != -1.0)
    {
      xpc_dictionary_set_double(v3, "FaceX", v7);
      xpc_dictionary_set_double(v3, "FaceY", *(*(a1 + 32) + 80));
      xpc_dictionary_set_double(v3, "FaceWidth", *(*(a1 + 32) + 88));
      xpc_dictionary_set_double(v3, "FaceHeight", *(*(a1 + 32) + 96));
      v6 = *(a1 + 32);
    }

    xpc_dictionary_set_uint64(v3, "Correspondences", *(v6 + 104));
    v8 = *(a1 + 32);
    if (*(v8 + 56) == 1)
    {
      xpc_dictionary_set_double(v3, "ISFConfidence", *(v8 + 16));
      xpc_dictionary_set_double(v3, "ISFDuration", **(a1 + 32));
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v9 = *(a1 + 48);
      v25 = *(v9 + 13256);
      v10 = *(v9 + 13240);
      v23 = *(v9 + 13224);
      v24 = v10;
      v11 = *(v9 + 13208);
      v21 = *(v9 + 13192);
      v22 = v11;
      GeomUtils::CalcRotationAngleFromMatrix<double>(&v21, &v26);
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      v12 = *(a1 + 56);
      v25 = *(v12 + 13256);
      v13 = *(v12 + 13240);
      v23 = *(v12 + 13224);
      v24 = v13;
      v14 = *(v12 + 13208);
      v21 = *(v12 + 13192);
      v22 = v14;
      GeomUtils::CalcRotationAngleFromMatrix<double>(&v21, &v18);
      xpc_dictionary_set_double(v3, "FilteredRotationX", v26);
      xpc_dictionary_set_double(v3, "FilteredRotationY", v27);
      xpc_dictionary_set_double(v3, "FilteredRotationZ", v28);
      xpc_dictionary_set_double(v3, "FilteredRotationXDiffFromPrev", v26 - v18);
      xpc_dictionary_set_double(v3, "FilteredRotationYDiffFromPrev", v27 - v19);
      xpc_dictionary_set_double(v3, "FilteredRotationZDiffFromPrev", v28 - v20);
      v15 = *(a1 + 32);
      if (*(v15 + 112) == 1)
      {
        xpc_dictionary_set_double(v3, "IsfDifferenceXMaxMin", *(v15 + 148) - *(v15 + 116));
        xpc_dictionary_set_double(v3, "IsfDifferenceXQ31", *(*(a1 + 32) + 140) - *(*(a1 + 32) + 124));
        xpc_dictionary_set_double(v3, "IsfDifferenceYMaxMin", *(*(a1 + 32) + 188) - *(*(a1 + 32) + 156));
        xpc_dictionary_set_double(v3, "IsfDifferenceYQ31", *(*(a1 + 32) + 180) - *(*(a1 + 32) + 164));
        xpc_dictionary_set_double(v3, "IsfDifferenceZMaxMin", *(*(a1 + 32) + 228) - *(*(a1 + 32) + 196));
        xpc_dictionary_set_double(v3, "IsfDifferenceZQ31", *(*(a1 + 32) + 220) - *(*(a1 + 32) + 204));
      }
    }

    v16 = *(a1 + 120);
    if (v16 >= 1)
    {
      xpc_dictionary_set_uint64(v3, "ScanModeStep", v16);
    }
  }

  return v3;
}

void reportStereoGmcResults()
{
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v0 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v0 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v0;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      reportStereoGmcResults();
    }
  }
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "Failed to send the %s event into the diagnostics system %08X\n\n", v2, v3, v4, v5, 2u);
}

void *___Z22reportStereoGmcResultsRK18GMCInnerStatisticsRK26sCIspCmdChPearlCalibrationy_block_invoke(void *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_int64(v2, "Status", *(a1[4] + 376));
    xpc_dictionary_set_uint64(v3, "Duration", a1[5]);
    v4 = a1[4];
    if (v4[47] >= 0.0)
    {
      v5 = a1[6];
      v6 = v4[31];
      v7 = v4[32];
      v8 = v4[33];
      v9 = *(v5 + 8600);
      v18[2] = *(v5 + 8584);
      v18[3] = v9;
      v19 = *(v5 + 8616);
      v10 = *(v5 + 8568);
      v18[0] = *(v5 + 8552);
      v18[1] = v10;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      GeomUtils::CalcRotationAngleFromMatrix<double>(v18, &v15);
      v11 = v6 - v15;
      v12 = v7 - v16;
      v13 = v8 - v17;
      xpc_dictionary_set_double(v3, "RotationX", v11);
      xpc_dictionary_set_double(v3, "RotationY", v12);
      xpc_dictionary_set_double(v3, "RotationZ", v13);
    }
  }

  return v3;
}

void reportMutualInformationResults()
{
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v0 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v0 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v0;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      reportMutualInformationResults();
    }
  }
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "Failed to send the %s event into the diagnostics system %08X\n\n", v2, v3, v4, v5, 2u);
}

void *___Z30reportMutualInformationResultsiRKN16RgbIrCalibration20RgbIrInnerStatisticsE15MutualInfoStagey_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "Duration", *(a1 + 32));
    xpc_dictionary_set_uint64(v3, "Status", *(a1 + 48));
    if (!*(a1 + 48))
    {
      v4 = *(*(a1 + 40) + 20);
      if (v4 <= 2)
      {
        xpc_dictionary_set_string(v3, "SelectedMode", off_278531530[v4]);
      }

      v5 = *(a1 + 52);
      if (v5)
      {
        if (v5 != 1)
        {
LABEL_10:
          xpc_dictionary_set_double(v3, "RotationX", *(*(a1 + 40) + 8));
          xpc_dictionary_set_double(v3, "RotationY", *(*(a1 + 40) + 12));
          xpc_dictionary_set_double(v3, "RotationZ", *(*(a1 + 40) + 16));
          xpc_dictionary_set_double(v3, "Confidence", **(a1 + 40));
          return v3;
        }

        v6 = "FullGrid";
      }

      else
      {
        v6 = "LMV";
      }

      xpc_dictionary_set_string(v3, "CalculationMode", v6);
      goto LABEL_10;
    }
  }

  return v3;
}

void reportJasperStateAnalytics()
{
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v0 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v0 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v0;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      reportJasperStateAnalytics();
    }
  }
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "Failed to send the %s event into the diagnostics system %08X\n\n", v2, v3, v4, v5, 2u);
}

void *___Z26reportJasperStateAnalytics13eJasperStatesS_yyiii_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 2)
  {
    v5 = *(a1 + 52);
    if (v5 == 1)
    {
      v4 = "Soft Brick to Armed";
      goto LABEL_12;
    }

    if (v5 == 3)
    {
      v4 = "Soft Brick to Hard Brick";
      goto LABEL_12;
    }

    return 0;
  }

  if (v2 != 1)
  {
    return 0;
  }

  v3 = *(a1 + 52);
  if (v3 == 2)
  {
    v4 = "Armed to Soft Brick";
    goto LABEL_12;
  }

  if (v3 != 3)
  {
    return 0;
  }

  v4 = "Armed to Hard Brick";
LABEL_12:
  v7 = xpc_dictionary_create(0, 0, 0);
  v6 = v7;
  if (v7)
  {
    xpc_dictionary_set_string(v7, "TransitionType", v4);
    xpc_dictionary_set_uint64(v6, "FramesSinceEver", *(a1 + 32));
    xpc_dictionary_set_uint64(v6, "FramesSinceTransition", *(a1 + 40));
    xpc_dictionary_set_uint64(v6, "TransitionCount", *(a1 + 56));
    if (*(a1 + 52) != 1)
    {
      xpc_dictionary_set_uint64(v6, "Resistance", *(a1 + 60));
      xpc_dictionary_set_uint64(v6, "fault0", *(a1 + 64));
      xpc_dictionary_set_uint64(v6, "fault1", *(a1 + 65));
      xpc_dictionary_set_uint64(v6, "fault2", *(a1 + 66));
      xpc_dictionary_set_uint64(v6, "fault3", *(a1 + 67));
    }
  }

  return v6;
}

void reportPeridotCoexRetries()
{
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v0 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v0 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v0;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      reportPeridotCoexRetries(v0, v1, v2, v3, v4, v5, v6, v7);
    }
  }
}

void *___Z24reportPeridotCoexRetriesjj_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = "Unknown";
    if (v4 == 20)
    {
      v5 = "Link Training";
    }

    if (v4 == 19)
    {
      v6 = "Lock PLL";
    }

    else
    {
      v6 = v5;
    }

    xpc_dictionary_set_string(v2, "Source", v6);
    xpc_dictionary_set_uint64(v3, "RetryCounter", *(a1 + 42));
    xpc_dictionary_set_double(v3, "Temperature", *(a1 + 36));
    if (*(a1 + 43) == 1)
    {
      xpc_dictionary_set_int64(v3, "VSpad", *(a1 + 40));
    }
  }

  return v3;
}

void *___ZL29reportIsfResultsFromStereoGmc9IsfStatusRKN3Isf18IsfInnerStatisticsERK26sCIspCmdChPearlCalibrationR38H16ISPAnalyticsIsfHistoricalThresholds_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "Status", *(a1 + 48));
    xpc_dictionary_set_string(v3, "Mode", "StereoGmc");
    xpc_dictionary_set_int64(v3, "StereoGmcStatus", 0);
    if (!*(a1 + 48))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = *(v4 + 8600);
      v18[2] = *(v4 + 8584);
      v18[3] = v9;
      v19 = *(v4 + 8616);
      v10 = *(v4 + 8568);
      v18[0] = *(v4 + 8552);
      v18[1] = v10;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      GeomUtils::CalcRotationAngleFromMatrix<double>(v18, &v15);
      v11 = v6 - v15;
      v12 = v7 - v16;
      v13 = v8 - v17;
      xpc_dictionary_set_double(v3, "RotationX", v11);
      xpc_dictionary_set_double(v3, "RotationY", v12);
      xpc_dictionary_set_double(v3, "RotationZ", v13);
    }
  }

  return v3;
}

void *___ZL37reportIsfResultsFromMutualInformation9IsfStatusRKN3Isf18IsfInnerStatisticsENS0_12ResultOriginE12SelectedModeddRK26sCIspCmdChPearlCalibrationR38H16ISPAnalyticsIsfHistoricalThresholds_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "Status", *(a1 + 64));
    v4 = *(a1 + 32);
    if (v4 != 4025479150.0)
    {
      xpc_dictionary_set_int64(v3, "StereoGmcStatus", v4);
    }

    v5 = *(a1 + 68);
    if (v5 == 1)
    {
      xpc_dictionary_set_string(v3, "Mode", "FullGrid");
      xpc_dictionary_set_double(v3, "MIConfidence", *(a1 + 40));
    }

    else if (!v5)
    {
      xpc_dictionary_set_string(v3, "Mode", "LMV");
    }

    if (!*(a1 + 64))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = *(v6 + 8600);
      v20[2] = *(v6 + 8584);
      v20[3] = v11;
      v21 = *(v6 + 8616);
      v12 = *(v6 + 8568);
      v20[0] = *(v6 + 8552);
      v20[1] = v12;
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      GeomUtils::CalcRotationAngleFromMatrix<double>(v20, &v17);
      v13 = v8 - v17;
      v14 = v9 - v18;
      v15 = v10 - v19;
      xpc_dictionary_set_double(v3, "RotationX", v13);
      xpc_dictionary_set_double(v3, "RotationY", v14);
      xpc_dictionary_set_double(v3, "RotationZ", v15);
    }
  }

  return v3;
}

void checkIsfThresholdPerAxis(char *a1, signed __int8 *a2, double a3)
{
  v6 = *a2;
  if ((v6 + 1) < a3)
  {
    do
    {
      v7 = v6 + 1;
      *a2 = v7;
      reportIsfThreshold(v7, a1);
      LOBYTE(v6) = *a2;
    }

    while ((*a2 + 1) < a3);
  }

  v8 = a2[1];
  if ((v8 - 1) > a3)
  {
    do
    {
      v9 = v8 - 1;
      a2[1] = v9;
      reportIsfThreshold(v9, a1);
      LOBYTE(v8) = a2[1];
    }

    while ((v8 - 1) > a3);
  }
}

void reportIsfThreshold(signed __int8 a1, const char *a2)
{
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v2 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      reportIsfThreshold();
    }
  }
}

void *___ZL18reportIsfThresholdaPKc_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_int64(v2, "ThresholdPassed", *(a1 + 40));
    xpc_dictionary_set_string(v3, "Axis", *(a1 + 32));
  }

  return v3;
}

void checkGmcThresholdPerAxis(char *a1, double *a2, double a3)
{
  *a2 = *a2 * 0.99 + a3 * 0.01;
  v5 = a2 + 9;
  v6 = -50;
  v7 = -1;
  v8 = 1.0;
  do
  {
    v9 = *a2;
    if (*a2 > v8)
    {
      v10 = (*(v5 - 1))++ + 1;
      if (v10 == 10)
      {
        reportGmcThreshold(v6 + 51, a1);
        v9 = *a2;
      }
    }

    if (v9 < v7)
    {
      v11 = (*v5)++ + 1;
      if (v11 == 10)
      {
        reportGmcThreshold(v7, a1);
      }
    }

    v8 = v8 + 1.0;
    v5 += 2;
    --v7;
  }

  while (!__CFADD__(v6++, 1));
}

void reportGmcThreshold(signed __int8 a1, const char *a2)
{
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v2 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      reportGmcThreshold();
    }
  }
}

void *___ZL18reportGmcThresholdaPKc_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_int64(v2, "ThresholdPassed", *(a1 + 40));
    xpc_dictionary_set_string(v3, "Axis", *(a1 + 32));
  }

  return v3;
}

void reportGmcEflTolerance(double a1)
{
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v1 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      reportGmcEflTolerance();
    }
  }
}

xpc_object_t ___ZL21reportGmcEflToleranced_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_double(v2, "ThresholdPassed", *(a1 + 32));
  }

  return v3;
}

uint64_t PhotonDetectorArrivedCallback(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t AppleH16PhotonDetectorServicesAssistant::AppleH16PhotonDetectorServicesAssistant(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  Current = CFRunLoopGetCurrent();
  *(a1 + 56) = CFRetain(Current);
  if (a2)
  {
    *(a2 + 928) = a1;
  }

  return a1;
}

void AppleH16PhotonDetectorServicesAssistant::~AppleH16PhotonDetectorServicesAssistant(AppleH16PhotonDetectorServicesAssistant *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 4) = 0;
  }

  v3 = *this;
  if (*this)
  {
    v4 = *(this + 1);
    if (v4)
    {
      CFRunLoopRemoveSource(*(this + 7), v4, *MEMORY[0x277CBF058]);
      *(this + 1) = 0;
      v3 = *this;
    }

    IONotificationPortDestroy(v3);
    *this = 0;
  }

  v5 = *(this + 3);
  if (v5)
  {
    AppleH16PhotonDetectorDevice::~AppleH16PhotonDetectorDevice(v5);
    MEMORY[0x22AA55B60]();
    *(this + 3) = 0;
  }

  *(this + 4) = 0;
  v6 = *(this + 5);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t AppleH16PhotonDetectorServicesAssistant::SetupDevice(AppleH16PhotonDetectorServicesAssistant *this)
{
  v2 = IOServiceMatching("AppleH16PhotonDetector");
  Mutable = CFArrayCreateMutable(0, 0, 0);
  *(this + 5) = Mutable;
  if (Mutable)
  {
    v4 = IOMasterPort(*MEMORY[0x277D85F18], this + 12);
    if (v4)
    {
      return v4;
    }

    else
    {
      v15 = IONotificationPortCreate(*(this + 12));
      *this = v15;
      if (v15)
      {
        RunLoopSource = IONotificationPortGetRunLoopSource(v15);
        *(this + 1) = RunLoopSource;
        if (RunLoopSource)
        {
          CFRunLoopAddSource(*(this + 7), RunLoopSource, *MEMORY[0x277CBF058]);
          v5 = IOServiceAddMatchingNotification(*this, "IOServiceMatched", v2, PhotonDetectorArrivedCallback, this, this + 4);
          if (!v5)
          {
            PhotonDetectorArrivedCallback(this, *(this + 4));
          }
        }

        else
        {
          v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
          {
            v25 = os_log_create("com.apple.isp", "photon");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v25;
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            AppleH16PhotonDetectorServicesAssistant::SetupDevice(v25, v26, v27, v28, v29, v30, v31, v32);
          }

          v5 = 3758097086;
          IONotificationPortDestroy(*this);
          *this = 0;
        }
      }

      else
      {
        v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
        {
          v17 = os_log_create("com.apple.isp", "photon");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v17;
        }

        v5 = 3758097086;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          AppleH16PhotonDetectorServicesAssistant::SetupDevice(v17, v18, v19, v20, v21, v22, v23, v24);
        }
      }
    }
  }

  else
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "photon");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v6;
    }

    v5 = 3758097085;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      AppleH16PhotonDetectorServicesAssistant::SetupDevice(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return v5;
}

uint64_t AppleH16PhotonDetectorServicesAssistant::OpenDevice(AppleH16PhotonDetectorServicesAssistant *this)
{
  if (CFArrayGetCount(*(this + 5)) != 1)
  {
    return 3758097088;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(this + 5), 0);
  *(this + 3) = ValueAtIndex;
  if (!ValueAtIndex)
  {
    return 3758097088;
  }

  return AppleH16PhotonDetectorDevice::DeviceOpen(ValueAtIndex);
}

uint64_t AppleH16PhotonDetectorServicesAssistant::CloseDevice(AppleH16PhotonDetectorServicesAssistant *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return AppleH16PhotonDetectorDevice::DeviceClose(v1);
  }

  else
  {
    return 3758097088;
  }
}

uint64_t AppleH16PhotonDetectorServicesAssistant::PowerOnDevice(AppleH16PhotonDetectorServicesAssistant *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return AppleH16PhotonDetectorDevice::PowerOnDevice(v1);
  }

  else
  {
    return 3758097088;
  }
}

uint64_t AppleH16PhotonDetectorServicesAssistant::PowerOffDevice(AppleH16PhotonDetectorServicesAssistant *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return AppleH16PhotonDetectorDevice::PowerOffDevice(v1);
  }

  else
  {
    return 3758097088;
  }
}

uint64_t AppleH16PhotonDetectorServicesAssistant::GetGainInfo(AppleH16PhotonDetectorServicesAssistant *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *(this + 3);
  if (v3)
  {
    return AppleH16PhotonDetectorDevice::GetGainInfo(v3, a2, a3);
  }

  else
  {
    return 3758097088;
  }
}

uint64_t AppleH16PhotonDetectorServicesAssistant::ReadReg(AppleH16PhotonDetectorServicesAssistant *this, char a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = *(this + 3);
  if (v4)
  {
    return AppleH16PhotonDetectorDevice::ReadReg(v4, a2, a3, a4);
  }

  else
  {
    return 3758097088;
  }
}

uint64_t AppleH16PhotonDetectorServicesAssistant::WriteReg(AppleH16PhotonDetectorServicesAssistant *this, char a2, unsigned __int8 *a3, size_t a4)
{
  v4 = *(this + 3);
  if (v4)
  {
    return AppleH16PhotonDetectorDevice::WriteReg(v4, a2, a3, a4);
  }

  else
  {
    return 3758097088;
  }
}

void AppleH16PhotonDetectorServicesAssistant::GetCalibrationData(AppleH16PhotonDetectorServicesAssistant *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *(this + 3);
  if (v3)
  {
    AppleH16PhotonDetectorDevice::ReadCalibrationData(v3, a2, a3);
  }
}

void AppleH16PhotonDetectorServicesThreadStart(uint64_t a1)
{
  pthread_setname_np("AppleH16PhotonDetectorServicesThread");
  pthread_mutex_lock(*(a1 + 16));
  operator new();
}

uint64_t AppleH16PhotonDetectorThreadSyncer::signalAndUnlock(AppleH16PhotonDetectorThreadSyncer *this)
{
  pthread_cond_signal((this + 64));

  return pthread_mutex_unlock(this);
}

void AppleH16PhotonDetectorServicesStart(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  AppleH16PhotonDetectorThreadSyncer::AppleH16PhotonDetectorThreadSyncer(&v8);
  v5 = 0;
  v6[0] = 0;
  v6[1] = a2;
  v6[2] = &v8;
  v4 = 49;
  pthread_attr_init(&v7);
  pthread_attr_setschedparam(&v7, &v4);
  pthread_attr_setdetachstate(&v7, 1);
  pthread_create(&v5, &v7, AppleH16PhotonDetectorServicesThreadStart, v6);
  pthread_attr_destroy(&v7);
  pthread_cond_wait(&v9, &v8);
  *a1 = v6[0];
  AppleH16PhotonDetectorThreadSyncer::~AppleH16PhotonDetectorThreadSyncer(&v8);
}

void AppleH16PhotonDetectorThreadSyncer::AppleH16PhotonDetectorThreadSyncer(AppleH16PhotonDetectorThreadSyncer *this)
{
  pthread_mutex_init(this, 0);
  pthread_cond_init((this + 64), 0);
  pthread_mutex_lock(this);
}

void H16ISP::H16ISPGraphNullNode::~H16ISPGraphNullNode(H16ISP::H16ISPGraphNullNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

void ParseDCSNonVisionDataBuffer(__CVBuffer *a1, void *a2)
{
  context = objc_autoreleasePoolPush();
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  pixelBuffer = a1;
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  memset(&v35, 0, sizeof(v35));
  v5 = FigHostTimeToNanoseconds();
  CMTimeMake(&v35, v5, 1000000000);
  time = v35;
  Seconds = CMTimeGetSeconds(&time);
  if (!*(BaseAddress + 3))
  {
    v8 = 0;
    v9 = 0;
    v10 = Seconds * 1000000.0;
    v33 = BaseAddress + 40;
    v30 = BaseAddress + 64;
    v11 = 0.0;
    while (1)
    {
      v12 = &v33[v9];
      if (v33[v9] != 173)
      {
        goto LABEL_31;
      }

      v13 = v12[1];
      v34 = v9;
      if (v13 == 4)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = [a2 objectForKeyedSubscript:@"DCSMagData_Private"];
        if (!v14)
        {
          v14 = objc_opt_new();
          [a2 setObject:v14 forKeyedSubscript:@"DCSMagData_Private"];
        }

        if (*(v12 + 7))
        {
          v15 = 0;
          v16 = &v30[v9];
          do
          {
            memset(&v35, 0, sizeof(v35));
            v17 = FigHostTimeToNanoseconds();
            CMTimeMake(&v35, v17, 1000000000);
            time = v35;
            v35.value = CMTimeGetSeconds(&time);
            *&v35.timescale = *(v16 - 1);
            [v14 addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", &v35, 16)}];
            ++v15;
            v16 += 16;
          }

          while (v15 < *(v12 + 7));
        }
      }

LABEL_30:
      v29 = v34 + *(v12 + 1);
      v9 = v29 + 6;
      if ((v29 + 12) >= 0x4000)
      {
        goto LABEL_31;
      }
    }

    v18 = [a2 objectForKeyedSubscript:@"DCSAudioAccelData_Private"];
    if (!v18)
    {
      v18 = objc_opt_new();
      [a2 setObject:v18 forKeyedSubscript:@"DCSAudioAccelData_Private"];
    }

    v19 = vcvtpd_u64_f64(vcvtd_n_f64_u32(*(v12 + 7), 8uLL));
    if (!v19)
    {
      goto LABEL_30;
    }

    v20 = 0;
    v21 = &BaseAddress[v9 + 63];
    while (1)
    {
      v22 = *&v12[256 * v20 + 16] | (v12[256 * v20 + 20] << 32);
      if (!v20)
      {
        v11 = *(BaseAddress + 3) * 0.015625 - v22;
        v8 = *(v12 + 4) | (v12[20] << 32);
      }

      *&v35.value = (v10 - v11 + (v22 - v8)) / 1000000.0;
      if (v20 != v19 - 1)
      {
        break;
      }

      v23 = v12[14];
      if (!v12[14])
      {
        break;
      }

      v24 = v23 - 5;
      v25 = (v23 - 5) >> 2;
      *&v35.timescale = v25;
      if (v24 >= 4)
      {
        goto LABEL_27;
      }

LABEL_29:
      [v18 addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", &v35, 264, v30)}];
      ++v20;
      v21 += 256;
      if (v20 == v19)
      {
        goto LABEL_30;
      }
    }

    *&v35.timescale = 62;
    v25 = 62;
LABEL_27:
    v26 = &v36;
    v27 = v21;
    do
    {
      *v26 = *(v27 - 1);
      v28 = *v27;
      v27 += 4;
      *(v26 - 62) = v28;
      v26 = (v26 + 2);
      --v25;
    }

    while (v25);
    goto LABEL_29;
  }

  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    ParseDCSNonVisionDataBuffer(BaseAddress + 3, v7);
  }

LABEL_31:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  objc_autoreleasePoolPop(context);
}

void ParseDCSIMUDataBuffer(__CVBuffer *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v6 = BaseAddress[1];
  if (v6 >= 0x40)
  {
    v7 = 64;
  }

  else
  {
    v7 = BaseAddress[1];
  }

  v16[0] = *BaseAddress;
  v16[1] = v7;
  if (v6)
  {
    v8 = BaseAddress;
    v9 = 0;
    v10 = 0;
    do
    {
      memset(&v15, 0, sizeof(v15));
      v11 = FigHostTimeToNanoseconds();
      CMTimeMake(&v15, v11, 1000000000);
      v14 = v15;
      Seconds = CMTimeGetSeconds(&v14);
      v13 = &v16[v9 / 4];
      *(v13 + 2) = Seconds;
      v13[2] = *&v8[v9 + 24];
      *(v13 + 12) = *&v8[v9 + 52];
      *(v13 + 7) = *&v8[v9 + 28];
      *(v13 + 11) = *&v8[v9 + 44];
      ++v10;
      v9 += 48;
    }

    while (v10 < v7);
  }

  [a2 setObject:objc_msgSend(MEMORY[0x277CBEA90] forKeyedSubscript:{"dataWithBytes:length:", v16, 3080), @"DCSIMUData_Private"}];
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  objc_autoreleasePoolPop(v4);
}

H16ISP::H16ISPFrameMetadata *H16ISP::H16ISPFrameMetadata::H16ISPFrameMetadata(H16ISP::H16ISPFrameMetadata *this, const void **a2)
{
  bzero(this, 0x208uLL);
  *(this + 70) = 0;
  *(this + 34) = 0u;
  *(this + 568) = 1;
  H16ISP::H16ISPFrameMetadata::DeepCopy(this, a2);
  return this;
}

{
  bzero(this, 0x208uLL);
  *(this + 70) = 0;
  *(this + 34) = 0u;
  *(this + 568) = 1;
  H16ISP::H16ISPFrameMetadata::DeepCopy(this, a2);
  return this;
}

__n128 H16ISP::H16ISPFrameMetadata::DeepCopy(H16ISP::H16ISPFrameMetadata *this, const void **a2)
{
  if (a2)
  {
    if (*a2)
    {
      v4 = malloc_type_calloc(1uLL, 0x3F8uLL, 0x1000040DC0AE3DDuLL);
      *this = v4;
      if (v4)
      {
        memcpy(v4, *a2, 0x3F8uLL);
      }
    }

    if (a2[1])
    {
      v6 = malloc_type_calloc(1uLL, 0x130CuLL, 0x1000040D3789812uLL);
      *(this + 1) = v6;
      if (v6)
      {
        memcpy(v6, a2[1], 0x130CuLL);
      }
    }

    if (a2[2])
    {
      v7 = malloc_type_calloc(1uLL, 0x16E0uLL, 0x10000405225A14CuLL);
      *(this + 2) = v7;
      if (v7)
      {
        memcpy(v7, a2[2], 0x16E0uLL);
      }
    }

    if (a2[3])
    {
      v8 = malloc_type_calloc(1uLL, 0xEB8uLL, 0x10000404B8EA092uLL);
      *(this + 3) = v8;
      if (v8)
      {
        memcpy(v8, a2[3], 0xEB8uLL);
      }
    }

    if (a2[4])
    {
      v9 = malloc_type_calloc(1uLL, 0x54CuLL, 0x10000405C177231uLL);
      *(this + 4) = v9;
      if (v9)
      {
        memcpy(v9, a2[4], 0x54CuLL);
      }
    }

    if (a2[5])
    {
      v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x1000040504FFAC1uLL);
      *(this + 5) = v10;
      if (v10)
      {
        v11 = a2[5];
        result = *v11;
        v10[1].n128_u64[0] = v11[1].n128_u64[0];
        *v10 = result;
      }
    }

    if (a2[6])
    {
      v12 = malloc_type_calloc(1uLL, 0x70uLL, 0x10000403DB313A2uLL);
      *(this + 6) = v12;
      if (v12)
      {
        v13 = a2[6];
        v14 = *v13;
        v15 = v13[2];
        v12[1] = v13[1];
        v12[2] = v15;
        *v12 = v14;
        result = v13[3];
        v16 = v13[4];
        v17 = v13[6];
        v12[5] = v13[5];
        v12[6] = v17;
        v12[3] = result;
        v12[4] = v16;
      }
    }

    if (a2[7])
    {
      v18 = malloc_type_calloc(1uLL, 0x264uLL, 0x1000040D069E0DDuLL);
      *(this + 7) = v18;
      if (v18)
      {
        memcpy(v18, a2[7], 0x264uLL);
      }
    }

    if (a2[8])
    {
      v19 = malloc_type_calloc(1uLL, 0x308uLL, 0x100004025561657uLL);
      *(this + 8) = v19;
      if (v19)
      {
        memcpy(v19, a2[8], 0x308uLL);
      }
    }

    if (a2[9])
    {
      v20 = malloc_type_calloc(1uLL, 0xC0uLL, 0x10000407B2704E1uLL);
      *(this + 9) = v20;
      if (v20)
      {
        v21 = a2[9];
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[3];
        v20[2] = v21[2];
        v20[3] = v24;
        *v20 = v22;
        v20[1] = v23;
        v25 = v21[4];
        v26 = v21[5];
        v27 = v21[7];
        v20[6] = v21[6];
        v20[7] = v27;
        v20[4] = v25;
        v20[5] = v26;
        result = v21[8];
        v28 = v21[9];
        v29 = v21[11];
        v20[10] = v21[10];
        v20[11] = v29;
        v20[8] = result;
        v20[9] = v28;
      }
    }

    if (a2[10])
    {
      v30 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
      *(this + 10) = v30;
      if (v30)
      {
        *v30 = *a2[10];
      }
    }

    if (a2[11])
    {
      v31 = malloc_type_calloc(1uLL, 0x4EA4uLL, 0x10C0040AD8B828DuLL);
      *(this + 11) = v31;
      if (v31)
      {
        memcpy(v31, a2[11], 0x4EA4uLL);
      }
    }

    if (a2[12])
    {
      v32 = malloc_type_calloc(1uLL, 0x10000uLL, 0x1000040FE83D5C4uLL);
      *(this + 12) = v32;
      if (v32)
      {
        memcpy(v32, a2[12], 0x10000uLL);
      }
    }

    if (a2[13])
    {
      v33 = malloc_type_calloc(1uLL, 0xEE70uLL, 0x1000040F50F12F3uLL);
      *(this + 13) = v33;
      if (v33)
      {
        memcpy(v33, a2[13], 0xEE70uLL);
      }
    }

    if (a2[14])
    {
      v34 = malloc_type_calloc(1uLL, 0x10048uLL, 0x1000040F1D1A10DuLL);
      *(this + 14) = v34;
      if (v34)
      {
        memcpy(v34, a2[14], 0x10048uLL);
      }
    }

    if (a2[15])
    {
      v35 = malloc_type_calloc(1uLL, 0x201EuLL, 0x1000040CF3ADE5FuLL);
      *(this + 15) = v35;
      if (v35)
      {
        memcpy(v35, a2[15], 0x201EuLL);
      }
    }

    if (a2[16])
    {
      v36 = malloc_type_calloc(1uLL, 0x10004uLL, 0x10000404B17ED74uLL);
      *(this + 16) = v36;
      if (v36)
      {
        memcpy(v36, a2[16], 0x10004uLL);
      }
    }

    if (a2[17])
    {
      v37 = malloc_type_calloc(1uLL, 0x4004uLL, 0x10000400008604DuLL);
      *(this + 17) = v37;
      if (v37)
      {
        memcpy(v37, a2[17], 0x4004uLL);
      }
    }

    if (a2[18])
    {
      v38 = malloc_type_calloc(1uLL, 0x40uLL, 0x10000401C69B744uLL);
      *(this + 18) = v38;
      if (v38)
      {
        v39 = a2[18];
        result = *v39;
        v40 = v39[1];
        v41 = v39[3];
        v38[2] = v39[2];
        v38[3] = v41;
        *v38 = result;
        v38[1] = v40;
      }
    }

    if (a2[19])
    {
      v42 = malloc_type_calloc(1uLL, 0x121D0uLL, 0x1000040E3225C75uLL);
      *(this + 19) = v42;
      if (v42)
      {
        memcpy(v42, a2[19], 0x121D0uLL);
      }
    }

    if (a2[20])
    {
      v43 = malloc_type_calloc(1uLL, 0x6C8uLL, 0x1000040FE9D2FA8uLL);
      *(this + 20) = v43;
      if (v43)
      {
        memcpy(v43, a2[20], 0x6C8uLL);
      }
    }

    if (a2[21])
    {
      v44 = malloc_type_calloc(1uLL, 0x2B00uLL, 0x100004074313ED0uLL);
      *(this + 21) = v44;
      if (v44)
      {
        memcpy(v44, a2[21], 0x2B00uLL);
      }
    }

    if (a2[22])
    {
      v45 = malloc_type_calloc(1uLL, 0x1030uLL, 0x1000040213E16FBuLL);
      *(this + 22) = v45;
      if (v45)
      {
        memcpy(v45, a2[22], 0x1030uLL);
      }
    }

    if (a2[23])
    {
      v46 = malloc_type_calloc(1uLL, 0x284uLL, 0x1000040FF9E6560uLL);
      *(this + 23) = v46;
      if (v46)
      {
        memcpy(v46, a2[23], 0x284uLL);
      }
    }

    if (a2[24])
    {
      v47 = malloc_type_calloc(1uLL, 0x4DC0uLL, 0x10000400998E6DBuLL);
      *(this + 24) = v47;
      if (v47)
      {
        memcpy(v47, a2[24], 0x4DC0uLL);
      }
    }

    if (a2[25])
    {
      v48 = malloc_type_calloc(1uLL, 0x12ED8uLL, 0x10000404B67D5EAuLL);
      *(this + 25) = v48;
      if (v48)
      {
        memcpy(v48, a2[25], 0x12ED8uLL);
      }
    }

    if (a2[26])
    {
      v49 = malloc_type_calloc(1uLL, 0xC00A8uLL, 0x1000040DAE9EA36uLL);
      *(this + 26) = v49;
      if (v49)
      {
        memcpy(v49, a2[26], 0xC00A8uLL);
      }
    }

    if (a2[27])
    {
      v50 = malloc_type_calloc(1uLL, 0x80F4uLL, 0x1000040230C61E3uLL);
      *(this + 27) = v50;
      if (v50)
      {
        memcpy(v50, a2[27], 0x80F4uLL);
      }
    }

    if (a2[28])
    {
      v51 = malloc_type_calloc(1uLL, 0x74uLL, 0x100004007D33FE3uLL);
      *(this + 28) = v51;
      if (v51)
      {
        v52 = a2[28];
        v53 = *v52;
        v54 = v52[1];
        v55 = v52[3];
        v51[2] = v52[2];
        v51[3] = v55;
        *v51 = v53;
        v51[1] = v54;
        result = v52[4];
        v56 = v52[5];
        v57 = v52[6];
        *(v51 + 28) = v52[7].n128_u32[0];
        v51[5] = v56;
        v51[6] = v57;
        v51[4] = result;
      }
    }

    if (a2[29])
    {
      v58 = malloc_type_calloc(1uLL, 0x1C8uLL, 0x1000040A54C56BFuLL);
      *(this + 29) = v58;
      if (v58)
      {
        memcpy(v58, a2[29], 0x1C8uLL);
      }
    }

    if (a2[30])
    {
      v59 = malloc_type_calloc(1uLL, 0x9CuLL, 0x100004059EBD510uLL);
      *(this + 30) = v59;
      if (v59)
      {
        v60 = a2[30];
        v61 = v60[1];
        *v59 = *v60;
        v59[1] = v61;
        v62 = v60[2];
        v63 = v60[3];
        v64 = v60[5];
        v59[4] = v60[4];
        v59[5] = v64;
        v59[2] = v62;
        v59[3] = v63;
        result = *(v60 + 6);
        v65 = v60[7];
        v66 = v60[8];
        *(v59 + 140) = *(v60 + 140);
        v59[7] = v65;
        v59[8] = v66;
        v59[6] = result;
      }
    }

    if (a2[31])
    {
      v67 = malloc_type_calloc(1uLL, 0x400uLL, 0x1000040D7EB2065uLL);
      *(this + 31) = v67;
      if (v67)
      {
        memcpy(v67, a2[31], 0x400uLL);
      }
    }

    if (a2[32])
    {
      v68 = malloc_type_calloc(1uLL, 0x162C9CuLL, 0x1000040AB53A37EuLL);
      *(this + 32) = v68;
      if (v68)
      {
        memcpy(v68, a2[32], 0x162C9CuLL);
      }
    }

    if (a2[33])
    {
      v69 = malloc_type_calloc(1uLL, 0x2CuLL, 0x1000040D4159EFEuLL);
      *(this + 33) = v69;
      if (v69)
      {
        v70 = a2[33];
        result = *v70;
        v71 = v70[1];
        *(v69 + 28) = *(v70 + 28);
        *v69 = result;
        v69[1] = v71;
      }
    }

    if (a2[34])
    {
      v72 = malloc_type_calloc(1uLL, 0x8ECuLL, 0x1000040A7D81988uLL);
      *(this + 34) = v72;
      if (v72)
      {
        memcpy(v72, a2[34], 0x8ECuLL);
      }
    }

    if (a2[35])
    {
      v73 = malloc_type_calloc(1uLL, 0x2730uLL, 0x10000406FE76C01uLL);
      *(this + 35) = v73;
      if (v73)
      {
        memcpy(v73, a2[35], 0x2730uLL);
      }
    }

    if (a2[36])
    {
      v74 = malloc_type_calloc(1uLL, 0x1074uLL, 0x100004001BEE44AuLL);
      *(this + 36) = v74;
      if (v74)
      {
        memcpy(v74, a2[36], 0x1074uLL);
      }
    }

    if (a2[37])
    {
      v75 = malloc_type_calloc(1uLL, 0x40CuLL, 0x10000409551EE10uLL);
      *(this + 37) = v75;
      if (v75)
      {
        memcpy(v75, a2[37], 0x40CuLL);
      }
    }

    if (a2[38])
    {
      v76 = malloc_type_calloc(1uLL, 0x24238uLL, 0x1000040B069E486uLL);
      *(this + 38) = v76;
      if (v76)
      {
        memcpy(v76, a2[38], 0x24238uLL);
      }
    }

    if (a2[39])
    {
      v77 = malloc_type_calloc(1uLL, 0xA9C90uLL, 0x1000040762BA0BFuLL);
      *(this + 39) = v77;
      if (v77)
      {
        memcpy(v77, a2[39], 0xA9C90uLL);
      }
    }

    if (a2[40])
    {
      v78 = malloc_type_calloc(1uLL, 0x6FCuLL, 0x1000040AA86B62BuLL);
      *(this + 40) = v78;
      if (v78)
      {
        memcpy(v78, a2[40], 0x6FCuLL);
      }
    }

    if (a2[41])
    {
      v79 = malloc_type_calloc(1uLL, 0x3C114uLL, 0x1000040EB5D8976uLL);
      *(this + 41) = v79;
      if (v79)
      {
        memcpy(v79, a2[41], 0x3C114uLL);
      }
    }

    if (a2[42])
    {
      v80 = malloc_type_calloc(1uLL, 0x2CF244uLL, 0x100004046AA1C73uLL);
      *(this + 42) = v80;
      if (v80)
      {
        memcpy(v80, a2[42], 0x2CF244uLL);
      }
    }

    if (a2[43])
    {
      v81 = malloc_type_calloc(1uLL, 0xF08uLL, 0x100004016538002uLL);
      *(this + 43) = v81;
      if (v81)
      {
        memcpy(v81, a2[43], 0xF08uLL);
      }
    }

    if (a2[44])
    {
      v82 = malloc_type_calloc(1uLL, 0x1E0uLL, 0x100004012FE04D1uLL);
      *(this + 44) = v82;
      if (v82)
      {
        memcpy(v82, a2[44], 0x1E0uLL);
      }
    }

    if (a2[45])
    {
      v83 = malloc_type_calloc(1uLL, 0x20B7CuLL, 0x10000400B46D032uLL);
      *(this + 45) = v83;
      if (v83)
      {
        memcpy(v83, a2[45], 0x20B7CuLL);
      }
    }

    if (a2[46])
    {
      v84 = malloc_type_calloc(1uLL, 0x20040uLL, 0x10000409C819C96uLL);
      *(this + 46) = v84;
      if (v84)
      {
        memcpy(v84, a2[46], 0x20040uLL);
      }
    }

    if (a2[47])
    {
      v85 = malloc_type_calloc(1uLL, 0x120uLL, 0x1000040A8CFB95EuLL);
      *(this + 47) = v85;
      if (v85)
      {
        memcpy(v85, a2[47], 0x120uLL);
      }
    }

    if (a2[48])
    {
      v86 = malloc_type_calloc(1uLL, 0x150uLL, 0x100004055B0EC01uLL);
      *(this + 48) = v86;
      if (v86)
      {
        memcpy(v86, a2[48], 0x150uLL);
      }
    }

    if (a2[49])
    {
      v87 = malloc_type_calloc(1uLL, 0x18uLL, 0x1000040504FFAC1uLL);
      *(this + 49) = v87;
      if (v87)
      {
        v88 = a2[49];
        result = *v88;
        v87[1].n128_u64[0] = v88[1].n128_u64[0];
        *v87 = result;
      }
    }

    if (a2[50])
    {
      v89 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
      *(this + 50) = v89;
      if (v89)
      {
        v90 = a2[50];
        result = *v90;
        v91 = v90[1];
        *v89 = *v90;
        v89[1] = v91;
      }
    }

    if (a2[51])
    {
      v92 = malloc_type_calloc(1uLL, 0x74uLL, 0x10000404F1BB7F0uLL);
      *(this + 51) = v92;
      if (v92)
      {
        v93 = a2[51];
        v94 = *v93;
        v95 = v93[1];
        v96 = v93[3];
        v92[2] = v93[2];
        v92[3] = v96;
        *v92 = v94;
        v92[1] = v95;
        result = v93[4];
        v97 = v93[5];
        v98 = v93[6];
        *(v92 + 28) = v93[7].n128_u32[0];
        v92[5] = v97;
        v92[6] = v98;
        v92[4] = result;
      }
    }

    if (a2[52])
    {
      v99 = malloc_type_calloc(1uLL, 0x100uLL, 0x10000406B966DEFuLL);
      *(this + 52) = v99;
      if (v99)
      {
        v100 = a2[52];
        v101 = *v100;
        v102 = v100[1];
        v103 = v100[3];
        v99[2] = v100[2];
        v99[3] = v103;
        *v99 = v101;
        v99[1] = v102;
        v104 = v100[4];
        v105 = v100[5];
        v106 = v100[7];
        v99[6] = v100[6];
        v99[7] = v106;
        v99[4] = v104;
        v99[5] = v105;
        v107 = v100[8];
        v108 = v100[9];
        v109 = v100[11];
        v99[10] = v100[10];
        v99[11] = v109;
        v99[8] = v107;
        v99[9] = v108;
        result = v100[12];
        v110 = v100[13];
        v111 = v100[15];
        v99[14] = v100[14];
        v99[15] = v111;
        v99[12] = result;
        v99[13] = v110;
      }
    }

    if (a2[53])
    {
      v112 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
      *(this + 53) = v112;
      if (v112)
      {
        v113 = a2[53];
        result = *v113;
        *v112 = *v113;
      }
    }

    if (a2[54])
    {
      v114 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
      *(this + 54) = v114;
      if (v114)
      {
        v115 = a2[54];
        result = *v115;
        *v114 = *v115;
      }
    }

    if (a2[55])
    {
      v116 = malloc_type_calloc(1uLL, 0x40uLL, 0x10000400F2D7D10uLL);
      *(this + 55) = v116;
      if (v116)
      {
        v117 = a2[55];
        result = *v117;
        v118 = v117[1];
        v119 = v117[3];
        v116[2] = v117[2];
        v116[3] = v119;
        *v116 = result;
        v116[1] = v118;
      }
    }

    if (a2[56])
    {
      v120 = malloc_type_calloc(1uLL, 0xCCuLL, 0x100004005C82046uLL);
      *(this + 56) = v120;
      if (v120)
      {
        v121 = a2[56];
        *v120 = *v121;
        v122 = v121[1];
        v123 = v121[2];
        v124 = v121[4];
        v120[3] = v121[3];
        v120[4] = v124;
        v120[1] = v122;
        v120[2] = v123;
        v125 = v121[5];
        v126 = v121[6];
        v127 = v121[8];
        v120[7] = v121[7];
        v120[8] = v127;
        v120[5] = v125;
        v120[6] = v126;
        result = *(v121 + 9);
        v128 = v121[10];
        v129 = v121[11];
        *(v120 + 188) = *(v121 + 188);
        v120[10] = v128;
        v120[11] = v129;
        v120[9] = result;
      }
    }

    if (a2[57])
    {
      v130 = malloc_type_calloc(1uLL, 0x17ECuLL, 0x1000040A4EF050CuLL);
      *(this + 57) = v130;
      if (v130)
      {
        memcpy(v130, a2[57], 0x17ECuLL);
      }
    }

    if (a2[58])
    {
      v131 = malloc_type_calloc(1uLL, 0x404uLL, 0x100004084B5CCE0uLL);
      *(this + 58) = v131;
      if (v131)
      {
        memcpy(v131, a2[58], 0x404uLL);
      }
    }

    if (a2[59])
    {
      v132 = malloc_type_calloc(1uLL, 0x12CuLL, 0x10000404320A7B8uLL);
      *(this + 59) = v132;
      if (v132)
      {
        memcpy(v132, a2[59], 0x12CuLL);
      }
    }

    if (a2[60])
    {
      v133 = malloc_type_calloc(1uLL, 0x22CuLL, 0x1000040DB6749EAuLL);
      *(this + 60) = v133;
      if (v133)
      {
        memcpy(v133, a2[60], 0x22CuLL);
      }
    }

    if (a2[61])
    {
      v134 = malloc_type_calloc(1uLL, 0x8CuLL, 0x1000040592C6820uLL);
      *(this + 61) = v134;
      if (v134)
      {
        v135 = a2[61];
        *v134 = *v135;
        v136 = v135[1];
        v137 = v135[2];
        v138 = v135[4];
        v134[3] = v135[3];
        v134[4] = v138;
        v134[1] = v136;
        v134[2] = v137;
        result = *(v135 + 5);
        v139 = v135[6];
        v140 = v135[7];
        *(v134 + 124) = *(v135 + 124);
        v134[6] = v139;
        v134[7] = v140;
        v134[5] = result;
      }
    }

    if (a2[62])
    {
      v141 = malloc_type_calloc(1uLL, 0xC00uLL, 0x1000040BD1F2613uLL);
      *(this + 62) = v141;
      if (v141)
      {
        memcpy(v141, a2[62], 0xC00uLL);
      }
    }

    if (a2[63])
    {
      v142 = malloc_type_calloc(1uLL, 8uLL, 0x100004090D0E795uLL);
      *(this + 63) = v142;
      if (v142)
      {
        *v142 = *a2[63];
      }
    }

    if (a2[64])
    {
      v143 = malloc_type_calloc(1uLL, 0x47C0uLL, 0x1000040967CD511uLL);
      *(this + 64) = v143;
      if (v143)
      {
        memcpy(v143, a2[64], 0x47C0uLL);
      }
    }

    if (a2[68])
    {
      v144 = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040A86A77D5uLL);
      *(this + 68) = v144;
      if (v144)
      {
        v145 = a2[68];
        result = *v145;
        v144[1].n128_u32[0] = v145[1].n128_u32[0];
        *v144 = result;
      }
    }
  }

  return result;
}

void H16ISP::H16ISPFrameMetadata::DeepFree(H16ISP::H16ISPFrameMetadata *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    free(v3);
    *(this + 1) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    free(v4);
    *(this + 2) = 0;
  }

  v5 = *(this + 3);
  if (v5)
  {
    free(v5);
    *(this + 3) = 0;
  }

  v6 = *(this + 4);
  if (v6)
  {
    free(v6);
    *(this + 4) = 0;
  }

  v7 = *(this + 5);
  if (v7)
  {
    free(v7);
    *(this + 5) = 0;
  }

  v8 = *(this + 6);
  if (v8)
  {
    free(v8);
    *(this + 6) = 0;
  }

  v9 = *(this + 7);
  if (v9)
  {
    free(v9);
    *(this + 7) = 0;
  }

  v10 = *(this + 8);
  if (v10)
  {
    free(v10);
    *(this + 8) = 0;
  }

  v11 = *(this + 9);
  if (v11)
  {
    free(v11);
    *(this + 9) = 0;
  }

  v12 = *(this + 10);
  if (v12)
  {
    free(v12);
    *(this + 10) = 0;
  }

  v13 = *(this + 11);
  if (v13)
  {
    free(v13);
    *(this + 11) = 0;
  }

  v14 = *(this + 12);
  if (v14)
  {
    free(v14);
    *(this + 12) = 0;
  }

  v15 = *(this + 13);
  if (v15)
  {
    free(v15);
    *(this + 13) = 0;
  }

  v16 = *(this + 14);
  if (v16)
  {
    free(v16);
    *(this + 14) = 0;
  }

  v17 = *(this + 15);
  if (v17)
  {
    free(v17);
    *(this + 15) = 0;
  }

  v18 = *(this + 16);
  if (v18)
  {
    free(v18);
    *(this + 16) = 0;
  }

  v19 = *(this + 17);
  if (v19)
  {
    free(v19);
    *(this + 17) = 0;
  }

  v20 = *(this + 18);
  if (v20)
  {
    free(v20);
    *(this + 18) = 0;
  }

  v21 = *(this + 19);
  if (v21)
  {
    free(v21);
    *(this + 19) = 0;
  }

  v22 = *(this + 20);
  if (v22)
  {
    free(v22);
    *(this + 20) = 0;
  }

  v23 = *(this + 21);
  if (v23)
  {
    free(v23);
    *(this + 21) = 0;
  }

  v24 = *(this + 22);
  if (v24)
  {
    free(v24);
    *(this + 22) = 0;
  }

  v25 = *(this + 23);
  if (v25)
  {
    free(v25);
    *(this + 23) = 0;
  }

  v26 = *(this + 24);
  if (v26)
  {
    free(v26);
    *(this + 24) = 0;
  }

  v27 = *(this + 25);
  if (v27)
  {
    free(v27);
    *(this + 25) = 0;
  }

  v28 = *(this + 26);
  if (v28)
  {
    free(v28);
    *(this + 26) = 0;
  }

  v29 = *(this + 27);
  if (v29)
  {
    free(v29);
    *(this + 27) = 0;
  }

  v30 = *(this + 28);
  if (v30)
  {
    free(v30);
    *(this + 28) = 0;
  }

  v31 = *(this + 29);
  if (v31)
  {
    free(v31);
    *(this + 29) = 0;
  }

  v32 = *(this + 30);
  if (v32)
  {
    free(v32);
    *(this + 30) = 0;
  }

  v33 = *(this + 31);
  if (v33)
  {
    free(v33);
    *(this + 31) = 0;
  }

  v34 = *(this + 32);
  if (v34)
  {
    free(v34);
    *(this + 32) = 0;
  }

  v35 = *(this + 33);
  if (v35)
  {
    free(v35);
    *(this + 33) = 0;
  }

  v36 = *(this + 34);
  if (v36)
  {
    free(v36);
    *(this + 34) = 0;
  }

  v37 = *(this + 35);
  if (v37)
  {
    free(v37);
    *(this + 35) = 0;
  }

  v38 = *(this + 36);
  if (v38)
  {
    free(v38);
    *(this + 36) = 0;
  }

  v39 = *(this + 37);
  if (v39)
  {
    free(v39);
    *(this + 37) = 0;
  }

  v40 = *(this + 38);
  if (v40)
  {
    free(v40);
    *(this + 38) = 0;
  }

  v41 = *(this + 39);
  if (v41)
  {
    free(v41);
    *(this + 39) = 0;
  }

  v42 = *(this + 40);
  if (v42)
  {
    free(v42);
    *(this + 40) = 0;
  }

  v43 = *(this + 41);
  if (v43)
  {
    free(v43);
    *(this + 41) = 0;
  }

  v44 = *(this + 42);
  if (v44)
  {
    free(v44);
    *(this + 42) = 0;
  }

  v45 = *(this + 43);
  if (v45)
  {
    free(v45);
    *(this + 43) = 0;
  }

  v46 = *(this + 44);
  if (v46)
  {
    free(v46);
    *(this + 44) = 0;
  }

  v47 = *(this + 45);
  if (v47)
  {
    free(v47);
    *(this + 45) = 0;
  }

  v48 = *(this + 46);
  if (v48)
  {
    free(v48);
    *(this + 46) = 0;
  }

  v49 = *(this + 47);
  if (v49)
  {
    free(v49);
    *(this + 47) = 0;
  }

  v50 = *(this + 48);
  if (v50)
  {
    free(v50);
    *(this + 48) = 0;
  }

  v51 = *(this + 49);
  if (v51)
  {
    free(v51);
    *(this + 49) = 0;
  }

  v52 = *(this + 50);
  if (v52)
  {
    free(v52);
    *(this + 50) = 0;
  }

  v53 = *(this + 51);
  if (v53)
  {
    free(v53);
    *(this + 51) = 0;
  }

  v54 = *(this + 52);
  if (v54)
  {
    free(v54);
    *(this + 52) = 0;
  }

  v55 = *(this + 53);
  if (v55)
  {
    free(v55);
    *(this + 53) = 0;
  }

  v56 = *(this + 54);
  if (v56)
  {
    free(v56);
    *(this + 54) = 0;
  }

  v57 = *(this + 55);
  if (v57)
  {
    free(v57);
    *(this + 55) = 0;
  }

  v58 = *(this + 56);
  if (v58)
  {
    free(v58);
    *(this + 56) = 0;
  }

  v59 = *(this + 57);
  if (v59)
  {
    free(v59);
    *(this + 57) = 0;
  }

  v60 = *(this + 58);
  if (v60)
  {
    free(v60);
    *(this + 58) = 0;
  }

  v61 = *(this + 59);
  if (v61)
  {
    free(v61);
    *(this + 59) = 0;
  }

  v62 = *(this + 60);
  if (v62)
  {
    free(v62);
    *(this + 60) = 0;
  }

  v63 = *(this + 61);
  if (v63)
  {
    free(v63);
    *(this + 61) = 0;
  }

  v64 = *(this + 62);
  if (v64)
  {
    free(v64);
    *(this + 62) = 0;
  }

  v65 = *(this + 63);
  if (v65)
  {
    free(v65);
    *(this + 63) = 0;
  }

  v66 = *(this + 64);
  if (v66)
  {
    free(v66);
    *(this + 64) = 0;
  }
}

void *H16ISP::H16ISPGraphExclaveMotionDetectionNode::H16ISPGraphExclaveMotionDetectionNode(H16ISP::H16ISPGraphExclaveMotionDetectionNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 27, a2, a3, -1);
  *result = &unk_283813B30;
  return result;
}

{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 27, a2, a3, -1);
  *result = &unk_283813B30;
  return result;
}

uint64_t H16ISP::H16ISPGraphExclaveMotionDetectionNode::onMessageProcessing(H16ISP::H16ISPGraphExclaveMotionDetectionNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  v4 = *(a2 + 9) & (1 << H16ISP::H16ISPFilterGraphNode::GetType(this));
  if (v4 || (result = H16ISP::H16ISPExclaveGraphNode::MustRunNode(this), result))
  {

    return H16ISP::H16ISPGraphExclaveMotionDetectionNode::runMotionDetection(this, a2, v4 != 0);
  }

  return result;
}

uint64_t H16ISP::H16ISPGraphExclaveMotionDetectionNode::runMotionDetection(H16ISP::H16ISPGraphExclaveMotionDetectionNode *this, H16ISP::H16ISPFilterGraphMessage *a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v19[0] = 0x32000010000;
  pthread_mutex_lock((a2 + 8));
  v6 = *(a2 + 90);
  pthread_mutex_unlock((a2 + 8));
  if (H16ISP::H16ISPExclaveGraphNode::Verbose(this))
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v24 = H16ISP::H16ISPExclaveGraphNode::Channel(this);
      v25 = 1024;
      v26 = a3;
      v27 = 1024;
      v28 = v6;
      _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_DEFAULT, "runkit motion detection ch=%u publishResult=%{BOOL}d reqid=0x%08x\n", buf, 0x14u);
    }
  }

  bzero(v19, 0x31CuLL);
  v20 = H16ISP::H16ISPExclaveGraphNode::Channel(this);
  kdebug_trace();
  v8 = ispExclaveKitCommand();
  kdebug_trace();
  if (!a3)
  {
    return 0;
  }

  if (v8 || (v21 & 1) == 0)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v10;
    }

    v11 = 3758097084;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v24 = v6;
      v25 = 1024;
      v26 = v8;
      v27 = 1024;
      v28 = v21;
      _os_log_error_impl(&dword_2247DB000, v10, OS_LOG_TYPE_ERROR, "failed to run motion detection reqid=0x%08x err=%u hasValidResult=%{BOOL}d\n", buf, 0x14u);
    }
  }

  else
  {
    if (v22 == 2 || v22 == 1)
    {
      *buf = v22;
    }

    else
    {
      if (v22)
      {
        v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v9 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPGraphExclaveMotionDetectionNode::runMotionDetection(v9);
        }
      }

      *buf = 0;
    }

    v12 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v14 = Mutable;
      v15 = CFNumberCreate(v12, kCFNumberSInt32Type, buf);
      if (v15)
      {
        v16 = v15;
        CFDictionarySetValue(v14, *MEMORY[0x277CF5ED0], v15);
        CFRelease(v16);
      }

      pthread_mutex_lock((a2 + 8));
      CFDictionarySetValue(*(a2 + 46), *MEMORY[0x277CF48C8], v14);
      pthread_mutex_unlock((a2 + 8));
      CFRelease(v14);
      return 0;
    }

    v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v18 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v18;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveMotionDetectionNode::runMotionDetection(v18);
    }

    return 3758097085;
  }

  return v11;
}

void H16ISP::H16ISPGraphExclaveMotionDetectionNode::~H16ISPGraphExclaveMotionDetectionNode(H16ISP::H16ISPGraphExclaveMotionDetectionNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t GMC_AmbiguityTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5, double *a6, double a7)
{
  v9 = *(a1 + 20);
  if (v9)
  {
    Matrix<double>::Matrix(v20, 1, v9);
    v20[0] = &unk_283812C88;
    calcEpipolarDistances(a2, a1, a3, v20);
    v15 = MatrixNxPts<1u,double>::SortInplace<1u,void>(v20);
    LODWORD(v15) = v21;
    v16 = round(a7 * *&v15 + -1.0);
    if (v16 >= 0.0)
    {
      v17 = 0;
      v18 = *(v20[1] + 8 * v16);
      *a6 = v18;
      *a5 = v18 < *(a4 + 632);
    }

    else
    {
      v17 = 4294967291;
    }

    Matrix<double>::~Matrix(v20);
  }

  else
  {
    v17 = 0;
    *a5 = 1;
  }

  return v17;
}

uint64_t calcEpipolarDistances(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v8 = v28;
  do
  {
    v9 = 0;
    v10 = v8;
    do
    {
      *v10 = *(a3 + v9);
      v10 += 3;
      v9 += 8;
    }

    while (v9 != 24);
    ++v7;
    v8 = (v8 + 8);
    a3 += 24;
  }

  while (v7 != 3);
  if (*(a1 + 20))
  {
    v11 = 0;
    do
    {
      MatrixNxPts<3u,double>::CloneColumn(a1, v11, v27);
      v12 = 0;
      v25 = 0uLL;
      v13 = v28;
      v26 = 0;
      do
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v15 = v15 + *(v13 + v14 * 8) * *&v27[v14];
          ++v14;
        }

        while (v14 != 3);
        *(&v25 + v12++) = v15;
        v13 = (v13 + 24);
      }

      while (v12 != 3);
      MatrixNxPts<3u,double>::CloneColumn(a2, v11, &v23);
      v16 = 0;
      v21 = v25;
      v22 = v26;
      v19 = v23;
      v20 = v24;
      v17 = 0.0;
      do
      {
        v17 = v17 + *(&v21 + v16) * *(&v19 + v16);
        v16 += 8;
      }

      while (v16 != 24);
      *(*(a4 + 8) + 8 * v11++) = fabs(v17) / sqrt(*(&v25 + 1) * *(&v25 + 1) + *&v25 * *&v25);
    }

    while (v11 < *(a1 + 20));
  }

  return 0;
}

double MatrixNxPts<1u,double>::SortInplace<1u,void>(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 >= 2)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = v2 + 1;
      v5 = *(a1 + 8);
      v6 = v3;
      v7 = v2;
      do
      {
        if (*(v5 + 8 * v6) < *(v5 + 8 * v7))
        {
          v7 = v6;
        }

        ++v6;
      }

      while (v1 != v6);
      result = *(v5 + 8 * v2);
      v9 = *(v5 + 8 * v7);
      *(v5 + 8 * v7) = result;
      *(*(a1 + 8) + 8 * v2) = v9;
      ++v3;
      ++v2;
    }

    while (v4 != v1 - 1);
  }

  return result;
}

double MatrixNxPts<3u,double>::CloneColumn@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (!*(a1 + 16) || (v3 = *(a1 + 20), v3 <= a2))
  {
    MatrixNxPts<3u,double>::CloneColumn();
  }

  v4 = 0;
  v5 = (*(a1 + 8) + 8 * a2);
  v6 = 8 * v3;
  do
  {
    result = *v5;
    a3[v4++] = *v5;
    v5 = (v5 + v6);
  }

  while ((v4 * 8) != 24);
  return result;
}

void *H16ISP::H16ISPGraphNodeMCTF::ForwardMessage(void *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v3 = this;
  v4 = this[4];
  v5 = this[5];
  v6 = (v4 + 8 * (this[7] >> 9));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*v6 + 8 * (this[7] & 0x1FFLL));
  }

  while (1)
  {
    if (v5 == v4)
    {
      v11 = 0;
    }

    else
    {
      v10 = v3[8] + v3[7];
      v11 = *(v4 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF);
    }

    if (v7 == v11)
    {
      break;
    }

    v8 = *v7++;
    this = (*(*v8 + 32))(v8, a2);
    if ((v7 - *v6) == 4096)
    {
      v9 = v6[1];
      ++v6;
      v7 = v9;
    }

    v4 = v3[4];
    v5 = v3[5];
  }

  return this;
}

void H16ISP::H16ISPGraphNodeMCTF::H16ISPGraphNodeMCTF(H16ISP::H16ISPGraphNodeMCTF *this, int a2, int a3, int a4)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 14);
  *v7 = &unk_283813BA8;
  *(v7 + 84) = a2;
  *(v7 + 88) = a3;
  *(v7 + 92) = a4;
  operator new();
}

void H16ISP::H16ISPGraphNodeMCTF::~H16ISPGraphNodeMCTF(CFTypeRef *this)
{
  *this = &unk_283813BA8;
  if (this[12])
  {
    H16ISP::H16ISPGraphNodeMCTF::onDeactivate(this);
  }

  v2 = this[13];
  *v2 = 0;
  std::mutex::lock((v2 + 104));
  while (1)
  {
    v3 = this[13];
    if (!v3[6])
    {
      break;
    }

    H16ISP::H16ISPFilterGraphMessage::Release(*(*(v3[2] + ((v3[5] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v3[5] & 0x1FFLL)));
    v4 = this[13];
    *(v4 + 40) = vaddq_s64(*(v4 + 40), xmmword_2249BC120);
    std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100]((v4 + 8), 1);
  }

  while (1)
  {
    v5 = this[13];
    v6 = *(v5 + 12);
    if (!v6)
    {
      break;
    }

    ++*(v5 + 11);
    *(v5 + 12) = v6 - 1;
    std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100]((v5 + 56), 1);
  }

  std::mutex::unlock((v5 + 104));
  v7 = this[13];
  if (v7)
  {
    std::mutex::~mutex((v7 + 104));
    std::deque<__CVBuffer *>::~deque[abi:ne200100](v7 + 7);
    std::deque<__CVBuffer *>::~deque[abi:ne200100](v7 + 1);
    MEMORY[0x22AA55B60](v7, 0x10A0C4052DFA383);
  }

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPGraphNodeMCTF::~H16ISPGraphNodeMCTF(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPGraphNodeMCTF::onDeactivate(CFTypeRef *this)
{
  v6 = *MEMORY[0x277D85DE8];
  VTTemporalFilterSessionCompleteFrames();
  VTTemporalFilterSessionInvalidate();
  CFRelease(this[12]);
  this[12] = 0;
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "onDeactivate";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_INFO, "%s - Deactivated MCTF node!\n", &v4, 0xCu);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphNodeMCTF::onActivate(H16ISP::H16ISPGraphNodeMCTF *this)
{
  v2 = MEMORY[0x277CBF138];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, this + 92);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E30], v5);
  CFRelease(v5);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, this + 84);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4EC8], v6);
  CFRelease(v6);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, this + 88);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DD8], v7);
  CFRelease(v7);
  v8 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, v2, v3);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DE8], v8);
  CFRelease(v8);
  v9 = (this + 96);
  LODWORD(this) = VTTemporalFilterSessionCreate();
  CFRelease(Mutable);
  if (!this && *v9)
  {
    return 0;
  }

  v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v10 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;
  }

  v11 = 3758097098;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPGraphNodeMCTF::onActivate();
  }

  return v11;
}

void H16ISP::VTOutputFrameCallback(H16ISP *this, void *a2, int a3, CMTime *a4, CMTime *a5, __CVBuffer *a6)
{
  if (this)
  {
    std::mutex::lock((this + 104));
    value = *(this + 5);
    v10 = *(*(*(this + 2) + ((value >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (value & 0x1FF));
    if (*(*this + 80) == 1)
    {
      H16ISP::VTOutputFrameCallback(this, this + 5, &v20);
      value = v20.value;
    }

    v11 = *(this + 6) - 1;
    *(this + 5) = value + 1;
    *(this + 6) = v11;
    std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
    std::mutex::unlock((this + 104));
    pthread_mutex_lock((v10 + 8));
    v12 = *(v10 + 100);
    memset(&v20, 0, sizeof(v20));
    CMTimeMake(&v20, H16ISP::VTOutputFrameCallback(void *,int,unsigned int,CMTime,__CVBuffer *)::frameNumber, 1);
    time1 = v20;
    v18 = *a4;
    if (CMTimeCompare(&time1, &v18))
    {
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        H16ISP::VTOutputFrameCallback(a4, v13);
      }

      pthread_mutex_unlock((v10 + 8));
    }

    else
    {
      ++H16ISP::VTOutputFrameCallback(void *,int,unsigned int,CMTime,__CVBuffer *)::frameNumber;
      if (v12)
      {
        v15 = v10 + 104;
        while (1)
        {
          v16 = *(v15 + 8);
          if (v16 == 10 || v16 == 0)
          {
            break;
          }

          v15 += 16;
          if (!--v12)
          {
            goto LABEL_23;
          }
        }

        CVPixelBufferRetain(a5);
        CVPixelBufferRelease(*v15);
        *v15 = a5;
      }

LABEL_23:
      pthread_mutex_unlock((v10 + 8));
      H16ISP::H16ISPGraphNodeMCTF::ForwardMessage(*this, v10);
    }

    H16ISP::H16ISPFilterGraphMessage::Release(v10);
  }

  else
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      H16ISP::VTOutputFrameCallback();
    }
  }
}

uint64_t H16ISP::H16ISPGraphNodeMCTF::onMessageProcessing(H16ISP::H16ISPGraphNodeMCTF *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v4 = 3758097084;
  v18 = a2;
  memset(&v17, 0, sizeof(v17));
  CMTimeMake(&v17, H16ISP::H16ISPGraphNodeMCTF::onMessageProcessing(H16ISP::H16ISPFilterGraphMessage *)::frameNumber, 1);
  ++H16ISP::H16ISPGraphNodeMCTF::onMessageProcessing(H16ISP::H16ISPFilterGraphMessage *)::frameNumber;
  pthread_mutex_lock((a2 + 8));
  v5 = *(a2 + 25);
  if (v5)
  {
    v6 = 0;
    v7 = a2 + 112;
    v8 = a2 + 112;
    do
    {
      v10 = *v8;
      v8 += 16;
      v9 = v10;
      if (v10 == 10 || v9 == 0)
      {
        v6 = *(v7 - 1);
      }

      v7 = v8;
      --v5;
    }

    while (v5);
    pthread_mutex_unlock((a2 + 8));
    if (v6)
    {
      std::mutex::lock((*(this + 13) + 104));
      pthread_mutex_lock((a2 + 8));
      ++*a2;
      pthread_mutex_unlock((a2 + 8));
      std::deque<H16ISP::H16ISPFilterGraphMessage *>::push_back((*(this + 13) + 8), &v18);
      if (*(this + 80) == 1)
      {
        v15 = *(this + 13);
        v16.value = std::chrono::steady_clock::now().__d_.__rep_;
        std::deque<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>::push_back((v15 + 56), &v16);
      }

      std::mutex::unlock((*(this + 13) + 104));
      v16 = v17;
      if (VTTemporalFilterSessionProcessFrame())
      {
        v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v12 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v12;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPGraphNodeMCTF::onMessageProcessing();
        }
      }

      else
      {
        return 3758097130;
      }
    }

    else
    {
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphNodeMCTF::onMessageProcessing();
      }
    }
  }

  else
  {
    pthread_mutex_unlock((a2 + 8));
  }

  return v4;
}

void *std::deque<H16ISP::H16ISPFilterGraphMessage *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<H16ISP::H16ISPFilterGraphMessage *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<H16ISP::H16ISPFilterGraphMessage *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(a1, &v10);
}

void sub_2248D95EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::deque<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<ExclaveFrameRateBucket *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<ExclaveFrameRateBucket *>::emplace_back<ExclaveFrameRateBucket *>(a1, &v10);
}

void sub_2248D9848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t GMC_Normalise2DPts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    GMC_Homography();
  }

  if (v4 <= 1)
  {
    GMC_Homography();
  }

  if (v4 == 2)
  {
    GMC_Homography();
  }

  v7 = 0;
  v8 = *(a1 + 8);
  v9 = v8 + 8 * v3;
  v10 = v8 + 8 * (2 * v3);
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    *(v8 + 8 * v7) = *(v8 + 8 * v7) / *(v10 + 8 * v7);
    *(v9 + 8 * v7) = *(v9 + 8 * v7) / *(v10 + 8 * v7);
    *(v10 + 8 * v7) = 0x3FF0000000000000;
    v11 = v11 + *(v8 + 8 * v7);
    v12 = v12 + *(v9 + 8 * v7++);
  }

  while (v3 != v7);
  v13 = *(a2 + 16);
  if (!v13 || (v14 = *(a2 + 20), !v14))
  {
    GMC_Homography();
  }

  if (v13 == 1)
  {
    GMC_Homography();
  }

  if (v13 <= 2)
  {
    GMC_Homography();
  }

  v15 = v11 / v3;
  v16 = *(a2 + 8);
  v17 = *(a1 + 8);
  v18 = 0.0;
  v19 = v3;
  v20 = v12 / v3;
  do
  {
    v21 = *v17 - v15;
    *v16 = v21;
    v22 = v17[v3] - v20;
    v16[v14] = v22;
    v23 = sqrt(v22 * v22 + v21 * v21);
    v16[(2 * v14)] = v23;
    v18 = v18 + v23;
    ++v16;
    ++v17;
    --v19;
  }

  while (v19);
  v24 = 1.41421356 / (v18 / v3);
  *a3 = v24;
  *(a3 + 8) = 0;
  *(a3 + 16) = -(v24 * v15);
  *(a3 + 24) = 0;
  *(a3 + 32) = v24;
  *(a3 + 40) = -(v24 * v20);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0x3FF0000000000000;
  MatrixMxN<3u,3u,double>::operator*<3u>(a3, a1, &v26);
  Matrix<double>::Resize(a2, v28, v29);
  memcpy(*(a2 + 8), __src, 8 * *(a2 + 16) * *(a2 + 20));
  Matrix<double>::~Matrix(&v26);
  return 0;
}

uint64_t H16ISP::H16ISPGraphExitNode::onDeactivate(H16ISP::H16ISPGraphExitNode *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    v3 = 0;
    v4 = (this + 104);
    do
    {
      if (*v4)
      {
        dispatch_sync(*v4, &__block_literal_global_3);
        dispatch_release(*v4);
        *v4 = 0;
        v1 = *(this + 20);
      }

      ++v3;
      v4 += 3;
    }

    while (v3 < v1);
  }

  return 0;
}

void H16ISP::H16ISPGraphExitNode::~H16ISPGraphExitNode(H16ISP::H16ISPGraphExitNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

void H16ISP::H16ISPGraphExitNode::UnRegisterH16ISPFrameReceivedProcForChannel(H16ISP::H16ISPGraphExitNode *this, int a2)
{
  if (*(this + 16) == 1)
  {
    v7 = v2;
    v8 = v3;
    v4 = *(this + 1);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___ZN6H16ISP19H16ISPGraphExitNode43UnRegisterH16ISPFrameReceivedProcForChannelEj_block_invoke;
    v5[3] = &__block_descriptor_tmp_5;
    v5[4] = this;
    v6 = a2;
    dispatch_sync(v4, v5);
  }
}

void ___ZN6H16ISP19H16ISPGraphExitNode43UnRegisterH16ISPFrameReceivedProcForChannelEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = 0;
    for (i = 0; ; ++i)
    {
      v5 = v1 + v3;
      if (*(v1 + v3 + 88) == *(a1 + 40))
      {
        break;
      }

      v3 += 24;
      if (24 * v2 == v3)
      {
        return;
      }
    }

    v6 = *(v5 + 104);
    if (v6)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN6H16ISP19H16ISPGraphExitNode43UnRegisterH16ISPFrameReceivedProcForChannelEj_block_invoke_2;
      block[3] = &__block_descriptor_tmp_4;
      block[4] = v5 + 88;
      dispatch_sync(v6, block);
      dispatch_release(*(v5 + 104));
      *(v5 + 104) = 0;
      LODWORD(v2) = *(v1 + 80);
    }

    if (i + 1 < v2)
    {
      v7 = (v5 + 112);
      do
      {
        v8 = v1 + 88 + 24 * i;
        v9 = *v7;
        *(v8 + 16) = *(v7 + 2);
        *v8 = v9;
        ++i;
        v7 = (v7 + 24);
      }

      while (v2 - 1 != i);
    }

    *(v1 + 80) = v2 - 1;
  }
}

uint64_t H16ISP::FlickerFrequencyHintForCurrentLocation(H16ISP *this)
{
  if (objc_opt_class())
  {
    v1 = [objc_msgSend(MEMORY[0x277D0EB00] "sharedConfiguration")];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 UTF8String];
      if (!v3)
      {
        goto LABEL_47;
      }

      v4 = 0;
      v5 = *v3;
      if (v5 <= 0x47)
      {
        if (*v3 > 0x43u)
        {
          switch(v5)
          {
            case 'D':
              if (v3[1] != 79)
              {
                goto LABEL_82;
              }

              goto LABEL_47;
            case 'E':
              if (v3[1] != 67)
              {
                goto LABEL_82;
              }

              goto LABEL_47;
            case 'G':
              if (*(v3 + 1) - 84 >= 6)
              {
                goto LABEL_82;
              }

              v14 = (v3[1] - 84);
              v15 = "<";
              goto LABEL_26;
          }

          goto LABEL_32;
        }

        switch(v5)
        {
          case 'A':
            v16 = *(v3 + 1) - 71;
            v7 = v16 > 0x10;
            v8 = 1 << v16;
            v9 = 69633;
            break;
          case 'B':
            v21 = *(v3 + 1) - 72;
            v7 = v21 > 0x12;
            v8 = 1 << v21;
            v9 = 265249;
            break;
          case 'C':
            v6 = *(v3 + 1) - 65;
            v7 = v6 > 0x14;
            v8 = 1 << v6;
            v9 = 1196033;
            break;
          default:
            goto LABEL_32;
        }

LABEL_43:
        v22 = v8 & v9;
        if (!v7 && v22 != 0)
        {
          goto LABEL_47;
        }

LABEL_82:
        v10 = 50;
        goto LABEL_48;
      }

      if (*v3 > 0x4Fu)
      {
        if (v5 == 80)
        {
          v20 = *(v3 + 1) - 65;
          v7 = v20 > 0x16;
          v8 = 1 << v20;
          v9 = 4329649;
          goto LABEL_43;
        }

        if (v5 != 83)
        {
          if (v5 == 85)
          {
            if (v3[1] != 83)
            {
              goto LABEL_82;
            }

            goto LABEL_47;
          }

LABEL_32:
          if (*v3 > 0x4Cu)
          {
            if (v5 == 77)
            {
              v26 = *(v3 + 1) - 70;
              v7 = v26 > 0x12;
              v27 = (1 << v26) & 0x42401;
              if (!v7 && v27 != 0)
              {
                goto LABEL_47;
              }
            }

            else if (v5 == 78 && v3[1] == 73)
            {
              goto LABEL_47;
            }
          }

          else if (v5 == 70)
          {
            if (v3[1] == 77)
            {
              goto LABEL_47;
            }
          }

          else if (v5 == 76 && v3[1] == 82)
          {
            goto LABEL_47;
          }

          if (!v4 || v3[1] != 78)
          {
            if (v5 != 86)
            {
              if (v5 == 84)
              {
                v10 = 50;
                v29 = *(v3 + 1) - 67;
                if (v29 > 0x14 || ((1 << v29) & 0x120001) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_47;
              }

              goto LABEL_82;
            }

            if (*(v3 + 1) - 69 >= 5)
            {
              goto LABEL_82;
            }

            v14 = (v3[1] - 69);
            v15 = "<";
LABEL_26:
            v10 = *&v15[4 * v14];
LABEL_48:
            printf("H16ISPLocationManager: countryCode=%s, flickerFreqHint=%dHz\n", v3, v10);

            return v10;
          }

LABEL_47:
          v10 = 60;
          goto LABEL_48;
        }

        v17 = *(v3 + 1);
        if (v17 == 86)
        {
          goto LABEL_47;
        }

        v18 = v17 == 82;
        v19 = 65;
      }

      else
      {
        if (v5 != 72)
        {
          if (v5 == 74)
          {
            if (v3[1] != 80)
            {
              goto LABEL_82;
            }

            goto LABEL_47;
          }

          if (v5 == 75)
          {
            v4 = 1;
            v11 = *(v3 + 1) - 80;
            v7 = v11 > 9;
            v12 = (1 << v11) & 0x205;
            if (!v7 && v12 != 0)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_32;
        }

        v17 = *(v3 + 1);
        v18 = v17 == 78;
        v19 = 84;
      }

      if (v18 || v17 == v19)
      {
        v10 = 60;
      }

      else
      {
        v10 = 50;
      }

      goto LABEL_48;
    }
  }

  return 50;
}

void StopAudioCaptureSession(H16ISPFlickerDetectorContext *a1)
{
  if (a1)
  {
    pthread_mutex_lock(&a1->var23);
    var2 = a1->var2;
    if (var2)
    {
      if (AudioOutputUnitStop(var2))
      {
        v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v3 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
        }

        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          StopAudioCaptureSession();
        }
      }

      DisposeAudioCaptureSession(a1);
    }

    pthread_mutex_unlock(&a1->var23);
  }

  else
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      StopAudioCaptureSession();
    }
  }
}

char *H16ISPFlickerDetectorCreate(int a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x2C8uLL, 0x10A00403CF60310uLL);
    v3 = v2;
    if (v2)
    {
      pthread_mutex_init((v2 + 336), 0);
      pthread_mutex_init((v3 + 424), 0);
      pthread_cond_init((v3 + 488), 0);
      v3[328] = 0;
      v3[8] = 1;
      *(v3 + 16) = 4096;
      *(v3 + 36) = 0;
      v4 = &h16IspFlickerDetectorHWInfo;
      v5 = 10;
      *(v3 + 102) = 0;
      do
      {
        if (*v4 == a1)
        {
          *v3 = v4;
        }

        v4 += 4;
        --v5;
      }

      while (v5);
      *(v3 + 39) = 0;
      *(v3 + 40) = 0;
      *(v3 + 76) = 1065353216;
      v6 = objc_alloc_init(FlickerResourceArbiterClientDelegate);
      *(v3 + 50) = v6;
      [(FlickerResourceArbiterClientDelegate *)v6 setFlickerContext:v3];
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "H16ISPFlickerDetectorCreate";
    v11 = 1024;
    v12 = a1;
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_DEFAULT, "%s - HWType = %d; pContext = %p \n\n", &v9, 0x1Cu);
  }

  return v3;
}

uint64_t H16ISPFlickerDetectorDispose(H16ISPFlickerDetectorContext *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 3758097090;
  }

  [a1->var24 cleanup];

  pthread_mutex_lock(&a1->var27);
  pthread_cond_broadcast(&a1->var28);
  pthread_mutex_unlock(&a1->var27);
  pthread_cond_destroy(&a1->var28);
  pthread_mutex_destroy(&a1->var27);
  pthread_mutex_destroy(&a1->var23);
  free(a1);
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v3)
  {
    v5 = 136315138;
    v6 = "H16ISPFlickerDetectorDispose";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "%s - Success\n", &v5, 0xCu);
    return 0;
  }

  return result;
}

uint64_t H16ISPFlickerDetectorStartDataCollection(H16ISPFlickerDetectorContext *a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  pthread_mutex_lock(&a1->var23);
  a1->var22 = 0;
  pthread_mutex_unlock(&a1->var23);
  [a1->var24 requestResourceAccess];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  result = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    H16ISPFlickerDetectorStartDataCollection();
    return 0;
  }

  return result;
}

uint64_t H16ISPFlickerDetectorStopDataCollection(H16ISPFlickerDetectorContext *a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  pthread_mutex_lock(&a1->var23);
  a1->var22 = 1;
  pthread_mutex_unlock(&a1->var23);
  StopAudioCaptureSession(a1);
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  result = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    H16ISPFlickerDetectorStopDataCollection();
    return 0;
  }

  return result;
}

uint64_t H16ISPFlickerDetectorSetGain(H16ISPFlickerDetectorContext *a1, float a2)
{
  v2 = 3758097097;
  inData = a2;
  if (!a1)
  {
    return 3758097090;
  }

  a1->var19 = a2;
  pthread_mutex_lock(&a1->var23);
  var2 = a1->var2;
  if (var2 && AudioUnitSetProperty(var2, 0x7E6u, 1u, 1u, &inData, 4u))
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISPFlickerDetectorSetGain();
    }
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&a1->var23);
  return v2;
}

uint64_t H16ISPFlickerDetectorGetGain(H16ISPFlickerDetectorContext *a1, float *a2)
{
  v3 = 3758097097;
  result = 3758097090;
  if (a1 && a2)
  {
    ioDataSize = 4;
    pthread_mutex_lock(&a1->var23);
    var2 = a1->var2;
    if (var2 && AudioUnitGetProperty(var2, 0x7E6u, 1u, 1u, a2, &ioDataSize))
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        H16ISPFlickerDetectorGetGain();
      }
    }

    else
    {
      v3 = 0;
    }

    pthread_mutex_unlock(&a1->var23);
    return v3;
  }

  return result;
}

uint64_t H16ISPFlickerDetectorRegisterDataCollectionCallback(H16ISPFlickerDetectorContext *a1, void *a2, int (*a3)(H16ISPFlickerDetectorContext *, void *, photometer_flicker_result *))
{
  if (!a1)
  {
    return 3758097090;
  }

  result = 0;
  a1->var20 = a3;
  a1->var21 = a2;
  return result;
}

uint64_t H16ISPFlickerDetectorSetIRStreamingState(H16ISPFlickerDetectorContext *a1, char a2)
{
  result = 3758097090;
  if (a1)
  {
    var26 = a1->var26;
    if (var26)
    {
      result = 0;
      *var26 = a2;
    }
  }

  return result;
}

uint64_t H16ISPFlickerDetectorSetJasperState(H16ISPFlickerDetectorContext *a1, char a2)
{
  result = 3758097090;
  if (a1)
  {
    var26 = a1->var26;
    if (var26)
    {
      result = 0;
      *(var26 + 1) = a2;
    }
  }

  return result;
}

void DisposeAudioCaptureSession(H16ISPFlickerDetectorContext *a1)
{
  var2 = a1->var2;
  if (var2)
  {
    AudioComponentInstanceDispose(var2);
    a1->var2 = 0;
  }

  if (*a1->var0 != 1)
  {
    mData = a1->var8.mData;
    if (mData)
    {
      free(mData);
      a1->var8.mData = 0;
    }

    v4 = a1->var9.mData;
    if (v4)
    {
      free(v4);
      a1->var9.mData = 0;
    }
  }

  v5 = a1->var5.mData;
  if (v5)
  {
    free(v5);
    a1->var5.mData = 0;
  }

  v6 = a1->var6.mData;
  if (v6)
  {
    free(v6);
    a1->var6.mData = 0;
  }

  v7 = a1->var10.mData;
  if (v7)
  {
    free(v7);
    a1->var10.mData = 0;
  }

  v8 = a1->var11.mData;
  if (v8)
  {
    free(v8);
    a1->var11.mData = 0;
  }

  var17 = a1->var17;
  if (var17)
  {
    vDSP_destroy_fftsetup(var17);
    a1->var17 = 0;
  }

  v10 = a1->var12.mData;
  if (v10)
  {
    free(v10);
    a1->var12.mData = 0;
  }

  v11 = a1->var13.mData;
  if (v11)
  {
    free(v11);
    a1->var13.mData = 0;
  }

  var15 = a1->var15;
  if (var15)
  {
    free(var15);
    a1->var15 = 0;
  }

  var6 = a1->var18.var6;
  if (var6)
  {
    free(var6);
    a1->var18.var6 = 0;
  }

  if (*a1->var0 != 1)
  {
    v14 = a1->var14.mData;
    if (v14)
    {
      free(v14);
      a1->var14.mData = 0;
    }

    var26 = a1->var26;
    if (var26)
    {
      free(var26);
      a1->var26 = 0;
    }
  }
}

uint64_t inputCallbackForHawking(char *a1, AudioUnitRenderActionFlags *ioActionFlags, const AudioTimeStamp *inTimeStamp, unsigned int a4, UInt32 inNumberFrames, AudioBufferList *a6)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = *(a1 + 36);
    if (v10)
    {
      H16ISPMetrics::StartTimer(v10);
    }

    v11 = *(a1 + 10);
    if (!v11)
    {
      v17 = 0;
      goto LABEL_54;
    }

    v12 = *(a1 + 12) * inNumberFrames;
    v14 = a1 + 104;
    v13 = *(a1 + 13);
    ioData.mBuffers[0].mData = (v11 + v13);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v12;
    if (v13 + v12 <= *(a1 + 19))
    {
      v17 = AudioUnitRender(*(a1 + 2), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v17)
      {
        v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v19 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          inputCallbackForHawking();
        }
      }

      v20 = *(a1 + 31);
      if (v20)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v20);
        fflush(*(a1 + 31));
      }

      v16 = *v14 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        inputCallbackForHawking();
      }

      v16 = 0;
      v17 = 0;
    }

    *(a1 + 13) = v16;
    if (v16 != *(a1 + 19))
    {
      goto LABEL_54;
    }

    memcpy(*(a1 + 12), (*(a1 + 12) + v16), v16);
    memcpy((*(a1 + 12) + *(a1 + 19)), *(a1 + 10), *(a1 + 19));
    v21 = *(a1 + 32);
    if (v21)
    {
      fwrite(*(a1 + 12), 1uLL, *(a1 + 23), v21);
      fflush(*(a1 + 32));
    }

    v22 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v22)
    {
LABEL_53:
      *v14 = 0;
LABEL_54:
      v51 = *(a1 + 36);
      if (v51)
      {
        H16ISPMetrics::StopTimer(v51);
      }

      return v17;
    }

    v23 = v22;
    v64 = NAN;
    v63 = 0x7FC000007FC00000;
    v62 = 2143289344;
    v61 = 0x7FC000007FC00000;
    v53 = NAN;
    v60 = 0;
    v59 = 0;
    v24 = *(*a1 + 8);
    v26 = *v24;
    v25 = v24[1];
    v27 = v24[2];
    *(a1 + 15) = *(a1 + 12);
    *(a1 + 29) = *(a1 + 23);
    v28 = *(a1 + 37) >> 2;
    v29 = (v26 / v27);
    if (v29 > 16 || v29 == 0)
    {
      v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v31 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v31;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        inputCallbackForHawking();
      }

      v57 = 0u;
      v58 = 0u;
      __F = 0u;
      v56 = 0u;
      v29 = 16;
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
      __F = 0u;
      v56 = 0u;
      if (v29 < 1)
      {
LABEL_42:
        vDSP_desamp(*(a1 + 15), v29, &__F, *(a1 + 19), v28, v29);
        v35 = v27;
        analyze_flicker_Hawking(*(a1 + 19), *(a1 + 58), v35, &v63, &v61, *(a1 + 25), a1 + 30);
        v36 = *(a1 + 45) >> 2;
        __F = xmmword_2249BBDE0;
        vDSP_desamp(*(a1 + 15), (v26 / v25), &__F, *(a1 + 23), v36, (v26 / v25));
        v37 = v25;
        waveMatching(*(a1 + 23), v36, v37, &v63, &v59, 3u);
        v38 = flicker_temporal_filter_Hawking(*&v63, *&v61, *&v59, -1.0, &v53, *(a1 + 28));
        *v23 = v38;
        v39 = *(*(a1 + 28) + 4 * ((*(*(a1 + 28) + 8) + **(a1 + 28) - 1) % **(a1 + 28)) + 140);
        *&v59 = v39;
        if (v38 == 1)
        {
          if (v39 > 0.4)
          {
            v40 = 1;
          }

          else
          {
            v40 = 2;
          }
        }

        else
        {
          v40 = v38;
          if (v38 != 3)
          {
            v40 = 2;
          }
        }

        v41 = 0;
        v42 = v53 * 0.5;
        *(v23 + 24) = vcvtq_f64_f32(vminnm_f32(__PAIR64__(COERCE_UNSIGNED_INT(sqrtf(v64)), v61), vdup_n_s32(0x477FFF00u)));
        *(v23 + 1) = v42;
        *(v23 + 2) = 0xBFF0000000000000;
        *(v23 + 5) = fminf(v39, 65535.0);
        *(v23 + 6) = fminf(*(&v59 + 1), 65535.0);
        *(v23 + 1) = v40;
        __asm { FMOV            V0.2D, #-1.0 }

        *(v23 + 56) = _Q0;
        *(v23 + 9) = 0xBFF0000000000000;
        *(v23 + 13) = 0x200000000;
        v47 = *(a1 + 37);
        v48 = 1;
        do
        {
          v49 = v48;
          *(v47 + 8 + 8 * v41) = *&v23[8 * v41 + 8];
          *(v47 + 24 + 8 * v41) = *&v23[8 * v41 + 24];
          *(v47 + 40 + 8 * v41) = *&v23[8 * v41 + 40];
          v41 = 1;
          v48 = 0;
        }

        while ((v49 & 1) != 0);
        *(v47 + 56) = *(v23 + 7);
        *(v47 + 64) = *(v23 + 8);
        *v47 = v38;
        *(v47 + 4) = v40;
        *(v47 + 72) = *(v23 + 9);
        *(v47 + 104) = 0;
        pthread_mutex_lock((a1 + 424));
        pthread_cond_broadcast((a1 + 488));
        pthread_mutex_unlock((a1 + 424));
        v50 = *(a1 + 39);
        if (v50)
        {
          v50(a1, *(a1 + 40), v23);
        }

        else
        {
          free(v23);
        }

        goto LABEL_53;
      }
    }

    p_F = &__F;
    v33 = 1;
    do
    {
      *p_F++ = 1.0 / v29;
    }

    while (v29 > v33++);
    goto LABEL_42;
  }

  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    inputCallbackForHawking();
  }

  return 0xFFFFFFFFLL;
}

uint64_t inputCallbackForPenrose(char *a1, AudioUnitRenderActionFlags *ioActionFlags, const AudioTimeStamp *inTimeStamp, unsigned int a4, UInt32 inNumberFrames, AudioBufferList *a6)
{
  v77 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = *(a1 + 36);
    if (v10)
    {
      H16ISPMetrics::StartTimer(v10);
    }

    v11 = *(a1 + 10);
    if (!v11)
    {
      v17 = 0;
      goto LABEL_70;
    }

    v12 = *(a1 + 12) * inNumberFrames;
    v14 = a1 + 104;
    v13 = *(a1 + 13);
    ioData.mBuffers[0].mData = (v11 + v13);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v12;
    if (v13 + v12 <= *(a1 + 19))
    {
      v17 = AudioUnitRender(*(a1 + 2), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v17)
      {
        v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v19 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          inputCallbackForPenrose();
        }
      }

      v20 = *(a1 + 31);
      if (v20)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v20);
        fflush(*(a1 + 31));
      }

      v16 = *v14 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        inputCallbackForPenrose();
      }

      v16 = 0;
      v17 = 0;
    }

    *(a1 + 13) = v16;
    if (v16 != *(a1 + 19))
    {
      goto LABEL_70;
    }

    memcpy(*(a1 + 12), (*(a1 + 12) + v16), v16);
    memcpy((*(a1 + 12) + *(a1 + 19)), *(a1 + 10), *(a1 + 19));
    v21 = *(a1 + 32);
    if (v21)
    {
      fwrite(*(a1 + 12), 1uLL, *(a1 + 23), v21);
      fflush(*(a1 + 32));
    }

    v22 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v22)
    {
LABEL_69:
      *v14 = 0;
LABEL_70:
      v62 = *(a1 + 36);
      if (v62)
      {
        H16ISPMetrics::StopTimer(v62);
      }

      return v17;
    }

    v23 = v22;
    v76 = NAN;
    v75 = 0x7FC000007FC00000;
    v74 = 2143289344;
    v73 = 0x7FC000007FC00000;
    v64 = NAN;
    v72 = 0;
    v71 = 0;
    v24 = *(*a1 + 8);
    v26 = *v24;
    v25 = v24[1];
    v27 = v24[2];
    v28 = *(a1 + 29) >> 2;
    v29 = *(a1 + 33) >> 2;
    *&__F = 1065353216;
    vDSP_desamp(*(a1 + 12), 2, &__F, *(a1 + 17), v29, 2uLL);
    v70 = 0x3F80000000000000;
    vDSP_desamp(*(a1 + 12), 2, &v70, *(a1 + 15), v28, 2uLL);
    v30 = meanFilter(*(a1 + 15), v28);
    v31 = meanFilter(*(a1 + 17), v29);
    if (a1[8] == 1)
    {
      v30 = meanFilter((*(a1 + 15) + 38400), v28 - 9600);
      v32 = meanFilter((*(a1 + 17) + 38400), v29 - 9600);
      a1[8] = 0;
    }

    else
    {
      v32 = v31;
    }

    v33 = v30 + 0.4945;
    v34 = v32 + 0.4945;
    v35 = (v30 + 0.4945) <= 0.033 || v34 <= 0.033;
    v36 = !v35;
    v37 = v33 > v34;
    v38 = v34 / v33;
    if ((v36 & v37) != 0)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0.0;
    }

    v40 = *(a1 + 34);
    if (v40)
    {
      fwrite(*(a1 + 17), 1uLL, *(a1 + 33), v40);
      fflush(*(a1 + 34));
    }

    v41 = *(a1 + 33);
    if (v41)
    {
      fwrite(*(a1 + 15), 1uLL, *(a1 + 29), v41);
      fflush(*(a1 + 33));
    }

    v42 = *(a1 + 37) >> 2;
    v43 = (v26 / v27);
    if (v43 > 16 || v43 == 0)
    {
      v45 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v45 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v45;
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        inputCallbackForPenrose();
      }

      v68 = 0u;
      v69 = 0u;
      __F = 0u;
      v67 = 0u;
      v43 = 16;
    }

    else
    {
      v68 = 0u;
      v69 = 0u;
      __F = 0u;
      v67 = 0u;
      if (v43 < 1)
      {
LABEL_58:
        vDSP_desamp(*(a1 + 15), v43, &__F, *(a1 + 19), v42, v43);
        v48 = v27;
        analyze_flicker(*(a1 + 19), *(a1 + 58), v48, &v75, &v73, *(a1 + 25), a1 + 30);
        v49 = *(a1 + 45) >> 2;
        __F = xmmword_2249BBDE0;
        vDSP_desamp(*(a1 + 15), (v26 / v25), &__F, *(a1 + 23), v49, (v26 / v25));
        v50 = v25;
        waveMatching(*(a1 + 23), v49, v50, &v75, &v71, 3u);
        LODWORD(__F) = 0;
        v51 = flicker_temporal_filter_Penrose(*&v75, *&v73, *&v71, v39, v76, &v64, &__F, *(a1 + 28), v27);
        *v23 = v51;
        v52.i32[0] = __F;
        LODWORD(v73) = __F;
        v53 = *(*(a1 + 28) + 4 * ((*(*(a1 + 28) + 8) + **(a1 + 28) - 1) % **(a1 + 28)) + 140);
        *&v71 = v53;
        if (v51 == 1)
        {
          if (v53 > 0.4)
          {
            v54 = 1;
          }

          else
          {
            v54 = 2;
          }
        }

        else
        {
          v54 = v51;
          if (v51 != 3)
          {
            v54 = 2;
          }
        }

        v55 = 0;
        v52.i32[1] = sqrtf(v76);
        v56 = v64 * 0.5;
        *(v23 + 24) = vcvtq_f64_f32(vminnm_f32(v52, vdup_n_s32(0x477FFF00u)));
        *(v23 + 1) = v56;
        *(v23 + 2) = v39;
        *(v23 + 5) = fminf(v53, 65535.0);
        v57 = fminf(*(&v71 + 1), 65535.0);
        *(v23 + 1) = v54;
        *(v23 + 6) = v57;
        *(v23 + 7) = v30;
        *(v23 + 8) = v32;
        *(v23 + 9) = v39;
        *(v23 + 13) = 0x200000000;
        v58 = *(a1 + 37);
        v59 = 1;
        do
        {
          v60 = v59;
          *(v58 + 8 + 8 * v55) = *&v23[8 * v55 + 8];
          *(v58 + 24 + 8 * v55) = *&v23[8 * v55 + 24];
          *(v58 + 40 + 8 * v55) = *&v23[8 * v55 + 40];
          v55 = 1;
          v59 = 0;
        }

        while ((v60 & 1) != 0);
        *(v58 + 56) = *(v23 + 7);
        *(v58 + 64) = *(v23 + 8);
        *v58 = v51;
        *(v58 + 4) = v54;
        *(v58 + 72) = *(v23 + 9);
        *(v58 + 104) = 0;
        pthread_mutex_lock((a1 + 424));
        pthread_cond_broadcast((a1 + 488));
        pthread_mutex_unlock((a1 + 424));
        v61 = *(a1 + 39);
        if (v61)
        {
          v61(a1, *(a1 + 40), v23);
        }

        else
        {
          free(v23);
        }

        goto LABEL_69;
      }
    }

    p_F = &__F;
    v47 = 1;
    do
    {
      *p_F++ = 1.0 / v43;
      v35 = v43 > v47++;
    }

    while (v35);
    goto LABEL_58;
  }

  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    inputCallbackForPenrose();
  }

  return 0xFFFFFFFFLL;
}

uint64_t inputCallbackForPenrose2(char *a1, AudioUnitRenderActionFlags *ioActionFlags, const AudioTimeStamp *inTimeStamp, unsigned int a4, UInt32 inNumberFrames, AudioBufferList *a6)
{
  v104 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = *(a1 + 36);
    if (v10)
    {
      H16ISPMetrics::StartTimer(v10);
    }

    v11 = *(a1 + 10);
    if (!v11)
    {
      v17 = 0;
      goto LABEL_88;
    }

    v12 = *(a1 + 12) * inNumberFrames;
    v14 = a1 + 104;
    v13 = *(a1 + 13);
    ioData.mBuffers[0].mData = (v11 + v13);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v12;
    if (v13 + v12 <= *(a1 + 19))
    {
      v17 = AudioUnitRender(*(a1 + 2), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v17)
      {
        v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v19 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          inputCallbackForPenrose2();
        }
      }

      v20 = *(a1 + 31);
      if (v20)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v20);
        fflush(*(a1 + 31));
      }

      v16 = *v14 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        inputCallbackForPenrose2();
      }

      v16 = 0;
      v17 = 0;
    }

    *(a1 + 13) = v16;
    if (v16 != *(a1 + 19))
    {
      goto LABEL_88;
    }

    memcpy(*(a1 + 12), (*(a1 + 12) + v16), v16);
    memcpy((*(a1 + 12) + *(a1 + 19)), *(a1 + 10), *(a1 + 19));
    v21 = *(a1 + 32);
    if (v21)
    {
      fwrite(*(a1 + 12), 1uLL, *(a1 + 23), v21);
      fflush(*(a1 + 32));
    }

    v22 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v22)
    {
LABEL_87:
      *v14 = 0;
LABEL_88:
      v85 = *(a1 + 36);
      if (v85)
      {
        H16ISPMetrics::StopTimer(v85);
      }

      return v17;
    }

    v23 = v22;
    v97 = 2143289344;
    v96 = 0x7FC000007FC00000;
    v95 = 0;
    v94 = 0;
    v24 = *a1;
    v25 = *(*a1 + 8);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(a1 + 29) >> 2;
    v29 = *(a1 + 33) >> 2;
    *&__F = 1065353216;
    v98 = 0x3F80000000000000;
    if (*v24 == 5)
    {
      p_F = &v98;
    }

    else
    {
      p_F = &__F;
    }

    if (*v24 == 5)
    {
      v31 = &__F;
    }

    else
    {
      v31 = &v98;
    }

    vDSP_desamp(*(a1 + 12), 2, p_F, *(a1 + 17), v29, 2uLL);
    vDSP_desamp(*(a1 + 12), 2, v31, *(a1 + 15), v28, 2uLL);
    v32 = meanFilter(*(a1 + 15), v28);
    v33 = meanFilter(*(a1 + 17), v29);
    if (a1[8] == 1)
    {
      v32 = meanFilter((*(a1 + 15) + 38400), v28 - 9600);
      v34 = meanFilter((*(a1 + 17) + 38400), v29 - 9600);
      a1[8] = 0;
    }

    else
    {
      v34 = v33;
    }

    v35 = **a1;
    v36 = -1.0;
    if (v35 <= 4)
    {
      if (v35 == 3)
      {
        *(*(a1 + 52) + 708) = 0x3EE666663E99999ALL;
        v42 = v34 + 0.389;
        v36 = 0.0;
        if ((v34 + 0.389) > 0.024)
        {
          v43 = v32 + 0.3895;
          if ((v32 + 0.3895) > 0.024)
          {
            v44 = v43 <= v42;
            v45 = v42 / v43;
            if (!v44)
            {
              v36 = v45;
            }
          }
        }

        goto LABEL_61;
      }

      if (v35 == 4)
      {
        *(*(a1 + 52) + 708) = 0x4110000040C00000;
        v37 = v34 + 19.021;
        v36 = 0.0;
        if ((v34 + 19.021) > 1.4576)
        {
          v38 = v32 + 18.175;
          v39 = 1.6311;
          goto LABEL_54;
        }
      }
    }

    else
    {
      switch(v35)
      {
        case 5:
          *(*(a1 + 52) + 708) = 0x4110000040C00000;
          v40 = v34 + 24.91;
          v36 = 0.0;
          if ((v34 + 24.91) > 1.011)
          {
            v41 = v32 + 25.06;
            if ((v32 + 25.06) > v40 && v41 > 1.011)
            {
              v36 = v40 / v41;
            }
          }

          break;
        case 7:
          *(*(a1 + 52) + 708) = 0x3EE666663E99999ALL;
          v37 = v34 + 0.6268;
          v36 = 0.0;
          v39 = 0.01758;
          if ((v34 + 0.6268) > 0.01758)
          {
            v38 = v32 + 0.6268;
            goto LABEL_54;
          }

          break;
        case 8:
          *(*(a1 + 52) + 708) = 0x4110000040C00000;
          v37 = v34 + 24.876;
          v36 = 0.0;
          if ((v34 + 24.876) > 0.714)
          {
            v38 = v32 + 25.042;
            v39 = 2.0352;
LABEL_54:
            if (v38 > v39 && v38 > v37)
            {
              v36 = v37 / v38;
            }
          }

          break;
      }
    }

LABEL_61:
    v46 = *(a1 + 34);
    if (v46)
    {
      fwrite(*(a1 + 17), 1uLL, *(a1 + 33), v46);
      fflush(*(a1 + 34));
    }

    v47 = *(a1 + 33);
    if (v47)
    {
      fwrite(*(a1 + 15), 1uLL, *(a1 + 29), v47);
      fflush(*(a1 + 33));
    }

    if ((**a1 | 2) == 7)
    {
      v48 = *(*a1 + 8);
      v49 = *v48;
      v50 = v48[2];
      v51 = *(a1 + 37);
      v52 = (v49 / v50);
      v92 = 0u;
      v93 = 0u;
      v53 = v51 >> 2;
      __F = 0u;
      v91 = 0u;
      if (v52 >= 1)
      {
        v54 = &__F;
        v55 = 1;
        do
        {
          *v54++ = 1.0 / v52;
          v56 = v55++;
        }

        while (v56 < v52);
      }

      vDSP_desamp(*(a1 + 15), v52, &__F, *(a1 + 19), v53, v52);
      vDSP_desamp(*(a1 + 17), v52, &__F, *(a1 + 21), v53, v52);
    }

    else
    {
      memcpy(*(a1 + 19), *(a1 + 15), *(a1 + 37));
      memcpy(*(a1 + 21), *(a1 + 17), *(a1 + 37));
    }

    v57 = flicker_data_processing(*(a1 + 52), a1 + 30, *(a1 + 19), *(a1 + 21), &v98, *(a1 + 102));
    v96 = 1119092736;
    v97 = 0;
    v58 = 0.0;
    if (!v57)
    {
      LODWORD(v96) = HIDWORD(v98);
      v97 = v101;
      v58 = v99 * 65535.0;
    }

    v87 = v58;
    v59 = *(a1 + 37);
    v60 = (*(a1 + 19) + (v59 >> 1));
    v61 = (*(a1 + 21) + (v59 >> 1));
    v62 = v59 >> 3;
    v63 = *(a1 + 52);
    v64 = *(v63 + 24);
    v65 = *(v63 + 28);
    v66 = *(v63 + 816);
    if (*(v63 + 828))
    {
      jasperDetectC(v60, v61, v62, 1, v66, &__F, 0, 1.0, 1.0, v64, v65);
    }

    else
    {
      jasperDetectC(v60, v61, v62, 0, v66, &__F, 0, 1.0, 1.0, v64, v65);
      *(*(a1 + 52) + 828) = 1;
    }

    v67 = v91;
    *(v23 + 116) = __F;
    *(v23 + 132) = v67;
    *(v23 + 148) = v92;
    *(v23 + 164) = v93;
    v68 = *(a1 + 45) >> 2;
    v89 = xmmword_2249BBDE0;
    vDSP_desamp(*(a1 + 15), (v27 / v26), &v89, *(a1 + 23), v68, (v27 / v26));
    v69 = v26;
    waveMatching(*(a1 + 23), v68, v69, &v96, &v94, 3u);
    v70 = v102;
    *v23 = v102;
    v71 = *(&v98 + 1);
    v72 = *(*(a1 + 28) + 4 * ((*(*(a1 + 28) + 8) + **(a1 + 28) - 1) % **(a1 + 28)) + 140);
    *&v94 = v72;
    v73 = v70;
    if (v70 != 3)
    {
      if (v70 == 1)
      {
        if (v72 > 0.4)
        {
          v73 = 1;
        }

        else
        {
          v73 = 2;
        }
      }

      else
      {
        v73 = 2;
      }
    }

    v74 = 0;
    *(v23 + 24) = vcvtq_f64_f32(vminnm_f32(__PAIR64__(v97, LODWORD(v87)), vdup_n_s32(0x477FFF00u)));
    *(v23 + 1) = v71 * 0.5;
    *(v23 + 2) = v36;
    v75 = v100;
    v76 = v103;
    *(v23 + 20) = v100;
    *(v23 + 23) = v76;
    *(v23 + 84) = 0x3F80000000000000;
    *(v23 + 5) = fminf(v72, 65535.0);
    v77 = fminf(*(&v94 + 1), 65535.0);
    *(v23 + 1) = v73;
    *(v23 + 13) = 0x200000000;
    *(v23 + 6) = v77;
    *(v23 + 7) = v32;
    *(v23 + 8) = v34;
    *(v23 + 9) = v36;
    v78 = *(a1 + 37);
    v79 = 1;
    do
    {
      v80 = v79;
      *(v78 + 8 + 8 * v74) = *&v23[8 * v74 + 8];
      *(v78 + 24 + 8 * v74) = *&v23[8 * v74 + 24];
      *(v78 + 40 + 8 * v74) = *&v23[8 * v74 + 40];
      v74 = 1;
      v79 = 0;
    }

    while ((v80 & 1) != 0);
    *(v78 + 56) = *(v23 + 7);
    *(v78 + 64) = *(v23 + 8);
    *v78 = v70;
    *(v78 + 4) = v73;
    *(v78 + 72) = *(v23 + 9);
    *(v78 + 80) = v75;
    *(v78 + 92) = v76;
    *(v78 + 84) = 0x3F80000000000000;
    *(v78 + 104) = 0;
    v81 = *(v23 + 116);
    v82 = *(v23 + 132);
    v83 = *(v23 + 148);
    *(v78 + 164) = *(v23 + 164);
    *(v78 + 148) = v83;
    *(v78 + 132) = v82;
    *(v78 + 116) = v81;
    pthread_mutex_lock((a1 + 424));
    pthread_cond_broadcast((a1 + 488));
    pthread_mutex_unlock((a1 + 424));
    v84 = *(a1 + 39);
    if (v84)
    {
      v84(a1, *(a1 + 40), v23);
    }

    else
    {
      free(v23);
    }

    goto LABEL_87;
  }

  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    inputCallbackForPenrose2();
  }

  return 0xFFFFFFFFLL;
}

uint64_t inputCallbackForGrimaldi(char *a1, AudioUnitRenderActionFlags *ioActionFlags, const AudioTimeStamp *inTimeStamp, unsigned int a4, UInt32 inNumberFrames, AudioBufferList *a6)
{
  v112 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = *(a1 + 36);
    if (v10)
    {
      H16ISPMetrics::StartTimer(v10);
    }

    v11 = *(a1 + 10);
    if (!v11)
    {
      v17 = 0;
      goto LABEL_97;
    }

    v12 = *(a1 + 12) * inNumberFrames;
    v14 = a1 + 104;
    v13 = *(a1 + 13);
    ioData.mBuffers[0].mData = (v11 + v13);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v12;
    if (v13 + v12 <= *(a1 + 19))
    {
      v17 = AudioUnitRender(*(a1 + 2), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v17)
      {
        v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v19 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          inputCallbackForGrimaldi();
        }
      }

      v20 = *(a1 + 31);
      if (v20)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v20);
        fflush(*(a1 + 31));
      }

      v16 = *v14 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        inputCallbackForGrimaldi();
      }

      v16 = 0;
      v17 = 0;
    }

    *(a1 + 13) = v16;
    if (v16 != *(a1 + 19))
    {
      goto LABEL_97;
    }

    __ptr = 0;
    a1[536] = 0;
    v21 = *(a1 + 68);
    if (v21)
    {
      AppleH16PhotonDetectorServicesAssistant::GetGainInfo(v21, &__ptr, a1 + 536);
    }

    v22 = *(a1 + 35);
    if (v22)
    {
      fwrite(&__ptr, 1uLL, 1uLL, v22);
      fflush(*(a1 + 35));
    }

    if (a1[536] && (a1[8] & 1) == 0)
    {
      *(a1 + 13) = 0;
      *(*(a1 + 52) + 828) = 0;
      pthread_mutex_lock((a1 + 424));
      v43 = mach_absolute_time();
      v44 = *(a1 + 37);
      *(v44 + 96) = v43;
      LOBYTE(v45) = __ptr;
      *(v44 + 88) = v45;
      *(v44 + 84) = 0;
      *(v44 + 112) = 1;
      pthread_cond_broadcast((a1 + 488));
      pthread_mutex_unlock((a1 + 424));
      return 0;
    }

    memcpy(*(a1 + 12), (*(a1 + 12) + *(a1 + 19)), *(a1 + 19));
    memcpy((*(a1 + 12) + *(a1 + 19)), *(a1 + 10), *(a1 + 19));
    v23 = *(a1 + 32);
    if (v23)
    {
      fwrite(*(a1 + 12), 1uLL, *(a1 + 23), v23);
      fflush(*(a1 + 32));
    }

    v24 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v24)
    {
LABEL_96:
      *v14 = 0;
LABEL_97:
      v88 = *(a1 + 36);
      if (v88)
      {
        H16ISPMetrics::StopTimer(v88);
      }

      return v17;
    }

    v26 = v24;
    LOBYTE(v25) = __ptr;
    v24[22] = v25;
    v100 = 2143289344;
    v99 = 0x7FC000007FC00000;
    v98 = 0;
    v97 = 0;
    v27 = *(*a1 + 8);
    v29 = *v27;
    v28 = v27[1];
    v30 = *(a1 + 29) >> 2;
    v31 = *(a1 + 33) >> 2;
    __F = 1065353216;
    info[0] = 0x3F80000000000000;
    vDSP_desamp(*(a1 + 12), 2, &__F, *(a1 + 17), v31, 2uLL);
    vDSP_desamp(*(a1 + 12), 2, info, *(a1 + 15), v30, 2uLL);
    v32 = *(a1 + 19) >> 3;
    v33 = meanFilter(*(a1 + 15), v30);
    v34 = meanFilter(*(a1 + 17), v31);
    v35 = v30 - v32;
    v36 = meanFilter((*(a1 + 15) + 4 * v32), v35);
    v37 = v31 - v32;
    v38 = meanFilter((*(a1 + 17) + 4 * v32), v37);
    if (a1[8] == 1)
    {
      v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v39 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v39;
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 19);
        *buf = 67109376;
        *&buf[4] = v32;
        *&buf[8] = 1024;
        *&buf[10] = v40;
        _os_log_impl(&dword_2247DB000, v39, OS_LOG_TYPE_DEFAULT, "skip buffer size in (float)%d, acc size %d\n\n", buf, 0xEu);
      }

      v33 = meanFilter((*(a1 + 15) + 4 * v32), v35);
      v34 = meanFilter((*(a1 + 17) + 4 * v32), v37);
      a1[8] = 0;
      *(a1 + 135) = 0;
    }

    else
    {
      *(a1 + 135) ^= 1u;
    }

    v41 = *(a1 + 52);
    *(v41 + 708) = 0x3EE666663E99999ALL;
    if (__ptr <= 2u)
    {
      if (!__ptr)
      {
        v42 = *(v41 + 744);
        goto LABEL_54;
      }

      if (__ptr == 1)
      {
        v42 = *(v41 + 752);
        goto LABEL_54;
      }
    }

    else
    {
      switch(__ptr)
      {
        case 3u:
          v42 = *(v41 + 760);
          goto LABEL_54;
        case 7u:
          v42 = *(v41 + 768);
          goto LABEL_54;
        case 0xFu:
          v42 = *(v41 + 776);
LABEL_54:
          v46 = vmul_f32(v42, 0x3400000034000000);
          *(v41 + 24) = vrev64_s32(v46);
          goto LABEL_55;
      }
    }

    v46 = vrev64_s32(*(v41 + 24));
LABEL_55:
    v47 = v34 - *v46.i32;
    v48 = 0.0;
    if ((v34 - *v46.i32) > 0.01)
    {
      *v46.i32 = v33 - *&v46.i32[1];
      if ((v33 - *&v46.i32[1]) > 0.01 && *v46.i32 > v47)
      {
        v48 = (v47 / *v46.i32);
      }
    }

    v49 = *(a1 + 34);
    if (v49)
    {
      fwrite(*(a1 + 17), 1uLL, *(a1 + 33), v49);
      fflush(*(a1 + 34));
    }

    v50 = *(a1 + 33);
    if (v50)
    {
      fwrite(*(a1 + 15), 1uLL, *(a1 + 29), v50);
      fflush(*(a1 + 33));
    }

    v93 = 0.0;
    v92 = 0;
    v91 = 0.0;
    memcpy(*(a1 + 19), *(a1 + 15), *(a1 + 37));
    memcpy(*(a1 + 21), *(a1 + 17), *(a1 + 37));
    getGainAndOffset((*(a1 + 52) + 716), __ptr, &v93, &v92 + 1, &v92, &v91, v51);
    lux = fun_get_lux((*(a1 + 52) + 716), 1, v36, v38, v93, *(&v92 + 1), *&v92, v91);
    if (lux < 0.0)
    {
      lux = 0.0;
    }

    v26[21] = lux;
    v53 = flicker_data_processing(*(a1 + 52), a1 + 30, *(a1 + 19), *(a1 + 21), &__F, *(a1 + 102));
    v54 = *(a1 + 52);
    if (*(v54 + 1))
    {
      if (*(a1 + 102) != 8.0)
      {
        *(v54 + 828) = 0;
      }

      if (*(a1 + 135) == 1)
      {
        peridotDetectC(*(a1 + 19), *(a1 + 21), *(a1 + 37) >> 2, 0xFA0u, *(v54 + 816), *(v54 + 824), buf);
      }
    }

    else
    {
      *(v54 + 828) = 0;
    }

    mach_timebase_info(info);
    if (info[0].denom)
    {
      v55 = info[0].numer / info[0].denom;
    }

    else
    {
      v55 = 1;
    }

    *&v105[1] = v55 * inTimeStamp->mHostTime;
    *(v26 + 51) = v103;
    v56 = v105[0];
    *(v26 + 55) = v104;
    *(v26 + 59) = v56;
    v57 = v102;
    *(v26 + 43) = *buf;
    *(v26 + 47) = v57;
    *(v26 + 250) = *(v105 + 14);
    v58 = HIDWORD(__F);
    v59 = 1;
    if ((*(&__F + 1) * 0.5) >= 59.0 && (*(&__F + 1) * 0.5) <= 61.0)
    {
      v59 = v107 < 0.95;
    }

    v61 = v111 >= 0.66 && v108 <= 13.66;
    *(v26 + 67) = v61 && v59;
    v99 = 1119092736;
    v100 = 0;
    v62 = 0.0;
    if (!v53)
    {
      LODWORD(v99) = v58;
      v100 = v109;
      v62 = v107 * 65535.0;
    }

    v90 = v62;
    v63 = *(a1 + 45) >> 2;
    *&info[0].numer = xmmword_2249BBDE0;
    vDSP_desamp(*(a1 + 15), (v29 / v28), info, *(a1 + 23), v63, (v29 / v28));
    v64 = v28;
    waveMatching(*(a1 + 23), v63, v64, &v99, &v97, 3u);
    v65 = v110;
    *v26 = v110;
    v66 = *(*(a1 + 28) + 4 * ((*(*(a1 + 28) + 8) + **(a1 + 28) - 1) % **(a1 + 28)) + 140);
    *&v97 = v66;
    v67 = v65;
    if (v65 != 3)
    {
      if (v65 == 1)
      {
        if (v66 > 0.4)
        {
          v67 = 1;
        }

        else
        {
          v67 = 2;
        }
      }

      else
      {
        v67 = 2;
      }
    }

    v68 = 0;
    v69 = *(&__F + 1) * 0.5;
    *(v26 + 6) = vcvtq_f64_f32(vminnm_f32(__PAIR64__(v100, LODWORD(v90)), vdup_n_s32(0x477FFF00u)));
    *(v26 + 1) = v69;
    *(v26 + 2) = v48;
    v70 = v108;
    v71 = v111;
    v26[20] = v108;
    v26[23] = v71;
    *(v26 + 5) = fminf(v66, 65535.0);
    v72 = fminf(*(&v97 + 1), 65535.0);
    *(v26 + 1) = v67;
    *(v26 + 13) = 0x200000001;
    *(v26 + 6) = v72;
    *(v26 + 7) = v33;
    *(v26 + 8) = v34;
    *(v26 + 9) = v48;
    v73 = *(a1 + 37);
    v74 = 1;
    do
    {
      v75 = v74;
      *(v73 + 8 + 8 * v68) = *&v26[2 * v68 + 2];
      *(v73 + 24 + 8 * v68) = *&v26[2 * v68 + 6];
      *(v73 + 40 + 8 * v68) = *&v26[2 * v68 + 10];
      v68 = 1;
      v74 = 0;
    }

    while ((v75 & 1) != 0);
    *(v73 + 56) = *(v26 + 7);
    *(v73 + 64) = *(v26 + 8);
    *v73 = v65;
    *(v73 + 4) = v67;
    *(v73 + 72) = *(v26 + 9);
    *(v73 + 80) = v70;
    *(v73 + 92) = v71;
    *(v73 + 104) = 1;
    pthread_mutex_lock((a1 + 424));
    *(*(a1 + 37) + 84) = v26[21];
    v76 = mach_absolute_time();
    v77 = *(a1 + 37);
    *(v77 + 96) = v76;
    *(v77 + 88) = v26[22];
    *(v77 + 112) = a1[536];
    pthread_cond_broadcast((a1 + 488));
    pthread_mutex_unlock((a1 + 424));
    v78 = *(a1 + 37);
    v79 = *(v26 + 41);
    v80 = *(v26 + 37);
    v81 = *(v26 + 33);
    *(v78 + 116) = *(v26 + 29);
    *(v78 + 132) = v81;
    *(v78 + 148) = v80;
    *(v78 + 164) = v79;
    v82 = *(a1 + 37);
    v83 = *(v26 + 59);
    v84 = *(v26 + 55);
    v85 = *(v26 + 51);
    *(v82 + 250) = *(v26 + 250);
    *(v82 + 204) = v85;
    *(v82 + 220) = v84;
    *(v82 + 236) = v83;
    v86 = *(v26 + 47);
    *(v82 + 172) = *(v26 + 43);
    *(v82 + 188) = v86;
    v87 = *(a1 + 39);
    if (v87)
    {
      v87(a1, *(a1 + 40), v26);
    }

    else
    {
      free(v26);
    }

    goto LABEL_96;
  }

  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    inputCallbackForGrimaldi();
  }

  return 0xFFFFFFFFLL;
}

uint64_t inputCallbackForGrimaldi_iPad(char *a1, AudioUnitRenderActionFlags *ioActionFlags, const AudioTimeStamp *inTimeStamp, unsigned int a4, UInt32 inNumberFrames, AudioBufferList *a6)
{
  v103 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = *(a1 + 36);
    if (v10)
    {
      H16ISPMetrics::StartTimer(v10);
    }

    v11 = *(a1 + 10);
    if (!v11)
    {
      v17 = 0;
      goto LABEL_96;
    }

    v12 = *(a1 + 12) * inNumberFrames;
    v14 = a1 + 104;
    v13 = *(a1 + 13);
    ioData.mBuffers[0].mData = (v11 + v13);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v12;
    if (v13 + v12 <= *(a1 + 19))
    {
      v17 = AudioUnitRender(*(a1 + 2), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v17)
      {
        v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v19 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          inputCallbackForGrimaldi_iPad();
        }
      }

      v20 = *(a1 + 31);
      if (v20)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v20);
        fflush(*(a1 + 31));
      }

      v16 = *v14 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        inputCallbackForGrimaldi_iPad();
      }

      v16 = 0;
      v17 = 0;
    }

    *(a1 + 13) = v16;
    v21 = *(a1 + 19);
    if (v16 != v21)
    {
      goto LABEL_96;
    }

    v85 = 0;
    a1[536] = 0;
    v22 = *(a1 + 68);
    if (v22)
    {
      AppleH16PhotonDetectorServicesAssistant::GetGainInfo(v22, &v85, a1 + 536);
      v21 = *(a1 + 19);
    }

    memcpy(*(a1 + 12), (*(a1 + 12) + v21), v21);
    memcpy((*(a1 + 12) + *(a1 + 19)), *(a1 + 10), *(a1 + 19));
    v23 = *(a1 + 32);
    if (v23)
    {
      fwrite(*(a1 + 12), 1uLL, *(a1 + 23), v23);
      fflush(*(a1 + 32));
    }

    v24 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v24)
    {
LABEL_95:
      *v14 = 0;
LABEL_96:
      v82 = *(a1 + 36);
      if (v82)
      {
        H16ISPMetrics::StopTimer(v82);
      }

      return v17;
    }

    v25 = v24;
    v91 = 2143289344;
    v90 = 0x7FC000007FC00000;
    v89 = 0;
    v88 = 0;
    v26 = *(*a1 + 8);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(a1 + 29) >> 2;
    v30 = *(a1 + 33) >> 2;
    __F = 1065353216;
    info[0] = 0x3F80000000000000;
    vDSP_desamp(*(a1 + 12), 2, &__F, *(a1 + 17), v30, 2uLL);
    vDSP_desamp(*(a1 + 12), 2, info, *(a1 + 15), v29, 2uLL);
    v31 = *(a1 + 19);
    v32 = meanFilter(*(a1 + 15), v29);
    v33 = meanFilter(*(a1 + 17), v30);
    if (a1[8] == 1)
    {
      v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v34 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v34;
      }

      v35 = v31 >> 3;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 19);
        *buf = 67109376;
        *&buf[4] = v35;
        *&buf[8] = 1024;
        *&buf[10] = v36;
        _os_log_impl(&dword_2247DB000, v34, OS_LOG_TYPE_DEFAULT, "skip buffer size in (float)%d, acc size %d\n\n", buf, 0xEu);
      }

      v32 = meanFilter((*(a1 + 15) + 4 * v35), v29 - v35);
      v37 = meanFilter((*(a1 + 17) + 4 * v35), v30 - v35);
      a1[8] = 0;
      *(a1 + 135) = 0;
    }

    else
    {
      v37 = v33;
      *(a1 + 135) ^= 1u;
    }

    v38 = *(a1 + 52);
    *(v38 + 708) = 0x3EE666663E99999ALL;
    if (v85 <= 2u)
    {
      if (!v85)
      {
        v39 = *(v38 + 744);
        goto LABEL_49;
      }

      if (v85 == 1)
      {
        v39 = *(v38 + 752);
        goto LABEL_49;
      }
    }

    else
    {
      switch(v85)
      {
        case 3u:
          v39 = *(v38 + 760);
          goto LABEL_49;
        case 7u:
          v39 = *(v38 + 768);
          goto LABEL_49;
        case 0xFu:
          v39 = *(v38 + 776);
LABEL_49:
          v40 = vmul_f32(v39, 0x3400000034000000);
          *(v38 + 24) = vrev64_s32(v40);
          v41 = *&v40.i32[1];
          goto LABEL_50;
      }
    }

    v41 = *(v38 + 24);
LABEL_50:
    if (v41 < -0.6446 || v41 > -0.6138)
    {
      *(v38 + 24) = -1088351424;
      v41 = -0.6292;
    }

    v42 = *(v38 + 28);
    if (v42 < -0.6437 || v42 > -0.6051)
    {
      *(v38 + 28) = -1088431954;
      v42 = -0.6244;
    }

    v43 = v37 - v42;
    v44 = 0.0;
    if (v43 > 0.0193)
    {
      v45 = v32 - v41;
      if (v45 > 0.0154 && v45 > v43)
      {
        v44 = (v43 / v45);
      }
    }

    v46 = *(a1 + 34);
    if (v46)
    {
      fwrite(*(a1 + 17), 1uLL, *(a1 + 33), v46);
      fflush(*(a1 + 34));
    }

    v47 = *(a1 + 33);
    if (v47)
    {
      fwrite(*(a1 + 15), 1uLL, *(a1 + 29), v47);
      fflush(*(a1 + 33));
    }

    memcpy(*(a1 + 19), *(a1 + 15), *(a1 + 37));
    memcpy(*(a1 + 21), *(a1 + 17), *(a1 + 37));
    v48 = flicker_data_processing(*(a1 + 52), a1 + 30, *(a1 + 19), *(a1 + 21), &__F, *(a1 + 102));
    v49 = *(a1 + 52);
    if (*(v49 + 1))
    {
      if (*(a1 + 102) != 8.0)
      {
        *(v49 + 828) = 0;
      }

      if (*(a1 + 135) == 1)
      {
        peridotDetectC(*(a1 + 19), *(a1 + 21), *(a1 + 37) >> 2, 0xFA0u, *(v49 + 816), *(v49 + 824), buf);
      }
    }

    else
    {
      *(v49 + 828) = 0;
    }

    mach_timebase_info(info);
    if (info[0].denom)
    {
      v50 = info[0].numer / info[0].denom;
    }

    else
    {
      v50 = 1;
    }

    *&v96[1] = v50 * inTimeStamp->mHostTime;
    v51 = v95;
    *(v25 + 204) = v94;
    *(v25 + 220) = v51;
    *(v25 + 236) = v96[0];
    v52 = v93;
    *(v25 + 172) = *buf;
    *(v25 + 188) = v52;
    *(v25 + 250) = *(v96 + 14);
    v53 = HIDWORD(__F);
    v54 = 1;
    if ((*(&__F + 1) * 0.5) >= 59.0 && (*(&__F + 1) * 0.5) <= 61.0)
    {
      v54 = v98 < 0.95;
    }

    v56 = v102 >= 0.66 && v99 <= 13.66;
    *(v25 + 67) = v56 && v54;
    v90 = 1119092736;
    v91 = 0;
    v57 = 0.0;
    if (!v48)
    {
      LODWORD(v90) = v53;
      v91 = v100;
      v57 = v98 * 65535.0;
    }

    v84 = v57;
    v58 = *(a1 + 45) >> 2;
    *&info[0].numer = xmmword_2249BBDE0;
    vDSP_desamp(*(a1 + 15), (v28 / v27), info, *(a1 + 23), v58, (v28 / v27));
    v59 = v27;
    waveMatching(*(a1 + 23), v58, v59, &v90, &v88, 3u);
    v60 = v101;
    *v25 = v101;
    v61 = *(*(a1 + 28) + 4 * ((*(*(a1 + 28) + 8) + **(a1 + 28) - 1) % **(a1 + 28)) + 140);
    *&v88 = v61;
    v62 = v60;
    if (v60 != 3)
    {
      if (v60 == 1)
      {
        if (v61 > 0.4)
        {
          v62 = 1;
        }

        else
        {
          v62 = 2;
        }
      }

      else
      {
        v62 = 2;
      }
    }

    v63 = 0;
    v64 = *(&__F + 1) * 0.5;
    *(v25 + 24) = vcvtq_f64_f32(vminnm_f32(__PAIR64__(v91, LODWORD(v84)), vdup_n_s32(0x477FFF00u)));
    *(v25 + 1) = v64;
    *(v25 + 2) = v44;
    v65 = v99;
    *(v25 + 20) = v99;
    v66 = v102;
    *(v25 + 5) = fminf(v61, 65535.0);
    *(v25 + 23) = v66;
    v67 = fminf(*(&v88 + 1), 65535.0);
    *(v25 + 1) = v62;
    *(v25 + 27) = 2;
    *(v25 + 6) = v67;
    *(v25 + 7) = v32;
    *(v25 + 8) = v37;
    *(v25 + 9) = v44;
    v68 = *(a1 + 37);
    v69 = 1;
    do
    {
      v70 = v69;
      *(v68 + 8 + 8 * v63) = *&v25[8 * v63 + 8];
      *(v68 + 24 + 8 * v63) = *&v25[8 * v63 + 24];
      *(v68 + 40 + 8 * v63) = *&v25[8 * v63 + 40];
      v63 = 1;
      v69 = 0;
    }

    while ((v70 & 1) != 0);
    *(v68 + 56) = *(v25 + 7);
    *(v68 + 64) = *(v25 + 8);
    *v68 = v60;
    *(v68 + 4) = v62;
    *(v68 + 72) = *(v25 + 9);
    *(v68 + 80) = v65;
    *(v68 + 92) = v66;
    v71 = mach_absolute_time();
    v72 = *(a1 + 37);
    *(v72 + 96) = v71;
    v73 = *(v25 + 116);
    v74 = *(v25 + 132);
    v75 = *(v25 + 148);
    *(v72 + 164) = *(v25 + 164);
    *(v72 + 148) = v75;
    *(v72 + 132) = v74;
    *(v72 + 116) = v73;
    v76 = *(a1 + 37);
    v77 = *(v25 + 188);
    *(v76 + 172) = *(v25 + 172);
    *(v76 + 188) = v77;
    v78 = *(v25 + 204);
    v79 = *(v25 + 220);
    v80 = *(v25 + 236);
    *(v76 + 250) = *(v25 + 250);
    *(v76 + 236) = v80;
    *(v76 + 220) = v79;
    *(v76 + 204) = v78;
    v81 = *(a1 + 39);
    if (v81)
    {
      v81(a1, *(a1 + 40), v25);
    }

    else
    {
      free(v25);
    }

    goto LABEL_95;
  }

  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    inputCallbackForGrimaldi_iPad();
  }

  return 0xFFFFFFFFLL;
}

uint64_t inputCallbackForGrimaldiHighFreq(char *a1, AudioUnitRenderActionFlags *ioActionFlags, const AudioTimeStamp *inTimeStamp, unsigned int a4, UInt32 inNumberFrames, AudioBufferList *a6)
{
  v125 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = *(a1 + 36);
    if (v10)
    {
      H16ISPMetrics::StartTimer(v10);
    }

    v11 = *(a1 + 10);
    if (!v11)
    {
      v17 = 0;
      goto LABEL_112;
    }

    v13 = a1 + 104;
    v12 = *(a1 + 13);
    v14 = *(a1 + 12) * inNumberFrames;
    ioData.mBuffers[0].mData = (v11 + v12);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v14;
    if (v12 + v14 <= *(a1 + 19))
    {
      v17 = AudioUnitRender(*(a1 + 2), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v17)
      {
        v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v19 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          inputCallbackForGrimaldiHighFreq();
        }
      }

      v20 = *(a1 + 31);
      if (v20)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v20);
        fflush(*(a1 + 31));
      }

      v16 = *v13 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        inputCallbackForGrimaldiHighFreq();
      }

      v16 = 0;
      v17 = 0;
    }

    *(a1 + 13) = v16;
    if (v16 != *(a1 + 19))
    {
      goto LABEL_112;
    }

    __ptr = 0;
    a1[536] = 0;
    v21 = *(a1 + 68);
    if (v21)
    {
      AppleH16PhotonDetectorServicesAssistant::GetGainInfo(v21, &__ptr, a1 + 536);
    }

    v22 = *(a1 + 35);
    if (v22)
    {
      fwrite(&__ptr, 1uLL, 1uLL, v22);
      fflush(*(a1 + 35));
    }

    if (a1[536] && (a1[8] & 1) == 0)
    {
      *(a1 + 13) = 0;
      *(*(a1 + 52) + 828) = 0;
      pthread_mutex_lock((a1 + 424));
      v44 = mach_absolute_time();
      v45 = *(a1 + 37);
      *(v45 + 96) = v44;
      LOBYTE(v46) = __ptr;
      *(v45 + 88) = v46;
      *(v45 + 84) = 0;
      *(v45 + 112) = 1;
      pthread_cond_broadcast((a1 + 488));
      pthread_mutex_unlock((a1 + 424));
      return 0;
    }

    memcpy(*(a1 + 12), (*(a1 + 12) + *(a1 + 19)), *(a1 + 19));
    memcpy((*(a1 + 12) + *(a1 + 19)), *(a1 + 10), *(a1 + 19));
    v23 = *(a1 + 32);
    if (v23)
    {
      fwrite(*(a1 + 12), 1uLL, *(a1 + 23), v23);
      fflush(*(a1 + 32));
    }

    v24 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v24)
    {
LABEL_111:
      *v13 = 0;
LABEL_112:
      v101 = *(a1 + 36);
      if (v101)
      {
        H16ISPMetrics::StopTimer(v101);
      }

      return v17;
    }

    v26 = v24;
    LOBYTE(v25) = __ptr;
    v24[22] = v25;
    v114 = 2143289344;
    v113 = 0x7FC000007FC00000;
    v112 = 0;
    v111 = 0;
    v27 = *(*a1 + 8);
    v29 = *v27;
    v28 = v27[1];
    v30 = v27[2];
    v31 = *(a1 + 29) >> 2;
    v32 = *(a1 + 33) >> 2;
    __F = 1065353216;
    info[0] = 0x3F80000000000000;
    vDSP_desamp(*(a1 + 12), 2, &__F, *(a1 + 17), v32, 2uLL);
    vDSP_desamp(*(a1 + 12), 2, info, *(a1 + 15), v31, 2uLL);
    v33 = *(a1 + 19) >> 3;
    v34 = meanFilter(*(a1 + 15), v31);
    v35 = meanFilter(*(a1 + 17), v32);
    v36 = v31 - v33;
    v37 = v32 - v33;
    v38 = meanFilter((*(a1 + 15) + 4 * v33 + 4 * (v36 - 3 * v36 / 5)), 3 * v36 / 5);
    v39 = meanFilter((*(a1 + 17) + 4 * v33 + 4 * (v37 - 3 * v37 / 5)), 3 * v37 / 5);
    if (a1[8] == 1)
    {
      v40 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v40 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v40;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(a1 + 19);
        *buf = 67109376;
        *&buf[4] = v33;
        *&buf[8] = 1024;
        *&buf[10] = v41;
        _os_log_impl(&dword_2247DB000, v40, OS_LOG_TYPE_DEFAULT, "skip buffer size in (float)%d, acc size %d\n\n", buf, 0xEu);
      }

      v34 = meanFilter((*(a1 + 15) + 4 * v33), v36);
      v35 = meanFilter((*(a1 + 17) + 4 * v33), v37);
      a1[8] = 0;
      *(a1 + 135) = 0;
    }

    else
    {
      *(a1 + 135) ^= 1u;
    }

    v42 = *(a1 + 52);
    *(v42 + 708) = 0x3EE666663E99999ALL;
    if (__ptr <= 2u)
    {
      if (!__ptr)
      {
        v43 = *(v42 + 744);
        goto LABEL_54;
      }

      if (__ptr == 1)
      {
        v43 = *(v42 + 752);
        goto LABEL_54;
      }
    }

    else
    {
      switch(__ptr)
      {
        case 3u:
          v43 = *(v42 + 760);
          goto LABEL_54;
        case 7u:
          v43 = *(v42 + 768);
          goto LABEL_54;
        case 0xFu:
          v43 = *(v42 + 776);
LABEL_54:
          *(v42 + 24) = vrev64_s32(vmul_f32(v43, 0x3400000034000000));
LABEL_55:
          v47 = *(a1 + 52);
          v48 = v35 - *(v47 + 28);
          v49 = 0.0;
          if (v48 > 0.01)
          {
            v50 = v34 - *(v47 + 24);
            if (v50 > 0.01 && v50 > v48)
            {
              v49 = (v48 / v50);
            }
          }

          v51 = *(a1 + 34);
          if (v51)
          {
            fwrite(*(a1 + 17), 1uLL, *(a1 + 33), v51);
            fflush(*(a1 + 34));
          }

          v52 = *(a1 + 33);
          if (v52)
          {
            fwrite(*(a1 + 15), 1uLL, *(a1 + 29), v52);
            fflush(*(a1 + 33));
          }

          v107 = 0.0;
          v106 = 0;
          v105 = 0.0;
          if (v29 == v30)
          {
            memcpy(*(a1 + 19), *(a1 + 15), *(a1 + 37));
            memcpy(*(a1 + 21), *(a1 + 17), *(a1 + 37));
          }

          else
          {
            v54 = *(a1 + 37) >> 2;
            v55 = v29 / v30;
            v56 = (v29 / v30);
            if (v56 >= 16)
            {
              v57 = 16;
            }

            else
            {
              v57 = (v29 / v30);
            }

            if (v56 >= 1)
            {
              *&v55 = 1.0 / v57;
              v58 = (v57 + 3) & 0x3C;
              v59 = vdupq_n_s64(v57 - 1);
              v60 = xmmword_2249BBCC0;
              v61 = xmmword_2249B9820;
              v62 = &buf[8];
              v63 = vdupq_n_s64(4uLL);
              do
              {
                v64 = vmovn_s64(vcgeq_u64(v59, v61));
                if (vuzp1_s16(v64, *&v55).u8[0])
                {
                  *(v62 - 2) = LODWORD(v55);
                }

                if (vuzp1_s16(v64, *&v55).i8[2])
                {
                  *(v62 - 1) = LODWORD(v55);
                }

                if (vuzp1_s16(*&v55, vmovn_s64(vcgeq_u64(v59, *&v60))).i32[1])
                {
                  *v62 = LODWORD(v55);
                  v62[1] = LODWORD(v55);
                }

                v60 = vaddq_s64(v60, v63);
                v61 = vaddq_s64(v61, v63);
                v62 += 4;
                v58 -= 4;
              }

              while (v58);
            }

            vDSP_desamp(*(a1 + 15), v57, buf, *(a1 + 19), v54, v57);
            vDSP_desamp(*(a1 + 17), v57, buf, *(a1 + 21), v54, v57);
          }

          getGainAndOffset((*(a1 + 52) + 716), __ptr, &v107, &v106 + 1, &v106, &v105, v53);
          lux = fun_get_lux((*(a1 + 52) + 716), 1, v38, v39, v107, *(&v106 + 1), *&v106, v105);
          if (lux < 0.0)
          {
            lux = 0.0;
          }

          v26[21] = lux;
          v66 = flicker_data_processing(*(a1 + 52), a1 + 30, *(a1 + 19), *(a1 + 21), &__F, *(a1 + 102));
          v67 = *(a1 + 52);
          if (*(v67 + 1))
          {
            if (*(a1 + 102) != 8.0)
            {
              *(v67 + 828) = 0;
            }

            if (*(a1 + 135) == 1)
            {
              peridotDetectC(*(a1 + 19), *(a1 + 21), *(a1 + 37) >> 2, 0xFA0u, *(v67 + 816), *(v67 + 824), buf);
            }
          }

          else
          {
            *(v67 + 828) = 0;
          }

          mach_timebase_info(info);
          if (info[0].denom)
          {
            v68 = info[0].numer / info[0].denom;
          }

          else
          {
            v68 = 1;
          }

          *&v118[1] = v68 * inTimeStamp->mHostTime;
          *(v26 + 51) = v116;
          v69 = v118[0];
          *(v26 + 55) = v117;
          *(v26 + 59) = v69;
          v70 = *&buf[16];
          *(v26 + 43) = *buf;
          *(v26 + 47) = v70;
          *(v26 + 250) = *(v118 + 14);
          v71 = HIDWORD(__F);
          v72 = 1;
          if ((*(&__F + 1) * 0.5) >= 59.0 && (*(&__F + 1) * 0.5) <= 61.0)
          {
            v72 = v120 < 0.95;
          }

          v74 = v124 >= 0.66 && v121 <= 13.66;
          *(v26 + 67) = v74 && v72;
          v113 = 1119092736;
          v114 = 0;
          v75 = 0.0;
          if (!v66)
          {
            LODWORD(v113) = v71;
            v114 = v122;
            v75 = v120 * 65535.0;
          }

          v104 = v75;
          v76 = *(a1 + 45) >> 2;
          *&info[0].numer = xmmword_2249BBDE0;
          vDSP_desamp(*(a1 + 15), (v29 / v28), info, *(a1 + 23), v76, (v29 / v28));
          v77 = v28;
          waveMatching(*(a1 + 23), v76, v77, &v113, &v111, 3u);
          v78 = v123;
          *v26 = v123;
          v79 = *(*(a1 + 28) + 4 * ((*(*(a1 + 28) + 8) + **(a1 + 28) - 1) % **(a1 + 28)) + 140);
          *&v111 = v79;
          v80 = v78;
          if (v78 != 3)
          {
            if (v78 == 1)
            {
              if (v79 > 0.4)
              {
                v80 = 1;
              }

              else
              {
                v80 = 2;
              }
            }

            else
            {
              v80 = 2;
            }
          }

          v81 = 0;
          v82 = *(&__F + 1) * 0.5;
          *(v26 + 6) = vcvtq_f64_f32(vminnm_f32(__PAIR64__(v114, LODWORD(v104)), vdup_n_s32(0x477FFF00u)));
          *(v26 + 1) = v82;
          *(v26 + 2) = v49;
          v83 = v121;
          v84 = v124;
          v26[20] = v121;
          v26[23] = v84;
          *(v26 + 5) = fminf(v79, 65535.0);
          v85 = fminf(*(&v111 + 1), 65535.0);
          *(v26 + 1) = v80;
          *(v26 + 13) = 0x200000001;
          *(v26 + 6) = v85;
          *(v26 + 7) = v34;
          *(v26 + 8) = v35;
          *(v26 + 9) = v49;
          v86 = *(a1 + 37);
          v87 = 1;
          do
          {
            v88 = v87;
            *(v86 + 8 + 8 * v81) = *&v26[2 * v81 + 2];
            *(v86 + 24 + 8 * v81) = *&v26[2 * v81 + 6];
            *(v86 + 40 + 8 * v81) = *&v26[2 * v81 + 10];
            v81 = 1;
            v87 = 0;
          }

          while ((v88 & 1) != 0);
          *(v86 + 56) = *(v26 + 7);
          *(v86 + 64) = *(v26 + 8);
          *v86 = v78;
          *(v86 + 4) = v80;
          *(v86 + 72) = *(v26 + 9);
          *(v86 + 80) = v83;
          *(v86 + 92) = v84;
          *(v86 + 104) = 1;
          pthread_mutex_lock((a1 + 424));
          *(*(a1 + 37) + 84) = v26[21];
          v89 = mach_absolute_time();
          v90 = *(a1 + 37);
          *(v90 + 96) = v89;
          *(v90 + 88) = v26[22];
          *(v90 + 112) = a1[536];
          pthread_cond_broadcast((a1 + 488));
          pthread_mutex_unlock((a1 + 424));
          v91 = *(a1 + 37);
          v92 = *(v26 + 41);
          v93 = *(v26 + 37);
          v94 = *(v26 + 33);
          *(v91 + 116) = *(v26 + 29);
          *(v91 + 132) = v94;
          *(v91 + 148) = v93;
          *(v91 + 164) = v92;
          v95 = *(a1 + 37);
          v96 = *(v26 + 59);
          v97 = *(v26 + 55);
          v98 = *(v26 + 51);
          *(v95 + 250) = *(v26 + 250);
          *(v95 + 204) = v98;
          *(v95 + 220) = v97;
          *(v95 + 236) = v96;
          v99 = *(v26 + 47);
          *(v95 + 172) = *(v26 + 43);
          *(v95 + 188) = v99;
          v100 = *(a1 + 39);
          if (v100)
          {
            v100(a1, *(a1 + 40), v26);
          }

          else
          {
            free(v26);
          }

          goto LABEL_111;
      }
    }

    v103 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v103 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v103;
    }

    if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "inputCallbackForGrimaldiHighFreq";
      *&buf[12] = 1024;
      *&buf[14] = __ptr;
      _os_log_impl(&dword_2247DB000, v103, OS_LOG_TYPE_INFO, "%s - Unexpected gain value %d\n", buf, 0x12u);
    }

    goto LABEL_55;
  }

  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    inputCallbackForGrimaldiHighFreq();
  }

  return 0xFFFFFFFFLL;
}

uint64_t AllocateFlickerDetectorBuffers(H16ISPFlickerDetectorContext *a1)
{
  v2 = *(a1->var0 + 1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
  v7 = (log2((v5 * (2 * (a1->var3.mSampleRate * 0.125)) / v3) + -0.5) + 1.0);
  a1->var16 = v7;
  a1->var18.var6 = v6;
  mBitsPerChannel = a1->var3.mBitsPerChannel;
  mBytesPerFrame = a1->var3.mBytesPerFrame;
  v10 = (1 << v7);
  v11 = (v3 * v10 / v5 * 0.5);
  v12 = malloc_type_calloc(v11, mBytesPerFrame, 0x28673D1BuLL);
  a1->var5.mData = v12;
  if (v12)
  {
    a1->var5.mDataByteSize = mBytesPerFrame * v11;
    v13 = 2 * v11;
    v14 = malloc_type_calloc(2 * v11, mBytesPerFrame, 0x45AAAF08uLL);
    a1->var6.mData = v14;
    if (v14)
    {
      v15 = mBitsPerChannel >> 3;
      a1->var6.mDataByteSize = v13 * mBytesPerFrame;
      v16 = malloc_type_calloc(v10, v15, 0x5EBBDA42uLL);
      a1->var10.mData = v16;
      if (v16)
      {
        v17 = malloc_type_calloc(v10, v15, 0x8D896DA0uLL);
        a1->var11.mData = v17;
        if (v17)
        {
          a1->var10.mDataByteSize = v15 << v7;
          a1->var11.mDataByteSize = v15 << v7;
          v18 = malloc_type_calloc((v4 * v11 / v3), v15, 0xDCB814D4uLL);
          a1->var12.mData = v18;
          if (v18)
          {
            a1->var12.mDataByteSize = v15 * (v4 * v11 / v3);
            if (*a1->var0 != 1)
            {
              v19 = malloc_type_calloc(2 * v11, v15, 0xCC483281uLL);
              a1->var8.mData = v19;
              if (!v19)
              {
                v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                {
                  v39 = os_log_create("com.apple.isp", "general");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v39;
                }

                v33 = 3758097085;
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  AllocateFlickerDetectorBuffers();
                }

                return v33;
              }

              a1->var8.mDataByteSize = v13 * v15;
              v20 = malloc_type_calloc(2 * v11, v15, 0x7A41E2FAuLL);
              a1->var9.mData = v20;
              if (!v20)
              {
                v42 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                {
                  v42 = os_log_create("com.apple.isp", "general");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v42;
                }

                v33 = 3758097085;
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  AllocateFlickerDetectorBuffers();
                }

                return v33;
              }

              a1->var9.mDataByteSize = v13 * v15;
            }

            v21 = malloc_type_calloc((v10 + 2), v15, 0x96C1FFDAuLL);
            a1->var13.mData = v21;
            if (v21)
            {
              a1->var13.mDataByteSize = (v10 + 2) * v15;
              v22 = malloc_type_calloc(1uLL, 0x14CuLL, 0x10000403F9E400DuLL);
              a1->var15 = v22;
              if (v22)
              {
                *(v22 + 2) = 0;
                *v22 = 5;
                var16 = a1->var16;
                if (var16 >= 4 && (fftsetup = vDSP_create_fftsetup(var16, 0), (a1->var17 = fftsetup) != 0))
                {
                  if (*a1->var0 == 1)
                  {
                    return 0;
                  }

                  v25 = malloc_type_calloc(1uLL, 0x340uLL, 0x1090040C959C1BCuLL);
                  a1->var26 = v25;
                  if (v25)
                  {
                    v26 = ((112 << v7) + 4096);
                    a1->var14.mDataByteSize = v26;
                    p_mDataByteSize = &a1->var14.mDataByteSize;
                    v28 = malloc_type_calloc(1uLL, v26, 0x5AF6BBF8uLL);
                    a1->var14.mData = v28;
                    if (v28)
                    {
                      v29 = *a1->var0;
                      if (v29 > 5)
                      {
                        if ((v29 - 9) < 2 || v29 == 6)
                        {
                          fun_get_calibration_param(a1->var32, a1->var33, a1->var26 + 716);
                          v31 = 0.0;
                          if (*a1->var0 == 10)
                          {
                            var26 = a1->var26;
                            v46.i32[0] = *(var26 + 186);
                            if (v46.f32[0] < -7130316.8)
                            {
                              v46.i32[1] = *(var26 + 187);
                              v46.i64[1] = *(var26 + 94);
                              v47 = vdupq_n_s32(0x3F333333u);
                              *(var26 + 744) = vmulq_f32(v46, v47);
                              *(var26 + 760) = vmulq_f32(*(var26 + 760), v47);
                              *(var26 + 97) = vmul_f32(*(var26 + 776), *v47.f32);
                              *(var26 + 716) = vdiv_f32(*(var26 + 716), *v47.f32);
                            }
                          }

                          goto LABEL_81;
                        }

                        if (v29 == 7)
                        {
                          v31 = -0.6268;
                          v30 = -0.6268;
                          goto LABEL_82;
                        }
                      }

                      else
                      {
                        switch(v29)
                        {
                          case 3:
                            v30 = -0.389;
                            v31 = -0.3895;
                            goto LABEL_82;
                          case 4:
                            v30 = -19.021;
                            v31 = -18.175;
                            goto LABEL_82;
                          case 5:
                            v30 = -24.91;
                            v31 = -25.06;
LABEL_82:
                            flicker_detection_init(a1->var26, v3, (v3 / v5), v10, v10 >> 1, a1->var14.mData, v31, v30);
                            return 0;
                        }
                      }

                      v31 = 0.0;
LABEL_81:
                      v30 = 0.0;
                      goto LABEL_82;
                    }

                    v44 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                    {
                      v44 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v44;
                    }

                    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
                      AllocateFlickerDetectorBuffers();
                    }

                    v33 = 3758097085;
                    *p_mDataByteSize = 0;
                  }

                  else
                  {
                    v43 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                    {
                      v43 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v43;
                    }

                    v33 = 3758097085;
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      AllocateFlickerDetectorBuffers();
                    }
                  }
                }

                else
                {
                  v40 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                  {
                    v40 = os_log_create("com.apple.isp", "general");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v40;
                  }

                  v33 = 3758097086;
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    AllocateFlickerDetectorBuffers();
                  }
                }
              }

              else
              {
                v41 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                {
                  v41 = os_log_create("com.apple.isp", "general");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v41;
                }

                v33 = 3758097085;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  AllocateFlickerDetectorBuffers();
                }
              }
            }

            else
            {
              v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v38 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v38;
              }

              v33 = 3758097085;
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                AllocateFlickerDetectorBuffers();
              }
            }
          }

          else
          {
            v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v37 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v37;
            }

            v33 = 3758097085;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              AllocateFlickerDetectorBuffers();
            }
          }
        }

        else
        {
          v36 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v36 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v36;
          }

          v33 = 3758097085;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            AllocateFlickerDetectorBuffers();
          }
        }
      }

      else
      {
        v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v35 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v35;
        }

        v33 = 3758097085;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          AllocateFlickerDetectorBuffers();
        }
      }
    }

    else
    {
      v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v34 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v34;
      }

      v33 = 3758097085;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        AllocateFlickerDetectorBuffers();
      }
    }
  }

  else
  {
    v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v32 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v32;
    }

    v33 = 3758097085;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      AllocateFlickerDetectorBuffers();
    }
  }

  return v33;
}

uint64_t H16ISP::H16ISPServicesRemote::sendMessageAsync(uint64_t a1, void *a2, int a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___ZN6H16ISP20H16ISPServicesRemote16sendMessageAsyncEPv28H16ISPServicesRemoteProperty_block_invoke;
  v6[3] = &__block_descriptor_tmp_6;
  v6[4] = a1;
  v7 = a3;
  xpc_connection_send_message_with_reply(v3, a2, v4, v6);
  return 0;
}

void ___ZN6H16ISP20H16ISPServicesRemote7ConnectEPFv25H16ISPServicesRemoteEventPvES2_b_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  if (MEMORY[0x22AA57270](a2) == MEMORY[0x277D86480])
  {
    v5 = MEMORY[0x22AA57160](a2);
    if (v5)
    {
      v6 = v5;
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "services");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ___ZN6H16ISP20H16ISPServicesRemote7ConnectEPFv25H16ISPServicesRemoteEventPvES2_b_block_invoke_cold_1();
      }

      free(v6);
    }

    if (a2 == MEMORY[0x277D863F8])
    {
      v8 = a1[5];
      if (v8)
      {
        v8(1, a1[6]);
      }
    }

    else
    {
      xpc_connection_cancel(*v4);
    }
  }
}

uint64_t H16ISP::H16ISPServicesRemote::VerifyConnection(H16ISP::H16ISPServicesRemote *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v4[1665] = *MEMORY[0x277D85DE8];
  bzero(v4, 0x3408uLL);
  LODWORD(v4[0]) = 1;
  return H16ISP::H16ISPServicesRemote::SetProperty(v2, v4);
}

uint64_t H16ISP::H16ISPServicesRemote::Disconnect(xpc_connection_t *this)
{
  v2 = *this;
  if (v2)
  {
    xpc_connection_set_event_handler(v2, &__block_literal_global_4);
    xpc_connection_cancel(*this);
    xpc_release(*this);
    *this = 0;
  }

  return 0;
}

void H16ISP::H16ISPServicesRemote::~H16ISPServicesRemote(H16ISP::H16ISPServicesRemote *this)
{
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "Destroying remote service object\n", v3, 2u);
  }

  H16ISP::H16ISPServicesRemote::Disconnect(this);
  dispatch_sync(*(this + 1), &__block_literal_global_28);
  dispatch_release(*(this + 1));
}

uint64_t H16ISP::H16ISPServicesRemote::RunRgbIr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, __int16 a10, unsigned __int8 a11, __int16 a12, __int16 a13, __int16 a14, unsigned __int8 a15, unsigned __int8 a16, int a17)
{
  v17 = MEMORY[0x28223BE20](a1, a2);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v17;
  v54 = *MEMORY[0x277D85DE8];
  LODWORD(v39) = 18;
  XPCObject = 0;
  v48 = a10;
  v46 = v29;
  v47 = a9;
  v49 = a11;
  v50 = a13;
  v51 = a15;
  v52 = a16;
  v53 = a17;
  IOSurface = CVPixelBufferGetIOSurface(v30);
  object = IOSurfaceCreateXPCObject(IOSurface);
  if (v27)
  {
    v32 = CVPixelBufferGetIOSurface(v27);
    XPCObject = IOSurfaceCreateXPCObject(v32);
  }

  v33 = CVPixelBufferGetIOSurface(v25);
  v42 = IOSurfaceCreateXPCObject(v33);
  XpcFromType = H16ISP::createXpcFromType(v23, v34);
  v44 = H16ISP::createXpcFromType(v21, v35);
  v45 = H16ISP::createXpcFromType(v19, v36);
  v37 = H16ISP::H16ISPServicesRemote::SetProperty(v28, &v39);
  xpc_release(object);
  if (v27)
  {
    xpc_release(XPCObject);
  }

  xpc_release(v42);
  xpc_release(XpcFromType);
  xpc_release(v44);
  xpc_release(v45);
  return v37;
}

uint64_t H16ISP::H16ISPServicesRemote::GetRgbIrReport(xpc_connection_t *this, __CFDictionary **a2)
{
  LODWORD(v6) = 19;
  Property = H16ISP::H16ISPServicesRemote::GetProperty(this, &v6);
  if (!Property)
  {
    if (object)
    {
      *a2 = H16ISP::createTypeFromXpc(object, v3);
      xpc_release(object);
    }

    else
    {
      *a2 = 0;
    }
  }

  return Property;
}

uint64_t H16ISP::H16ISPServicesRemote::UpdateRgbIrPceCalib(xpc_connection_t *a1, UInt8 *a2)
{
  LODWORD(v12[0]) = 20;
  v4 = CFDataCreate(*MEMORY[0x277CBECE8], a2, 13312);
  XpcFromType = H16ISP::createXpcFromType(v4, v5);
  v12[1] = XpcFromType;
  CFRelease(v4);
  Property = H16ISP::H16ISPServicesRemote::GetProperty(a1, v12);
  if (!Property && object)
  {
    TypeFromXpc = H16ISP::createTypeFromXpc(object, v7);
    xpc_release(object);
    BytePtr = CFDataGetBytePtr(TypeFromXpc);
    memcpy(a2, BytePtr, 0x3400uLL);
    CFRelease(TypeFromXpc);
  }

  xpc_release(XpcFromType);
  return Property;
}

uint64_t H16ISP::H16ISPServicesRemote::RunRgbj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, __int16 a11, int a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *&v56[16] = a15;
  *&v56[8] = a14;
  *v56 = a13;
  v16 = MEMORY[0x28223BE20](a1, a2);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v16;
  v55 = *MEMORY[0x277D85DE8];
  LODWORD(v39) = 8;
  v45 = v26;
  v48 = a11;
  v49 = a12;
  v50 = a9;
  v46 = a10;
  v47 = v27;
  v52 = *&v56[4];
  v53 = *&v56[12];
  v51 = v56[0];
  v54 = a16;
  XpcFromType = H16ISP::createXpcFromType(v28, v23);
  v42 = XpcFromType;
  v31 = H16ISP::createXpcFromType(v20, v30);
  v43 = v31;
  v33 = H16ISP::createXpcFromType(v18, v32);
  v44 = v33;
  v35 = H16ISP::createXpcFromType(v22, v34);
  v41 = v35;
  IOSurface = CVPixelBufferGetIOSurface(v24);
  object = IOSurfaceCreateXPCObject(IOSurface);
  v37 = H16ISP::H16ISPServicesRemote::SetProperty(v25, &v39);
  xpc_release(XpcFromType);
  xpc_release(v31);
  xpc_release(v33);
  xpc_release(object);
  xpc_release(v35);
  return v37;
}

uint64_t H16ISP::H16ISPServicesRemote::SaveJasperCalibData(H16ISP::H16ISPServicesRemote *this, const __CFData *a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v7[1665] = *MEMORY[0x277D85DE8];
  LODWORD(v7[0]) = 7;
  XpcFromType = H16ISP::createXpcFromType(v3, v3);
  v7[1] = XpcFromType;
  v5 = H16ISP::H16ISPServicesRemote::SetProperty(v2, v7);
  xpc_release(XpcFromType);
  return v5;
}

uint64_t H16ISP::H16ISPServicesRemote::ReadDictionary(xpc_connection_t *this, const __CFString *a2, const __CFDictionary **a3)
{
  LODWORD(v9[0]) = 9;
  XpcFromType = H16ISP::createXpcFromType(a2, a2);
  v9[1] = XpcFromType;
  Property = H16ISP::H16ISPServicesRemote::GetProperty(this, v9);
  if (!Property)
  {
    *a3 = H16ISP::createTypeFromXpc(object, v6);
    if (object)
    {
      xpc_release(object);
    }
  }

  xpc_release(XpcFromType);
  return Property;
}

uint64_t H16ISP::H16ISPServicesRemote::WriteDictionary(H16ISP::H16ISPServicesRemote *this, const __CFString *a2, const __CFDictionary *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2);
  v5 = v4;
  v6 = v3;
  v13[1665] = *MEMORY[0x277D85DE8];
  LODWORD(v13[0]) = 9;
  XpcFromType = H16ISP::createXpcFromType(v7, v7);
  v10 = H16ISP::createXpcFromType(v5, v9);
  v13[1] = XpcFromType;
  v13[2] = v10;
  v11 = H16ISP::H16ISPServicesRemote::SetProperty(v6, v13);
  xpc_release(v10);
  xpc_release(XpcFromType);
  return v11;
}

uint64_t H16ISP::H16ISPServicesRemote::WriteData(H16ISP::H16ISPServicesRemote *this, const __CFString *a2, const __CFData *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2);
  v5 = v4;
  v6 = v3;
  v13[1665] = *MEMORY[0x277D85DE8];
  LODWORD(v13[0]) = 10;
  XpcFromType = H16ISP::createXpcFromType(v7, v7);
  v10 = H16ISP::createXpcFromType(v5, v9);
  v13[1] = XpcFromType;
  v13[2] = v10;
  v11 = H16ISP::H16ISPServicesRemote::SetProperty(v6, v13);
  xpc_release(v10);
  xpc_release(XpcFromType);
  return v11;
}

uint64_t H16ISP::H16ISPServicesRemote::UpdateFlickerIRSignalRateHint(H16ISP::H16ISPServicesRemote *this, float a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](this, a3);
  v8 = *MEMORY[0x277D85DE8];
  LODWORD(v6) = 14;
  v7 = v4;
  return H16ISP::H16ISPServicesRemote::SetProperty(v3, &v6);
}

uint64_t GMC_Undistort(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 528))
  {
    Matrix<double>::Matrix(&v65, 2, *(a1 + 20));
    v65 = &unk_283813CF8;
    Matrix<double>::Row(a2, 0, &v60);
    v70 = 1;
    v71 = v67;
    LODWORD(v58) = 1;
    HIDWORD(v58) = v67;
    v59 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v56 = &unk_283812C88;
    __dst = v66;
    Matrix<double>::~Matrix(&v68);
    Matrix<double>::Resize(&v56, v62, v63);
    memcpy(__dst, __src, 8 * v58 * HIDWORD(v58));
    Matrix<double>::~Matrix(&v56);
    Matrix<double>::~Matrix(&v60);
    v10 = *(a3 + 24);
    v70 = 1;
    v71 = v67;
    v62 = 1;
    v63 = v67;
    v64 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v60 = &unk_283812C88;
    __src = v66;
    Matrix<double>::~Matrix(&v68);
    v68 = v10;
    vDSPVsmul<double>(__src, 1, &v68, __src, 1, v63 * v62);
    Matrix<double>::~Matrix(&v60);
    v11 = *a3;
    v70 = 1;
    v71 = v67;
    v62 = 1;
    v63 = v67;
    v64 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v60 = &unk_283812C88;
    __src = v66;
    Matrix<double>::~Matrix(&v68);
    v68 = -v11;
    vDSPVsadd<double>(__src, 1, &v68, __src, 1, v63 * v62);
    Matrix<double>::~Matrix(&v60);
    Matrix<double>::Row(a2, 1, &v60);
    v70 = 1;
    v71 = v67;
    LODWORD(v58) = 1;
    HIDWORD(v58) = v67;
    v59 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v56 = &unk_283812C88;
    __dst = &v66[8 * v67];
    Matrix<double>::~Matrix(&v68);
    Matrix<double>::Resize(&v56, v62, v63);
    memcpy(__dst, __src, 8 * v58 * HIDWORD(v58));
    Matrix<double>::~Matrix(&v56);
    Matrix<double>::~Matrix(&v60);
    v12 = *(a3 + 24);
    v70 = 1;
    v71 = v67;
    v62 = 1;
    v63 = v67;
    v64 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v60 = &unk_283812C88;
    __src = &v66[8 * v67];
    Matrix<double>::~Matrix(&v68);
    v68 = v12;
    vDSPVsmul<double>(__src, 1, &v68, __src, 1, v63 * v62);
    Matrix<double>::~Matrix(&v60);
    v13 = *(a3 + 8);
    v70 = 1;
    v71 = v67;
    v62 = 1;
    v63 = v67;
    v64 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v60 = &unk_283812C88;
    __src = &v66[8 * v67];
    Matrix<double>::~Matrix(&v68);
    v68 = -v13;
    vDSPVsadd<double>(__src, 1, &v68, __src, 1, v63 * v62);
    Matrix<double>::~Matrix(&v60);
    v14 = *(a5 + 8);
    v15 = *(a5 + 20);
    v70 = 2;
    v71 = v15;
    v62 = 2;
    v63 = v15;
    v64 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v60 = &unk_283813CF8;
    __src = v14;
    Matrix<double>::~Matrix(&v68);
    v58 = 1;
    v59 = 0;
    v56 = &unk_283812C88;
    __dst = 0;
    v54 = 1;
    v55 = 0;
    v52 = &unk_283812C88;
    v53 = 0;
    if (*(a3 + 529))
    {
      Matrix<double>::Row(a3 + 128, 0, &v68);
      Matrix<double>::Resize(&v56, v70, v71);
      memcpy(__dst, v69, 8 * v58 * HIDWORD(v58));
      Matrix<double>::~Matrix(&v68);
      Matrix<double>::Row(a3 + 128, 1, &v68);
    }

    else
    {
      Matrix<double>::Row(a3 + 744, 0, &v68);
      Matrix<double>::Resize(&v56, v70, v71);
      memcpy(__dst, v69, 8 * v58 * HIDWORD(v58));
      Matrix<double>::~Matrix(&v68);
      Matrix<double>::Row(a3 + 744, 1, &v68);
    }

    Matrix<double>::Resize(&v52, v70, v71);
    memcpy(v53, v69, 8 * v54 * HIDWORD(v54));
    Matrix<double>::~Matrix(&v68);
    DistortRadialLiteInternal<double>(&v65, v53, __dst, *(a3 + 148), &v60, 0, 1, 0, 0.0, 0);
    v27 = *a3;
    Matrix<double>::Row(a5, 0, &v68);
    v47 = v27;
    vDSPVsadd<double>(v69, 1, &v47, v69, 1, v71 * v70);
    Matrix<double>::~Matrix(&v68);
    v28 = *(a3 + 24);
    Matrix<double>::Row(a5, 0, &v68);
    v47 = v28;
    vDSPVsdiv<double>(v69, 1, &v47, v69, 1, v71 * v70);
    Matrix<double>::~Matrix(&v68);
    v29 = *(a3 + 8);
    Matrix<double>::Row(a5, 1, &v68);
    v47 = v29;
    vDSPVsadd<double>(v69, 1, &v47, v69, 1, v71 * v70);
    Matrix<double>::~Matrix(&v68);
    v30 = *(a3 + 24);
    Matrix<double>::Row(a5, 1, &v68);
    v47 = v30;
    vDSPVsdiv<double>(v69, 1, &v47, v69, 1, v71 * v70);
    Matrix<double>::~Matrix(&v68);
    Matrix<double>::Row(a1, 0, &v47);
    v70 = 1;
    v71 = v67;
    v44 = 1;
    v45 = v67;
    v46 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v42 = &unk_283812C88;
    v43 = v66;
    Matrix<double>::~Matrix(&v68);
    Matrix<double>::Resize(&v42, v49, v50);
    memcpy(v43, v48, 8 * v44 * v45);
    Matrix<double>::~Matrix(&v42);
    Matrix<double>::~Matrix(&v47);
    v31 = *(a3 + 80);
    v70 = 1;
    v71 = v67;
    v49 = 1;
    v50 = v67;
    v51 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v47 = COERCE_DOUBLE(&unk_283812C88);
    v48 = v66;
    Matrix<double>::~Matrix(&v68);
    v68 = v31;
    vDSPVsmul<double>(v48, 1, &v68, v48, 1, v50 * v49);
    Matrix<double>::~Matrix(&v47);
    v32 = *(a3 + 56);
    v70 = 1;
    v71 = v67;
    v49 = 1;
    v50 = v67;
    v51 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v47 = COERCE_DOUBLE(&unk_283812C88);
    v48 = v66;
    Matrix<double>::~Matrix(&v68);
    v68 = -v32;
    vDSPVsadd<double>(v48, 1, &v68, v48, 1, v50 * v49);
    Matrix<double>::~Matrix(&v47);
    Matrix<double>::Row(a1, 1, &v47);
    v70 = 1;
    v71 = v67;
    v44 = 1;
    v45 = v67;
    v46 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v42 = &unk_283812C88;
    v43 = &v66[8 * v67];
    Matrix<double>::~Matrix(&v68);
    Matrix<double>::Resize(&v42, v49, v50);
    memcpy(v43, v48, 8 * v44 * v45);
    Matrix<double>::~Matrix(&v42);
    Matrix<double>::~Matrix(&v47);
    v33 = *(a3 + 80);
    v70 = 1;
    v71 = v67;
    v49 = 1;
    v50 = v67;
    v51 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v47 = COERCE_DOUBLE(&unk_283812C88);
    v48 = &v66[8 * v67];
    Matrix<double>::~Matrix(&v68);
    v68 = v33;
    vDSPVsmul<double>(v48, 1, &v68, v48, 1, v50 * v49);
    Matrix<double>::~Matrix(&v47);
    v34 = *(a3 + 64);
    v70 = 1;
    v71 = v67;
    v49 = 1;
    v50 = v67;
    v51 = 0;
    v68 = COERCE_DOUBLE(&unk_283812C58);
    v69 = 0;
    v72 = 0;
    v47 = COERCE_DOUBLE(&unk_283812C88);
    v48 = &v66[8 * v67];
    Matrix<double>::~Matrix(&v68);
    v68 = -v34;
    vDSPVsadd<double>(v48, 1, &v68, v48, 1, v50 * v49);
    Matrix<double>::~Matrix(&v47);
    v35 = *(a4 + 8);
    v36 = *(a4 + 20);
    v49 = 2;
    v50 = v36;
    v70 = 2;
    v71 = v36;
    v72 = 0;
    v47 = COERCE_DOUBLE(&unk_283812C58);
    v48 = 0;
    v51 = 0;
    v68 = COERCE_DOUBLE(&unk_283813CF8);
    v69 = v35;
    Matrix<double>::~Matrix(&v47);
    if ((*(a3 + 529) & 1) == 0)
    {
      Matrix<double>::Row(a3 + 128, 0, &v47);
      Matrix<double>::Resize(&v56, v49, v50);
      memcpy(__dst, v48, 8 * v58 * HIDWORD(v58));
      Matrix<double>::~Matrix(&v47);
      Matrix<double>::Row(a3 + 128, 1, &v47);
      Matrix<double>::Resize(&v52, v49, v50);
      memcpy(v53, v48, 8 * v54 * HIDWORD(v54));
      Matrix<double>::~Matrix(&v47);
    }

    DistortRadialLiteInternal<double>(&v65, v53, __dst, *(a3 + 148), &v68, 0, 1, 0, 0.0, 0);
    v37 = *(a3 + 56);
    Matrix<double>::Row(a4, 0, &v47);
    v42 = v37;
    vDSPVsadd<double>(v48, 1, &v42, v48, 1, v50 * v49);
    Matrix<double>::~Matrix(&v47);
    v38 = *(a3 + 80);
    Matrix<double>::Row(a4, 0, &v47);
    v42 = v38;
    vDSPVsdiv<double>(v48, 1, &v42, v48, 1, v50 * v49);
    Matrix<double>::~Matrix(&v47);
    v39 = *(a3 + 64);
    Matrix<double>::Row(a4, 1, &v47);
    v42 = v39;
    vDSPVsadd<double>(v48, 1, &v42, v48, 1, v50 * v49);
    Matrix<double>::~Matrix(&v47);
    v40 = *(a3 + 80);
    Matrix<double>::Row(a4, 1, &v47);
    v42 = v40;
    vDSPVsdiv<double>(v48, 1, &v42, v48, 1, v50 * v49);
    Matrix<double>::~Matrix(&v47);
    Matrix<double>::~Matrix(&v68);
    Matrix<double>::~Matrix(&v52);
    Matrix<double>::~Matrix(&v56);
    Matrix<double>::~Matrix(&v60);
    Matrix<double>::~Matrix(&v65);
  }

  else
  {
    v16 = *(a1 + 20);
    if (v16)
    {
      v17 = *(a1 + 16);
      if (!v17)
      {
        GMC_Homography();
      }

      v18 = *(a4 + 16);
      if (v18)
      {
        v19 = 0;
        v20 = 0;
        v21 = 8 * *(a4 + 20);
        v22 = *(a2 + 16);
        v23 = *(a2 + 20);
        v24 = 8 * v16;
        while (v21 + v19)
        {
          *(*(a4 + 8) + 8 * v20) = *(*(a1 + 8) + 8 * v20);
          if (v17 == 1)
          {
            GMC_Homography();
          }

          if (v18 == 1)
          {
            GMC_Homography();
          }

          *(*(a4 + 8) + v21 + 8 * v20) = *(*(a1 + 8) + v24 + 8 * v20);
          if (!v22 || v20 >= v23)
          {
            GMC_Homography();
          }

          v25 = *(a5 + 16);
          if (!v25 || (v26 = *(a5 + 20), v20 >= v26))
          {
            GMC_Homography();
          }

          *(*(a5 + 8) + 8 * v20) = *(*(a2 + 8) + 8 * v20);
          if (v22 == 1)
          {
            GMC_Homography();
          }

          if (v25 == 1)
          {
            GMC_Homography();
          }

          *(*(a5 + 8) + 8 * v26 + 8 * v20) = *(*(a2 + 8) + 8 * v23 + 8 * v20);
          ++v20;
          v19 -= 8;
          if (!(v24 + v19))
          {
            return 0;
          }
        }
      }

      GMC_Homography();
    }
  }

  return 0;
}

void sub_2248E0D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  Matrix<double>::~Matrix(&a15);
  Matrix<double>::~Matrix(v27 - 128);
  Matrix<double>::~Matrix(&a19);
  Matrix<double>::~Matrix(&a23);
  Matrix<double>::~Matrix(&a27);
  Matrix<double>::~Matrix(v27 - 160);
  _Unwind_Resume(a1);
}

uint64_t Matrix<double>::Row@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 20);
  v4 = *(a1 + 8) + 8 * (v3 * a2);
  v6[0] = &unk_283812C58;
  v6[1] = v4;
  v7 = 1;
  v8 = v3;
  v9 = 0;
  *(a3 + 16) = 1;
  *(a3 + 20) = v3;
  *(a3 + 24) = 0;
  *a3 = &unk_283812C88;
  *(a3 + 8) = v4;
  return Matrix<double>::~Matrix(v6);
}

{
  v3 = *(a1 + 20);
  v4 = *(a1 + 8) + 8 * (v3 * a2);
  v7 = 1;
  v8 = v3;
  *(a3 + 16) = 1;
  *(a3 + 20) = v3;
  *(a3 + 24) = 0;
  v6[0] = &unk_283812C58;
  v6[1] = 0;
  v9 = 0;
  *a3 = &unk_283812C88;
  *(a3 + 8) = v4;
  return Matrix<double>::~Matrix(v6);
}

void MatrixNxPts<2u,double>::~MatrixNxPts(uint64_t a1)
{
  Matrix<double>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t DistortRadialLiteInternal<double>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6, int a7, int a8, double a9, char a10)
{
  if (*(a1 + 16) != 2)
  {
    DistortRadialLiteInternal<double>();
  }

  if (a7)
  {
    v15 = a2;
  }

  else
  {
    v15 = a3;
  }

  if (a7)
  {
    v16 = a3;
  }

  else
  {
    v16 = a2;
  }

  v63 = 1;
  v64 = a4;
  v65 = 0;
  v62[0] = &unk_283812C88;
  v62[1] = v15;
  v59 = 1;
  v60 = a4;
  v61 = 0;
  v58[0] = &unk_283812C88;
  v58[1] = v16;
  Matrix<double>::Matrix(&v54, 1, *(a1 + 20));
  v54 = &unk_283812C88;
  Matrix<double>::Matrix(v53, 1, *(a1 + 20));
  v53[0] = &unk_283812C88;
  v17 = v57;
  Matrix<double>::DotMult<double>(a1, a1, v49);
  if (a6)
  {
    if (v17 >= 1)
    {
      v18 = v51;
      if (v51)
      {
        v19 = 0;
        v20 = v52;
        v21 = v56;
        v22 = 8 * v52;
        while (v20 && v18 != 1 && v21 && v19 < v57)
        {
          v23 = sqrt(*(v50 + 8 * v19) + *(v50 + v22));
          if (v23 >= a9)
          {
            v23 = a9;
          }

          *(v55 + 8 * v19++) = v23;
          --v20;
          v22 += 8;
          if (v17 == v19)
          {
            goto LABEL_28;
          }
        }
      }

      goto LABEL_50;
    }
  }

  else if (v17 >= 1)
  {
    v24 = v51;
    if (v51)
    {
      v25 = 0;
      v26 = v52;
      v27 = v56;
      v28 = 8 * v52;
      while (v26 && v24 != 1 && v27 && v25 < v57)
      {
        *(v55 + 8 * v25) = sqrt(*(v50 + 8 * v25) + *(v50 + v28));
        ++v25;
        --v26;
        v28 += 8;
        if (v17 == v25)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_50:
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

LABEL_28:
  if (a8)
  {
    Interp1SortedWithExtrap<double,LinearInterpolator<double>>(v62, v58, &v54, v53);
  }

  else
  {
    Algo::Interp1WithExtrap<double>(v62, v58, &v54, 1, v53, a10);
  }

  MatrixNxPts<1u,double>::DotDiv(v53, &v54, &v41);
  v45 = &unk_283812C58;
  v46 = v42;
  v47 = v43;
  v48 = v44;
  v42 = 0;
  v44 = 0;
  Matrix<double>::~Matrix(&v41);
  v29 = v57;
  if (v57 >= 1)
  {
    if (v56)
    {
      v30 = 0;
      v31 = v47;
      while (1)
      {
        if (*(v55 + 8 * v30) == 0.0)
        {
          if (!v31 || v30 >= HIDWORD(v47))
          {
            break;
          }

          *(v46 + 8 * v30) = 0x3FF0000000000000;
        }

        if (v29 == ++v30)
        {
          v32 = *(a1 + 16);
          if (v32)
          {
            v33 = 0;
            v34 = *(a1 + 20);
            v35 = v47;
            v36 = 119;
            while (1)
            {
              if (v34 == v33)
              {
                goto LABEL_53;
              }

              if (!v35 || v33 >= HIDWORD(v47))
              {
                goto LABEL_54;
              }

              v37 = *(a5 + 16);
              if (!v37)
              {
                break;
              }

              v38 = *(a5 + 20);
              if (v33 >= v38)
              {
                break;
              }

              *(*(a5 + 8) + 8 * v33) = *(*(a1 + 8) + 8 * v33) * *(v46 + 8 * v33);
              if (v32 == 1)
              {
                v40 = 125;
                goto LABEL_57;
              }

              if (v37 == 1)
              {
                v40 = 119;
LABEL_57:
                __assert_rtn("operator()", "Matrix.hpp", v40, "row < m_rows && col < m_cols");
              }

              *(*(a5 + 8) + 8 * v38 + 8 * v33) = *(v46 + 8 * v33) * *(*(a1 + 8) + 8 * v34 + 8 * v33);
              if (v29 == ++v33)
              {
                goto LABEL_49;
              }
            }

            v36 = 119;
          }

          else
          {
LABEL_53:
            v36 = 125;
          }

LABEL_54:
          __assert_rtn("operator()", "Matrix.hpp", v36, "row < m_rows && col < m_cols");
        }
      }
    }

    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

LABEL_49:
  Matrix<double>::~Matrix(&v45);
  Matrix<double>::~Matrix(v49);
  Matrix<double>::~Matrix(v53);
  Matrix<double>::~Matrix(&v54);
  Matrix<double>::~Matrix(v58);
  Matrix<double>::~Matrix(v62);
  return 0;
}

void sub_2248E1414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(va1);
  Matrix<double>::~Matrix(va2);
  Matrix<double>::~Matrix(v9 - 128);
  Matrix<double>::~Matrix(v9 - 96);
  _Unwind_Resume(a1);
}

void Matrix<double>::DotMult<double>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 20);
  if (v4 != *(a1 + 20) || (v7 = *(a2 + 16), v7 != *(a1 + 16)))
  {
    Matrix<double>::DotMult<double>();
  }

  Matrix<double>::Matrix(a3, v7, v4);
  vDSPVmul<double,double>(*(a1 + 8), 1, *(a2 + 8), 1, *(a3 + 8), 1, *(a1 + 20) * *(a1 + 16));
}

uint64_t Algo::Interp1WithExtrap<double>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      if (*(a3 + 20) <= 1u)
      {
        Algo::Interp1WithExtrap<double>();
      }

      return Interp1WithExtrap<double,CubicInterpolator<double>>(a1, a2, a3, a5, a6);
    }

    else
    {
      if (a4 != 1)
      {
        Algo::Interp1WithExtrap<double>();
      }

      if (!*(a3 + 20))
      {
        Algo::Interp1WithExtrap<double>();
      }

      return Interp1WithExtrap<double,LinearInterpolator<double>>(a1, a2, a3, a5, a6);
    }
  }

  else
  {
    if (*(a3 + 20) <= 1u)
    {
      Algo::Interp1WithExtrap<double>();
    }

    return Interp1WithExtrap<double,NearestInterpolator<double>>(a1, a2, a3, a5, a6);
  }
}