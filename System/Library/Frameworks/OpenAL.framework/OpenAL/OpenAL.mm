void OALBuffer::OALBuffer(OALBuffer *this, int a2)
{
  *this = a2;
  v3 = (this + 144);
  CAGuard::CAGuard((this + 8), "OALBuffer::SourceListGuard");
  CAGuard::CAGuard(v3, "OALBuffer::EditLock");
  *(this + 70) = 0;
  *(this + 36) = 0;
  *(this + 296) = 0;
  *(this + 300) = 0u;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 345) = 0;
  operator new();
}

void sub_23A01298C(_Unwind_Exception *a1)
{
  CAGuard::~CAGuard(v2);
  CAGuard::~CAGuard((v1 + 8));
  _Unwind_Resume(a1);
}

void OALBuffer::~OALBuffer(OALBuffer *this)
{
  if ((*(this + 296) & 1) == 0)
  {
    v2 = *(this + 36);
    if (v2)
    {
      free(v2);
    }
  }

  v3 = *(this + 43);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      *(v3 + 8) = v4;
      operator delete(v4);
    }

    MEMORY[0x23EE824D0](v3, 0x20C40960023A9);
    *(this + 43) = 0;
  }

  CAGuard::~CAGuard((this + 144));
  CAGuard::~CAGuard((this + 8));
}

uint64_t OALBuffer::CanBeRemovedFromBufferMap(OALBuffer *this)
{
  v1 = *(*(this + 43) + 8) - **(this + 43);
  if ((v1 & 0xFFFFFFFF0) == 0)
  {
    return 1;
  }

  v3 = 0;
  v4 = (v1 >> 4);
  while (1)
  {
    v5 = *(this + 43);
    v6 = v5[1];
    v7 = (*v5 + (v3 >> 44));
    if (v7 != v6)
    {
      if (*v7)
      {
        result = OALSource::IsSourceTransitioningToFlushQ(*v7);
        if (!result)
        {
          break;
        }
      }
    }

    v3 += 0x1000000000000;
    if (!--v4)
    {
      if (*(this + 296) == 1)
      {
        WaitOneRenderCycle();
      }

      return 1;
    }
  }

  return result;
}

uint64_t OALBuffer::IsPurgable(OALBuffer *this)
{
  if (((*(*(this + 43) + 8) - **(this + 43)) & 0xFFFFFFFF0) == 0 && CAMutex::IsFree((this + 144)) && *(this + 70) <= 0)
  {
    return (*(this + 352) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t OALBuffer::AddAudioDataStatic(OALBuffer *this, char *a2, int a3, unsigned int a4, unsigned int a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = (this + 144);
  v11 = (*(*(this + 18) + 16))(this + 144);
  if (((*(v10[25] + 8) - *v10[25]) & 0xFFFFFFFF0) != 0)
  {
    WaitOneRenderCycle();
    if (((*(*(this + 43) + 8) - **(this + 43)) & 0xFFFFFFFF0) != 0)
    {
      v12 = 40964;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_12;
      }

LABEL_11:
      v14 = *this;
      *buf = 136315906;
      v18 = "oalBuffer.cpp";
      v19 = 1024;
      v20 = 166;
      v21 = 2048;
      v22 = v14;
      v23 = 1024;
      v24 = v12;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d OALBuffer::AddAudioDataStatic Failed - OALBuffer = %ld, err = %d\n", buf, 0x22u);
      goto LABEL_12;
    }
  }

  if (!IsFormatSupported(a4))
  {
    v12 = 40963;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((*(this + 296) & 1) == 0)
  {
    v13 = *(this + 36);
    if (v13)
    {
      free(v13);
      *(this + 36) = 0;
      *(this + 75) = 0;
    }
  }

  FillInASBD(this + 304, a4, a5);
  v12 = 0;
  *(this + 36) = a2;
  *(this + 75) = a3;
  *(this + 296) = 1;
LABEL_12:
  if (v11)
  {
    (*(*v10 + 24))(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_23A012D44(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CAGuard::Locker::~Locker(CAGuard::Locker *this)
{
  if (*(this + 8) == 1)
  {
    (*(**this + 24))(*this);
  }
}

uint64_t OALBuffer::AddAudioData(OALBuffer *this, char *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = (this + 144);
  v11 = (*(*(this + 18) + 16))(this + 144);
  if (((*(v10[25] + 8) - *v10[25]) & 0xFFFFFFFF0) == 0 || (WaitOneRenderCycle(), ((*(*(this + 43) + 8) - **(this + 43)) & 0xFFFFFFFF0) == 0))
  {
    if (!IsFormatSupported(a4))
    {
      v12 = 40963;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (*(this + 296) == 1)
    {
      *(this + 36) = 0;
      *(this + 75) = 0;
      *(this + 296) = 0;
    }

    else
    {
      v15 = *(this + 36);
      if (v15)
      {
        if (*(this + 75) == a3)
        {
          goto LABEL_18;
        }

        v16 = malloc_type_realloc(v15, a3, 0x10A7C11CuLL);
LABEL_17:
        *(this + 36) = v16;
        if (!v16)
        {
          goto LABEL_3;
        }

LABEL_18:
        FillInASBD(this + 304, a4, a5);
        *(this + 75) = a3;
        memcpy(*(this + 36), a2, a3);
        v12 = 0;
        if (!v11)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    v16 = malloc_type_malloc(a3, 0x100004077774924uLL);
    goto LABEL_17;
  }

LABEL_3:
  v12 = 40964;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
LABEL_9:
    *buf = 136315650;
    v18 = "oalBuffer.cpp";
    v19 = 1024;
    v20 = 232;
    v21 = 1024;
    v22 = v12;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d OALBuffer::AddAudioData Failed - err = %d\n", buf, 0x18u);
  }

LABEL_10:
  if (v11)
  {
LABEL_11:
    (*(*v10 + 24))(v10);
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t OALBuffer::GetFrameCount(OALBuffer *this)
{
  v1 = *(this + 80);
  if (v1)
  {
    v1 = *(this + 75) / v1;
  }

  return *(this + 81) * v1;
}

uint64_t OALBuffer::UseThisBuffer(OALBuffer *this, OALSource *a2)
{
  v4 = CAMutex::Lock((this + 8));
  v5 = *(this + 43);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
LABEL_5:
    *&v10 = a2;
    DWORD2(v10) = 1;
    std::vector<SourceAttachedInfo>::push_back[abi:ne200100](v5, &v10);
  }

  else
  {
    v8 = *v5;
    while (*v8 != a2)
    {
      v8 += 2;
      if (v8 == v7)
      {
        goto LABEL_5;
      }
    }

    while (*v6 != a2)
    {
      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    ++*(v6 + 2);
  }

LABEL_6:
  if (v4)
  {
    CAMutex::Unlock((this + 8));
  }

  return 0;
}

uint64_t OALBuffer::ReleaseBuffer(OALBuffer *this, OALSource *a2)
{
  v4 = CAMutex::Lock((this + 8));
  v5 = *(this + 43);
  v7 = *v5;
  v6 = v5[1];
  if (*v5 != v6)
  {
    v8 = *v5;
    while (*v8 != a2)
    {
      v8 += 2;
      if (v8 == v6)
      {
        goto LABEL_11;
      }
    }

    v9 = *v5;
    while (*v9 != a2)
    {
      v9 += 2;
      if (v9 == v6)
      {
        goto LABEL_14;
      }
    }

    v10 = *(v9 + 2) - 1;
    *(v9 + 2) = v10;
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_14:
    v13 = v6 - v7 - 16;
    while (*v7 != a2)
    {
      v7 += 2;
      v13 -= 16;
      if (v7 == v6)
      {
        v11 = 1;
        if (!v4)
        {
          return v11;
        }

        goto LABEL_12;
      }
    }

    if (v7 + 2 != v6)
    {
      v14 = v4;
      memmove(v7, v7 + 2, v13);
      v4 = v14;
    }

    v5[1] = (v7 + v13);
    v11 = 1;
    if (!v4)
    {
      return v11;
    }

    goto LABEL_12;
  }

LABEL_11:
  v11 = 0;
  if (v4)
  {
LABEL_12:
    CAMutex::Unlock((this + 8));
  }

  return v11;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278B468A0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::vector<SourceAttachedInfo>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<SourceAttachedInfo>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void OALContext::OALContext(OALContext *this, uint64_t a2, OALDevice *a3, const int *a4, unsigned int *a5, double *a6)
{
  *this = a2;
  *(this + 8) = 1;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  CAGuard::CAGuard((this + 48), "OALContext:SourceMapLock");
  *(this + 23) = 0;
  CAGuard::CAGuard((this + 192), "OALContext:SourceMapLock");
  *(this + 41) = 0x43ABA6660000D002;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 42) = _D0;
  *(this + 92) = 1065353216;
  *(this + 99) = 0;
  *(this + 50) = 0;
  *(this + 408) = 1;
  *(this + 52) = 0x3FF0000000000000;
  *(this + 53) = 1919183983;
  v15 = *a5;
  *(this + 108) = v15;
  *(this + 436) = 0;
  *(this + 56) = *a6;
  *(this + 57) = 0x47C350003F800000;
  *(this + 464) = 0;
  *(this + 60) = 0;
  *(this + 492) = 0xFFFFFFFF00000000;
  *(this + 500) = xmmword_23A03A360;
  *(this + 65) = 0;
  *(this + 59) = malloc_type_calloc(1uLL, 12 * v15, 0x1000040D836D830uLL);
  if (a4)
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
    while (1)
    {
      while (1)
      {
        v19 = a4[v16];
        if (v19 <= 4111)
        {
          break;
        }

        if (v19 == 4112)
        {
          *(this + 464) = 1;
          goto LABEL_4;
        }

        if (v19 == 4113)
        {
          *(this + 464) = 1;
          v18 = a4[v16 + 1];
          v16 += 2;
        }

        else
        {
LABEL_4:
          v16 += 2;
        }
      }

      if (v19 != 4103)
      {
        if (!v19)
        {
          if (v17)
          {
            *(this + 99) = v16 + 1;
            v21 = malloc_type_calloc(1uLL, 4 * (v16 + 1), 0x100004052888210uLL);
            *(this + 50) = v21;
            v22 = v16;
          }

          else
          {
            *(this + 99) = v16 + 3;
            v21 = malloc_type_calloc(1uLL, 4 * (v16 + 3), 0x100004052888210uLL);
            *(this + 50) = v21;
            v22 = v16;
            v21[v16] = 4103;
            v21[(v16 + 1)] = *(this + 56);
            v21[(v16 + 2)] = 0;
          }

          memcpy(v21, a4, 4 * v22);
          goto LABEL_18;
        }

        goto LABEL_4;
      }

      v20 = a4[v16 + 1];
      if (v20 < 8000)
      {
        goto LABEL_4;
      }

      *(this + 56) = v20;
      v17 = 1;
      v16 += 2;
    }
  }

  v18 = 1;
LABEL_18:
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 372) = xmmword_23A03A370;
  *(this + 388) = 1065353216;
  v23 = OALContext::InitializeMixer(this, v18);
  if (!v23)
  {
    operator new();
  }

  *(this + 488) = v23 == 0;
}

void sub_23A0136F4(_Unwind_Exception *a1)
{
  CAGuard::~CAGuard((v1 + 192));
  CAGuard::~CAGuard((v1 + 48));
  _Unwind_Resume(a1);
}

uint64_t OALContext::InitializeMixer(OALContext *this, unsigned int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  LODWORD(ioDataSize) = 0;
  v19 = 0;
  memset(inData, 0, sizeof(inData));
  inDescription.componentFlagsMask = 0;
  *&inDescription.componentType = xmmword_23A03A380;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  Property = AUGraphAddNode(*(*(this + 2) + 16), &inDescription, this + 6);
  if (Property)
  {
    goto LABEL_27;
  }

  Property = AUGraphNodeInfo(*(*(this + 2) + 16), *(this + 6), 0, this + 4);
  if (Property)
  {
    goto LABEL_27;
  }

  LODWORD(ioDataSize) = 12;
  if (!AudioUnitGetProperty(*(this + 4), 0xBC2u, 1u, 1u, &ioDataSize + 4, &ioDataSize))
  {
    *(this + 57) = *(&ioDataSize + 4);
  }

  AudioUnitGetProperty(*(*(this + 2) + 32), 8u, 2u, 0, inData, &ioDataSize);
  DesiredRenderChannelCount = OALDevice::GetDesiredRenderChannelCount(*(this + 2));
  *(inData + 8) = xmmword_23A03A390;
  DWORD2(inData[1]) = 4;
  HIDWORD(inData[1]) = DesiredRenderChannelCount;
  v19 = 32;
  *&inData[0] = *(this + 56);
  Property = AudioUnitSetProperty(*(this + 4), 8u, 2u, 0, inData, 0x28u);
  if (Property)
  {
    goto LABEL_27;
  }

  v13 = 4;
  v14 = 0;
  AudioUnitGetProperty(*(this + 4), 0xEu, 0, 0, &v14, &v13);
  if (v14 < *(*(this + 2) + 72))
  {
    v14 = *(*(this + 2) + 72);
    Property = AudioUnitSetProperty(*(this + 4), 0xEu, 0, 0, &v14, 4u);
    if (Property)
    {
      goto LABEL_27;
    }
  }

  *&ioDataSize = 4;
  Property = AudioUnitGetProperty(*(this + 4), 0xBu, 1u, 0, &ioDataSize + 4, &ioDataSize);
  if (!Property)
  {
    if (*(this + 108) == DWORD1(ioDataSize))
    {
      Property = 0;
    }

    else
    {
      Property = AudioUnitSetProperty(*(this + 4), 0xBu, 1u, 0, this + 432, ioDataSize);
      if (Property)
      {
        LODWORD(ioDataSize) = 4;
        AudioUnitGetProperty(*(this + 4), 0xBu, 1u, 0, this + 432, &ioDataSize);
      }
    }
  }

  *&v15[0] = *(this + 56);
  DWORD2(v15[1]) = 2;
  LODWORD(v16) = 16;
  *(v15 + 8) = xmmword_23A03A3A0;
  if (*(this + 108))
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v7 >= a2 ? 1 : 2;
      HIDWORD(v15[1]) = v8;
      if (AudioUnitSetProperty(*(this + 4), 8u, 1u, v7, v15, 0x28u))
      {
        break;
      }

      v9 = *(this + 59) + v6;
      *(v9 + 8) = HIDWORD(v15[1]);
      *v9 = -1;
      *(v9 + 4) = 0;
      ++v7;
      v6 += 12;
      if (v7 >= *(this + 108))
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    OALContext::InitRenderQualityOnBusses(this);
  }

  if (Property)
  {
LABEL_27:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = *this;
      DWORD1(ioDataSize) = 136315906;
      *(&ioDataSize + 1) = "oalContext.cpp";
      v21 = 1024;
      v22 = 372;
      v23 = 2048;
      v24 = v10;
      v25 = 2048;
      v26 = Property;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::InitializeMixer FAILED - OALContext = %ld : result = %ld", &ioDataSize + 4, 0x26u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return Property;
}

void OALContext::~OALContext(OALContext *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = (v2 + 16);
    if (*(v2 + 16))
    {
      v4 = 0;
      do
      {
        v6 = (v2 + 8);
        v5 = *v2;
        if (*v2 != v2 + 8)
        {
          v7 = *(v5 + 40);
          if (v7)
          {
            Token = OALSource::GetToken(*(v5 + 40));
            v9 = *v6;
            if (*v6)
            {
              v10 = v2 + 8;
              v11 = *v6;
              do
              {
                v12 = *(v11 + 8);
                v13 = v12 >= Token;
                v14 = v12 < Token;
                if (v13)
                {
                  v10 = v11;
                }

                v11 = v11[v14];
              }

              while (v11);
              if (v10 != v6 && *(v10 + 32) <= Token)
              {
                v15 = *(v10 + 8);
                v16 = v10;
                if (v15)
                {
                  do
                  {
                    v17 = v15;
                    v15 = *v15;
                  }

                  while (v15);
                }

                else
                {
                  do
                  {
                    v17 = v16[2];
                    v18 = *v17 == v16;
                    v16 = v17;
                  }

                  while (!v18);
                }

                if (*v2 == v10)
                {
                  *v2 = v17;
                }

                --*v3;
                std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v10);
                operator delete(v10);
              }
            }

            OALSource::~OALSource(v7);
            MEMORY[0x23EE824D0]();
            v2 = *(this + 5);
          }
        }

        ++v4;
        v3 = (v2 + 16);
      }

      while (v4 < *(v2 + 16));
    }

    std::__tree<std::__value_type<unsigned int,OALSource *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OALSource *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OALSource *>>>::destroy(v2, *(v2 + 8));
    MEMORY[0x23EE824D0](v2, 0x1020C4062D53EE8);
    *(this + 5) = 0;
  }

  if (*(this + 23))
  {
    OALContext::CleanUpDeadSourceList(this);
    v19 = *(this + 23);
    if (v19)
    {
      std::__tree<std::__value_type<unsigned int,OALSource *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OALSource *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OALSource *>>>::destroy(*(this + 23), *(v19 + 8));
      MEMORY[0x23EE824D0](v19, 0x1020C4062D53EE8);
    }

    *(this + 23) = 0;
  }

  v20 = *(this + 65);
  if (v20)
  {
    OALCaptureMixer::~OALCaptureMixer(v20);
    MEMORY[0x23EE824D0]();
    *(this + 65) = 0;
  }

  OALDevice::RemoveContext(*(this + 2), this);
  v21 = *(this + 50);
  if (v21)
  {
    free(v21);
    *(this + 50) = 0;
  }

  v22 = *(this + 59);
  if (v22)
  {
    free(v22);
    *(this + 59) = 0;
  }

  CAGuard::~CAGuard((this + 192));
  CAGuard::~CAGuard((this + 48));
}

uint64_t OALContext::CleanUpDeadSourceList(uint64_t this)
{
  v1 = *(this + 184);
  if (v1 && *(v1 + 16))
  {
    v2 = this;
    v3 = 0;
    v4 = 0;
    do
    {
      while (1)
      {
        v5 = *v1;
        if (v3)
        {
          for (i = 0; i < v3; ++i)
          {
            if (v5 == (v1 + 8))
            {
              i = v3;
            }

            else
            {
              v7 = v5[1];
              if (v7)
              {
                do
                {
                  v5 = v7;
                  v7 = *v7;
                }

                while (v7);
              }

              else
              {
                do
                {
                  v8 = v5;
                  v5 = v5[2];
                }

                while (*v5 != v8);
              }
            }
          }
        }

        if (v5 != (v1 + 8))
        {
          v9 = v5[5];
          if (v9)
          {
            if (*(v9 + 4) == 1 && !*(v9 + 72))
            {
              this = CAMutex::IsFree((v9 + 80));
              if (this)
              {
                break;
              }
            }
          }
        }

        ++v3;
        ++v4;
        v1 = *(v2 + 184);
        if (v4 >= *(v1 + 16))
        {
          return this;
        }
      }

      v10 = *(v2 + 184);
      Token = OALSource::GetToken(v9);
      v12 = v10[1];
      if (v12)
      {
        v13 = v10 + 1;
        v14 = v10[1];
        do
        {
          v15 = *(v14 + 32);
          v16 = v15 >= Token;
          v17 = v15 < Token;
          if (v16)
          {
            v13 = v14;
          }

          v14 = *(v14 + 8 * v17);
        }

        while (v14);
        if (v13 != v10 + 1 && *(v13 + 8) <= Token)
        {
          v18 = v13[1];
          v19 = v13;
          if (v18)
          {
            do
            {
              v20 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v20 = v19[2];
              v21 = *v20 == v19;
              v19 = v20;
            }

            while (!v21);
          }

          if (*v10 == v13)
          {
            *v10 = v20;
          }

          --v10[2];
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v12, v13);
          operator delete(v13);
        }
      }

      OALSource::~OALSource(v9);
      this = MEMORY[0x23EE824D0]();
      ++v4;
      v1 = *(v2 + 184);
    }

    while (v4 < *(v1 + 16));
  }

  return this;
}

uint64_t OALContext::InitRenderQualityOnBusses(OALContext *this)
{
  v26 = *MEMORY[0x277D85DE8];
  ioDataSize = 0;
  v16 = 0;
  outData = 0u;
  v15 = 0u;
  if (OALDevice::GetDesiredRenderChannelCount(*(this + 2)) <= 2)
  {
    v11 = *(this + 106);
    switch(v11)
    {
      case 1751412840:
        v2 = 1;
        break;
      case 1919183983:
        v2 = 0;
        break;
      case 1920034921:
        v2 = 2;
        break;
      default:
        v9 = 0xFFFFFFFFLL;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_16;
        }

        goto LABEL_15;
    }
  }

  else
  {
    v2 = 3;
  }

  *(this + 107) = v2;
  if (*(this + 108))
  {
    v3 = 0;
    v4 = MEMORY[0x277D86220];
    do
    {
      ioDataSize = 40;
      result = AudioUnitGetProperty(*(this + 4), 8u, 1u, v3, &outData, &ioDataSize);
      if (!result)
      {
        if (HIDWORD(v15) == 2)
        {
          v6 = 5;
        }

        else
        {
          v6 = *(this + 107);
        }

        inData = v6;
        result = AudioUnitSetProperty(*(this + 4), 0xBB8u, 1u, v3, &inData, 4u);
        if (result)
        {
          v7 = result;
          v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
          result = v7;
          if (v8)
          {
            *buf = 136315906;
            v19 = "oalContext.cpp";
            v20 = 1024;
            v21 = 998;
            v22 = 1024;
            v23 = v3;
            v24 = 1024;
            v25 = v7;
            _os_log_impl(&dword_23A012000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d OALContext::InitRenderQualityOnBusses() - Error setting kAudioUnitProperty_SpatializationAlgorithm: bus = %d, err= %d", buf, 0x1Eu);
            result = v7;
          }
        }
      }

      ++v3;
    }

    while (v3 < *(this + 108));
    if (!result)
    {
      goto LABEL_17;
    }

    v9 = result;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
LABEL_16:
      result = v9;
LABEL_17:
      v10 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_15:
    *buf = 136315650;
    v19 = "oalContext.cpp";
    v20 = 1024;
    v21 = 1004;
    v22 = 1024;
    v23 = v9;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d OALContext::InitRenderQualityOnBusses() - Error setting kAudioUnitProperty_SpatializationAlgorithm: err= %d", buf, 0x18u);
    goto LABEL_16;
  }

  result = 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OALContext::ConfigureMixerFormat(AudioUnit *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(outData, 0, sizeof(outData));
  ioDataSize = 40;
  v2 = this + 4;
  AudioUnitGetProperty(this[4], 8u, 2u, 0, outData, &ioDataSize);
  DesiredRenderChannelCount = OALDevice::GetDesiredRenderChannelCount(this[2]);
  *(outData + 8) = xmmword_23A03A390;
  DWORD2(outData[1]) = 4;
  HIDWORD(outData[1]) = DesiredRenderChannelCount;
  v10 = 32;
  *&outData[0] = this[56];
  inited = AudioUnitSetProperty(*v2, 8u, 2u, 0, outData, 0x28u);
  if (inited || (inited = OALContext::InitRenderQualityOnBusses(this), inited))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = *this;
      *buf = 136315906;
      v12 = "oalContext.cpp";
      v13 = 1024;
      v14 = 405;
      v15 = 2048;
      v16 = v5;
      v17 = 2048;
      v18 = inited;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::ConfigureMixerFormat FAILED - OALContext = %ld : result = %ld", buf, 0x26u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return inited;
}

void sub_23A014488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CAGuard::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

uint64_t OALContext::ProtectSource(OALContext *this, unsigned int a2)
{
  v3 = this + 48;
  v4 = (*(*(this + 6) + 16))(this + 48);
  v5 = *(v3 - 1);
  v8 = *(v5 + 8);
  v6 = v5 + 8;
  v7 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v6;
  do
  {
    v10 = *(v7 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * v12);
  }

  while (v7);
  if (v9 != v6 && *(v9 + 32) <= a2)
  {
    v13 = *(v9 + 40);
    if (v13)
    {
      atomic_fetch_add((v13 + 72), 1u);
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  if (v4)
  {
    (*(*v3 + 24))(v3);
  }

  return v13;
}

uint64_t OALContext::RemoveSource(uint64_t this, unsigned int a2)
{
  v2 = *(this + 40);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != v3 && *(v6 + 32) <= a2 && *(v6 + 40))
    {
      v10 = this;
      OALSource::SetUpDeconstruction(*(v6 + 40));
      v12 = v10;
      v14 = *(v10 + 48);
      v13 = v10 + 48;
      v15 = (*(v14 + 16))(v13);
      v16 = *(v13 - 8);
      v17 = v16[1];
      if (v17)
      {
        v18 = v16 + 1;
        v19 = v16[1];
        do
        {
          v20 = *(v19 + 32);
          v8 = v20 >= a2;
          v21 = v20 < a2;
          if (v8)
          {
            v18 = v19;
          }

          v19 = *(v19 + 8 * v21);
        }

        while (v19);
        if (v18 != v16 + 1 && *(v18 + 8) <= a2)
        {
          v22 = v18[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            v24 = v18;
            do
            {
              v23 = v24[2];
              v25 = *v23 == v24;
              v24 = v23;
            }

            while (!v25);
          }

          v26 = v15;
          if (*v16 == v18)
          {
            *v16 = v23;
          }

          --v16[2];
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v17, v18);
          operator delete(v18);
          v15 = v26;
        }
      }

      if (v15)
      {
        (*(*v13 + 24))(v13);
      }

      (*(*(v12 + 192) + 16))(v12 + 192);
        ;
      }

      std::__tree<std::__value_type<unsigned int,OALSource *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OALSource *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OALSource *>>>::__emplace_hint_multi<std::pair<unsigned int const,OALSource *>>();
    }
  }

  return this;
}

uint64_t OALContext::ConnectMixerToDevice(OALDevice **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = OALDevice::ConnectContext(this[2], this);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = AUGraphAddRenderNotify(*(this[2] + 2), OALContext::ContextNotificationProc, this);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = *this;
    v7 = 136315906;
    v8 = "oalContext.cpp";
    v9 = 1024;
    v10 = 573;
    v11 = 2048;
    v12 = v4;
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::ConnectMixerToDevice FAILED - OALContext = %ld : result = %ld", &v7, 0x26u);
  }

LABEL_6:
  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t OALContext::ContextNotificationProc(OALContext *this, _DWORD *a2, unsigned int *a3, const AudioTimeStamp *a4, unsigned int a5, unsigned int a6, AudioBufferList *a7)
{
  if ((*a2 & 4) != 0)
  {
    *(this + 60) = pthread_self();
    return 0;
  }

  else
  {
    if ((*a2 & 8) != 0)
    {
      OALContext::DoPostRender(this);
    }

    return 0;
  }
}

uint64_t OALContext::DisconnectMixerFromDevice(OALContext *this)
{
  v9 = *MEMORY[0x277D85DE8];
  OALDevice::DisconnectContext(*(this + 2), this);
  v2 = AUGraphRemoveRenderNotify(*(*(this + 2) + 16), OALContext::ContextNotificationProc, this);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "oalContext.cpp";
    v7 = 1024;
    v8 = 584;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d OALContext::DisconnectMixerFromDevice : Disconnecting now", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t OALContext::SetDistanceModel(uint64_t this, int a2)
{
  if (*(this + 328) != a2)
  {
    v3 = this;
    inData = 0;
    if ((a2 - 53249) > 5)
    {
      if (!a2)
      {
        *(this + 408) = 0;
      }
    }

    else
    {
      v4 = 1 << (a2 - 1);
      if ((v4 & 3) != 0)
      {
        *(this + 408) = 1;
        inData = 2;
        if (*(this + 432))
        {
          v6 = 0;
          do
          {
            this = AudioUnitSetProperty(*(v3 + 32), 0xBC5u, 1u, v6++, &inData, 4u);
          }

          while (v6 < *(v3 + 432));
        }
      }

      else if ((v4 & 0xC) != 0)
      {
        *(this + 408) = 1;
        inData = 3;
        if (*(this + 432))
        {
          v5 = 0;
          do
          {
            this = AudioUnitSetProperty(*(v3 + 32), 0xBC5u, 1u, v5++, &inData, 4u);
          }

          while (v5 < *(v3 + 432));
        }
      }

      else
      {
        *(this + 408) = 1;
        inData = 1;
        if (*(this + 432))
        {
          v7 = 0;
          do
          {
            this = AudioUnitSetProperty(*(v3 + 32), 0xBC5u, 1u, v7++, &inData, 4u);
          }

          while (v7 < *(v3 + 432));
        }
      }
    }

    *(v3 + 328) = a2;
    if (*(v3 + 40))
    {
      v9 = *(v3 + 48);
      v8 = v3 + 48;
      this = (*(v9 + 16))(v8);
      v10 = this;
      v11 = *(v8 - 8);
      v14 = *v11;
      v12 = v11 + 1;
      v13 = v14;
      if (v14 != v12)
      {
        do
        {
          this = OALSource::SetChannelParameters(v13[5]);
          v15 = v13[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v13[2];
              v17 = *v16 == v13;
              v13 = v16;
            }

            while (!v17);
          }

          v13 = v16;
        }

        while (v16 != v12);
      }

      if (v10)
      {
        return (*(*v8 + 24))(v8);
      }
    }
  }

  return this;
}

void sub_23A014C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CAGuard::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

void *OALSourceMap::MarkAllSourcesForRecalculation(void *this)
{
  v1 = this + 1;
  v2 = *this;
  if (*this != this + 1)
  {
    do
    {
      this = OALSource::SetChannelParameters(v2[5]);
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != v1);
  }

  return this;
}

uint64_t OALContext::SetDopplerFactor(uint64_t this, float a2)
{
  if (*(this + 336) != a2)
  {
    *(this + 336) = a2;
    if (*(this + 40))
    {
      v2 = this + 48;
      this = (*(*(this + 48) + 16))(this + 48);
      v3 = this;
      v4 = *(v2 - 8);
      v7 = *v4;
      v5 = v4 + 1;
      v6 = v7;
      if (v7 != v5)
      {
        do
        {
          this = OALSource::SetChannelParameters(v6[5]);
          v8 = v6[1];
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
            do
            {
              v9 = v6[2];
              v10 = *v9 == v6;
              v6 = v9;
            }

            while (!v10);
          }

          v6 = v9;
        }

        while (v9 != v5);
      }

      if (v3)
      {
        return (*(*v2 + 24))(v2);
      }
    }
  }

  return this;
}

uint64_t OALContext::SetDopplerVelocity(uint64_t this, float a2)
{
  if (*(this + 340) != a2)
  {
    *(this + 340) = a2;
  }

  return this;
}

uint64_t OALContext::SetSpeedOfSound(uint64_t this, float a2)
{
  if (*(this + 332) != a2)
  {
    *(this + 332) = a2;
    if (*(this + 40))
    {
      v2 = this + 48;
      this = (*(*(this + 48) + 16))(this + 48);
      v3 = this;
      v4 = *(v2 - 8);
      v7 = *v4;
      v5 = v4 + 1;
      v6 = v7;
      if (v7 != v5)
      {
        do
        {
          this = OALSource::SetChannelParameters(v6[5]);
          v8 = v6[1];
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
            do
            {
              v9 = v6[2];
              v10 = *v9 == v6;
              v6 = v9;
            }

            while (!v10);
          }

          v6 = v9;
        }

        while (v9 != v5);
      }

      if (v3)
      {
        return (*(*v2 + 24))(v2);
      }
    }
  }

  return this;
}

uint64_t OALContext::SetListenerGain(OALContext *this, float a2)
{
  if (*(this + 92) != a2)
  {
    *(this + 92) = a2;
    v3 = log10f(a2);
    AudioUnitSetParameter(*(this + 4), 3u, 2u, 0, v3 * 20.0, 0);
  }

  return 0;
}

uint64_t OALContext::GetSourceCount(OALContext *this)
{
  if (!*(this + 5))
  {
    return 0;
  }

  v1 = this + 48;
  v2 = (*(*(this + 6) + 16))(this + 48);
  result = *(*(v1 - 1) + 16);
  if (v2)
  {
    v4 = *(*(v1 - 1) + 16);
    (*(*v1 + 24))(v1);
    return v4;
  }

  return result;
}

uint64_t OALContext::SetListenerPosition(OALContext *this, float a2, float a3, float a4)
{
  if (*(this + 86) != a2 || *(this + 87) != a3 || *(this + 88) != a4)
  {
    *(this + 86) = a2;
    *(this + 87) = a3;
    *(this + 88) = a4;
    if (*(this + 5))
    {
      v4 = this + 48;
      v5 = (*(*(this + 6) + 16))(this + 48);
      v6 = v4;
      v7 = *(v4 - 1);
      v10 = *v7;
      v8 = v7 + 1;
      v9 = v10;
      if (v10 != v8)
      {
        do
        {
          OALSource::SetChannelParameters(v9[5]);
          v12 = v9[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v9[2];
              v14 = *v13 == v9;
              v9 = v13;
            }

            while (!v14);
          }

          v9 = v13;
        }

        while (v13 != v8);
      }

      if (v5)
      {
        (*(*v6 + 24))(v6);
      }
    }
  }

  return 0;
}

uint64_t OALContext::SetListenerVelocity(OALContext *this, float a2, float a3, float a4)
{
  *(this + 89) = a2;
  *(this + 90) = a3;
  *(this + 91) = a4;
  if (*(this + 5))
  {
    v4 = this + 48;
    v5 = (*(*(this + 6) + 16))(this + 48);
    v6 = *(v4 - 1);
    v9 = *v6;
    v7 = v6 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      do
      {
        OALSource::SetChannelParameters(v8[5]);
        v11 = v8[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v8[2];
            v13 = *v12 == v8;
            v8 = v12;
          }

          while (!v13);
        }

        v8 = v12;
      }

      while (v12 != v7);
    }

    if (v5)
    {
      (*(*v4 + 24))(v4);
    }
  }

  return 0;
}

uint64_t OALContext::SetListenerOrientation(OALContext *this, float a2, float a3, float a4, float a5, float a6, float a7)
{
  if (*(this + 93) != a2 || *(this + 94) != a3 || *(this + 95) != a4 || *(this + 96) != a5 || *(this + 97) != a6 || *(this + 98) != a7)
  {
    *(this + 93) = a2;
    *(this + 94) = a3;
    *(this + 95) = a4;
    *(this + 96) = a5;
    *(this + 97) = a6;
    *(this + 98) = a7;
    if (*(this + 5))
    {
      v7 = *(this + 6);
      v10 = this + 48;
      v8 = this + 48;
      v11 = (*(v7 + 16))(this + 48);
      OALSourceMap::MarkAllSourcesForRecalculation(*(v8 - 1));
      CAGuard::Locker::~Locker(&v10);
    }
  }

  return 0;
}

uint64_t OALContext::SetBusEnable(OALContext *this, AudioUnitElement inElement, int a3)
{
  v3 = 0.0;
  if (a3)
  {
    v3 = 1.0;
  }

  v4 = *(this + 4);

  return AudioUnitSetParameter(v4, 5u, 1u, inElement, v3, 0);
}

uint64_t OALContext::InitRenderQualityOnSources(OALContext *this)
{
  v1 = *(this + 5);
  if (v1 && v1[4])
  {
    v3 = 0;
    v4 = this + 48;
    do
    {
      if (*v1 != v1 + 2)
      {
        v5 = *(*v1 + 40);
        if (v5)
        {
          Token = OALSource::GetToken(*(*v1 + 40));
          v7 = (*(*(this + 6) + 16))(v4);
          v8 = *(this + 5);
          v11 = *(v8 + 8);
          v9 = v8 + 8;
          v10 = v11;
          if (v11)
          {
            v12 = v9;
            do
            {
              v13 = *(v10 + 32);
              v14 = v13 >= Token;
              v15 = v13 < Token;
              if (v14)
              {
                v12 = v10;
              }

              v10 = *(v10 + 8 * v15);
            }

            while (v10);
            if (v12 != v9 && *(v12 + 32) <= Token)
            {
              v16 = *(v12 + 40);
              if (v16)
              {
                atomic_fetch_add((v16 + 72), 1u);
              }
            }
          }

          if (v7)
          {
            (*(*v4 + 24))(v4);
          }

          OALSource::SetRenderQuality(v5, *(this + 106));
          atomic_fetch_add(v5 + 18, 0xFFFFFFFF);
          v1 = *(this + 5);
        }
      }

      ++v3;
    }

    while (v3 < v1[4]);
  }

  return 0;
}

OALContext *OALContext::SetRenderQuality(OALContext *this, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 106) == a2)
  {
    v2 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = this;
    if (!IsValidRenderQuality(a2))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v6 = *v4;
        v8 = 136315906;
        v9 = "oalContext.cpp";
        v10 = 1024;
        v11 = 1040;
        v12 = 2048;
        v13 = v6;
        v14 = 2048;
        v15 = a2;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d OALContext::SetRenderQuality() - Error: Invalid Render Quality Requested - OALContext:inRenderQuality = %ld:%ld", &v8, 0x26u);
      }

      exception = __cxa_allocate_exception(4uLL);
      *exception = 40963;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    }

    *(v4 + 106) = a2;
    OALContext::InitRenderQualityOnBusses(v4);
    v5 = *MEMORY[0x277D85DE8];

    return OALContext::InitRenderQualityOnSources(v4);
  }

  return this;
}

uint64_t OALContext::SetSourceDesiredRenderQualityOnBus(AudioUnit *this, int a2, AudioUnitElement a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (OALDevice::GetDesiredRenderChannelCount(this[2]) <= 2)
  {
    inData = -1;
    v16 = 0;
    outData = 0u;
    v15 = 0u;
    ioDataSize = 40;
    if (IsValidRenderQuality(a2))
    {
      switch(a2)
      {
        case 1751412840:
          v10 = 1;
          break;
        case 1920034921:
          v10 = 2;
          break;
        case 1919183983:
          inData = 0;
          goto LABEL_14;
        default:
LABEL_10:
          v9 = -50;
          goto LABEL_16;
      }

      inData = v10;
LABEL_14:
      Property = AudioUnitGetProperty(this[4], 8u, 1u, a3, &outData, &ioDataSize);
      if (!Property)
      {
        if (HIDWORD(v15) != 1)
        {
          goto LABEL_2;
        }

        Property = AudioUnitSetProperty(this[4], 0xBB8u, 1u, a3, &inData, 4u);
        if (!Property)
        {
          goto LABEL_2;
        }
      }

      v9 = Property;
LABEL_16:
      for (i = MEMORY[0x277D86220]; ; _os_log_impl(&dword_23A012000, i, OS_LOG_TYPE_DEBUG, "%25s:%-5d OALContext::SetSourceDesiredRenderQualityOnBus() - Error setting kAudioUnitProperty_SpatializationAlgorithm: bus = %d, err = %d", buf, 0x1Eu))
      {
          ;
        }

        *buf = 136315906;
        v19 = "oalContext.cpp";
        v20 = 1024;
        v21 = 1110;
        v22 = 1024;
        v23 = a3;
        v24 = 1024;
        v25 = v9;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = *this;
      *buf = 136316162;
      v19 = "oalContext.cpp";
      v20 = 1024;
      v21 = 1070;
      v22 = 1024;
      v23 = v8;
      v24 = 1024;
      v25 = a2;
      v26 = 1024;
      v27 = a3;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d OALContext::SetSourceDesiredRenderQualityOnBus() - Error: Invalid Render Quality Requested - OALContext:inRenderQuality:inBus = %d:%d:%d", buf, 0x24u);
    }

    goto LABEL_10;
  }

LABEL_2:
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t OALContext::GetAvailableMonoBus(OALContext *this, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(this + 108);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 59);
    do
    {
      if (*v4 == -1 && v4[2] == 1)
      {
        *v4 = a2;
        v5 = *(this + 4);
LABEL_17:
        AudioUnitSetParameter(v5, 5u, 1u, v3, 1.0, 0);
        v12 = *MEMORY[0x277D85DE8];
        return v3;
      }

      ++v3;
      v4 += 3;
    }

    while (v2 != v3);
    if (*(this + 464))
    {
      goto LABEL_11;
    }

    v6 = 0;
    v3 = 0;
    while (*(*(this + 59) + v6) != -1)
    {
      v3 = (v3 + 1);
      v6 += 12;
      if (v2 == v3)
      {
        goto LABEL_11;
      }
    }

    v16 = 0;
    *buf = *(this + 56);
    *&buf[8] = xmmword_23A03A3B0;
    v15 = 0x100000002;
    LODWORD(v16) = 16;
    if (!AudioUnitSetProperty(*(this + 4), 8u, 1u, v3, buf, 0x28u))
    {
      v11 = (*(this + 59) + v6);
      *v11 = a2;
      v11[2] = 1;
      AudioUnitSetProperty(*(this + 4), 0xBB8u, 1u, v3, this + 428, 4u);
      inData = 4;
      AudioUnitSetProperty(*(this + 4), 0xBBBu, 1u, v3, &inData, 4u);
      v5 = *(this + 4);
      goto LABEL_17;
    }
  }

  else
  {
LABEL_11:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "oalContext.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1220;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::GetAvailableMonoBus: COULD NOT GET A MONO BUS", buf, 0x12u);
    }
  }

  v3 = 0xFFFFFFFFLL;
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t OALContext::GetAvailableStereoBus(OALContext *this, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(this + 108);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 59);
    do
    {
      if (*v4 == -1 && v4[2] == 2)
      {
        *v4 = a2;
        v5 = *(this + 4);
LABEL_17:
        AudioUnitSetParameter(v5, 5u, 1u, v3, 1.0, 0);
        v12 = *MEMORY[0x277D85DE8];
        return v3;
      }

      ++v3;
      v4 += 3;
    }

    while (v2 != v3);
    if (*(this + 464))
    {
      goto LABEL_11;
    }

    v6 = 0;
    v3 = 0;
    while (*(*(this + 59) + v6) != -1)
    {
      v3 = (v3 + 1);
      v6 += 12;
      if (v2 == v3)
      {
        goto LABEL_11;
      }
    }

    v16 = 0;
    *buf = *(this + 56);
    *&buf[8] = xmmword_23A03A3A0;
    v15 = 0x200000002;
    LODWORD(v16) = 16;
    if (!AudioUnitSetProperty(*(this + 4), 8u, 1u, v3, buf, 0x28u))
    {
      v11 = (*(this + 59) + v6);
      *v11 = a2;
      v11[2] = 2;
      inData = 5;
      AudioUnitSetProperty(*(this + 4), 0xBB8u, 1u, v3, &inData, 4u);
      v5 = *(this + 4);
      goto LABEL_17;
    }
  }

  else
  {
LABEL_11:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "oalContext.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1291;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: GetAvailableStereoBus: COULD NOT GET A STEREO BUS", buf, 0x12u);
    }
  }

  v3 = 0xFFFFFFFFLL;
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t OALContext::SetBusAsAvailable(uint64_t this, unsigned int a2)
{
  v2 = *(this + 472) + 12 * a2;
  *v2 = -1;
  *(v2 + 4) = 0;
  return this;
}

uint64_t OALContext::SetBusNeedsPostRender(uint64_t this, unsigned int a2, int a3)
{
  if (*(this + 432) > a2)
  {
    *(*(this + 472) + 12 * a2 + 4) = a3;
    if (a3)
    {
      *(this + 436) = 1;
    }
  }

  return this;
}

uint64_t OALContext::DoPostRender(OALContext *this)
{
  if (*(this + 436) != 1)
  {
    return 0;
  }

  *(this + 436) = 0;
  v2 = *(this + 108);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = this + 48;
  while (1)
  {
    v5 = *(this + 59);
    if (*(v5 + 12 * v3 + 4) != 1)
    {
      goto LABEL_6;
    }

    v6 = *(v5 + 12 * v3);
    v28 = 0;
    v7 = (*(*v4 + 32))(this + 48, &v28);
    HIBYTE(v28) = v7;
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = *(this + 5);
    v11 = *(v8 + 8);
    v9 = v8 + 8;
    v10 = v11;
    if (!v11)
    {
      goto LABEL_17;
    }

    v12 = v9;
    do
    {
      v13 = *(v10 + 32);
      v14 = v13 >= v6;
      v15 = v13 < v6;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *(v10 + 8 * v15);
    }

    while (v10);
    if (v12 != v9 && *(v12 + 32) <= v6)
    {
      v16 = *(v12 + 40);
      if (v16)
      {
        atomic_fetch_add(v16 + 18, 1u);
      }
    }

    else
    {
LABEL_17:
      v16 = 0;
    }

    if (v28 == 1)
    {
      (*(*(this + 6) + 24))(this + 48);
    }

    if (!v16)
    {
      break;
    }

    OALSource::DoPostRender(v16);
    atomic_fetch_add(v16 + 18, 0xFFFFFFFF);
    v2 = *(this + 108);
LABEL_6:
    if (++v3 >= v2)
    {
      return 0;
    }
  }

  v17 = *(*(this + 59) + 12 * v3);
  v28 = 0;
  v18 = (*(*(this + 24) + 32))(this + 192, &v28);
  HIBYTE(v28) = v18;
  if (!v18)
  {
    goto LABEL_29;
  }

  v19 = *(this + 23);
  v22 = *(v19 + 8);
  v20 = v19 + 8;
  v21 = v22;
  if (!v22)
  {
    goto LABEL_29;
  }

  v23 = v20;
  do
  {
    v24 = *(v21 + 32);
    v14 = v24 >= v17;
    v25 = v24 < v17;
    if (v14)
    {
      v23 = v21;
    }

    v21 = *(v21 + 8 * v25);
  }

  while (v21);
  if (v23 != v20 && *(v23 + 32) <= v17)
  {
    v26 = *(v23 + 40);
    if (v26)
    {
      atomic_fetch_add((v26 + 72), 1u);
    }
  }

  else
  {
LABEL_29:
    v26 = 0;
  }

  if (v28 == 1)
  {
    (*(*(this + 24) + 24))(this + 192);
  }

  if (v26)
  {
    OALSource::ClearMessageQueue(v26);
    OALSource::AddPlaybackMessage(v26, 9u, 0);
  }

  return 0;
}

uint64_t OALContext::SetReverbRoomType(uint64_t this, int a2)
{
  if (*(this + 496) != a2)
  {
    *(this + 496) = a2;
    this = AudioUnitSetProperty(*(this + 32), 0xAu, 0, 0, (this + 496), 4u);
    if (this)
    {
      v2 = this;
      exception = __cxa_allocate_exception(4uLL);
      *exception = v2;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    }
  }

  return this;
}

uint64_t OALContext::SetReverbLevel(uint64_t this, AudioUnitParameterValue a2)
{
  if (*(this + 500) != a2)
  {
    *(this + 500) = a2;
    this = AudioUnitSetParameter(*(this + 32), 9u, 0, 0, a2, 0);
    if (this)
    {
      v2 = this;
      exception = __cxa_allocate_exception(4uLL);
      *exception = v2;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    }
  }

  return this;
}

void OALContext::SetReverbState(OALContext *this, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(this + 123) != a2)
  {
    v3 = (this + 492);
    *(this + 123) = a2;
    v4 = AudioUnitSetProperty(*(this + 4), 0x3EDu, 0, 0, this + 492, 4u);
    if (v4)
    {
      v8 = v4;
      exception = __cxa_allocate_exception(4uLL);
      *exception = v8;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    }

    if (*v3 == 1)
    {
      inData = 1;
      v5 = AudioUnitSetProperty(*(this + 4), 0x11F8u, 0, 0, &inData, 4u);
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v12 = "oalContext.cpp";
          v13 = 1024;
          v14 = 1521;
          v15 = 1024;
          v16 = v6;
          _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d Could not enable old 3D mixer reverb behavior, %d", buf, 0x18u);
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t OALContext::SetReverbEQGain(uint64_t this, AudioUnitParameterValue a2)
{
  if (*(this + 504) != a2)
  {
    *(this + 504) = a2;
    this = AudioUnitSetParameter(*(this + 32), 0x10u, 0, 0, a2, 0);
    if (this)
    {
      v2 = this;
      exception = __cxa_allocate_exception(4uLL);
      *exception = v2;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    }
  }

  return this;
}

uint64_t OALContext::SetReverbEQBandwidth(uint64_t this, AudioUnitParameterValue a2)
{
  if (*(this + 508) != a2)
  {
    *(this + 508) = a2;
    this = AudioUnitSetParameter(*(this + 32), 0xFu, 0, 0, a2, 0);
    if (this)
    {
      v2 = this;
      exception = __cxa_allocate_exception(4uLL);
      *exception = v2;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    }
  }

  return this;
}

uint64_t OALContext::SetReverbEQFrequency(uint64_t this, AudioUnitParameterValue a2)
{
  if (*(this + 512) != a2)
  {
    *(this + 512) = a2;
    this = AudioUnitSetParameter(*(this + 32), 0xEu, 0, 0, a2, 0);
    if (this)
    {
      v2 = this;
      exception = __cxa_allocate_exception(4uLL);
      *exception = v2;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    }
  }

  return this;
}

float OALContext::GetReverbEQGain(OALContext *this)
{
  v1 = this + 504;
  Parameter = AudioUnitGetParameter(*(this + 4), 0x10u, 0, 0, this + 126);
  result = 0.0;
  if (!Parameter)
  {
    return *v1;
  }

  return result;
}

float OALContext::GetReverbEQBandwidth(OALContext *this)
{
  v1 = this + 508;
  Parameter = AudioUnitGetParameter(*(this + 4), 0xFu, 0, 0, this + 127);
  result = 0.0;
  if (!Parameter)
  {
    return *v1;
  }

  return result;
}

float OALContext::GetReverbEQFrequency(OALContext *this)
{
  v1 = this + 512;
  Parameter = AudioUnitGetParameter(*(this + 4), 0xEu, 0, 0, this + 128);
  result = 0.0;
  if (!Parameter)
  {
    return *v1;
  }

  return result;
}

void OALContext::OutputCapturerCreate(OALContext *this, double a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(this + 65);
  if (v3)
  {
    if (!*(v3 + 20))
    {
      OALCaptureMixer::~OALCaptureMixer(v3);
      MEMORY[0x23EE824D0]();
      *(this + 65) = 0;
      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315394;
      v6 = "oalContext.cpp";
      v7 = 1024;
      v8 = 1672;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::OutputCapturerCreate FAILED - output capturer is currently capturing!", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  operator new();
}

void sub_23A0167A8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    MEMORY[0x23EE824D0](v3, 0x1020C4037481C38);
    v6 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v7 = *v6;
      v8 = *(v2 + 520);
      if (v8)
      {
        OALCaptureMixer::~OALCaptureMixer(v8);
        MEMORY[0x23EE824D0]();
      }
    }

    else
    {
      v9 = *(v2 + 520);
      if (v9)
      {
        OALCaptureMixer::~OALCaptureMixer(v9);
        MEMORY[0x23EE824D0]();
      }
    }

    *(v2 + 520) = 0;
    __cxa_end_catch();
    JUMPOUT(0x23A0166E8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALContext::OutputCapturerStart(OALContext *this)
{
  v1 = *(this + 65);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  OALCaptureMixer::StartCapture(v1);
  return 0;
}

uint64_t OALContext::OutputCapturerStop(OALContext *this)
{
  v1 = *(this + 65);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  OALCaptureMixer::StopCapture(v1);
  return 0;
}

uint64_t OALContext::OutputCapturerGetFrames(OALContext *this, unsigned int a2, unsigned __int8 *a3)
{
  v3 = *(this + 65);
  if (v3)
  {
    return OALCaptureMixer::GetFrames(v3, a2, a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

OALCaptureMixer *OALContext::OutputCapturerAvailableFrames(OALContext *this)
{
  result = *(this + 65);
  if (result)
  {
    return OALCaptureMixer::AvailableFrames(result);
  }

  return result;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (!v21)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v21 + 24) == 1)
      {
LABEL_62:
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      else
      {
        v20 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
  }

  else
  {
    *(v26 + 24) = 1;
    *(v7 + 24) = 0;
    v27 = *v26;
    v7[1] = *v26;
    if (v27)
    {
      *(v27 + 16) = v7;
    }

    v28 = v7[2];
    v26[2] = v28;
    v28[*v28 != v7] = v26;
    *v26 = v7;
    v7[2] = v26;
    v25 = v7;
  }

  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void std::__tree<std::__value_type<unsigned int,OALSource *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OALSource *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OALSource *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,OALSource *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OALSource *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OALSource *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,OALSource *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OALSource *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OALSource *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t OALDevice::InitializeGraph(AUGraph *outGraph, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = outGraph + 2;
  if (outGraph[2])
  {
    v3 = 1768843636;
  }

  else
  {
    v12 = 0;
    memset(outData, 0, sizeof(outData));
    ioDataSize = 40;
    Property = NewAUGraph(outGraph + 2);
    if (Property)
    {
      goto LABEL_12;
    }

    v9.componentFlagsMask = 0;
    *&v9.componentType = xmmword_23A03A3D0;
    Property = AUGraphAddNode(outGraph[2], &v9, outGraph + 6);
    if (Property)
    {
      goto LABEL_12;
    }

    Property = AUGraphOpen(*v2);
    if (Property)
    {
      goto LABEL_12;
    }

    Property = AUGraphNodeInfo(outGraph[2], *(outGraph + 6), 0, outGraph + 4);
    if (Property)
    {
      goto LABEL_12;
    }

    Property = AudioUnitGetProperty(outGraph[4], 8u, 2u, 0, outData, &ioDataSize);
    if (Property)
    {
      goto LABEL_12;
    }

    if (*outData == 0.0)
    {
      *&outData[0] = 0x40E5888000000000;
    }

    Property = AudioUnitSetProperty(outGraph[4], 8u, 1u, 0, outData, ioDataSize);
    if (Property || (Property = AudioUnitInitialize(outGraph[4]), Property))
    {
LABEL_12:
      v3 = Property;
    }

    else
    {
      v3 = AudioUnitAddPropertyListener(outGraph[4], 8u, OALDevice::GraphFormatPropertyListener, outGraph);
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = *outGraph;
      *buf = 136315906;
      v14 = "oalDevice.cpp";
      v15 = 1024;
      v16 = 338;
      v17 = 2048;
      v18 = v6;
      v19 = 2048;
      v20 = v3;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALDevice::InitializeGraph FAILED - OALDevice = %ld : result = %ld", buf, 0x26u);
    }
  }

LABEL_15:
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

void OALDevice::OALDevice(OALDevice *this, const char *a2, uint64_t a3)
{
  *this = a3;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0x40E5888000000000;
  *(this + 8) = 0x72636D6300000002;
  *(this + 9) = 512;
  *(this + 80) = 0;
  CAGuard::CAGuard((this + 88), "OALDevice:GraphLock");
  *(this + 80) = OALDevice::InitializeGraph(this, v4) == 0;
}

void OALDevice::~OALDevice(OALDevice *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    AUGraphStop(v2);
    outIsRunning = 0;
    do
    {
      AUGraphIsRunning(*(this + 2), &outIsRunning);
    }

    while (outIsRunning);
    DisposeAUGraph(*(this + 2));
    *(this + 2) = 0;
  }

  CAGuard::~CAGuard((this + 88));
}

uint64_t OALDevice::SetError(uint64_t this, int a2)
{
  if (*(this + 8))
  {
    *(this + 8) = a2;
  }

  return this;
}

uint64_t OALDevice::StopGraph(AUGraph *this)
{
  AUGraphStop(this[2]);
  outIsRunning = 0;
  do
  {
    result = AUGraphIsRunning(this[2], &outIsRunning);
  }

  while (outIsRunning);
  return result;
}

uint64_t OALDevice::ResetRenderChannelSettings(OALDevice *this)
{
  v19 = *MEMORY[0x277D85DE8];
  DesiredRenderChannelCount = OALDevice::GetDesiredRenderChannelCount(this);
  if (*(this + 16) == DesiredRenderChannelCount)
  {
    Property = 0;
    goto LABEL_16;
  }

  *(this + 16) = DesiredRenderChannelCount;
  v4 = *(this + 11);
  v16 = this + 88;
  v5 = (*(v4 + 16))(this + 88);
  v17 = v5;
  outIsRunning[0] = 0;
  AUGraphIsRunning(*(this + 2), outIsRunning);
  v6 = outIsRunning[0];
  if (outIsRunning[0])
  {
    AUGraphStop(*(this + 2));
    outIsRunning[0] = 0;
    do
    {
      AUGraphIsRunning(*(this + 2), outIsRunning);
    }

    while (outIsRunning[0]);
  }

  if (!*(this + 10) || (Property = AUGraphDisconnectNodeInput(*(this + 2), *(this + 6), 0), !Property) && (Property = AUGraphUpdate(*(this + 2), 0), !Property))
  {
    memset(outIsRunning, 0, sizeof(outIsRunning));
    ioDataSize = 40;
    Property = AudioUnitGetProperty(*(this + 4), 8u, 1u, 0, outIsRunning, &ioDataSize);
    if (!Property)
    {
      v7 = *(this + 16);
      *&outIsRunning[8] = xmmword_23A03A390;
      *&outIsRunning[24] = 4;
      *&outIsRunning[28] = v7;
      *&outIsRunning[32] = 32;
      Property = AudioUnitSetProperty(*(this + 4), 8u, 1u, 0, outIsRunning, 0x28u);
      if (!Property)
      {
        if (*(this + 16) < 3u || (v11 = *(this + 11), v14 = 0, inData = v11, Property = AudioUnitSetProperty(*(this + 4), 0x13u, 1u, 0, &inData, 0x20u), !Property))
        {
          ReconfigureContextsOfThisDevice(*this);
          v12 = *(this + 10);
          if (!v12)
          {
            goto LABEL_28;
          }

          if (*(this + 12) == 1)
          {
            Property = AUGraphUninitialize(*(this + 2));
            if (Property)
            {
              goto LABEL_11;
            }

            *(this + 12) = 0;
            v12 = *(this + 10);
          }

          Property = AUGraphConnectNodeInput(*(this + 2), v12, 0, *(this + 6), 0);
          if (Property)
          {
            goto LABEL_11;
          }

          Property = AUGraphUpdate(*(this + 2), 0);
          if (Property)
          {
            goto LABEL_11;
          }

          if (*(this + 12))
          {
LABEL_28:
            if (!v6 || (Property = AUGraphStart(*(this + 2)), !Property))
            {
              Property = 0;
            }

            goto LABEL_11;
          }

          Property = AUGraphInitialize(*(this + 2));
          if (!Property)
          {
            *(this + 12) = 1;
            goto LABEL_28;
          }
        }
      }
    }
  }

LABEL_11:
  if (v5)
  {
    (*(*(this + 11) + 24))(this + 88);
  }

  if (Property && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = *this;
    *outIsRunning = 136315906;
    *&outIsRunning[4] = "oalDevice.cpp";
    *&outIsRunning[12] = 1024;
    *&outIsRunning[14] = 224;
    *&outIsRunning[18] = 2048;
    *&outIsRunning[20] = v8;
    *&outIsRunning[28] = 1024;
    *&outIsRunning[30] = Property;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALDevice::ResetRenderChannelSettings FAILED - OALDevice = %lu : result = %d", outIsRunning, 0x22u);
  }

LABEL_16:
  v9 = *MEMORY[0x277D85DE8];
  return Property;
}

void sub_23A017698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CAGuard::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

uint64_t OALDevice::GetDesiredRenderChannelCount(OALDevice *this)
{
  v26 = *MEMORY[0x277D85DE8];
  outDataSize = 0;
  if (*(this + 17) == 1919120244)
  {
    v1 = 0;
    v2 = 2;
    goto LABEL_7;
  }

  PropertyInfo = AudioUnitGetPropertyInfo(*(this + 4), 0x13u, 2u, 0, &outDataSize, 0);
  if (PropertyInfo)
  {
    v5 = PropertyInfo;
    v2 = 2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = *this;
      *buf = 136315906;
      v19 = "oalDevice.cpp";
      v20 = 1024;
      v21 = 434;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = v5;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALDevice::GetDesiredRenderChannelCount: Cannot get audio channel layout -> defaulting to stereo: OALDevice = %ld : result = %ld", buf, 0x26u);
    }

    v1 = 0;
    goto LABEL_7;
  }

  v1 = malloc_type_calloc(1uLL, outDataSize, 0x1000040E0EAB150uLL);
  if (!v1)
  {
    goto LABEL_38;
  }

  v2 = 2;
  v9 = v1;
  if (AudioUnitGetProperty(*(this + 4), 0x13u, 2u, 0, v1, &outDataSize))
  {
    v1 = v9;
    goto LABEL_7;
  }

  v1 = v9;
  v10 = *v9;
  if (*v9)
  {
    *(this + 11) = v10;
    if (v10 <= 8192006)
    {
      if (v10 > 7733252)
      {
        v2 = 5;
        if (v10 == 7733253 || v10 == 7929862)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v10 == 7077892)
        {
          v2 = 4;
          goto LABEL_7;
        }

        if (v10 == 7274504)
        {
          v2 = 8;
          goto LABEL_7;
        }
      }
    }

    else
    {
      if (v10 > 9109509)
      {
        if (v10 != 9699335 && v10 != 9175047)
        {
          if (v10 != 9109510)
          {
            goto LABEL_38;
          }

LABEL_39:
          v2 = 6;
          goto LABEL_7;
        }

        goto LABEL_37;
      }

      if (v10 == 8192007)
      {
        goto LABEL_39;
      }

      if (v10 == 8388616)
      {
LABEL_37:
        v2 = 7;
        goto LABEL_7;
      }
    }

LABEL_38:
    v2 = 2;
    goto LABEL_7;
  }

  v11 = v9[2];
  if (v11 >= 3)
  {
    LODWORD(v2) = 0;
    v12 = (v9 + 3);
    do
    {
      v14 = *v12;
      v12 += 5;
      v13 = v14;
      if (v14 == -1 || v13 == 4)
      {
        v2 = v2;
      }

      else
      {
        v2 = (v2 + 1);
      }

      --v11;
    }

    while (v11);
  }

  LayoutTagForLayout = OALDevice::GetLayoutTagForLayout(v9, v9, v2);
  v1 = v9;
  *(this + 11) = LayoutTagForLayout;
LABEL_7:
  free(v1);
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

OALDevice *OALDevice::GraphFormatPropertyListener(OALDevice *this, void *a2, OpaqueAudioComponentInstance *a3, int a4, int a5)
{
  if (a4 == 2 && !a5)
  {
    return OALDevice::ResetRenderChannelSettings(this);
  }

  return this;
}

void sub_23A0179C0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t OALDevice::SetRenderChannelSetting(OALDevice *this, int a2)
{
  if (a2 != 1919120244 && a2 != 1919118691)
  {
    return 40963;
  }

  if (*(this + 17) == a2)
  {
    return 0;
  }

  *(this + 17) = a2;
  v3 = *(this + 16);
  if (a2 == 1919120244)
  {
    if (v3 == 2)
    {
      return 0;
    }
  }

  else if (v3 > 2)
  {
    return 0;
  }

  OALDevice::ResetRenderChannelSettings(this);
  return 0;
}

uint64_t OALDevice::GetLayoutTagForLayout(OALDevice *this, AudioChannelLayout *a2, int a3)
{
  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      return 7077892;
    }

    if (a3 == 5)
    {
      return 7733253;
    }

    return 6619138;
  }

  if (a3 == 6)
  {
    return 9109510;
  }

  if (a3 == 8)
  {
    return 7274504;
  }

  if (a3 != 7)
  {
    return 6619138;
  }

  result = 9699335;
  mNumberChannelDescriptions = a2->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions)
  {
    mChannelDescriptions = a2->mChannelDescriptions;
    while (1)
    {
      mChannelLabel = mChannelDescriptions->mChannelLabel;
      ++mChannelDescriptions;
      if (mChannelLabel - 33 < 2)
      {
        break;
      }

      if (!--mNumberChannelDescriptions)
      {
        return result;
      }
    }

    return 9175047;
  }

  return result;
}

uint64_t OALDevice::ConnectContext(OALDevice *this, OALContext *a2)
{
  Property = 0;
  v24 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_17;
  }

  v5 = *(this + 6);
  if (v5 == a2)
  {
    goto LABEL_17;
  }

  DesiredRenderChannelCount = OALDevice::GetDesiredRenderChannelCount(this);
  v7 = *(this + 16);
  v8 = v7 != DesiredRenderChannelCount;
  if (v7 != DesiredRenderChannelCount)
  {
    *(this + 16) = DesiredRenderChannelCount;
  }

  v9 = *(this + 11);
  v21 = this + 88;
  v10 = (*(v9 + 16))(this + 88);
  v22 = v10;
  if (*(this + 6) && *(a2 + 6) != *(this + 10))
  {
    Property = AUGraphDisconnectNodeInput(*(this + 2), *(this + 6), 0);
    if (Property)
    {
      goto LABEL_12;
    }

    *(this + 10) = 0;
    *(this + 6) = 0;
    v8 = 1;
  }

  memset(outData, 0, sizeof(outData));
  ioDataSize = 40;
  Property = AudioUnitGetProperty(*(this + 4), 8u, 1u, 0, outData, &ioDataSize);
  if (Property)
  {
    goto LABEL_12;
  }

  v11 = *(this + 16);
  *&outData[8] = xmmword_23A03A390;
  *&outData[24] = 4;
  *&outData[28] = v11;
  *&outData[32] = 32;
  *outData = *(a2 + 56);
  Property = AudioUnitSetProperty(*(this + 4), 8u, 1u, 0, outData, 0x28u);
  if (Property)
  {
    goto LABEL_12;
  }

  Property = OALContext::SetMixerOutputFormat(a2, outData);
  if (Property)
  {
    goto LABEL_12;
  }

  if (*(this + 16) >= 3u)
  {
    v15 = *(this + 11);
    v19 = 0;
    inData = v15;
    Property = AudioUnitSetProperty(*(this + 4), 0x13u, 1u, 0, &inData, 0x20u);
    if (Property)
    {
      goto LABEL_12;
    }
  }

  if (v8 & *(this + 12))
  {
    Property = AUGraphUninitialize(*(this + 2));
    if (Property)
    {
      goto LABEL_12;
    }

    *(this + 12) = 0;
  }

  v16 = *(a2 + 6);
  *(this + 10) = v16;
  Property = AUGraphConnectNodeInput(*(this + 2), v16, 0, *(this + 6), 0);
  if (!Property)
  {
    *(this + 6) = a2;
    v17 = *(this + 2);
    if (*(this + 12))
    {
      Property = AUGraphUpdate(v17, 0);
      if (!Property)
      {
        goto LABEL_29;
      }
    }

    else
    {
      Property = AUGraphInitialize(v17);
      if (!Property)
      {
        *(this + 12) = 1;
LABEL_29:
        outData[0] = 0;
        AUGraphIsRunning(*(this + 2), outData);
        if (outData[0] || (Property = AUGraphStart(*(this + 2)), !Property))
        {
          Property = 0;
        }
      }
    }
  }

LABEL_12:
  if (v10)
  {
    (*(*(this + 11) + 24))(this + 88);
  }

  if (Property)
  {
    *(this + 6) = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = *this;
      *outData = 136315906;
      *&outData[4] = "oalDevice.cpp";
      *&outData[12] = 1024;
      *&outData[14] = 564;
      *&outData[18] = 2048;
      *&outData[20] = v12;
      *&outData[28] = 2048;
      *&outData[30] = Property;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALDevice::ConnectContext FAILED - OALDevice = %ld : result = %ld", outData, 0x26u);
    }
  }

LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
  return Property;
}

void sub_23A017E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CAGuard::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

uint64_t OALDevice::DisconnectContext(uint64_t this, OALContext *a2)
{
  if (a2)
  {
    v2 = this;
    if (*(this + 48) == a2)
    {
      *(this + 48) = 0;
      AUGraphDisconnectNodeInput(*(this + 16), *(this + 24), 0);
      outIsRunning = 0;
      AUGraphIsRunning(*(v2 + 16), &outIsRunning);
      if (outIsRunning)
      {
        AUGraphStop(*(v2 + 16));
      }

      return AUGraphUpdate(*(v2 + 16), 0);
    }
  }

  return this;
}

uint64_t OALDevice::RemoveContext(OALDevice *this, OALContext *a2)
{
  if (*(this + 6) == a2)
  {
    *(this + 6) = 0;
  }

  AUGraphRemoveNode(*(this + 2), *(a2 + 6));
  v3 = *(this + 2);

  return AUGraphUpdate(v3, 0);
}

uint64_t WaitOneRenderCycle(void)
{
  if (gOALContextMap)
  {
    v0 = *(gOALContextMap + 8);
    if (v0)
    {
      v1 = gOALContextMap + 8;
      do
      {
        v2 = *(v0 + 32);
        v3 = v2 >= gCurrentContext;
        v4 = v2 < gCurrentContext;
        if (v3)
        {
          v1 = v0;
        }

        v0 = *(v0 + 8 * v4);
      }

      while (v0);
      if (v1 != gOALContextMap + 8 && *(v1 + 32) <= gCurrentContext)
      {
        v5 = *(v1 + 40);
        if (v5)
        {
          return usleep(2 * (*(*(v5 + 16) + 72) / (*(v5 + 448) / 1000.0) * 1000.0));
        }
      }
    }
  }

  return result;
}

void ErrorKeyInitializer(void)
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = pthread_key_create(&gALErrorKey, 0);
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315650;
      v6 = "oalImp.cpp";
      v7 = 1024;
      v8 = 240;
      v9 = 1024;
      v10 = v1;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d pthread_key_create FAILED for gALErrorKey with result %d\n", &v5, 0x18u);
    }
  }

  v2 = pthread_key_create(&gALCErrorKey, 0);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315650;
      v6 = "oalImp.cpp";
      v7 = 1024;
      v8 = 244;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d pthread_key_create FAILED for gALCErrorKey with result %d\n", &v5, 0x18u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void *alSetError(int a1)
{
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  result = pthread_getspecific(gALErrorKey);
  if (!result)
  {
    v3 = gALErrorKey;

    return pthread_setspecific(v3, a1);
  }

  return result;
}

void CleanUpDeadBufferList(void)
{
  if (gDeadOALBufferMap)
  {
    v0 = *(gDeadOALBufferMap + 16);
    if (v0)
    {
      v1 = 0;
      for (i = 0; i != v0; ++i)
      {
        while (1)
        {
          v3 = *gDeadOALBufferMap;
          if (v1)
          {
            for (j = 0; j < v1; ++j)
            {
              if (v3 == (gDeadOALBufferMap + 8))
              {
                j = v1;
              }

              else
              {
                v5 = v3[1];
                if (v5)
                {
                  do
                  {
                    v3 = v5;
                    v5 = *v5;
                  }

                  while (v5);
                }

                else
                {
                  do
                  {
                    v6 = v3;
                    v3 = v3[2];
                  }

                  while (*v3 != v6);
                }
              }
            }
          }

          if (v3 != (gDeadOALBufferMap + 8))
          {
            v7 = v3[5];
            if (v7)
            {
              if (OALBuffer::IsPurgable(v3[5]))
              {
                break;
              }
            }
          }

          ++v1;
          if (++i == v0)
          {
            return;
          }
        }

        v8 = gDeadOALBufferMap;
        v9 = *(gDeadOALBufferMap + 8);
        if (v9)
        {
          v10 = *v7;
          v11 = gDeadOALBufferMap + 8;
          v12 = *(gDeadOALBufferMap + 8);
          do
          {
            v13 = *(v12 + 32);
            v14 = v13 >= v10;
            v15 = v13 < v10;
            if (v14)
            {
              v11 = v12;
            }

            v12 = *(v12 + 8 * v15);
          }

          while (v12);
          if (v11 != gDeadOALBufferMap + 8 && *(v11 + 32) <= v10)
          {
            v16 = *(v11 + 8);
            v17 = v11;
            if (v16)
            {
              do
              {
                v18 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v18 = v17[2];
                v19 = *v18 == v17;
                v17 = v18;
              }

              while (!v19);
            }

            if (*gDeadOALBufferMap == v11)
            {
              *gDeadOALBufferMap = v18;
            }

            --*(v8 + 16);
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v11);
            operator delete(v11);
          }
        }

        OALBuffer::~OALBuffer(v7);
        MEMORY[0x23EE824D0]();
      }
    }
  }
}

uint64_t ProtectContextObject(unint64_t a1)
{
  if (!gOALContextMap)
  {
    return 0;
  }

  v2 = gContextMapLock;
  v3 = (*(*gContextMapLock + 16))(gContextMapLock);
  v4 = *(gOALContextMap + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = gOALContextMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != gOALContextMap + 8 && *(v5 + 32) <= a1)
  {
    v9 = *(v5 + 40);
    if (v9)
    {
      atomic_fetch_add((v9 + 440), 1u);
    }
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return v9;
}

uint64_t ProtectSourceObjectInCurrentContext(unsigned int a1)
{
  if (!gOALContextMap)
  {
    return 0;
  }

  v2 = gCurrentContext;
  v3 = gContextMapLock;
  v4 = (*(*gContextMapLock + 16))(gContextMapLock);
  v5 = *(gOALContextMap + 8);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = gOALContextMap + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= v2;
    v9 = v7 < v2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != gOALContextMap + 8 && *(v6 + 32) <= v2)
  {
    v10 = *(v6 + 40);
    if (v10)
    {
      atomic_fetch_add(v10 + 110, 1u);
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  if (v4)
  {
    (*(*v3 + 24))(v3);
  }

  if (!v10)
  {
    return 0;
  }

  result = OALContext::ProtectSource(v10, a1);
  atomic_fetch_add(v10 + 110, 0xFFFFFFFF);
  return result;
}

uint64_t InitializeBufferMap(void)
{
  pthread_mutex_lock(&InitializeBufferMap(void)::sInitLock);
  if (!gOALBufferMap)
  {
    operator new();
  }

  return pthread_mutex_unlock(&InitializeBufferMap(void)::sInitLock);
}

uint64_t DeleteContextsOfThisDevice(uint64_t a1)
{
  v2 = gContextMapLock;
  v3 = (*(*gContextMapLock + 16))(gContextMapLock);
  v4 = gOALContextMap;
  if (!gOALContextMap)
  {
    goto LABEL_36;
  }

  if (*(gOALContextMap + 16))
  {
    v5 = 0;
    while (1)
    {
      v6 = *v4;
      if (v5)
      {
        v7 = v5;
        do
        {
          v9 = v6[1];
          if (v9)
          {
            do
            {
              v10 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v10 = v6[2];
              v11 = *v10 == v6;
              v6 = v10;
            }

            while (!v11);
          }

          v6 = v10;
        }

        while (v7-- > 1);
      }

      else
      {
        v10 = *v4;
      }

      if (v10 == (v4 + 1))
      {
        break;
      }

      v12 = v10[5];
      if (!v12)
      {
        break;
      }

      if (**(v12 + 2) == a1)
      {
        v13 = v10[4];
        if (v13 == gCurrentContext)
        {
          alcMakeContextCurrent(0);
          v4 = gOALContextMap;
        }

        v14 = v4[1];
        if (v14)
        {
          v15 = (v4 + 1);
          v16 = v4[1];
          do
          {
            v17 = v16[4];
            v18 = v17 >= v13;
            v19 = v17 < v13;
            if (v18)
            {
              v15 = v16;
            }

            v16 = v16[v19];
          }

          while (v16);
          if (v15 != (v4 + 1) && v15[4] <= v13)
          {
            v20 = v15[1];
            v21 = v15;
            if (v20)
            {
              do
              {
                v22 = v20;
                v20 = *v20;
              }

              while (v20);
            }

            else
            {
              do
              {
                v22 = v21[2];
                v11 = *v22 == v21;
                v21 = v22;
              }

              while (!v11);
            }

            if (*v4 == v15)
            {
              *v4 = v22;
            }

            v4[2] = (v4[2] - 1);
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v14, v15);
            operator delete(v15);
            OALContext::~OALContext(v12);
            MEMORY[0x23EE824D0]();
            --v5;
            v4 = gOALContextMap;
          }
        }
      }

      if (++v5 >= *(v4 + 4))
      {
        goto LABEL_38;
      }
    }

LABEL_36:
    v23 = 40964;
    if (v3)
    {
      goto LABEL_39;
    }

    return v23;
  }

LABEL_38:
  v23 = 0;
  if (v3)
  {
LABEL_39:
    (*(*v2 + 24))(v2);
  }

  return v23;
}

ALCBOOLean alcMakeContextCurrent(ALCcontext *context)
{
  v38 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v32 = 136315650;
    v33 = "oalImp.cpp";
    v34 = 1024;
    v35 = 840;
    v36 = 2048;
    v37 = context;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcMakeContextCurrent--> context = %ld", &v32, 0x1Cu);
  }

  v2 = gCurrentContext;
  if (gCurrentContext == context)
  {
    goto LABEL_4;
  }

  if (gOALContextMap)
  {
    v5 = gOALDeviceMap == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (gCurrentContext)
    {
      v7 = gContextMapLock;
      v8 = (*(*gContextMapLock + 16))(gContextMapLock);
      v9 = *(gOALContextMap + 8);
      if (!v9)
      {
        goto LABEL_20;
      }

      v10 = gOALContextMap + 8;
      do
      {
        v11 = *(v9 + 32);
        v12 = v11 >= v2;
        v13 = v11 < v2;
        if (v12)
        {
          v10 = v9;
        }

        v9 = *(v9 + 8 * v13);
      }

      while (v9);
      if (v10 != gOALContextMap + 8 && *(v10 + 32) <= v2)
      {
        v14 = *(v10 + 40);
        if (v14)
        {
          atomic_fetch_add(v14 + 110, 1u);
        }
      }

      else
      {
LABEL_20:
        v14 = 0;
      }

      if (v8)
      {
        (*(*v7 + 24))(v7);
      }

      if (!context)
      {
        gCurrentDevice = 0;
        gCurrentContext = 0;
        if (!v14)
        {
          goto LABEL_4;
        }

        v6 = OALContext::DisconnectMixerFromDevice(v14);
        v15 = 0;
        goto LABEL_43;
      }
    }

    else
    {
      if (!context)
      {
        gCurrentDevice = 0;
        gCurrentContext = 0;
        goto LABEL_4;
      }

      v14 = 0;
    }

    v16 = gContextMapLock;
    v17 = (*(*gContextMapLock + 16))(gContextMapLock);
    v18 = gOALContextMap + 8;
    v19 = *(gOALContextMap + 8);
    if (!v19)
    {
      goto LABEL_36;
    }

    v20 = gOALContextMap + 8;
    v21 = *(gOALContextMap + 8);
    do
    {
      v22 = *(v21 + 32);
      v12 = v22 >= context;
      v23 = v22 < context;
      if (v12)
      {
        v20 = v21;
      }

      v21 = *(v21 + 8 * v23);
    }

    while (v21);
    if (v20 != v18 && *(v20 + 32) <= context)
    {
      v15 = *(v20 + 40);
      if (v15)
      {
        v28 = gOALContextMap + 8;
        do
        {
          v29 = *(v19 + 32);
          v12 = v29 >= context;
          v30 = v29 < context;
          if (v12)
          {
            v28 = v19;
          }

          v19 = *(v19 + 8 * v30);
        }

        while (v19);
        if (v28 == v18 || *(v28 + 32) > context || (v31 = *(v28 + 40)) == 0)
        {
          v25 = 0;
          v24 = 0;
          v6 = 0;
        }

        else
        {
          v25 = 0;
          v6 = 0;
          v24 = **(v31 + 16);
        }

LABEL_38:
        if (v17)
        {
          (*(*v16 + 24))(v16);
        }

        if ((v25 & 1) == 0)
        {
          gCurrentDevice = v24;
          gCurrentContext = context;
          v6 = OALContext::ConnectMixerToDevice(v15);
        }

        if (!v14)
        {
          if (!v15)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

LABEL_43:
        atomic_fetch_add(v14 + 110, 0xFFFFFFFF);
        if (!v15)
        {
LABEL_47:
          if (v6)
          {
            goto LABEL_48;
          }

LABEL_4:
          result = 1;
          v4 = *MEMORY[0x277D85DE8];
          return result;
        }

LABEL_46:
        atomic_fetch_add((v15 + 440), 0xFFFFFFFF);
        goto LABEL_47;
      }
    }

    else
    {
LABEL_36:
      v15 = 0;
    }

    v24 = 0;
    v6 = 40962;
    v25 = 1;
    goto LABEL_38;
  }

  v6 = 40964;
LABEL_48:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    String = alcGetString(0, v6);
    v32 = 136315650;
    v33 = "oalImp.cpp";
    v34 = 1024;
    v35 = 894;
    v36 = 2080;
    v37 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcMakeContextCurrent FAILED = %s\n", &v32, 0x1Cu);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALCErrorKey))
  {
    pthread_setspecific(gALCErrorKey, v6);
  }

  result = 0;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A018E20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ReconfigureContextsOfThisDevice(uint64_t result)
{
  if (gOALContextMap)
  {
    v1 = result;
    v2 = gContextMapLock;
    result = (*(*gContextMapLock + 16))(gContextMapLock);
    v3 = result;
    v4 = gOALContextMap;
    if (*(gOALContextMap + 16))
    {
      v5 = 0;
      do
      {
        v6 = *v4;
        if (v5)
        {
          v7 = v5;
          do
          {
            v9 = v6[1];
            if (v9)
            {
              do
              {
                v10 = v9;
                v9 = *v9;
              }

              while (v9);
            }

            else
            {
              do
              {
                v10 = v6[2];
                v11 = *v10 == v6;
                v6 = v10;
              }

              while (!v11);
            }

            v6 = v10;
          }

          while (v7-- > 1);
        }

        else
        {
          v10 = *v4;
        }

        if (v10 != (v4 + 8))
        {
          result = v10[5];
          if (result)
          {
            if (**(result + 16) == v1)
            {
              result = OALContext::ConfigureMixerFormat(result);
              v4 = gOALContextMap;
            }
          }
        }

        ++v5;
      }

      while (v5 < *(v4 + 16));
    }

    if (v3)
    {
      return (*(*v2 + 24))(v2);
    }
  }

  return result;
}

ALCdevice *__cdecl alcCaptureOpenDevice(const ALCchar *devicename, ALCuint frequency, ALCenum format, ALCsizei buffersize)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if ((format - 4352) > 3)
    {
      v7 = "UNKNOWN FORMAT";
    }

    else
    {
      v7 = off_278B468A8[format - 4352];
    }

    buf[0] = 136316162;
    *&buf[1] = "oalImp.cpp";
    v12 = 1024;
    v13 = 510;
    v14 = 2080;
    v15 = v7;
    v16 = 2048;
    v17 = frequency;
    v18 = 2048;
    v19 = buffersize;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcCaptureOpenDevice: format %s : sample rate = %ld : buffer size = %ld", buf, 0x30u);
  }

  if (format >> 2 == 1088)
  {
    pthread_mutex_lock(&stru_27DF92238);
    if (!gOALCaptureDeviceMap)
    {
      operator new();
    }

    pthread_mutex_unlock(&stru_27DF92238);
    ++_MergedGlobals;
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    String = alcGetString(0, 40963);
    buf[0] = 136315650;
    *&buf[1] = "oalImp.cpp";
    v12 = 1024;
    v13 = 538;
    v14 = 2080;
    v15 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcCaptureOpenDevice FAILED = %s\n", buf, 0x1Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_23A0192E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const ALCchar *__cdecl alcGetString(ALCdevice *device, ALCenum param)
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (param > 4101)
    {
      if (param <= 40961)
      {
        if (param == 4102)
        {
          v4 = "ALC_EXTENSIONS";
          goto LABEL_26;
        }

        if (param == 40961)
        {
          v4 = "ALC_INVALID_DEVICE";
          goto LABEL_26;
        }
      }

      else
      {
        switch(param)
        {
          case 40962:
            v4 = "ALC_INVALID_CONTEXT";
            goto LABEL_26;
          case 40963:
            v4 = "ALC_INVALID_ENUM";
            goto LABEL_26;
          case 40964:
            v4 = "ALC_INVALID_VALUE";
            goto LABEL_26;
        }
      }
    }

    else if (param <= 784)
    {
      if (!param)
      {
        v4 = "ALC_NO_ERROR";
        goto LABEL_26;
      }

      if (param == 784)
      {
        v4 = "ALC_CAPTURE_DEVICE_SPECIFIER";
        goto LABEL_26;
      }
    }

    else
    {
      switch(param)
      {
        case 785:
          v4 = "ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER";
          goto LABEL_26;
        case 4100:
          v4 = "ALC_DEFAULT_DEVICE_SPECIFIER";
          goto LABEL_26;
        case 4101:
          v4 = "ALC_DEVICE_SPECIFIER";
LABEL_26:
          v17 = 136315650;
          v18 = "oalImp.cpp";
          v19 = 1024;
          v20 = 1019;
          v21 = 2080;
          v22 = v4;
          _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcGetString-->  %s", &v17, 0x1Cu);
          goto LABEL_27;
      }
    }

    v4 = "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
    goto LABEL_26;
  }

LABEL_27:
  v5 = 40964;
  if (param > 4101)
  {
    if (param <= 40961)
    {
      if (param == 4102)
      {
        if (device)
        {
          result = alcExtensions;
          if (!alcExtensions)
          {
            v9 = malloc_type_malloc(0x34uLL, 0x100004077774924uLL);
            alcExtensions = v9;
            strcpy(v9, "ALC_EXT_CAPTURE ALC_ENUMERATION_EXT ALC_EXT_MAC_OSX");
            v10 = strlen(v9);
            v11 = malloc_type_realloc(v9, v10 + 37, 0x100004077774924uLL);
            alcExtensions = v11;
            strcat(v11, " ALC_EXT_ASA");
            v12 = strlen(v11);
            result = v11;
            strcpy(&v11[v12], " ALC_EXT_OUTPUT_CAPTURER");
          }

          goto LABEL_64;
        }

        v5 = 40961;
      }

      else if (param == 40961)
      {
        result = "ALC Invalid Device";
        goto LABEL_64;
      }
    }

    else
    {
      switch(param)
      {
        case 40962:
          result = "ALC Invalid Context";
          goto LABEL_64;
        case 40963:
          result = "Invalid Enum";
          goto LABEL_64;
        case 40964:
          result = "Invalid Value";
          goto LABEL_64;
      }
    }

    goto LABEL_56;
  }

  if (param > 784)
  {
    switch(param)
    {
      case 785:
        v13 = *"Default Audio Device";
        result = gDefaultInputDeviceName;
        break;
      case 4100:
        v13 = *"Default Audio Device";
        result = gDefaultOutputDeviceName;
        break;
      case 4101:
        result = gDefaultOutputDeviceName;
        strcpy(gDefaultOutputDeviceName, "Default Audio Device");
        if (!device)
        {
          goto LABEL_42;
        }

        goto LABEL_64;
      default:
LABEL_56:
        pthread_once(&gErrorOnce, ErrorKeyInitializer);
        if (!pthread_getspecific(gALErrorKey))
        {
          pthread_setspecific(gALErrorKey, v5);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          if (param == 4102)
          {
            v14 = "ALC_EXTENSIONS";
          }

          else
          {
            v14 = "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
          }

          String = alcGetString(0, v5);
          v17 = 136315906;
          v18 = "oalImp.cpp";
          v19 = 1024;
          v20 = 1097;
          v21 = 2080;
          v22 = v14;
          v23 = 2080;
          v24 = String;
          _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcGetString FAILED - attribute = %s error = %s\n", &v17, 0x26u);
        }

        result = 0;
        goto LABEL_64;
    }

    *result = v13;
    strcpy(result + 13, " Device");
    goto LABEL_64;
  }

  if (!param)
  {
    result = "No Error";
    goto LABEL_64;
  }

  if (param != 784)
  {
    goto LABEL_56;
  }

  result = gDefaultInputDeviceName;
  strcpy(gDefaultInputDeviceName, "Default Audio Device");
  if (!device)
  {
LABEL_42:
    v7 = result;
    v8 = strlen(result);
    result = v7;
    v7[v8 + 1] = 0;
  }

LABEL_64:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

ALCBOOLean alcCaptureCloseDevice(ALCdevice *device)
{
  v32 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v27 = 136315394;
    *&v27[4] = "oalImp.cpp";
    v28 = 1024;
    v29 = 553;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcCaptureCloseDevice", v27, 0x12u);
  }

  if (!gOALCaptureDeviceMap || !*(gOALCaptureDeviceMap + 16))
  {
    v13 = 40964;
    goto LABEL_19;
  }

  v2 = gCaptureDeviceMapLock;
  *v27 = gCaptureDeviceMapLock;
  v3 = (*(*gCaptureDeviceMapLock + 16))(gCaptureDeviceMapLock);
  v27[8] = v3;
  v4 = gOALCaptureDeviceMap;
  v6 = gOALCaptureDeviceMap + 8;
  v5 = *(gOALCaptureDeviceMap + 8);
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = gOALCaptureDeviceMap + 8;
  v8 = *(gOALCaptureDeviceMap + 8);
  do
  {
    v9 = *(v8 + 32);
    v10 = v9 >= device;
    v11 = v9 < device;
    if (v10)
    {
      v7 = v8;
    }

    v8 = *(v8 + 8 * v11);
  }

  while (v8);
  if (v7 == v6 || *(v7 + 32) > device)
  {
LABEL_13:
    LOBYTE(v12) = 0;
    goto LABEL_14;
  }

  v12 = *(v7 + 40);
  if (!v12)
  {
LABEL_14:
    v13 = 40963;
    if (!v3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = (gOALCaptureDeviceMap + 8);
  v18 = *(gOALCaptureDeviceMap + 8);
  do
  {
    v19 = *(v18 + 32);
    v10 = v19 >= device;
    v20 = v19 < device;
    if (v10)
    {
      v17 = v18;
    }

    v18 = *(v18 + 8 * v20);
  }

  while (v18);
  if (v17 != v6 && v17[4] <= device)
  {
    v21 = v17[1];
    if (v21)
    {
      do
      {
        v22 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      v23 = v17;
      do
      {
        v22 = v23[2];
        v24 = *v22 == v23;
        v23 = v22;
      }

      while (!v24);
    }

    if (*gOALCaptureDeviceMap == v17)
    {
      *gOALCaptureDeviceMap = v22;
    }

    --*(v4 + 16);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v17);
    operator delete(v17);
  }

  while (*(v12 + 30))
  {
    usleep(0x2710u);
  }

  OALCaptureDevice::~OALCaptureDevice(v12);
  MEMORY[0x23EE824D0]();
  v25 = gOALCaptureDeviceMap;
  if (*(gOALCaptureDeviceMap + 16))
  {
    v13 = 0;
    LOBYTE(v12) = 1;
    if (v3)
    {
LABEL_15:
      (*(*v2 + 24))(v2);
    }
  }

  else
  {
    std::__tree<std::__value_type<unsigned int,OALSource *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OALSource *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OALSource *>>>::destroy(gOALCaptureDeviceMap, *(gOALCaptureDeviceMap + 8));
    MEMORY[0x23EE824D0](v25, 0x1020C4062D53EE8);
    v13 = 0;
    gOALCaptureDeviceMap = 0;
    LOBYTE(v12) = 1;
    if (v3)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if (v12)
  {
    LOBYTE(v14) = 1;
    goto LABEL_21;
  }

LABEL_19:
  v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    String = alcGetString(0, v13);
    *v27 = 136315650;
    *&v27[4] = "oalImp.cpp";
    v28 = 1024;
    v29 = 585;
    v30 = 2080;
    v31 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcCaptureCloseDevice FAILED = %s", v27, 0x1Cu);
    LOBYTE(v14) = 0;
  }

LABEL_21:
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_23A019C1C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void alcCaptureStart(ALCdevice *device)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "oalImp.cpp";
    v14 = 1024;
    v15 = 599;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcCaptureStart", &v12, 0x12u);
  }

  if (!gOALCaptureDeviceMap)
  {
    goto LABEL_26;
  }

  v2 = gCaptureDeviceMapLock;
  v3 = (*(*gCaptureDeviceMapLock + 16))(gCaptureDeviceMapLock);
  v4 = *(gOALCaptureDeviceMap + 8);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = gOALCaptureDeviceMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= device;
    v8 = v6 < device;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != gOALCaptureDeviceMap + 8 && *(v5 + 32) <= device)
  {
    v9 = *(v5 + 40);
    if (v9)
    {
      atomic_fetch_add((v9 + 120), 1u);
    }
  }

  else
  {
LABEL_12:
    v9 = 0;
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  if (v9)
  {
    OALCaptureDevice::StartCapture(v9);
    atomic_fetch_add((v9 + 120), 0xFFFFFFFF);
  }

  else
  {
LABEL_26:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alcGetString(0, 40964);
      v12 = 136315650;
      v13 = "oalImp.cpp";
      v14 = 1024;
      v15 = 611;
      v16 = 2080;
      v17 = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcCaptureStart FAILED = %s", &v12, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALCErrorKey))
    {
      pthread_setspecific(gALCErrorKey, 0xA004);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23A019E9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alcCaptureStop(ALCdevice *device)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "oalImp.cpp";
    v14 = 1024;
    v15 = 622;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcCaptureStop", &v12, 0x12u);
  }

  if (!gOALCaptureDeviceMap)
  {
    goto LABEL_26;
  }

  v2 = gCaptureDeviceMapLock;
  v3 = (*(*gCaptureDeviceMapLock + 16))(gCaptureDeviceMapLock);
  v4 = *(gOALCaptureDeviceMap + 8);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = gOALCaptureDeviceMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= device;
    v8 = v6 < device;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != gOALCaptureDeviceMap + 8 && *(v5 + 32) <= device)
  {
    v9 = *(v5 + 40);
    if (v9)
    {
      atomic_fetch_add((v9 + 120), 1u);
    }
  }

  else
  {
LABEL_12:
    v9 = 0;
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  if (v9)
  {
    OALCaptureDevice::StopCapture(v9);
    atomic_fetch_add((v9 + 120), 0xFFFFFFFF);
  }

  else
  {
LABEL_26:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alcGetString(0, 40964);
      v12 = 136315650;
      v13 = "oalImp.cpp";
      v14 = 1024;
      v15 = 634;
      v16 = 2080;
      v17 = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcCaptureStop FAILED = %s", &v12, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALCErrorKey))
    {
      pthread_setspecific(gALCErrorKey, 0xA004);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23A01A0F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alcCaptureSamples(ALCdevice *device, ALCvoid *buffer, ALCsizei samples)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!gOALCaptureDeviceMap)
  {
    goto LABEL_24;
  }

  v6 = gCaptureDeviceMapLock;
  v7 = (*(*gCaptureDeviceMapLock + 16))(gCaptureDeviceMapLock);
  v10 = *(gOALCaptureDeviceMap + 8);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = gOALCaptureDeviceMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= device;
    v14 = v12 < device;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 != gOALCaptureDeviceMap + 8 && *(v11 + 32) <= device)
  {
    v15 = *(v11 + 40);
    if (v15)
    {
      atomic_fetch_add(v15 + 30, 1u);
    }
  }

  else
  {
LABEL_10:
    v15 = 0;
  }

  if (v7)
  {
    (*(*v6 + 24))(v6);
  }

  if (v15)
  {
    OALCaptureDevice::GetFrames(v15, samples, buffer, v8, v9);
    atomic_fetch_add(v15 + 30, 0xFFFFFFFF);
  }

  else
  {
LABEL_24:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315650;
      v18 = "oalImp.cpp";
      v19 = 1024;
      v20 = 657;
      v21 = 2080;
      String = alcGetString(0, 40964);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcCaptureSamples FAILED = %s\n", &v17, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALCErrorKey))
    {
      pthread_setspecific(gALCErrorKey, 0xA004);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_23A01A308(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

ALCdevice *__cdecl alcOpenDevice(const ALCchar *devicename)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    buf[0] = 136315394;
    *&buf[1] = "oalImp.cpp";
    v4 = 1024;
    v5 = 674;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcOpenDevice", buf, 0x12u);
  }

  pthread_mutex_lock(&stru_27DF92278);
  if (!gOALDeviceMap)
  {
    operator new();
  }

  pthread_mutex_unlock(&stru_27DF92278);
  if (!*(gOALDeviceMap + 16))
  {
    ++_MergedGlobals;
    operator new();
  }

  v1 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_23A01A618(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

ALCBOOLean alcCloseDevice(ALCdevice *device)
{
  v30 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v25 = 136315394;
    *&v25[4] = "oalImp.cpp";
    v26 = 1024;
    v27 = 712;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcCloseDevice", v25, 0x12u);
  }

  if (!gOALDeviceMap)
  {
    goto LABEL_24;
  }

  v2 = *(gOALDeviceMap + 8);
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = gOALDeviceMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= device;
    v6 = v4 < device;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 != gOALDeviceMap + 8 && *(v3 + 32) <= device && (v7 = *(v3 + 40)) != 0)
  {
    v8 = gDeviceMapLock;
    *v25 = gDeviceMapLock;
    v9 = (*(*gDeviceMapLock + 16))(gDeviceMapLock);
    v25[8] = v9;
    v10 = gOALDeviceMap;
    v11 = *(gOALDeviceMap + 8);
    if (v11)
    {
      v12 = (gOALDeviceMap + 8);
      v13 = *(gOALDeviceMap + 8);
      do
      {
        v14 = *(v13 + 32);
        v5 = v14 >= device;
        v15 = v14 < device;
        if (v5)
        {
          v12 = v13;
        }

        v13 = *(v13 + 8 * v15);
      }

      while (v13);
      if (v12 != (gOALDeviceMap + 8) && v12[4] <= device)
      {
        v16 = v12[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          v22 = v12;
          do
          {
            v17 = v22[2];
            v23 = *v17 == v22;
            v22 = v17;
          }

          while (!v23);
        }

        if (*gOALDeviceMap == v12)
        {
          *gOALDeviceMap = v17;
        }

        --*(v10 + 16);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v11, v12);
        operator delete(v12);
      }
    }

    v18 = DeleteContextsOfThisDevice(device);
    if (!v18)
    {
      OALDevice::~OALDevice(v7);
      MEMORY[0x23EE824D0]();
    }

    if (v9)
    {
      (*(*v8 + 24))(v8);
    }

    if (!v18)
    {
      result = 1;
      v24 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
LABEL_24:
    v18 = 40963;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    String = alcGetString(0, v18);
    *v25 = 136315650;
    *&v25[4] = "oalImp.cpp";
    v26 = 1024;
    v27 = 738;
    v28 = 2080;
    v29 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcCloseDevice FAILED = %s\n", v25, 0x1Cu);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALCErrorKey))
  {
    pthread_setspecific(gALCErrorKey, v18);
  }

  result = 0;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A01A9A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

ALCenum alcGetError(ALCdevice *device)
{
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  v1 = pthread_getspecific(gALCErrorKey);
  if (v1)
  {
    pthread_setspecific(gALCErrorKey, 0);
  }

  return v1;
}

ALCcontext *__cdecl alcCreateContext(ALCdevice *device, const ALCint *attrlist)
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    buf[0] = 136315650;
    *&buf[1] = "oalImp.cpp";
    v21 = 1024;
    v22 = 787;
    v23 = 2048;
    v24 = device;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcCreateContext--> device = %ld", buf, 0x1Cu);
  }

  pthread_mutex_lock(&stru_27DF922B8);
  if (!gOALContextMap)
  {
    operator new();
  }

  pthread_mutex_unlock(&stru_27DF922B8);
  ++_MergedGlobals;
  if (attrlist)
  {
    v4 = attrlist + 1;
    v5 = *attrlist;
    if (*attrlist != 4112)
    {
      goto LABEL_8;
    }

    while (1)
    {
      do
      {
LABEL_7:
        v6 = *v4;
        v4 += 2;
        v5 = *(v4 - 1);
      }

      while (v5 == 4112);
      do
      {
LABEL_8:
        while (v5 == 4113)
        {
          v7 = *v4;
          v4 += 2;
          v5 = *(v4 - 1);
          if (v5 == 4112)
          {
            goto LABEL_7;
          }
        }

        if (!v5)
        {
          goto LABEL_14;
        }

        v4 += 2;
        v5 = *(v4 - 1);
      }

      while (v5 != 4112);
    }
  }

LABEL_14:
  if (gOALDeviceMap)
  {
    v8 = gDeviceMapLock;
    v9 = (*(*gDeviceMapLock + 16))(gDeviceMapLock);
    v10 = *(gOALDeviceMap + 8);
    if (!v10)
    {
      goto LABEL_23;
    }

    v11 = gOALDeviceMap + 8;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= device;
      v14 = v12 < device;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != gOALDeviceMap + 8 && *(v11 + 32) <= device)
    {
      v15 = *(v11 + 40);
      if (v15)
      {
        atomic_fetch_add((v15 + 76), 1u);
      }
    }

    else
    {
LABEL_23:
      v15 = 0;
    }

    if (v9)
    {
      (*(*v8 + 24))(v8);
    }

    if (v15)
    {
      if (*&gUsersMixerOutputRate <= 0.0)
      {
        v16 = *(v15 + 56);
      }

      operator new();
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    String = alcGetString(0, 40964);
    buf[0] = 136315650;
    *&buf[1] = "oalImp.cpp";
    v21 = 1024;
    v22 = 828;
    v23 = 2080;
    v24 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcCreateContext FAILED = %s\n", buf, 0x1Cu);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALCErrorKey))
  {
    pthread_setspecific(gALCErrorKey, 0xA004);
  }

  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_23A01AEC8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void alcProcessContext(ALCcontext *context)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315650;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 906;
    v7 = 2048;
    v8 = context;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcProcessContext--> context = %ld", &v3, 0x1Cu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

ALCcontext *alcGetCurrentContext(void)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315394;
    v3 = "oalImp.cpp";
    v4 = 1024;
    v5 = 914;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcGetCurrentContext", &v2, 0x12u);
  }

  result = gCurrentContext;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

ALCdevice *__cdecl alcGetContextsDevice(ALCcontext *context)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "oalImp.cpp";
    v15 = 1024;
    v16 = 923;
    v17 = 2048;
    v18 = context;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcGetContextsDevice--> context = %ld", &v13, 0x1Cu);
  }

  if (gOALContextMap)
  {
    v2 = gContextMapLock;
    v3 = (*(*gContextMapLock + 16))(gContextMapLock);
    v4 = *(gOALContextMap + 8);
    if (v4)
    {
      v5 = gOALContextMap + 8;
      do
      {
        v6 = *(v4 + 32);
        v7 = v6 >= context;
        v8 = v6 < context;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * v8);
      }

      while (v4);
      if (v5 != gOALContextMap + 8 && *(v5 + 32) <= context)
      {
        v9 = *(v5 + 40);
        if (v9)
        {
          v10 = **(v9 + 16);
          if (!v3)
          {
            goto LABEL_22;
          }

          goto LABEL_16;
        }
      }
    }

    v10 = 0;
    if (v3)
    {
LABEL_16:
      (*(*v2 + 24))(v2);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315394;
      v14 = "oalImp.cpp";
      v15 = 1024;
      v16 = 938;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcGetContextsDevice FAILED", &v13, 0x12u);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALCErrorKey))
    {
      pthread_setspecific(gALCErrorKey, 0xA004);
    }

    v10 = 0;
  }

LABEL_22:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_23A01B2D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alcSuspendContext(ALCcontext *context)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315650;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 946;
    v7 = 2048;
    v8 = context;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcSuspendContext--> context = %ld", &v3, 0x1Cu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void alcDestroyContext(ALCcontext *context)
{
  v49 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v43 = 136315650;
    v44 = "oalImp.cpp";
    v45 = 1024;
    v46 = 954;
    v47 = 2048;
    v48 = context;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcDestroyContext--> context = %ld", &v43, 0x1Cu);
  }

  v2 = gCurrentContext == context || gOALContextMap == 0;
  if (v2)
  {
    v3 = 40964;
LABEL_49:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alcGetString(0, v3);
      v43 = 136315650;
      v44 = "oalImp.cpp";
      v45 = 1024;
      v46 = 1004;
      v47 = 2080;
      v48 = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcDestroyContext FAILED = %s\n", &v43, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALCErrorKey))
    {
      pthread_setspecific(gALCErrorKey, v3);
    }

    goto LABEL_53;
  }

  v4 = gContextMapLock;
  v5 = (*(*gContextMapLock + 16))(gContextMapLock);
  v6 = gOALContextMap;
  v8 = gOALContextMap + 8;
  v7 = *(gOALContextMap + 8);
  if (!v7)
  {
    v15 = 0;
LABEL_27:
    v19 = 0;
    v3 = 40962;
LABEL_28:
    v20 = 1;
    goto LABEL_29;
  }

  v9 = (gOALContextMap + 8);
  v10 = gOALContextMap + 8;
  v11 = *(gOALContextMap + 8);
  do
  {
    v12 = *(v11 + 32);
    v13 = v12 >= context;
    v14 = v12 < context;
    if (v13)
    {
      v10 = v11;
    }

    v11 = *(v11 + 8 * v14);
  }

  while (v11);
  if (v10 == v8 || *(v10 + 32) > context)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v10 + 40);
  }

  v16 = *(gOALContextMap + 8);
  do
  {
    v17 = *(v16 + 32);
    v13 = v17 >= context;
    v18 = v17 < context;
    if (v13)
    {
      v9 = v16;
    }

    v16 = *(v16 + 8 * v18);
  }

  while (v16);
  if (v9 == v8 || v9[4] > context)
  {
    goto LABEL_27;
  }

  v31 = v9[1];
  if (v31)
  {
    do
    {
      v32 = v31;
      v31 = *v31;
    }

    while (v31);
  }

  else
  {
    v33 = v9;
    do
    {
      v32 = v33[2];
      v2 = *v32 == v33;
      v33 = v32;
    }

    while (!v2);
  }

  v34 = v5;
  if (*gOALContextMap == v9)
  {
    *gOALContextMap = v32;
  }

  --*(v6 + 16);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, v9);
  operator delete(v9);
  if (*(gOALContextMap + 16))
  {
    v35 = 0;
    v36 = *gOALContextMap;
    v5 = v34;
    do
    {
      v37 = *gOALContextMap;
      if (v35)
      {
        v38 = v35;
        v39 = *gOALContextMap;
        do
        {
          v41 = v39[1];
          if (v41)
          {
            do
            {
              v37 = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            do
            {
              v37 = v39[2];
              v2 = *v37 == v39;
              v39 = v37;
            }

            while (!v2);
          }

          v39 = v37;
        }

        while (v38-- > 1);
      }

      if (v37 != (gOALContextMap + 8))
      {
        v42 = v37[5];
        if (v42)
        {
          if (**(v42 + 16) == **(v15 + 2))
          {
            v20 = 0;
            v3 = 0;
            v19 = 1;
            goto LABEL_29;
          }
        }
      }

      ++v35;
    }

    while (v35 != *(gOALContextMap + 16));
    v3 = 0;
    v19 = 1;
    goto LABEL_28;
  }

  v3 = 0;
  v19 = 1;
  v20 = 1;
  v5 = v34;
LABEL_29:
  if (v5)
  {
    (*(*v4 + 24))(v4);
  }

  if (!v19)
  {
    goto LABEL_49;
  }

  if (v20)
  {
    if (!gOALDeviceMap)
    {
LABEL_48:
      OALContext::~OALContext(v15);
      MEMORY[0x23EE824D0]();
      goto LABEL_53;
    }

    v21 = **(v15 + 2);
    v22 = gDeviceMapLock;
    v23 = (*(*gDeviceMapLock + 16))(gDeviceMapLock);
    v24 = *(gOALDeviceMap + 8);
    if (!v24)
    {
      goto LABEL_42;
    }

    v25 = gOALDeviceMap + 8;
    do
    {
      v26 = *(v24 + 32);
      v13 = v26 >= v21;
      v27 = v26 < v21;
      if (v13)
      {
        v25 = v24;
      }

      v24 = *(v24 + 8 * v27);
    }

    while (v24);
    if (v25 != gOALDeviceMap + 8 && *(v25 + 32) <= v21)
    {
      v28 = *(v25 + 40);
      if (v28)
      {
        atomic_fetch_add((v28 + 76), 1u);
      }
    }

    else
    {
LABEL_42:
      v28 = 0;
    }

    if (v23)
    {
      (*(*v22 + 24))(v22);
    }

    if (v28)
    {
      OALDevice::StopGraph(v28);
      atomic_fetch_add((v28 + 76), 0xFFFFFFFF);
    }
  }

  if (v15)
  {
    goto LABEL_48;
  }

LABEL_53:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_23A01B888(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const char *GetALCAttributeString(int a1)
{
  if (a1 > 4101)
  {
    if (a1 <= 40961)
    {
      if (a1 == 4102)
      {
        return "ALC_EXTENSIONS";
      }

      if (a1 == 40961)
      {
        return "ALC_INVALID_DEVICE";
      }
    }

    else
    {
      switch(a1)
      {
        case 40962:
          return "ALC_INVALID_CONTEXT";
        case 40963:
          return "ALC_INVALID_ENUM";
        case 40964:
          return "ALC_INVALID_VALUE";
      }
    }
  }

  else if (a1 <= 784)
  {
    if (!a1)
    {
      return "ALC_NO_ERROR";
    }

    if (a1 == 784)
    {
      return "ALC_CAPTURE_DEVICE_SPECIFIER";
    }
  }

  else
  {
    switch(a1)
    {
      case 785:
        return "ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER";
      case 4100:
        return "ALC_DEFAULT_DEVICE_SPECIFIER";
      case 4101:
        return "ALC_DEVICE_SPECIFIER";
    }
  }

  return "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
}

ALCBOOLean alcIsExtensionPresent(ALCdevice *device, const ALCchar *extname)
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315650;
    v17 = "oalImp.cpp";
    v18 = 1024;
    v19 = 1106;
    v20 = 2080;
    v21 = extname;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcIsExtensionPresent-->  extension = %s", &v16, 0x1Cu);
  }

  if (extname)
  {
    v3 = strlen(extname);
    v4 = malloc_type_calloc(1uLL, v3 + 1, 0x100004077774924uLL);
    if (*extname)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v4[v5] = __toupper(extname[v5]);
        v5 = v6++;
      }

      while (strlen(extname) > v5);
    }

    v7 = alcExtensions;
    if (!alcExtensions)
    {
      v8 = malloc_type_malloc(0x34uLL, 0x100004077774924uLL);
      alcExtensions = v8;
      strcpy(v8, "ALC_EXT_CAPTURE ALC_ENUMERATION_EXT ALC_EXT_MAC_OSX");
      v9 = strlen(v8);
      v10 = malloc_type_realloc(v8, v9 + 37, 0x100004077774924uLL);
      alcExtensions = v10;
      strcat(v10, " ALC_EXT_ASA");
      v11 = strlen(v10);
      v7 = v10;
      strcpy(&v10[v11], " ALC_EXT_OUTPUT_CAPTURER");
    }

    v12 = strstr(v7, v4) != 0;
    free(v4);
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALCErrorKey))
    {
      pthread_setspecific(gALCErrorKey, 0xA004);
    }

    v12 = 0;
    v15 = *MEMORY[0x277D85DE8];
  }

  return v12;
}

void *__cdecl alcGetProcAddress(ALCdevice *device, const ALCchar *funcname)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315650;
    v6 = "oalImp.cpp";
    v7 = 1024;
    v8 = 1135;
    v9 = 2080;
    v10 = funcname;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcGetProcAddress--> function name = %s", &v5, 0x1Cu);
  }

  result = alGetProcAddress(funcname);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *__cdecl alGetProcAddress(const ALchar *fname)
{
  v128 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v122 = 136315650;
    v123 = "oalImp.cpp";
    v124 = 1024;
    v125 = 3778;
    v126 = 2080;
    v127 = fname;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetProcAddress function name = %s", &v122, 0x1Cu);
  }

  if (!fname)
  {
    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALCErrorKey))
    {
      pthread_setspecific(gALCErrorKey, 0xA004);
    }

    goto LABEL_124;
  }

  v2 = strcmp("alcOpenDevice", fname);
  v3 = alcOpenDevice;
  if (v2)
  {
    v4 = strcmp("alcCloseDevice", fname);
    v3 = alcCloseDevice;
    if (v4)
    {
      v5 = strcmp("alcGetError", fname);
      v3 = alcGetError;
      if (v5)
      {
        v6 = strcmp("alcCreateContext", fname);
        v3 = alcCreateContext;
        if (v6)
        {
          v7 = strcmp("alcMakeContextCurrent", fname);
          v3 = alcMakeContextCurrent;
          if (v7)
          {
            v8 = strcmp("alcProcessContext", fname);
            v3 = alcProcessContext;
            if (v8)
            {
              v9 = strcmp("alcGetCurrentContext", fname);
              v3 = alcGetCurrentContext;
              if (v9)
              {
                v10 = strcmp("alcGetContextsDevice", fname);
                v3 = alcGetContextsDevice;
                if (v10)
                {
                  v11 = strcmp("alcSuspendContext", fname);
                  v3 = alcSuspendContext;
                  if (v11)
                  {
                    v12 = strcmp("alcDestroyContext", fname);
                    v3 = alcDestroyContext;
                    if (v12)
                    {
                      v13 = strcmp("alcGetString", fname);
                      v3 = alcGetString;
                      if (v13)
                      {
                        v14 = strcmp("alcIsExtensionPresent", fname);
                        v3 = alcIsExtensionPresent;
                        if (v14)
                        {
                          v15 = strcmp("alcGetProcAddress", fname);
                          v3 = alcGetProcAddress;
                          if (v15)
                          {
                            v16 = strcmp("alcGetEnumValue", fname);
                            v3 = alcGetEnumValue;
                            if (v16)
                            {
                              v17 = strcmp("alcGetInteger", fname);
                              v3 = alcGetInteger;
                              if (v17)
                              {
                                v18 = strcmp("alcGetIntegerv", fname);
                                v3 = alcGetIntegerv;
                                if (v18)
                                {
                                  v19 = strcmp("alGetError", fname);
                                  v3 = alGetError;
                                  if (v19)
                                  {
                                    v20 = strcmp("alGenBuffers", fname);
                                    v3 = alGenBuffers;
                                    if (v20)
                                    {
                                      v21 = strcmp("alDeleteBuffers", fname);
                                      v3 = alDeleteBuffers;
                                      if (v21)
                                      {
                                        v22 = strcmp("alIsBuffer", fname);
                                        v3 = alIsBuffer;
                                        if (v22)
                                        {
                                          v23 = strcmp("alBufferData", fname);
                                          v3 = alBufferData;
                                          if (v23)
                                          {
                                            v24 = strcmp("alBufferf", fname);
                                            v3 = alBufferf;
                                            if (v24)
                                            {
                                              v25 = strcmp("alBuffer3f", fname);
                                              v3 = alBuffer3f;
                                              if (v25)
                                              {
                                                v26 = strcmp("alBufferfv", fname);
                                                v3 = alBufferfv;
                                                if (v26)
                                                {
                                                  v27 = strcmp("alBufferi", fname);
                                                  v3 = alBufferi;
                                                  if (v27)
                                                  {
                                                    v28 = strcmp("alBuffer3i", fname);
                                                    v3 = alBuffer3i;
                                                    if (v28)
                                                    {
                                                      v29 = strcmp("alBufferiv", fname);
                                                      v3 = alBufferiv;
                                                      if (v29)
                                                      {
                                                        v30 = strcmp("alGetBufferf", fname);
                                                        v3 = alGetBufferf;
                                                        if (v30)
                                                        {
                                                          v31 = strcmp("alGetBuffer3f", fname);
                                                          v3 = alGetBuffer3f;
                                                          if (v31)
                                                          {
                                                            v32 = strcmp("alGetBufferfv", fname);
                                                            v3 = alGetBufferfv;
                                                            if (v32)
                                                            {
                                                              v33 = strcmp("alGetBufferi", fname);
                                                              v3 = alGetBufferi;
                                                              if (v33)
                                                              {
                                                                v34 = strcmp("alGetBuffer3i", fname);
                                                                v3 = alGetBuffer3i;
                                                                if (v34)
                                                                {
                                                                  v35 = strcmp("alGetBufferiv", fname);
                                                                  v3 = alGetBufferiv;
                                                                  if (v35)
                                                                  {
                                                                    v36 = strcmp("alGenSources", fname);
                                                                    v3 = alGenSources;
                                                                    if (v36)
                                                                    {
                                                                      v37 = strcmp("alDeleteSources", fname);
                                                                      v3 = alDeleteSources;
                                                                      if (v37)
                                                                      {
                                                                        v38 = strcmp("alIsSource", fname);
                                                                        v3 = alIsSource;
                                                                        if (v38)
                                                                        {
                                                                          v39 = strcmp("alSourcef", fname);
                                                                          v3 = alSourcef;
                                                                          if (v39)
                                                                          {
                                                                            v40 = strcmp("alSourcefv", fname);
                                                                            v3 = alSourcefv;
                                                                            if (v40)
                                                                            {
                                                                              v41 = strcmp("alSource3f", fname);
                                                                              v3 = alSource3f;
                                                                              if (v41)
                                                                              {
                                                                                v42 = strcmp("alSourcei", fname);
                                                                                v3 = alSourcei;
                                                                                if (v42)
                                                                                {
                                                                                  v43 = strcmp("alSourceiv", fname);
                                                                                  v3 = alSourceiv;
                                                                                  if (v43)
                                                                                  {
                                                                                    v44 = strcmp("alSource3i", fname);
                                                                                    v3 = alSource3i;
                                                                                    if (v44)
                                                                                    {
                                                                                      v45 = strcmp("alGetSourcef", fname);
                                                                                      v3 = alGetSourcef;
                                                                                      if (v45)
                                                                                      {
                                                                                        v46 = strcmp("alGetSourcefv", fname);
                                                                                        v3 = alGetSourcefv;
                                                                                        if (v46)
                                                                                        {
                                                                                          v47 = strcmp("alGetSource3f", fname);
                                                                                          v3 = alGetSource3f;
                                                                                          if (v47)
                                                                                          {
                                                                                            v48 = strcmp("alGetSourcei", fname);
                                                                                            v3 = alGetSourcei;
                                                                                            if (v48)
                                                                                            {
                                                                                              v49 = strcmp("alGetSourceiv", fname);
                                                                                              v3 = alGetSourceiv;
                                                                                              if (v49)
                                                                                              {
                                                                                                v50 = strcmp("alGetSource3i", fname);
                                                                                                v3 = alGetSource3i;
                                                                                                if (v50)
                                                                                                {
                                                                                                  v51 = strcmp("alSourcePlay", fname);
                                                                                                  v3 = alSourcePlay;
                                                                                                  if (v51)
                                                                                                  {
                                                                                                    v52 = strcmp("alSourcePause", fname);
                                                                                                    v3 = alSourcePause;
                                                                                                    if (v52)
                                                                                                    {
                                                                                                      v53 = strcmp("alSourceStop", fname);
                                                                                                      v3 = alSourceStop;
                                                                                                      if (v53)
                                                                                                      {
                                                                                                        v54 = strcmp("alSourceRewind", fname);
                                                                                                        v3 = alSourceRewind;
                                                                                                        if (v54)
                                                                                                        {
                                                                                                          v55 = strcmp("alSourcePlayv", fname);
                                                                                                          v3 = alSourcePlayv;
                                                                                                          if (v55)
                                                                                                          {
                                                                                                            v56 = strcmp("alSourcePausev", fname);
                                                                                                            v3 = alSourcePausev;
                                                                                                            if (v56)
                                                                                                            {
                                                                                                              v57 = strcmp("alSourceStopv", fname);
                                                                                                              v3 = alSourceStopv;
                                                                                                              if (v57)
                                                                                                              {
                                                                                                                v58 = strcmp("alSourceRewindv", fname);
                                                                                                                v3 = alSourceRewindv;
                                                                                                                if (v58)
                                                                                                                {
                                                                                                                  v59 = strcmp("alSourceQueueBuffers", fname);
                                                                                                                  v3 = alSourceQueueBuffers;
                                                                                                                  if (v59)
                                                                                                                  {
                                                                                                                    v60 = strcmp("alSourceUnqueueBuffers", fname);
                                                                                                                    v3 = alSourceUnqueueBuffers;
                                                                                                                    if (v60)
                                                                                                                    {
                                                                                                                      v61 = strcmp("alListenerf", fname);
                                                                                                                      v3 = alListenerf;
                                                                                                                      if (v61)
                                                                                                                      {
                                                                                                                        v62 = strcmp("alListenerfv", fname);
                                                                                                                        v3 = alListenerfv;
                                                                                                                        if (v62)
                                                                                                                        {
                                                                                                                          v63 = strcmp("alListener3f", fname);
                                                                                                                          v3 = alListener3f;
                                                                                                                          if (v63)
                                                                                                                          {
                                                                                                                            v64 = strcmp("alListeneri", fname);
                                                                                                                            v3 = alListeneri;
                                                                                                                            if (v64)
                                                                                                                            {
                                                                                                                              v65 = strcmp("alListeneriv", fname);
                                                                                                                              v3 = alListeneriv;
                                                                                                                              if (v65)
                                                                                                                              {
                                                                                                                                v66 = strcmp("alListener3i", fname);
                                                                                                                                v3 = alListener3i;
                                                                                                                                if (v66)
                                                                                                                                {
                                                                                                                                  v67 = strcmp("alGetListenerf", fname);
                                                                                                                                  v3 = alGetListenerf;
                                                                                                                                  if (v67)
                                                                                                                                  {
                                                                                                                                    v68 = strcmp("alGetListenerfv", fname);
                                                                                                                                    v3 = alGetListenerfv;
                                                                                                                                    if (v68)
                                                                                                                                    {
                                                                                                                                      v69 = strcmp("alGetListener3f", fname);
                                                                                                                                      v3 = alGetListener3f;
                                                                                                                                      if (v69)
                                                                                                                                      {
                                                                                                                                        v70 = strcmp("alGetListeneri", fname);
                                                                                                                                        v3 = alGetListeneri;
                                                                                                                                        if (v70)
                                                                                                                                        {
                                                                                                                                          v71 = strcmp("alGetListeneriv", fname);
                                                                                                                                          v3 = alGetListeneriv;
                                                                                                                                          if (v71)
                                                                                                                                          {
                                                                                                                                            v72 = strcmp("alGetListener3i", fname);
                                                                                                                                            v3 = alGetListener3i;
                                                                                                                                            if (v72)
                                                                                                                                            {
                                                                                                                                              v73 = strcmp("alDistanceModel", fname);
                                                                                                                                              v3 = alDistanceModel;
                                                                                                                                              if (v73)
                                                                                                                                              {
                                                                                                                                                v74 = strcmp("alDopplerFactor", fname);
                                                                                                                                                v3 = alDopplerFactor;
                                                                                                                                                if (v74)
                                                                                                                                                {
                                                                                                                                                  v75 = strcmp("alDopplerVelocity", fname);
                                                                                                                                                  v3 = alDopplerVelocity;
                                                                                                                                                  if (v75)
                                                                                                                                                  {
                                                                                                                                                    v76 = strcmp("alSpeedOfSound", fname);
                                                                                                                                                    v3 = alSpeedOfSound;
                                                                                                                                                    if (v76)
                                                                                                                                                    {
                                                                                                                                                      v77 = strcmp("alGetString", fname);
                                                                                                                                                      v3 = alGetString;
                                                                                                                                                      if (v77)
                                                                                                                                                      {
                                                                                                                                                        v78 = strcmp("alGetEnumValue", fname);
                                                                                                                                                        v3 = alGetEnumValue;
                                                                                                                                                        if (v78)
                                                                                                                                                        {
                                                                                                                                                          v79 = strcmp("alGetBoolean", fname);
                                                                                                                                                          v3 = alGetBoolean;
                                                                                                                                                          if (v79)
                                                                                                                                                          {
                                                                                                                                                            v80 = strcmp("alGetBooleanv", fname);
                                                                                                                                                            v3 = alGetBooleanv;
                                                                                                                                                            if (v80)
                                                                                                                                                            {
                                                                                                                                                              v81 = strcmp("alGetFloat", fname);
                                                                                                                                                              v3 = alGetFloat;
                                                                                                                                                              if (v81)
                                                                                                                                                              {
                                                                                                                                                                v82 = strcmp("alGetFloatv", fname);
                                                                                                                                                                v3 = alGetFloatv;
                                                                                                                                                                if (v82)
                                                                                                                                                                {
                                                                                                                                                                  v83 = strcmp("alGetDouble", fname);
                                                                                                                                                                  v3 = alGetDouble;
                                                                                                                                                                  if (v83)
                                                                                                                                                                  {
                                                                                                                                                                    v84 = strcmp("alGetDoublev", fname);
                                                                                                                                                                    v3 = alGetDoublev;
                                                                                                                                                                    if (v84)
                                                                                                                                                                    {
                                                                                                                                                                      v85 = strcmp("alGetInteger", fname);
                                                                                                                                                                      v3 = alGetInteger;
                                                                                                                                                                      if (v85)
                                                                                                                                                                      {
                                                                                                                                                                        v86 = strcmp("alGetIntegerv", fname);
                                                                                                                                                                        v3 = alGetIntegerv;
                                                                                                                                                                        if (v86)
                                                                                                                                                                        {
                                                                                                                                                                          v87 = strcmp("alGetProcAddress", fname);
                                                                                                                                                                          v3 = alGetProcAddress;
                                                                                                                                                                          if (v87)
                                                                                                                                                                          {
                                                                                                                                                                            v88 = strcmp("alIsExtensionPresent", fname);
                                                                                                                                                                            v3 = alIsExtensionPresent;
                                                                                                                                                                            if (v88)
                                                                                                                                                                            {
                                                                                                                                                                              v89 = strcmp("alDisable", fname);
                                                                                                                                                                              v3 = alDisable;
                                                                                                                                                                              if (v89)
                                                                                                                                                                              {
                                                                                                                                                                                v90 = strcmp("alEnable", fname);
                                                                                                                                                                                v3 = alEnable;
                                                                                                                                                                                if (v90)
                                                                                                                                                                                {
                                                                                                                                                                                  v91 = strcmp("alIsEnabled", fname);
                                                                                                                                                                                  v3 = alIsEnabled;
                                                                                                                                                                                  if (v91)
                                                                                                                                                                                  {
                                                                                                                                                                                    v92 = strcmp("alcMacOSXRenderingQuality", fname);
                                                                                                                                                                                    v3 = alcMacOSXRenderingQuality;
                                                                                                                                                                                    if (v92)
                                                                                                                                                                                    {
                                                                                                                                                                                      v93 = strcmp("alMacOSXRenderChannelCount", fname);
                                                                                                                                                                                      v3 = alMacOSXRenderChannelCount;
                                                                                                                                                                                      if (v93)
                                                                                                                                                                                      {
                                                                                                                                                                                        v94 = strcmp("alcMacOSXMixerMaxiumumBusses", fname);
                                                                                                                                                                                        v3 = alcMacOSXMixerMaxiumumBusses;
                                                                                                                                                                                        if (v94)
                                                                                                                                                                                        {
                                                                                                                                                                                          v95 = strcmp("alcMacOSXMixerOutputRate", fname);
                                                                                                                                                                                          v3 = alcMacOSXMixerOutputRate;
                                                                                                                                                                                          if (v95)
                                                                                                                                                                                          {
                                                                                                                                                                                            v96 = strcmp("alcMacOSXGetRenderingQuality", fname);
                                                                                                                                                                                            v3 = alcMacOSXGetRenderingQuality;
                                                                                                                                                                                            if (v96)
                                                                                                                                                                                            {
                                                                                                                                                                                              v97 = strcmp("alMacOSXGetRenderChannelCount", fname);
                                                                                                                                                                                              v3 = alMacOSXGetRenderChannelCount;
                                                                                                                                                                                              if (v97)
                                                                                                                                                                                              {
                                                                                                                                                                                                v98 = strcmp("alcMacOSXGetMixerMaxiumumBusses", fname);
                                                                                                                                                                                                v3 = alcMacOSXGetMixerMaxiumumBusses;
                                                                                                                                                                                                if (v98)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v99 = strcmp("alcMacOSXGetMixerOutputRate", fname);
                                                                                                                                                                                                  v3 = alcMacOSXGetMixerOutputRate;
                                                                                                                                                                                                  if (v99)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v100 = strcmp("alcCaptureOpenDevice", fname);
                                                                                                                                                                                                    v3 = alcCaptureOpenDevice;
                                                                                                                                                                                                    if (v100)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v101 = strcmp("alcCaptureCloseDevice", fname);
                                                                                                                                                                                                      v3 = alcCaptureCloseDevice;
                                                                                                                                                                                                      if (v101)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v102 = strcmp("alcCaptureStart", fname);
                                                                                                                                                                                                        v3 = alcCaptureStart;
                                                                                                                                                                                                        if (v102)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v103 = strcmp("alcCaptureStop", fname);
                                                                                                                                                                                                          v3 = alcCaptureStop;
                                                                                                                                                                                                          if (v103)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v104 = strcmp("alcCaptureSamples", fname);
                                                                                                                                                                                                            v3 = alcCaptureSamples;
                                                                                                                                                                                                            if (v104)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v105 = strcmp("alBufferDataStatic", fname);
                                                                                                                                                                                                              v3 = alBufferDataStatic;
                                                                                                                                                                                                              if (v105)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v106 = strcmp("alSourceSetRenderCallback", fname);
                                                                                                                                                                                                                v3 = alSourceSetRenderCallback;
                                                                                                                                                                                                                if (v106)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v107 = strcmp("alSourceAddNotification", fname);
                                                                                                                                                                                                                  v3 = alSourceAddNotification;
                                                                                                                                                                                                                  if (v107)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v108 = strcmp("alSourceRemoveNotification", fname);
                                                                                                                                                                                                                    v3 = alSourceRemoveNotification;
                                                                                                                                                                                                                    if (v108)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v109 = strcmp("alcASASetListener", fname);
                                                                                                                                                                                                                      v3 = alcASASetListener;
                                                                                                                                                                                                                      if (v109)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v110 = strcmp("alcASAGetListener", fname);
                                                                                                                                                                                                                        v3 = alcASAGetListener;
                                                                                                                                                                                                                        if (v110)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v111 = strcmp("alcASASetSource", fname);
                                                                                                                                                                                                                          v3 = alcASASetSource;
                                                                                                                                                                                                                          if (v111)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v112 = strcmp("alcASAGetSource", fname);
                                                                                                                                                                                                                            v3 = alcASAGetSource;
                                                                                                                                                                                                                            if (v112)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v113 = strcmp("alSourceRenderingQuality", fname);
                                                                                                                                                                                                                              v3 = alSourceRenderingQuality;
                                                                                                                                                                                                                              if (v113)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v114 = strcmp("alSourceGetRenderingQuality", fname);
                                                                                                                                                                                                                                v3 = alSourceGetRenderingQuality;
                                                                                                                                                                                                                                if (v114)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v115 = strcmp("alcOutputCapturerPrepare", fname);
                                                                                                                                                                                                                                  v3 = alcOutputCapturerPrepare;
                                                                                                                                                                                                                                  if (v115)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v116 = strcmp("alcOutputCapturerStart", fname);
                                                                                                                                                                                                                                    v3 = alcOutputCapturerStart;
                                                                                                                                                                                                                                    if (v116)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v117 = strcmp("alcOutputCapturerStop", fname);
                                                                                                                                                                                                                                      v3 = alcOutputCapturerStop;
                                                                                                                                                                                                                                      if (v117)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v118 = strcmp("alcOutputCapturerAvailableSamples", fname);
                                                                                                                                                                                                                                        v3 = alcOutputCapturerAvailableSamples;
                                                                                                                                                                                                                                        if (v118)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v119 = strcmp("alcOutputCapturerSamples", fname);
                                                                                                                                                                                                                                          v3 = alcOutputCapturerSamples;
                                                                                                                                                                                                                                          if (v119)
                                                                                                                                                                                                                                          {
LABEL_124:
                                                                                                                                                                                                                                            v3 = 0;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                      }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }
                                                                                                                                                                                                }
                                                                                                                                                                                              }
                                                                                                                                                                                            }
                                                                                                                                                                                          }
                                                                                                                                                                                        }
                                                                                                                                                                                      }
                                                                                                                                                                                    }
                                                                                                                                                                                  }
                                                                                                                                                                                }
                                                                                                                                                                              }
                                                                                                                                                                            }
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v120 = *MEMORY[0x277D85DE8];
  return v3;
}

ALCenum alcGetEnumValue(ALCdevice *device, const ALCchar *enumname)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315650;
    v6 = "oalImp.cpp";
    v7 = 1024;
    v8 = 1143;
    v9 = 2080;
    v10 = enumname;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcGetEnumValue--> enum name = %s", &v5, 0x1Cu);
  }

  result = alGetEnumValue(enumname);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

ALenum alGetEnumValue(const ALchar *ename)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "oalImp.cpp";
    v6 = 1024;
    v7 = 3433;
    v8 = 2080;
    v9 = ename;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetEnumValue: %s", &v4, 0x1Cu);
  }

  if (!strcmp("AL_INVALID", ename))
  {
    result = -1;
    goto LABEL_110;
  }

  result = strcmp("AL_NONE", ename);
  if (result)
  {
    result = strcmp("AL_FALSE", ename);
    if (result)
    {
      if (!strcmp("AL_TRUE", ename))
      {
        goto LABEL_111;
      }

      if (!strcmp("AL_SOURCE_RELATIVE", ename))
      {
        result = 514;
        goto LABEL_110;
      }

      if (!strcmp("AL_CONE_INNER_ANGLE", ename))
      {
        goto LABEL_113;
      }

      if (!strcmp("AL_CONE_OUTER_ANGLE", ename))
      {
        goto LABEL_114;
      }

      if (!strcmp("AL_CONE_OUTER_GAIN", ename))
      {
        result = 4130;
        goto LABEL_110;
      }

      if (!strcmp("AL_PITCH", ename))
      {
        goto LABEL_116;
      }

      if (!strcmp("AL_POSITION", ename))
      {
        goto LABEL_117;
      }

      if (!strcmp("AL_DIRECTION", ename))
      {
        goto LABEL_118;
      }

      if (!strcmp("AL_VELOCITY", ename))
      {
        goto LABEL_119;
      }

      if (!strcmp("AL_LOOPING", ename))
      {
        goto LABEL_120;
      }

      if (!strcmp("AL_BUFFER", ename))
      {
        goto LABEL_121;
      }

      if (!strcmp("AL_GAIN", ename))
      {
        result = 4106;
        goto LABEL_110;
      }

      if (!strcmp("AL_MIN_GAIN", ename))
      {
        result = 4109;
        goto LABEL_110;
      }

      if (!strcmp("AL_MAX_GAIN", ename))
      {
        result = 4110;
        goto LABEL_110;
      }

      if (!strcmp("AL_ORIENTATION", ename))
      {
        result = 4111;
        goto LABEL_110;
      }

      if (!strcmp("AL_REFERENCE_DISTANCE", ename))
      {
        result = 4128;
        goto LABEL_110;
      }

      if (!strcmp("AL_ROLLOFF_FACTOR", ename))
      {
        result = 4129;
        goto LABEL_110;
      }

      if (!strcmp("AL_MAX_DISTANCE", ename))
      {
        result = 4131;
        goto LABEL_110;
      }

      if (!strcmp("AL_SOURCE_STATE", ename))
      {
        goto LABEL_129;
      }

      if (!strcmp("AL_INITIAL", ename))
      {
        goto LABEL_130;
      }

      if (!strcmp("AL_PLAYING", ename))
      {
        result = 4114;
        goto LABEL_110;
      }

      if (!strcmp("AL_PAUSED", ename))
      {
        result = 4115;
        goto LABEL_110;
      }

      if (!strcmp("AL_STOPPED", ename))
      {
        result = 4116;
        goto LABEL_110;
      }

      if (!strcmp("AL_BUFFERS_QUEUED", ename))
      {
        result = 4117;
        goto LABEL_110;
      }

      if (!strcmp("AL_BUFFERS_PROCESSED", ename))
      {
        result = 4118;
        goto LABEL_110;
      }

      if (!strcmp("AL_FORMAT_MONO8", ename))
      {
        result = 4352;
        goto LABEL_110;
      }

      if (!strcmp("AL_FORMAT_MONO16", ename))
      {
        result = 4353;
        goto LABEL_110;
      }

      if (!strcmp("AL_FORMAT_STEREO8", ename))
      {
        result = 4354;
        goto LABEL_110;
      }

      if (!strcmp("AL_FORMAT_STEREO16", ename))
      {
        result = 4355;
        goto LABEL_110;
      }

      if (!strcmp("AL_FREQUENCY", ename))
      {
        result = 8193;
        goto LABEL_110;
      }

      if (!strcmp("AL_SIZE", ename))
      {
        result = 8196;
        goto LABEL_110;
      }

      if (!strcmp("AL_UNUSED", ename))
      {
        result = 8208;
        goto LABEL_110;
      }

      if (!strcmp("AL_PENDING", ename))
      {
        result = 8209;
        goto LABEL_110;
      }

      if (!strcmp("AL_PROCESSED", ename))
      {
        result = 8210;
        goto LABEL_110;
      }

      result = strcmp("AL_NO_ERROR", ename);
      if (result)
      {
        if (!strcmp("AL_INVALID_NAME", ename))
        {
          goto LABEL_145;
        }

        if (!strcmp("AL_INVALID_ENUM", ename))
        {
          goto LABEL_146;
        }

        if (!strcmp("AL_INVALID_VALUE", ename))
        {
          goto LABEL_147;
        }

        if (!strcmp("AL_INVALID_OPERATION", ename))
        {
          goto LABEL_148;
        }

        if (!strcmp("AL_OUT_OF_MEMORY", ename))
        {
          goto LABEL_149;
        }

        if (!strcmp("AL_VENDOR", ename))
        {
          result = 45057;
          goto LABEL_110;
        }

        if (!strcmp("AL_VERSION", ename))
        {
          result = 45058;
          goto LABEL_110;
        }

        if (!strcmp("AL_RENDERER", ename))
        {
          result = 45059;
          goto LABEL_110;
        }

        if (!strcmp("AL_EXTENSIONS", ename))
        {
          result = 45060;
          goto LABEL_110;
        }

        if (!strcmp("AL_DOPPLER_FACTOR", ename))
        {
          result = 49152;
          goto LABEL_110;
        }

        if (!strcmp("AL_DOPPLER_VELOCITY", ename))
        {
          result = 49153;
          goto LABEL_110;
        }

        if (!strcmp("AL_DISTANCE_MODEL", ename))
        {
          result = 53248;
          goto LABEL_110;
        }

        if (!strcmp("AL_INVERSE_DISTANCE", ename))
        {
          result = 53249;
          goto LABEL_110;
        }

        if (!strcmp("AL_INVERSE_DISTANCE_CLAMPED", ename))
        {
          result = 53250;
          goto LABEL_110;
        }

        if (!strcmp("AL_LINEAR_DISTANCE", ename))
        {
          result = 53251;
          goto LABEL_110;
        }

        if (!strcmp("AL_LINEAR_DISTANCE_CLAMPED", ename))
        {
          result = 53252;
          goto LABEL_110;
        }

        if (!strcmp("AL_EXPONENT_DISTANCE", ename))
        {
          result = 53253;
          goto LABEL_110;
        }

        if (!strcmp("AL_EXPONENT_DISTANCE_CLAMPED", ename))
        {
          result = 53254;
          goto LABEL_110;
        }

        if (!strcmp("AL_SPEED_OF_SOUND", ename))
        {
          result = 49155;
          goto LABEL_110;
        }

        if (!strcmp("AL_SOURCE_TYPE", ename))
        {
          result = 4135;
          goto LABEL_110;
        }

        result = strcmp("ALC_INVALID", ename);
        if (result)
        {
          result = strcmp("ALC_FALSE", ename);
          if (result)
          {
            if (strcmp("ALC_TRUE", ename))
            {
              if (!strcmp("ALC_MAJOR_VERSION", ename))
              {
                result = 4096;
                goto LABEL_110;
              }

              if (strcmp("ALC_MINOR_VERSION", ename))
              {
                if (strcmp("ALC_ATTRIBUTES_SIZE", ename))
                {
                  if (strcmp("ALC_ALL_ATTRIBUTES", ename))
                  {
                    if (strcmp("ALC_DEFAULT_DEVICE_SPECIFIER", ename))
                    {
                      if (strcmp("ALC_DEVICE_SPECIFIER", ename))
                      {
                        if (strcmp("ALC_EXTENSIONS", ename))
                        {
                          if (strcmp("ALC_FREQUENCY", ename))
                          {
                            if (!strcmp("ALC_REFRESH", ename))
                            {
                              result = 4104;
                              goto LABEL_110;
                            }

                            if (strcmp("ALC_SYNC", ename))
                            {
                              result = strcmp("ALC_NO_ERROR", ename);
                              if (!result)
                              {
                                goto LABEL_110;
                              }

                              if (strcmp("ALC_INVALID_DEVICE", ename))
                              {
                                if (strcmp("ALC_INVALID_CONTEXT", ename))
                                {
                                  if (strcmp("ALC_INVALID_ENUM", ename))
                                  {
                                    if (strcmp("ALC_INVALID_VALUE", ename))
                                    {
                                      if (strcmp("ALC_OUT_OF_MEMORY", ename))
                                      {
                                        if (strcmp("ALC_MONO_SOURCES", ename))
                                        {
                                          if (strcmp("ALC_STEREO_SOURCES", ename))
                                          {
                                            if (!strcmp("AL_SEC_OFFSET", ename))
                                            {
                                              result = 4132;
                                            }

                                            else if (!strcmp("AL_SAMPLE_OFFSET", ename))
                                            {
                                              result = 4133;
                                            }

                                            else if (!strcmp("AL_BYTE_OFFSET", ename))
                                            {
                                              result = 4134;
                                            }

                                            else if (!strcmp("ALC_CAPTURE_DEVICE_SPECIFIER", ename))
                                            {
                                              result = 784;
                                            }

                                            else if (!strcmp("ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER", ename))
                                            {
                                              result = 785;
                                            }

                                            else if (!strcmp("ALC_CAPTURE_SAMPLES", ename))
                                            {
                                              result = 786;
                                            }

                                            else if (!strcmp("ALC_SPATIAL_RENDERING_QUALITY", ename))
                                            {
                                              result = 61442;
                                            }

                                            else if (!strcmp("ALC_MIXER_OUTPUT_RATE", ename))
                                            {
                                              result = 61443;
                                            }

                                            else if (!strcmp("ALC_MIXER_MAXIMUM_BUSSES", ename))
                                            {
                                              result = 61444;
                                            }

                                            else if (!strcmp("ALC_RENDER_CHANNEL_COUNT", ename))
                                            {
                                              result = 61445;
                                            }

                                            else if (!strcmp("ALC_MAC_OSX_SPATIAL_RENDERING_QUALITY_HIGH", ename))
                                            {
                                              result = 1920034921;
                                            }

                                            else if (!strcmp("ALC_MAC_OSX_SPATIAL_RENDERING_QUALITY_LOW", ename))
                                            {
                                              result = 1919183983;
                                            }

                                            else if (!strcmp("ALC_IPHONE_SPATIAL_RENDERING_QUALITY_HEADPHONES", ename))
                                            {
                                              result = 1751412840;
                                            }

                                            else if (!strcmp("ALC_MAC_OSX_RENDER_CHANNEL_COUNT_STEREO", ename))
                                            {
                                              result = 1919120244;
                                            }

                                            else if (!strcmp("ALC_MAC_OSX_RENDER_CHANNEL_COUNT_MULTICHANNEL", ename))
                                            {
                                              result = 1919118691;
                                            }

                                            else if (!strcmp("AL_GAMEKIT", ename))
                                            {
                                              result = 1735095154;
                                            }

                                            else if (!strcmp("ALC_ASA_REVERB_ON", ename))
                                            {
                                              result = 1920364398;
                                            }

                                            else if (!strcmp("ALC_ASA_REVERB_EQ_GAIN", ename))
                                            {
                                              result = 1920361831;
                                            }

                                            else if (!strcmp("ALC_ASA_REVERB_EQ_BANDWITH", ename))
                                            {
                                              result = 1920361826;
                                            }

                                            else if (!strcmp("ALC_ASA_REVERB_EQ_FREQ", ename))
                                            {
                                              result = 1920361830;
                                            }

                                            else if (!strcmp("ALC_ASA_REVERB_ROOM_TYPE", ename))
                                            {
                                              result = 1920365172;
                                            }

                                            else if (!strcmp("ALC_ASA_REVERB_SEND_LEVEL", ename))
                                            {
                                              result = 1920365420;
                                            }

                                            else if (!strcmp("ALC_ASA_REVERB_GLOBAL_LEVEL", ename))
                                            {
                                              result = 1920362348;
                                            }

                                            else if (!strcmp("ALC_ASA_OCCLUSION", ename))
                                            {
                                              result = 1868784492;
                                            }

                                            else if (!strcmp("ALC_ASA_OBSTRUCTION", ename))
                                            {
                                              result = 1868723060;
                                            }

                                            else
                                            {
                                              result = -1;
                                            }

                                            goto LABEL_110;
                                          }

LABEL_130:
                                          result = 4113;
                                          goto LABEL_110;
                                        }

LABEL_129:
                                        result = 4112;
                                        goto LABEL_110;
                                      }

LABEL_149:
                                      result = 40965;
                                      goto LABEL_110;
                                    }

LABEL_148:
                                    result = 40964;
                                    goto LABEL_110;
                                  }

LABEL_147:
                                  result = 40963;
                                  goto LABEL_110;
                                }

LABEL_146:
                                result = 40962;
                                goto LABEL_110;
                              }

LABEL_145:
                              result = 40961;
                              goto LABEL_110;
                            }

LABEL_121:
                            result = 4105;
                            goto LABEL_110;
                          }

LABEL_120:
                          result = 4103;
                          goto LABEL_110;
                        }

LABEL_119:
                        result = 4102;
                        goto LABEL_110;
                      }

LABEL_118:
                      result = 4101;
                      goto LABEL_110;
                    }

LABEL_117:
                    result = 4100;
                    goto LABEL_110;
                  }

LABEL_116:
                  result = 4099;
                  goto LABEL_110;
                }

LABEL_114:
                result = 4098;
                goto LABEL_110;
              }

LABEL_113:
              result = 4097;
              goto LABEL_110;
            }

LABEL_111:
            result = 1;
          }
        }
      }
    }
  }

LABEL_110:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t alcGetInteger(ALCdevice_struct *a1, int a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (a2 > 4101)
    {
      if (a2 <= 40961)
      {
        if (a2 == 4102)
        {
          v6 = "ALC_EXTENSIONS";
          goto LABEL_26;
        }

        if (a2 == 40961)
        {
          v6 = "ALC_INVALID_DEVICE";
          goto LABEL_26;
        }
      }

      else
      {
        switch(a2)
        {
          case 40962:
            v6 = "ALC_INVALID_CONTEXT";
            goto LABEL_26;
          case 40963:
            v6 = "ALC_INVALID_ENUM";
            goto LABEL_26;
          case 40964:
            v6 = "ALC_INVALID_VALUE";
            goto LABEL_26;
        }
      }
    }

    else if (a2 <= 784)
    {
      if (!a2)
      {
        v6 = "ALC_NO_ERROR";
        goto LABEL_26;
      }

      if (a2 == 784)
      {
        v6 = "ALC_CAPTURE_DEVICE_SPECIFIER";
        goto LABEL_26;
      }
    }

    else
    {
      switch(a2)
      {
        case 785:
          v6 = "ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER";
          goto LABEL_26;
        case 4100:
          v6 = "ALC_DEFAULT_DEVICE_SPECIFIER";
          goto LABEL_26;
        case 4101:
          v6 = "ALC_DEVICE_SPECIFIER";
LABEL_26:
          v35 = 136315906;
          v36 = "oalImp.cpp";
          v37 = 1024;
          v38 = 1151;
          v39 = 2048;
          v40 = a1;
          v41 = 2080;
          v42 = v6;
          _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcGetInteger--> device = %ld attribute name = %s", &v35, 0x26u);
          goto LABEL_27;
      }
    }

    v6 = "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
    goto LABEL_26;
  }

LABEL_27:
  v7 = 0;
  if (a1)
  {
    v8 = 0;
    if (gOALDeviceMap)
    {
      v9 = gDeviceMapLock;
      v10 = (*(*gDeviceMapLock + 16))(gDeviceMapLock);
      v11 = *(gOALDeviceMap + 8);
      if (!v11)
      {
        goto LABEL_37;
      }

      v12 = gOALDeviceMap + 8;
      do
      {
        v13 = *(v11 + 32);
        v14 = v13 >= a1;
        v15 = v13 < a1;
        if (v14)
        {
          v12 = v11;
        }

        v11 = *(v11 + 8 * v15);
      }

      while (v11);
      if (v12 != gOALDeviceMap + 8 && *(v12 + 32) <= a1)
      {
        v8 = *(v12 + 40);
        if (v8)
        {
          atomic_fetch_add((v8 + 76), 1u);
        }
      }

      else
      {
LABEL_37:
        v8 = 0;
      }

      if (v10)
      {
        (*(*v9 + 24))(v9);
      }

      v7 = 0;
      if (!v8 && gOALCaptureDeviceMap)
      {
        v16 = gCaptureDeviceMapLock;
        v17 = (*(*gCaptureDeviceMapLock + 16))(gCaptureDeviceMapLock);
        v18 = *(gOALCaptureDeviceMap + 8);
        if (!v18)
        {
          goto LABEL_50;
        }

        v19 = gOALCaptureDeviceMap + 8;
        do
        {
          v20 = *(v18 + 32);
          v14 = v20 >= a1;
          v21 = v20 < a1;
          if (v14)
          {
            v19 = v18;
          }

          v18 = *(v18 + 8 * v21);
        }

        while (v18);
        if (v19 != gOALCaptureDeviceMap + 8 && *(v19 + 32) <= a1)
        {
          v7 = *(v19 + 40);
          if (v7)
          {
            atomic_fetch_add(v7 + 30, 1u);
          }
        }

        else
        {
LABEL_50:
          v7 = 0;
        }

        if (v17)
        {
          (*(*v16 + 24))(v16);
        }

        v8 = 0;
      }
    }

    if ((a2 - 4096) >= 2)
    {
LABEL_55:
      if (a2 == 786)
      {
        if (v7)
        {
          result = OALCaptureDevice::AvailableFrames(v7, v4, v5);
          goto LABEL_115;
        }

        v22 = 40961;
        if (v8)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (a2 == 4098)
        {
          v22 = 40961;
          if (a1 && v8)
          {
            if (alcGetContextsDevice(gCurrentContext) != a1)
            {
              v22 = 40961;
LABEL_68:
              OALDevice::SetError(v8, v22);
              goto LABEL_69;
            }

            if (!gOALContextMap)
            {
              v22 = 40964;
              goto LABEL_68;
            }

            v26 = gCurrentContext;
            v27 = gContextMapLock;
            v28 = (*(*gContextMapLock + 16))(gContextMapLock);
            v29 = *(gOALContextMap + 8);
            if (!v29)
            {
              goto LABEL_102;
            }

            v30 = gOALContextMap + 8;
            do
            {
              v31 = *(v29 + 32);
              v14 = v31 >= v26;
              v32 = v31 < v26;
              if (v14)
              {
                v30 = v29;
              }

              v29 = *(v29 + 8 * v32);
            }

            while (v29);
            if (v30 != gOALContextMap + 8 && *(v30 + 32) <= v26)
            {
              v23 = *(v30 + 40);
              if (v23)
              {
                atomic_fetch_add((v23 + 440), 1u);
              }
            }

            else
            {
LABEL_102:
              v23 = 0;
            }

            if (v28)
            {
              (*(*v27 + 24))(v27);
            }

            if (!v23)
            {
              v22 = 40964;
              goto LABEL_68;
            }

            result = *(v23 + 396);
LABEL_116:
            atomic_fetch_add((v8 + 76), 0xFFFFFFFF);
            goto LABEL_117;
          }
        }

        else
        {
          v22 = 40963;
        }

        if (v8)
        {
          goto LABEL_68;
        }

        if (v7)
        {
          OALDevice::SetError(v7, v22);
          goto LABEL_69;
        }
      }

      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, v22);
      }

LABEL_69:
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        goto LABEL_115;
      }

      if (a2 > 4101)
      {
        if (a2 <= 40961)
        {
          if (a2 == 4102)
          {
            v25 = "ALC_EXTENSIONS";
            goto LABEL_114;
          }

          if (a2 == 40961)
          {
            v25 = "ALC_INVALID_DEVICE";
            goto LABEL_114;
          }
        }

        else
        {
          switch(a2)
          {
            case 40962:
              v25 = "ALC_INVALID_CONTEXT";
              goto LABEL_114;
            case 40963:
              v25 = "ALC_INVALID_ENUM";
              goto LABEL_114;
            case 40964:
              v25 = "ALC_INVALID_VALUE";
              goto LABEL_114;
          }
        }
      }

      else if (a2 <= 784)
      {
        if (!a2)
        {
          v25 = "ALC_NO_ERROR";
          goto LABEL_114;
        }

        if (a2 == 784)
        {
          v25 = "ALC_CAPTURE_DEVICE_SPECIFIER";
          goto LABEL_114;
        }
      }

      else
      {
        switch(a2)
        {
          case 785:
            v25 = "ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER";
            goto LABEL_114;
          case 4100:
            v25 = "ALC_DEFAULT_DEVICE_SPECIFIER";
            goto LABEL_114;
          case 4101:
            v25 = "ALC_DEVICE_SPECIFIER";
LABEL_114:
            String = alcGetString(0, v22);
            v35 = 136316162;
            v36 = "oalImp.cpp";
            v37 = 1024;
            v38 = 1221;
            v39 = 2048;
            v40 = a1;
            v41 = 2080;
            v42 = v25;
            v43 = 2080;
            v44 = String;
            _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcGetInteger FAILED: device = %ld attribute name = %s error = %s", &v35, 0x30u);
            result = 0;
LABEL_115:
            v23 = 0;
            if (!v8)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
        }
      }

      v25 = "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
      goto LABEL_114;
    }
  }

  else
  {
    v8 = 0;
    if ((a2 - 4096) >= 2)
    {
      goto LABEL_55;
    }
  }

  v23 = 0;
  result = 1;
  if (v8)
  {
    goto LABEL_116;
  }

LABEL_117:
  if (v7)
  {
    atomic_fetch_add(v7 + 30, 0xFFFFFFFF);
  }

  if (v23)
  {
    atomic_fetch_add((v23 + 440), 0xFFFFFFFF);
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A01E03C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alcGetIntegerv(ALCdevice *device, ALCenum param, ALCsizei size, ALCint *data)
{
  v44 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (param > 4101)
    {
      if (param <= 40961)
      {
        if (param == 4102)
        {
          v10 = "ALC_EXTENSIONS";
          goto LABEL_26;
        }

        if (param == 40961)
        {
          v10 = "ALC_INVALID_DEVICE";
          goto LABEL_26;
        }
      }

      else
      {
        switch(param)
        {
          case 40962:
            v10 = "ALC_INVALID_CONTEXT";
            goto LABEL_26;
          case 40963:
            v10 = "ALC_INVALID_ENUM";
            goto LABEL_26;
          case 40964:
            v10 = "ALC_INVALID_VALUE";
            goto LABEL_26;
        }
      }
    }

    else if (param <= 784)
    {
      if (!param)
      {
        v10 = "ALC_NO_ERROR";
        goto LABEL_26;
      }

      if (param == 784)
      {
        v10 = "ALC_CAPTURE_DEVICE_SPECIFIER";
        goto LABEL_26;
      }
    }

    else
    {
      switch(param)
      {
        case 785:
          v10 = "ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER";
          goto LABEL_26;
        case 4100:
          v10 = "ALC_DEFAULT_DEVICE_SPECIFIER";
          goto LABEL_26;
        case 4101:
          v10 = "ALC_DEVICE_SPECIFIER";
LABEL_26:
          v34 = 136315906;
          v35 = "oalImp.cpp";
          v36 = 1024;
          v37 = 1234;
          v38 = 2048;
          v39 = device;
          v40 = 2080;
          v41 = v10;
          _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcGetIntegerv--> device = %ld attribute name = %s", &v34, 0x26u);
          goto LABEL_27;
      }
    }

    v10 = "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
    goto LABEL_26;
  }

LABEL_27:
  if (!gOALDeviceMap)
  {
    v18 = 0;
    v19 = 0;
LABEL_42:
    if (gOALCaptureDeviceMap)
    {
      v20 = gCaptureDeviceMapLock;
      v21 = (*(*gCaptureDeviceMapLock + 16))(gCaptureDeviceMapLock);
      v22 = *(gOALCaptureDeviceMap + 8);
      if (!v22)
      {
        goto LABEL_51;
      }

      v23 = gOALCaptureDeviceMap + 8;
      do
      {
        v24 = *(v22 + 32);
        v16 = v24 >= device;
        v25 = v24 < device;
        if (v16)
        {
          v23 = v22;
        }

        v22 = *(v22 + 8 * v25);
      }

      while (v22);
      if (v23 != gOALCaptureDeviceMap + 8 && *(v23 + 32) <= device)
      {
        v19 = *(v23 + 40);
        if (v19)
        {
          atomic_fetch_add(v19 + 30, 1u);
        }
      }

      else
      {
LABEL_51:
        v19 = 0;
      }

      if (v21)
      {
        (*(*v20 + 24))(v20);
      }
    }

    goto LABEL_54;
  }

  v11 = gDeviceMapLock;
  v12 = (*(*gDeviceMapLock + 16))(gDeviceMapLock);
  v13 = *(gOALDeviceMap + 8);
  if (!v13)
  {
    goto LABEL_36;
  }

  v14 = gOALDeviceMap + 8;
  do
  {
    v15 = *(v13 + 32);
    v16 = v15 >= device;
    v17 = v15 < device;
    if (v16)
    {
      v14 = v13;
    }

    v13 = *(v13 + 8 * v17);
  }

  while (v13);
  if (v14 != gOALDeviceMap + 8 && *(v14 + 32) <= device)
  {
    v18 = *(v14 + 40);
    if (v18)
    {
      atomic_fetch_add((v18 + 76), 1u);
    }
  }

  else
  {
LABEL_36:
    v18 = 0;
  }

  if (v12)
  {
    (*(*v11 + 24))(v11);
  }

  v19 = 0;
  if (!v18)
  {
    goto LABEL_42;
  }

LABEL_54:
  v26 = 40964;
  if (!size || !data)
  {
    goto LABEL_76;
  }

  v26 = 40963;
  if (param <= 4096)
  {
    if (param == 786)
    {
      if (v19)
      {
        *data = OALCaptureDevice::AvailableFrames(v19, v8, v9);
        goto LABEL_111;
      }

      v26 = 40964;
      if (v18)
      {
        goto LABEL_77;
      }

      goto LABEL_83;
    }

    if (param != 4096)
    {
LABEL_76:
      if (v18)
      {
        goto LABEL_77;
      }

      if (v19)
      {
        OALDevice::SetError(v19, v26);
        goto LABEL_85;
      }

LABEL_83:
      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, v26);
      }

LABEL_85:
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_111;
      }

      if (param > 4101)
      {
        if (param <= 40961)
        {
          if (param == 4102)
          {
            v28 = "ALC_EXTENSIONS";
            goto LABEL_110;
          }

          if (param == 40961)
          {
            v28 = "ALC_INVALID_DEVICE";
            goto LABEL_110;
          }
        }

        else
        {
          switch(param)
          {
            case 40962:
              v28 = "ALC_INVALID_CONTEXT";
              goto LABEL_110;
            case 40963:
              v28 = "ALC_INVALID_ENUM";
              goto LABEL_110;
            case 40964:
              v28 = "ALC_INVALID_VALUE";
              goto LABEL_110;
          }
        }
      }

      else if (param <= 784)
      {
        if (!param)
        {
          v28 = "ALC_NO_ERROR";
          goto LABEL_110;
        }

        if (param == 784)
        {
          v28 = "ALC_CAPTURE_DEVICE_SPECIFIER";
          goto LABEL_110;
        }
      }

      else
      {
        switch(param)
        {
          case 785:
            v28 = "ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER";
            goto LABEL_110;
          case 4100:
            v28 = "ALC_DEFAULT_DEVICE_SPECIFIER";
            goto LABEL_110;
          case 4101:
            v28 = "ALC_DEVICE_SPECIFIER";
LABEL_110:
            String = alcGetString(0, v26);
            v34 = 136316162;
            v35 = "oalImp.cpp";
            v36 = 1024;
            v37 = 1301;
            v38 = 2048;
            v39 = device;
            v40 = 2080;
            v41 = v28;
            v42 = 2080;
            v43 = String;
            _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcGetInteger FAILED: device = %ld attribute name = %s error = %s", &v34, 0x30u);
LABEL_111:
            v27 = 0;
            v30 = 0;
            if (!v18)
            {
              goto LABEL_113;
            }

            goto LABEL_112;
        }
      }

      v28 = "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
      goto LABEL_110;
    }

LABEL_67:
    *data = 1;
    goto LABEL_111;
  }

  if (param == 4097)
  {
    goto LABEL_67;
  }

  if (param == 4099)
  {
    v26 = 40961;
    if (device && v18)
    {
      if (alcGetContextsDevice(gCurrentContext) == device)
      {
        v32 = ProtectContextObject(gCurrentContext);
        v33 = v32;
        if (v32 && *(v32 + 396) <= size)
        {
          OALContext::CopyAttributeList(v32, data);
          v27 = 0;
          atomic_fetch_add((v33 + 440), 0xFFFFFFFF);
          goto LABEL_112;
        }

        goto LABEL_120;
      }

      v26 = 40961;
LABEL_77:
      OALDevice::SetError(v18, v26);
      goto LABEL_85;
    }

    goto LABEL_76;
  }

  if (param != 4098)
  {
    goto LABEL_76;
  }

  v26 = 40961;
  if (!device || !v18)
  {
    goto LABEL_76;
  }

  if (alcGetContextsDevice(gCurrentContext) != device)
  {
    goto LABEL_77;
  }

  v27 = ProtectContextObject(gCurrentContext);
  if (!v27)
  {
LABEL_120:
    v26 = 40964;
    goto LABEL_77;
  }

  *data = *(v27 + 396);
LABEL_112:
  atomic_fetch_add((v18 + 76), 0xFFFFFFFF);
  v30 = v27;
LABEL_113:
  if (v19)
  {
    atomic_fetch_add(v19 + 30, 0xFFFFFFFF);
  }

  if (v30)
  {
    atomic_fetch_add((v30 + 440), 0xFFFFFFFF);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_23A01E738(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

ALenum alGetError(void)
{
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  v0 = pthread_getspecific(gALErrorKey);
  if (v0)
  {
    pthread_setspecific(gALErrorKey, 0);
  }

  return v0;
}

void alGenBuffers(ALsizei n, ALuint *buffers)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v10 = "oalImp.cpp";
    v11 = 1024;
    v12 = 1348;
    v13 = 2048;
    *v14 = n;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGenBuffers--> requested buffers = %ld", buf, 0x1Cu);
  }

  if (n < 0)
  {
    v6 = 40963;
    goto LABEL_17;
  }

  InitializeBufferMap();
  if (!gOALBufferMap)
  {
    v6 = 40964;
    goto LABEL_17;
  }

  v3 = gBufferMapLock;
  v4 = (*(*gBufferMapLock + 16))(gBufferMapLock);
  CleanUpDeadBufferList();
  v5 = *(gOALBufferMap + 16);
  if (n > 0x400 || (v5 + n) > 0x400)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v10 = "oalImp.cpp";
      v11 = 1024;
      v12 = 1363;
      v13 = 1024;
      *v14 = n;
      *&v14[4] = 1024;
      *&v14[6] = v5;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGenBuffers ERROR --> requested buffers:gOALBufferMap->Size() = %d:%d", buf, 0x1Eu);
    }

    v6 = 40963;
    if (v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (n)
    {
      ++GetNewToken(void)::currentToken;
      operator new();
    }

    v6 = 0;
    if (v4)
    {
LABEL_16:
      (*(*v3 + 24))(v3);
    }
  }

LABEL_17:
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alGetString(v6);
      *buf = 136315906;
      v10 = "oalImp.cpp";
      v11 = 1024;
      v12 = 1383;
      v13 = 2048;
      *v14 = n;
      *&v14[8] = 2080;
      v15 = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGenBuffers FAILED: requested buffers = %ld error %s", buf, 0x26u);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, v6);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23A01EB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A01EB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x23EE824D0](v3, 0x10F0C403FF1FE8BLL);
  CAGuard::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

void sub_23A01EB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CAGuard::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

const ALchar *__cdecl alGetString(ALenum param)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "oalImp.cpp";
    v6 = 1024;
    v7 = 3397;
    v8 = 2080;
    ALAttributeString = GetALAttributeString(param);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetString = %s", &v4, 0x1Cu);
  }

  if (param <= 40963)
  {
    if (param > 40960)
    {
      if (param == 40961)
      {
        result = "Invalid Name";
      }

      else if (param == 40962)
      {
        result = "Invalid Enum";
      }

      else
      {
        result = "Invalid Value";
      }

      goto LABEL_31;
    }

    if (param == -1)
    {
      result = "Unknown Internal Error";
      goto LABEL_31;
    }

    if (!param)
    {
      result = "No Error";
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (param <= 45057)
  {
    switch(param)
    {
      case 40964:
        result = "Invalid Operation";
        goto LABEL_31;
      case 40965:
        result = "Out of Memory";
        goto LABEL_31;
      case 45057:
        result = "Apple Inc.";
        goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (param != 45060)
  {
    if (param == 45059)
    {
      result = "Software";
      goto LABEL_31;
    }

    if (param == 45058)
    {
      result = "1.1";
      goto LABEL_31;
    }

LABEL_28:
    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA002);
    }

    result = 0;
    goto LABEL_31;
  }

  result = alExtensions;
  if (!alExtensions)
  {
    result = malloc_type_malloc(0x8CuLL, 0x100004077774924uLL);
    alExtensions = result;
    strcpy(result, "AL_EXT_OFFSET AL_EXT_LINEAR_DISTANCE AL_EXT_EXPONENT_DISTANCE AL_EXT_STATIC_BUFFER AL_EXT_SOURCE_NOTIFICATIONS AL_EXT_SOURCE_SPATIALIZATION");
  }

LABEL_31:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void alDeleteBuffers(ALsizei n, const ALuint *buffers)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!n)
  {
    goto LABEL_30;
  }

  v4 = 40963;
  if (n < 0 || !gOALBufferMap)
  {
    goto LABEL_25;
  }

  v5 = gBufferMapLock;
  v37 = (*(*gBufferMapLock + 16))(gBufferMapLock);
  CleanUpDeadBufferList();
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = buffers[v6];
    if (v8)
    {
      break;
    }

LABEL_5:
    v7 = ++v6 < n;
    if (v6 == n)
    {
      v4 = 0;
LABEL_32:
      v18 = 0;
      do
      {
        v19 = buffers[v18];
        if (v19)
        {
          v20 = *(gOALBufferMap + 8);
          if (!v20)
          {
            goto LABEL_43;
          }

          v21 = gOALBufferMap + 8;
          do
          {
            v22 = *(v20 + 32);
            v12 = v22 >= v19;
            v23 = v22 < v19;
            if (v12)
            {
              v21 = v20;
            }

            v20 = *(v20 + 8 * v23);
          }

          while (v20);
          if (v21 != gOALBufferMap + 8 && *(v21 + 32) <= v19)
          {
            v24 = *(v21 + 40);
          }

          else
          {
LABEL_43:
            v24 = 0;
          }

          if (!OALBuffer::IsPurgable(v24))
          {
              ;
            }

            *buf = *v24;
            *&v39[4] = v24;
            std::__tree<std::__value_type<unsigned int,OALSource *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OALSource *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OALSource *>>>::__emplace_hint_multi<std::pair<unsigned int const,OALSource *>>();
          }

          v25 = gOALBufferMap;
          v26 = *(gOALBufferMap + 8);
          if (v26)
          {
            v27 = buffers[v18];
            v28 = gOALBufferMap + 8;
            v29 = *(gOALBufferMap + 8);
            do
            {
              v30 = *(v29 + 32);
              v12 = v30 >= v27;
              v31 = v30 < v27;
              if (v12)
              {
                v28 = v29;
              }

              v29 = *(v29 + 8 * v31);
            }

            while (v29);
            if (v28 != gOALBufferMap + 8 && *(v28 + 32) <= v27)
            {
              v32 = *(v28 + 8);
              v33 = v28;
              if (v32)
              {
                do
                {
                  v34 = v32;
                  v32 = *v32;
                }

                while (v32);
              }

              else
              {
                do
                {
                  v34 = v33[2];
                  v35 = *v34 == v33;
                  v33 = v34;
                }

                while (!v35);
              }

              if (*gOALBufferMap == v28)
              {
                *gOALBufferMap = v34;
              }

              --*(v25 + 16);
              std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v26, v28);
              operator delete(v28);
            }
          }

          if (v24)
          {
            OALBuffer::~OALBuffer(v24);
            MEMORY[0x23EE824D0]();
          }
        }

        ++v18;
      }

      while (v18 != n);
      goto LABEL_23;
    }
  }

  v9 = *(gOALBufferMap + 8);
  if (v9)
  {
    v10 = gOALBufferMap + 8;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= v8;
      v13 = v11 < v8;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 != gOALBufferMap + 8 && *(v10 + 32) <= v8)
    {
      v14 = *(v10 + 40);
      if (v14)
      {
        if ((OALBuffer::CanBeRemovedFromBufferMap(v14) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v15 = buffers[v6];
            *buf = 136315650;
            *v39 = "oalImp.cpp";
            *&v39[8] = 1024;
            *&v39[10] = 1436;
            v40 = 2048;
            v41 = v15;
            _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alDeleteBuffers: oalBuffer cannot currently be removed, a source is still attached, bid = %ld", buf, 0x1Cu);
            v4 = 40964;
            if (v7)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v4 = 40964;
            if (v7)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_32;
        }

        goto LABEL_5;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *v39 = "oalImp.cpp";
    *&v39[8] = 1024;
    *&v39[10] = 1431;
    v40 = 2048;
    v41 = v8;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alDeleteBuffers: oalBuffer == NULL, bid = %ld", buf, 0x1Cu);
  }

  v4 = 40961;
  if (!v7)
  {
    goto LABEL_32;
  }

LABEL_23:
  if (v37)
  {
    (*(*v5 + 24))(v5);
  }

LABEL_25:
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alGetString(v4);
      *buf = 136315650;
      *v39 = "oalImp.cpp";
      *&v39[8] = 1024;
      *&v39[10] = 1472;
      v40 = 2080;
      v41 = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alDeleteBuffers FAILED = %s", buf, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, v4);
    }
  }

LABEL_30:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_23A01F380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A01F3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CAGuard::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

ALBOOLean alIsBuffer(ALuint bid)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v13 = 136315650;
    *&v13[4] = "oalImp.cpp";
    v14 = 1024;
    v15 = 1480;
    v16 = 2048;
    v17 = bid;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alIsBuffer--> buffer %ld", v13, 0x1Cu);
  }

  if (!bid)
  {
    result = 1;
    goto LABEL_21;
  }

  if (gOALBufferMap)
  {
    v2 = gBufferMapLock;
    *v13 = gBufferMapLock;
    v3 = (*(*gBufferMapLock + 16))(gBufferMapLock);
    v13[8] = v3;
    CleanUpDeadBufferList();
    v4 = *(gOALBufferMap + 8);
    if (v4)
    {
      v5 = gOALBufferMap + 8;
      do
      {
        v6 = *(v4 + 32);
        v7 = v6 >= bid;
        v8 = v6 < bid;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * v8);
      }

      while (v4);
      if (v5 != gOALBufferMap + 8 && *(v5 + 32) <= bid)
      {
        result = *(v5 + 40) != 0;
        if (!v3)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

    result = 0;
    if (v3)
    {
LABEL_14:
      v10 = result;
      (*(*v2 + 24))(v2);
      result = v10;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alGetString(40964);
      *v13 = 136315906;
      *&v13[4] = "oalImp.cpp";
      v14 = 1024;
      v15 = 1504;
      v16 = 2048;
      v17 = bid;
      v18 = 2080;
      v19 = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alIsBuffer FAILED: buffer = %ld error = %s", v13, 0x26u);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }

    result = 0;
  }

LABEL_21:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A01F654(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void alBufferData(ALuint bid, ALenum format, const ALvoid *data, ALsizei size, ALsizei freq)
{
  v33 = *MEMORY[0x277D85DE8];
  if (gOALBufferMap)
  {
    CleanUpDeadBufferList();
    v10 = *(gOALBufferMap + 8);
    if (v10)
    {
      v11 = gOALBufferMap + 8;
      do
      {
        v12 = *(v10 + 32);
        v13 = v12 >= bid;
        v14 = v12 < bid;
        if (v13)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * v14);
      }

      while (v10);
      if (v11 != gOALBufferMap + 8 && *(v11 + 32) <= bid)
      {
        v16 = *(v11 + 40);
        if (data && size >= 1 && v16)
        {
          v15 = OALBuffer::AddAudioData(*(v11 + 40), data, size, format, freq);
          atomic_fetch_add((v16 + 280), 0xFFFFFFFF);
          if (!v15)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (!v16)
          {
            goto LABEL_10;
          }

          atomic_fetch_add((v16 + 280), 0xFFFFFFFF);
          v15 = 40963;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_24;
        }

LABEL_20:
        if ((format - 4352) > 3)
        {
          v17 = "UNKNOWN FORMAT";
        }

        else
        {
          v17 = off_278B468A8[format - 4352];
        }

        v19 = 136316674;
        v20 = "oalImp.cpp";
        v21 = 1024;
        v22 = 1540;
        v23 = 2048;
        v24 = bid;
        v25 = 2080;
        v26 = v17;
        v27 = 2048;
        v28 = size;
        v29 = 2048;
        v30 = freq;
        v31 = 2080;
        String = alGetString(v15);
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alBufferData FAILED: buffer %ld : %s : %ld bytes : %ldHz error = %s", &v19, 0x44u);
        goto LABEL_24;
      }
    }
  }

LABEL_10:
  v15 = 40963;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_20;
  }

LABEL_24:
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, v15);
  }

LABEL_26:
  v18 = *MEMORY[0x277D85DE8];
}

void alBufferf(ALuint bid, ALenum param, ALfloat value)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "oalImp.cpp";
    v6 = 1024;
    v7 = 1548;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alBufferf--> there are currently no valid enums for this API", &v4, 0x12u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void alBuffer3f(ALuint bid, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "oalImp.cpp";
    v8 = 1024;
    v9 = 1557;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alBuffer3f--> there are currently no valid enums for this API", &v6, 0x12u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void alBufferfv(ALuint bid, ALenum param, const ALfloat *values)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "oalImp.cpp";
    v6 = 1024;
    v7 = 1566;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alBufferfv--> there are currently no valid enums for this API", &v4, 0x12u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void alBufferi(ALuint bid, ALenum param, ALint value)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "oalImp.cpp";
    v6 = 1024;
    v7 = 1575;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alBufferi--> there are currently no valid enums for this API", &v4, 0x12u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void alBuffer3i(ALuint bid, ALenum param, ALint value1, ALint value2, ALint value3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "oalImp.cpp";
    v8 = 1024;
    v9 = 1584;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alBuffer3i--> there are currently no valid enums for this API", &v6, 0x12u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void alBufferiv(ALuint bid, ALenum param, const ALint *values)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "oalImp.cpp";
    v6 = 1024;
    v7 = 1593;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alBufferiv--> there are currently no valid enums for this API", &v4, 0x12u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void alGetBufferf(ALuint bid, ALenum param, ALfloat *value)
{
  v28 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315906;
    v19 = "oalImp.cpp";
    v20 = 1024;
    v21 = 1602;
    v22 = 2048;
    v23 = bid;
    v24 = 2080;
    ALAttributeString = GetALAttributeString(param);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetBufferf--> buffer %ld : property = %s", &v18, 0x26u);
  }

  if (gOALBufferMap)
  {
    CleanUpDeadBufferList();
    v6 = *(gOALBufferMap + 8);
    if (!v6)
    {
      v11 = 0;
      if (param == 8193)
      {
        goto LABEL_14;
      }

LABEL_17:
      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (pthread_getspecific(gALErrorKey))
      {
        v14 = 0;
        v13 = 0;
        if (v11)
        {
          goto LABEL_19;
        }

LABEL_23:
        if (!v14)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      }

      pthread_setspecific(gALErrorKey, 0xA002);
      v14 = 0;
      v13 = 0;
      if (!v11)
      {
        goto LABEL_23;
      }

LABEL_19:
      atomic_fetch_add((v11 + 280), 0xFFFFFFFF);
      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }

    v7 = gOALBufferMap + 8;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= bid;
      v10 = v8 < bid;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 == gOALBufferMap + 8 || *(v7 + 32) > bid)
    {
      v11 = 0;
      if (gOALBufferMap)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = *(v7 + 40);
      if (gOALBufferMap)
      {
LABEL_13:
        if (param == 8193)
        {
LABEL_14:
          v12 = *(v11 + 304);
          *value = v12;
          atomic_fetch_add((v11 + 280), 0xFFFFFFFF);
          goto LABEL_28;
        }

        goto LABEL_17;
      }
    }

    v13 = 40963;
    v14 = 1;
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v13 = 40963;
LABEL_24:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = GetALAttributeString(param);
    String = alGetString(v13);
    v18 = 136316162;
    v19 = "oalImp.cpp";
    v20 = 1024;
    v21 = 1624;
    v22 = 2048;
    v23 = bid;
    v24 = 2080;
    ALAttributeString = v15;
    v26 = 2080;
    v27 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetBufferf FAILED: buffer %ld : property = %s error = %s", &v18, 0x30u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, v13);
  }

LABEL_28:
  v17 = *MEMORY[0x277D85DE8];
}

const char *GetALAttributeString(int a1)
{
  if (a1 > 40960)
  {
    if (a1 <= 53250)
    {
      switch(a1)
      {
        case 40961:
          return "AL_INVALID_NAME";
        case 53249:
          return "AL_INVERSE_DISTANCE";
        case 53250:
          return "AL_INVERSE_DISTANCE_CLAMPED";
      }
    }

    else
    {
      if (a1 <= 53252)
      {
        if (a1 == 53251)
        {
          return "AL_LINEAR_DISTANCE";
        }

        else
        {
          return "AL_LINEAR_DISTANCE_CLAMPED";
        }
      }

      if (a1 == 53253)
      {
        return "AL_EXPONENT_DISTANCE";
      }

      if (a1 == 53254)
      {
        return "AL_EXPONENT_DISTANCE_CLAMPED";
      }
    }

    return "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
  }

  switch(a1)
  {
    case 4097:
      return "AL_CONE_INNER_ANGLE";
    case 4098:
      return "AL_CONE_OUTER_ANGLE";
    case 4099:
      return "AL_PITCH";
    case 4100:
      return "AL_POSITION";
    case 4101:
      return "AL_DIRECTION";
    case 4102:
      return "AL_VELOCITY";
    case 4103:
      return "AL_LOOPING";
    case 4104:
    case 4107:
    case 4108:
    case 4113:
    case 4114:
    case 4115:
    case 4116:
    case 4119:
    case 4120:
    case 4121:
    case 4122:
    case 4123:
    case 4124:
    case 4125:
    case 4126:
    case 4127:
      return "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
    case 4105:
      return "AL_BUFFER";
    case 4106:
      return "AL_GAIN";
    case 4109:
      return "AL_MIN_GAIN";
    case 4110:
      return "AL_MAX_GAIN";
    case 4111:
      return "AL_ORIENTATION";
    case 4112:
      return "AL_SOURCE_STATE";
    case 4117:
      return "AL_BUFFERS_QUEUED";
    case 4118:
      return "AL_BUFFERS_PROCESSED";
    case 4128:
      return "AL_REFERENCE_DISTANCE";
    case 4129:
      return "AL_ROLLOFF_FACTOR";
    case 4130:
      return "AL_CONE_OUTER_GAIN";
    case 4131:
      return "AL_MAX_DISTANCE";
    case 4132:
      return "AL_SEC_OFFSET";
    case 4133:
      return "AL_SAMPLE_OFFSET";
    case 4134:
      return "AL_BYTE_OFFSET";
    case 4135:
      return "AL_SOURCE_TYPE";
    default:
      if (a1)
      {
        if (a1 != 514)
        {
          return "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
        }

        result = "AL_SOURCE_RELATIVE";
      }

      else
      {
        result = "AL_NONE";
      }

      break;
  }

  return result;
}