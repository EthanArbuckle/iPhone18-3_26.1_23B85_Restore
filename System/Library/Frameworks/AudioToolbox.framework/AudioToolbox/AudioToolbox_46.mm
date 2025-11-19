void AUsubMAEC::myAecCore::sigOLA(void **this, float *a2, float *a3, DSPComplex *__C, float *a5, float *a6)
{
  vDSP_vclr(__C, 1, *(this + 733));
  v12 = *(this + 5);
  *a3 = a2[v12];
  memcpy(this[12], a2, v12 * 4);
  memcpy(this[13], a3, 4 * *(this + 5));
  v13 = *(this + 6);
  v23 = v13;
  if (*(this + 12) != 1.0)
  {
    MEMORY[0x1E12BE940](a2, 1, this + 6, v13.realp, 1, *(this + 5));
    MEMORY[0x1E12BE940](a3, 1, this + 6, this[13], 1, *(this + 5));
  }

  v14 = this[1];
  if (v14)
  {
    MultiRadixRealFFT::RealInPlaceTransform(v14, &v23, -1, *&v13.realp);
  }

  vDSP_ztoc(&v23, 1, __C, 2, *(this + 5));
  MEMORY[0x1E12BE7F0](__C, 1, this[10], 1, __C, 1, *(this + 4));
  v15 = *(this + 733);
  v16 = 4 * v15;
  if (*(this + 737) <= 1)
  {
    v19 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 1;
    do
    {
      memmove(&a5[v17], &a5[v17 + v15], v16);
      v15 = *(this + 733);
      v17 += v15;
      ++v18;
    }

    while (v18 < *(this + 737));
    v19 = v17;
  }

  memcpy(&a5[v19], __C, v16);
  vDSP_vclr(a6, 1, *(this + 736));
  v20 = *(this + 737);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = -1;
    do
    {
      MEMORY[0x1E12BE5D0](a6, 1, &a5[*(this + 733) * v21++ + *(this + 736) * (v20 + v22)], 1, a6, 1);
      v20 = *(this + 737);
      --v22;
    }

    while (v21 < v20);
  }
}

uint64_t IRSpatializer::getLatencyFrames(IRSpatializer *this)
{
  v1 = *(this + 38);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = (*(**(v1 + 24) + 80))(*(v1 + 24));
  if (*(v1 + 172))
  {
    return (result + 5);
  }

  else
  {
    return result;
  }
}

uint64_t IRSpatializer::processAccumulating(IRSpatializer *this, const float *a2, float *const *a3, int a4, float *const *a5, unsigned int a6, vDSP_Length a7, float a8, IR::ComplexDataCircBuffer *a9)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a6 == a4)
  {
    if (*(this + 16))
    {
      if ((*(this + 288) & 1) != 0 || *(this + 17) == 1)
      {
        *(this + 288) = 0;
        (*(**(*(this + 38) + 24) + 48))(*(*(this + 38) + 24), 0, **(this + 6));
        (*(**(*(this + 38) + 24) + 48))(*(*(this + 38) + 24), 1, *(*(this + 6) + 4));
        (*(**(*(this + 38) + 24) + 48))(*(*(this + 38) + 24), 2, *(*(this + 6) + 8));
        *(this + 17) = 0;
      }

      v16 = 0.0;
      if (*(*(this + 6) + 82))
      {
        v16 = a8;
      }

      v17 = *(this + 38);
      v18 = 3000.0;
      if (*(this + 73))
      {
        v18 = -1.0;
      }

      v17[40] = v18;
      __p.__r_.__value_.__r.__words[0] = a2;
      v19 = IR::IRProcessor::processMultipleInputs(v17, &__p, a5, 1u, a6, a7, v16, 0);
      v20 = *(*(*(this + 38) + 24) + 168);
      if (v20 >= a6)
      {
        v20 = a6;
      }

      if (v20)
      {
        v21 = 0;
        do
        {
          MEMORY[0x1E12BE5D0](a5[v21], 1, a3[v21], 1, a3[v21], 1, a7);
          ++v21;
          LODWORD(v22) = *(*(*(this + 38) + 24) + 168);
          if (v22 >= a6)
          {
            v22 = a6;
          }

          else
          {
            v22 = v22;
          }
        }

        while (v21 < v22);
      }

      *(this + 146) = *(*(this + 6) + 82);
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v25 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        std::string::basic_string[abi:ne200100]<0>(&v33, "IRSpatializer");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, &v33, "::");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v34, "processAccumulating");
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v37 = p_p;
        _os_log_debug_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }

      return 4294956429;
    }
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v24 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&v33, "IRSpatializer");
      v27 = std::string::append(&v33, "::", 2uLL);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = std::string::append(&v34, "processAccumulating", 0x13uLL);
      v30 = *&v29->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v37 = v31;
      v38 = 1024;
      v39 = a4;
      _os_log_debug_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEBUG, "%s: ERROR: cannot process with %d output channels", buf, 0x12u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }

    return 4294956445;
  }

  return v19;
}

void sub_1DDEAE4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

pthread_t IRSpatializer::reset(IR::IRProcessor **this)
{
  result = IR::IRProcessor::reset(this[38]);
  *(this + 17) = 1;
  *(this + 146) = *(this[6] + 82);
  return result;
}

uint64_t IRSpatializer::initialize(IRSpatializer *this, float a2, unsigned int a3, uint64_t a4)
{
  if (!a4)
  {
    __assert_rtn("initialize", "IRSpatializer.cpp", 28, "inMaxFramesPerSlice > 0");
  }

  if (a2 <= 0.0)
  {
    __assert_rtn("initialize", "IRSpatializer.cpp", 29, "inSampleRate > 0");
  }

  *(this + 2) = a2;
  *(this + 3) = a4;
  result = IR::IRProcessor::initialize(*(this + 38), a2, a4, 128);
  if (!result)
  {
    Spatializer::initialize(this, v7, a3);
    TailLength = IR::IRProcessor::getTailLength(*(this + 38));
    result = 0;
    *(this + 5) = TailLength;
  }

  return result;
}

void IRSpatializer::~IRSpatializer(IR::IRProcessor **this)
{
  *this = &unk_1F592ACB0;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 38, 0);
  Spatializer::~Spatializer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592ACB0;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 38, 0);

  Spatializer::~Spatializer(this);
}

void AUsubMAEC::myFilter::~myFilter(float ***this)
{
  freeMatrix(*(this + 17), this);
  freeMatrix(*(this + 17), this + 1);
  if (*(this + 16))
  {
    freeMatrix(*(this + 17), this + 2);
    freeMatrix(*(this + 17), this + 3);
    freeMatrix(*(this + 17), this + 4);
    freeMatrix(*(this + 17), this + 5);
  }
}

void *AUsubMAEC::myFilter::initFilter(uint64_t a1, _DWORD *a2)
{
  v3 = a2[6];
  *(a1 + 48) = v3;
  *(a1 + 52) = a2[3];
  *(a1 + 56) = a2[4];
  v4 = a2[13];
  *(a1 + 60) = v4;
  *(a1 + 64) = a2[14];
  v5 = a2[12];
  *(a1 + 68) = v5;
  v6 = v4 * v3;
  *a1 = allocMatrix(v5, v4 * v3);
  result = allocMatrix(*(a1 + 68), v6);
  *(a1 + 8) = result;
  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = *(a1 + 48) * v8;
    *(a1 + 16) = allocMatrix(*(a1 + 68), v9);
    *(a1 + 24) = allocMatrix(*(a1 + 68), v9);
    *(a1 + 32) = allocMatrix(*(a1 + 68), v9);
    result = allocMatrix(*(a1 + 68), v9);
    *(a1 + 40) = result;
  }

  return result;
}

float AUsubMAEC::myFilter::runFilter(AUsubMAEC::myFilter *this, int64x2_t *a2, DSPSplitComplex *a3, float **a4, float **a5, int *a6, int *a7, int a8)
{
  vDSP_vclr(a2->i64[0], 1, *(this + 12));
  vDSP_vclr(a2->i64[1], 1, *(this + 12));
  v77 = a8;
  if (a8)
  {
    vDSP_vclr(a3->realp, 1, *(this + 12));
    vDSP_vclr(a3->imagp, 1, *(this + 12));
  }

  v15 = *a2;
  __D = vaddq_s64(*a2, vdupq_n_s64(4uLL));
  if (*(this + 17) < 1)
  {
    v70 = v15.i64[1];
  }

  else
  {
    v16 = 0;
    do
    {
      if (*(this + 15) >= 1)
      {
        v17 = 0;
        do
        {
          v18 = *(this + 12);
          v19 = 4 * v18 * v17 + 4;
          v20 = (*(*this + 8 * v16) + v19);
          v21 = (*(*(this + 1) + 8 * v16) + v19);
          v22 = 4 * a6[v17] * v18 + 4;
          v23 = (a4[v16] + v22);
          v24 = a5[v16];
          __B.realp = v20;
          __B.imagp = v21;
          __A.realp = v23;
          __A.imagp = (v24 + v22);
          vDSP_zvma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, *(this + 14));
          ++v17;
        }

        while (v17 < *(this + 15));
      }

      if (*(this + 16) >= 1)
      {
        v25 = 0;
        do
        {
          v26 = *(this + 12);
          v27 = a7[v25] * v26;
          v28 = 4 * v26 * v25 + 4;
          v29 = (*(*(this + 3) + 8 * v16) + v28);
          v30 = &a4[v16][v27];
          v31 = &a5[v16][v27];
          v82.realp = (*(*(this + 2) + 8 * v16) + v28);
          v82.imagp = v29;
          v81.realp = v30;
          v81.imagp = v31;
          vDSP_zvma(&v81, 1, &v82, 1, &__D, 1, &__D, 1, *(this + 14));
          v32 = (*(*(this + 5) + 8 * v16) + v28);
          v33 = &a4[v16][v27 + 2];
          v34 = &a5[v16][v27 + 2];
          v82.realp = (*(*(this + 4) + 8 * v16) + v28);
          v82.imagp = v32;
          v81.realp = v33;
          v81.imagp = v34;
          vDSP_zvma(&v81, 1, &v82, 1, &__D, 1, &__D, 1, *(this + 14));
          ++v25;
        }

        while (v25 < *(this + 16));
      }

      if (!v16 && v77)
      {
        memcpy(a3->realp + 1, (a2->i64[0] + 4), 4 * *(this + 14));
        memcpy(a3->imagp + 1, (a2->i64[1] + 4), 4 * *(this + 14));
      }

      ++v16;
      v35 = *(this + 17);
    }

    while (v16 < v35);
    if (v35 > 0)
    {
      v36 = 0;
      v37 = *this;
      v38 = *(this + 15);
      v39 = *(this + 16);
      do
      {
        v40 = a4[v36];
        if (v38 >= 1)
        {
          v41 = *(v37 + 8 * v36);
          v42 = a2->i64[0];
          v43 = *(this + 12);
          v44 = *(this + 13);
          v45 = a6;
          v46 = v38;
          do
          {
            v47 = *v45++;
            *v42 = *v42 + (*v41 * v40[v47 * v43]);
            *v15.i32 = v42[v44] + (v41[v44] * v40[v44 + v47 * v43]);
            v42[v44] = *v15.i32;
            v41 += v43;
            --v46;
          }

          while (v46);
        }

        if (v39 > 0)
        {
          v48 = *(*(this + 2) + 8 * v36);
          v49 = *(*(this + 3) + 8 * v36);
          v50 = a5[v36];
          v51 = a2->i64[0];
          v52 = a2->i64[1];
          v53 = *(this + 12);
          v54 = *(this + 13);
          v55 = 4 * v53;
          v56 = a7;
          v57 = v39;
          do
          {
            v58 = *v56++;
            v59 = 4 * v58 * v53 + 4;
            *v51 = *v51 + ((*v48 * *(v40 + v59)) - (*v49 * *(v50 + v59)));
            *v52 = *v52 + ((*v49 * *(v40 + v59)) + (*v48 * *(v50 + v59)));
            v60 = v58 * v53 + v54 - 1;
            v51[v54] = v51[v54] + ((v48[v54] * v40[v60]) - (v49[v54] * v50[v60]));
            v52[v54] = v52[v54] + ((v49[v54] * v40[v60]) + (v48[v54] * v50[v60]));
            v49 = (v49 + v55);
            v48 = (v48 + v55);
            --v57;
          }

          while (v57);
          v61 = *(*(this + 4) + 8 * v36);
          v62 = *(*(this + 5) + 8 * v36);
          v63 = a2->i64[0];
          v64 = a7;
          v65 = v39;
          do
          {
            v66 = *v64++;
            v67 = 4 * v66 * v53 + 8;
            *v63 = *v63 + ((*v61 * *(v40 + v67)) - (*v62 * *(v50 + v67)));
            *v52 = *v52 + ((*v62 * *(v40 + v67)) + (*v61 * *(v50 + v67)));
            v68 = v66 * v53 + v54 - 2;
            v63[v54] = v63[v54] + ((v61[v54] * v40[v68]) - (v62[v54] * v50[v68]));
            *v15.i32 = v52[v54] + ((v62[v54] * v40[v68]) + (v61[v54] * v50[v68]));
            v52[v54] = *v15.i32;
            v62 = (v62 + v55);
            v61 = (v61 + v55);
            --v65;
          }

          while (v65);
        }

        ++v36;
      }

      while (v36 != v35);
      v69 = a2->i64[1];
      *v69 = 0.0;
      v69[*(this + 13)] = 0.0;
      return *v15.i32;
    }

    v70 = a2->i64[1];
  }

  *v70 = 0.0;
  v71 = *(this + 13);
  v70[v71] = 0.0;
  if (v77)
  {
    v72 = a2->i64[0];
    realp = a3->realp;
    imagp = a3->imagp;
    *realp = *a2->i64[0];
    *imagp = *v70;
    realp[v71] = v72[v71];
    *v15.i32 = v70[v71];
    imagp[v71] = *v15.i32;
  }

  return *v15.i32;
}

os_log_t ___Z19getMatrixUtilityLogv_block_invoke_16284()
{
  result = os_log_create("com.apple.coreaudio", "AudioDSPMatrixUtility");
  getMatrixUtilityLog(void)::gLog = result;
  return result;
}

void InverseWithMoorePenrose::~InverseWithMoorePenrose(InverseWithMoorePenrose *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (getMatrixUtilityLog(void)::onceToken != -1)
  {
    dispatch_once(&getMatrixUtilityLog(void)::onceToken, &__block_literal_global_16277);
  }

  v2 = getMatrixUtilityLog(void)::gLog;
  if (os_log_type_enabled(getMatrixUtilityLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = this;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%p] destructed", &v6, 0xCu);
  }

  v3 = *(this + 80);
  if (v3)
  {
    *(this + 81) = v3;
    operator delete(v3);
  }

  v4 = *(this + 75);
  if (v4)
  {
    *(this + 76) = v4;
    operator delete(v4);
  }

  MoorePenrose::~MoorePenrose((this + 40));
  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

uint64_t NeuralNetBNNS<signed char>::process(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  memcpy(*(*(a1 + 48) + 792), *a2, *(a2 + 8) - *a2);
  if (!*(v2 + 44))
  {
    v46 = -1;
    return *(v2 + 48) + 968 * v46 + 816;
  }

  v3 = 0;
  v4 = -152;
  v48 = v2;
  do
  {
    if (v4 != -152)
    {
      memcpy(*(*(v2 + 48) + v4 + 944), *(*(v2 + 48) + v4), *(*(v2 + 48) + v4 + 8) - *(*(v2 + 48) + v4));
    }

    v5 = *(v2 + 48);
    v6 = v5 + v4;
    v7 = *(v5 + v4 + 160);
    v8 = *(v5 + v4 + 512);
    *&v9 = 1.0 / *(v5 + v4 + 316);
    v53 = -(*(v5 + v4 + 320) * *&v9);
    v54 = v9;
    MEMORY[0x1E12BE910](*(v5 + v4 + 944), 1, &v54, &v53, *(v5 + v4 + 944), 1, v7);
    v10 = *(v2 + 40);
    if (v10)
    {
      HIDWORD(v12) = *(v2 + 40);
      LODWORD(v12) = HIDWORD(v12);
      v11 = v12 >> 3;
      if (v11 > 4)
      {
        __B = -128.0;
        v13 = 127.0;
      }

      else
      {
        __B = flt_1DE10725C[v11];
        v13 = flt_1DE107270[v11];
      }

      __C = v13;
      vDSP_vclip(*(v6 + 944), 1, &__B, &__C, *(v6 + 944), 1, v7);
      v10 = *(v2 + 40);
    }

    HIDWORD(v15) = v10;
    LODWORD(v15) = v10;
    v14 = v15 >> 3;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (v14 == 4)
        {
          vDSP_vfixr32(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
          goto LABEL_19;
        }

LABEL_16:
        vDSP_vfixr8(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
        goto LABEL_19;
      }

      vDSP_vfixr16(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
    }

    else
    {
      if (v14)
      {
        goto LABEL_16;
      }

      memcpy(*(v5 + v4 + 1064), *(v6 + 944), 4 * v7);
    }

LABEL_19:
    v16 = v5 + v4;
    if (*(v5 + v4 + 1116) != 1)
    {
      goto LABEL_34;
    }

    v17 = 1.0 / *(v16 + 668);
    __C = -(*(v16 + 672) * v17);
    __B = v17;
    MEMORY[0x1E12BE910](*(v16 + 968), 1, &__B, &__C, *(v16 + 968), 1, v8);
    v18 = *(v2 + 40);
    if (v18)
    {
      HIDWORD(v20) = *(v2 + 40);
      LODWORD(v20) = HIDWORD(v20);
      v19 = v20 >> 3;
      if (v19 > 4)
      {
        v50 = -128.0;
        v21 = 127.0;
      }

      else
      {
        v50 = flt_1DE10725C[v19];
        v21 = flt_1DE107270[v19];
      }

      v49 = v21;
      vDSP_vclip(*(v16 + 968), 1, &v50, &v49, *(v16 + 968), 1, v8);
      v18 = *(v2 + 40);
    }

    HIDWORD(v23) = v18;
    LODWORD(v23) = v18;
    v22 = v23 >> 3;
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        if (v22 == 4)
        {
          vDSP_vfixr32(*(v16 + 968), 1, (*(v5 + v4 + 1064) + v7), 1, v8);
          goto LABEL_34;
        }

LABEL_31:
        vDSP_vfixr8(*(v16 + 968), 1, (*(v5 + v4 + 1064) + v7), 1, v8);
        goto LABEL_34;
      }

      vDSP_vfixr16(*(v16 + 968), 1, (*(v5 + v4 + 1064) + v7), 1, v8);
    }

    else
    {
      if (v22)
      {
        goto LABEL_31;
      }

      memcpy((*(v5 + v4 + 1064) + v7), *(v16 + 968), 4 * v8);
    }

LABEL_34:
    v24 = *(v2 + 48);
    *&v54 = 0.0;
    v25 = *(v24 + v4 + 160);
    v26 = *(v24 + v4 + 512);
    v27 = *(v24 + v4 + 496);
    v28 = *(v24 + v4 + 316);
    HIDWORD(v30) = *(v2 + 40);
    LODWORD(v30) = HIDWORD(v30);
    v29 = v30 >> 3;
    if (v29 > 1)
    {
      if (v29 != 2)
      {
        if (v29 == 4)
        {
          vDSP_vflt32(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
          goto LABEL_43;
        }

LABEL_40:
        vDSP_vflt8(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
        goto LABEL_43;
      }

      vDSP_vflt16(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
    }

    else
    {
      if (v29)
      {
        goto LABEL_40;
      }

      memcpy(*(v24 + v4 + 944), *(v24 + v4 + 1064), 4 * v25);
    }

LABEL_43:
    v31 = v24 + v4;
    vDSP_sve(*(v24 + v4 + 944), 1, &v54, v25);
    v32 = (v27 * v28) * *&v54;
    *&v54 = v32;
    if (*(v24 + v4 + 1116) != 1)
    {
      goto LABEL_54;
    }

    v33 = *(v31 + 848);
    v34 = *(v31 + 668);
    v53 = 0.0;
    HIDWORD(v36) = *(v2 + 40);
    LODWORD(v36) = HIDWORD(v36);
    v35 = v36 >> 3;
    if (v35 <= 1)
    {
      if (!v35)
      {
        memcpy(*(v24 + v4 + 968), (*(v24 + v4 + 1064) + v25), 4 * v26);
        goto LABEL_53;
      }

LABEL_50:
      vDSP_vflt8((*(v24 + v4 + 1064) + v25), 1, *(v24 + v4 + 968), 1, v26);
      goto LABEL_53;
    }

    if (v35 == 2)
    {
      vDSP_vflt16((*(v24 + v4 + 1064) + v25), 1, *(v24 + v4 + 968), 1, v26);
      goto LABEL_53;
    }

    if (v35 != 4)
    {
      goto LABEL_50;
    }

    vDSP_vflt32((*(v24 + v4 + 1064) + v25), 1, *(v24 + v4 + 968), 1, v26);
LABEL_53:
    vDSP_sve(*(v24 + v4 + 968), 1, &v53, v26);
    v32 = ((v33 * v34) * v53) + *&v54;
LABEL_54:
    v37 = *(v2 + 48);
    v53 = v32;
    v38 = v37 + v4;
    v39 = *(v37 + v4 + 512);
    v40 = *(v37 + v4 + 936);
    v41 = *(v37 + v4 + 1064);
    if (*(v37 + v4 + 1116) == 1)
    {
      BNNSFilterApply(v40, v41, *(v38 + 992));
      MEMORY[0x1E12BE8A0](*(v38 + 992), 1, &v53, *(v38 + 992), 1, 4 * v39);
      v42 = *(v38 + 992);
      __E = *(v38 + 1016);
      NeuralNetBNNS<signed char>::applyActivationFunction(v42, v42, 8, 3 * v39, 0.0, 0.0);
      v54 = v39;
      vvtanhf(&v42[3 * v39], &v42[3 * v39], &v54);
      vDSP_vmma(v42, 1, __E, 1, &v42[v39], 1, &v42[3 * v39], 1, __E, 1, v39);
      v44 = *(v38 + 968);
      v54 = v39;
      vvtanhf(v44, __E, &v54);
      v2 = v48;
      MEMORY[0x1E12BE7F0](&v42[2 * v39], 1, *(v38 + 968), 1, *(v38 + 968), 1, v39);
    }

    else
    {
      BNNSFilterApply(v40, v41, *(v38 + 968));
      MEMORY[0x1E12BE8A0](*(v38 + 968), 1, &v53, *(v38 + 968), 1, v39);
      NeuralNetBNNS<signed char>::applyActivationFunction(*(v38 + 968), *(v38 + 968), *(v38 + 1112), v39, *(v38 + 860), *(v38 + 864));
    }

    ++v3;
    v45 = *(v2 + 44);
    v4 += 968;
  }

  while (v3 < v45);
  v46 = v45 - 1;
  return *(v2 + 48) + 968 * v46 + 816;
}

void NeuralNetBNNS<signed char>::applyActivationFunction(const float *a1, float *a2, int a3, int a4, float a5, float a6)
{
  v7 = a2;
  v8 = a1;
  __N_4 = a6;
  v23 = a5;
  __N = a4;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 != 5)
      {
        vvfabsf(a2, a1, &__N);
        return;
      }

      MEMORY[0x1E12BE940](a1, 1, &__N_4, a2, 1, a4);
      vvtanhf(v7, v7, &__N);
      v15 = __N;
      p_B = &v23;
    }

    else
    {
      if (a3 != 9)
      {
        if (a3 == 8)
        {
          __C = 1.0;
          __B = 0.0;
          v17 = 1045220557;
          v18 = 1056964608;
          MEMORY[0x1E12BE910](a1, 1, &v17, &v18, a2, 1, a4);
          vDSP_vclip(v7, 1, &__B, &__C, v7, 1, __N);
        }

        else if (a3 == 7 && a4)
        {
          v9 = a4;
          do
          {
            v10 = *v8;
            if (*v8 < 0.0)
            {
              v10 = (expf(v10) + -1.0) * a5;
            }

            *v7++ = v10;
            ++v8;
            --v9;
          }

          while (v9);
        }

        return;
      }

      __B = 0.0;
      vvexpf(a2, a1, &__N);
      vDSP_sve(v7, 1, &__B, __N);
      __B = 1.0 / __B;
      v15 = __N;
      p_B = &__B;
    }

    MEMORY[0x1E12BE940](v7, 1, p_B, v7, 1, v15);
    return;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      __B = 0.5;
      MEMORY[0x1E12BE940](a1, 1, &__B, a2, 1, a4);
      vvtanhf(v7, v7, &__N);
      MEMORY[0x1E12BE910](v7, 1, &__B, &__B, v7, 1, __N);
    }

    else
    {
      vvtanhf(a2, a1, &__N);
    }
  }

  else if (a3 == 1)
  {
    __B = 0.0;
    vDSP_vthr(a1, 1, &__B, a2, 1, a4);
  }

  else if (a3 == 2 && a4)
  {
    v11 = a4;
    do
    {
      v12 = *v8++;
      v13 = v12;
      v14 = v12 * a5;
      if (v12 < 0.0)
      {
        v13 = v14;
      }

      *v7++ = v13;
      --v11;
    }

    while (v11);
  }
}

uint64_t NeuralNetBNNS<signed char>::setEmbedding(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    if (!*v1)
    {
      return 4294956433;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "NeuralNetImpl.hpp";
    v6 = 1024;
    v7 = 211;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d NeuralNetBNNS: Embeddings not supported in BNNS mode", &v4, 0x12u);
  }

  return 4294956433;
}

{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    if (!*v1)
    {
      return 4294956433;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "NeuralNetImpl.hpp";
    v6 = 1024;
    v7 = 203;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d NeuralNetBNNS: Embeddings not supported in BNNS mode", &v4, 0x12u);
  }

  return 4294956433;
}

void NeuralNetBNNS<signed char>::cleanup(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 48) + v2;
      vDSP_vclr(*(v4 + 792), 1, (*(v4 + 800) - *(v4 + 792)) >> 2);
      vDSP_vclr(*(v4 + 816), 1, (*(v4 + 824) - *(v4 + 816)) >> 2);
      vDSP_vclr(*(v4 + 840), 1, (*(v4 + 848) - *(v4 + 840)) >> 2);
      vDSP_vclr(*(v4 + 864), 1, (*(v4 + 872) - *(v4 + 864)) >> 2);
      bzero(*(v4 + 912), *(v4 + 920) - *(v4 + 912));
      ++v3;
      v2 += 968;
    }

    while (v3 < *(a1 + 44));
  }
}

void NeuralNetBNNS<signed char>::~NeuralNetBNNS(void *a1)
{
  NeuralNetBNNS<signed char>::~NeuralNetBNNS(a1);

  JUMPOUT(0x1E12BD160);
}

void *NeuralNetBNNS<signed char>::~NeuralNetBNNS(void *a1)
{
  *a1 = &unk_1F592AEA0;
  v3 = (a1 + 6);
  v2 = a1[6];
  v4 = a1[7];
  if (v4 != v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(v2 + 968 * v5 + 784);
      if (v7)
      {
        BNNSFilterDestroy(v7);
        v2 = a1[6];
        v4 = a1[7];
        *(v2 + 968 * v5 + 784) = 0;
      }

      v5 = v6;
      v8 = 0x1B810ECF56BE69C9 * ((v4 - v2) >> 3);
      v9 = v8 >= v6;
      v10 = v8 == v6++;
    }

    while (!v10 && v9);
  }

  v13 = v3;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](&v13);
  *a1 = &unk_1F592AE40;
  v11 = a1[4];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return a1;
}

uint64_t NeuralNetBNNS<short>::process(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  memcpy(*(*(a1 + 48) + 792), *a2, *(a2 + 8) - *a2);
  if (!*(v2 + 44))
  {
    v46 = -1;
    return *(v2 + 48) + 968 * v46 + 816;
  }

  v3 = 0;
  v4 = -152;
  v48 = v2;
  do
  {
    if (v4 != -152)
    {
      memcpy(*(*(v2 + 48) + v4 + 944), *(*(v2 + 48) + v4), *(*(v2 + 48) + v4 + 8) - *(*(v2 + 48) + v4));
    }

    v5 = *(v2 + 48);
    v6 = v5 + v4;
    v7 = *(v5 + v4 + 160);
    v8 = *(v5 + v4 + 512);
    *&v9 = 1.0 / *(v5 + v4 + 316);
    v53 = -(*(v5 + v4 + 320) * *&v9);
    v54 = v9;
    MEMORY[0x1E12BE910](*(v5 + v4 + 944), 1, &v54, &v53, *(v5 + v4 + 944), 1, v7);
    v10 = *(v2 + 40);
    if (v10)
    {
      HIDWORD(v12) = *(v2 + 40);
      LODWORD(v12) = HIDWORD(v12);
      v11 = v12 >> 3;
      if (v11 > 4)
      {
        __B = -128.0;
        v13 = 127.0;
      }

      else
      {
        __B = flt_1DE10725C[v11];
        v13 = flt_1DE107270[v11];
      }

      __C = v13;
      vDSP_vclip(*(v6 + 944), 1, &__B, &__C, *(v6 + 944), 1, v7);
      v10 = *(v2 + 40);
    }

    HIDWORD(v15) = v10;
    LODWORD(v15) = v10;
    v14 = v15 >> 3;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (v14 == 4)
        {
          vDSP_vfixr32(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
          goto LABEL_19;
        }

LABEL_16:
        vDSP_vfixr8(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
        goto LABEL_19;
      }

      vDSP_vfixr16(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
    }

    else
    {
      if (v14)
      {
        goto LABEL_16;
      }

      memcpy(*(v5 + v4 + 1064), *(v6 + 944), 4 * v7);
    }

LABEL_19:
    v16 = v5 + v4;
    if (*(v5 + v4 + 1116) != 1)
    {
      goto LABEL_34;
    }

    v17 = 1.0 / *(v16 + 668);
    __C = -(*(v16 + 672) * v17);
    __B = v17;
    MEMORY[0x1E12BE910](*(v16 + 968), 1, &__B, &__C, *(v16 + 968), 1, v8);
    v18 = *(v2 + 40);
    if (v18)
    {
      HIDWORD(v20) = *(v2 + 40);
      LODWORD(v20) = HIDWORD(v20);
      v19 = v20 >> 3;
      if (v19 > 4)
      {
        v50 = -128.0;
        v21 = 127.0;
      }

      else
      {
        v50 = flt_1DE10725C[v19];
        v21 = flt_1DE107270[v19];
      }

      v49 = v21;
      vDSP_vclip(*(v16 + 968), 1, &v50, &v49, *(v16 + 968), 1, v8);
      v18 = *(v2 + 40);
    }

    HIDWORD(v23) = v18;
    LODWORD(v23) = v18;
    v22 = v23 >> 3;
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        if (v22 == 4)
        {
          vDSP_vfixr32(*(v16 + 968), 1, (*(v5 + v4 + 1064) + 2 * v7), 1, v8);
          goto LABEL_34;
        }

LABEL_31:
        vDSP_vfixr8(*(v16 + 968), 1, (*(v5 + v4 + 1064) + 2 * v7), 1, v8);
        goto LABEL_34;
      }

      vDSP_vfixr16(*(v16 + 968), 1, (*(v5 + v4 + 1064) + 2 * v7), 1, v8);
    }

    else
    {
      if (v22)
      {
        goto LABEL_31;
      }

      memcpy((*(v5 + v4 + 1064) + 2 * v7), *(v16 + 968), 4 * v8);
    }

LABEL_34:
    v24 = *(v2 + 48);
    *&v54 = 0.0;
    v25 = *(v24 + v4 + 160);
    v26 = *(v24 + v4 + 512);
    v27 = *(v24 + v4 + 496);
    v28 = *(v24 + v4 + 316);
    HIDWORD(v30) = *(v2 + 40);
    LODWORD(v30) = HIDWORD(v30);
    v29 = v30 >> 3;
    if (v29 > 1)
    {
      if (v29 != 2)
      {
        if (v29 == 4)
        {
          vDSP_vflt32(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
          goto LABEL_43;
        }

LABEL_40:
        vDSP_vflt8(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
        goto LABEL_43;
      }

      vDSP_vflt16(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
    }

    else
    {
      if (v29)
      {
        goto LABEL_40;
      }

      memcpy(*(v24 + v4 + 944), *(v24 + v4 + 1064), 4 * v25);
    }

LABEL_43:
    v31 = v24 + v4;
    vDSP_sve(*(v24 + v4 + 944), 1, &v54, v25);
    v32 = (v27 * v28) * *&v54;
    *&v54 = v32;
    if (*(v24 + v4 + 1116) != 1)
    {
      goto LABEL_54;
    }

    v33 = *(v31 + 848);
    v34 = *(v31 + 668);
    v53 = 0.0;
    HIDWORD(v36) = *(v2 + 40);
    LODWORD(v36) = HIDWORD(v36);
    v35 = v36 >> 3;
    if (v35 <= 1)
    {
      if (!v35)
      {
        memcpy(*(v24 + v4 + 968), (*(v24 + v4 + 1064) + 2 * v25), 4 * v26);
        goto LABEL_53;
      }

LABEL_50:
      vDSP_vflt8((*(v24 + v4 + 1064) + 2 * v25), 1, *(v24 + v4 + 968), 1, v26);
      goto LABEL_53;
    }

    if (v35 == 2)
    {
      vDSP_vflt16((*(v24 + v4 + 1064) + 2 * v25), 1, *(v24 + v4 + 968), 1, v26);
      goto LABEL_53;
    }

    if (v35 != 4)
    {
      goto LABEL_50;
    }

    vDSP_vflt32((*(v24 + v4 + 1064) + 2 * v25), 1, *(v24 + v4 + 968), 1, v26);
LABEL_53:
    vDSP_sve(*(v24 + v4 + 968), 1, &v53, v26);
    v32 = ((v33 * v34) * v53) + *&v54;
LABEL_54:
    v37 = *(v2 + 48);
    v53 = v32;
    v38 = v37 + v4;
    v39 = *(v37 + v4 + 512);
    v40 = *(v37 + v4 + 936);
    v41 = *(v37 + v4 + 1064);
    if (*(v37 + v4 + 1116) == 1)
    {
      BNNSFilterApply(v40, v41, *(v38 + 992));
      MEMORY[0x1E12BE8A0](*(v38 + 992), 1, &v53, *(v38 + 992), 1, 4 * v39);
      v42 = *(v38 + 992);
      __E = *(v38 + 1016);
      NeuralNetBNNS<signed char>::applyActivationFunction(v42, v42, 8, 3 * v39, 0.0, 0.0);
      v54 = v39;
      vvtanhf(&v42[3 * v39], &v42[3 * v39], &v54);
      vDSP_vmma(v42, 1, __E, 1, &v42[v39], 1, &v42[3 * v39], 1, __E, 1, v39);
      v44 = *(v38 + 968);
      v54 = v39;
      vvtanhf(v44, __E, &v54);
      v2 = v48;
      MEMORY[0x1E12BE7F0](&v42[2 * v39], 1, *(v38 + 968), 1, *(v38 + 968), 1, v39);
    }

    else
    {
      BNNSFilterApply(v40, v41, *(v38 + 968));
      MEMORY[0x1E12BE8A0](*(v38 + 968), 1, &v53, *(v38 + 968), 1, v39);
      NeuralNetBNNS<signed char>::applyActivationFunction(*(v38 + 968), *(v38 + 968), *(v38 + 1112), v39, *(v38 + 860), *(v38 + 864));
    }

    ++v3;
    v45 = *(v2 + 44);
    v4 += 968;
  }

  while (v3 < v45);
  v46 = v45 - 1;
  return *(v2 + 48) + 968 * v46 + 816;
}

uint64_t NeuralNetBNNS<short>::setEmbedding(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    if (!*v1)
    {
      return 4294956433;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "NeuralNetImpl.hpp";
    v6 = 1024;
    v7 = 211;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d NeuralNetBNNS: Embeddings not supported in BNNS mode", &v4, 0x12u);
  }

  return 4294956433;
}

{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    if (!*v1)
    {
      return 4294956433;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "NeuralNetImpl.hpp";
    v6 = 1024;
    v7 = 203;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d NeuralNetBNNS: Embeddings not supported in BNNS mode", &v4, 0x12u);
  }

  return 4294956433;
}

void NeuralNetBNNS<short>::cleanup(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 48) + v2;
      vDSP_vclr(*(v4 + 792), 1, (*(v4 + 800) - *(v4 + 792)) >> 2);
      vDSP_vclr(*(v4 + 816), 1, (*(v4 + 824) - *(v4 + 816)) >> 2);
      vDSP_vclr(*(v4 + 840), 1, (*(v4 + 848) - *(v4 + 840)) >> 2);
      vDSP_vclr(*(v4 + 864), 1, (*(v4 + 872) - *(v4 + 864)) >> 2);
      bzero(*(v4 + 912), *(v4 + 920) - *(v4 + 912));
      ++v3;
      v2 += 968;
    }

    while (v3 < *(a1 + 44));
  }
}

void NeuralNetBNNS<short>::~NeuralNetBNNS(void *a1)
{
  NeuralNetBNNS<short>::~NeuralNetBNNS(a1);

  JUMPOUT(0x1E12BD160);
}

void *NeuralNetBNNS<short>::~NeuralNetBNNS(void *a1)
{
  *a1 = &unk_1F592AF00;
  v3 = (a1 + 6);
  v2 = a1[6];
  v4 = a1[7];
  if (v4 != v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(v2 + 968 * v5 + 784);
      if (v7)
      {
        BNNSFilterDestroy(v7);
        v2 = a1[6];
        v4 = a1[7];
        *(v2 + 968 * v5 + 784) = 0;
      }

      v5 = v6;
      v8 = 0x1B810ECF56BE69C9 * ((v4 - v2) >> 3);
      v9 = v8 >= v6;
      v10 = v8 == v6++;
    }

    while (!v10 && v9);
  }

  v13 = v3;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](&v13);
  *a1 = &unk_1F592AE40;
  v11 = a1[4];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return a1;
}

uint64_t NeuralNetBNNS<int>::process(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  memcpy(*(*(a1 + 48) + 792), *a2, *(a2 + 8) - *a2);
  if (!*(v2 + 44))
  {
    v46 = -1;
    return *(v2 + 48) + 968 * v46 + 816;
  }

  v3 = 0;
  v4 = -152;
  v48 = v2;
  do
  {
    if (v4 != -152)
    {
      memcpy(*(*(v2 + 48) + v4 + 944), *(*(v2 + 48) + v4), *(*(v2 + 48) + v4 + 8) - *(*(v2 + 48) + v4));
    }

    v5 = *(v2 + 48);
    v6 = v5 + v4;
    v7 = *(v5 + v4 + 160);
    v8 = *(v5 + v4 + 512);
    *&v9 = 1.0 / *(v5 + v4 + 316);
    v53 = -(*(v5 + v4 + 320) * *&v9);
    v54 = v9;
    MEMORY[0x1E12BE910](*(v5 + v4 + 944), 1, &v54, &v53, *(v5 + v4 + 944), 1, v7);
    v10 = *(v2 + 40);
    if (v10)
    {
      HIDWORD(v12) = *(v2 + 40);
      LODWORD(v12) = HIDWORD(v12);
      v11 = v12 >> 3;
      if (v11 > 4)
      {
        __B = -128.0;
        v13 = 127.0;
      }

      else
      {
        __B = flt_1DE10725C[v11];
        v13 = flt_1DE107270[v11];
      }

      __C = v13;
      vDSP_vclip(*(v6 + 944), 1, &__B, &__C, *(v6 + 944), 1, v7);
      v10 = *(v2 + 40);
    }

    HIDWORD(v15) = v10;
    LODWORD(v15) = v10;
    v14 = v15 >> 3;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (v14 == 4)
        {
          vDSP_vfixr32(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
          goto LABEL_19;
        }

LABEL_16:
        vDSP_vfixr8(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
        goto LABEL_19;
      }

      vDSP_vfixr16(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
    }

    else
    {
      if (v14)
      {
        goto LABEL_16;
      }

      memcpy(*(v5 + v4 + 1064), *(v6 + 944), 4 * v7);
    }

LABEL_19:
    v16 = v5 + v4;
    if (*(v5 + v4 + 1116) != 1)
    {
      goto LABEL_34;
    }

    v17 = 1.0 / *(v16 + 668);
    __C = -(*(v16 + 672) * v17);
    __B = v17;
    MEMORY[0x1E12BE910](*(v16 + 968), 1, &__B, &__C, *(v16 + 968), 1, v8);
    v18 = *(v2 + 40);
    if (v18)
    {
      HIDWORD(v20) = *(v2 + 40);
      LODWORD(v20) = HIDWORD(v20);
      v19 = v20 >> 3;
      if (v19 > 4)
      {
        v50 = -128.0;
        v21 = 127.0;
      }

      else
      {
        v50 = flt_1DE10725C[v19];
        v21 = flt_1DE107270[v19];
      }

      v49 = v21;
      vDSP_vclip(*(v16 + 968), 1, &v50, &v49, *(v16 + 968), 1, v8);
      v18 = *(v2 + 40);
    }

    HIDWORD(v23) = v18;
    LODWORD(v23) = v18;
    v22 = v23 >> 3;
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        if (v22 == 4)
        {
          vDSP_vfixr32(*(v16 + 968), 1, (*(v5 + v4 + 1064) + 4 * v7), 1, v8);
          goto LABEL_34;
        }

LABEL_31:
        vDSP_vfixr8(*(v16 + 968), 1, (*(v5 + v4 + 1064) + 4 * v7), 1, v8);
        goto LABEL_34;
      }

      vDSP_vfixr16(*(v16 + 968), 1, (*(v5 + v4 + 1064) + 4 * v7), 1, v8);
    }

    else
    {
      if (v22)
      {
        goto LABEL_31;
      }

      memcpy((*(v5 + v4 + 1064) + 4 * v7), *(v16 + 968), 4 * v8);
    }

LABEL_34:
    v24 = *(v2 + 48);
    *&v54 = 0.0;
    v25 = *(v24 + v4 + 160);
    v26 = *(v24 + v4 + 512);
    v27 = *(v24 + v4 + 496);
    v28 = *(v24 + v4 + 316);
    HIDWORD(v30) = *(v2 + 40);
    LODWORD(v30) = HIDWORD(v30);
    v29 = v30 >> 3;
    if (v29 > 1)
    {
      if (v29 != 2)
      {
        if (v29 == 4)
        {
          vDSP_vflt32(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
          goto LABEL_43;
        }

LABEL_40:
        vDSP_vflt8(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
        goto LABEL_43;
      }

      vDSP_vflt16(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
    }

    else
    {
      if (v29)
      {
        goto LABEL_40;
      }

      memcpy(*(v24 + v4 + 944), *(v24 + v4 + 1064), 4 * v25);
    }

LABEL_43:
    v31 = v24 + v4;
    vDSP_sve(*(v24 + v4 + 944), 1, &v54, v25);
    v32 = (v27 * v28) * *&v54;
    *&v54 = v32;
    if (*(v24 + v4 + 1116) != 1)
    {
      goto LABEL_54;
    }

    v33 = *(v31 + 848);
    v34 = *(v31 + 668);
    v53 = 0.0;
    HIDWORD(v36) = *(v2 + 40);
    LODWORD(v36) = HIDWORD(v36);
    v35 = v36 >> 3;
    if (v35 <= 1)
    {
      if (!v35)
      {
        memcpy(*(v24 + v4 + 968), (*(v24 + v4 + 1064) + 4 * v25), 4 * v26);
        goto LABEL_53;
      }

LABEL_50:
      vDSP_vflt8((*(v24 + v4 + 1064) + 4 * v25), 1, *(v24 + v4 + 968), 1, v26);
      goto LABEL_53;
    }

    if (v35 == 2)
    {
      vDSP_vflt16((*(v24 + v4 + 1064) + 4 * v25), 1, *(v24 + v4 + 968), 1, v26);
      goto LABEL_53;
    }

    if (v35 != 4)
    {
      goto LABEL_50;
    }

    vDSP_vflt32((*(v24 + v4 + 1064) + 4 * v25), 1, *(v24 + v4 + 968), 1, v26);
LABEL_53:
    vDSP_sve(*(v24 + v4 + 968), 1, &v53, v26);
    v32 = ((v33 * v34) * v53) + *&v54;
LABEL_54:
    v37 = *(v2 + 48);
    v53 = v32;
    v38 = v37 + v4;
    v39 = *(v37 + v4 + 512);
    v40 = *(v37 + v4 + 936);
    v41 = *(v37 + v4 + 1064);
    if (*(v37 + v4 + 1116) == 1)
    {
      BNNSFilterApply(v40, v41, *(v38 + 992));
      MEMORY[0x1E12BE8A0](*(v38 + 992), 1, &v53, *(v38 + 992), 1, 4 * v39);
      v42 = *(v38 + 992);
      __E = *(v38 + 1016);
      NeuralNetBNNS<signed char>::applyActivationFunction(v42, v42, 8, 3 * v39, 0.0, 0.0);
      v54 = v39;
      vvtanhf(&v42[3 * v39], &v42[3 * v39], &v54);
      vDSP_vmma(v42, 1, __E, 1, &v42[v39], 1, &v42[3 * v39], 1, __E, 1, v39);
      v44 = *(v38 + 968);
      v54 = v39;
      vvtanhf(v44, __E, &v54);
      v2 = v48;
      MEMORY[0x1E12BE7F0](&v42[2 * v39], 1, *(v38 + 968), 1, *(v38 + 968), 1, v39);
    }

    else
    {
      BNNSFilterApply(v40, v41, *(v38 + 968));
      MEMORY[0x1E12BE8A0](*(v38 + 968), 1, &v53, *(v38 + 968), 1, v39);
      NeuralNetBNNS<signed char>::applyActivationFunction(*(v38 + 968), *(v38 + 968), *(v38 + 1112), v39, *(v38 + 860), *(v38 + 864));
    }

    ++v3;
    v45 = *(v2 + 44);
    v4 += 968;
  }

  while (v3 < v45);
  v46 = v45 - 1;
  return *(v2 + 48) + 968 * v46 + 816;
}

uint64_t NeuralNetBNNS<int>::setEmbedding(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    if (!*v1)
    {
      return 4294956433;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "NeuralNetImpl.hpp";
    v6 = 1024;
    v7 = 211;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d NeuralNetBNNS: Embeddings not supported in BNNS mode", &v4, 0x12u);
  }

  return 4294956433;
}

{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    if (!*v1)
    {
      return 4294956433;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "NeuralNetImpl.hpp";
    v6 = 1024;
    v7 = 203;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d NeuralNetBNNS: Embeddings not supported in BNNS mode", &v4, 0x12u);
  }

  return 4294956433;
}

void NeuralNetBNNS<int>::cleanup(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 48) + v2;
      vDSP_vclr(*(v4 + 792), 1, (*(v4 + 800) - *(v4 + 792)) >> 2);
      vDSP_vclr(*(v4 + 816), 1, (*(v4 + 824) - *(v4 + 816)) >> 2);
      vDSP_vclr(*(v4 + 840), 1, (*(v4 + 848) - *(v4 + 840)) >> 2);
      vDSP_vclr(*(v4 + 864), 1, (*(v4 + 872) - *(v4 + 864)) >> 2);
      bzero(*(v4 + 912), *(v4 + 920) - *(v4 + 912));
      ++v3;
      v2 += 968;
    }

    while (v3 < *(a1 + 44));
  }
}

void NeuralNetBNNS<int>::~NeuralNetBNNS(void *a1)
{
  NeuralNetBNNS<int>::~NeuralNetBNNS(a1);

  JUMPOUT(0x1E12BD160);
}

void *NeuralNetBNNS<int>::~NeuralNetBNNS(void *a1)
{
  *a1 = &unk_1F592AF60;
  v3 = (a1 + 6);
  v2 = a1[6];
  v4 = a1[7];
  if (v4 != v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(v2 + 968 * v5 + 784);
      if (v7)
      {
        BNNSFilterDestroy(v7);
        v2 = a1[6];
        v4 = a1[7];
        *(v2 + 968 * v5 + 784) = 0;
      }

      v5 = v6;
      v8 = 0x1B810ECF56BE69C9 * ((v4 - v2) >> 3);
      v9 = v8 >= v6;
      v10 = v8 == v6++;
    }

    while (!v10 && v9);
  }

  v13 = v3;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](&v13);
  *a1 = &unk_1F592AE40;
  v11 = a1[4];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return a1;
}

uint64_t NeuralNetBNNS<float>::process(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  memcpy(*(*(a1 + 48) + 792), *a2, *(a2 + 8) - *a2);
  if (!*(v2 + 44))
  {
    v46 = -1;
    return *(v2 + 48) + 968 * v46 + 816;
  }

  v3 = 0;
  v4 = -152;
  v48 = v2;
  do
  {
    if (v4 != -152)
    {
      memcpy(*(*(v2 + 48) + v4 + 944), *(*(v2 + 48) + v4), *(*(v2 + 48) + v4 + 8) - *(*(v2 + 48) + v4));
    }

    v5 = *(v2 + 48);
    v6 = v5 + v4;
    v7 = *(v5 + v4 + 160);
    v8 = *(v5 + v4 + 512);
    *&v9 = 1.0 / *(v5 + v4 + 316);
    v53 = -(*(v5 + v4 + 320) * *&v9);
    v54 = v9;
    MEMORY[0x1E12BE910](*(v5 + v4 + 944), 1, &v54, &v53, *(v5 + v4 + 944), 1, v7);
    v10 = *(v2 + 40);
    if (v10)
    {
      HIDWORD(v12) = *(v2 + 40);
      LODWORD(v12) = HIDWORD(v12);
      v11 = v12 >> 3;
      if (v11 > 4)
      {
        __B = -128.0;
        v13 = 127.0;
      }

      else
      {
        __B = flt_1DE10725C[v11];
        v13 = flt_1DE107270[v11];
      }

      __C = v13;
      vDSP_vclip(*(v6 + 944), 1, &__B, &__C, *(v6 + 944), 1, v7);
      v10 = *(v2 + 40);
    }

    HIDWORD(v15) = v10;
    LODWORD(v15) = v10;
    v14 = v15 >> 3;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (v14 == 4)
        {
          vDSP_vfixr32(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
          goto LABEL_19;
        }

LABEL_16:
        vDSP_vfixr8(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
        goto LABEL_19;
      }

      vDSP_vfixr16(*(v6 + 944), 1, *(v5 + v4 + 1064), 1, v7);
    }

    else
    {
      if (v14)
      {
        goto LABEL_16;
      }

      memcpy(*(v5 + v4 + 1064), *(v6 + 944), 4 * v7);
    }

LABEL_19:
    v16 = v5 + v4;
    if (*(v5 + v4 + 1116) != 1)
    {
      goto LABEL_34;
    }

    v17 = 1.0 / *(v16 + 668);
    __C = -(*(v16 + 672) * v17);
    __B = v17;
    MEMORY[0x1E12BE910](*(v16 + 968), 1, &__B, &__C, *(v16 + 968), 1, v8);
    v18 = *(v2 + 40);
    if (v18)
    {
      HIDWORD(v20) = *(v2 + 40);
      LODWORD(v20) = HIDWORD(v20);
      v19 = v20 >> 3;
      if (v19 > 4)
      {
        v50 = -128.0;
        v21 = 127.0;
      }

      else
      {
        v50 = flt_1DE10725C[v19];
        v21 = flt_1DE107270[v19];
      }

      v49 = v21;
      vDSP_vclip(*(v16 + 968), 1, &v50, &v49, *(v16 + 968), 1, v8);
      v18 = *(v2 + 40);
    }

    HIDWORD(v23) = v18;
    LODWORD(v23) = v18;
    v22 = v23 >> 3;
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        if (v22 == 4)
        {
          vDSP_vfixr32(*(v16 + 968), 1, (*(v5 + v4 + 1064) + 4 * v7), 1, v8);
          goto LABEL_34;
        }

LABEL_31:
        vDSP_vfixr8(*(v16 + 968), 1, (*(v5 + v4 + 1064) + 4 * v7), 1, v8);
        goto LABEL_34;
      }

      vDSP_vfixr16(*(v16 + 968), 1, (*(v5 + v4 + 1064) + 4 * v7), 1, v8);
    }

    else
    {
      if (v22)
      {
        goto LABEL_31;
      }

      memcpy((*(v5 + v4 + 1064) + 4 * v7), *(v16 + 968), 4 * v8);
    }

LABEL_34:
    v24 = *(v2 + 48);
    *&v54 = 0.0;
    v25 = *(v24 + v4 + 160);
    v26 = *(v24 + v4 + 512);
    v27 = *(v24 + v4 + 496);
    v28 = *(v24 + v4 + 316);
    HIDWORD(v30) = *(v2 + 40);
    LODWORD(v30) = HIDWORD(v30);
    v29 = v30 >> 3;
    if (v29 > 1)
    {
      if (v29 != 2)
      {
        if (v29 == 4)
        {
          vDSP_vflt32(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
          goto LABEL_43;
        }

LABEL_40:
        vDSP_vflt8(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
        goto LABEL_43;
      }

      vDSP_vflt16(*(v24 + v4 + 1064), 1, *(v24 + v4 + 944), 1, *(v24 + v4 + 160));
    }

    else
    {
      if (v29)
      {
        goto LABEL_40;
      }

      memcpy(*(v24 + v4 + 944), *(v24 + v4 + 1064), 4 * v25);
    }

LABEL_43:
    v31 = v24 + v4;
    vDSP_sve(*(v24 + v4 + 944), 1, &v54, v25);
    v32 = (v27 * v28) * *&v54;
    *&v54 = v32;
    if (*(v24 + v4 + 1116) != 1)
    {
      goto LABEL_54;
    }

    v33 = *(v31 + 848);
    v34 = *(v31 + 668);
    v53 = 0.0;
    HIDWORD(v36) = *(v2 + 40);
    LODWORD(v36) = HIDWORD(v36);
    v35 = v36 >> 3;
    if (v35 <= 1)
    {
      if (!v35)
      {
        memcpy(*(v24 + v4 + 968), (*(v24 + v4 + 1064) + 4 * v25), 4 * v26);
        goto LABEL_53;
      }

LABEL_50:
      vDSP_vflt8((*(v24 + v4 + 1064) + 4 * v25), 1, *(v24 + v4 + 968), 1, v26);
      goto LABEL_53;
    }

    if (v35 == 2)
    {
      vDSP_vflt16((*(v24 + v4 + 1064) + 4 * v25), 1, *(v24 + v4 + 968), 1, v26);
      goto LABEL_53;
    }

    if (v35 != 4)
    {
      goto LABEL_50;
    }

    vDSP_vflt32((*(v24 + v4 + 1064) + 4 * v25), 1, *(v24 + v4 + 968), 1, v26);
LABEL_53:
    vDSP_sve(*(v24 + v4 + 968), 1, &v53, v26);
    v32 = ((v33 * v34) * v53) + *&v54;
LABEL_54:
    v37 = *(v2 + 48);
    v53 = v32;
    v38 = v37 + v4;
    v39 = *(v37 + v4 + 512);
    v40 = *(v37 + v4 + 936);
    v41 = *(v37 + v4 + 1064);
    if (*(v37 + v4 + 1116) == 1)
    {
      BNNSFilterApply(v40, v41, *(v38 + 992));
      MEMORY[0x1E12BE8A0](*(v38 + 992), 1, &v53, *(v38 + 992), 1, 4 * v39);
      v42 = *(v38 + 992);
      __E = *(v38 + 1016);
      NeuralNetBNNS<signed char>::applyActivationFunction(v42, v42, 8, 3 * v39, 0.0, 0.0);
      v54 = v39;
      vvtanhf(&v42[3 * v39], &v42[3 * v39], &v54);
      vDSP_vmma(v42, 1, __E, 1, &v42[v39], 1, &v42[3 * v39], 1, __E, 1, v39);
      v44 = *(v38 + 968);
      v54 = v39;
      vvtanhf(v44, __E, &v54);
      v2 = v48;
      MEMORY[0x1E12BE7F0](&v42[2 * v39], 1, *(v38 + 968), 1, *(v38 + 968), 1, v39);
    }

    else
    {
      BNNSFilterApply(v40, v41, *(v38 + 968));
      MEMORY[0x1E12BE8A0](*(v38 + 968), 1, &v53, *(v38 + 968), 1, v39);
      NeuralNetBNNS<signed char>::applyActivationFunction(*(v38 + 968), *(v38 + 968), *(v38 + 1112), v39, *(v38 + 860), *(v38 + 864));
    }

    ++v3;
    v45 = *(v2 + 44);
    v4 += 968;
  }

  while (v3 < v45);
  v46 = v45 - 1;
  return *(v2 + 48) + 968 * v46 + 816;
}

uint64_t NeuralNetBNNS<float>::setEmbedding(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    if (!*v1)
    {
      return 4294956433;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "NeuralNetImpl.hpp";
    v6 = 1024;
    v7 = 211;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d NeuralNetBNNS: Embeddings not supported in BNNS mode", &v4, 0x12u);
  }

  return 4294956433;
}

{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    if (!*v1)
    {
      return 4294956433;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "NeuralNetImpl.hpp";
    v6 = 1024;
    v7 = 203;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d NeuralNetBNNS: Embeddings not supported in BNNS mode", &v4, 0x12u);
  }

  return 4294956433;
}

void NeuralNetBNNS<float>::cleanup(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 48) + v2;
      vDSP_vclr(*(v4 + 792), 1, (*(v4 + 800) - *(v4 + 792)) >> 2);
      vDSP_vclr(*(v4 + 816), 1, (*(v4 + 824) - *(v4 + 816)) >> 2);
      vDSP_vclr(*(v4 + 840), 1, (*(v4 + 848) - *(v4 + 840)) >> 2);
      vDSP_vclr(*(v4 + 864), 1, (*(v4 + 872) - *(v4 + 864)) >> 2);
      bzero(*(v4 + 912), *(v4 + 920) - *(v4 + 912));
      ++v3;
      v2 += 968;
    }

    while (v3 < *(a1 + 44));
  }
}

void NeuralNetBNNS<float>::~NeuralNetBNNS(void *a1)
{
  NeuralNetBNNS<float>::~NeuralNetBNNS(a1);

  JUMPOUT(0x1E12BD160);
}

void *NeuralNetBNNS<float>::~NeuralNetBNNS(void *a1)
{
  *a1 = &unk_1F592AFC0;
  v3 = (a1 + 6);
  v2 = a1[6];
  v4 = a1[7];
  if (v4 != v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(v2 + 968 * v5 + 784);
      if (v7)
      {
        BNNSFilterDestroy(v7);
        v2 = a1[6];
        v4 = a1[7];
        *(v2 + 968 * v5 + 784) = 0;
      }

      v5 = v6;
      v8 = 0x1B810ECF56BE69C9 * ((v4 - v2) >> 3);
      v9 = v8 >= v6;
      v10 = v8 == v6++;
    }

    while (!v10 && v9);
  }

  v13 = v3;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](&v13);
  *a1 = &unk_1F592AE40;
  v11 = a1[4];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return a1;
}

uint64_t NeuralNetEspresso::process(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != 65568)
  {
    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = *v17;
    }

    else
    {
      v18 = 0;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "NeuralNetImpl.cpp";
      v29 = 1024;
      v30 = 956;
      v31 = 1024;
      v32 = -66743;
      _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Only Float32 inputs supported.", &v27, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F593B0D8;
    exception[2] = -66743;
  }

  if ((*(a1 + 424) & 1) == 0)
  {
    goto LABEL_24;
  }

  v3 = *a2;
  v5 = *(a2 + 8) - v3;
  if (v5 >> 2 != *(a1 + 344) * *(a1 + 336) * *(a1 + 352) * *(a1 + 360) * *(a1 + 368))
  {
    v19 = *(a1 + 344) * *(a1 + 336) * *(a1 + 352) * *(a1 + 360) * *(a1 + 368);
    v20 = v5;
    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = 136316162;
      v28 = "NeuralNetImpl.cpp";
      v29 = 1024;
      v30 = 945;
      v31 = 1024;
      v32 = -66743;
      v33 = 1024;
      v34 = v20 >> 2;
      v35 = 1024;
      v36 = v19;
      _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Input size (%u) and the actual NN input size (%u) not maching!", &v27, 0x24u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &unk_1F593B0D8;
    v26[2] = -66743;
  }

  v6 = *(a1 + 416) == 65568 ? *(a1 + 256) : 0;
  memcpy(v6, v3, v5);
  if ((*(a1 + 208) & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = espresso_plan_execute_sync();
  if (v7)
  {
    v23 = v7;
    v24 = __cxa_allocate_exception(0x20uLL);
    MEMORY[0x1E12BCAD0](v24, v23, &audiodsp::espresso::v1::error_category(void)::instance);
  }

  if ((*(a1 + 776) & 1) == 0)
  {
LABEL_24:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(a1 + 768) == 65568)
  {
    v8 = *(a1 + 608);
  }

  else
  {
    v8 = 0;
  }

  memcpy(*(a1 + 784), v8, *(a1 + 792) - *(a1 + 784));
  if (*(a1 + 144) == 1)
  {
    vDSP_vclr(*(a1 + 856), 1, (*(a1 + 864) - *(a1 + 856)) >> 2);
    v9 = *(a1 + 832);
    v10 = *(a1 + 840);
    while (v9 != v10)
    {
      v11 = *v9;
      v12 = *(v9 + 160);
      if (*(v9 + 328) == 65568)
      {
        v13 = *(v9 + 168);
      }

      else
      {
        v13 = 0;
      }

      v14 = 4 * *(v9 + 80) * *(v9 + 88) * *(v9 + 96) * *(v9 + 104) * *(v9 + 112);
      memcpy(*(a1 + 856), v13, v14);
      if (v12 == 65568)
      {
        v15 = v11;
      }

      else
      {
        v15 = 0;
      }

      memcpy(v15, *(a1 + 856), v14);
      v9 += 336;
    }
  }

  return a1 + 784;
}

uint64_t NeuralNetEspresso::setEmbedding(NeuralNetEspresso *this, float a2)
{
  __A = a2;
  if (*(this + 600) == 1)
  {
    if (*(this + 148) == 65568)
    {
      v3 = *(this + 54);
    }

    else
    {
      v3 = 0;
    }

    vDSP_vfill(&__A, v3, 1, *(this + 65) * *(this + 64) * *(this + 66) * *(this + 67) * *(this + 68));
    return 0;
  }

  else
  {
    v4 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(*(this + 3), v4 + 88, 16);
    if (message)
    {
      v6 = message;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(*(this + 3) + 16), v6);
    }

    return 4294956433;
  }
}

uint64_t NeuralNetEspresso::setEmbedding(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 600) == 1)
  {
    if (*(a1 + 592) == 65568)
    {
      v3 = *(a1 + 432);
    }

    else
    {
      v3 = 0;
    }

    memcpy(v3, *a2, *(a2 + 8) - *a2);
    return 0;
  }

  else
  {
    v4 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(*(a1 + 24), v4 + 88, 16);
    if (message)
    {
      v6 = message;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(*(a1 + 24) + 16), v6);
    }

    return 4294956433;
  }
}

void NeuralNetEspresso::cleanup(NeuralNetEspresso *this)
{
  if ((*(this + 424) & 1) == 0)
  {
LABEL_26:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(this + 104) == 65568)
  {
    v2 = *(this + 32);
  }

  else
  {
    v2 = 0;
  }

  vDSP_vclr(v2, 1, *(this + 43) * *(this + 42) * *(this + 44) * *(this + 45) * *(this + 46));
  if ((*(this + 119) & 0x8000000000000000) != 0)
  {
    if (!*(this + 13))
    {
      goto LABEL_14;
    }
  }

  else if (!*(this + 119))
  {
    goto LABEL_14;
  }

  if ((*(this + 600) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (*(this + 148) == 65568)
  {
    v3 = *(this + 54);
  }

  else
  {
    v3 = 0;
  }

  vDSP_vclr(v3, 1, *(this + 65) * *(this + 64) * *(this + 66) * *(this + 67) * *(this + 68));
LABEL_14:
  if ((*(this + 776) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (*(this + 192) == 65568)
  {
    v4 = *(this + 76);
  }

  else
  {
    v4 = 0;
  }

  vDSP_vclr(v4, 1, *(this + 87) * *(this + 86) * *(this + 88) * *(this + 89) * *(this + 90));
  vDSP_vclr(*(this + 98), 1, (*(this + 99) - *(this + 98)) >> 2);
  if (*(this + 36) == 1)
  {
    v5 = *(this + 104);
    v6 = *(this + 105);
    while (v5 != v6)
    {
      if (*(v5 + 160) == 65568)
      {
        v7 = *v5;
      }

      else
      {
        v7 = 0;
      }

      bzero(v7, 4 * *(v5 + 80) * *(v5 + 88) * *(v5 + 96) * *(v5 + 104) * *(v5 + 112));
      v5 += 336;
    }
  }
}

uint64_t NeuralNetEspresso::getOutputSize(NeuralNetEspresso *this)
{
  if ((*(this + 776) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return *(this + 87) * *(this + 86) * *(this + 88) * *(this + 89) * *(this + 90);
}

uint64_t NeuralNetEspresso::getInputSize(NeuralNetEspresso *this)
{
  if ((*(this + 424) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return *(this + 43) * *(this + 42) * *(this + 44) * *(this + 45) * *(this + 46);
}

void NeuralNetEspresso::~NeuralNetEspresso(NeuralNetEspresso *this)
{
  NeuralNetEspresso::~NeuralNetEspresso(this);

  JUMPOUT(0x1E12BD160);
}

{
  v13 = *MEMORY[0x1E69E9840];
  *this = &unk_1F592B020;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (!*v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136315394;
    *&v10[4] = "NeuralNetImpl.cpp";
    v11 = 1024;
    v12 = 789;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destructing.", v10, 0x12u);
  }

LABEL_7:
  v4 = *(this + 107);
  if (v4)
  {
    *(this + 108) = v4;
    operator delete(v4);
  }

  v5 = *(this + 104);
  if (v5)
  {
    *(this + 105) = v5;
    operator delete(v5);
  }

  *v10 = this + 808;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v10);
  v6 = *(this + 98);
  if (v6)
  {
    *(this + 99) = v6;
    operator delete(v6);
  }

  if (*(this + 248) == 1)
  {
    v7 = *(this + 30);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (*(this + 208) == 1)
  {
    audiodsp::espresso::v1::plan::~plan((this + 176));
  }

  if (*(this + 168) == 1)
  {
    v8 = *(this + 20);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *this = &unk_1F592AE40;
  v9 = *(this + 4);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void audiodsp::espresso::v1::plan::~plan(audiodsp::espresso::v1::plan *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t NeuralNetEspressoV2::process(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 328);
  v5 = *(a1 + 336);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NeuralNetEspressoV2::SetInput<float>(a1, v4, (a1 + 64), a2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(*(a1 + 344));
  v6 = *(a1 + 328);
  v7 = *(a1 + 336);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NeuralNetEspressoV2::GetOutput<float>(&v21.__r_.__value_.__l.__data_, a1, v6, (a1 + 112));
  v8 = *(a1 + 352);
  if (v8)
  {
    *(a1 + 360) = v8;
    operator delete(v8);
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
  }

  *(a1 + 352) = v21;
  memset(&v21, 0, sizeof(v21));
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(a1 + 136) == 1)
  {
    vDSP_vclr(*(a1 + 400), 1, (*(a1 + 408) - *(a1 + 400)) >> 2);
    v9 = *(a1 + 376);
    for (i = *(a1 + 384); v9 != i; v9 += 3)
    {
      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *v9, *(v9 + 1));
      }

      else
      {
        v11 = *v9;
        v21.__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v21.__r_.__value_.__l.__data_ = v11;
      }

      if (*(v9 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, *(v9 + 3), *(v9 + 4));
      }

      else
      {
        v20 = *(v9 + 1);
      }

      v12 = *(a1 + 328);
      v13 = *(a1 + 336);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      NeuralNetEspressoV2::GetOutput<float>(&v18, a1, v12, &v20);
      v14 = *(a1 + 400);
      if (v14)
      {
        *(a1 + 408) = v14;
        operator delete(v14);
        *(a1 + 400) = 0;
        *(a1 + 408) = 0;
        *(a1 + 416) = 0;
      }

      *(a1 + 400) = v18;
      *(a1 + 416) = v19;
      v19 = 0;
      v18 = 0uLL;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = *(a1 + 328);
      v16 = *(a1 + 336);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      NeuralNetEspressoV2::SetInput<float>(a1, v15, &v21, a1 + 400);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }
  }

  return a1 + 352;
}

void sub_1DDEB26EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NeuralNetEspressoV2::SetInput<float>(uint64_t a1, E5RT::ExecutionStreamOperation *this, uint64_t *a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v22, InputPorts);
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(v22, a3);
  if (!v8)
  {
    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (*(a3 + 23) >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      *buf = 136315906;
      *&buf[4] = "NeuralNetImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1179;
      v24 = 1024;
      v25 = -66743;
      v26 = 2080;
      v27 = v20;
      _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Input (%s) not available.", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F593B0D8;
    exception[2] = -66743;
  }

  v9 = v8;
  v10 = v8[5];
  v11 = v9[6];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::IOPort::GetMemoryObject(buf, v10);
  v12 = E5RT::MemoryObject::TryAsBuffer(*buf);
  DataSpan = E5RT::BufferObject::GetDataSpan(v12);
  if (v14 >= 4)
  {
    v15 = DataSpan;
  }

  else
  {
    v15 = 0;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v16 = *(a4 + 8);
  if (v16 != *a4)
  {
    memmove(v15, *a4, v16 - *a4);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v22);
}

void sub_1DDEB2920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t NeuralNetEspressoV2::GetOutput<float>(void **a1, uint64_t a2, E5RT::ExecutionStreamOperation *this, uint64_t *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v24, OutputPorts);
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(v24, a4);
  if (!v8)
  {
    v20 = *(a2 + 8);
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      if (*(a4 + 23) >= 0)
      {
        v22 = a4;
      }

      else
      {
        v22 = *a4;
      }

      *buf = 136315906;
      *&buf[4] = "NeuralNetImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1192;
      v26 = 1024;
      v27 = -66743;
      v28 = 2080;
      v29 = v22;
      _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Output (%s) not available.", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F593B0D8;
    exception[2] = -66743;
  }

  v9 = v8;
  v10 = v8[5];
  v11 = v9[6];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::IOPort::GetMemoryObject(buf, v10);
  v12 = E5RT::MemoryObject::TryAsBuffer(*buf);
  DataSpan = E5RT::BufferObject::GetDataSpan(v12);
  v14 = DataSpan;
  v16 = v15;
  v17 = v15 >> 2;
  if (v15 >= 4)
  {
    v18 = DataSpan;
  }

  else
  {
    v18 = 0;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  std::vector<float>::vector[abi:ne200100](a1, v17);
  if (v16 >= 4)
  {
    memmove(*a1, v18, v18 + 4 * v17 - v14);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v24);
}

void sub_1DDEB2B64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100]((i + 2));
    v6 = v5;
    v7 = *(a1 + 8);
    if (!*&v7)
    {
      goto LABEL_18;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *&v7)
      {
        v10 = v5 % *&v7;
      }
    }

    else
    {
      v10 = (*&v7 - 1) & v5;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v6)
      {
        break;
      }

      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, i + 2))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t NeuralNetEspressoV2::setEmbedding(NeuralNetEspressoV2 *this, float a2)
{
  __A = a2;
  if (*(this + 312) == 1)
  {
    if (*(this + 76) == 65568)
    {
      v3 = *(this + 18);
    }

    else
    {
      v3 = 0;
    }

    vDSP_vfill(&__A, v3, 1, *(this + 29) * *(this + 28) * *(this + 30) * *(this + 31) * *(this + 32));
    return 0;
  }

  else
  {
    v4 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(*(this + 3), v4 + 88, 16);
    if (message)
    {
      v6 = message;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(*(this + 3) + 16), v6);
    }

    return 4294956433;
  }
}

uint64_t NeuralNetEspressoV2::setEmbedding(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 312) == 1)
  {
    if (*(a1 + 304) == 65568)
    {
      v3 = *(a1 + 144);
    }

    else
    {
      v3 = 0;
    }

    memcpy(v3, *a2, *(a2 + 8) - *a2);
    return 0;
  }

  else
  {
    v4 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(*(a1 + 24), v4 + 88, 16);
    if (message)
    {
      v6 = message;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(*(a1 + 24) + 16), v6);
    }

    return 4294956433;
  }
}

void NeuralNetEspressoV2::cleanup(NeuralNetEspressoV2 *this)
{
  if ((*(this + 111) & 0x8000000000000000) != 0)
  {
    if (!*(this + 12))
    {
      goto LABEL_10;
    }
  }

  else if (!*(this + 111))
  {
    goto LABEL_10;
  }

  if ((*(this + 312) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(this + 76) == 65568)
  {
    v2 = *(this + 18);
  }

  else
  {
    v2 = 0;
  }

  vDSP_vclr(v2, 1, *(this + 29) * *(this + 28) * *(this + 30) * *(this + 31) * *(this + 32));
LABEL_10:
  v3 = *(this + 44);
  v4 = (*(this + 45) - v3) >> 2;

  vDSP_vclr(v3, 1, v4);
}

void NeuralNetEspressoV2::~NeuralNetEspressoV2(NeuralNetEspressoV2 *this)
{
  NeuralNetEspressoV2::~NeuralNetEspressoV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  v12 = *MEMORY[0x1E69E9840];
  *this = &unk_1F592B080;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (!*v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 136315394;
    *&v9[4] = "NeuralNetImpl.cpp";
    v10 = 1024;
    v11 = 1124;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d NeuralNetEspressoV2 Destructing.", v9, 0x12u);
  }

LABEL_7:
  v4 = *(this + 50);
  if (v4)
  {
    *(this + 51) = v4;
    operator delete(v4);
  }

  *v9 = this + 376;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v9);
  v5 = *(this + 44);
  if (v5)
  {
    *(this + 45) = v5;
    operator delete(v5);
  }

  v6 = *(this + 43);
  *(this + 43) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 42);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  *this = &unk_1F592AE40;
  v8 = *(this + 4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void *MIL2BNNS::process(void *a1, uint64_t a2)
{
  v2 = a1;
  memcpy(*(a1[33] + 40), *a2, *(a2 + 8) - *a2);
  ++v2[27];
  BNNSGraphContextExecute_v2();
  v3 = v2[15];
  v2 += 15;
  memcpy(v3, *(v2[23] + 40), *(v2[23] + 8));
  return v2;
}

uint64_t MIL2BNNS::setEmbedding(MIL2BNNS *this, float a2)
{
  __A = a2;
  v3 = *(this + 34);
  if (v3 && *v3 == 1)
  {
    vDSP_vfill(&__A, *(v3 + 40), 1, 1uLL);
    return 0;
  }

  else
  {
    v5 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(*(this + 3), v5 + 88, 16);
    if (message)
    {
      v7 = message;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(*(this + 3) + 16), v7);
    }

    return 4294956433;
  }
}

uint64_t MIL2BNNS::setEmbedding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 272);
  if (v3 && (v4 = *a2, v6 = *(a2 + 8) - v4, *v3 == v6 >> 2))
  {
    memcpy(*(v3 + 40), v4, v6);
    return 0;
  }

  else
  {
    v8 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(*(a1 + 24), v8 + 88, 16);
    if (message)
    {
      v10 = message;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(*(a1 + 24) + 16), v10);
    }

    return 4294956433;
  }
}

void MIL2BNNS::cleanup(MIL2BNNS *this)
{
  bzero(*(this + 31), *(this + 32));
  if (*(this + 28) == 2)
  {
    v2 = *(this + 35);
    v3 = *(this + 36);
    if (v2 != v3)
    {
      v4 = this + 24 * ((*(this + 27) & 1) == 0);
      do
      {
        if (!*(v2 + 40))
        {
          v5 = *(v4 + 21) + 16 * BNNSGraphGetArgumentPosition();
          if (*v5)
          {
            bzero(*v5, *(v5 + 8));
          }
        }

        v2 += 48;
      }

      while (v2 != v3);
    }
  }
}

void MIL2BNNS::~MIL2BNNS(MIL2BNNS *this)
{
  MIL2BNNS::~MIL2BNNS(this);

  JUMPOUT(0x1E12BD160);
}

{
  v22 = *MEMORY[0x1E69E9840];
  *this = &unk_1F592B0E0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (!*v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 136315394;
    *&v19[4] = "NeuralNetImpl.cpp";
    v20 = 1024;
    v21 = 1748;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MIL2BNNS Destructor Bgein.", v19, 0x12u);
    v2 = *(this + 1);
  }

LABEL_7:
  if (!*(this + 39))
  {
    goto LABEL_15;
  }

  if (!v2)
  {
    v4 = MEMORY[0x1E69E9C10];
LABEL_12:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136315394;
      *&v19[4] = "NeuralNetImpl.cpp";
      v20 = 1024;
      v21 = 1750;
      _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MIL2BNNS Destroying mContext.data", v19, 0x12u);
    }

    goto LABEL_14;
  }

  v4 = *v2;
  if (*v2)
  {
    goto LABEL_12;
  }

LABEL_14:
  BNNSGraphContextDestroy_v2();
  *(this + 39) = 0;
  *(this + 40) = 0;
  v2 = *(this + 1);
LABEL_15:
  if (v2)
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 136315394;
    *&v19[4] = "NeuralNetImpl.cpp";
    v20 = 1024;
    v21 = 1759;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MIL2BNNS Destroyed mContext.data", v19, 0x12u);
  }

LABEL_21:
  v6 = *(this + 18);
  if (v6 && !*(this + 20))
  {
    v7 = *(this + 1);
    if (*(this + 224) == 1)
    {
      if (v7)
      {
        v8 = *v7;
        if (!*v7)
        {
LABEL_33:
          munmap(v6, *(this + 19));
          goto LABEL_38;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 136315394;
        *&v19[4] = "NeuralNetImpl.cpp";
        v20 = 1024;
        v21 = 1765;
        _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MIL2BNNS Deallocating mGraph.data from BnnsIR", v19, 0x12u);
        v6 = *(this + 18);
      }

      goto LABEL_33;
    }

    if (v7)
    {
      v9 = *v7;
      if (!*v7)
      {
LABEL_37:
        free(v6);
        goto LABEL_38;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136315394;
      *&v19[4] = "NeuralNetImpl.cpp";
      v20 = 1024;
      v21 = 1770;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MIL2BNNS Deallocating mGraph.data from MIL", v19, 0x12u);
      v6 = *(this + 18);
    }

    goto LABEL_37;
  }

LABEL_38:
  v10 = *(this + 1);
  if (v10)
  {
    v11 = *v10;
    if (!*v10)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 136315394;
    *&v19[4] = "NeuralNetImpl.cpp";
    v20 = 1024;
    v21 = 1774;
    _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MIL2BNNS Destructor Completed.", v19, 0x12u);
  }

LABEL_44:
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  *v19 = this + 280;
  std::vector<MIL2BNNS::GraphTensor>::__destroy_vector::operator()[abi:ne200100](v19);
  v12 = *(this + 31);
  *(this + 31) = 0;
  if (v12)
  {
    MEMORY[0x1E12BD130](v12, 0x1000C8077774924);
  }

  v13 = *(this + 30);
  *(this + 30) = 0;
  if (v13)
  {
    MEMORY[0x1E12BD130](v13, 0x1000C8077774924);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v15 = *(this + i + 192);
    if (v15)
    {
      *(this + i + 200) = v15;
      operator delete(v15);
    }
  }

  v16 = *(this + 20);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(this + 15);
  if (v17)
  {
    *(this + 16) = v17;
    operator delete(v17);
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  *this = &unk_1F592AE40;
  v18 = *(this + 4);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1DDEB3C9C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::vector<MIL2BNNS::GraphTensor>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if (*(v4 - 9) < 0)
        {
          operator delete(*(v4 - 4));
        }

        v4 -= 6;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t NeuralNetImpl::NeuralNetImpl(uint64_t a1, caulk::deferred_logger **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F592AE40;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  caulk::deferred_logger::create_v((a1 + 24), *a2, a2);
  LOBYTE(v8) = 0;
  AppIntegerValue = CACFPreferencesGetAppIntegerValue(@"neuralnetutility_detailed_logging", @"com.apple.coreaudio", &v8);
  if (v8)
  {
    v4 = AppIntegerValue;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 16) = v4;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *v5;
    if (!*v5)
    {
      return a1;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "NeuralNetImpl.cpp";
    v10 = 1024;
    v11 = 82;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Detailed logging set to %d.", &v8, 0x18u);
  }

  return a1;
}

void sub_1DDEB3F80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<short>::resize(uint64_t *result, unint64_t a2, __int16 *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = (v3 - *result) >> 1;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return result;
    }

    v11 = v4 + 2 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = result[2];
    if (v6 > (v7 - v3) >> 1)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        v8 = v7 - v4;
        if (v7 - v4 <= a2)
        {
          v9 = a2;
        }

        else
        {
          v9 = v7 - v4;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0;
    v13 = *a3;
    v14 = (v6 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v15 = v14 - ((v6 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v16 = vdupq_n_s64(v14);
    v17 = (v3 + 8);
    do
    {
      v18 = vdupq_n_s64(v12);
      v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1DE095160)));
      if (vuzp1_s8(vuzp1_s16(v19, *v16.i8), *v16.i8).u8[0])
      {
        *(v17 - 4) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(v19, *&v16), *&v16).i8[1])
      {
        *(v17 - 3) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1DE095150)))), *&v16).i8[2])
      {
        *(v17 - 2) = v13;
        *(v17 - 1) = v13;
      }

      v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1DE095220)));
      if (vuzp1_s8(*&v16, vuzp1_s16(v20, *&v16)).i32[1])
      {
        *v17 = v13;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(v20, *&v16)).i8[5])
      {
        v17[1] = v13;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1DE0952D0))))).i8[6])
      {
        v17[2] = v13;
        v17[3] = v13;
      }

      v12 += 8;
      v17 += 8;
    }

    while (v15 != v12);
    v11 = v3 + 2 * v6;
  }

  result[1] = v11;
  return result;
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = (value - begin) >> 1;
        if (v9 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v12 = *__x;
    v13 = (v6 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v6 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = end + 2;
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1DE095160)));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        *(v16 - 1) = v12;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1DE095150)))).i32[1])
      {
        *v16 = v12;
        v16[1] = v12;
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t audiodsp::espresso::v1::network::bind_buffer()
{
  result = espresso_network_bind_buffer();
  if (result)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    MEMORY[0x1E12BCAD0](exception, v1, &audiodsp::espresso::v1::error_category(void)::instance);
  }

  return result;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1DDEB47B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t audiodsp::espresso::v1::plan::plan(std::shared_ptr<void>,int)::{lambda(void *)#1}::operator()()
{
  result = espresso_plan_destroy();
  if (result)
  {
    __assert_rtn("operator()", "plan.h", 61, "status == ESPRESSO_STATUS_SUCCESS");
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<void *,audiodsp::espresso::v1::plan::plan(std::shared_ptr<void>,int)::{lambda(void *)#1},std::allocator<void>>::__on_zero_shared()
{
  result = espresso_plan_destroy();
  if (result)
  {
    __assert_rtn("operator()", "plan.h", 61, "status == ESPRESSO_STATUS_SUCCESS");
  }

  return result;
}

void std::__shared_ptr_pointer<void *,audiodsp::espresso::v1::plan::plan(std::shared_ptr<void>,int)::{lambda(void *)#1},std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void std::__shared_ptr_pointer<void *,audiodsp::espresso::v1::context::context(espresso_engine_t,int)::{lambda(void *)#1},std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void NeuralNetEspressoV2::AllocateAndBindMemoryToPort(NeuralNetEspressoV2 *this, E5RT::IOPort *a2)
{
  E5RT::IOPort::GetPortDescriptor(&v6, this);
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Found a null pointer to a port descriptor.");
  }

  if (E5RT::OperandDescriptor::TryAsTensorDescriptor(v6))
  {
    v2 = E5RT::OperandDescriptor::TensorDescriptor(v6);
    E5RT::TensorDescriptor::GetSize(v2);
    E5RT::BufferObject::AllocMemory();
    if (v5)
    {
      operator new();
    }
  }

  else
  {
    if (!E5RT::OperandDescriptor::TryAsSurfaceDescriptor(v6))
    {
      v4 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v4, "Found an unsupported descriptor type.");
    }

    E5RT::OperandDescriptor::SurfaceDescriptor(v6);
    E5RT::SurfaceObject::AllocSurface();
    if (v5)
    {
      operator new();
    }
  }

  E5RT::IOPort::BindMemoryObject();
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DDEB4AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  v16 = *(v14 - 24);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<E5RT::SurfaceObject  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<E5RT::SurfaceObject  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<E5RT::BufferObject  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void MIL2BNNS::getCachedIRLocation(std::string *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  v84 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a3, @"TaskID");
  v7 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v82 = v7;
  v8 = CFDictionaryGetValue(a3, @"TaskIteration");
  v9 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v81 = v9;
  v10 = CFDictionaryGetValue(a3, @"BlockSize");
  v11 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v80 = v11;
  v12 = CFDictionaryGetValue(a3, @"CacheIRFile");
  v13 = v12;
  if (v12)
  {
    CFRetain(v12);
    v79 = v13;
    v14 = applesauce::CF::convert_to<BOOL,0>(v13);
  }

  else
  {
    v14 = 0;
    v79 = 0;
  }

  if (_xpc_runtime_is_app_sandboxed())
  {
    v15 = *(a2 + 1);
    if (v15)
    {
      v16 = *v15;
      if (!*v15)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "NeuralNetImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1435;
      _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d app sandboxed: disable cache", buf, 0x12u);
    }

LABEL_27:
    v22 = *(a2 + 1);
    if (v22)
    {
      v23 = *v22;
      if (!*v22)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "NeuralNetImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1441;
      v24 = "%25s:%-5d CacheIRFile flag is disabled";
      v25 = v23;
      v26 = OS_LOG_TYPE_DEBUG;
LABEL_33:
      _os_log_impl(&dword_1DDB85000, v25, v26, v24, buf, 0x12u);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!v7 || !v9 || !v11)
  {
    v27 = *(a2 + 1);
    if (v27)
    {
      v28 = *v27;
      if (!*v27)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "NeuralNetImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1445;
      v24 = "%25s:%-5d Missing TaskID, TaskIteration, BlockSize, or CacheIRFile in plist  --- can not generate cache file";
      v25 = v28;
      v26 = OS_LOG_TYPE_ERROR;
      goto LABEL_33;
    }

LABEL_34:
    this->__r_.__value_.__r.__words[0] = 0;
    this->__r_.__value_.__l.__size_ = 0;
    this->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_35;
  }

  v17 = getenv("TMPDIR");
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v78, v18);
  LOBYTE(v19) = *(&v78.__r_.__value_.__s + 23);
  if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v78.__r_.__value_.__l.__size_;
    if (v78.__r_.__value_.__l.__size_)
    {
      v20 = v78.__r_.__value_.__r.__words[0];
LABEL_52:
      if (v20->__r_.__value_.__s.__data_[size - 1] != 47)
      {
        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v29 = v78.__r_.__value_.__l.__size_;
        }

        v30 = buf;
        std::string::basic_string[abi:ne200100](buf, v29 + 1);
        if ((buf[23] & 0x80u) != 0)
        {
          v30 = *buf;
        }

        if (v29)
        {
          if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &v78;
          }

          else
          {
            v31 = v78.__r_.__value_.__r.__words[0];
          }

          memmove(v30, v31, v29);
        }

        *&v30[v29] = 47;
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        v78 = *buf;
        v19 = HIBYTE(*&buf[16]);
      }

      if ((v19 & 0x80u) == 0)
      {
        v32 = &v78;
      }

      else
      {
        v32 = v78.__r_.__value_.__r.__words[0];
      }

      if (access(v32, 6))
      {
        v33 = *(a2 + 1);
        if (v33)
        {
          v34 = *v33;
          if (!*v33)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v34 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_138;
        }

        v64 = &v78;
        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v64 = v78.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "NeuralNetImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1463;
        *&buf[18] = 2080;
        *&buf[20] = v64;
        v65 = "%25s:%-5d No RW permission to temp path: %s";
        v66 = v34;
        v67 = 28;
LABEL_131:
        _os_log_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_ERROR, v65, buf, v67);
        goto LABEL_138;
      }

      applesauce::CF::convert_to<std::string,0>(&v71, v7);
      v37 = std::string::append(&v71, "_", 1uLL);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v72.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v72.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      v39 = applesauce::CF::convert_to<unsigned int,0>(v9);
      std::to_string(&v70, v39);
      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v70;
      }

      else
      {
        v40 = v70.__r_.__value_.__r.__words[0];
      }

      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v70.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v72, v40, v41);
      v43 = *&v42->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = std::string::append(&v73, "_", 1uLL);
      v45 = *&v44->__r_.__value_.__l.__data_;
      v74.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
      *&v74.__r_.__value_.__l.__data_ = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      v46 = applesauce::CF::convert_to<unsigned int,0>(v11);
      std::to_string(&v69, v46);
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v69;
      }

      else
      {
        v47 = v69.__r_.__value_.__r.__words[0];
      }

      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = v69.__r_.__value_.__l.__size_;
      }

      v49 = std::string::append(&v74, v47, v48);
      v50 = *&v49->__r_.__value_.__l.__data_;
      v75.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
      *&v75.__r_.__value_.__l.__data_ = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      v51 = std::string::append(&v75, "_", 1uLL);
      v52 = *&v51->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      v53 = *(a2 + 351);
      if (v53 >= 0)
      {
        v54 = a2 + 328;
      }

      else
      {
        v54 = *(a2 + 41);
      }

      if (v53 >= 0)
      {
        v55 = *(a2 + 351);
      }

      else
      {
        v55 = *(a2 + 42);
      }

      v56 = std::string::append(&v76, v54, v55);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = std::string::append(&v77, ".ir", 3uLL);
      v59 = *&v58->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v58->__r_.__value_.__l + 2);
      *buf = v59;
      v58->__r_.__value_.__l.__size_ = 0;
      v58->__r_.__value_.__r.__words[2] = 0;
      v58->__r_.__value_.__r.__words[0] = 0;
      if ((buf[23] & 0x80u) == 0)
      {
        v60 = buf;
      }

      else
      {
        v60 = *buf;
      }

      if ((buf[23] & 0x80u) == 0)
      {
        v61 = buf[23];
      }

      else
      {
        v61 = *&buf[8];
      }

      std::string::append(&v78, v60, v61);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      v62 = *(a2 + 1);
      if (v62)
      {
        v63 = *v62;
        if (!*v62)
        {
LABEL_137:
          *this = v78;
          this = &v78;
          goto LABEL_138;
        }
      }

      else
      {
        v63 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v68 = &v78;
        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v68 = v78.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "NeuralNetImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1460;
        *&buf[18] = 2080;
        *&buf[20] = v68;
        _os_log_impl(&dword_1DDB85000, v63, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Path to compiled IR file: %s", buf, 0x1Cu);
      }

      goto LABEL_137;
    }
  }

  else if (*(&v78.__r_.__value_.__s + 23))
  {
    v20 = &v78;
    size = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
    goto LABEL_52;
  }

  v35 = *(a2 + 1);
  if (!v35)
  {
    v36 = MEMORY[0x1E69E9C10];
    goto LABEL_129;
  }

  v36 = *v35;
  if (*v35)
  {
LABEL_129:
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_138;
    }

    *buf = 136315394;
    *&buf[4] = "NeuralNetImpl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1451;
    v65 = "%25s:%-5d Empty temp path";
    v66 = v36;
    v67 = 18;
    goto LABEL_131;
  }

LABEL_138:
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

LABEL_35:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_1DDEB55C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (*(v61 - 105) < 0)
  {
    operator delete(*(v61 - 128));
  }

  if (*(v61 - 201) < 0)
  {
    operator delete(*(v61 - 224));
  }

  if (a61 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v61 - 169) < 0)
  {
    operator delete(*(v61 - 192));
  }

  applesauce::CF::TypeRef::~TypeRef((v61 - 160));
  applesauce::CF::TypeRef::~TypeRef((v61 - 152));
  applesauce::CF::TypeRef::~TypeRef((v61 - 144));
  applesauce::CF::TypeRef::~TypeRef((v61 - 136));
  _Unwind_Resume(a1);
}

BOOL MIL2BNNS::loadContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *v5;
    if (!*v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "NeuralNetImpl.cpp";
    v18 = 1024;
    v19 = 1532;
    v20 = 2048;
    v21 = a3;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d graph size is %zu bytes", &v16, 0x1Cu);
    v5 = *(a1 + 8);
  }

LABEL_7:
  if (*(a1 + 112) == 2)
  {
    if (v5)
    {
      v7 = *v5;
      if (!*v5)
      {
LABEL_17:
        Streaming = BNNSGraphContextMakeStreaming();
        goto LABEL_22;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315394;
      v17 = "NeuralNetImpl.cpp";
      v18 = 1024;
      v19 = 1535;
      _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Mode=ManagedRingBuffer, Invoking BNNSGraphContextMakeStreaming", &v16, 0x12u);
    }

    goto LABEL_17;
  }

  if (!v5)
  {
    v8 = MEMORY[0x1E69E9C10];
LABEL_19:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315394;
      v17 = "NeuralNetImpl.cpp";
      v18 = 1024;
      v19 = 1539;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Invoking BNNSGraphContextMake", &v16, 0x12u);
    }

    goto LABEL_21;
  }

  v8 = *v5;
  if (*v5)
  {
    goto LABEL_19;
  }

LABEL_21:
  Streaming = BNNSGraphContextMake();
LABEL_22:
  v11 = v10;
  *(a1 + 312) = Streaming;
  *(a1 + 320) = v10;
  v12 = (v10 | Streaming) != 0;
  if (v10 | Streaming)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = *v13;
      if (!*v13)
      {
LABEL_29:
        BNNSGraphContextSetArgumentType();
        return v12;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "NeuralNetImpl.cpp";
      v18 = 1024;
      v19 = 1547;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d context size is %zu bytes", &v16, 0x1Cu);
    }

    goto LABEL_29;
  }

  return v12;
}

void MIL2BNNS::loadModel(MIL2BNNS *this, CFDictionaryRef theDict)
{
  v3 = this;
  v156 = *MEMORY[0x1E69E9840];
  v151 = this;
  if (!CFDictionaryContainsKey(theDict, @"DynamicBatchSize"))
  {
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(theDict, @"DynamicBatchSize");
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  *buf = v5;
  v6 = applesauce::CF::convert_to<BOOL,0>(v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (!v6)
  {
    goto LABEL_16;
  }

  if (CFDictionaryContainsKey(theDict, @"BatchSize"))
  {
    v7 = CFDictionaryGetValue(theDict, @"BatchSize");
    v8 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    *buf = v8;
    v9 = applesauce::CF::convert_to<unsigned int,0>(v8);
    if (v8)
    {
      CFRelease(v8);
    }

    v10 = *(v3 + 1);
    if (v10)
    {
      v11 = *v10;
      if (!*v10)
      {
LABEL_20:
        BNNSGraphContextSetBatchSize_v2();
        WorkspaceSize_v2 = BNNSGraphContextGetWorkspaceSize_v2();
        v3 = v151;
        goto LABEL_21;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "NeuralNetImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1567;
      *&buf[18] = 1024;
      *&buf[20] = v9;
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Use DYNAMIC batch size (batch size = %d)", buf, 0x18u);
    }

    goto LABEL_20;
  }

  if (CFDictionaryContainsKey(theDict, @"BatchSize"))
  {
LABEL_16:
    WorkspaceSize_v2 = BNNSGraphGetWorkspaceSize_v2();
    goto LABEL_21;
  }

  BNNSGraphContextSetBatchSize_v2();
  WorkspaceSize_v2 = BNNSGraphContextGetWorkspaceSize_v2();
LABEL_21:
  *(v3 + 29) = WorkspaceSize_v2;
  if (!WorkspaceSize_v2)
  {
    v14 = *(v3 + 30);
    *(v3 + 30) = 0;
    if (!v14)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (WorkspaceSize_v2 == -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "BNNSGraphGetWorkspaceSize failed");
  }

  v13 = malloc_type_valloc(WorkspaceSize_v2, 0x100004077774924uLL);
  v14 = *(v3 + 30);
  *(v3 + 30) = v13;
  if (v14)
  {
LABEL_26:
    MEMORY[0x1E12BD130](v14, 0x1000C8077774924);
  }

LABEL_27:
  v15 = *(v3 + 1);
  if (v15)
  {
    v16 = *v15;
    if (!*v15)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v3 + 29);
    *buf = 136315650;
    *&buf[4] = "NeuralNetImpl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1596;
    *&buf[18] = 2048;
    *&buf[20] = v17;
    _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d graph workspace size is %zu bytes", buf, 0x1Cu);
  }

LABEL_33:
  v18 = *(v3 + 28);
  if (v18 >= 3)
  {
    v137 = *(v3 + 1);
    if (v137)
    {
      v138 = *v137;
    }

    else
    {
      v138 = 0;
    }

    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "NeuralNetImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1602;
      *&buf[18] = 1024;
      *&buf[20] = -66743;
      *&buf[24] = 1024;
      *&buf[26] = v18;
      _os_log_impl(&dword_1DDB85000, v138, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unknown streaming mode (%d).", buf, 0x1Eu);
    }

    v141 = __cxa_allocate_exception(0x10uLL);
    *v141 = &unk_1F593B0D8;
    v141[2] = -66743;
  }

  v19 = v3 + 328;
  v20 = v151;
  ArgumentCount = BNNSGraphGetArgumentCount();
  v22 = 8 * ArgumentCount;
  MEMORY[0x1EEE9AC00](ArgumentCount);
  if ((8 * ArgumentCount) >= 0x200)
  {
    v23 = 512;
  }

  else
  {
    v23 = 8 * ArgumentCount;
  }

  v148 = v142 - ((8 * ArgumentCount + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v148, v23);
  MEMORY[0x1EEE9AC00](v24);
  v150 = v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v20 + 1);
  if (v26)
  {
    v27 = *v26;
    if (!*v26)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v27 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "NeuralNetImpl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1608;
    *&buf[18] = 2048;
    *&buf[20] = ArgumentCount;
    _os_log_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d graph has %zu arguments", buf, 0x1Cu);
  }

LABEL_43:
  BNNSGraphGetArgumentNames();
  v152 = ArgumentCount;
  v28 = ArgumentCount;
  BNNSGraphGetArgumentIntents();
  v29 = v151;
  std::vector<bnns_graph_argument_t>::resize(v151 + 21, v28);
  std::vector<bnns_graph_argument_t>::resize(v29 + 24, v28);
  v29[27] = 0;
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29[37] - v29[35]) >> 4) >= v28;
  v149 = v29 + 35;
  if (!v31)
  {
    if (v28 <= 0x555555555555555)
    {
      *&buf[32] = v29 + 35;
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL2BNNS::GraphTensor>>(v28);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v32 = MEMORY[0x1EEE9AC00](v30);
  v33 = (v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = (v29 + 32);
  v29[32] = 0;
  v34 = v29;
  if (v28)
  {
    v35 = v28;
    v142[1] = v19;
    v36 = 0;
    v145 = v34 + 40;
    v37 = v34 + 64;
    v38 = v34 + 88;
    v32.n128_u64[0] = 136315650;
    v143 = v32;
    v32.n128_u64[0] = 136315906;
    v144 = v32;
    while (1)
    {
      v40 = *(v34 + 36);
      v39 = *(v34 + 37);
      if (v40 >= v39)
      {
        v42 = 0xAAAAAAAAAAAAAAABLL * ((v40 - *v149) >> 4);
        v43 = v42 + 1;
        if (v42 + 1 > 0x555555555555555)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v44 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *v149) >> 4);
        if (2 * v44 > v43)
        {
          v43 = 2 * v44;
        }

        if (v44 >= 0x2AAAAAAAAAAAAAALL)
        {
          v45 = 0x555555555555555;
        }

        else
        {
          v45 = v43;
        }

        *&buf[32] = v149;
        if (v45)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MIL2BNNS::GraphTensor>>(v45);
        }

        *buf = 0;
        *&buf[8] = 48 * v42;
        *&buf[16] = 48 * v42;
        *&buf[24] = 0;
        v34 = v151;
        MIL2BNNS::GraphTensor::GraphTensor(*&buf[8], v151 + 312, *&v148[8 * v36]);
        *&buf[16] += 48;
        v46 = *(v34 + 35);
        v47 = *(v34 + 36);
        v48 = *&buf[8] + v46 - v47;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL2BNNS::GraphTensor>,MIL2BNNS::GraphTensor*>(v149, v46, v47, v48);
        v49 = *(v34 + 35);
        *(v34 + 35) = v48;
        v50 = *(v34 + 37);
        v147 = *&buf[16];
        *(v34 + 18) = *&buf[16];
        *&buf[16] = v49;
        *&buf[24] = v50;
        *buf = v49;
        *&buf[8] = v49;
        std::__split_buffer<MIL2BNNS::GraphTensor>::~__split_buffer(buf);
        v41 = v147;
      }

      else
      {
        MIL2BNNS::GraphTensor::GraphTensor(*(v34 + 36), (v34 + 312), *&v148[8 * v36]);
        v41 = v40 + 48;
        *(v34 + 36) = v40 + 48;
      }

      *(v34 + 36) = v41;
      v51 = v41 - 48;
      v52 = (v41 - 32);
      v53 = *(v41 - 9);
      if (v53 >= 0)
      {
        v54 = *(v41 - 9);
      }

      else
      {
        v54 = *(v41 - 24);
      }

      v55 = v34[63];
      v56 = v55;
      if ((v55 & 0x80u) != 0)
      {
        v55 = *(v34 + 6);
      }

      if (v54 == v55)
      {
        v57 = (v53 >= 0 ? v41 - 32 : *v52);
        v58 = v56 >= 0 ? v145 : *v145;
        if (!memcmp(v57, v58, v54) && *&v150[4 * v36] == 1)
        {
          *(v34 + 33) = v51;
          v59 = *(v34 + 1);
          if (v59)
          {
            v60 = *v59;
            if (!*v59)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v60 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = (v41 - 32);
            if (*(v41 - 9) < 0)
            {
              v61 = *v52;
            }

            *buf = v143.n128_u32[0];
            *&buf[4] = "NeuralNetImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1630;
            *&buf[18] = 2080;
            *&buf[20] = v61;
            _os_log_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Identified Input Tensor: %s", buf, 0x1Cu);
          }
        }
      }

LABEL_81:
      v62 = *(v41 - 9);
      if (v62 >= 0)
      {
        v63 = *(v41 - 9);
      }

      else
      {
        v63 = *(v41 - 24);
      }

      v64 = v34[87];
      v65 = v64;
      if ((v64 & 0x80u) != 0)
      {
        v64 = *(v34 + 9);
      }

      if (v63 == v64)
      {
        v66 = (v62 >= 0 ? v41 - 32 : *v52);
        v67 = v65 >= 0 ? v37 : *v37;
        if (!memcmp(v66, v67, v63) && *&v150[4 * v36] == 1)
        {
          *(v34 + 34) = v51;
          v68 = *(v34 + 1);
          if (v68)
          {
            v69 = *v68;
            if (!*v68)
            {
              goto LABEL_103;
            }
          }

          else
          {
            v69 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 = (v41 - 32);
            if (*(v41 - 9) < 0)
            {
              v70 = *v52;
            }

            *buf = v143.n128_u32[0];
            *&buf[4] = "NeuralNetImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1634;
            *&buf[18] = 2080;
            *&buf[20] = v70;
            _os_log_impl(&dword_1DDB85000, v69, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Identified Embedding Tensor: %s", buf, 0x1Cu);
          }
        }
      }

LABEL_103:
      v71 = *(v41 - 9);
      if (v71 >= 0)
      {
        v72 = *(v41 - 9);
      }

      else
      {
        v72 = *(v41 - 24);
      }

      v73 = v34[111];
      v74 = v73;
      if ((v73 & 0x80u) != 0)
      {
        v73 = *(v34 + 12);
      }

      if (v72 == v73)
      {
        v75 = (v71 >= 0 ? v41 - 32 : *v52);
        v76 = v74 >= 0 ? v38 : *v38;
        if (!memcmp(v75, v76, v72) && *&v150[4 * v36] == 2)
        {
          *(v34 + 38) = v51;
          v77 = *(v34 + 1);
          if (v77)
          {
            v78 = *v77;
            if (!*v77)
            {
              goto LABEL_125;
            }
          }

          else
          {
            v78 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            v79 = (v41 - 32);
            if (*(v41 - 9) < 0)
            {
              v79 = *v52;
            }

            *buf = v143.n128_u32[0];
            *&buf[4] = "NeuralNetImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1638;
            *&buf[18] = 2080;
            *&buf[20] = v79;
            _os_log_impl(&dword_1DDB85000, v78, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Identified Output Tensor: %s", buf, 0x1Cu);
          }
        }
      }

LABEL_125:
      if (*&v150[4 * v36] == 3)
      {
        if (*(v34 + 28) != 2)
        {
          v130 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v130, "Argument has InOut intent but streaming mode is not set as ManagedRingBuffer");
        }

        v33[v36] = *v146;
      }

      else
      {
        v80 = *(v34 + 32);
        v33[v36] = v80;
        v81 = v34;
        v82 = *(v41 - 40);
        *(v81 + 32) = (v80 + v82 + 63) & 0xFFFFFFFFFFFFFFC0;
        v83 = *(v81 + 1);
        if (!v83)
        {
          v84 = MEMORY[0x1E69E9C10];
LABEL_132:
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            if (*(v41 - 9) < 0)
            {
              v52 = *v52;
            }

            *buf = v144.n128_u32[0];
            *&buf[4] = "NeuralNetImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1656;
            *&buf[18] = 2080;
            *&buf[20] = v52;
            *&buf[28] = 2048;
            *&buf[30] = v82;
            _os_log_impl(&dword_1DDB85000, v84, OS_LOG_TYPE_DEBUG, "%25s:%-5d allocation for tensor name: %s nBytes: %zu", buf, 0x26u);
          }

          goto LABEL_136;
        }

        v84 = *v83;
        if (*v83)
        {
          goto LABEL_132;
        }
      }

LABEL_136:
      ++v36;
      v34 = v151;
      if (v35 == v36)
      {
        v85 = 0;
        goto LABEL_138;
      }
    }
  }

  v85 = 1;
LABEL_138:
  if (!*(v34 + 33))
  {
    v139 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v139, "failed to find input graph tensor");
    goto LABEL_226;
  }

  v86 = *(v34 + 38);
  if (!v86)
  {
    v139 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v139, "failed to find output graph tensor");
    goto LABEL_226;
  }

  if (!*(v34 + 34))
  {
    v87 = v34[87];
    if (v87 < 0)
    {
      v87 = *(v34 + 9);
    }

    if (v87)
    {
      v139 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v139, "failed to find embedding graph tensor");
LABEL_226:
    }
  }

  std::vector<float>::resize(v34 + 15, *v86);
  v88 = malloc_type_aligned_alloc(0x40uLL, *(v34 + 32), 0x100004077774924uLL);
  v89 = *(v34 + 31);
  *(v34 + 31) = v88;
  if (v89)
  {
    MEMORY[0x1E12BD130](v89, 0x1000C8077774924);
    v88 = *(v34 + 31);
  }

  bzero(v88, *(v34 + 32));
  v90 = *(v34 + 1);
  if (v90)
  {
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_152;
    }
  }

  else
  {
    v91 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    v92 = *v146;
    *buf = 136315650;
    *&buf[4] = "NeuralNetImpl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1676;
    *&buf[18] = 2048;
    *&buf[20] = v92;
    _os_log_impl(&dword_1DDB85000, v91, OS_LOG_TYPE_DEFAULT, "%25s:%-5d allocated %zu bytes of tensor data", buf, 0x1Cu);
  }

LABEL_152:
  if ((v85 & 1) == 0)
  {
    v93 = 0;
    v94 = v150;
    v95 = v152;
    do
    {
      v96 = *v94++;
      if (v96 != 3)
      {
        v97 = *(v34 + 35) + v93;
        *(v97 + 40) = *(v34 + 31) + *v33;
        ArgumentPosition = BNNSGraphGetArgumentPosition();
        v99 = *(v97 + 8);
        v34 = v151;
        v100 = (*(v151 + 21) + 16 * ArgumentPosition);
        *v100 = *(v97 + 40);
        v100[1] = v99;
        *(*(v34 + 24) + 16 * ArgumentPosition) = *(*(v34 + 21) + 16 * ArgumentPosition);
      }

      ++v33;
      v93 += 48;
      --v95;
    }

    while (v95);
  }

  if (*(v34 + 28) == 1)
  {
    v101 = v152;
    v102 = v149;
    OutputCount = BNNSGraphGetOutputCount();
    v104 = OutputCount;
    if (OutputCount)
    {
      v105 = 0;
      v106 = 0;
      v146 = 48 * OutputCount;
      v148 = OutputCount;
      do
      {
        v107 = *v102;
        v108 = *v102 + 48 * v105;
        v109 = (v108 + 16);
        v110 = *(v108 + 39);
        if ((v110 & 0x8000000000000000) != 0)
        {
          v111 = *(v108 + 16);
          v112 = *(v108 + 24);
        }

        else
        {
          v111 = v108 + 16;
          v112 = *(v108 + 39);
        }

        if (v112 >= 0xA)
        {
          v113 = v112 + v111;
          v114 = *(v113 - 10);
          v115 = *(v113 - 2);
          if (v114 == 0x6174735F74756F5FLL && v115 == 25972)
          {
            LODWORD(v147) = v106;
            v145 = (v108 + 16);
            if ((v110 & 0x80000000) != 0)
            {
              v109 = *(v108 + 16);
              v110 = *(v108 + 24);
            }

            v117 = std::string_view::find[abi:ne200100](v109, v110, "_out_state");
            if (v110 >= v117)
            {
              v110 = v117;
            }

            if (v104 >= v101)
            {
LABEL_205:
              v129 = __cxa_allocate_exception(0x10uLL);
              std::operator+<char>();
              std::runtime_error::runtime_error(v129, buf);
            }

            v118 = v107 + v146;
            v119 = v148;
            while (1)
            {
              v120 = *(v118 + 39);
              if ((v120 & 0x8000000000000000) != 0)
              {
                v121 = *(v118 + 16);
                v120 = *(v118 + 24);
              }

              else
              {
                v121 = (v118 + 16);
              }

              v122 = std::string_view::find[abi:ne200100](v121, v120, "_in_state");
              v123 = v120 >= v122 ? v122 : v120;
              v124 = v122 != -1 && v110 == v123;
              if (v124 && !memcmp(v109, v121, v110))
              {
                break;
              }

              ++v119;
              v118 += 48;
              if (v152 == v119)
              {
                goto LABEL_205;
              }
            }

            v102 = v149;
            if (*(v108 + 8) != *(v118 + 8) || *&v150[4 * v105] != 2 || *&v150[4 * v119] != 1)
            {
              v131 = __cxa_allocate_exception(0x10uLL);
              std::operator+<char>();
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v154, &v153, " - ");
              v132 = *(v118 + 39);
              if (v132 >= 0)
              {
                v133 = (v118 + 16);
              }

              else
              {
                v133 = *(v118 + 16);
              }

              if (v132 >= 0)
              {
                v134 = *(v118 + 39);
              }

              else
              {
                v134 = *(v118 + 24);
              }

              v135 = std::string::append(&v154, v133, v134);
              v136 = *&v135->__r_.__value_.__l.__data_;
              *&buf[16] = *(&v135->__r_.__value_.__l + 2);
              *buf = v136;
              v135->__r_.__value_.__l.__size_ = 0;
              v135->__r_.__value_.__r.__words[2] = 0;
              v135->__r_.__value_.__r.__words[0] = 0;
              std::runtime_error::runtime_error(v131, buf);
            }

            v101 = v152;
            v125 = *(v151 + 24);
            v126 = *(v125 + 16 * v105);
            *(v125 + 16 * v105) = *(v125 + 16 * v119);
            *(v125 + 16 * v119) = v126;
            v106 = v147 + 1;
            v104 = v148;
          }
        }

        ++v105;
      }

      while (v105 != v104);
    }

    else
    {
      v106 = 0;
    }

    v127 = *(v151 + 1);
    if (v127)
    {
      v128 = *v127;
      if (!*v127)
      {
        return;
      }
    }

    else
    {
      v128 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "NeuralNetImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1737;
      *&buf[18] = 1024;
      *&buf[20] = v106;
      _os_log_impl(&dword_1DDB85000, v128, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Identified %u streaming pairs", buf, 0x18u);
    }
  }
}

void sub_1DDEB6C94(void *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 2)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = *(*(v3 - 248) + 8);
    if (v7)
    {
      v8 = *v7;
    }

    else
    {
      v8 = 0;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = (*(*v6 + 16))(v6);
      *(v3 - 192) = 136315906;
      *(v3 - 188) = "NeuralNetImpl.cpp";
      *(v3 - 180) = 1024;
      *(v3 - 178) = 1741;
      *(v3 - 174) = 1024;
      *(v3 - 172) = -66743;
      *(v3 - 168) = 2080;
      *(v3 - 166) = v9;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Run time error: %s", (v3 - 192), 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F593B0D8;
    exception[2] = -66743;
  }

  JUMPOUT(0x1DDEB6FE8);
}

void sub_1DDEB6FE0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::vector<bnns_graph_argument_t>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

unint64_t *MIL2BNNS::GraphTensor::GraphTensor(unint64_t *a1, uint64_t a2, const std::string::value_type *a3)
{
  a1[2] = 0;
  a1[3] = 0;
  v5 = (a1 + 2);
  a1[4] = 0;
  BNNSGraphContextGetTensorDescriptor_v2();
  if (v11 == 65552)
  {
    v6 = 2;
  }

  else
  {
    if (v11 != 65568)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid data type");
    }

    v6 = 4;
  }

  v7 = MEMORY[0x1E12BB0F0](&v10);
  *a1 = v7 / v6;
  a1[1] = v7;
  std::string::__assign_external(v5, a3);
  a1[5] = 0;
  return a1;
}

void sub_1DDEB7210(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string_view::find[abi:ne200100](char *a1, uint64_t a2, char *__s)
{
  result = strlen(__s);
  if (result)
  {
    v7 = result;
    v8 = &a1[a2];
    if (result <= a2)
    {
      v10 = *__s;
      v11 = a1;
      do
      {
        if (a2 - v7 == -1)
        {
          break;
        }

        v12 = memchr(v11, v10, a2 - v7 + 1);
        if (!v12)
        {
          break;
        }

        v9 = v12;
        if (!memcmp(v12, __s, v7))
        {
          goto LABEL_4;
        }

        v11 = v9 + 1;
        a2 = v8 - (v9 + 1);
      }

      while (a2 >= v7);
    }

    v9 = v8;
LABEL_4:
    if (v9 == v8)
    {
      return -1;
    }

    else
    {
      return v9 - a1;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL2BNNS::GraphTensor>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL2BNNS::GraphTensor>,MIL2BNNS::GraphTensor*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      *(a4 + 40) = *(v6 + 40);
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    do
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(*(v5 + 16));
      }

      v5 += 48;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<MIL2BNNS::GraphTensor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFUUID const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void PPUtils::ContiguousArray2D<unsigned int>::resize(uint64_t a1, unsigned int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  v6 = a3 * a2;
  std::vector<unsigned int>::resize((a1 + 8), a3 * a2);
  std::vector<unsigned int>::shrink_to_fit((a1 + 8));
  std::vector<unsigned int *>::resize((a1 + 32), a2);
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48) - v8;
  if (v9 > (v7 - v8))
  {
    v10 = (v7 - v8) >> 3;
    if (v7 != v8)
    {
      std::allocator<unsigned int *>::allocate_at_least[abi:ne200100]((v7 - v8) >> 3);
    }

    v11 = 0;
    if (v9 >> 3)
    {
      v12 = 8 * v10;
      v13 = *(a1 + 40) - v8;
      v14 = 8 * v10 - v13;
      memcpy((v12 - v13), v8, v13);
      v11 = *(a1 + 32);
      *(a1 + 32) = v14;
      *(a1 + 40) = v12;
      *(a1 + 48) = 0;
    }

    if (v11)
    {
      operator delete(v11);
    }
  }

  if (v6)
  {
    v15 = 0;
    v16 = 0;
    if (a2 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = a2;
    }

    v18 = 8 * v17;
    do
    {
      *(*(a1 + 32) + v16) = *(a1 + 8) + 4 * v15;
      v16 += 8;
      v15 += a3;
    }

    while (v18 != v16);
  }
}

void sub_1DDEB7584(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDEB7534);
}

void *PPUtils::ContiguousArray3D<unsigned int>::~ContiguousArray3D(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    v4 = a1[6];
    v5 = a1[5];
    if (v4 != v3)
    {
      v6 = a1[6];
      do
      {
        v8 = *(v6 - 24);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[5];
    }

    a1[6] = v3;
    operator delete(v5);
  }

  v9 = a1[2];
  if (v9)
  {
    a1[3] = v9;
    operator delete(v9);
  }

  return a1;
}

void std::vector<unsigned int>::shrink_to_fit(std::vector<unsigned int> *this)
{
  end = this->__end_;
  begin = this->__begin_;
  v3 = this->__end_cap_.__value_ - this->__begin_;
  v4 = end - this->__begin_;
  if (v3 > v4)
  {
    if (end != begin)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](this, v4 >> 2);
    }

    v6 = 0;
    if (v3 >> 2)
    {
      v7 = (4 * (v4 >> 2));
      v8 = (this->__end_ - begin);
      v9 = (v7 - v8);
      memcpy((v7 - v8), begin, v8);
      v6 = this->__begin_;
      this->__begin_ = v9;
      this->__end_ = v7;
      this->__end_cap_.__value_ = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::vector<unsigned int *>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<unsigned int *>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void std::allocator<unsigned int *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AUMicIssueDetector::GetScopeExtended(AUMicIssueDetector *this, int a2)
{
  if (a2 == 4)
  {
    return this + 776;
  }

  else
  {
    return 0;
  }
}

BOOL AUMicIssueDetector::ValidFormat(AUMicIssueDetector *this, const AudioStreamBasicDescription *a2, int a3, AudioStreamBasicDescription *a4)
{
  if (a2 == 2 && a3 == 2)
  {
    if (ausdk::ASBD::IsCommonFloat32(a4, a2))
    {
      v5 = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
    }

    else
    {
      v5 = 0;
    }

    return a4->mChannelsPerFrame == 1 && v5;
  }

  else
  {
    v6 = a4->mBitsPerChannel == 64 && a4->mFormatID == 1718773105;
    v7 = (a4->mFormatFlags >> 5) & 1;
    if (!v6)
    {
      v7 = 0;
    }

    if (a2 == 2 && (a3 == 4 || a3 == 1))
    {
      v8 = a4->mChannelsPerFrame == 1;
    }

    else
    {
      v8 = a4->mChannelsPerFrame - 2 < 7;
    }

    return v7 & v8;
  }
}

uint64_t AUMicIssueDetector::SupportedNumChannels(AUMicIssueDetector *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMicIssueDetector::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 7;
}

uint64_t AUMicIssueDetector::CopyClumpName(AUMicIssueDetector *this, int a2, int a3, unsigned int a4, const __CFString **a5)
{
  if (a2)
  {
    return 4294956430;
  }

  if ((a3 - 1) > 4)
  {
    return 4294956418;
  }

  v7 = CFStringCreateWithCString(0, off_1E866C6D0[a3 - 1], 0x8000100u);
  result = 0;
  *a5 = v7;
  return result;
}

uint64_t AUMicIssueDetector::GetParameterValueStrings(AUMicIssueDetector *this, int a2, unsigned int a3, const __CFArray **a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2 != 4)
    {
      return 4294956430;
    }

    v6 = 552;
  }

  else
  {
    v6 = 528;
  }

  result = 4294956418;
  if (!a2 && (*(this + v6 + 8) - *(this + v6)) >> 5 <= a3)
  {
    if (a4)
    {
      if (a3 == 4)
      {
        v9 = xmmword_1E866C6C0;
        v8 = CFArrayCreate(0, &v9, 4, 0);
        result = 0;
        *a4 = v8;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUMicIssueDetector::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result && *(this + 17) == 1)
  {
    ++*(this + 149);
    ++*(this + 151);
    ++*(this + 153);
  }

  return result;
}

uint64_t AUMicIssueDetector::SaveExtendedScopes(AUMicIssueDetector *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUMicIssueDetector::GetParameterInfo(AUMicIssueDetector *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    if (a2 != 4)
    {
      return 4294956430;
    }

    v4 = 552;
  }

  else
  {
    v4 = 528;
  }

  v5 = *(this + v4);
  if (a3 >= ((*(this + v4 + 8) - v5) >> 5))
  {
    return 4294956418;
  }

  v6 = v5 + 32 * a3;
  v7 = *(v6 + 12);
  buffer->unit = *(v6 + 8);
  buffer->minValue = *(v6 + 16);
  buffer->maxValue = *(v6 + 20);
  buffer->defaultValue = *(v6 + 24);
  v8 = v7 + 1082130432;
  buffer->flags = v7 + 1082130432;
  v9 = *(v6 + 28);
  if (v9 >= 1)
  {
    buffer->clumpID = v9;
    v8 |= 0x100000u;
  }

  v10 = *v6;
  buffer->cfNameString = *v6;
  buffer->flags = v8 | 0x8000000;
  CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
  return 0;
}

uint64_t AUMicIssueDetector::SetBusCount(AUMicIssueDetector *this, int a2, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    if (a3 - 1 <= 4)
    {
      v4 = (this + 128);
      goto LABEL_7;
    }

    {
      AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
    }

    v6 = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
    if (!os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_ERROR))
    {
      return 4294956445;
    }

    v8 = 136315650;
    v9 = "AUMicIssueDetector.cpp";
    v10 = 1024;
    v11 = 189;
    v12 = 1024;
    v13 = a3;
    v7 = "%s:%-5d Invalid number (%u) of output buses requested. We only support 1–5 buses.";
    goto LABEL_15;
  }

  if (a2 != 1)
  {
    return 4294956430;
  }

  if (a3 - 1 <= 1)
  {
    v4 = (this + 80);
LABEL_7:
    ausdk::AUScope::SetNumberOfElements(v4, a3);
    return 0;
  }

  {
    {
      AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
    }
  }

  v6 = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
  if (os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = "AUMicIssueDetector.cpp";
    v10 = 1024;
    v11 = 180;
    v12 = 1024;
    v13 = a3;
    v7 = "%s:%-5d Invalid number (%u) of input buses requested. We only support 1-2 input buses.";
LABEL_15:
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, v7, &v8, 0x18u);
  }

  return 4294956445;
}

uint64_t AUMicIssueDetector::BusCountWritable(AUMicIssueDetector *this, int a2)
{
  if ((a2 - 1) > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 17) ^ 1;
  }

  return v2 & 1;
}

ausdk::AUInputElement *AUMicIssueDetector::Render(AUMicIssueDetector *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v36 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v10 = *(this + 15);
    if (v10)
    {
      LODWORD(v11) = (*(*v10 + 24))(v10);
    }

    else
    {
      v11 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v9 >= v11)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((this + 80), v9);
    if (Element && *(Element + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v9);
      if (v14)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, v9, a4);
      }

      if (result)
      {
        return result;
      }
    }

    else
    {
      v8 = 1;
    }

    v9 = (v9 + 1);
  }

  v15 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  do
  {
    v16 = *(this + 21);
    if (v16)
    {
      LODWORD(v17) = (*(*v16 + 24))(v16);
    }

    else
    {
      v17 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (v15 >= v17)
    {
      v19 = 0;
    }

    else
    {
      v18 = ausdk::AUScope::GetElement((this + 128), v15);
      if (!v18)
      {
LABEL_43:
        ausdk::Throw(0xFFFFD583);
      }

      v19 = ausdk::AUIOElement::PrepareBuffer(v18, a4);
    }

    *(v34 + v15++) = v19;
  }

  while (v15 != 5);
  if (v8)
  {
    return 0;
  }

  v20 = 0;
  v32 = 0;
  v33 = 0;
  v21 = &v32;
  v22 = 1;
  do
  {
    v23 = v22;
    v24 = *(this + 15);
    if (v24)
    {
      LODWORD(v25) = (*(*v24 + 24))(v24);
    }

    else
    {
      v25 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v20 >= v25)
    {
      v27 = 0;
    }

    else
    {
      v26 = ausdk::AUScope::GetElement((this + 80), v20);
      if (!v26)
      {
        goto LABEL_43;
      }

      if (!*(v26 + 144))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v27 = *(v26 + 152) + 48;
    }

    v22 = 0;
    *v21 = v27;
    v21 = &v33;
    v20 = 1;
  }

  while ((v23 & 1) != 0);
  v28 = *(this + 15);
  if (v28)
  {
    v29 = (*(*v28 + 24))(v28);
  }

  else
  {
    v29 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v30 = *(this + 21);
  if (v30)
  {
    v31 = (*(*v30 + 24))(v30);
  }

  else
  {
    v31 = (*(this + 19) - *(this + 18)) >> 3;
  }

  return (*(*this + 184))(this, a2, a4, v29, &v32, v31, v34);
}

uint64_t AUMicIssueDetector::ProcessMultipleBufferLists(AUMicIssueDetector *this, unsigned int *a2, int a3, int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 145) != a3)
  {
    return 4294956422;
  }

  if (*(this + 147) != a4)
  {
    return 4294956419;
  }

  v8 = a6;
  if (*(this + 148) != a6)
  {
    return 4294956419;
  }

  v11 = 2 * a3;
  if (!a3 || (*(this + 576) & 1) != 0)
  {
    v32 = *(this + 146);
    if (v32)
    {
      v33 = 0;
      v34 = 16;
      do
      {
        if (v11)
        {
          memmove(*(&(*a7)->mNumberBuffers + v34), *(&(*a5)->mNumberBuffers + v34), 4 * v11);
          v32 = *(this + 146);
        }

        ++v33;
        v34 += 16;
      }

      while (v33 < v32);
      v8 = *(this + 148);
    }

    if (v8 > 1)
    {
      v35 = a7[1];
      if (v35 && v11)
      {
        memmove(v35->mBuffers[0].mData, *&(*a5)[1].mBuffers[0].mNumberChannels, 4 * v11);
        v8 = *(this + 148);
      }

      if (v8 >= 3)
      {
        v36 = a7[2];
        if (v36)
        {
          vDSP_vfill(&AUMicIssueDetector::kOnef, v36->mBuffers[0].mData, 1, v36->mBuffers[0].mDataByteSize >> 2);
        }
      }
    }
  }

  else
  {
    v12 = *(this + 149);
    if (v12 != *(this + 150))
    {
      *(this + 150) = v12;
      v13 = *(this + 67);
      v14 = *(this + 66);
      if (v13 != v14)
      {
        v15 = 0;
        v16 = 12;
        do
        {
          if ((*(v14 + v16 + 1) & 0x80) == 0)
          {
            v17 = *(this + 78);
            v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v19 & 1) == 0)
            {
              goto LABEL_114;
            }

            Parameter = ausdk::AUElement::GetParameter(v18, v15);
            (*(*v17 + 32))(v17, v15, Parameter);
            v13 = *(this + 67);
            v14 = *(this + 66);
          }

          ++v15;
          v16 += 32;
        }

        while (v15 < (v13 - v14) >> 5);
      }

      for (i = 0; ; i = (i + 1))
      {
        v22 = *(this + 102);
        if (v22)
        {
          LODWORD(v23) = (*(*v22 + 24))(v22, a2);
        }

        else
        {
          v23 = (*(this + 100) - *(this + 99)) >> 3;
        }

        if (i >= v23)
        {
          break;
        }

        v24 = *(this + 70);
        v25 = *(this + 69);
        if (v24 != v25)
        {
          v26 = 0;
          v27 = 12;
          do
          {
            if ((*(v25 + v27 + 1) & 0x80) == 0)
            {
              v28 = *(this + 78);
              Element = ausdk::AUScope::GetElement((this + 776), i);
              v30 = ausdk::AUElement::GetParameter(Element, v26);
              (*(*v28 + 40))(v28, i, v26, v30);
              v24 = *(this + 70);
              v25 = *(this + 69);
            }

            ++v26;
            v27 += 32;
          }

          while (v26 < (v24 - v25) >> 5);
        }
      }

      (*(**(this + 78) + 64))(*(this + 78));
    }

    v37 = *(this + 151);
    if (v37 != *(this + 152))
    {
      *(this + 152) = v37;
      v38 = *(this + 78);
      v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v40 & 1) == 0)
      {
LABEL_114:
        abort();
      }

      v41 = ausdk::AUElement::GetParameter(v39, 3u);
      (*(*v38 + 32))(v38, 3, v41);
    }

    v42 = *(this + 153);
    if (v42 != *(this + 154))
    {
      v47 = 0;
      *(this + 154) = v42;
      while (1)
      {
        v48 = *(this + 102);
        if (v48)
        {
          LODWORD(v49) = (*(*v48 + 24))(v48);
        }

        else
        {
          v49 = (*(this + 100) - *(this + 99)) >> 3;
        }

        if (v47 >= v49)
        {
          break;
        }

        v50 = *(this + 78);
        v51 = ausdk::AUScope::GetElement((this + 776), v47);
        v52 = ausdk::AUElement::GetParameter(v51, 6u);
        (*(*v50 + 40))(v50, v47, 6, v52);
        v53 = *(this + 78);
        v54 = ausdk::AUScope::GetElement((this + 776), v47);
        v55 = ausdk::AUElement::GetParameter(v54, 7u);
        (*(*v53 + 40))(v53, v47, 7, v55);
        v56 = *(this + 78);
        v57 = ausdk::AUScope::GetElement((this + 776), v47);
        v58 = ausdk::AUElement::GetParameter(v57, 8u);
        (*(*v56 + 40))(v56, v47, 8, v58);
        v59 = *(this + 78);
        v60 = ausdk::AUScope::GetElement((this + 776), v47);
        v61 = ausdk::AUElement::GetParameter(v60, 9u);
        (*(*v59 + 40))(v59, v47, 9, v61);
        v47 = (v47 + 1);
      }
    }

    v43 = *(this + 146);
    if (v43)
    {
      v44 = 0;
      v45 = 0;
      v46 = 16;
      do
      {
        if (v11)
        {
          memmove(*(*(this + 79) + v44), *(&(*a5)->mNumberBuffers + v46), 4 * v11);
          v43 = *(this + 146);
        }

        ++v45;
        v44 += 24;
        v46 += 16;
      }

      while (v45 < v43);
    }

    else
    {
      v43 = 0;
    }

    v62 = (this + 584);
    if (*(this + 147) > 1u)
    {
      v63 = a5[1];
      if (v63)
      {
        v64 = v63->mNumberBuffers >= v43 ? (this + 584) : a5[1];
        v65 = *v64;
        if (v65)
        {
          v66 = 0;
          v67 = 24 * v65;
          v68 = 16;
          do
          {
            if (v11)
            {
              memmove(*(*(this + 88) + v66), *(&a5[1]->mNumberBuffers + v68), 4 * v11);
            }

            v66 += 24;
            v68 += 16;
          }

          while (v67 != v66);
        }
      }
    }

    (*(**(this + 78) + 72))(*(this + 78), this + 632, this + 656, this + 680, this + 704);
    v69 = *(this + 146);
    if (v69)
    {
      v70 = 0;
      v71 = 0;
      v72 = 16;
      do
      {
        if (v11)
        {
          memmove(*(&(*a7)->mNumberBuffers + v72), *(*(this + 82) + v70), 4 * v11);
          v69 = *v62;
        }

        ++v71;
        v72 += 16;
        v70 += 24;
      }

      while (v71 < v69);
    }

    v73 = *(this + 148);
    if (v73 > 1)
    {
      if (v11)
      {
        v74 = a7[1];
        if (v74)
        {
          memmove(v74->mBuffers[0].mData, *(this + 85), 4 * v11);
          v73 = *(this + 148);
        }
      }

      if (v73 >= 4)
      {
        v75 = a7[3];
        if (v75)
        {
          mNumberBuffers = v75->mNumberBuffers;
          if (mNumberBuffers >= *v62)
          {
            mNumberBuffers = *v62;
          }

          if (mNumberBuffers)
          {
            v77 = 0;
            v78 = 24 * mNumberBuffers;
            v79 = 16;
            do
            {
              if (v11)
              {
                memmove(*(&a7[3]->mNumberBuffers + v79), *(*(this + 91) + v77), 4 * v11);
              }

              v77 += 24;
              v79 += 16;
            }

            while (v78 != v77);
            v73 = *(this + 148);
          }
        }

        if (v73 >= 5)
        {
          if (v11)
          {
            v80 = a7[4];
            if (v80)
            {
              memmove(v80->mBuffers[0].mData, *(this + 94), 4 * v11);
            }
          }
        }
      }
    }

    v81 = *(this + 67);
    v82 = *(this + 66);
    if (v81 != v82)
    {
      v83 = 0;
      v84 = 12;
      do
      {
        if ((*(v82 + v84 + 1) & 0x80) != 0)
        {
          v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v86 & 1) == 0)
          {
            goto LABEL_114;
          }

          v87 = v85;
          v88 = (*(**(this + 78) + 48))(*(this + 78), v83);
          ausdk::AUElement::SetParameter(v87, v83, v88);
          v81 = *(this + 67);
          v82 = *(this + 66);
        }

        ++v83;
        v84 += 32;
      }

      while (v83 < (v81 - v82) >> 5);
    }

    for (j = 0; ; j = (j + 1))
    {
      v90 = *(this + 102);
      if (v90)
      {
        LODWORD(v91) = (*(*v90 + 24))(v90);
      }

      else
      {
        v91 = (*(this + 100) - *(this + 99)) >> 3;
      }

      if (j >= v91)
      {
        break;
      }

      v92 = *(this + 70);
      v93 = *(this + 69);
      if (v92 != v93)
      {
        v94 = 0;
        v95 = 12;
        do
        {
          if ((*(v93 + v95 + 1) & 0x80) != 0)
          {
            v96 = ausdk::AUScope::GetElement((this + 776), j);
            v97 = (*(**(this + 78) + 56))(*(this + 78), j, v94);
            ausdk::AUElement::SetParameter(v96, v94, v97);
            v92 = *(this + 70);
            v93 = *(this + 69);
          }

          ++v94;
          v95 += 32;
        }

        while (v94 < (v92 - v93) >> 5);
      }
    }

    if (v8 >= 3)
    {
      v98 = a7[2];
      if (v98)
      {
        mDataByteSize = v98->mBuffers[0].mDataByteSize;
        mData = v98->mBuffers[0].mData;
        v101 = (*(**(this + 78) + 80))(*(this + 78));
        v102 = (*(v101 + 8) - *v101) >> 2;
        if (v102 >= mDataByteSize >> 2)
        {
          v102 = mDataByteSize >> 2;
        }

        if (v102)
        {
          memmove(mData, *v101, 4 * v102);
        }
      }
    }
  }

  return 0;
}

uint64_t AUMicIssueDetector::SetParameter(AUMicIssueDetector *this, uint64_t a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (result)
  {
    return result;
  }

  if (a3 == 4)
  {
    v11 = *(this + 69);
    if (a2 < ((*(this + 70) - v11) >> 5))
    {
      if ((*(v11 + 32 * a2 + 13) & 0x80) != 0)
      {
        result = 0;
        ++*(this + 153);
        return result;
      }

      goto LABEL_12;
    }

LABEL_14:
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  if (a3)
  {
    return 4294956430;
  }

  v10 = *(this + 66);
  if (a2 >= ((*(this + 67) - v10) >> 5))
  {
    goto LABEL_14;
  }

  if ((a2 - 15) <= 1)
  {
    (*(**(this + 78) + 32))(*(this + 78), a2, a5);
    return 0;
  }

  if ((*(v10 + 32 * a2 + 13) & 0x80) == 0)
  {
LABEL_12:
    result = 0;
    ++*(this + 149);
    return result;
  }

  result = 0;
  ++*(this + 151);
  return result;
}

uint64_t AUMicIssueDetector::SetProperty(AUMicIssueDetector *this, int a2, int a3, unsigned int a4, const __CFDictionary **a5, int a6)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 1001)
  {
    if (a5)
    {
      if (*(this + 17))
      {
        return 4294956447;
      }

      if (*a5)
      {
        GetScalarFromDictOptional<unsigned int>(*a5, @"AlgorithmCoreType", this + 620);
        v8 = *(this + 155);
        if (!v8)
        {
          {
            AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
          }

          v11 = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
          if (os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_INFO))
          {
            *v12 = 136315394;
            *&v12[4] = "AUMicIssueDetector.cpp";
            *&v12[12] = 1024;
            *&v12[14] = 922;
            _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%s:%-5d Successfully retrieved Algorithm Core Type MicIssueDetectorCorev1 \n", v12, 0x12u);
          }

          _ZNSt3__115allocate_sharedB8ne200100I30AUMicIssueDetectorCoreV1ParamsNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        {
          AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
        }

        v10 = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
        if (os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_ERROR))
        {
          *v12 = 136315394;
          *&v12[4] = "AUMicIssueDetector.cpp";
          *&v12[12] = 1024;
          *&v12[14] = 925;
          _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_ERROR, "%s:%-5d Unsupported Algorithm Core Type Provided", v12, 0x12u);
        }
      }
    }

    return 4294956445;
  }

  if (a2 == 21)
  {
    if (a6 == 4)
    {
      result = 0;
      *(this + 576) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  return 4294956417;
}

void GetScalarFromDictOptional<unsigned int>(const __CFDictionary *a1, const __CFString *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {

    CFNumberGetValue(Value, kCFNumberIntType, a3);
  }

  else
  {
    {
      AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
    }

    v6 = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
    if (os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_INFO))
    {
      v7 = 136315650;
      v8 = "AUMicIssueDetector.cpp";
      v9 = 1024;
      v10 = 908;
      v11 = 2080;
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_INFO, "%s:%-5d Param value for %s not found in plist, using default value.", &v7, 0x1Cu);
    }
  }
}

void sub_1DDEB9628(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void GetScalarFromDictOptional<float>(const __CFDictionary *a1, const __CFString *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {

    CFNumberGetValue(Value, kCFNumberFloat32Type, a3);
  }

  else
  {
    {
      AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
    }

    v6 = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
    if (os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_INFO))
    {
      v7 = 136315650;
      v8 = "AUMicIssueDetector.cpp";
      v9 = 1024;
      v10 = 908;
      v11 = 2080;
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_INFO, "%s:%-5d Param value for %s not found in plist, using default value.", &v7, 0x1Cu);
    }
  }
}

void std::__shared_ptr_emplace<AUMicIssueDetectorCoreV1Params>::__on_zero_shared(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<AUMicIssueDetectorCoreV1Params>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F592B4A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUMicIssueDetector::GetProperty(AUMicIssueDetector *this, int a2, int a3, uint64_t a4, float *__b)
{
  result = 4294956417;
  if (!a3)
  {
    if (a2 > 1002)
    {
      if (a2 == 1003)
      {
        v8 = 0.0;
        if (*(this + 17) == 1 && (*(this + 576) & 1) == 0)
        {
          v8 = (*(**(this + 78) + 48))(*(this + 78), 0, 0.0);
        }

LABEL_24:
        result = 0;
        *__b = v8;
        return result;
      }

      if (a2 != 3700)
      {
        return result;
      }

      result = 0;
      v10 = *(this + 376);
    }

    else
    {
      if (a2 != 21)
      {
        if (a2 == 1002)
        {
          if (*(this + 17) == 1 && *(this + 576) != 1)
          {
            if (*(this + 145) != *(this + 84))
            {
              return 4294956446;
            }

            v11 = (*(**(this + 78) + 80))(*(this + 78));
            v12 = *(this + 145);
            if (v12)
            {
              memmove(__b, *v11, 4 * v12);
            }
          }

          else
          {
            v9 = *(this + 84);
            if (v9)
            {
              memset_pattern16(__b, &unk_1DE095DF0, 4 * v9);
            }
          }

          return 0;
        }

        return result;
      }

      result = 0;
      v10 = *(this + 576);
    }

    *__b = v10;
    return result;
  }

  if (a2 == 1004 && a3 == 4)
  {
    v8 = 0.0;
    if (*(this + 17) == 1 && (*(this + 576) & 1) == 0)
    {
      if (*(this + 146) <= a4)
      {
        return result;
      }

      (*(**(this + 78) + 56))(*(this + 78), a4, 1, 0.0);
    }

    goto LABEL_24;
  }

  return result;
}

uint64_t AUMicIssueDetector::GetPropertyInfo(AUMicIssueDetector *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    result = 4294956417;
    if (a2 == 1004 && a3 == 4)
    {
LABEL_4:
      *a6 = 0;
LABEL_5:
      v7 = 4;
LABEL_6:
      result = 0;
      *a5 = v7;
    }
  }

  else
  {
    result = 4294956417;
    if (a2 <= 1001)
    {
      if (a2 == 21)
      {
        *a6 = 1;
        goto LABEL_5;
      }

      if (a2 == 1001)
      {
        *a6 = 1;
        v7 = 8;
        goto LABEL_6;
      }
    }

    else
    {
      if (a2 == 1002)
      {
        *a6 = 1;
        v7 = 4 * *(this + 84);
        goto LABEL_6;
      }

      if (a2 == 1003 || a2 == 3700)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t AUMicIssueDetector::Reset(AUMicIssueDetector *this)
{
  *(this + 596) = xmmword_1DE095FA0;
  *(this + 612) = 1;
  ausdk::AUBase::SetParameter(this, 3u, 0, 0, *(*(this + 66) + 120));
  for (i = 0; ; ++i)
  {
    v3 = *(this + 102);
    if (v3)
    {
      LODWORD(v4) = (*(*v3 + 24))(v3);
    }

    else
    {
      v4 = (*(this + 100) - *(this + 99)) >> 3;
    }

    if (i >= v4)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((this + 776), i);
    ausdk::AUElement::SetParameter(Element, 6u, *(*(this + 69) + 216));
  }

  v6 = *(this + 78);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  return 0;
}

uint64_t AUMicIssueDetector::Initialize(AUMicIssueDetector *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v4 = *(this + 21);
  if (!v4)
  {
    v5 = (*(this + 19) - *(this + 18)) >> 3;
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_11:
    {
      AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
    }

    v6 = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
    if (!os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v23 = 136315394;
    v24 = "AUMicIssueDetector.cpp";
    v25 = 1024;
    v26 = 52;
    v7 = "%s:%-5d Number of Input Elements provided is less than the Minimum required.";
    goto LABEL_28;
  }

  LODWORD(v5) = (*(*v4 + 24))(v4);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v3 >= 3)
  {
    {
      {
        AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
      }
    }

    v6 = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
    if (!os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v23 = 136315394;
    v24 = "AUMicIssueDetector.cpp";
    v25 = 1024;
    v26 = 56;
    v7 = "%s:%-5d Number of Input Elements provided is greather than the Maximum supported.";
LABEL_28:
    v10 = v6;
    v11 = 18;
    goto LABEL_29;
  }

  if (!v5)
  {
    {
      AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
    }

    v6 = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
    if (!os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v23 = 136315394;
    v24 = "AUMicIssueDetector.cpp";
    v25 = 1024;
    v26 = 60;
    v7 = "%s:%-5d Number of Output Elements provided is less than the Minimum required.";
    goto LABEL_28;
  }

  if (v5 >= 6)
  {
    {
      AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
    }

    v6 = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
    if (!os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v23 = 136315394;
    v24 = "AUMicIssueDetector.cpp";
    v25 = 1024;
    v26 = 64;
    v7 = "%s:%-5d Number of Output Elements provided is greather than the Maximum supported.";
    goto LABEL_28;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
LABEL_67:
    ausdk::Throw(0xFFFFD583);
  }

  v9 = Element;
  if (*(Element + 88) != 1718773105 || (*(Element + 108) - 9) <= 0xFFFFFFF8)
  {
    {
      AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
    }

    v6 = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
    if (!os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v23 = 136315394;
    v24 = "AUMicIssueDetector.cpp";
    v25 = 1024;
    v26 = 71;
    v7 = "%s:%-5d Input Format is Invalid.";
    goto LABEL_28;
  }

  if (v3 != 1)
  {
    v21 = ausdk::AUBase::Input(this, 1u);
    if (*(v21 + 22) != 1718773105 || (*(v21 + 27) - 9) <= 0xFFFFFFF8)
    {
      log = AU::AUMicIssueDetector::get_log(v21);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315650;
        v24 = "AUMicIssueDetector.cpp";
        v25 = 1024;
        v26 = 78;
        v27 = 1024;
        v28 = 1;
        v7 = "%s:%-5d Format for ECLee Input Element %u is Invalid.";
        goto LABEL_66;
      }

      return 4294956428;
    }
  }

  v13 = 0;
  while (1)
  {
    v14 = ausdk::AUScope::GetElement((this + 128), v13);
    if (!v14)
    {
      goto LABEL_67;
    }

    v15 = v14;
    if (v13 > 1)
    {
      break;
    }

    if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_63;
      }

LABEL_41:
      if (!AUMicIssueDetector::validOutputFormat(this, v14 + 2, 1))
      {
        goto LABEL_63;
      }

      goto LABEL_55;
    }

    if (!AUMicIssueDetector::validOutputFormat(this, v14 + 2, *(v9 + 108)))
    {
      v13 = 0;
      goto LABEL_63;
    }

LABEL_55:
    if (v5 == ++v13)
    {
      *(this + 145) = *(this + 84);
      *(this + 146) = *(v9 + 108);
      *(this + 147) = v3;
      *(this + 148) = v5;
      v20 = AUMicIssueDetector::setupCore(this);
      (*(*this + 72))(this, 0, 0);
      return v20;
    }
  }

  if (v13 != 2)
  {
    if (v13 != 3)
    {
      if (v13 != 4)
      {
        goto LABEL_63;
      }

      goto LABEL_41;
    }

    if (v14[2].mFormatID != 1718773105 || v14[2].mChannelsPerFrame - 9 < 0xFFFFFFF9)
    {
      v13 = 3;
      goto LABEL_63;
    }

    goto LABEL_55;
  }

  if (v14[2].mFormatID != 1819304813)
  {
    goto LABEL_62;
  }

  mSampleRate = v14[2].mSampleRate;
  v17 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v17)
  {
    goto LABEL_67;
  }

  v18 = *(v17 + 80);
  if (mSampleRate == v18 && v15[2].mChannelsPerFrame == 1)
  {
    goto LABEL_55;
  }

LABEL_62:
  v13 = 2;
LABEL_63:
  {
    AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
  }

  log = AU::AUMicIssueDetector::get_log(void)::aumisd_os_log;
  if (os_log_type_enabled(AU::AUMicIssueDetector::get_log(void)::aumisd_os_log, OS_LOG_TYPE_ERROR))
  {
    v23 = 136315650;
    v24 = "AUMicIssueDetector.cpp";
    v25 = 1024;
    v26 = 96;
    v27 = 1024;
    v28 = v13;
    v7 = "%s:%-5d Format for Output Element %u is Invalid.";
LABEL_66:
    v10 = log;
    v11 = 24;
LABEL_29:
    _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_ERROR, v7, &v23, v11);
  }

  return 4294956428;
}

uint64_t AU::AUMicIssueDetector::get_log(AU::AUMicIssueDetector *this)
{
  v1 = &xmmword_1ECDA9000;
  {
    v1 = &xmmword_1ECDA9000;
    if (v3)
    {
      AU::AUMicIssueDetector::get_log(void)::aumisd_os_log = os_log_create("com.apple.coreaudio", "AUMicIssueDetector");
      v1 = &xmmword_1ECDA9000;
    }
  }

  return *(v1 + 330);
}

BOOL AUMicIssueDetector::validOutputFormat(AUMicIssueDetector *this, const AudioStreamBasicDescription *a2, int a3)
{
  if (a2->mFormatID != 1718773105)
  {
    return 0;
  }

  mSampleRate = a2->mSampleRate;
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v7 = *(Element + 80);
  return mSampleRate == v7 && a2->mChannelsPerFrame == a3;
}

uint64_t AUMicIssueDetector::setupCore(AUMicIssueDetector *this)
{
  v2 = *MEMORY[0x1E69E9840];
  if (!*(this + 145))
  {
    return 0;
  }

  if (!*(this + 155))
  {
    operator new();
  }

  return 4294956421;
}

void sub_1DDEBA8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AUMicIssueDetector::CreateExtendedElements(AUMicIssueDetector *this)
{
  ausdk::AUScope::Initialize((this + 776), this, 4, 8);
  for (i = 0; i != 8; ++i)
  {
    std::to_string(&v8, i);
    v3 = std::string::insert(&v8, 0, "Mic", 3uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v10 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
    Element = ausdk::AUScope::GetElement((this + 776), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v6);
    CFRelease(v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DDEBAAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUMicIssueDetector::~AUMicIssueDetector(AUMicIssueDetector *this)
{
  AUMicIssueDetector::~AUMicIssueDetector(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592B258;
  v2 = *(this + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v8 = (this + 792);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v3 = *(this + 94);
  if (v3)
  {
    *(this + 95) = v3;
    operator delete(v3);
  }

  v8 = (this + 728);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 704);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v4 = *(this + 85);
  if (v4)
  {
    *(this + 86) = v4;
    operator delete(v4);
  }

  v8 = (this + 656);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 632);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v5 = *(this + 78);
  *(this + 78) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 69);
  if (v6)
  {
    *(this + 70) = v6;
    operator delete(v6);
  }

  v7 = *(this + 66);
  if (v7)
  {
    *(this + 67) = v7;
    operator delete(v7);
  }

  ausdk::AUBase::~AUBase(this);
}

float PiecewiseLinearTransform::tx(PiecewiseLinearTransform *this, float result, PiecewiseLinearTransform *a3)
{
  if (a3 == this)
  {
    return result;
  }

  if (*this >= result)
  {
    v8 = this + 4;
    return *v8;
  }

  if (*(a3 - 2) <= result)
  {
    v8 = a3 - 4;
    return *v8;
  }

  v3 = (a3 - this) >> 3;
  do
  {
    v4 = v3 >> 1;
    v5 = (this + 8 * (v3 >> 1));
    v7 = *v5;
    v6 = (v5 + 2);
    v3 += ~(v3 >> 1);
    if (v7 > result)
    {
      v3 = v4;
    }

    else
    {
      this = v6;
    }
  }

  while (v3);
  return *(this - 1) + (((result - *(this - 2)) * (*(this + 1) - *(this - 1))) / (*this - *(this - 2)));
}

uint64_t ParameterTransformBox::setProperty(PiecewiseLinearTransform **this, int a2, unsigned int a3, unsigned int a4, int a5, uint64_t *a6)
{
  if (a2 == 1)
  {
    v8 = *a6;
    caulk::pooled_semaphore_mutex::_lock((this + 780));
    v9 = *(this + 776);
    if (v9 != 1 || (v8 & 1) != 0)
    {
      if ((v9 & 1) == 0 && v8)
      {
        ApplyLogTransformationOfXValues(this[98]);
      }
    }

    else
    {
      UndoLogTransformationOfXValues(this[98]);
    }

    *(this + 776) = v8;
    caulk::pooled_semaphore_mutex::_unlock((this + 780));
    return 0;
  }

  else
  {
    if (!a2 && a5 == 24)
    {
      memset(v10, 0, sizeof(v10));
      std::vector<std::pair<float,float>>::__init_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(v10, *a6, a6[1], (a6[1] - *a6) >> 3);
      if (*(this + 776) == 1)
      {
        ApplyLogTransformationOfXValues(v10);
      }

      caulk::pooled_semaphore_mutex::_lock((this + 780));
      operator new();
    }

    return 4294956445;
  }
}

void sub_1DDEBAE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ApplyLogTransformationOfXValues(PiecewiseLinearTransform *a1)
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F592B7B0;
  v2[1] = &__block_literal_global_16948;
  v2[3] = v2;
  PiecewiseLinearTransform::ApplyFunctionToChangeXValues(a1, v2);
  return std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v2);
}

void sub_1DDEBAF18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t UndoLogTransformationOfXValues(PiecewiseLinearTransform *a1)
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F592B7B0;
  v2[1] = &__block_literal_global_8;
  v2[3] = v2;
  PiecewiseLinearTransform::ApplyFunctionToChangeXValues(a1, v2);
  return std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v2);
}

void sub_1DDEBAFB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

float ___Z30UndoLogTransformationOfXValuesR24PiecewiseLinearTransform_block_invoke(float a1)
{
  result = expf(a1);
  if ((LODWORD(result) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    __assert_rtn("UndoLogTransformationOfXValues_block_invoke", "ParameterTransformBox.mm", 84, "isfinite(y)");
  }

  return result;
}

uint64_t ParameterTransformBox::getProperty(ParameterTransformBox *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, char **a6)
{
  if (a2 == 1)
  {
    *a6 = *(this + 776);
    *a5 = 1;
  }

  else if (!a2)
  {
    caulk::pooled_semaphore_mutex::_lock((this + 780));
    v9 = *(this + 98);
    v13 = 0;
    v14 = 0;
    v12 = 0;
    std::vector<std::pair<float,float>>::__init_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(&v12, *v9, v9[1], (v9[1] - *v9) >> 3);
    if (*(this + 776) == 1)
    {
      UndoLogTransformationOfXValues(&v12);
    }

    v10 = v12;
    std::vector<std::pair<float,float>>::__assign_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(a6, v12, v13, v13 - v12);
    *a5 = 24;
    if (v10)
    {
      operator delete(v10);
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 780));
  }

  return 0;
}

uint64_t ParameterTransformBox::getPropertyInfo(ParameterTransformBox *this, int a2)
{
  v2 = 0x1FFFFD581;
  if (a2 == 1)
  {
    v2 = 0x100000001;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0x100000018;
  }
}

double ParameterTransformBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.16793153e233;
  *a1 = xmmword_1DE09CC70;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ParameterTransformBox::setParameter(ParameterTransformBox *this, float a2)
{
  v2 = a2;
  if (*(this + 776) == 1)
  {
    v4 = logf(a2);
    if (v2 <= 0.0)
    {
      v2 = -30.0;
    }

    else
    {
      v2 = v4;
    }
  }

  result = caulk::pooled_semaphore_mutex::try_lock((this + 780));
  if (result)
  {
    *(this + 193) = PiecewiseLinearTransform::tx(**(this + 98), v2, *(*(this + 98) + 8));

    return caulk::pooled_semaphore_mutex::_unlock((this + 780));
  }

  return result;
}

void ParameterTransformBox::~ParameterTransformBox(ParameterTransformBox *this)
{
  *this = &unk_1F592B4E0;
  v2 = *(this + 98);
  *(this + 98) = 0;
  if (v2)
  {
    std::default_delete<std::vector<AUSM::ExclusionZone>>::operator()[abi:ne200100](v2);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592B4E0;
  v2 = *(this + 98);
  *(this + 98) = 0;
  if (v2)
  {
    std::default_delete<std::vector<AUSM::ExclusionZone>>::operator()[abi:ne200100](v2);
  }

  DSPGraph::Box::~Box(this);
}

void dft_v5::paramInit_v5(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v15 = malloc_type_malloc(0xC8uLL, 0xEDA2F13CuLL);
  if (!v15)
  {
    exception = __cxa_allocate_exception(8uLL);
    v27 = std::bad_alloc::bad_alloc(exception);
  }

  v16 = v15;
  *(v15 + 49) = 0;
  *(v15 + 180) = 0u;
  *(v15 + 164) = 0u;
  *(v15 + 148) = 0u;
  *(v15 + 132) = 0u;
  *(v15 + 116) = 0u;
  *(v15 + 100) = 0u;
  *(v15 + 84) = 0u;
  *(v15 + 68) = 0u;
  *(v15 + 52) = 0u;
  *(v15 + 36) = 0u;
  *(v15 + 20) = 0u;
  *(v15 + 4) = 0u;
  *a1 = v15;
  v17 = 2 * a3;
  v18 = a3 + 1;
  *v15 = 2 * a3;
  if (a8)
  {
    v19 = a4 + 1;
  }

  else
  {
    v19 = a4;
  }

  *(v15 + 11) = a4;
  *(v15 + 12) = v19;
  *(v15 + 4) = a3;
  *(v15 + 7) = a3;
  v20 = a3;
  *(v15 + 8) = 1.0 / a3;
  *(v15 + 16) = a5;
  if (a6 && (v21 = (a5 / 5000.0), *(v15 + 17) = v21, v21 > 0))
  {
    if (v21 < 7)
    {
      goto LABEL_11;
    }

    v22 = 6;
  }

  else
  {
    v22 = 1;
  }

  *(v15 + 17) = v22;
LABEL_11:
  v23 = 0.0;
  v24 = v20 / a5;
  if (a5)
  {
    v23 = v24 * 1000.0;
  }

  else
  {
    v24 = 0.0;
  }

  *(v15 + 5) = v24;
  *(v15 + 6) = v23;
  *(v15 + 9) = a3 >> 1;
  *(v15 + 10) = v18;
  *(v15 + 13) = a4 * a3;
  *(v15 + 14) = v19 * v18;
  *(v15 + 15) = v19 * a3;
  *(v15 + 24) = 0;
  v25 = powf((1.0 / (a2 * -3.0)) + 1.0, v20);
  v16[22] = 1.0 / v17;
  v16[23] = v25;
  *(v16 + 25) = a7;
  *(v16 + 26) = a8;
  *(v16 + 20) = v17;
  v16[21] = 1.0;
  *(v16 + 18) = a4 * a3 + v17;
  MultiRadixRealFFT_Create();
}

uint64_t dft_v5::dftGenericAnalysis2ndHalf(const DSPComplex *a1, float *__C, float *a3, uint64_t a4, int a5)
{
  v9 = *(a4 + 36);
  v10 = v9;
  if (a5)
  {
    v11 = *(a4 + 36);
  }

  else
  {
    v11 = 0;
  }

  vDSP_vclr(__C, 1, 2 * v9);
  vDSP_vclr(a3, 1, 2 * v10);
  v15.realp = &__C[v11];
  v15.imagp = &a3[v11];
  vDSP_ctoz(a1, 2, &v15, 1, v10);
  v15.realp = __C;
  v15.imagp = a3;
  v13 = *(a4 + 8);
  if (v13)
  {
    MultiRadixRealFFT::RealInPlaceTransform(v13, &v15, 1, v12);
  }

  MEMORY[0x1E12BE940](__C, 1, a4 + 88, __C, 1, *(a4 + 16));
  return MEMORY[0x1E12BE940](a3, 1, a4 + 88, a3, 1, *(a4 + 16));
}

void dft_v5::dftGenericAnalysis2ndHalf_dsc(const void *a1, const void *a2, float *__C, float *a4, int *a5)
{
  v10 = *a5 >> 2;
  v11 = *a5 >> 2;
  vDSP_vclr(__C, 1, v11);
  vDSP_vclr(a4, 1, v11);
  memcpy(&__C[v10], a1, 4 * v10);
  memcpy(&a4[v10], a2, 4 * v10);
  v14.realp = __C;
  v14.imagp = a4;
  v13 = *(a5 + 1);
  if (v13)
  {
    MultiRadixRealFFT::RealInPlaceTransform(v13, &v14, 1, v12);
  }

  MEMORY[0x1E12BE940](__C, 1, a5 + 22, __C, 1, *a5 >> 1);

  JUMPOUT(0x1E12BE940);
}

void dft_v5::dftSynthesis(float *a1, float *a2, uint64_t a3)
{
  v4 = *(a3 + 84);
  v7 = v4;
  v8.realp = a1;
  v8.imagp = a2;
  if (v4 != 1.0)
  {
    MEMORY[0x1E12BE940](a1, 1, &v7, a1, 1, *(a3 + 16));
    MEMORY[0x1E12BE940](a2, 1, &v7, a2, 1, *(a3 + 16));
  }

  v6 = *(a3 + 8);
  if (v6)
  {
    MultiRadixRealFFT::RealInPlaceTransform(v6, &v8, -1, v4);
  }
}

uint64_t AUSM::RoomCongruence::Processor::computeAverageRT60(uint64_t *a1, void *a2, float *a3, float *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a4 == a3)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v12 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    *buf = 136315394;
    *&buf[4] = a1;
    *&buf[12] = 2080;
    *&buf[14] = "computeAverageRT60";
    v13 = "[%s|%s] The center freq. array is empty. Returning empty optional.";
    goto LABEL_27;
  }

  if (a2[1] - *a2 != a4 - a3)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v12 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    *buf = 136315394;
    *&buf[4] = a1;
    *&buf[12] = 2080;
    *&buf[14] = "computeAverageRT60";
    v13 = "[%s|%s] Number of elements in the center freq. and the RT60 vectors is not equal. Returning empty optional.";
LABEL_27:
    _os_log_error_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
LABEL_17:
    v11 = 0;
    v10 = 0;
    return v10 | v11;
  }

  AUSM::RoomCongruence::findIndicesOfCenterFreqsWithinRange(buf, a3, a4, 500.0, 4000.0);
  v6 = *buf;
  if (*&buf[8] != *buf)
  {
    v7 = 0.0;
    v8 = *buf;
    do
    {
      v9 = *v8++;
      v7 = v7 + *(*a2 + 4 * v9);
    }

    while (v8 != *&buf[8]);
    v10 = COERCE_UNSIGNED_INT(v7 / ((*&buf[8] - *buf) >> 3));
    v11 = 0x100000000;
    if (!*buf)
    {
      return v10 | v11;
    }

LABEL_22:
    operator delete(v6);
    return v10 | v11;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v14 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    v16 = 136315394;
    v17 = a1;
    v18 = 2080;
    v19 = "computeAverageRT60";
    _os_log_error_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "[%s|%s] No center frequencies within the provided range were found. Returning empty optional.", &v16, 0x16u);
  }

  v11 = 0;
  v10 = 0;
  if (v6)
  {
    goto LABEL_22;
  }

  return v10 | v11;
}

void std::vector<AUSM::RoomCongruence::Biquad>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<DataTimeStamp>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

AUSM::RoomCongruence::RoomConfiguration *AUSM::RoomCongruence::RoomConfiguration::RoomConfiguration(AUSM::RoomCongruence::RoomConfiguration *this, const AUSM::RoomCongruence::RoomConfiguration *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  v4 = *(a2 + 6);
  *(this + 7) = 0;
  *(this + 6) = v4;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
  return this;
}

void sub_1DDEBBE04(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void AUSM::RoomCongruence::RoomConfiguration::~RoomConfiguration(AUSM::RoomCongruence::RoomConfiguration *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void AUSM::RoomCongruence::Processor::computeTargetMatchingParams(_BYTE *a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = a2;
  v132 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[184] = 0;
  v8 = *a5;
  v9 = *(a5 + 8);
  v10 = v9 - *a5;
  v12 = *a3;
  v11 = *(a3 + 8);
  if (v10 != v11 - *a3)
  {
LABEL_18:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v19 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    if (*(v7 + 23) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = "computeTargetMatchingParams";
    v20 = "[%s|%s] Mismatched frequency resolutions between the requested room config and user data. Returning empty optional.";
LABEL_51:
    _os_log_error_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
    return;
  }

  if (v8 != v9)
  {
    v15 = *a3;
    v16 = *a5;
    while (*v16 == *v15)
    {
      ++v16;
      ++v15;
      if (v16 == v9)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_18;
  }

LABEL_6:
  if (v10 == 40 || v12 == v11)
  {
LABEL_11:
    v18 = AUSM::RoomCongruence::Processor::computeAverageRT60(a2, (a5 + 24), v8, v9);
    if (!HIDWORD(v18))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      if (*(v7 + 23) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = "computeTargetMatchingParams";
      v20 = "[%s|%s] Failed to compute the average RT60 for the preset User Data. Returning empty optional.";
      goto LABEL_51;
    }

    v21 = *(a3 + 108);
    if (v21 <= 0.0 || (v22 = *&v18, *&v18 <= 0.0))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v32 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v90 = v7;
        if (*(v7 + 23) < 0)
        {
          v90 = *v7;
        }

        *buf = 136315394;
        *&buf[4] = v90;
        *&buf[12] = 2080;
        *&buf[14] = "computeCorrectionEnvelopeExpDecayCoefficient";
        _os_log_error_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_ERROR, "[%s|%s] One or both of the input RT60 was not greater than zero. Returning empty optional.", buf, 0x16u);
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      if (*(v7 + 23) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = "computeTargetMatchingParams";
      v20 = "[%s|%s] Failed to compute the correction envelope exponential decay coefficient. Returning empty optional.";
      goto LABEL_51;
    }

    IR::getPresetDataAttributes();
    v23 = (-6.9078 / v22) + (6.9078 / v21);
    *&v107[20] = v23;
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v24 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v7;
      if (*(v7 + 23) < 0)
      {
        v25 = *v7;
      }

      *buf = 136315650;
      *&buf[4] = v25;
      *&buf[12] = 2080;
      *&buf[14] = "computeTargetMatchingParams";
      *&buf[22] = 2048;
      *v120 = *&v107[20];
      _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEFAULT, "[%s|%s] Exp Decay Coeff: %f.", buf, 0x20u);
    }

    v96 = 0;
    __dst = 0;
    v98 = 0;
    if (v23 <= 0.0)
    {
LABEL_65:
      if (*(a3 + 124) == 1)
      {
        v93 = 0;
        v94 = 0;
        v95 = 0;
        std::vector<DataTimeStamp>::reserve(&v93, 3uLL);
        memset(&valuePtr, 0, sizeof(valuePtr));
        std::vector<unsigned int>::reserve(&valuePtr, (*(a3 + 8) - *a3) >> 2);
        v39 = *a3;
        v40 = *(a3 + 8);
        if (v40 != *a3)
        {
          v41 = 0;
          v42 = 1;
          do
          {
            v43 = *(*(a3 + 80) + 4 * v41);
            if ((*(a3 + 125) & 1) == 0)
            {
              v43 = v43 + *(*(a3 + 56) + 4 * v41);
            }

            v44 = log10f((v43 / *(*(a5 + 104) + 4 * v41)) + 2.2204e-16) * 10.0;
            end = valuePtr.__end_;
            if (valuePtr.__end_ >= valuePtr.__end_cap_.__value_)
            {
              begin = valuePtr.__begin_;
              v48 = valuePtr.__end_ - valuePtr.__begin_;
              v49 = valuePtr.__end_ - valuePtr.__begin_;
              v50 = v49 + 1;
              if ((v49 + 1) >> 62)
              {
                std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
              }

              v51 = valuePtr.__end_cap_.__value_ - valuePtr.__begin_;
              if ((valuePtr.__end_cap_.__value_ - valuePtr.__begin_) >> 1 > v50)
              {
                v50 = v51 >> 1;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v52 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v52 = v50;
              }

              if (v52)
              {
                std::allocator<float>::allocate_at_least[abi:ne200100](&valuePtr, v52);
              }

              *(4 * v49) = v44;
              v46 = (4 * v49 + 4);
              memcpy(0, begin, v48);
              v53 = valuePtr.__begin_;
              valuePtr.__begin_ = 0;
              valuePtr.__end_ = v46;
              valuePtr.__end_cap_.__value_ = 0;
              if (v53)
              {
                operator delete(v53);
              }
            }

            else
            {
              *valuePtr.__end_ = v44;
              v46 = end + 1;
            }

            valuePtr.__end_ = v46;
            v41 = v42;
            v39 = *a3;
            v40 = *(a3 + 8);
            ++v42;
          }

          while (v41 < (v40 - *a3) >> 2);
        }

        v54 = 0.0;
        AUSM::RoomCongruence::findIndicesOfCenterFreqsWithinRange(&v117, v39, v40, 0.0, 500.0);
        v55 = v117;
        if (v117 != *(&v117 + 1))
        {
          v56 = v117;
          do
          {
            v57 = *v56++;
            v54 = v54 + *&valuePtr.__begin_[v57];
          }

          while (v56 != *(&v117 + 1));
        }

        AUSM::RoomCongruence::findIndicesOfCenterFreqsWithinRange(&v116, *a3, *(a3 + 8), 500.0, 5000.0);
        v58 = v116;
        v59 = 0.0;
        if (v116 != *(&v116 + 1))
        {
          v60 = v116;
          do
          {
            v61 = *v60++;
            v59 = v59 + *&valuePtr.__begin_[v61];
          }

          while (v60 != *(&v116 + 1));
        }

        AUSM::RoomCongruence::findIndicesOfCenterFreqsWithinRange(&v114, *a3, *(a3 + 8), 5000.0, 21657.0);
        v62 = v54 / ((*(&v55 + 1) - v55) >> 3);
        v63 = v114;
        v64 = v59 / ((*(&v58 + 1) - v58) >> 3);
        v65 = 0.0;
        if (v114 != v115)
        {
          v66 = v114;
          do
          {
            v67 = *v66;
            v66 += 8;
            v65 = v65 + *&valuePtr.__begin_[v67];
          }

          while (v66 != v115);
        }

        v68 = v65 / ((v115 - v114) >> 3);
        if (v62 <= 12.0)
        {
          v69 = v54 / ((*(&v55 + 1) - v55) >> 3);
        }

        else
        {
          v69 = 12.0;
        }

        if (v62 >= -60.0)
        {
          v70 = v69;
        }

        else
        {
          v70 = -60.0;
        }

        if (v64 <= 12.0)
        {
          v71 = v59 / ((*(&v58 + 1) - v58) >> 3);
        }

        else
        {
          v71 = 12.0;
        }

        if (v64 >= -60.0)
        {
          v72 = v71;
        }

        else
        {
          v72 = -60.0;
        }

        if (v68 <= 12.0)
        {
          v73 = v68;
        }

        else
        {
          v73 = 12.0;
        }

        if (v68 >= -60.0)
        {
          v74 = v73;
        }

        else
        {
          v74 = -60.0;
        }

        LODWORD(v113) = 1140457472;
        *(&v113 + 1) = v70 - v72;
        *(&v113 + 1) = 0x73F3504F3;
        std::vector<AUSM::RoomCongruence::Biquad>::push_back[abi:ne200100](&v93, &v113);
        LODWORD(v112) = 1167867904;
        *(&v112 + 1) = v74 - v72;
        *(&v112 + 1) = 0x83F3504F3;
        std::vector<AUSM::RoomCongruence::Biquad>::push_back[abi:ne200100](&v93, &v112);
        LODWORD(v111) = 1101004800;
        *(&v111 + 1) = v72;
        *(&v111 + 1) = 0;
        std::vector<AUSM::RoomCongruence::Biquad>::push_back[abi:ne200100](&v93, &v111);
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v75 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v7 + 23) < 0)
          {
            v7 = *v7;
          }

          *buf = 136316162;
          *&buf[4] = v7;
          *&buf[12] = 2080;
          *&buf[14] = "computeSpectralMatchingCorrectionBiquads";
          *&buf[22] = 2048;
          *v120 = v70;
          *&v120[8] = 2048;
          *&v120[10] = v72;
          *&v120[18] = 2048;
          *&v120[20] = v74;
          _os_log_impl(&dword_1DDB85000, v75, OS_LOG_TYPE_DEFAULT, "[%s|%s] Spectral matching gains [dB]: LG: %f, MG: %f, HG: %f.", buf, 0x34u);
        }

        if (v63)
        {
          operator delete(v63);
        }

        if (v58)
        {
          operator delete(v58);
        }

        if (v55)
        {
          operator delete(v55);
        }

        if (valuePtr.__begin_)
        {
          valuePtr.__end_ = valuePtr.__begin_;
          operator delete(valuePtr.__begin_);
        }

        v76 = v93;
        std::vector<AUSM::RoomCongruence::Biquad>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AUSM::RoomCongruence::Biquad*>,std::__wrap_iter<AUSM::RoomCongruence::Biquad*>>(&v96, __dst, v93, v94, (v94 - v93) >> 4);
        if (v76)
        {
          operator delete(v76);
        }
      }

      else
      {
        LOBYTE(valuePtr.__begin_) = 0;
        LOBYTE(valuePtr.__end_cap_.__value_) = 0;
        v77 = *(a3 + 116);
        if (*(a3 + 112) >= v77)
        {
          v77 = *(a3 + 112);
        }

        v78 = pow((v77 * 2.5) / (*(a3 + 108) * 314.159265), 0.474999994);
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v79 = v78;
        v80 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v81 = v7;
          if (*(v7 + 23) < 0)
          {
            v81 = *v7;
          }

          *buf = 136315650;
          *&buf[4] = v81;
          *&buf[12] = 2080;
          *&buf[14] = "computeCriticalDistanceCorrectionGainStage";
          *&buf[22] = 2048;
          *v120 = v79;
          _os_log_impl(&dword_1DDB85000, v80, OS_LOG_TYPE_DEFAULT, "[%s|%s] Critical Distance [m]: %f", buf, 0x20u);
        }

        if (v79 <= 0.0)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v88 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            v91 = v7;
            if (*(v7 + 23) < 0)
            {
              v91 = *v7;
            }

            *buf = 136315394;
            *&buf[4] = v91;
            *&buf[12] = 2080;
            *&buf[14] = "computeCriticalDistanceCorrectionGainStage";
            _os_log_error_impl(&dword_1DDB85000, v88, OS_LOG_TYPE_ERROR, "[%s|%s] The computed critical distance must be greater than 0. Returning empty optional.", buf, 0x16u);
          }

          LODWORD(valuePtr.__begin_) = 0;
          valuePtr.__end_ = 0;
          LOBYTE(valuePtr.__end_cap_.__value_) = 0;
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v89 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            if (*(v7 + 23) < 0)
            {
              v7 = *v7;
            }

            *buf = 136315394;
            *&buf[4] = v7;
            *&buf[12] = 2080;
            *&buf[14] = "computeTargetMatchingParams";
            _os_log_error_impl(&dword_1DDB85000, v89, OS_LOG_TYPE_ERROR, "[%s|%s] Failed to compute the critical distance gain biquad. Returning empty optional.", buf, 0x16u);
          }

          if (v96)
          {
            operator delete(v96);
          }

          if (v108)
          {
            CFRelease(v108);
          }

          if (v106)
          {
            CFRelease(v106);
          }

          if (v104)
          {
            CFRelease(v104);
          }

          if (v99)
          {
            CFRelease(v99);
          }

          return;
        }

        v82 = log10f(v79 + 2.2204e-16) * -20.0;
        if (*(a3 + 120) > v82)
        {
          v82 = *(a3 + 120);
        }

        LODWORD(valuePtr.__begin_) = 1101004800;
        *(&valuePtr.__begin_ + 1) = v82;
        valuePtr.__end_ = 0;
        LOBYTE(valuePtr.__end_cap_.__value_) = 1;
        std::vector<AUSM::RoomCongruence::Biquad>::push_back[abi:ne200100](&v96, &valuePtr);
      }

      v83 = __dst - v96;
      if (__dst != v96)
      {
        if (!((v83 >> 4) >> 60))
        {
          std::allocator<DataTimeStamp>::allocate_at_least[abi:ne200100](v83 >> 4);
        }

        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v84 = v99;
      if (v99)
      {
        CFRetain(v99);
      }

      *buf = v84;
      *&buf[8] = v100;
      *v120 = v101;
      *&v120[16] = v102;
      v120[32] = v103;
      v85 = v104;
      if (v104)
      {
        CFRetain(v104);
      }

      v121 = v85;
      v122 = v105;
      v86 = v106;
      if (v106)
      {
        CFRetain(v106);
      }

      v123 = v86;
      v124[0] = *v107;
      *(v124 + 9) = *&v107[9];
      v87 = v108;
      if (v108)
      {
        CFRetain(v108);
      }

      v125 = v87;
      v126 = v109;
      v127 = v110;
      v128 = 1;
      v129 = 0;
      v130 = 0;
      v131 = 1;
      if (a1[184] == 1)
      {
        AUSM::RoomCongruence::ProcessingResult::operator=(a1, buf);
      }

      else
      {
        std::__optional_storage_base<AUSM::RoomCongruence::ProcessingResult,false>::__construct[abi:ne200100]<AUSM::RoomCongruence::ProcessingResult>(a1, buf);
      }

      AUSM::RoomCongruence::ProcessingResult::~ProcessingResult(buf);
      if (v96)
      {
        operator delete(v96);
      }

      if (v108)
      {
        CFRelease(v108);
      }

      if (v106)
      {
        CFRelease(v106);
      }

      if (v104)
      {
        CFRelease(v104);
      }

      if (v99)
      {
        CFRelease(v99);
      }

      return;
    }

    memset(&valuePtr, 0, sizeof(valuePtr));
    std::vector<DataTimeStamp>::reserve(&valuePtr, 2uLL);
    switch(a4)
    {
      case '4':
        v29 = *(a3 + 108);
        v27 = (expf(v29 * -4.0) * 180.0) + 170.0;
        v28 = (11.5 - v29) * log10f(1.0 / v29);
        v31 = 6000.0;
        v30 = 2.8;
        break;
      case '5':
        v33 = *(a3 + 108);
        v27 = (expf(v33 * -5.0) * 150.0) + 175.0;
        v28 = ((v33 * -5.0) + 12.8) * log10f(1.4 / v33);
        v30 = 3.0;
        v31 = 7000.0;
        v29 = v33 / 1.4;
        break;
      case '6':
        v26 = *(a3 + 108);
        v27 = (expf(v26 * -4.0) * 140.0) + 195.0;
        v28 = ((v26 * -3.8) + 11.2) * log10f(2.0 / v26);
        v29 = v26 * 0.5;
        v30 = 2.5;
        v31 = 7000.0;
        break;
      default:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v37 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v92 = v7;
          if (*(v7 + 23) < 0)
          {
            v92 = *v7;
          }

          *buf = 136315394;
          *&buf[4] = v92;
          *&buf[12] = 2080;
          *&buf[14] = "computeReflatteningCorrectionBiquads";
          _os_log_error_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_ERROR, "[%s|%s] The selected closest preset is not supported. Returning empty vector.", buf, 0x16u);
        }

        goto LABEL_63;
    }

    *&v117 = __PAIR64__(LODWORD(v28), LODWORD(v27));
    *(&v117 + 1) = 0x83F333333;
    std::vector<AUSM::RoomCongruence::Biquad>::push_back[abi:ne200100](&valuePtr, &v117);
    v34 = (v29 + -1.0) * v30;
    *&v116 = __PAIR64__(LODWORD(v34), LODWORD(v31));
    *(&v116 + 1) = 0x83F19999ALL;
    std::vector<AUSM::RoomCongruence::Biquad>::push_back[abi:ne200100](&valuePtr, &v116);
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v35 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v7;
      if (*(v7 + 23) < 0)
      {
        v36 = *v7;
      }

      *buf = 136316418;
      *&buf[4] = v36;
      *&buf[12] = 2080;
      *&buf[14] = "computeReflatteningCorrectionBiquads";
      *&buf[22] = 2048;
      *v120 = v27;
      *&v120[8] = 2048;
      *&v120[10] = v28;
      *&v120[18] = 2048;
      *&v120[20] = v31;
      *&v120[28] = 2048;
      *&v120[30] = v34;
      _os_log_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_DEFAULT, "[%s|%s] Reflattening Biquads: Biquad A: freq = %f [Hz], gain = %f [dB], Biquad B: freq = %f, gain = %f.", buf, 0x3Eu);
    }

LABEL_63:
    v38 = valuePtr.__begin_;
    std::vector<AUSM::RoomCongruence::Biquad>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AUSM::RoomCongruence::Biquad*>,std::__wrap_iter<AUSM::RoomCongruence::Biquad*>>(&v96, 0, valuePtr.__begin_, valuePtr.__end_, (valuePtr.__end_ - valuePtr.__begin_) >> 4);
    if (v38)
    {
      operator delete(v38);
    }

    goto LABEL_65;
  }

  v17 = &AUSM::RoomCongruence::kOctaveBandFrequencies;
  while (*v12 == *v17)
  {
    ++v12;
    ++v17;
    if (v12 == v11)
    {
      goto LABEL_11;
    }
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v19 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    if (*(v7 + 23) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = "computeTargetMatchingParams";
    v20 = "[%s|%s] only supporting octave band resolution. Returning empty optional.";
    goto LABEL_51;
  }
}

void sub_1DDEBD60C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::vector<AUSM::RoomCongruence::Biquad>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AUSM::RoomCongruence::Biquad*>,std::__wrap_iter<AUSM::RoomCongruence::Biquad*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 4);
    if (v12 >> 60)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 4;
    if (v14)
    {
      std::allocator<DataTimeStamp>::allocate_at_least[abi:ne200100](v14);
    }

    v32 = 16 * v15;
    v33 = 16 * a5;
    v34 = (16 * v15);
    do
    {
      v35 = *v6++;
      *v34++ = v35;
      v33 -= 16;
    }

    while (v33);
    memcpy((v32 + 16 * a5), __dst, *(a1 + 8) - __dst);
    v36 = *a1;
    v37 = v32 + 16 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v38 = (__dst - v36);
    v39 = (v32 - (__dst - v36));
    memcpy(v39, v36, v38);
    v40 = *a1;
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v40)
    {

      operator delete(v40);
    }

    return;
  }

  v16 = v10 - __dst;
  v17 = (v10 - __dst) >> 4;
  if (v17 >= a5)
  {
    v28 = &__dst[16 * a5];
    v29 = &v10[-16 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 16;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v28);
    }

    v27 = 16 * a5;
    v25 = __dst;
    v26 = v6;
    goto LABEL_29;
  }

  v19 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[16 * a5];
    v22 = &v10[v19];
    if (&v20[-16 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -16 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 16;
        v23 += 16;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[16 * a5], __dst, v20 - v21);
    }

    if (v10 != __dst)
    {
      v25 = __dst;
      v26 = v6;
      v27 = v10 - __dst;
LABEL_29:

      memmove(v25, v26, v27);
    }
  }
}