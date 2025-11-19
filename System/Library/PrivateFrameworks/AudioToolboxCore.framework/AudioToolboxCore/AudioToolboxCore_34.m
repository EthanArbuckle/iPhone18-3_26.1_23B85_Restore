void sub_18F83BC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, atomic_uint *a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int16 buf)
{
  if (a2)
  {
    if (a24 == 1 && a23)
    {
      atomic_fetch_add(a23, 0xFFFFFFFF);
    }

    AUOOPRenderingServer::renderThread(void)::WorkgroupJoiner::~WorkgroupJoiner(&buf);
    __cxa_begin_catch(exception_object);
    v32 = *kInterAppAudioScope;
    v33 = applesauce::dispatch::v1::queue::operator*(*kInterAppAudioScope);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      buf = 0;
      _os_log_fault_impl(&dword_18F5DF000, v32, OS_LOG_TYPE_FAULT, "Render thread exiting with uncaught exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x18F83BBFCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUOOPRenderingServer::prepareRealtimeMessages(uint64_t this, int a2)
{
  v2 = *(this + 144);
  v3 = *(v2 + 4);
  if (v3)
  {
    v5 = this;
    v6 = v2 + 8;
    v7 = v2 + 8 + v3;
    v9 = CADeprecated::TSingleton<AURenderEventAllocator>::instance();
    v10 = (v5 + 208);
    if (*(v5 + 216))
    {
      v11 = *(v5 + 216);
    }

    else
    {
      v11 = (v5 + 208);
    }

    while (a2)
    {
      v12 = 0;
      v13 = *(v6 + 16);
      if (v13 > 8)
      {
        if (v13 == 9)
        {
          v12 = AURenderEventAllocator::allocMIDISysEx(v9, *(v6 + 18));
          v14 = *(v6 + 18) + 21;
LABEL_16:
          memcpy(v12, v6, v14);
          v15 = 0;
LABEL_17:
          v12[17] = v15;
          goto LABEL_18;
        }

        if (v13 == 10)
        {
          v12 = XAtomicPoolAllocator::alloc((v9 + 224));
          v12[17] = 0;
          v14 = MIDI::EventList::size((v6 + 20)) + 20;
          goto LABEL_16;
        }
      }

      else
      {
        if (v13 - 1 < 2)
        {
          v12 = XAtomicPoolAllocator::alloc(v9);
          v12[17] = 0;
          v14 = 48;
          goto LABEL_16;
        }

        if (v13 == 8)
        {
          v12 = XAtomicPoolAllocator::alloc((v9 + 112));
          v12[17] = 0;
          v14 = 24;
          goto LABEL_16;
        }
      }

LABEL_18:
      if (!*v10)
      {
        *v10 = v12;
      }

      *v11 = v12;
      *v12 = 0;
      this = AURenderEventAllocator::eventSize(v6, v8);
      v6 += this;
      v11 = v12;
      if (v6 >= v7)
      {
        *(v5 + 216) = v12;
        return this;
      }
    }

    v15 = 1;
    v12 = v6;
    goto LABEL_17;
  }

  return this;
}

_BYTE *AUOOPRenderingServer::renderThread(void)::WorkgroupJoiner::~WorkgroupJoiner(_BYTE *a1)
{
  caulk::mach::os_workgroup_managed::~os_workgroup_managed((a1 + 80));
  if (a1[72] == 1)
  {
    audioipc::os_workgroup_joiner::~os_workgroup_joiner(a1);
  }

  return a1;
}

uint64_t ___ZN20AUOOPRenderingServer8AURenderER24AUOOPRenderingServerUserjP13AURenderEvent_block_invoke(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int *a6)
{
  v11 = *(a1 + 32);
  v12 = *(v11 + 144);
  v13 = v12 + 4096;
  *(v12 + 4105) = 102;
  *(v12 + 4128) = a5;
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = *(a3 + 56) & 7;
  *(v12 + 4136) = *a3;
  *(v12 + 4144) = v14;
  *(v12 + 4152) = v15;
  *(v12 + 4160) = v16;
  *(v12 + 4132) = a4;
  can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::can_send(v11 + 64, v15);
  v18 = HIDWORD(can_send);
  if (can_send & 0x100000000) != 0 && (can_send)
  {
    can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait_with_timeout(v11 + 64, 100.0);
    v18 = HIDWORD(can_send);
  }

  if (!v18 || (can_send & 1) == 0 || *(v13 + 8) != 3)
  {
    return 4294956420;
  }

  *a2 = *(*(a1 + 40) + 4 * a5);
  v19 = audioipc::SharedAudioBuffers::mutableBufferList((v11 + 168), a5, a4);
  v20 = **v19;
  v23 = *a6;
  v22 = a6 + 2;
  v21 = v23;
  if (v20 >= v23)
  {
    v20 = v21;
  }

  memcpy(v22, *v19 + 2, 16 * v20);
  return 0;
}

uint64_t ___ZN20AUOOPRenderingServer9AUProcessER24AUOOPRenderingServerUserRbP13AURenderEventb_block_invoke(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, uint64_t a5, unsigned int *a6)
{
  v6 = *(a1 + 32);
  if (*(v6 + 16) <= a5)
  {
    return 4294956419;
  }

  *a2 = *(*(a1 + 40) + 4 * a5 + 148);
  v8 = audioipc::SharedAudioBuffers::mutableBufferList((v6 + 168), a5, a4);
  v9 = **v8;
  v12 = *a6;
  v11 = a6 + 2;
  v10 = v12;
  if (v9 >= v12)
  {
    v9 = v10;
  }

  memcpy(v11, *v8 + 2, 16 * v9);
  return 0;
}

void caulk::mach::error_category::message(caulk::mach::error_category *this@<X0>, mach_error_t a2@<W1>, std::string *a3@<X8>)
{
  v5 = (*(*this + 16))(this);
  std::string::basic_string[abi:ne200100]<0>(&v11, v5);
  v6 = std::string::append(&v11, ": ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = mach_error_string(a2);
  v9 = strlen(v8);
  v10 = std::string::append(&v12, v8, v9);
  *a3 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_18F83C1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void caulk::mach::error_category::~error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x193ADF220);
}

id applesauce::xpc::dict::object_proxy::operator*(uint64_t a1)
{
  v2 = **a1;
  v3 = applesauce::dispatch::v1::queue::operator*(v2);
  v4 = xpc_dictionary_get_value(v3, *(a1 + 8));

  return v4;
}

uint64_t ExtendedAudioBufferList_PrepareWithNumberOfBuffers(int *a1, unsigned int a2, int a3, unsigned int a4)
{
  if (a1[2] != 1094863915)
  {
    std::terminate();
  }

  if (a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  if (a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = 1;
  }

  if (v5 > *a1)
  {
    v13 = _os_log_pack_size();
    result = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v13 + 88, 16);
    if (!result)
    {
      return result;
    }

    v14 = result;
    v15 = _os_log_pack_fill();
    v16 = *a1;
    *v15 = 67109376;
    *(v15 + 4) = v5;
    *(v15 + 8) = 1024;
    *(v15 + 10) = v16;
    v17 = *(gCADefaultDeferredLog + 16);
    v18 = v14;
    goto LABEL_27;
  }

  v7 = a1[5];
  if (((v5 * a4) & 0xFFFFFFFF00000000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v5 * a4) | 0x100000000;
  }

  if (!HIDWORD(v8))
  {
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_25;
  }

  if (v7 < v8)
  {
LABEL_25:
    v19 = _os_log_pack_size();
    result = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v19 + 88, 16);
    if (!result)
    {
      return result;
    }

    v20 = result;
    v21 = _os_log_pack_fill();
    *v21 = 67109376;
    *(v21 + 4) = v8;
    *(v21 + 8) = 1024;
    *(v21 + 10) = v7;
    v17 = *(gCADefaultDeferredLog + 16);
    v18 = v20;
LABEL_27:
    caulk::concurrent::messenger::enqueue(v17, v18);
    return 0;
  }

  v9 = *(a1 + 4);
  a1[12] = v5;
  result = (a1 + 12);
  if (v5)
  {
    v11 = a1 + 16;
    v12 = v5;
    do
    {
      *v11 = v9;
      v9 += a4;
      *(v11 - 2) = v6;
      *(v11 - 1) = a4;
      v11 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {
    v5 = 0;
  }

  a1[4 * v5 + 14] = 1094863915;
  return result;
}

uint64_t ExtendedAudioBufferList_GetMetadataFrame(uint64_t a1)
{
  if (*(a1 + 8) != 1094863915)
  {
    std::terminate();
  }

  v1 = *(a1 + 12);
  if (v1)
  {
    return a1 + v1;
  }

  else
  {
    return 0;
  }
}

uint64_t AudioMetadataFrame_GetHeader(void *a1)
{
  if (a1[1] - *a1 <= 0x2BuLL)
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

void *AudioMetadataFrame_Clear(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8) - result;
  if (v3 >= 1)
  {
    bzero(result, v3);
    result = *a1;
  }

  *(a1 + 8) = result;
  return result;
}

char **AudioMetadataFrame_AppendEvent(uint64_t *a1, char *__src)
{
  if (!*a1 || (a1[1] - *a1) <= 0x2B)
  {
    memset(v5, 0, 44);
    BYTE8(v5[1]) = 1;
    *&v5[2] = 0x10000002CLL;
    AudioMetadataFrame::begin_new(a1, v5);
  }

  return AudioMetadataFrame::append(a1, __src);
}

uint64_t AudioBufferList_GetMetadataFrame(unsigned int *a1)
{
  if (a1[4 * *a1 + 2] != 1094863915)
  {
    return 0;
  }

  v1 = *(a1 - 9);
  if (v1)
  {
    return a1 + v1 - 48;
  }

  else
  {
    return 0;
  }
}

_DWORD *TranslateAudioStreamPacketDependenciesForward(_DWORD *result, unsigned int a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      *v3 = *v3 == 0;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

_DWORD *TranslateAudioStreamPacketDependenciesBackward(_DWORD *result, unsigned int a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      *v3 = *v3 == 0;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t MP4BoxParser_SampleToChunk::Init(MP4BoxParser **this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MP4BoxParser_Full::Initialize(this);
  if (!v2)
  {
    if (*(this + 5) == 1937011555)
    {
      v11 = 0;
      MP4BoxParser::GetDataSourceSize(this[1], &v11);
      if (v3)
      {
        v2 = v3;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v13 = "MP4_BoxParser_SampleToChunk.cpp";
          v14 = 1024;
          v15 = 109;
          v4 = MEMORY[0x1E69E9C10];
          v5 = "%25s:%-5d  unable to determine data source size";
LABEL_10:
          _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
        }
      }

      else
      {
        v6 = (*(*this + 3))(this);
        DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(this[1], v6, 4uLL, this + 60);
        if (DataSourceBytes)
        {
          v2 = DataSourceBytes;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v13 = "MP4_BoxParser_SampleToChunk.cpp";
            v14 = 1024;
            v15 = 112;
            v4 = MEMORY[0x1E69E9C10];
            v5 = "%25s:%-5d  entry count truncated";
            goto LABEL_10;
          }
        }

        else
        {
          *(this + 15) = bswap32(*(this + 15));
          v10 = (*(*this + 3))(this);
          if (12 * *(this + 15) + v10 + 4 <= v11)
          {
            v2 = 0;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v13 = "MP4_BoxParser_SampleToChunk.cpp";
              v14 = 1024;
              v15 = 115;
              _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  entries truncated", buf, 0x12u);
            }

            v2 = 0xFFFFFFFFLL;
          }
        }
      }
    }

    else
    {
      v2 = 4294967294;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

void MP4BoxParser_SampleToChunk::~MP4BoxParser_SampleToChunk(MP4BoxParser_SampleToChunk *this)
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

void MP4BoxParser_SampleToChunk::MP4BoxParser_SampleToChunk(MP4BoxParser_SampleToChunk *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *this = &unk_1F0336550;
  *(this + 15) = 0;
}

uint64_t MP4BoxParser_SampleToChunk::GetSampleCountForChunkIndex(MP4BoxParser **this, unsigned int a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v11[5] = *MEMORY[0x1E69E9840];
  if (*(this + 15))
  {
    v11[0] = 0;
    MP4BoxParser::GetDataSourceSize(this[1], v11);
    v7 = v6;
    if (!v6)
    {
      v8 = this[1];
      operator new();
    }
  }

  else
  {
    v7 = 0;
    *a4 = 0;
    *a5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_18F83CB20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MP4BoxParser_SampleToChunk::GetSampleCountForChunkIndex(unsigned int,unsigned int,unsigned int &,unsigned int &)::$_0,std::allocator<MP4BoxParser_SampleToChunk::GetSampleCountForChunkIndex(unsigned int,unsigned int,unsigned int &,unsigned int &)::$_0>,void ()(void const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  result = (*(*v4 + 24))(v4);
  v6 = v3 + result;
  if (v4[15] == 1)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v8 = v6 + 4;
    v9 = *(a1 + 20);
    v10 = *(a1 + 32);
    v11 = 12 * v9;
    v12 = v9 - 1;
    while (1)
    {
      v13 = (v4[15] - 1);
      if (++v12 >= v13)
      {
        break;
      }

      v14 = v11 + 12;
      v15 = v6 + v11;
      v16 = bswap32(*(v15 + 4)) - 1;
      v17 = bswap32(*(v15 + 16)) - 1;
      *v10 = v17;
      v18 = *(a1 + 16);
      v19 = v18 < v16 || v18 >= v17;
      v11 = v14;
      if (!v19)
      {
        v20 = v8 + v14 - 12;
        goto LABEL_11;
      }
    }

    v20 = v8 + 12 * v13;
LABEL_11:
    v7 = (v20 + 4);
  }

  **(a1 + 24) = *v7;
  **(a1 + 24) = bswap32(**(a1 + 24));
  return result;
}

__n128 std::__function::__func<MP4BoxParser_SampleToChunk::GetSampleCountForChunkIndex(unsigned int,unsigned int,unsigned int &,unsigned int &)::$_0,std::allocator<MP4BoxParser_SampleToChunk::GetSampleCountForChunkIndex(unsigned int,unsigned int,unsigned int &,unsigned int &)::$_0>,void ()(void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0336580;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t CAFAudioFile::GetRegionList(CAFAudioFile *this, unsigned int *a2, AudioFileRegionList *a3, int a4)
{
  *a2 = 0;
  v4 = *(this + 18);
  v5 = *(this + 19) - v4;
  if (!v5)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v12 = 1;
  while (1)
  {
    v13 = v4 + 24 * v10;
    if (*v13 == 1919248238)
    {
      break;
    }

    v10 = v12;
    if (v11 <= v12++)
    {
      return 0;
    }
  }

  v16 = *(v13 + 16);
  *(&v34.mChannel + 1) = *(v13 + 8) - 12;
  *&v34.mSMPTETime.mSubFrameSampleOffset = 0;
  CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v34.mSMPTETime.mSubFrameSampleOffset, *(&v34.mChannel + 1), 1);
  v17 = *&v34.mSMPTETime.mSubFrameSampleOffset;
  v15 = (*(**(this + 13) + 48))(*(this + 13), 0, v16 + 12, *(&v34.mChannel + 1), *&v34.mSMPTETime.mSubFrameSampleOffset, &v34.mChannel + 1);
  if (!v15)
  {
    CAFRegionChunk_BtoN(v17, *(&v34.mChannel + 1));
    mNumberRegions = v17->mNumberRegions;
    a3->mNumberRegions = mNumberRegions;
    a3->mSMPTE_TimeType = v17->mSMPTE_TimeType;
    memset(&v34, 0, 24);
    if (a4)
    {
      v20 = CAFAudioFile::GetStringTable(this, &v34) == 0;
    }

    else
    {
      v20 = 0;
    }

    mRegions = a3->mRegions;
    if (mNumberRegions)
    {
      v32 = a3;
      v22 = 0;
      v23 = v17->mRegions;
      alloc = *MEMORY[0x1E695E480];
      do
      {
        mRegionID = v23->mRegionID;
        mRegions->mRegionID = v23->mRegionID;
        *&mRegions->mFlags = *&v23->mFlags;
        if (v20)
        {
          if (((v34.mName - *&v34.mFramePosition) & 0x1FFFFFFFE0) != 0)
          {
            v25 = 0;
            mFramePosition = v34.mFramePosition;
            while (1)
            {
              v27 = **&mFramePosition;
              *&mFramePosition += 32;
              if (v27 == mRegionID)
              {
                break;
              }

              if (((v34.mName - *&v34.mFramePosition) >> 5) == ++v25)
              {
                goto LABEL_22;
              }
            }

            v29 = *&v34.mFramePosition + 32 * v25;
            v30 = (v29 + 8);
            if ((*(v29 + 31) & 0x80000000) == 0 || (v30 = *v30) != 0)
            {
              mRegions->mName = CFStringCreateWithCString(alloc, v30, 0x8000100u);
            }
          }

LABEL_22:
          v28 = &v34;
        }

        else
        {
          v28 = 0;
        }

        CAFAudioFile::ConvertMarkers(v23->mNumberMarkers, v23->mMarkers, mRegions->mMarkers, v28, v18);
        mRegions = (mRegions + 40 * mRegions->mNumberMarkers + 24);
        v23 = (v23 + 28 * v23->mNumberMarkers + 12);
        ++v22;
      }

      while (v22 != mNumberRegions);
      v17 = *&v34.mSMPTETime.mSubFrameSampleOffset;
      LODWORD(a3) = v32;
    }

    *a2 = mRegions - a3;
    v35 = &v34;
    std::vector<CAFStringsWrapper::CAFStringWrapper>::__destroy_vector::operator()[abi:ne200100](&v35);
    v15 = 0;
  }

  if (v17)
  {
    free(v17);
  }

  return v15;
}

void sub_18F83CF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, char *a16)
{
  a16 = &a11;
  std::vector<CAFStringsWrapper::CAFStringWrapper>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t CAFAudioFile::GetStringTable(CAFAudioFile *this, CAFStringsWrapper *a2)
{
  v2 = *(this + 18);
  v3 = *(this + 19) - v2;
  if (v3)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    v8 = 1;
    while (1)
    {
      v9 = v2 + 24 * v6;
      if (*v9 == 1937011303)
      {
        break;
      }

      v6 = v8;
      if (v7 <= v8++)
      {
        return 0;
      }
    }

    v12 = *(v9 + 8);
    v13 = (v12 - 12);
    v28 = v12 - 12;
    v27 = 0;
    CADeprecated::CAAutoFree<CAFStrings>::allocBytes(&v27, v13);
    v14 = *(this + 13);
    v15 = v27;
    v11 = (*(*v14 + 48))(v14, 0, *(v9 + 16) + 12, v13, v27, &v28);
    if (v11)
    {
      if (!v15)
      {
        return v11;
      }

      goto LABEL_30;
    }

    if (v28 < 4)
    {
      v11 = 2003334207;
      if (!v15)
      {
        return v11;
      }

      goto LABEL_30;
    }

    v16 = bswap32(*v15);
    v17 = (v28 - 4) / 0xC;
    if (v16 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    *v15 = v18;
    if (v18)
    {
      v19 = (v15 + 2);
      v20 = v18;
      do
      {
        *(v19 - 1) = bswap32(*(v19 - 1));
        *v19 = bswap64(*v19);
        v19 = (v19 + 12);
        --v20;
      }

      while (v20);
    }

    v21 = *a2;
    v22 = *(a2 + 1);
    if (*a2 == v22)
    {
      if (!v18)
      {
LABEL_29:
        v11 = 0;
LABEL_30:
        free(v15);
        return v11;
      }
    }

    else
    {
      do
      {
        if (*(v22 - 1) < 0)
        {
          operator delete(*(v22 - 24));
        }

        v22 -= 32;
      }

      while (v22 != v21);
      *(a2 + 1) = v21;
      if (!*v15)
      {
        goto LABEL_29;
      }
    }

    v23 = 0;
    v24 = v15 + (12 * v18 + 4);
    v25 = v15 + 2;
    do
    {
      memset(&__p, 0, sizeof(__p));
      v29 = *(v25 - 1);
      std::string::__assign_external(&__p, &v24[*v25]);
      std::vector<CAFStringsWrapper::CAFStringWrapper>::push_back[abi:ne200100](a2, &v29);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v25 = (v25 + 12);
      ++v23;
    }

    while (v23 < *v15);
    goto LABEL_29;
  }

  return 0;
}

void sub_18F83D1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    free(v17);
  }

  _Unwind_Resume(exception_object);
}

double CAFAudioFile::ConvertMarkers(CAFAudioFile *this, uint64_t a2, CAFMarker *a3, AudioFileMarker *a4, CAFStringsWrapper *a5)
{
  if (this)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E695E480];
    v9 = 40 * this;
    v10 = a2 + 12;
    do
    {
      v11 = a3 + v7;
      *(&a3->mFramePosition + v7 + 4) = 0.0;
      if (a4)
      {
        v12 = CAFStringsWrapper::Get(*&a4->mFramePosition, a4->mName, *v10);
        if (v12)
        {
          *(v11 + 1) = CFStringCreateWithCString(v8, v12, 0x8000100u);
        }
      }

      *(v11 + 4) = *v10;
      result = *(v10 - 8);
      *v11 = result;
      *(v11 + 20) = *(v10 + 4);
      *(v11 + 7) = *(v10 - 12);
      *(v11 + 17) = *(v10 + 12);
      v7 += 40;
      v10 += 28;
    }

    while (v9 != v7);
  }

  return result;
}

uint64_t CAFAudioFile::GetMarkerList(CAFAudioFile *this, unsigned int *a2, AudioFileMarkerList *a3, int a4)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *(this + 18);
  v6 = *(this + 19) - v5;
  if (!v6)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v13 = 1;
  while (1)
  {
    v14 = v5 + 24 * v11;
    if (*v14 == 1835102827)
    {
      break;
    }

    v11 = v13;
    if (v12 <= v13++)
    {
      return 0;
    }
  }

  v17 = *(v14 + 16);
  v18 = *(v14 + 8);
  v19 = (v18 - 12);
  v33 = v18 - 12;
  v32 = 0;
  CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v32, v19, 1);
  v20 = v32;
  v16 = (*(**(this + 13) + 48))(*(this + 13), 0, v17 + 12, v19, v32, &v33);
  if (v16)
  {
    if (!v20)
    {
      return v16;
    }
  }

  else
  {
    v22 = bswap32(*v20);
    v23 = bswap32(v20[1]);
    if (v33 >= 8)
    {
      LODWORD(v24) = (v33 - 8) / 0x1C;
    }

    else
    {
      LODWORD(v24) = 0;
    }

    if (v24 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v24;
    }

    *v20 = v22;
    v20[1] = v24;
    if (v24)
    {
      v25 = (v20 + 5);
      v26 = v24;
      do
      {
        v25[-2].i32[1] = bswap32(v25[-2].u32[1]);
        v25[-1] = bswap64(*&v25[-1]);
        v25->i32[0] = bswap32(v25->i32[0]);
        v25[1] = vrev32_s8(v25[1]);
        v25 = (v25 + 28);
        --v26;
      }

      while (v26);
    }

    v27 = 0;
    v28 = (v4 - 8) / 0x28;
    if (v4 < 8)
    {
      v28 = 0;
    }

    if (v28 >= v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = v28;
    }

    a3->mSMPTE_TimeType = v22;
    a3->mNumberMarkers = v29;
    memset(v31, 0, sizeof(v31));
    if (a4)
    {
      if (CAFAudioFile::GetStringTable(this, v31))
      {
        v27 = 0;
      }

      else
      {
        v27 = v31;
      }
    }

    CAFAudioFile::ConvertMarkers(v29, (v20 + 2), a3->mMarkers, v27, v21);
    *a2 = 40 * v29 + 8;
    v34 = v31;
    std::vector<CAFStringsWrapper::CAFStringWrapper>::__destroy_vector::operator()[abi:ne200100](&v34);
  }

  free(v20);
  return v16;
}

void sub_18F83D514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<CAFStringsWrapper::CAFStringWrapper>::__destroy_vector::operator()[abi:ne200100](&a14);
  free(v14);
  _Unwind_Resume(a1);
}

uint64_t CAFAudioFile::ParsePacketTableChunk(CAFAudioFile *this)
{
  v1 = *(this + 18);
  v2 = *(this + 19) - v1;
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
  v6 = 1;
  while (1)
  {
    v7 = v1 + 24 * v4;
    if (*v7 == 1885432692)
    {
      break;
    }

    v4 = v6;
    if (v5 <= v6++)
    {
      return 0;
    }
  }

  v9 = 1667787583;
  v11 = *(v7 + 8);
  v12 = v11 - 12;
  if ((v11 - 12) >= 0x18)
  {
    v13 = (*(*this + 232))(this);
    v38.mStartOffset = 0;
    *&v38.mVariableFramesInPacket = 0;
    AudioFileObject::DeletePacketTable(this);
    if (!*(this + 15))
    {
      operator new();
    }

    v14 = *(this + 11);
    v37 = 0;
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v37, v11 - 12, 0);
    v15 = v37;
    v16 = (*(*this + 640))(this);
    v36 = 0;
    v17 = (*(**(this + 13) + 48))(*(this + 13), 0, *(v7 + 16) + 12, v11 - 12, v15, &v36);
    v18 = v17;
    if (v17)
    {
      goto LABEL_47;
    }

    if (v36 < 0x18)
    {
      goto LABEL_13;
    }

    v19 = vrev64q_s8(*v15->i8);
    *v15->i8 = v19;
    v20 = vrev32_s8(v15[2]);
    v15[2] = v20;
    *(this + 22) = v19.i64[1];
    *(this + 23) = v20;
    if (!*(this + 10) || !*(this + 11))
    {
      if (v19.i64[0] > v11 - 36)
      {
LABEL_13:
        v18 = 1667787583;
        if (!v15)
        {
          return v18;
        }

        goto LABEL_48;
      }

      (*(*this + 256))(this);
      if ((v13 & 0x8000000000000000) == 0 && v11 + 12 >= 49)
      {
        v22 = 0;
        v23 = 0;
        v24 = v15 + 3;
        v25 = v15 + v12;
        do
        {
          if (v22 >= *v15)
          {
            break;
          }

          v26 = 0;
          v38.mStartOffset = v23;
          v27 = 5;
          do
          {
            if (v24 >= v25)
            {
LABEL_50:
              exception = __cxa_allocate_exception(4uLL);
              *exception = 1667787583;
              __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
            }

            if (!v27)
            {
LABEL_46:
              v18 = 1885563711;
              goto LABEL_47;
            }

            v28 = v24->i8[0];
            v24 = (v24 + 1);
            v29 = v28 & 0x7F | (v26 << 7);
            --v27;
            v26 = v29;
          }

          while (v28 < 0);
          v38.mDataByteSize = v29;
          v16 = v29 <= v16 ? v16 : v29;
          if (v14)
          {
            v35 = v22;
            v30 = 0;
          }

          else
          {
            v31 = 0;
            v30 = 0;
            do
            {
              if (&v24->i8[v31] >= v25)
              {
                goto LABEL_50;
              }

              if (v31 == 5)
              {
                goto LABEL_46;
              }

              v32 = v24->i8[v31];
              v30 = v32 & 0x7F | (v30 << 7);
              ++v31;
            }

            while (v32 < 0);
            v35 = v22;
            v24 = (v24 + v31);
          }

          v38.mVariableFramesInPacket = v30;
          AudioFileObject::AppendPacket(this, &v38);
          v23 += v29;
          v22 = v35 + 1;
        }

        while (v23 <= v13 && v24 < v25);
      }
    }

    v21 = *(this + 15);
    if (v21)
    {
      v21 = *(v21 + 24);
    }

    v18 = 1667787583;
    if (*v15 != v21)
    {
LABEL_47:
      if (!v15)
      {
        return v18;
      }
    }

    else
    {
      (*(*this + 656))(this, v16);
      v18 = 0;
    }

LABEL_48:
    free(v15);
    return v18;
  }

  return v9;
}

void sub_18F83D914(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a12)
  {
    JUMPOUT(0x18F83D8ECLL);
  }

  JUMPOUT(0x18F83D8E4);
}

void sub_18F83D93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void CAFAudioFile::ConsolidateFillerChunks(CAFAudioFile *this)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v1 = *(this + 18);
  v2 = (this + 144);
  v3 = *(this + 19) - v1;
  if (v3)
  {
    v5 = 0;
    LODWORD(v6) = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    do
    {
      v6 = (v6 + 1);
      v8 = v1 + 24 * v5;
      v9 = *(v8 + 16);
      v15 = *v8;
      v16 = v9;
      if (v15 == 1718773093)
      {
        if (v7 > v6)
        {
          v10 = *(&v15 + 1);
          do
          {
            v11 = v1 + 24 * v6;
            if (*v11 != 1718773093)
            {
              break;
            }

            v6 = (v6 + 1);
            v10 += *(v11 + 8);
            *(&v15 + 1) = v10;
          }

          while (v7 > v6);
        }

        v14 = 0;
        (*(*this + 776))(this, &v15, &v14);
      }

      std::vector<ChunkInfo64>::push_back[abi:ne200100](&v17, &v15);
      v5 = v6;
      v1 = *(this + 18);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v1) >> 3);
    }

    while (v7 > v6);
    v13 = v17;
    v12 = v18;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  std::vector<ChunkInfo64>::__assign_with_size[abi:ne200100]<ChunkInfo64*,ChunkInfo64*>(v2, v13, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3));
  if (v13)
  {
    operator delete(v13);
  }
}

void sub_18F83DAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetUserChunk(CAFAudioFile *this, int a2, int a3, uint64_t a4, unsigned int *a5, void *a6)
{
  if (a4 < 0)
  {
    return 4294967256;
  }

  result = 1667787583;
  v10 = *(this + 18);
  v11 = *(this + 19);
  v12 = v11 - v10;
  if (v11 == v10)
  {
    return result;
  }

  v25 = v6;
  v26 = v7;
  v14 = 0;
  v15 = 0;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  v17 = 1;
  while (1)
  {
    v18 = v10 + 24 * v14;
    if (*v18 == a2)
    {
      break;
    }

LABEL_7:
    v14 = v17;
    v19 = v16 > v17++;
    if (!v19)
    {
      return result;
    }
  }

  if (v15 != a3)
  {
    ++v15;
    goto LABEL_7;
  }

  v20 = *a5;
  if (!v20)
  {
    return 561211770;
  }

  v21 = *(v18 + 8) - 12;
  v19 = v21 <= a4;
  v22 = v21 - a4;
  if (v19)
  {
    return 4294967256;
  }

  v23 = *(v18 + 16);
  if (v22 <= v20)
  {
    v20 = v22;
  }

  else
  {
    v20 = v20;
  }

  v24 = v20;
  (*(**(this + 13) + 48))(*(this + 13), 0, a4 + v23 + 12, v20, a6, &v24);
  result = 0;
  *a5 = v24;
  return result;
}

uint64_t CAFAudioFile::GetUserChunkSize64(CAFAudioFile *this, int a2, int a3, unint64_t *a4)
{
  result = 1667787583;
  v8 = this + 144;
  v6 = *(this + 18);
  v7 = *(v8 + 1);
  v9 = v7 - v6;
  if (v7 != v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    v13 = 1;
    do
    {
      v14 = v6 + 24 * v10;
      if (*v14 == a2)
      {
        if (v11 == a3)
        {
          result = 0;
          *a4 = *(v14 + 8) - 12;
          return result;
        }

        ++v11;
      }

      v10 = v13;
    }

    while (v12 > v13++);
  }

  return result;
}

uint64_t CAFAudioFile::SetSourceBitDepth(CAFAudioFile *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = 257;
  (*(*this + 440))(this, &Mutable);
  CFStringFromBitDepth = CreateCFStringFromBitDepth(a2);
  if (CFStringFromBitDepth)
  {
    v5 = CACFDictionary::AddString(&Mutable, @"source bit depth", CFStringFromBitDepth);
    CFRelease(CFStringFromBitDepth);
    if (v5)
    {
      v6 = (*(*this + 448))(this, &Mutable);
    }

    else
    {
      v6 = 2003334207;
    }
  }

  else
  {
    v6 = 0;
  }

  CACFDictionary::~CACFDictionary(&Mutable);
  return v6;
}

uint64_t CAFAudioFile::GetSourceBitDepth(CAFAudioFile *this, int *a2)
{
  SourceBitDepthFromASBD = GetSourceBitDepthFromASBD(*(this + 8), *(this + 9));
  *a2 = SourceBitDepthFromASBD;
  if (!SourceBitDepthFromASBD)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = 257;
    if (!(*(*this + 440))(this, &Mutable))
    {
      v6 = 0;
      if (CACFDictionary::GetString(&Mutable, @"source bit depth", &v6))
      {
        *a2 = BitDepthFromCFString(v6);
      }
    }

    CACFDictionary::~CACFDictionary(&Mutable);
  }

  return 0;
}

void sub_18F83DEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t CAFAudioFile::IsValidFilePosition(CAFAudioFile *this, uint64_t a2)
{
  if (a2 < 0)
  {
    return 4294967246;
  }

  else
  {
    return 0;
  }
}

uint64_t CAFAudioFile::RemoveUserData(CAFAudioFile *this, int a2, int a3)
{
  result = 1667787583;
  v5 = *(this + 18);
  v6 = *(this + 19);
  v7 = v6 - v5;
  if (v6 != v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v11 = 1;
    do
    {
      v12 = (v5 + 24 * v8);
      if (*v12 == a2)
      {
        if (v9 == a3)
        {
          *v12 = 1718773093;
          CAFAudioFile::ConsolidateFillerChunks(this);
          return 0;
        }

        ++v9;
      }

      v8 = v11;
    }

    while (v10 > v11++);
  }

  return result;
}

uint64_t CAFAudioFile::SetUserData(CAFAudioFile *this, uint64_t a2, int a3, uint64_t a4, const void *a5)
{
  result = CAFAudioFile::ReplaceChunk(this, a2, a3, a4, a5);
  if (result == -1)
  {
    v10 = *(*this + 760);

    return v10(this, a2, a4, a5);
  }

  return result;
}

uint64_t CAFAudioFile::CountUserData(CAFAudioFile *this, int a2, unsigned int *a3)
{
  v3 = *(this + 18);
  v4 = *(this + 19);
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v8 = 1;
    do
    {
      v9 = *v3;
      v3 += 24;
      if (v9 == a2)
      {
        ++v6;
      }
    }

    while (v7 > v8++);
  }

  *a3 = v6;
  return 0;
}

uint64_t CAFAudioFile::GetLoudnessInfoSize(CAFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  *a2 = 8;
  *a3 = 1;
  return 0;
}

uint64_t CAFAudioFile::SetLoudnessInfo(CAFAudioFile *this, CFPropertyListRef *a2)
{
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], *a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  theData = Data;
  v9 = 1;
  if (Data)
  {
    Length = CFDataGetLength(Data);
    BytePtr = CFDataGetBytePtr(theData);
    v6 = (*(*this + 768))(this, 1819243876, Length, BytePtr);
  }

  else
  {
    v6 = 1667787583;
  }

  CACFData::~CACFData(&theData);
  return v6;
}

uint64_t CAFAudioFile::GetLoudnessInfo(CAFAudioFile *this, CACFDictionary *a2)
{
  v13 = 0;
  v4 = (*(*this + 736))(this, 1819243876, 0, &v13);
  if (!v4)
  {
    CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&bytes, v13, 1);
    v4 = (*(*this + 752))(this, 1819243876, 0, 0, &v13, bytes);
    if (!v4)
    {
      v11 = 1;
      v10 = CFDataCreate(0, bytes, v13);
      v5 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], v10, 0, 0, 0);
      v4 = 1667787583;
      if (v5)
      {
        theDict = v5;
        v9 = 1;
        v6 = CFGetTypeID(v5);
        if (v6 == CFDictionaryGetTypeID())
        {
          CACFDictionary::SetCFMutableDictionaryFromCopy(a2, theDict, 1);
          v4 = 0;
        }

        CACFObject<void const*>::~CACFObject(&theDict);
      }

      CACFData::~CACFData(&v10);
    }

    if (bytes)
    {
      free(bytes);
    }
  }

  return v4;
}

void sub_18F83E384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13)
{
  CACFData::~CACFData(&a11);
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t CAFAudioFile::SetSoundCheckDictionary(CAFAudioFile *this, CACFDictionary *a2)
{
  if (!a2 || !CACFDictionary::Size(a2))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = 257;
  (*(*this + 440))(this, &Mutable);
  v4 = CACFDictionary::Size(a2);
  std::vector<__CFString const*>::vector[abi:ne200100](v9, v4);
  std::vector<__CFString const*>::vector[abi:ne200100](__p, v4);
  CACFDictionary::GetKeysAndValues(a2, v9[0], __p[0]);
  if (v4)
  {
    v5 = 0;
    while ((CACFDictionary::AddString(&Mutable, v9[0][v5], *(__p[0] + v5 * 8)) & 1) != 0)
    {
      if (v4 == ++v5)
      {
        goto LABEL_7;
      }
    }

    v6 = 2003334207;
  }

  else
  {
LABEL_7:
    v6 = (*(*this + 448))(this, &Mutable);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  CACFDictionary::~CACFDictionary(&Mutable);
  return v6;
}

void sub_18F83E550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  CACFDictionary::~CACFDictionary(&a15);
  _Unwind_Resume(a1);
}

uint64_t CAFAudioFile::GetSoundCheckDictionary(CAFAudioFile *this, CACFDictionary *a2)
{
  v13[16] = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = 257;
  v4 = (*(*this + 440))(this, &Mutable);
  if (!v4)
  {
    v5 = 0;
    v6 = 0;
    v13[0] = @"sc ave perceived power coeff";
    v13[1] = @"sc max perceived power coeff";
    v13[2] = @"sc max perceived power msec";
    v13[3] = @"sc peak amplitude";
    v13[4] = @"sc peak amplitude msec";
    v13[5] = @"aa version";
    v13[6] = @"aa bit depth pcm master";
    v13[7] = @"aa itu loudness";
    v13[8] = @"aa ebu loudness range";
    v13[9] = @"aa ebu top of loudness range";
    v13[10] = @"aa itu true peak";
    v13[11] = @"aa ebu max momentary loudness";
    v13[12] = @"aa ebu max short-term loudness";
    v13[13] = @"aa headroom master";
    v13[14] = @"aa noise floor master";
    v13[15] = @"aa source bandwidth master";
    v10 = 0;
    do
    {
      v7 = v13[v5];
      if (CACFDictionary::GetString(&Mutable, v7, &v10))
      {
        CACFDictionary::AddString(a2, v7, v10);
        ++v6;
      }

      ++v5;
    }

    while (v5 != 16);
    if (v6)
    {
      v4 = 0;
    }

    else
    {
      v4 = 1667787583;
    }
  }

  CACFDictionary::~CACFDictionary(&Mutable);
  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_18F83E77C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t CAFAudioFile::SetInfoDictionary(CAFAudioFile *this, CACFDictionary *a2)
{
  v4 = CACFDictionary::Size(a2);
  v5 = 8 * v4;
  v6 = malloc_type_malloc(v5, 0xD7524C8FuLL);
  v7 = v6;
  if (v4 && !v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v30 = std::bad_alloc::bad_alloc(exception);
  }

  *v33 = 0;
  bzero(v6, v5);
  CACFDictionary::GetKeys(a2, v7);
  v8 = 0;
  v9 = v4;
  if (v4)
  {
    LODWORD(v10) = 4;
    v11 = v7;
    v12 = v9;
    do
    {
      StringByteLength = CACFString::GetStringByteLength(*v11, 0x8000100);
      v14 = StringByteLength + 1;
      if (StringByteLength + 1 > v8)
      {
        v8 = StringByteLength + 1;
      }

      v32 = 0;
      CACFDictionary::GetString(a2, *v11, &v32);
      v15 = CACFString::GetStringByteLength(v32, 0x8000100);
      *v33 = v15 + 1;
      if (v15 + 1 > v8)
      {
        v8 = v15 + 1;
      }

      v10 = (v14 + v10 + v15 + 1);
      ++v11;
      --v12;
    }

    while (v12);
  }

  else
  {
    v10 = 4;
  }

  CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&v32, v10, 1);
  v16 = v32;
  LODWORD(v32->isa) = bswap32(v9);
  if (v9)
  {
    v17 = (&v16->isa + 4);
    v18 = v7;
    do
    {
      *v33 = v8;
      CACFString::GetCString(*v18, v17, v33, 0x8000100);
      v19 = *v33;
      v31 = 0;
      CACFDictionary::GetString(a2, *v18, &v31);
      v20 = (v17 + v19);
      *v33 = v8;
      CACFString::GetCString(v31, v20, v33, 0x8000100);
      v17 = (v20 + *v33);
      ++v18;
      --v9;
    }

    while (v9);
  }

  v21 = *(this + 18);
  v22 = *(this + 19) - v21;
  if (v22)
  {
    v23 = 0;
    v24 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3);
    v25 = 1;
    while (*(v21 + 24 * v23) != 1768842863)
    {
      v23 = v25;
      if (v24 <= v25++)
      {
        goto LABEL_21;
      }
    }

    (*(*this + 608))(this, 1768842863, 0);
  }

LABEL_21:
  v27 = (*(*this + 760))(this, 1768842863, v10, v32);
  if (v32)
  {
    free(v32);
  }

  if (v7)
  {
    free(v7);
  }

  return v27;
}

void sub_18F83EA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  if (v11)
  {
    free(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetInfoDictionary(CAFAudioFile *this, CACFDictionary *a2)
{
  LODWORD(size) = 0;
  if (!(*(*this + 736))(this, 1768842863, 0, &size))
  {
    CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&v6, size, 1);
    if (!(*(*this + 752))(this, 1768842863, 0, 0, &size, v6))
    {
      parseInfoStringsChunk(v6, size, a2);
    }

    if (v6)
    {
      free(v6);
    }
  }

  v6 = 0;
  v4 = (*(*this + 552))(this, &v6);
  if (!v4)
  {
    AudioFileObject::AddDurationToInfoDictionary(v4, a2, &v6);
  }

  return 0;
}

void sub_18F83EC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetInfoDictionarySize(CAFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 8;
  }

  if (a3)
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t CAFAudioFile::SetChannelLayout(CAFAudioFile *this, UInt32 a2, const AudioChannelLayout *a3)
{
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  Property = AudioFormatGetProperty(0x6E63686Du, a2, a3, &ioPropertyDataSize, &outPropertyData);
  if (!Property)
  {
    if (outPropertyData == *(this + 13))
    {
      __dst = 0;
      CADeprecated::CAAutoFree<unsigned char>::allocBytes(&__dst, a2, 1);
      v7 = __dst;
      memcpy(__dst, a3, a2);
      v8 = v7[1].u32[0];
      *v7 = vrev32_s8(*v7);
      v7[1].i32[0] = bswap32(v8);
      if (v8)
      {
        v9 = &v7[3] + 1;
        do
        {
          *(v9 - 1) = vrev32q_s8(*(v9 - 1));
          *v9 = bswap32(*v9);
          v9 += 5;
          --v8;
        }

        while (v8);
      }

      Property = (*(*this + 768))(this, 1667785070, a2, v7);
      free(v7);
    }

    else
    {
      return 4294967246;
    }
  }

  return Property;
}

void sub_18F83ED78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetChannelLayout(CAFAudioFile *this, unsigned int *a2, AudioChannelLayout *a3)
{
  v4 = *(this + 18);
  v5 = *(this + 19) - v4;
  if (v5)
  {
    v7 = 0;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v9 = 1;
    while (1)
    {
      v10 = v4 + 24 * v7;
      if (*v10 == 1667785070)
      {
        break;
      }

      v7 = v9;
      if (v8 <= v9++)
      {
        goto LABEL_5;
      }
    }

    v13 = *(v10 + 8) - 12;
    if (*a2 >= v13)
    {
      result = (*(**(this + 13) + 48))(*(this + 13), 0, *(v10 + 16) + 12);
      if (!result)
      {
        AudioChannelLayout_BtoN(a3, v13);
        result = 0;
        *a2 = v13;
      }
    }

    else
    {
      return 561211770;
    }
  }

  else
  {
LABEL_5:
    *a2 = 0;
    return 1667787583;
  }

  return result;
}

uint64_t CAFAudioFile::SetRegionList(CAFAudioFile *this, unsigned int a2, const AudioFileRegionList *a3)
{
  v4 = this;
  memset(v37, 0, sizeof(v37));
  CAFAudioFile::GetStringTable(this, v37);
  mNumberRegions = a3->mNumberRegions;
  mRegions = a3->mRegions;
  if (mNumberRegions)
  {
    v35 = a3;
    v36 = v4;
    v7 = 0;
    v8 = 0;
    v9 = a3->mRegions;
    do
    {
      mNumberMarkers = v9->mNumberMarkers;
      mName = v9->mName;
      if (mName)
      {
        Length = CFStringGetLength(mName);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        CADeprecated::CAAutoFree<char>::CAAutoFree(&buffer, MaximumSizeForEncoding + 1);
        if (CFStringGetCString(v9->mName, buffer, MaximumSizeForEncoding + 1, 0x8000100u))
        {
          CAFStringsWrapper::Put(v37, v9->mRegionID, buffer);
        }

        if (buffer)
        {
          free(buffer);
        }

        v14 = v9->mNumberMarkers;
        if (v14)
        {
          v15 = 0;
          p_mName = &v9->mMarkers[0].mName;
          do
          {
            if (*p_mName)
            {
              v17 = CFStringGetLength(*p_mName);
              v18 = CFStringGetMaximumSizeForEncoding(v17, 0x8000100u);
              CADeprecated::CAAutoFree<char>::CAAutoFree(&buffer, v18 + 1);
              if (CFStringGetCString(*p_mName, buffer, v18 + 1, 0x8000100u))
              {
                CAFStringsWrapper::Put(v37, *(p_mName + 2), buffer);
              }

              if (buffer)
              {
                free(buffer);
              }

              v14 = v9->mNumberMarkers;
            }

            ++v15;
            p_mName += 5;
          }

          while (v15 < v14);
        }
      }

      else
      {
        v14 = v9->mNumberMarkers;
      }

      v7 += mNumberMarkers;
      v9 = (v9 + 40 * v14 + 24);
      ++v8;
    }

    while (v8 != mNumberRegions);
    v19 = 28 * v7;
    a3 = v35;
    v4 = v36;
  }

  else
  {
    v19 = 0;
  }

  v20 = CAFAudioFile::SetStringTable(v4, v37);
  if (!v20)
  {
    buffer = 0;
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&buffer, v19 + 12 * mNumberRegions + 8, 0);
    mSMPTE_TimeType = a3->mSMPTE_TimeType;
    v22 = buffer;
    *buffer = mSMPTE_TimeType;
    v22[1] = mNumberRegions;
    v23 = 0;
    if (mNumberRegions)
    {
      v24 = v22 + 2;
      do
      {
        *v24 = mRegions->mRegionID;
        v25 = mRegions->mNumberMarkers;
        v24[2] = v25;
        v24[1] = mRegions->mFlags;
        v26 = 0;
        if (v25)
        {
          v27 = (v24 + 6);
          do
          {
            *(v27 - 1) = *&mRegions->mMarkers[v26].mFramePosition;
            *v27 = mRegions->mMarkers[v26].mMarkerID;
            *(v27 + 1) = mRegions->mMarkers[v26].mSMPTETime;
            *(v27 - 3) = mRegions->mMarkers[v26].mType;
            v27[3] = mRegions->mMarkers[v26++].mChannel;
            v27 += 7;
          }

          while (v25 != v26);
          v26 = mRegions->mNumberMarkers;
          v28 = 28 * v25;
        }

        else
        {
          v28 = 0;
        }

        mRegions = (mRegions + v26 * 40 + 24);
        v24 = (v24 + v28 + 12);
        ++v23;
      }

      while (v23 != mNumberRegions);
      v23 = v22[1];
      if (v23)
      {
        v29 = 0;
        v30 = (v22 + 2);
        do
        {
          v31 = v30[1].u32[0];
          if (v31)
          {
            v32 = v30 + 2;
            v33 = v30[1].u32[0];
            do
            {
              v32[-1].i32[1] = bswap32(v32[-1].u32[1]);
              *v32 = bswap64(*v32);
              v32[1].i32[0] = bswap32(v32[1].u32[0]);
              v32[2] = vrev32_s8(v32[2]);
              v32 = (v32 + 28);
              --v33;
            }

            while (v33);
          }

          *v30 = vrev32_s8(*v30);
          v30[1].i32[0] = bswap32(v31);
          v30 = (v30 + 28 * v31 + 12);
          ++v29;
        }

        while (v29 != v23);
        v23 = v22[1];
      }
    }

    *v22 = bswap32(*v22);
    v22[1] = bswap32(v23);
    v20 = (*(*v4 + 768))(v4, 1919248238, v19 + 12 * mNumberRegions + 8, v22);
    free(v22);
  }

  buffer = v37;
  std::vector<CAFStringsWrapper::CAFStringWrapper>::__destroy_vector::operator()[abi:ne200100](&buffer);
  return v20;
}

void sub_18F83F224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14)
{
  free(v14);
  a14 = &a11;
  std::vector<CAFStringsWrapper::CAFStringWrapper>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t CAFAudioFile::SetStringTable(CAFAudioFile *this, CAFStringsWrapper *a2)
{
  v4 = *(a2 + 1) - *a2;
  v5 = 12 * (v4 >> 5) + 4;
  if ((v4 >> 5))
  {
    v6 = (v4 >> 5);
    v7 = *a2 + 16;
    v8 = v5;
    do
    {
      v9 = *(v7 + 15);
      if (v9 < 0)
      {
        v9 = *v7;
      }

      v8 += v9 + 1;
      v7 += 32;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = 12 * (v4 >> 5) + 4;
  }

  v32 = 0;
  v10 = v8;
  CADeprecated::CAAutoFree<CAFStrings>::allocBytes(&v32, v8);
  v11 = v32;
  v12 = *a2;
  v13 = *(a2 + 1) - *a2;
  v14 = v13 >> 5;
  *v32 = v13 >> 5;
  if ((v13 & 0x1FFFFFFFE0) != 0)
  {
    v15 = 0;
    v16 = 0;
    v17 = v10 - v5;
    v18 = v11 + 2;
    v19 = 16;
    v20 = v11 + v5;
    do
    {
      v21 = v12 + v19;
      *(v18 - 1) = *(v21 - 16);
      v22 = v16;
      *v18 = v16;
      v23 = (v21 - 8);
      if (*(v21 + 15) < 0)
      {
        v23 = *v23;
      }

      strlcpy(&v20[v16], v23, v17);
      v12 = *a2;
      v24 = *(*a2 + v19 + 15);
      if (v24 < 0)
      {
        v24 = *(v12 + v19);
      }

      v25 = v24 + 1;
      v16 = v24 + 1 + v22;
      v26 = v17 >= v25;
      v27 = v17 - v25;
      if (v26)
      {
        v17 = v27;
      }

      else
      {
        v17 = 0;
      }

      ++v15;
      v19 += 32;
      v18 = (v18 + 12);
    }

    while (v15 < ((*(a2 + 1) - v12) >> 5));
    v11 = v32;
    LODWORD(v14) = *v32;
  }

  if (v14)
  {
    v28 = v14;
    v29 = (v11 + 2);
    do
    {
      *(v29 - 1) = bswap32(*(v29 - 1));
      *v29 = bswap64(*v29);
      v29 = (v29 + 12);
      --v28;
    }

    while (v28);
  }

  *v11 = bswap32(v14);
  v30 = (*(*this + 768))(this, 1937011303, v10, v11);
  free(v11);
  return v30;
}

uint64_t CAFAudioFile::GetRegionListSize(CAFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (!a2)
  {
    return 0;
  }

  *a2 = 0;
  v5 = *(this + 18);
  v6 = *(this + 19) - v5;
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v9 = 1;
  while (1)
  {
    v10 = v5 + 24 * v7;
    if (*v10 == 1919248238)
    {
      break;
    }

    v7 = v9;
    if (v8 <= v9++)
    {
      return 0;
    }
  }

  v12 = *(v10 + 16);
  v13 = *(v10 + 8);
  v14 = (v13 - 12);
  LODWORD(v25) = v13 - 12;
  v24 = 0;
  CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v24, v14, 1);
  v15 = *(this + 13);
  v16 = v24;
  v17 = (*(*v15 + 48))(v15, 0, v12 + 12, v14, v24, &v25);
  if (v17)
  {
    v18 = 0;
  }

  else if (CAFRegionChunk_BtoN(v16, v25))
  {
    v18 = 0;
    v17 = 2003334207;
  }

  else
  {
    mNumberRegions = v16->mNumberRegions;
    if (mNumberRegions)
    {
      mRegions = v16->mRegions;
      v21 = 8;
      do
      {
        mNumberMarkers = mRegions->mNumberMarkers;
        v21 += 40 * mNumberMarkers + 24;
        mRegions = (mRegions + 28 * mNumberMarkers + 12);
        --mNumberRegions;
      }

      while (mNumberRegions);
    }

    else
    {
      v21 = 8;
    }

    *a2 = v21;
    v18 = 1;
  }

  if (v16)
  {
    free(v16);
  }

  if (v18)
  {
    return 0;
  }

  return v17;
}

void sub_18F83F658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
    free(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::SetMarkerList(CAFAudioFile *this, unsigned int a2, const AudioFileMarkerList *a3)
{
  memset(v20, 0, sizeof(v20));
  CAFAudioFile::GetStringTable(this, v20);
  mNumberMarkers = a3->mNumberMarkers;
  if (mNumberMarkers >= a2 / 0x28)
  {
    v7 = a2 / 0x28;
  }

  else
  {
    v7 = mNumberMarkers;
  }

  if (v7)
  {
    p_mName = &a3->mMarkers[0].mName;
    v9 = v7;
    do
    {
      if (*p_mName)
      {
        Length = CFStringGetLength(*p_mName);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        CADeprecated::CAAutoFree<char>::CAAutoFree(&buffer, MaximumSizeForEncoding + 1);
        if (CFStringGetCString(*p_mName, buffer, MaximumSizeForEncoding + 1, 0x8000100u))
        {
          CAFStringsWrapper::Put(v20, *(p_mName + 2), buffer);
        }

        if (buffer)
        {
          free(buffer);
        }
      }

      p_mName += 5;
      --v9;
    }

    while (v9);
  }

  v12 = CAFAudioFile::SetStringTable(this, v20);
  if (!v12)
  {
    buffer = 0;
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&buffer, (28 * v7 + 8), 0);
    mSMPTE_TimeType = a3->mSMPTE_TimeType;
    v14 = buffer;
    *buffer = a3->mSMPTE_TimeType;
    *(v14 + 1) = v7;
    if (v7)
    {
      v15 = 0;
      v16 = v14 + 20;
      do
      {
        *(v16 - 1) = *&a3->mMarkers[v15].mFramePosition;
        *v16 = a3->mMarkers[v15].mMarkerID;
        *(v16 + 4) = a3->mMarkers[v15].mSMPTETime;
        *(v16 - 3) = a3->mMarkers[v15].mType;
        *(v16 + 3) = a3->mMarkers[v15++].mChannel;
        v16 += 28;
      }

      while (v7 != v15);
      v17 = (v14 + 20);
      v18 = v7;
      do
      {
        v17[-2].i32[1] = bswap32(v17[-2].u32[1]);
        v17[-1] = bswap64(*&v17[-1]);
        v17->i32[0] = bswap32(v17->i32[0]);
        v17[1] = vrev32_s8(v17[1]);
        v17 = (v17 + 28);
        --v18;
      }

      while (v18);
    }

    *v14 = bswap32(mSMPTE_TimeType);
    *(v14 + 1) = bswap32(v7);
    v12 = (*(*this + 768))(this, 1835102827, (28 * v7 + 8), v14);
    free(v14);
  }

  buffer = v20;
  std::vector<CAFStringsWrapper::CAFStringWrapper>::__destroy_vector::operator()[abi:ne200100](&buffer);
  return v12;
}

void sub_18F83F8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  if (a12)
  {
    free(a12);
  }

  a12 = &a9;
  std::vector<CAFStringsWrapper::CAFStringWrapper>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t CAFAudioFile::GetMarkerListSize(CAFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *(this + 18);
  v5 = *(this + 19) - v4;
  if (v5)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v8 = 1;
    while (1)
    {
      v9 = (v4 + 24 * v6);
      if (*v9 == 1835102827)
      {
        break;
      }

      v6 = v8;
      if (v7 <= v8++)
      {
        goto LABEL_8;
      }
    }

    v12 = 4;
    v13 = 0;
    result = (*(**(this + 13) + 48))(*(this + 13), 0, (v9[4] + 16), 4, &v13, &v12);
    if (!result)
    {
      *a2 = 40 * bswap32(v13) + 8;
    }
  }

  else
  {
LABEL_8:
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t CAFAudioFile::SetMagicCookieData(CAFAudioFile *this, UInt32 a2, const void *a3)
{
  v6 = (*(*this + 768))(this, 1802857321, a2, a3);
  if (!v6)
  {
    v7 = *(this + 40);
    outPropertyData = *(this + 24);
    v27 = v7;
    v28 = *(this + 7);
    v8 = DWORD1(v7);
    ioPropertyDataSize = 40;
    if (AudioFormatGetProperty(0x666D7469u, a2, a3, &ioPropertyDataSize, &outPropertyData))
    {
      v9 = *(this + 32);
      *(this + 32) = 0;
      if (v9)
      {
        MEMORY[0x193ADF220](v9, 0x1000C403E1C8BA9);
      }
    }

    else
    {
      if (DWORD2(outPropertyData) == 1700998451 || DWORD2(outPropertyData) == 1700997939)
      {
        DWORD1(v27) = v8;
      }

      (*(*this + 192))(this, &outPropertyData);
    }

    v10 = *(this + 40);
    outPropertyData = *(this + 24);
    v27 = v10;
    v28 = *(this + 7);
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    DWORD2(v21[0]) = DWORD2(outPropertyData);
    v23 = a3;
    v24 = a2;
    ioPropertyDataSize = 0;
    v6 = 0;
    if (!AudioFormatGetPropertyInfo(0x666C7374u, 0x38u, v21, &ioPropertyDataSize))
    {
      v6 = 2003334207;
      if (ioPropertyDataSize >= 0x30)
      {
        v11 = ioPropertyDataSize;
        v12 = malloc_type_malloc(48 * (ioPropertyDataSize / 0x30uLL), 0x36C4DC61uLL);
        if (!v12)
        {
          exception = __cxa_allocate_exception(8uLL);
          v20 = std::bad_alloc::bad_alloc(exception);
        }

        v13 = v12;
        bzero(v12, 48 * (v11 / 0x30uLL));
        if (AudioFormatGetProperty(0x666C7374u, 0x38u, v21, &ioPropertyDataSize, v13))
        {
          goto LABEL_17;
        }

        if (ioPropertyDataSize >= 0x30)
        {
          v14 = ioPropertyDataSize / 0x30;
          if (ioPropertyDataSize >= 0x60)
          {
            (*(*this + 216))(this);
          }

          v15 = &v13[48 * v14];
          v16 = *(v15 - 3);
          v17 = *(v15 - 2);
          *(this + 31) = *(v15 - 2);
          *(this + 232) = v17;
          *(this + 216) = v16;
LABEL_17:
          free(v13);
          return 0;
        }
      }
    }
  }

  return v6;
}

uint64_t CAFAudioFile::GetMagicCookieData(CAFAudioFile *this, unsigned int *a2, void *a3)
{
  v4 = *(this + 18);
  v5 = *(this + 19) - v4;
  if (v5)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v8 = 1;
    while (1)
    {
      v9 = v4 + 24 * v6;
      if (*v9 == 1802857321)
      {
        break;
      }

      v6 = v8;
      if (v7 <= v8++)
      {
        goto LABEL_5;
      }
    }

    v12 = *(v9 + 8) - 12;
    if (*a2 >= v12)
    {
      result = (*(**(this + 13) + 48))(*(this + 13), 0, *(v9 + 16) + 12);
      *a2 = v12;
    }

    else
    {
      return 561211770;
    }
  }

  else
  {
LABEL_5:
    *a2 = 0;
    return 1667787583;
  }

  return result;
}

uint64_t CAFAudioFile::PacketToDependencyInfo(CAFAudioFile *this, AudioPacketDependencyInfoTranslation *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!(*(*this + 280))(this))
  {
    AudioFileObject::PacketToDependencyInfo(this, a2);
    v9 = 0;
    goto LABEL_20;
  }

  v18 = xmmword_18F901C70;
  v4 = *(this + 10);
  v16 = 1;
  v17 = v4;
  memset(&v15, 0, sizeof(v15));
  mPacket = a2->mPacket;
  if (mPacket >= (*(*this + 248))(this))
  {
    v9 = 1885563711;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v20 = "CAFAudioFile.cpp";
    LOWORD(v21[0]) = 1024;
    *(v21 + 2) = 3047;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  invalid packet number";
LABEL_12:
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
    goto LABEL_20;
  }

  if (v4)
  {
    a2->mIsIndependentlyDecodable = 0;
    p_mIsIndependentlyDecodable = &a2->mIsIndependentlyDecodable;
    a2->mNumberPrerollPackets = 0;
    p_mNumberPrerollPackets = &a2->mNumberPrerollPackets;
    goto LABEL_5;
  }

  v12 = *(this + 15);
  if (!v12)
  {
    v9 = 1685348671;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v20 = "CAFAudioFile.cpp";
    LOWORD(v21[0]) = 1024;
    *(v21 + 2) = 3052;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  no packet table for variable-sized packets";
    goto LABEL_12;
  }

  if (a2->mPacket >= *(v12 + 24))
  {
    v9 = 1885563711;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v20 = "CAFAudioFile.cpp";
    LOWORD(v21[0]) = 1024;
    *(v21 + 2) = 3053;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  packet table unexpectedly truncated";
    goto LABEL_12;
  }

  CompressedPacketTable::operator[](buf, v12, a2->mPacket);
  v4 = v21[0];
  v17 = v21[0];
  a2->mIsIndependentlyDecodable = 0;
  p_mIsIndependentlyDecodable = &a2->mIsIndependentlyDecodable;
  a2->mNumberPrerollPackets = 0;
  p_mNumberPrerollPackets = &a2->mNumberPrerollPackets;
  if (!v4)
  {
    begin = 0;
    goto LABEL_6;
  }

LABEL_5:
  std::vector<unsigned char>::__append(&v15, v4);
  begin = v15.__begin_;
LABEL_6:
  v9 = (*(*this + 88))(this, 0, &v17, 0, a2->mPacket, &v16, begin);
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "CAFAudioFile.cpp";
      LOWORD(v21[0]) = 1024;
      *(v21 + 2) = 3063;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadPackets failed", buf, 0x12u);
    }
  }

  else
  {
    CAFAudioFile::GetPacketDependencyForPacket(this, begin, v17, &v18);
    v9 = 0;
    *p_mIsIndependentlyDecodable = v18 != 0;
    *p_mNumberPrerollPackets = DWORD1(v18);
  }

  if (begin)
  {
    v15.__end_ = begin;
    operator delete(begin);
  }

LABEL_20:
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

_DWORD *CAFAudioFile::GetPacketDependencyForPacket(void *a1, char *a2, int a3, void *a4)
{
  *a4 = 1;
  result = (*(*a1 + 280))(a1);
  if (result)
  {
    v9 = a1[32];
    if (!v9)
    {
      LODWORD(__n) = 0;
      memset(&v17, 0, sizeof(v17));
      if ((*(*a1 + 336))(a1, &__n, 0))
      {
        v10 = 1;
      }

      else
      {
        v10 = __n == 0;
      }

      if (!v10)
      {
        std::vector<unsigned char>::__append(&v17, __n);
        if ((*(*a1 + 344))(a1, &__n, v17.__begin_))
        {
          LODWORD(__n) = 0;
        }
      }

      operator new();
    }

    v17.__begin_ = a2;
    v17.__end_ = a2;
    v17.__end_cap_.__value_ = &a2[a3];
    v18 = 0;
    if ((a2 & 3) != 0)
    {
      v12 = 0;
      v13 = (a2 ^ 3) & 3;
      v14 = a2 + 1;
      v15 = a2;
      do
      {
        if (v15 >= &a2[a3])
        {
          v16 = 255;
        }

        else
        {
          v16 = *v15;
        }

        v12 = v16 | (v12 << 8);
        ++v15;
        v10 = (v14++ & 3) == 0;
      }

      while (!v10);
      v17.__begin_ = &a2[v13 + 1];
      LODWORD(v18) = v12 << ((8 * v13) ^ 0x18);
      HIDWORD(v18) = 8 * ((a2 ^ 3) & 3) + 8;
    }

    return PacketDependencyParser::PacketDependency(v9, &v17, a4);
  }

  return result;
}

void sub_18F840388(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v2, 0x1000C403E1C8BA9);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t CAFAudioFile::ScanForIndependentPacket(uint64_t a1, int a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 280))(a1))
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(a1 + 44) == 0;
    }

    else
    {
      v7 = 1;
    }

    v10 = !v7 || *(a1 + 120) == 0;
    v11 = *(a1 + 24);
    if (a2 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    v27 = -1;
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    memset(__p, 0, sizeof(__p));
    v13 = *a3;
    v23 = 1885563711;
    if (v13 >= (*(*a1 + 248))(a1))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CAFAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2987;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid packet number", buf, 0x12u);
      }

      v20 = -1;
    }

    else
    {
      v22 = a3;
      v14 = v12 + *a3;
      v15 = 16 * v14;
      v16 = -1;
      while (1)
      {
        *buf = xmmword_18F901C70;
        if (v14 < v16 || v14 >= v16 + v26)
        {
          v26 = 0;
          if (CAFAudioFile::LoadPacketsForScanning(a1, v14, a2, (v11 + v11), &v27, &v26, v25, __p) == 1885563711 || !v26)
          {
            v23 = 0;
            v20 = -1;
            a3 = v22;
            goto LABEL_33;
          }

          v16 = v27;
        }

        if (v10)
        {
          v17 = (v14 - v16) * v6;
          v18 = v6;
        }

        else
        {
          v19 = __p[0] + v15 + -16 * v16;
          v18 = *(v19 + 3);
          v17 = *v19;
        }

        CAFAudioFile::GetPacketDependencyForPacket(a1, v25[0] + v17, v18, buf);
        if (*buf)
        {
          break;
        }

        v14 += v12;
        v15 += 16 * v12;
      }

      v23 = 0;
      a3 = v22;
      if (v14 == *v22)
      {
        v20 = -1;
      }

      else
      {
        v20 = v14;
      }
    }

LABEL_33:
    a3[1] = v20;
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v25[0])
    {
      operator delete(v25[0]);
    }

    v21 = *MEMORY[0x1E69E9840];
    return v23;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    return AudioFileObject::ScanForIndependentPacket(a1, a2, a3);
  }
}

void sub_18F840700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::LoadPacketsForScanning(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, unsigned int *a6, void *a7, uint64_t a8)
{
  v65 = *MEMORY[0x1E69E9840];
  v16 = *(a1 + 40);
  v15 = *(a1 + 44);
  v17 = (*(*a1 + 248))(a1);
  v18 = a3;
  v61 = 0;
  if (a3 == 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = -1;
  }

  memset(&v60, 0, sizeof(v60));
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v56 = a6;
  *a6 = 0;
  if (a2 < 0 || (v20 = v17, v17 <= a2))
  {
    v25 = 1885563711;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    *buf = 136315394;
    v63 = "CAFAudioFile.cpp";
    LOWORD(v64[0]) = 1024;
    *(v64 + 2) = 2852;
    v26 = MEMORY[0x1E69E9C10];
    v27 = "%25s:%-5d  invalid packet number";
LABEL_13:
    _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x12u);
    goto LABEL_68;
  }

  if (*(a1 + 40))
  {
    v21 = *(a1 + 44);
    if (v21)
    {
      LODWORD(v21) = vcvtps_u32_f32(a4 / v15);
      v22 = a6;
      *a6 = v21;
      v23 = v16 * v21;
      v61 = v23;
      if (v18 == 1)
      {
        if ((v21 + a2) > v17)
        {
          v24 = 0;
          LODWORD(v21) = v17 - a2;
          *a6 = v17 - a2;
LABEL_21:
          v29 = a7;
          goto LABEL_34;
        }
      }

      else if (v21 > a2)
      {
        v24 = 0;
        *a6 = a2;
        LODWORD(v21) = a2;
        goto LABEL_21;
      }

      v24 = 0;
      goto LABEL_21;
    }
  }

  v54 = a8;
  v28 = *(a1 + 120);
  if (!v28)
  {
    v25 = 1685348671;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    *buf = 136315394;
    v63 = "CAFAudioFile.cpp";
    LOWORD(v64[0]) = 1024;
    *(v64 + 2) = 2872;
    v26 = MEMORY[0x1E69E9C10];
    v27 = "%25s:%-5d  no packet table for variable-sized packets";
    goto LABEL_13;
  }

  if (v17 < *(v28 + 24))
  {
    v25 = 1885563711;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    *buf = 136315394;
    v63 = "CAFAudioFile.cpp";
    LOWORD(v64[0]) = 1024;
    *(v64 + 2) = 2873;
    v26 = MEMORY[0x1E69E9C10];
    v27 = "%25s:%-5d  packet table unexpectedly truncated";
    goto LABEL_13;
  }

  v52 = a5;
  v53 = a2;
  v51 = v18;
  v23 = 0;
  v30 = a2;
  if (a4 >= 1)
  {
    v31 = 0;
    do
    {
      v32 = v15;
      if (!v15)
      {
        CompressedPacketTable::operator[](buf, v28, v30);
        v32 = HIDWORD(v63);
      }

      CompressedPacketTable::operator[](buf, v28, v30);
      v23 += v64[0];
      v61 = v23;
      v30 += v19;
      if (v30 < 0)
      {
        break;
      }

      if (v30 >= v20)
      {
        break;
      }

      v31 += v32;
    }

    while (v31 < a4);
  }

  a2 = v53;
  v33 = v30 - v53;
  if (v30 - v53 < 0)
  {
    v33 = v53 - v30;
  }

  v22 = v56;
  *v56 = v33;
  std::vector<AudioStreamPacketDescription>::resize(&v57, v33);
  v24 = v57;
  LODWORD(v21) = *v56;
  a8 = v54;
  v29 = a7;
  a5 = v52;
  v18 = v51;
LABEL_34:
  end = 0;
  if (!v21 || !v23)
  {
    v36 = a2;
    begin = 0;
LABEL_44:
    *a5 = v36;
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v29, begin, end, end - begin);
    v38 = v58;
    v39 = v58 - v24;
    v40 = *(a8 + 16);
    v41 = *a8;
    if (v40 - *a8 < (v58 - v24))
    {
      v42 = v39 >> 4;
      if (v41)
      {
        *(a8 + 8) = v41;
        operator delete(v41);
        v40 = 0;
        *a8 = 0;
        *(a8 + 8) = 0;
        *(a8 + 16) = 0;
      }

      if (!(v42 >> 60))
      {
        v43 = v40 >> 3;
        if (v40 >> 3 <= v42)
        {
          v43 = v39 >> 4;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF0)
        {
          v44 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v44 = v43;
        }

        std::vector<AudioStreamPacketDescription>::__vallocate[abi:ne200100](a8, v44);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v45 = *(a8 + 8);
    v46 = v45 - v41;
    if (v45 - v41 >= v39)
    {
      if (v58 != v24)
      {
        memmove(v41, v24, v39);
      }

      v25 = 0;
      v48 = &v41[v39];
    }

    else
    {
      if (v45 != v41)
      {
        memmove(*a8, v24, v45 - v41);
        v45 = *(a8 + 8);
      }

      v47 = v38 - &v24[v46];
      if (v38 != &v24[v46])
      {
        memmove(v45, &v24[v46], v38 - &v24[v46]);
      }

      v25 = 0;
      v48 = &v45[v47];
    }

    *(a8 + 8) = v48;
    goto LABEL_64;
  }

  v35 = a2 - v21;
  if (v18 == -1)
  {
    v36 = v35 + 1;
  }

  else
  {
    v36 = a2;
  }

  std::vector<unsigned char>::__append(&v60, v23);
  begin = v60.__begin_;
  v25 = (*(*a1 + 88))(a1, 0, &v61, v24, v36, v22, v60.__begin_);
  if (!v25)
  {
    end = v60.__end_;
    goto LABEL_44;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v63 = "CAFAudioFile.cpp";
    LOWORD(v64[0]) = 1024;
    *(v64 + 2) = 2892;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadPackets failed", buf, 0x12u);
  }

LABEL_64:
  if (v24)
  {
    v58 = v24;
    operator delete(v24);
    begin = v60.__begin_;
  }

  if (begin)
  {
    v60.__end_ = begin;
    operator delete(begin);
  }

LABEL_68:
  v49 = *MEMORY[0x1E69E9840];
  return v25;
}

void sub_18F840C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::SetFormatList(CAFAudioFile *this, unsigned int a2, const AudioFormatListItem *a3)
{
  v6 = a2 / 0x30uLL;
  CADeprecated::CAAutoFree<CAFAudioFormatListItem>::CAAutoFree(&v19, v6);
  v7 = v19;
  if (a2 >= 0x30)
  {
    v8 = 0;
    p_mChannelsPerFrame = &a3->mASBD.mChannelsPerFrame;
    do
    {
      v10 = *(p_mChannelsPerFrame - 5);
      v11 = *(p_mChannelsPerFrame - 4);
      if (v10 == 1819304813)
      {
        v12 = *(p_mChannelsPerFrame - 4) & 2;
        if (v11)
        {
          v11 = v12 ^ 3;
        }

        else
        {
          v11 = v12 ^ 2;
        }
      }

      v13 = *(p_mChannelsPerFrame - 7);
      v14 = *(p_mChannelsPerFrame - 3);
      v15 = &v7[v8];
      *(&v14 + 1) = *p_mChannelsPerFrame;
      *(v15 + 2) = v10;
      *(v15 + 3) = v11;
      *(v15 + 1) = v14;
      v16 = p_mChannelsPerFrame[3];
      *v15 = bswap64(v13);
      *(v15 + 8) = vrev32q_s8(*&v7[v8 + 8]);
      *(v15 + 3) = vrev32_s8(*(&v14 + 8));
      *(v15 + 8) = bswap32(v16);
      v8 += 36;
      p_mChannelsPerFrame += 12;
    }

    while (36 * v6 != v8);
  }

  v17 = (*(*this + 600))(this, 1818522467, 0, (36 * v6), v7);
  if (v19)
  {
    free(v19);
  }

  return v17;
}

void sub_18F840E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

void *CADeprecated::CAAutoFree<CAFAudioFormatListItem>::CAAutoFree(void *a1, uint64_t a2)
{
  *a1 = 0;
  v4 = 36 * a2;
  v5 = malloc_type_malloc(36 * a2, 0xD7524C8FuLL);
  v6 = v5;
  if (a2 && !v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v5, v4);
  *a1 = v6;
  return a1;
}

uint64_t CAFAudioFile::UpdateDataFormat(CAFAudioFile *this, const AudioStreamBasicDescription *a2)
{
  result = (*(*this + 184))(this);
  if (result)
  {
    return result;
  }

  v5 = *&a2->mSampleRate;
  mFormatID = a2->mFormatID;
  mFormatFlags = a2->mFormatFlags;
  v8 = *&a2->mBytesPerPacket;
  v9 = *&a2->mChannelsPerFrame;
  v19.i64[0] = mFormatID;
  if (mFormatID != 1819304813)
  {
    v10 = mFormatFlags;
    goto LABEL_8;
  }

  if ((mFormatFlags & 2) == 0)
  {
    v19.i32[1] = 2;
    v10 = 3;
    if ((mFormatFlags & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v19.i32[1] = v10;
    goto LABEL_9;
  }

  v10 = 1;
  if (mFormatFlags)
  {
    goto LABEL_8;
  }

LABEL_9:
  result = 1685348671;
  v19.i64[1] = v8;
  v18 = bswap64(v5);
  v19 = vrev32q_s8(v19);
  v20 = vrev32_s8(v9);
  v11 = *(this + 18);
  v12 = *(this + 19) - v11;
  if (v12)
  {
    v13 = 0;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
    v15 = 1;
    while (1)
    {
      v16 = v11 + 24 * v13;
      if (*v16 == 1684370275)
      {
        break;
      }

      v13 = v15;
      if (v14 <= v15++)
      {
        return result;
      }
    }

    return (*(**(this + 13) + 56))(*(this + 13), 0, *(v16 + 16) + 12, 32, &v18, 0);
  }

  return result;
}

uint64_t CAFAudioFile::SetProperty(CAFAudioFile *this, int a2, unsigned int a3, uint64_t *a4)
{
  switch(a2)
  {
    case 1751217000:
      if (a3 != 20)
      {
        return 561211770;
      }

      v11 = *(*this + 600);

      return v11();
    case 1920168566:
      result = 1869627199;
      if ((*(this + 100) & 2) != 0)
      {
        v8 = *(this + 15);
        if (!v8 || !*(v8 + 24))
        {
          if (a3 < 8)
          {
            return 561211770;
          }

          v9 = *(this + 25);
          v10 = *a4;
          *(this + 25) = *a4;
          if (v10 != v9)
          {
            CAFAudioFile::CalcSoundDataAlign(this);
            (*(*this + 64))(this);
          }

          return 0;
        }
      }

      break;
    case 1886283375:
      if (a3 >= 8)
      {
        v6 = *a4 + *(a4 + 2) + *(a4 + 3);
        if (CAFAudioFile::NumberValidFrames(this) + *(this + 46) + *(this + 47) != v6)
        {
          return 4294967246;
        }

        result = 0;
        *(this + 22) = *a4;
        *(this + 23) = a4[1];
        *(this + 136) = 1;
        return result;
      }

      return 561211770;
    default:

      return AudioFileObject::SetProperty(this, a2, a3, a4);
  }

  return result;
}

uint64_t CAFAudioFile::Optimize(CAFAudioFile *this)
{
  v48 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v2 = *(this + 18);
  v3 = *(this + 19);
  v4 = (this + 144);
  for (i = 8; v2 != v3; v2 += 24)
  {
    if (*v2 != 1684108385 && *v2 != 1718773093)
    {
      i += *(v2 + 8);
    }
  }

  __p = 0;
  v37 = 0;
  v38 = 0;
  CADeprecated::CAAutoFree<char>::CAAutoFree(&v35, i);
  v7 = v35;
  v42 = 8;
  v8 = (*(**(this + 13) + 48))(*(this + 13), 0, 0, 8, v35, &v42);
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v43 = 136315394;
      v44 = "CAFAudioFile.cpp";
      v45 = 1024;
      v46 = 280;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes failed", v43, 0x12u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v10 = *(this + 18);
  v9 = *(this + 19);
  if (v10 == v9)
  {
    goto LABEL_22;
  }

  v11 = &v7[v42];
  do
  {
    if (*v10 != 1684108385 && *v10 != 1718773093)
    {
      v42 = *(v10 + 8);
      *buf = *v10;
      *&buf[16] = v11 - v35;
      std::vector<ChunkInfo64>::push_back[abi:ne200100](&__p, buf);
      v13 = (*(**(this + 13) + 48))(*(this + 13), 0, *(v10 + 16), v42, v11, &v42);
      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v43 = 136315394;
          v44 = "CAFAudioFile.cpp";
          v45 = 1024;
          v46 = 296;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes failed", v43, 0x12u);
        }

        v32 = __cxa_allocate_exception(4uLL);
        *v32 = v13;
        __cxa_throw(v32, MEMORY[0x1E69E5478], 0);
      }

      v11 += v42;
      v9 = *(this + 19);
    }

    v10 += 24;
  }

  while (v10 != v9);
  v14 = v9 - *v4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 1;
    goto LABEL_23;
  }

  v15 = 0;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
  v17 = 1;
  while (1)
  {
    v18 = *v4 + 24 * v15;
    if (*v18 == 1684108385)
    {
      break;
    }

    v15 = v17;
    if (v16 <= v17++)
    {
      goto LABEL_22;
    }
  }

  v24 = *v18;
  v25 = *(v18 + 16);
  v41 = v25;
  *v40 = v24;
  v26 = i;
  if (*(this + 138))
  {
    v27 = *(this + 24);
    if (!v27)
    {
      CAFAudioFile::CalcSoundDataAlign(this);
      v27 = *(this + 24);
    }

    v28 = i + 12;
    if (v27 - 16 > (i + 12))
    {
      v28 = v27 - 16;
    }

    v26 = v27 - 16 + ((v28 - v27 + 4111) & 0xFFFFFFFFFFFFF000);
  }

  v41 = v26;
  if (v25 <= v26)
  {
    v20 = (*(**(this + 13) + 32))(*(this + 13), v40[1] + v26);
    if (v20)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CAFAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 373;
        v29 = MEMORY[0x1E69E9C10];
        v30 = "%25s:%-5d  SetSize Failed";
LABEL_50:
        _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_ERROR, v30, buf, 0x12u);
        goto LABEL_51;
      }

      goto LABEL_51;
    }
  }

  if (v26 != v25)
  {
    AudioFileObject::MoveData(this, v25, v26, v40[1]);
    *(this + 9) = v26 + 16;
  }

  if (v25 > v26)
  {
    v20 = (*(**(this + 13) + 32))(*(this + 13), v40[1] + v26);
    if (v20)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CAFAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 385;
        v29 = MEMORY[0x1E69E9C10];
        v30 = "%25s:%-5d  SetSize Failed";
        goto LABEL_50;
      }

LABEL_51:
      v21 = 6;
      goto LABEL_23;
    }
  }

  v20 = (*(**(this + 13) + 56))(*(this + 13), 0, 0, i, v35, &v39);
  if (v20)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 389;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "%25s:%-5d  FSWrite Failed";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  if (*(this + 138))
  {
    if (v39 + 12 <= v26)
    {
      *buf = 1718773093;
      *&buf[8] = v26 - v39;
      *&buf[16] = v39;
      std::vector<ChunkInfo64>::push_back[abi:ne200100](&__p, buf);
      v42 = 0;
      v31 = (*(*this + 776))(this, buf, &v42);
      if (v31)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v43 = 136315394;
          v44 = "CAFAudioFile.cpp";
          v45 = 1024;
          v46 = 429;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  WriteBytes failed", v43, 0x12u);
        }

        v34 = __cxa_allocate_exception(4uLL);
        *v34 = v31;
        __cxa_throw(v34, MEMORY[0x1E69E5478], 0);
      }
    }
  }

  std::vector<ChunkInfo64>::push_back[abi:ne200100](&__p, v40);
  std::vector<ChunkInfo64>::__assign_with_size[abi:ne200100]<ChunkInfo64*,ChunkInfo64*>(v4, __p, v37, 0xAAAAAAAAAAAAAAABLL * ((v37 - __p) >> 3));
  (*(*this + 776))(this, v40, &v39);
  v21 = 0;
  v20 = 0;
  *(this + 20) = 1;
LABEL_23:
  if (v35)
  {
    free(v35);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v21 && v21 != 6)
  {
    v20 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_18F841940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p)
{
  if (a10)
  {
    free(a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v13 = *__cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x18F841428);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::InitializeDataSource(CAFAudioFile *this, const AudioStreamBasicDescription *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CAFAudioFile::InitializeCAFChunks(this);
  if (v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "CAFAudioFile.cpp";
    v7 = 1024;
    v8 = 1158;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  InitializeCAFChunks", &v5, 0x12u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CAFAudioFormat::GetAvailableStreamDescriptions(CAFAudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a2 == 1819304813)
  {
    v6 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    memset(v35, 0, sizeof(v35));
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    __src = 0u;
    v7 = v35 + 2;
    v40 = 0;
    do
    {
      v8 = v6 + 8;
      *(v7 - 28) = 0xE6C70636DLL;
      *(v7 - 50) = v6 + 8;
      *(v7 - 53) = 1;
      if (v6)
      {
        *(v7 - 3) = 0xC6C70636DLL;
        *v7 = v8;
        *(v7 - 3) = 1;
      }

      v7 += 10;
      v6 += 8;
    }

    while (v8 != 32);
    *(&v31 + 1) = 0xB6C70636DLL;
    LODWORD(v33) = 32;
    DWORD1(v32) = 1;
    *&v34 = 0xB6C70636DLL;
    DWORD2(v35[0]) = 64;
    HIDWORD(v34) = 1;
    *&v36 = 0x96C70636DLL;
    DWORD2(v37) = 32;
    HIDWORD(v36) = 1;
    *(&v38 + 1) = 0x96C70636DLL;
    LODWORD(v40) = 64;
    v9 = 11;
    DWORD1(v39) = 1;
LABEL_7:
    if (*a3 / 0x28 < v9)
    {
      v9 = *a3 / 0x28;
    }

    v10 = 40 * v9;
    *a3 = v10;
    if (__dst)
    {
      memcpy(__dst, &__src, v10);
    }

    v11 = 0;
    goto LABEL_13;
  }

  v20 = 0;
  v11 = (*(*this + 96))(this, &v20, 0);
  if (v11)
  {
    goto LABEL_13;
  }

  v16 = v20;
  v17 = v20 >> 2;
  CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(&v19, v17, 1);
  v11 = (*(*this + 96))(this, &v20, v19);
  if (v11)
  {
    if (v19)
    {
      free(v19);
    }
  }

  else
  {
    if (v16 >= 4)
    {
      v18 = 0;
      while (*(v19 + v18) != a2)
      {
        v18 += 4;
        if (4 * v17 == v18)
        {
          goto LABEL_23;
        }
      }

      free(v19);
      *&v23 = 0;
      __src = 0u;
      v22 = 0u;
      DWORD2(__src) = a2;
      v9 = 1;
      goto LABEL_7;
    }

    if (v19)
    {
LABEL_23:
      free(v19);
    }

    *a3 = 0;
    v11 = 1718449215;
  }

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_18F841DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFormat::GetAvailableFormatIDs(CAFAudioFormat *this, unsigned int *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = 0;
  v20 = &v21;
  outPropertyDataSize = 0;
  if (!AudioFormatGetPropertyInfo(0x61636966u, 0, 0, &outPropertyDataSize))
  {
    outPropertyData = 0;
    CADeprecated::CAAutoFree<AIFF_TextChunk>::allocBytes(&outPropertyData, outPropertyDataSize);
    v5 = outPropertyData;
    if (AudioFormatGetProperty(0x61636966u, 0, 0, &outPropertyDataSize, outPropertyData) || outPropertyDataSize < 4)
    {
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = outPropertyDataSize >> 2;
      v7 = v5;
      do
      {
        std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v20, *v7++);
        --v6;
      }

      while (v6);
    }

    free(v5);
  }

LABEL_9:
  ioPropertyDataSize = 0;
  if (!AudioFormatGetPropertyInfo(0x61636F66u, 0, 0, &ioPropertyDataSize))
  {
    outPropertyData = 0;
    CADeprecated::CAAutoFree<AIFF_TextChunk>::allocBytes(&outPropertyData, ioPropertyDataSize);
    v8 = outPropertyData;
    if (AudioFormatGetProperty(0x61636F66u, 0, 0, &ioPropertyDataSize, outPropertyData) || ioPropertyDataSize < 4)
    {
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = ioPropertyDataSize >> 2;
      v10 = v8;
      do
      {
        std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v20, *v10++);
        --v9;
      }

      while (v9);
    }

    free(v8);
  }

LABEL_17:
  *a2 = 4 * v22;
  if (a3)
  {
    v11 = v20;
    if (v20 != &v21)
    {
      v12 = 0;
      do
      {
        a3[v12] = *(v11 + 7);
        v13 = v11[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v11[2];
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }

        ++v12;
        v11 = v14;
      }

      while (v14 != &v21);
    }
  }

  return 0;
}

void sub_18F842000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(a1);
}

void CAFAudioFormat::GetFileTypeName(CAFAudioFormat *this, CFTypeRef *a2)
{
  CABundleLocker::CABundleLocker(&v3);
  *a2 = CFRetain(@"CAF");
  CABundleLocker::~CABundleLocker(&v3);
}

const __CFArray *CAFAudioFormat::GetMIMETypes(CAFAudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"audio/x-caf";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *CAFAudioFormat::GetUTIs(CAFAudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.coreaudio-format";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *CAFAudioFormat::GetExtensions(CAFAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"caf";
  values[1] = @"caff";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *AAAnalyzer::Cleanup(void *this)
{
  this[28] = 0;
  this[29] = 0;
  this[30] = 0;
  return this;
}

uint64_t AAAnalyzer::CompleteAnalysis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  *(a1 + 224) = a2;
  *(a1 + 232) = a3;
  *(a1 + 240) = a4;
  a5.n128_u32[0] = 1120403456;
  result = AAAnalyzer::CallProgressCallback(a1, a5);
  if (!result)
  {
    *(a1 + 256) = 0;
  }

  return result;
}

uint64_t AAAnalyzer::CallProgressCallback(AAAnalyzer *this, __n128 a2)
{
  v2 = a2.n128_u32[0];
  v4 = *(this + 28);
  if (v4)
  {
    result = v4(*(this + 2), *(this + 29), a2.n128_f32[0]);
  }

  else
  {
    result = 0;
  }

  v6 = *(this + 30);
  if (v6)
  {
    v7 = *(this + 2);
    v8 = *(v6 + 16);
    v9 = *(this + 30);
    a2.n128_u32[0] = v2;

    return v8(v9, v7, a2);
  }

  return result;
}

uint64_t AAAnalyzer::PushAudio(AAAnalyzer *this, unsigned int a2, const AudioBufferList *a3, const AudioStreamPacketDescription *a4)
{
  if (*(this + 256) != 1)
  {
    return 4294963436;
  }

  CrashIfClientProvidedBogusAudioBufferList();
  return 0;
}

uint64_t AAAnalyzer::PrepareWithFile(AudioFileID *outAudioFile, CFURLRef inFileRef, AudioFileTypeID inFileTypeHint)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = outAudioFile + 11;
  v6 = outAudioFile[11];
  if (v6)
  {
    AudioFileClose(v6);
  }

  ioDataSize = 0;
  v8 = AudioFileOpenURL(inFileRef, kAudioFileReadPermission, inFileTypeHint, v7);
  if (v8)
  {
    Property = v8;
    if (kAASubsystem)
    {
      v10 = *kAASubsystem;
      if (!*kAASubsystem)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *v36 = "AAAnalyzer.cpp";
      *&v36[8] = 1024;
      *&v36[10] = 192;
      v37 = 2048;
      v38 = outAudioFile;
      v39 = 1024;
      v40 = Property;
      v14 = "%25s:%-5d AAAnalyzer::PrepareWithFile (%p): AudioFileOpenURL failed (err = %d)\n";
LABEL_19:
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v14, buf, 0x22u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  outPropertyData = 0;
  ioDataSize = 8;
  if (!AudioFileGetProperty(*v7, 0x6C6F7564u, &ioDataSize, &outPropertyData))
  {
    *buf = 1;
    LODWORD(v32) = 0;
    if (CFDictionaryContainsKey(outPropertyData, @"sound check info"))
    {
      v17 = outAudioFile[31];
      v42.length = CFArrayGetCount(v17);
      v42.location = 0;
      if (CFArrayContainsValue(v17, v42, @"sound check info"))
      {
        v30 = 8;
        Value = CFDictionaryGetValue(outPropertyData, @"sound check info");
        *&v36[4] = &v30;
        LODWORD(v32) = 1;
        AAAnalyzer::CallResultsCallback(outAudioFile, @"sound check info", buf, &v32);
        if ((v32 & 2) != 0)
        {
          RemoveKeyFromList(outAudioFile[31], @"sound check info");
        }
      }
    }

    if (CFDictionaryContainsKey(outPropertyData, @"main loudness parameters"))
    {
      v18 = outAudioFile[31];
      v43.length = CFArrayGetCount(v18);
      v43.location = 0;
      if (CFArrayContainsValue(v18, v43, @"main loudness parameters"))
      {
        Value = 0;
        v30 = 8;
        Value = CFDictionaryGetValue(outPropertyData, @"main loudness parameters");
        *&v36[4] = &v30;
        LODWORD(v32) = 1;
        AAAnalyzer::CallResultsCallback(outAudioFile, @"main loudness parameters", buf, &v32);
        if ((v32 & 2) != 0)
        {
          RemoveKeyFromList(outAudioFile[31], @"main loudness parameters");
        }
      }
    }

    if (CFDictionaryContainsKey(outPropertyData, @"additional loudness parameters"))
    {
      v19 = outAudioFile[31];
      v44.length = CFArrayGetCount(v19);
      v44.location = 0;
      if (CFArrayContainsValue(v19, v44, @"additional loudness parameters"))
      {
        Value = 0;
        v30 = 8;
        Value = CFDictionaryGetValue(outPropertyData, @"additional loudness parameters");
        *&v36[4] = &v30;
        LODWORD(v32) = 1;
        AAAnalyzer::CallResultsCallback(outAudioFile, @"additional loudness parameters", buf, &v32);
        if ((v32 & 2) != 0)
        {
          RemoveKeyFromList(outAudioFile[31], @"additional loudness parameters");
        }
      }
    }
  }

  if (outPropertyData)
  {
    CFRelease(outPropertyData);
  }

  v11 = outAudioFile[8];
  if (outAudioFile[9] != v11)
  {
    outAudioFile[9] = v11;
  }

  if (AudioFileGetPropertyInfo(*v7, 0x6D676963u, &ioDataSize, 0) || !ioDataSize)
  {
    goto LABEL_40;
  }

  v12 = outAudioFile[8];
  v13 = (outAudioFile[9] - v12);
  if (ioDataSize <= v13)
  {
    if (ioDataSize < v13)
    {
      outAudioFile[9] = (v12 + ioDataSize);
    }
  }

  else
  {
    std::vector<unsigned char>::__append((outAudioFile + 8), ioDataSize - v13);
    v12 = outAudioFile[8];
  }

  Property = AudioFileGetProperty(*v7, 0x6D676963u, &ioDataSize, v12);
  if (!Property)
  {
LABEL_40:
    if (!AudioFileGetPropertyInfo(*v7, 0x666C7374u, &ioDataSize, 0) && ioDataSize)
    {
      v30 = 0;
      CADeprecated::CAAutoFree<AudioFormatListItem>::alloc(&v30, ioDataSize);
      v20 = v30;
      Property = AudioFileGetProperty(*v7, 0x666C7374u, &ioDataSize, v30);
      if (Property)
      {
        if (kAASubsystem)
        {
          v21 = *kAASubsystem;
          if (!*kAASubsystem)
          {
LABEL_68:
            if (v20)
            {
              free(v20);
            }

            goto LABEL_20;
          }
        }

        else
        {
          v21 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *v36 = "AAAnalyzer.cpp";
          *&v36[8] = 1024;
          *&v36[10] = 263;
          v37 = 2048;
          v38 = outAudioFile;
          v39 = 1024;
          v40 = Property;
          _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAnalyzer::PrepareWithFile (%p): AudioFileGetProperty kAudioFilePropertyFormatList failed (err = %d)\n", buf, 0x22u);
        }

        goto LABEL_68;
      }

      v22 = *v20;
      v23 = v20[1];
      outAudioFile[6] = *(v20 + 4);
      *(outAudioFile + 1) = v22;
      *(outAudioFile + 2) = v23;
      free(v20);
    }

    if (AudioFileGetPropertyInfo(*v7, 0x636D6170u, &ioDataSize, 0))
    {
LABEL_47:
      v32 = 0;
      ioDataSize = 8;
      Property = AudioFileGetProperty(*v7, 0x70636E74u, &ioDataSize, &v32);
      if (Property)
      {
        if (kAASubsystem)
        {
          v10 = *kAASubsystem;
          if (!*kAASubsystem)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *v36 = "AAAnalyzer.cpp";
          *&v36[8] = 1024;
          *&v36[10] = 287;
          v37 = 2048;
          v38 = outAudioFile;
          v39 = 1024;
          v40 = Property;
          v14 = "%25s:%-5d AAAnalyzer::PrepareWithFile (%p): AudioFileGetProperty kAudioFilePropertyAudioDataPacketCount failed (err = %d)\n";
          goto LABEL_19;
        }
      }

      else
      {
        Value = v32;
        ioDataSize = 24;
        Property = AudioFileGetProperty(*v7, 0x706B6672u, &ioDataSize, &v30);
        if (Property)
        {
          if (kAASubsystem)
          {
            v10 = *kAASubsystem;
            if (!*kAASubsystem)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v10 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *v36 = "AAAnalyzer.cpp";
            *&v36[8] = 1024;
            *&v36[10] = 297;
            v37 = 2048;
            v38 = outAudioFile;
            v39 = 1024;
            v40 = Property;
            v14 = "%25s:%-5d AAAnalyzer::PrepareWithFile (%p): AudioFileGetProperty kAudioFilePropertyPacketToFrame failed (err = %d)\n";
            goto LABEL_19;
          }
        }

        else
        {
          outAudioFile[24] = v30;
          v29 = 0;
          v26 = *(outAudioFile + 8);
          if (v26)
          {
            v29 = *(outAudioFile + 8);
            *(outAudioFile + 24) = 0x8000 / v26;
            Property = (*(*outAudioFile + 4))(outAudioFile, outAudioFile + 2, outAudioFile[7] + 16, outAudioFile[8], *(outAudioFile + 18) - outAudioFile[8]);
            if (Property)
            {
              if (kAASubsystem)
              {
                v10 = *kAASubsystem;
                if (!*kAASubsystem)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                v10 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *v36 = "AAAnalyzer.cpp";
                *&v36[8] = 1024;
                *&v36[10] = 324;
                v37 = 2048;
                v38 = outAudioFile;
                v39 = 1024;
                v40 = Property;
                v14 = "%25s:%-5d AAAnalyzer::PrepareWithFile (%p): Prepare failed (err = %d)\n";
                goto LABEL_19;
              }
            }
          }

          else
          {
            ioDataSize = 4;
            Property = AudioFileGetProperty(*v7, 0x70737A65u, &ioDataSize, &v29);
            if (!Property)
            {
              *(outAudioFile + 24) = 0x8000 / v29;
              v27 = outAudioFile[13];
              if (v27)
              {
                MEMORY[0x193ADF1F0](v27, 0x1000C80451B5BE8);
                v28 = *(outAudioFile + 24);
              }

              operator new[]();
            }

            if (kAASubsystem)
            {
              v10 = *kAASubsystem;
              if (!*kAASubsystem)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v10 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *v36 = "AAAnalyzer.cpp";
              *&v36[8] = 1024;
              *&v36[10] = 309;
              v37 = 2048;
              v38 = outAudioFile;
              v39 = 1024;
              v40 = Property;
              v14 = "%25s:%-5d AAAnalyzer::PrepareWithFile (%p): AudioFileGetProperty kAudioFilePropertyMaximumPacketSize failed (err = %d)\n";
              goto LABEL_19;
            }
          }
        }
      }

      goto LABEL_20;
    }

    v30 = 0;
    CADeprecated::CAAutoFree<AudioChannelLayout>::alloc(&v30, ioDataSize);
    v24 = v30;
    Property = AudioFileGetProperty(*v7, 0x636D6170u, &ioDataSize, v30);
    if (!Property)
    {
      CAAudioChannelLayout::Set((outAudioFile + 7), v24);
      goto LABEL_79;
    }

    if (kAASubsystem)
    {
      v25 = *kAASubsystem;
      if (!*kAASubsystem)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *v36 = "AAAnalyzer.cpp";
      *&v36[8] = 1024;
      *&v36[10] = 276;
      v37 = 2048;
      v38 = outAudioFile;
      v39 = 1024;
      v40 = Property;
      _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAnalyzer::PrepareWithFile (%p): AudioFileGetProperty kAudioFilePropertyChannelLayout failed (err = %d)\n", buf, 0x22u);
    }

LABEL_79:
    if (v24)
    {
      free(v24);
    }

    if (Property)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

  if (kAASubsystem)
  {
    v10 = *kAASubsystem;
    if (!*kAASubsystem)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *v36 = "AAAnalyzer.cpp";
    *&v36[8] = 1024;
    *&v36[10] = 251;
    v37 = 2048;
    v38 = outAudioFile;
    v39 = 1024;
    v40 = Property;
    v14 = "%25s:%-5d AAAnalyzer::PrepareWithFile (%p): AudioFileGetProperty kAudioFilePropertyMagicCookieData failed (err = %d)\n";
    goto LABEL_19;
  }

LABEL_20:
  v15 = *MEMORY[0x1E69E9840];
  return Property;
}

void sub_18F842CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AAAnalyzer::CallResultsCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 200);
  if (v5)
  {
    v5(*(a1 + 8), a2, a3, *(a1 + 208), a4);
  }

  result = *(a1 + 216);
  if (result)
  {
    v7 = *(result + 16);
    v8 = *(a1 + 8);

    return v7();
  }

  return result;
}

void *CADeprecated::CAAutoFree<AudioFormatListItem>::alloc(void **a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  result = malloc_type_malloc(48 * a2, 0x100004064842E6AuLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(exception);
  }

  *a1 = result;
  return result;
}

uint64_t AAAnalyzer::PrepareWithFileStream(AAAnalyzer *this, AudioFileTypeID inFileTypeHint)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = (this + 112);
  v4 = *(this + 14);
  *(v5 - 100) = 1;
  if (v4)
  {
    AudioFileStreamClose(v4);
  }

  v6 = *(this + 8);
  if (*(this + 9) != v6)
  {
    *(this + 9) = v6;
  }

  v7 = AudioFileStreamOpen(this, AAAnalyzer::StreamPropertyListenerProc, AAAnalyzer::StreamPacketsProc, inFileTypeHint, v5);
  if (v7)
  {
    v8 = v7;
    if (kAASubsystem)
    {
      v9 = *kAASubsystem;
      if (!*kAASubsystem)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = "AAAnalyzer.cpp";
      v19 = 1024;
      v20 = 159;
      v21 = 2048;
      v22 = this;
      v23 = 1024;
      v24 = v8;
      v13 = "%25s:%-5d AAAnalyzer::PrepareWithFileStream (%p): AudioFileStreamOpen failed (err = %d)\n";
LABEL_22:
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, v13, buf, 0x22u);
    }
  }

  else
  {
    v10 = *(this + 31);
    v26.length = CFArrayGetCount(v10);
    v26.location = 0;
    if (!CFArrayContainsValue(v10, v26, @"sound check info"))
    {
      v11 = *(this + 31);
      v27.length = CFArrayGetCount(v11);
      v27.location = 0;
      if (!CFArrayContainsValue(v11, v27, @"main loudness parameters"))
      {
        v12 = *(this + 31);
        v28.length = CFArrayGetCount(v12);
        v28.location = 0;
        if (!CFArrayContainsValue(v12, v28, @"additional loudness parameters"))
        {
          v8 = 0;
          goto LABEL_23;
        }
      }
    }

    inPropertyData = 1819243876;
    v8 = AudioFileStreamSetProperty(*v5, 0x6F707470u, 4u, &inPropertyData);
    if (v8)
    {
      if (kAASubsystem)
      {
        v9 = *kAASubsystem;
        if (!*kAASubsystem)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v18 = "AAAnalyzer.cpp";
        v19 = 1024;
        v20 = 171;
        v21 = 2048;
        v22 = this;
        v23 = 1024;
        v24 = v8;
        v13 = "%25s:%-5d AAAnalyzer::PrepareWithFileStream (%p): AudioFileStreamSetProperty kAudioFileStreamProperty_OptionalProperties failed (err = %d)\n";
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t AAAnalyzer::StreamPacketsProc(AAAnalyzer *this, void *a2, uint64_t a3, uint64_t a4, const void *a5, AudioStreamPacketDescription *a6)
{
  v9 = a2;
  v22 = *MEMORY[0x1E69E9840];
  if (kAASubsystem)
  {
    if (*(kAASubsystem + 8))
    {
      v11 = *kAASubsystem;
      if (*kAASubsystem)
      {
        if (os_log_type_enabled(*kAASubsystem, OS_LOG_TYPE_DEBUG))
        {
          v15 = 136316162;
          v16 = "AAAnalyzer.cpp";
          LOWORD(v17) = 1024;
          *(&v17 + 2) = 570;
          WORD3(v17) = 2048;
          *(&v17 + 1) = this;
          v18 = 1024;
          v19 = v9;
          v20 = 1024;
          v21 = a3;
          _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d AAAnalyzer::StreamPacketsProc (%p), inNumberBytes = %d, inNumberPackets = %d\n", &v15, 0x28u);
        }
      }
    }
  }

  v12 = *(this + 11);
  v15 = 1;
  HIDWORD(v16) = v12;
  LODWORD(v17) = v9;
  *(&v17 + 4) = a4;
  result = (*(*this + 56))(this, a3, &v15, a5, a5, a6);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void AAAnalyzer::StreamPropertyListenerProc(AAAnalyzer *this, AudioFileStreamID inAudioFileStream, OpaqueAudioFileStreamID *a3, unsigned int a4, unsigned int *a5)
{
  v5 = a3;
  v32 = *MEMORY[0x1E69E9840];
  if (kAASubsystem)
  {
    v8 = *kAASubsystem;
    if (!*kAASubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "AAAnalyzer.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 426;
    v28 = 2048;
    v29 = this;
    v30 = 1024;
    v31 = v5;
    _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d AAAnalyzer::StreamPropertyListenerProc (%p), inPropertyID = %d", buf, 0x22u);
  }

LABEL_7:
  outPropertyDataSize = 0;
  if (v5 > 1819243875)
  {
    if (v5 > 1885564531)
    {
      if (v5 == 1885564532)
      {
        v22 = 0;
        outPropertyDataSize = 8;
        if (!AudioFileStreamGetProperty(inAudioFileStream, 0x70636E74u, &outPropertyDataSize, &v22))
        {
          *&buf[8] = v22;
          outPropertyDataSize = 24;
          if (!AudioFileStreamGetProperty(inAudioFileStream, 0x706B6672u, &outPropertyDataSize, buf))
          {
            *(this + 24) = *buf;
          }
        }
      }

      else if (v5 == 1919247481 && !(*(*this + 32))(this, this + 16, *(this + 7) + 16, *(this + 8), *(this + 18) - *(this + 8), *(this + 24)))
      {
        *(this + 256) = 1;
      }
    }

    else if (v5 == 1819243876)
    {
      outPropertyData = 0;
      outPropertyDataSize = 8;
      if (!AudioFileStreamGetProperty(inAudioFileStream, 0x6C6F7564u, &outPropertyDataSize, &outPropertyData))
      {
        *buf = 1;
        v24 = 0;
        if (CFDictionaryContainsKey(outPropertyData, @"sound check info"))
        {
          v15 = *(this + 31);
          v33.length = CFArrayGetCount(v15);
          v33.location = 0;
          if (CFArrayContainsValue(v15, v33, @"sound check info"))
          {
            v22 = 8;
            Value = CFDictionaryGetValue(outPropertyData, @"sound check info");
            *&buf[8] = &v22;
            v24 = 1;
            AAAnalyzer::CallResultsCallback(this, @"sound check info", buf, &v24);
            if ((v24 & 2) != 0)
            {
              RemoveKeyFromList(*(this + 31), @"sound check info");
            }
          }
        }

        if (CFDictionaryContainsKey(outPropertyData, @"main loudness parameters"))
        {
          v16 = *(this + 31);
          v34.length = CFArrayGetCount(v16);
          v34.location = 0;
          if (CFArrayContainsValue(v16, v34, @"main loudness parameters"))
          {
            v22 = 8;
            Value = CFDictionaryGetValue(outPropertyData, @"main loudness parameters");
            *&buf[8] = &v22;
            v24 = 1;
            AAAnalyzer::CallResultsCallback(this, @"main loudness parameters", buf, &v24);
            if ((v24 & 2) != 0)
            {
              RemoveKeyFromList(*(this + 31), @"main loudness parameters");
            }
          }
        }

        if (CFDictionaryContainsKey(outPropertyData, @"additional loudness parameters"))
        {
          v17 = *(this + 31);
          v35.length = CFArrayGetCount(v17);
          v35.location = 0;
          if (CFArrayContainsValue(v17, v35, @"additional loudness parameters"))
          {
            v22 = 8;
            Value = CFDictionaryGetValue(outPropertyData, @"additional loudness parameters");
            *&buf[8] = &v22;
            v24 = 1;
            AAAnalyzer::CallResultsCallback(this, @"additional loudness parameters", buf, &v24);
            if ((v24 & 2) != 0)
            {
              RemoveKeyFromList(*(this + 31), @"additional loudness parameters");
            }
          }
        }
      }

      if (outPropertyData)
      {
        CFRelease(outPropertyData);
      }
    }

    else if (v5 == 1835493731 && !AudioFileStreamGetPropertyInfo(inAudioFileStream, 0x6D676963u, &outPropertyDataSize, 0) && outPropertyDataSize)
    {
      v9 = *(this + 8);
      v10 = *(this + 9) - v9;
      if (outPropertyDataSize <= v10)
      {
        if (outPropertyDataSize < v10)
        {
          *(this + 9) = &v9[outPropertyDataSize];
        }
      }

      else
      {
        std::vector<unsigned char>::__append((this + 64), outPropertyDataSize - v10);
        v9 = *(this + 8);
      }

      if (AudioFileStreamGetProperty(inAudioFileStream, 0x6D676963u, &outPropertyDataSize, v9))
      {
        v18 = *(this + 8);
        if (*(this + 9) != v18)
        {
          *(this + 9) = v18;
        }
      }
    }

    goto LABEL_56;
  }

  if (v5 == 1668112752)
  {
    if (AudioFileStreamGetPropertyInfo(inAudioFileStream, 0x636D6170u, &outPropertyDataSize, 0))
    {
      goto LABEL_56;
    }

    *buf = 0;
    CADeprecated::CAAutoFree<AudioChannelLayout>::alloc(buf, outPropertyDataSize);
    v11 = *buf;
    if (!AudioFileStreamGetProperty(inAudioFileStream, 0x636D6170u, &outPropertyDataSize, *buf))
    {
      CAAudioChannelLayout::Set((this + 56), v11);
    }

    goto LABEL_29;
  }

  if (v5 != 1684434292)
  {
    if (v5 != 1718383476 || AudioFileStreamGetPropertyInfo(inAudioFileStream, 0x666C7374u, &outPropertyDataSize, 0) || !outPropertyDataSize)
    {
      goto LABEL_56;
    }

    *buf = 0;
    CADeprecated::CAAutoFree<AudioFormatListItem>::alloc(buf, outPropertyDataSize);
    v11 = *buf;
    if (!AudioFileStreamGetProperty(inAudioFileStream, 0x666C7374u, &outPropertyDataSize, *buf))
    {
      v12 = *&v11->mChannelLayoutTag;
      v13 = *&v11->mChannelDescriptions[0].mChannelFlags;
      *(this + 6) = *&v11[1].mChannelLayoutTag;
      *(this + 1) = v12;
      *(this + 2) = v13;
      goto LABEL_30;
    }

LABEL_29:
    if (!v11)
    {
      goto LABEL_56;
    }

LABEL_30:
    free(v11);
    goto LABEL_56;
  }

  outPropertyDataSize = 40;
  if (!AudioFileStreamGetProperty(inAudioFileStream, 0x64666D74u, &outPropertyDataSize, v20))
  {
    v14 = v20[1];
    *(this + 1) = v20[0];
    *(this + 2) = v14;
    *(this + 6) = v21;
  }

LABEL_56:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_18F8437D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a19)
  {
    free(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AAAnalyzer::Prepare(AAAnalyzer *this, const AudioStreamBasicDescription *a2, const AudioChannelLayout *a3, const void *a4, int a5, uint64_t a6)
{
  v10 = *&a2->mSampleRate;
  v11 = *&a2->mBytesPerPacket;
  *(this + 6) = *&a2->mBitsPerChannel;
  *(this + 1) = v10;
  *(this + 2) = v11;
  CAAudioChannelLayout::operator=();
  v12 = *(this + 2);
  *&v39.mSampleRate = *(this + 1);
  *&v39.mBytesPerPacket = v12;
  *&v39.mBitsPerChannel = *(this + 6);
  LODWORD(v38.mSampleRate) = 0;
  if (CAStreamBasicDescription::IdentifyCommonPCMFormat(&v39, &v38) && LODWORD(v38.mSampleRate) == 1 && (v39.mFormatFlags & 0x20) != 0)
  {
LABEL_40:
    *(this + 24) = a6;
    result = (*(*this + 88))(this);
    if (!result)
    {
      *(this + 256) = 1;
    }

    return result;
  }

  v13 = *(this + 15);
  v14 = *(this + 11);
  v38.mSampleRate = *(this + 2);
  *&v38.mFormatID = xmmword_18F9017F0;
  v38.mBytesPerFrame = 4;
  v38.mChannelsPerFrame = v14;
  *&v38.mBitsPerChannel = 32;
  if (v13)
  {
    AudioConverterDispose(v13);
  }

  result = AudioConverterNewWithOptions(&v39, &v38, 0, this + 15);
  if (!result)
  {
    if (!a5)
    {
      goto LABEL_9;
    }

    v16 = *(this + 15);
    v43 = a5;
    v44 = 1684891491;
    v42 = a4;
    v40[0] = &v44;
    v40[1] = &v43;
    v40[2] = &v42;
    v41[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
    v41[1] = v40;
    result = with_resolved(v16, v41);
    if (!result)
    {
LABEL_9:
      v17 = *(this + 16);
      v18 = *(this + 17);
      if (v18 == v17)
      {
        v22 = (v18 - v17) >> 3;
      }

      else
      {
        v19 = 0;
        v20 = 1;
        do
        {
          v21 = *&v17[8 * v19];
          if (v21)
          {
            MEMORY[0x193ADF1F0](v21, 0x1000C8077774924);
            v17 = *(this + 16);
            v18 = *(this + 17);
          }

          v19 = v20;
          v22 = (v18 - v17) >> 3;
        }

        while (v22 > v20++);
      }

      v24 = *(this + 11);
      v25 = v24 - v22;
      if (v24 <= v22)
      {
        if (v24 >= v22)
        {
LABEL_28:
          if (v18 != *(this + 16))
          {
            operator new[]();
          }

          if ((v39.mFormatFlags & 0x20) != 0)
          {
            v29 = (16 * v39.mChannelsPerFrame) | 8;
          }

          else
          {
            v29 = 24;
          }

          *(this + 44) = v29;
          v30 = malloc_type_calloc(v29, 1uLL, 0x10800404ACF7207uLL);
          v31 = *(this + 21);
          if (v31 != v30)
          {
            free(v31);
            *(this + 21) = v30;
          }

          v32 = malloc_type_calloc(16 * (*(this + 11) - 1) + 24, 1uLL, 0x10800404ACF7207uLL);
          v33 = *(this + 19);
          if (v33 != v32)
          {
            free(v33);
            *(this + 19) = v32;
            v33 = v32;
          }

          v34 = *(this + 11);
          *v33 = v34;
          if (v34)
          {
            v35 = *(this + 16);
            v36 = v33 + 4;
            do
            {
              *(v36 - 1) = 0x200000000001;
              v37 = *v35++;
              *v36 = v37;
              v36 += 2;
              --v34;
            }

            while (v34);
          }

          goto LABEL_40;
        }

        v18 = &v17[8 * v24];
      }

      else
      {
        v26 = *(this + 18);
        if (v25 > (v26 - v18) >> 3)
        {
          v27 = v26 - v17;
          if (v27 >> 2 > v24)
          {
            v24 = v27 >> 2;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v24;
          }

          std::allocator<unsigned char *>::allocate_at_least[abi:ne200100](v28);
        }

        bzero(v18, 8 * v25);
        v18 += 8 * v25;
      }

      *(this + 17) = v18;
      goto LABEL_28;
    }
  }

  return result;
}

void AAAnalyzer::~AAAnalyzer(AAAnalyzer *this)
{
  AAAnalyzer::~AAAnalyzer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03369B0;
  v2 = *(this + 13);
  if (v2)
  {
    MEMORY[0x193ADF1F0](v2, 0x1000C80451B5BE8);
  }

  v3 = *(this + 31);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    AudioConverterDispose(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    AudioFileClose(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    AudioFileStreamClose(v6);
  }

  v8 = *(this + 16);
  v7 = *(this + 17);
  if (v7 != v8)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = *(v8 + 8 * v9);
      if (v11)
      {
        MEMORY[0x193ADF1F0](v11, 0x1000C8077774924);
        v8 = *(this + 16);
        v7 = *(this + 17);
      }

      v9 = v10++;
    }

    while (v9 < (v7 - v8) >> 3);
  }

  (*(*this + 96))(this);
  v12 = *(this + 21);
  if (v12)
  {
    free(v12);
    *(this + 21) = 0;
  }

  v13 = *(this + 19);
  if (v13)
  {
    free(v13);
    *(this + 19) = 0;
  }

  v14 = *(this + 16);
  if (v14)
  {
    *(this + 17) = v14;
    operator delete(v14);
  }

  v15 = *(this + 8);
  if (v15)
  {
    *(this + 9) = v15;
    operator delete(v15);
  }

  MEMORY[0x193ADE5D0](this + 56);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t AAAnalyzer::ACInputProc(AAAnalyzer *this, OpaqueAudioConverter *a2, unsigned int *__dst, AudioBufferList *a4, AudioStreamPacketDescription **a5, void *a6)
{
  v6 = *(a5 + 41);
  if (!v6)
  {
    return 5;
  }

  *a2 = v6;
  memcpy(__dst, a5[21], *(a5 + 44));
  if (a4)
  {
    *&a4->mNumberBuffers = a5[23];
  }

  result = 0;
  *(a5 + 41) = 0;
  return result;
}

uint64_t OggAudioStream::HandleDiscontinuity(OggAudioStream *this)
{
  *(this + 59) = 0;
  *(this + 1482) = 1;
  *(this + 192) = *(this + 191);
  *(this + 388) = 0;
  *(this + 396) = 0u;
  *(this + 411) = 0;
  v2 = (this + 1464);
  bzero(this + 416, 0x414uLL);
  *v2 = 0u;
  *(this + 186) = -1;
  *(this + 188) = -1;
  *(this + 378) = 0;
  v3 = *(this + 223);
  if (v3 && *v3 == 1987015266)
  {
    v3[9] = 0;
  }

  return 0;
}

uint64_t OggAudioStream::GeneratePackets(void *a1, void *a2)
{
  if (a1[13] == -1)
  {
    a1[13] = a1[37];
    v4 = a1[1];
    v7 = 1;
    v5 = *(v4 + 24);
    if (v5)
    {
      v5(*(v4 + 40), *(v4 + 8), 1685022310, &v7);
    }
  }

  OggAudioStream::ParseOggPages(a1, a2, OggAudioStream::ProvideAudioPackets, 0);
  return 0;
}

void OggAudioStream::ParseOggPages(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a1 + 394;
  v8 = *(a1 + 236);
  v9 = (a1 + (a4 >> 1));
  if (v8 > 314)
  {
    if (v8 <= 364)
    {
      if (v8 == 315)
      {
        v10 = *(a1 + 8);
        LODWORD(v14) = *(v10 + 120);
        goto LABEL_112;
      }

      if (v8 == 325)
      {
        v12 = *(a1 + 8);
        goto LABEL_502;
      }
    }

    else
    {
      switch(v8)
      {
        case 365:
          v12 = *(a1 + 8);
          LODWORD(v15) = *(v12 + 120);
          goto LABEL_159;
        case 423:
          v17 = *(a1 + 8);
          LODWORD(v18) = *(v17 + 120);
          goto LABEL_222;
        case 574:
          v12 = *(a1 + 8);
          LODWORD(v13) = *(v12 + 120);
          goto LABEL_340;
      }
    }

    goto LABEL_483;
  }

  if (v8 <= 301)
  {
    if (v8 == -1)
    {
      return;
    }

    if (!v8)
    {
      *(a1 + 296) = *(*(a1 + 8) + 96);
      goto LABEL_22;
    }

    goto LABEL_483;
  }

  if (v8 == 302)
  {
    goto LABEL_22;
  }

  if (v8 == 304)
  {
    v10 = *(a1 + 8);
    v16 = *(v10 + 120);
    goto LABEL_38;
  }

  if (v8 != 307)
  {
LABEL_483:
    v155 = -1;
    goto LABEL_484;
  }

  v10 = *(a1 + 8);
  LODWORD(v11) = *(v10 + 120);
LABEL_69:
  v43 = *(a1 + 256) - v11;
  v44 = *(v10 + 88);
  v45 = *(v10 + 96);
  v46 = v44 + *(v10 + 80);
  if (v46 <= v45 || v45 < v44)
  {
    v48 = 0;
  }

  else
  {
    v48 = v46 - v45;
  }

  if (v43 <= v48)
  {
    v43 = v48;
  }

  v293[0] = v43;
  v49 = v43 + v11;
  if (*(v10 + 124) < v49)
  {
    *(v10 + 124) = v49;
    CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), v49);
    v10 = *(a1 + 8);
  }

  StreamBuffer::Copy((v10 + 72), v293, (*(v10 + 128) + *(v10 + 120)));
  v10 = *(a1 + 8);
  v37 = *(v10 + 120) + v293[0];
  *(v10 + 120) = v37;
  if (v37 < *(a1 + 256))
  {
    v155 = 307;
LABEL_484:
    *(a1 + 236) = v155;
    return;
  }

  v20 = *(a1 + 272);
  v19 = *(v10 + 128);
  *(v10 + 88) = v20;
  *(v10 + 96) = v20;
  *(v10 + 72) = v19;
  *(v10 + 80) = v37;
  v36 = v20 + v37;
  LODWORD(v19) = v37;
  v21 = v20;
  while (1)
  {
    v50 = 0;
    if (v20 >= v21 && v20 < v36 && v37)
    {
      v50 = *(v10 + 72) + (v20 - v21);
    }

    v51 = *v50;
    *(a1 + 388) = bswap32(*v50);
    if (v51 == 1399285583)
    {
      *(a1 + 392) = *(v50 + 4);
      *(a1 + 393) = *(v50 + 5);
      *v7 = *(v50 + 6);
      *(v7 + 8) = *(v50 + 14);
      *(v7 + 12) = *(v50 + 18);
      *(v7 + 16) = *(v50 + 22);
      v52 = *(v50 + 26);
      *(a1 + 414) = v52;
      if (v52)
      {
        break;
      }
    }

    v60 = *(a1 + 296) + 4;
    *(a1 + 296) = v60;
    *(v10 + 96) = v60;
LABEL_517:
    *(a1 + 411) = 0;
    *(a1 + 404) = 0;
    *(a1 + 388) = 0u;
    bzero((a1 + 416), 0x414uLL);
    *(a1 + 1464) = 0u;
    while (1)
    {
LABEL_22:
      v10 = *(a1 + 8);
      v19 = *(v10 + 80);
      v21 = *(v10 + 88);
      v20 = *(v10 + 96);
      v22 = v21 + v19;
      v23 = v20 < v21 || v22 <= v20;
      if (v23 || (v16 = v22 - v20, v22 == v20))
      {
        v155 = 302;
        goto LABEL_484;
      }

      *(a1 + 256) = 4;
      if (v16 <= 3)
      {
        *(a1 + 272) = v20;
        v24 = *(v10 + 128);
        v25 = *(v10 + 72);
        if (v25 == v24)
        {
          if ((v16 & 3) != 0)
          {
            v26 = &v25[(v20 - v21)];
          }

          else
          {
            v26 = 0;
          }

          memmove(v24, v26, v16 & 3);
          v10 = *(a1 + 8);
          if (*(v10 + 124) <= 3u)
          {
            *(v10 + 124) = 4;
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), 4uLL);
            v10 = *(a1 + 8);
          }

          *(v10 + 120) = v16;
          *(v10 + 96) = *(v10 + 88) + *(v10 + 80);
        }

        else
        {
          if (*(v10 + 124) <= 3u)
          {
            *(v10 + 124) = 4;
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), 4uLL);
            v10 = *(a1 + 8);
          }

          v16 = 0;
          *(v10 + 120) = 0;
        }

LABEL_38:
        v27 = *(a1 + 256) - v16;
        v28 = *(v10 + 88);
        v29 = *(v10 + 96);
        v30 = v28 + *(v10 + 80);
        if (v30 <= v29 || v29 < v28)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30 - v29;
        }

        if (v27 <= v32)
        {
          v27 = v32;
        }

        v293[0] = v27;
        v33 = v27 + v16;
        if (*(v10 + 124) < v33)
        {
          *(v10 + 124) = v33;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), v33);
          v10 = *(a1 + 8);
        }

        StreamBuffer::Copy((v10 + 72), v293, (*(v10 + 128) + *(v10 + 120)));
        v10 = *(a1 + 8);
        LODWORD(v19) = *(v10 + 120) + v293[0];
        *(v10 + 120) = v19;
        if (v19 < *(a1 + 256))
        {
          v155 = 304;
          goto LABEL_484;
        }

        v20 = *(a1 + 272);
        v34 = *(v10 + 128);
        *(v10 + 88) = v20;
        *(v10 + 96) = v20;
        *(v10 + 72) = v34;
        *(v10 + 80) = v19;
        v21 = v20;
      }

      v35 = (v20 - v21);
      if (*(*(v10 + 72) + v35) == 1399285583)
      {
        break;
      }

      v40 = *(a1 + 296) + 1;
      *(a1 + 296) = v40;
      *(v10 + 96) = v40;
    }

    *(a1 + 256) = 27;
    v36 = v21 + v19;
    v37 = v36 - v20;
    if (v36 > v20)
    {
      v11 = v37;
    }

    else
    {
      v11 = 0;
    }

    if (v11 <= 0x1A)
    {
      *(a1 + 272) = v20;
      v38 = *(v10 + 128);
      v39 = *(v10 + 72);
      if (v39 == v38)
      {
        if (v37)
        {
          v41 = v36 <= v20;
        }

        else
        {
          v41 = 1;
        }

        if (v41)
        {
          v42 = 0;
        }

        else
        {
          v42 = &v39[v35];
        }

        memmove(v38, v42, v11);
        v10 = *(a1 + 8);
        if (*(v10 + 124) <= 0x1Au)
        {
          *(v10 + 124) = 27;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), 0x1BuLL);
          v10 = *(a1 + 8);
        }

        *(v10 + 120) = v11;
        *(v10 + 96) = *(v10 + 88) + *(v10 + 80);
      }

      else
      {
        if (*(v10 + 124) <= 0x1Au)
        {
          *(v10 + 124) = 27;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), 0x1BuLL);
          v10 = *(a1 + 8);
        }

        LODWORD(v11) = 0;
        *(v10 + 120) = 0;
      }

      goto LABEL_69;
    }
  }

  ++*(a1 + 336);
  v53 = v52 + 27;
  *(a1 + 256) = v52 + 27;
  v54 = v21 + v19;
  v56 = v20 < v21 || v54 <= v20;
  v57 = v54 - v20;
  if (v56)
  {
    v14 = 0;
  }

  else
  {
    v14 = v57;
  }

  if (v14 >= v53)
  {
    v61 = *(v10 + 72);
  }

  else
  {
    *(a1 + 272) = v20;
    v58 = *(v10 + 128);
    v59 = *(v10 + 72);
    if (v59 == v58)
    {
      if (v57)
      {
        v62 = v56;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
        v63 = 0;
      }

      else
      {
        v63 = &v59[(v20 - v21)];
      }

      memmove(v58, v63, v14);
      v64 = *(a1 + 414) + 27;
      v10 = *(a1 + 8);
      if (*(v10 + 124) < v64)
      {
        *(v10 + 124) = v64;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), v64);
        v10 = *(a1 + 8);
      }

      *(v10 + 120) = v14;
      *(v10 + 96) = *(v10 + 88) + *(v10 + 80);
    }

    else
    {
      if (*(v10 + 124) < v53)
      {
        *(v10 + 124) = v53;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), v53);
        v10 = *(a1 + 8);
      }

      LODWORD(v14) = 0;
      *(v10 + 120) = 0;
    }

LABEL_112:
    v65 = *(a1 + 256) - v14;
    v66 = *(v10 + 88);
    v67 = *(v10 + 96);
    v68 = v66 + *(v10 + 80);
    if (v68 <= v67 || v67 < v66)
    {
      v70 = 0;
    }

    else
    {
      v70 = v68 - v67;
    }

    if (v65 <= v70)
    {
      v65 = v70;
    }

    v293[0] = v65;
    v71 = v65 + v14;
    if (*(v10 + 124) < v71)
    {
      *(v10 + 124) = v71;
      CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), v71);
      v10 = *(a1 + 8);
    }

    StreamBuffer::Copy((v10 + 72), v293, (*(v10 + 128) + *(v10 + 120)));
    v72 = *(a1 + 8);
    v73 = *(v72 + 120) + v293[0];
    *(v72 + 120) = v73;
    if (v73 < *(a1 + 256))
    {
      v155 = 315;
      goto LABEL_484;
    }

    v20 = *(a1 + 272);
    v61 = *(v72 + 128);
    *(v72 + 88) = v20;
    *(v72 + 96) = v20;
    *(v72 + 72) = v61;
    *(v72 + 80) = v73;
    LODWORD(v52) = *(a1 + 414);
    LODWORD(v21) = v20;
  }

  Ogg::PagePacketInfo::Deserialize((a1 + 416), v61 + (v20 - v21) + 27, v52);
  v74 = *(a1 + 414) + *(a1 + 296) + 27;
  *(a1 + 296) = v74;
  v12 = *(a1 + 8);
  *(v12 + 96) = v74;
  if (*(a1 + 1480) == 1 && *(v7 + 8) != *(a1 + 344))
  {
    v85 = *(a1 + 420);
    while (1)
    {
      *(a1 + 256) = v85;
      if (!v85)
      {
        *(a1 + 296) += *(a1 + 420);
        goto LABEL_517;
      }

LABEL_502:
      v277 = *(v12 + 88);
      v276 = *(v12 + 96);
      v278 = v277 + *(v12 + 80);
      v279 = v278 - v276;
      v280 = v276 < v277 || v278 <= v276;
      if (v280 || v278 == v276)
      {
        break;
      }

      v282 = *(a1 + 256);
      v283 = v276 + v282;
      v284 = v282 >= v279;
      v285 = v282 - v279;
      if (v284)
      {
        v283 = v278;
      }

      if (v284)
      {
        v85 = v285;
      }

      else
      {
        v85 = 0;
      }

      *(v12 + 96) = v283;
    }

    v155 = 325;
    goto LABEL_484;
  }

  *(a1 + 1481) = *(a1 + 1776);
  v75 = *(a1 + 1452);
  *(a1 + 1456) = v75;
  v76 = *(a1 + 393);
  if ((v76 & 4) != 0 && !*(a1 + 1496))
  {
    v77 = *(a1 + 1488);
    if (v77 != -1)
    {
      *(a1 + 1496) = *v7 - v77;
    }
  }

  *(a1 + 1476) = 0;
  if (*(a1 + 1536) == *(a1 + 1528))
  {
    v84 = 0;
    goto LABEL_196;
  }

  if ((v76 & 1) == 0)
  {
    goto LABEL_481;
  }

  if (*(a1 + 424))
  {
    v75 = Ogg::PagePacketInfo::operator[](a1 + 416, 0);
    v12 = *(a1 + 8);
    v74 = *(v12 + 96);
  }

  *(a1 + 1472) = v75;
  *(a1 + 256) = v75;
  v78 = *(v12 + 88);
  v79 = v78 + *(v12 + 80);
  v81 = v74 < v78 || v79 <= v74;
  v82 = v79 - v74;
  if (v81)
  {
    v15 = 0;
  }

  else
  {
    v15 = v82;
  }

  if (v15 < v75)
  {
    *(a1 + 272) = v74;
    v83 = *(v12 + 72);
    if (v83 == *(v12 + 128))
    {
      if (v82)
      {
        v86 = v81;
      }

      else
      {
        v86 = 1;
      }

      if (v86)
      {
        v87 = 0;
      }

      else
      {
        v87 = (v83 + (v74 - v78));
      }

      memmove(*(v12 + 128), v87, v15);
      v88 = *(a1 + 1472);
      v12 = *(a1 + 8);
      if (*(v12 + 124) < v88)
      {
        *(v12 + 124) = v88;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v12 + 128), v88);
        v12 = *(a1 + 8);
      }

      *(v12 + 120) = v15;
      *(v12 + 96) = *(v12 + 88) + *(v12 + 80);
    }

    else
    {
      if (*(v12 + 124) < v75)
      {
        *(v12 + 124) = v75;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v12 + 128), v75);
        v12 = *(a1 + 8);
      }

      LODWORD(v15) = 0;
      *(v12 + 120) = 0;
    }

LABEL_159:
    v89 = *(a1 + 256) - v15;
    v90 = *(v12 + 88);
    v91 = *(v12 + 96);
    v92 = v90 + *(v12 + 80);
    if (v92 <= v91 || v91 < v90)
    {
      v94 = 0;
    }

    else
    {
      v94 = v92 - v91;
    }

    if (v89 <= v94)
    {
      v89 = v94;
    }

    v293[0] = v89;
    v95 = v89 + v15;
    if (*(v12 + 124) < v95)
    {
      *(v12 + 124) = v95;
      CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v12 + 128), v95);
      v12 = *(a1 + 8);
    }

    StreamBuffer::Copy((v12 + 72), v293, (*(v12 + 128) + *(v12 + 120)));
    v12 = *(a1 + 8);
    v82 = *(v12 + 120) + v293[0];
    *(v12 + 120) = v82;
    if (v82 < *(a1 + 256))
    {
      v155 = 365;
      goto LABEL_484;
    }

    v74 = *(a1 + 272);
    v96 = *(v12 + 128);
    *(v12 + 88) = v74;
    *(v12 + 96) = v74;
    *(v12 + 72) = v96;
    *(v12 + 80) = v82;
    v79 = v74 + v82;
    v78 = v74;
  }

  v97 = 0;
  if (v74 >= v78 && v74 < v79 && v82 != 0)
  {
    v97 = (*(v12 + 72) + (v74 - v78));
  }

  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1 + 1528, *(a1 + 1536), v97, &v97[*(a1 + 1472)], *(a1 + 1472));
  if (!*(a1 + 424))
  {
    *(a1 + 1456) = 0;
    v84 = *(a1 + 1476);
    goto LABEL_195;
  }

  if (!*(a1 + 200))
  {
    *(a1 + 200) = 1;
    CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((a1 + 192), 1);
  }

  v99 = *(a1 + 192);
  *v99 = 0;
  v100 = *(a1 + 1528);
  v101 = *(a1 + 1536) - v100;
  *(v99 + 12) = v101;
  v102 = *(a1 + 1784);
  if (v102)
  {
    v103 = PacketDurationParser::FramesInPacket(v102, v100, v101);
    *(*(a1 + 192) + 8) = v103;
  }

  else
  {
    *(v99 + 8) = 0;
    v103 = *(a1 + 44);
  }

  v104 = *(a1 + 1464) + v103;
  *(a1 + 1464) = v104;
  if ((*(a1 + 393) & 4) != 0)
  {
    v105 = *(a1 + 1496);
    if (v105 >= 1 && *(a1 + 1504) == -1 && v104 > v105)
    {
      *(a1 + 1504) = *(a1 + 184);
      *(a1 + 1512) = v105;
      v106 = *(a1 + 8);
      v293[0] = 0;
      v107 = *(v106 + 24);
      if (v107)
      {
        v107(*(v106 + 40), *(v106 + 8), 1919316848, v293);
      }
    }
  }

  if (a4)
  {
    v108 = (*(*v9 + a3))(v9, 1, *(a1 + 376), *(a1 + 1528), *(a1 + 1536) - *(a1 + 1528), *(a1 + 192));
  }

  else
  {
    v108 = (a3)(v9, 1, *(a1 + 376), *(a1 + 1528), *(a1 + 1536) - *(a1 + 1528), *(a1 + 192));
  }

  if ((v108 & 1) == 0)
  {
LABEL_478:
    v266 = *(a1 + 1481);
    if (v266 != 1)
    {
      goto LABEL_483;
    }

    goto LABEL_482;
  }

  v84 = *(a1 + 1476) + 1;
  *(a1 + 1476) = v84;
  *(a1 + 1536) = *(a1 + 1528);
  ++*(a1 + 376);
LABEL_195:
  v109 = *(a1 + 296) + *(a1 + 1472);
  *(a1 + 296) = v109;
  v12 = *(a1 + 8);
  *(v12 + 96) = v109;
  *(a1 + 1472) = 0;
LABEL_196:
  if (v84 >= *(a1 + 424))
  {
    goto LABEL_316;
  }

  *(a1 + 1472) = 0;
  do
  {
    v110 = *(a1 + 1472) + Ogg::PagePacketInfo::operator[](a1 + 416, v84);
    *(a1 + 1472) = v110;
    ++v84;
  }

  while (v84 < *(a1 + 424));
  v17 = *(a1 + 8);
  v112 = *(v17 + 88);
  v111 = *(v17 + 96);
  v113 = *(v17 + 80);
  *(a1 + 256) = v110;
  v114 = v112 + v113;
  v116 = v111 < v112 || v114 <= v111;
  v117 = v114 - v111;
  if (v116)
  {
    v18 = 0;
  }

  else
  {
    v18 = v117;
  }

  if (v18 < v110)
  {
    *(a1 + 272) = v111;
    v118 = *(v17 + 128);
    v119 = *(v17 + 72);
    if (v119 == v118)
    {
      if (v117)
      {
        v120 = v116;
      }

      else
      {
        v120 = 1;
      }

      if (v120)
      {
        v121 = 0;
      }

      else
      {
        v121 = &v119[(v111 - v112)];
      }

      memmove(v118, v121, v18);
      v122 = *(a1 + 1472);
      v17 = *(a1 + 8);
      if (*(v17 + 124) < v122)
      {
        *(v17 + 124) = v122;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v17 + 128), v122);
        v17 = *(a1 + 8);
      }

      *(v17 + 120) = v18;
      *(v17 + 96) = *(v17 + 88) + *(v17 + 80);
    }

    else
    {
      if (*(v17 + 124) < v110)
      {
        *(v17 + 124) = v110;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v17 + 128), v110);
        v17 = *(a1 + 8);
      }

      LODWORD(v18) = 0;
      *(v17 + 120) = 0;
    }

LABEL_222:
    v123 = *(a1 + 256) - v18;
    v124 = *(v17 + 88);
    v125 = *(v17 + 96);
    v126 = v124 + *(v17 + 80);
    if (v126 <= v125 || v125 < v124)
    {
      v128 = 0;
    }

    else
    {
      v128 = v126 - v125;
    }

    if (v123 <= v128)
    {
      v123 = v128;
    }

    v293[0] = v123;
    v129 = v123 + v18;
    if (*(v17 + 124) < v129)
    {
      *(v17 + 124) = v129;
      CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v17 + 128), v129);
      v17 = *(a1 + 8);
    }

    StreamBuffer::Copy((v17 + 72), v293, (*(v17 + 128) + *(v17 + 120)));
    v17 = *(a1 + 8);
    v117 = *(v17 + 120) + v293[0];
    *(v17 + 120) = v117;
    if (v117 < *(a1 + 256))
    {
      v155 = 423;
      goto LABEL_484;
    }

    v111 = *(a1 + 272);
    v130 = *(v17 + 128);
    *(v17 + 88) = v111;
    *(v17 + 96) = v111;
    *(v17 + 72) = v130;
    *(v17 + 80) = v117;
    v114 = v111 + v117;
    v112 = v111;
  }

  v131 = 0;
  v132 = v111 >= v112 && v111 < v114;
  v133 = !v132;
  if (v132 && v117)
  {
    v131 = *(v17 + 72) + (v111 - v112);
  }

  if (v133)
  {
    v134 = 0;
  }

  else
  {
    v134 = v117;
  }

  if (v134 < *(a1 + 1472))
  {
    goto LABEL_483;
  }

  v135 = *(a1 + 424);
  v136 = *(a1 + 1476);
  if (*(a1 + 200) < v135 - v136)
  {
    v137 = (1 << -__clz(v135 - v136 - 1));
    *(a1 + 200) = v137;
    CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((a1 + 192), v137);
    v136 = *(a1 + 1476);
    v135 = *(a1 + 424);
  }

  v138 = 0;
  if (v136 < v135)
  {
    LODWORD(v138) = 0;
    do
    {
      v139 = *(a1 + 192);
      if (v138)
      {
        v140 = v138;
        v139[2 * v138] = v139[2 * (v138 - 1)] + HIDWORD(v139[2 * (v138 - 1) + 1]);
      }

      else
      {
        v140 = 0;
        *v139 = 0;
      }

      v141 = Ogg::PagePacketInfo::operator[](a1 + 416, v136);
      v142 = *(a1 + 192);
      *(v142 + 16 * v140 + 12) = v141;
      if (*(a1 + 1481) == 1)
      {
        v143 = v141;
        v144 = *(a1 + 1784);
        if (v144)
        {
          LODWORD(v144) = PacketDurationParser::FramesInPacket(v144, (v131 + *(v142 + 16 * v140)), v143);
          v142 = *(a1 + 192);
          v145 = v144;
        }

        else
        {
          v145 = *(a1 + 44);
        }

        *(v142 + 16 * v140 + 8) = v144;
        v146 = *(a1 + 1464);
        v147 = v146 + v145;
        *(a1 + 1464) = v147;
        if ((*(a1 + 393) & 4) != 0)
        {
          v148 = *(a1 + 1496);
          if (v148 >= 1 && *(a1 + 1504) == -1 && v147 > v148)
          {
            *(a1 + 1504) = *(a1 + 184) + v140;
            *(a1 + 1512) = v148 - v146;
            v149 = *(a1 + 8);
            v293[0] = 0;
            v150 = *(v149 + 24);
            if (v150)
            {
              v150(*(v149 + 40), *(v149 + 8), 1919316848, v293);
            }
          }
        }
      }

      v138 = (v138 + 1);
      v136 = *(a1 + 1476) + 1;
      *(a1 + 1476) = v136;
    }

    while (v136 < *(a1 + 424));
  }

  if (a4)
  {
    v151 = (a4 & 1 | a3) == 0;
  }

  else
  {
    v151 = 1;
  }

  v152 = v151;
  if (a3 == OggAudioStream::ProvideAudioPackets && v152 && !*(a1 + 184))
  {
    v153 = *(a1 + 8);
    if (*(v153 + 107) & 1) != 0 || (*(v153 + 106))
    {
      goto LABEL_304;
    }

    if (*(a1 + 32) == 1987015266 && v138 >= 2)
    {
      v154 = *(a1 + 44);
      if (v154)
      {
        v154 *= v138 - 1;
      }

      else
      {
        v156 = v138 - 1;
        v157 = (*(a1 + 192) + 24);
        do
        {
          v158 = *v157;
          v157 += 4;
          v154 += v158;
          --v156;
        }

        while (v156);
      }

      if (*v7 < v154)
      {
        *(a1 + 1484) = v154 - *v7;
      }
    }

    if ((*(a1 + 1768) & 0x8000000000000000) == 0)
    {
      (*(*a1 + 80))(a1);
      v159 = *(a1 + 8);
      v293[0] = 1;
      v160 = *(v159 + 24);
      if (v160)
      {
        v160(*(v159 + 40), *(v159 + 8), 1885564532, v293);
      }
    }

    v161 = *(a1 + 1752);
    if (v161 < 0)
    {
      v163 = *(a1 + 8);
    }

    else
    {
      v162 = *(a1 + 1760);
      v163 = *(a1 + 8);
      if ((v162 & 0x80000000) == 0)
      {
        *(a1 + 160) = v161;
        *(a1 + 168) = *(a1 + 1744);
        *(a1 + 172) = v162;
        v293[0] = 1;
        if ((*(v163 + 106) & 1) == 0)
        {
          *(v163 + 106) = 1;
          v164 = *(v163 + 24);
          if (v164)
          {
            v165 = *(v163 + 40);
            v166 = *(v163 + 8);
            v167 = 1886283375;
            goto LABEL_303;
          }
        }

        goto LABEL_304;
      }
    }

    v293[0] = 1;
    if ((*(v163 + 107) & 1) == 0)
    {
      *(v163 + 107) = 1;
      v164 = *(v163 + 24);
      if (v164)
      {
        v165 = *(v163 + 40);
        v166 = *(v163 + 8);
        v167 = 1886547302;
LABEL_303:
        v164(v165, v166, v167, v293);
      }
    }

LABEL_304:
    v168 = *(a1 + 8);
    v293[0] = 1;
    if (!*(v168 + 112))
    {
      *(v168 + 112) = 1;
      v169 = *(v168 + 24);
      if (v169)
      {
        v169(*(v168 + 40), *(v168 + 8), 1919247481, v293);
      }
    }
  }

  if (a4)
  {
    v170 = (*(*v9 + a3))(v9, v138, *(a1 + 376), v131, *(a1 + 1472), *(a1 + 192));
  }

  else
  {
    v170 = (a3)(v9, v138, *(a1 + 376), v131, *(a1 + 1472), *(a1 + 192));
  }

  if (!v170)
  {
    goto LABEL_478;
  }

  if (*(a1 + 1480) == 1)
  {
LABEL_314:
    *(a1 + 376) += v138;
    goto LABEL_315;
  }

  if (*(a1 + 384))
  {
    *(a1 + 1480) = 1;
    *(a1 + 344) = *(v7 + 8);
    goto LABEL_314;
  }

  v207 = *(a1 + 352);
  v208 = *(a1 + 360);
  v209 = *(v7 + 8);
  v210 = v207;
  if (v207 != v208)
  {
    v210 = *(a1 + 352);
    while (*v210 != v209)
    {
      v210 += 4;
      if (v210 == v208)
      {
        goto LABEL_384;
      }
    }
  }

  if (v210 != v208)
  {
LABEL_481:
    LOBYTE(v266) = 1;
LABEL_482:
    *(a1 + 177) = v266;
    goto LABEL_483;
  }

LABEL_384:
  v211 = *(a1 + 368);
  if (v208 >= v211)
  {
    v213 = v208 - v207;
    v214 = (v208 - v207) >> 2;
    v215 = v214 + 1;
    if ((v214 + 1) >> 62)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v216 = v211 - v207;
    if (v216 >> 1 > v215)
    {
      v215 = v216 >> 1;
    }

    v284 = v216 >= 0x7FFFFFFFFFFFFFFCLL;
    v217 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v284)
    {
      v217 = v215;
    }

    v218 = (v208 - v207) >> 2;
    if (v217)
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v217);
    }

    v219 = (4 * v214);
    v220 = (4 * v214 - 4 * v218);
    *v219 = v209;
    v212 = v219 + 1;
    memcpy(v220, v207, v213);
    v221 = *(a1 + 352);
    *(a1 + 352) = v220;
    *(a1 + 360) = v212;
    *(a1 + 368) = 0;
    if (v221)
    {
      operator delete(v221);
    }
  }

  else
  {
    *v208 = v209;
    v212 = v208 + 4;
  }

  *(a1 + 360) = v212;
LABEL_315:
  v171 = *(a1 + 296) + *(a1 + 1472);
  *(a1 + 296) = v171;
  v12 = *(a1 + 8);
  *(v12 + 96) = v171;
  *(a1 + 1472) = 0;
LABEL_316:
  v172 = *(a1 + 1456);
  if (v172)
  {
    *(a1 + 256) = v172;
    v174 = *(v12 + 88);
    v173 = *(v12 + 96);
    v175 = v174 + *(v12 + 80);
    v177 = v173 < v174 || v175 <= v173;
    v178 = v175 - v173;
    if (v177)
    {
      v13 = 0;
    }

    else
    {
      v13 = v178;
    }

    if (v13 < v172)
    {
      *(a1 + 272) = v173;
      v179 = *(v12 + 128);
      v180 = *(v12 + 72);
      if (v180 == v179)
      {
        if (v178)
        {
          v181 = v177;
        }

        else
        {
          v181 = 1;
        }

        v182 = &v180[(v173 - v174)];
        if (v181)
        {
          v183 = 0;
        }

        else
        {
          v183 = v182;
        }

        memmove(v179, v183, v13);
        v184 = *(a1 + 1456);
        v12 = *(a1 + 8);
        if (*(v12 + 124) < v184)
        {
          *(v12 + 124) = v184;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v12 + 128), v184);
          v12 = *(a1 + 8);
        }

        *(v12 + 120) = v13;
        *(v12 + 96) = *(v12 + 88) + *(v12 + 80);
      }

      else
      {
        if (*(v12 + 124) < v172)
        {
          *(v12 + 124) = v172;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v12 + 128), v172);
          v12 = *(a1 + 8);
        }

        LODWORD(v13) = 0;
        *(v12 + 120) = 0;
      }

LABEL_340:
      v185 = *(a1 + 256) - v13;
      v186 = *(v12 + 88);
      v187 = *(v12 + 96);
      v188 = v186 + *(v12 + 80);
      if (v188 <= v187 || v187 < v186)
      {
        v190 = 0;
      }

      else
      {
        v190 = v188 - v187;
      }

      if (v185 <= v190)
      {
        v185 = v190;
      }

      v293[0] = v185;
      v191 = v185 + v13;
      if (*(v12 + 124) < v191)
      {
        *(v12 + 124) = v191;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v12 + 128), v191);
        v12 = *(a1 + 8);
      }

      StreamBuffer::Copy((v12 + 72), v293, (*(v12 + 128) + *(v12 + 120)));
      v12 = *(a1 + 8);
      v178 = *(v12 + 120) + v293[0];
      *(v12 + 120) = v178;
      if (v178 < *(a1 + 256))
      {
        v155 = 574;
        goto LABEL_484;
      }

      v173 = *(a1 + 272);
      v192 = *(v12 + 128);
      *(v12 + 88) = v173;
      *(v12 + 96) = v173;
      *(v12 + 72) = v192;
      *(v12 + 80) = v178;
      v175 = v173 + v178;
      v174 = v173;
    }

    v193 = 0;
    if (v173 >= v174 && v173 < v175 && v178 != 0)
    {
      v193 = (*(v12 + 72) + (v173 - v174));
    }

    std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1 + 1528, *(a1 + 1536), v193, &v193[*(a1 + 1456)], *(a1 + 1456));
    v196 = *(a1 + 296) + *(a1 + 1456);
    *(a1 + 296) = v196;
    *(*(a1 + 8) + 96) = v196;
  }

  if (*(a1 + 1776) == 1)
  {
    if ((*(a1 + 1481) & 1) == 0)
    {
      (*(*a1 + 56))(a1, a1 + 1552);
      *v293 = 0;
      v294 = 0;
      v295 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v293, *(a1 + 1616), *(a1 + 1624), *(a1 + 1624) - *(a1 + 1616));
      v197 = *v293;
      v198 = v294 - *v293;
      CADeprecated::CAAutoFree<unsigned char>::alloc((a1 + 120), v294 - *v293, 0);
      memcpy(*(a1 + 120), v197, v198);
      *(a1 + 128) = v198;
      v290 = 0;
      v291 = 0;
      v292 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v290, *(a1 + 1640), *(a1 + 1648), *(a1 + 1648) - *(a1 + 1640));
      v199 = v290;
      v200 = v291 - v290;
      CADeprecated::CAAutoFree<AudioChannelLayout>::alloc((a1 + 136), v291 - v290);
      memcpy(*(a1 + 136), v199, v200);
      *(a1 + 144) = v200;
      v287 = 0;
      v288 = 0;
      v289 = 0;
      std::vector<AudioFormatListItem>::__init_with_size[abi:ne200100]<AudioFormatListItem*,AudioFormatListItem*>(&v287, *(a1 + 1592), *(a1 + 1600), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1600) - *(a1 + 1592)) >> 4));
      v201 = v287;
      if (v288 != v287)
      {
        (*(*a1 + 64))(a1, (v288 - v287) & 0xFFFFFFF0, v287);
      }

      v202 = *(a1 + 8);
      if ((*(v202 + 104) & 1) == 0)
      {
        v296 = 1;
        *(v202 + 104) = 1;
        v203 = *(v202 + 24);
        if (v203)
        {
          v203(*(v202 + 40), *(v202 + 8), 1717988724, &v296);
          v202 = *(a1 + 8);
        }
      }

      if ((*(v202 + 105) & 1) == 0)
      {
        v296 = 1;
        *(v202 + 105) = 1;
        v204 = *(v202 + 24);
        if (v204)
        {
          v204(*(v202 + 40), *(v202 + 8), 1684434292, &v296);
          v202 = *(a1 + 8);
        }
      }

      if ((*(v202 + 108) & 1) == 0 && *(a1 + 128))
      {
        v296 = 1;
        *(v202 + 108) = 1;
        v205 = *(v202 + 24);
        if (v205)
        {
          v205(*(v202 + 40), *(v202 + 8), 1835493731, &v296);
          v202 = *(a1 + 8);
          v206 = *(v202 + 24);
          v296 = 1;
          *(v202 + 108) = 1;
          if (v206)
          {
            v206(*(v202 + 40), *(v202 + 8), 1718383476, &v296);
            v202 = *(a1 + 8);
          }
        }

        else
        {
          v296 = 1;
          *(v202 + 108) = 1;
        }
      }

      if ((*(v202 + 109) & 1) == 0)
      {
        if (*(a1 + 144))
        {
          v296 = 1;
          *(v202 + 109) = 1;
          v222 = *(v202 + 24);
          if (v222)
          {
            v222(*(v202 + 40), *(v202 + 8), 1668112752, &v296);
          }
        }
      }

      if (!*(a1 + 44))
      {
        v223 = *(a1 + 120);
        operator new();
      }

      if (v201)
      {
        operator delete(v201);
      }

      if (v199)
      {
        operator delete(v199);
      }

      if (v197)
      {
        operator delete(v197);
      }
    }

    if (a4)
    {
      v224 = (a4 & 1 | a3) == 0;
    }

    else
    {
      v224 = 1;
    }

    v225 = v224;
    if (a3 == OggAudioStream::ParseHeaderPackets && v225 && *(a1 + 376) >= *(a1 + 384))
    {
      goto LABEL_439;
    }
  }

  else if (*(a1 + 376) > 2uLL)
  {
    goto LABEL_483;
  }

  if ((*(a1 + 393) & 4) == 0)
  {
    if (*(a1 + 424) && (*v7 & 0x8000000000000000) == 0)
    {
      *(a1 + 1488) = *v7;
    }

    goto LABEL_517;
  }

  v226 = *(a1 + 8);
  v227 = *(v226 + 116);
  v228 = *(v226 + 88);
  v229 = *(v226 + 96);
  v230 = v228 + *(v226 + 80);
  if (v230 <= v229 || v229 < v228)
  {
    v232 = 0;
  }

  else
  {
    v232 = v230 - v229;
  }

  if (v227 < v232)
  {
    v232 = 0;
  }

  *(a1 + 1520) = v227 - v232;
  v233 = *(v226 + 48);
  v234 = *(v226 + 56);
  v235 = v234 - v233;
  if (v234 != v233)
  {
    v236 = 0;
    v237 = v235 >> 2;
    v238 = 1;
    do
    {
      v239 = *(v233 + 4 * v236);
      v236 = v238++;
    }

    while (v239 != 1818586995 && v237 > v236);
    if (v239 == 1818586995)
    {
      v293[0] = 1;
      v241 = *(v226 + 24);
      if (v241)
      {
        v241(*(v226 + 40), *(v226 + 8), 1818586995, v293);
      }
    }
  }

LABEL_439:
  *(a1 + 411) = 0;
  *(a1 + 404) = 0;
  *(a1 + 388) = 0u;
  bzero((a1 + 416), 0x414uLL);
  *(a1 + 1464) = 0u;
  *(a1 + 1536) = *(a1 + 1528);
  if (a4)
  {
    v242 = (a4 & 1 | a3) == 0;
  }

  else
  {
    v242 = 1;
  }

  v243 = v242;
  if (a3 != OggAudioStream::ParseHeaderPackets || !v243 || *(a1 + 1776) != 1)
  {
    goto LABEL_483;
  }

  v244 = *(a1 + 8);
  v293[0] = 1;
  v245 = *(v244 + 24);
  if (v245)
  {
    v245(*(v244 + 40), *(v244 + 8), 1768842863, v293);
    v244 = *(a1 + 8);
  }

  v246 = *(v244 + 48);
  v247 = *(v244 + 56);
  v248 = (v247 - v246) >> 2;
  if (v247 != v246)
  {
    v249 = 0;
    v250 = 1;
    do
    {
      v251 = *(v246 + 4 * v249);
      v249 = v250++;
    }

    while (v251 != 1819243876 && v248 > v249);
    if (v251 == 1819243876)
    {
      v293[0] = 1;
      if ((*(v244 + 110) & 1) == 0)
      {
        *(v244 + 110) = 1;
        v253 = *(v244 + 24);
        if (v253)
        {
          v253(*(v244 + 40), *(v244 + 8), 1819243876, v293);
          v244 = *(a1 + 8);
          v246 = *(v244 + 48);
          v247 = *(v244 + 56);
          v248 = (v247 - v246) >> 2;
        }
      }
    }
  }

  if (v247 == v246)
  {
    goto LABEL_486;
  }

  v254 = 0;
  v255 = 1;
  do
  {
    v256 = *(v246 + 4 * v254);
    v254 = v255++;
  }

  while (v256 != 1633776244 && v248 > v254);
  if (v256 == 1633776244)
  {
    v293[0] = 1;
    v258 = *(v244 + 24);
    if (v258)
    {
      v258(*(v244 + 40), *(v244 + 8), 1633776244, v293);
      v244 = *(a1 + 8);
      v246 = *(v244 + 48);
      v247 = *(v244 + 56);
    }
  }

  if (v247 == v246)
  {
LABEL_486:
    v264 = a2;
  }

  else
  {
    v259 = 0;
    v260 = (v247 - v246) >> 2;
    v261 = 1;
    do
    {
      v262 = *(v246 + 4 * v259);
      v259 = v261++;
    }

    while (v262 != 1986225779 && v260 > v259);
    v264 = a2;
    if (v262 == 1986225779)
    {
      v293[0] = 1;
      v265 = *(v244 + 24);
      if (v265)
      {
        v265(*(v244 + 40), *(v244 + 8), 1986225779, v293);
        v264 = a2;
        v244 = *(a1 + 8);
      }
    }
  }

  v267 = 0;
  *v264 = a1;
  v264[1] = AudioFileStreamObject::GeneratePackets;
  v268 = v264;
  v264[2] = 0;
  v269 = *(v244 + 88);
  v270 = *(v244 + 96);
  v271 = v269 + *(v244 + 80);
  v272 = v270 < v269 || v271 <= v270;
  v273 = v272;
  v274 = v271 - v270;
  if (!v272 && v274)
  {
    v267 = *(v244 + 72) + (v270 - v269);
  }

  v268[4] = v267;
  if (v273)
  {
    v275 = 0;
  }

  else
  {
    v275 = v274;
  }

  *(v268 + 6) = v275;
}

void std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t a5)
{
  if (a5 >= 1)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9 - v10 >= a5)
    {
      v16 = v10 - __dst;
      if (v10 - __dst >= a5)
      {
        v20 = &__dst[a5];
        v21 = &v10[-a5];
        v22 = *(a1 + 8);
        if (v10 >= a5)
        {
          do
          {
            v23 = *v21++;
            *v22++ = v23;
          }

          while (v21 != v10);
        }

        *(a1 + 8) = v22;
        if (v10 != v20)
        {
          memmove(&__dst[a5], __dst, v10 - v20);
        }

        v24 = __dst;
        v25 = __src;
        v26 = a5;
      }

      else
      {
        v17 = &__src[v16];
        v18 = *(a1 + 8);
        while (v17 != a4)
        {
          v19 = *v17++;
          *v18++ = v19;
        }

        *(a1 + 8) = v18;
        if (v16 < 1)
        {
          return;
        }

        v27 = &__dst[a5];
        v28 = &v18[-a5];
        v29 = v18;
        if (&v18[-a5] < v10)
        {
          do
          {
            v30 = *v28++;
            *v29++ = v30;
          }

          while (v28 != v10);
        }

        *(a1 + 8) = v29;
        if (v18 != v27)
        {
          memmove(&__dst[a5], __dst, v18 - v27);
        }

        v24 = __dst;
        v25 = __src;
        v26 = v10 - __dst;
      }

      memmove(v24, v25, v26);
    }

    else
    {
      v11 = *a1;
      v12 = &v10[a5 - *a1];
      if (v12 < 0)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v13 = (__dst - v11);
      v14 = v9 - v11;
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      if (v15)
      {
        operator new();
      }

      v31 = (__dst - v11);
      memcpy(v13, __src, a5);
      v32 = &v13[a5];
      v33 = v10 - __dst;
      memcpy(v32, __dst, v10 - __dst);
      *(a1 + 8) = __dst;
      v34 = &v13[v11 - __dst];
      memcpy(v34, v11, v31);
      *a1 = v34;
      *(a1 + 8) = &v32[v33];
      *(a1 + 16) = 0;
      if (v11)
      {

        operator delete(v11);
      }
    }
  }
}

uint64_t OggAudioStream::ProvideAudioPackets(AudioFileStreamWrapper **this, unsigned int a2, unint64_t a3, const unsigned __int8 *a4, UInt32 a5, AudioStreamPacketDescription *a6)
{
  if (a4 && a5)
  {
    AudioFileStreamWrapper::CallPacketsProc(this[1], a5, a2, a4, a6, 1);
    this[23] = (this[23] + a2);
  }

  return 1;
}

uint64_t OggAudioStream::GetProperty(OggAudioStream *this, int a2, unsigned int *a3, void *__dst)
{
  if (a2 <= 1819243875)
  {
    switch(a2)
    {
      case 1633776244:
        if (*a3 >= 8)
        {
          v11 = *(this + 213);
          if (v11)
          {
            v11 = CFRetain(v11);
          }

          v7 = 0;
          *__dst = v11;
          v8 = 8;
          goto LABEL_24;
        }

        return 561211770;
      case 1768842863:
        v7 = 561211770;
        if (!a3 || *a3 < 8)
        {
          return v7;
        }

        if (*(this + 208) || *(this + 210) != *(this + 209))
        {
          cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v15 = 257;
          VorbisComment::FillInfoDictionary(this + 208, &cf);
          if (cf)
          {
            CFRetain(cf);
            v12 = cf;
          }

          else
          {
            v12 = 0;
          }

          *__dst = v12;
          *a3 = 8;
          CACFDictionary::~CACFDictionary(&cf);
          return 0;
        }

        return 1970170687;
      case 1818586995:
        if (*a3 >= 4)
        {
          v7 = 0;
          *__dst = *(this + 380);
          return v7;
        }

        return 561211770;
    }

    goto LABEL_25;
  }

  if (a2 <= 1919316847)
  {
    if (a2 != 1819243876)
    {
      if (a2 == 1886547302)
      {
        if (*(*(this + 1) + 107) != 1)
        {
          return 1836020325;
        }

        if (*a3 >= 4)
        {
          v7 = 0;
          *__dst = *(this + 371) + *(this + 436);
          v8 = 4;
LABEL_24:
          *a3 = v8;
          return v7;
        }

        return 561211770;
      }

      goto LABEL_25;
    }

    if (*a3 < 8)
    {
      return 561211770;
    }

    if (*(this + 208) || *(this + 210) != *(this + 209))
    {
      cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v15 = 257;
      v7 = 1886681407;
      if (!VorbisComment::FillLoudnessInfoDictionary((this + 1664), &cf) && CACFDictionary::Size(&cf))
      {
        if (cf)
        {
          CFRetain(cf);
          v13 = cf;
        }

        else
        {
          v13 = 0;
        }

        v7 = 0;
        *__dst = v13;
      }

      CACFDictionary::~CACFDictionary(&cf);
      return v7;
    }

    return 1970170687;
  }

  if (a2 == 1919316848)
  {
    v7 = 1836020325;
    if (*(*(this + 1) + 107) != 1)
    {
      return v7;
    }

    if ((*(this + 188) & 0x8000000000000000) != 0)
    {
      return v7;
    }

    v7 = 561211770;
    if (!a3 || *a3 < 0x10)
    {
      return v7;
    }

    v7 = 0;
    *__dst = *(this + 94);
    v8 = 16;
    goto LABEL_24;
  }

  if (a2 != 1986225779)
  {
LABEL_25:

    return AudioFileStreamObject::GetProperty(this, a2, a3, __dst);
  }

  if (!*(this + 208) && *(this + 210) == *(this + 209))
  {
    return 1970170687;
  }

  v9 = (this + 1664);

  return VorbisComment::GetVorbisCommentFieldList(v9, a3, __dst);
}

uint64_t OggAudioStream::GetPropertyInfo(OggAudioStream *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (a2 > 1819243875)
  {
    if (a2 != 1819243876)
    {
      if (a2 == 1986225779)
      {
        if (!a3)
        {
          goto LABEL_23;
        }

        if (*(this + 208))
        {
          v6 = *(this + 210);
          v7 = *(this + 209);
        }

        else
        {
          v6 = *(this + 210);
          v7 = *(this + 209);
          if (v6 == v7)
          {
            v4 = 0;
            goto LABEL_22;
          }
        }

        v4 = 24 * ((v6 - v7) >> 4) + 16;
      }

      else
      {
        if (a2 != 1919316848)
        {
          return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
        }

        if (!a3)
        {
          goto LABEL_23;
        }

        v4 = 16;
      }

LABEL_22:
      *a3 = v4;
      goto LABEL_23;
    }
  }

  else if (a2 != 1633776244 && a2 != 1768842863)
  {
    if (a2 == 1818586995)
    {
      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 0;
      }
    }

    return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a3)
  {
    v4 = 8;
    goto LABEL_22;
  }

LABEL_23:
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

void OggAudioStream::~OggAudioStream(OggAudioStream *this)
{
  OggAudioStream::~OggAudioStream(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336A48;
  v2 = *(this + 223);
  *(this + 223) = 0;
  if (v2)
  {
    MEMORY[0x193ADF220](v2, 0x1000C40BD41A4CDLL);
  }

  Ogg::File::~File((this + 1552));
  v3 = *(this + 191);
  if (v3)
  {
    *(this + 192) = v3;
    operator delete(v3);
  }

  v4 = *(this + 44);
  if (v4)
  {
    *(this + 45) = v4;
    operator delete(v4);
  }

  AudioFileStreamObject::~AudioFileStreamObject(this);
}

void Ogg::File::~File(Ogg::File *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    CFRelease(v4);
  }

  v9 = (this + 120);
  std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v5 = *(this + 14);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    *(this + 12) = v6;
    operator delete(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    *(this + 9) = v7;
    operator delete(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 6) = v8;
    operator delete(v8);
  }
}

uint64_t DSPGraph::Buffer::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 96);
    DSPGraph::printi(a2, v4 + 4, "num buffers %u\n");
  }

  return result;
}

__n128 DSPGraph::Buffer::copyTimeFrom(DSPGraph::Buffer *this, DSPGraph::Buffer *a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 40) = v4;
  *(this + 24) = v3;
  *(this + 8) = result;
  *(this + 18) = *(a2 + 18);
  return result;
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke_10569()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

uint64_t LoudnessInfoDictionaryForISOLoudnessBox(const __CFData *a1, const __CFDictionary **a2)
{
  v5 = CFGetTypeID(a1);
  if (v5 != CFDataGetTypeID())
  {
    return 4294967246;
  }

  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  v8 = 4294967246;
  if (BytePtr && Length >= 17)
  {
    v9 = BytePtr;
    v10 = &BytePtr[Length];
    if ((BytePtr & 3) != 0)
    {
      v11 = 0;
      v12 = (BytePtr ^ 3) & 3;
      v13 = BytePtr + 1;
      v14 = 8 * ((BytePtr ^ 3) & 3) + 8;
      v15 = BytePtr;
      do
      {
        if (v15 >= v10)
        {
          v16 = 255;
        }

        else
        {
          v16 = *v15;
        }

        v11 = v16 | (v11 << 8);
        ++v15;
      }

      while ((v13++ & 3) != 0);
      v18 = &BytePtr[v12 + 1];
      v19 = v11 << ((8 * v12) ^ 0x18);
    }

    else
    {
      v19 = 0;
      v14 = 0;
      v18 = BytePtr;
    }

    v117 = 0;
    v118 = 0;
    v119 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v20 = v10 - v18;
    if (v14 + 8 * (v10 - v18) < 64)
    {
LABEL_210:
      v111 = 0;
      v112 = 0;
      v113 = 0;
      __p = 0;
      v107 = 0;
      v108 = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v104 = 257;
      v101 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v102 = 257;
      cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v100 = 257;
      CanonicalLoudness = FindCanonicalLoudness(v117, v118, &v109);
      v92 = FindCanonicalLoudness(v114, v115, v105);
      v98 = 0.0;
      v97 = 0;
      if (v92)
      {
        ExpandLoudnessBox(&v101, v105, &v98, &v97);
      }

      if (CanonicalLoudness)
      {
        ExpandLoudnessBox(&Mutable, &v109, &v98, &v97);
        if (CACFDictionary::Size(&Mutable))
        {
          CACFDictionary::AddDictionary(&cf, @"main loudness parameters", Mutable);
        }
      }

      if (v92 && CACFDictionary::Size(&v101))
      {
        CACFDictionary::AddDictionary(&cf, @"album loudness parameters", v101);
      }

      if (v97 == 1)
      {
        v95 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v96 = 257;
        CACFDictionary::AddFloat32(&v95, @"aa itu loudness", v98);
        CACFDictionary::AddDictionary(&cf, @"dialogue anchor parameters", v95);
        CACFDictionary::~CACFDictionary(&v95);
      }

      CACFDictionary::AddData(&cf, @"ISO loudness box", a1);
      if (CACFDictionary::Size(&cf) && cf)
      {
        CFRetain(cf);
        v93 = cf;
      }

      else
      {
        v93 = 0;
      }

      *a2 = v93;
      CACFDictionary::~CACFDictionary(&cf);
      CACFDictionary::~CACFDictionary(&v101);
      CACFDictionary::~CACFDictionary(&Mutable);
      if (__p)
      {
        v107 = __p;
        operator delete(__p);
      }

      if (v111)
      {
        v112 = v111;
        operator delete(v111);
      }

      v8 = 0;
      goto LABEL_230;
    }

    while (1)
    {
      v21 = v14 - 32;
      if (v14 - 32 >= 0)
      {
        break;
      }

      if (v9 <= v18 && (v20 & ~(v20 >> 63) & 0xFFFFFFFC) != 0)
      {
        v23 = bswap32(*v18);
      }

      else
      {
        v24 = 4;
        v25 = v18;
        v23 = v19;
        do
        {
          v26 = 255;
          if (v25 < v10 && v25 >= v9)
          {
            v26 = *v25;
          }

          v23 = v26 | (v23 << 8);
          v25 = (v25 + 1);
          --v24;
        }

        while (v24);
      }

      ++v18;
      v19 |= v23 >> v14;
      if (v14)
      {
        LODWORD(v8) = v23 << -v14;
        v22 = v14 - 32;
        v21 = v14;
LABEL_27:
        v14 = v22;
        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_30;
      }

      v21 = 0;
      LODWORD(v8) = 0;
      LOBYTE(v22) = -32;
LABEL_30:
      if (v9 <= v18 && ((v10 - v18) & ~((v10 - v18) >> 63) & 0xFFFFFFFC) != 0)
      {
        v27 = bswap32(*v18);
      }

      else
      {
        v28 = 4;
        v29 = v18;
        v27 = v8;
        do
        {
          v30 = 255;
          if (v29 < v10 && v29 >= v9)
          {
            v30 = *v29;
          }

          v27 = v30 | (v27 << 8);
          v29 = (v29 + 1);
          --v28;
        }

        while (v28);
      }

      ++v18;
      LODWORD(v8) = (v27 >> v21) | v8;
      v31 = v27 << -v22;
      if (v21)
      {
        v2 = v31;
      }

      else
      {
        v2 = 0;
      }

      if (v21)
      {
        v14 = v21;
      }

      else
      {
        v14 = 0;
      }

LABEL_44:
      if (v8 != 1953263477 && v8 != 1634496373)
      {
        v35 = v19 - v14;
        if (v19 > v14)
        {
          v2 = 0;
          v14 = 0;
          if (v35 < 0x20)
          {
            v19 = v35;
          }

          else
          {
            v18 = (v18 + ((v35 >> 3) & 0x1FFFFFFC));
            v19 = v35 & 0x1F;
          }
        }

        if ((v19 - 33) >= 0xFFFFFFE0)
        {
          v14 -= v19;
          if (v14 < 0)
          {
            if (((v10 - v18) & ~((v10 - v18) >> 63) & 0xFFFFFFFC) != 0 && v9 <= v18)
            {
              v2 = bswap32(*v18);
            }

            else
            {
              v88 = 4;
              v89 = v18;
              do
              {
                v90 = 255;
                if (v89 < v10 && v89 >= v9)
                {
                  v90 = *v89;
                }

                v2 = v90 | (v2 << 8);
                v89 = (v89 + 1);
                --v88;
              }

              while (v88);
            }

            ++v18;
            if (v14 == -32)
            {
              v2 = 0;
            }

            else
            {
              v2 <<= -v14;
            }

            if (v14 == -32)
            {
              v14 = 0;
            }

            else
            {
              v14 += 32;
            }
          }

          else
          {
            v2 <<= v19;
          }
        }

        goto LABEL_197;
      }

      v109 = 0;
      v110 = 0;
      v32 = HIBYTE(v2);
      v111 = 0;
      v33 = v14 - 8;
      if (v14 - 8 < 0)
      {
        if (((v10 - v18) & ~((v10 - v18) >> 63) & 0xFFFFFFFC) != 0 && v9 <= v18)
        {
          v2 = bswap32(*v18);
        }

        else
        {
          v36 = 4;
          v37 = v18;
          do
          {
            v38 = 255;
            if (v37 < v10 && v37 >= v9)
            {
              v38 = *v37;
            }

            v2 = v38 | (v2 << 8);
            v37 = (v37 + 1);
            --v36;
          }

          while (v36);
        }

        ++v18;
        v33 = v14 + 24;
        v32 |= v2 >> (v14 + 24);
        if (v14 == -24)
        {
          goto LABEL_66;
        }

        v34 = v2 << (8 - v14);
      }

      else
      {
        v34 = v2 << 8;
      }

      if (v33 > 23)
      {
        v41 = 24;
        goto LABEL_72;
      }

LABEL_66:
      v39 = 24 - v33;
      LODWORD(v40) = ((24 - v33) >> 3) & 0x1FFFFFFC;
      if (v39 >= 0x20)
      {
        v40 = v40;
      }

      else
      {
        v40 = 0;
      }

      v18 = (v18 + v40);
      v41 = v39 & 0x1F;
      if ((v39 & 0x1F) == 0)
      {
        v2 = 0;
        if (!v32)
        {
          v53 = 1;
          v52 = 1;
          v14 = 0;
          goto LABEL_105;
        }

        v43 = 0;
        v14 = 0;
LABEL_89:
        if (((v10 - v18) & ~((v10 - v18) >> 63) & 0xFFFFFFFC) != 0 && v9 <= v18)
        {
          v2 = bswap32(*v18);
        }

        else
        {
          v49 = 4;
          v50 = v18;
          do
          {
            v51 = 255;
            if (v50 < v10 && v50 >= v9)
            {
              v51 = *v50;
            }

            v2 = v51 | (v2 << 8);
            v50 = (v50 + 1);
            --v49;
          }

          while (v49);
        }

        v44 = v14 + 24;
        v43 |= v2 >> (v14 + 24);
        ++v18;
        v2 <<= 8 - v14;
        goto LABEL_98;
      }

      v33 = 0;
      v34 = 0;
LABEL_72:
      v42 = v33 - v41;
      if (v42 < 0)
      {
        if (((v10 - v18) & ~((v10 - v18) >> 63) & 0xFFFFFFFC) == 0 || v9 > v18)
        {
          v46 = 4;
          v47 = v18;
          do
          {
            v48 = 255;
            if (v47 < v10 && v47 >= v9)
            {
              v48 = *v47;
            }

            v34 = v48 | (v34 << 8);
            v47 = (v47 + 1);
            --v46;
          }

          while (v46);
        }

        else
        {
          v34 = bswap32(*v18);
        }

        v14 = v42 + 32;
        ++v18;
        v2 = v34 << -v42;
        if (!v32)
        {
LABEL_100:
          v52 = 1;
          v53 = 1;
          goto LABEL_105;
        }
      }

      else
      {
        v2 = v34 << v41;
        v14 = v42;
        if (!v32)
        {
          goto LABEL_100;
        }
      }

      v43 = HIBYTE(v2);
      v44 = v14 - 8;
      if (v14 < 8)
      {
        goto LABEL_89;
      }

      v2 <<= 8;
LABEL_98:
      v52 = 0;
      v53 = v43 & 0x3F;
      v14 = v44;
LABEL_105:
      std::vector<ISOLoudnessInfo>::resize(&v109, v53);
      v54 = v109;
      if (-858993459 * ((v110 - v109) >> 3))
      {
        v55 = 0;
        while (1)
        {
          if (v52)
          {
            v56 = 0;
          }

          else
          {
            v57 = HIBYTE(v2);
            if (v14 - 8 < 0)
            {
              if (((v10 - v18) & ~((v10 - v18) >> 63) & 0xFFFFFFFC) == 0 || v9 > v18)
              {
                v59 = 4;
                v60 = v18;
                do
                {
                  v61 = 255;
                  if (v60 < v10 && v60 >= v9)
                  {
                    v61 = *v60;
                  }

                  v2 = v61 | (v2 << 8);
                  v60 = (v60 + 1);
                  --v59;
                }

                while (v59);
              }

              else
              {
                v2 = bswap32(*v18);
              }

              ++v18;
              v57 |= v2 >> (v14 + 24);
              if (v14 == -24)
              {
                v2 = 0;
              }

              else
              {
                v2 <<= 8 - v14;
              }

              if (v14 == -24)
              {
                v14 = 0;
              }

              else
              {
                v14 += 24;
              }
            }

            else
            {
              v2 <<= 8;
              v14 -= 8;
            }

            v56 = v57 & 0x3F;
          }

          v62 = &v54[5 * v55];
          *v62 = v56;
          v63 = v2 >> 4;
          v64 = v14 - 28;
          if (v14 - 28 < 0)
          {
            if (((v10 - v18) & ~((v10 - v18) >> 63) & 0xFFFFFFFC) != 0 && v9 <= v18)
            {
              v2 = bswap32(*v18);
            }

            else
            {
              v66 = 4;
              v67 = v18;
              do
              {
                v68 = 255;
                if (v67 < v10 && v67 >= v9)
                {
                  v68 = *v67;
                }

                v2 = v68 | (v2 << 8);
                v67 = (v67 + 1);
                --v66;
              }

              while (v66);
            }

            ++v18;
            v63 |= v2 >> (v14 + 4);
            v65 = v14 == -4 ? 0 : v2 << (28 - v14);
            v64 = v14 == -4 ? 0 : v14 + 4;
          }

          else
          {
            v65 = v2 << 28;
          }

          *(v62 + 1) = (v63 >> 18) & 0x7F;
          *(v62 + 2) = (v63 >> 12) & 0x3F;
          *(v62 + 2) = ((16 * v63) >> 15) & 0xF000 | v63 & 0xFFF;
          v69 = v65 >> 4;
          v14 = v64 - 28;
          if (v64 - 28 < 0)
          {
            if (((v10 - v18) & ~((v10 - v18) >> 63) & 0xFFFFFFFC) != 0 && v9 <= v18)
            {
              v65 = bswap32(*v18);
            }

            else
            {
              v70 = 4;
              v71 = v18;
              do
              {
                v72 = 255;
                if (v71 < v10 && v71 >= v9)
                {
                  v72 = *v71;
                }

                v65 = v72 | (v65 << 8);
                v71 = (v71 + 1);
                --v70;
              }

              while (v70);
            }

            v73 = v65 << (28 - v64);
            v74 = v64 + 4;
            ++v18;
            v69 |= v65 >> v74;
            v2 = v74 ? v73 : 0;
            v14 = v74 ? v74 : 0;
          }

          else
          {
            v2 = v65 << 28;
          }

          *(v62 + 3) = ((v69 >> 12) >> 15) & 0xF000 | HIWORD(v69) & 0xFFF;
          v75 = v69 >> 12;
          *(v62 + 8) = v75;
          if (v75 > 0xB)
          {
            break;
          }

          *(v62 + 9) = BYTE1(v69) & 0xF;
          if (((v69 >> 8) & 0xF) > 3)
          {
            break;
          }

          *(v62 + 10) = v69;
          std::vector<LoudnessMethod>::resize(v62 + 2, v69);
          v54 = v109;
          v76 = v109[5 * v55 + 2];
          v77 = v109[5 * v55 + 3] - v76;
          if ((v77 & 0x3FFFFFFFCLL) != 0)
          {
            v78 = 0;
            v79 = (v77 >> 2);
            do
            {
              v80 = v2 >> 8;
              if (v14 - 24 < 0)
              {
                if (((v10 - v18) & ~((v10 - v18) >> 63) & 0xFFFFFFFC) == 0 || v9 > v18)
                {
                  v82 = 4;
                  v83 = v18;
                  do
                  {
                    v84 = 255;
                    if (v83 < v10 && v83 >= v9)
                    {
                      v84 = *v83;
                    }

                    v2 = v84 | (v2 << 8);
                    v83 = (v83 + 1);
                    --v82;
                  }

                  while (v82);
                }

                else
                {
                  v2 = bswap32(*v18);
                }

                ++v18;
                v80 |= v2 >> (v14 + 8);
                if (v14 == -8)
                {
                  v2 = 0;
                }

                else
                {
                  v2 <<= 24 - v14;
                }

                if (v14 == -8)
                {
                  v14 = 0;
                }

                else
                {
                  v14 += 8;
                }
              }

              else
              {
                v2 <<= 24;
                v14 -= 24;
              }

              v85 = &v76[4 * v78];
              *v85 = BYTE2(v80);
              if (BYTE2(v80) > 9u)
              {
                goto LABEL_223;
              }

              v85[1] = BYTE1(v80);
              v85[2] = v80 >> 4;
              if (v80 > 0xBFu)
              {
                goto LABEL_223;
              }

              v85[3] = v80 & 0xF;
              if ((v80 & 0xF) > 3)
              {
                goto LABEL_223;
              }
            }

            while (++v78 != v79);
          }

          if (++v55 >= (-858993459 * ((v110 - v54) >> 3)))
          {
            goto LABEL_187;
          }
        }

LABEL_223:
        v105[0] = &v109;
        std::vector<ISOLoudnessInfo>::__destroy_vector::operator()[abi:ne200100](v105);
        v8 = 4294967246;
LABEL_230:
        v109 = &v114;
        std::vector<ISOLoudnessInfoBox>::__destroy_vector::operator()[abi:ne200100](&v109);
        v109 = &v117;
        std::vector<ISOLoudnessInfoBox>::__destroy_vector::operator()[abi:ne200100](&v109);
        return v8;
      }

LABEL_187:
      if (v8 == 1953263477)
      {
        v8 = v118;
        if (v118 >= v119)
        {
          v86 = std::vector<ISOLoudnessInfoBox>::__emplace_back_slow_path<ISOLoudnessInfoBox&>(&v117, &v109);
        }

        else
        {
          *v118 = 0;
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          std::vector<ISOLoudnessInfo>::__init_with_size[abi:ne200100]<ISOLoudnessInfo*,ISOLoudnessInfo*>(v8, v109, v110, 0xCCCCCCCCCCCCCCCDLL * ((v110 - v109) >> 3));
          v86 = (v8 + 24);
        }

        v118 = v86;
      }

      else
      {
        v8 = v115;
        if (v115 >= v116)
        {
          v87 = std::vector<ISOLoudnessInfoBox>::__emplace_back_slow_path<ISOLoudnessInfoBox&>(&v114, &v109);
        }

        else
        {
          *v115 = 0;
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          std::vector<ISOLoudnessInfo>::__init_with_size[abi:ne200100]<ISOLoudnessInfo*,ISOLoudnessInfo*>(v8, v109, v110, 0xCCCCCCCCCCCCCCCDLL * ((v110 - v109) >> 3));
          v87 = (v8 + 24);
        }

        v115 = v87;
      }

      v105[0] = &v109;
      std::vector<ISOLoudnessInfo>::__destroy_vector::operator()[abi:ne200100](v105);
LABEL_197:
      v20 = v10 - v18;
      v19 = v2;
      if (v14 + 8 * (v10 - v18) <= 63)
      {
        goto LABEL_210;
      }
    }

    v22 = v14 - 64;
    goto LABEL_27;
  }

  return v8;
}

void sub_18F846F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t *a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  *(v27 - 104) = v26;
  a18 = &a23;
  std::vector<ISOLoudnessInfo>::__destroy_vector::operator()[abi:ne200100](&a18);
  a23 = v27 - 136;
  std::vector<ISOLoudnessInfoBox>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = v27 - 112;
  std::vector<ISOLoudnessInfoBox>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void std::vector<ISOLoudnessInfo>::__init_with_size[abi:ne200100]<ISOLoudnessInfo*,ISOLoudnessInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      std::allocator<ISOLoudnessInfo>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::vector<ISOLoudnessInfoBox>::__emplace_back_slow_path<ISOLoudnessInfoBox&>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 24 * v2;
  v16 = 0;
  v17 = v6;
  v18 = 24 * v2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  std::vector<ISOLoudnessInfo>::__init_with_size[abi:ne200100]<ISOLoudnessInfo*,ISOLoudnessInfo*>(24 * v2, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  *&v18 = v18 + 24;
  v8 = *a1;
  v7 = a1[1];
  v9 = v17 + *a1 - v7;
  if (*a1 != v7)
  {
    v10 = (v17 + *a1 - v7);
    v11 = *a1;
    do
    {
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      *v10 = *v11;
      v10[2] = v11[2];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v11 += 3;
      v10 += 3;
    }

    while (v11 != v7);
    do
    {
      v20 = v8;
      std::vector<ISOLoudnessInfo>::__destroy_vector::operator()[abi:ne200100](&v20);
      v8 += 3;
    }

    while (v8 != v7);
  }

  v12 = *a1;
  *a1 = v9;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ISOLoudnessInfoBox>::~__split_buffer(&v16);
  return v15;
}

void sub_18F847348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ISOLoudnessInfoBox>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<ISOLoudnessInfoBox>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<ISOLoudnessInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ISOLoudnessBoxForLoudnessInfoDictionary(const __CFDictionary *a1, const __CFData **a2)
{
  v49 = *MEMORY[0x1E69E9840];
  theDict = 0;
  if (!CFDictionaryContainsKey(a1, @"ISO loudness box"))
  {
    v40 = 0;
    v38 = a1;
    v39 = 0;
    memset(&v37, 0, sizeof(v37));
    v12 = LoudnessMethodsCountFromLID(&v38, &v40);
    v13 = v40;
    if (v40 > 0xFF)
    {
      v5 = 4294967246;
LABEL_57:
      CACFDictionary::~CACFDictionary(&v38);
      goto LABEL_63;
    }

    v14 = v12;
    v15 = 3 * v12;
    v16 = (3 * v12 + 21);
    if (v12)
    {
      v17 = 3 * v12 + 21;
    }

    else
    {
      v17 = 0;
    }

    v18 = 3 * v40 + 21;
    if (v40)
    {
      v19 = 3 * v40 + 9;
    }

    else
    {
      v19 = 0;
    }

    if (!v40)
    {
      v18 = 0;
    }

    v20 = v18 + v17;
    if (!(v18 + v17))
    {
      v5 = 4294967246;
      goto LABEL_55;
    }

    std::vector<unsigned char>::__append(&v37, v18 + v17);
    begin = v37.__begin_;
    if (v14)
    {
      *v46 = v37.__begin_;
      *&v46[8] = v37.__begin_;
      *&v46[16] = &v37.__begin_[v15 + 9];
      v47 = 0x2000000000;
      v48 = v37.__begin_ & 3;
      AT::TBitstreamWriter<unsigned int>::PutBits(v46, v15 + 21, 0x20u);
      AT::TBitstreamWriter<unsigned int>::PutBits(v46, 1953263477, 0x20u);
      AT::TBitstreamWriter<unsigned int>::PutBits(v46, 1, 8u);
      AT::TBitstreamWriter<unsigned int>::PutBits(v46, 0, 0x18u);
      AT::TBitstreamWriter<unsigned int>::Flush(v46);
      v5 = SerializeTrackLoudnessData(a1, begin + 12, v14, v15 + 9, 0);
      if (v5)
      {
        v22 = CADefaultLog();
        if (v22)
        {
          v23 = v22;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v43 = "AudioFormatISOLoudnessBox.cpp";
            v44 = 1024;
            v45 = 251;
            _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioFormat: SerializeTrackLoudnessData failed for track loudness\n", buf, 0x12u);
          }
        }

        goto LABEL_55;
      }

      begin = v37.__begin_;
      LOWORD(v13) = v40;
      if (!v40)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v16 = 0;
      if (!v13)
      {
LABEL_54:
        v5 = 0;
        *a2 = CFDataCreate(*MEMORY[0x1E695E480], begin, v20);
LABEL_55:
        if (v37.__begin_)
        {
          operator delete(v37.__begin_);
        }

        goto LABEL_57;
      }
    }

    v29 = &begin[v16];
    *v46 = v29;
    *&v46[8] = v29;
    *&v46[16] = &v29[v19];
    v47 = 0x2000000000;
    v48 = v29 & 3;
    AT::TBitstreamWriter<unsigned int>::PutBits(v46, v19 + 12, 0x20u);
    AT::TBitstreamWriter<unsigned int>::PutBits(v46, 1634496373, 0x20u);
    AT::TBitstreamWriter<unsigned int>::PutBits(v46, 1, 8u);
    AT::TBitstreamWriter<unsigned int>::PutBits(v46, 0, 0x18u);
    AT::TBitstreamWriter<unsigned int>::Flush(v46);
    if (SerializeTrackLoudnessData(a1, v29 + 12, v13, v19, 1))
    {
      v30 = CADefaultLog();
      if (v30)
      {
        v31 = v30;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v43 = "AudioFormatISOLoudnessBox.cpp";
          v44 = 1024;
          v45 = 266;
          _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioFormat: SerializeTrackLoudnessData failed for album loudness\n", buf, 0x12u);
        }
      }

      v5 = 1;
      goto LABEL_55;
    }

    begin = v37.__begin_;
    goto LABEL_54;
  }

  Value = CFDictionaryGetValue(a1, @"ISO loudness box");
  v5 = LoudnessInfoDictionaryForISOLoudnessBox(Value, &theDict);
  if (v5)
  {
    goto LABEL_65;
  }

  if (CFDictionaryContainsKey(a1, @"main loudness parameters"))
  {
    if (!CFDictionaryContainsKey(a1, @"main loudness parameters"))
    {
      v24 = CADefaultLog();
      if (!v24)
      {
        goto LABEL_62;
      }

      v25 = v24;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_62;
      }

      *v46 = 136315394;
      *&v46[4] = "AudioFormatISOLoudnessBox.cpp";
      *&v46[12] = 1024;
      *&v46[14] = 167;
      v26 = "%25s:%-5d AudioFormat: LID inconsistency, dictionary has kLoudnessInfoDictionary_MainLoudnessParametersKey, but not ISOLoudnessBox\n";
      goto LABEL_61;
    }

    v6 = CFDictionaryGetValue(a1, @"main loudness parameters");
    v7 = CFDictionaryGetValue(theDict, @"main loudness parameters");
    if (!CFEqual(v6, v7))
    {
      v27 = CADefaultLog();
      if (!v27)
      {
        goto LABEL_62;
      }

      v25 = v27;
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_62;
      }

      *v46 = 136315394;
      *&v46[4] = "AudioFormatISOLoudnessBox.cpp";
      *&v46[12] = 1024;
      *&v46[14] = 174;
      v26 = "%25s:%-5d AudioFormat: LID inconsistency, main loudness parameters mismatch\n";
      goto LABEL_61;
    }
  }

  if (CFDictionaryContainsKey(a1, @"album loudness parameters"))
  {
    if (!CFDictionaryContainsKey(a1, @"album loudness parameters"))
    {
      v28 = CADefaultLog();
      if (!v28)
      {
        goto LABEL_62;
      }

      v25 = v28;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_62;
      }

      *v46 = 136315394;
      *&v46[4] = "AudioFormatISOLoudnessBox.cpp";
      *&v46[12] = 1024;
      *&v46[14] = 182;
      v26 = "%25s:%-5d AudioFormat: LID inconsistency, dictionary has kLoudnessInfoDictionary_AlbumLoudnessParametersKey, but not ISOLoudnessBox\n";
      goto LABEL_61;
    }

    v8 = CFDictionaryGetValue(a1, @"album loudness parameters");
    v9 = CFDictionaryGetValue(theDict, @"album loudness parameters");
    if (!CFEqual(v8, v9))
    {
      v32 = CADefaultLog();
      if (!v32)
      {
        goto LABEL_62;
      }

      v25 = v32;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_62;
      }

      *v46 = 136315394;
      *&v46[4] = "AudioFormatISOLoudnessBox.cpp";
      *&v46[12] = 1024;
      *&v46[14] = 189;
      v26 = "%25s:%-5d AudioFormat: LID inconsistency, album loudness parameters mismatch\n";
      goto LABEL_61;
    }
  }

  if (!CFDictionaryContainsKey(a1, @"dialogue anchor parameters"))
  {
LABEL_12:
    v5 = 0;
    *a2 = CFDataCreateCopy(*MEMORY[0x1E695E480], Value);
    goto LABEL_63;
  }

  if (CFDictionaryContainsKey(a1, @"dialogue anchor parameters"))
  {
    v10 = CFDictionaryGetValue(a1, @"dialogue anchor parameters");
    v11 = CFDictionaryGetValue(theDict, @"dialogue anchor parameters");
    if (CFEqual(v10, v11))
    {
      goto LABEL_12;
    }

    v34 = CADefaultLog();
    if (!v34)
    {
      goto LABEL_62;
    }

    v25 = v34;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    *v46 = 136315394;
    *&v46[4] = "AudioFormatISOLoudnessBox.cpp";
    *&v46[12] = 1024;
    *&v46[14] = 204;
    v26 = "%25s:%-5d AudioFormat: LID inconsistency, dialogue anchor parameters mismatch\n";
  }

  else
  {
    v33 = CADefaultLog();
    if (!v33)
    {
      goto LABEL_62;
    }

    v25 = v33;
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    *v46 = 136315394;
    *&v46[4] = "AudioFormatISOLoudnessBox.cpp";
    *&v46[12] = 1024;
    *&v46[14] = 197;
    v26 = "%25s:%-5d AudioFormat: LID inconsistency, dictionary has kLoudnessInfoDictionary_DialogueAnchorParametersKey, but not ISOLoudnessBox\n";
  }

LABEL_61:
  _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_ERROR, v26, v46, 0x12u);
LABEL_62:
  v5 = 4294967246;
LABEL_63:
  if (theDict)
  {
    CFRelease(theDict);
  }

LABEL_65:
  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_18F847A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  CACFDictionary::~CACFDictionary(&a13);
  _Unwind_Resume(a1);
}

void getValidationCapsuleVersion(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getvalidationCapsuleVersionSymbolLoc(void)::ptr;
  v7 = getvalidationCapsuleVersionSymbolLoc(void)::ptr;
  if (!getvalidationCapsuleVersionSymbolLoc(void)::ptr)
  {
    v1 = ValidationCapsuleLibrary();
    v5[3] = dlsym(v1, "validationCapsuleVersion");
    getvalidationCapsuleVersionSymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UInt32 validation_validationCapsuleVersion()"];
    [v2 handleFailureInFunction:v3 file:@"AudioComponentValidation.mm" lineNumber:83 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18F847C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL36getvalidationCapsuleVersionSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = ValidationCapsuleLibrary();
  result = dlsym(v2, "validationCapsuleVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getvalidationCapsuleVersionSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ValidationCapsuleLibrary(void)
{
  v5 = 0;
  v0 = ValidationCapsuleLibraryCore(&v5);
  if (!v0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ValidationCapsuleLibrary()"];
    [v1 handleFailureInFunction:v4 file:@"AudioComponentValidation.mm" lineNumber:68 description:{@"%s", v5}];

    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = v5;
  if (v5)
  {
LABEL_5:
    free(v2);
  }

  return v1;
}

uint64_t ValidationCapsuleLibraryCore(char **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v1 = ValidationCapsuleLibraryCore(char **)::frameworkLibrary;
  v7 = ValidationCapsuleLibraryCore(char **)::frameworkLibrary;
  if (!ValidationCapsuleLibraryCore(char **)::frameworkLibrary)
  {
    v8 = xmmword_1E72C1C08;
    v5[3] = _sl_dlopen();
    ValidationCapsuleLibraryCore(char **)::frameworkLibrary = v5[3];
    v1 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void sub_18F847E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL28ValidationCapsuleLibraryCorePPc_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ValidationCapsuleLibraryCore(char **)::frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void validateComponent(__int128 *a1, uint64_t a2, void *a3, void *a4)
{
  v75 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (*(a1 + 1) != 24949)
  {
    v15 = 1;
LABEL_12:
    (*(v7 + 2))(v7, v15, 0);
    goto LABEL_13;
  }

  if (!*(a1 + 1) || !*(a1 + 2))
  {
    v15 = 0;
    goto LABEL_12;
  }

  if (a3)
  {
    v9 = [a3 mutableCopy];
    BYTE4(v71) = 0;
    *(&v71 + 1) = 0;
    LODWORD(v72) = 1;
    WORD2(v72) = 257;
    BYTE6(v72) = 0;
    *(&v72 + 1) = 0;
    v73 = 0x100000000;
    v10 = [v9 objectForKeyedSubscript:@"arch"];
    if ([v10 isEqualToString:@"x86_64"])
    {
      v11 = 16777223;
    }

    else
    {
      v11 = 16777228;
    }

    LODWORD(v71) = v11;

    v12 = [v9 objectForKeyedSubscript:@"ForceValidation"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 BOOLValue];
      BYTE4(v71) = v14;
    }

    else
    {
      v14 = 0;
    }

    v20 = [v9 objectForKeyedSubscript:@"TimeOut"];
    v21 = v20;
    if (v20)
    {
      [v20 doubleValue];
      v19 = v22;
      *(&v71 + 1) = v22;
    }

    else
    {
      v19 = 0.0;
    }

    v23 = [v9 objectForKey:@"LoadOutOfProcess"];
    if (v23)
    {
      v24 = [v9 objectForKeyedSubscript:@"LoadOutOfProcess"];
      v17 = [v24 BOOLValue];
      LOBYTE(v73) = v17;
    }

    else
    {
      v17 = 0;
      LOBYTE(v73) = 0;
    }

    v25 = [v9 objectForKeyedSubscript:@"StressTest"];
    v26 = v25;
    if (v25)
    {
      [v25 doubleValue];
      *(&v72 + 1) = v27;
    }

    v28 = [v9 objectForKeyedSubscript:@"TerminateOnFirstError"];
    v29 = v28;
    if (v28)
    {
      LOBYTE(v72) = [v28 BOOLValue];
    }

    v30 = [v9 objectForKeyedSubscript:@"TerminateOnFirstWarning"];
    v31 = v30;
    if (v30)
    {
      BYTE1(v72) = [v30 BOOLValue];
    }

    v32 = [v9 objectForKeyedSubscript:@"SkipUIComponentTests"];
    v33 = v32;
    if (v32)
    {
      BYTE3(v73) = [v32 BOOLValue];
    }

    v34 = [v9 objectForKeyedSubscript:@"Repeats"];
    v35 = v34;
    if (v34)
    {
      v18 = [v34 intValue];
      HIDWORD(v73) = v18;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v17 = 0;
    v14 = 0;
    v11 = 16777228;
    LODWORD(v71) = 16777228;
    BYTE4(v71) = 0;
    *(&v71 + 1) = 0;
    LODWORD(v72) = 1;
    WORD2(v72) = 257;
    BYTE6(v72) = 0;
    *(&v72 + 1) = 0;
    v73 = 0x100000000;
    v18 = 1;
    v19 = 0.0;
  }

  getValidationCapsuleVersion();
  v37 = v36;
  if ((v14 & 1) == 0)
  {
    v38 = getValidationResultFromCache(a1, v11, a2, v36, v17);
    v39 = v38;
    if (v38)
    {
      v40 = [v38 mutableCopy];
      v41 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v40 setObject:v41 forKeyedSubscript:@"WasCached"];

      v42 = [v40 objectForKeyedSubscript:@"Result"];
      v43 = [v42 unsignedIntValue];

      if (v43)
      {
        (v8)[2](v8, v43, v40);

        goto LABEL_13;
      }
    }
  }

  if (*(a1 + 2) != 1634758764)
  {
    LOBYTE(v73) = 1;
  }

  if (v19 == 0.0)
  {
    *(&v71 + 1) = 0x4082C00000000000;
    v19 = 600.0;
  }

  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  v70 = v18;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = __Block_byref_object_copy__10611;
  v67[4] = __Block_byref_object_dispose__10612;
  v68 = [MEMORY[0x1E695E0F0] mutableCopy];
  v61 = 0;
  v62 = &v61;
  v63 = 0x3042000000;
  v64 = __Block_byref_object_copy__4;
  v65 = __Block_byref_object_dispose__5;
  v66 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = ___Z17validateComponent25AudioComponentDescriptionjPK14__CFDictionaryU13block_pointerFv30AudioComponentValidationResultS2_E_block_invoke;
  v49[3] = &unk_1E72C1BE8;
  v51 = v69;
  v52 = v67;
  v57 = *a1;
  v44 = *(a1 + 4);
  v56 = v73;
  v54 = v71;
  v55 = v72;
  v53 = &v61;
  v58 = v44;
  v59 = a2;
  v60 = v37;
  v45 = v8;
  v50 = v45;
  v46 = _Block_copy(v49);
  objc_storeWeak(v62 + 5, v46);
  if (ValidationCapsuleLibraryCore(0) && getvalidateWithParametersAsyncSymbolLoc())
  {
    *buf = *a1;
    *&buf[16] = *(a1 + 4);
    validation_validateWithParametersAsync(buf, &v72, v46, v19);
  }

  else
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v47 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioComponentValidation.mm";
      *&buf[12] = 1024;
      *&buf[14] = 234;
      _os_log_impl(&dword_18F5DF000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d validateWithParametersAsync not available", buf, 0x12u);
    }

    (*(v45 + 2))(v45, 0, 0);
  }

  _Block_object_dispose(&v61, 8);
  objc_destroyWeak(&v66);

  _Block_object_dispose(v67, 8);
  _Block_object_dispose(v69, 8);
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
}

void sub_18F8485CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  _Block_object_dispose(&a26, 8);
  objc_destroyWeak((v39 + 40));

  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v40 - 216), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10611(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___Z17validateComponent25AudioComponentDescriptionjPK14__CFDictionaryU13block_pointerFv30AudioComponentValidationResultS2_E_block_invoke(uint64_t a1, int a2, __CFDictionary *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 != 3)
  {
    if (a2 == 1)
    {
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 24);
      *(v5 + 24) = v6 - 1;
      if (v6 >= 2)
      {
        if (!gAudioComponentLogCategory)
        {
          operator new();
        }

        v7 = *gAudioComponentLogCategory;
        if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(*(*(a1 + 40) + 8) + 24);
          *v17 = 136315650;
          *&v17[4] = "AudioComponentValidation.mm";
          *&v17[12] = 1024;
          *&v17[14] = 201;
          *&v17[18] = 1024;
          LODWORD(v18) = v13;
          _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Repeated validations: %d", v17, 0x18u);
        }

        v14 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"Output"];
        if (v14)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v14];
        }

        *v17 = *(a1 + 104);
        *&v17[16] = *(a1 + 120);
        v15 = *(a1 + 72);
        WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
        validation_validateWithParametersAsync(v17, a1 + 80, WeakRetained, v15);

        goto LABEL_16;
      }
    }

    writeValidationResultToCache((a1 + 104), *(a1 + 64), *(a1 + 124), *(a1 + 128), *(a1 + 96), a3);
  }

  if (*(a1 + 100) != 1 && [*(*(*(a1 + 48) + 8) + 40) count])
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v8 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(*(*(a1 + 48) + 8) + 40) count];
      *v17 = 136315650;
      *&v17[4] = "AudioComponentValidation.mm";
      *&v17[12] = 1024;
      *&v17[14] = 220;
      *&v17[18] = 2048;
      v18 = v10 + 1;
      _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Done running repeated validations: %lu", v17, 0x1Cu);
    }

    [(__CFDictionary *)a3 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:@"RepeatsOutput"];
  }

  (*(*(a1 + 32) + 16))();
LABEL_16:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t getvalidateWithParametersAsyncSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getvalidateWithParametersAsyncSymbolLoc(void)::ptr;
  v6 = getvalidateWithParametersAsyncSymbolLoc(void)::ptr;
  if (!getvalidateWithParametersAsyncSymbolLoc(void)::ptr)
  {
    v1 = ValidationCapsuleLibrary();
    v4[3] = dlsym(v1, "validateWithParametersAsync");
    getvalidateWithParametersAsyncSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_18F848B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void validation_validateWithParametersAsync(__int128 *a1, uint64_t a2, void *a3, double a4)
{
  v7 = a3;
  v8 = getvalidateWithParametersAsyncSymbolLoc();
  if (v8)
  {
    v11 = *a1;
    v12 = *(a1 + 4);
    v8(&v11, a2, v7, a4);
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus validation_validateWithParametersAsync(const AudioComponentDescription, const ValidationCapsuleParameters &, double, void (^__strong)(AudioComponentValidationResult, CFDictionaryRef))"}];
    [v9 handleFailureInFunction:v10 file:@"AudioComponentValidation.mm" lineNumber:81 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void *___ZL39getvalidateWithParametersAsyncSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = ValidationCapsuleLibrary();
  result = dlsym(v2, "validateWithParametersAsync");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getvalidateWithParametersAsyncSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void APAC::MetadataConfigJSON(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  v724[0] = 4;
  v725 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v724);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v724);
  v529 = a2;
  v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "metadataFrameCompressionEnabled");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v724);
  v6 = *v5;
  *v5 = 4;
  v724[0] = v6;
  v7 = *(v5 + 1);
  *(v5 + 1) = v4;
  v725 = v7;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v724);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v725, v6);
  v8 = a1[1];
  v722[0] = 4;
  v723 = v8;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v722);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v722);
  v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "mRendererMetadataConfigPresent");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v722);
  v10 = *v9;
  *v9 = 4;
  v722[0] = v10;
  v11 = *(v9 + 1);
  *(v9 + 1) = v8;
  v723 = v11;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v722);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v723, v10);
  if (a1[1] == 1)
  {
    v12 = a1;
    v13 = *(a1 + 4);
    v720[0] = 5;
    v721 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v720);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v720);
    v14 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "mRendererMetadataConfig");
    v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v14, "mGroupCount");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v720);
    v16 = *v15;
    *v15 = 5;
    v720[0] = v16;
    v17 = *(v15 + 1);
    *(v15 + 1) = v13;
    v721 = v17;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v720);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v721, v16);
    v18 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "mRendererMetadataConfig");
    v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v18, "mGlobalConfig");
    v20 = a1[16];
    v718[0] = 4;
    v719 = v20;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v718);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v718);
    v21 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mHasData");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v718);
    LODWORD(v13) = *v21;
    *v21 = 4;
    v718[0] = v13;
    v22 = *(v21 + 1);
    *(v21 + 1) = v20;
    v719 = v22;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v718);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v719, v13);
    if (a1[16] == 1)
    {
      v23 = *(a1 + 9);
      v716[0] = 5;
      v717 = v23;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v716);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v716);
      v24 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mNumParameters");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v716);
      v25 = *v24;
      *v24 = 5;
      v716[0] = v25;
      v26 = *(v24 + 1);
      *(v24 + 1) = v23;
      v717 = v26;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v716);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v717, v25);
      if (*(a1 + 9))
      {
        v27 = 0;
        v28 = a1 + 4096;
        v526 = a1 + 20;
        v29 = a1 + 4530;
        v527 = a1 + 4200;
        while (2)
        {
          v528 = v27;
          switch(*&v526[2 * v27])
          {
            case 0:
              v30 = v28[20];
              v714[0] = 4;
              v715 = v30;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v714);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v714);
              v31 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mApplyPostProcReverb");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v714);
              v32 = *v31;
              *v31 = 4;
              v714[0] = v32;
              v33 = *(v31 + 1);
              *(v31 + 1) = v30;
              v715 = v33;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v714);
              v34 = v714;
              goto LABEL_53;
            case 1:
              v227 = v28[21];
              v712[0] = 4;
              v713 = v227;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v712);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v712);
              v228 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mIs6DoF");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v712);
              v32 = *v228;
              *v228 = 4;
              v712[0] = v32;
              v229 = *(v228 + 1);
              *(v228 + 1) = v227;
              v713 = v229;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v228);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v712);
              v34 = v712;
              goto LABEL_53;
            case 2:
              v181 = v28[22];
              v710[0] = 4;
              v711 = v181;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v710);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v710);
              v182 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mHasSceneRadiationPattern");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v710);
              v32 = *v182;
              *v182 = 4;
              v710[0] = v32;
              v183 = *(v182 + 1);
              *(v182 + 1) = v181;
              v711 = v183;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v182);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v710);
              v34 = v710;
              goto LABEL_53;
            case 3:
              v184 = v28[23];
              v708[0] = 5;
              v709 = v184;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v708);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v708);
              v185 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mTargetPlaybackSystemIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v708);
              v32 = *v185;
              *v185 = 5;
              v708[0] = v32;
              v186 = *(v185 + 1);
              *(v185 + 1) = v184;
              v709 = v186;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v185);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v708);
              v34 = v708;
              goto LABEL_53;
            case 4:
              v55 = v28[26];
              v706[0] = 5;
              v707 = v55;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v706);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v706);
              v56 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mAuthoringInformation");
              v57 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v56, "mAuthoringToolNameIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v706);
              v58 = *v57;
              *v57 = 5;
              v706[0] = v58;
              v59 = *(v57 + 1);
              *(v57 + 1) = v55;
              v707 = v59;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v706);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v707, v58);
              v60 = v28[27];
              v704[0] = 5;
              v705 = v60;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v704);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v704);
              v61 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mAuthoringInformation");
              v62 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v61, "mAuthoringToolVersion");
              v63 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v62, "mMajor");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v704);
              v64 = *v63;
              *v63 = 5;
              v704[0] = v64;
              v65 = *(v63 + 1);
              *(v63 + 1) = v60;
              v705 = v65;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v63);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v704);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v705, v64);
              v66 = v28[28];
              v702[0] = 5;
              v703 = v66;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v702);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v702);
              v67 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mAuthoringInformation");
              v68 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v67, "mAuthoringToolVersion");
              v69 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v68, "mMinor");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v702);
              v70 = *v69;
              *v69 = 5;
              v702[0] = v70;
              v71 = *(v69 + 1);
              *(v69 + 1) = v66;
              v703 = v71;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v69);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v702);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v703, v70);
              v72 = v28[29];
              v700[0] = 5;
              v701 = v72;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v700);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v700);
              v73 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mAuthoringInformation");
              v74 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v73, "mAuthoringToolVersion");
              v75 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v74, "mPatch");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v700);
              v76 = *v75;
              *v75 = 5;
              v700[0] = v76;
              v77 = *(v75 + 1);
              *(v75 + 1) = v72;
              v701 = v77;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v75);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v700);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v701, v76);
              v78 = v28[30];
              v698[0] = 5;
              v699 = v78;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v698);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v698);
              v79 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mAuthoringInformation");
              v80 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v79, "mRendererNameIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v698);
              v81 = *v80;
              *v80 = 5;
              v698[0] = v81;
              v82 = *(v80 + 1);
              *(v80 + 1) = v78;
              v699 = v82;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v80);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v698);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v699, v81);
              v83 = v28[31];
              v696[0] = 5;
              v697 = v83;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v696);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v696);
              v84 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mAuthoringInformation");
              v85 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v84, "mRendererVersion");
              v86 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v85, "mMajor");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v696);
              v87 = *v86;
              *v86 = 5;
              v696[0] = v87;
              v88 = *(v86 + 1);
              *(v86 + 1) = v83;
              v697 = v88;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v86);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v696);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v697, v87);
              v89 = v28[32];
              v694[0] = 5;
              v695 = v89;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v694);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v694);
              v90 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mAuthoringInformation");
              v91 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v90, "mRendererVersion");
              v92 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v91, "mMinor");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v694);
              v93 = *v92;
              *v92 = 5;
              v694[0] = v93;
              v94 = *(v92 + 1);
              *(v92 + 1) = v89;
              v695 = v94;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v92);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v694);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v695, v93);
              v95 = v28[33];
              v692[0] = 5;
              v693 = v95;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v692);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v692);
              v96 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mAuthoringInformation");
              v97 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v96, "mRendererVersion");
              v98 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v97, "mPatch");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v692);
              v32 = *v98;
              *v98 = 5;
              v692[0] = v32;
              v99 = *(v98 + 1);
              *(v98 + 1) = v95;
              v693 = v99;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v98);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v692);
              v34 = v692;
              goto LABEL_53;
            case 5:
              v230 = v12[1033];
              v690[0] = 7;
              v691 = v230;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v690);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v690);
              v231 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mRefScreen");
              v232 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v231, "mAspectRatio");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v690);
              v233 = *v232;
              *v232 = 7;
              v690[0] = v233;
              v234 = *(v232 + 1);
              *(v232 + 1) = v230;
              v691 = *&v234;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v232);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v690);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v691, v233);
              v235 = v28[40];
              v688[0] = 4;
              v689 = v235;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v688);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v688);
              v236 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mRefScreen");
              v237 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v236, "mIsCartesian");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v688);
              v238 = *v237;
              *v237 = 4;
              v688[0] = v238;
              v239 = *(v237 + 1);
              *(v237 + 1) = v235;
              v689 = v239;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v237);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v688);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v689, v238);
              if (v28[40] == 1)
              {
                v240 = v12[1035];
                v686[0] = 7;
                v687 = v240;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v686);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v686);
                v241 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mRefScreen");
                v242 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v241, "mScreenCentrePosition");
                v243 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v242, "mX");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v686);
                v244 = *v243;
                *v243 = 7;
                v686[0] = v244;
                v245 = *(v243 + 1);
                *(v243 + 1) = v240;
                v687 = *&v245;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v243);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v686);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v687, v244);
                v246 = v12[1036];
                v684[0] = 7;
                v685 = v246;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v684);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v684);
                v247 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mRefScreen");
                v248 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v247, "mScreenCentrePosition");
                v249 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v248, "mY");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v684);
                v250 = *v249;
                *v249 = 7;
                v684[0] = v250;
                v251 = *(v249 + 1);
                *(v249 + 1) = v246;
                v685 = *&v251;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v249);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v684);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v685, v250);
                v252 = v12[1037];
                v682[0] = 7;
                v683 = v252;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v682);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v682);
                v253 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mRefScreen");
                v254 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v253, "mScreenCentrePosition");
                v255 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v254, "mZ");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v682);
                v256 = *v255;
                *v255 = 7;
                v682[0] = v256;
                v257 = *(v255 + 1);
                *(v255 + 1) = v252;
                v683 = *&v257;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v255);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v682);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v683, v256);
                v258 = v12[1041];
                v680[0] = 7;
                v681 = v258;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v680);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v680);
                v259 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mRefScreen");
                v260 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v259, "mScreenWidth");
                v261 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v260, "mX");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v680);
                v32 = *v261;
                *v261 = 7;
                v680[0] = v32;
                v262 = v261[1];
                v261[1] = v258;
                v681 = v262;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v261);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v680);
                v34 = v680;
              }

              else
              {
                v396 = v12[1038];
                v678[0] = 7;
                v679 = v396;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v678);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v678);
                v397 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mRefScreen");
                v398 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v397, "mScreenCentrePosition");
                v399 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v398, "mAzimuth");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v678);
                v400 = *v399;
                *v399 = 7;
                v678[0] = v400;
                v401 = *(v399 + 1);
                *(v399 + 1) = v396;
                v679 = *&v401;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v399);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v678);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v679, v400);
                v402 = v12[1039];
                v676[0] = 7;
                v677 = v402;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v676);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v676);
                v403 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mRefScreen");
                v404 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v403, "mScreenCentrePosition");
                v405 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v404, "mElevation");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v676);
                v406 = *v405;
                *v405 = 7;
                v676[0] = v406;
                v407 = *(v405 + 1);
                *(v405 + 1) = v402;
                v677 = *&v407;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v405);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v676);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v677, v406);
                v408 = v12[1040];
                v674[0] = 7;
                v675 = v408;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v674);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v674);
                v409 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mRefScreen");
                v410 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v409, "mScreenCentrePosition");
                v411 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v410, "mRadius");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v674);
                v412 = *v411;
                *v411 = 7;
                v674[0] = v412;
                v413 = *(v411 + 1);
                *(v411 + 1) = v408;
                v675 = *&v413;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v411);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v674);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v675, v412);
                v414 = v12[1041];
                v672[0] = 7;
                v673 = v414;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v672);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v672);
                v415 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mRefScreen");
                v416 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v415, "mScreenWidth");
                v417 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v416, "mAzimuth");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v672);
                v32 = *v417;
                *v417 = 7;
                v672[0] = v32;
                v418 = v417[1];
                v417[1] = v414;
                v673 = v418;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v417);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v672);
                v34 = v672;
              }

              goto LABEL_53;
            case 6:
              v266 = v28[76];
              v670[0] = 5;
              v671 = v266;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v670);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v670);
              v267 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSupplementaryProductionMetadata");
              v268 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v267, "mSurroundDownmix");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v670);
              v269 = *v268;
              *v268 = 5;
              v670[0] = v269;
              v270 = *(v268 + 1);
              *(v268 + 1) = v266;
              v671 = v270;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v268);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v670);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v671, v269);
              v271 = v28[77];
              v668[0] = 5;
              v669 = v271;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v668);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v668);
              v272 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSupplementaryProductionMetadata");
              v273 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v272, "mSurroundToStereoDownmix");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v668);
              v274 = *v273;
              *v273 = 5;
              v668[0] = v274;
              v275 = *(v273 + 1);
              *(v273 + 1) = v271;
              v669 = v275;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v273);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v668);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v669, v274);
              v276 = v28[78];
              v666[0] = 5;
              v667 = v276;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v666);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v666);
              v277 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSupplementaryProductionMetadata");
              v278 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v277, "mPositionAdjustment");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v666);
              v279 = *v278;
              *v278 = 5;
              v666[0] = v279;
              v280 = *(v278 + 1);
              *(v278 + 1) = v276;
              v667 = v280;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v278);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v666);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v667, v279);
              v281 = 0;
              v282 = (a1 + 4200);
              do
              {
                v283 = v29;
                v284 = v28;
                v285 = v527[v281 - 25];
                v664[0] = 4;
                v665 = v285;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v664);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v664);
                v286 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSupplementaryProductionMetadata");
                v287 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v286, "mIsAutoTrim");
                v288 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v287, v281);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v664);
                v289 = *v288;
                *v288 = 4;
                v664[0] = v289;
                v290 = *(v288 + 1);
                *(v288 + 1) = v285;
                v665 = v290;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v288);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v664);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v665, v289);
                v12 = a1;
                v28 = v284;
                v29 = v283;
                if ((v527[v281 - 25] & 1) == 0)
                {
                  v291 = *(v282 - 4);
                  v662[0] = 7;
                  v663 = v291;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v662);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v662);
                  v292 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSupplementaryProductionMetadata");
                  v293 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v292, "mMixingGains");
                  v294 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v293, v281);
                  v295 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v294, "mFrontGain");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v662);
                  v296 = *v295;
                  *v295 = 7;
                  v662[0] = v296;
                  v297 = *(v295 + 1);
                  *(v295 + 1) = v291;
                  v663 = *&v297;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v295);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v662);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v663, v296);
                  v298 = *(v282 - 3);
                  v660[0] = 7;
                  v661 = v298;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v660);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v660);
                  v299 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSupplementaryProductionMetadata");
                  v300 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v299, "mMixingGains");
                  v301 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v300, v281);
                  v302 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v301, "mBackGain");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v660);
                  v303 = *v302;
                  *v302 = 7;
                  v660[0] = v303;
                  v304 = *(v302 + 1);
                  *(v302 + 1) = v298;
                  v661 = *&v304;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v302);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v660);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v661, v303);
                  v305 = *(v282 - 2);
                  v658[0] = 7;
                  v659 = v305;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v658);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v658);
                  v306 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSupplementaryProductionMetadata");
                  v307 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v306, "mMixingGains");
                  v308 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v307, v281);
                  v309 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v308, "mTopGain");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v658);
                  v310 = *v309;
                  *v309 = 7;
                  v658[0] = v310;
                  v311 = *(v309 + 1);
                  *(v309 + 1) = v305;
                  v659 = *&v311;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v309);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v658);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v659, v310);
                  v312 = *(v282 - 1);
                  v656[0] = 7;
                  v657 = v312;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v656);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v656);
                  v313 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSupplementaryProductionMetadata");
                  v314 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v313, "mMixingGains");
                  v315 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v314, v281);
                  v316 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v315, "mEarLevelBalance");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v656);
                  v317 = *v316;
                  *v316 = 7;
                  v656[0] = v317;
                  v318 = *(v316 + 1);
                  *(v316 + 1) = v312;
                  v657 = *&v318;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v316);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v656);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v657, v317);
                  v319 = *v282;
                  v654[0] = 7;
                  v655 = v319;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v654);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v654);
                  v320 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSupplementaryProductionMetadata");
                  v321 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v320, "mMixingGains");
                  v322 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v321, v281);
                  v323 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v322, "mHeightBalance");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v654);
                  v324 = *v323;
                  *v323 = 7;
                  v654[0] = v324;
                  v325 = *(v323 + 1);
                  *(v323 + 1) = v319;
                  v655 = *&v325;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v323);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v654);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v655, v324);
                }

                ++v281;
                v282 += 5;
              }

              while (v281 != 9);
              v326 = v28[268];
              v652[0] = 5;
              v653 = v326;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v652);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v652);
              v327 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSupplementaryProductionMetadata");
              v328 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v327, "mNumChannels");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v652);
              v329 = *v328;
              *v328 = 5;
              v652[0] = v329;
              v330 = *(v328 + 1);
              *(v328 + 1) = v326;
              v653 = v330;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v328);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v652);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v653, v329);
              if (v28[268])
              {
                v331 = 0;
                do
                {
                  v332 = a1[v331 + 4365];
                  v650[0] = 4;
                  v651 = v332;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v650);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v650);
                  v333 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSupplementaryProductionMetadata");
                  v334 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v333, "mIsPerChTrimEnabled");
                  v335 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v334, v331);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v650);
                  v336 = *v335;
                  *v335 = 4;
                  v650[0] = v336;
                  v337 = *(v335 + 1);
                  *(v335 + 1) = v332;
                  v651 = v337;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v335);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v650);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v651, v336);
                  ++v331;
                }

                while (v331 < v28[268]);
              }

              goto LABEL_54;
            case 7:
              v187 = v28[400];
              v648[0] = 4;
              v649 = v187;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v648);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v648);
              v188 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mBinauralization");
              v189 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v188, "mIsDirectBinauralization");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v648);
              v190 = *v189;
              *v189 = 4;
              v648[0] = v190;
              v191 = *(v189 + 1);
              *(v189 + 1) = v187;
              v649 = v191;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v189);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v648);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v649, v190);
              if (v28[400] == 1)
              {
                v192 = *(v12 + 1125);
                v646[0] = 5;
                v647 = v192;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v646);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v646);
                v193 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mBinauralization");
                v194 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v193, "mChannelLayoutTag");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v646);
                v195 = *v194;
                *v194 = 5;
                v646[0] = v195;
                v196 = *(v194 + 1);
                *(v194 + 1) = v192;
                v647 = v196;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v194);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v646);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v647, v195);
              }

              v197 = v28[408];
              v644[0] = 5;
              v645 = v197;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v644);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v644);
              v198 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mBinauralization");
              v199 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v198, "mHRTFType");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v644);
              v200 = *v199;
              *v199 = 5;
              v644[0] = v200;
              v201 = *(v199 + 1);
              *(v199 + 1) = v197;
              v645 = v201;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v199);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v644);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v645, v200);
              v202 = v28[408];
              if (v202 == 1)
              {
                v419 = v28[409];
                v642[0] = 5;
                v643 = v419;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v642);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v642);
                v420 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mBinauralization");
                v421 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v420, "mPredefinedIR_ID");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v642);
                v32 = *v421;
                *v421 = 5;
                v642[0] = v32;
                v422 = *(v421 + 1);
                *(v421 + 1) = v419;
                v643 = v422;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v421);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v642);
                v34 = v642;
              }

              else
              {
                if (v202 != 2)
                {
                  goto LABEL_54;
                }

                v203 = v28[409];
                v640[0] = 5;
                v641 = v203;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v640);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v640);
                v204 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mBinauralization");
                v205 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v204, "mPredefinedIR_ID");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v640);
                v206 = *v205;
                *v205 = 5;
                v640[0] = v206;
                v207 = *(v205 + 1);
                *(v205 + 1) = v203;
                v641 = v207;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v205);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v640);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v641, v206);
                v208 = v28[414];
                v638[0] = 5;
                v639 = v208;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v638);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v638);
                v209 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mBinauralization");
                v210 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v209, "mDataLocationIndex");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v638);
                v211 = *v210;
                *v210 = 5;
                v638[0] = v211;
                v212 = *(v210 + 1);
                *(v210 + 1) = v208;
                v639 = v212;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v210);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v638);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v639, v211);
                v213 = *(v12 + 2253);
                v636[0] = 5;
                v637 = v213;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v636);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v636);
                v214 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mBinauralization");
                v215 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v214, "mCustomData_TableID");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v636);
                v216 = *v215;
                *v215 = 5;
                v636[0] = v216;
                v217 = *(v215 + 1);
                *(v215 + 1) = v213;
                v637 = v217;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v215);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v636);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v637, v216);
                v218 = *(v12 + 2254);
                v634[0] = 5;
                v635 = v218;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v634);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v634);
                v219 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mBinauralization");
                v220 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v219, "mCustomData_EntryID");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v634);
                v221 = *v220;
                *v220 = 5;
                v634[0] = v221;
                v222 = *(v220 + 1);
                *(v220 + 1) = v218;
                v635 = v222;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v220);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v634);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v635, v221);
                v223 = v28[408];
                v632[0] = 5;
                v633 = v223;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v632);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v632);
                v224 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mBinauralization");
                v225 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v224, "mHRTFType");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v632);
                v32 = *v225;
                *v225 = 5;
                v632[0] = v32;
                v226 = *(v225 + 1);
                *(v225 + 1) = v223;
                v633 = v226;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v225);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v632);
                v34 = v632;
              }

LABEL_53:
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v34 + 1, v32);
LABEL_54:
              v27 = v528 + 1;
              v423 = *(v12 + 9);
              if (v423 >= 0x800)
              {
                v423 = 2048;
              }

              if (v27 == v423)
              {
                break;
              }

              continue;
            case 8:
              v357 = v28[416];
              v630[0] = 5;
              v631 = v357;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v630);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v630);
              v358 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mHCFilter");
              v359 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v358, "mDataLocationIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v630);
              v360 = *v359;
              *v359 = 5;
              v630[0] = v360;
              v361 = *(v359 + 1);
              *(v359 + 1) = v357;
              v631 = v361;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v359);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v630);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v631, v360);
              v362 = *(v12 + 2257);
              v628[0] = 5;
              v629 = v362;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v628);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v628);
              v363 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mHCFilter");
              v364 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v363, "mCustomData_TableID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v628);
              v365 = *v364;
              *v364 = 5;
              v628[0] = v365;
              v366 = *(v364 + 1);
              *(v364 + 1) = v362;
              v629 = v366;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v364);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v628);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v629, v365);
              v367 = *(v12 + 2258);
              v626[0] = 5;
              v627 = v367;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v626);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v626);
              v368 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mHCFilter");
              v369 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v368, "mCustomData_EntryID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v626);
              v32 = *v369;
              *v369 = 5;
              v626[0] = v32;
              v370 = *(v369 + 1);
              *(v369 + 1) = v367;
              v627 = v370;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v369);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v626);
              v34 = v626;
              goto LABEL_53;
            case 9:
              v109 = v28[424];
              v624[0] = 5;
              v625 = v109;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v624);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v624);
              v110 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSPAD");
              v111 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v110, "mDataLocationIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v624);
              v112 = *v111;
              *v111 = 5;
              v624[0] = v112;
              v113 = *(v111 + 1);
              *(v111 + 1) = v109;
              v625 = v113;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v111);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v624);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v625, v112);
              v114 = *(v12 + 2261);
              v622[0] = 5;
              v623 = v114;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v622);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v622);
              v115 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSPAD");
              v116 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v115, "mCustomData_TableID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v622);
              v117 = *v116;
              *v116 = 5;
              v622[0] = v117;
              v118 = *(v116 + 1);
              *(v116 + 1) = v114;
              v623 = v118;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v116);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v622);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v623, v117);
              v119 = *(v12 + 2262);
              v620[0] = 5;
              v621 = v119;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v620);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v620);
              v120 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSPAD");
              v121 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v120, "mCustomData_EntryID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v620);
              v122 = *v121;
              *v121 = 5;
              v620[0] = v122;
              v123 = *(v121 + 1);
              *(v121 + 1) = v119;
              v621 = v123;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v121);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v620);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v621, v122);
              v124 = 0;
              do
              {
                v125 = v29[v124];
                v618[0] = 5;
                v619 = v125;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v618);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v618);
                v126 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSPAD");
                v127 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v126, "mFallbackSPAD");
                v128 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v127, "mDeviceID");
                v129 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v128, v124);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v618);
                v130 = *v129;
                *v129 = 5;
                v618[0] = v130;
                v131 = *(v129 + 1);
                *(v129 + 1) = v125;
                v619 = v131;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v129);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v618);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v619, v130);
                if (!v29[v124])
                {
                  break;
                }
              }

              while (v124++ < 7);
              v133 = v28[432];
              v616[0] = 5;
              v617 = v133;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v616);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v616);
              v134 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSPAD");
              v135 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v134, "mFallbackSPAD");
              v136 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v135, "mOrientation");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v616);
              v137 = *v136;
              *v136 = 5;
              v616[0] = v137;
              v138 = *(v136 + 1);
              *(v136 + 1) = v133;
              v617 = v138;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v136);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v616);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v617, v137);
              v139 = v28[433];
              v614[0] = 5;
              v615 = v139;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v614);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v614);
              v140 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSPAD");
              v141 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v140, "mFallbackSPAD");
              v142 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v141, "mNumMicrophones");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v614);
              v143 = *v142;
              *v142 = 5;
              v614[0] = v143;
              v144 = *(v142 + 1);
              *(v142 + 1) = v139;
              v615 = v144;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v142);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v614);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v615, v143);
              if (v28[433])
              {
                v145 = 0;
                do
                {
                  v146 = *(*(v12 + 568) + v145);
                  v612[0] = 5;
                  v613 = v146;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v612);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v612);
                  v147 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSPAD");
                  v148 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v147, "mFallbackSPAD");
                  v149 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v148, "mMicType");
                  v150 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v149, v145);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v612);
                  v151 = *v150;
                  *v150 = 5;
                  v612[0] = v151;
                  v152 = *(v150 + 1);
                  *(v150 + 1) = v146;
                  v613 = v152;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v150);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v612);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v613, v151);
                  v153 = *(*(v12 + 571) + 4 * v145);
                  v610[0] = 7;
                  v611 = v153;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v610);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v610);
                  v154 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSPAD");
                  v155 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v154, "mFallbackSPAD");
                  v156 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v155, "mMicPosAzimuth");
                  v157 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v156, v145);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v610);
                  v158 = *v157;
                  *v157 = 7;
                  v610[0] = v158;
                  v159 = *(v157 + 1);
                  *(v157 + 1) = v153;
                  v611 = *&v159;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v157);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v610);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v611, v158);
                  v160 = *(*(v12 + 574) + 4 * v145);
                  v608[0] = 7;
                  v609 = v160;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v608);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v608);
                  v161 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSPAD");
                  v162 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v161, "mFallbackSPAD");
                  v163 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v162, "mMicPosElevation");
                  v164 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v163, v145);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v608);
                  v165 = *v164;
                  *v164 = 7;
                  v608[0] = v165;
                  v166 = *(v164 + 1);
                  *(v164 + 1) = v160;
                  v609 = *&v166;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v164);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v608);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v609, v165);
                  v167 = *(*(v12 + 577) + 4 * v145);
                  v606[0] = 7;
                  v607 = v167;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v606);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v606);
                  v168 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSPAD");
                  v169 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v168, "mFallbackSPAD");
                  v170 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v169, "mMicPosRadius");
                  v171 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v170, v145);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v606);
                  v172 = *v171;
                  *v171 = 7;
                  v606[0] = v172;
                  v173 = *(v171 + 1);
                  *(v171 + 1) = v167;
                  v607 = *&v173;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v171);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v606);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v607, v172);
                  v174 = *(*(v12 + 580) + v145);
                  v604[0] = 5;
                  v605 = v174;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v604);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v604);
                  v175 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mSPAD");
                  v176 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v175, "mFallbackSPAD");
                  v177 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v176, "mMicDirection");
                  v178 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v177, v145);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v604);
                  v179 = *v178;
                  *v178 = 5;
                  v604[0] = v179;
                  v180 = *(v178 + 1);
                  *(v178 + 1) = v174;
                  v605 = v180;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v178);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v604);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v605, v179);
                  ++v145;
                }

                while (v145 < v28[433]);
              }

              goto LABEL_54;
            case 0xA:
              v338 = v28[568];
              v602[0] = 5;
              v603 = v338;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v602);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v602);
              v339 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mDistanceAttenuation");
              v340 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v339, "mAttnLawIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v602);
              v341 = *v340;
              *v340 = 5;
              v602[0] = v341;
              v342 = *(v340 + 1);
              *(v340 + 1) = v338;
              v603 = v342;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v340);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v602);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v603, v341);
              v343 = v12[1168];
              v600[0] = 7;
              v601 = v343;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v600);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v600);
              v344 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mDistanceAttenuation");
              v345 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v344, "mRefDistance");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v600);
              v346 = *v345;
              *v345 = 7;
              v600[0] = v346;
              v347 = *(v345 + 1);
              *(v345 + 1) = v343;
              v601 = *&v347;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v345);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v600);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v601, v346);
              v348 = v12[1169];
              v598[0] = 7;
              v599 = v348;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v598);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v598);
              v349 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mDistanceAttenuation");
              v350 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v349, "mMaxDistance");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v598);
              v351 = *v350;
              *v350 = 7;
              v598[0] = v351;
              v352 = *(v350 + 1);
              *(v350 + 1) = v348;
              v599 = *&v352;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v350);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v598);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v599, v351);
              v353 = v28[584];
              v596[0] = 4;
              v597 = v353;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v596);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v596);
              v354 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mDistanceAttenuation");
              v355 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v354, "mAttnNormIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v596);
              v32 = *v355;
              *v355 = 4;
              v596[0] = v32;
              v356 = *(v355 + 1);
              *(v355 + 1) = v353;
              v597 = v356;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v355);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v596);
              v34 = v596;
              goto LABEL_53;
            case 0xB:
              v38 = v28[588];
              v594[0] = 4;
              v595 = v38;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v594);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v594);
              v39 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mCameraPerspective");
              v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v39, "mPositionPresent");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v594);
              v41 = *v40;
              *v40 = 4;
              v594[0] = v41;
              v42 = *(v40 + 1);
              *(v40 + 1) = v38;
              v595 = v42;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v40);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v594);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v595, v41);
              if (v28[588] == 1)
              {
                v43 = v28[589];
                v592[0] = 4;
                v593 = v43;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v592);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v592);
                v44 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mCameraPerspective");
                v45 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v44, "mIsCartesian");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v592);
                v46 = *v45;
                *v45 = 4;
                v592[0] = v46;
                v47 = *(v45 + 1);
                *(v45 + 1) = v43;
                v593 = v47;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v592);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v593, v46);
                if (v28[589] == 1)
                {
                  for (i = 0; i != 3; ++i)
                  {
                    v49 = *&a1[4 * i + 4704];
                    v590[0] = 7;
                    v591 = v49;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v590);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v590);
                    v50 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mCameraPerspective");
                    v51 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v50, "mCoordinate");
                    v52 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v51, i);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v590);
                    v53 = *v52;
                    *v52 = 7;
                    v590[0] = v53;
                    v54 = *(v52 + 1);
                    *(v52 + 1) = v49;
                    v591 = *&v54;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v52);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v590);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v591, v53);
                  }
                }

                else
                {
                  v424 = v12[1172];
                  v588[0] = 7;
                  v589 = v424;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v588);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v588);
                  v425 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mCameraPerspective");
                  v426 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v425, "mAzimuth");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v588);
                  v427 = *v426;
                  *v426 = 7;
                  v588[0] = v427;
                  v428 = *(v426 + 1);
                  *(v426 + 1) = v424;
                  v589 = *&v428;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v426);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v588);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v589, v427);
                  v429 = v12[1173];
                  v586[0] = 7;
                  v587 = v429;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v586);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v586);
                  v430 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mCameraPerspective");
                  v431 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v430, "mElevation");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v586);
                  v432 = *v431;
                  *v431 = 7;
                  v586[0] = v432;
                  v433 = *(v431 + 1);
                  *(v431 + 1) = v429;
                  v587 = *&v433;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v431);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v586);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v587, v432);
                  v434 = v12[1174];
                  v584[0] = 7;
                  v585 = v434;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v584);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v584);
                  v435 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mCameraPerspective");
                  v436 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v435, "mRadius");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v584);
                  v437 = *v436;
                  *v436 = 7;
                  v584[0] = v437;
                  v438 = *(v436 + 1);
                  *(v436 + 1) = v434;
                  v585 = *&v438;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v436);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v584);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v585, v437);
                }
              }

              v439 = v28[604];
              v582[0] = 4;
              v583 = v439;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v582);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v582);
              v440 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mCameraPerspective");
              v441 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v440, "mRotationPresent");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v582);
              v442 = *v441;
              *v441 = 4;
              v582[0] = v442;
              v443 = *(v441 + 1);
              *(v441 + 1) = v439;
              v583 = v443;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v441);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v582);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v583, v442);
              if (v28[604] == 1)
              {
                for (j = 0; j != 4; ++j)
                {
                  v445 = *&a1[4 * j + 4716];
                  v580[0] = 7;
                  v581 = v445;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v580);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v580);
                  v446 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mCameraPerspective");
                  v447 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v446, "mQuaternion");
                  v448 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v447, j);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v580);
                  v449 = *v448;
                  *v448 = 7;
                  v580[0] = v449;
                  v450 = *(v448 + 1);
                  *(v448 + 1) = v445;
                  v581 = *&v450;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v448);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v580);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v581, v449);
                }
              }

              goto LABEL_54;
            case 0xC:
              v100 = v28[636];
              v578[0] = 4;
              v579 = v100;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v578);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v578);
              v101 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mGenericRenderingConfig");
              v102 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v101, "mHasPreset");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v578);
              v103 = *v102;
              *v102 = 4;
              v578[0] = v103;
              v104 = *(v102 + 1);
              *(v102 + 1) = v100;
              v579 = v104;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v102);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v578);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v579, v103);
              if (v28[636] == 1)
              {
                v105 = *(v12 + 2367);
                v576[0] = 5;
                v577 = v105;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v576);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v576);
                v106 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mGenericRenderingConfig");
                v107 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v106, "mPresetIndex");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v576);
                v32 = *v107;
                *v107 = 5;
                v576[0] = v32;
                v108 = *(v107 + 1);
                *(v107 + 1) = v105;
                v577 = v108;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v107);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v576);
                v34 = v576;
              }

              else
              {
                v372 = v28[640];
                v574[0] = 5;
                v575 = v372;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v574);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v574);
                v373 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mGenericRenderingConfig");
                v374 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v373, "mDataLocationIndex");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v574);
                v375 = *v374;
                *v374 = 5;
                v574[0] = v375;
                v376 = *(v374 + 1);
                *(v374 + 1) = v372;
                v575 = v376;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v374);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v574);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v575, v375);
                v377 = *(v12 + 2369);
                v572[0] = 5;
                v573 = v377;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v572);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v572);
                v378 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mGenericRenderingConfig");
                v379 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v378, "mCustomData_TableID");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v572);
                v380 = *v379;
                *v379 = 5;
                v572[0] = v380;
                v381 = *(v379 + 1);
                *(v379 + 1) = v377;
                v573 = v381;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v379);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v572);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v573, v380);
                v382 = *(v12 + 2370);
                v570[0] = 5;
                v571 = v382;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v570);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v570);
                v383 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mGenericRenderingConfig");
                v384 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v383, "mCustomData_EntryID");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v570);
                v385 = *v384;
                *v384 = 5;
                v570[0] = v385;
                v386 = *(v384 + 1);
                *(v384 + 1) = v382;
                v571 = v386;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v384);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v570);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v571, v385);
                v387 = *(v12 + 2371);
                v568[0] = 5;
                v569 = v387;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v568);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v568);
                v388 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mGenericRenderingConfig");
                v389 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v388, "mFallbackIndex");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v568);
                v390 = *v389;
                *v389 = 5;
                v568[0] = v390;
                v391 = *(v389 + 1);
                *(v389 + 1) = v387;
                v569 = v391;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v389);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v568);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v569, v390);
                v392 = *(v12 + 1186);
                v566[0] = 5;
                v567 = v392;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v566);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v566);
                v393 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mGenericRenderingConfig");
                v394 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v393, "mDataByteSize");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v566);
                v32 = *v394;
                *v394 = 5;
                v566[0] = v32;
                v395 = *(v394 + 1);
                *(v394 + 1) = v392;
                v567 = v395;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v394);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v566);
                v34 = v566;
              }

              goto LABEL_53;
            case 0xD:
              v263 = v28[24];
              v564[0] = 5;
              v565 = v263;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v564);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v564);
              v264 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mContentKind");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v564);
              v32 = *v264;
              *v264 = 5;
              v564[0] = v32;
              v265 = *(v264 + 1);
              *(v264 + 1) = v263;
              v565 = v265;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v264);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v564);
              v34 = v564;
              goto LABEL_53;
            case 0xE:
              v35 = v28[25];
              v562[0] = 5;
              v563 = v35;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v562);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v562);
              v36 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v19, "mMaxNumBlocks");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v562);
              v32 = *v36;
              *v36 = 5;
              v562[0] = v32;
              v37 = *(v36 + 1);
              *(v36 + 1) = v35;
              v563 = v37;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v36);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v562);
              v34 = v562;
              goto LABEL_53;
            case 0xF:
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v561);
            default:
              std::to_string(&v559, *&v526[2 * v27]);
              v371 = std::string::insert(&v559, 0, "Unknown parameter id ", 0x15uLL);
              v560 = *v371;
              v371->__r_.__value_.__l.__size_ = 0;
              v371->__r_.__value_.__r.__words[2] = 0;
              v371->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v559.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v559.__r_.__value_.__l.__data_);
              }

              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[16],char [16],0>(v558);
          }

          break;
        }
      }
    }

    v451 = *(v12 + 4);
    v452 = *(v12 + 598);
    if (-1431655765 * ((*(v12 + 599) - v452) >> 4) < v451)
    {
      v451 = -1431655765 * ((*(v12 + 599) - v452) >> 4);
    }

    v453 = v529;
    if (v451)
    {
      v454 = 0;
      do
      {
        v455 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v453, "mRendererMetadataConfig");
        v456 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v455, "mGroupConfig");
        v457 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v456, v454);
        v458 = (v452 + 48 * v454);
        v459 = *v458;
        v556[0] = 5;
        v557 = v459;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v556);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v556);
        v460 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mGroupID");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v556);
        v461 = *v460;
        *v460 = 5;
        v556[0] = v461;
        v462 = *(v460 + 1);
        *(v460 + 1) = v459;
        v557 = v462;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v460);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v556);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v557, v461);
        v463 = *(v458 + 2);
        v554[0] = 4;
        v555 = v463;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v554);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v554);
        v464 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mIsGlobal");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v554);
        v465 = *v464;
        *v464 = 4;
        v554[0] = v465;
        v466 = *(v464 + 1);
        *(v464 + 1) = v463;
        v555 = v466;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v464);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v554);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v555, v465);
        if ((v458[1] & 1) == 0)
        {
          v467 = *(v458 + 3);
          v552[0] = 4;
          v553 = v467;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v552);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v552);
          v468 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mIsPerASC");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v552);
          v469 = *v468;
          *v468 = 4;
          v552[0] = v469;
          v470 = *(v468 + 1);
          *(v468 + 1) = v467;
          v553 = v470;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v468);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v552);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v553, v469);
          if (*(v458 + 3) != 1)
          {
            v485 = v458[9];
            v536[0] = 5;
            v537 = v485;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v536);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v536);
            v486 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mMemberCount");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v536);
            v487 = *v486;
            *v486 = 5;
            v536[0] = v487;
            v488 = *(v486 + 1);
            *(v486 + 1) = v485;
            v537 = v488;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v486);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v536);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v537, v487);
            v489 = *(v458 + 20);
            v534[0] = 4;
            v535 = v489;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v534);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v534);
            v490 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mHasConjunctMembers");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v534);
            v491 = *v490;
            *v490 = 4;
            v534[0] = v491;
            v492 = *(v490 + 1);
            *(v490 + 1) = v489;
            v535 = v492;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v490);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v534);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v535, v491);
            if ((v458[10] & 1) == 0)
            {
              v496 = v458[9];
              v497 = *(v458 + 3);
              if (((*(v458 + 4) - v497) >> 1) < v496)
              {
                v496 = (*(v458 + 4) - v497) >> 1;
              }

              if (v496)
              {
                v498 = 0;
                do
                {
                  v499 = *(v497 + 2 * v498);
                  v530[0] = 5;
                  v531 = v499;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v530);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v530);
                  v500 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mASCIDList");
                  v501 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v500, v498);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v530);
                  v502 = *v501;
                  *v501 = 5;
                  v530[0] = v502;
                  v503 = *(v501 + 1);
                  *(v501 + 1) = v499;
                  v531 = v503;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v501);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v530);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v531, v502);
                  ++v498;
                  v497 = *(v458 + 3);
                  v504 = (*(v458 + 4) - v497) >> 1;
                  if (v504 >= v458[9])
                  {
                    v505 = v458[9];
                  }

                  else
                  {
                    v505 = v504;
                  }
                }

                while (v498 < v505);
              }

              goto LABEL_88;
            }

            v493 = v458[11];
            v532[0] = 5;
            v533 = v493;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v532);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v532);
            v494 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mStartASCID");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v532);
            v482 = *v494;
            *v494 = 5;
            v532[0] = v482;
            v495 = *(v494 + 1);
            *(v494 + 1) = v493;
            v533 = v495;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v494);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v532);
            v484 = v532;
            goto LABEL_87;
          }

          v471 = v458[2];
          v550[0] = 5;
          v551 = v471;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v550);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v550);
          v472 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mASCID");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v550);
          v473 = *v472;
          *v472 = 5;
          v550[0] = v473;
          v474 = *(v472 + 1);
          *(v472 + 1) = v471;
          v551 = v474;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v472);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v550);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v551, v473);
          v475 = *(v458 + 6);
          v548[0] = 5;
          v549 = v475;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v548);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v548);
          v476 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mASCType");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v548);
          v477 = *v476;
          *v476 = 5;
          v548[0] = v477;
          v478 = *(v476 + 1);
          *(v476 + 1) = v475;
          v549 = v478;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v476);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v548);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v549, v477);
          v479 = *(v458 + 6);
          if (!*(v458 + 6))
          {
            v517 = v458[8];
            v546[0] = 5;
            v547 = v517;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v546);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v546);
            v518 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mChBedID");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v546);
            v482 = *v518;
            *v518 = 5;
            v546[0] = v482;
            v519 = *(v518 + 1);
            *(v518 + 1) = v517;
            v547 = v519;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v518);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v546);
            v484 = v546;
            goto LABEL_87;
          }

          if (v479 == 1)
          {
            v506 = v458[4];
            v544[0] = 5;
            v545 = v506;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v544);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v544);
            v507 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mObjectID");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v544);
            v508 = *v507;
            *v507 = 5;
            v544[0] = v508;
            v509 = *(v507 + 1);
            *(v507 + 1) = v506;
            v545 = v509;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v507);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v544);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v545, v508);
            v510 = *(v458 + 10);
            v542[0] = 4;
            v543 = v510;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v542);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v542);
            v511 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mIsObjectInBed");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v542);
            v512 = *v511;
            *v511 = 4;
            v542[0] = v512;
            v513 = *(v511 + 1);
            *(v511 + 1) = v510;
            v543 = v513;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v511);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v542);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v543, v512);
            if (*(v458 + 10) == 1)
            {
              v514 = v458[6];
              v540[0] = 5;
              v541 = v514;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v540);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v540);
              v515 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mBedASCID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v540);
              v482 = *v515;
              *v515 = 5;
              v540[0] = v482;
              v516 = *(v515 + 1);
              *(v515 + 1) = v514;
              v541 = v516;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v515);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v540);
              v484 = v540;
              goto LABEL_87;
            }
          }

          else if (v479 == 2)
          {
            v480 = v458[7];
            v538[0] = 5;
            v539 = v480;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v538);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v538);
            v481 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "mHOAID");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v538);
            v482 = *v481;
            *v481 = 5;
            v538[0] = v482;
            v483 = *(v481 + 1);
            *(v481 + 1) = v480;
            v539 = v483;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v481);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v538);
            v484 = v538;
LABEL_87:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v484 + 1, v482);
          }
        }

LABEL_88:
        v453 = v529;
        v520 = *(a1 + 601);
        v521 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v529, "mRendererMetadataConfig");
        v522 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v521, "mRendererData");
        v523 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v522, v454);
        APAC::RendererDataJSON(v523, (v520 + 1248 * v454++), 1);
        v452 = *(a1 + 598);
        v524 = -1431655765 * ((*(a1 + 599) - v452) >> 4);
        if (v524 >= *(a1 + 4))
        {
          v525 = *(a1 + 4);
        }

        else
        {
          v525 = v524;
        }
      }

      while (v454 < v525);
    }
  }
}