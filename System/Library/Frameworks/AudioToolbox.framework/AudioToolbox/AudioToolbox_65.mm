uint64_t AUCrossCorrelator::SetParameter(AUCrossCorrelator *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (a3 != 4)
  {
    return 4294956430;
  }

  if (a2 != 2)
  {
    return 4294956418;
  }

  *(this + a4 + 170) = a5;
  return result;
}

uint64_t AUCrossCorrelator::SetProperty(AUCrossCorrelator *this, int a2, int a3, unsigned int a4, __int128 *a5, int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 64101)
  {
    if (a2 == 64102)
    {
      result = 0;
      *(this + 220) = *a5;
    }

    else if (a2 == 64103)
    {
      result = 0;
      *(this + 204) = *a5;
    }
  }

  else if (a2 == 21)
  {
    if (a6 == 4)
    {
      result = 0;
      *(this + 528) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  else if (a2 == 64101)
  {
    v9 = *a5;
    *(this + 133) = v9;
    v10 = *a5;
    v11 = a5[1];
    *(this + 72) = *(a5 + 4);
    *(this + 34) = v10;
    *(this + 35) = v11;
    *(this + 148) = *(*(a5 + 5) + 12) >> 2;
    v12 = CADeprecated::CABufferList::New(*(a5 + 3), *(a5 + 7));
    v13 = *(this + 73);
    *(this + 73) = v12;
    if (v13)
    {
      std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v13);
      v12 = *(this + 73);
    }

    CADeprecated::CABufferList::AllocateBuffers(v12, 4 * *(this + 148));
    v14 = *(a5 + 5);
    if (*v14)
    {
      v15 = 0;
      v16 = *(this + 73);
      v17 = (v14 + 4);
      for (i = (v16 + 40); ; i += 2)
      {
        v19 = *(v16 + 16);
        v20 = *(v17 - 1);
        if (v19 && v20 > v19)
        {
          break;
        }

        v22 = *i;
        v23 = *v17;
        v17 += 2;
        *(i - 1) = v20;
        memcpy(v22, v23, v20);
        if (++v15 >= *v14)
        {
          return 0;
        }
      }

      v24 = CAAssertRtn();
      return AUCrossCorrelator::GetProperty(v24, v25, v26, v27, v28);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUCrossCorrelator::GetProperty(AUCrossCorrelator *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 > 64101)
  {
    if (a2 == 64102)
    {
      v5 = 0;
      v6 = *(this + 220);
    }

    else
    {
      if (a2 != 64103)
      {
        return 4294956417;
      }

      v5 = 0;
      v6 = *(this + 204);
    }

LABEL_12:
    *a5 = v6;
    return v5;
  }

  if (a2 == 21)
  {
    v5 = 0;
    v6 = *(this + 528);
    goto LABEL_12;
  }

  if (a2 == 64101)
  {
    return 0;
  }

  return 4294956417;
}

uint64_t AUCrossCorrelator::GetPropertyInfo(AUCrossCorrelator *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v7 = 4;
  if ((a2 - 64102) >= 2 && a2 != 21)
  {
    if (a2 != 64101)
    {
      return 4294956417;
    }

    v7 = 8;
  }

  result = 0;
  *a6 = 1;
  *a5 = v7;
  return result;
}

uint64_t AUCrossCorrelator::Reset(AUCrossCorrelator *this)
{
  v1 = *(this + 111);
  if (v1)
  {
    v2 = (v1 + 152);
    v3 = 32;
    do
    {
      *(v2 - 2) = 0;
      *(v2 - 1) = 0;
      *v2 = 0;
      v2 += 6;
      --v3;
    }

    while (v3);
    *(v1 + 904) = 0;
    *(v1 + 908) = 1;
    *(this + 56) = 0u;
  }

  return 0;
}

uint64_t AUCrossCorrelator::Initialize(AUCrossCorrelator *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = *(Element + 96), v20 = *(Element + 80), *v21 = v3, *&v21[16] = *(Element + 112), (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(v4 + 96);
  *&v19.mSampleRate = *(v4 + 80);
  *&v19.mBytesPerPacket = v6;
  *&v19.mBitsPerChannel = *(v4 + 112);
  v7 = *&v20;
  if (*&v20 != v19.mSampleRate)
  {
    return 4294956428;
  }

  if (DWORD2(v20) != v19.mFormatID)
  {
    return 4294956428;
  }

  if (*v21 != *&v19.mBytesPerPacket)
  {
    return 4294956428;
  }

  v8 = *&v21[12];
  if (*&v21[12] != *&v19.mChannelsPerFrame)
  {
    return 4294956428;
  }

  v9 = CA::Implementation::EquivalentFormatFlags(&v20, &v19, v5);
  result = 4294956428;
  if (v9 && v8 <= 8)
  {
    v11 = *(this + 133);
    if (v11 == 0.0 || v7 == v11)
    {
      v12 = *(this + 73);
      if (v12)
      {
        v13 = *(v12 + 40);
        v14 = *(this + 148);
        v17 = 0;
        v18 = 0;
        v16 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v16, v13, v13 + 4 * v14, v14);
        memset(__p, 0, sizeof(__p));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, v16, v17, (v17 - v16) >> 2);
        CrossCorrelator::initialize(this + 744, __p);
      }

      return 0;
    }
  }

  return result;
}

void sub_1DDFFECC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUCrossCorrelator::CreateExtendedElements(AUCrossCorrelator *this)
{
  ausdk::AUScope::Initialize((this + 832), this, 4, 8);
  for (i = 0; ; ++i)
  {
    v3 = *(this + 109);
    result = v3 ? (*(*v3 + 24))(v3) : (*(this + 107) - *(this + 106)) >> 3;
    if (i >= result)
    {
      break;
    }

    std::to_string(&v12, i);
    v5 = std::string::insert(&v12, 0, "Channel", 7uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v14 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (v14 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if (v7)
    {
      if (v14 >= 0)
      {
        v8 = HIBYTE(v14);
      }

      else
      {
        v8 = __p[1];
      }

      v15 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
      if (!v15)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (v14 < 0)
      {
LABEL_15:
        operator delete(__p[0]);
      }
    }

    else
    {
      v15 = 0;
      if (v14 < 0)
      {
        goto LABEL_15;
      }
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    Element = ausdk::AUScope::GetElement((this + 832), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v15);
    v10 = ausdk::AUScope::GetElement((this + 832), i);
    (*(*v10 + 40))(v10, 4);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  return result;
}

void sub_1DDFFEEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v21 - 40));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void AUCrossCorrelator::~AUCrossCorrelator(AUCrossCorrelator *this)
{
  AUCrossCorrelator::~AUCrossCorrelator(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5935B70;
  v2 = *(this + 111);
  *(this + 111) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v7 = (this + 848);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = *(this + 103);
  *(this + 103) = 0;
  if (v3)
  {
    std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v3);
  }

  CrossCorrelator::~CrossCorrelator((this + 744));
  v4 = *(this + 78);
  if (v4)
  {
    *(this + 79) = v4;
    operator delete(v4);
  }

  v5 = *(this + 75);
  if (v5)
  {
    *(this + 76) = v5;
    operator delete(v5);
  }

  v6 = *(this + 73);
  *(this + 73) = 0;
  if (v6)
  {
    std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v6);
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t VBAPSpatializer::processAccumulating(VBAPSpatializer *this, const float *__I, float *const *a3, unsigned int a4, float *const *a5, unsigned int a6, vDSP_Length __N, float a8, IR::ComplexDataCircBuffer *a9)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(this + 16))
  {
    v10 = __N;
    if ((*(this + 288) & 1) == 0)
    {
      v15 = atomic_load(this + 508);
      if ((v15 & 1) == 0 && (*(this + 17) & 1) == 0 && *(this + 296) != 1)
      {
LABEL_26:
        v26 = *(*(this + 6) + 82);
        if (!v26)
        {
          a8 = 0.0;
        }

        v27 = *(this + 57);
        v28 = *(this + 58);
        v29 = (v28 - v27) >> 2;
        if (v29 >= a4)
        {
          LODWORD(v29) = a4;
        }

        if (v29)
        {
          v30 = 0;
          do
          {
            v31 = *(v27 + 4 * v30);
            *&__Start = v31;
            v32 = a8 * *(*(this + 60) + 4 * v30);
            v33 = v32;
            if (!*(this + 73))
            {
              v33 = v32 + (*(this + 126) * (v31 - v32));
            }

            *(v27 + 4 * v30) = v33;
            if (v10)
            {
              *&__Step.__r_.__value_.__l.__data_ = (v33 - *&__Start) / v10;
              if (fabsf(*&__Step.__r_.__value_.__l.__data_) <= 0.000001)
              {
                if (fabsf(*&__Start) > 0.000001)
                {
                  *(v27 + 4 * v30) = v32;
                  MEMORY[0x1E12BE8F0](__I, 1, &__Start, a3[v30], 1, a3[v30], 1, v10);
                }
              }

              else
              {
                vDSP_vrampmuladd(__I, 1, &__Start, &__Step, a3[v30], 1, v10);
              }

              v27 = *(this + 57);
              v28 = *(this + 58);
            }

            ++v30;
            v34 = (v28 - v27) >> 2;
            if (v34 >= a4)
            {
              v34 = a4;
            }

            else
            {
              v34 = v34;
            }
          }

          while (v30 < v34);
          v26 = *(*(this + 6) + 82);
        }

        result = 0;
        *(this + 146) = v26;
        *(this + 5) = v10;
        return result;
      }
    }

    v16 = *(this + 6);
    if (*(v16 + 80))
    {
      v17 = 320;
      v18 = 144;
      v19 = 432;
      if (*(v16 + 192) == *(v16 + 200))
      {
        v19 = 408;
      }

      else
      {
        v18 = 168;
      }

      if (*(v16 + 192) != *(v16 + 200))
      {
        v17 = 328;
      }
    }

    else
    {
      v17 = 320;
      v18 = 144;
      v19 = 408;
    }

    result = VBAPSpatializer::doTriangleLookup(this, (this + v19), (v16 + v18), *(this + v17), *v16, *(v16 + 4));
    if (!result)
    {
      if (*(*(this + 6) + 81) == 1)
      {
        AUSM::speakerSnap(*(this + 60), (*(this + 61) - *(this + 60)) >> 2);
      }

      if (*(this + 17) == 1)
      {
        v22 = *(this + 57);
        v23 = *(this + 58) - v22;
        v24 = *(this + 60);
        v25 = *(this + 61);
        if (v23 != v25 - v24)
        {
          __assert_rtn("processAccumulating", "VBAPSpatializer.cpp", 350, "mCurrentOutputChannelGains.size() == mTargetOutputChannelGains.size()");
        }

        if (v25 != v24)
        {
          memmove(v22, v24, v23);
        }
      }

      *(this + 288) = 0;
      *(this + 17) = 0;
      atomic_store(0, this + 508);
      *(this + 296) = 0;
      goto LABEL_26;
    }
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v20 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&v40, "VBAPSpatializer");
      v35 = std::string::append(&v40, "::", 2uLL);
      v36 = *&v35->__r_.__value_.__l.__data_;
      __Step.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&__Step.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&__Step, "processAccumulating", 0x13uLL);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v43 = v37->__r_.__value_.__r.__words[2];
      __Start = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      p_Start = &__Start;
      if (v43 < 0)
      {
        p_Start = __Start;
      }

      *buf = 136315138;
      v45 = p_Start;
      _os_log_debug_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", buf, 0xCu);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(__Start);
      }

      if (SHIBYTE(__Step.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__Step.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }
    }

    return 4294956429;
  }

  return result;
}

void sub_1DDFFF450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VBAPSpatializer::doTriangleLookup(uint64_t a1, unsigned int **a2, uint64_t *a3, VBAP *a4, float a5, float a6)
{
  v114 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 == a2[1])
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3[1] - *a3;
  v10 = *(a1 + 480);
  if (v9 != *(a1 + 488) - v10)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = a5 * 0.0174532925;
  v15 = __sincos_stret(a6 * 0.0174532925);
  *v14.i64 = v15.__cosval;
  v109 = v14;
  v18 = __sincos_stret(v13);
  v17.f64[0] = v18.__cosval;
  v17.f64[1] = v18.__sinval;
  v108 = v17;
  v112 = vcvt_f32_f64(vmulq_n_f64(v17, *v109.i64));
  sinval = v15.__sinval;
  v113 = sinval;
  if (v9 >= 1)
  {
    bzero(v10, v9);
  }

  MEMORY[0x1EEE9AC00](v16);
  v21 = (v105.f32 - v20);
  v22 = VBAP::calculateVBAPGains(a4, &v112, (v105.f32 - v20));
  if (!v22)
  {
    v25 = atomic_load((a1 + 516));
    if (v25)
    {
      v26 = *(a1 + 48);
      v27 = *(v26 + 16);
      if (*(v26 + 12) > 0.0 || v27 > 0.0)
      {
        *v23.f32 = v112;
        v23.f32[2] = v113;
        v109 = v23;
        v59 = __sincos_stret((a6 + 90.0) * 0.0174532925);
        *v58.i64 = v59.__cosval;
        v107 = v58;
        v60 = __sincos_stret((a6 + (v27 * 90.0)) * 0.0174532925);
        v112 = vcvt_f32_f64(vmulq_n_f64(v108, v60.__cosval));
        v61 = v60.__sinval;
        v113 = v61;
        MEMORY[0x1EEE9AC00](v62);
        v64 = (v105.f32 - v63);
        v65 = VBAP::calculateVBAPGains(a4, &v112, (v105.f32 - v63));
        if (v65)
        {
          return v65;
        }

        MEMORY[0x1E12BE990](v21, 1, v21, 1, a2[1] - *a2);
        MEMORY[0x1E12BE990](v64, 1, v64, 1, a2[1] - *a2);
        MEMORY[0x1E12BE5D0](v64, 1, v21, 1, v21, 1, a2[1] - *a2);
        v66 = __sincos_stret((a6 + (*(*(a1 + 48) + 16) * -90.0)) * 0.0174532925);
        v112 = vcvt_f32_f64(vmulq_n_f64(v108, v66.__cosval));
        v67 = v66.__sinval;
        v113 = v67;
        v65 = VBAP::calculateVBAPGains(a4, &v112, v64);
        if (v65)
        {
          return v65;
        }

        v68 = vmulq_f32(v109, v109);
        v69 = vaddv_f32(*v68.f32);
        *v68.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v68.f32[2] + v69));
        *v68.f32 = vmul_f32(*v68.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v68.f32[2] + v69), vmul_f32(*v68.f32, *v68.f32)));
        v70 = vmulq_n_f32(v109, vmul_f32(*v68.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v68.f32[2] + v69), vmul_f32(*v68.f32, *v68.f32))).f32[0]);
        v71 = vmulq_n_f64(v108, *&v107);
        *v71.f32 = vcvt_f32_f64(v71);
        v72 = v59.__sinval;
        v71.f32[2] = v72;
        v73 = vmulq_f32(v71, v71);
        *&v74 = v73.f32[2] + vaddv_f32(*v73.f32);
        *v73.f32 = vrsqrte_f32(v74);
        *v73.f32 = vmul_f32(*v73.f32, vrsqrts_f32(v74, vmul_f32(*v73.f32, *v73.f32)));
        v108 = vmulq_n_f32(v71, vmul_f32(*v73.f32, vrsqrts_f32(v74, vmul_f32(*v73.f32, *v73.f32))).f32[0]);
        v109 = v70;
        MEMORY[0x1E12BE990](v64, 1, v64, 1, a2[1] - *a2);
        MEMORY[0x1E12BE5D0](v64, 1, v21, 1, v21, 1, a2[1] - *a2);
        v75 = *(*(a1 + 48) + 12);
        v76 = (v75 + v75) * 3.14159265 / 3.0;
        v77 = __sincosf_stret(v76 * 0.5);
        v78 = vmulq_n_f32(v108, v77.__sinval);
        v79 = v78;
        v79.i32[3] = LODWORD(v77.__cosval);
        v107 = xmmword_1DE09BFF0;
        v80 = vmulq_f32(v79, xmmword_1DE09BFF0);
        v81 = vnegq_f32(v80);
        v82 = vtrn2q_s32(v80, vtrn1q_s32(v80, v81));
        v83 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v80, v81, 8uLL), *v109.f32, 1), vextq_s8(v82, v82, 8uLL), v109.f32[0]);
        v84 = vrev64q_s32(v80);
        v84.i32[0] = v81.i32[1];
        v84.i32[3] = v81.i32[2];
        v85 = vmlaq_laneq_f32(v83, v84, v109, 2);
        v86 = vnegq_f32(v85);
        v87 = vtrn2q_s32(v85, vtrn1q_s32(v85, v86));
        v88 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v85, v86, 8uLL), *v78.f32, 1), vextq_s8(v87, v87, 8uLL), v78.f32[0]);
        v89 = vrev64q_s32(v85);
        v89.i32[0] = v86.i32[1];
        v89.i32[3] = v86.i32[2];
        v90 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v85, v79, 3), v89, v78, 2), v88);
        v112 = *v90.f32;
        v113 = v90.f32[2];
        v65 = VBAP::calculateVBAPGains(a4, &v112, v64);
        if (v65)
        {
          return v65;
        }

        v105 = vdupq_lane_s32(*v109.f32, 0);
        v106 = vdupq_laneq_s32(v109, 2);
        v91 = (v75 * -2.0) * 3.14159265 / 3.0;
        v92 = __sincosf_stret(v91 * 0.5);
        v93 = vmulq_n_f32(v108, v92.__sinval);
        v94 = v93;
        v94.i32[3] = LODWORD(v92.__cosval);
        v95 = vmulq_f32(v94, v107);
        v96 = vnegq_f32(v95);
        v97 = vtrn2q_s32(v95, vtrn1q_s32(v95, v96));
        v98 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v95, v96, 8uLL), *v109.f32, 1), vextq_s8(v97, v97, 8uLL), v105);
        v99 = vrev64q_s32(v95);
        v99.i32[0] = v96.i32[1];
        v99.i32[3] = v96.i32[2];
        v100 = vmlaq_f32(v98, v99, v106);
        v101 = vnegq_f32(v100);
        v102 = vtrn2q_s32(v100, vtrn1q_s32(v100, v101));
        v103 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v100, v101, 8uLL), *v93.f32, 1), vextq_s8(v102, v102, 8uLL), v93.f32[0]);
        v104 = vrev64q_s32(v100);
        v104.i32[0] = v101.i32[1];
        v104.i32[3] = v101.i32[2];
        v109 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v100, v94, 3), v104, v93, 2), v103);
        MEMORY[0x1E12BE990](v64, 1, v64, 1, a2[1] - *a2);
        MEMORY[0x1E12BE5D0](v64, 1, v21, 1, v21, 1, a2[1] - *a2);
        v112 = *v109.f32;
        v113 = v109.f32[2];
        v65 = VBAP::calculateVBAPGains(a4, &v112, v64);
        if (v65)
        {
          return v65;
        }

        MEMORY[0x1E12BE990](v64, 1, v64, 1, a2[1] - *a2);
        MEMORY[0x1E12BE5D0](v64, 1, v21, 1, v21, 1, a2[1] - *a2);
        __C = 0.2;
        MEMORY[0x1E12BE940](v21, 1, &__C, v21, 1, a2[1] - *a2);
        v110 = (a2[1] - *a2) >> 2;
        vvsqrtf(v21, v21, &v110);
      }
    }

    v28 = (*(*a1 + 352))(a1);
    v29 = *(a1 + 48);
    v30 = *(v29 + 8);
    v31 = *v28;
    v32 = v28[1];
    if (*v28 >= v32)
    {
      v37 = v31 <= v30;
      v36 = 0.0;
      if (!v37)
      {
        v36 = 1.0;
      }
    }

    else
    {
      v33 = (v30 - v31) / (v32 - v31);
      if (v33 <= 1.0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 1.0;
      }

      v35 = 1.0 - v34;
      if (v33 >= 0.0)
      {
        v36 = v35;
      }

      else
      {
        v36 = 1.0;
      }
    }

    v38 = *(v29 + 64);
    v39 = 0.0;
    if (v38 > 0.000001 && v30 < v38)
    {
      if (v30 >= 0.0)
      {
        v39 = *(v29 + 8);
      }

      v39 = (v38 - v39) / v38;
    }

    v40 = *(a1 + 480);
    v41 = *(a1 + 488);
    v42 = v41 - v40;
    if (v41 != v40)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = *a2;
      v47 = a2[1];
      v48 = v47 - *a2;
      v49 = *a3;
      do
      {
        if (v47 == v46)
        {
          goto LABEL_37;
        }

        v50 = v46;
        v51 = v48;
        do
        {
          v52 = v51 >> 1;
          v53 = &v50[v51 >> 1];
          v55 = *v53;
          v54 = v53 + 1;
          v51 += ~(v51 >> 1);
          if (v55 < v45)
          {
            v50 = v54;
          }

          else
          {
            v51 = v52;
          }
        }

        while (v51);
        if (v50 == v47 || v45 < *v50)
        {
LABEL_37:
          if (v39 > 0.0)
          {
            v40[v43] = (v39 * *(v49 + 4 * v43)) * 0.31623;
          }
        }

        else
        {
          v56 = ((1.0 - v36) * *(a1 + 512)) + (v36 * *(v49 + 4 * v43));
          v40[v43] = v21[v44] + (v39 * ((v56 * v56) - v21[v44]));
          ++v44;
        }

        v43 = ++v45;
      }

      while (v42 > v45);
    }

    v22 = 0;
    if (v41 != v40 && (*(a1 + 517) & 1) != 0)
    {
      __C = 0.0;
      vDSP_sve(v40, 1, &__C, v42);
      v22 = 0;
      if (__C > 0.0 && __C != 1.0)
      {
        vDSP_vsdiv(*(a1 + 480), 1, &__C, *(a1 + 480), 1, (*(a1 + 488) - *(a1 + 480)) >> 2);
        return 0;
      }
    }
  }

  return v22;
}

void VBAPSpatializer::reset(VBAPSpatializer *this)
{
  *(this + 17) = 1;
  *(this + 146) = *(*(this + 6) + 82);
  v2 = *(this + 57);
  v3 = *(this + 58) - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }
}

uint64_t VBAPSpatializer::initialize(VBAPSpatializer *this, float a2, unsigned int a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v8 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    std::string::basic_string[abi:ne200100]<0>(&v29, "VBAPSpatializer");
    v23 = std::string::append(&v29, "::", 2uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v30, "initialize", 0xAuLL);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v32 = v25->__r_.__value_.__r.__words[2];
    *__p = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = __p;
    if (v32 < 0)
    {
      v27 = __p[0];
    }

    v28 = *(this + 517);
    *buf = 136315394;
    v34 = v27;
    v35 = 1024;
    v36 = v28;
    _os_log_debug_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "%s: Initializing with normalizedGain = %u", buf, 0x12u);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }

  *(this + 2) = a2;
  *(this + 3) = a4;
  v9 = a2 * 0.001953125 * 0.02;
  if (v9 < 2.22507386e-308)
  {
    v9 = 2.22507386e-308;
  }

  v10 = -6.90775528 / v9;
  v11 = exp(-6.90775528 / v9);
  if (v10 < -708.4)
  {
    v11 = 0.0;
  }

  *&v11 = v11;
  *(this + 126) = LODWORD(v11);
  if (a3 < ((*(this + 61) - *(this + 60)) >> 2))
  {
    return 4294900553;
  }

  v13 = *(this + 40);
  if (!v13)
  {
    return 4294956421;
  }

  if ((*(v13 + 312) & 1) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v32 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, *(v13 + 80), *(v13 + 88), (*(v13 + 88) - *(v13 + 80)) >> 2);
    v14 = *(this + 40);
    memset(&v30, 0, sizeof(v30));
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v30, *(v14 + 56), *(v14 + 64), (*(v14 + 64) - *(v14 + 56)) >> 2);
    v15 = (((*(*(this + 40) + 232) - *(*(this + 40) + 224)) >> 2) * 0xAAAAAAAAAAAAAAABLL) >> 64;
    v16 = __p[0];
    v17 = 2 * (((v30.__r_.__value_.__l.__size_ - v30.__r_.__value_.__r.__words[0]) >> 2) / 3uLL + ((__p[1] - __p[0]) >> 2) / 3uLL);
    if (v30.__r_.__value_.__r.__words[0])
    {
      v30.__r_.__value_.__l.__size_ = v30.__r_.__value_.__r.__words[0];
      operator delete(v30.__r_.__value_.__l.__data_);
      v16 = __p[0];
    }

    v18 = (v15 >> 1);
    v19 = v17 - 4;
    if (v16)
    {
      __p[1] = v16;
      operator delete(v16);
    }

    if (v19 != v18)
    {
      return 4294956421;
    }
  }

  v20 = *(this + 5);
  if (v20)
  {
    v21 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(v20, kOptionalFeatureSourceExtent);
    v22 = (v21 > 0xFFu) & v21;
  }

  else
  {
    v22 = 0;
  }

  atomic_store(v22, this + 516);
  Spatializer::initialize(this, *&v11, a3);
  return 0;
}

void sub_1DE000054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VBAPSpatializer::setExclusionZones(void *a1, float **a2)
{
  v4 = a1[6];
  v6 = *a2;
  v5 = a2[1];
  v7 = *(v4 + 192);
  if (v5 - *a2 == *(v4 + 200) - v7)
  {
    while (v6 != v5)
    {
      if (!AUSM::ExclusionZone::operator==(v6, v7))
      {
        goto LABEL_5;
      }

      v6 += 7;
      v7 += 28;
    }

    return 0;
  }

  else
  {
LABEL_5:
    v31 = 0;
    v32 = 0;
    v33 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v31, a1[45], a1[46], (a1[46] - a1[45]) >> 2);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v28, a1[48], a1[49], (a1[49] - a1[48]) >> 2);
    __p = 0;
    v26 = 0;
    v27 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, a1[51], a1[52], (a1[52] - a1[51]) >> 2);
    v8 = *a2;
    v23 = a2[1];
    if (*a2 != v23)
    {
      v9 = v26;
      v24 = __p;
      v22 = -__p;
      do
      {
        if (((v32 - v31) >> 2) >= 1)
        {
          v10 = ((v32 - v31) >> 2) & 0x7FFFFFFF;
          v11 = v10 + 1;
          v12 = 4 * v10;
          v13 = v22 - 4 * v10;
          v14 = -4 * v10;
          do
          {
            v15 = v31;
            v16 = &v31[v12];
            v17 = v28;
            if (AUSM::ExclusionZone::isInExclusionZone(v8, *&v31[v12 - 4], *(v28 + v12 - 4), v28 + v12))
            {
              v18 = v14 + v32 - v15;
              if (v16 != v32)
              {
                memmove(v16 - 4, v16, v18);
                v17 = v28;
              }

              v32 = &v16[v18 - 4];
              v19 = v14 + v29 - v17;
              if (&v17[v12] != v29)
              {
                memmove(&v17[v12 - 4], &v17[v12], v14 + v29 - v17);
              }

              v29 = &v17[v12 - 4 + v19];
              if (&v24[v12] != v9)
              {
                memmove(&v24[v12 - 4], &v24[v12], &v9[v13]);
              }

              v9 = &v24[v12 - 4 + &v9[v13]];
            }

            --v11;
            v12 -= 4;
            v13 += 4;
            v14 += 4;
          }

          while (v11 > 1);
        }

        v8 = (v8 + 28);
      }

      while (v8 != v23);
      v26 = v9;
    }

    if (v31 != v32)
    {
      std::make_unique[abi:ne200100]<VBAP,std::vector<float> &,std::vector<float> &,VBAP::Algorithm,0>();
    }

    v20 = 4294900553;
    if (__p)
    {
      operator delete(__p);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  return v20;
}

void sub_1DE0003C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, VBAP *a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  std::unique_ptr<VBAP>::reset[abi:ne200100](&a17, 0);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1DE000528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  *(v23 - 56) = v22;
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100]((v23 - 56));
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  MEMORY[0x1E12BD160](v21, v20);
  _Unwind_Resume(a1);
}

uint64_t VBAPSpatializer::calculateExclusionBypassCoeffs(void *a1, VBAP *a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a1 + 6;
  v7 = (*(a1[6] + 152) - *(a1[6] + 144)) >> 2;
  v41.i32[0] = 0;
  std::vector<float>::vector[abi:ne200100](&v39, v7);
  __C = 0.0;
  vDSP_svesq(*(*v6 + 144), 1, &__C, (*(*v6 + 152) - *(*v6 + 144)) >> 2);
  if (fabsf(__C) >= 0.00000011921)
  {
    v8 = a1[6];
    v9 = v8[18];
    if (v8[19] != v9)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(a3 + 8);
        v13 = *a3;
        if (*a3 != v12)
        {
          while (*v13 != v11)
          {
            if (++v13 == v12)
            {
              goto LABEL_11;
            }
          }
        }

        if (v13 == v12)
        {
LABEL_11:
          if (!a2)
          {
            goto LABEL_25;
          }

          v14 = *(v9 + 4 * v10);
          if (fabsf(v14) < 0.00000011921)
          {
            goto LABEL_25;
          }

          v15 = a1[51];
          v16 = a1[52];
          v17 = v15;
          if (v15 != v16)
          {
            while (*v17 != v11)
            {
              v17 += 4;
              if (v17 == v16)
              {
                v17 = a1[52];
                break;
              }
            }
          }

          if (v16 != v17)
          {
            v18 = *(a1[45] + v17 - v15) * 0.0174532925;
            v20 = __sincos_stret(*(a1[48] + v17 - v15) * 0.0174532925);
            *&v19 = v20.__cosval;
            v37 = v19;
            v22 = __sincos_stret(v18);
            v21.f64[0] = v22.__cosval;
            v21.f64[1] = v22.__sinval;
            v41 = vcvt_f32_f64(vmulq_n_f64(v21, *&v37));
            sinval = v20.__sinval;
            v42 = sinval;
            MEMORY[0x1EEE9AC00](v24);
            v26 = &v37 - v25;
            v27 = VBAP::calculateVBAPGains(a2, &v41, (&v37 - v25));
            if (v27)
            {
              goto LABEL_28;
            }

            v28 = *a3;
            v29 = *(a3 + 8);
            v30 = v29 - *a3;
            if (v29 != *a3)
            {
              v31 = 0;
              v32 = v30 >> 2;
              v33 = v39;
              do
              {
                v34 = *&v26[4 * v31];
                if (fabsf(v34) >= 0.00000011921)
                {
                  v35 = v34 * *(*(a1[6] + 144) + 4 * v10);
                  v33[v28[v31]] = v33[v28[v31]] + (v35 * v35);
                }

                ++v31;
              }

              while (v32 > v31);
            }

            v8 = a1[6];
            goto LABEL_25;
          }
        }

        else
        {
          v14 = *(v9 + 4 * v10);
        }

        v39[v10] = v14 * v14;
LABEL_25:
        v9 = v8[18];
        v10 = ++v11;
      }

      while (v11 < ((v8[19] - v9) >> 2));
    }

    v41.i32[0] = (v40 - v39) >> 2;
    std::vector<float>::resize(v8 + 21, (v40 - v39));
    vvsqrtf(*(a1[6] + 168), v39, &v41);
  }

  v27 = 0;
LABEL_28:
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  return v27;
}

void sub_1DE000878(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VBAPSpatializer::setBypassCoeffs(VBAP **this, float *a2, unsigned int a3)
{
  result = Spatializer::setBypassCoeffs(this, a2, a3);
  if (!result)
  {
    if (*(this[6] + 24) == *(this[6] + 25))
    {
      return 0;
    }

    else
    {
      v5 = this[41];

      return VBAPSpatializer::calculateExclusionBypassCoeffs(this, v5, (this + 54));
    }
  }

  return result;
}

uint64_t VBAPSpatializer::setParams(_BYTE *a1, uint64_t a2)
{
  if ((a1[16] & 1) == 0)
  {
    (*(*a1 + 160))(a1, a2 + 192);
  }

  return Spatializer::setParams(a1, a2);
}

void VBAPSpatializer::~VBAPSpatializer(VBAPSpatializer *this)
{
  VBAPSpatializer::~VBAPSpatializer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5935DC0;
  v2 = *(this + 60);
  if (v2)
  {
    *(this + 61) = v2;
    operator delete(v2);
  }

  v3 = *(this + 57);
  if (v3)
  {
    *(this + 58) = v3;
    operator delete(v3);
  }

  v4 = *(this + 54);
  if (v4)
  {
    *(this + 55) = v4;
    operator delete(v4);
  }

  v5 = *(this + 51);
  if (v5)
  {
    *(this + 52) = v5;
    operator delete(v5);
  }

  v6 = *(this + 48);
  if (v6)
  {
    *(this + 49) = v6;
    operator delete(v6);
  }

  v7 = *(this + 45);
  if (v7)
  {
    *(this + 46) = v7;
    operator delete(v7);
  }

  v8 = *(this + 42);
  if (v8)
  {
    *(this + 43) = v8;
    operator delete(v8);
  }

  std::unique_ptr<VBAP>::reset[abi:ne200100](this + 41, 0);
  std::unique_ptr<VBAP>::reset[abi:ne200100](this + 40, 0);

  Spatializer::~Spatializer(this);
}

BOOL AUSM::RoomCongruence::UserData::isValid(AUSM::RoomCongruence::UserData *this)
{
  v1 = *(this + 1);
  v2 = *this;
  v3 = v1 - *this;
  if (v1 == *this)
  {
    return 0;
  }

  if (*(this + 12) <= 0.0)
  {
    return 0;
  }

  v4 = *(this + 3);
  if (v3 != *(this + 4) - v4 || v3 != *(this + 8) - *(this + 7) || v3 != *(this + 11) - *(this + 10) || v3 != *(this + 14) - *(this + 13))
  {
    return 0;
  }

  v5 = 0;
  v6 = v3 >> 2;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  while (1)
  {
    result = 0;
    v8 = *(v2 + 4 * v5);
    if (v8 <= 0.0 || v8 >= 24000.0)
    {
      break;
    }

    if (*(v4 + 4 * v5) < 0.0)
    {
      return 0;
    }

    if (v6 == ++v5)
    {
      for (i = (v2 + 4); i != v1; ++i)
      {
        v10 = i;
        v12 = *(i - 1);
        v11 = *i;
        if (v11 < v12)
        {
          return v10 == v1;
        }
      }

      v10 = v1;
      return v10 == v1;
    }
  }

  return result;
}

uint64_t AUNeuralNetSPP::GetScopeExtended(AUNeuralNetSPP *this, int a2)
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

uint64_t AUNeuralNetSPP::ChangeStreamFormat(AUNeuralNetSPP *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  v6 = a3;
  v7 = a2;
  v17 = *MEMORY[0x1E69E9840];
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  v9 = 0;
  if (v7 == 1 && !v6)
  {
    if (ausdk::AUScope::GetElement((this + 80), 1u))
    {
      Element = ausdk::AUScope::GetElement((this + 80), 1u);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v9 = (*(*Element + 56))(Element, a5);
      if (AUNeuralNetSPPLogScope(void)::once != -1)
      {
        dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
      }

      if (AUNeuralNetSPPLogScope(void)::scope)
      {
        v11 = *AUNeuralNetSPPLogScope(void)::scope;
        if (!*AUNeuralNetSPPLogScope(void)::scope)
        {
          return v9;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "AUNeuralNetSPP.cpp";
        v15 = 1024;
        v16 = 958;
        _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Setting the stream format for the second input bus to match the format of the first bus.\n", &v13, 0x12u);
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t AUNeuralNetSPP::ValidFormat(AUNeuralNetSPP *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
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

uint64_t AUNeuralNetSPP::SupportedNumChannels(AUNeuralNetSPP *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUNeuralNetSPP::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 16;
}

uint64_t AUNeuralNetSPP::GetParameterValueStrings(AUNeuralNetSPP *this, int a2, unsigned int a3, const __CFArray **a4)
{
  if (a4)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return 4294956430;
  }
}

uint64_t AUNeuralNetSPP::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    this[66] = (this[66] + 1);
    this[68] = (this[68] + 1);
  }

  return result;
}

uint64_t AUNeuralNetSPP::SaveExtendedScopes(AUNeuralNetSPP *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUNeuralNetSPP::GetParameterInfo(AUNeuralNetSPP *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2 != 4)
  {
    if (a2)
    {
      return 4294956430;
    }

    result = 4294956418;
    if (a3 <= 5)
    {
      if (a3 <= 2)
      {
        if (a3)
        {
          if (a3 == 1)
          {
            buffer->cfNameString = @"NS: Number of frames for context window";
            buffer->flags = 0x8000000;
            CFStringGetCString(@"NS: Number of frames for context window", buffer->name, 52, 0x8000100u);
            buffer->unit = kAudioUnitParameterUnit_Generic;
            *&buffer->minValue = 0x410000003F800000;
            v6 = 1.0;
          }

          else
          {
            if (a3 != 2)
            {
              return result;
            }

            buffer->cfNameString = @"NS: Forgetting factor (time constant)";
            buffer->flags = 0x8000000;
            CFStringGetCString(@"NS: Forgetting factor (time constant)", buffer->name, 52, 0x8000100u);
            buffer->unit = kAudioUnitParameterUnit_Seconds;
            *&buffer->minValue = 0x404000003E99999ALL;
            v6 = 0.3;
          }

          buffer->defaultValue = v6;
        }

        else
        {
          buffer->cfNameString = @"NS: Number of DNN layers";
          buffer->flags = 0x8000000;
          CFStringGetCString(@"NS: Number of DNN layers", buffer->name, 52, 0x8000100u);
          buffer->unit = kAudioUnitParameterUnit_Generic;
          *&buffer->minValue = 0x4100000000000000;
          buffer->defaultValue = 0.0;
        }

        goto LABEL_34;
      }

      if (a3 == 3)
      {
        v15 = @"NS: Noise suppression amount";
      }

      else
      {
        if (a3 != 4)
        {
          buffer->cfNameString = @"RES: Number of DNN layers";
          buffer->flags = 0x8000000;
          CFStringGetCString(@"RES: Number of DNN layers", buffer->name, 52, 0x8000100u);
          buffer->clumpID = 1;
          flags = buffer->flags;
          buffer->unit = kAudioUnitParameterUnit_Generic;
          *&buffer->minValue = 0x4100000000000000;
          buffer->defaultValue = 0.0;
LABEL_48:
          v13 = flags | 0x40108000;
          goto LABEL_36;
        }

        v15 = @"NS: Noise suppression amount as post mask";
      }

      buffer->cfNameString = v15;
      buffer->flags = 0x8000000;
      CFStringGetCString(v15, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 3281387520;
      buffer->defaultValue = 0.0;
      v13 = buffer->flags | 0xC0000000;
      goto LABEL_36;
    }

    if (a3 <= 8)
    {
      if (a3 == 6)
      {
        buffer->cfNameString = @"RES: Number of frames for context window";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"RES: Number of frames for context window", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x410000003F800000;
        v14 = 1.0;
      }

      else
      {
        if (a3 != 7)
        {
          v8 = @"RES: Echo suppression amount";
          goto LABEL_42;
        }

        buffer->cfNameString = @"RES: Forgetting factor (time constant)";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"RES: Forgetting factor (time constant)", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        *&buffer->minValue = 0x404000003E99999ALL;
        v14 = 0.3;
      }

      buffer->defaultValue = v14;
      goto LABEL_48;
    }

    if (a3 != 9)
    {
      if (a3 == 10)
      {
        buffer->cfNameString = @"Use energy threshold for channel averaging? Only channels with mean subband energy larger than the threshold will be used.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Use energy threshold for channel averaging? Only channels with mean subband energy larger than the threshold will be used.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 2;
        v16 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        *&buffer->minValue = 0x3F80000000000000;
        buffer->defaultValue = 0.0;
        v13 = v16 | 0xC0100000;
        goto LABEL_36;
      }

      if (a3 != 11)
      {
        return result;
      }

      buffer->cfNameString = @"Energy threshold for channel averaging (in dB).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Energy threshold for channel averaging (in dB).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      v11 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 3281387520;
      buffer->defaultValue = -300.0;
      goto LABEL_43;
    }

    v8 = @"RES: Echo suppression amount as post mask";
LABEL_42:
    buffer->cfNameString = v8;
    buffer->flags = 0x8000000;
    CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
    buffer->clumpID = 1;
    v11 = buffer->flags;
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    *&buffer->minValue = 3281387520;
    buffer->defaultValue = 0.0;
LABEL_43:
    v12 = -1072693248;
    goto LABEL_35;
  }

  result = 4294956418;
  if (a3 <= 101)
  {
    if (a3 == 100)
    {
      buffer->cfNameString = @"EC Delta EIR.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"EC Delta EIR.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      buffer->defaultValue = 0.0;
      v9 = 0x501502F900000000;
    }

    else
    {
      if (a3 != 101)
      {
        return result;
      }

      buffer->cfNameString = @"EC IR Delay.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"EC IR Delay.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      buffer->defaultValue = 0.0;
      v9 = 0x43C8000000000000;
    }

    goto LABEL_33;
  }

  switch(a3)
  {
    case 'f':
      v7 = @"EC Adapted flag.";
      break;
    case 'g':
      buffer->cfNameString = @"EC Time aligned ref signal energy.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"EC Time aligned ref signal energy.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      buffer->defaultValue = 0.0;
      v9 = 0x447A000000000000;
      goto LABEL_33;
    case 'h':
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
  v9 = 0x3F80000000000000;
LABEL_33:
  *&buffer->minValue = v9;
LABEL_34:
  v11 = buffer->flags;
  v12 = 1073774592;
LABEL_35:
  v13 = v11 | v12;
LABEL_36:
  result = 0;
  buffer->flags = v13;
  return result;
}

uint64_t AUNeuralNetSPP::GetParameterList(AUNeuralNetSPP *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 4)
  {
    if (!a3)
    {
      v4 = 5;
      goto LABEL_11;
    }

    v4 = 5;
    *a3 = 100;
    v5 = 104;
    v6 = 103;
    v7 = 102;
    v8 = 101;
    v9 = 4;
    v10 = 3;
    v11 = 2;
    v12 = 1;
  }

  else
  {
    if (a2)
    {
      return 4294956430;
    }

    if (!a3)
    {
      v4 = 12;
      goto LABEL_11;
    }

    v4 = 12;
    v5 = 11;
    v6 = 10;
    v7 = 9;
    v8 = 8;
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    v9 = 11;
    v10 = 10;
    v11 = 9;
    v12 = 8;
  }

  a3[v12] = v8;
  a3[v11] = v7;
  a3[v10] = v6;
  a3[v9] = v5;
LABEL_11:
  result = 0;
  *a4 = v4;
  return result;
}

ausdk::AUInputElement *AUNeuralNetSPP::Render(AUNeuralNetSPP *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v17[1] = *MEMORY[0x1E69E9840];
  do
  {
    Element = ausdk::AUScope::GetElement((this + 80), v8);
    if (Element && *(Element + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v8);
      if (v12)
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

    v8 = (v8 + 1);
  }

  while (v8 != 3);
  v13 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v13)
  {
LABEL_19:
    ausdk::Throw(0xFFFFD583);
  }

  v17[0] = ausdk::AUIOElement::PrepareBuffer(v13, a4);
  if (v9)
  {
    return 0;
  }

  v14 = 0;
  memset(v16, 0, sizeof(v16));
  do
  {
    v15 = ausdk::AUScope::GetElement((this + 80), v14);
    if (!v15)
    {
      goto LABEL_19;
    }

    if (!*(v15 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v16[v14++] = *(v15 + 152) + 48;
  }

  while (v14 != 3);
  return (*(*this + 184))(this, a2, a4, 3, v16, 1, v17);
}

uint64_t AUNeuralNetSPP::ProcessMultipleBufferLists(AUNeuralNetSPP *this, unsigned int *a2, AudioDSP::Utility *a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v9 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v11 = *(this + 66);
  if (*(this + 67) != v11)
  {
    v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v13 & 1) == 0)
    {
      goto LABEL_85;
    }

    Parameter = ausdk::AUElement::GetParameter(v12, 3u);
    v15 = 1.0;
    if (Parameter != 0.0)
    {
      v15 = __exp10f(Parameter / 20.0);
    }

    *(this + 160) = v15;
    v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v17 & 1) == 0)
    {
      goto LABEL_85;
    }

    v18 = ausdk::AUElement::GetParameter(v16, 4u);
    v19 = 1.0;
    if (v18 != 0.0)
    {
      v19 = __exp10f(v18 / 20.0);
    }

    *(this + 161) = v19;
    v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v21 & 1) == 0)
    {
      goto LABEL_85;
    }

    v22 = ausdk::AUElement::GetParameter(v20, 8u);
    v23 = 1.0;
    if (v22 != 0.0)
    {
      v23 = __exp10f(v22 / 20.0);
    }

    *(this + 162) = v23;
    v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v25 & 1) == 0)
    {
      goto LABEL_85;
    }

    v26 = ausdk::AUElement::GetParameter(v24, 9u);
    v27 = 1.0;
    if (v26 != 0.0)
    {
      v27 = __exp10f(v26 / 20.0);
    }

    *(this + 163) = v27;
    v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v29 & 1) == 0 || (*(this + 656) = ausdk::AUElement::GetParameter(v28, 0xAu) != 0.0, v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v31 & 1) == 0))
    {
LABEL_85:
      abort();
    }

    v32 = ausdk::AUElement::GetParameter(v30, 0xBu);
    v33 = 1.0;
    if (v32 != 0.0)
    {
      v33 = __exp10f(v32 / 10.0);
    }

    *(this + 165) = v33;
    *(this + 67) = v11;
  }

  v34 = *(this + 68);
  if (*(this + 69) != v34)
  {
    if (*(this + 158))
    {
      v35 = 0;
      v36 = (this + 680);
      do
      {
        Element = ausdk::AUScope::GetElement((this + 568), v35);
        *(v36 - 4) = ausdk::AUElement::GetParameter(Element, 0x64u);
        v38 = ausdk::AUScope::GetElement((this + 568), v35);
        *(v36 - 3) = ausdk::AUElement::GetParameter(v38, 0x65u);
        v39 = ausdk::AUScope::GetElement((this + 568), v35);
        *(v36 - 2) = ausdk::AUElement::GetParameter(v39, 0x66u);
        v40 = ausdk::AUScope::GetElement((this + 568), v35);
        *(v36 - 1) = ausdk::AUElement::GetParameter(v40, 0x67u);
        v41 = ausdk::AUScope::GetElement((this + 568), v35);
        *v36 = ausdk::AUElement::GetParameter(v41, 0x68u);
        v36 += 5;
        ++v35;
      }

      while (v35 < *(this + 158));
    }

    *(this + 69) = v34;
  }

  if (*(this + 84) != v9)
  {
    return 4294956422;
  }

  v42 = *a5;
  if (!*a5)
  {
    if (AUNeuralNetSPPLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
    }

    if (AUNeuralNetSPPLogScope(void)::scope)
    {
      v51 = *AUNeuralNetSPPLogScope(void)::scope;
      if (!*AUNeuralNetSPPLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v51 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      return 4294956420;
    }

    buf.mNumberBuffers = 136315394;
    *(&buf.mNumberBuffers + 1) = "AUNeuralNetSPP.cpp";
    LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
    *(&buf.mBuffers[0].mDataByteSize + 2) = 1084;
    v52 = "%25s:%-5d MCLPoutSignals cannot be NULL. It is a required input\n";
LABEL_72:
    _os_log_impl(&dword_1DDB85000, v51, OS_LOG_TYPE_ERROR, v52, &buf, 0x12u);
    return 4294956420;
  }

  v43 = *v42;
  if (*v42 != *(this + 158))
  {
    return 4294956428;
  }

  v44 = a5[1];
  if (!v44)
  {
    if (AUNeuralNetSPPLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
    }

    if (AUNeuralNetSPPLogScope(void)::scope)
    {
      v51 = *AUNeuralNetSPPLogScope(void)::scope;
      if (!*AUNeuralNetSPPLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v51 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      return 4294956420;
    }

    buf.mNumberBuffers = 136315394;
    *(&buf.mNumberBuffers + 1) = "AUNeuralNetSPP.cpp";
    LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
    *(&buf.mBuffers[0].mDataByteSize + 2) = 1089;
    v52 = "%25s:%-5d ECleeSignals cannot be NULL. It is a required input\n";
    goto LABEL_72;
  }

  if (v44->mNumberBuffers != v43)
  {
    return 4294956428;
  }

  v45 = a5[2];
  if (!v45)
  {
    if (AUNeuralNetSPPLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
    }

    if (AUNeuralNetSPPLogScope(void)::scope)
    {
      v51 = *AUNeuralNetSPPLogScope(void)::scope;
      if (!*AUNeuralNetSPPLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v51 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      buf.mNumberBuffers = 136315394;
      *(&buf.mNumberBuffers + 1) = "AUNeuralNetSPP.cpp";
      LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
      *(&buf.mBuffers[0].mDataByteSize + 2) = 1094;
      v52 = "%25s:%-5d ECoutSignals cannot be NULL. It is a required input\n";
      goto LABEL_72;
    }

    return 4294956420;
  }

  if (v45->mNumberBuffers != v43 || *a7 && (*a7)->mNumberBuffers != v43)
  {
    return 4294956428;
  }

  LODWORD(v63.mSampleRate) = 0;
  v46 = (2 * *(this + 155));
  *&buf.mNumberBuffers = *(this + 78);
  buf.mBuffers[0] = xmmword_1DE09BD50;
  v65 = 4;
  v66 = v43;
  v67 = 32;
  AudioDSP::Utility::DetectNonFinites(v46, v42, &buf, (&v63.mSampleRate + 3), a5);
  AudioDSP::Utility::DetectNonFinites(v46, a5[1], &buf, (&v63.mSampleRate + 2), v47);
  AudioDSP::Utility::DetectNonFinites(v46, a5[2], &buf, (&v63.mSampleRate + 1), v48);
  if ((*(this + 560) & 1) != 0 || ((BYTE3(v63.mSampleRate) & 1) != 0 || (BYTE2(v63.mSampleRate) & 1) != 0 || BYTE1(v63.mSampleRate) == 1) && *(this + 636) == 1)
  {
    __A = 1.0;
    vDSP_vfill(&__A, *(this + 123), 1, (*(this + 155) + 1));
    vDSP_vfill(&__A, *(this + 126), 1, (*(this + 155) + 1));
    CopyBufferList(*a5, *a7);
    if ((BYTE3(v63.mSampleRate) & 1) == 0 && (BYTE2(v63.mSampleRate) & 1) == 0 && BYTE1(v63.mSampleRate) != 1)
    {
      return 0;
    }

    if (AUNeuralNetSPPLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
    }

    if (AUNeuralNetSPPLogScope(void)::scope)
    {
      v49 = *AUNeuralNetSPPLogScope(void)::scope;
      if (!*AUNeuralNetSPPLogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v49 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v63.mSampleRate) = 136316162;
      *&v63.mFormatID = "AUNeuralNetSPP.cpp";
      LOWORD(v63.mBytesPerPacket) = 1024;
      *(&v63.mBytesPerPacket + 2) = 1130;
      HIWORD(v63.mFramesPerPacket) = 1024;
      v63.mBytesPerFrame = BYTE3(v63.mSampleRate);
      LOWORD(v63.mChannelsPerFrame) = 1024;
      *(&v63.mChannelsPerFrame + 2) = BYTE2(v63.mSampleRate);
      HIWORD(v63.mBitsPerChannel) = 1024;
      v63.mReserved = BYTE1(v63.mSampleRate);
      _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d AUNeuralNetSPP: (MCLPoutSignals, ECleeSignals, ECoutSignals) is NOT finite: (%u, %u, %u)", &v63.mSampleRate + 4, 0x24u);
    }

    return 0;
  }

  if (*(this + 158))
  {
    v53 = 0;
    v54 = 0.0;
    v55 = 16;
    do
    {
      v54 = cblas_sdsdot(2 * *(this + 155), v54, *(&a5[1]->mNumberBuffers + v55), 1, *(&a5[1]->mNumberBuffers + v55), 1);
      ++v53;
      v56 = *(this + 158);
      v55 += 16;
    }

    while (v53 < v56);
    v57 = v56 == 0;
    if (v54 > 2.2204e-16)
    {
      if (*(this + 162) != 1.0 || *(this + 163) != 1.0) && (*(this + 617))
      {
        NeuralNetRES::ProcessBufferList(*(this + 130), *a5, a5[1], *a7, 0.0, 1, *(this + 656), *(this + 165));
        vDSP_vthr(*(*(this + 130) + 192), 1, this + 162, *(this + 123), 1, (*(this + 155) + 1));
        vDSP_vthr(*(*(this + 130) + 192), 1, this + 163, *(this + 126), 1, (*(this + 155) + 1));
        goto LABEL_95;
      }

LABEL_94:
      HIDWORD(v63.mSampleRate) = 1065353216;
      vDSP_vfill(&v63.mSampleRate + 1, *(this + 123), 1, (*(this + 155) + 1));
      vDSP_vfill(&v63.mSampleRate + 1, *(this + 126), 1, (*(this + 155) + 1));
      CopyBufferList(*a5, *a7);
      goto LABEL_95;
    }
  }

  else
  {
    v57 = 1;
  }

  if (*(this + 160) == 1.0 && *(this + 161) == 1.0 || *(this + 616) != 1)
  {
    goto LABEL_94;
  }

  if (!v57)
  {
    v59 = 0;
    v60 = 16;
    do
    {
      MEMORY[0x1E12BE9A0](*(&(*a5)->mNumberBuffers + v60), 1, *(&a5[2]->mNumberBuffers + v60), 1, *(&(*a7)->mNumberBuffers + v60), 1, (2 * *(this + 155)));
      ++v59;
      v60 += 16;
    }

    while (v59 < *(this + 158));
  }

  NeuralNetRES::ProcessBufferList(*(this + 129), *a5, *a7, *a7, 0.0, 1, *(this + 656), *(this + 165));
  vDSP_vthr(*(*(this + 129) + 192), 1, this + 160, *(this + 123), 1, (*(this + 155) + 1));
  vDSP_vthr(*(*(this + 129) + 192), 1, this + 161, *(this + 126), 1, (*(this + 155) + 1));
LABEL_95:
  AudioDSP::Utility::DetectNonFinites(v46, *a7, &buf, &v63, v58);
  if (LOBYTE(v63.mSampleRate) != 1 || *(this + 636) != 1)
  {
    return 0;
  }

  if (AUNeuralNetSPPLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
  }

  if (!AUNeuralNetSPPLogScope(void)::scope)
  {
    v61 = MEMORY[0x1E69E9C10];
LABEL_103:
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v63.mSampleRate) = 136315650;
      *&v63.mFormatID = "AUNeuralNetSPP.cpp";
      LOWORD(v63.mBytesPerPacket) = 1024;
      *(&v63.mBytesPerPacket + 2) = 1205;
      HIWORD(v63.mFramesPerPacket) = 1024;
      v63.mBytesPerFrame = LOBYTE(v63.mSampleRate);
      _os_log_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d AUNeuralNetSPP: (OutputSignals) is NOT finite: (%u)", &v63.mSampleRate + 4, 0x18u);
    }

    goto LABEL_105;
  }

  v61 = *AUNeuralNetSPPLogScope(void)::scope;
  if (*AUNeuralNetSPPLogScope(void)::scope)
  {
    goto LABEL_103;
  }

LABEL_105:
  (*(*this + 64))(this);
  HIDWORD(v63.mSampleRate) = 1065353216;
  vDSP_vfill(&v63.mSampleRate + 1, *(this + 123), 1, (*(this + 155) + 1));
  vDSP_vfill(&v63.mSampleRate + 1, *(this + 126), 1, (*(this + 155) + 1));
  CopyBufferList(*a5, *a7);
  return 0;
}

uint64_t AUNeuralNetSPP::SetParameter(AUNeuralNetSPP *this, unsigned int a2, int a3, unsigned int a4, float a5)
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

uint64_t AUNeuralNetSPP::SetProperty(AUNeuralNetSPP *this, int a2, int a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 3697)
  {
    if (a2 == 3698)
    {
      if (a5)
      {
        if (*(this + 130))
        {
          std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](this + 130, 0);
        }

        if (AUNeuralNetSPPLogScope(void)::once != -1)
        {
          dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
        }

        operator new();
      }

      if (AUNeuralNetSPPLogScope(void)::once != -1)
      {
        dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
      }

      if (AUNeuralNetSPPLogScope(void)::scope)
      {
        v8 = *AUNeuralNetSPPLogScope(void)::scope;
        if (!*AUNeuralNetSPPLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "AUNeuralNetSPP.cpp";
        v11 = 1024;
        v12 = 490;
        goto LABEL_43;
      }

      return 4294956445;
    }

    if (a2 == 3700)
    {
      result = 4294956445;
      if (a6 >= 4)
      {
        if (*a5)
        {
          return 0;
        }

        else
        {
          return 4294956445;
        }
      }
    }
  }

  else
  {
    if (a2 == 21)
    {
      if (a6 == 4)
      {
        result = 0;
        *(this + 560) = *a5 != 0;
        return result;
      }

      return 4294956445;
    }

    if (a2 == 3697)
    {
      if (a5)
      {
        if (*(this + 129))
        {
          std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](this + 129, 0);
        }

        if (AUNeuralNetSPPLogScope(void)::once != -1)
        {
          dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
        }

        operator new();
      }

      if (AUNeuralNetSPPLogScope(void)::once != -1)
      {
        dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
      }

      if (AUNeuralNetSPPLogScope(void)::scope)
      {
        v8 = *AUNeuralNetSPPLogScope(void)::scope;
        if (!*AUNeuralNetSPPLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "AUNeuralNetSPP.cpp";
        v11 = 1024;
        v12 = 448;
LABEL_43:
        _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d The CFDictionaryRef passed to SetProperty is null.\n", buf, 0x12u);
        return 4294956445;
      }

      return 4294956445;
    }
  }

  return result;
}

void sub_1DE002568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, int a10, int a11, __int128 buf, __int16 a13, __int16 a14, int a15)
{
  MEMORY[0x1E12BD160](v15, 0x10E0C403CD53A6ALL);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  exception_ptr = __cxa_get_exception_ptr(a1);
  a9 = &unk_1F593B0D8;
  a10 = exception_ptr[2];
  __cxa_begin_catch(a1);
  if (*(v17 + 4088) != -1)
  {
    dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
  }

  v21 = *(v16 + 4080);
  if (v21)
  {
    v22 = *v21;
    if (!*v21)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315650;
    *(&buf + 4) = "AUNeuralNetSPP.cpp";
    WORD6(buf) = 1024;
    *(&buf + 14) = 503;
    a14 = 1024;
    a15 = a10;
    _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not load NeuralNetRES plist, exception (%d).\n", &buf, 0x18u);
  }

LABEL_10:
  std::exception::~exception(&a9);
  __cxa_end_catch();
  JUMPOUT(0x1DE0024CCLL);
}

uint64_t AUNeuralNetSPP::GetProperty(AUNeuralNetSPP *this, int a2, int a3, unsigned int a4, _DWORD *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 36998)
  {
    if (a2 == 21)
    {
      result = 0;
      v8 = *(this + 560);
LABEL_13:
      *__dst = v8;
      return result;
    }

    if (a2 != 3699)
    {
      if (a2 != 3700)
      {
        return result;
      }

      result = 0;
      v8 = *(this + 376);
      goto LABEL_13;
    }

    v10 = *(this + 123);
    goto LABEL_16;
  }

  switch(a2)
  {
    case 36999:
      v10 = *(this + 126);
LABEL_16:
      memcpy(__dst, v10, 4 * (*(this + 155) + 1));
      return 0;
    case 103699:
      v9 = (this + 984);
      break;
    case 1036999:
      v9 = (this + 1008);
      break;
    default:
      return result;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<float>(v9);
  result = 0;
  *__dst = CFArray;
  return result;
}

uint64_t AUNeuralNetSPP::GetPropertyInfo(AUNeuralNetSPP *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 36998)
  {
    if (a2 == 21)
    {
LABEL_7:
      *a6 = 1;
      v8 = 4;
LABEL_13:
      result = 0;
      *a5 = v8;
      return result;
    }

    if (a2 != 3699)
    {
      if (a2 != 3700)
      {
        return result;
      }

      goto LABEL_7;
    }

LABEL_12:
    *a6 = 0;
    v8 = 4 * *(this + 155) + 4;
    goto LABEL_13;
  }

  if (a2 == 36999)
  {
    goto LABEL_12;
  }

  if (a2 == 103699 || a2 == 1036999)
  {
    *a6 = 0;
    v8 = 8;
    goto LABEL_13;
  }

  return result;
}

_DWORD *AUNeuralNetSPP::Cleanup(NeuralNetRES **this, int16x4_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (AUNeuralNetSPPLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
  }

  if (AUNeuralNetSPPLogScope(void)::scope)
  {
    v3 = *AUNeuralNetSPPLogScope(void)::scope;
    if (!*AUNeuralNetSPPLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "AUNeuralNetSPP.cpp";
    v10 = 1024;
    v11 = 218;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUNeuralNetSPP: Cleanup().\n", &v8, 0x12u);
  }

LABEL_9:
  if (*(this + 616) == 1)
  {
    NeuralNetRES::Cleanup(this[129]);
  }

  if (*(this + 617) == 1)
  {
    NeuralNetRES::Cleanup(this[130]);
  }

  v4 = (*(this + 155) + 1);
  v8 = 0;
  std::vector<float>::assign(this + 123, v4, &v8, a2);
  v5 = (*(this + 155) + 1);
  v8 = 0;
  return std::vector<float>::assign(this + 126, v5, &v8, v6);
}

uint64_t AUNeuralNetSPP::Initialize(AUNeuralNetSPP *this)
{
  v46 = *MEMORY[0x1E69E9840];
  if (AUNeuralNetSPPLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
  }

  if (AUNeuralNetSPPLogScope(void)::scope)
  {
    v2 = *AUNeuralNetSPPLogScope(void)::scope;
    if (!*AUNeuralNetSPPLogScope(void)::scope)
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
    v42 = 136315394;
    v43 = "AUNeuralNetSPP.cpp";
    v44 = 1024;
    v45 = 114;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUNeuralNetSPP: Initialize.\n", &v42, 0x12u);
  }

LABEL_9:
  if ((*(this + 616) & 1) == 0 && (*(this + 617) & 1) == 0)
  {
    if (AUNeuralNetSPPLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
    }

    if (AUNeuralNetSPPLogScope(void)::scope)
    {
      v11 = *AUNeuralNetSPPLogScope(void)::scope;
      if (!*AUNeuralNetSPPLogScope(void)::scope)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 136315394;
      v43 = "AUNeuralNetSPP.cpp";
      v44 = 1024;
      v45 = 121;
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initialize called without setting setting NeuralNetNSLayers or NeuralNetRESLayers plist! Setting AU in Bypass mode.\n", &v42, 0x12u);
    }

LABEL_34:
    *(this + 560) = 1;
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v13 = 0;
    v14 = *(Element + 80);
    *(this + 158) = *(Element + 108);
    *(this + 78) = v14;
    while (1)
    {
      v15 = ausdk::AUScope::GetElement((this + 80), v13);
      if (!v15)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (*(v15 + 108) != *(this + 158))
      {
        break;
      }

      if (++v13 == 3)
      {
        v16 = ausdk::AUScope::GetElement((this + 128), 0);
        if (!v16)
        {
          ausdk::Throw(0xFFFFD583);
        }

        if (*(v16 + 108) == *(this + 158))
        {
          v17 = *(this + 84);
          *(this + 155) = v17;
          *(this + 124) = *(this + 123);
          std::vector<float>::resize(this + 123, (v17 + 1));
          *(this + 127) = *(this + 126);
          std::vector<float>::resize(this + 126, (*(this + 155) + 1));
          return 0;
        }

        return 4294956421;
      }
    }

    return 4294956421;
  }

  *(this + 155) = *(this + 84);
  (*(*this + 64))(this);
  v3 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v3)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = 0;
  v5 = *(v3 + 80);
  *(this + 158) = *(v3 + 108);
  *(this + 78) = v5;
  do
  {
    v6 = ausdk::AUScope::GetElement((this + 80), v4);
    if (!v6)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (*(v6 + 108) != *(this + 158))
    {
      return 4294956421;
    }

    ++v4;
  }

  while (v4 != 3);
  v7 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v7)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(v7 + 108) != *(this + 158))
  {
    return 4294956421;
  }

  v8 = (*(*this + 408))(this, 4);
  if (!v8)
  {
    ausdk::ThrowQuiet(0);
  }

  ausdk::AUScope::SetNumberOfElements(v8, 0x10u);
  if (*(this + 616) == 1)
  {
    v9 = *(this + 129);
    if (*(this + 78) == *v9)
    {
      goto LABEL_48;
    }

    if (AUNeuralNetSPPLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
    }

    if (AUNeuralNetSPPLogScope(void)::scope)
    {
      v10 = *AUNeuralNetSPPLogScope(void)::scope;
      if (!*AUNeuralNetSPPLogScope(void)::scope)
      {
LABEL_47:
        *(this + 560) = 1;
        v9 = *(this + 129);
LABEL_48:
        if (*(this + 155) == *(v9 + 8))
        {
          goto LABEL_58;
        }

        if (AUNeuralNetSPPLogScope(void)::once != -1)
        {
          dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
        }

        if (AUNeuralNetSPPLogScope(void)::scope)
        {
          v19 = *AUNeuralNetSPPLogScope(void)::scope;
          if (!*AUNeuralNetSPPLogScope(void)::scope)
          {
LABEL_57:
            *(this + 560) = 1;
            goto LABEL_58;
          }
        }

        else
        {
          v19 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v42 = 136315394;
          v43 = "AUNeuralNetSPP.cpp";
          v44 = 1024;
          v45 = 175;
          _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Block size for NNNS is not supported! Setting AU in Bypass mode.\n", &v42, 0x12u);
        }

        goto LABEL_57;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 136315394;
      v43 = "AUNeuralNetSPP.cpp";
      v44 = 1024;
      v45 = 171;
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sample rate for NNNS is not supported! Setting AU in Bypass mode.\n", &v42, 0x12u);
    }

    goto LABEL_47;
  }

LABEL_58:
  if (*(this + 617) != 1)
  {
    goto LABEL_79;
  }

  v20 = *(this + 130);
  if (*(this + 78) != *v20)
  {
    if (AUNeuralNetSPPLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
    }

    if (AUNeuralNetSPPLogScope(void)::scope)
    {
      v21 = *AUNeuralNetSPPLogScope(void)::scope;
      if (!*AUNeuralNetSPPLogScope(void)::scope)
      {
LABEL_68:
        *(this + 560) = 1;
        v20 = *(this + 130);
        goto LABEL_69;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 136315394;
      v43 = "AUNeuralNetSPP.cpp";
      v44 = 1024;
      v45 = 181;
      _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sample rate for NNRES is not supported! Setting AU in Bypass mode.\n", &v42, 0x12u);
    }

    goto LABEL_68;
  }

LABEL_69:
  if (*(this + 155) == *(v20 + 8))
  {
    goto LABEL_79;
  }

  if (AUNeuralNetSPPLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
  }

  if (!AUNeuralNetSPPLogScope(void)::scope)
  {
    v22 = MEMORY[0x1E69E9C10];
LABEL_76:
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 136315394;
      v43 = "AUNeuralNetSPP.cpp";
      v44 = 1024;
      v45 = 185;
      _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Block size for NNRES is not supported! Setting AU in Bypass mode.\n", &v42, 0x12u);
    }

    goto LABEL_78;
  }

  v22 = *AUNeuralNetSPPLogScope(void)::scope;
  if (*AUNeuralNetSPPLogScope(void)::scope)
  {
    goto LABEL_76;
  }

LABEL_78:
  *(this + 560) = 1;
LABEL_79:
  (*(*this + 72))(this, 0, 0);
  if (*(this + 616) == 1)
  {
    v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v24 & 1) == 0)
    {
      goto LABEL_101;
    }

    v25 = v23;
    v26 = **(*(this + 129) + 152);
    v27 = (*(*v26 + 16))(v26);
    ausdk::AUElement::SetParameter(v25, 0, v27);
    v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v29 & 1) == 0)
    {
      goto LABEL_101;
    }

    ausdk::AUElement::SetParameter(v28, 1u, *(*(this + 129) + 12));
    v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v31 & 1) == 0)
    {
      goto LABEL_101;
    }

    ausdk::AUElement::SetParameter(v30, 2u, *(*(this + 129) + 16));
  }

  if (*(this + 617) == 1)
  {
    v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v33)
    {
      v34 = v32;
      v35 = **(*(this + 130) + 152);
      v36 = (*(*v35 + 16))(v35);
      ausdk::AUElement::SetParameter(v34, 5u, v36);
      v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v38)
      {
        ausdk::AUElement::SetParameter(v37, 6u, *(*(this + 130) + 12));
        v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v40)
        {
          ausdk::AUElement::SetParameter(v39, 7u, *(*(this + 130) + 16));
          goto LABEL_89;
        }
      }
    }

LABEL_101:
    abort();
  }

LABEL_89:
  if (AUNeuralNetSPPLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetSPPLogScope(void)::once, &__block_literal_global_30541);
  }

  if (AUNeuralNetSPPLogScope(void)::scope)
  {
    v41 = *AUNeuralNetSPPLogScope(void)::scope;
    if (!*AUNeuralNetSPPLogScope(void)::scope)
    {
      return 0;
    }
  }

  else
  {
    v41 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v42 = 136315394;
    v43 = "AUNeuralNetSPP.cpp";
    v44 = 1024;
    v45 = 206;
    _os_log_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUNeuralNetSPP: Successfully Initialized.\n", &v42, 0x12u);
    return 0;
  }

  return result;
}

void AUNeuralNetSPP::CreateExtendedElements(AUNeuralNetSPP *this)
{
  ausdk::AUScope::Initialize((this + 568), this, 4, 16);
  for (i = 0; i != 16; ++i)
  {
    std::to_string(&v9, i);
    v3 = std::string::insert(&v9, 0, "Mic", 3uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v11 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (v11 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v5)
    {
      if (v11 >= 0)
      {
        v6 = HIBYTE(v11);
      }

      else
      {
        v6 = __p[1];
      }

      v9.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
      if (!v9.__r_.__value_.__r.__words[0])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      v9.__r_.__value_.__r.__words[0] = 0;
    }

    Element = ausdk::AUScope::GetElement((this + 568), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v9.__r_.__value_.__l.__data_);
    if (v9.__r_.__value_.__r.__words[0])
    {
      CFRelease(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DE0034AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AUNeuralNetSPP::~AUNeuralNetSPP(AUNeuralNetSPP *this)
{
  AUNeuralNetSPP::~AUNeuralNetSPP(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59360B0;
  std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](this + 129, 0);
  std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](this + 130, 0);
  std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](this + 130, 0);
  std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](this + 129, 0);
  v2 = *(this + 126);
  if (v2)
  {
    *(this + 127) = v2;
    operator delete(v2);
  }

  v3 = *(this + 123);
  if (v3)
  {
    *(this + 124) = v3;
    operator delete(v3);
  }

  v4 = (this + 584);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v4);

  ausdk::AUBase::~AUBase(this);
}

void VPTimeFreqConverter::VPTimeFreqConverter(VPTimeFreqConverter *this, int a2, int a3)
{
  *(this + 2) = 0u;
  *(this + 4) = 0u;
  *(this + 7) = 0u;
  *(this + 169) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  v3 = 2 * a3;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  if (2 * a3)
  {
    *this = 0;
    *(this + 1) = a2;
    *(this + 2) = a3;
    *(this + 3) = a3;
    *(this + 4) = v3;
    *(this + 5) = v3;
    *(this + 6) = 1.0 / v3;
    *(this + 7) = a3 & 0x7FFFFFFF;
    operator new[]();
  }
}

void sub_1DE00375C(_Unwind_Exception *exception_object)
{
  v6 = v1[20];
  if (v6)
  {
    v1[21] = v6;
    operator delete(v6);
  }

  v7 = *(v3 + 104);
  if (v7)
  {
    v1[18] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v1[15] = v8;
    operator delete(v8);
  }

  v9 = *(v3 + 56);
  if (v9)
  {
    v1[12] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[9] = v10;
    operator delete(v10);
  }

  v11 = v1[5];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void VPTimeFreqConverter::~VPTimeFreqConverter(VPTimeFreqConverter *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x1E12BD130](v2, 0x1000C8052888210);
  }

  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x1E12BD130](v3, 0x1000C8052888210);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
    operator delete(v7);
  }

  v8 = *(this + 8);
  if (v8)
  {
    *(this + 9) = v8;
    operator delete(v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

uint64_t VPTimeFreqConverter::Analyze(VPTimeFreqConverter *this, const float *a2, DSPSplitComplex *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*(this + 184) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "vpTimeFreqConverter.cpp";
      v11 = 1024;
      v12 = 72;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::analyze: not configured for conversion";
LABEL_9:
      _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, v6, &v9, 0x12u);
    }

    return 4294956433;
  }

  if ((*(this + 1) | 2) != 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "vpTimeFreqConverter.cpp";
      v11 = 1024;
      v12 = 79;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::analyze: not configured for analysis";
      goto LABEL_9;
    }

    return 4294956433;
  }

  if (*this)
  {
    return 4294967292;
  }

  memcpy(*(this + 8), (*(this + 8) + 4 * *(this + 3)), 4 * (*(this + 4) - *(this + 3)));
  memcpy((*(this + 8) + 4 * (*(this + 4) - *(this + 3))), a2, 4 * *(this + 3));
  MEMORY[0x1E12BE7F0](*(this + 17), 1, *(this + 8), 1, *(this + 11), 1, *(this + 4));
  MEMORY[0x1E12BE940](*(this + 11), 1, this + 24, *(this + 11), 1, *(this + 4));
  MultiRadixRealFFT::RealOutOfPlaceForwardTransform((this + 32), *(this + 11), a3, 1.0);
  return 0;
}

void VPTimeFreqConverter::Synthesize(VPTimeFreqConverter *this, const DSPSplitComplex *a2, float *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*(this + 184) & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v9 = 136315394;
    v10 = "vpTimeFreqConverter.cpp";
    v11 = 1024;
    v12 = 120;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d _vp: vptimefreqconverter::synthesize: not configured for conversion";
LABEL_11:
    _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, v8, &v9, 0x12u);
    return;
  }

  if ((*(this + 1) - 1) >= 2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v9 = 136315394;
    v10 = "vpTimeFreqConverter.cpp";
    v11 = 1024;
    v12 = 127;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d _vp: vptimefreqconverter::synthesize: not configured for synthesis";
    goto LABEL_11;
  }

  if (!*this)
  {
    MultiRadixRealFFT::RealOutOfPlaceInverseTransform(this + 4, a2, *(this + 11));
    MEMORY[0x1E12BE7F0](*(this + 11), 1, *(this + 20), 1, *(this + 11), 1, *(this + 4));
    MEMORY[0x1E12BE5D0](*(this + 11), 1, *(this + 14), 1, *(this + 14), 1, *(this + 4));
    memcpy(a3, *(this + 14), 4 * *(this + 3));
    memmove(*(this + 14), (*(this + 14) + 4 * *(this + 3)), 4 * (*(this + 4) - *(this + 3)));
    v5 = *(this + 3);
    v6 = (*(this + 14) + 4 * (*(this + 4) - v5));

    bzero(v6, 4 * v5);
  }
}

uint64_t AU::SpatialCapture::MicSelector::Get(AU::SpatialCapture::MicSelector *this, uint64_t a2, uint64_t a3)
{
  v5 = ClampOrientation(a3);
  v6 = ClampCameraDirection(a2);
  LODWORD(v5) = ClampOrientation(v5);
  v7 = ClampCameraDirection(v6) | (2 * v5);
  v8 = *(this + 2);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 3) - v8) >> 3) <= v7)
  {
    __assert_rtn("GetIndex", "AUSpatialCaptureMicSelector.mm", 91, "index < mInfoPerCameraDirectionAndOrientation.size()");
  }

  return v8 + 24 * v7;
}

uint64_t AU::SpatialCapture::MicSelector::SetParameter(uint64_t result, int a2, float a3)
{
  v3 = result;
  if (a2)
  {
    if (a2 == 30)
    {
      result = ClampOrientation(a3);
      *(v3 + 4) = result;
    }
  }

  else
  {
    result = ClampCameraDirection(a3);
    *(v3 + 8) = result;
  }

  return result;
}

void Meter::SetMeterType(uint64_t a1, int a2, int16x4_t a3, float a4)
{
  v5 = a3.i32[0];
  v19 = *MEMORY[0x1E69E9840];
  v9 = (a1 + 200);
  v8 = *(a1 + 200);
  *(a1 + 224) = a2;
  *(a1 + 208) = v8;
  LODWORD(__src) = 1065353216;
  std::vector<float>::resize((a1 + 200), 8uLL, &__src, a3);
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        LODWORD(v11) = *(a1 + 228);
        DspLib::Biquad::Design::aWeighting(v11, &__src);
        DspLib::Biquad::Filter::setCoefficients(a1, &__src, 3, 0, 0x41uLL);
      }

      else if (a2 == 2)
      {
        LODWORD(v11) = *(a1 + 228);
        DspLib::Biquad::Design::cWeighting(v11, &__src);
        DspLib::Biquad::Filter::setCoefficients(a1, &__src, 2, 0, 0x41uLL);
        __src = DspLib::Biquad::kBypassSection;
        LODWORD(v17) = 0;
        DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 2, 0x41uLL);
      }
    }

    else
    {
      LODWORD(v11) = *(a1 + 228);
      DspLib::Biquad::Design::kWeighting(v11, &__src);
      DspLib::Biquad::Filter::setCoefficients(a1, &__src, 2, 0, 0x41uLL);
      __src = DspLib::Biquad::kBypassSection;
      LODWORD(v17) = 0;
      DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 2, 0x41uLL);
      __src = xmmword_1DE115118;
      v17 = unk_1DE115128;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v9, &__src, v18, 8uLL);
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      v12 = 8;
      v13 = v5;
      v14 = 0;
      v15 = a4;
      DspLib::Biquad::Design::ParametricEQ::design(&v12, *(a1 + 228), 0, v10, &__src);
      DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 0, 0x41uLL);
      __src = DspLib::Biquad::kBypassSection;
      LODWORD(v17) = 0;
      DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 1, 0x41uLL);
      __src = DspLib::Biquad::kBypassSection;
      LODWORD(v17) = 0;
      DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 2, 0x41uLL);
    }

    else if (a2 == 6)
    {
      v12 = 9;
      v13 = v5;
      v14 = 0;
      v15 = a4;
      DspLib::Biquad::Design::ParametricEQ::design(&v12, *(a1 + 228), 0, v10, &__src);
      DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 0, 0x41uLL);
      __src = DspLib::Biquad::kBypassSection;
      LODWORD(v17) = 0;
      DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 1, 0x41uLL);
      __src = DspLib::Biquad::kBypassSection;
      LODWORD(v17) = 0;
      DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 2, 0x41uLL);
    }
  }

  else if (a2 == 3)
  {
    LODWORD(v17) = 0;
    __src = DspLib::Biquad::kBypassSection;
    DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 0, 0x41uLL);
    __src = DspLib::Biquad::kBypassSection;
    LODWORD(v17) = 0;
    DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 1, 0x41uLL);
    __src = DspLib::Biquad::kBypassSection;
    LODWORD(v17) = 0;
    DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 2, 0x41uLL);
  }

  else
  {
    v12 = 14;
    v13 = v5;
    v14 = 0;
    v15 = a4;
    DspLib::Biquad::Design::ParametricEQ::design(&v12, *(a1 + 228), 0, v10, &__src);
    DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 0, 0x41uLL);
    __src = DspLib::Biquad::kBypassSection;
    LODWORD(v17) = 0;
    DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 1, 0x41uLL);
    __src = DspLib::Biquad::kBypassSection;
    LODWORD(v17) = 0;
    DspLib::Biquad::Filter::setCoefficients(a1, &__src, 1, 2, 0x41uLL);
  }

  *(*(a1 + 72) + 28) = 0;
  DspLib::Biquad::SetupWrapper::reset((a1 + 48));
}

BOOL AUHOAZoomV2::ValidFormat(AUHOAZoomV2 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  mChannelsPerFrame = a4->mChannelsPerFrame;
  v5 = sqrt(mChannelsPerFrame);
  if (round(v5) != v5 || mChannelsPerFrame < 2)
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

uint64_t AUHOAZoomV2::SupportedNumChannels(AUHOAZoomV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUHOAZoomV2::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 10;
}

uint64_t AUHOAZoomV2::GetParameterInfo(AUHOAZoomV2 *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 9)
  {
    v6 = off_1E8671BC8[a3];
    v7 = dword_1DE115160[a3];
    v8 = flt_1DE115188[a3];
    v9 = flt_1DE1151B0[a3];
    v10 = flt_1DE1151D8[a3];
    v11 = dword_1DE115200[a3];
    buffer->cfNameString = v6;
    buffer->flags = 0x8000000;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = v7;
    buffer->minValue = v8;
    buffer->maxValue = v9;
    buffer->defaultValue = v10;
    buffer->flags |= v11;
  }

  return result;
}

ausdk::AUInputElement *AUHOAZoomV2::Render(AUHOAZoomV2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v14 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v13)
  {
    result = ausdk::AUInputElement::PullInput(result, &v14, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144) || !*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    return (*(*this + 176))(this, a2, *(v9 + 152) + 48, *(v11 + 152) + 48, a4);
  }

  return result;
}

uint64_t AUHOAZoomV2::ProcessMultipleBufferLists(AUHOAZoomV2 *this, unsigned int *a2, uint64_t a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (a4 == 1 && a6 == 1)
  {
    return (*(*this + 176))(this, a2, *a5, *a7, a3);
  }

  else
  {
    return 4294956428;
  }
}

uint64_t AUHOAZoomV2::ProcessBufferLists(AUHOAZoomV2 *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  v78 = *MEMORY[0x1E69E9840];
  if (*(this + 872) != 1)
  {
    v15 = this;
    if (*(this + 17) != 1)
    {
      return 4294956429;
    }

    if (a3->mNumberBuffers != a4->mNumberBuffers)
    {
      return 4294956428;
    }

    if (*(this + 84) < a5)
    {
      return 4294956422;
    }

    v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v18)
    {
      if (*(v15 + 132) == ausdk::AUElement::GetParameter(v17, 0))
      {
        v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
        if ((v22 & 1) == 0)
        {
          goto LABEL_77;
        }

        if (*(v15 + 532) == (ausdk::AUElement::GetParameter(v21, 2u) != 0.0))
        {
          v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
          if ((v26 & 1) == 0)
          {
            goto LABEL_77;
          }

          if (ausdk::AUElement::GetParameter(v25, 8u) != *(v15 + 134))
          {
            goto LABEL_33;
          }

          v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
          if ((v28 & 1) == 0)
          {
            goto LABEL_77;
          }

          if (ausdk::AUElement::GetParameter(v27, 9u) != *(v15 + 135))
          {
LABEL_33:
            v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
            if ((v30 & 1) == 0)
            {
              goto LABEL_77;
            }

            *(v15 + 134) = ausdk::AUElement::GetParameter(v29, 8u);
            v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
            if ((v32 & 1) == 0)
            {
              goto LABEL_77;
            }

            *(v15 + 135) = ausdk::AUElement::GetParameter(v31, 9u);
            AUHOAZoomV2::UpdateCrossover(v15);
          }

          v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
          if ((v34 & 1) == 0)
          {
            goto LABEL_77;
          }

          Parameter = ausdk::AUElement::GetParameter(v33, 3u);
          v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
          if (Parameter == 0.0)
          {
            if ((v37 & 1) == 0)
            {
              goto LABEL_77;
            }

            v75 = ausdk::AUElement::GetParameter(v36, 5u);
            v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
            if ((v39 & 1) == 0)
            {
              goto LABEL_77;
            }

            v76 = ausdk::AUElement::GetParameter(v38, 6u);
            v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
            if ((v41 & 1) == 0)
            {
              goto LABEL_77;
            }

            v77 = ausdk::AUElement::GetParameter(v40, 7u);
          }

          else
          {
            if ((v37 & 1) == 0)
            {
              goto LABEL_77;
            }

            v76 = ((107.0 - fmaxf(ausdk::AUElement::GetParameter(v36, 4u), 28.0)) * 0.4) / 107.0;
            v77 = v76;
            v75 = v76;
          }

          if (a4->mNumberBuffers)
          {
            v42 = 0;
            v43 = 16;
            do
            {
              bzero(*(&a4->mNumberBuffers + v43), 4 * a5);
              ++v42;
              mNumberBuffers = a4->mNumberBuffers;
              v43 += 16;
            }

            while (v42 < mNumberBuffers);
          }

          else
          {
            LODWORD(mNumberBuffers) = 0;
          }

          v45 = (*(v15 + 132) + 1) * (*(v15 + 132) + 1);
          v46 = a3->mNumberBuffers;
          if (v45 >= a3->mNumberBuffers)
          {
            v47 = a3->mNumberBuffers;
          }

          else
          {
            v47 = (*(v15 + 132) + 1) * (*(v15 + 132) + 1);
          }

          v68 = (*(v15 + 132) + 1) * (*(v15 + 132) + 1);
          if (v45 >= mNumberBuffers)
          {
            mNumberBuffers = mNumberBuffers;
          }

          else
          {
            mNumberBuffers = v45;
          }

          v69 = v47;
          v70 = mNumberBuffers;
          if (v47)
          {
            v48 = 0;
            p_mData = &a3->mBuffers[0].mData;
            do
            {
              v50 = *p_mData;
              p_mData += 2;
              *(*(v15 + 88) + v48) = v50;
              v48 += 8;
            }

            while (8 * v69 != v48);
          }

          v72 = 0;
          v73 = 0;
          v74 = 0;
          if (*(v15 + 624) & 1) != 0 && v45 <= v46 && (*(v15 + 532))
          {
            Crossover2f::Process(v15 + 552, *(v15 + 88), *(v15 + 94), *(v15 + 106), *(v15 + 100), v45, a5, 1);
            v51 = *(v15 + 100);
            v72 = *(v15 + 94);
            v73 = v51;
            v74 = *(v15 + 106);
            v52 = 3;
          }

          else
          {
            v72 = *(v15 + 88);
            v52 = 1;
          }

          v65 = v52;
          v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
          if (v54)
          {
            v55 = ausdk::AUElement::GetParameter(v53, 1u);
            v56 = 0;
            v66 = v15;
            mBuffers = a4->mBuffers;
            v57 = a5;
            do
            {
              ZoomMixingMatrix::updateZoomMixingMatrix(v15 + 632, *(&v75 + v56), v55);
              if (v70)
              {
                v58 = 0;
                v59 = 0;
                v60 = *(v66 + 84);
                do
                {
                  if (v69)
                  {
                    v61 = 0;
                    v62 = &mBuffers[v59];
                    v63 = v58;
                    do
                    {
                      v64 = *(v60 + 4 * v63);
                      v71 = v64;
                      if (fabsf(v64 + -1.0) <= 0.00000011921)
                      {
                        MEMORY[0x1E12BE5D0](*(*(&v72 + v56) + v61), 1, v62->mData, 1, v62->mData, 1, v57);
                      }

                      else if (fabsf(v64) > 0.00000011921)
                      {
                        MEMORY[0x1E12BE8F0](*(*(&v72 + v56) + v61), 1, &v71, v62->mData, 1, v62->mData, 1, v57);
                      }

                      v61 += 8;
                      ++v63;
                    }

                    while (8 * v69 != v61);
                  }

                  ++v59;
                  v58 += v68;
                }

                while (v59 != v70);
              }

              ++v56;
              v15 = v66;
            }

            while (v56 != v65);
            return 0;
          }
        }

        else
        {
          v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
          if (v24)
          {
            *(v15 + 532) = ausdk::AUElement::GetParameter(v23, 2u) != 0.0;
            AUHOAZoomV2::UpdateZoomMixingMatrixAndBuffers(v15);
          }
        }
      }

      else
      {
        v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v15 + 32, 0);
        if (v20)
        {
          *(v15 + 132) = ausdk::AUElement::GetParameter(v19, 0);
          AUHOAZoomV2::UpdateZoomMixingMatrixAndBuffers(v15);
        }
      }
    }

LABEL_77:
    abort();
  }

  if (a3->mNumberBuffers == a4->mNumberBuffers && a3->mNumberBuffers != 0)
  {
    v9 = 0;
    v10 = 16;
    do
    {
      memcpy(*(&a4->mNumberBuffers + v10), *(&a3->mNumberBuffers + v10), 4 * a5);
      ++v9;
      v11 = a4->mNumberBuffers;
      v12 = a3->mNumberBuffers;
      if (a4->mNumberBuffers >= a3->mNumberBuffers)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      v10 += 16;
    }

    while (v9 < v13);
    if (v12 < v11)
    {
      v14 = 16 * v13 + 16;
      do
      {
        bzero(*(&a4->mNumberBuffers + v14), 4 * a5);
        ++v13;
        v14 += 16;
      }

      while (v13 < a4->mNumberBuffers);
    }
  }

  return 0;
}

void AUHOAZoomV2::UpdateZoomMixingMatrixAndBuffers(AUHOAZoomV2 *this)
{
  v2 = (*(this + 132) + 1) * (*(this + 132) + 1);
  if (*(this + 624) == 1)
  {
    if (*(this + 623) < 0)
    {
      operator delete(*(this + 75));
    }

    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100](this + 72);
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100](this + 71);
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100](this + 70);
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100](this + 69);
    *(this + 624) = 0;
  }

  v3 = *(this + 136);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  Crossover2f::Crossover2f(this + 552, v2, __p, v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 624) = 1;
  AUHOAZoomV2::UpdateCrossover(this);
  if (*(this + 696) == 1)
  {
    applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(this + 79);
    *(this + 696) = 0;
  }

  ZoomMixingMatrix::ZoomMixingMatrix((this + 632), *(this + 132));
}

void sub_1DE004BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUHOAZoomV2::UpdateCrossover(AUHOAZoomV2 *this)
{
  if (*(this + 624) == 1 && *(this + 532) == 1)
  {
    Crossover2f::SetLowCrossover((this + 552), *(this + 134), 2);
    v2 = *(this + 135);

    Crossover2f::SetHighCrossover((this + 552), v2, 2);
  }
}

void matrix2D<float>::resize(void *a1, unsigned int a2, int a3)
{
  std::vector<float>::resize(a1, a3 * a2);
  std::vector<float *>::resize(a1 + 3, a2);
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      *(a1[3] + v7) = *a1 + 4 * v6;
      v7 += 8;
      v6 += a3;
    }

    while (8 * a2 != v7);
  }
}

uint64_t AUHOAZoomV2::SetProperty(AUHOAZoomV2 *this, int a2, int a3, unsigned int a4, _BYTE *a5, int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    result = 4294956445;
    if (a6 == 4)
    {
      if (*a5)
      {
        return 4294956445;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 872) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUHOAZoomV2::GetProperty(AUHOAZoomV2 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 872;
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

uint64_t AUHOAZoomV2::GetPropertyInfo(AUHOAZoomV2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

void AUHOAZoomV2::Initialize(AUHOAZoomV2 *this)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (Element)
  {
    v3 = *(Element + 80);
    *(this + 136) = v3;
    v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v5)
    {
      *(this + 132) = ausdk::AUElement::GetParameter(v4, 0);
      v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v7)
      {
        *(this + 532) = ausdk::AUElement::GetParameter(v6, 2u) != 0.0;
        v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v9)
        {
          *(this + 134) = ausdk::AUElement::GetParameter(v8, 8u);
          v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v11)
          {
            *(this + 135) = ausdk::AUElement::GetParameter(v10, 9u);
            AUHOAZoomV2::UpdateZoomMixingMatrixAndBuffers(this);
          }
        }
      }
    }

    abort();
  }

  ausdk::Throw(0xFFFFD583);
}

void AUHOAZoomV2::~AUHOAZoomV2(AUHOAZoomV2 *this)
{
  AUHOAZoomV2::~AUHOAZoomV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5936320;
  SimpleMeters::~SimpleMeters((this + 824));
  SimpleMeters::~SimpleMeters((this + 776));
  SimpleMeters::~SimpleMeters((this + 728));
  v2 = *(this + 88);
  if (v2)
  {
    *(this + 89) = v2;
    operator delete(v2);
  }

  if (*(this + 696) == 1)
  {
    applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(this + 79);
  }

  if (*(this + 624) == 1)
  {
    if (*(this + 623) < 0)
    {
      operator delete(*(this + 75));
    }

    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100](this + 72);
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100](this + 71);
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100](this + 70);
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100](this + 69);
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t std::optional<Crossover2f>::~optional(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100]((a1 + 24));
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100]((a1 + 16));
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100]((a1 + 8));
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100](a1);
  }

  return a1;
}

os_log_t ___Z12getScottyLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUScotty");
  getScottyLog(void)::gLog = result;
  return result;
}

uint64_t LegacyHRTFSpatializer::processAccumulating(LegacyHRTFSpatializer *this, const float *a2, float *const *a3, unsigned int a4, std::string::pointer *a5, int a6, vDSP_Length a7, float a8, IR::ComplexDataCircBuffer *a9, double a10, __n128 a11)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a4 <= 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v12 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      return 4294956445;
    }

    std::string::basic_string[abi:ne200100]<0>(&v40, "LegacyHRTFSpatializer");
    v13 = std::string::append(&v40, "::", 2uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v41, "processAccumulating", 0x13uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = p_p;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
    _os_log_debug_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%s: ERROR: cannot process with %d output channels", &buf, 0x12u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 4294956445;
    }

    v18 = v40.__r_.__value_.__r.__words[0];
LABEL_44:
    operator delete(v18);
    return 4294956445;
  }

  if (a6 != a4)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v36 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      return 4294956445;
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "LegacyHRTFSpatializer");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v40, &buf, "::");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v41, &v40, "processAccumulating");
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v41;
    }

    else
    {
      v38 = v41.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
    *(__p.__r_.__value_.__r.__words + 4) = v38;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = a4;
    WORD1(__p.__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(__p.__r_.__value_.__r.__words[2]) = a6;
    _os_log_debug_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_DEBUG, "%s: ERROR: cannot process with %d output channels != %d", &__p, 0x18u);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 4294956445;
    }

    v18 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_44;
  }

  if (*(this + 16))
  {
    v24 = *(this + 6);
    if (*(v24 + 82))
    {
      a11.n128_f32[0] = a8;
    }

    else
    {
      a11.n128_f32[0] = 0.0;
    }

    v25 = (*(**(this + 38) + 16))(*(this + 38), a2, a5, a7, 1, *v24, *(v24 + 4), a11);
    v26 = *(this + 6);
    *(this + 146) = *(v26 + 82);
    if (*(this + 24))
    {
      v27 = *(v26 + 4);
      if (*v26 != *(this + 16) || v27 != *(this + 17) || *(this + 17) == 1)
      {
        v28 = SphericalHeadSpatializer::CalculateInterauralTimeDelays(v25, *v26, v27, *(this + 2));
        v30 = v29;
        IR::DelayLine<float>::setDelay(*(this + 39), v28);
        IR::DelayLine<float>::setDelay(*(this + 39) + 328, v30);
        *(this + 8) = **(this + 6);
        *(this + 17) = 0;
      }

      v31 = *(this + 39);
      v32 = -0.00033333;
      if (*(this + 73))
      {
        v32 = 1.0;
      }

      v33 = expf(v32);
      *(v31 + 96) = v33;
      *(v31 + 424) = v33;
      __p.__r_.__value_.__r.__words[0] = *a5;
      IR::DelayLine<float>::process(v31, __p.__r_.__value_.__l.__data_, &__p, a7);
      v34 = *(this + 39);
      __p.__r_.__value_.__r.__words[0] = a5[1];
      IR::DelayLine<float>::process(v34 + 328, __p.__r_.__value_.__l.__data_, &__p, a7);
    }

    MEMORY[0x1E12BE5D0](*a5, 1, *a3, 1, *a3, 1, a7);
    MEMORY[0x1E12BE5D0](a5[1], 1, *(a3 + 1), 1, *(a3 + 1), 1, a7);
    return 0;
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v37 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&v40, "LegacyHRTFSpatializer");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v41, &v40, "::");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v41, "processAccumulating");
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &__p;
      }

      else
      {
        v39 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v39;
      _os_log_debug_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }
    }

    return 4294956429;
  }
}

void sub_1DE00560C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void LegacyHRTFSpatializer::reset(LegacyHRTFSpatializer *this)
{
  *(this + 17) = 1;
  *(this + 146) = *(*(this + 6) + 82);
  v2 = *(this + 38);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v4 = *(this + 39);
  v3 = *(this + 40);
  while (v4 != v3)
  {
    IR::DelayLine<float>::reset(v4);
    v4 += 328;
  }
}

uint64_t LegacyHRTFSpatializer::initialize(LegacyHRTFSpatializer *this, float a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    operator new();
  }

  return 4294900553;
}

void sub_1DE005FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  MemoryStream::~MemoryStream((v16 - 176));
  TFileBSD::~TFileBSD(&a15);
  __cxa_begin_catch(exception_object);
  fwrite("ERROR : opening 3D files...\n", 0x1CuLL, 1uLL, *MEMORY[0x1E69E9848]);
  __cxa_end_catch();
  JUMPOUT(0x1DE005D48);
}

void LegacyHRTFSpatializer::~LegacyHRTFSpatializer(LegacyHRTFSpatializer *this)
{
  *this = &unk_1F5936590;
  v3 = (this + 312);
  std::vector<IR::DelayLine<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 38);
  *(this + 38) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  Spatializer::~Spatializer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5936590;
  v3 = (this + 312);
  std::vector<IR::DelayLine<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 38);
  *(this + 38) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  Spatializer::~Spatializer(this);
}

uint64_t AUMagnitudeDifferenceNoiseSuppressor::ValidFormat(AUMagnitudeDifferenceNoiseSuppressor *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    result = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

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

uint64_t AUMagnitudeDifferenceNoiseSuppressor::SupportedNumChannels(AUMagnitudeDifferenceNoiseSuppressor *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMagnitudeDifferenceNoiseSuppressor::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressor::GetParameterValueStrings(AUMagnitudeDifferenceNoiseSuppressor *this, int a2, int a3, const __CFArray **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 | a2)
  {
    return 4294956417;
  }

  if (!a4)
  {
    return 0;
  }

  v7 = xmmword_1E8671C38;
  v8 = @"TwoMic";
  v6 = CFArrayCreate(0, &v7, 3, 0);
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressor::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressor::GetParameterInfo(AUMagnitudeDifferenceNoiseSuppressor *this, int a2, int a3, AudioUnitParameterInfo *buffer)
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
      v14 = -6.0;
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

uint64_t AUMagnitudeDifferenceNoiseSuppressor::GetParameterList(AUMagnitudeDifferenceNoiseSuppressor *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = xmmword_1DE09E660;
      *(a3 + 1) = xmmword_1DE09DF20;
      *(a3 + 2) = xmmword_1DE09E670;
      *(a3 + 3) = xmmword_1DE09E680;
      a3[16] = 22;
    }

    v4 = 17;
  }

  *a4 = v4;
  return 0;
}

uint64_t AUMagnitudeDifferenceNoiseSuppressor::Render(AUMagnitudeDifferenceNoiseSuppressor *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v19[3] = *MEMORY[0x1E69E9840];
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
    goto LABEL_22;
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
        goto LABEL_22;
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
          goto LABEL_25;
        }

        v16 = *(v15 + 152);
        v17 = ausdk::AUScope::GetElement((this + 80), 0);
        if (v17)
        {
          if (*(v17 + 144))
          {
            v19[0] = *(v17 + 152) + 48;
            v19[1] = v16 + 48;
            v19[2] = v16 + 48;
            if (*(v10 + 144))
            {
              v18[0] = *(v10 + 152) + 48;
              v18[1] = v18[0];
              v18[2] = v18[0];
              return (*(*this + 184))(this, a2, a4, 3, v19, 3, v18);
            }
          }

LABEL_25:
          ausdk::Throw(0xFFFFFFFFLL);
        }

LABEL_22:
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

uint64_t AUMagnitudeDifferenceNoiseSuppressor::ProcessMultipleBufferLists(AUMagnitudeDifferenceNoiseSuppressor *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  result = 4294956419;
  if (a4 >= 3 && a6 >= 3)
  {
    if ((*(*this + 576))(this, a2))
    {
      v11 = a7[2];
      mDataByteSize = v11->mBuffers[0].mDataByteSize;
      if (mDataByteSize >= 4)
      {
        memset_pattern16(v11->mBuffers[0].mData, &unk_1DE095DF0, 4 * ((mDataByteSize >> 2) - 1) + 4);
      }

      if (*(this + 540) != *(this + 541))
      {
        bzero((*a7)->mBuffers[0].mData, (*a7)->mBuffers[0].mDataByteSize);
        return 0;
      }

      mData = (*a5)->mBuffers[0].mData;
      v14 = (*a7)->mBuffers[0].mData;
      v15 = (*a7)->mBuffers[0].mDataByteSize;
    }

    else
    {
      v16 = *(this + 133);
      if (v16 != *(this + 134))
      {
        AUMagnitudeDifferenceNoiseSuppressor::UpdateParameters(this);
        *(this + 134) = v16;
      }

      v17 = (*a5)->mBuffers[0].mData;
      v18 = a5[1]->mBuffers[0].mData;
      v19 = *(this + 68);
      *(v19 + 600) = a5[2]->mBuffers[0].mData;
      if (*(this + 540) == 1)
      {
        v20 = *(this + 84);
        v63[0] = v17;
        v63[1] = &v17[4 * v20];
        v62[0] = v18;
        v62[1] = &v18[4 * v20];
        CNoiseSuppressorV3::speex_preprocess_run_freq(v19, v63, v62);
      }

      else
      {
        CNoiseSuppressorV3::speex_preprocess_run(v19, v17, v18);
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
      if ((v24 & 1) == 0 || (ausdk::AUElement::SetParameter(v23, 2u, v22), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v26 & 1) == 0) || (ausdk::AUElement::SetParameter(v25, 5u, *(*(this + 68) + 484)), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v28 & 1) == 0) || (ausdk::AUElement::SetParameter(v27, 6u, *(*(this + 68) + 480)), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v30 & 1) == 0) || (ausdk::AUElement::SetParameter(v29, 7u, *(*(this + 68) + 432)), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v32 & 1) == 0) || (ausdk::AUElement::SetParameter(v31, 8u, *(*(this + 68) + 436)), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v34 & 1) == 0) || (ausdk::AUElement::SetParameter(v33, 9u, *(*(this + 68) + 336)), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v36 & 1) == 0) || (ausdk::AUElement::SetParameter(v35, 0xAu, *(*(this + 68) + 340)), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v38 & 1) == 0) || (ausdk::AUElement::SetParameter(v37, 0xBu, *(*(this + 68) + 504)), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v40 & 1) == 0) || (ausdk::AUElement::SetParameter(v39, 0xCu, *(*(this + 68) + 508)), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v42 & 1) == 0) || (ausdk::AUElement::SetParameter(v41, 0xDu, *(*(this + 68) + 52)), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v44 & 1) == 0) || (ausdk::AUElement::SetParameter(v43, 0x10u, *(*(this + 68) + 616) - *(*(this + 68) + 612)), v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v46 & 1) == 0) || (ausdk::AUElement::SetParameter(v45, 0x11u, *(*(this + 68) + 524)), v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v48 & 1) == 0) || (ausdk::AUElement::SetParameter(v47, 0x12u, *(*(this + 68) + 612)), v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v50 & 1) == 0) || (ausdk::AUElement::SetParameter(v49, 0x15u, *(*(this + 68) + 512)), v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v52 & 1) == 0))
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
      mData = *(*(this + 68) + 384);
      v15 = 4 * *(this + 84);
      v14 = v54;
    }

    memcpy(v14, mData, v15);
    return 0;
  }

  return result;
}

void AUMagnitudeDifferenceNoiseSuppressor::UpdateParameters(AUMagnitudeDifferenceNoiseSuppressor *this)
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
    *(v5 + 476) = 1;
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

uint64_t AUMagnitudeDifferenceNoiseSuppressor::SetParameter(AUMagnitudeDifferenceNoiseSuppressor *this, unsigned int a2, int a3, unsigned int a4, float a5)
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

uint64_t AUMagnitudeDifferenceNoiseSuppressor::SetProperty(AUMagnitudeDifferenceNoiseSuppressor *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
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

uint64_t AUMagnitudeDifferenceNoiseSuppressor::GetProperty(AUMagnitudeDifferenceNoiseSuppressor *this, int a2, int a3, unsigned int a4, _DWORD *a5)
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

uint64_t AUMagnitudeDifferenceNoiseSuppressor::GetPropertyInfo(AUMagnitudeDifferenceNoiseSuppressor *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

void AUMagnitudeDifferenceNoiseSuppressor::Cleanup(AUMagnitudeDifferenceNoiseSuppressor *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    CNoiseSuppressorV3::speex_preprocess_state_destroy(v2);
    *(this + 68) = 0;
  }
}

void AUMagnitudeDifferenceNoiseSuppressor::Initialize(AUMagnitudeDifferenceNoiseSuppressor *this)
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
        CNoiseSuppressorV3::speex_preprocess_state_init(*(this + 84), *(v5 + 80), 2);
      }
    }
  }

  ausdk::Throw(0xFFFFD583);
}

void AUMagnitudeDifferenceNoiseSuppressor::~AUMagnitudeDifferenceNoiseSuppressor(AUMagnitudeDifferenceNoiseSuppressor *this)
{
  AUMagnitudeDifferenceNoiseSuppressor::~AUMagnitudeDifferenceNoiseSuppressor(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5936700;
  v2 = *(this + 68);
  if (v2)
  {
    CNoiseSuppressorV3::speex_preprocess_state_destroy(v2);
    *(this + 68) = 0;
  }

  ausdk::AUBase::~AUBase(this);
}

const __CFArray *CFHelper::extractVector<float>(std::vector<unsigned int> *a1, CFArrayRef *a2)
{
  a1->__begin_ = 0;
  a1->__end_ = 0;
  a1->__end_cap_.__value_ = 0;
  v17 = 0.0;
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
  }

  else
  {
    Count = 0;
  }

  std::vector<unsigned int>::reserve(a1, Count);
  for (i = 0; ; ++i)
  {
    result = *a2;
    if (*a2)
    {
      result = CFArrayGetCount(result);
    }

    if (i >= result)
    {
      break;
    }

    CACFArray::GetFloat32(a2, i, &v17);
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if (end >= value)
    {
      begin = a1->__begin_;
      v11 = end - a1->__begin_;
      v12 = v11 >> 2;
      v13 = (v11 >> 2) + 1;
      if (v13 >> 62)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v14 = value - begin;
      if (v14 >> 1 > v13)
      {
        v13 = v14 >> 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        std::allocator<float>::allocate_at_least[abi:ne200100](a1, v15);
      }

      *(4 * v12) = v17;
      v9 = 4 * v12 + 4;
      memcpy(0, begin, v11);
      v16 = a1->__begin_;
      a1->__begin_ = 0;
      a1->__end_ = v9;
      a1->__end_cap_.__value_ = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *end = v17;
      v9 = (end + 1);
    }

    a1->__end_ = v9;
  }

  return result;
}

void sub_1DE00759C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const __CFArray *CFHelper::extractVector<double>(const void **a1, CFArrayRef *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v17 = 0.0;
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
  }

  else
  {
    Count = 0;
  }

  std::vector<double>::reserve(a1, Count);
  for (i = 0; ; ++i)
  {
    result = *a2;
    if (*a2)
    {
      result = CFArrayGetCount(result);
    }

    if (i >= result)
    {
      break;
    }

    CACFArray::GetFloat64(a2, i, &v17);
    v8 = a1[1];
    v7 = a1[2];
    if (v8 >= v7)
    {
      v10 = *a1;
      v11 = v8 - *a1;
      v12 = v11 >> 3;
      v13 = (v11 >> 3) + 1;
      if (v13 >> 61)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, v15);
      }

      *(8 * v12) = v17;
      v9 = 8 * v12 + 8;
      memcpy(0, v10, v11);
      v16 = *a1;
      *a1 = 0;
      a1[1] = v9;
      a1[2] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v8 = v17;
      v9 = (v8 + 1);
    }

    a1[1] = v9;
  }

  return result;
}

void sub_1DE007718(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const __CFArray *CFHelper::extractVector<unsigned int>(std::vector<unsigned int> *a1, CFArrayRef *a2)
{
  a1->__begin_ = 0;
  a1->__end_ = 0;
  a1->__end_cap_.__value_ = 0;
  valuePtr = 0;
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
  }

  else
  {
    Count = 0;
  }

  std::vector<unsigned int>::reserve(a1, Count);
  for (i = 0; ; ++i)
  {
    result = *a2;
    if (*a2)
    {
      result = CFArrayGetCount(result);
    }

    if (i >= result)
    {
      break;
    }

    cf = 0;
    CFType = CACFArray::GetCFType(a2, i, &cf);
    v8 = cf;
    if (cf)
    {
      v9 = CFType;
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      v10 = CFGetTypeID(cf);
      if (v10 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
      }
    }

    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if (end >= value)
    {
      begin = a1->__begin_;
      v15 = end - a1->__begin_;
      v16 = v15 >> 2;
      v17 = (v15 >> 2) + 1;
      if (v17 >> 62)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v18 = value - begin;
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
        std::allocator<float>::allocate_at_least[abi:ne200100](a1, v19);
      }

      *(4 * v16) = valuePtr;
      v13 = 4 * v16 + 4;
      memcpy(0, begin, v15);
      v20 = a1->__begin_;
      a1->__begin_ = 0;
      a1->__end_ = v13;
      a1->__end_cap_.__value_ = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *end = valuePtr;
      v13 = (end + 4);
    }

    a1->__end_ = v13;
  }

  return result;
}

void sub_1DE0078D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const __CFArray *CFHelper::extractVectorOfVectors<float>(void *a1, CFArrayRef *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
  }

  else
  {
    Count = 0;
  }

  std::vector<std::vector<float>>::reserve(a1, Count);
  v5 = 0;
  v6 = MEMORY[0x1E695E9C0];
  while (1)
  {
    result = *a2;
    if (*a2)
    {
      result = CFArrayGetCount(result);
    }

    if (v5 >= result)
    {
      break;
    }

    Mutable = CFArrayCreateMutable(0, 0, v6);
    v10 = 257;
    CACFArray::GetCACFArray(a2, v5, &Mutable);
    CFHelper::extractVector<float>(&__p, &Mutable);
    std::vector<std::vector<float>>::push_back[abi:ne200100](a1, &__p);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    CACFArray::~CACFArray(&Mutable);
    ++v5;
  }

  return result;
}

uint64_t EndpointVADDSPChain::Uninitialize(uint64_t this)
{
  if (*this == 1)
  {
    v1 = this;
    this = AudioUnitUninitialize(*(this + 56));
    if (!this)
    {
      AudioUnitUninitialize(*(v1 + 64));
      this = *(v1 + 48);
      if (this)
      {
        this = MEMORY[0x1E12BD160](this, 0x1000C40FF89C88ELL);
      }

      *(v1 + 48) = 0;
      *v1 = 0;
    }
  }

  return this;
}

uint64_t EndpointVADDSPChain::SetParametersForNSV3(AudioUnit *this)
{
  result = AudioUnitSetParameter(this[7], 0, 0, 0, -18.0, 0);
  if (!result)
  {
    result = AudioUnitSetParameter(this[7], 1u, 0, 0, 0.0, 0);
    if (!result)
    {
      result = AudioUnitSetParameter(this[7], 2u, 0, 0, 40.0, 0);
      if (!result)
      {
        result = AudioUnitSetParameter(this[7], 3u, 0, 0, 0.0, 0);
        if (!result)
        {
          result = AudioUnitSetParameter(this[7], 4u, 0, 0, 4.0, 0);
          if (!result)
          {
            result = AudioUnitSetParameter(this[7], 5u, 0, 0, 40.0, 0);
            if (!result)
            {
              result = AudioUnitSetParameter(this[7], 6u, 0, 0, 70.0, 0);
              if (!result)
              {
                v3 = this[7];

                return AudioUnitSetParameter(v3, 7u, 0, 0, 4.0, 0);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t EndpointVADDSPChain::SetParametersForNS_VADMode(AudioUnit *this, const __CFDictionary *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  inData = 1;
  v4 = AudioUnitSetProperty(this[7], 0x11ABu, 0, 0, &inData, 4u);
  if (v4)
  {
    return v4;
  }

  v14 = 0;
  valuePtr = -18.0;
  v12 = 0;
  v13 = 1065353216;
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"NoiseSuppress");
    v6 = CFDictionaryGetValue(a2, @"V1Mode");
    v7 = CFDictionaryGetValue(a2, @"ThresholdMultiplier");
    v8 = CFDictionaryGetValue(a2, @"ThresholdPower");
    if (!CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr) || !CFNumberGetValue(v6, kCFNumberSInt32Type, &v14) || !CFNumberGetValue(v7, kCFNumberFloat32Type, &v13) || !CFNumberGetValue(v8, kCFNumberFloat32Type, &v12))
    {
      return 1;
    }

    v9 = CFDictionaryGetValue(a2, @"ThresholdMultiplierLUT");
    v10 = *CFDataGetBytePtr(v9);
    if (v10)
    {
      std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](bswap32(v10));
    }

    if (EndpointVADLogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVADLogScope(void)::once, &__block_literal_global_25244);
    }

    if (EndpointVADLogScope(void)::scope)
    {
      a2 = *EndpointVADLogScope(void)::scope;
      if (!*EndpointVADLogScope(void)::scope)
      {
        goto LABEL_19;
      }
    }

    else
    {
      a2 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "EndpointVADDSPChain.cpp";
      v19 = 1024;
      v20 = 234;
      _os_log_impl(&dword_1DDB85000, a2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d EndpointVADDSPChain: Incorrect threshold multiplier LUT format in the Plist.", buf, 0x12u);
    }

    a2 = 0;
  }

LABEL_19:
  v4 = AudioUnitSetParameter(this[7], 0, 0, 0, valuePtr, 0);
  if (!v4)
  {
    v4 = AudioUnitSetProperty(this[7], 0x11ACu, 0, 0, &v14, 4u);
    if (!v4)
    {
      v4 = AudioUnitSetProperty(this[7], 0x11ADu, 0, 0, &v13, 4u);
      if (!v4)
      {
        v4 = AudioUnitSetProperty(this[7], 0x11AEu, 0, 0, &v12, 4u);
        if (!v4)
        {
          return AudioUnitSetProperty(this[7], 0x11AFu, 0, 0, a2, -a2 & 0xFFFFFFF8);
        }
      }
    }
  }

  return v4;
}

void sub_1DE007F90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EndpointVADDSPChain::SetParametersForAGC(AudioUnit *this, const __CFDictionary *a2)
{
  result = AudioUnitSetParameter(this[8], 0x20u, 0, 0, 0.0, 0);
  if (!result)
  {
    AudioUnitSetParameter(this[8], 0x1Bu, 0, 0, 4.0, 0);
    valuePtr = -1035993088;
    if (!a2)
    {
      v6 = -48.0;
      return AudioUnitSetParameter(this[8], 0x22u, 0, 0, v6, 0);
    }

    Value = CFDictionaryGetValue(a2, @"AbsoluteSilenceThdDb");
    if (CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr))
    {
      v6 = *&valuePtr;
      return AudioUnitSetParameter(this[8], 0x22u, 0, 0, v6, 0);
    }

    return 1;
  }

  return result;
}

os_log_t ___Z27getParametricProcessorV2Logv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "ParametricProcessorV2");
  getParametricProcessorV2Log(void)::gLog = result;
  return result;
}

uint64_t AUVolumeTaper::GetParameterValueStrings(AUVolumeTaper *this, unsigned int a2, int a3, const __CFArray **a4)
{
  if (!a4)
  {
    return 4294956418;
  }

  v7 = (*(*this + 640))(this);
  v8 = (**v7)(v7, 0, 7);
  v9 = *(*(*this + 640))(this);
  v10 = (*v9)();
  if (v8 == a3)
  {
    v11 = _ZGRN6DspLib11VolumeTaperL20kSlewRateUnitOptionsE_;
    v12 = 2;
LABEL_7:
    v14 = AUDspLib::CFArrayOfStringsCreateWithCArrayOfStrings(v11, v12);
    result = 0;
    *a4 = v14;
    return result;
  }

  if (v10 == a3)
  {
    v11 = _ZGRN6DspLib11VolumeTaper10ParametersL19kCustomCurveOptionsE_;
    v12 = 3;
    goto LABEL_7;
  }

  return 0;
}

uint64_t AUVolumeTaper::GetParameterInfo(AUVolumeTaper *this, unsigned int a2, uint64_t a3, AudioUnitParameterInfo *buffer)
{
  switch(a3)
  {
    case 'f':
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      *&buffer->defaultValue = 0x4980800000000000;
      v4 = @"Is Ramping";
      goto LABEL_7;
    case 'e':
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      *&buffer->defaultValue = 0x4980800000000000;
      v4 = @"Current Slider Position";
      goto LABEL_7;
    case 'd':
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x41200000C3700000;
      *&buffer->defaultValue = 0x49808000C3700000;
      v4 = @"Gain";
LABEL_7:
      buffer->cfNameString = v4;
      CFStringGetCString(v4, buffer->name, 52, 0x8000100u);
      return 0;
  }

  return AUDspLibWithNewParameters::GetParameterInfo(this, a2, a3, buffer);
}

DspLib *AUVolumeTaper::ProcessBufferLists(AUVolumeTaper *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  v12 = a4;
  v13 = a3;
  v6 = (*(*this + 184))(this, a2, a5, 1, &v13, 1, &v12);
  v7 = v6;
  v8 = *(this + 66);
  if (v8)
  {
    v9 = DspLib::amp2dBSafe(v6, *(v8 + 556), 1.0e-20);
    ausdk::AUBase::SetParameter(this, 0x64u, 0, 0, v9);
    ausdk::AUBase::SetParameter(this, 0x65u, 0, 0, *(v8 + 540));
    LOBYTE(v10) = *(v8 + 552);
    ausdk::AUBase::SetParameter(this, 0x66u, 0, 0, v10);
  }

  return v7;
}

uint64_t AUVolumeTaper::SetParameter(AUVolumeTaper *this, uint64_t a2, unsigned int a3, unsigned int a4, float a5)
{
  v9 = this;
  v27 = *MEMORY[0x1E69E9840];
  {
    if (this)
    {
      v19 = (*(*v9 + 640))(v9);
      AUVolumeTaper::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::kAUParameterVolumeSlider = (**v19)(v19, 0, 4);
    }
  }

  if (AUVolumeTaper::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::kAUParameterVolumeSlider == a2)
  {
    v10 = *(v9 + 66);
    if (v10)
    {
      v11 = DspLib::VolumeTaper::getAUVolumeTaperLog(this);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = DspLib::VolumeTaper::Curve::gain_dB((v10 + 80), a5);
        v14 = DspLib::amp2dBSafe(v13, v10[139], 1.0e-20);
        v15 = v10[135];
        *v20 = 134218752;
        *&v20[4] = a5;
        v21 = 2048;
        v22 = v12;
        v23 = 2048;
        v24 = v14;
        v25 = 2048;
        v26 = v15;
        _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "<Updated Dezipper> Setting volume slider to: %.2f (%.2fdB). Current gain: %.2fdB - slider position: %.2f", v20, 0x2Au);
      }
    }
  }

  if (!(*(*v9 + 632))(v9, 0))
  {
    return AUDspLibWithNewParameters::SetParameter(v9, a2, a3, a4, a5);
  }

  v16 = (*(*v9 + 640))(v9);
  *v20 = (*(*v16 + 8))(v16, a2);
  *&v20[8] = v17;
  (*(**(v9 + 66) + 136))(*(v9 + 66), *&v20[4], 0, a5);
  return ausdk::AUBase::SetParameter(v9, a2, a3, a4, a5);
}

id DspLib::VolumeTaper::getAUVolumeTaperLog(DspLib::VolumeTaper *this)
{
  if (DspLib::VolumeTaper::getAUVolumeTaperLog(void)::onceToken != -1)
  {
    dispatch_once(&DspLib::VolumeTaper::getAUVolumeTaperLog(void)::onceToken, &__block_literal_global_31157);
  }

  v2 = DspLib::VolumeTaper::getAUVolumeTaperLog(void)::gLog;

  return v2;
}

uint64_t ___ZN6DspLib11VolumeTaper19getAUVolumeTaperLogEv_block_invoke()
{
  DspLib::VolumeTaper::getAUVolumeTaperLog(void)::gLog = os_log_create("com.apple.coreaudio", "AUVolumeTaper");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AUVolumeTaper::SetProperty(AUVolumeTaper *this, int a2, int a3, unsigned int a4, id *a5, void *a6, int *a7)
{
  if (a2 == 1987342435)
  {
    if (a6 == 8)
    {
      v13 = *a5;
      *(this + 272) = *a5;
      if (HIDWORD(v13) != 1)
      {
        if (!HIDWORD(v13))
        {
          v14 = *(this + 66);
          if (!v14)
          {
            return 4294956429;
          }

          if ((DspLib::VolumeTaper::Curve::sliderPositionForGain((v14 + 320), *&v13) & 0x100000000) != 0)
          {
            return 0;
          }

          return 4294956445;
        }

        return 0;
      }

      if (*&v13 >= 0.0 && *&v13 <= 1.0)
      {
        return 0;
      }
    }

    return 4294956445;
  }

  if (a2 == 6620)
  {
    if (a6 == 8)
    {
      if (a5)
      {
        v8 = *a5;
        applesauce::CF::StringRef::get_ns(*a5);
        objc_claimAutoreleasedReturnValue();
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v10 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v8];
          v11 = *(this + 273);
          *(this + 273) = v10;

          v12 = AUVolumeTaper::parseDictionary(this, *(this + 273));
        }

        else
        {
          v18 = DspLib::VolumeTaper::getAUVolumeTaperLog(isKindOfClass);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *v19 = 0;
            _os_log_error_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, "SetProperty(kAudioUnitProperty_DspLibDictionary) Error: unknown plist format\n", v19, 2u);
          }

          v12 = 4294956417;
        }
      }

      else
      {
        v16 = DspLib::VolumeTaper::getAUVolumeTaperLog(this);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "SetProperty(kAudioUnitProperty_DspLibDictionary) Error : data\n", buf, 2u);
        }

        return 4294956417;
      }

      return v12;
    }

    return 4294956445;
  }

  return AUDspLib::SetProperty(this, a2, a3, a4, a5, a6, a7);
}

uint64_t AUVolumeTaper::parseDictionary(AUVolumeTaper *this, NSDictionary *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [(NSDictionary *)v4 objectForKeyedSubscript:@"mainCurve"];
  if (!v5)
  {
    v5 = [(NSDictionary *)v4 objectForKeyedSubscript:@"OutputMap"];
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v16 = DspLib::VolumeTaper::getAUVolumeTaperLog(isKindOfClass);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_16:

LABEL_17:
      v15 = 4294956445;
      goto LABEL_18;
    }

    *buf = 0;
    v17 = "parseDictionary() Error: array expected";
    v18 = v16;
    v19 = 2;
LABEL_20:
    _os_log_error_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    goto LABEL_16;
  }

  v7 = [v5 count];
  if (v7 != 17)
  {
    v16 = DspLib::VolumeTaper::getAUVolumeTaperLog(v7);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 134218240;
    v27 = [v5 count];
    v28 = 1024;
    v29 = 17;
    v17 = "parseDictionary() Error: length is %lu, but should be %d";
    v18 = v16;
    v19 = 18;
    goto LABEL_20;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v5;
  v8 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = (*(*this + 640))(this);
        v2 = v2 & 0xFFFFFFFF00000000 | v9;
        v14 = (**v13)(v13, 0x100000000, v2);
        [v12 floatValue];
        (*(*this + 152))(this, v14, 0, 0, 0);
        ++v9;
      }

      v8 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = 0;
  (*(*this + 432))(this, 36, 0, 0);
LABEL_18:

  return v15;
}

uint64_t AUVolumeTaper::GetProperty(AUVolumeTaper *this, int a2, int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956430;
  }

  if (a2 == 1987342435)
  {
    v9 = *(this + 66);
    if (v9)
    {
      v10 = *(this + 545);
      if (v10 == 1)
      {
        v18 = *(this + 544);
        v19 = 1.0;
        if (v18 <= 1.0)
        {
          v19 = *(this + 544);
        }

        if (v18 >= 0.0)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0.0;
        }

        v21 = DspLib::VolumeTaper::Curve::gain_dB((v9 + 80), v20);
        result = 0;
        *a5 = v21;
        *(a5 + 1) = 0;
      }

      else if (v10)
      {
        return 0;
      }

      else
      {
        v11 = DspLib::VolumeTaper::Curve::sliderPositionForGain((v9 + 80), *(this + 544));
        if ((v11 & 0x100000000) != 0)
        {
          v22 = v11;
          result = 0;
          *a5 = v22;
          *(a5 + 1) = 1;
        }

        else
        {
          v12 = v9[114];
          v13 = v9[130];
          v14 = 1.0;
          if (vabds_f32(*(this + 544), v12) < vabds_f32(*(this + 544), v13))
          {
            v14 = 0.0;
          }

          *a5 = v14;
          *(a5 + 1) = 1;
          v15 = DspLib::VolumeTaper::getAUVolumeTaperLog(v11);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(this + 544);
            v17 = *a5;
            v23 = 134218752;
            v24 = v16;
            v25 = 2048;
            v26 = v12;
            v27 = 2048;
            v28 = v13;
            v29 = 2048;
            v30 = v17;
            _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEFAULT, "GetProperty(UnitConverter): requested value (%.2fdB) is out of range [%.2f, %.2f]dB. Returning %.2f", &v23, 0x2Au);
          }

          return 4294956445;
        }
      }
    }

    else
    {
      return 4294956429;
    }
  }

  else
  {

    return AUDspLib::GetProperty(this, a2, 0, a4, a5, a6);
  }

  return result;
}

uint64_t AUVolumeTaper::GetPropertyInfo(AUVolumeTaper *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 != 1987342435 && a2 != 6620)
  {
    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  *a5 = 8;
  *a6 = 1;
  return 0;
}

uint64_t AUVolumeTaper::Initialize(NSDictionary **this)
{
  result = AUDspLib::Initialize(this);
  v3 = this[273];
  if (v3)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    return AUVolumeTaper::parseDictionary(this, v3);
  }

  return result;
}

void AUVolumeTaper::~AUVolumeTaper(id *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

{

  AUDspLib::~AUDspLib(this);
}

void AUVolumeTaper::AUVolumeTaper(AUVolumeTaper *this, OpaqueAudioComponentInstance *a2)
{
  v3 = AUDspLibWithNewParameters::AUDspLibWithNewParameters(this, a2, &DspLib::kBubbleParameterConverters, &DspLib::VolumeTaper::Parameters::kSystemDefinition, @"AUVolumeTaper_ViewFactory");
  *v3 = &unk_1F59369A0;
  *(v3 + 273) = 0;
  ausdk::AUBase::SetParameter(v3, 0x64u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(this, 0x65u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(this, 0x66u, 0, 0, 0.0);
}

uint64_t std::__function::__value_func<void ()(OverlapperAudioBuffer<DSPComplex> const&,OverlapperAudioBuffer<DSPComplex>&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t STFT<float>::~STFT(uint64_t a1)
{
  *a1 = &unk_1F5936C40;
  v2 = *(a1 + 8456);
  if (v2)
  {
    vDSP_DFT_DestroySetup(v2);
  }

  v3 = *(a1 + 8464);
  if (v3)
  {
    vDSP_DFT_DestroySetup(v3);
  }

  std::__function::__value_func<void ()(OverlapperAudioBuffer<DSPComplex> const&,OverlapperAudioBuffer<DSPComplex>&)>::~__value_func[abi:ne200100](a1 + 8424);
  free(*(a1 + 7392));
  free(*(a1 + 6352));
  free(*(a1 + 5312));
  free(*(a1 + 4272));
  free(*(a1 + 4248));
  free(*(a1 + 4232));

  return Overlapper<float>::~Overlapper(a1);
}

uint64_t Overlapper<float>::~Overlapper(uint64_t a1)
{
  *a1 = &unk_1F5936C78;
  free(*(a1 + 3192));
  free(*(a1 + 2152));
  free(*(a1 + 1112));
  free(*(a1 + 72));
  std::__function::__value_func<void ()(OverlapperAudioBuffer<float> const&,OverlapperAudioBuffer<float>&)>::~__value_func[abi:ne200100](a1 + 24);
  return a1;
}

uint64_t std::__function::__value_func<void ()(OverlapperAudioBuffer<float> const&,OverlapperAudioBuffer<float>&)>::~__value_func[abi:ne200100](uint64_t a1)
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

int *Overlapper<float>::processBlock(uint64_t a1, int *a2, int *a3)
{
  if (*a2 != *(a1 + 8))
  {
    __assert_rtn("processBlock", "Overlapper.hpp", 315, "pIn.getNumChannels() == mNumChIn");
  }

  if (*a3 != *(a1 + 12))
  {
    __assert_rtn("processBlock", "Overlapper.hpp", 316, "pOut.getNumChannels() == mNumChOut");
  }

  v5 = a2[1];
  if (v5 != a3[1])
  {
    __assert_rtn("processBlock", "Overlapper.hpp", 317, "pIn.getNumSamples() == pOut.getNumSamples()");
  }

  if (v5)
  {
    v6 = 0;
    v7 = *(a1 + 56);
    v37 = a1 + 80;
    v35 = a2[1];
    do
    {
      v8 = *(a1 + 68) - v7;
      if (v8 >= v5 - v6)
      {
        v8 = v5 - v6;
      }

      LODWORD(v9) = *a2;
      if (*a2 != *(a1 + 64))
      {
        __assert_rtn("mcCopyFrom", "Overlapper.hpp", 190, "pSrc.getNumChannels() == mNumChannels");
      }

      if (v9 <= 0)
      {
        v6 += v8;
      }

      else
      {
        v10 = 0;
        v11 = v6;
        v12 = v8 + v7;
        v13 = v8 + v6;
        v14 = v7;
        v36 = v8;
        v15 = 4 * v8;
        do
        {
          if (v12 > *(a1 + 68))
          {
            __assert_rtn("copyFrom", "Overlapper.hpp", 167, "pDstSample + pNumSamples <= mNumSamples");
          }

          if (v13 > a2[1])
          {
            __assert_rtn("copyFrom", "Overlapper.hpp", 168, "pSrcSample + pNumSamples <= pSrc.getNumSamples()");
          }

          if (v10 >= v9)
          {
            __assert_rtn("copyFrom", "Overlapper.hpp", 169, "pDstCh < mNumChannels");
          }

          if (v10 >= *a2)
          {
            __assert_rtn("copyFrom", "Overlapper.hpp", 170, "pSrcCh < pSrc.getNumChannels()");
          }

          if (v10 == 128)
          {
            goto LABEL_39;
          }

          memmove((*(v37 + 8 * v10) + 4 * v14), (*&a2[2 * v10 + 4] + 4 * v11), v15);
          ++v10;
          v9 = *(a1 + 64);
        }

        while (v10 < v9);
        v7 = *(a1 + 56);
        v6 = v13;
        v5 = v35;
        v8 = v36;
      }

      v7 += v8;
      *(a1 + 56) = v7;
      v16 = *(a1 + 16);
      if (v7 >= 2 * v16)
      {
        v17 = 2 * v16;
        while (1)
        {
          OverlapperAudioBuffer<float>::mcCopyFrom<float>((a1 + 1104), 0, (a1 + 64), 0, v17);
          v18 = *(a1 + 48);
          if (!v18)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v18 + 48))(v18, a1 + 1104, a1 + 2144);
          OverlapperAudioBuffer<float>::mcCopyFrom<float>((a1 + 64), 0, (a1 + 64), *(a1 + 16), *(a1 + 68) - *(a1 + 16));
          v19 = *(a1 + 16);
          *(a1 + 56) -= v19;
          v20 = *(a1 + 2144);
          if (v20 != *(a1 + 3184))
          {
            __assert_rtn("mcAccumulateFrom", "Overlapper.hpp", 217, "pSrc.getNumChannels() == mNumChannels");
          }

          v21 = *(a1 + 60);
          if (v20 > 0)
          {
            break;
          }

          v23 = v21 + v19;
LABEL_34:
          *(a1 + 60) = v23;
          OverlapperAudioBuffer<float>::mcCopyFrom<float>((a1 + 3184), v23, (a1 + 2144), v19, v19);
          v7 = *(a1 + 56);
          v17 = 2 * *(a1 + 16);
          if (v7 < v17)
          {
            goto LABEL_35;
          }
        }

        v22 = 0;
        v23 = v19 + v21;
        v24 = *(a1 + 3188);
        while (1)
        {
          if (v23 > v24)
          {
            __assert_rtn("accumulateFrom", "Overlapper.hpp", 199, "pDstSample + pNumSamples <= mNumSamples");
          }

          if (*(a1 + 2148) < v19)
          {
            __assert_rtn("accumulateFrom", "Overlapper.hpp", 200, "pSrcSample + pNumSamples <= pSrc.getNumSamples()");
          }

          if (v22 == 128)
          {
            break;
          }

          if (v19 >= 1)
          {
            v25 = (*(a1 + 3200 + 8 * v22) + 4 * v21);
            v26 = *(a1 + 2160 + 8 * v22);
            v27 = v19;
            do
            {
              v28 = *v26++;
              *v25 = v28 + *v25;
              ++v25;
              --v27;
            }

            while (v27);
          }

          if (++v22 == v20)
          {
            goto LABEL_34;
          }
        }

LABEL_39:
        __assert_rtn("getChannel", "Overlapper.hpp", 103, "pCh < kMaxNumChannels");
      }

LABEL_35:
      ;
    }

    while (v6 != v5);
    OverlapperAudioBuffer<float>::mcCopyFrom<float>(a3, 0, (a1 + 3184), 0, v5);
    v29 = *(a1 + 20);
    v30 = (a1 + 3184);
    v31 = (a1 + 3184);
    v32 = v5;
  }

  else
  {
    OverlapperAudioBuffer<float>::mcCopyFrom<float>(a3, 0, (a1 + 3184), 0, 0);
    v29 = *(a1 + 20);
    v30 = (a1 + 3184);
    v31 = (a1 + 3184);
    v32 = 0;
  }

  result = OverlapperAudioBuffer<float>::mcCopyFrom<float>(v30, 0, v31, v32, v29);
  *(a1 + 60) -= v5;
  return result;
}

int *OverlapperAudioBuffer<float>::mcCopyFrom<float>(int *result, int a2, int *a3, int a4, int a5)
{
  LODWORD(v5) = *a3;
  if (*a3 != *result)
  {
    __assert_rtn("mcCopyFrom", "Overlapper.hpp", 190, "pSrc.getNumChannels() == mNumChannels");
  }

  if (v5 >= 1)
  {
    v7 = result;
    v8 = a4;
    v9 = a5 + a2;
    v10 = a5 + a4;
    v11 = a2;
    v12 = 4 * a5;
    v13 = 2;
    do
    {
      if (v9 > v7[1])
      {
        __assert_rtn("copyFrom", "Overlapper.hpp", 167, "pDstSample + pNumSamples <= mNumSamples");
      }

      if (v10 > a3[1])
      {
        __assert_rtn("copyFrom", "Overlapper.hpp", 168, "pSrcSample + pNumSamples <= pSrc.getNumSamples()");
      }

      if (v13 - 2 >= v5)
      {
        __assert_rtn("copyFrom", "Overlapper.hpp", 169, "pDstCh < mNumChannels");
      }

      if (v13 - 2 >= *a3)
      {
        __assert_rtn("copyFrom", "Overlapper.hpp", 170, "pSrcCh < pSrc.getNumChannels()");
      }

      if (v13 == 130)
      {
        __assert_rtn("getChannel", "Overlapper.hpp", 103, "pCh < kMaxNumChannels");
      }

      result = memmove((*&v7[2 * v13] + 4 * v11), (*&a3[2 * v13] + 4 * v8), v12);
      v5 = *v7;
      v14 = v13++ - 1;
    }

    while (v14 < v5);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(OverlapperAudioBuffer<float> const&,OverlapperAudioBuffer<float>&)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void Overlapper<float>::clear(uint64_t a1)
{
  v2 = (a1 + 64);
  if (*(a1 + 64) >= 1)
  {
    v3 = 0;
    do
    {
      OverlapperAudioBuffer<float>::clearChannel(v2, v3++);
    }

    while (v3 < *v2);
  }

  if (*(a1 + 3184) >= 1)
  {
    v4 = 0;
    v5 = (a1 + 3184);
    do
    {
      OverlapperAudioBuffer<float>::clearChannel(v5, v4++);
    }

    while (v4 < *v5);
  }
}

void OverlapperAudioBuffer<float>::clearChannel(signed int *a1, signed int a2)
{
  if (a2 >= 0x80)
  {
    __assert_rtn("getChannel", "Overlapper.hpp", 103, "pCh < kMaxNumChannels");
  }

  if (*a1 <= a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *&a1[2 * a2 + 4];
  }

  v4 = 4 * a1[1];

  bzero(v3, v4);
}

void Overlapper<float>::~Overlapper(uint64_t a1)
{
  Overlapper<float>::~Overlapper(a1);

  JUMPOUT(0x1E12BD160);
}

void STFT<float>::~STFT(uint64_t a1)
{
  STFT<float>::~STFT(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t std::__function::__func<std::__bind<void (TorqueEngine::*)(OverlapperAudioBuffer<DSPComplex> const&,OverlapperAudioBuffer<DSPComplex>&),TorqueEngine*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (TorqueEngine::*)(OverlapperAudioBuffer<DSPComplex> const&,OverlapperAudioBuffer<DSPComplex>&),TorqueEngine*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(OverlapperAudioBuffer<DSPComplex> const&,OverlapperAudioBuffer<DSPComplex>&)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 std::__function::__func<std::__bind<void (TorqueEngine::*)(OverlapperAudioBuffer<DSPComplex> const&,OverlapperAudioBuffer<DSPComplex>&),TorqueEngine*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (TorqueEngine::*)(OverlapperAudioBuffer<DSPComplex> const&,OverlapperAudioBuffer<DSPComplex>&),TorqueEngine*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(OverlapperAudioBuffer<DSPComplex> const&,OverlapperAudioBuffer<DSPComplex>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5936D40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

TorqueEngine *TorqueEngine::processBlock(TorqueEngine *result, uint64_t a2, _DWORD *a3)
{
  v5 = *(a2 + 4);
  if (*(result + 4) != 1)
  {
    v12 = result;
    TorqueEngine::updateCrossoverResponse(result);
    v13 = *(v12 + 3948);
    v225 = v12;
    if (v13 <= 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v12 + 1977);
      if (v13 != 2)
      {
        v15 = *(v12 + 1978);
        goto LABEL_21;
      }
    }

    v15 = 0;
LABEL_21:
    if (*a2 < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(a2 + 16);
      if (*a2 != 1)
      {
        v17 = *(a2 + 24);
        goto LABEL_26;
      }
    }

    v17 = 0;
LABEL_26:
    v18 = *(v12 + 2128);
    if (v18 < 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v12 + 1066);
      if (v18 != 1)
      {
        v20 = *(v12 + 1067);
        goto LABEL_31;
      }
    }

    v20 = 0;
LABEL_31:
    v21 = *(v12 + 2388);
    if (v21 < 1)
    {
      v23 = 0;
      v22 = 0;
    }

    else
    {
      v22 = *(v12 + 1196);
      if (v21 != 1)
      {
        v24 = *(v12 + 1197);
        v23 = 1;
        if (!v5)
        {
          goto LABEL_40;
        }

LABEL_38:
        v25 = v5;
        do
        {
          *v19++ = vmul_n_f32(*v16, *v14);
          v26 = *v14++;
          *v20++ = vmul_n_f32(*v17, v26);
          v27 = *v16++;
          *v22++ = vmul_n_f32(v27, *v15);
          v27.f32[0] = *v15++;
          v28 = v27.f32[0];
          v29 = *v17++;
          *v24++ = vmul_n_f32(v29, v28);
          --v25;
        }

        while (v25);
LABEL_40:
        if (v21 < 1)
        {
          v30 = 0;
          if (v23)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v30 = *(v12 + 1196);
          if (v23)
          {
LABEL_42:
            v31 = v12;
            v32 = *(v12 + 1197);
            goto LABEL_45;
          }
        }

        v32 = 0;
        v31 = v12;
LABEL_45:
        v33 = *(v31 + 2908);
        if (v33 < 1)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(v31 + 1456);
          if (v33 != 1)
          {
            v35 = *(v31 + 1457);
            goto LABEL_50;
          }
        }

        v35 = 0;
LABEL_50:
        v36 = *(v12 + 2648);
        if (v36 < 1)
        {
          v37 = 0;
        }

        else
        {
          v37 = *(v12 + 1326);
          if (v36 != 1)
          {
            v38 = *(v12 + 1327);
            goto LABEL_55;
          }
        }

        v38 = 0;
LABEL_55:
        v221 = a3;
        if (*(v12 + 16))
        {
          if (*(v12 + 3168) < 1)
          {
            v39 = 0;
          }

          else
          {
            v39 = *(v12 + 1586);
          }

          v40 = v12;
          if (v5)
          {
            for (i = v5; i; --i)
            {
              v226 = *v30;
              v45 = v32->f32[0];
              v46 = v32->f32[1];
              LODWORD(v47) = HIDWORD(*v30);
              v48 = vmuls_lane_f32(v226.f32[1], v226, 1) + (v226.f32[0] * v226.f32[0]);
              v49 = (v46 * v46) + (v45 * v45);
              v50 = (atan2f(sqrtf(v48), sqrtf(v49)) * 1.2732) + -1.0;
              v51 = atan2f(v46, v45);
              v52 = v51 - atan2f(v47, v226.f32[0]);
              v53 = __sincosf_stret((v50 * 3.1416) * 0.5);
              v54 = __sincosf_stret(v52);
              v55 = *v39;
              v56 = v39[1];
              v57 = v39[2];
              v58 = fmaxf(fabsf(*v39), fmaxf(fabsf(v56), fabsf(v57)));
              if (v58 <= 1.8447e19)
              {
                v60 = 1.0;
                if (v58 >= 5.421e-20)
                {
                  goto LABEL_70;
                }

                *&v59 = 1.9343e25;
              }

              else
              {
                *&v59 = 5.1699e-26;
              }

              v60 = *&v59;
LABEL_70:
              v61 = sqrtf(v48 + v49);
              v62 = v61 * (v53.__cosval * v54.__cosval);
              v63 = v61 * v53.__sinval;
              v64 = v61 * (v53.__cosval * v54.__sinval);
              v65 = fmaxf(fabsf(v62), fmaxf(fabsf(v61 * v53.__sinval), fabsf(v64)));
              if (v65 > 1.8447e19)
              {
                *&v66 = 5.1699e-26;
LABEL_74:
                v67 = *&v66;
                goto LABEL_75;
              }

              v67 = 1.0;
              if (v65 < 5.421e-20)
              {
                *&v66 = 1.9343e25;
                goto LABEL_74;
              }

LABEL_75:
              v68 = sqrtf((((v56 * v60) * (v56 * v60)) + ((v55 * v60) * (v55 * v60))) + ((v57 * v60) * (v57 * v60))) / v60;
              v69 = sqrtf((((v63 * v67) * (v63 * v67)) + ((v62 * v67) * (v62 * v67))) + ((v64 * v67) * (v64 * v67))) / v67;
              if (v69 >= v68)
              {
                v70 = v68;
              }

              else
              {
                v70 = v69;
              }

              v71 = 0.0;
              if (v70 > 0.000001)
              {
                v72 = v68 / v69;
                if (v68 >= v69)
                {
                  v72 = v69 / v68;
                }

                if (v69 == 0.0)
                {
                  v72 = 0.0;
                }

                if (v68 == 0.0)
                {
                  v73 = 0.0;
                }

                else
                {
                  v73 = v72;
                }

                v74 = (((v56 * (1.0 / v68)) * (v63 * (1.0 / v69))) + ((v55 * (1.0 / v68)) * (v62 * (1.0 / v69)))) + ((v57 * (1.0 / v68)) * (v64 * (1.0 / v69)));
                if (v74 <= 1.0)
                {
                  v75 = (((v56 * (1.0 / v68)) * (v63 * (1.0 / v69))) + ((v55 * (1.0 / v68)) * (v62 * (1.0 / v69)))) + ((v57 * (1.0 / v68)) * (v64 * (1.0 / v69)));
                }

                else
                {
                  v75 = 1.0;
                }

                if (v74 >= 0.0)
                {
                  v76 = v75;
                }

                else
                {
                  v76 = 0.0;
                }

                v71 = (1.0 - powf(v76, 3.0)) * v73;
              }

              if (*(v225 + 17))
              {
                v77 = 0;
                *v34 = 0;
              }

              else
              {
                *v34 = vmul_n_f32(v226, 1.0 - v71);
                v77 = vmul_n_f32(*v32, 1.0 - v71);
              }

              *v35 = v77;
              if (*(v225 + 18))
              {
                v78 = 0;
                *v37 = 0;
              }

              else
              {
                *v37 = vmul_n_f32(*v30, v71);
                v78 = vmul_n_f32(*v32, v71);
              }

              *v38++ = v78;
              ++v30;
              ++v32;
              ++v34;
              ++v35;
              *v39 = v62;
              v39[1] = v63;
              ++v37;
              v39[2] = v64;
              v39 += 3;
            }
          }
        }

        else
        {
          v40 = v12;
          if (v5)
          {
            v41 = v5;
            do
            {
              v42 = *v30++;
              *v34++ = v42;
              v43 = *v32++;
              *v35++ = v43;
              *v37++ = 0;
              *v38++ = 0;
              --v41;
            }

            while (v41);
          }
        }

        v79 = *(v40 + 2);
        if (v79 == 0.0)
        {
LABEL_155:
          v146 = *(v225 + 2908);
          if (v146 < 1)
          {
            v147 = 0;
          }

          else
          {
            v147 = *(v225 + 1456);
            if (v146 != 1)
            {
              v148 = *(v225 + 1457);
              goto LABEL_160;
            }
          }

          v148 = 0;
LABEL_160:
          v149 = *(v225 + 3428);
          if (v149 < 1)
          {
            v151 = 0;
            v150 = 0;
          }

          else
          {
            v150 = *(v225 + 1716);
            if (v149 == 1)
            {
              v151 = 0;
            }

            else
            {
              v151 = *(v225 + 1717);
              if (v149 >= 3)
              {
                v152 = *(v225 + 1718);
                if (v5)
                {
                  goto LABEL_168;
                }

                goto LABEL_166;
              }
            }
          }

          v152 = 0;
          if (v5)
          {
LABEL_168:
            v154 = v5;
            do
            {
              v155 = *v147;
              v156 = v147[1];
              v157 = *v148;
              v158 = v148[1];
              v159 = *v148 == *v147 && v158 == v156;
              v160 = *v147;
              v161 = v147[1];
              if (!v159)
              {
                v162 = v157 - v155;
                v163 = v158 - v156;
                v164 = hypotf(v157 - v155, v158 - v156);
                v160 = v155;
                v161 = v156;
                if (v164 != 0.0)
                {
                  v165 = v162 / v164;
                  v166 = v156 * (v163 / v164);
                  v160 = v155;
                  v161 = v156;
                  if ((v166 + (v155 * (v162 / v164))) < 0.0)
                  {
                    v167 = -(v166 + (v155 * v165));
                    v160 = v157;
                    v161 = v158;
                    if (v164 > v167)
                    {
                      v160 = v155 + (v165 * v167);
                      v161 = v156 + ((v163 / v164) * v167);
                    }
                  }
                }
              }

              *v150 = v155 - v160;
              v150[1] = v156 - v161;
              v150 += 2;
              *v151 = v160 * 1.4142;
              v151[1] = v161 * 1.4142;
              v151 += 2;
              v147 += 2;
              v148 += 2;
              *v152 = v157 - v160;
              v152[1] = v158 - v161;
              v152 += 2;
              --v154;
            }

            while (v154);
            v153 = v225;
            v149 = *(v225 + 3428);
LABEL_179:
            if (v149 < 1)
            {
              v169 = 0;
              v168 = 0;
            }

            else
            {
              v168 = *(v153 + 1716);
              if (v149 == 1)
              {
                v169 = 0;
              }

              else
              {
                v169 = *(v153 + 1717);
                if (v149 >= 3)
                {
                  v170 = *(v153 + 1718);
                  goto LABEL_186;
                }
              }
            }

            v170 = 0;
LABEL_186:
            v171 = *(v153 + 3688);
            if (v171 < 1)
            {
              v173 = 0;
              v174 = 0;
              v172 = 0;
            }

            else
            {
              v172 = *(v153 + 1846);
              if (v171 != 1)
              {
                v175 = *(v153 + 1847);
                if (v171 < 3)
                {
                  v173 = 0;
                  v174 = 0;
                }

                else
                {
                  v174 = *(v153 + 1848);
                  if (v171 != 3)
                  {
                    v176 = *(v153 + 1849);
                    if (v171 < 5)
                    {
                      v173 = 0;
                    }

                    else
                    {
                      v173 = *(v153 + 1850);
                      if (v171 != 5)
                      {
                        v177 = *(v153 + 1851);
                        if (!v5)
                        {
                          goto LABEL_207;
                        }

                        goto LABEL_193;
                      }
                    }

LABEL_192:
                    v177 = 0;
                    if (!v5)
                    {
                      goto LABEL_207;
                    }

LABEL_193:
                    v178 = *(v225 + 2);
                    v179 = __sincosf_stret((((v178 + 90.0) * 0.017453) * 0.5) + 0.7854);
                    v227 = fabsf(v179.__sinval);
                    v224 = fabsf(v179.__cosval);
                    v180 = __sincosf_stret(((v178 * 0.017453) * 0.5) + 0.7854);
                    v181 = fabsf(v180.__sinval);
                    v182 = *(v225 + 8);
                    v183 = sqrtf(1.0 - (v182 * v182));
                    if (v182 >= v181)
                    {
                      v184 = v181;
                    }

                    else
                    {
                      v184 = *(v225 + 8);
                    }

                    if (v181 >= v183)
                    {
                      v185 = v184;
                    }

                    else
                    {
                      v185 = v183;
                    }

                    v223 = v185;
                    v186 = fabsf(v180.__cosval);
                    if (v182 >= v186)
                    {
                      v187 = v186;
                    }

                    else
                    {
                      v187 = *(v225 + 8);
                    }

                    if (v186 >= v183)
                    {
                      v188 = v187;
                    }

                    else
                    {
                      v188 = v183;
                    }

                    v222 = v188;
                    v189 = __sincosf_stret((((v178 + -90.0) * 0.017453) * 0.5) + 0.7854);
                    v190 = fabsf(v189.__sinval);
                    v191 = fabsf(v189.__cosval);
                    v192 = v5;
                    do
                    {
                      *v172++ = vmul_n_f32(*v168, v191);
                      v193 = *v168++;
                      *v175++ = vmul_n_f32(v193, v190);
                      *v174++ = vmul_n_f32(*v169, v222);
                      v194 = *v169++;
                      *v176++ = vmul_n_f32(v194, v223);
                      *v173++ = vmul_n_f32(*v170, v224);
                      v195 = *v170++;
                      *v177++ = vmul_n_f32(v195, v227);
                      --v192;
                    }

                    while (v192);
LABEL_207:
                    TorqueEngine::updateHighShelfResponses(v225);
                    v196 = *(v225 + 3688);
                    if (v196 < 3)
                    {
                      v199 = 0;
                      v197 = 0;
                      v200 = 0;
                      v198 = v221;
                    }

                    else
                    {
                      v197 = *(v225 + 1848);
                      v198 = v221;
                      if (v196 == 3)
                      {
                        v199 = 0;
                        v200 = 0;
                      }

                      else
                      {
                        v200 = *(v225 + 1849);
                        v199 = 1;
                      }
                    }

                    v201 = *(v225 + 3948);
                    if (v201 <= 3)
                    {
                      v202 = 0;
                    }

                    else
                    {
                      v202 = *(v225 + 1979);
                      if (v201 != 4)
                      {
                        v203 = *(v225 + 1980);
                        if (!v5)
                        {
                          goto LABEL_223;
                        }

                        goto LABEL_221;
                      }
                    }

                    v203 = 0;
                    if (!v5)
                    {
                      goto LABEL_223;
                    }

LABEL_221:
                    v204 = v5;
                    do
                    {
                      v205 = *v202++;
                      *v197 = vmul_n_f32(*v197, v205);
                      ++v197;
                      v206 = *v203++;
                      *v200 = vmul_n_f32(*v200, v206);
                      ++v200;
                      --v204;
                    }

                    while (v204);
LABEL_223:
                    v207 = *(v225 + 2128);
                    if (v207 < 1)
                    {
                      v208 = 0;
                    }

                    else
                    {
                      v208 = *(v225 + 1066);
                      if (v207 != 1)
                      {
                        v209 = *(v225 + 1067);
                        goto LABEL_228;
                      }
                    }

                    v209 = 0;
LABEL_228:
                    v210 = *(v225 + 2648);
                    if (v210 < 1)
                    {
                      v211 = 0;
                    }

                    else
                    {
                      v211 = *(v225 + 1326);
                      if (v210 != 1)
                      {
                        v212 = *(v225 + 1327);
                        goto LABEL_233;
                      }
                    }

                    v212 = 0;
LABEL_233:
                    if (v196 < 1)
                    {
                      v214 = 0;
                      v213 = 0;
                    }

                    else
                    {
                      v213 = *(v225 + 1846);
                      if (v196 == 1)
                      {
                        v214 = 0;
                      }

                      else
                      {
                        v214 = *(v225 + 1847);
                        if (v196 >= 3)
                        {
                          v215 = *(v225 + 1848);
                          if (v199)
                          {
LABEL_241:
                            v216 = *(v225 + 1849);
LABEL_242:
                            if (v196 < 5)
                            {
                              v217 = 0;
                            }

                            else
                            {
                              v217 = *(v225 + 1850);
                              if (v196 != 5)
                              {
                                v218 = *(v225 + 1851);
                                goto LABEL_247;
                              }
                            }

                            v218 = 0;
LABEL_247:
                            if (*v198 < 1)
                            {
                              result = 0;
                            }

                            else
                            {
                              result = *(v198 + 2);
                              if (*v198 != 1)
                              {
                                v219 = *(v198 + 3);
                                if (!v5)
                                {
                                  return result;
                                }

LABEL_253:
                                for (j = 0; j != v5; ++j)
                                {
                                  *(result + j) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(*(v208 + 8 * j), *(v211 + 8 * j)), *(v213 + 8 * j)), *(v215 + 8 * j)), *(v217 + 8 * j));
                                  *(v219 + 8 * j) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(*(v209 + 8 * j), *(v212 + 8 * j)), *(v214 + 8 * j)), *(v216 + 8 * j)), *(v218 + 8 * j));
                                }

                                return result;
                              }
                            }

                            v219 = 0;
                            if (!v5)
                            {
                              return result;
                            }

                            goto LABEL_253;
                          }

LABEL_239:
                          v216 = 0;
                          goto LABEL_242;
                        }
                      }
                    }

                    v215 = 0;
                    if (v199)
                    {
                      goto LABEL_241;
                    }

                    goto LABEL_239;
                  }

                  v173 = 0;
                }

LABEL_191:
                v176 = 0;
                goto LABEL_192;
              }

              v173 = 0;
              v174 = 0;
            }

            v175 = 0;
            goto LABEL_191;
          }

LABEL_166:
          v153 = v225;
          goto LABEL_179;
        }

        v80 = *(v225 + 7);
        if (v80 <= 4)
        {
          if ((v80 - 3) >= 2)
          {
            if (v80 != 1)
            {
              if (v80 != 2)
              {
                goto LABEL_155;
              }

              v81 = ((1.0 - cosf(v79 * 0.017453)) * 1.5708) * 0.5;
              v82 = *(v225 + 2648);
              if (v82 < 1)
              {
                v83 = 0;
              }

              else
              {
                v83 = *(v225 + 1326);
                if (v82 != 1)
                {
                  v84 = *(v225 + 1327);
                  goto LABEL_146;
                }
              }

              v84 = 0;
LABEL_146:
              v134 = __sincosf_stret(v81);
              *v133.i32 = v134.__cosval;
              if (v5)
              {
                v135.f32[0] = -v134.__sinval;
                v135.i32[1] = LODWORD(v134.__sinval);
                v136 = vdup_lane_s32(v133, 0);
                v137 = v5;
                do
                {
                  v138 = v83[1];
                  v139 = (v134.__sinval * *v83) + (v138 * v134.__cosval);
                  *v83 = (*v83 * v134.__cosval) - (v138 * v134.__sinval);
                  v83[1] = v139;
                  v83 += 2;
                  *v84 = vmla_f32(vrev64_s32(vmul_f32(v135, *v84)), v136, *v84);
                  ++v84;
                  --v137;
                }

                while (v137);
              }

              goto LABEL_155;
            }

            v91 = ((1.0 - cosf(v79 * 0.017453)) * 1.5708) * 0.5;
            v92 = *(v225 + 2648);
            if (v92 < 1)
            {
              v93 = 0;
            }

            else
            {
              v93 = *(v225 + 1326);
              if (v92 != 1)
              {
                v94 = *(v225 + 1327);
                goto LABEL_152;
              }
            }

            v94 = 0;
LABEL_152:
            v140 = __sincosf_stret(v91);
            if (v5)
            {
              v141 = v5;
              do
              {
                v142 = v93[1];
                v143 = (v140.__sinval * *v93) + (v142 * v140.__cosval);
                *v93 = (*v93 * v140.__cosval) - (v142 * v140.__sinval);
                v93[1] = v143;
                v93 += 2;
                v144 = v94[1];
                v145 = (v140.__sinval * *v94) + (v144 * v140.__cosval);
                *v94 = (*v94 * v140.__cosval) - (v144 * v140.__sinval);
                v94[1] = v145;
                v94 += 2;
                --v141;
              }

              while (v141);
            }

            goto LABEL_155;
          }

          v88 = *(v225 + 2648);
          if (v88 < 1)
          {
            v89 = 0;
          }

          else
          {
            v89 = *(v225 + 1326);
            if (v88 != 1)
            {
              v90 = *(v225 + 1327);
LABEL_133:
              if (v80 != 3)
              {
                v79 = -v79;
              }

              v114 = v79 * 0.017453;
              if (*(v225 + 4209) != v114)
              {
                *(v225 + 4209) = v114;
                *(v225 + 2105) = __sincosf_stret(v114);
              }

              if (v5)
              {
                v115 = v5;
                do
                {
                  TorqueUtils::EnergySphere::energySphereFromCoeffs(&v228, *v89, v89[1], *v90, v90[1]);
                  v116 = *(v225 + 4211);
                  v117 = *(v225 + 4210);
                  v118 = (v116 * v229) - (v117 * v230);
                  v119 = (v116 * v230) + (v117 * v229);
                  v120 = ((v118 * v118) + (v228 * v228)) + (v119 * v119);
                  if (v120 == 0.0)
                  {
                    v123 = 0.0;
                    v122 = 1.0;
                    v124 = 0.7854;
                  }

                  else
                  {
                    v121 = 1.0 / v120;
                    v122 = v228 * (1.0 / v120);
                    v123 = v119 * v121;
                    v124 = (((v118 * v121) + 1.0) * 3.1416) * 0.25;
                  }

                  v126 = v231;
                  v125 = v232;
                  v127 = atan2f(v123, v122);
                  v128 = __sincosf_stret(v124);
                  v129 = v126 * v128.__sinval;
                  v130 = v126 * v128.__cosval;
                  v131 = __sincosf_stret(v125 - (v127 * -0.5));
                  v132 = __sincosf_stret(v125 + (v127 * -0.5));
                  *v89 = v129 * v131.__cosval;
                  v89[1] = v129 * v131.__sinval;
                  v89 += 2;
                  *v90 = v130 * v132.__cosval;
                  v90[1] = v130 * v132.__sinval;
                  v90 += 2;
                  --v115;
                }

                while (v115);
              }

              goto LABEL_155;
            }
          }

          v90 = 0;
          goto LABEL_133;
        }

        if ((v80 - 5) >= 2)
        {
          goto LABEL_155;
        }

        v85 = *(v225 + 2648);
        if (v85 < 1)
        {
          v86 = 0;
        }

        else
        {
          v86 = *(v225 + 1326);
          if (v85 != 1)
          {
            v87 = *(v225 + 1327);
LABEL_120:
            if (v80 != 5)
            {
              v79 = -v79;
            }

            v95 = v79 * 0.017453;
            if (*(v225 + 4209) != v95)
            {
              *(v225 + 4209) = v95;
              *(v225 + 2105) = __sincosf_stret(v95);
            }

            if (v5)
            {
              v96 = v5;
              do
              {
                TorqueUtils::EnergySphere::energySphereFromCoeffs(&v228, *v86, v86[1], *v87, v87[1]);
                v97 = *(v225 + 4211);
                v98 = *(v225 + 4210);
                v99 = (v97 * v228) - (v98 * v229);
                v100 = (v97 * v229) + (v98 * v228);
                v101 = ((v100 * v100) + (v99 * v99)) + (v230 * v230);
                if (v101 == 0.0)
                {
                  v104 = 0.0;
                  v103 = 1.0;
                  v105 = 0.7854;
                }

                else
                {
                  v102 = 1.0 / v101;
                  v103 = v99 * (1.0 / v101);
                  v104 = v230 * v102;
                  v105 = (((v100 * v102) + 1.0) * 3.1416) * 0.25;
                }

                v107 = v231;
                v106 = v232;
                v108 = atan2f(v104, v103);
                v109 = __sincosf_stret(v105);
                v110 = v107 * v109.__sinval;
                v111 = v107 * v109.__cosval;
                v112 = __sincosf_stret(v106 - (v108 * -0.5));
                v113 = __sincosf_stret(v106 + (v108 * -0.5));
                *v86 = v110 * v112.__cosval;
                v86[1] = v110 * v112.__sinval;
                v86 += 2;
                *v87 = v111 * v113.__cosval;
                v87[1] = v111 * v113.__sinval;
                v87 += 2;
                --v96;
              }

              while (v96);
            }

            goto LABEL_155;
          }
        }

        v87 = 0;
        goto LABEL_120;
      }

      v23 = 0;
    }

    v24 = 0;
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = 0;
    do
    {
      if (v7 == 128)
      {
        __assert_rtn("getChannel", "Overlapper.hpp", 103, "pCh < kMaxNumChannels");
      }

      if (v6 <= v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(a2 + 16 + 8 * v7);
      }

      if (*a3 <= v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = *&a3[2 * v7 + 4];
      }

      v10 = v5;
      if (v5)
      {
        do
        {
          v11 = *v8++;
          *v9++ = v11;
          --v10;
        }

        while (v10);
        v6 = *a2;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  return result;
}

float TorqueEngine::updateCrossoverResponse(TorqueEngine *this)
{
  result = *(this + 3);
  if (result != *(this + 4208))
  {
    v2 = *(this + 3948);
    if (v2 < 2)
    {
      v3 = 0;
      v5 = 0;
    }

    else
    {
      v3 = *(this + 1977);
      if (v2 == 2)
      {
        v5 = 0;
        v4 = *(this + 3949);
        if (result == 0.0)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }

      v5 = *(this + 1978);
    }

    v4 = *(this + 3949);
    if (result == 0.0)
    {
LABEL_9:
      while (v4)
      {
        *v3++ = 0.0;
        *v5++ = 1.0;
        --v4;
      }

      goto LABEL_18;
    }

    if (v2 < 1)
    {
      v6 = 0;
      if (!v4)
      {
LABEL_18:
        result = *(this + 3);
        *(this + 4208) = result;
        return result;
      }

LABEL_16:
      v7 = 1.0 / result;
      do
      {
        v8 = *v6++;
        v9 = 1.0 / ((((v7 * v8) * (v7 * v8)) * ((v7 * v8) * (v7 * v8))) + 1.0);
        *v3++ = v9;
        *v5++ = 1.0 - v9;
        --v4;
      }

      while (v4);
      goto LABEL_18;
    }

LABEL_13:
    v6 = *(this + 1976);
    if (!v4)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  return result;
}

void TorqueUtils::EnergySphere::energySphereFromCoeffs(float *a1, float a2, float a3, float a4, float a5)
{
  v10 = (a3 * a3) + (a2 * a2);
  v11 = (a5 * a5) + (a4 * a4);
  if (a2 == 0.0 && a3 == 0.0 || a4 == 0.0 && a5 == 0.0)
  {
    if (a2 == 0.0 && a3 == 0.0)
    {
      v12 = 0.0;
      if (a4 == 0.0 && a5 == 0.0)
      {
        v13 = 0.0;
        v14 = 0.0;
      }

      else
      {
        v14 = atan2f(a5, a4);
        v13 = -1.5708;
      }
    }

    else
    {
      v14 = atan2f(a3, a2);
      v12 = 0.0;
      v13 = 1.5708;
    }
  }

  else
  {
    v15 = (atan2f(sqrtf(v10), sqrtf(v11)) * 1.2732) + -1.0;
    v16 = atan2f(a3, a2);
    v17 = atan2f(a5, a4);
    v18 = remainderf(v17 - v16, 6.2832);
    if (v18 <= -3.1416)
    {
      v12 = v18 + 6.2832;
    }

    else
    {
      v12 = v18;
    }

    v14 = v16 + (v12 * 0.5);
    v13 = v15 * 1.5708;
  }

  v19 = __sincosf_stret(v13);
  v20 = __sincosf_stret(v12);
  v21 = atan2f(v19.__sinval, v19.__cosval * v20.__cosval);
  v22 = asinf(-(v19.__cosval * v20.__sinval));
  v23 = __sincosf_stret(v21);
  v24 = __sincosf_stret(v22);
  *a1 = v23.__cosval * v24.__cosval;
  a1[1] = v23.__sinval * v24.__cosval;
  a1[2] = v24.__sinval;
  a1[3] = sqrtf(v10 + v11);
  a1[4] = v14;
}

void TorqueEngine::updateHighShelfResponses(TorqueEngine *this)
{
  v2 = this + 0x4000;
  v3 = *(this + 5);
  if (v3 != *(this + 4212) || *(this + 6) != *(this + 4213) || *(this + 2) != *(this + 4214))
  {
    v4 = *(this + 3949);
    v5 = *(this + 3948);
    if (v3 == 0.0)
    {
      if (v5 < 4)
      {
        v6 = 0;
      }

      else
      {
        v6 = *(this + 1979);
        if (v5 != 4)
        {
          v7 = *(this + 1980);
          if (!v4)
          {
            goto LABEL_22;
          }

          goto LABEL_15;
        }
      }

      v7 = 0;
      if (!v4)
      {
LABEL_22:
        *(this + 2106) = *(this + 20);
        *(v2 + 118) = *(this + 2);
        return;
      }

      do
      {
LABEL_15:
        *v6++ = 1065353216;
        *v7++ = 1065353216;
        --v4;
      }

      while (v4);
      goto LABEL_22;
    }

    if (v5 < 1)
    {
      v9 = 0;
      v8 = 0;
    }

    else
    {
      v8 = *(this + 1976);
      if (v5 < 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(this + 1979);
        if (v5 != 4)
        {
          v10 = *(this + 1980);
          goto LABEL_20;
        }
      }
    }

    v10 = 0;
LABEL_20:
    v11 = sinf(*(this + 2) * 0.017453);
    for (i = __exp10f((*(this + 6) * v11) / 20.0); v4; --v4)
    {
      v13 = *v8++;
      v14 = 1.0 / (((((1.0 / v3) * v13) * ((1.0 / v3) * v13)) * (((1.0 / v3) * v13) * ((1.0 / v3) * v13))) + 1.0);
      *v9++ = (1.0 / i) + ((1.0 - (1.0 / i)) * v14);
      *v10++ = i + ((1.0 - i) * v14);
    }

    goto LABEL_22;
  }
}

uint64_t std::__function::__func<std::__bind<void (STFT<float>::*)(OverlapperAudioBuffer<float> const&,OverlapperAudioBuffer<float>&),STFT<float>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (STFT<float>::*)(OverlapperAudioBuffer<float> const&,OverlapperAudioBuffer<float>&),STFT<float>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(OverlapperAudioBuffer<float> const&,OverlapperAudioBuffer<float>&)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 std::__function::__func<std::__bind<void (STFT<float>::*)(OverlapperAudioBuffer<float> const&,OverlapperAudioBuffer<float>&),STFT<float>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (STFT<float>::*)(OverlapperAudioBuffer<float> const&,OverlapperAudioBuffer<float>&),STFT<float>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(OverlapperAudioBuffer<float> const&,OverlapperAudioBuffer<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5936CF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void STFT<float>::privateProcessBlock(uint64_t a1, unsigned int *a2, int *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (v3 != *(a1 + 8))
  {
    __assert_rtn("privateProcessBlock", "STFT.hpp", 204, "pIn.getNumChannels() == this->mNumChIn");
  }

  v4 = a3;
  if (*a3 != *(a1 + 12))
  {
    __assert_rtn("privateProcessBlock", "STFT.hpp", 205, "pOut.getNumChannels() == this->mNumChOut");
  }

  v6 = a2[1];
  v7 = *(a1 + 16);
  if (v6 != 2 * v7)
  {
    __assert_rtn("privateProcessBlock", "STFT.hpp", 206, "pIn.getNumSamples() == 2 * this->mHalfBlockSize");
  }

  if (a3[1] != v6)
  {
    __assert_rtn("privateProcessBlock", "STFT.hpp", 207, "pOut.getNumSamples() == 2 * this->mHalfBlockSize");
  }

  v8 = *(a1 + 4224);
  if (v8)
  {
    if (v8 != 1)
    {
      __assert_rtn("privateProcessBlock", "STFT.hpp", 212, "false");
    }

    v9 = 4248;
  }

  else
  {
    v9 = 4232;
  }

  v62 = *(a1 + v9);
  if (v3 <= 0)
  {
    v13 = *(a1 + 4228) * v6;
  }

  else
  {
    v10 = 0;
    v61 = a2 + 4;
    v11 = *(a1 + 4264);
    v59 = a3;
    v60 = a1 + 4280;
    v12 = *(a1 + 4228);
    v13 = v12 * v6;
    if (v6 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v6;
    }

    v15 = 4 * (v7 * (2 * v12 - 2) - 2);
    do
    {
      if (v10 == 128)
      {
        goto LABEL_64;
      }

      if (v10 >= v3)
      {
        v16 = 0;
      }

      else
      {
        v16 = *&v61[2 * v10];
      }

      if (v10 >= v11)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v60 + 8 * v10);
      }

      v18 = v62;
      v19 = v17;
      v20 = v14;
      if (v7 >= 1)
      {
        do
        {
          v21 = *v18++;
          v22 = v21;
          v23 = *v16++;
          *v19++ = v22 * v23;
          --v20;
        }

        while (v20);
      }

      if (v6 < v13)
      {
        bzero(&v17[v6], v15 + 8);
      }

      ++v10;
    }

    while (v10 != v3);
    v4 = v59;
  }

  v24 = v13;
  v25 = v13 >> 1;
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v26);
  __Z.realp = v28;
  __Z.imagp = (&v58 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v63.realp = v33;
  v63.imagp = (&v58 - v32);
  if (*(a1 + 8) >= 1)
  {
    v34 = 0;
    v35 = a1 + 4280;
    while (v34 != 128)
    {
      if (v34 >= *(a1 + 4264))
      {
        v36 = 0;
      }

      else
      {
        v36 = *v35;
      }

      vDSP_ctoz(v36, 2, &__Z, 1, v25);
      vDSP_DFT_Execute(*(a1 + 8456), __Z.realp, __Z.imagp, v63.realp, v63.imagp);
      if (v34 >= *(a1 + 6344))
      {
        v37 = 0;
      }

      else
      {
        v37 = *(v35 + 2080);
      }

      vDSP_ztoc(&v63, 1, v37, 2, v25);
      ++v34;
      v35 += 8;
      if (v34 >= *(a1 + 8))
      {
        goto LABEL_38;
      }
    }

LABEL_64:
    __assert_rtn("getChannel", "Overlapper.hpp", 103, "pCh < kMaxNumChannels");
  }

LABEL_38:
  v38 = *(a1 + 8448);
  if (!v38)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v38 + 48))(v38, a1 + 6344, a1 + 7384, v31);
  if (*(a1 + 12) >= 1)
  {
    v39 = 0;
    v40 = a1 + 5320;
    do
    {
      if (v39 == 128)
      {
        goto LABEL_64;
      }

      if (v39 >= *(a1 + 7384))
      {
        v41 = 0;
      }

      else
      {
        v41 = *(v40 + 2080);
      }

      vDSP_ctoz(v41, 2, &__Z, 1, v25);
      vDSP_DFT_Execute(*(a1 + 8464), __Z.realp, __Z.imagp, v63.realp, v63.imagp);
      if (v39 >= *(a1 + 5304))
      {
        v42 = 0;
      }

      else
      {
        v42 = *v40;
      }

      vDSP_ztoc(&v63, 1, v42, 2, v25);
      ++v39;
      v43 = *(a1 + 12);
      v40 += 8;
    }

    while (v39 < v43);
    if (v43 >= 1)
    {
      v44 = 0;
      v45 = *(a1 + 5304);
      v48 = *v4;
      v47 = v4 + 4;
      v46 = v48;
      v49 = *(a1 + 16);
      LODWORD(v50) = 2 * v49;
      if (2 * v49 <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = v50;
      }

      while (v44 != 128)
      {
        if (v44 >= v45)
        {
          v51 = 0;
        }

        else
        {
          v51 = *(a1 + 5320 + 8 * v44);
        }

        if (v44 >= v46)
        {
          v52 = 0;
        }

        else
        {
          v52 = *&v47[2 * v44];
        }

        v53 = v62;
        v54 = v50;
        if (v49 >= 1)
        {
          do
          {
            v55 = *v53++;
            v56 = (0.5 / v24) * v55;
            v57 = *v51++;
            *v52++ = v56 * v57;
            --v54;
          }

          while (v54);
        }

        if (++v44 == v43)
        {
          return;
        }
      }

      goto LABEL_64;
    }
  }
}

double TorqueEngine::resizeBuffers(void **this, int a2)
{
  OverlapperAudioBuffer<TorqueUtils::Complex<float>>::resize(this + 1064, 2, a2);
  OverlapperAudioBuffer<TorqueUtils::Complex<float>>::resize(this + 1194, 2, a2);
  OverlapperAudioBuffer<TorqueUtils::Complex<float>>::resize(this + 1324, 2, a2);
  OverlapperAudioBuffer<TorqueUtils::Complex<float>>::resize(this + 1454, 2, a2);
  if (this[1584] == __PAIR64__(a2, 1) && this[1585])
  {
    v4 = 0;
    LODWORD(v5) = 1;
    do
    {
      if (v4 == 128)
      {
        __assert_rtn("getChannel", "Overlapper.hpp", 103, "pCh < kMaxNumChannels");
      }

      if (v4 >= v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = this[v4 + 1586];
      }

      bzero(v6, 12 * *(this + 3169));
      ++v4;
      v5 = *(this + 3168);
    }

    while (v4 < v5);
  }

  else
  {
    free(this[1585]);
    if (a2 < 1)
    {
      v7 = 0;
      this[1585] = 0;
    }

    else
    {
      malloc_type_posix_memalign(this + 1585, 0x10uLL, 12 * a2, 0x10000403E1C8BA9uLL);
      bzero(this[1585], 12 * a2);
      v7 = this[1585];
      if (!v7)
      {
        __assert_rtn("resize", "Overlapper.hpp", 76, "mBuffer");
      }
    }

    this[1586] = v7;
    *(this + 3168) = 1;
    *(this + 3169) = a2;
  }

  OverlapperAudioBuffer<TorqueUtils::Complex<float>>::resize(this + 1714, 3, a2);
  OverlapperAudioBuffer<TorqueUtils::Complex<float>>::resize(this + 1844, 6, a2);
  OverlapperAudioBuffer<float>::resize((this + 1974), 5u, a2);
  *(this + 4208) = -1082130432;
  __asm { FMOV            V0.2S, #-1.0 }

  *(this + 2106) = result;
  return result;
}

void OverlapperAudioBuffer<TorqueUtils::Complex<float>>::resize(void **a1, int a2, unsigned int a3)
{
  LODWORD(v4) = a2;
  if (*a1 == a2 && *(a1 + 1) == a3 && a1[1])
  {
    v6 = 0;
    do
    {
      if (v6 == 128)
      {
        __assert_rtn("getChannel", "Overlapper.hpp", 103, "pCh < kMaxNumChannels");
      }

      if (v6 >= v4)
      {
        v7 = 0;
      }

      else
      {
        v7 = a1[v6 + 2];
      }

      bzero(v7, 8 * *(a1 + 1));
      ++v6;
      v4 = *a1;
    }

    while (v6 < v4);
  }

  else
  {
    v8 = a1 + 1;
    free(a1[1]);
    if ((a3 * v4) < 1)
    {
      v9 = 0;
      *v8 = 0;
    }

    else
    {
      malloc_type_posix_memalign(a1 + 1, 0x10uLL, 8 * a3 * v4, 0x100004000313F17uLL);
      bzero(*v8, 8 * a3 * v4);
      v9 = *v8;
      if (!*v8)
      {
        __assert_rtn("resize", "Overlapper.hpp", 76, "mBuffer");
      }
    }

    v10 = 2;
    v11 = v4;
    do
    {
      a1[v10++] = v9;
      v9 += 8 * a3;
      --v11;
    }

    while (v11);
    *a1 = v4;
    *(a1 + 1) = a3;
  }
}

void OverlapperAudioBuffer<float>::resize(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 >= 0x81)
  {
    __assert_rtn("resize", "Overlapper.hpp", 65, "inNumChannels <= kMaxNumChannels");
  }

  if (*a1 != a2 || *(a1 + 4) != a3 || !*(a1 + 8))
  {
    v7 = (a1 + 8);
    free(*(a1 + 8));
    if ((a3 * a2) < 1)
    {
      v8 = 0;
      *v7 = 0;
      if (!a2)
      {
LABEL_16:
        *a1 = a2;
        *(a1 + 4) = a3;
        return;
      }
    }

    else
    {
      malloc_type_posix_memalign((a1 + 8), 0x10uLL, 4 * a3 * a2, 0x100004052888210uLL);
      bzero(*v7, 4 * a3 * a2);
      v8 = *v7;
      if (!*v7)
      {
        __assert_rtn("resize", "Overlapper.hpp", 76, "mBuffer");
      }

      if (!a2)
      {
        goto LABEL_16;
      }
    }

    v9 = (a1 + 16);
    v10 = a2;
    do
    {
      *v9++ = v8;
      v8 += 4 * a3;
      --v10;
    }

    while (v10);
    goto LABEL_16;
  }

  if (a2)
  {
    v6 = 0;
    do
    {
      OverlapperAudioBuffer<float>::clearChannel(a1, v6++);
    }

    while (v6 < *a1);
  }
}

void OverlapperAudioBuffer<DSPComplex>::resize(int *a1, int a2)
{
  if (*a1 == 2 && a1[1] == a2 && *(a1 + 1))
  {
    v4 = 0;
    LODWORD(v5) = 2;
    do
    {
      if (v4 == 128)
      {
        __assert_rtn("getChannel", "Overlapper.hpp", 103, "pCh < kMaxNumChannels");
      }

      if (v4 >= v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = *&a1[2 * v4 + 4];
      }

      bzero(v6, 8 * a1[1]);
      ++v4;
      v5 = *a1;
    }

    while (v4 < v5);
  }

  else
  {
    v7 = (a1 + 2);
    free(*(a1 + 1));
    if (a2 < 1)
    {
      v8 = 0;
      *v7 = 0;
    }

    else
    {
      malloc_type_posix_memalign(a1 + 1, 0x10uLL, 8 * (2 * a2), 0x100004000313F17uLL);
      bzero(*v7, 8 * (2 * a2));
      v8 = *v7;
      if (!*v7)
      {
        __assert_rtn("resize", "Overlapper.hpp", 76, "mBuffer");
      }
    }

    *(a1 + 2) = v8;
    *(a1 + 3) = &v8[8 * a2];
    *a1 = 2;
    a1[1] = a2;
  }
}

uint64_t AlignedBuffer<float>::resize(uint64_t result)
{
  if (*(result + 8) != 256)
  {
    v1 = result;
    free(*result);
    result = malloc_type_posix_memalign(v1, 0x10uLL, 0x400uLL, 0x100004052888210uLL);
    if (result == 22 || result == 12)
    {
      *v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *(v1 + 8) = 256;
    }
  }

  return result;
}

void *TorqueEngine::processInplace(TorqueEngine *this, float *a2, float *a3, unsigned int a4)
{
  v19[129] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  v9 = &v16[-2] - ((v8 + 15) & 0x7FFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-2] - v11;
  bzero(v19, 0x408uLL);
  v19[1] = a2;
  v19[2] = a3;
  v18[0] = 2;
  v18[1] = a4;
  bzero(v17, 0x408uLL);
  v17[1] = v9;
  v17[2] = v12;
  v16[0] = 2;
  v16[1] = a4;
  Overlapper<float>::processBlock(this + 40, v18, v16);
  v13 = 4 * a4;
  memcpy(a2, v9, v13);
  return memcpy(a3, v12, v13);
}

uint64_t AULoudspeakerSystemIDV2::createAlgorithms(AULoudspeakerSystemIDV2 *this)
{
  caulk::pooled_semaphore_mutex::_lock((this + 1824));
  v3 = *(this + 397);
  v4 = v3;
  if (v3 != 1)
  {
    if (v3 || (v5 = *(this + 265), v5 == *(this + 266)))
    {
      v4 = 0;
    }

    else
    {
      v4 = *v5;
    }
  }

  v6 = 0;
  v7 = 528;
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = *(this + 265);
  if (v8 == *(this + 266))
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8;
  }

  while (v6 < v9)
  {
    if (!*(this + v7))
    {
      *(this + v7) = (*(*this + 600))(this, v4);
      LODWORD(v3) = *(this + 397);
    }

    ++v6;
    v7 += 56;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_9:
    v9 = 1;
  }

  if (*(this + 66))
  {
    v10 = 0;
    v11 = (this + 572);
    if (!v3)
    {
      goto LABEL_20;
    }

LABEL_18:
    v12 = *(this + 265);
    if (v12 == *(this + 266))
    {
      v13 = 0;
    }

    else
    {
      v13 = *v12;
    }

    while (v10 < v13)
    {
      if (*(v11 - 5) != *(v11 - 7))
      {
        (*(*this + 616))(this, v10);
        *v11 = *(v11 - 1);
        LODWORD(v3) = *(this + 397);
      }

      ++v10;
      v11 += 14;
      if (v3)
      {
        goto LABEL_18;
      }

LABEL_20:
      v13 = 1;
    }

    AUDspLib::initializeDspLibAlgorithms(this, v2);
    v14 = 0;
    for (i = this + 536; ; i += 56)
    {
      if (*(this + 397))
      {
        v16 = *(this + 265);
        v17 = v16 == *(this + 266) ? 0 : *v16;
      }

      else
      {
        v17 = 1;
      }

      if (v14 >= v17)
      {
        break;
      }

      (*(**(i - 1) + 216))(*(i - 1), *i);
      ++v14;
    }
  }

  *(this + 1820) = 1;
  caulk::pooled_semaphore_mutex::_unlock((this + 1824));
  return 0;
}

uint64_t AULoudspeakerSystemIDV2::SupportedNumChannels(AULoudspeakerSystemIDV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULoudspeakerSystemIDV2::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 8;
}

uint64_t AULoudspeakerSystemIDV2::GetParameterInfo(AULoudspeakerSystemIDV2 *this, unsigned int a2, uint64_t a3, AudioUnitParameterInfo *buffer)
{
  if (a3 == 0x40000000)
  {
    buffer->unit = kAudioUnitParameterUnit_Generic;
    *&buffer->minValue = 0x447A000000000000;
    *&buffer->defaultValue = 0x4880A00000000000;
    buffer->cfNameString = @"TotalMeasuredSpeakerPower";
    CFStringGetCString(@"TotalMeasuredSpeakerPower", buffer->name, 52, 0x8000100u);
    return 0;
  }

  else
  {

    return AUDspLibWithNewParameters::GetParameterInfo(this, a2, a3, buffer);
  }
}

uint64_t AULoudspeakerSystemIDV2::ProcessBufferLists(AULoudspeakerSystemIDV2 *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  v9 = a4;
  v10 = a3;
  v6 = (*(*this + 184))(this, a2, a5, 1, &v10, 1, &v9);
  v7 = *(this + 66);
  if (v7)
  {
    ausdk::AUBase::SetParameter(this, 0x40000000u, 0, 0, *(v7 + 340));
  }

  return v6;
}

uint64_t AULoudspeakerSystemIDV2::SetProperty(AULoudspeakerSystemIDV2 *this, int a2, int a3, unsigned int a4, id *a5, void *a6, int *a7)
{
  switch(a2)
  {
    case 1936290675:
      if (*(this + 17) == 1)
      {
        v12 = *(this + 66);
        if (v12)
        {
          v13 = *a5;
          applesauce::CF::StringRef::get_ns(*a5);
          v14 = [objc_claimAutoreleasedReturnValue() objectForKeyedSubscript:@"sysIdSpeakerForStatus"];
          v15 = [v14 unsignedIntValue];

          *(v12 + 408) = v15;
        }
      }

      return 0;
    case 64009:
      if (a6 < 8)
      {
        return 4294956445;
      }

      if (DspLib::Loudspeaker::Calibration::SpTS::InterpretSpeakerCalibration(*a5))
      {
        return 0xFFFFFFFFLL;
      }

      if (*(this + 17) == 1)
      {
        result = *(this + 66);
        if (!result)
        {
          return result;
        }

        DspLib::LoudspeakerSystemIDV2::Algorithm::setCalibrationData(result, this + 276);
      }

      return 0;
    case 64005:
      if (a5 && a6 >= 4)
      {
        v9 = a6 >> 2;
        std::vector<unsigned int>::vector[abi:ne200100](v20, v9);
        *__p = *v20;
        v23 = v21;
        v20[1] = 0;
        v21 = 0;
        v20[0] = 0;
        v24 = 1;
        std::__optional_storage_base<std::vector<clsp::telemetry::Item>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<clsp::telemetry::Item>,false>>(this + 2176, __p);
        if (v24 == 1 && __p[0])
        {
          operator delete(__p[0]);
        }

        if (v20[0])
        {
          v20[1] = v20[0];
          operator delete(v20[0]);
        }

        memmove(*(this + 272), a5, 4 * v9);
        if (*(this + 17) != 1)
        {
          return 0;
        }

        v10 = *(this + 66);
        if (!v10)
        {
          return 0;
        }

        if ((*(this + 2200) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v17 = 0;
        v18 = 0;
        v19 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v17, *(this + 272), *(this + 273), (*(this + 273) - *(this + 272)) >> 2);
        __p[0] = 0;
        __p[1] = 0;
        v23 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, v17, v18, (v18 - v17) >> 2);
        v24 = 1;
        std::__optional_storage_base<std::vector<clsp::telemetry::Item>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<clsp::telemetry::Item>,false>>(v10 + 376, __p);
        if (v24 == 1)
        {
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        result = v17;
        if (v17)
        {
          v18 = v17;
          operator delete(v17);
          return 0;
        }
      }

      else
      {
        if (*(this + 2200) != 1)
        {
          return 0;
        }

        v16 = *(this + 272);
        if (v16)
        {
          *(this + 273) = v16;
          operator delete(v16);
        }

        result = 0;
        *(this + 2200) = 0;
      }

      break;
    default:

      return AUDspLib::SetProperty(this, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

void sub_1DE00C4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::LoudspeakerSystemIDV2::Algorithm::setCalibrationData(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 312);
  v4 = *(result + 320);
  if (0x39CD0A16EA482A69 * ((v4 - v3) >> 4) == (a2[1] - *a2) >> 3)
  {
    if (v4 != v3)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        result = DspLib::Loudspeaker::Calibration::ThermalCoefficients::setCalibration(v3 + 23952 * v6 + 23664, *(*a2 + 8 * v6));
        v6 = v7;
        v3 = *(v2 + 312);
      }

      while (0x39CD0A16EA482A69 * ((*(v2 + 320) - v3) >> 4) > v7++);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *(v2 + 344) = v9;
  return result;
}

uint64_t AULoudspeakerSystemIDV2::GetProperty(uint64_t **this, int a2, unsigned int a3, unsigned int a4, char *a5, int *a6)
{
  switch(a2)
  {
    case 64009:
      SpeakerCalibrationDictionary = DspLib::Loudspeaker::Calibration::SpTS::CreateSpeakerCalibrationDictionary(this[276], this[277]);
      result = 0;
      *a5 = SpeakerCalibrationDictionary;
      return result;
    case 64005:
      if (*(this + 2200) == 1)
      {
        v8 = this[272];
        v9 = this[273];
        if (v9 != v8)
        {
          memmove(a5, v8, v9 - v8);
        }
      }

      return 0;
    case 6630:
      if (a3)
      {
        return 4294956430;
      }

      v11 = this[66];
      if (!v11 || *(v11 + 40) == *(v11 + 39))
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v12 = 0;
        LODWORD(v13) = 0;
        do
        {
          DspLib::LoudspeakerSystemIDV2::Algorithm::speakerModel(v11, v13, v32);
          v14 = &a5[216 * v12];
          v15 = v41;
          *(v14 + 10) = v40;
          *(v14 + 11) = v15;
          *(v14 + 12) = v42;
          *(v14 + 26) = v43;
          v16 = v37;
          *(v14 + 6) = v36;
          *(v14 + 7) = v16;
          v17 = v39;
          *(v14 + 8) = v38;
          *(v14 + 9) = v17;
          v18 = v33;
          *(v14 + 2) = v32[2];
          *(v14 + 3) = v18;
          v19 = v35;
          *(v14 + 4) = v34;
          *(v14 + 5) = v19;
          v20 = v32[1];
          *v14 = v32[0];
          *(v14 + 1) = v20;
          v13 = (v13 + 1);
          v12 = v13;
        }

        while (0x39CD0A16EA482A69 * ((*(v11 + 40) - *(v11 + 39)) >> 4) > v13);
        if (v13 > 7)
        {
          return 0;
        }
      }

      v21 = v13;
      v22 = vdup_n_s32(0xC2C80000);
      do
      {
        v23 = 0;
        v41 = 0uLL;
        v42 = 0uLL;
        v39 = 0uLL;
        v40 = 0uLL;
        v37 = 0uLL;
        v38 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        v33 = 0uLL;
        v34 = 0uLL;
        LODWORD(v32[0]) = 1;
        memset(v32 + 4, 0, 24);
        memset(&v32[1] + 9, 0, 23);
        *(&v32[2] + 4) = 0;
        BYTE12(v32[2]) = 0;
        do
        {
          v24 = v32 + v23;
          *(v24 + 60) = 0;
          *(v24 + 52) = 0;
          v24[76] = 0;
          *(v24 + 68) = 0;
          *(v24 + 10) = 0;
          v24[88] = 0;
          v23 += 44;
          v24[92] = 0;
        }

        while (v23 != 132);
        *(&v41 + 1) = v22;
        LODWORD(v42) = 1065353216;
        BYTE4(v42) = 0;
        DWORD2(v42) = 1112014848;
        BYTE12(v42) = 0;
        v43 = 0;
        v25 = &a5[216 * v21];
        v26 = v41;
        *(v25 + 10) = v40;
        *(v25 + 11) = v26;
        *(v25 + 12) = v42;
        *(v25 + 26) = v43;
        v27 = v37;
        *(v25 + 6) = v36;
        *(v25 + 7) = v27;
        v28 = v39;
        *(v25 + 8) = v38;
        *(v25 + 9) = v28;
        v29 = v33;
        *(v25 + 2) = v32[2];
        *(v25 + 3) = v29;
        v30 = v35;
        *(v25 + 4) = v34;
        *(v25 + 5) = v30;
        v31 = v32[1];
        ++v21;
        *v25 = v32[0];
        *(v25 + 1) = v31;
      }

      while (v21 != 8);
      return 0;
  }

  return AUDspLib::GetProperty(this, a2, a3, a4, a5, a6);
}

uint64_t AULoudspeakerSystemIDV2::GetPropertyInfo(AULoudspeakerSystemIDV2 *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 > 64008)
  {
    if (a2 == 64009 || a2 == 1936290675)
    {
      result = 0;
      *a6 = 1;
      v6 = 8;
LABEL_14:
      *a5 = v6;
      return result;
    }

    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  if (a2 != 6630)
  {
    if (a2 == 64005)
    {
      *a6 = 1;
      if (*(this + 2200) == 1)
      {
        v6 = (*(this + 546) - *(this + 544)) & 0xFFFFFFFC;
      }

      else
      {
        v6 = 0;
      }

      result = 0;
      goto LABEL_14;
    }

    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  if (a3)
  {
    return 4294956430;
  }

  result = 0;
  *a5 = 1728;
  *a6 = 0;
  return result;
}

uint64_t AULoudspeakerSystemIDV2::Initialize(DspLib::LoudspeakerSystemIDV2::Algorithm **this)
{
  result = AUDspLib::Initialize(this);
  if (!result)
  {
    v3 = this[66];
    if (v3)
    {
      cf[0] = @"com.apple.coreaudio";
      v4 = CFGetTypeID(@"com.apple.coreaudio");
      if (v4 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (!cf[0])
      {
        v9 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v9, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(__p, cf[0]);
      CFRelease(cf[0]);
      std::string::basic_string[abi:ne200100]<0>(cf, "LSMv2EnableLogging");
      v5 = GetPreference<long long>(__p, cf);
      v7 = v6;
      if (v11 < 0)
      {
        operator delete(cf[0]);
      }

      DspLib::LoudspeakerSystemIDV2::Algorithm::setCalibrationData(v3, this + 276);
      if (v7)
      {
        DspLib::LoudspeakerSystemIDV2::Algorithm::configureLogging(v3, v5);
      }

      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_1DE00CA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v20);
  applesauce::CF::StringRef::~StringRef(&__p);
  _Unwind_Resume(a1);
}

void AULoudspeakerSystemIDV2::~AULoudspeakerSystemIDV2(AULoudspeakerSystemIDV2 *this)
{
  *this = &unk_1F5936D88;
  v3 = (this + 2208);
  std::vector<std::unique_ptr<DspLib::Loudspeaker::Calibration::SpTS::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 2200) == 1)
  {
    v2 = *(this + 272);
    if (v2)
    {
      *(this + 273) = v2;
      operator delete(v2);
    }
  }

  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5936D88;
  v3 = (this + 2208);
  std::vector<std::unique_ptr<DspLib::Loudspeaker::Calibration::SpTS::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 2200) == 1)
  {
    v2 = *(this + 272);
    if (v2)
    {
      *(this + 273) = v2;
      operator delete(v2);
    }
  }

  AUDspLib::~AUDspLib(this);
}

float CNoiseSuppressorV3::hypergeom_gain(CNoiseSuppressorV3 *this, float a2)
{
  v2 = vcvtms_s32_f32(a2 + a2);
  if ((v2 & 0x80000000) != 0)
  {
    return 1.0;
  }

  if (v2 >= 0x14)
  {
    return (0.1296 / a2) + 1.0;
  }

  v4 = floorf(a2 + a2);
  return ((-(v4 - (a2 * 2.0)) * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v2 + 1)) + ((1.0 - -(v4 - (a2 * 2.0))) * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v2))) / sqrtf(a2 + 0.0001);
}

float *CNoiseSuppressorV3::hypergeom_gain_vopt(float *this, float *a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    do
    {
      v3 = *this;
      v4 = vcvtms_s32_f32(v3 + v3);
      v5 = 1.0;
      if ((v4 & 0x80000000) == 0)
      {
        if (v4 < 0x14)
        {
          v6 = -(floorf(v3 + v3) - (v3 * 2.0));
          v5 = ((v6 * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v4 + 1)) + ((1.0 - v6) * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v4))) / sqrtf(v3 + 0.0001);
        }

        else
        {
          v5 = (0.1296 / v3) + 1.0;
        }
      }

      *this++ = v5;
      --v2;
    }

    while (v2);
  }

  return this;
}

float CNoiseSuppressorV3::speex_synthesis(int *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  MEMORY[0x1EEE9AC00](a1);
  v6 = (&__Z - v5);
  v7 = (&__Z + 4 * v4 - v5);
  __Z.realp = v7 + 1;
  __Z.imagp = (&__Z.imagp - v5);
  vDSP_ctoz((*(v8 + 136) + 8), 2, &__Z, 1, v4 - 2);
  v9 = *(a1 + 17);
  *v6 = *v9;
  v10 = 8 * v4 - 4;
  *(v6 + v10) = *&v9[v4 - 1];
  v11 = 2 * v4;
  *v7 = *(v9 + v10);
  __Z.realp = v6;
  __Z.imagp = v7;
  *buf = 939524096;
  MEMORY[0x1E12BE940](v6, 1, buf, v6, 1, (2 * v4));
  v13 = *(a1 + 72);
  if (v13)
  {
    MultiRadixRealFFT::RealInPlaceTransform(v13, &__Z, -1, v12);
    goto LABEL_3;
  }

  if (SuppressorClassLogScope(void)::once != -1)
  {
    dispatch_once(&SuppressorClassLogScope(void)::once, &__block_literal_global_8663);
  }

  if (SuppressorClassLogScope(void)::scope)
  {
    v25 = *SuppressorClassLogScope(void)::scope;
    if (!*SuppressorClassLogScope(void)::scope)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "CNoiseSuppressorV3.cpp";
    v29 = 1024;
    v30 = 497;
    _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d MultiRadixRealFFT_RealInPlaceTransform() returned an error.", buf, 0x12u);
  }

LABEL_3:
  vDSP_ztoc(&__Z, 1, *(a1 + 15), 2, v4);
  MEMORY[0x1E12BE7F0](*(a1 + 15), 1, *(a1 + 23), 1, *(a1 + 15), 1, v11);
  v14 = *a1;
  v15 = (v11 - v14);
  v16 = (v14 - v15);
  MEMORY[0x1E12BE5D0](*(a1 + 69), 1, *(a1 + 15), 1, a2, 1, v15);
  if (v16 >= 1)
  {
    v18 = 4 * v11 - 4 * v14;
    v19 = (a2 + v18);
    v20 = (*(a1 + 15) + v18);
    do
    {
      v21 = *v20++;
      result = v21;
      *v19++ = v21;
      --v16;
    }

    while (v16);
  }

  if (v15 >= 1)
  {
    v22 = *(a1 + 69);
    v23 = (*(a1 + 15) + 4 * *a1);
    do
    {
      v24 = *v23++;
      result = v24;
      *v22++ = v24;
      --v15;
    }

    while (v15);
  }

  return result;
}