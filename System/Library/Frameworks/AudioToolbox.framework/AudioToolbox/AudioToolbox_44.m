void sub_1DDE8B884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<BOOL>>::__init_with_size[abi:ne200100]<std::vector<BOOL>*,std::vector<BOOL>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<BOOL>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDE8B950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*,std::vector<BOOL>*,std::vector<BOOL>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::vector<BOOL>::vector(v4, v6);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 24);
      v3 -= 24;
      v5 = v6;
      if (v6)
      {
        operator delete(v5);
      }
    }
  }

  return a1;
}

uint64_t std::vector<BOOL>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        std::vector<BOOL>::__vallocate[abi:ne200100](a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

void ecMIMO::~ecMIMO(ecMIMO *this)
{
  ecMIMO::~ecMIMO(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5929330;
  v2 = *(this + 119);
  if (v2)
  {
    MultiRadixFFT_Dispose(v2);
  }

  v3 = *(this + 120);
  if (v3)
  {
    MultiRadixFFT_Dispose(v3);
  }

  v4 = *(this + 121);
  if (v4)
  {
    vDSP_DFT_DestroySetup(v4);
  }

  v5 = *(this + 122);
  if (v5)
  {
    vDSP_DFT_DestroySetup(v5);
  }

  v18 = (this + 928);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v6 = *(this + 113);
  if (v6)
  {
    v7 = *(this + 114);
    v8 = *(this + 113);
    if (v7 != v6)
    {
      do
      {
        v7 -= 3;
        v18 = v7;
        std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&v18);
      }

      while (v7 != v6);
      v8 = *(this + 113);
    }

    *(this + 114) = v6;
    operator delete(v8);
  }

  v18 = (this + 880);
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 856);
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 832);
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 808);
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 784);
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 760);
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 736);
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 712);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 688);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 664);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 640);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 616);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 592);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 568);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 544);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 520);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 496);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 472);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 448);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 424);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 400);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v9 = *(this + 47);
  if (v9)
  {
    *(this + 48) = v9;
    operator delete(v9);
  }

  v10 = *(this + 44);
  if (v10)
  {
    *(this + 45) = v10;
    operator delete(v10);
  }

  v11 = *(this + 41);
  if (v11)
  {
    *(this + 42) = v11;
    operator delete(v11);
  }

  v12 = *(this + 38);
  if (v12)
  {
    *(this + 39) = v12;
    operator delete(v12);
  }

  v13 = *(this + 35);
  if (v13)
  {
    *(this + 36) = v13;
    operator delete(v13);
  }

  v14 = *(this + 32);
  if (v14)
  {
    *(this + 33) = v14;
    operator delete(v14);
  }

  v15 = *(this + 29);
  if (v15)
  {
    *(this + 30) = v15;
    operator delete(v15);
  }

  v16 = *(this + 26);
  if (v16)
  {
    *(this + 27) = v16;
    operator delete(v16);
  }

  v17 = *(this + 23);
  if (v17)
  {
    *(this + 24) = v17;
    operator delete(v17);
  }
}

void ecMIMO::ecMIMO(ecMIMO *this)
{
  *this = &unk_1F5929330;
  *(this + 8) = 0;
  *(this + 12) = xmmword_1DE09DD40;
  *(this + 28) = xmmword_1DE09DD50;
  *(this + 44) = 0x10000000200;
  *(this + 13) = 0;
  *(this + 56) = xmmword_1DE09DD60;
  *(this + 10) = 0x3F0000003F4CCCCDLL;
  *(this + 92) = 0x40E000002B8CBCCCLL;
  *(this + 100) = 0x240000000;
  *(this + 108) = 0x3A0000003A800000;
  *(this + 29) = 1065353216;
  *(this + 31) = 1056964608;
  *(this + 37) = -1024458752;
  *(this + 19) = 0x600000000;
  *(this + 164) = 0;
  *(this + 21) = 1;
  *(this + 44) = 0;
  bzero(this + 184, 0x320uLL);
}

BOOL AUSiriECGate::ValidFormat(AUSiriECGate *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    result = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  if (v5 == 1)
  {
    if (a4->mFormatID != 1819304813 || a4->mBytesPerFrame != 4)
    {
      v7 = 0;
      return result && v7;
    }

LABEL_15:
    v7 = a4->mChannelsPerFrame < 9;
    return result && v7;
  }

  if (v5 != 2)
  {
    return result;
  }

  v7 = 0;
  if (a4->mFormatID == 1819304813 && a4->mBytesPerFrame == 4)
  {
    goto LABEL_15;
  }

  return result && v7;
}

uint64_t AUSiriECGate::SupportedNumChannels(AUSiriECGate *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSiriECGate::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 8;
}

uint64_t AUSiriECGate::GetParameterInfo(AUSiriECGate *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 6)
  {
    v6 = *(&off_1E866C570 + a3);
    v7 = dword_1DE0E8FAC[a3];
    v8 = flt_1DE0E8FC8[a3];
    v9 = flt_1DE0E8FE4[a3];
    v10 = flt_1DE0E9000[a3];
    buffer->cfNameString = v6;
    buffer->flags = 1207959552;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = v7;
    buffer->minValue = v8;
    buffer->maxValue = v9;
    buffer->defaultValue = v10;
    buffer->flags |= 0x91000000;
  }

  return result;
}

uint64_t AUSiriECGate::GetParameterList(AUSiriECGate *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 2) = 0x500000004;
    a3[6] = 6;
  }

  result = 0;
  *a4 = 7;
  return result;
}

uint64_t AUSiriECGate::Render(caulk::deferred_logger **this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = _os_log_pack_size();
  message = caulk::deferred_logger::create_message(this[113], v8 + 88, 2);
  if (message)
  {
    v10 = message;
    *_os_log_pack_fill() = 0;
    caulk::concurrent::messenger::enqueue(*(this[113] + 2), v10);
  }

  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 10), 0);
  if (!Element || (v12 = Element, (v13 = ausdk::AUScope::GetElement((this + 16), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v14 = v13;
  v15 = ausdk::AUScope::GetElement((this + 10), 0);
  if (!v15 || !*(v15 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 10), 0);
  if (v17)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v14 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    ausdk::AUBufferList::CopyBufferContentsTo(v12 + 6, (*(v14 + 152) + 48));
    return 0;
  }

  return result;
}

uint64_t AUSiriECGate::ProcessMultipleBufferLists(AUSiriECGate *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (*(this + 84) == a3)
  {
    result = 4294956428;
    if (a4 == 3 && a6 == 2)
    {
      v10 = a5[1];
      v11 = a5[2];
      v40 = *a7;
      v41 = *a5;
      v39 = a7[1];
      if (*(this + 134))
      {
        v12 = 0;
        v13 = 0;
        p_mData = &v10->mBuffers[0].mData;
        v15 = (v41 + 16);
        do
        {
          memmove(*(*(this + 82) + v12), (*(*(this + 82) + v12) + 4 * a3), 4 * (*(this + 139) - a3));
          v16 = *v15;
          v15 += 2;
          memcpy((*(*(this + 82) + v12) + 4 * (*(this + 139) - a3)), v16, 4 * a3);
          memmove(*(*(this + 88) + v12), (*(*(this + 88) + v12) + 4 * a3), 4 * (*(this + 139) - a3));
          v17 = *p_mData;
          p_mData += 2;
          memcpy((*(*(this + 88) + v12) + 4 * (*(this + 139) - a3)), v17, 4 * a3);
          ++v13;
          v12 += 24;
        }

        while (v13 < *(this + 134));
      }

      if (*(this + 135))
      {
        v18 = 0;
        v19 = 0;
        v20 = &v11->mBuffers[0].mData;
        do
        {
          memmove(*(*(this + 85) + v18), (*(*(this + 85) + v18) + 4 * a3), 4 * (*(this + 139) - a3));
          v21 = *v20;
          v20 += 2;
          memcpy((*(*(this + 85) + v18) + 4 * (*(this + 139) - a3)), v21, 4 * a3);
          ++v19;
          v22 = *(this + 135);
          v18 += 24;
        }

        while (v19 < v22);
      }

      else
      {
        LODWORD(v22) = 0;
      }

      if (*(this + 132) || *(this + 601) == 1 && *(this + 600) == 1)
      {
        if (*(this + 134))
        {
          v28 = 0;
          v29 = &v10->mBuffers[0].mData;
          v30 = &v39->mBuffers[0].mData;
          v31 = (v41 + 16);
          v32 = (v40 + 16);
          do
          {
            v34 = *v32;
            v32 += 2;
            v33 = v34;
            v35 = *v31;
            v31 += 2;
            memcpy(v33, v35, 4 * *(this + 137));
            v37 = *v30;
            v30 += 2;
            v36 = v37;
            v38 = *v29;
            v29 += 2;
            memcpy(v36, v38, 4 * *(this + 137));
            ++v28;
          }

          while (v28 < *(this + 134));
        }
      }

      else
      {
        AUSiriECGate::RunGCCPHAT(this, this + 82, *(this + 134), this + 85, v22, this + 88, this + 76, this + 79);
        AUSiriECGate::ApplyGain(this, this + 82, this + 88, this + 76, this + 79, v41, v10, v40, v39, *(this + 67), HIDWORD(*(this + 67)), *(this + 137));
      }

      return 0;
    }
  }

  else
  {
    v23 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(*(this + 113), v23 + 88, 16);
    if (message)
    {
      v25 = message;
      v26 = _os_log_pack_fill();
      v27 = *(this + 84);
      *v26 = 67109376;
      *(v26 + 4) = a3;
      *(v26 + 8) = 1024;
      *(v26 + 10) = v27;
      caulk::concurrent::messenger::enqueue(*(*(this + 113) + 16), v25);
    }

    return 4294956422;
  }

  return result;
}

void AUSiriECGate::RunGCCPHAT(uint64_t a1, void *a2, uint64_t a3, void *a4, unsigned int a5, void *a6, void *a7, void *a8)
{
  v41[1] = v41;
  v53 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v16 = (v41 - ((v15 + 15) & 0x7FFFFFFF0));
  v43 = INFINITY;
  v44 = 0.00000011921;
  v42.i64[0] = v17;
  if (v17)
  {
    v18 = 0;
    v19 = 24 * v42.u32[0];
    do
    {
      vDSP_vclr(*(a1 + 800), 1, *(a1 + 560));
      memcpy(*(a1 + 800), *(*a2 + v18), 4 * *(a1 + 556));
      v20 = (*(*(a1 + 728) + v18) + 4 * *(a1 + 564));
      v49.realp = *(*(a1 + 728) + v18);
      v49.imagp = v20;
      v21 = *(a1 + 896);
      if (v21)
      {
        MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v21, *(a1 + 800), &v49, 1.0);
      }

      v18 += 24;
    }

    while (v19 != v18);
  }

  if (a5)
  {
    v22 = 0;
    do
    {
      vDSP_vclr(*(a1 + 800), 1, *(a1 + 560));
      memcpy((*(a1 + 800) + 4 * *(a1 + 556)), *(*a4 + v22), 4 * *(a1 + 556));
      v23 = (*(*(a1 + 752) + v22) + 4 * *(a1 + 564));
      v48.realp = *(*(a1 + 752) + v22);
      v48.imagp = v23;
      v24 = *(a1 + 896);
      if (v24)
      {
        MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v24, *(a1 + 800), &v48, 1.0);
      }

      v22 += 24;
    }

    while (24 * a5 != v22);
  }

  if (v42.i32[0])
  {
    v25 = 0;
    v26 = v42.u32[0];
    v27 = 24 * v42.u32[0];
    do
    {
      vDSP_vclr(*(a1 + 800), 1, *(a1 + 560));
      memcpy((*(a1 + 800) + 4 * *(a1 + 556)), *(*a6 + v25), 4 * *(a1 + 556));
      v28 = (*(*(a1 + 776) + v25) + 4 * *(a1 + 564));
      v47.realp = *(*(a1 + 776) + v25);
      v47.imagp = v28;
      v29 = *(a1 + 896);
      if (v29)
      {
        MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v29, *(a1 + 800), &v47, 1.0);
      }

      v25 += 24;
    }

    while (v27 != v25);
    v30 = 0;
    v42 = vdupq_n_s64(4uLL);
    do
    {
      v31 = (*(*(a1 + 728) + 24 * v30) + 4 * *(a1 + 564));
      v49.realp = *(*(a1 + 728) + 24 * v30);
      v49.imagp = v31;
      if (a5)
      {
        v32 = 0;
        do
        {
          v33 = *(a1 + 564);
          v48.realp = *(*(a1 + 752) + v32);
          v48.imagp = &v48.realp[v33];
          v46.realp = *(a1 + 824);
          v46.imagp = &v46.realp[v33];
          __B = vaddq_s64(v49, v42);
          __A = vaddq_s64(v48, v42);
          __C = vaddq_s64(v46, v42);
          vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, (v33 - 1), -1);
          *v46.realp = *v48.realp * *v49.realp;
          *v46.imagp = *v48.imagp * *v49.imagp;
          vDSP_zvabs(&v46, 1, v16, 1, *(a1 + 564));
          vDSP_vclip(v16, 1, &v44, &v43, v16, 1, *(a1 + 564));
          v34 = *(a1 + 564);
          v45.realp = *(a1 + 848);
          v45.imagp = &v45.realp[v34];
          vDSP_zrvdiv(&v46, 1, v16, 1, &v45, 1, v34);
          v35 = *(a1 + 896);
          if (v35)
          {
            MultiRadixRealFFT::RealOutOfPlaceInverseTransform(v35, &v45, *(*(*a7 + 24 * v30) + v32));
          }

          v36 = *(*(*a7 + 24 * v30) + v32);
          MEMORY[0x1E12BE940](v36, 1, a1 + 592, v36, 1, *(a1 + 560));
          v32 += 24;
        }

        while (24 * a5 != v32);
      }

      ++v30;
    }

    while (v30 != v26);
    v37 = 0;
    v42 = vdupq_n_s64(4uLL);
    do
    {
      v38 = *(a1 + 564);
      v49.realp = *(*(a1 + 728) + v37);
      v49.imagp = &v49.realp[v38];
      v47.realp = *(*(a1 + 776) + v37);
      v47.imagp = &v47.realp[v38];
      v46.realp = *(a1 + 824);
      v46.imagp = &v46.realp[v38];
      __B = vaddq_s64(v49, v42);
      __A = vaddq_s64(v47, v42);
      __C = vaddq_s64(v46, v42);
      vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, (v38 - 1), -1);
      *v46.realp = *v47.realp * *v49.realp;
      *v46.imagp = *v47.imagp * *v49.imagp;
      vDSP_zvabs(&v46, 1, v16, 1, *(a1 + 564));
      vDSP_vclip(v16, 1, &v44, &v43, v16, 1, *(a1 + 564));
      v39 = *(a1 + 564);
      v45.realp = *(a1 + 848);
      v45.imagp = &v45.realp[v39];
      vDSP_zrvdiv(&v46, 1, v16, 1, &v45, 1, v39);
      v40 = *(a1 + 896);
      if (v40)
      {
        MultiRadixRealFFT::RealOutOfPlaceInverseTransform(v40, &v45, *(*a8 + v37));
      }

      MEMORY[0x1E12BE940](*(*a8 + v37), 1, a1 + 592, *(*a8 + v37), 1, *(a1 + 560));
      v37 += 24;
    }

    while (24 * v26 != v37);
  }
}

void AUSiriECGate::ApplyGain(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, unsigned int a12)
{
  v51 = a5;
  v43 = a2;
  v44 = a3;
  __I[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v43 - ((v14 + 15) & 0x7FFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v43 - v20;
  v50 = v22;
  if (v22)
  {
    v23 = 0;
    __C = 0;
    __I[0] = 0;
    v52 = 0;
    v47 = v19 + 8;
    v48 = v17 + 8;
    v45 = a9 + 8;
    v46 = v18 + 8;
    v49 = a11;
    while (1)
    {
      if (v49)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0.0;
        do
        {
          vDSP_maxvi(*(*(*a4 + 24 * v23) + v24), 1, &__C + 1, __I, *(a1 + 560));
          if (*(&__C + 1) > v26)
          {
            v25 = LODWORD(__I[0]) - *(a1 + 556);
            v26 = *(&__C + 1);
          }

          v24 += 24;
        }

        while (24 * a11 != v24);
      }

      else
      {
        v25 = 0;
        v26 = 0.0;
      }

      vDSP_maxvi(*(*v51 + 24 * v23), 1, &__C, __I, *(a1 + 560));
      v27 = *(a1 + 556);
      v28 = LODWORD(__I[0]) - v27;
      v29 = *&__C;
      v30 = *(*(a1 + 872) + 24 * v23);
      *v30 = __C;
      *(v30 + 4) = v26;
      *(v30 + 8) = v28;
      *(v30 + 12) = v25;
      v31 = *(a1 + 588);
      if (v29 >= v31)
      {
        if (v28 < 0)
        {
          v28 = -v28;
        }

        if (v28 < *(a1 + 568))
        {
          break;
        }
      }

      if (v26 >= v31)
      {
        v32 = v25 - *(a1 + 572);
        if (v32 < 0)
        {
          v32 = *(a1 + 572) - v25;
        }

        if (v32 < *(a1 + 568))
        {
          break;
        }
      }

      *&v15[4 * v23] = 1065353216;
      *&v21[4 * v23] = 1065353216;
      v35 = 0.0;
      v37 = 0.0;
      *(v30 + 24) = 0;
LABEL_34:
      *(v30 + 16) = v35;
      *(v30 + 20) = v37;
      MEMORY[0x1E12BE940](*(v48 + 16 * v23 + 8), 1, &v15[4 * v23], *(v47 + 16 * v23 + 8), 1, a12);
      MEMORY[0x1E12BE940](*(v46 + 16 * v23 + 8), 1, &v21[4 * v23], *(v45 + 16 * v23 + 8), 1, a12);
      if (++v23 == v50)
      {
        return;
      }
    }

    *(v30 + 24) = 1065353216;
    v33 = *(*v44 + 24 * v23);
    vDSP_rmsqv(*(*v43 + 24 * v23), 1, &v52 + 1, v27);
    vDSP_rmsqv(v33, 1, &v52, *(a1 + 556));
    v34 = log10f(*(&v52 + 1)) * 20.0;
    v35 = (log10f(*&v52) * 20.0) - v34;
    v36 = *(a1 + 580);
    if (v35 >= 0.0)
    {
      if (v35 < v36)
      {
        v37 = v35 - v36;
LABEL_30:
        v38 = 0.0;
        goto LABEL_31;
      }

      *(a1 + 600) = 1;
    }

    else
    {
      if ((v35 - v36) >= *(a1 + 596))
      {
        v37 = v35 - v36;
      }

      else
      {
        v37 = *(a1 + 596);
      }

      if (*(a1 + 600) != 1)
      {
        v38 = (v36 + v37) - v35;
LABEL_31:
        v39 = _os_log_pack_size();
        message = caulk::deferred_logger::create_message(*(a1 + 904), v39 + 88, 1);
        if (message)
        {
          v41 = message;
          v42 = _os_log_pack_fill();
          *v42 = 67109888;
          *(v42 + 4) = v23;
          *(v42 + 8) = 2048;
          *(v42 + 10) = v35;
          *(v42 + 18) = 2048;
          *(v42 + 20) = v37;
          *(v42 + 28) = 2048;
          *(v42 + 30) = v38;
          caulk::concurrent::messenger::enqueue(*(*(a1 + 904) + 16), v41);
        }

        *&v15[4 * v23] = __exp10f(v37 / 20.0);
        *&v21[4 * v23] = __exp10f(v38 / 20.0);
        v30 = *(*(a1 + 872) + 24 * v23);
        goto LABEL_34;
      }

      *(*(*(a1 + 872) + 24 * v23) + 24) = 0;
    }

    v37 = 0.0;
    goto LABEL_30;
  }
}

uint64_t AUSiriECGate::SetParameter(AUSiriECGate *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  ++*(this + 133);
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v7, a2, a4);
  return 0;
}

uint64_t AUSiriECGate::SetProperty(AUSiriECGate *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    *(this + 132) = *a5;
    v7 = _os_log_pack_size();
    result = caulk::deferred_logger::create_message(*(this + 113), v7 + 88, 2);
    if (result)
    {
      v8 = result;
      v9 = _os_log_pack_fill();
      v10 = *(this + 132);
      *v9 = 67109120;
      v9[1] = v10;
      caulk::concurrent::messenger::enqueue(*(*(this + 113) + 16), v8);
      return 0;
    }
  }

  return result;
}

uint64_t AUSiriECGate::GetProperty(AUSiriECGate *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 4784)
  {
    if (a2 == 21)
    {
      result = 0;
      v9 = *(this + 132);
    }

    else
    {
      if (a2 != 3700)
      {
        return result;
      }

      result = 0;
      v9 = *(this + 376);
    }

    *a5 = v9;
  }

  else
  {
    if (a2 == 4785)
    {
      v10 = applesauce::CF::details::make_CFArrayRef<std::vector<std::vector<float>>>(this + 76);
    }

    else
    {
      if (a2 == 4786)
      {
        v8 = (this + 632);
      }

      else
      {
        if (a2 != 4787)
        {
          return result;
        }

        v8 = (this + 872);
      }

      v10 = applesauce::CF::details::make_CFArrayRef<std::vector<float>>(v8);
    }

    v11 = v10;
    result = 0;
    *a5 = v11;
  }

  return result;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<std::vector<std::vector<float>>>(uint64_t **a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<applesauce::CF::ArrayRef>::reserve(&v14, v2);
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 3)
  {
    memset(v13, 0, sizeof(v13));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v13, *v4, v4[1], 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3));
    v5 = v15;
    if (v15 >= v16)
    {
      v7 = (v15 - v14) >> 3;
      if ((v7 + 1) >> 61)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v8 = (v16 - v14) >> 2;
      if (v8 <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      if (v16 - v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      v20 = &v14;
      if (v9)
      {
        std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v9);
      }

      v10 = (8 * v7);
      v17[0] = 0;
      v17[1] = v10;
      v18 = v10;
      v19 = 0;
      *v10 = applesauce::CF::details::make_CFArrayRef<std::vector<float>>(v13);
      v18 = v10 + 1;
      std::vector<applesauce::CF::ArrayRef>::__swap_out_circular_buffer(&v14, v17);
      v6 = v15;
      std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(v17);
    }

    else
    {
      *v5 = applesauce::CF::details::make_CFArrayRef<std::vector<float>>(v13);
      v6 = v5 + 1;
    }

    v15 = v6;
    v17[0] = v13;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  v11 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::ArrayRef>(&v14);
  v17[0] = &v14;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](v17);
  return v11;
}

void sub_1DDE8D1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<std::vector<float>>(uint64_t **a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::vector<applesauce::CF::ArrayRef>::reserve(&v16, v2);
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 3)
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *v4, v4[1], (v4[1] - *v4) >> 2);
    v5 = v17;
    if (v17 >= v18)
    {
      v7 = (v17 - v16) >> 3;
      if ((v7 + 1) >> 61)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v8 = (v18 - v16) >> 2;
      if (v8 <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      if (v18 - v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      v22 = &v16;
      if (v9)
      {
        std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v9);
      }

      v10 = (8 * v7);
      v19[0] = 0;
      v19[1] = v10;
      v20 = v10;
      v21 = 0;
      *v10 = applesauce::CF::details::make_CFArrayRef<float>(&__p);
      v20 = v10 + 1;
      std::vector<applesauce::CF::ArrayRef>::__swap_out_circular_buffer(&v16, v19);
      v6 = v17;
      std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(v19);
    }

    else
    {
      *v5 = applesauce::CF::details::make_CFArrayRef<float>(&__p);
      v6 = v5 + 1;
    }

    v17 = v6;
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  v11 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::ArrayRef>(&v16);
  v19[0] = &v16;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](v19);
  return v11;
}

void sub_1DDE8D3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  __p = &a13;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::ArrayRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t AUSiriECGate::GetPropertyInfo(AUSiriECGate *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 4784)
  {
    if (a2 == 21)
    {
      *a6 = 1;
    }

    else
    {
      if (a2 != 3700)
      {
        return result;
      }

      *a6 = 0;
    }

    v8 = 4;
  }

  else
  {
    switch(a2)
    {
      case 4785:
        *a6 = 0;
        v9 = *(this + 134);
        v10 = *(this + 135);
        v11 = *(this + 140);
        v12 = v9 * v10;
        break;
      case 4786:
        *a6 = 0;
        v12 = *(this + 134);
        v11 = *(this + 140);
        break;
      case 4787:
        *a6 = 0;
        v8 = 28 * *(this + 134);
        goto LABEL_16;
      default:
        return result;
    }

    v8 = 4 * v12 * v11;
  }

LABEL_16:
  result = 0;
  *a5 = v8;
  return result;
}

uint64_t AUSiriECGate::Reset(caulk::deferred_logger **this)
{
  v2 = _os_log_pack_size();
  message = caulk::deferred_logger::create_message(this[113], v2 + 88, 2);
  if (message)
  {
    v4 = message;
    *_os_log_pack_fill() = 0;
    caulk::concurrent::messenger::enqueue(*(this[113] + 2), v4);
  }

  v5 = this[82];
  if (this[83] != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      vDSP_vclr(*(v5 + v6), 1, (*(v5 + v6 + 8) - *(v5 + v6)) >> 2);
      ++v7;
      v5 = this[82];
      v6 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((this[83] - v5) >> 3) > v7);
  }

  v8 = this[88];
  if (this[89] != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      vDSP_vclr(*(v8 + v9), 1, (*(v8 + v9 + 8) - *(v8 + v9)) >> 2);
      ++v10;
      v8 = this[88];
      v9 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((this[89] - v8) >> 3) > v10);
  }

  v11 = this[85];
  if (this[86] != v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      vDSP_vclr(*(v11 + v12), 1, (*(v11 + v12 + 8) - *(v11 + v12)) >> 2);
      ++v13;
      v11 = this[85];
      v12 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((this[86] - v11) >> 3) > v13);
  }

  return 0;
}

uint64_t AUSiriECGate::Initialize(AUSiriECGate *this)
{
  v2 = _os_log_pack_size();
  message = caulk::deferred_logger::create_message(*(this + 113), v2 + 88, 2);
  if (message)
  {
    v4 = message;
    *_os_log_pack_fill() = 0;
    caulk::concurrent::messenger::enqueue(*(*(this + 113) + 16), v4);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_38;
  }

  if (*(Element + 88) != 1819304813)
  {
    v6 = caulk::deferred_logger::create_message(*(this + 113), v2 + 88, 16);
    if (v6)
    {
      v7 = v6;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(*(this + 113) + 16), v7);
    }
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0 || (*(this + 138) = ausdk::AUElement::GetParameter(v8, 0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v11 & 1) == 0) || (*(this + 145) = ausdk::AUElement::GetParameter(v10, 1u), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v13 & 1) == 0) || (*(this + 147) = ausdk::AUElement::GetParameter(v12, 2u), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0) || (*(this + 149) = ausdk::AUElement::GetParameter(v14, 3u), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v17 & 1) == 0) || (*(this + 142) = ausdk::AUElement::GetParameter(v16, 4u), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v19 & 1) == 0) || (*(this + 143) = ausdk::AUElement::GetParameter(v18, 5u), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v21 & 1) == 0))
  {
    abort();
  }

  *(this + 601) = ausdk::AUElement::GetParameter(v20, 6u);
  v22 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v22 || (v23 = v22, (v24 = ausdk::AUScope::GetElement((this + 80), 2u)) == 0) || (v25 = v24, (v26 = ausdk::AUScope::GetElement((this + 80), 1u)) == 0) || (v27 = v26, (v28 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
LABEL_38:
    ausdk::Throw(0xFFFFD583);
  }

  v29 = v28;
  v30 = *(v23 + 80);
  if (v30 != *(v25 + 80) || v30 != *(v27 + 80) || v30 != *(v28 + 80))
  {
    v42 = _os_log_pack_size();
    v43 = caulk::deferred_logger::create_message(*(this + 113), v42 + 88, 16);
    if (!v43)
    {
      return 4294956428;
    }

    v44 = v43;
    v45 = _os_log_pack_fill();
    v46 = *(v23 + 80);
    v47 = *(v25 + 80);
    v48 = *(v27 + 80);
    v49 = *(v29 + 80);
    *v45 = 134218752;
    *(v45 + 4) = v46;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v47;
    *(v45 + 22) = 2048;
    *(v45 + 24) = v48;
    *(v45 + 32) = 2048;
    *(v45 + 34) = v49;
LABEL_35:
    caulk::concurrent::messenger::enqueue(*(*(this + 113) + 16), v44);
    return 4294956428;
  }

  v31 = *(v23 + 100);
  if (v31 != *(v25 + 100) || v31 != *(v27 + 100) || v31 != *(v28 + 100))
  {
    v50 = _os_log_pack_size();
    v51 = caulk::deferred_logger::create_message(*(this + 113), v50 + 88, 16);
    if (!v51)
    {
      return 4294956428;
    }

    v44 = v51;
    v52 = _os_log_pack_fill();
    v53 = *(v23 + 100);
    v54 = *(v25 + 100);
    v55 = *(v27 + 100);
    v56 = *(v29 + 100);
    *v52 = 67109888;
    *(v52 + 4) = v53;
    *(v52 + 8) = 1024;
    *(v52 + 10) = v54;
    *(v52 + 14) = 1024;
    *(v52 + 16) = v55;
    *(v52 + 20) = 1024;
    *(v52 + 22) = v56;
    goto LABEL_35;
  }

  v32 = *(v23 + 108);
  if (v32 == *(v27 + 108) && v32 == *(v28 + 108))
  {
    *(this + 134) = v32;
    v33 = *(v25 + 108);
    *(this + 135) = v33;
    *(this + 136) = v30;
    *(this + 137) = *(this + 84);
    v34 = vcvtps_u32_f32((v30 * *(this + 138)) / 1000.0);
    if (v31 <= v34)
    {
      v31 = v34;
    }

    v35 = -__clz(v31 - 1);
    *(this + 139) = 1 << v35;
    *(this + 144) = 1065353216;
    *(this + 146) = 0;
    *(this + 140) = 2 << v35;
    *(this + 141) = (1 << v35) & 0x7FFFFFFF;
    *(this + 148) = 1.0 / (2 << v35);
    ecutils::fcn_vector_init<float>(this + 608, v32, v33, 2 << v35, 0.0);
    ecutils::fcn_vector_init<float>(this + 79, *(this + 134), *(this + 140), 0.0);
    ecutils::fcn_vector_init<float>(this + 82, *(this + 134), *(this + 139), 0.0);
    ecutils::fcn_vector_init<float>(this + 88, *(this + 134), *(this + 139), 0.0);
    ecutils::fcn_vector_init<float>(this + 85, *(this + 135), *(this + 139), 0.0);
    v36 = *(this + 140);
    v64 = 0;
    std::vector<float>::assign(this + 100, v36, &v64, v37);
    ecutils::fcn_vector_init<float>(this + 91, *(this + 134), 2 * *(this + 141), 0.0);
    ecutils::fcn_vector_init<float>(this + 94, *(this + 135), 2 * *(this + 141), 0.0);
    ecutils::fcn_vector_init<float>(this + 97, *(this + 134), 2 * *(this + 141), 0.0);
    v38 = (2 * *(this + 141));
    v65 = 0;
    std::vector<float>::assign(this + 103, v38, &v65, v39);
    v40 = (2 * *(this + 141));
    v66 = 0;
    std::vector<float>::assign(this + 106, v40, &v66, v41);
    ecutils::fcn_vector_init<float>(this + 109, *(this + 134), 7u, 0.0);
    MultiRadixRealFFT_Create();
  }

  v57 = _os_log_pack_size();
  v58 = caulk::deferred_logger::create_message(*(this + 113), v57 + 88, 16);
  if (v58)
  {
    v44 = v58;
    v59 = _os_log_pack_fill();
    v60 = *(v23 + 108);
    v61 = *(v27 + 108);
    v62 = *(v29 + 108);
    *v59 = 67109632;
    *(v59 + 4) = v60;
    *(v59 + 8) = 1024;
    *(v59 + 10) = v61;
    *(v59 + 14) = 1024;
    *(v59 + 16) = v62;
    goto LABEL_35;
  }

  return 4294956428;
}

void AUSiriECGate::~AUSiriECGate(caulk::deferred_logger **this)
{
  AUSiriECGate::~AUSiriECGate(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59293F0;
  v2 = _os_log_pack_size();
  message = caulk::deferred_logger::create_message(this[113], v2 + 88, 2);
  if (message)
  {
    v4 = message;
    *_os_log_pack_fill() = 0;
    caulk::concurrent::messenger::enqueue(*(this[113] + 2), v4);
  }

  v5 = this[114];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v9 = (this + 109);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v6 = this[106];
  if (v6)
  {
    this[107] = v6;
    operator delete(v6);
  }

  v7 = this[103];
  if (v7)
  {
    this[104] = v7;
    operator delete(v7);
  }

  v8 = this[100];
  if (v8)
  {
    this[101] = v8;
    operator delete(v8);
  }

  v9 = (this + 97);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 94);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 91);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 88);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 85);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 82);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 79);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 76);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  ausdk::AUBase::~AUBase(this);
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::ValidFormat(AUMagnitudeDifferenceNoiseSuppressorV4 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if ((v5 - 1) <= 1)
  {
    if (a4->mFormatID == 1718773105)
    {
      v7 = result;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      v8 = *&a4->mBytesPerPacket;
      v9[0] = *&a4->mSampleRate;
      v9[1] = v8;
      v10 = *&a4->mBitsPerChannel;
      DWORD2(v9[0]) = 1819304813;
      v11 = 0;
      LODWORD(result) = CAStreamBasicDescription::IdentifyCommonPCMFormat(v9, &v11, 0);
      if (v11 != 4)
      {
        LODWORD(result) = 0;
      }
    }

    if (a4->mChannelsPerFrame == 1)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::SupportedNumChannels(AUMagnitudeDifferenceNoiseSuppressorV4 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMagnitudeDifferenceNoiseSuppressorV4::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::GetParameterValueStrings(AUMagnitudeDifferenceNoiseSuppressorV4 *this, int a2, int a3, const __CFArray **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return 4294956430;
  }

  result = 0;
  if (!a3)
  {
    if (a4)
    {
      v7 = xmmword_1E866C5A8;
      v8 = @"TwoMic";
      v6 = CFArrayCreate(0, &v7, 3, 0);
      result = 0;
      *a4 = v6;
    }
  }

  return result;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::GetParameterInfo(AUMagnitudeDifferenceNoiseSuppressorV4 *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  switch(a3)
  {
    case 0:
      buffer->cfNameString = @"noise supp mode";
      buffer->flags = 1207959552;
      CFStringGetCString(@"noise supp mode", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v6 = 0x4000000000000000;
      goto LABEL_9;
    case 1:
      buffer->cfNameString = @"noise supp level";
      buffer->flags = 1207959552;
      CFStringGetCString(@"noise supp level", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 3256877056;
      v14 = -24.0;
      goto LABEL_17;
    case 2:
      v13 = @"(I) speech probability";
      goto LABEL_31;
    case 3:
      buffer->cfNameString = @"SPL Meter Calibration";
      buffer->flags = 1207959552;
      CFStringGetCString(@"SPL Meter Calibration", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x42C80000C1C80000;
      v14 = 80.0;
      goto LABEL_17;
    case 4:
      buffer->cfNameString = @"SPL Time Constant";
      buffer->flags = 1207959552;
      CFStringGetCString(@"SPL Time Constant", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v6 = 0x4120000000000000;
LABEL_9:
      *&buffer->minValue = v6;
      v14 = 2.0;
LABEL_17:
      v17 = buffer->flags | 0x80000000;
      goto LABEL_29;
    case 5:
      v13 = @"occlusion mode";
      goto LABEL_31;
    case 6:
      v13 = @"(I) occ_2ndMic confd";
      goto LABEL_31;
    case 7:
      v13 = @"(I) ns_auto_mode";
      goto LABEL_31;
    case 8:
      v13 = @"auto_blend_alpha";
      goto LABEL_31;
    case 9:
      v15 = @"(I) noise SPL (gated PS)";
      goto LABEL_27;
    case 10:
      v15 = @"(I) noise SPL (one mic)";
LABEL_27:
      buffer->cfNameString = v15;
      buffer->flags = 1207959552;
      CFStringGetCString(v15, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x42C8000041A00000;
      v14 = 40.0;
      goto LABEL_28;
    case 11:
      v13 = @"(I) 1mic vad";
      goto LABEL_31;
    case 12:
      v13 = @"(I) 2mic vad";
      goto LABEL_31;
    case 13:
      buffer->cfNameString = @"auto NS level";
      buffer->flags = 1207959552;
      CFStringGetCString(@"auto NS level", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0xC0A00000C1C80000;
      v14 = -24.0;
LABEL_28:
      v17 = buffer->flags | 0x8000;
LABEL_29:
      buffer->defaultValue = v14;
      buffer->flags = v17;
      return result;
    case 14:
      buffer->cfNameString = @"AGC dynamic gain";
      buffer->flags = 1207959552;
      CFStringGetCString(@"AGC dynamic gain", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-20.0 }

      break;
    case 15:
      buffer->cfNameString = @"AGC post gain";
      buffer->flags = 1207959552;
      CFStringGetCString(@"AGC post gain", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-20.0 }

      *&buffer->minValue = _D0;
      buffer->defaultValue = 0.0;
      return result;
    case 16:
      v7 = @"hb minus lb_sep";
      goto LABEL_25;
    case 17:
      v13 = @"P_OCCL_based_alpha";
      goto LABEL_31;
    case 18:
      v7 = @"lb_sep";
LABEL_25:
      buffer->cfNameString = v7;
      buffer->flags = 1207959552;
      CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      _D0 = 0x41A00000C0A00000;
      break;
    case 19:
      buffer->cfNameString = @"Test_Switch";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Test_Switch", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v18 = buffer->flags | 0x80000000;
      goto LABEL_33;
    case 20:
      v13 = @"DL Speech Prob";
      goto LABEL_31;
    case 21:
      v13 = @"Inv 2mic vad";
LABEL_31:
      buffer->cfNameString = v13;
      buffer->flags = 1207959552;
      CFStringGetCString(v13, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      _D0 = 0x3F80000000000000;
      break;
    case 22:
      buffer->cfNameString = @"tmv - itmv";
      buffer->flags = 1207959552;
      CFStringGetCString(@"tmv - itmv", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      _D0 = 0x3FC00000BF000000;
      break;
    default:
      return 4294956418;
  }

  *&buffer->minValue = _D0;
  v18 = buffer->flags | 0x8000;
LABEL_33:
  buffer->defaultValue = 0.0;
  buffer->flags = v18;
  return result;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::GetParameterList(AUMagnitudeDifferenceNoiseSuppressorV4 *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = xmmword_1DE09DD70;
      *(a3 + 1) = xmmword_1DE09DD80;
      *(a3 + 2) = xmmword_1DE09DD90;
      *(a3 + 3) = xmmword_1DE09DDA0;
      *(a3 + 8) = 0x1600000015;
    }

    v4 = 18;
  }

  *a4 = v4;
  return 0;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::Render(AUMagnitudeDifferenceNoiseSuppressorV4 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  v9 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v12)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    v13 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (!v13 || !*(v13 + 172))
    {
      v15 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
    if (v14)
    {
      result = ausdk::AUInputElement::PullInput(result, a2, a3, 1, a4);
      if (!result)
      {
LABEL_12:
        v15 = ausdk::AUBase::Input(this, 1u);
LABEL_17:
        if (!*(v15 + 144))
        {
          goto LABEL_27;
        }

        v16 = *(v15 + 152);
        v17 = ausdk::AUScope::GetElement((this + 80), 0);
        if (v17)
        {
          if (!*(v17 + 144))
          {
            goto LABEL_27;
          }

          v20[0] = *(v17 + 152) + 48;
          v20[1] = v16 + 48;
          v20[2] = v16 + 48;
          v18 = ausdk::AUScope::GetElement((this + 80), 0);
          if (v18)
          {
            if (*(v18 + 144))
            {
              v20[3] = *(v18 + 152) + 48;
              if (*(v10 + 144))
              {
                v19[0] = *(v10 + 152) + 48;
                v19[1] = v19[0];
                v19[2] = v19[0];
                v19[3] = v19[0];
                return (*(*this + 184))(this, a2, a4, 4, v20, 4, v19);
              }
            }

LABEL_27:
            ausdk::Throw(0xFFFFFFFFLL);
          }
        }

LABEL_24:
        ausdk::Throw(0xFFFFD583);
      }
    }

    else if (!result)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::ProcessMultipleBufferLists(AUMagnitudeDifferenceNoiseSuppressorV4 *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  result = 4294956419;
  if (a4 >= 4 && a6 >= 4)
  {
    if ((*(*this + 576))(this, a2))
    {
      v11 = a7[2];
      mDataByteSize = v11->mBuffers[0].mDataByteSize;
      if (mDataByteSize >= 4)
      {
        memset_pattern16(v11->mBuffers[0].mData, &unk_1DE095DF0, 4 * ((mDataByteSize >> 2) - 1) + 4);
      }

      if (*(this + 540) == *(this + 541))
      {
        mData = (*a5)->mBuffers[0].mData;
        v14 = (*a7)->mBuffers[0].mData;
        v15 = (*a7)->mBuffers[0].mDataByteSize;
LABEL_45:
        memcpy(v14, mData, v15);
        return 0;
      }

      bzero((*a7)->mBuffers[0].mData, (*a7)->mBuffers[0].mDataByteSize);
      return 0;
    }

    v16 = *(this + 133);
    if (v16 != *(this + 134))
    {
      AUMagnitudeDifferenceNoiseSuppressorV4::UpdateParameters(this);
      *(this + 134) = v16;
    }

    v17 = (*a5)->mBuffers[0].mData;
    v18 = a5[1]->mBuffers[0].mData;
    v19 = *(this + 68);
    *(v19 + 600) = a5[2]->mBuffers[0].mData;
    if (*(this + 540) == 1)
    {
      v20 = *(this + 84);
      v66[0] = v17;
      v66[1] = &v17[4 * v20];
      v65[0] = v18;
      v65[1] = &v18[4 * v20];
      CNoiseSuppressorV4::speex_preprocess_run_freq(v19, v66, v65, 0);
    }

    else
    {
      CNoiseSuppressorV4::speex_preprocess_run(v19, v17, v18, 0);
    }

    v21 = *(this + 68);
    if (v21)
    {
      v22 = *(v21 + 332);
    }

    else
    {
      v22 = 0.0;
    }

    v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v24 & 1) == 0 || (ausdk::AUElement::SetParameter(v23, 2u, v22), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v26 & 1) == 0) || (ausdk::AUElement::SetParameter(v25, 5u, *(*(this + 68) + 480)), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v28 & 1) == 0) || (ausdk::AUElement::SetParameter(v27, 6u, *(*(this + 68) + 476)), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v30 & 1) == 0) || (ausdk::AUElement::SetParameter(v29, 7u, *(*(this + 68) + 432)), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v32 & 1) == 0) || (ausdk::AUElement::SetParameter(v31, 8u, *(*(this + 68) + 436)), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v34 & 1) == 0) || (ausdk::AUElement::SetParameter(v33, 9u, *(*(this + 68) + 336)), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v36 & 1) == 0) || (ausdk::AUElement::SetParameter(v35, 0xAu, *(*(this + 68) + 340)), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v38 & 1) == 0) || (ausdk::AUElement::SetParameter(v37, 0xBu, *(*(this + 68) + 504)), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v40 & 1) == 0) || (ausdk::AUElement::SetParameter(v39, 0xCu, *(*(this + 68) + 508)), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v42 & 1) == 0) || (ausdk::AUElement::SetParameter(v41, 0xDu, *(*(this + 68) + 52)), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v44 & 1) == 0) || (ausdk::AUElement::SetParameter(v43, 0x10u, *(*(this + 68) + 616) - *(*(this + 68) + 612)), v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v46 & 1) == 0) || (ausdk::AUElement::SetParameter(v45, 0x11u, *(*(this + 68) + 524)), v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v48 & 1) == 0) || (ausdk::AUElement::SetParameter(v47, 0x12u, *(*(this + 68) + 612)), v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v50 & 1) == 0) || (ausdk::AUElement::SetParameter(v49, 0x15u, *(*(this + 68) + 512)), v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v52 & 1) == 0))
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v51, 0x16u, *(*(this + 68) + 516));
    memcpy(a7[2]->mBuffers[0].mData, *(*(this + 68) + 168), 4 * *(*(this + 68) + 4));
    v53 = (*a7)->mBuffers[0].mData;
    v54 = a7[1]->mBuffers[0].mData;
    v55 = *(this + 84);
    if (*(this + 541) == 1)
    {
      v56 = &v53[4 * v55];
      v57 = *(this + 68);
      if (v57)
      {
        v58 = *(v57 + 584);
        v59 = *(v57 + 592);
      }

      else
      {
        v58 = 0;
        v59 = 0;
      }

      memcpy(v53, v58, 4 * v55);
      v60 = 4 * *(this + 84);
      v53 = v56;
      v61 = v59;
    }

    else
    {
      v60 = 4 * v55;
      v61 = v17;
    }

    memcpy(v53, v61, v60);
    memcpy(v54, *(*(this + 68) + 384), 4 * *(this + 84));
    v62 = a7[3];
    if (!v62)
    {
      return 0;
    }

    result = 0;
    v63 = v62->mBuffers[0].mData;
    if (v63 && v63 != (*a7)->mBuffers[0].mData)
    {
      v64 = *(this + 68);
      if (v64)
      {
        mData = *(v64 + 192);
        v15 = 4 * *(v64 + 4);
        v14 = v63;
        goto LABEL_45;
      }

      return 0;
    }
  }

  return result;
}

void AUMagnitudeDifferenceNoiseSuppressorV4::UpdateParameters(AUMagnitudeDifferenceNoiseSuppressorV4 *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 1u);
  v5 = *(this + 68);
  if (v5)
  {
    v6 = Parameter;
    if (Parameter >= 0)
    {
      v6 = -v6;
    }

    *(v5 + 52) = v6;
    *(v5 + 472) = 1;
  }

  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  v9 = ausdk::AUElement::GetParameter(v7, 0);
  v10 = *(this + 68);
  if (v10)
  {
    *(v10 + 428) = v9;
  }

  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v12 & 1) == 0 || (*(*(this + 68) + 356) = ausdk::AUElement::GetParameter(v11, 3u), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v14 & 1) == 0) || (v15 = ausdk::AUElement::GetParameter(v13, 4u), v16 = *(this + 68), *(v16 + 360) = 1.0 - expf(-1.0 / (v15 * (*(v16 + 8) / *(v16 + 4)))), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v18 & 1) == 0) || (*(*(this + 68) + 624) = ausdk::AUElement::GetParameter(v17, 0x13u), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v20 & 1) == 0))
  {
LABEL_14:
    abort();
  }

  *(*(this + 68) + 628) = ausdk::AUElement::GetParameter(v19, 0x14u);
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::SetParameter(AUMagnitudeDifferenceNoiseSuppressorV4 *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3)
  {
    return 4294956430;
  }

  if (a2 > 0x14)
  {
    goto LABEL_12;
  }

  if (((1 << a2) & 0x18801A) != 0)
  {
    v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v10)
    {
      v11 = a2;
LABEL_7:
      ausdk::AUElement::SetParameter(v9, v11, a5);
      result = 0;
      ++*(this + 133);
      return result;
    }

    goto LABEL_16;
  }

  if (a2)
  {
LABEL_12:

    return ausdk::AUBase::SetParameter(this, a2, 0, a4, a5);
  }

  else
  {
    if (a5 <= 2)
    {
      v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v12)
      {
        v11 = 0;
        goto LABEL_7;
      }

LABEL_16:
      abort();
    }

    return 4294956418;
  }
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::SetProperty(AUMagnitudeDifferenceNoiseSuppressorV4 *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 >= 4)
    {
      v8 = *a5;
      v9 = *a5 != 0;
      if (v9 != (*(*this + 576))(this))
      {
        (*(*this + 584))(this, v8 != 0);
      }

      return 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::GetProperty(AUMagnitudeDifferenceNoiseSuppressorV4 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    v7 = *(this + 376);
    goto LABEL_7;
  }

  if (a2 == 21)
  {
    v7 = (*(*this + 576))(this);
LABEL_7:
    result = 0;
    *a5 = v7;
    return result;
  }

  return 4294956417;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressorV4::GetPropertyInfo(AUMagnitudeDifferenceNoiseSuppressorV4 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v7 = 1;
  }

  else
  {
    if (a2 != 3700)
    {
      return 4294956417;
    }

    v7 = 0;
  }

  result = 0;
  *a6 = v7;
  *a5 = 4;
  return result;
}

void AUMagnitudeDifferenceNoiseSuppressorV4::Cleanup(AUMagnitudeDifferenceNoiseSuppressorV4 *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    CNoiseSuppressorV4::speex_preprocess_state_destroy(v2);
    *(this + 68) = 0;
  }
}

void AUMagnitudeDifferenceNoiseSuppressorV4::Initialize(AUMagnitudeDifferenceNoiseSuppressorV4 *this)
{
  v2 = (this + 80);
  (*(*this + 64))(this);
  Element = ausdk::AUScope::GetElement(v2, 0);
  if (Element)
  {
    *(this + 540) = *(Element + 88) == 1718773105;
    v4 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v4)
    {
      *(this + 541) = *(v4 + 88) == 1718773105;
      v5 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v5)
      {
        CNoiseSuppressorV4::speex_preprocess_state_init(*(this + 84), *(v5 + 80), 2, 0, 0, 0, 0);
      }
    }
  }

  ausdk::Throw(0xFFFFD583);
}

void AUMagnitudeDifferenceNoiseSuppressorV4::~AUMagnitudeDifferenceNoiseSuppressorV4(AUMagnitudeDifferenceNoiseSuppressorV4 *this)
{
  AUMagnitudeDifferenceNoiseSuppressorV4::~AUMagnitudeDifferenceNoiseSuppressorV4(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5929640;
  v2 = *(this + 68);
  if (v2)
  {
    CNoiseSuppressorV4::speex_preprocess_state_destroy(v2);
    *(this + 68) = 0;
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t ZoomMixingMatrix::updateZoomMixingMatrix(uint64_t this, float a2, float a3)
{
  v3 = this;
  if (a2 <= 1.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1.0;
  }

  if (a2 >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  if (a3 <= 1.0)
  {
    v6 = a3;
  }

  else
  {
    v6 = 1.0;
  }

  if (a3 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  if (v5 != *(this + 4) || v7 != *(this + 8))
  {
    v8 = ((*this + 1) * (*this + 1));
    *(this + 4) = v5;
    *(this + 8) = v7;
    MEMORY[0x1E12BE940](*(this + 16), 1, this + 4, *(this + 40), 1, (v8 * v8));
    v23 = 1.0 - *(v3 + 4);
    this = MEMORY[0x1E12BE8A0](*(v3 + 40), (v8 + 1), &v23, *(v3 + 40), (v8 + 1), v8);
    if (*(v3 + 8) > 0.00000011921)
    {
      __C = 0.0;
      vDSP_dotpr(*(v3 + 40), 1, *(v3 + 40), 1, &__C, (v8 * v8));
      __C = powf(1.0 / sqrtf(__C / v8), *(v3 + 8));
      this = MEMORY[0x1E12BE940](*(v3 + 40), 1, &__C, *(v3 + 40), 1, (v8 * v8));
    }

    v9 = 0;
    v10 = 0;
    v11 = *(v3 + 40);
    v12 = *v3 + 1;
    v13 = v12 * v12;
    if (v12 > 1)
    {
      v14 = *v3 + 1;
    }

    else
    {
      v14 = 1;
    }

    v15 = v12 * v12;
    do
    {
      v16 = v10 * v10;
      v17 = (v10 + 2) * v10;
      if (v16 <= v17)
      {
        v18 = sqrtf((v10 * 2.0) + 1.0);
        v19 = v9;
        do
        {
          this = v16;
          v20 = v19;
          v21 = v12 * v12;
          if (v13)
          {
            do
            {
              *(v11 + 4 * this) = v18 * *(v11 + 4 * this);
              this = (this + v13);
              *(v11 + 4 * v20) = (1.0 / v18) * *(v11 + 4 * v20);
              ++v20;
              --v21;
            }

            while (v21);
          }

          v16 = (v16 + 1);
          v19 += v13;
        }

        while (v16 <= v17);
      }

      ++v10;
      v9 += v15;
      v15 += 2 * v13;
    }

    while (v10 != v14);
  }

  return this;
}

void ZoomMixingMatrix::ZoomMixingMatrix(ZoomMixingMatrix *this, unsigned int a2)
{
  __asm { FMOV            V8.2S, #-1.0 }

  *(this + 4) = _D8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = a2;
  v9 = (a2 + 1) * (a2 + 1);
  std::vector<float>::resize(this + 2, (v9 * v9));
  std::vector<float>::resize(this + 5, (v9 * v9));
  HOA::HOA(v11, a2, 0);
  std::vector<float>::vector[abi:ne200100](&__A, v9);
  operator new();
}

void sub_1DDE8F594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  operator delete(v22);
  if (__p)
  {
    operator delete(__p);
  }

  HOA::~HOA(&a20);
  v24 = v20[5];
  if (v24)
  {
    v20[6] = v24;
    operator delete(v24);
  }

  v25 = *v21;
  if (*v21)
  {
    v20[3] = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [6],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_1DDE8F65C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double std::__fs::filesystem::path::extension[abi:ne200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_1DDE8F784(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__fs::filesystem::operator==[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) == 0;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [2],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_1DDE8F81C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [4],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_1DDE8F878(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::uuids::detail::random_provider_base::destroy(uint64_t this)
{
  if ((this & 0x80000000) == 0)
  {
    return close(this);
  }

  return this;
}

void boost::throw_exception<boost::uuids::entropy_error>(const std::runtime_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x48uLL);
  *exception = &unk_1F593A570;
  std::runtime_error::runtime_error((exception + 8), a1);
  v5 = a1[1].__vftable;
  *(exception + 6) = 0;
  *(exception + 7) = 0;
  *(exception + 5) = 0;
  *exception = &unk_1F5929900;
  *(exception + 1) = &unk_1F5929930;
  *(exception + 3) = v5;
  *(exception + 4) = &unk_1F5929960;
  *(exception + 16) = a2[1].i32[0];
  *(exception + 3) = vextq_s8(*a2, *a2, 8uLL);
}

uint64_t boost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F593A5A0;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F593A5A0;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F593A5A0;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void non-virtual thunk toboost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F593A5A0;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *(a1 + 24) = &unk_1F593A5A0;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::runtime_error::~runtime_error(a1);
}

void boost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F593A5A0;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1E12BD160);
}

void boost::wrapexcept<boost::uuids::entropy_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F593A570;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F5929980;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_1F593A5A0;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_1F5929900;
  *(a1 + 8) = &unk_1F5929930;
  *(a1 + 32) = &unk_1F5929960;
  return a1;
}

void sub_1DDE8FFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::uuids::entropy_error::~entropy_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::GlobalProperties::setProperty(AUSM::GlobalProperties *this, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 5685)
  {
    v6 = *a3 != 0;
    v15 = 3235;
    v16 = &v15;
    v7 = std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 40, 0xCA3u);
    (*(*v7[5] + 64))(v7[5], v6);
    return 0;
  }

  else
  {
    v9 = a2;
    result = AUSM::Properties::setProperty(this, a2, a3, a4, a5);
    if (v9 == 3110 && !result)
    {
      v10 = atomic_load(this + 416);
      v15 = 3101;
      v16 = &v15;
      if (v10 == 3)
      {
        v11 = std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 40, 0xC1Du);
        result = 0;
        v12 = v11[5];
        v13 = 3;
      }

      else
      {
        v14 = std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 40, 0xC1Du);
        result = 0;
        v12 = v14[5];
        v13 = 2;
      }

      *(v12 + 12) = v13;
    }
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void AUSM::GlobalProperties::GlobalProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = AUSM::Properties::Properties(a1, a2, 0, 0, a3);
  *(v5 + 72) = 0x300000003;
  *(v5 + 80) = 64;
  *(v5 + 84) = 0;
  *(v5 + 86) = 0;
  *(v5 + 88) = 3;
  *(v5 + 92) = 0;
  *(v5 + 96) = 1;
  *v5 = &unk_1F59299B0;
  *(v5 + 112) = xmmword_1DE097CE0;
  *(v5 + 128) = xmmword_1DE097CE0;
  *(v5 + 144) = 0;
  *(v5 + 163) = 1;
  *(v5 + 152) = 0;
  *(v5 + 164) = 0x461C400043160000;
  *(v5 + 176) = 0;
  *(v5 + 159) = 0;
  *(v5 + 184) = 850045863;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 850045863;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 296) = 0u;
  *(v5 + 312) = 0u;
  *(v5 + 328) = 850045863;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 0u;
  *(v5 + 400) = 850045863;
  *(v5 + 408) = 0u;
  *(v5 + 424) = 0u;
  *(v5 + 440) = 0u;
  *(v5 + 456) = 0u;
  *(v5 + 472) = 850045863;
  *(v5 + 480) = 0u;
  *(v5 + 496) = 0u;
  *(v5 + 512) = 0u;
  *(v5 + 528) = 0u;
  *(v5 + 544) = 850045863;
  *(v5 + 584) = 0u;
  *(v5 + 600) = 0u;
  *(v5 + 552) = 0u;
  *(v5 + 568) = 0u;
  *(v5 + 616) = 850045863;
  *(v5 + 656) = 0u;
  *(v5 + 672) = 0u;
  *(v5 + 624) = 0u;
  *(v5 + 640) = 0u;
  *(v5 + 688) = 850045863;
  *(v5 + 728) = 0u;
  *(v5 + 744) = 0u;
  *(v5 + 696) = 0u;
  *(v5 + 712) = 0u;
  *(v5 + 760) = 850045863;
  *(v5 + 800) = 0u;
  *(v5 + 816) = 0u;
  *(v5 + 768) = 0u;
  *(v5 + 784) = 0u;
  *(v5 + 832) = 850045863;
  *(v5 + 872) = 0u;
  *(v5 + 888) = 0u;
  *(v5 + 840) = 0u;
  *(v5 + 856) = 0u;
  *(v5 + 904) = 850045863;
  *(v5 + 944) = 0u;
  *(v5 + 960) = 0u;
  *(v5 + 912) = 0u;
  *(v5 + 928) = 0u;
  *(v5 + 976) = 850045863;
  *(v5 + 1016) = 0u;
  *(v5 + 1032) = 0u;
  *(v5 + 984) = 0u;
  *(v5 + 1000) = 0u;
  *(v5 + 1048) = 850045863;
  *(v5 + 1104) = 0u;
  *(v5 + 1088) = 0u;
  *(v5 + 1072) = 0u;
  *(v5 + 1056) = 0u;
  *(v5 + 1120) = 850045863;
  *(v5 + 1160) = 0u;
  *(v5 + 1176) = 0u;
  *(v5 + 1128) = 0u;
  *(v5 + 1144) = 0u;
  *(v5 + 1192) = 850045863;
  *(v5 + 1248) = 0u;
  *(v5 + 1232) = 0u;
  *(v5 + 1216) = 0u;
  *(v5 + 1200) = 0u;
  *(v5 + 1264) = 850045863;
  *(v5 + 1336) = 0;
  *(v5 + 1316) = 0u;
  *(v5 + 1288) = 0u;
  *(v5 + 1304) = 0u;
  *(v5 + 1272) = 0u;
  *(v5 + 1344) = 850045863;
  *(v5 + 1416) = 0;
  *(v5 + 1384) = 0u;
  *(v5 + 1400) = 0u;
  *(v5 + 1352) = 0u;
  *(v5 + 1368) = 0u;
  *(v5 + 1424) = 850045863;
  *(v5 + 1473) = 0u;
  *(v5 + 1448) = 0u;
  *(v5 + 1464) = 0u;
  *(v5 + 1432) = 0u;
  *(v5 + 1492) = 3;
  *(v5 + 1496) = 0;
  *(v5 + 1504) = 850045863;
  *(v5 + 1544) = 0u;
  *(v5 + 1560) = 0u;
  *(v5 + 1512) = 0u;
  *(v5 + 1528) = 0u;
  *(v5 + 1576) = 850045863;
  *(v5 + 1625) = 0u;
  *(v5 + 1616) = 0u;
  *(v5 + 1600) = 0u;
  *(v5 + 1584) = 0u;
  *(v5 + 1644) = 1;
  *(v5 + 1648) = 0;
  *(a1 + 1650) = _os_feature_enabled_impl();
  *(a1 + 1651) = 0;
  *(a1 + 1656) = 2;
  *(a1 + 1664) = 0;
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 850045863;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 850045863;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 850045863;
  *(a1 + 1904) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1872) = 0u;
  *(a1 + 1856) = 0u;
  *(a1 + 1920) = 850045863;
  *(a1 + 1960) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1992) = 850045863;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 2064) = 850045863;
  *(a1 + 2104) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2136) = 850045863;
  *(a1 + 2192) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2144) = 0u;
  *(a1 + 2208) = 850045863;
  *(a1 + 2264) = 0;
  *(a1 + 2232) = 0u;
  *(a1 + 2248) = 0u;
  *(a1 + 2216) = 0u;
  v28 = xmmword_1DE09DDB0;
  *&v25 = &v28;
  *(&v25 + 1) = 4;
  CFArray = applesauce::CF::details::make_CFArrayRef<float>(&v25);
  v24 = CFArray;
  AUSM::AppleSauceCFWithMutex<__CFArray const*>::AppleSauceCFWithMutex(a1 + 2272, &v24);
  if (CFArray)
  {
    CFRelease(CFArray);
  }

  v28 = xmmword_1DE09DDC0;
  *&v25 = &v28;
  *(&v25 + 1) = 4;
  v7 = applesauce::CF::details::make_CFArrayRef<unsigned int>(&v25);
  v23 = v7;
  AUSM::AppleSauceCFWithMutex<__CFArray const*>::AppleSauceCFWithMutex(a1 + 2344, &v23);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 2416) = 1;
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  v9 = CFStringCreateWithFileSystemRepresentation(0, v8);
  if (v9)
  {
    cf = v9;
    v10 = CFGetTypeID(v9);
    if (v10 == CFStringGetTypeID())
    {
      *(a1 + 2424) = 0;
      *(a1 + 2432) = 850045863;
      *(a1 + 2488) = 0;
      *(a1 + 2440) = 0u;
      *(a1 + 2456) = 0u;
      *(a1 + 2472) = 0u;
      if (cf)
      {
        CFRetain(cf);
      }

      *&v25 = cf;
      AUSM::AppleSauceCFWithMutex<__CFString const*>::store(a1 + 2424, &v25);
      if (cf)
      {
        CFRelease(cf);
        CFRelease(cf);
      }

      *(a1 + 2496) = 0;
      *(a1 + 2504) = 1056964608;
      *(a1 + 2512) = xmmword_1DE095680;
      *(a1 + 2528) = xmmword_1DE09C2A0;
      *(a1 + 2544) = 0x200000002;
      *(a1 + 2552) = 0;
      *(a1 + 2558) = 0;
      *(a1 + 2566) = 1;
      *(a1 + 2568) = 1065353216;
      *(a1 + 2576) = xmmword_1DE09BC50;
      *(a1 + 2592) = 0u;
      *(a1 + 2608) = xmmword_1DE097CE0;
      v25 = xmmword_1DE0E9070;
      v26 = unk_1DE0E9080;
      v27 = 0x3F8000003F800000;
      *&v28 = &v25;
      *(&v28 + 1) = 10;
      v11 = applesauce::CF::details::make_CFArrayRef<float>(&v28);
      v21 = v11;
      AUSM::AppleSauceCFWithMutex<__CFArray const*>::AppleSauceCFWithMutex(a1 + 2624, &v21);
      if (v11)
      {
        CFRelease(v11);
      }

      *(a1 + 2696) = 0x600000002;
      *(a1 + 2704) = 128;
      *(a1 + 2708) = xmmword_1DE09DDD0;
      *(a1 + 2728) = 0;
      *(a1 + 2736) = 850045863;
      *(a1 + 2744) = 0u;
      *(a1 + 2760) = 0u;
      *(a1 + 2776) = 0u;
      *(a1 + 2788) = 0u;
      *(a1 + 2804) = 1148846080;
      *(a1 + 2808) = 256;
      *(a1 + 2812) = 1065353216;
      *(a1 + 2816) = xmmword_1DE09BC50;
      *(a1 + 2832) = 0u;
      *(a1 + 2848) = xmmword_1DE097CE0;
      v27 = 0x3F8000003F800000;
      v25 = xmmword_1DE0E9070;
      v26 = unk_1DE0E9080;
      *&v28 = &v25;
      *(&v28 + 1) = 10;
      v12 = applesauce::CF::details::make_CFArrayRef<float>(&v28);
      v20 = v12;
      AUSM::AppleSauceCFWithMutex<__CFArray const*>::AppleSauceCFWithMutex(a1 + 2864, &v20);
      if (v12)
      {
        CFRelease(v12);
      }

      *(a1 + 2936) = 0x600000002;
      *(a1 + 2948) = xmmword_1DE09DDD0;
      *(a1 + 2944) = 128;
      *(a1 + 2968) = 0;
      *(a1 + 2976) = 850045863;
      *(a1 + 2984) = 0u;
      *(a1 + 3000) = 0u;
      *(a1 + 3016) = 0u;
      *(a1 + 3028) = 0u;
      *(a1 + 3044) = 0x1447A0000;
      *(a1 + 3052) = _os_feature_enabled_impl();
      *(a1 + 3053) = 0;
      *(a1 + 3056) = 0;
      __asm { FMOV            V0.4S, #1.0 }

      *(a1 + 3060) = _Q0;
      *(a1 + 3076) = 1;
      *(a1 + 3080) = 0;
      *(a1 + 3088) = 0;
      *(a1 + 3104) = 0;
      *(a1 + 3096) = 0;
      *(a1 + 3112) = 0;
      *(a1 + 3116) = 1;
      *(a1 + 3136) = 0;
      *(a1 + 3120) = 0;
      *(a1 + 3125) = 0;
      std::string::basic_string[abi:ne200100]<0>(&v25, "reverb room type");
      AUSM::Properties::addPropertyMapEntry<unsigned int>();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v18 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v18, "Could not construct");
}

void sub_1DDE92E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  MEMORY[0x1E12BD160](v29, 0x10B3C40DB818C1DLL);
  if (*(v30 - 153) < 0)
  {
    operator delete(*(v30 - 176));
  }

  if (*(v28 + 3111) < 0)
  {
    operator delete(*(v28 + 3088));
  }

  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(v28 + 2968);
  AUSM::AppleSauceCFWithMutex<__CFArray const*>::~AppleSauceCFWithMutex(v28 + 2864);
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(v28 + 2728);
  AUSM::AppleSauceCFWithMutex<__CFArray const*>::~AppleSauceCFWithMutex(v28 + 2624);
  AUSM::AppleSauceCFWithMutex<__CFString const*>::~AppleSauceCFWithMutex(a27);
  AUSM::AppleSauceCFWithMutex<__CFArray const*>::~AppleSauceCFWithMutex(v28 + 2344);
  AUSM::AppleSauceCFWithMutex<__CFArray const*>::~AppleSauceCFWithMutex(v28 + 2272);
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(v28 + 2200);
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(v28 + 2128);
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(v28 + 2056);
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(v28 + 1984);
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(v28 + 1912);
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(v28 + 1840);
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(v28 + 1768);
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(v28 + 1696);
  v32 = *a28;
  if (*a28)
  {
    *(v28 + 1680) = v32;
    operator delete(v32);
  }

  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 1568);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 1496);
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(v28 + 1416);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 1336);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 1256);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 1184);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 1112);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 1040);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 968);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 896);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 824);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 752);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 680);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 608);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 536);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 464);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 392);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 320);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(v28 + 248);
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(a10);
  AUSM::OutputProperties::~OutputProperties(v28);
  _Unwind_Resume(a1);
}

void sub_1DDE93480(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void **a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34)
{
  applesauce::CF::StringRef::~StringRef((v35 - 176));
  std::mutex::~mutex(v34 + 38);
  applesauce::CF::StringRef::~StringRef(a27);
  applesauce::CF::StringRef::~StringRef(&a34);
  JUMPOUT(0x1DDE93328);
}

uint64_t AUSM::AppleSauceCFWithMutex<__CFArray const*>::AppleSauceCFWithMutex(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0;
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v5 = v3;
  AUSM::AppleSauceCFWithMutex<__CFArray const*>::store(a1, &v5);
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_1DDE935A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  std::mutex::~mutex(v3);
  applesauce::CF::ArrayRef::~ArrayRef(v2);
  _Unwind_Resume(a1);
}

void AUSM::Properties::addPropertyMapEntry<float>()
{
  operator new();
}

{
  operator new();
}

void sub_1DDE9413C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::~AppleSauceCFWithMutex(uint64_t a1)
{
  std::mutex::~mutex((a1 + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

uint64_t AUSM::AppleSauceCFWithMutex<__CFArray const*>::~AppleSauceCFWithMutex(uint64_t a1)
{
  std::mutex::~mutex((a1 + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

uint64_t AUSM::AppleSauceCFWithMutex<__CFString const*>::~AppleSauceCFWithMutex(uint64_t a1)
{
  std::mutex::~mutex((a1 + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void AUSM::AtomicProperty<AUSM::eDisplayGeometry>::createCF(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  v3 = atomic_load(*(a1 + 48));
  valuePtr = v3;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  CFRetain(v4);
  *a2 = v5;
  CFRelease(v5);
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eDisplayGeometry>::setMaxValue(uint64_t result, _DWORD *a2)
{
  *(result + 64) = *a2;
  *(result + 68) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eDisplayGeometry>::setMinValue(uint64_t result, _DWORD *a2)
{
  *(result + 56) = *a2;
  *(result + 60) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eDisplayGeometry>::setData(uint64_t a1, unsigned int *a2, int a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 5;
  }

  if (v4 == 2 && (a4 & 1) != 0)
  {
    return 6;
  }

  if ((*(*a1 + 16))(a1) != a3)
  {
    return 4;
  }

  v8 = *a2;
  if (*(a1 + 60) == 1 && v8 < *(a1 + 56) || *(a1 + 68) == 1 && v8 > *(a1 + 64))
  {
    return 3;
  }

  v9 = atomic_load(*(a1 + 48));
  if (v8 == v9)
  {
    return 2;
  }

  atomic_store(v8, *(a1 + 48));
  return 1;
}

uint64_t AUSM::AtomicProperty<AUSM::eDisplayGeometry>::getData(uint64_t a1, unsigned int *a2)
{
  v2 = atomic_load(*(a1 + 48));
  *a2 = v2;
  return 0;
}

void AUSM::AtomicPropertyWithRange<AUSM::eDisplayGeometry>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eDisplayGeometry>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::CFProperty<__CFString const*>::printValue(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  AUSM::AppleSauceCFWithMutex<__CFString const*>::load(&v5, *(a1 + 48));
  v3 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(a2, v5);
  CFRelease(v3);
}

void sub_1DDE945D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

void AUSM::AppleSauceCFWithMutex<__CFString const*>::load(void *a1, uint64_t a2)
{
  std::mutex::lock((a2 + 8));
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v4;

  std::mutex::unlock((a2 + 8));
}

void AUSM::CFProperty<__CFString const*>::createCF(uint64_t a1@<X0>, void *a2@<X8>)
{
  AUSM::AppleSauceCFWithMutex<__CFString const*>::load(&cf, *(a1 + 48));
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a2 = v3;
    CFRelease(v3);
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t AUSM::CFProperty<__CFString const*>::setData(uint64_t a1, CFTypeRef *a2, int a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 5;
  }

  if (v4 == 2 && (a4 & 1) != 0)
  {
    return 6;
  }

  if ((*(*a1 + 16))(a1) != a3)
  {
    return 4;
  }

  AUSM::AppleSauceCFWithMutex<__CFString const*>::load(&cf, *(a1 + 48));
  if (!a2)
  {
    v10 = cf;
    if (!cf)
    {
      return 2;
    }

    v11 = *(a1 + 48);
    v16 = 0;
    AUSM::AppleSauceCFWithMutex<__CFString const*>::store(v11, &v16);
    v7 = 1;
    goto LABEL_20;
  }

  v8 = *a2;
  if (*a2 && (CFRetain(*a2), v9 = CFGetTypeID(v8), v9 != CFStringGetTypeID()))
  {
    v15 = 0;
    CFRelease(v8);
    v8 = 0;
  }

  else
  {
    v15 = v8;
  }

  v10 = cf;
  if (cf && applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cf, &v15) == kCFCompareEqualTo)
  {
    if (v8)
    {
      CFRelease(v8);
      v7 = 2;
      v10 = cf;
      if (!cf)
      {
        return v7;
      }
    }

    else
    {
      v7 = 2;
    }

    goto LABEL_20;
  }

  v12 = *(a1 + 48);
  v14 = v8;
  v15 = 0;
  AUSM::AppleSauceCFWithMutex<__CFString const*>::store(v12, &v14);
  if (v8)
  {
    CFRelease(v8);
  }

  v7 = 1;
  if (v10)
  {
LABEL_20:
    CFRelease(v10);
  }

  return v7;
}

void sub_1DDE9483C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void AUSM::AppleSauceCFWithMutex<__CFString const*>::store(uint64_t a1, const void **a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  std::mutex::unlock((a1 + 8));
}

uint64_t AUSM::CFProperty<__CFString const*>::getData(uint64_t a1, CFTypeRef *a2)
{
  AUSM::AppleSauceCFWithMutex<__CFString const*>::load(&cf, *(a1 + 48));
  v3 = cf;
  if (cf)
  {
    *a2 = CFRetain(cf);
    CFRelease(v3);
  }

  else
  {
    *a2 = 0;
  }

  return 0;
}

void sub_1DDE94950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void AUSM::CFProperty<__CFString const*>::~CFProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::CFProperty<__CFString const*>::~CFProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::CFProperty<__CFArray const*>::printValue(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  AUSM::AppleSauceCFWithMutex<__CFArray const*>::load(cf, *(a1 + 48));
  v3 = cf[0];
  if (!cf[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = CFCopyDescription(cf[0]);
  cf[1] = v4;
  applesauce::CF::details::CFString_get_value<true>(a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  CFRelease(v3);
}

void sub_1DDE94ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ArrayRef::~ArrayRef(&a9);
  _Unwind_Resume(a1);
}

void AUSM::CFProperty<__CFArray const*>::createCF(uint64_t a1@<X0>, void *a2@<X8>)
{
  AUSM::AppleSauceCFWithMutex<__CFArray const*>::load(&cf, *(a1 + 48));
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a2 = v3;
    CFRelease(v3);
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t AUSM::CFProperty<__CFArray const*>::setData(uint64_t a1, const void **a2, int a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 5;
  }

  if (v4 != 2 || (a4 & 1) == 0)
  {
    if ((*(*a1 + 16))(a1) != a3)
    {
      return 4;
    }

    AUSM::AppleSauceCFWithMutex<__CFArray const*>::load(&cf1, *(a1 + 48));
    if (!a2)
    {
      v11 = cf1;
      if (!cf1)
      {
        return 2;
      }

      v12 = *(a1 + 48);
      v17 = 0;
      AUSM::AppleSauceCFWithMutex<__CFArray const*>::store(v12, &v17);
      v7 = 1;
LABEL_26:
      CFRelease(v11);
      return v7;
    }

    v8 = *a2;
    if (v8)
    {
      CFRetain(v8);
      v9 = CFGetTypeID(v8);
      if (v9 == CFArrayGetTypeID())
      {
        if (cf1)
        {
          v10 = 0;
        }

        else
        {
          v10 = v8;
        }

        if (cf1)
        {
          if (CFEqual(cf1, v8))
          {
            CFRelease(v8);
            v7 = 2;
            goto LABEL_25;
          }
        }

        else
        {
          v8 = v10;
        }
      }

      else
      {
        v16 = 0;
        CFRelease(v8);
        v8 = 0;
      }
    }

    v13 = *(a1 + 48);
    v15 = v8;
    v16 = 0;
    AUSM::AppleSauceCFWithMutex<__CFArray const*>::store(v13, &v15);
    if (v8)
    {
      CFRelease(v8);
    }

    v7 = 1;
LABEL_25:
    v11 = cf1;
    if (!cf1)
    {
      return v7;
    }

    goto LABEL_26;
  }

  return 6;
}

void sub_1DDE94CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  applesauce::CF::ArrayRef::~ArrayRef(va1);
  _Unwind_Resume(a1);
}

void AUSM::AppleSauceCFWithMutex<__CFArray const*>::store(uint64_t a1, const void **a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  std::mutex::unlock((a1 + 8));
}

uint64_t AUSM::CFProperty<__CFArray const*>::getData(uint64_t a1, CFTypeRef *a2)
{
  AUSM::AppleSauceCFWithMutex<__CFArray const*>::load(&cf, *(a1 + 48));
  v3 = cf;
  if (cf)
  {
    *a2 = CFRetain(cf);
    CFRelease(v3);
  }

  else
  {
    *a2 = 0;
  }

  return 0;
}

void sub_1DDE94E04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

void AUSM::CFProperty<__CFArray const*>::~CFProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::CFProperty<__CFArray const*>::~CFProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::ByteArray::printValue(AUSM::ByteArray *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "ByteArray, size: ");
  std::to_string(&__p, *(*(this + 6) + 8) - **(this + 6));
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

  v6 = std::string::append(&v8, p_p, size);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1DDE94F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t AUSM::ByteArray::setData(AUSM::ByteArray *this, const void *a2, unsigned int a3, char a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    return 5;
  }

  if (v4 == 2 && (a4 & 1) != 0)
  {
    return 6;
  }

  if (!a2 && a3)
  {
    return 3;
  }

  v8 = *(this + 6);
  v9 = a3;
  v10 = *v8;
  v11 = v8[1] - *v8;
  if (a3 <= v11)
  {
    if (a3 < v11)
    {
      v8[1] = &v10[a3];
    }
  }

  else
  {
    std::vector<std::byte>::__append(*(this + 6), a3 - v11);
    v10 = **(this + 6);
  }

  memcpy(v10, a2, v9);
  return 1;
}

uint64_t AUSM::ByteArray::getData(const void ***this, void *__dst)
{
  if (!__dst)
  {
    return 4;
  }

  memcpy(__dst, *this[6], this[6][1] - *this[6]);
  return 0;
}

void AUSM::ByteArray::~ByteArray(void **this)
{
  *this = &unk_1F5931288;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5931288;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

void AUSM::AtomicProperty<HeadTrackingMode>::createCF(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  v3 = atomic_load(*(a1 + 48));
  valuePtr = v3;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  CFRetain(v4);
  *a2 = v5;
  CFRelease(v5);
}

uint64_t AUSM::AtomicPropertyWithRange<HeadTrackingMode>::setMaxValue(uint64_t result, _DWORD *a2)
{
  *(result + 64) = *a2;
  *(result + 68) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<HeadTrackingMode>::setMinValue(uint64_t result, _DWORD *a2)
{
  *(result + 56) = *a2;
  *(result + 60) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<HeadTrackingMode>::setData(uint64_t a1, unsigned int *a2, int a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 5;
  }

  if (v4 == 2 && (a4 & 1) != 0)
  {
    return 6;
  }

  if ((*(*a1 + 16))(a1) != a3)
  {
    return 4;
  }

  v8 = *a2;
  if (*(a1 + 60) == 1 && v8 < *(a1 + 56) || *(a1 + 68) == 1 && v8 > *(a1 + 64))
  {
    return 3;
  }

  v9 = atomic_load(*(a1 + 48));
  if (v8 == v9)
  {
    return 2;
  }

  atomic_store(v8, *(a1 + 48));
  return 1;
}

uint64_t AUSM::AtomicProperty<HeadTrackingMode>::getData(uint64_t a1, unsigned int *a2)
{
  v2 = atomic_load(*(a1 + 48));
  *a2 = v2;
  return 0;
}

void AUSM::AtomicPropertyWithRange<HeadTrackingMode>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicPropertyWithRange<HeadTrackingMode>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::AtomicProperty<float>::createCF(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  v3 = atomic_load(*(a1 + 48));
  valuePtr = v3;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  CFRetain(v4);
  *a2 = v5;
  CFRelease(v5);
}

uint64_t AUSM::AtomicProperty<float>::setData(uint64_t a1, float *a2, int a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 5;
  }

  if (v4 == 2 && (a4 & 1) != 0)
  {
    return 6;
  }

  if ((*(*a1 + 16))(a1) != a3)
  {
    return 4;
  }

  v8 = *a2;
  v9 = COERCE_FLOAT(atomic_load(*(a1 + 48)));
  if (v8 == v9)
  {
    return 2;
  }

  atomic_store(LODWORD(v8), *(a1 + 48));
  return 1;
}

uint64_t AUSM::AtomicProperty<float>::getData(uint64_t a1, unsigned int *a2)
{
  v2 = atomic_load(*(a1 + 48));
  *a2 = v2;
  return 0;
}

void AUSM::AtomicProperty<float>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicProperty<float>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::AtomicProperty<AUSM::eParameterSmoothing>::createCF(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  v3 = atomic_load(*(a1 + 48));
  valuePtr = v3;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  CFRetain(v4);
  *a2 = v5;
  CFRelease(v5);
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eParameterSmoothing>::setMaxValue(uint64_t result, _DWORD *a2)
{
  *(result + 64) = *a2;
  *(result + 68) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eParameterSmoothing>::setMinValue(uint64_t result, _DWORD *a2)
{
  *(result + 56) = *a2;
  *(result + 60) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eParameterSmoothing>::setData(uint64_t a1, unsigned int *a2, int a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 5;
  }

  if (v4 == 2 && (a4 & 1) != 0)
  {
    return 6;
  }

  if ((*(*a1 + 16))(a1) != a3)
  {
    return 4;
  }

  v8 = *a2;
  if (*(a1 + 60) == 1 && v8 < *(a1 + 56) || *(a1 + 68) == 1 && v8 > *(a1 + 64))
  {
    return 3;
  }

  v9 = atomic_load(*(a1 + 48));
  if (v8 == v9)
  {
    return 2;
  }

  atomic_store(v8, *(a1 + 48));
  return 1;
}

uint64_t AUSM::AtomicProperty<AUSM::eParameterSmoothing>::getData(uint64_t a1, unsigned int *a2)
{
  v2 = atomic_load(*(a1 + 48));
  *a2 = v2;
  return 0;
}

void AUSM::AtomicPropertyWithRange<AUSM::eParameterSmoothing>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eParameterSmoothing>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void _ZNK4AUSM14AtomicPropertyIDv3_fE10printValueEv(std::string *a1@<X8>)
{
  _X20 = 0;
  _X21 = 0;
  __asm { CASPAL          X20, X21, X20, X21, [X8] }

  std::to_string(&v24, *&_X20);
  v9 = std::string::insert(&v24, 0, "X = ", 4uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v25, ", Y = ", 6uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v23, *(&_X20 + 1));
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v23;
  }

  else
  {
    v13 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v26, v13, size);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v27, ", Z = ", 6uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v22, 0.0);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v22;
  }

  else
  {
    v19 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v22.__r_.__value_.__l.__size_;
  }

  v21 = std::string::append(&v28, v19, v20);
  *a1 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1DDE95B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 41) < 0)
  {
    operator delete(*(v42 - 64));
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void _ZNK4AUSM14AtomicPropertyIDv3_fE8createCFEv(CFDataRef *a1@<X8>)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *bytes = _X2;
  v14 = 0;
  v9 = CFDataCreate(0, bytes, 12);
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 != CFDataGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    CFRetain(v10);
    *a1 = v10;
    CFRelease(v10);
  }

  else
  {
    *a1 = 0;
  }
}

void sub_1DDE95D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t _ZN4AUSM14AtomicPropertyIDv3_fE7setDataEPKvjb(uint64_t a1, float32x2_t *a2, int a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 5;
  }

  if (v4 == 2 && (a4 & 1) != 0)
  {
    return 6;
  }

  if ((*(*a1 + 16))(a1) != a3)
  {
    return 4;
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v15 = vmvn_s8(vceq_f32(*a2, _X0));
  if ((v15.i8[0] & 1) == 0 && (v15.i8[4] & 1) == 0 && a2[1].f32[0] == COERCE_FLOAT(vdupq_n_s64(0).i32[2]))
  {
    return 2;
  }

  v16 = *(a1 + 48);
  _X0 = *a2;
  v18 = *v16;
  do
  {
    _X5 = v16[1];
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v18;
    v18 = _X4;
  }

  while (!_ZF);
  return 1;
}

uint64_t _ZNK4AUSM14AtomicPropertyIDv3_fE7getDataEPv(uint64_t a1, uint64_t a2)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *a2 = _X2.i32[0];
  *(a2 + 4) = vext_s8(_X2, 0, 4uLL);
  return 0;
}

void _ZN4AUSM14AtomicPropertyIDv3_fED0Ev(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t _ZN4AUSM14AtomicPropertyIDv3_fED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::AtomicProperty<simd_quatf>::printValue(std::string *a1@<X8>)
{
  _X20 = 0;
  _X21 = 0;
  __asm { CASPAL          X20, X21, X20, X21, [X8] }

  std::to_string(&v31, *&_X20);
  v9 = std::string::insert(&v31, 0, "X = ", 4uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v32, ", Y = ", 6uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v30, *(&_X20 + 1));
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v30;
  }

  else
  {
    v13 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v33, v13, size);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v34, ", Z = ", 6uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v29, 0.0);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v29;
  }

  else
  {
    v19 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v29.__r_.__value_.__l.__size_;
  }

  v21 = std::string::append(&v35, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v36, ", W = ", 6uLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v28, COERCE_FLOAT(_X20 >> 96));
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v28;
  }

  else
  {
    v25 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v28.__r_.__value_.__l.__size_;
  }

  v27 = std::string::append(&v37, v25, v26);
  *a1 = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_1DDE961D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 41) < 0)
  {
    operator delete(*(v47 - 64));
  }

  if (*(v47 - 73) < 0)
  {
    operator delete(*(v47 - 96));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v47 - 105) < 0)
  {
    operator delete(*(v47 - 128));
  }

  if (*(v47 - 137) < 0)
  {
    operator delete(*(v47 - 160));
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void AUSM::AtomicProperty<simd_quatf>::createCF(CFDataRef *a1@<X8>)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *bytes = _X2;
  v14 = 0;
  v9 = CFDataCreate(0, bytes, 16);
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 != CFDataGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    CFRetain(v10);
    *a1 = v10;
    CFRelease(v10);
  }

  else
  {
    *a1 = 0;
  }
}

void sub_1DDE96398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t AUSM::AtomicProperty<simd_quatf>::setData(uint64_t a1, float32x4_t *a2, int a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 5;
  }

  if (v4 == 2 && (a4 & 1) != 0)
  {
    return 6;
  }

  if ((*(*a1 + 16))(a1) != a3)
  {
    return 4;
  }

  v8 = *a2;
  v9 = vmulq_f32(v8, v8);
  if (sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))) < 0.001)
  {
    return 3;
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v8, _X0)))) & 1) == 0)
  {
    return 2;
  }

  v17 = *(a1 + 48);
  _X0 = a2->i64[0];
  v19 = *v17;
  do
  {
    _X5 = v17[1];
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v19;
    v19 = _X4;
  }

  while (!_ZF);
  return 1;
}

uint64_t AUSM::AtomicProperty<simd_quatf>::getData(uint64_t a1, uint64_t a2)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *a2 = _X2.i32[0];
  *(a2 + 4) = vext_s8(_X2, 0, 4uLL);
  *(a2 + 12) = vdupq_n_s64(0).i32[3];
  return 0;
}

void AUSM::AtomicProperty<simd_quatf>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicProperty<simd_quatf>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::AtomicProperty<SpatializerOrientation>::createCF(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  v3 = atomic_load(*(a1 + 48));
  valuePtr = v3;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  CFRetain(v4);
  *a2 = v5;
  CFRelease(v5);
}

uint64_t AUSM::AtomicPropertyWithRange<SpatializerOrientation>::setMaxValue(uint64_t result, _DWORD *a2)
{
  *(result + 64) = *a2;
  *(result + 68) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<SpatializerOrientation>::setMinValue(uint64_t result, _DWORD *a2)
{
  *(result + 56) = *a2;
  *(result + 60) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<SpatializerOrientation>::setData(uint64_t a1, unsigned int *a2, int a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 5;
  }

  if (v4 == 2 && (a4 & 1) != 0)
  {
    return 6;
  }

  if ((*(*a1 + 16))(a1) != a3)
  {
    return 4;
  }

  v8 = *a2;
  if (*(a1 + 60) == 1 && v8 < *(a1 + 56) || *(a1 + 68) == 1 && v8 > *(a1 + 64))
  {
    return 3;
  }

  v9 = atomic_load(*(a1 + 48));
  if (v8 == v9)
  {
    return 2;
  }

  atomic_store(v8, *(a1 + 48));
  return 1;
}

uint64_t AUSM::AtomicProperty<SpatializerOrientation>::getData(uint64_t a1, unsigned int *a2)
{
  v2 = atomic_load(*(a1 + 48));
  *a2 = v2;
  return 0;
}

void AUSM::AtomicPropertyWithRange<SpatializerOrientation>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicPropertyWithRange<SpatializerOrientation>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::CFProperty<__CFDictionary const*>::printValue(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(cf, *(a1 + 48));
  v3 = cf[0];
  if (!cf[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = CFCopyDescription(cf[0]);
  cf[1] = v4;
  applesauce::CF::details::CFString_get_value<true>(a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  CFRelease(v3);
}

void sub_1DDE9698C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  _Unwind_Resume(a1);
}

void AUSM::CFProperty<__CFDictionary const*>::createCF(uint64_t a1@<X0>, void *a2@<X8>)
{
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&cf, *(a1 + 48));
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a2 = v3;
    CFRelease(v3);
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t AUSM::CFProperty<__CFDictionary const*>::setData(uint64_t a1, const void **a2, int a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 5;
  }

  if (v4 != 2 || (a4 & 1) == 0)
  {
    if ((*(*a1 + 16))(a1) != a3)
    {
      return 4;
    }

    AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&cf1, *(a1 + 48));
    if (!a2)
    {
      v11 = cf1;
      if (!cf1)
      {
        return 2;
      }

      v12 = *(a1 + 48);
      v17 = 0;
      AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::store(v12, &v17);
      v7 = 1;
LABEL_26:
      CFRelease(v11);
      return v7;
    }

    v8 = *a2;
    if (v8)
    {
      CFRetain(v8);
      v9 = CFGetTypeID(v8);
      if (v9 == CFDictionaryGetTypeID())
      {
        if (cf1)
        {
          v10 = 0;
        }

        else
        {
          v10 = v8;
        }

        if (cf1)
        {
          if (CFEqual(cf1, v8))
          {
            CFRelease(v8);
            v7 = 2;
            goto LABEL_25;
          }
        }

        else
        {
          v8 = v10;
        }
      }

      else
      {
        v16 = 0;
        CFRelease(v8);
        v8 = 0;
      }
    }

    v13 = *(a1 + 48);
    v15 = v8;
    v16 = 0;
    AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::store(v13, &v15);
    if (v8)
    {
      CFRelease(v8);
    }

    v7 = 1;
LABEL_25:
    v11 = cf1;
    if (!cf1)
    {
      return v7;
    }

    goto LABEL_26;
  }

  return 6;
}

void sub_1DDE96BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  _Unwind_Resume(a1);
}

uint64_t AUSM::CFProperty<__CFDictionary const*>::getData(uint64_t a1, CFTypeRef *a2)
{
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&cf, *(a1 + 48));
  v3 = cf;
  if (cf)
  {
    *a2 = CFRetain(cf);
    CFRelease(v3);
  }

  else
  {
    *a2 = 0;
  }

  return 0;
}

void sub_1DDE96C44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void AUSM::CFProperty<__CFDictionary const*>::~CFProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::CFProperty<__CFDictionary const*>::~CFProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

float AUSM::AtomicPropertyWithRange<float>::setMaxValue(uint64_t a1, float *a2)
{
  result = *a2;
  *(a1 + 64) = *a2;
  *(a1 + 68) = 1;
  return result;
}

float AUSM::AtomicPropertyWithRange<float>::setMinValue(uint64_t a1, float *a2)
{
  result = *a2;
  *(a1 + 56) = *a2;
  *(a1 + 60) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<float>::setData(uint64_t a1, float *a2, int a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 5;
  }

  if (v4 == 2 && (a4 & 1) != 0)
  {
    return 6;
  }

  if ((*(*a1 + 16))(a1) != a3)
  {
    return 4;
  }

  v8 = *a2;
  if (*(a1 + 60) == 1 && v8 < *(a1 + 56) || *(a1 + 68) == 1 && v8 > *(a1 + 64))
  {
    return 3;
  }

  v9 = COERCE_FLOAT(atomic_load(*(a1 + 48)));
  if (v8 == v9)
  {
    return 2;
  }

  atomic_store(LODWORD(v8), *(a1 + 48));
  return 1;
}

void AUSM::AtomicPropertyWithRange<float>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicPropertyWithRange<float>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

BOOL AUSM::GlobalProperties::isEnabledFeature(AUSM::GlobalProperties *this, CFTypeRef cf1)
{
  v4 = CFEqual(cf1, @"NearFieldHRTF");
  v5 = v4 != 0;
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&v10, this + 2128);
  v6 = v10;
  if (v10)
  {
    v7 = v4 != 0;
    v8 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(v10, cf1);
    if ((v8 & 0xFF00) != 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v7;
    }

    CFRelease(v6);
  }

  return v5;
}

BOOL AUDecorrelator::ValidFormat(AUDecorrelator *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  if (a4->mChannelsPerFrame != 2)
  {
    return 0;
  }

  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    return (LOBYTE(a4->mFormatFlags) >> 5) & 1;
  }

  return result;
}

uint64_t AUDecorrelator::SupportedNumChannels(AUDecorrelator *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUDecorrelator::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUDecorrelator::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v3 = ausdk::AUBase::RestoreState(this, a2);
  if (!v3)
  {
    AUDecorrelator::ApplyParameters(this);
    ++*(this + 133);
  }

  return v3;
}

void AUDecorrelator::ApplyParameters(AUDecorrelator *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (*(this + 151) = ausdk::AUElement::GetParameter(v2, 0), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (Parameter = ausdk::AUElement::GetParameter(v4, 1u), *(this + 148) = Parameter, *(this + 158) = Parameter, v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v8 & 1) == 0))
  {
    abort();
  }

  v9 = ausdk::AUElement::GetParameter(v7, 2u);
  *(this + 149) = v9;
  *(this + 159) = v9;
}

uint64_t AUDecorrelator::GetParameterInfo(AUDecorrelator *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->unitName = 0;
  buffer->flags = 0x40000000;
  result = 4294956418;
  if (!a2 && a3 <= 2)
  {
    v6 = *(&off_1E866C5D0 + a3);
    v7 = flt_1DE0E909C[a3];
    v8 = flt_1DE0E90A8[a3];
    v9 = dword_1DE0E90B4[a3];
    buffer->cfNameString = v6;
    buffer->flags = 1207959552;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    *&buffer->unit = 0;
    buffer->maxValue = v7;
    buffer->defaultValue = v8;
    buffer->flags |= v9;
  }

  return result;
}

uint64_t AUDecorrelator::Render(AUDecorrelator *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(this + 84) < a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  v10 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v12)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    v13 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v13)
    {
      if (!*(v13 + 144) || (v15[0] = *(v13 + 152) + 48, !*(v11 + 144)))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v14 = *(v11 + 152) + 48;
      return (*(*this + 184))(this, a2, a4, 1, v15, 1, &v14);
    }

LABEL_15:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUDecorrelator::ProcessMultipleBufferLists(AUDecorrelator *this, unsigned int *a2, vDSP_Length __N, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 84) < __N)
  {
    return 4294956422;
  }

  v32 = v7;
  v33 = v8;
  if (*(this + 528) == 1)
  {
    v13 = *(this + 137);
    if (*(this + 540) == *(this + 541))
    {
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          memcpy((*a7)->mBuffers[v14].mData, (*a5)->mBuffers[v14].mData, (*a7)->mBuffers[v14].mDataByteSize);
          ++v15;
          ++v14;
        }

        while (v15 < *(this + 137));
      }
    }

    else if (v13)
    {
      v29 = 0;
      v30 = 0;
      do
      {
        bzero((*a7)->mBuffers[v29].mData, (*a7)->mBuffers[v29].mDataByteSize);
        ++v30;
        ++v29;
      }

      while (v30 < *(this + 137));
    }
  }

  else
  {
    v16 = __N;
    v17 = *(this + 133);
    if (v17 != *(this + 134))
    {
      AUDecorrelator::ApplyParameters(this);
      *(this + 134) = v17;
    }

    if ((*(this + 540) & 1) == 0 && (*(this + 541) & 1) == 0)
    {
      v18 = *(this + 137);
      if (v18)
      {
        v19 = (this + 576);
        v20 = 16;
        do
        {
          *(v19 - 2) = *(&(*a5)->mNumberBuffers + v20);
          *v19++ = *(&(*a7)->mNumberBuffers + v20);
          v20 += 16;
          --v18;
        }

        while (v18);
      }

      v31 = *(this + 151) * 0.5;
      if (*(this + 150))
      {
        v21 = 0;
        v22 = this + 632;
        v23 = 4 * v16;
        v24 = v16;
        do
        {
          v25 = &v22[8 * v21];
          v26 = *(v25 - 9);
          v27 = *(v25 - 7);
          if (!*&v22[4 * v21] || v31 == 0.0)
          {
            memcpy(v27, v26, v23);
          }

          else
          {
            vDSP_vabs(v26, 1, *(this + 76), 1, v24);
            v28 = *(this + 76);
            if (*&v22[4 * v21] == 1)
            {
              MEMORY[0x1E12BE5D0](v26, 1, *(this + 76), 1, v28, 1, v24);
            }

            else
            {
              MEMORY[0x1E12BE9A0](*(this + 76), 1, v26, 1, v28, 1, v24);
            }

            MEMORY[0x1E12BE940](*(this + 76), 1, &v31, *(this + 76), 1, v24);
            MEMORY[0x1E12BE5D0](v26, 1, *(this + 76), 1, v27, 1, v24);
          }

          ++v21;
        }

        while (v21 < *(this + 150));
      }
    }
  }

  return 0;
}

uint64_t AUDecorrelator::SetParameter(AUDecorrelator *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (a2 <= 2)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUDecorrelator::SetProperty(AUDecorrelator *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 >= 4)
    {
      if ((*a5 != 0) == *(this + 528))
      {
        return 0;
      }

      else
      {
        result = 0;
        *(this + 528) = *a5 != 0;
      }
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUDecorrelator::GetProperty(AUDecorrelator *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 528;
    goto LABEL_7;
  }

  if (a2 == 3700)
  {
    v6 = 376;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AUDecorrelator::GetPropertyInfo(AUDecorrelator *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v7 = 1;
  }

  else
  {
    if (a2 != 3700)
    {
      return 4294956417;
    }

    v7 = 0;
  }

  result = 0;
  *a6 = v7;
  *a5 = 4;
  return result;
}

uint64_t AUDecorrelator::Reset(float **this)
{
  AUDecorrelator::ApplyParameters(this);
  std::vector<float>::resize(this + 76, *(this + 84));
  vDSP_vclr(this[76], 1, this[77] - this[76]);
  return 0;
}

uint64_t AUDecorrelator::Initialize(AUDecorrelator *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_12;
  }

  v3 = *(Element + 80);
  v4 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v4)
  {
    goto LABEL_12;
  }

  if (v3 != *(v4 + 80))
  {
    return 4294956428;
  }

  v5 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v5)
  {
    goto LABEL_12;
  }

  if (*(v5 + 88) != 1819304813)
  {
    return 4294956428;
  }

  v6 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v6)
  {
LABEL_12:
    ausdk::Throw(0xFFFFD583);
  }

  if (*(v6 + 88) != 1819304813)
  {
    return 4294956428;
  }

  v7 = (*(*this + 72))(this, 0, 0);
  if (v7)
  {
    (*(*this + 64))(this);
  }

  return v7;
}

void AUDecorrelator::~AUDecorrelator(AUDecorrelator *this)
{
  AUDecorrelator::~AUDecorrelator(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592A1E8;
  v2 = *(this + 76);
  if (v2)
  {
    *(this + 77) = v2;
    operator delete(v2);
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUDenoise::SetMaxFramesPerSlice(AUDenoise *this, int a2)
{
  result = ausdk::AUBase::SetMaxFramesPerSlice(this, a2);
  if (*(this + 154) != a2)
  {
    *(this + 154) = a2;
  }

  return result;
}

uint64_t AUDenoise::GetScopeExtended(AUDenoise *this, int a2)
{
  if (a2 == 4)
  {
    return this + 568;
  }

  else
  {
    return 0;
  }
}

uint64_t AUDenoise::ChangeStreamFormat(AUDenoise *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  if (a4->mSampleRate != a5->mSampleRate)
  {
    *(this + 78) = *&a5->mSampleRate;
  }

  return 0;
}

uint64_t AUDenoise::ValidFormat(AUDenoise *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 64 && a4->mFormatID == 1718773105)
  {
    result = (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    result = 0;
  }

  if (a2 == 2 || a2 == 1)
  {
    if (a4->mChannelsPerFrame < 0x11)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUDenoise::SupportedNumChannels(AUDenoise *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUDenoise::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 16;
}

uint64_t AUDenoise::GetParameterValueStrings(AUDenoise *this, int a2, int a3, const __CFArray **a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  result = 0;
  if (a3 <= 31)
  {
    if (a3)
    {
      if (a3 != 30)
      {
        return result;
      }

      v9 = xmmword_1E866C608;
      v7 = 2;
    }

    else
    {
      v9 = xmmword_1E866C5E8;
      v10 = *&off_1E866C5F8;
      v7 = 4;
    }
  }

  else
  {
    switch(a3)
    {
      case ' ':
        v6 = &xmmword_1E866C618;
        break;
      case ')':
        v6 = &xmmword_1E866C630;
        break;
      case '*':
        v6 = &xmmword_1E866C648;
        break;
      default:
        return result;
    }

    v9 = *v6;
    *&v10 = *(v6 + 2);
    v7 = 3;
  }

  v8 = CFArrayCreate(0, &v9, v7, 0);
  result = 0;
  *a4 = v8;
  return result;
}

uint64_t AUDenoise::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    this[66] = (this[66] + 1);
    this[68] = (this[68] + 1);
  }

  return result;
}

uint64_t AUDenoise::SaveExtendedScopes(AUDenoise *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUDenoise::GetParameterInfo(AUDenoise *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2 == 4)
  {
    result = 4294956418;
    if (a3 <= 19)
    {
      if (a3 == 18)
      {
        buffer->cfNameString = @"EC Delta EIR.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC Delta EIR.", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v8 = 0x501502F900000000;
      }

      else
      {
        if (a3 != 19)
        {
          return result;
        }

        buffer->cfNameString = @"EC IR Delay.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC IR Delay.", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v8 = 0x43C8000000000000;
      }

      goto LABEL_18;
    }

    switch(a3)
    {
      case 20:
        v7 = @"EC Adapted flag.";
        break;
      case 21:
        buffer->cfNameString = @"EC Time aligned ref signal energy.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC Time aligned ref signal energy.", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v8 = 0x447A000000000000;
LABEL_18:
        *&buffer->minValue = v8;
        flags = buffer->flags;
        v10 = 1073774592;
LABEL_77:
        v19 = flags | v10;
LABEL_78:
        result = 0;
        buffer->flags = v19;
        return result;
      case 22:
        v7 = @"EC Mic-Eclee cross correlation.";
        break;
      default:
        return result;
    }

    buffer->cfNameString = v7;
    buffer->flags = 0x8000000;
    CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Generic;
    buffer->defaultValue = 0.0;
    v8 = 0x3F80000000000000;
    goto LABEL_18;
  }

  if (!a2)
  {
    result = 4294956418;
    switch(a3)
    {
      case 0:
        buffer->cfNameString = @"PMWF mode";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"PMWF mode", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        v6 = 0x4040000000000000;
        goto LABEL_44;
      case 1:
        v21 = @"Smoothing time constant for mic PSD";
        goto LABEL_39;
      case 2:
        v21 = @"Smoothing time constant for noise PSD";
LABEL_39:
        buffer->cfNameString = v21;
        buffer->flags = 0x8000000;
        CFStringGetCString(v21, buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        *&buffer->minValue = 0x4000000000000000;
        v15 = 0.38;
        goto LABEL_55;
      case 3:
        buffer->cfNameString = @"Smoothing time constant for SPP";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Smoothing time constant for SPP", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        v6 = 0x4000000000000000;
LABEL_44:
        *&buffer->minValue = v6;
        buffer->defaultValue = 0.0;
        goto LABEL_56;
      case 4:
        buffer->cfNameString = @"Parameter for Wiener filter";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Parameter for Wiener filter", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v22 = 0x41A0000000000000;
        goto LABEL_54;
      case 5:
        buffer->cfNameString = @"Initial noise PSD";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Initial noise PSD", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 0xC1F00000C2480000;
        v15 = -30.0;
        goto LABEL_55;
      case 6:
        buffer->cfNameString = @"A priori SPP";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"A priori SPP", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F80000000000000;
        v15 = 0.5;
        goto LABEL_55;
      case 7:
        buffer->cfNameString = @"Max SPP";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Max SPP", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v22 = 0x3F80000000000000;
LABEL_54:
        *&buffer->minValue = v22;
        v15 = 1.0;
        goto LABEL_55;
      case 8:
        buffer->cfNameString = @"Max GLR";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Max GLR", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x47C35000447A0000;
        v15 = 100000.0;
        goto LABEL_55;
      case 9:
        buffer->cfNameString = @"Depricated";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Depricated", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x424800003F800000;
        buffer->defaultValue = 5.0;
        v10 = -988807168;
        goto LABEL_77;
      case 10:
        buffer->cfNameString = @"Number of frames for MVAD tracker";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Number of frames for MVAD tracker", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x424800003F800000;
        v17 = 5.0;
        goto LABEL_47;
      case 11:
        buffer->cfNameString = @"Speech to noise level threshold";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Speech to noise level threshold", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 0x41A0000000000000;
        v13 = 6.9897;
        goto LABEL_75;
      case 12:
        buffer->cfNameString = @"Noise reduction amount";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Noise reduction amount", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 3281387520;
        v15 = -300.0;
LABEL_55:
        buffer->defaultValue = v15;
LABEL_56:
        v19 = buffer->flags | 0xC0000000;
        goto LABEL_78;
      case 13:
        buffer->cfNameString = @"Max a priori SAP";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Max a priori SAP", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F80000000000000;
        v13 = 0.99;
        goto LABEL_75;
      case 14:
        v23 = @"Filter echo estimates?";
        goto LABEL_51;
      case 15:
        v23 = @"Stop adaptation during echo?";
LABEL_51:
        buffer->cfNameString = v23;
        buffer->flags = 0x8000000;
        CFStringGetCString(v23, buffer->name, 52, 0x8000100u);
        buffer->clumpID = 2;
        v24 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        *&buffer->minValue = 0x3F80000000000000;
        buffer->defaultValue = 0.0;
        v19 = v24 | 0xC0100000;
        goto LABEL_78;
      case 16:
        v25 = @"Sxx threshold to stop adaptation.";
        goto LABEL_64;
      case 17:
        v25 = @"Eclee threshold to stop adaptation.";
LABEL_64:
        buffer->cfNameString = v25;
        buffer->flags = 0x8000000;
        CFStringGetCString(v25, buffer->name, 52, 0x8000100u);
        buffer->clumpID = 2;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        buffer->defaultValue = -60.0;
        *&buffer->minValue = 3267887104;
        goto LABEL_76;
      case 23:
        buffer->cfNameString = @"Min a priori SAP";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Min a priori SAP", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3DCCCCCD3C23D70ALL;
        v13 = 0.05;
        goto LABEL_75;
      case 24:
        buffer->cfNameString = @"Number of additional SPP iterations";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Number of additional SPP iterations", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v20 = 0x40A0000000000000;
        goto LABEL_71;
      case 25:
        buffer->cfNameString = @"Use full rank Wiener filter?";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Use full rank Wiener filter?", buffer->name, 52, 0x8000100u);
        v26 = 1;
        goto LABEL_69;
      case 26:
        buffer->cfNameString = @"Number of frames to initialize noise cov.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Number of frames to initialize noise cov.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v11 = 0x41A0000000000000;
        goto LABEL_24;
      case 27:
        buffer->cfNameString = @"Average SPP per frame";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Average SPP per frame", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        v18 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F80000000000000;
        buffer->defaultValue = 0.0;
        v19 = v18 | 0x40108000;
        goto LABEL_78;
      case 28:
        buffer->cfNameString = @"Gram-Schmidt regularization energy threshold";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Gram-Schmidt regularization energy threshold", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 0xC3480000C3960000;
        v16 = -250.0;
        goto LABEL_58;
      case 29:
        buffer->cfNameString = @"Time period after which debug metrics are logged";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Time period after which debug metrics are logged", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        *&buffer->minValue = 0x45D0500000000000;
        buffer->defaultValue = 0.0;
        goto LABEL_59;
      case 30:
        buffer->cfNameString = @"Steering type for iPMWF";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Steering type for iPMWF", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        v14 = kAudioUnitParameterUnit_Indexed;
        goto LABEL_70;
      case 31:
        buffer->cfNameString = @"Use external SPP for iPMWF?";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Use external SPP for iPMWF?", buffer->name, 52, 0x8000100u);
        v26 = 3;
LABEL_69:
        buffer->clumpID = v26;
        flags = buffer->flags;
        v14 = kAudioUnitParameterUnit_Boolean;
LABEL_70:
        buffer->unit = v14;
        v20 = 0x3F80000000000000;
        goto LABEL_71;
      case 32:
        buffer->cfNameString = @"Type of recursive update of statistics for iPMWF";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Type of recursive update of statistics for iPMWF", buffer->name, 52, 0x8000100u);
        v12 = 3;
        goto LABEL_67;
      case 33:
        buffer->cfNameString = @"Minimum frequency for IVA VAD calculator for iPMWF";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Minimum frequency for IVA VAD calculator for iPMWF", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 4;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        *&buffer->minValue = 0x44FA000042480000;
        v16 = 100.0;
        goto LABEL_58;
      case 34:
        buffer->cfNameString = @"Maximum frequency for IVA VAD calculator for iPMWF";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Maximum frequency for IVA VAD calculator for iPMWF", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 4;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        *&buffer->minValue = 0x45DAC00044FA0000;
        v16 = 7000.0;
        goto LABEL_58;
      case 35:
        buffer->cfNameString = @"Distribution prior for IVA VAD calculator for iPMWF";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Distribution prior for IVA VAD calculator for iPMWF", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 4;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F8000003DCCCCCDLL;
        v16 = 0.5;
        goto LABEL_58;
      case 36:
        buffer->cfNameString = @"Energy threshold for IVA VAD calculator for iPMWF";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Energy threshold for IVA VAD calculator for iPMWF", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 4;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3DCCCCCD358637BDLL;
        v16 = 0.001;
LABEL_58:
        buffer->defaultValue = v16;
LABEL_59:
        v10 = -1005584384;
        goto LABEL_77;
      case 37:
        buffer->cfNameString = @"External input VAD for iPMWF";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"External input VAD for iPMWF", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        goto LABEL_73;
      case 38:
        buffer->cfNameString = @"Maximum signal gain for iPMWF";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Maximum signal gain for iPMWF", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 0x4120000000000000;
        v13 = 6.0;
        goto LABEL_75;
      case 39:
        buffer->cfNameString = @"Target beam index from input plist for iPMWF.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Target beam index from input plist for iPMWF.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v20 = 0x428E000000000000;
LABEL_71:
        *&buffer->minValue = v20;
        buffer->defaultValue = 0.0;
        goto LABEL_76;
      case 40:
        buffer->cfNameString = @"Use updated iPMWF filter on current frame";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Use updated iPMWF filter on current frame", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
LABEL_73:
        v27 = 0x3F80000000000000;
        goto LABEL_74;
      case 41:
        buffer->cfNameString = @"Guidance mode for GuidedMWF";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Guidance mode for GuidedMWF", buffer->name, 52, 0x8000100u);
        v12 = 5;
LABEL_67:
        buffer->clumpID = v12;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        v27 = 0x4000000000000000;
LABEL_74:
        *&buffer->minValue = v27;
        v13 = 1.0;
LABEL_75:
        buffer->defaultValue = v13;
LABEL_76:
        v10 = -1072693248;
        goto LABEL_77;
      case 42:
        buffer->cfNameString = @"Covariance inverse calculation mode for GuidedMWF";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Covariance inverse calculation mode for GuidedMWF", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 5;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        *&buffer->minValue = 0x4000000000000000;
        v17 = 2.0;
LABEL_47:
        buffer->defaultValue = v17;
        goto LABEL_48;
      case 43:
        buffer->cfNameString = @"Apply post mask on 1ch input for Blind PMWF";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Apply post mask on 1ch input for Blind PMWF", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        v11 = 0x3F80000000000000;
LABEL_24:
        *&buffer->minValue = v11;
        buffer->defaultValue = 0.0;
LABEL_48:
        v10 = -1055916032;
        goto LABEL_77;
      default:
        return result;
    }
  }

  return 4294956430;
}

uint64_t AUDenoise::GetParameterList(AUDenoise *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 4)
  {
    if (!a3)
    {
      v4 = 5;
      goto LABEL_10;
    }

    v4 = 5;
    *a3 = 18;
    v5 = 22;
    v6 = 21;
    v7 = 20;
    v8 = 19;
    v9 = 4;
    v10 = 3;
    v11 = 2;
    v12 = 1;
    goto LABEL_7;
  }

  if (a2)
  {
    return 4294956430;
  }

  v4 = 39;
  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09C1E0;
    *(a3 + 3) = xmmword_1DE09DE10;
    *(a3 + 4) = xmmword_1DE09DE20;
    *(a3 + 5) = xmmword_1DE09DE30;
    v5 = 43;
    *(a3 + 6) = xmmword_1DE09DE40;
    *(a3 + 7) = xmmword_1DE09BF30;
    v6 = 42;
    v7 = 41;
    v8 = 40;
    v9 = 38;
    *(a3 + 16) = 0x2600000025;
    v10 = 37;
    v11 = 36;
    v12 = 35;
    a3[34] = 39;
LABEL_7:
    a3[v12] = v8;
    a3[v11] = v7;
    a3[v10] = v6;
    a3[v9] = v5;
  }

LABEL_10:
  result = 0;
  *a4 = v4;
  return result;
}

ausdk::AUInputElement *AUDenoise::Render(AUDenoise *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = 1;
  do
  {
    v11 = v10;
    Element = ausdk::AUScope::GetElement((this + 80), v8);
    if (Element && *(Element + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v8);
      if (v14)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, v8, a4);
      }

      if (result)
      {
        return result;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = 0;
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  v15 = 0;
  v28 = 0;
  v29[0] = 0;
  v16 = &v28;
  v17 = 1;
  do
  {
    v18 = v17;
    v19 = ausdk::AUScope::GetElement((this + 128), v15);
    if (!v19)
    {
LABEL_21:
      ausdk::Throw(0xFFFFD583);
    }

    v20 = ausdk::AUIOElement::PrepareBuffer(v19, a4);
    v17 = 0;
    *v16 = v20;
    v15 = 1;
    v16 = v29;
  }

  while ((v18 & 1) != 0);
  if (v9)
  {
    return 0;
  }

  v21 = 0;
  v26 = 0;
  v27 = 0;
  v22 = &v26;
  v23 = 1;
  do
  {
    v24 = v23;
    v25 = ausdk::AUScope::GetElement((this + 80), v21);
    if (!v25)
    {
      goto LABEL_21;
    }

    if (!*(v25 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v23 = 0;
    *v22 = *(v25 + 152) + 48;
    v21 = 1;
    v22 = &v27;
  }

  while ((v24 & 1) != 0);
  return (*(*this + 184))(this, a2, a4, 2, &v26, 2, &v28);
}

uint64_t AUDenoise::ProcessMultipleBufferLists(AUDenoise *this, unsigned int *a2, AudioDSP::Utility *a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7, double a8)
{
  v10 = a3;
  v75 = *MEMORY[0x1E69E9840];
  LODWORD(a8) = *(this + 154);
  *(this + 81) = *(this + 81) + *&a8 / *(this + 78);
  v12 = *(this + 66);
  if (*(this + 67) != v12)
  {
    AUDenoise::UpdateState(this);
    *(this + 67) = v12;
  }

  v13 = *(this + 68);
  if (*(this + 69) != v13)
  {
    if (*(this + 158))
    {
      v14 = 0;
      v15 = (this + 836);
      do
      {
        Element = ausdk::AUScope::GetElement((this + 568), v14);
        *(v15 - 4) = ausdk::AUElement::GetParameter(Element, 0x12u);
        v17 = ausdk::AUScope::GetElement((this + 568), v14);
        *(v15 - 3) = ausdk::AUElement::GetParameter(v17, 0x13u);
        v18 = ausdk::AUScope::GetElement((this + 568), v14);
        *(v15 - 2) = ausdk::AUElement::GetParameter(v18, 0x14u);
        v19 = ausdk::AUScope::GetElement((this + 568), v14);
        *(v15 - 1) = ausdk::AUElement::GetParameter(v19, 0x15u);
        v20 = ausdk::AUScope::GetElement((this + 568), v14);
        *v15 = ausdk::AUElement::GetParameter(v20, 0x16u);
        v15 += 5;
        ++v14;
      }

      while (v14 < *(this + 158));
    }

    *(this + 69) = v13;
  }

  if (*(this + 154) != v10)
  {
    return 4294956422;
  }

  v21 = *a5;
  if (!*a5)
  {
    if (AUDenoiseLogScope(void)::once != -1)
    {
      dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
    }

    if (AUDenoiseLogScope(void)::scope)
    {
      v29 = *AUDenoiseLogScope(void)::scope;
      if (!*AUDenoiseLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v71.mNumberBuffers = 136315394;
      *(&v71.mNumberBuffers + 1) = "AUDenoise.cpp";
      LOWORD(v71.mBuffers[0].mDataByteSize) = 1024;
      *(&v71.mBuffers[0].mDataByteSize + 2) = 1539;
      v30 = "%25s:%-5d InputSignals cannot be NULL. It is a required input\n";
LABEL_46:
      _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, v30, &v71, 0x12u);
    }

    return 4294956420;
  }

  v22 = *v21;
  if (*v21 != *(this + 158))
  {
    return 4294956428;
  }

  v23 = a5[1];
  if (!v23)
  {
    if (AUDenoiseLogScope(void)::once != -1)
    {
      dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
    }

    if (AUDenoiseLogScope(void)::scope)
    {
      v29 = *AUDenoiseLogScope(void)::scope;
      if (!*AUDenoiseLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v71.mNumberBuffers = 136315394;
      *(&v71.mNumberBuffers + 1) = "AUDenoise.cpp";
      LOWORD(v71.mBuffers[0].mDataByteSize) = 1024;
      *(&v71.mBuffers[0].mDataByteSize + 2) = 1547;
      v30 = "%25s:%-5d EchoEstimates cannot be NULL when Beam selection is not Off.\n";
      goto LABEL_46;
    }

    return 4294956420;
  }

  if (v23->mNumberBuffers != v22 || *a7 && (*a7)->mNumberBuffers != v22)
  {
    return 4294956428;
  }

  v24 = a7[1];
  if (v24)
  {
    if (v24->mNumberBuffers != v22)
    {
      return 4294956428;
    }
  }

  v62 = 0;
  v25 = (2 * v10);
  *&v71.mNumberBuffers = *(this + 78);
  v71.mBuffers[0] = xmmword_1DE09BD50;
  v72 = 4;
  v73 = v22;
  v74 = 32;
  AudioDSP::Utility::DetectNonFinites(v25, v21, &v71, (&v62 + 3), a5);
  AudioDSP::Utility::DetectNonFinites(v25, a5[1], &v71, (&v62 + 2), v26);
  if ((*(this + 560) & 1) == 0 && ((v62 & 0x1000000) == 0 && BYTE2(v62) != 1 || *(this + 656) != 1))
  {
    if (*(this + 810) == 1 && (v31 = *(this + 158), v31))
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = (this + 20 * v32 + 820);
        if (v34[2] == 0.0)
        {
          v35 = v34[3];
          v36 = *(this + 203);
          v37 = 1.0;
          if (v36 != 0.0)
          {
            v37 = __exp10f(v36 / 10.0);
          }

          if (v35 > v37)
          {
            v33 = 1;
          }
        }

        else
        {
          v38 = *(this + 154);
          if (v38)
          {
            v40 = 0.0;
            mData = a5[1]->mBuffers[v32].mData;
            v42 = *(this + 154);
            do
            {
              v43 = *mData++;
              v39 = a5[1]->mBuffers[v32].mData;
              v40 = v40 + ((v39[v38] * v39[v38]) + (v43 * v43));
              ++v38;
              --v42;
            }

            while (v42);
          }

          else
          {
            v40 = 0.0;
          }

          v44 = *(this + 204);
          v45 = 1.0;
          if (v44 != 0.0)
          {
            v45 = __exp10f(v44 / 10.0);
          }

          v33 |= v40 > v45;
        }

        ++v32;
      }

      while (v32 != v31);
      v46 = v33 ^ 1;
    }

    else
    {
      v46 = 1;
    }

    v47 = *(this + 165);
    v48 = *a5;
    v49 = a5[1];
    v50 = *a7;
    v51 = a7[1];
    v52 = *(this + 809);
    if (v47 == 3)
    {
      GuidedMWF::ProcessBufferList(*(this + 145), v48, v49, v50, v51, v52, v46 & 1);
    }

    else if (v47 == 2)
    {
      iPMWF_HRLS_vDSP::ProcessBufferList(*(this + 144), v48, v49, v50, v51, v52, v46 & 1);
    }

    else
    {
      PMWF_FAST_GS_vDSP::ProcessBufferList(*(this + 143), v48, v49, v50, v51, v52, v46 & 1);
    }

    if ((*(this + 809) & 1) == 0)
    {
      CopyBufferList(a5[1], a7[1]);
    }

    v53 = *(this + 165);
    if (v53 != 3)
    {
      if (v53 == 2)
      {
        v54 = *(this + 144);
        v63 = 0.0;
        vDSP_meanv(*(v54 + 216), 1, &v63, *(v54 + 36));
        v55 = v63;
      }

      else
      {
        v55 = *(*(this + 143) + 1520);
      }

      *(this + 183) = v55;
    }

    v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v57 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v56, 0x1Bu, *(this + 183));
    AudioDSP::Utility::DetectNonFinites(v25, *a7, &v71, (&v62 + 1), v58);
    AudioDSP::Utility::DetectNonFinites(v25, a7[1], &v71, &v62, v59);
    if ((v62 & 0x100) == 0 && v62 != 1 || *(this + 656) != 1)
    {
      goto LABEL_96;
    }

    if (AUDenoiseLogScope(void)::once != -1)
    {
      dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
    }

    if (AUDenoiseLogScope(void)::scope)
    {
      v61 = *AUDenoiseLogScope(void)::scope;
      if (!*AUDenoiseLogScope(void)::scope)
      {
LABEL_95:
        (*(*this + 64))(this);
        CopyBufferList(*a5, *a7);
        CopyBufferList(a5[1], a7[1]);
        *(this + 80) = 0;
LABEL_96:
        AUDenoise::LogMaster(this, *a5, *a7, v60);
        return 0;
      }
    }

    else
    {
      v61 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v63 = 4.8153e-34;
      v64 = "AUDenoise.cpp";
      v65 = 1024;
      v66 = 1675;
      v67 = 1024;
      v68 = BYTE1(v62);
      v69 = 1024;
      v70 = v62;
      _os_log_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d AUDenoise: (OutputSignals, PMWFLeeOut) is NOT finite: (%u, %u)\n", &v63, 0x1Eu);
    }

    goto LABEL_95;
  }

  CopyBufferList(*a5, *a7);
  CopyBufferList(a5[1], a7[1]);
  if ((v62 & 0x1000000) == 0 && BYTE2(v62) != 1)
  {
    goto LABEL_73;
  }

  if (AUDenoiseLogScope(void)::once != -1)
  {
    dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
  }

  if (!AUDenoiseLogScope(void)::scope)
  {
    v27 = MEMORY[0x1E69E9C10];
LABEL_71:
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v63 = 4.8153e-34;
      v64 = "AUDenoise.cpp";
      v65 = 1024;
      v66 = 1586;
      v67 = 1024;
      v68 = HIBYTE(v62);
      v69 = 1024;
      v70 = BYTE2(v62);
      _os_log_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d AUDenoise: (InputSignals, EchoEstimates) is NOT finite: (%u, %u)\n", &v63, 0x1Eu);
    }

    goto LABEL_73;
  }

  v27 = *AUDenoiseLogScope(void)::scope;
  if (*AUDenoiseLogScope(void)::scope)
  {
    goto LABEL_71;
  }

LABEL_73:
  *(this + 80) = 0;
  return 0;
}

void AUDenoise::UpdateState(float32x2_t *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[82].i32[1] = ausdk::AUElement::GetParameter(v2, 0);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[83].f32[0] = ausdk::AUElement::GetParameter(v4, 1u);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[83].f32[1] = ausdk::AUElement::GetParameter(v6, 2u);
  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[84].f32[0] = ausdk::AUElement::GetParameter(v8, 3u);
  v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v11 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[84].f32[1] = ausdk::AUElement::GetParameter(v10, 4u);
  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[85].f32[0] = ausdk::AUElement::GetParameter(v12, 5u);
  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[85].f32[1] = ausdk::AUElement::GetParameter(v14, 6u);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[86].f32[0] = ausdk::AUElement::GetParameter(v16, 7u);
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[86].f32[1] = ausdk::AUElement::GetParameter(v18, 8u);
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[87].i32[0] = ausdk::AUElement::GetParameter(v20, 9u);
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[87].i32[1] = ausdk::AUElement::GetParameter(v22, 0xAu);
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[88].f32[0] = ausdk::AUElement::GetParameter(v24, 0xBu);
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[88].f32[1] = ausdk::AUElement::GetParameter(v26, 0xCu);
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[89].f32[0] = ausdk::AUElement::GetParameter(v28, 0xDu);
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[89].f32[1] = ausdk::AUElement::GetParameter(v30, 0x17u);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[90].i32[0] = ausdk::AUElement::GetParameter(v32, 0x18u);
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[90].i8[4] = ausdk::AUElement::GetParameter(v34, 0x19u) != 0.0;
  v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[91].i32[0] = ausdk::AUElement::GetParameter(v36, 0x1Au);
  v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[91].f32[1] = ausdk::AUElement::GetParameter(v38, 0x1Bu);
  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[92].f32[0] = ausdk::AUElement::GetParameter(v40, 0x1Cu);
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[92].f32[1] = ausdk::AUElement::GetParameter(v42, 0x1Du);
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[94].i32[1] = ausdk::AUElement::GetParameter(v44, 0x1Eu);
  v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[95].i8[0] = ausdk::AUElement::GetParameter(v46, 0x1Fu) != 0.0;
  v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[95].i32[1] = ausdk::AUElement::GetParameter(v48, 0x20u);
  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[96].f32[0] = ausdk::AUElement::GetParameter(v50, 0x21u);
  v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[96].f32[1] = ausdk::AUElement::GetParameter(v52, 0x22u);
  v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[97].f32[0] = ausdk::AUElement::GetParameter(v54, 0x23u);
  v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[97].f32[1] = ausdk::AUElement::GetParameter(v56, 0x24u);
  v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[98].f32[0] = ausdk::AUElement::GetParameter(v58, 0x25u);
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[98].f32[1] = ausdk::AUElement::GetParameter(v60, 0x26u);
  v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[99].i32[0] = ausdk::AUElement::GetParameter(v62, 0x27u);
  v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[99].i8[4] = ausdk::AUElement::GetParameter(v64, 0x28u) != 0.0;
  v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v67 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[100].i32[0] = ausdk::AUElement::GetParameter(v66, 0x29u);
  v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v69 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[100].i32[1] = ausdk::AUElement::GetParameter(v68, 0x2Au);
  v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[101].i8[0] = ausdk::AUElement::GetParameter(v70, 0x2Bu) != 0.0;
  if (this[92].f32[0] == 0.0)
  {
    this[92].i32[0] = -1015414784;
  }

  v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v73 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[101].i8[1] = ausdk::AUElement::GetParameter(v72, 0xEu) != 0.0;
  v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v75 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[101].i8[2] = ausdk::AUElement::GetParameter(v74, 0xFu) != 0.0;
  v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v77 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[101].f32[1] = ausdk::AUElement::GetParameter(v76, 0x10u);
  v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_95;
  }

  this[102].f32[0] = ausdk::AUElement::GetParameter(v78, 0x11u);
  v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v81 & 1) == 0)
  {
    goto LABEL_95;
  }

  Parameter = ausdk::AUElement::GetParameter(v80, 1u);
  v83 = 0.0;
  if (Parameter != 0.0)
  {
    v84 = *&this[78];
    v83 = expf((-this[77].u32[0] / v84) / Parameter);
  }

  this[93].f32[0] = v83;
  v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v86 & 1) == 0)
  {
    goto LABEL_95;
  }

  v87 = ausdk::AUElement::GetParameter(v85, 2u);
  v88 = 0.0;
  if (v87 != 0.0)
  {
    v89 = *&this[78];
    v88 = expf((-this[77].u32[0] / v89) / v87);
  }

  this[93].f32[1] = v88;
  v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v91 & 1) == 0)
  {
LABEL_95:
    abort();
  }

  v93 = ausdk::AUElement::GetParameter(v90, 3u);
  v94 = 0.0;
  if (v93 != 0.0)
  {
    v95 = *&this[78];
    v94 = expf((-this[77].u32[0] / v95) / v93);
  }

  this[94].f32[0] = v94;
  if (!*&this[156] && this[92].f32[1] > 0.0)
  {
    caulk::concurrent::messenger::shared_logging_priority(v92);
    operator new();
  }

  v96 = this[82].i32[1];
  if (v96 == 3)
  {
    if (this[145])
    {
      v97 = this[93].f32[0];
LABEL_74:
      v108 = this[145];
      *(*&v108 + 8) = v97;
      v109 = 1.0;
      *(*&v108 + 52) = sqrtf(1.0 - v97);
      v110 = this[88].f32[1];
      if (v110 != 0.0)
      {
        v109 = __exp10f(v110 / 20.0);
      }

      *(*&v108 + 12) = v109;
      *(*&v108 + 24) = this[100].i32[0];
      return;
    }
  }

  else if (v96 == 2)
  {
    if (this[144])
    {
      v97 = this[93].f32[0];
      goto LABEL_64;
    }
  }

  else if (this[143])
  {
    goto LABEL_62;
  }

  AUDenoise::InitializePMWFClasses(this);
  v96 = this[82].i32[1];
LABEL_62:
  v97 = this[93].f32[0];
  if (v96 == 3)
  {
    goto LABEL_74;
  }

  if (v96 == 2)
  {
LABEL_64:
    v98 = this[144];
    v99 = *(*&v98 + 72);
    v100 = this[93].f32[1];
    *(*&v98 + 8) = v97;
    *(*&v98 + 12) = v100;
    *(*&v98 + 76) = v99 - v97;
    *(*&v98 + 80) = v99 - v100;
    *(*&v98 + 20) = this[84].i32[1];
    if (!*(*&v98 + 84))
    {
      __A = 1.0 / sqrtf(*(*&v98 + 24));
      if (*(*&v98 + 32))
      {
        v101 = 0;
        do
        {
          vDSP_vfill(&__A, (*(*&v98 + 168) + 4 * (*(*&v98 + 36) + *(*&v98 + 40)) * v101), 1, *(*&v98 + 36));
          vDSP_vfill((*&v98 + 24), (*(*&v98 + 696) + 4 * (*(*&v98 + 36) + *(*&v98 + 40)) * v101), 1, *(*&v98 + 36));
          vDSP_vfill((*&v98 + 24), (*(*&v98 + 744) + 4 * (*(*&v98 + 36) + *(*&v98 + 40)) * v101++), 1, *(*&v98 + 36));
        }

        while (v101 < *(*&v98 + 32));
        v98 = this[144];
      }
    }

    v102 = this[77].u32[0];
    v103 = *&this[78] / (v102 + v102);
    *&v103 = v103;
    *(*&v98 + 108) = vmin_u32(vcvt_u32_f32(vrnda_f32(vabs_f32(vdiv_f32(this[96], vdup_lane_s32(*&v103, 0))))), vdup_n_s32(v102));
    *(*&v98 + 116) = this[97];
    *(*&v98 + 124) = this[98].i32[0];
    v104 = this[98].f32[1];
    v105 = 1.0;
    v106 = 1.0;
    if (v104 != 0.0)
    {
      v106 = __exp10f(v104 / 10.0);
    }

    *(*&v98 + 128) = v106;
    v107 = this[88].f32[1];
    if (v107 != 0.0)
    {
      v105 = __exp10f(v107 / 20.0);
    }

    *(*&v98 + 16) = v105;
    return;
  }

  v111 = this[143];
  v112 = *(*&v111 + 76);
  *(*&v111 + 152) = v112 / v97;
  *(*&v111 + 156) = v112 / (v112 - v97);
  v113 = this[93].f32[1];
  *(*&v111 + 8) = v97;
  *(*&v111 + 12) = v113;
  *(*&v111 + 96) = v112 - v97;
  *(*&v111 + 100) = v112 - v113;
  v114 = this[94].f32[0];
  *(*&v111 + 104) = v112 - v114;
  v115 = this[84].i32[1];
  *(*&v111 + 16) = v114;
  *(*&v111 + 20) = v115;
  v116 = this[85].f32[0];
  v117 = 1.0;
  if (v116 != 0.0)
  {
    v117 = __exp10f(v116 / 10.0);
  }

  v118 = (this + 684);
  if (!*(*&v111 + 148))
  {
    *(*&v111 + 24) = v117;
    if (*(*&v111 + 48))
    {
      v119 = 0;
      v120 = 0;
      do
      {
        vDSP_vfill((*&v111 + 24), *(*(*&v111 + 200) + v119), 1, *(*&v111 + 52));
        vDSP_vfill((*&v111 + 24), *(*(*&v111 + 224) + v119), 1, *(*&v111 + 52));
        ++v120;
        v119 += 24;
      }

      while (v120 < *(*&v111 + 48));
      v111 = this[143];
      v112 = *(*&v111 + 76);
    }
  }

  v121 = *v118;
  *(*&v111 + 92) = (v112 - COERCE_FLOAT(*v118)) / COERCE_FLOAT(*v118);
  *(*&v111 + 28) = v121;
  *(*&v111 + 36) = this[86].i32[1];
  v122 = this[92].f32[0];
  v123 = 1.0;
  if (v122 != 0.0)
  {
    v123 = __exp10f(v122 / 10.0);
  }

  *(*&v111 + 44) = v123;
  v124 = this[82].u32[1];
  if (v124 <= 1)
  {
    *(*&v111 + 108) = v124;
  }

  v125 = this[88].f32[0];
  v126 = 1.0;
  v127 = 1.0;
  if (v125 != 0.0)
  {
    v127 = __exp10f(v125 / 10.0);
  }

  *(*&v111 + 120) = v127;
  v128 = this[88].f32[1];
  if (v128 != 0.0)
  {
    v126 = __exp10f(v128 / 20.0);
  }

  *(*&v111 + 124) = v126;
  *(*&v111 + 128) = this[89];
  *(*&v111 + 136) = this[90].i32[0];
  *(*&v111 + 140) = this[90].i8[4];
  if (!*(*&v111 + 148))
  {
    *(*&v111 + 144) = this[91].i32[0];
  }
}

void AUDenoise::LogMaster(AUDenoise *this, const AudioBufferList *a2, const AudioBufferList *a3, double a4)
{
  LODWORD(a4) = *(this + 154);
  v4 = *(this + 80) + *&a4 / *(this + 78);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  *(this + 80) = v4;
  v5 = *(this + 185);
  if (v5 > 0.0 && v4 > v5)
  {
    v7 = *(this + 156);
    if (v7)
    {
      v8 = MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_14;
      }

      v11 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *(v11 + 24) = *(this + 40);
      *v11 = &unk_1F592A6A8;
      caulk::concurrent::messenger::enqueue(v7, v11);
      if (*(this + 158))
      {
        v12 = 0;
        p_mData = &a3->mBuffers[0].mData;
        v14 = &a2->mBuffers[0].mData;
        do
        {
          __C = 0;
          v23 = 0.0;
          vDSP_svesq(*v14, 1, &__C + 1, (2 * *(this + 154)));
          vDSP_svesq(*p_mData, 1, &__C, (2 * *(this + 154)));
          vDSP_distancesq(*v14, 1, *p_mData, 1, &v23, (2 * *(this + 154)));
          v15 = *v8;
          if (!*v8)
          {
            goto LABEL_14;
          }

          v16 = *(this + 156);
          v17 = *&__C + 2.2204e-16;
          v18 = log10f((*&__C + 2.2204e-16) / (*(&__C + 1) + 2.2204e-16)) * 10.0;
          v19 = log10f(v17 / (v23 + 2.2204e-16)) * 10.0;
          v20 = caulk::rt_safe_memory_resource::rt_allocate(v15);
          *(v20 + 16) = 0;
          *(v20 + 24) = v12;
          *(v20 + 28) = v19;
          *(v20 + 32) = v18;
          *v20 = &unk_1F592A6D0;
          *(v20 + 8) = 0;
          caulk::concurrent::messenger::enqueue(v16, v20);
          ++v12;
          p_mData += 2;
          v14 += 2;
        }

        while (v12 < *(this + 158));
      }

      if (!*v8)
      {
LABEL_14:
        __break(1u);
        return;
      }

      v21 = *(this + 156);
      v22 = caulk::rt_safe_memory_resource::rt_allocate(*v8);
      *(v22 + 16) = 0;
      *v22 = &unk_1F592A6F8;
      *(v22 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v21, v22);
      *(this + 80) = 0;
    }
  }
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUDenoise::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_1,unsigned int &,float &,float &>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 28);
  v3 = *(a1 + 32);
  if (AUDenoiseLogScope(void)::once != -1)
  {
    dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
  }

  if (AUDenoiseLogScope(void)::scope)
  {
    v4 = *AUDenoiseLogScope(void)::scope;
    if (!*AUDenoiseLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v6);
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v8 = "AUDenoise.cpp";
    v9 = 1024;
    v10 = 1731;
    v11 = 1024;
    v12 = v1;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDenoise: SNR measure in [dB] for mic-channel %u , internal: %f (dB), external: %f (dB)\n", buf, 0x2Cu);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v6);
}

void caulk::concurrent::details::rt_message_call<AUDenoise::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_1,unsigned int &,float &,float &>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUDenoise::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_2>::perform(caulk::concurrent::message *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (AUDenoiseLogScope(void)::once != -1)
  {
    dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
  }

  if (AUDenoiseLogScope(void)::scope)
  {
    v1 = *AUDenoiseLogScope(void)::scope;
    if (!*AUDenoiseLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v5 = "AUDenoise.cpp";
    v6 = 1024;
    v7 = 1736;
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDenoise: ********* Logging ends *********\n", buf, 0x12u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
}

void caulk::concurrent::details::rt_message_call<AUDenoise::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_2>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUDenoise::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_0,double &,double &>::perform(caulk::concurrent::message *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v2 = *(a1 + 3);
  v1 = *(a1 + 4);
  if (AUDenoiseLogScope(void)::once != -1)
  {
    dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
  }

  if (AUDenoiseLogScope(void)::scope)
  {
    v3 = *AUDenoiseLogScope(void)::scope;
    if (!*AUDenoiseLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v5);
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v7 = "AUDenoise.cpp";
    v8 = 1024;
    v9 = 1715;
    v10 = 2048;
    v11 = v2;
    v12 = 2048;
    v13 = v1;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDenoise: ********* Logging begins *********\nAUDenoise: logging (period, timestamp): (%f, %f) (s)\n", buf, 0x26u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v5);
}

void caulk::concurrent::details::rt_message_call<AUDenoise::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_0,double &,double &>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

void AUDenoise::InitializePMWFClasses(AUDenoise *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (AUDenoiseLogScope(void)::once != -1)
  {
    dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
  }

  if (AUDenoiseLogScope(void)::scope)
  {
    v2 = *AUDenoiseLogScope(void)::scope;
    if (!*AUDenoiseLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "AUDenoise.cpp";
    v10 = 1024;
    v11 = 1925;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDenoise: Initialize PMWF Classes.\n", buf, 0x12u);
  }

LABEL_9:
  v3 = *(this + 170);
  if (v3 != 0.0)
  {
    __exp10f(v3 / 10.0);
  }

  v4 = *(this + 184);
  if (v4 != 0.0)
  {
    __exp10f(v4 / 10.0);
  }

  v5 = *(this + 176);
  if (v5 != 0.0)
  {
    __exp10f(v5 / 10.0);
  }

  v6 = *(this + 177);
  if (v6 != 0.0)
  {
    __exp10f(v6 / 20.0);
  }

  if (*(this + 143))
  {
    std::unique_ptr<PMWF_FAST_GS_vDSP>::reset[abi:ne200100](this + 143, 0);
  }

  if (*(this + 144))
  {
    std::unique_ptr<iPMWF_HRLS_vDSP>::reset[abi:ne200100](this + 144, 0);
  }

  if (*(this + 145))
  {
    std::unique_ptr<GuidedMWF>::reset[abi:ne200100](this + 145, 0);
  }

  v7 = *(this + 165);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *(this + 197);
      if (v8 != 0.0)
      {
        __exp10f(v8 / 10.0);
      }

      operator new();
    }

    if (v7 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v7)
    {
      operator new();
    }

    if (v7 == 1)
    {
      operator new();
    }
  }

  *(this + 148) = *(this + 147);
  std::vector<float>::resize(this + 147, (*(this + 154) + 1));
  *(this + 151) = *(this + 150);
  std::vector<float>::resize(this + 150, (*(this + 154) + 1));
  *(this + 154) = *(this + 153);
  std::vector<float>::resize(this + 153, ((2 * *(this + 154) + 2) * *(this + 158)));
  *(this + 40) = 0u;
}

void sub_1DDE9B8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, void **a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  v37 = v35[43];
  if (v37)
  {
    v35[44] = v37;
    operator delete(v37);
  }

  v38 = v35[40];
  if (v38)
  {
    v35[41] = v38;
    operator delete(v38);
  }

  v39 = v35[37];
  if (v39)
  {
    v35[38] = v39;
    operator delete(v39);
  }

  v40 = v35[34];
  if (v40)
  {
    v35[35] = v40;
    operator delete(v40);
  }

  v41 = v35[31];
  if (v41)
  {
    v35[32] = v41;
    operator delete(v41);
  }

  v42 = *v33;
  if (*v33)
  {
    v35[29] = v42;
    operator delete(v42);
  }

  v43 = v35[25];
  if (v43)
  {
    v35[26] = v43;
    operator delete(v43);
  }

  v44 = v35[22];
  if (v44)
  {
    v35[23] = v44;
    operator delete(v44);
  }

  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v45 = v35[7];
  if (v45)
  {
    operator delete(v45);
  }

  v46 = v35[3];
  if (v46)
  {
    v35[4] = v46;
    operator delete(v46);
  }

  MEMORY[0x1E12BD160](v35, 0x10B0C400BE2CFE6);
  std::unique_ptr<InverseWithGramSchmidt>::reset[abi:ne200100]((v32 + 520), 0);
  std::unique_ptr<InverseWithHRLS>::reset[abi:ne200100]((v32 + 512), 0);
  std::unique_ptr<InverseWithMoorePenrose>::reset[abi:ne200100]((v32 + 504), 0);
  v47 = *(v32 + 480);
  if (v47)
  {
    operator delete(v47);
  }

  v48 = *(v32 + 448);
  if (v48)
  {
    *(v32 + 456) = v48;
    operator delete(v48);
  }

  v49 = *(v32 + 424);
  if (v49)
  {
    *(v32 + 432) = v49;
    operator delete(v49);
  }

  v50 = *(v32 + 400);
  if (v50)
  {
    *(v32 + 408) = v50;
    operator delete(v50);
  }

  v51 = *(v32 + 376);
  if (v51)
  {
    *(v32 + 384) = v51;
    operator delete(v51);
  }

  v52 = *(v32 + 352);
  if (v52)
  {
    *(v32 + 360) = v52;
    operator delete(v52);
  }

  v53 = *(v32 + 328);
  if (v53)
  {
    *(v32 + 336) = v53;
    operator delete(v53);
  }

  v54 = *(v32 + 304);
  if (v54)
  {
    *(v32 + 312) = v54;
    operator delete(v54);
  }

  v55 = *(v32 + 280);
  if (v55)
  {
    *(v32 + 288) = v55;
    operator delete(v55);
  }

  v56 = *(v32 + 256);
  if (v56)
  {
    *(v32 + 264) = v56;
    operator delete(v56);
  }

  v57 = *(v32 + 232);
  if (v57)
  {
    *(v32 + 240) = v57;
    operator delete(v57);
  }

  v58 = *(v32 + 208);
  if (v58)
  {
    *(v32 + 216) = v58;
    operator delete(v58);
  }

  v59 = *(v32 + 184);
  if (v59)
  {
    *(v32 + 192) = v59;
    operator delete(v59);
  }

  v60 = *(v32 + 160);
  if (v60)
  {
    *(v32 + 168) = v60;
    operator delete(v60);
  }

  v61 = *(v34 + 24);
  if (v61)
  {
    *(v32 + 144) = v61;
    operator delete(v61);
  }

  v62 = *v34;
  if (*v34)
  {
    *(v32 + 120) = v62;
    operator delete(v62);
  }

  v63 = *a18;
  if (*a18)
  {
    *(v32 + 96) = v63;
    operator delete(v63);
  }

  v64 = *a19;
  if (*a19)
  {
    *(v32 + 72) = v64;
    operator delete(v64);
  }

  MEMORY[0x1E12BD160](v32, 0x10B0C40D44E31FDLL);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<PMWF_FAST_GS_vDSP>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 1496);
    if (v3)
    {
      *(v2 + 1504) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 1472);
    if (v4)
    {
      *(v2 + 1480) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 1448);
    if (v5)
    {
      *(v2 + 1456) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 1424);
    if (v6)
    {
      *(v2 + 1432) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 1400);
    if (v7)
    {
      *(v2 + 1408) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 1376);
    if (v8)
    {
      *(v2 + 1384) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 1352);
    if (v9)
    {
      *(v2 + 1360) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 1328);
    if (v10)
    {
      *(v2 + 1336) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 1304);
    if (v11)
    {
      *(v2 + 1312) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 1280);
    if (v12)
    {
      *(v2 + 1288) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 1256);
    if (v13)
    {
      *(v2 + 1264) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 1232);
    if (v14)
    {
      *(v2 + 1240) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 1208);
    if (v15)
    {
      *(v2 + 1216) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 1184);
    if (v16)
    {
      *(v2 + 1192) = v16;
      operator delete(v16);
    }

    v17 = *(v2 + 1160);
    if (v17)
    {
      *(v2 + 1168) = v17;
      operator delete(v17);
    }

    v18 = *(v2 + 1136);
    if (v18)
    {
      *(v2 + 1144) = v18;
      operator delete(v18);
    }

    v19 = *(v2 + 1112);
    if (v19)
    {
      *(v2 + 1120) = v19;
      operator delete(v19);
    }

    v20 = *(v2 + 1088);
    if (v20)
    {
      *(v2 + 1096) = v20;
      operator delete(v20);
    }

    v21 = *(v2 + 1064);
    if (v21)
    {
      *(v2 + 1072) = v21;
      operator delete(v21);
    }

    v22 = *(v2 + 1040);
    if (v22)
    {
      *(v2 + 1048) = v22;
      operator delete(v22);
    }

    v23 = *(v2 + 1016);
    if (v23)
    {
      *(v2 + 1024) = v23;
      operator delete(v23);
    }

    v24 = *(v2 + 992);
    if (v24)
    {
      *(v2 + 1000) = v24;
      operator delete(v24);
    }

    v25 = *(v2 + 968);
    if (v25)
    {
      *(v2 + 976) = v25;
      operator delete(v25);
    }

    v26 = *(v2 + 928);
    if (v26)
    {
      *(v2 + 936) = v26;
      operator delete(v26);
    }

    v27 = *(v2 + 904);
    if (v27)
    {
      *(v2 + 912) = v27;
      operator delete(v27);
    }

    v28 = *(v2 + 880);
    if (v28)
    {
      *(v2 + 888) = v28;
      operator delete(v28);
    }

    v29 = *(v2 + 856);
    if (v29)
    {
      *(v2 + 864) = v29;
      operator delete(v29);
    }

    v30 = *(v2 + 832);
    if (v30)
    {
      *(v2 + 840) = v30;
      operator delete(v30);
    }

    v31 = *(v2 + 808);
    if (v31)
    {
      *(v2 + 816) = v31;
      operator delete(v31);
    }

    v32 = *(v2 + 784);
    if (v32)
    {
      *(v2 + 792) = v32;
      operator delete(v32);
    }

    v33 = *(v2 + 760);
    if (v33)
    {
      *(v2 + 768) = v33;
      operator delete(v33);
    }

    v34 = *(v2 + 736);
    if (v34)
    {
      *(v2 + 744) = v34;
      operator delete(v34);
    }

    v35 = *(v2 + 712);
    if (v35)
    {
      *(v2 + 720) = v35;
      operator delete(v35);
    }

    v36 = *(v2 + 688);
    if (v36)
    {
      *(v2 + 696) = v36;
      operator delete(v36);
    }

    v37 = *(v2 + 664);
    if (v37)
    {
      *(v2 + 672) = v37;
      operator delete(v37);
    }

    v38 = *(v2 + 640);
    if (v38)
    {
      *(v2 + 648) = v38;
      operator delete(v38);
    }

    v39 = *(v2 + 616);
    if (v39)
    {
      *(v2 + 624) = v39;
      operator delete(v39);
    }

    v40 = *(v2 + 592);
    if (v40)
    {
      *(v2 + 600) = v40;
      operator delete(v40);
    }

    v41 = *(v2 + 568);
    if (v41)
    {
      *(v2 + 576) = v41;
      operator delete(v41);
    }

    v42 = *(v2 + 544);
    if (v42)
    {
      *(v2 + 552) = v42;
      operator delete(v42);
    }

    v43 = *(v2 + 520);
    if (v43)
    {
      *(v2 + 528) = v43;
      operator delete(v43);
    }

    v44 = *(v2 + 496);
    if (v44)
    {
      *(v2 + 504) = v44;
      operator delete(v44);
    }

    v45 = *(v2 + 472);
    if (v45)
    {
      *(v2 + 480) = v45;
      operator delete(v45);
    }

    v46 = *(v2 + 448);
    if (v46)
    {
      *(v2 + 456) = v46;
      operator delete(v46);
    }

    v47 = *(v2 + 416);
    if (v47)
    {
      *(v2 + 424) = v47;
      operator delete(v47);
    }

    v48 = *(v2 + 392);
    if (v48)
    {
      *(v2 + 400) = v48;
      operator delete(v48);
    }

    v50 = (v2 + 368);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v50);
    v50 = (v2 + 344);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v50);
    v50 = (v2 + 320);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v50);
    v50 = (v2 + 296);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v50);
    v50 = (v2 + 272);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v50);
    v50 = (v2 + 248);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v50);
    v50 = (v2 + 224);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v50);
    v50 = (v2 + 200);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v50);
    v49 = *(v2 + 176);
    if (v49)
    {
      operator delete(v49);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::unique_ptr<iPMWF_HRLS_vDSP>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[102];
    if (v3)
    {
      v2[103] = v3;
      operator delete(v3);
    }

    v4 = v2[99];
    if (v4)
    {
      v2[100] = v4;
      operator delete(v4);
    }

    v5 = v2[96];
    if (v5)
    {
      v2[97] = v5;
      operator delete(v5);
    }

    v6 = v2[93];
    if (v6)
    {
      v2[94] = v6;
      operator delete(v6);
    }

    v7 = v2[90];
    if (v7)
    {
      v2[91] = v7;
      operator delete(v7);
    }

    v8 = v2[87];
    if (v8)
    {
      v2[88] = v8;
      operator delete(v8);
    }

    v9 = v2[84];
    if (v9)
    {
      v2[85] = v9;
      operator delete(v9);
    }

    v10 = v2[81];
    if (v10)
    {
      v2[82] = v10;
      operator delete(v10);
    }

    v11 = v2[78];
    if (v11)
    {
      v2[79] = v11;
      operator delete(v11);
    }

    v12 = v2[75];
    if (v12)
    {
      v2[76] = v12;
      operator delete(v12);
    }

    v13 = v2[72];
    if (v13)
    {
      v2[73] = v13;
      operator delete(v13);
    }

    v14 = v2[69];
    if (v14)
    {
      v2[70] = v14;
      operator delete(v14);
    }

    v15 = v2[66];
    if (v15)
    {
      v2[67] = v15;
      operator delete(v15);
    }

    v16 = v2[63];
    if (v16)
    {
      v2[64] = v16;
      operator delete(v16);
    }

    v17 = v2[60];
    if (v17)
    {
      v2[61] = v17;
      operator delete(v17);
    }

    v18 = v2[57];
    if (v18)
    {
      v2[58] = v18;
      operator delete(v18);
    }

    v19 = v2[54];
    if (v19)
    {
      v2[55] = v19;
      operator delete(v19);
    }

    v20 = v2[51];
    if (v20)
    {
      v2[52] = v20;
      operator delete(v20);
    }

    v21 = v2[48];
    if (v21)
    {
      v2[49] = v21;
      operator delete(v21);
    }

    v22 = v2[45];
    if (v22)
    {
      v2[46] = v22;
      operator delete(v22);
    }

    v23 = v2[42];
    if (v23)
    {
      v2[43] = v23;
      operator delete(v23);
    }

    v24 = v2[39];
    if (v24)
    {
      v2[40] = v24;
      operator delete(v24);
    }

    v25 = v2[36];
    if (v25)
    {
      v2[37] = v25;
      operator delete(v25);
    }

    v26 = v2[33];
    if (v26)
    {
      v2[34] = v26;
      operator delete(v26);
    }

    v27 = v2[30];
    if (v27)
    {
      v2[31] = v27;
      operator delete(v27);
    }

    v28 = v2[27];
    if (v28)
    {
      v2[28] = v28;
      operator delete(v28);
    }

    v29 = v2[24];
    if (v29)
    {
      v2[25] = v29;
      operator delete(v29);
    }

    v30 = v2[21];
    if (v30)
    {
      v2[22] = v30;
      operator delete(v30);
    }

    v31 = v2[18];
    if (v31)
    {
      v2[19] = v31;
      operator delete(v31);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::unique_ptr<GuidedMWF>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[65];
    v2[65] = 0;
    if (v3)
    {
      InverseWithGramSchmidt::~InverseWithGramSchmidt(v3);
      MEMORY[0x1E12BD160]();
    }

    v4 = v2[64];
    v2[64] = 0;
    if (v4)
    {
      InverseWithHRLS::~InverseWithHRLS(v4);
      MEMORY[0x1E12BD160]();
    }

    v5 = v2[63];
    v2[63] = 0;
    if (v5)
    {
      InverseWithMoorePenrose::~InverseWithMoorePenrose(v5);
      MEMORY[0x1E12BD160]();
    }

    v6 = v2[60];
    if (v6)
    {
      operator delete(v6);
    }

    v7 = v2[56];
    if (v7)
    {
      v2[57] = v7;
      operator delete(v7);
    }

    v8 = v2[53];
    if (v8)
    {
      v2[54] = v8;
      operator delete(v8);
    }

    v9 = v2[50];
    if (v9)
    {
      v2[51] = v9;
      operator delete(v9);
    }

    v10 = v2[47];
    if (v10)
    {
      v2[48] = v10;
      operator delete(v10);
    }

    v11 = v2[44];
    if (v11)
    {
      v2[45] = v11;
      operator delete(v11);
    }

    v12 = v2[41];
    if (v12)
    {
      v2[42] = v12;
      operator delete(v12);
    }

    v13 = v2[38];
    if (v13)
    {
      v2[39] = v13;
      operator delete(v13);
    }

    v14 = v2[35];
    if (v14)
    {
      v2[36] = v14;
      operator delete(v14);
    }

    v15 = v2[32];
    if (v15)
    {
      v2[33] = v15;
      operator delete(v15);
    }

    v16 = v2[29];
    if (v16)
    {
      v2[30] = v16;
      operator delete(v16);
    }

    v17 = v2[26];
    if (v17)
    {
      v2[27] = v17;
      operator delete(v17);
    }

    v18 = v2[23];
    if (v18)
    {
      v2[24] = v18;
      operator delete(v18);
    }

    v19 = v2[20];
    if (v19)
    {
      v2[21] = v19;
      operator delete(v19);
    }

    v20 = v2[17];
    if (v20)
    {
      v2[18] = v20;
      operator delete(v20);
    }

    v21 = v2[14];
    if (v21)
    {
      v2[15] = v21;
      operator delete(v21);
    }

    v22 = v2[11];
    if (v22)
    {
      v2[12] = v22;
      operator delete(v22);
    }

    v23 = v2[8];
    if (v23)
    {
      v2[9] = v23;
      operator delete(v23);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUDenoise::SetParameter(AUDenoise *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3 == 4)
  {
    Element = ausdk::AUScope::GetElement((this + 568), a4);
    v10 = 544;
LABEL_6:
    ausdk::AUElement::SetParameter(Element, a2, a5);
    result = 0;
    ++*(this + v10);
    return result;
  }

  if (!a3)
  {
    Element = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      abort();
    }

    v10 = 528;
    goto LABEL_6;
  }

  return 4294956418;
}

uint64_t AUDenoise::SetProperty(AUDenoise *this, int a2, int a3, unsigned int a4, CFArrayRef *__src, size_t __n)
{
  v81 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 7303)
  {
    if (a2 > 103698)
    {
      if (a2 == 103699)
      {
        if (__n == 8)
        {
          v22 = *(this + 148) - *(this + 147);
          if (CFArrayGetCount(*__src) == v22 >> 2)
          {
            v13 = *(this + 147);
            if (*(this + 148) == v13)
            {
              v9 = 0;
            }

            else
            {
              v23 = 0;
              v24 = 0;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*__src, v24);
                CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, (*(this + 147) + v23));
                ++v24;
                v13 = *(this + 147);
                v26 = *(this + 148) - v13;
                v23 += 4;
              }

              while (v24 < v26 >> 2);
              v9 = v26;
            }

            v36 = *(this + 165);
            if (v36 == 2)
            {
              v11 = *(*(this + 144) + 576);
            }

            else if (v36 == 3)
            {
              v11 = *(*(this + 145) + 304);
            }

            else
            {
              v11 = *(*(this + 143) + 1208);
            }

            goto LABEL_101;
          }
        }

        if (AUDenoiseLogScope(void)::once != -1)
        {
          dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
        }

        if (AUDenoiseLogScope(void)::scope)
        {
          v28 = *AUDenoiseLogScope(void)::scope;
          if (!*AUDenoiseLogScope(void)::scope)
          {
            return 4294956445;
          }
        }

        else
        {
          v28 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          return 4294956445;
        }

        *buf = 136315650;
        *&buf[4] = "AUDenoise.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 433;
        *&buf[18] = 1024;
        *&buf[20] = 103699;
        v30 = "%25s:%-5d Input size of DenoiseInputMaskEstimate_CF is not equal to the the expected size (prop id: %u).\n";
      }

      else
      {
        if (a2 != 1036999)
        {
          return result;
        }

        if (__n == 8)
        {
          v12 = *(this + 151) - *(this + 150);
          if (CFArrayGetCount(*__src) == v12 >> 2)
          {
            v13 = *(this + 150);
            if (*(this + 151) == v13)
            {
              v9 = 0;
            }

            else
            {
              v14 = 0;
              v15 = 0;
              do
              {
                v16 = CFArrayGetValueAtIndex(*__src, v15);
                CFNumberGetValue(v16, kCFNumberFloat32Type, (*(this + 150) + v14));
                ++v15;
                v13 = *(this + 150);
                v17 = *(this + 151) - v13;
                v14 += 4;
              }

              while (v15 < v17 >> 2);
              v9 = v17;
            }

            v37 = *(this + 165);
            if (v37 == 2)
            {
              v11 = *(*(this + 144) + 600);
            }

            else if (v37 == 3)
            {
              v11 = *(*(this + 145) + 328);
            }

            else
            {
              v11 = *(*(this + 143) + 1232);
            }

            goto LABEL_101;
          }
        }

        if (AUDenoiseLogScope(void)::once != -1)
        {
          dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
        }

        if (AUDenoiseLogScope(void)::scope)
        {
          v28 = *AUDenoiseLogScope(void)::scope;
          if (!*AUDenoiseLogScope(void)::scope)
          {
            return 4294956445;
          }
        }

        else
        {
          v28 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          return 4294956445;
        }

        *buf = 136315650;
        *&buf[4] = "AUDenoise.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 468;
        *&buf[18] = 1024;
        *&buf[20] = 1036999;
        v30 = "%25s:%-5d Input size of DenoisePostMaskEstimate_CF is not equal to the the expected size (prop id: %u).\n";
      }

LABEL_95:
      v33 = v28;
      v34 = 24;
LABEL_170:
      _os_log_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_ERROR, v30, buf, v34);
      return 4294956445;
    }

    if (a2 != 7304)
    {
      if (a2 != 36999)
      {
        return result;
      }

      v9 = __n;
      if (__n == 4 * (*(this + 154) + 1))
      {
        v10 = *(this + 165);
        if (v10 == 3)
        {
          v11 = *(*(this + 145) + 328);
        }

        else if (v10 == 2)
        {
          v11 = *(*(this + 144) + 600);
        }

        else
        {
          v11 = *(*(this + 143) + 1232);
        }

LABEL_100:
        v13 = __src;
LABEL_101:
        memcpy(v11, v13, v9);
        return 0;
      }

      if (AUDenoiseLogScope(void)::once != -1)
      {
        dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
      }

      if (AUDenoiseLogScope(void)::scope)
      {
        v28 = *AUDenoiseLogScope(void)::scope;
        if (!*AUDenoiseLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AUDenoise.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 452;
        *&buf[18] = 1024;
        *&buf[20] = 36999;
        v30 = "%25s:%-5d Input size of DenoisePostMaskEstimate is not equal to the the expected size (prop id: %u).\n";
        goto LABEL_95;
      }

      return 4294956445;
    }

    if (!__src)
    {
      if (AUDenoiseLogScope(void)::once != -1)
      {
        dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
      }

      if (AUDenoiseLogScope(void)::scope)
      {
        v29 = *AUDenoiseLogScope(void)::scope;
        if (!*AUDenoiseLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v29 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      *buf = 136315394;
      *&buf[4] = "AUDenoise.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 487;
      v30 = "%25s:%-5d The CFDictionaryRef passed to SetProperty is null.\n";
LABEL_169:
      v33 = v29;
      v34 = 18;
      goto LABEL_170;
    }

    v18 = *__src;
    v19 = *(this + 146);
    v20 = *(this + 198);
    *(v19 + 60) = 0;
    if (AUDenoiseLogScope(void)::once != -1)
    {
      dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
    }

    v78 = 0;
    if (AUDenoiseLogScope(void)::scope)
    {
      v21 = *AUDenoiseLogScope(void)::scope;
      if (!*AUDenoiseLogScope(void)::scope)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 975;
      _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_INFO, "%25s:%-5d Loading sampleRate from topLevelDict.\n", buf, 0x12u);
    }

LABEL_78:
    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*(v19 + 64), v18, @"SampleRate", &v78))
    {
      if (AUDenoiseLogScope(void)::once != -1)
      {
        dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
      }

      if (AUDenoiseLogScope(void)::scope)
      {
        v31 = *AUDenoiseLogScope(void)::scope;
        if (!*AUDenoiseLogScope(void)::scope)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 980;
        v35 = "%25s:%-5d Failed to load the sampling rate from the plist.\n";
LABEL_160:
        _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_ERROR, v35, buf, 0x12u);
        goto LABEL_161;
      }

      goto LABEL_161;
    }

    v77 = 0;
    if (AUDenoiseLogScope(void)::once != -1)
    {
      dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
    }

    if (AUDenoiseLogScope(void)::scope)
    {
      v32 = *AUDenoiseLogScope(void)::scope;
      if (!*AUDenoiseLogScope(void)::scope)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 986;
      _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_INFO, "%25s:%-5d Loading nMicsUsed from topLevelDict.\n", buf, 0x12u);
    }

LABEL_119:
    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*(v19 + 64), v18, @"nMicsUsed", &v77))
    {
      if (AUDenoiseLogScope(void)::once != -1)
      {
        dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
      }

      if (AUDenoiseLogScope(void)::scope)
      {
        v31 = *AUDenoiseLogScope(void)::scope;
        if (!*AUDenoiseLogScope(void)::scope)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 991;
        v35 = "%25s:%-5d Failed to load the number of mics from the plist.\n";
        goto LABEL_160;
      }

LABEL_161:
      if (AUDenoiseLogScope(void)::once != -1)
      {
        dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
      }

      if (AUDenoiseLogScope(void)::scope)
      {
        v29 = *AUDenoiseLogScope(void)::scope;
        if (!*AUDenoiseLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v29 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      *buf = 136315394;
      *&buf[4] = "AUDenoise.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 497;
      v30 = "%25s:%-5d Loading SteeringVectorDictionary was not successful.\n";
      goto LABEL_169;
    }

    v76 = 0;
    if (AUDenoiseLogScope(void)::once != -1)
    {
      dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
    }

    if (AUDenoiseLogScope(void)::scope)
    {
      v38 = *AUDenoiseLogScope(void)::scope;
      if (!*AUDenoiseLogScope(void)::scope)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v38 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 997;
      _os_log_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_INFO, "%25s:%-5d Loading nCoefficients from topLevelDict.\n", buf, 0x12u);
    }

LABEL_140:
    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*(v19 + 64), v18, @"nCoefficients", &v76))
    {
      if (AUDenoiseLogScope(void)::once != -1)
      {
        dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
      }

      if (AUDenoiseLogScope(void)::scope)
      {
        v31 = *AUDenoiseLogScope(void)::scope;
        if (!*AUDenoiseLogScope(void)::scope)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1002;
        v35 = "%25s:%-5d Failed to load the number of filter coefficients from the plist.\n";
        goto LABEL_160;
      }

      goto LABEL_161;
    }

    v40 = v76;
    v39 = v77;
    *(v19 + 48) = v77;
    v41 = v78;
    *(v19 + 52) = v40;
    *(v19 + 56) = v41;
    std::vector<std::vector<float>>::resize(v19, v39);
    std::vector<std::vector<float>>::resize((v19 + 24), *(v19 + 48));
    std::to_string(buf, v20);
    v42 = std::string::insert(buf, 0, "Beam", 4uLL);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v75 = v42->__r_.__value_.__r.__words[2];
    *__p = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v75 >= 0)
    {
      v44 = __p;
    }

    else
    {
      v44 = __p[0];
    }

    v45 = CFStringCreateWithCString(0, v44, 0x8000100u);
    Value = CFDictionaryGetValue(v18, v45);
    if (Value)
    {
      if (AUDenoiseLogScope(void)::once != -1)
      {
        dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
      }

      if (AUDenoiseLogScope(void)::scope)
      {
        v47 = *AUDenoiseLogScope(void)::scope;
        if (!*AUDenoiseLogScope(void)::scope)
        {
          goto LABEL_183;
        }
      }

      else
      {
        v47 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v49 = __p;
        if (v75 < 0)
        {
          v49 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1030;
        *&buf[18] = 2080;
        *&buf[20] = v49;
        _os_log_impl(&dword_1DDB85000, v47, OS_LOG_TYPE_INFO, "%25s:%-5d Found the dictionary: %s\n", buf, 0x1Cu);
      }

LABEL_183:
      CFRelease(v45);
      v50 = CFDictionaryGetValue(Value, @"RealCoefficients");
      if (!v50)
      {
        if (AUDenoiseLogScope(void)::once != -1)
        {
          dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
        }

        if (AUDenoiseLogScope(void)::scope)
        {
          v52 = *AUDenoiseLogScope(void)::scope;
          if (!*AUDenoiseLogScope(void)::scope)
          {
            goto LABEL_266;
          }
        }

        else
        {
          v52 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1039;
          v64 = "%25s:%-5d Missing dictionary RealCoefficients.\n";
LABEL_259:
          _os_log_impl(&dword_1DDB85000, v52, OS_LOG_TYPE_ERROR, v64, buf, 0x12u);
        }

LABEL_266:
        v72 = 0;
LABEL_267:
        if (SHIBYTE(v75) < 0)
        {
          operator delete(__p[0]);
        }

        if (v72)
        {
          result = 0;
          *(this + 657) = 1;
          return result;
        }

        goto LABEL_161;
      }

      if (AUDenoiseLogScope(void)::once != -1)
      {
        dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
      }

      if (AUDenoiseLogScope(void)::scope)
      {
        v51 = *AUDenoiseLogScope(void)::scope;
        if (!*AUDenoiseLogScope(void)::scope)
        {
          goto LABEL_197;
        }
      }

      else
      {
        v51 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1044;
        _os_log_impl(&dword_1DDB85000, v51, OS_LOG_TYPE_INFO, "%25s:%-5d Found the dictionary RealCoefficients.\n", buf, 0x12u);
      }

LABEL_197:
      if (v77)
      {
        v53 = 0;
        v54 = 0;
        while (1)
        {
          std::to_string(&v79, v54);
          v55 = std::string::insert(&v79, 0, "Mic", 3uLL);
          v56 = *&v55->__r_.__value_.__l.__data_;
          *&buf[16] = *(&v55->__r_.__value_.__l + 2);
          *buf = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v79.__r_.__value_.__l.__data_);
          }

          v57 = buf[23] >= 0 ? buf : *buf;
          v58 = CFStringCreateWithCString(0, v57, 0x8000100u);
          VectorFromDictionary = DictionaryBlobReader::ReadVectorFromDictionary(*(v19 + 64), v50, v58, (*v19 + v53));
          CFRelease(v58);
          if (VectorFromDictionary)
          {
            break;
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          ++v54;
          v53 += 24;
          if (v54 >= v77)
          {
            goto LABEL_208;
          }
        }

        if (AUDenoiseLogScope(void)::once != -1)
        {
          dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
        }

        if (AUDenoiseLogScope(void)::scope)
        {
          v63 = *AUDenoiseLogScope(void)::scope;
          if (!*AUDenoiseLogScope(void)::scope)
          {
            goto LABEL_264;
          }
        }

        else
        {
          v63 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_264;
        }

        LODWORD(v79.__r_.__value_.__l.__data_) = 136315394;
        *(v79.__r_.__value_.__r.__words + 4) = "iPMWF_HRLS_vDSP.cpp";
        WORD2(v79.__r_.__value_.__r.__words[1]) = 1024;
        *(&v79.__r_.__value_.__r.__words[1] + 6) = 1056;
        v73 = "%25s:%-5d Error loading RealCoefficients.\n";
        goto LABEL_263;
      }

LABEL_208:
      v60 = CFDictionaryGetValue(Value, @"ImagCoefficients");
      if (v60)
      {
        if (AUDenoiseLogScope(void)::once != -1)
        {
          dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
        }

        if (AUDenoiseLogScope(void)::scope)
        {
          v61 = *AUDenoiseLogScope(void)::scope;
          if (!*AUDenoiseLogScope(void)::scope)
          {
LABEL_236:
            if (!v77)
            {
LABEL_247:
              v72 = 1;
              *(v19 + 60) = 1;
              goto LABEL_267;
            }

            v65 = 0;
            v66 = 0;
            while (1)
            {
              std::to_string(&v79, v66);
              v67 = std::string::insert(&v79, 0, "Mic", 3uLL);
              v68 = *&v67->__r_.__value_.__l.__data_;
              *&buf[16] = *(&v67->__r_.__value_.__l + 2);
              *buf = v68;
              v67->__r_.__value_.__l.__size_ = 0;
              v67->__r_.__value_.__r.__words[2] = 0;
              v67->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v79.__r_.__value_.__l.__data_);
              }

              v69 = buf[23] >= 0 ? buf : *buf;
              v70 = CFStringCreateWithCString(0, v69, 0x8000100u);
              v71 = DictionaryBlobReader::ReadVectorFromDictionary(*(v19 + 64), v60, v70, (*(v19 + 24) + v65));
              CFRelease(v70);
              if (v71)
              {
                break;
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              ++v66;
              v65 += 24;
              if (v66 >= v77)
              {
                goto LABEL_247;
              }
            }

            if (AUDenoiseLogScope(void)::once != -1)
            {
              dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
            }

            if (AUDenoiseLogScope(void)::scope)
            {
              v63 = *AUDenoiseLogScope(void)::scope;
              if (!*AUDenoiseLogScope(void)::scope)
              {
LABEL_264:
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                goto LABEL_266;
              }
            }

            else
            {
              v63 = MEMORY[0x1E69E9C10];
            }

            if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_264;
            }

            LODWORD(v79.__r_.__value_.__l.__data_) = 136315394;
            *(v79.__r_.__value_.__r.__words + 4) = "iPMWF_HRLS_vDSP.cpp";
            WORD2(v79.__r_.__value_.__r.__words[1]) = 1024;
            *(&v79.__r_.__value_.__r.__words[1] + 6) = 1084;
            v73 = "%25s:%-5d Error loading ImagCoefficients.\n";
LABEL_263:
            _os_log_impl(&dword_1DDB85000, v63, OS_LOG_TYPE_ERROR, v73, &v79, 0x12u);
            goto LABEL_264;
          }
        }

        else
        {
          v61 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1072;
          _os_log_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_INFO, "%25s:%-5d Found the dictionary ImagCoefficients.\n", buf, 0x12u);
        }

        goto LABEL_236;
      }

      if (AUDenoiseLogScope(void)::once != -1)
      {
        dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
      }

      if (AUDenoiseLogScope(void)::scope)
      {
        v52 = *AUDenoiseLogScope(void)::scope;
        if (!*AUDenoiseLogScope(void)::scope)
        {
          goto LABEL_266;
        }
      }

      else
      {
        v52 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1067;
        v64 = "%25s:%-5d Missing dictionary ImagCoefficients.\n";
        goto LABEL_259;
      }

      goto LABEL_266;
    }

    if (AUDenoiseLogScope(void)::once != -1)
    {
      dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
    }

    if (AUDenoiseLogScope(void)::scope)
    {
      v48 = *AUDenoiseLogScope(void)::scope;
      if (!*AUDenoiseLogScope(void)::scope)
      {
LABEL_219:
        CFRelease(v45);
        goto LABEL_266;
      }
    }

    else
    {
      v48 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v62 = __p;
      if (v75 < 0)
      {
        v62 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1023;
      *&buf[18] = 2080;
      *&buf[20] = v62;
      _os_log_impl(&dword_1DDB85000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing dictionary: %s\n", buf, 0x1Cu);
    }

    goto LABEL_219;
  }

  switch(a2)
  {
    case 21:
      if (__n == 4)
      {
        result = 0;
        *(this + 560) = *__src != 0;
        return result;
      }

      return 4294956445;
    case 3699:
      v9 = __n;
      if (__n == 4 * (*(this + 154) + 1))
      {
        v27 = *(this + 165);
        if (v27 == 3)
        {
          v11 = *(*(this + 145) + 304);
        }

        else if (v27 == 2)
        {
          v11 = *(*(this + 144) + 576);
        }

        else
        {
          v11 = *(*(this + 143) + 1208);
        }

        goto LABEL_100;
      }

      if (AUDenoiseLogScope(void)::once != -1)
      {
        dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
      }

      if (AUDenoiseLogScope(void)::scope)
      {
        v28 = *AUDenoiseLogScope(void)::scope;
        if (!*AUDenoiseLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AUDenoise.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 417;
        *&buf[18] = 1024;
        *&buf[20] = 3699;
        v30 = "%25s:%-5d Input size of DenoiseInputMaskEstimate is not equal to the the expected size (prop id: %u).\n";
        goto LABEL_95;
      }

      return 4294956445;
    case 3700:
      result = 4294956445;
      if (__n >= 4)
      {
        if (*__src)
        {
          return 0;
        }

        else
        {
          return 4294956445;
        }
      }

      break;
  }

  return result;
}

void sub_1DDE9DCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUDenoise::GetProperty(AUDenoise *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 560;
    goto LABEL_7;
  }

  if (a2 == 3700)
  {
    v6 = 376;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AUDenoise::GetPropertyInfo(AUDenoise *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 3700 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUDenoise::Reset(AUDenoise *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(this + 165);
  if (v1 < 2)
  {
    v7 = *(this + 143);
    *(v7 + 148) = 0;
    vDSP_vfill((v7 + 84), *(v7 + 392), 1, *(v7 + 52));
    LODWORD(v8) = *(v7 + 48);
    if (v8)
    {
      v9 = 0;
      do
      {
        if (*(v7 + 56))
        {
          v10 = 0;
          v11 = 0;
          do
          {
            vDSP_vclr(*(*(*(v7 + 296) + 24 * v9) + v10), 1, *(v7 + 52));
            vDSP_vclr(*(*(*(v7 + 296) + 24 * v9) + v10 + 8), 1, *(v7 + 52));
            vDSP_vclr(*(*(*(v7 + 368) + 24 * v9) + v10), 1, *(v7 + 52));
            vDSP_vclr(*(*(*(v7 + 368) + 24 * v9) + v10 + 8), 1, *(v7 + 52));
            ++v11;
            v10 += 16;
          }

          while (v11 < *(v7 + 56));
          LODWORD(v8) = *(v7 + 48);
        }

        vDSP_vfill((v7 + 80), *(*(*(v7 + 296) + 24 * v9) + 16 * (v8 + v9)), 1, *(v7 + 52));
        vDSP_vfill((v7 + 80), *(*(*(v7 + 368) + 24 * v9) + 16 * (*(v7 + 48) + v9)), 1, *(v7 + 52));
        ++v9;
        v8 = *(v7 + 48);
      }

      while (v9 < v8);
    }
  }

  else if (v1 == 3)
  {
    GuidedMWF::Reset(*(this + 145));
  }

  else if (v1 == 2)
  {
    v2 = *(this + 144);
    *(v2 + 84) = 0;
    vDSP_vfill((v2 + 92), *(v2 + 192), 1, *(v2 + 36));
    vDSP_vclr(*(v2 + 144), 1, (2 * *(v2 + 44)));
    iPMWF_HRLS_vDSP::InitializeFilter(v2);
    v3 = *(v2 + 32);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = 0;
        do
        {
          if (i != v5)
          {
            vDSP_vclr((*(v2 + 168) + 4 * (*(v2 + 40) * i + *(v2 + 36) * v5)), 1, *(v2 + 36));
            vDSP_vclr((*(v2 + 168) + 4 * (*(v2 + 40) * i + *(v2 + 36) * v5 + *(v2 + 44))), 1, *(v2 + 36));
            vDSP_vclr((*(v2 + 696) + 4 * (*(v2 + 40) * i + *(v2 + 36) * v5)), 1, *(v2 + 36));
            vDSP_vclr((*(v2 + 696) + 4 * (*(v2 + 40) * i + *(v2 + 36) * v5 + *(v2 + 44))), 1, *(v2 + 36));
            vDSP_vclr((*(v2 + 744) + 4 * (*(v2 + 40) * i + *(v2 + 36) * v5)), 1, *(v2 + 36));
            vDSP_vclr((*(v2 + 744) + 4 * (*(v2 + 40) * i + *(v2 + 36) * v5 + *(v2 + 44))), 1, *(v2 + 36));
            v3 = *(v2 + 32);
          }

          ++v5;
        }

        while (v5 < v3);
      }
    }

    if (AUDenoiseLogScope(void)::once != -1)
    {
      dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
    }

    if (AUDenoiseLogScope(void)::scope)
    {
      v6 = *AUDenoiseLogScope(void)::scope;
      if (!*AUDenoiseLogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315394;
      v14 = "iPMWF_HRLS_vDSP.cpp";
      v15 = 1024;
      v16 = 245;
      _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d iPMWF: successful reset.\n", &v13, 0x12u);
    }
  }

  return 0;
}

void AUDenoise::Cleanup(AUDenoise *this)
{
  v65 = *MEMORY[0x1E69E9840];
  if (AUDenoiseLogScope(void)::once != -1)
  {
    dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
  }

  if (AUDenoiseLogScope(void)::scope)
  {
    v2 = *AUDenoiseLogScope(void)::scope;
    if (!*AUDenoiseLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AUDenoise.cpp";
    v63 = 1024;
    v64 = 224;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDenoise: Cleanup.\n", buf, 0x12u);
  }

LABEL_9:
  v3 = *(this + 143);
  if (v3)
  {
    v4 = *(v3 + 48);
    *(v3 + 84) = v4;
    *(v3 + 88) = -v4;
    *(v3 + 172) = v4;
    v5 = *(v3 + 184);
    if (v5 >= 1)
    {
      *buf = *(v3 + 176);
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(buf, v5);
    }

    vec::fill<float>(*(v3 + 200), *(v3 + 208), (v3 + 24));
    vec::fill<float>(*(v3 + 224), *(v3 + 232), (v3 + 24));
    vec::cleanup<float>((v3 + 248));
    vec::cleanup<float>((v3 + 272));
    vec::cleanup<float>((v3 + 320));
    vec::cleanup<float>((v3 + 344));
    LODWORD(v7) = *(v3 + 48);
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        vDSP_vfill((v3 + 80), *(*(*(v3 + 296) + v8) + 16 * (v9 + v7)), 1, *(v3 + 52));
        vDSP_vfill((v3 + 80), *(*(*(v3 + 368) + v8) + 16 * (v9++ + *(v3 + 48))), 1, *(v3 + 52));
        v7 = *(v3 + 48);
        v8 += 24;
      }

      while (v9 < v7);
    }

    v10 = *(v3 + 392);
    v11 = (*(v3 + 400) - v10) >> 2;
    v12 = v11 - 1;
    if (v11 >= 1)
    {
      v6.i32[0] = *(v3 + 84);
      v13 = (v11 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v14 = vdupq_n_s64(v12);
      v15 = (v10 + 8);
      v16 = 3;
      do
      {
        v17 = vdupq_n_s64(v16 - 3);
        v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE095160)));
        if (vuzp1_s16(v18, v6).u8[0])
        {
          *(v15 - 2) = v6.i32[0];
        }

        if (vuzp1_s16(v18, v6).i8[2])
        {
          *(v15 - 1) = v6.i32[0];
        }

        if (vuzp1_s16(v6, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE095150)))).i32[1])
        {
          *v15 = v6.i32[0];
          v15[1] = v6.i32[0];
        }

        v16 += 4;
        v15 += 4;
        v13 -= 4;
      }

      while (v13);
    }

    v19 = *(v3 + 416);
    v20 = *(v3 + 424) - v19;
    if (v20 >= 1)
    {
      memset_pattern16(v19, "", v20);
    }

    bzero(*(v3 + 448), *(v3 + 456) - *(v3 + 448));
    bzero(*(v3 + 472), *(v3 + 480) - *(v3 + 472));
    bzero(*(v3 + 496), *(v3 + 504) - *(v3 + 496));
    bzero(*(v3 + 544), *(v3 + 552) - *(v3 + 544));
    bzero(*(v3 + 568), *(v3 + 576) - *(v3 + 568));
    bzero(*(v3 + 592), *(v3 + 600) - *(v3 + 592));
    bzero(*(v3 + 616), *(v3 + 624) - *(v3 + 616));
    bzero(*(v3 + 640), *(v3 + 648) - *(v3 + 640));
    bzero(*(v3 + 664), *(v3 + 672) - *(v3 + 664));
    bzero(*(v3 + 688), *(v3 + 696) - *(v3 + 688));
    bzero(*(v3 + 712), *(v3 + 720) - *(v3 + 712));
    bzero(*(v3 + 736), *(v3 + 744) - *(v3 + 736));
    bzero(*(v3 + 760), *(v3 + 768) - *(v3 + 760));
    bzero(*(v3 + 784), *(v3 + 792) - *(v3 + 784));
    bzero(*(v3 + 808), *(v3 + 816) - *(v3 + 808));
    bzero(*(v3 + 832), *(v3 + 840) - *(v3 + 832));
    bzero(*(v3 + 856), *(v3 + 864) - *(v3 + 856));
    bzero(*(v3 + 880), *(v3 + 888) - *(v3 + 880));
    bzero(*(v3 + 904), *(v3 + 912) - *(v3 + 904));
    bzero(*(v3 + 928), *(v3 + 936) - *(v3 + 928));
    bzero(*(v3 + 968), *(v3 + 976) - *(v3 + 968));
    bzero(*(v3 + 992), *(v3 + 1000) - *(v3 + 992));
    bzero(*(v3 + 1016), *(v3 + 1024) - *(v3 + 1016));
    bzero(*(v3 + 1040), *(v3 + 1048) - *(v3 + 1040));
    bzero(*(v3 + 1064), *(v3 + 1072) - *(v3 + 1064));
    bzero(*(v3 + 1088), *(v3 + 1096) - *(v3 + 1088));
    bzero(*(v3 + 1112), *(v3 + 1120) - *(v3 + 1112));
    bzero(*(v3 + 1136), *(v3 + 1144) - *(v3 + 1136));
    bzero(*(v3 + 1160), *(v3 + 1168) - *(v3 + 1160));
    bzero(*(v3 + 1184), *(v3 + 1192) - *(v3 + 1184));
    bzero(*(v3 + 1256), *(v3 + 1264) - *(v3 + 1256));
    bzero(*(v3 + 1304), *(v3 + 1312) - *(v3 + 1304));
    bzero(*(v3 + 1280), *(v3 + 1288) - *(v3 + 1280));
    v21 = *(v3 + 1328);
    v22 = *(v3 + 1336) - v21;
    if (v22 >= 1)
    {
      memset_pattern16(v21, "", v22);
    }

    *(v3 + 440) = 0;
    bzero(*(v3 + 1352), *(v3 + 1360) - *(v3 + 1352));
    bzero(*(v3 + 1376), *(v3 + 1384) - *(v3 + 1376));
    bzero(*(v3 + 1400), *(v3 + 1408) - *(v3 + 1400));
    bzero(*(v3 + 1424), *(v3 + 1432) - *(v3 + 1424));
    bzero(*(v3 + 1448), *(v3 + 1456) - *(v3 + 1448));
    bzero(*(v3 + 1472), *(v3 + 1480) - *(v3 + 1472));
    bzero(*(v3 + 1496), *(v3 + 1504) - *(v3 + 1496));
    *(v3 + 148) = 0;
    *(v3 + 1520) = 0;
    v23 = *(v3 + 1208);
    v24 = *(v3 + 1216) - v23;
    if (v24 >= 1)
    {
      memset_pattern16(v23, &unk_1DE095DF0, v24);
    }

    v25 = *(v3 + 1232);
    v26 = *(v3 + 1240) - v25;
    if (v26 >= 1)
    {
      memset_pattern16(v25, &unk_1DE095DF0, v26);
    }
  }

  v27 = *(this + 144);
  if (v27)
  {
    bzero(*(v27 + 144), *(v27 + 152) - *(v27 + 144));
    bzero(*(v27 + 168), *(v27 + 176) - *(v27 + 168));
    v29 = *(v27 + 192);
    v30 = (*(v27 + 200) - v29) >> 2;
    v31 = v30 - 1;
    if (v30 >= 1)
    {
      v28.i32[0] = *(v27 + 92);
      v32 = (v30 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v33 = vdupq_n_s64(v31);
      v34 = (v29 + 8);
      v35 = 3;
      do
      {
        v36 = vdupq_n_s64(v35 - 3);
        v37 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v36, xmmword_1DE095160)));
        if (vuzp1_s16(v37, v28).u8[0])
        {
          *(v34 - 2) = v28.i32[0];
        }

        if (vuzp1_s16(v37, v28).i8[2])
        {
          *(v34 - 1) = v28.i32[0];
        }

        if (vuzp1_s16(v28, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v36, xmmword_1DE095150)))).i32[1])
        {
          *v34 = v28.i32[0];
          v34[1] = v28.i32[0];
        }

        v35 += 4;
        v34 += 4;
        v32 -= 4;
      }

      while (v32);
    }

    bzero(*(v27 + 360), *(v27 + 368) - *(v27 + 360));
    bzero(*(v27 + 384), *(v27 + 392) - *(v27 + 384));
    bzero(*(v27 + 408), *(v27 + 416) - *(v27 + 408));
    bzero(*(v27 + 432), *(v27 + 440) - *(v27 + 432));
    bzero(*(v27 + 456), *(v27 + 464) - *(v27 + 456));
    bzero(*(v27 + 480), *(v27 + 488) - *(v27 + 480));
    bzero(*(v27 + 504), *(v27 + 512) - *(v27 + 504));
    bzero(*(v27 + 528), *(v27 + 536) - *(v27 + 528));
    bzero(*(v27 + 240), *(v27 + 248) - *(v27 + 240));
    bzero(*(v27 + 264), *(v27 + 272) - *(v27 + 264));
    bzero(*(v27 + 288), *(v27 + 296) - *(v27 + 288));
    bzero(*(v27 + 312), *(v27 + 320) - *(v27 + 312));
    bzero(*(v27 + 336), *(v27 + 344) - *(v27 + 336));
    bzero(*(v27 + 216), *(v27 + 224) - *(v27 + 216));
    v38 = *(v27 + 576);
    v39 = *(v27 + 584) - v38;
    if (v39 >= 1)
    {
      memset_pattern16(v38, &unk_1DE095DF0, v39);
    }

    v40 = *(v27 + 600);
    v41 = *(v27 + 608) - v40;
    if (v41 >= 1)
    {
      memset_pattern16(v40, &unk_1DE095DF0, v41);
    }

    v42 = *(v27 + 768);
    v43 = *(v27 + 776) - v42;
    if (v43 >= 1)
    {
      memset_pattern16(v42, &unk_1DE095DF0, v43);
    }

    v44 = *(v27 + 792);
    v45 = *(v27 + 800) - v44;
    if (v45 >= 1)
    {
      memset_pattern16(v44, &unk_1DE095DF0, v45);
    }

    v46 = *(v27 + 816);
    v47 = *(v27 + 824) - v46;
    if (v47 >= 1)
    {
      bzero(v46, v47);
    }

    bzero(*(v27 + 624), *(v27 + 632) - *(v27 + 624));
    bzero(*(v27 + 744), *(v27 + 752) - *(v27 + 744));
    bzero(*(v27 + 696), *(v27 + 704) - *(v27 + 696));
    bzero(*(v27 + 672), *(v27 + 680) - *(v27 + 672));
    bzero(*(v27 + 720), *(v27 + 728) - *(v27 + 720));
    bzero(*(v27 + 648), *(v27 + 656) - *(v27 + 648));
    v48 = *(v27 + 552);
    v49 = *(v27 + 560) - v48;
    if (v49 >= 1)
    {
      memset_pattern16(v48, &unk_1DE095DF0, v49);
    }

    __A = 1.0 / sqrtf(*(v27 + 24));
    if (*(v27 + 32))
    {
      v50 = 0;
      do
      {
        vDSP_vfill(&__A, (*(v27 + 168) + 4 * (*(v27 + 36) + *(v27 + 40)) * v50), 1, *(v27 + 36));
        vDSP_vfill((v27 + 24), (*(v27 + 696) + 4 * (*(v27 + 36) + *(v27 + 40)) * v50), 1, *(v27 + 36));
        vDSP_vfill((v27 + 24), (*(v27 + 744) + 4 * (*(v27 + 36) + *(v27 + 40)) * v50++), 1, *(v27 + 36));
        v51 = *(v27 + 32);
      }

      while (v50 < v51);
      v52 = v51;
    }

    else
    {
      v52 = 0.0;
    }

    v60 = 1.0 / sqrtf(v52);
    vDSP_vfill(&v60, *(v27 + 792), 1, *(v27 + 40));
    vDSP_vfill((v27 + 68), (*(v27 + 792) + 4 * *(v27 + 40)), 1, *(v27 + 40));
    vDSP_vfill((v27 + 68), (*(v27 + 768) + 4 * *(v27 + 40)), 1, *(v27 + 40));
    iPMWF_HRLS_vDSP::InitializeFilter(v27);
    if (AUDenoiseLogScope(void)::once != -1)
    {
      dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_27666);
    }

    if (AUDenoiseLogScope(void)::scope)
    {
      v53 = *AUDenoiseLogScope(void)::scope;
      if (!*AUDenoiseLogScope(void)::scope)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v53 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "iPMWF_HRLS_vDSP.cpp";
      v63 = 1024;
      v64 = 213;
      _os_log_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d iPMWF: successful clean-up.\n", buf, 0x12u);
    }
  }

LABEL_67:
  v54 = *(this + 145);
  if (!v54)
  {
    return;
  }

  bzero(*(v54 + 136), *(v54 + 144) - *(v54 + 136));
  bzero(*(v54 + 160), *(v54 + 168) - *(v54 + 160));
  bzero(*(v54 + 232), *(v54 + 240) - *(v54 + 232));
  bzero(*(v54 + 256), *(v54 + 264) - *(v54 + 256));
  v55 = *(v54 + 304);
  v56 = *(v54 + 312) - v55;
  if (v56 >= 1)
  {
    memset_pattern16(v55, &unk_1DE095DF0, v56);
  }

  v57 = *(v54 + 328);
  v58 = *(v54 + 336) - v57;
  if (v58 >= 1)
  {
    memset_pattern16(v57, &unk_1DE095DF0, v58);
  }

  bzero(*(v54 + 400), *(v54 + 408) - *(v54 + 400));
  bzero(*(v54 + 424), *(v54 + 432) - *(v54 + 424));
  GuidedMWF::Reset(v54);
  if (AUDenoiseLogScope(void)::once != -1)
  {
    dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_30123);
  }

  if (AUDenoiseLogScope(void)::scope)
  {
    v59 = *AUDenoiseLogScope(void)::scope;
    if (!*AUDenoiseLogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v59 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "GuidedMWF.cpp";
    v63 = 1024;
    v64 = 154;
    _os_log_impl(&dword_1DDB85000, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d successful clean-up.\n", buf, 0x12u);
  }
}