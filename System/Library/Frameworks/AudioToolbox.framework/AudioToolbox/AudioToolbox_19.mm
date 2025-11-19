void sub_1DDCBF564(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DDCBF5D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DDCBF5E4);
  }

  _Unwind_Resume(a1);
}

void sub_1DDCBF5E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  if (a2)
  {
    if (*(v30 - 137) < 0)
    {
      operator delete(*(v30 - 160));
    }

    if (v29)
    {
      __cxa_free_exception(v28);
    }

    v33 = __cxa_begin_catch(a1);
    if (a2 == 3)
    {
      v34 = v33;
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v35 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v37 = (*(*v34 + 16))(v34);
        *(v30 - 160) = a19;
        v38 = v30 - 192;
        *(v38 + 36) = v27;
        *(v30 - 148) = 2080;
        *(v38 + 46) = v37;
        _os_log_error_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, "[%p] Could not load metadata using the plist, exception (%s)", (v30 - 160), 0x16u);
      }
    }

    else
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v36 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        *(v30 - 160) = a27;
        *(v30 - 156) = v27;
        _os_log_error_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_ERROR, "[%p] Could not load metadata using the plist, unknown exception.", (v30 - 160), 0xCu);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDCBB5F4);
  }

  _Unwind_Resume(a1);
}

void sub_1DDCBF614(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DDCBF620);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::NumberRef::~NumberRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void AUNeuralNet::~AUNeuralNet(AUNeuralNet *this)
{
  AUNeuralNet::~AUNeuralNet(this);

  JUMPOUT(0x1E12BD160);
}

{
  v32 = *MEMORY[0x1E69E9840];
  *this = &unk_1F591F998;
  v2 = *(this + 144);
  if (v2)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v2);
    MEMORY[0x1E12BD160]();
    *(this + 144) = 0;
    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v3 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = this;
      _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "[%p] disposed mTimeFreqConverterInputDelayed", buf, 0xCu);
    }
  }

  v4 = *(this + 145);
  if (*(this + 146) != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5);
      if (v6)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v6);
        MEMORY[0x1E12BD160]();
        *(*(this + 145) + 8 * v5) = 0;
        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }

        v7 = getAUNeuralNetLog(void)::gLog;
        if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = this;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEFAULT, "[%p] disposed mTimeFreqConvertersOutput[%d]", buf, 0x12u);
        }
      }

      ++v5;
      v4 = *(this + 145);
    }

    while (v5 < (*(this + 146) - v4) >> 3);
  }

  if (getAUNeuralNetLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
  }

  v8 = getAUNeuralNetLog(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = this;
    _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, "[%p] destructed", buf, 0xCu);
  }

  if (*(this + 1447) < 0)
  {
    operator delete(*(this + 178));
  }

  if (*(this + 175))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 175) = 0;
  }

  *(this + 176) = 0;
  *(this + 348) = 0;
  v9 = *(this + 165);
  if (v9)
  {
    *(this + 166) = v9;
    operator delete(v9);
  }

  v10 = *(this + 160);
  if (v10)
  {
    *(this + 161) = v10;
    operator delete(v10);
  }

  std::unique_ptr<BlockProcessorLowDelay>::reset[abi:ne200100](this + 158, 0);
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 157, 0);
  if (*(this + 1232) == 1)
  {
    v11 = *(this + 151);
    if (v11)
    {
      *(this + 152) = v11;
      operator delete(v11);
    }
  }

  v12 = *(this + 150);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 149);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 148);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 145);
  if (v15)
  {
    *(this + 146) = v15;
    operator delete(v15);
  }

  v16 = *(this + 141);
  if (v16)
  {
    *(this + 142) = v16;
    operator delete(v16);
  }

  v17 = *(this + 138);
  if (v17)
  {
    *(this + 139) = v17;
    operator delete(v17);
  }

  v18 = *(this + 135);
  if (v18)
  {
    *(this + 136) = v18;
    operator delete(v18);
  }

  *buf = this + 1056;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](buf);
  v19 = *(this + 129);
  if (v19)
  {
    *(this + 130) = v19;
    operator delete(v19);
  }

  v20 = *(this + 126);
  if (v20)
  {
    *(this + 127) = v20;
    operator delete(v20);
  }

  v21 = *(this + 123);
  if (v21)
  {
    *(this + 124) = v21;
    operator delete(v21);
  }

  v22 = *(this + 119);
  if (v22)
  {
    *(this + 120) = v22;
    operator delete(v22);
  }

  v23 = *(this + 116);
  if (v23)
  {
    *(this + 117) = v23;
    operator delete(v23);
  }

  v24 = *(this + 113);
  if (v24)
  {
    *(this + 114) = v24;
    operator delete(v24);
  }

  v25 = *(this + 110);
  if (v25)
  {
    *(this + 111) = v25;
    operator delete(v25);
  }

  v26 = *(this + 107);
  if (v26)
  {
    *(this + 108) = v26;
    operator delete(v26);
  }

  v27 = *(this + 104);
  if (v27)
  {
    *(this + 105) = v27;
    operator delete(v27);
  }

  *buf = this + 800;
  std::vector<AUNeuralNet::NeuralNetWrapper>::__destroy_vector::operator()[abi:ne200100](buf);
  v28 = *(this + 67);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  ausdk::AUBase::~AUBase(this);
}

void sub_1DDCBFDB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::vector<AUNeuralNet::NeuralNetWrapper>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 8) == 1)
        {
          NeuralNet::~NeuralNet((v4 - 40));
        }

        v6 = *(v4 - 6);
        if (v6)
        {
          CFRelease(v6);
        }

        if (*(v4 - 49) < 0)
        {
          operator delete(*(v4 - 9));
        }

        v4 -= 104;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void CLiteMatrix::CLiteMatrix(CLiteMatrix *this, uint64_t a2, uint64_t a3, int16x4_t a4)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = a2;
  *(this + 1) = a3;
  v4 = 0;
  std::vector<float>::assign(this + 2, 2 * a2 * a3, &v4, a4);
}

void sub_1DDCBFF74(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

VBAP *std::unique_ptr<VBAP>::reset[abi:ne200100](VBAP **a1, VBAP *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    VBAP::~VBAP(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUSpatialMixerV2DynamicXTCFilter::updateSpeakerLocations(uint64_t this)
{
  if (*(this + 784))
  {
    if (*(this + 920) != *(this + 912))
    {
      return this;
    }

    v1 = 20.0;
  }

  else
  {
    v1 = *(this + 44);
  }

  v2 = *(this + 20);
  if (v2)
  {
    v3 = 0;
    v4 = -v1;
    v5 = floorf(vcvts_n_f32_u32(v2, 1uLL));
    v6 = *(this + 864);
    v7 = v1 * 0.5;
    v8 = *(this + 888);
    do
    {
      v9 = ((v5 - v3) * v4) * 0.5;
      if (v9 >= 0.0 && (v2 & 1) == 0)
      {
        v9 = v7 + v9;
      }

      *(v6 + 4 * v3) = v9;
      *(v8 + 4 * v3++) = 0;
    }

    while (v2 != v3);
  }

  return this;
}

void sub_1DDCC016C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
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

vDSP_biquad_Setup AUSpatialMixerV2DynamicXTCFilter::setLR8Crossover(AUSpatialMixerV2DynamicXTCFilter *this, float a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v36 = 0u;
  v4 = a2;
  if (a2 <= 0.0)
  {
    v33 = 0.0;
    v34 = 0.0;
    v36 = 0uLL;
    v35 = 1.0;
    v37 = 0uLL;
    v9 = 1.0;
    v39 = 0.0;
    v40 = 0.0;
  }

  else
  {
    v5 = __sincos_stret(fmin(v4, 3.11017673));
    v6 = 0.5 - v5.__cosval * 0.5;
    v7 = 1.0 / (v5.__sinval * 0.923879533 + 1.0);
    v33 = v5.__cosval * -2.0 * v7;
    v34 = v7 - v5.__sinval * 0.923879533 * v7;
    v35 = v6 * v7;
    *&v36 = (v6 + v6) * v7;
    v8 = 1.0 / (v5.__sinval * 0.382683434 + 1.0);
    *(&v36 + 1) = v6 * v7;
    *&v37 = v5.__cosval * -2.0 * v8;
    v9 = v6 * v8;
    *(&v37 + 1) = v8 - v5.__sinval * 0.382683434 * v8;
    v39 = (v6 + v6) * v8;
    v40 = v6 * v8;
  }

  v10 = 0;
  v38 = v9;
  v11 = v32;
  do
  {
    v12 = &v33 + 5 * (v10 & 1);
    v13 = *v12;
    *(v11 - 24) = *(v12 + 1);
    *(v11 - 1) = v12[4];
    *v11 = v13;
    v11 = (v11 + 40);
    ++v10;
  }

  while (v10 != 4);
  Setup = vDSP_biquad_CreateSetup(__Coefficients, 4uLL);
  if (a2 <= 0.0)
  {
    v33 = 0.0;
    v34 = 0.0;
    v36 = 0uLL;
    v35 = 1.0;
    v37 = 0uLL;
    v20 = 1.0;
    v39 = 0.0;
    v40 = 0.0;
  }

  else
  {
    v15 = __sincos_stret(fmin(v4, 3.11017673));
    v16 = v15.__cosval * 0.5 + 0.5;
    v17 = 1.0 / (v15.__sinval * 0.923879533 + 1.0);
    v33 = v15.__cosval * -2.0 * v17;
    v34 = v17 - v15.__sinval * 0.923879533 * v17;
    v18 = v16 * v17;
    v35 = v16 * v17;
    *&v36 = v16 * -2.0 * v17;
    v19 = 1.0 / (v15.__sinval * 0.382683434 + 1.0);
    *(&v36 + 1) = v18;
    *&v37 = v15.__cosval * -2.0 * v19;
    v20 = v16 * v19;
    *(&v37 + 1) = v19 - v15.__sinval * 0.382683434 * v19;
    v39 = v16 * -2.0 * v19;
    v40 = v16 * v19;
  }

  v21 = 0;
  v38 = v20;
  v22 = v32;
  do
  {
    v23 = &v33 + 5 * (v21 & 1);
    v24 = *v23;
    *(v22 - 24) = *(v23 + 1);
    *(v22 - 1) = v23[4];
    *v22 = v24;
    v22 = (v22 + 40);
    ++v21;
  }

  while (v21 != 4);
  result = vDSP_biquad_CreateSetup(__Coefficients, 4uLL);
  v26 = *(this + 120);
  *(this + 120) = Setup;
  v27 = *(this + 121);
  v28 = MEMORY[0x1E6958BA0];
  *(this + 121) = MEMORY[0x1E6958BA0];
  v29 = *(this + 118);
  *(this + 118) = result;
  v30 = *(this + 119);
  *(this + 119) = v28;
  if (v29)
  {
    result = v30(v29);
  }

  if (v26)
  {
    return v27(v26);
  }

  return result;
}

void sub_1DDCC0490(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void MoorePenrose::~MoorePenrose(MoorePenrose *this)
{
  v2 = *(this + 65);
  if (v2)
  {
    *(this + 66) = v2;
    operator delete(v2);
  }

  v3 = *(this + 60);
  if (v3)
  {
    *(this + 61) = v3;
    operator delete(v3);
  }

  v4 = *(this + 55);
  if (v4)
  {
    *(this + 56) = v4;
    operator delete(v4);
  }

  v5 = *(this + 52);
  if (v5)
  {
    *(this + 53) = v5;
    operator delete(v5);
  }

  v6 = *(this + 49);
  if (v6)
  {
    *(this + 50) = v6;
    operator delete(v6);
  }

  v7 = *(this + 46);
  if (v7)
  {
    *(this + 47) = v7;
    operator delete(v7);
  }

  v8 = *(this + 43);
  if (v8)
  {
    *(this + 44) = v8;
    operator delete(v8);
  }

  v9 = *(this + 40);
  if (v9)
  {
    *(this + 41) = v9;
    operator delete(v9);
  }

  v10 = *(this + 37);
  if (v10)
  {
    *(this + 38) = v10;
    operator delete(v10);
  }

  v11 = *(this + 32);
  if (v11)
  {
    *(this + 33) = v11;
    operator delete(v11);
  }

  v12 = *(this + 27);
  if (v12)
  {
    *(this + 28) = v12;
    operator delete(v12);
  }

  v13 = *(this + 22);
  if (v13)
  {
    *(this + 23) = v13;
    operator delete(v13);
  }

  v14 = *(this + 17);
  if (v14)
  {
    *(this + 18) = v14;
    operator delete(v14);
  }

  v15 = *(this + 12);
  if (v15)
  {
    *(this + 13) = v15;
    operator delete(v15);
  }

  v16 = *(this + 7);
  if (v16)
  {
    *(this + 8) = v16;
    operator delete(v16);
  }

  v17 = *(this + 2);
  if (v17)
  {
    *(this + 3) = v17;
    operator delete(v17);
  }
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void IR::IRCoordinateTree::~IRCoordinateTree(IR::IRCoordinateTree *this)
{
  v3 = (this + 32);
  std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void AUSpatialMixerV2DynamicXTCFilter::updateFilters(AUSpatialMixerV2DynamicXTCFilter *this)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(this + 5) < 2u)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v6 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(&v12, "AUSpatialMixerV2DynamicXTCFilter");
      v7 = std::string::append(&v12, "::", 2uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v13.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = std::string::append(&v13, "updateFilters", 0xDuLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v15 = v9->__r_.__value_.__r.__words[2];
      *__p = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = __p;
      if (v15 < 0)
      {
        v11 = __p[0];
      }

      buf = 136315138;
      *buf_4 = v11;
      _os_log_error_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "%s: Filters can not be generated if the number of drivers is < 2", &buf, 0xCu);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (*(this + 1) != 0.0 || !*(this + 103))
  {
    std::vector<std::vector<float>>::resize(this + 100, 0xAAAAAAAAAAAAAAABLL * ((*(this + 106) - *(this + 105)) >> 3));
    if (*(this + 106) != *(this + 105))
    {
      v2 = 0;
      v3 = (*(this + 5) * *(this + 13));
      v4 = 1;
      do
      {
        std::vector<float>::resize((*(this + 100) + 24 * v2), v3);
        v2 = v4;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(this + 106) - *(this + 105)) >> 3) > v4++);
    }

    AUSpatialMixerV2DynamicXTCFilter::updateSpeakerLocations(this);
    AUSpatialMixerV2DynamicXTCFilter::createDynamicFilters(this);
  }
}

void sub_1DDCC0DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  v49 = *(v47 - 168);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  applesauce::CF::URLRef::~URLRef((v47 - 152));
  _Unwind_Resume(a1);
}

void AUSpatialMixerV2DynamicXTCFilter::createDynamicFilters(AUSpatialMixerV2DynamicXTCFilter *this)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  std::vector<float>::vector[abi:ne200100](__p, 0x100uLL);
  std::vector<std::vector<float>>::vector[abi:ne200100](v57, (2 * v2));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  IR::IRData::getFilterLength(*(this + 96));
  IR::IRCoordinates::IRCoordinates(__p);
  std::vector<float>::vector[abi:ne200100](v41, 2uLL);
  std::vector<float>::vector[abi:ne200100](&v58, 0x100uLL);
  std::vector<std::vector<float>>::vector[abi:ne200100](&v62, 2uLL);
  if (v58.realp)
  {
    v58.imagp = v58.realp;
    operator delete(v58.realp);
  }

  if (*(this + 5))
  {
    if (!*(this + 98))
    {
      IR::IRCoordinates::set();
    }

    IR::IRCoordinates::set();
    IR::IRCoordinates::set();
    IR::IRData::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
  }

  v58.realp = &v62;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v58);
  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  LODWORD(v3) = *(this + 13);
  v4 = log2(v3);
  fftsetup = vDSP_create_fftsetup(v4, 0);
  v56 = fftsetup;
  v6 = *(this + 13);
  v7 = *(this + 4);
  std::vector<float>::vector[abi:ne200100](__p, 0x100uLL);
  std::vector<std::vector<float>>::vector[abi:ne200100](v55, 2uLL);
  v37[3] = v6 >> 1;
  v40 = (v6 >> 1) + 1;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v8 = *(this + 5);
  v38 = (2 * v40);
  std::vector<float>::vector[abi:ne200100](__p, v38);
  std::vector<std::vector<float>>::vector[abi:ne200100](v54, (2 * v8));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::vector<float>::vector[abi:ne200100](__p, v38);
  std::vector<std::vector<float>>::vector[abi:ne200100](v53, 2uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v9 = *(this + 5);
  std::vector<float>::vector[abi:ne200100](__p, v38);
  std::vector<std::vector<float>>::vector[abi:ne200100](v52, v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::vector<float>::vector[abi:ne200100](__p, v38);
  std::vector<std::vector<float>>::vector[abi:ne200100](v51, 2uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::vector<float>::vector[abi:ne200100](__p, v40);
  std::vector<std::vector<float>>::vector[abi:ne200100](v50, 0xB4uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v37[9] = fftsetup;
  v10 = std::vector<float>::vector[abi:ne200100](v49, v38);
  v37[1] = v37;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37[-2 * v11];
  MEMORY[0x1EEE9AC00](v13);
  v37[4] = &v37[-2 * v15];
  if ((v15 & 0x7FFFFFFF) != 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = v12;
    do
    {
      v19 = *(v54[0] + v16);
      v20 = &v19[v40];
      v18->realp = v19;
      v18->imagp = v20;
      AUSpatialMixerV2DynamicXTCFilter::getFFT(*(v57[0] + v16), v18, *(this + 13), &v56, v14);
      ++v17;
      LODWORD(v15) = *(this + 5);
      v16 += 24;
      ++v18;
    }

    while (v17 < (2 * v15));
  }

  memset(v48, 0, sizeof(v48));
  if (v15 == 2 && !AUSpatialMixerV2DynamicXTCFilter::readAUXTCFilter(this, v48))
  {
    v39 = v7;
    v21 = 0;
    v22 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    *__p = 0u;
    v43 = 0u;
    memset(v41, 0, sizeof(v41));
    do
    {
      std::vector<float>::resize(&__p[v22], v38);
      std::vector<float>::resize(&v41[v22], v38);
      v23 = __p[v22];
      v24 = (&v62.realp + v21);
      v25 = &v23[4 * v40];
      *v24 = v23;
      v24[1] = v25;
      AUSpatialMixerV2DynamicXTCFilter::getFFT(*(v48[0] + v22 * 8), (&v62 + v21), *(this + 13), &v56, v26);
      v27 = v41[v22];
      v28 = (&v58.realp + v21);
      v29 = &v27[4 * v40];
      *v28 = v27;
      v28[1] = v29;
      v22 += 3;
      v21 += 16;
    }

    while (v22 != 12);
    v30 = v40;
    vDSP_zvmul(v12, 1, &v62, 1, &v58, 1, v40, 1);
    vDSP_zvma(v12 + 2, 1, &v64, 1, &v58, 1, &v58, 1, v30);
    vDSP_zvmul(v12 + 1, 1, &v62, 1, &v59, 1, v30, 1);
    vDSP_zvma(v12 + 3, 1, &v64, 1, &v59, 1, &v59, 1, v30);
    vDSP_zvmul(v12, 1, &v63, 1, &v60, 1, v30, 1);
    vDSP_zvma(v12 + 2, 1, &v65, 1, &v60, 1, &v60, 1, v30);
    vDSP_zvmul(v12 + 1, 1, &v63, 1, &v61, 1, v30, 1);
    vDSP_zvma(v12 + 3, 1, &v65, 1, &v61, 1, &v61, 1, v30);
    v31 = 0;
    v32 = 4 * v38;
    do
    {
      if (v38)
      {
        memmove(*(v54[0] + v31 * 8), v41[v31], v32);
      }

      v31 += 3;
    }

    while (v31 != 12);
    v33 = 0;
    *(this + 57) = 1;
    do
    {
      v34 = v41[v33 + 9];
      if (v34)
      {
        v41[v33 + 10] = v34;
        operator delete(v34);
      }

      v33 -= 3;
    }

    while (v33 != -12);
    for (i = 0; i != -12; i -= 3)
    {
      v36 = *(&v46 + i * 8 + 8);
      if (v36)
      {
        v48[i - 2] = v36;
        operator delete(v36);
      }
    }
  }

  else
  {
    *(this + 57) = 0;
  }

  AUSpatialMixerV2DynamicXTCFilter::getTargetFIR(this);
}

void sub_1DDCC20A8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 664);
  if (v3)
  {
    *(v1 + 672) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 144);
  if (v4)
  {
    *(v1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 240);
  if (v5)
  {
    *(v1 + 248) = v5;
    operator delete(v5);
  }

  *(v1 + 224) = v1 + 320;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v1 + 224));
  v6 = *(v1 + 344);
  if (v6)
  {
    *(v1 + 352) = v6;
    operator delete(v6);
  }

  *(v1 + 224) = v1 + 368;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v1 + 224));
  *(v1 + 224) = v1 + 392;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v1 + 224));
  *(v1 + 224) = v1 + 416;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v1 + 224));
  *(v1 + 224) = v1 + 440;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v1 + 224));
  *(v1 + 224) = v1 + 464;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v1 + 224));
  *(v1 + 224) = v1 + 488;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v1 + 224));
  *(v1 + 648) = v1 + 520;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v1 + 648));
  _Unwind_Resume(a1);
}

void sub_1DDCC23C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDCC2450(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

float AUSpatialMixerV2DynamicXTCFilter::getFFT(const DSPComplex *this, DSPSplitComplex *__Z, DSPSplitComplex *a3, OpaqueFFTSetup **a4, OpaqueFFTSetup **a5)
{
  v6 = a3;
  v8 = a3 / 2;
  vDSP_ctoz(this, 2, __Z, 1, (a3 + (a3 >> 31)) >> 1);
  v9 = *a4;
  v10 = log2(v6);
  vDSP_fft_zrip(v9, __Z, 1, v10, 1);
  imagp = __Z->imagp;
  result = *imagp;
  __Z->realp[v8] = *imagp;
  imagp[v8] = 0.0;
  *imagp = 0.0;
  return result;
}

uint64_t AUSpatialMixerV2DynamicXTCFilter::readAUXTCFilter(uint64_t a1, uint64_t *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1007) >= 0)
  {
    v4 = *(a1 + 1007);
  }

  else
  {
    v4 = *(a1 + 992);
  }

  v5 = v57;
  std::string::basic_string[abi:ne200100](v57, v4 + 16);
  if ((v58 & 0x80u) != 0)
  {
    v5 = v57[0];
  }

  if (v4)
  {
    if (*(a1 + 1007) >= 0)
    {
      v6 = (a1 + 984);
    }

    else
    {
      v6 = *(a1 + 984);
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, "AUXTC_Tuning.wav");
  if ((v58 & 0x80u) == 0)
  {
    v7 = v57;
  }

  else
  {
    v7 = v57[0];
  }

  if ((v58 & 0x80u) == 0)
  {
    v8 = v58;
  }

  else
  {
    v8 = v57[1];
  }

  v9 = CFURLCreateWithBytes(0, v7, v8, 0, 0);
  v56 = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!CFURLGetFileSystemRepresentation(v9, 1u, v64, 1024))
  {
    v17 = 0;
    goto LABEL_77;
  }

  *v59 = 0;
  std::vector<float>::vector[abi:ne200100](&v47, 0x100uLL);
  std::vector<std::vector<float>>::resize(a2, 4uLL, &v47);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  v55 = 0;
  v10 = fopen(v64, "rb");
  v54 = v10;
  if (!v10 || !fread(&v47, 0x24uLL, 1uLL, v10))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
LABEL_41:
      v13 = v54;
      fclose(v54);
      goto LABEL_42;
    }

    *v59 = 136315394;
    *&v59[4] = "WaveFileReader";
    *&v59[12] = 2080;
    *&v59[14] = v64;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%s: Invalid wave file path: %s";
LABEL_83:
    _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, v16, v59, 0x16u);
    goto LABEL_41;
  }

  if (v47 != 1179011410 || v48 != 0x20746D6645564157 || v49 > 0x28 || ((1 << v49) & 0x10000050000) == 0 || (v50 | 2) != 3 || (v11 = v53, v53 != 16) && v53 != 24 && (v53 != 32 || v50 != 3))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_41;
    }

    *v59 = 136315394;
    *&v59[4] = "WaveFileReader";
    *&v59[12] = 2080;
    *&v59[14] = v64;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%s: Invalid format: %s";
    goto LABEL_83;
  }

  v12 = 0;
  v46.__r_.__value_.__s.__data_[0] = 0;
  v13 = v54;
  do
  {
    if (!fread(&v46, 1uLL, 1uLL, v13))
    {
      break;
    }

    HIDWORD(v14) = v46.__r_.__value_.__s.__data_[0];
    LODWORD(v14) = v12;
    v12 = v14 >> 8;
  }

  while (v12 != 1635017060);
  *v59 = 0;
  if (fread(v59, 4uLL, 1uLL, v13))
  {
    v55 = 8 * *v59 / v11 / v51;
  }

LABEL_42:
  v18 = v55;
  if (!v55)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v30 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_75;
    }

    std::string::basic_string[abi:ne200100]<0>(&v45, "AUSpatialMixerV2DynamicXTCFilter");
    v31 = std::string::append(&v45, "::", 2uLL);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v46, "readAUXTCFilter", 0xFuLL);
    v34 = *&v33->__r_.__value_.__l.__data_;
    *&v59[16] = *(&v33->__r_.__value_.__l + 2);
    *v59 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = v59;
    if (v59[23] < 0)
    {
      v35 = *v59;
    }

    v60 = 136315394;
    v61 = v35;
    v62 = 2080;
    v63 = v64;
    _os_log_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_DEFAULT, "%s: WARNING: AUXTC file not found at %s; will proceed without it", &v60, 0x16u);
    goto LABEL_66;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v19 = getAUSMV2Log(void)::gLog;
  v20 = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    std::string::basic_string[abi:ne200100]<0>(&v45, "AUSpatialMixerV2DynamicXTCFilter");
    v21 = std::string::append(&v45, "::", 2uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v46, "readAUXTCFilter", 0xFuLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    *&v59[16] = *(&v23->__r_.__value_.__l + 2);
    *v59 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = v59;
    if (v59[23] < 0)
    {
      v25 = *v59;
    }

    v60 = 136315394;
    v61 = v25;
    v62 = 2080;
    v63 = v64;
    _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEFAULT, "%s: AUXTC file found: %s", &v60, 0x16u);
    if ((v59[23] & 0x80000000) != 0)
    {
      operator delete(*v59);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }
  }

  if (v51 == 4 && v52 == 48000 && v18 < 0x101)
  {
    MEMORY[0x1EEE9AC00](v20);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    memset(v44, 0, 32);
    v29 = *a2;
    do
    {
      *v59 = 0;
      std::vector<float>::assign((v29 + v26), 0x100uLL, v59, v28);
      v29 = *a2;
      v44[v27++] = *(*a2 + v26);
      v26 += 24;
    }

    while (v27 < v51);
    WaveFileReader::read(&v47, v44, v51, v55);
    v17 = 0;
    v13 = v54;
    goto LABEL_76;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v36 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    std::string::basic_string[abi:ne200100]<0>(&v45, "AUSpatialMixerV2DynamicXTCFilter");
    v38 = std::string::append(&v45, "::", 2uLL);
    v39 = *&v38->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    v40 = std::string::append(&v46, "readAUXTCFilter", 0xFuLL);
    v41 = *&v40->__r_.__value_.__l.__data_;
    *&v59[16] = *(&v40->__r_.__value_.__l + 2);
    *v59 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = v59;
    if (v59[23] < 0)
    {
      v42 = *v59;
    }

    v60 = 136315394;
    v61 = v42;
    v62 = 2080;
    v63 = v64;
    _os_log_error_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_ERROR, "%s: WARNING: AUXTC file found at %s but is invalid; will proceed without it", &v60, 0x16u);
LABEL_66:
    if ((v59[23] & 0x80000000) != 0)
    {
      operator delete(*v59);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }
  }

LABEL_75:
  v17 = 4294956425;
LABEL_76:
  fclose(v13);
LABEL_77:
  if (v56)
  {
    CFRelease(v56);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  return v17;
}

void sub_1DDCC2D34(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  fclose(*(v1 + 96));
  applesauce::CF::URLRef::~URLRef((v1 + 112));
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  _Unwind_Resume(a1);
}

void AUSpatialMixerV2DynamicXTCFilter::getTargetFIR(uint64_t a1)
{
  NumFiltersPerSpatialPoint = IR::IRData::getNumFiltersPerSpatialPoint(*(a1 + 768));
  IR::IRCoordinates::IRCoordinates(v3);
  std::vector<float>::vector[abi:ne200100](&__p, NumFiltersPerSpatialPoint);
  IR::IRCoordinates::set();
  IR::IRCoordinates::set();
  IR::IRCoordinates::set();
  IR::IRData::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
}

void sub_1DDCC3044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUSpatialMixerV2DynamicXTCFilter::frequencySmooth(AUSpatialMixerV2DynamicXTCFilter *this, float *a2, float *a3, float a4, float a5)
{
  v7 = a3;
  v43 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v10 = a3;
  MEMORY[0x1EEE9AC00](this);
  v12 = (&v34 - v11);
  __B = 1.0;
  vDSP_vdbcon(v13, 1, &__B, v13, 1, v10, 1u);
  v41 = a5 / 100.0;
  if ((a5 / 100.0) != 1.0)
  {
    MEMORY[0x1E12BE940](this, 1, &v41, this, 1, v10, a5 / 100.0);
  }

  if (v7)
  {
    v16 = 0;
    v38 = xmmword_1DE095150;
    v37 = xmmword_1DE095160;
    v17 = vdupq_n_s32(0x473B8000u);
    v18 = vdupq_n_s64(4uLL);
    v19.i32[1] = 1;
    v34 = xmmword_1DE096230;
    v35 = v18;
    v20.i64[0] = 0x3F0000003F000000;
    v20.i64[1] = 0x3F0000003F000000;
    v21.i64[0] = 0x400000004;
    v21.i64[1] = 0x400000004;
    v36 = v17;
    do
    {
      *v14.i32 = v7 + v7;
      *v15.i32 = ((v16 + 0.5) / *v14.i32) * 48000.0;
      if (*v15.i32 <= a4)
      {
        *v19.i32 = ((*v15.i32 / 3.0) / 3.1416) * (((*v15.i32 / 3.0) / 3.1416) + ((*v15.i32 / 3.0) / 3.1416));
        if (v7 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v7;
        }

        v23 = (v22 + 3) & 0x1FFFFFFFCLL;
        v24 = vdupq_n_s64(v22 - 1);
        v25 = vdupq_lane_s32(v14, 0);
        v26 = vdupq_lane_s32(v15, 0);
        v27 = v12 + 2;
        v28 = v37;
        v29 = v38;
        v30 = v34;
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v24, v28));
          v32 = vsubq_f32(vmulq_f32(vdivq_f32(vaddq_f32(vcvtq_f32_u32(v30), v20), v25), v17), v26);
          if (vuzp1_s16(v31, v19).u8[0])
          {
            *(v27 - 2) = (-v32.f32[0] * v32.f32[0]) / *v19.i32;
          }

          if (vuzp1_s16(v31, v19).i8[2])
          {
            *(v27 - 1) = vmuls_lane_f32(-v32.f32[1], *v32.f32, 1) / *v19.i32;
          }

          if (vuzp1_s16(v19, vmovn_s64(vcgeq_u64(v24, *&v29))).i32[1])
          {
            *v27 = vmuls_lane_f32(-v32.f32[2], v32, 2) / *v19.i32;
            v27[1] = vmuls_lane_f32(-v32.f32[3], v32, 3) / *v19.i32;
          }

          v29 = vaddq_s64(v29, v18);
          v28 = vaddq_s64(v28, v18);
          v30 = vaddq_s32(v30, v21);
          v27 += 4;
          v23 -= 4;
        }

        while (v23);
        vvexpf(v12, v12, &v42);
        __C = 0.0;
        vDSP_sve(v12, 1, &__C, v42);
        vDSP_vsdiv(v12, 1, &__C, v12, 1, v42);
        MEMORY[0x1E12BE7F0](v12, 1, this, 1, v12, 1, v42);
        vDSP_sve(v12, 1, &__C, v42);
        *v19.i32 = __exp10f(__C / 20.0);
        v21.i64[0] = 0x400000004;
        v21.i64[1] = 0x400000004;
        v20.i64[0] = 0x3F0000003F000000;
        v20.i64[1] = 0x3F0000003F000000;
        v18 = v35;
        v17 = v36;
        a2[v16] = *v19.i32;
        v7 = v42;
      }

      else
      {
        a2[v16] = 1.0;
      }

      ++v16;
    }

    while (v16 < v7);
    v33 = v7;
  }

  else
  {
    v33 = 0;
  }

  a2[v33] = a2[v33 - 1];
}

void AUSpatialMixerV2DynamicXTCFilter::applyCrossover(AUSpatialMixerV2DynamicXTCFilter *this)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(this + 5) < 2u)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v24 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v25 = std::string::basic_string[abi:ne200100]<0>(v33, "AUSpatialMixerV2DynamicXTCFilter");
      v26 = std::string::append(v25, "::", 2uLL);
      v27 = *&v26->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v28 = std::string::append(&v35, "applyCrossover", 0xEuLL);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v37 = v28->__r_.__value_.__r.__words[2];
      v36 = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = &v36;
      if (v37 < 0)
      {
        v30 = v36;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v30;
      _os_log_error_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, "%s: Crossover can not be applied if the number of drivers is < 2", &buf, 0xCu);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }
  }

  else
  {
    v38 = __exp10f(*(this + 8) / 20.0);
    MEMORY[0x1EEE9AC00](v2);
    v4 = (v31 - ((v3 + 15) & 0x7FFFFFFF0));
    v5 = *(this + 13);
    LODWORD(v35.__r_.__value_.__l.__data_) = 0;
    std::vector<float>::vector[abi:ne200100](&v36, v5);
    std::vector<float>::vector[abi:ne200100](&v35, *(this + 13));
    LODWORD(buf) = 0;
    std::vector<float>::vector[abi:ne200100](v33, 0xAuLL);
    v32 = 0;
    std::vector<float>::vector[abi:ne200100](&buf, 0xAuLL);
    v6 = *(this + 105);
    if (*(this + 106) != v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(v6 + 24 * v7);
        v10 = v9[1] * 0.0174532925;
        v12 = __sincos_stret(*v9 * 0.0174532925);
        *&v11 = v12.__cosval;
        *v31 = v11;
        v14 = __sincos_stret(v10);
        v13.f64[0] = v14.__cosval;
        v13.f64[1] = v14.__sinval;
        v40 = vcvt_f32_f64(vmulq_n_f64(v13, v31[0]));
        sinval = v12.__sinval;
        v41 = sinval;
        VBAP::calculateVBAPGains(*(this + 122), &v40, v4);
        LODWORD(v16) = *(this + 5);
        if (v16)
        {
          v17 = 0;
          do
          {
            v18 = *(this + 13);
            v19 = (*(*(this + 100) + 24 * v7) + 4 * (v18 * v17));
            vDSP_biquad(*(this + 120), buf, v19, 1, v19, 1, v18);
            v20 = v17;
            if (*(this + 98))
            {
              if (*(this + 115) == *(this + 114))
              {
                v20 = v17 & 1;
              }

              else
              {
                v20 = *(*(this + 108) + 4 * v17) >= 0.0;
              }
            }

            v21 = *(this + 13);
            v22 = v36;
            *(v36 + (v21 & 0xFFFFFFFC)) = v4[v20];
            vDSP_biquad(*(this + 118), v33[0], v22, 1, v35.__r_.__value_.__l.__data_, 1, v21);
            v23 = *(*(this + 100) + 24 * v7) + 4 * (*(this + 13) * v17);
            MEMORY[0x1E12BE5D0](v35.__r_.__value_.__r.__words[0], 1, v23, 1, v23, 1);
            vDSP_vclr(v33[0], 1, 0xAuLL);
            vDSP_vclr(buf, 1, 0xAuLL);
            ++v17;
            v16 = *(this + 5);
          }

          while (v17 < v16);
        }

        MEMORY[0x1E12BE940](*(*(this + 100) + 24 * v7), 1, &v38, *(*(this + 100) + 24 * v7), 1, (*(this + 13) * v16));
        v6 = *(this + 105);
        v7 = ++v8;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(this + 106) - v6) >> 3) > v8);
    }

    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }

    if (v33[0])
    {
      v33[1] = v33[0];
      operator delete(v33[0]);
    }

    if (v35.__r_.__value_.__r.__words[0])
    {
      v35.__r_.__value_.__l.__size_ = v35.__r_.__value_.__r.__words[0];
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (v36)
    {
      *(&v36 + 1) = v36;
      operator delete(v36);
    }
  }
}

void sub_1DDCC3828(_Unwind_Exception *exception_object)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  if (*(v1 - 225) < 0)
  {
    operator delete(*(v1 - 248));
  }

  _Unwind_Resume(exception_object);
}

void AUSpatialMixerV2DynamicXTCFilter::analyticalInverseStereo(AUSpatialMixerV2DynamicXTCFilter *this, DSPSplitComplex *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  v4 = *(*this + 4);
  v5 = -v3[1];
  v6 = -v3[2];
  v7 = *(*this + 8);
  v8 = *(*this + 12);
  v9 = -v3[3];
  v31 = **this;
  v32 = -*v3;
  v10 = std::operator*[abi:ne200100]<float,0>(v31, v32, v8, v9);
  v12 = v11;
  v13 = v10 - std::operator*[abi:ne200100]<float,0>(v7, v6, v4, v5);
  v15 = v12 - v14;
  if (v13 == 0.0 && v15 == 0.0)
  {
    v16 = 0.0;
    v17 = 1.0;
  }

  else
  {
    v17 = __divsc3(1.0, 0.0, v13, v15);
  }

  v28 = __PAIR64__(LODWORD(v16), LODWORD(v17));
  v29 = v16;
  v30 = v17;
  v33[0] = std::operator*[abi:ne200100]<float,0>(v17, v16, v8, v9);
  v33[1] = v18;
  v19 = vneg_f32(v28);
  v33[2] = std::operator*[abi:ne200100]<float,0>(v19.f32[0], v19.f32[1], v7, v6);
  v33[3] = v20;
  v33[4] = std::operator*[abi:ne200100]<float,0>(v19.f32[0], v19.f32[1], v4, v5);
  v33[5] = v21;
  v22 = std::operator*[abi:ne200100]<float,0>(v30, v29, v31, v32);
  v23 = 0;
  *&v33[6] = v22;
  v33[7] = v24;
  v25 = *this;
  v26 = *(this + 1);
  do
  {
    v27 = v33[v23 + 1];
    *v25++ = v33[v23];
    *v26++ = v27;
    v23 += 2;
  }

  while (v23 != 8);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[17],float>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCC3AE8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],float &>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCC3BB4(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],float &>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCC3C80(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],float &>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCC3D4C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void AUSpatialMixerV2DynamicXTCFilter::updateParamDictionary(uint64_t a1, const void *a2)
{
  v134[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 936);
  *(a1 + 936) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 4) = 0;
  v4 = *(a1 + 936);
  if (v4)
  {
    v5 = CFStringCreateWithBytes(0, "CounteractRotationShader", 24, 0x8000100u, 0);
    v122.__r_.__value_.__r.__words[0] = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v6 = CFDictionaryContainsKey(v4, v5);
    CFRelease(v122.__r_.__value_.__l.__data_);
    if (v6)
    {
      v7 = *(a1 + 936);
      if (!v7)
      {
        goto LABEL_170;
      }

      v8 = *(a1 + 56);
      if (v8 != applesauce::CF::details::find_at_key_or_optional<BOOL,char const(&)[25]>(v7, "CounteractRotationShader"))
      {
        v9 = *(a1 + 936);
        if (!v9)
        {
          goto LABEL_170;
        }

        *(a1 + 56) = applesauce::CF::details::find_at_key_or_optional<BOOL,char const(&)[25]>(v9, "CounteractRotationShader");
        *(a1 + 4) = 1065353216;
      }
    }

    v10 = *(a1 + 936);
    if (v10)
    {
      if (!applesauce::CF::details::has_key<char const(&)[12]>(v10, "SpeakerSpan"))
      {
LABEL_25:
        v14 = *(a1 + 936);
        if (!v14)
        {
          v83 = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(v83);
        }

        if (applesauce::CF::details::has_key<char const(&)[15]>(v14, "Regularization"))
        {
          v15 = *(a1 + 936);
          if (!v15)
          {
            v95 = __cxa_allocate_exception(0x10uLL);
            applesauce::CF::construct_error(v95);
          }

          v16 = *(a1 + 40);
          v17 = applesauce::CF::details::at_key<char const(&)[15]>(v15, "Regularization");
          if (v17)
          {
            LODWORD(v18) = applesauce::CF::convert_as<float,0>(v17);
          }

          else
          {
            v18 = 0.0;
          }

          if (v16 != v18)
          {
            v19 = *(a1 + 936);
            if (!v19)
            {
              v104 = __cxa_allocate_exception(0x10uLL);
              applesauce::CF::construct_error(v104);
            }

            v20 = applesauce::CF::details::at_key<char const(&)[15]>(v19, "Regularization");
            if (v20)
            {
              LODWORD(v20) = applesauce::CF::convert_as<float,0>(v20);
            }

            *(a1 + 40) = v20;
            *(a1 + 4) = 1065353216;
          }
        }

        v21 = *(a1 + 936);
        if (!v21)
        {
          v84 = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(v84);
        }

        v22 = CFStringCreateWithBytes(0, "Constraint", 10, 0x8000100u, 0);
        v122.__r_.__value_.__r.__words[0] = v22;
        if (!v22)
        {
          v85 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v85, "Could not construct");
        }

        v23 = CFDictionaryContainsKey(v21, v22);
        if (v122.__r_.__value_.__r.__words[0])
        {
          CFRelease(v122.__r_.__value_.__l.__data_);
        }

        if (v23)
        {
          v24 = *(a1 + 936);
          if (!v24)
          {
            v93 = __cxa_allocate_exception(0x10uLL);
            applesauce::CF::construct_error(v93);
          }

          v25 = *(a1 + 36);
          v26 = applesauce::CF::details::at_key<char const(&)[11]>(v24, "Constraint");
          if (v26)
          {
            LODWORD(v27) = applesauce::CF::convert_as<float,0>(v26);
          }

          else
          {
            v27 = 0.0;
          }

          if (v25 != v27)
          {
            v28 = *(a1 + 936);
            if (!v28)
            {
              v101 = __cxa_allocate_exception(0x10uLL);
              applesauce::CF::construct_error(v101);
            }

            v29 = applesauce::CF::details::at_key<char const(&)[11]>(v28, "Constraint");
            if (v29)
            {
              LODWORD(v29) = applesauce::CF::convert_as<float,0>(v29);
            }

            *(a1 + 36) = v29;
            *(a1 + 4) = 1065353216;
          }
        }

        v30 = *(a1 + 936);
        if (!v30)
        {
          v86 = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(v86);
        }

        v31 = CFStringCreateWithBytes(0, "PostTimbralFrequency", 20, 0x8000100u, 0);
        v122.__r_.__value_.__r.__words[0] = v31;
        if (!v31)
        {
          v87 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v87, "Could not construct");
        }

        v32 = CFDictionaryContainsKey(v30, v31);
        if (v122.__r_.__value_.__r.__words[0])
        {
          CFRelease(v122.__r_.__value_.__l.__data_);
        }

        if (v32)
        {
          v33 = *(a1 + 936);
          if (!v33)
          {
            v94 = __cxa_allocate_exception(0x10uLL);
            applesauce::CF::construct_error(v94);
          }

          v34 = *(a1 + 24);
          v35 = applesauce::CF::details::at_key<char const(&)[21]>(v33, "PostTimbralFrequency");
          if (v35)
          {
            LODWORD(v36) = applesauce::CF::convert_as<float,0>(v35);
          }

          else
          {
            v36 = 0.0;
          }

          if (v34 != v36)
          {
            v37 = *(a1 + 936);
            if (!v37)
            {
              v102 = __cxa_allocate_exception(0x10uLL);
              applesauce::CF::construct_error(v102);
            }

            v38 = applesauce::CF::details::at_key<char const(&)[21]>(v37, "PostTimbralFrequency");
            if (v38)
            {
              LODWORD(v38) = applesauce::CF::convert_as<float,0>(v38);
            }

            *(a1 + 24) = v38;
            *(a1 + 4) = 1065353216;
          }
        }

        v39 = *(a1 + 936);
        if (!v39)
        {
          v88 = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(v88);
        }

        if (applesauce::CF::details::has_key<char const(&)[17]>(v39, "PostTimbralBlend"))
        {
          v40 = *(a1 + 936);
          if (!v40)
          {
            v96 = __cxa_allocate_exception(0x10uLL);
            applesauce::CF::construct_error(v96);
          }

          v41 = *(a1 + 28);
          v42 = applesauce::CF::details::at_key<char const(&)[17]>(v40, "PostTimbralBlend");
          if (v42)
          {
            LODWORD(v43) = applesauce::CF::convert_as<float,0>(v42);
          }

          else
          {
            v43 = 0.0;
          }

          if (v41 != v43)
          {
            v44 = *(a1 + 936);
            if (!v44)
            {
              v105 = __cxa_allocate_exception(0x10uLL);
              applesauce::CF::construct_error(v105);
            }

            v45 = applesauce::CF::details::at_key<char const(&)[17]>(v44, "PostTimbralBlend");
            if (v45)
            {
              LODWORD(v45) = applesauce::CF::convert_as<float,0>(v45);
            }

            *(a1 + 28) = v45;
            *(a1 + 4) = 1065353216;
          }
        }

        v46 = *(a1 + 936);
        if (!v46)
        {
          v89 = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(v89);
        }

        if (applesauce::CF::details::has_key<char const(&)[9]>(v46, "PostGain"))
        {
          v47 = *(a1 + 936);
          if (!v47)
          {
            v97 = __cxa_allocate_exception(0x10uLL);
            applesauce::CF::construct_error(v97);
          }

          v48 = *(a1 + 32);
          v49 = applesauce::CF::details::at_key<char const(&)[9]>(v47, "PostGain");
          if (v49)
          {
            LODWORD(v50) = applesauce::CF::convert_as<float,0>(v49);
          }

          else
          {
            v50 = 0.0;
          }

          if (v48 != v50)
          {
            v51 = *(a1 + 936);
            if (!v51)
            {
              v106 = __cxa_allocate_exception(0x10uLL);
              applesauce::CF::construct_error(v106);
            }

            v52 = applesauce::CF::details::at_key<char const(&)[9]>(v51, "PostGain");
            if (v52)
            {
              LODWORD(v52) = applesauce::CF::convert_as<float,0>(v52);
            }

            *(a1 + 32) = v52;
            *(a1 + 4) = 1065353216;
          }
        }

        v53 = *(a1 + 936);
        if (!v53)
        {
          v90 = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(v90);
        }

        if (applesauce::CF::details::has_key<char const(&)[10]>(v53, "Crossover"))
        {
          v54 = *(a1 + 936);
          if (!v54)
          {
            v98 = __cxa_allocate_exception(0x10uLL);
            applesauce::CF::construct_error(v98);
          }

          v55 = *(a1 + 48);
          v56 = applesauce::CF::details::at_key<char const(&)[10]>(v54, "Crossover");
          if (v56)
          {
            LODWORD(v57) = applesauce::CF::convert_as<float,0>(v56);
          }

          else
          {
            v57 = 0.0;
          }

          if (v55 != v57)
          {
            v58 = *(a1 + 936);
            if (!v58)
            {
              v107 = __cxa_allocate_exception(0x10uLL);
              applesauce::CF::construct_error(v107);
            }

            v59 = applesauce::CF::details::at_key<char const(&)[10]>(v58, "Crossover");
            if (v59)
            {
              LODWORD(v59) = applesauce::CF::convert_as<float,0>(v59);
            }

            *(a1 + 48) = v59;
            v60 = ((*&v59 + *&v59) / *(a1 + 8)) * 3.14159265;
            AUSpatialMixerV2DynamicXTCFilter::setLR8Crossover(a1, v60);
            *(a1 + 4) = 1065353216;
          }
        }

        v61 = *(a1 + 936);
        if (!v61)
        {
          v91 = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(v91);
        }

        if (applesauce::CF::details::has_key<char const(&)[13]>(v61, "FilterLength"))
        {
          v62 = *(a1 + 936);
          if (!v62)
          {
            v99 = __cxa_allocate_exception(0x10uLL);
            applesauce::CF::construct_error(v99);
          }

          v63 = *(a1 + 52);
          if (v63 != applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[13]>(v62))
          {
            v64 = *(a1 + 936);
            if (!v64)
            {
              v108 = __cxa_allocate_exception(0x10uLL);
              applesauce::CF::construct_error(v108);
            }

            v65 = applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[13]>(v64);
            if (v65 >= 0x100)
            {
              v66 = 256;
            }

            else
            {
              v66 = v65;
            }

            *(a1 + 52) = v66;
            *(a1 + 4) = 1065353216;
          }
        }

        v67 = *(a1 + 936);
        if (!v67)
        {
          v92 = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(v92);
        }

        if (applesauce::CF::details::has_key<char const(&)[12]>(v67, "SaveXTCFile"))
        {
          v68 = *(a1 + 936);
          if (!v68)
          {
            v100 = __cxa_allocate_exception(0x10uLL);
            applesauce::CF::construct_error(v100);
          }

          if ((applesauce::CF::details::find_at_key_or_optional<BOOL,char const(&)[12]>(v68, "SaveXTCFile") & 1) != 0 && *(a1 + 808) != *(a1 + 800))
          {
            v69 = *(a1 + 1031);
            if (v69 < 0)
            {
              v70 = *(a1 + 1008);
              v69 = *(a1 + 1016);
            }

            else
            {
              v70 = (a1 + 1008);
            }

            if (CFURLCreateWithBytes(0, v70, v69, 0, 0))
            {
              *&buf.__r_.__value_.__l.__data_ = *(a1 + 52) / 192000.0;
              applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[17],float>(&v122, "XTCModelingDelay", &buf);
              applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],float &>(&v122.__r_.__value_.__r.__words[2], "XTCSpeakerSpan", (a1 + 44));
              applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],float &>(&v123, "XTCRegularization", (a1 + 40));
              applesauce::CF::TypeRef::TypeRef(&v124, "XTCConstraint");
              LODWORD(valuePtr.__r_.__value_.__l.__data_) = *(a1 + 36);
              if (CFNumberCreate(0, kCFNumberFloatType, &valuePtr))
              {
                applesauce::CF::TypeRef::TypeRef(&v126, "XTCPostTimbralFrequency");
                LODWORD(valuePtr.__r_.__value_.__l.__data_) = *(a1 + 24);
                if (CFNumberCreate(0, kCFNumberFloatType, &valuePtr))
                {
                  applesauce::CF::TypeRef::TypeRef(&v128, "XTCPostTimbralBlend");
                  LODWORD(valuePtr.__r_.__value_.__l.__data_) = *(a1 + 28);
                  if (CFNumberCreate(0, kCFNumberFloatType, &valuePtr))
                  {
                    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],float &>(&v130, "XTCPostGain", (a1 + 32));
                    applesauce::CF::TypeRef::TypeRef(&v131, "XTCCrossover");
                    LODWORD(valuePtr.__r_.__value_.__l.__data_) = *(a1 + 48);
                    if (CFNumberCreate(0, kCFNumberFloatType, &valuePtr))
                    {
                      applesauce::CF::TypeRef::TypeRef(v133, "CounteractRotationShader");
                      if (*(a1 + 56))
                      {
                        v71 = MEMORY[0x1E695E4D0];
                      }

                      else
                      {
                        v71 = MEMORY[0x1E695E4C0];
                      }

                      v134[0] = *v71;
                      __p[0] = &v122;
                      __p[1] = 9;
                      v72 = 0;
                      CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(__p);
                      while (1)
                      {
                        v73 = v134[v72];
                        if (v73)
                        {
                          CFRelease(v73);
                        }

                        v74 = *&v133[v72 * 8];
                        if (v74)
                        {
                          CFRelease(v74);
                        }

                        v72 -= 2;
                        if (v72 == -18)
                        {
                          v75 = std::string::basic_string[abi:ne200100]<0>(&v122, "Generated Using the AUSM - Virtual Surround Tuning Tool");
                          if (*(a1 + 57) == 1)
                          {
                            std::string::append(v75, " - Magic Unicorn", 0x10uLL);
                          }

                          if (*(a1 + 784))
                          {
                            std::string::append(&v122, " - Measured Device Reference", 0x1CuLL);
                          }

                          if (2 * *(a1 + 52) != (*(*(a1 + 800) + 8) - **(a1 + 800)) >> 2)
                          {
                            if (getAUSMV2Log(void)::onceToken != -1)
                            {
                              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                            }

                            v76 = getAUSMV2Log(void)::gLog;
                            if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                            {
                              std::string::basic_string[abi:ne200100]<0>(&buf, "AUSpatialMixerV2DynamicXTCFilter");
                              v77 = std::string::append(&buf, "::", 2uLL);
                              v78 = *&v77->__r_.__value_.__l.__data_;
                              valuePtr.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
                              *&valuePtr.__r_.__value_.__l.__data_ = v78;
                              v77->__r_.__value_.__l.__size_ = 0;
                              v77->__r_.__value_.__r.__words[2] = 0;
                              v77->__r_.__value_.__r.__words[0] = 0;
                              v79 = std::string::append(&valuePtr, "writeIRFile", 0xBuLL);
                              v80 = *&v79->__r_.__value_.__l.__data_;
                              v115 = v79->__r_.__value_.__r.__words[2];
                              *__p = v80;
                              v79->__r_.__value_.__l.__size_ = 0;
                              v79->__r_.__value_.__r.__words[2] = 0;
                              v79->__r_.__value_.__r.__words[0] = 0;
                              v81 = __p;
                              if (v115 < 0)
                              {
                                v81 = __p[0];
                              }

                              v117 = 136315138;
                              *v118 = v81;
                              _os_log_error_impl(&dword_1DDB85000, v76, OS_LOG_TYPE_ERROR, "%s: Filter matrix size inconsistent with user-defined filter length; IR file may not render", &v117, 0xCu);
                              if (SHIBYTE(v115) < 0)
                              {
                                operator delete(__p[0]);
                              }

                              if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(valuePtr.__r_.__value_.__l.__data_);
                              }

                              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(buf.__r_.__value_.__l.__data_);
                              }
                            }
                          }

                          v119 = 1;
                          __p[1] = 0;
                          v115 = 0;
                          __p[0] = 0;
                          std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType const*,IR::IRCoordinateType const*>(__p, &v119, &buf, 2uLL);
                        }
                      }
                    }

                    v113 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v113, "Could not construct");
                  }

                  v112 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v112, "Could not construct");
                }

                v111 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v111, "Could not construct");
              }

              v110 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v110, "Could not construct");
            }

            v109 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v109, "Could not construct");
          }
        }

        return;
      }

      v11 = *(a1 + 936);
      if (v11)
      {
        v12 = applesauce::CF::details::at_key<char const(&)[12]>(v11, "SpeakerSpan");
        if (v12)
        {
          LODWORD(v12) = applesauce::CF::convert_as<float,0>(v12);
        }

        if (*(a1 + 44) != *&v12)
        {
          *(a1 + 44) = v12;
          if (*(a1 + 784))
          {
            v13 = *(a1 + 976);
            valuePtr.__r_.__value_.__l.__data_ = vmul_n_f32(COERCE_FLOAT32X2_T(--0.0000305175998), *&v12);
            memset(&v122, 0, sizeof(v122));
            std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v122, &valuePtr, &valuePtr.__r_.__value_.__l.__size_, 2uLL);
            buf.__r_.__value_.__r.__words[0] = 0;
            __p[1] = 0;
            v115 = 0;
            __p[0] = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, &buf, &buf.__r_.__value_.__l.__size_, 2uLL);
            VBAP::changeSpeakerLocations(v13, &v122, __p);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (v122.__r_.__value_.__r.__words[0])
            {
              v122.__r_.__value_.__l.__size_ = v122.__r_.__value_.__r.__words[0];
              operator delete(v122.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            AUSpatialMixerV2DynamicXTCFilter::updateSpeakerLocations(a1);
            VBAP::changeSpeakerLocations(*(a1 + 976), (a1 + 864), (a1 + 888));
          }

          *(a1 + 4) = 1065353216;
        }

        goto LABEL_25;
      }
    }

LABEL_170:
    v103 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v103);
  }
}

void sub_1DDCC5150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  _Unwind_Resume(exception_object);
}

uint64_t applesauce::CF::details::find_at_key_or_optional<BOOL,char const(&)[25]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v10 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if ((a1 && (Value = CFDictionaryGetValue(a1, v5), (v5 = v10) == 0) || (CFRelease(v5), a1)) && Value)
  {
    v6 = applesauce::CF::convert_as<BOOL,0>(Value);
    v7 = HIBYTE(v6);
  }

  else
  {
    v7 = 0;
    LOBYTE(v6) = 0;
  }

  return v6 | (v7 << 8);
}

BOOL applesauce::CF::details::has_key<char const(&)[12]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_1DDCC567C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[12]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[12]>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<float,0>(result);
  }

  return result;
}

BOOL applesauce::CF::details::has_key<char const(&)[15]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_1DDCC57A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[15]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[15]>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<float,0>(result);
  }

  return result;
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[11]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[11]>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<float,0>(result);
  }

  return result;
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[21]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[21]>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<float,0>(result);
  }

  return result;
}

BOOL applesauce::CF::details::has_key<char const(&)[17]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_1DDCC592C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[17]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[17]>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<float,0>(result);
  }

  return result;
}

BOOL applesauce::CF::details::has_key<char const(&)[9]>(_BOOL8 a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  v9 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = v5;
  if (!a1 || (a1 = CFDictionaryContainsKey(a1, v5) != 0, (v6 = v9) != 0))
  {
    CFRelease(v6);
  }

  return a1;
}

void sub_1DDCC5A58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[9]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[9]>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<float,0>(result);
  }

  return result;
}

BOOL applesauce::CF::details::has_key<char const(&)[10]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_1DDCC5B7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[10]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[10]>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<float,0>(result);
  }

  return result;
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[13]>(const __CFDictionary *a1)
{
  result = applesauce::CF::details::at_key<char const(&)[13]>(a1, "FilterLength");
  if (result)
  {

    return applesauce::CF::convert_as<unsigned int,0>(result);
  }

  return result;
}

uint64_t applesauce::CF::details::find_at_key_or_optional<BOOL,char const(&)[12]>(const __CFDictionary *a1, const UInt8 *a2)
{
  v2 = applesauce::CF::details::at_key<char const(&)[12]>(a1, a2);
  if (v2)
  {
    LOWORD(v2) = applesauce::CF::convert_as<BOOL,0>(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[12]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DDCC5D20(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDCC5CCCLL);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[10]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DDCC5E34(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDCC5DE0);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[9]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DDCC5F48(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDCC5EF4);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[17]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DDCC605C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDCC6008);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[21]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DDCC6170(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDCC611CLL);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[11]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DDCC6284(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDCC6230);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[15]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DDCC6398(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDCC6344);
}

os_log_t CLiteMatrix::Get(CLiteMatrix *this, unint64_t a2, unint64_t a3)
{
  if (*this > a2)
  {
    v3 = *(this + 1);
    if (v3 > a3)
    {
      return (*(this + 2) + 4 * v3 * a2 + 4 * a3);
    }
  }

  CAVerboseAbort();
  return ___Z25getParametricProcessorLogv_block_invoke();
}

os_log_t ___Z25getParametricProcessorLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "ParametricProcessor");
  getParametricProcessorLog(void)::gLog = result;
  return result;
}

void CLiteMatrix::Eye(CLiteMatrix *this, uint64_t a2, int16x4_t a3)
{
  CLiteMatrix::CLiteMatrix(this, a2, a2, a3);
  if (a2)
  {
    v5 = 0;
    do
    {
      LODWORD(CLiteMatrix::Get(this, v5, v5)->isa) = 1065353216;
      ++v5;
    }

    while (a2 != v5);
  }
}

void afSTFTData::afSTFTData(afSTFTData *this, unint64_t a2, unint64_t a3)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v5 = (this + 24);
  *this = 0u;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  std::vector<std::vector<float>>::resize(v5, 0);
  v6 = *(this + 3);
  if (*(this + 4) != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      std::vector<float>::resize((v6 + v7), a3);
      v9 = v8 >> 1;
      v10 = *this;
      v11 = (*(this + 1) - *this) >> 4;
      if (v8)
      {
        if (v11 <= v8 >> 1)
        {
LABEL_13:
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v6 = *v5;
        *(v10 + 16 * v9) = *(*v5 + v7);
      }

      else
      {
        if (v11 <= v8 >> 1)
        {
          goto LABEL_13;
        }

        v6 = *v5;
        *(v10 + 16 * v9 + 8) = *(*v5 + v7);
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - v6) >> 3));
  }
}

void sub_1DDCC6638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *std::vector<CLiteMatrix>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<CLiteMatrix>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<CLiteMatrix>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<CLiteMatrix>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<CLiteMatrix>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void afSTFTData::~afSTFTData(afSTFTData *this)
{
  v3 = (this + 24);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void std::vector<CLiteMatrix>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<CLiteMatrix>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void afSTFTWrapper::~afSTFTWrapper(int **this)
{
  afSTFTWrapper::~afSTFTWrapper(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591FF18;
  afSTFTfree(this[10]);
  v2 = this[26];
  if (v2)
  {
    this[27] = v2;
    operator delete(v2);
  }

  v6 = (this + 23);
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 20);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = this[17];
  if (v3)
  {
    this[18] = v3;
    operator delete(v3);
  }

  v6 = (this + 14);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = this[11];
  if (v4)
  {
    this[12] = v4;
    operator delete(v4);
  }

  v5 = this[7];
  if (v5)
  {
    this[8] = v5;
    operator delete(v5);
  }
}

void afSTFTWrapper::afSTFTWrapper(afSTFTWrapper *this, unsigned int a2, unsigned int a3, int a4, int a5, char a6, int a7)
{
  v7 = a7;
  *this = &unk_1F591FF18;
  *(this + 56) = 0u;
  v22 = (this + 56);
  *(this + 2) = 0;
  v14 = a2;
  if (a7)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  *(this + 1) = 0uLL;
  *(this + 2) = 0uLL;
  v16 = a4 + v15 + 1;
  *(this + 24) = 0;
  *(this + 72) = 0uLL;
  afSTFTData::afSTFTData((this + 88), a2, v16);
  afSTFTData::afSTFTData((this + 136), a3, v16);
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 4) = v14;
  *(this + 5) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 48) = a6;
  if (a2 <= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = a2;
  }

  *(this + 49) = v7;
  std::vector<float *>::resize(v22, v17);
  v18 = *(this + 3);
  v19 = *(this + 4) + 4 * *(this + 49) + 1;
  *(this + 2) = v19;
  CLiteMatrix::CLiteMatrix(&v23, *(this + 4), v18, v20);
  std::vector<CLiteMatrix>::vector[abi:ne200100](&v26, v19);
  std::vector<CLiteMatrix>::__vdeallocate(this + 23);
  *(this + 184) = v26;
  *(this + 25) = v27;
  v27 = 0;
  v26 = 0uLL;
  v28 = &v26;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v28);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  std::vector<float>::vector[abi:ne200100](&v23, *(this + 2));
  v21 = *(this + 26);
  if (v21)
  {
    *(this + 27) = v21;
    operator delete(v21);
    *(this + 26) = 0;
    *(this + 27) = 0;
    *(this + 28) = 0;
  }

  *(this + 13) = v23;
  *(this + 28) = __p;
  afSTFTinit(this + 10, *(this + 4), *(this + 8), *(this + 10), *(this + 48), *(this + 49));
}

void sub_1DDCC6BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  v17 = *(v15 + 24);
  if (v17)
  {
    v14[27] = v17;
    operator delete(v17);
  }

  a11 = v15;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a11);
  afSTFTData::~afSTFTData((v14 + 17));
  afSTFTData::~afSTFTData((v14 + 11));
  v18 = *a10;
  if (*a10)
  {
    v14[8] = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t afSTFTWrapper::fltbAnalysisMatrix(uint64_t a1, unint64_t *a2)
{
  if (*a2 != *(a1 + 32))
  {
    __assert_rtn("fltbAnalysisMatrix", "afSTFTWrapper.cpp", 71, "inMatrix.NumRows()==mnInputs");
  }

  v4 = *(a1 + 24);
  if (a2[1] != *(a1 + 16) * v4)
  {
    __assert_rtn("fltbAnalysisMatrix", "afSTFTWrapper.cpp", 72, "inMatrix.NumCols()==mnHops*mhopSize");
  }

  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = 0;
        v9 = *(a1 + 16);
        v10 = v9 * v6;
        v11 = *a2;
        v12 = a2[1];
        v13 = v9 * v5;
        do
        {
          if (v11 <= v8 || v12 <= v10)
          {
            CAVerboseAbort();
LABEL_22:
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          *(*(a1 + 56) + 8 * v8++) = a2[2] + v13;
          v13 += 4 * v12;
        }

        while (v7 != v8);
      }

      afSTFTforwardWithFrameOffset(*(a1 + 80), *(a1 + 56), 0, *(a1 + 88));
      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = 0;
        v16 = *(a1 + 184);
        do
        {
          v17 = (v16 + 40 * v15);
          if (*v17)
          {
            v18 = 0;
            v19 = 0;
            do
            {
              v20 = *(a1 + 88);
              if (v19 >= (*(a1 + 96) - v20) >> 4)
              {
                goto LABEL_22;
              }

              v21 = *(*(v20 + v18) + 4 * v15);
              LODWORD(CLiteMatrix::Get(v17, v19, v6)->isa) = v21;
              v22 = *(a1 + 88);
              if (v19 >= (*(a1 + 96) - v22) >> 4)
              {
                goto LABEL_22;
              }

              v23 = *(*(v22 + v18 + 8) + 4 * v15);
              CLiteMatrix::Get((*(a1 + 184) + 40 * v15), v19, v6);
              *v24 = v23;
              ++v19;
              v16 = *(a1 + 184);
              v17 = (v16 + 40 * v15);
              v18 += 16;
            }

            while (v19 < *v17);
            v14 = *(a1 + 8);
          }

          ++v15;
        }

        while (v15 < v14);
      }

      ++v6;
      v5 += 4;
    }

    while (*(a1 + 24) > v6);
  }

  return a1 + 184;
}

uint64_t afSTFTWrapper::getFilterbandCenterFrequencies(afSTFTWrapper *this, float a2)
{
  v2 = *(this + 2);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(this + 49);
    while (v4)
    {
      if (v3)
      {
        v6 = *(this + 26);
        if (v3 > 8)
        {
          v7 = (v3 - 4);
        }

        else
        {
          v7 = (v3 * 0.5) + 0.25;
        }

        v8 = ((v7 / (v2 - 5)) * a2) * 0.5;
        goto LABEL_11;
      }

      v5 = a2 * 0.0 * 0.5;
      **(this + 26) = v5;
LABEL_12:
      if (v2 == ++v3)
      {
        return this + 208;
      }
    }

    v8 = ((v3 / (v2 - 1)) * a2) * 0.5;
    v6 = *(this + 26);
LABEL_11:
    *(v6 + 4 * v3) = v8;
    goto LABEL_12;
  }

  return this + 208;
}

void *LiteMatrix<float>::LiteMatrix(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *a1 = a2;
  a1[1] = a3;
  std::vector<float>::resize(a1 + 2, a3 * a2);
  bzero(a1[2], a1[3] - a1[2]);
  return a1;
}

void sub_1DDCC6F24(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

os_log_t RotationUtilities::yawPitchRoll2RotationMatrixFOA(RotationUtilities *this, CLiteMatrix *a2, float a3, float a4, float a5)
{
  if (*this != 4)
  {
    __assert_rtn("yawPitchRoll2RotationMatrixFOA", "RotationUtilities.cpp", 119, "R.NumRows()==4");
  }

  if (*(this + 1) != 4)
  {
    __assert_rtn("yawPitchRoll2RotationMatrixFOA", "RotationUtilities.cpp", 120, "R.NumCols()==4");
  }

  v7 = __sincosf_stret(a3);
  v8 = __sincosf_stret(a4);
  LODWORD(CLiteMatrix::Get(this, 0, 0)->isa) = 1065353216;
  LODWORD(CLiteMatrix::Get(this, 0, 1uLL)->isa) = 0;
  LODWORD(CLiteMatrix::Get(this, 0, 2uLL)->isa) = 0;
  LODWORD(CLiteMatrix::Get(this, 0, 3uLL)->isa) = 0;
  LODWORD(CLiteMatrix::Get(this, 1uLL, 0)->isa) = 0;
  *&CLiteMatrix::Get(this, 1uLL, 1uLL)->isa = v7.__cosval + (v7.__sinval * (v8.__sinval * -0.0));
  *&CLiteMatrix::Get(this, 1uLL, 2uLL)->isa = v8.__cosval * 0.0;
  *&CLiteMatrix::Get(this, 1uLL, 3uLL)->isa = v7.__sinval + ((v7.__cosval * v8.__sinval) * 0.0);
  LODWORD(CLiteMatrix::Get(this, 2uLL, 0)->isa) = 0;
  *&CLiteMatrix::Get(this, 2uLL, 1uLL)->isa = (v7.__cosval * -0.0) - (v8.__sinval * v7.__sinval);
  *&CLiteMatrix::Get(this, 2uLL, 2uLL)->isa = v8.__cosval;
  *&CLiteMatrix::Get(this, 2uLL, 3uLL)->isa = (v7.__cosval * v8.__sinval) + (v7.__sinval * -0.0);
  LODWORD(CLiteMatrix::Get(this, 3uLL, 0)->isa) = 0;
  *&CLiteMatrix::Get(this, 3uLL, 1uLL)->isa = -(v7.__sinval * v8.__cosval);
  *&CLiteMatrix::Get(this, 3uLL, 2uLL)->isa = -v8.__sinval;
  result = CLiteMatrix::Get(this, 3uLL, 3uLL);
  *&result->isa = v7.__cosval * v8.__cosval;
  return result;
}

uint64_t AUSpatialMap::SupportedNumChannels(AUSpatialMap *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSpatialMap::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUSpatialMap::Render(AUSpatialMap *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  result = AUSpatialMap::DeviceSupportsAU(this);
  if (result)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element || (v10 = Element, (v11 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
    {
      ausdk::Throw(0xFFFFD583);
    }

    v12 = v11;
    v14 = 0;
    result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
    if (v13)
    {
      result = ausdk::AUInputElement::PullInput(result, &v14, a3, 0, a4);
    }

    if (!result)
    {
      if (!*(v10 + 144) || !*(v12 + 144))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      return (*(*this + 176))(this, a2, *(v10 + 152) + 48, *(v12 + 152) + 48, a4);
    }
  }

  return result;
}

BOOL AUSpatialMap::DeviceSupportsAU(AUSpatialMap *this)
{
  v2 = MGCopyAnswer();
  Value = CFBooleanGetValue(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (Value)
  {
    if (AUSpatialMap::DeviceScreenWidth(void)::once != -1)
    {
      dispatch_once(&AUSpatialMap::DeviceScreenWidth(void)::once, &__block_literal_global_4378);
    }

    if (AUSpatialMap::DeviceScreenWidth(void)::deviceScreenWidth)
    {
      if (AUSpatialMap::DeviceScreenHeight(void)::once != -1)
      {
        dispatch_once(&AUSpatialMap::DeviceScreenHeight(void)::once, &__block_literal_global_5);
      }

      if (AUSpatialMap::DeviceScreenHeight(void)::deviceScreenHeight)
      {
        return 1;
      }
    }
  }

  return *(this + 302) || *(this + 303);
}

void ___ZN12AUSpatialMap18DeviceScreenHeightEv_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    CFNumberGetValue(v0, kCFNumberSInt32Type, &AUSpatialMap::DeviceScreenHeight(void)::deviceScreenHeight);

    CFRelease(v1);
  }
}

void ___ZN12AUSpatialMap17DeviceScreenWidthEv_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    CFNumberGetValue(v0, kCFNumberSInt32Type, &AUSpatialMap::DeviceScreenWidth(void)::deviceScreenWidth);

    CFRelease(v1);
  }
}

uint64_t AUSpatialMap::ProcessBufferLists(AUSpatialMap *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, int a5)
{
  if (AUSpatialMap::DeviceSupportsAU(this))
  {
    mNumberBuffers = a3->mNumberBuffers;
    if (mNumberBuffers == a4->mNumberBuffers && mNumberBuffers != 0)
    {
      v11 = 0;
      p_mData = &a4->mBuffers[0].mData;
      v13 = &a3->mBuffers[0].mData;
      do
      {
        v14 = *(v13 - 1);
        if (v14 == *(p_mData - 1) && *v13 != *p_mData)
        {
          memcpy(*p_mData, *v13, v14);
          mNumberBuffers = a3->mNumberBuffers;
        }

        ++v11;
        p_mData += 2;
        v13 += 2;
      }

      while (v11 < mNumberBuffers);
    }

    if ((*(this + 1216) & 1) == 0)
    {
      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (a5)
      {
        v16 = 0;
        v17 = *(Element + 108);
        while (!v17)
        {
LABEL_20:
          if (++v16 == a5)
          {
            goto LABEL_21;
          }
        }

        v18 = 0;
        v19 = *(this + 68);
        v20 = &a3->mBuffers[0].mData;
        while (v19 != v18)
        {
          v21 = *(this + 69);
          if (v21 <= v16)
          {
            break;
          }

          v22 = *v20;
          v20 += 2;
          *(*(this + 70) + 4 * v21 * v18++ + 4 * v16) = v22[v16];
          if (v17 == v18)
          {
            goto LABEL_20;
          }
        }

LABEL_72:
        CAVerboseAbort();
LABEL_73:
        __assert_rtn("SumRows", "LiteMatrix.cpp", 255, "outputMatrix.NumRows()==1");
      }

LABEL_21:
      v23 = afSTFTWrapper::fltbAnalysisMatrix(*(this + 67), this + 68);
      v24 = (this + 584);
      if ((this + 584) != v23)
      {
        v25 = v23[1];
        v26 = v25 - *v23;
        v27 = *(this + 73);
        if (*(this + 75) - v27 < v26)
        {
          v28 = 0xCCCCCCCCCCCCCCCDLL * (v26 >> 3);
          std::vector<CLiteMatrix>::__vdeallocate(this + 73);
          if (v28 <= 0x666666666666666)
          {
            v29 = 0x999999999999999ALL * ((*(this + 75) - *(this + 73)) >> 3);
            if (v29 <= v28)
            {
              v29 = v28;
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 75) - *(this + 73)) >> 3) >= 0x333333333333333)
            {
              v30 = 0x666666666666666;
            }

            else
            {
              v30 = v29;
            }

            std::vector<CLiteMatrix>::__vallocate[abi:ne200100](this + 584, v30);
          }

          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v31 = *(this + 74) - v27;
        if (v31 >= v26)
        {
          std::__copy_impl::operator()[abi:ne200100]<CLiteMatrix *,CLiteMatrix *,CLiteMatrix *>(*v23, v25, v27);
          v34 = v33;
          v35 = *(this + 74);
          if (v35 != v33)
          {
            do
            {
              v36 = *(v35 - 24);
              if (v36)
              {
                *(v35 - 16) = v36;
                operator delete(v36);
              }

              v35 -= 40;
            }

            while (v35 != v34);
          }

          *(this + 74) = v34;
        }

        else
        {
          v32 = std::__copy_impl::operator()[abi:ne200100]<CLiteMatrix *,CLiteMatrix *,CLiteMatrix *>(*v23, *v23 + v31, v27);
          *(this + 74) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CLiteMatrix>,CLiteMatrix*,CLiteMatrix*,CLiteMatrix*>(this + 584, v32, v25, *(this + 74));
        }
      }

      if (*(this + 182) >= 1)
      {
        v37 = 0;
        v38 = (this + 608);
        while (1)
        {
          vDSP_vclr(*(this + 111), 1, (*(this + 112) - *(this + 111)) >> 2);
          v40 = *(this + 299);
          if (v40 < *(this + 298))
          {
            break;
          }

LABEL_60:
          if (*(this + 114) != 1)
          {
            goto LABEL_73;
          }

          v67 = *(this + 115);
          if (v67 != *(this + 110))
          {
            __assert_rtn("SumRows", "LiteMatrix.cpp", 256, "outputMatrix.NumCols()==inputMatrix.NumCols()");
          }

          if (!v67)
          {
            goto LABEL_72;
          }

          v68 = 0;
          v69 = 0;
          v70 = *(this + 115);
          do
          {
            v73 = 0.0;
            vDSP_sve((*(this + 111) + v68), v70, &v73, *(this + 109));
            if (*(this + 114))
            {
              v71 = *(this + 115) > v69;
            }

            else
            {
              v71 = 0;
            }

            if (!v71)
            {
              goto LABEL_72;
            }

            *(*(this + 116) + 4 * v69++) = v73;
            v70 = *(this + 110);
            v68 += 4;
          }

          while (v69 < v70);
          *(*(this + 106) + 4 * v37++) = **(this + 116);
          if (v37 >= *(this + 182))
          {
            return 0;
          }
        }

        while (1)
        {
          v41 = v24;
          v42 = *v24 + 40 * v40;
          *v38 = *v42;
          if (v38 != v42)
          {
            std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 78, *(v42 + 16), *(v42 + 24), (*(v42 + 24) - *(v42 + 16)) >> 2);
          }

          CLiteMatrix::MatrixMultiply((*(this + 119) + 40 * v37), (this + 608), (this + 688), v39);
          v43 = *(this + 87);
          if (v43)
          {
            break;
          }

LABEL_50:
          v49 = *(this + 66);
          v50 = *(v49 + 6136);
          v51 = CLiteMatrix::Get((this + 688), *(v49 + 64), 0);
          memcpy(v50, v51, 4 * *(this + 87));
          v52 = (*(v49 + 6136) + 4 * ((*(v49 + 6144) - *(v49 + 6136)) >> 3));
          CLiteMatrix::Get((this + 688), *(v49 + 64), 0);
          memcpy(v52, v53, 4 * *(this + 87));
          v54 = *(v49 + 6176);
          v55 = CLiteMatrix::Get((this + 688), *(v49 + 68), 0);
          memcpy(v54, v55, 4 * *(this + 87));
          v56 = (*(v49 + 6176) + 4 * ((*(v49 + 6184) - *(v49 + 6176)) >> 3));
          CLiteMatrix::Get((this + 688), *(v49 + 68), 0);
          memcpy(v56, v57, 4 * *(this + 87));
          CLiteMatrix::ElementwiseMultiply((v49 + 6120), (v49 + 6160), (v49 + 6200), 0xFFFFFFFFLL);
          MEMORY[0x1E12BE940](*(v49 + 6216), 1, v49 + 92, *(v49 + 6216), 1, *(this + 87));
          vDSP_vclip(*(this + 83), 1, (v49 + 200), (v49 + 204), *(this + 83), 1, *(this + 87));
          vDSP_vdiv(*(this + 83), 1, *(v49 + 6216), 1, *(v49 + 6216), 1, *(this + 87));
          vDSP_vclip(*(v49 + 6216), 1, (v49 + 84), (v49 + 88), *(this + 100), 1, *(this + 87));
          v58 = (*(this + 297) / *(this + 296));
          v24 = v41;
          if (v58 >= 1)
          {
            if (!*(this + 98))
            {
              goto LABEL_72;
            }

            v59 = 0;
            v60 = *(this + 99);
            do
            {
              if (v60 == v59)
              {
                goto LABEL_72;
              }

              v61 = *(this + 103);
              v61[v59] = (*(*(this + 100) + 4 * v59) * 1.5) * 0.25;
              ++v59;
            }

            while (v58 != v59);
            if (*(this + 109) <= v40)
            {
              goto LABEL_72;
            }

            v62 = *(this + 110);
            if (!v62)
            {
              goto LABEL_72;
            }

            v63 = v62 * v40;
            v64 = *(this + 111);
            v65 = *(v64 + 4 * v63);
            do
            {
              v66 = *v61++;
              v65 = v66 + v65;
              *(v64 + 4 * v63) = v65;
              --v58;
            }

            while (v58);
          }

          if (++v40 >= *(this + 298))
          {
            goto LABEL_60;
          }
        }

        v44 = 0;
        v45 = *(this + 86);
        v46 = *(this + 88);
        v47 = &v46[(*(this + 89) - v46) >> 3];
        while (1)
        {
          __C = 0.0;
          vDSP_svesq(v46, v43, &__C, v45);
          v74 = 0.0;
          vDSP_svesq(v47, v43, &v74, v45);
          if (!*(this + 81) || *(this + 82) <= v44)
          {
            goto LABEL_72;
          }

          *(*(this + 83) + 4 * v44++) = __C + v74;
          ++v47;
          ++v46;
          if (v43 == v44)
          {
            goto LABEL_50;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<CLiteMatrix *,CLiteMatrix *,CLiteMatrix *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      *a3 = *v4;
      if (v4 != a3)
      {
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a3 + 16), *(v4 + 16), *(v4 + 24), (*(v4 + 24) - *(v4 + 16)) >> 2);
      }

      v4 += 40;
      a3 += 40;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CLiteMatrix>,CLiteMatrix*,CLiteMatrix*,CLiteMatrix*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *v4 = *v6;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 16, *(v6 + 16), *(v6 + 24), (*(v6 + 24) - *(v6 + 16)) >> 2);
      v6 += 40;
      v4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CLiteMatrix>,CLiteMatrix*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CLiteMatrix>,CLiteMatrix*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

uint64_t AUSpatialMap::SetProperty(AUSpatialMap *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1936548727)
  {
    if (a2 == 1936548728)
    {
      result = 0;
      *(this + 302) = *a5;
    }

    else if (a2 == 1936548729)
    {
      result = 0;
      *(this + 303) = *a5;
    }
  }

  else if (a2 == 21)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 1216) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  else if (a2 == 3700)
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

  return result;
}

uint64_t AUSpatialMap::GetProperty(AUSpatialMap *this, int a2, int a3, unsigned int a4, CFArrayRef *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1886217061)
  {
    if (a2 > 1937141112)
    {
      if (a2 == 1937141113)
      {
        v9 = *(this + 145);
        v10 = *(this + 146);
      }

      else
      {
        if (a2 != 1937141869)
        {
          return result;
        }

        v9 = *(this + 106);
        v10 = *(this + 107);
      }
    }

    else
    {
      if (a2 == 1886217062)
      {
        v11 = (this + 848);
LABEL_22:
        CFArray = applesauce::CF::details::make_CFArrayRef<float>(v11);
        result = 0;
        *__dst = CFArray;
        return result;
      }

      if (a2 != 1937141112)
      {
        return result;
      }

      v9 = *(this + 142);
      v10 = *(this + 143);
    }

    memcpy(__dst, v9, v10 - v9);
    return 0;
  }

  if (a2 > 1836606309)
  {
    if (a2 == 1836606310)
    {
      v11 = (this + 1136);
    }

    else
    {
      if (a2 != 1836671846)
      {
        return result;
      }

      v11 = (this + 1160);
    }

    goto LABEL_22;
  }

  if (a2 == 21)
  {
    result = 0;
    v8 = *(this + 1216);
  }

  else
  {
    if (a2 != 3700)
    {
      return result;
    }

    result = 0;
    v8 = *(this + 376);
  }

  *__dst = v8;
  return result;
}

uint64_t AUSpatialMap::GetPropertyInfo(AUSpatialMap *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1936548727)
  {
    if (a2 > 1937141111)
    {
      switch(a2)
      {
        case 1937141112:
          v8 = 0;
          v10 = *(this + 286);
          v11 = *(this + 284);
          break;
        case 1937141113:
          v8 = 0;
          v10 = *(this + 292);
          v11 = *(this + 290);
          break;
        case 1937141869:
          v8 = 0;
          v10 = *(this + 214);
          v11 = *(this + 212);
          break;
        default:
          return result;
      }

      v9 = (v10 - v11) & 0xFFFFFFFC;
      goto LABEL_23;
    }

    if (a2 != 1936548728 && a2 != 1936548729)
    {
      return result;
    }

LABEL_19:
    v8 = 1;
    v9 = 4;
    goto LABEL_23;
  }

  if (a2 > 1836606309)
  {
    v8 = 0;
    v9 = 8;
    if (a2 != 1836606310 && a2 != 1836671846 && a2 != 1886217062)
    {
      return result;
    }

LABEL_23:
    result = 0;
    *a5 = v9;
    *a6 = v8;
    return result;
  }

  if (a2 == 21 || a2 == 3700)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t AUSpatialMap::Initialize(AUSpatialMap *this)
{
  v30 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = *(Element + 96), v18 = *(Element + 80), *v19 = v3, *&v19[16] = *(Element + 112), (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(v4 + 96);
  *&v17.mSampleRate = *(v4 + 80);
  *&v17.mBytesPerPacket = v6;
  *&v17.mBitsPerChannel = *(v4 + 112);
  if (*&v18 != v17.mSampleRate || DWORD2(v18) != v17.mFormatID || *v19 != *&v17.mBytesPerPacket || (v7 = *&v19[12], *&v19[12] != *&v17.mChannelsPerFrame) || !CA::Implementation::EquivalentFormatFlags(&v18, &v17, v5))
  {
    if (AUSpatialMapLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialMapLogScope(void)::once, &__block_literal_global_20);
    }

    if (AUSpatialMapLogScope(void)::scope)
    {
      v10 = *AUSpatialMapLogScope(void)::scope;
      if (!*AUSpatialMapLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v21 = "AUSpatialMap.cpp";
      v22 = 1024;
      v23 = 69;
      v11 = "%25s:%-5d Can't handle different in/out formats\n";
LABEL_23:
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, v11, buf, 0x12u);
    }

    return 4294956428;
  }

  if (v7 != 4)
  {
    if (AUSpatialMapLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialMapLogScope(void)::once, &__block_literal_global_20);
    }

    if (AUSpatialMapLogScope(void)::scope)
    {
      v10 = *AUSpatialMapLogScope(void)::scope;
      if (!*AUSpatialMapLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v21 = "AUSpatialMap.cpp";
      v22 = 1024;
      v23 = 75;
      v11 = "%25s:%-5d Can't handle more than 4 input channels\n";
      goto LABEL_23;
    }

    return 4294956428;
  }

  result = AUSpatialMap::DeviceSupportsAU(this);
  if (result)
  {
    if (AUSpatialMapLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialMapLogScope(void)::once, &__block_literal_global_20);
    }

    if (AUSpatialMapLogScope(void)::scope)
    {
      v9 = *AUSpatialMapLogScope(void)::scope;
      if (!*AUSpatialMapLogScope(void)::scope)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      if (AUSpatialMap::DeviceScreenWidth(void)::once != -1)
      {
        dispatch_once(&AUSpatialMap::DeviceScreenWidth(void)::once, &__block_literal_global_4378);
      }

      v12 = AUSpatialMap::DeviceScreenWidth(void)::deviceScreenWidth;
      if (AUSpatialMap::DeviceScreenHeight(void)::once != -1)
      {
        v15 = AUSpatialMap::DeviceScreenWidth(void)::deviceScreenWidth;
        dispatch_once(&AUSpatialMap::DeviceScreenHeight(void)::once, &__block_literal_global_5);
        v12 = v15;
      }

      v13 = AUSpatialMap::DeviceScreenHeight(void)::deviceScreenHeight;
      if (AUSpatialMap::DeviceScreenScale(void)::once != -1)
      {
        v14 = AUSpatialMap::DeviceScreenHeight(void)::deviceScreenHeight;
        v16 = v12;
        dispatch_once(&AUSpatialMap::DeviceScreenScale(void)::once, &__block_literal_global_11);
        v13 = v14;
        v12 = v16;
      }

      *buf = 136316162;
      v21 = "AUSpatialMap.cpp";
      v22 = 1024;
      v23 = 84;
      v24 = 1024;
      v25 = v12;
      v26 = 1024;
      v27 = v13;
      v28 = 2048;
      v29 = *&AUSpatialMap::DeviceScreenScale(void)::deviceScreenScale;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device supports AU. { screenWidth=%d, screenHeight=%d, screenScale=%f }", buf, 0x28u);
    }

LABEL_44:
    AUSpatialMap::Setup(this);
  }

  return result;
}

void AUSpatialMap::Setup(AUSpatialMap *this)
{
  if (ausdk::AUScope::GetElement((this + 80), 0))
  {
    operator new();
  }

  ausdk::Throw(0xFFFFD583);
}

void sub_1DDCC8ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1E12BD160](v7, 0x10F0C40B86C2DE7);
  ParametricProcessor::pars::~pars(va);
  v10 = *(v8 - 200);
  if (v10)
  {
    *(v8 - 192) = v10;
    operator delete(v10);
  }

  v11 = *(v8 - 176);
  if (v11)
  {
    *(v8 - 168) = v11;
    operator delete(v11);
  }

  v12 = *(v8 - 144);
  if (v12)
  {
    *(v8 - 136) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDCC90C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<ParametricProcessor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 8544);
    if (v3)
    {
      *(v2 + 8552) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 8536);
    *(v2 + 8536) = 0;
    if (v4)
    {
      v5 = v4[10];
      if (v5)
      {
        v4[11] = v5;
        operator delete(v5);
      }

      v6 = v4[7];
      if (v6)
      {
        v4[8] = v6;
        operator delete(v6);
      }

      v7 = v4[4];
      if (v7)
      {
        v4[5] = v7;
        operator delete(v7);
      }

      v8 = v4[1];
      if (v8)
      {
        v4[2] = v8;
        operator delete(v8);
      }

      MEMORY[0x1E12BD160](v4, 0x1090C402783A965);
    }

    v9 = *(v2 + 8512);
    if (v9)
    {
      *(v2 + 8520) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 8488);
    if (v10)
    {
      *(v2 + 8496) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 8448);
    if (v11)
    {
      *(v2 + 8456) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 8408);
    if (v12)
    {
      *(v2 + 8416) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 8368);
    if (v13)
    {
      *(v2 + 8376) = v13;
      operator delete(v13);
    }

    v122 = (v2 + 8328);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v122 = (v2 + 8304);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v122 = (v2 + 8280);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v122 = (v2 + 8256);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v14 = *(v2 + 8232);
    if (v14)
    {
      *(v2 + 8240) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 0x2000);
    if (v15)
    {
      *(v2 + 8200) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 8152);
    if (v16)
    {
      *(v2 + 8160) = v16;
      operator delete(v16);
    }

    v17 = *(v2 + 8112);
    if (v17)
    {
      *(v2 + 8120) = v17;
      operator delete(v17);
    }

    v18 = *(v2 + 8072);
    if (v18)
    {
      *(v2 + 8080) = v18;
      operator delete(v18);
    }

    v19 = *(v2 + 8032);
    if (v19)
    {
      *(v2 + 8040) = v19;
      operator delete(v19);
    }

    v20 = *(v2 + 7992);
    if (v20)
    {
      *(v2 + 8000) = v20;
      operator delete(v20);
    }

    v21 = *(v2 + 7952);
    if (v21)
    {
      *(v2 + 7960) = v21;
      operator delete(v21);
    }

    v22 = *(v2 + 7912);
    if (v22)
    {
      *(v2 + 7920) = v22;
      operator delete(v22);
    }

    v23 = *(v2 + 7872);
    if (v23)
    {
      *(v2 + 7880) = v23;
      operator delete(v23);
    }

    v24 = *(v2 + 7832);
    if (v24)
    {
      *(v2 + 7840) = v24;
      operator delete(v24);
    }

    v25 = *(v2 + 7792);
    if (v25)
    {
      *(v2 + 7800) = v25;
      operator delete(v25);
    }

    v26 = *(v2 + 7752);
    if (v26)
    {
      *(v2 + 7760) = v26;
      operator delete(v26);
    }

    v27 = *(v2 + 7712);
    if (v27)
    {
      *(v2 + 7720) = v27;
      operator delete(v27);
    }

    v28 = *(v2 + 7672);
    if (v28)
    {
      *(v2 + 7680) = v28;
      operator delete(v28);
    }

    v29 = *(v2 + 7632);
    if (v29)
    {
      *(v2 + 7640) = v29;
      operator delete(v29);
    }

    v30 = *(v2 + 7592);
    if (v30)
    {
      *(v2 + 7600) = v30;
      operator delete(v30);
    }

    v31 = *(v2 + 7552);
    if (v31)
    {
      *(v2 + 7560) = v31;
      operator delete(v31);
    }

    v32 = *(v2 + 7512);
    if (v32)
    {
      *(v2 + 7520) = v32;
      operator delete(v32);
    }

    v122 = (v2 + 7472);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v33 = *(v2 + 7448);
    if (v33)
    {
      *(v2 + 7456) = v33;
      operator delete(v33);
    }

    v34 = *(v2 + 7408);
    if (v34)
    {
      *(v2 + 7416) = v34;
      operator delete(v34);
    }

    v35 = *(v2 + 7368);
    if (v35)
    {
      *(v2 + 7376) = v35;
      operator delete(v35);
    }

    v36 = *(v2 + 7328);
    if (v36)
    {
      *(v2 + 7336) = v36;
      operator delete(v36);
    }

    v37 = *(v2 + 7288);
    if (v37)
    {
      *(v2 + 7296) = v37;
      operator delete(v37);
    }

    v38 = *(v2 + 7248);
    if (v38)
    {
      *(v2 + 7256) = v38;
      operator delete(v38);
    }

    v39 = *(v2 + 7208);
    if (v39)
    {
      *(v2 + 7216) = v39;
      operator delete(v39);
    }

    v40 = *(v2 + 7168);
    if (v40)
    {
      *(v2 + 7176) = v40;
      operator delete(v40);
    }

    v41 = *(v2 + 7128);
    if (v41)
    {
      *(v2 + 7136) = v41;
      operator delete(v41);
    }

    v42 = *(v2 + 7088);
    if (v42)
    {
      *(v2 + 7096) = v42;
      operator delete(v42);
    }

    v43 = *(v2 + 7048);
    if (v43)
    {
      *(v2 + 7056) = v43;
      operator delete(v43);
    }

    v44 = *(v2 + 7008);
    if (v44)
    {
      *(v2 + 7016) = v44;
      operator delete(v44);
    }

    v45 = *(v2 + 6968);
    if (v45)
    {
      *(v2 + 6976) = v45;
      operator delete(v45);
    }

    v46 = *(v2 + 6928);
    if (v46)
    {
      *(v2 + 6936) = v46;
      operator delete(v46);
    }

    v122 = (v2 + 6904);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v47 = *(v2 + 6880);
    if (v47)
    {
      *(v2 + 6888) = v47;
      operator delete(v47);
    }

    v122 = (v2 + 6840);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v122 = (v2 + 6816);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v122 = (v2 + 6792);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v122 = (v2 + 6768);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v48 = *(v2 + 6744);
    if (v48)
    {
      *(v2 + 6752) = v48;
      operator delete(v48);
    }

    v49 = *(v2 + 6704);
    if (v49)
    {
      *(v2 + 6712) = v49;
      operator delete(v49);
    }

    v122 = (v2 + 6664);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v122 = (v2 + 6640);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v122 = (v2 + 6616);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v122 = (v2 + 6592);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v50 = *(v2 + 6568);
    if (v50)
    {
      *(v2 + 6576) = v50;
      operator delete(v50);
    }

    v122 = (v2 + 6528);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v51 = *(v2 + 6504);
    if (v51)
    {
      *(v2 + 6512) = v51;
      operator delete(v51);
    }

    v122 = (v2 + 6464);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v52 = *(v2 + 6440);
    if (v52)
    {
      *(v2 + 6448) = v52;
      operator delete(v52);
    }

    v53 = *(v2 + 6400);
    if (v53)
    {
      *(v2 + 6408) = v53;
      operator delete(v53);
    }

    v54 = *(v2 + 6360);
    if (v54)
    {
      *(v2 + 6368) = v54;
      operator delete(v54);
    }

    v55 = *(v2 + 6320);
    if (v55)
    {
      *(v2 + 6328) = v55;
      operator delete(v55);
    }

    v56 = *(v2 + 6296);
    if (v56)
    {
      *(v2 + 6304) = v56;
      operator delete(v56);
    }

    v57 = *(v2 + 6256);
    if (v57)
    {
      *(v2 + 6264) = v57;
      operator delete(v57);
    }

    v58 = *(v2 + 6216);
    if (v58)
    {
      *(v2 + 6224) = v58;
      operator delete(v58);
    }

    v59 = *(v2 + 6176);
    if (v59)
    {
      *(v2 + 6184) = v59;
      operator delete(v59);
    }

    v60 = *(v2 + 6136);
    if (v60)
    {
      *(v2 + 6144) = v60;
      operator delete(v60);
    }

    v61 = *(v2 + 6096);
    if (v61)
    {
      *(v2 + 6104) = v61;
      operator delete(v61);
    }

    v62 = *(v2 + 6056);
    if (v62)
    {
      *(v2 + 6064) = v62;
      operator delete(v62);
    }

    v63 = *(v2 + 6016);
    if (v63)
    {
      *(v2 + 6024) = v63;
      operator delete(v63);
    }

    v64 = *(v2 + 5976);
    if (v64)
    {
      *(v2 + 5984) = v64;
      operator delete(v64);
    }

    v65 = *(v2 + 5936);
    if (v65)
    {
      *(v2 + 5944) = v65;
      operator delete(v65);
    }

    v66 = *(v2 + 5896);
    if (v66)
    {
      *(v2 + 5904) = v66;
      operator delete(v66);
    }

    v67 = *(v2 + 5856);
    if (v67)
    {
      *(v2 + 5864) = v67;
      operator delete(v67);
    }

    v68 = *(v2 + 5816);
    if (v68)
    {
      *(v2 + 5824) = v68;
      operator delete(v68);
    }

    v69 = *(v2 + 5776);
    if (v69)
    {
      *(v2 + 5784) = v69;
      operator delete(v69);
    }

    v70 = *(v2 + 5736);
    if (v70)
    {
      *(v2 + 5744) = v70;
      operator delete(v70);
    }

    v122 = (v2 + 5696);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v122);
    v71 = *(v2 + 5672);
    if (v71)
    {
      *(v2 + 5680) = v71;
      operator delete(v71);
    }

    v72 = *(v2 + 5632);
    if (v72)
    {
      *(v2 + 5640) = v72;
      operator delete(v72);
    }

    v73 = *(v2 + 5592);
    if (v73)
    {
      *(v2 + 5600) = v73;
      operator delete(v73);
    }

    v74 = *(v2 + 5552);
    if (v74)
    {
      *(v2 + 5560) = v74;
      operator delete(v74);
    }

    v75 = *(v2 + 5512);
    if (v75)
    {
      *(v2 + 5520) = v75;
      operator delete(v75);
    }

    v76 = *(v2 + 5472);
    if (v76)
    {
      *(v2 + 5480) = v76;
      operator delete(v76);
    }

    v77 = *(v2 + 5432);
    if (v77)
    {
      *(v2 + 5440) = v77;
      operator delete(v77);
    }

    v78 = *(v2 + 5392);
    if (v78)
    {
      *(v2 + 5400) = v78;
      operator delete(v78);
    }

    v79 = *(v2 + 5352);
    if (v79)
    {
      *(v2 + 5360) = v79;
      operator delete(v79);
    }

    v122 = (v2 + 5312);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v122);
    v80 = *(v2 + 5280);
    if (v80)
    {
      *(v2 + 5288) = v80;
      operator delete(v80);
    }

    v81 = *(v2 + 5248);
    if (v81)
    {
      *(v2 + 5256) = v81;
      operator delete(v81);
    }

    v82 = *(v2 + 5224);
    if (v82)
    {
      *(v2 + 5232) = v82;
      operator delete(v82);
    }

    v83 = *(v2 + 5200);
    if (v83)
    {
      *(v2 + 5208) = v83;
      operator delete(v83);
    }

    v84 = *(v2 + 5176);
    if (v84)
    {
      *(v2 + 5184) = v84;
      operator delete(v84);
    }

    v85 = *(v2 + 5136);
    if (v85)
    {
      *(v2 + 5144) = v85;
      operator delete(v85);
    }

    v86 = *(v2 + 5096);
    if (v86)
    {
      *(v2 + 5104) = v86;
      operator delete(v86);
    }

    v87 = *(v2 + 5056);
    if (v87)
    {
      *(v2 + 5064) = v87;
      operator delete(v87);
    }

    v88 = *(v2 + 5016);
    if (v88)
    {
      *(v2 + 5024) = v88;
      operator delete(v88);
    }

    v89 = *(v2 + 4992);
    if (v89)
    {
      *(v2 + 5000) = v89;
      operator delete(v89);
    }

    v90 = *(v2 + 4968);
    if (v90)
    {
      *(v2 + 4976) = v90;
      operator delete(v90);
    }

    v91 = *(v2 + 4944);
    if (v91)
    {
      *(v2 + 4952) = v91;
      operator delete(v91);
    }

    v92 = *(v2 + 4904);
    if (v92)
    {
      *(v2 + 4912) = v92;
      operator delete(v92);
    }

    v93 = *(v2 + 4864);
    if (v93)
    {
      *(v2 + 4872) = v93;
      operator delete(v93);
    }

    v94 = *(v2 + 4824);
    if (v94)
    {
      *(v2 + 4832) = v94;
      operator delete(v94);
    }

    v95 = *(v2 + 4784);
    if (v95)
    {
      *(v2 + 4792) = v95;
      operator delete(v95);
    }

    v96 = *(v2 + 4744);
    if (v96)
    {
      *(v2 + 4752) = v96;
      operator delete(v96);
    }

    v97 = *(v2 + 4720);
    if (v97)
    {
      *(v2 + 4728) = v97;
      operator delete(v97);
    }

    v98 = *(v2 + 4696);
    if (v98)
    {
      *(v2 + 4704) = v98;
      operator delete(v98);
    }

    v99 = *(v2 + 4672);
    if (v99)
    {
      *(v2 + 4680) = v99;
      operator delete(v99);
    }

    v100 = *(v2 + 4648);
    if (v100)
    {
      *(v2 + 4656) = v100;
      operator delete(v100);
    }

    v101 = *(v2 + 4624);
    if (v101)
    {
      *(v2 + 4632) = v101;
      operator delete(v101);
    }

    v102 = *(v2 + 4584);
    if (v102)
    {
      *(v2 + 4592) = v102;
      operator delete(v102);
    }

    v103 = *(v2 + 4544);
    if (v103)
    {
      *(v2 + 4552) = v103;
      operator delete(v103);
    }

    v104 = *(v2 + 4504);
    if (v104)
    {
      *(v2 + 4512) = v104;
      operator delete(v104);
    }

    v105 = *(v2 + 4464);
    if (v105)
    {
      *(v2 + 4472) = v105;
      operator delete(v105);
    }

    v106 = *(v2 + 4424);
    if (v106)
    {
      *(v2 + 4432) = v106;
      operator delete(v106);
    }

    v107 = *(v2 + 4400);
    if (v107)
    {
      *(v2 + 4408) = v107;
      operator delete(v107);
    }

    ParametricProcessor::parsData::~parsData((v2 + 3008));
    v108 = *(v2 + 2984);
    if (v108)
    {
      *(v2 + 2992) = v108;
      operator delete(v108);
    }

    v109 = *(v2 + 2944);
    if (v109)
    {
      *(v2 + 2952) = v109;
      operator delete(v109);
    }

    v110 = *(v2 + 2904);
    if (v110)
    {
      *(v2 + 2912) = v110;
      operator delete(v110);
    }

    v111 = *(v2 + 2864);
    if (v111)
    {
      *(v2 + 2872) = v111;
      operator delete(v111);
    }

    MatrixDecompositions::~MatrixDecompositions((v2 + 2488));
    covarianceBasedAdaptiveFilter::~covarianceBasedAdaptiveFilter((v2 + 456));
    std::unique_ptr<VBAP>::~unique_ptr[abi:ne200100]((v2 + 448));
    std::unique_ptr<VBAP>::~unique_ptr[abi:ne200100]((v2 + 440));
    v112 = *(v2 + 432);
    *(v2 + 432) = 0;
    if (v112)
    {
      (*(*v112 + 8))(v112);
    }

    std::unique_ptr<HOA>::~unique_ptr[abi:ne200100]((v2 + 424));
    v113 = *(v2 + 416);
    *(v2 + 416) = 0;
    if (v113)
    {
      v114 = *(v113 + 24);
      if (v114)
      {
        *(v113 + 32) = v114;
        operator delete(v114);
      }

      v115 = *v113;
      if (*v113)
      {
        *(v113 + 8) = v115;
        operator delete(v115);
      }

      MEMORY[0x1E12BD160](v113, 0x10A0C40B42DDE52);
    }

    std::unique_ptr<HOA>::~unique_ptr[abi:ne200100]((v2 + 408));
    std::unique_ptr<HOA>::~unique_ptr[abi:ne200100]((v2 + 400));
    v116 = *(v2 + 360);
    if (v116)
    {
      *(v2 + 368) = v116;
      operator delete(v116);
    }

    v122 = (v2 + 320);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v122);
    v117 = *(v2 + 296);
    if (v117)
    {
      *(v2 + 304) = v117;
      operator delete(v117);
    }

    v122 = (v2 + 272);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v122);
    v118 = *(v2 + 248);
    if (v118)
    {
      *(v2 + 256) = v118;
      operator delete(v118);
    }

    v119 = *(v2 + 224);
    if (v119)
    {
      *(v2 + 232) = v119;
      operator delete(v119);
    }

    v120 = *(v2 + 152);
    if (v120)
    {
      CFRelease(v120);
    }

    v121 = *(v2 + 144);
    if (v121)
    {
      CFRelease(v121);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void ParametricProcessor::pars::~pars(ParametricProcessor::pars *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
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
}

void ParametricProcessor::parsData::~parsData(ParametricProcessor::parsData *this)
{
  v2 = *(this + 169);
  if (v2)
  {
    *(this + 170) = v2;
    operator delete(v2);
  }

  v3 = *(this + 166);
  if (v3)
  {
    *(this + 167) = v3;
    operator delete(v3);
  }

  v4 = *(this + 163);
  if (v4)
  {
    *(this + 164) = v4;
    operator delete(v4);
  }

  v5 = *(this + 160);
  if (v5)
  {
    *(this + 161) = v5;
    operator delete(v5);
  }

  v6 = *(this + 155);
  if (v6)
  {
    *(this + 156) = v6;
    operator delete(v6);
  }

  v7 = *(this + 149);
  if (v7)
  {
    *(this + 150) = v7;
    operator delete(v7);
  }

  v8 = *(this + 144);
  if (v8)
  {
    *(this + 145) = v8;
    operator delete(v8);
  }

  v9 = *(this + 141);
  if (v9)
  {
    *(this + 142) = v9;
    operator delete(v9);
  }

  v10 = *(this + 138);
  if (v10)
  {
    *(this + 139) = v10;
    operator delete(v10);
  }

  v11 = *(this + 135);
  if (v11)
  {
    *(this + 136) = v11;
    operator delete(v11);
  }

  v12 = *(this + 130);
  if (v12)
  {
    *(this + 131) = v12;
    operator delete(v12);
  }

  v13 = *(this + 125);
  if (v13)
  {
    *(this + 126) = v13;
    operator delete(v13);
  }

  v14 = *(this + 120);
  if (v14)
  {
    *(this + 121) = v14;
    operator delete(v14);
  }

  v42 = (this + 936);
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v42);
  v42 = (this + 912);
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v42);
  v42 = (this + 888);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v42);
  v42 = (this + 864);
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v42);
  v42 = (this + 840);
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v42);
  v15 = *(this + 102);
  if (v15)
  {
    *(this + 103) = v15;
    operator delete(v15);
  }

  v16 = *(this + 98);
  if (v16)
  {
    *(this + 99) = v16;
    operator delete(v16);
  }

  v17 = *(this + 95);
  if (v17)
  {
    *(this + 96) = v17;
    operator delete(v17);
  }

  v18 = *(this + 92);
  if (v18)
  {
    *(this + 93) = v18;
    operator delete(v18);
  }

  v19 = *(this + 89);
  if (v19)
  {
    *(this + 90) = v19;
    operator delete(v19);
  }

  v20 = *(this + 85);
  if (v20)
  {
    *(this + 86) = v20;
    operator delete(v20);
  }

  v21 = *(this + 82);
  if (v21)
  {
    *(this + 83) = v21;
    operator delete(v21);
  }

  v22 = *(this + 79);
  if (v22)
  {
    *(this + 80) = v22;
    operator delete(v22);
  }

  v23 = *(this + 76);
  if (v23)
  {
    *(this + 77) = v23;
    operator delete(v23);
  }

  v24 = *(this + 71);
  if (v24)
  {
    *(this + 72) = v24;
    operator delete(v24);
  }

  v25 = *(this + 66);
  if (v25)
  {
    *(this + 67) = v25;
    operator delete(v25);
  }

  v26 = *(this + 61);
  if (v26)
  {
    *(this + 62) = v26;
    operator delete(v26);
  }

  v27 = *(this + 56);
  if (v27)
  {
    *(this + 57) = v27;
    operator delete(v27);
  }

  v28 = *(this + 51);
  if (v28)
  {
    *(this + 52) = v28;
    operator delete(v28);
  }

  v29 = *(this + 48);
  if (v29)
  {
    *(this + 49) = v29;
    operator delete(v29);
  }

  v42 = (this + 360);
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v42);
  v42 = (this + 336);
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v42);
  v30 = *(this + 38);
  if (v30)
  {
    *(this + 39) = v30;
    operator delete(v30);
  }

  v31 = *(this + 35);
  if (v31)
  {
    *(this + 36) = v31;
    operator delete(v31);
  }

  v32 = *(this + 32);
  if (v32)
  {
    *(this + 33) = v32;
    operator delete(v32);
  }

  v33 = *(this + 29);
  if (v33)
  {
    *(this + 30) = v33;
    operator delete(v33);
  }

  v34 = *(this + 26);
  if (v34)
  {
    *(this + 27) = v34;
    operator delete(v34);
  }

  v35 = *(this + 22);
  if (v35)
  {
    *(this + 23) = v35;
    operator delete(v35);
  }

  v36 = *(this + 19);
  if (v36)
  {
    *(this + 20) = v36;
    operator delete(v36);
  }

  v37 = *(this + 16);
  if (v37)
  {
    *(this + 17) = v37;
    operator delete(v37);
  }

  v38 = *(this + 13);
  if (v38)
  {
    *(this + 14) = v38;
    operator delete(v38);
  }

  v39 = *(this + 10);
  if (v39)
  {
    *(this + 11) = v39;
    operator delete(v39);
  }

  v40 = *(this + 7);
  if (v40)
  {
    *(this + 8) = v40;
    operator delete(v40);
  }

  v41 = *(this + 2);
  if (v41)
  {
    *(this + 3) = v41;
    operator delete(v41);
  }
}

void MatrixDecompositions::~MatrixDecompositions(MatrixDecompositions *this)
{
  v2 = *(this + 42);
  if (v2)
  {
    *(this + 43) = v2;
    operator delete(v2);
  }

  v3 = *(this + 39);
  if (v3)
  {
    *(this + 40) = v3;
    operator delete(v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    *(this + 37) = v4;
    operator delete(v4);
  }

  v5 = *(this + 33);
  if (v5)
  {
    *(this + 34) = v5;
    operator delete(v5);
  }

  v6 = *(this + 30);
  if (v6)
  {
    *(this + 31) = v6;
    operator delete(v6);
  }

  v7 = *(this + 27);
  if (v7)
  {
    *(this + 28) = v7;
    operator delete(v7);
  }

  v8 = *(this + 24);
  if (v8)
  {
    *(this + 25) = v8;
    operator delete(v8);
  }

  v9 = *(this + 21);
  if (v9)
  {
    *(this + 22) = v9;
    operator delete(v9);
  }

  v10 = *(this + 18);
  if (v10)
  {
    *(this + 19) = v10;
    operator delete(v10);
  }

  v11 = *(this + 15);
  if (v11)
  {
    *(this + 16) = v11;
    operator delete(v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    *(this + 13) = v12;
    operator delete(v12);
  }

  v13 = *(this + 9);
  if (v13)
  {
    *(this + 10) = v13;
    operator delete(v13);
  }

  v14 = *(this + 6);
  if (v14)
  {
    *(this + 7) = v14;
    operator delete(v14);
  }

  v15 = *(this + 3);
  if (v15)
  {
    *(this + 4) = v15;
    operator delete(v15);
  }

  v16 = *this;
  if (*this)
  {
    *(this + 1) = v16;
    operator delete(v16);
  }
}

void covarianceBasedAdaptiveFilter::~covarianceBasedAdaptiveFilter(covarianceBasedAdaptiveFilter *this)
{
  MatrixDecompositions::~MatrixDecompositions((this + 1672));
  v2 = *(this + 206);
  if (v2)
  {
    *(this + 207) = v2;
    operator delete(v2);
  }

  v3 = *(this + 203);
  if (v3)
  {
    *(this + 204) = v3;
    operator delete(v3);
  }

  v4 = *(this + 200);
  if (v4)
  {
    *(this + 201) = v4;
    operator delete(v4);
  }

  v5 = *(this + 197);
  if (v5)
  {
    *(this + 198) = v5;
    operator delete(v5);
  }

  v6 = *(this + 192);
  if (v6)
  {
    *(this + 193) = v6;
    operator delete(v6);
  }

  v7 = *(this + 187);
  if (v7)
  {
    *(this + 188) = v7;
    operator delete(v7);
  }

  v8 = *(this + 182);
  if (v8)
  {
    *(this + 183) = v8;
    operator delete(v8);
  }

  v9 = *(this + 177);
  if (v9)
  {
    *(this + 178) = v9;
    operator delete(v9);
  }

  v10 = *(this + 172);
  if (v10)
  {
    *(this + 173) = v10;
    operator delete(v10);
  }

  v11 = *(this + 167);
  if (v11)
  {
    *(this + 168) = v11;
    operator delete(v11);
  }

  v12 = *(this + 162);
  if (v12)
  {
    *(this + 163) = v12;
    operator delete(v12);
  }

  v13 = *(this + 157);
  if (v13)
  {
    *(this + 158) = v13;
    operator delete(v13);
  }

  v14 = *(this + 152);
  if (v14)
  {
    *(this + 153) = v14;
    operator delete(v14);
  }

  v15 = *(this + 147);
  if (v15)
  {
    *(this + 148) = v15;
    operator delete(v15);
  }

  v16 = *(this + 142);
  if (v16)
  {
    *(this + 143) = v16;
    operator delete(v16);
  }

  v17 = *(this + 137);
  if (v17)
  {
    *(this + 138) = v17;
    operator delete(v17);
  }

  v18 = *(this + 132);
  if (v18)
  {
    *(this + 133) = v18;
    operator delete(v18);
  }

  v19 = *(this + 127);
  if (v19)
  {
    *(this + 128) = v19;
    operator delete(v19);
  }

  v20 = *(this + 122);
  if (v20)
  {
    *(this + 123) = v20;
    operator delete(v20);
  }

  v21 = *(this + 117);
  if (v21)
  {
    *(this + 118) = v21;
    operator delete(v21);
  }

  v22 = *(this + 112);
  if (v22)
  {
    *(this + 113) = v22;
    operator delete(v22);
  }

  v23 = *(this + 107);
  if (v23)
  {
    *(this + 108) = v23;
    operator delete(v23);
  }

  v24 = *(this + 102);
  if (v24)
  {
    *(this + 103) = v24;
    operator delete(v24);
  }

  v25 = *(this + 97);
  if (v25)
  {
    *(this + 98) = v25;
    operator delete(v25);
  }

  v26 = *(this + 92);
  if (v26)
  {
    *(this + 93) = v26;
    operator delete(v26);
  }

  v27 = *(this + 89);
  if (v27)
  {
    *(this + 90) = v27;
    operator delete(v27);
  }

  v28 = *(this + 86);
  if (v28)
  {
    *(this + 87) = v28;
    operator delete(v28);
  }

  v29 = *(this + 81);
  if (v29)
  {
    *(this + 82) = v29;
    operator delete(v29);
  }

  v30 = *(this + 78);
  if (v30)
  {
    *(this + 79) = v30;
    operator delete(v30);
  }

  v31 = *(this + 73);
  if (v31)
  {
    *(this + 74) = v31;
    operator delete(v31);
  }

  v32 = *(this + 70);
  if (v32)
  {
    *(this + 71) = v32;
    operator delete(v32);
  }

  v33 = *(this + 65);
  if (v33)
  {
    *(this + 66) = v33;
    operator delete(v33);
  }

  v34 = *(this + 60);
  if (v34)
  {
    *(this + 61) = v34;
    operator delete(v34);
  }

  v35 = *(this + 55);
  if (v35)
  {
    *(this + 56) = v35;
    operator delete(v35);
  }

  v36 = *(this + 50);
  if (v36)
  {
    *(this + 51) = v36;
    operator delete(v36);
  }

  v37 = *(this + 45);
  if (v37)
  {
    *(this + 46) = v37;
    operator delete(v37);
  }

  v38 = *(this + 40);
  if (v38)
  {
    *(this + 41) = v38;
    operator delete(v38);
  }

  v39 = *(this + 35);
  if (v39)
  {
    *(this + 36) = v39;
    operator delete(v39);
  }

  v40 = *(this + 30);
  if (v40)
  {
    *(this + 31) = v40;
    operator delete(v40);
  }

  v41 = *(this + 25);
  if (v41)
  {
    *(this + 26) = v41;
    operator delete(v41);
  }

  v42 = *(this + 20);
  if (v42)
  {
    *(this + 21) = v42;
    operator delete(v42);
  }

  v43 = *(this + 15);
  if (v43)
  {
    *(this + 16) = v43;
    operator delete(v43);
  }

  v44 = *(this + 10);
  if (v44)
  {
    *(this + 11) = v44;
    operator delete(v44);
  }

  v45 = *(this + 7);
  if (v45)
  {
    *(this + 8) = v45;
    operator delete(v45);
  }

  v46 = *(this + 2);
  if (v46)
  {
    *(this + 3) = v46;
    operator delete(v46);
  }
}

VBAP **std::unique_ptr<VBAP>::~unique_ptr[abi:ne200100](VBAP **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    VBAP::~VBAP(v2);
    MEMORY[0x1E12BD160]();
  }

  return a1;
}

HOA **std::unique_ptr<HOA>::~unique_ptr[abi:ne200100](HOA **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    HOA::~HOA(v2);
    MEMORY[0x1E12BD160]();
  }

  return a1;
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<int>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void ___ZN12AUSpatialMap17DeviceScreenScaleEv_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    CFNumberGetValue(v0, kCFNumberFloat32Type, &AUSpatialMap::DeviceScreenScale(void)::deviceScreenScale);

    CFRelease(v1);
  }
}

void AUSpatialMap::~AUSpatialMap(AUSpatialMap *this)
{
  AUSpatialMap::~AUSpatialMap(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591FC48;
  v2 = *(this + 145);
  if (v2)
  {
    *(this + 146) = v2;
    operator delete(v2);
  }

  v3 = *(this + 142);
  if (v3)
  {
    *(this + 143) = v3;
    operator delete(v3);
  }

  v4 = *(this + 139);
  if (v4)
  {
    *(this + 140) = v4;
    operator delete(v4);
  }

  v5 = *(this + 134);
  if (v5)
  {
    *(this + 135) = v5;
    operator delete(v5);
  }

  v6 = *(this + 129);
  if (v6)
  {
    *(this + 130) = v6;
    operator delete(v6);
  }

  v7 = *(this + 124);
  if (v7)
  {
    *(this + 125) = v7;
    operator delete(v7);
  }

  v20 = (this + 952);
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v20);
  v8 = *(this + 116);
  if (v8)
  {
    *(this + 117) = v8;
    operator delete(v8);
  }

  v9 = *(this + 111);
  if (v9)
  {
    *(this + 112) = v9;
    operator delete(v9);
  }

  v10 = *(this + 106);
  if (v10)
  {
    *(this + 107) = v10;
    operator delete(v10);
  }

  v11 = *(this + 103);
  if (v11)
  {
    *(this + 104) = v11;
    operator delete(v11);
  }

  v12 = *(this + 100);
  if (v12)
  {
    *(this + 101) = v12;
    operator delete(v12);
  }

  v13 = *(this + 95);
  if (v13)
  {
    *(this + 96) = v13;
    operator delete(v13);
  }

  v14 = *(this + 92);
  if (v14)
  {
    *(this + 93) = v14;
    operator delete(v14);
  }

  v15 = *(this + 88);
  if (v15)
  {
    *(this + 89) = v15;
    operator delete(v15);
  }

  v16 = *(this + 83);
  if (v16)
  {
    *(this + 84) = v16;
    operator delete(v16);
  }

  v17 = *(this + 78);
  if (v17)
  {
    *(this + 79) = v17;
    operator delete(v17);
  }

  v20 = (this + 584);
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v20);
  v18 = *(this + 70);
  if (v18)
  {
    *(this + 71) = v18;
    operator delete(v18);
  }

  v19 = *(this + 67);
  *(this + 67) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  std::unique_ptr<ParametricProcessor>::reset[abi:ne200100](this + 66, 0);

  ausdk::AUBase::~AUBase(this);
}

void RotationUtilities::~RotationUtilities(RotationUtilities *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

void *std::vector<__CLPK_complex>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DDCCA6C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *CLiteMatrix::ToCLPKComplex(unint64_t *this, void *a2)
{
  v2 = *this;
  v3 = this[1];
  if (*this * v3 == (a2[1] - *a2) >> 3)
  {
    if (v3)
    {
      v5 = this;
      v6 = 0;
      for (i = 0; i < v3; ++i)
      {
        if (v2)
        {
          v8 = 0;
          v9 = 8 * v6;
          do
          {
            CLiteMatrix::Get(v5, v8, i);
            *(*a2 + v9) = v10;
            this = CLiteMatrix::Get(v5, v8, i);
            *(*a2 + v9 + 4) = v11;
            ++v6;
            ++v8;
            v2 = *v5;
            v9 += 8;
          }

          while (v8 < *v5);
          v3 = v5[1];
        }
      }
    }
  }

  else
  {
    v12 = CAVerboseAbort();
    return CLiteMatrix::FromCLPKComplex(v12);
  }

  return this;
}

unint64_t *CLiteMatrix::FromCLPKComplex(unint64_t *this, void *a2)
{
  v2 = *this;
  v3 = this[1];
  if (*this * v3 == (a2[1] - *a2) >> 3)
  {
    if (v3)
    {
      v5 = this;
      v6 = 0;
      for (i = 0; i < v3; ++i)
      {
        if (v2)
        {
          v8 = 0;
          v9 = 8 * v6;
          do
          {
            v10 = *(*a2 + v9);
            LODWORD(CLiteMatrix::Get(v5, v8, i)->isa) = v10;
            v11 = *(*a2 + v9 + 4);
            this = CLiteMatrix::Get(v5, v8, i);
            *v12 = v11;
            ++v6;
            ++v8;
            v2 = *v5;
            v9 += 8;
          }

          while (v8 < *v5);
          v3 = v5[1];
        }
      }
    }
  }

  else
  {
    v13 = CAVerboseAbort();
    return CLiteMatrix::Get(v13, v14, v15);
  }

  return this;
}

unint64_t *CLiteMatrix::Get(unint64_t *this, unint64_t a2, unint64_t a3)
{
  if (*this <= a2 || this[1] <= a3)
  {
    v3 = CAVerboseAbort();
    return MatrixDecompositions::LinearSolverPLU(v3, v4, v5, v6);
  }

  return this;
}

void MatrixDecompositions::LinearSolverPLU(MatrixDecompositions *this, __CLPK_integer *a2, CLiteMatrix *a3, float **a4)
{
  v7 = *a2;
  __nrhs = *(a3 + 1);
  __n = v7;
  CLiteMatrix::ToCLPKComplex(a2, this);
  CLiteMatrix::ToCLPKComplex(a3, this + 39);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  __ldb = v8;
  __lda = v8;
  __info = 0;
  cgesv_(&__n, &__nrhs, *this, &__lda, *(this + 42), *(this + 39), &__ldb, &__info);
  if (__info)
  {
    vDSP_vclr(a4[2], 1, a4[3] - a4[2]);
  }

  else
  {
    CLiteMatrix::FromCLPKComplex(a4, this + 39);
  }
}

void ParametricProcessor::ParametricProcessor(ParametricProcessor *this, const ParametricProcessor::pars *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 4) = 0xBF800000467A0000;
  *(this + 3) = 1195081728;
  *(this + 2) = 0x8000000800;
  *(this + 12) = 257;
  *(this + 2) = xmmword_1DE09C220;
  *(this + 48) = 1;
  *(this + 52) = xmmword_1DE09C230;
  *(this + 68) = 3;
  *(this + 19) = 3;
  *(this + 5) = xmmword_1DE09C240;
  *(this + 6) = xmmword_1DE09C250;
  *(this + 28) = 30;
  *(this + 116) = 0x3E4CCCCD3F800000;
  *(this + 31) = 1056964608;
  *(this + 16) = 0x100000001;
  *(this + 34) = 0;
  *(this + 19) = 0;
  *(this + 18) = 0;
  *(this + 10) = xmmword_1DE09C260;
  *(this + 22) = 0xA00000003;
  *(this + 46) = 2;
  *(this + 188) = 1;
  *(this + 48) = 1;
  *(this + 196) = xmmword_1DE09C270;
  *(this + 212) = 0;
  *(this + 27) = 0x100000000;
  v47 = this + 160;
  std::vector<AudioChannelLayout>::vector[abi:ne200100](this + 28, 1uLL);
  v4 = *(this + 28);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(this + 248) = 0u;
  *(this + 97) = 0;
  *(this + 98) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 340) = 0u;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 45) = 0;
  *(this + 384) = 0;
  bzero(this + 400, 0xEF0uLL);
  bzero(this + 4248, 0x10E0uLL);
  if (getParametricProcessorLog(void)::onceToken != -1)
  {
    dispatch_once(&getParametricProcessorLog(void)::onceToken, &__block_literal_global_4289);
  }

  v5 = getParametricProcessorLog(void)::gLog;
  if (os_log_type_enabled(getParametricProcessorLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v53.__x_[0] = 136315138;
    *&v53.__x_[1] = "ParametricProcessor";
    _os_log_debug_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "Entering %s", &v53, 0xCu);
  }

  *this = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v8;
  *(this + 1) = v6;
  *(this + 2) = v7;
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  *(this + 124) = *(a2 + 124);
  *(this + 6) = v10;
  *(this + 7) = v11;
  *(this + 5) = v9;
  v12 = *(this + 18);
  v13 = *(a2 + 18);
  *(this + 18) = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v14 = *(this + 19);
  v15 = *(a2 + 19);
  *(this + 19) = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v16 = *(a2 + 10);
  v17 = *(a2 + 11);
  v18 = *(a2 + 13);
  *(v47 + 2) = *(a2 + 12);
  *(v47 + 3) = v18;
  *v47 = v16;
  *(v47 + 1) = v17;
  ausdk::AUChannelLayout::CopyStorage((v47 + 64), (a2 + 224));
  v19 = *(this + 9);
  std::vector<__CLPK_complex>::vector[abi:ne200100](&v53, (v19 * v19));
  v20 = *(v47 + 291);
  if (v20)
  {
    *(this + 312) = v20;
    operator delete(v20);
  }

  *(v47 + 2328) = *v53.__x_;
  *(this + 313) = *&v53.__x_[4];
  std::vector<float>::vector[abi:ne200100](&v53, v19);
  v21 = *(this + 314);
  if (v21)
  {
    *(this + 315) = v21;
    operator delete(v21);
  }

  *(this + 157) = *v53.__x_;
  *(this + 316) = *&v53.__x_[4];
  std::vector<__CLPK_complex>::vector[abi:ne200100](&v53, (v19 * v19));
  v22 = *(v47 + 297);
  if (v22)
  {
    *(this + 318) = v22;
    operator delete(v22);
  }

  *(v47 + 2376) = *v53.__x_;
  *(this + 319) = *&v53.__x_[4];
  std::vector<__CLPK_complex>::vector[abi:ne200100](&v53, (v19 * v19));
  v23 = *(this + 320);
  if (v23)
  {
    *(this + 321) = v23;
    operator delete(v23);
  }

  *(this + 160) = *v53.__x_;
  *(this + 322) = *&v53.__x_[4];
  std::vector<__CLPK_complex>::vector[abi:ne200100](&v53, 3 * v19);
  v24 = *(v47 + 303);
  if (v24)
  {
    *(this + 324) = v24;
    operator delete(v24);
  }

  *(v47 + 2424) = *v53.__x_;
  *(this + 325) = *&v53.__x_[4];
  std::vector<float>::vector[abi:ne200100](&v53, 5 * v19);
  v25 = *(this + 326);
  if (v25)
  {
    *(this + 327) = v25;
    operator delete(v25);
  }

  *(this + 163) = *v53.__x_;
  *(this + 328) = *&v53.__x_[4];
  afSTFTWrapper::afSTFTWrapper(v48, *(this + 9), *(this + 10), *(this + 5), *(this + 4) / *(this + 5), *(this + 24), *(this + 25));
  FilterbandCenterFrequencies = afSTFTWrapper::getFilterbandCenterFrequencies(v48, *(this + 3));
  if ((this + 3088) != FilterbandCenterFrequencies)
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 386, *FilterbandCenterFrequencies, FilterbandCenterFrequencies[1], (FilterbandCenterFrequencies[1] - *FilterbandCenterFrequencies) >> 2);
  }

  *(this + 7) = v49;
  std::vector<float>::vector[abi:ne200100](&v54, *(this + 10));
  std::vector<float>::vector[abi:ne200100](__p, (*(this + 387) - *(this + 386)) >> 2);
  std::vector<std::vector<float>>::vector[abi:ne200100](v50, *(this + 10));
  v27 = 5489;
  v53.__x_[0] = 5489;
  for (i = 1; i != 624; ++i)
  {
    v27 = i + 1812433253 * (v27 ^ (v27 >> 30));
    v53.__x_[i] = v27;
  }

  v53.__i_ = 0;
  LODWORD(v29) = *(this + 10);
  if (v29 >= 1)
  {
    v30 = 0;
    do
    {
      v31 = v30 / v29;
      *(*&v54.mChannelLayoutTag + 4 * v30) = v31;
      v32 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v53);
      v33 = *(this + 386);
      v34 = *(this + 387) - v33;
      if (v34)
      {
        v35 = v31 + (vcvts_n_f32_u32(v32, 0x20uLL) + 0.0);
        v36 = v34 >> 2;
        v37 = *(this + 42);
        v38 = *(this + 40);
        v39 = *(this + 43) * 1000.0;
        v40 = __p[0];
        if (v36 <= 1)
        {
          v36 = 1;
        }

        do
        {
          v41 = *v33++;
          v42 = v39 / (v41 + 0.00000011921);
          if (v42 >= v38)
          {
            v42 = v38;
          }

          if (v42 <= v37)
          {
            v42 = v37;
          }

          *v40++ = roundf(v35 * v42);
          --v36;
        }

        while (v36);
      }

      v43 = (v50[0] + 24 * v30);
      if (v43 != __p)
      {
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v43, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
      }

      ++v30;
      v29 = *(this + 10);
    }

    while (v30 < v29);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v54.mChannelLayoutTag)
  {
    *&v54.mNumberChannelDescriptions = *&v54.mChannelLayoutTag;
    operator delete(*&v54.mChannelLayoutTag);
  }

  std::vector<std::vector<float>>::__vdeallocate(this + 664);
  *(this + 332) = *v50;
  *(this + 666) = v51;
  v51 = 0;
  v50[1] = 0;
  v50[0] = 0;
  *v53.__x_ = v50;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v53);
  CLiteMatrix::CLiteMatrix(&v53, *(this + 10), *(this + 8) + *(this + 8) * *(this + 46), v44);
  *(this + 5336) = *v53.__x_;
  v45 = v47 + 5192;
  v46 = *(v47 + 649);
  if (v46)
  {
    *(this + 670) = v46;
    operator delete(v46);
    *v45 = 0;
    *(v47 + 650) = 0;
    *(v47 + 651) = 0;
  }

  *v45 = *&v53.__x_[4];
  *(this + 671) = *&v53.__x_[8];
  operator new();
}

void sub_1DDCD025C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int *a17, int *a18, int *a19, int *a20, int *a21, int *a22, int *a23, int *a24, int *a25, void **a26, void **a27, void **a28, void **a29, void **a30, void **a31, void **a32, int *a33, int *a34, int *a35, int *a36, void **a37, void **a38, void **a39, void **a40, ParametricProcessor::parsData *a41, int *a42, int *a43, void **a44, int *a45, void *a46, MatrixDecompositions *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int *a53)
{
  v55 = STACK[0x3C0];
  if (STACK[0x3C0])
  {
    STACK[0x3C8] = v55;
    operator delete(v55);
  }

  v56 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v56;
    operator delete(v56);
  }

  v57 = STACK[0x420];
  if (STACK[0x420])
  {
    STACK[0x428] = v57;
    operator delete(v57);
  }

  STACK[0x410] = &STACK[0x388];
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&STACK[0x410]);
  v58 = STACK[0xE50];
  if (STACK[0xE50])
  {
    STACK[0xE58] = v58;
    operator delete(v58);
  }

  v59 = STACK[0x450];
  if (STACK[0x450])
  {
    STACK[0x458] = v59;
    operator delete(v59);
  }

  afSTFTWrapper::~afSTFTWrapper(&a53);
  v60 = *(a52 + 8296);
  if (v60)
  {
    *(v53 + 1069) = v60;
    operator delete(v60);
  }

  std::unique_ptr<ActiveIntensityAnalysis>::reset[abi:ne200100]((a52 + 8288), 0);
  v61 = *a37;
  if (*a37)
  {
    *(v53 + 1065) = v61;
    operator delete(v61);
  }

  v62 = *(v53 + 1061);
  if (v62)
  {
    *(v53 + 1062) = v62;
    operator delete(v62);
  }

  v63 = *(v53 + 1056);
  if (v63)
  {
    *(v53 + 1057) = v63;
    operator delete(v63);
  }

  v64 = *(v53 + 1051);
  if (v64)
  {
    *(v53 + 1052) = v64;
    operator delete(v64);
  }

  v65 = *(v53 + 1046);
  if (v65)
  {
    *(v53 + 1047) = v65;
    operator delete(v65);
  }

  a53 = a33;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  a53 = a34;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  a53 = a35;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  a53 = a36;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  v66 = *(v53 + 1029);
  if (v66)
  {
    *(v53 + 1030) = v66;
    operator delete(v66);
  }

  v67 = *(v53 + 1024);
  if (v67)
  {
    *(v53 + 1025) = v67;
    operator delete(v67);
  }

  v68 = *(v53 + 1019);
  if (v68)
  {
    *(v53 + 1020) = v68;
    operator delete(v68);
  }

  v69 = *(v53 + 1014);
  if (v69)
  {
    *(v53 + 1015) = v69;
    operator delete(v69);
  }

  v70 = *(v53 + 1009);
  if (v70)
  {
    *(v53 + 1010) = v70;
    operator delete(v70);
  }

  v71 = *(v53 + 1004);
  if (v71)
  {
    *(v53 + 1005) = v71;
    operator delete(v71);
  }

  v72 = *(v53 + 999);
  if (v72)
  {
    *(v53 + 1000) = v72;
    operator delete(v72);
  }

  v73 = *(v53 + 994);
  if (v73)
  {
    *(v53 + 995) = v73;
    operator delete(v73);
  }

  v74 = *(v53 + 989);
  if (v74)
  {
    *(v53 + 990) = v74;
    operator delete(v74);
  }

  v75 = *(v53 + 984);
  if (v75)
  {
    *(v53 + 985) = v75;
    operator delete(v75);
  }

  v76 = *(v53 + 979);
  if (v76)
  {
    *(v53 + 980) = v76;
    operator delete(v76);
  }

  v77 = *(v53 + 974);
  if (v77)
  {
    *(v53 + 975) = v77;
    operator delete(v77);
  }

  v78 = *(v53 + 969);
  if (v78)
  {
    *(v53 + 970) = v78;
    operator delete(v78);
  }

  v79 = *(v53 + 964);
  if (v79)
  {
    *(v53 + 965) = v79;
    operator delete(v79);
  }

  v80 = *(v53 + 959);
  if (v80)
  {
    *(v53 + 960) = v80;
    operator delete(v80);
  }

  v81 = *(v53 + 954);
  if (v81)
  {
    *(v53 + 955) = v81;
    operator delete(v81);
  }

  v82 = *(v53 + 949);
  if (v82)
  {
    *(v53 + 950) = v82;
    operator delete(v82);
  }

  v83 = *(v53 + 944);
  if (v83)
  {
    *(v53 + 945) = v83;
    operator delete(v83);
  }

  v84 = *(v53 + 939);
  if (v84)
  {
    *(v53 + 940) = v84;
    operator delete(v84);
  }

  a53 = a43;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  v85 = *(v53 + 931);
  if (v85)
  {
    *(v53 + 932) = v85;
    operator delete(v85);
  }

  v86 = *(v53 + 926);
  if (v86)
  {
    *(v53 + 927) = v86;
    operator delete(v86);
  }

  v87 = *(v53 + 921);
  if (v87)
  {
    *(v53 + 922) = v87;
    operator delete(v87);
  }

  v88 = *(v53 + 916);
  if (v88)
  {
    *(v53 + 917) = v88;
    operator delete(v88);
  }

  v89 = *(v53 + 911);
  if (v89)
  {
    *(v53 + 912) = v89;
    operator delete(v89);
  }

  v90 = *(v53 + 906);
  if (v90)
  {
    *(v53 + 907) = v90;
    operator delete(v90);
  }

  v91 = *(v53 + 901);
  if (v91)
  {
    *(v53 + 902) = v91;
    operator delete(v91);
  }

  v92 = *(v53 + 896);
  if (v92)
  {
    *(v53 + 897) = v92;
    operator delete(v92);
  }

  v93 = *(v53 + 891);
  if (v93)
  {
    *(v53 + 892) = v93;
    operator delete(v93);
  }

  v94 = *(v53 + 886);
  if (v94)
  {
    *(v53 + 887) = v94;
    operator delete(v94);
  }

  v95 = *(v53 + 881);
  if (v95)
  {
    *(v53 + 882) = v95;
    operator delete(v95);
  }

  v96 = *(v53 + 876);
  if (v96)
  {
    *(v53 + 877) = v96;
    operator delete(v96);
  }

  v97 = *(v53 + 871);
  if (v97)
  {
    *(v53 + 872) = v97;
    operator delete(v97);
  }

  v98 = *a30;
  if (*a30)
  {
    *(v53 + 867) = v98;
    operator delete(v98);
  }

  a53 = a17;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  v99 = *(v53 + 860);
  if (v99)
  {
    *(v53 + 861) = v99;
    operator delete(v99);
  }

  a53 = a18;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  a53 = a19;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  a53 = a20;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  a53 = a21;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  v100 = *(v53 + 843);
  if (v100)
  {
    *(v53 + 844) = v100;
    operator delete(v100);
  }

  v101 = *(v53 + 838);
  if (v101)
  {
    *(v53 + 839) = v101;
    operator delete(v101);
  }

  a53 = a22;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  a53 = a23;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  a53 = a42;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  a53 = a24;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  v102 = *(v53 + 821);
  if (v102)
  {
    *(v53 + 822) = v102;
    operator delete(v102);
  }

  a53 = (a52 + 6280);
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  v103 = *(v53 + 813);
  if (v103)
  {
    *(v53 + 814) = v103;
    operator delete(v103);
  }

  a53 = a25;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  v104 = *(v53 + 805);
  if (v104)
  {
    *(v53 + 806) = v104;
    operator delete(v104);
  }

  v105 = *(v53 + 800);
  if (v105)
  {
    *(v53 + 801) = v105;
    operator delete(v105);
  }

  v106 = *(v53 + 795);
  if (v106)
  {
    *(v53 + 796) = v106;
    operator delete(v106);
  }

  v107 = *a40;
  if (*a40)
  {
    *(v53 + 791) = v107;
    operator delete(v107);
  }

  v108 = *(v53 + 787);
  if (v108)
  {
    *(v53 + 788) = v108;
    operator delete(v108);
  }

  v109 = *(v53 + 782);
  if (v109)
  {
    *(v53 + 783) = v109;
    operator delete(v109);
  }

  v110 = *(v53 + 777);
  if (v110)
  {
    *(v53 + 778) = v110;
    operator delete(v110);
  }

  v111 = *(v53 + 772);
  if (v111)
  {
    *(v53 + 773) = v111;
    operator delete(v111);
  }

  v112 = *(v53 + 767);
  if (v112)
  {
    *(v53 + 768) = v112;
    operator delete(v112);
  }

  v113 = *(v53 + 762);
  if (v113)
  {
    *(v53 + 763) = v113;
    operator delete(v113);
  }

  v114 = *(v53 + 757);
  if (v114)
  {
    *(v53 + 758) = v114;
    operator delete(v114);
  }

  v115 = *(v53 + 752);
  if (v115)
  {
    *(v53 + 753) = v115;
    operator delete(v115);
  }

  v116 = *(v53 + 747);
  if (v116)
  {
    *(v53 + 748) = v116;
    operator delete(v116);
  }

  v117 = *(v53 + 742);
  if (v117)
  {
    *(v53 + 743) = v117;
    operator delete(v117);
  }

  v118 = *(v53 + 737);
  if (v118)
  {
    *(v53 + 738) = v118;
    operator delete(v118);
  }

  v119 = *(v53 + 732);
  if (v119)
  {
    *(v53 + 733) = v119;
    operator delete(v119);
  }

  v120 = *(v53 + 727);
  if (v120)
  {
    *(v53 + 728) = v120;
    operator delete(v120);
  }

  v121 = *(v53 + 722);
  if (v121)
  {
    *(v53 + 723) = v121;
    operator delete(v121);
  }

  v122 = *(v53 + 717);
  if (v122)
  {
    *(v53 + 718) = v122;
    operator delete(v122);
  }

  a53 = (a52 + 5448);
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a53);
  v123 = *(v53 + 709);
  if (v123)
  {
    *(v53 + 710) = v123;
    operator delete(v123);
  }

  v124 = *(v53 + 704);
  if (v124)
  {
    *(v53 + 705) = v124;
    operator delete(v124);
  }

  v125 = *(v53 + 699);
  if (v125)
  {
    *(v53 + 700) = v125;
    operator delete(v125);
  }

  v126 = *(v53 + 694);
  if (v126)
  {
    *(v53 + 695) = v126;
    operator delete(v126);
  }

  v127 = *(v53 + 689);
  if (v127)
  {
    *(v53 + 690) = v127;
    operator delete(v127);
  }

  v128 = *(v53 + 684);
  if (v128)
  {
    *(v53 + 685) = v128;
    operator delete(v128);
  }

  v129 = *(v53 + 679);
  if (v129)
  {
    *(v53 + 680) = v129;
    operator delete(v129);
  }

  v130 = *(v53 + 674);
  if (v130)
  {
    *(v53 + 675) = v130;
    operator delete(v130);
  }

  v131 = *(v53 + 669);
  if (v131)
  {
    *(v53 + 670) = v131;
    operator delete(v131);
  }

  a53 = a45;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a53);
  v132 = *a28;
  if (*a28)
  {
    *(v53 + 661) = v132;
    operator delete(v132);
  }

  v133 = *a29;
  if (*a29)
  {
    *(v53 + 657) = v133;
    operator delete(v133);
  }

  v134 = *a38;
  if (*a38)
  {
    *(v53 + 654) = v134;
    operator delete(v134);
  }

  v135 = *a31;
  if (*a31)
  {
    *(v53 + 651) = v135;
    operator delete(v135);
  }

  v136 = *(v53 + 647);
  if (v136)
  {
    *(v53 + 648) = v136;
    operator delete(v136);
  }

  v137 = *(v53 + 642);
  if (v137)
  {
    *(v53 + 643) = v137;
    operator delete(v137);
  }

  v138 = *(v53 + 637);
  if (v138)
  {
    *(v53 + 638) = v138;
    operator delete(v138);
  }

  v139 = *(v53 + 632);
  if (v139)
  {
    *(v53 + 633) = v139;
    operator delete(v139);
  }

  v140 = *a27;
  if (*a27)
  {
    *(v53 + 628) = v140;
    operator delete(v140);
  }

  v141 = *a26;
  if (*a26)
  {
    *(v53 + 625) = v141;
    operator delete(v141);
  }

  v142 = *a32;
  if (*a32)
  {
    *(v53 + 622) = v142;
    operator delete(v142);
  }

  v143 = *(v53 + 618);
  if (v143)
  {
    *(v53 + 619) = v143;
    operator delete(v143);
  }

  v144 = *(v53 + 613);
  if (v144)
  {
    *(v53 + 614) = v144;
    operator delete(v144);
  }

  v145 = *(v53 + 608);
  if (v145)
  {
    *(v53 + 609) = v145;
    operator delete(v145);
  }

  v146 = *(v53 + 603);
  if (v146)
  {
    *(v53 + 604) = v146;
    operator delete(v146);
  }

  v147 = *(v53 + 598);
  if (v147)
  {
    *(v53 + 599) = v147;
    operator delete(v147);
  }

  v148 = *(v53 + 593);
  if (v148)
  {
    *(v53 + 594) = v148;
    operator delete(v148);
  }

  v149 = *a39;
  if (*a39)
  {
    *(v53 + 591) = v149;
    operator delete(v149);
  }

  v150 = *(a52 + 4448);
  if (v150)
  {
    *(v53 + 588) = v150;
    operator delete(v150);
  }

  v151 = *(a52 + 4424);
  if (v151)
  {
    *(v53 + 585) = v151;
    operator delete(v151);
  }

  v152 = *(a52 + 4400);
  if (v152)
  {
    *(v53 + 582) = v152;
    operator delete(v152);
  }

  v153 = *(v53 + 578);
  if (v153)
  {
    *(v53 + 579) = v153;
    operator delete(v153);
  }

  v154 = *(v53 + 573);
  if (v154)
  {
    *(v53 + 574) = v154;
    operator delete(v154);
  }

  v155 = *(v53 + 568);
  if (v155)
  {
    *(v53 + 569) = v155;
    operator delete(v155);
  }

  v156 = *(v53 + 563);
  if (v156)
  {
    *(v53 + 564) = v156;
    operator delete(v156);
  }

  v157 = *(v53 + 558);
  if (v157)
  {
    *(v53 + 559) = v157;
    operator delete(v157);
  }

  v158 = *a44;
  if (*a44)
  {
    *(v53 + 554) = v158;
    operator delete(v158);
  }

  v159 = *(v53 + 550);
  if (v159)
  {
    *(v53 + 551) = v159;
    operator delete(v159);
  }

  ParametricProcessor::parsData::~parsData(a41);
  RotationUtilities::~RotationUtilities((a52 + 2600));
  MatrixDecompositions::~MatrixDecompositions(a47);
  covarianceBasedAdaptiveFilter::~covarianceBasedAdaptiveFilter((a52 + 208));
  std::unique_ptr<VBAP>::reset[abi:ne200100]((a52 + 200), 0);
  std::unique_ptr<VBAP>::reset[abi:ne200100]((a52 + 192), 0);
  v160 = *(v53 + 54);
  *(v53 + 54) = 0;
  if (v160)
  {
    (*(*v160 + 8))(v160);
  }

  std::unique_ptr<HOA>::reset[abi:ne200100]((a52 + 176), 0);
  std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100]((a52 + 168), 0);
  std::unique_ptr<HOA>::reset[abi:ne200100]((a52 + 160), 0);
  std::unique_ptr<HOA>::reset[abi:ne200100]((a52 + 152), 0);
  v161 = *(a52 + 112);
  if (v161)
  {
    *(v53 + 46) = v161;
    operator delete(v161);
  }

  a53 = (a52 + 72);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a53);
  v162 = *(v53 + 37);
  if (v162)
  {
    *(v53 + 38) = v162;
    operator delete(v162);
  }

  a53 = (a52 + 24);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a53);
  v163 = *a52;
  if (*a52)
  {
    *(v53 + 32) = v163;
    operator delete(v163);
  }

  ParametricProcessor::pars::~pars(v53);
  _Unwind_Resume(a1);
}

void sub_1DDCD1470(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDCD1424);
}

void sub_1DDCD1478(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDCD1424);
}

void sub_1DDCD1480(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DDCD1484);
  }

  JUMPOUT(0x1DDCD1424);
}

void sub_1DDCD1488(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDCD148CLL);
  }

  __clang_call_terminate();
}

HOA *std::unique_ptr<HOA>::reset[abi:ne200100](HOA **a1, HOA *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HOA::~HOA(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void ParametricProcessor::InitializeGridsAndAmbisonicEncoder(uint64_t a1, void *a2, float **a3, HOA *a4, void *a5, void *a6, unint64_t *a7)
{
  v51 = *MEMORY[0x1E69E9840];
  if (getParametricProcessorLog(void)::onceToken != -1)
  {
    dispatch_once(&getParametricProcessorLog(void)::onceToken, &__block_literal_global_4289);
  }

  v14 = getParametricProcessorLog(void)::gLog;
  if (os_log_type_enabled(getParametricProcessorLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v48 = "InitializeGridsAndAmbisonicEncoder";
    _os_log_debug_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEBUG, "Initializing Grid and ambisonic encoder %s", buf, 0xCu);
  }

  HOA::HOA(buf, *(a1 + 52), *(a1 + 216));
  TDesign = HOA::getTDesign(a4, 0, 0, 0, v15);
  *a7 = TDesign;
  std::vector<float>::resize(a2, TDesign);
  std::vector<float>::resize(a3, *a7);
  HOA::getTDesign(a4, *a2, *a3, 0, v17);
  HOA::createEncoder(buf, a2, a3);
  std::vector<float>::resize(a5, 3 * *a7);
  v19 = a2;
  v18 = *a2;
  v20 = v19[1] - v18;
  if (v20)
  {
    v21 = *a3;
    v22 = *a5;
    v23 = *a7;
    v24 = 2 * *a7;
    v25 = v20 >> 2;
    if (v25 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    do
    {
      v27 = *v18++;
      v28 = v27;
      v29 = *v21++;
      v30 = v28 * 0.0174532925;
      v31 = __sincos_stret(v29 * 0.0174532925);
      v33 = __sincos_stret(v30);
      v32.f64[0] = v33.__cosval;
      v32.f64[1] = v33.__sinval;
      v34 = vcvt_f32_f64(vmulq_n_f64(v32, v31.__cosval));
      *v32.f64 = v31.__sinval;
      *v22 = v34.i32[0];
      v22[v23] = v34.i32[1];
      v22[v24] = LODWORD(v32.f64[0]);
      ++v22;
      --v26;
    }

    while (v26);
  }

  else
  {
    v23 = *a7;
  }

  std::vector<float>::vector[abi:ne200100](__p, v23 * *(a1 + 60));
  v42 = 0uLL;
  *&v43 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v42, v49, v50, (v50 - v49) >> 2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v42;
  v46 = v43;
  CLiteMatrix::CLiteMatrix(&v42, *a7, *(a1 + 60), *&v42);
  *a6 = v42;
  v35 = a6[2];
  if (v35)
  {
    a6[3] = v35;
    operator delete(v35);
    a6[2] = 0;
    a6[3] = 0;
    a6[4] = 0;
  }

  *(a6 + 1) = v43;
  a6[4] = v44;
  v36 = *a7;
  if (*a7)
  {
    v37 = 0;
    v38 = 0;
    LODWORD(v39) = *(a1 + 60);
    do
    {
      if (v39)
      {
        v40 = 0;
        do
        {
          v41 = *(__p[0] + 4 * v40 + v37);
          LODWORD(CLiteMatrix::Get(a6, v38, v40++)->isa) = v41;
          v39 = *(a1 + 60);
        }

        while (v40 < v39);
        v36 = *a7;
      }

      ++v38;
      v37 += 16;
    }

    while (v38 < v36);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  HOA::~HOA(buf);
}

void sub_1DDCD180C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  HOA::~HOA(&a21);
  _Unwind_Resume(a1);
}

void ParametricProcessor::InitializeGrids(uint64_t a1, void *a2, float **a3, HOA *a4, void *a5, unint64_t *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  if (getParametricProcessorLog(void)::onceToken != -1)
  {
    dispatch_once(&getParametricProcessorLog(void)::onceToken, &__block_literal_global_4289);
  }

  v12 = getParametricProcessorLog(void)::gLog;
  if (os_log_type_enabled(getParametricProcessorLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v33 = "InitializeGrids";
    _os_log_debug_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "Initializing Grid %s", buf, 0xCu);
  }

  HOA::HOA(buf, *(a1 + 52), *(a1 + 216));
  TDesign = HOA::getTDesign(a4, 0, 0, 0, v13);
  *a6 = TDesign;
  std::vector<float>::resize(a2, TDesign);
  std::vector<float>::resize(a3, *a6);
  HOA::getTDesign(a4, *a2, *a3, 0, v15);
  std::vector<float>::resize(a5, 3 * *a6);
  v17 = a2;
  v16 = *a2;
  v18 = v17[1] - v16;
  if (v18)
  {
    v19 = *a3;
    v20 = *a5;
    v21 = *a6;
    v22 = v18 >> 2;
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    do
    {
      v24 = *v16++;
      v25 = v24;
      v26 = *v19++;
      v27 = v25 * 0.0174532925;
      v28 = __sincos_stret(v26 * 0.0174532925);
      v30 = __sincos_stret(v27);
      v29.f64[0] = v30.__cosval;
      v29.f64[1] = v30.__sinval;
      v31 = vcvt_f32_f64(vmulq_n_f64(v29, v28.__cosval));
      *v29.f64 = v28.__sinval;
      *v20 = v31.i32[0];
      v20[v21] = v31.i32[1];
      v20[2 * v21] = LODWORD(v29.f64[0]);
      ++v20;
      --v23;
    }

    while (v23);
  }

  HOA::~HOA(buf);
}

void ParametricProcessor::calculateVBAPGainTable(ParametricProcessor *this, HOA *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = (this + 3816);
  ParametricProcessor::InitializeGrids(this, this + 465, this + 468, a2, this + 471, this + 477);
  std::vector<float>::resize(this + 520, *(this + 464) * *(this + 477));
  v4 = *(this + 55);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *(v4 + 224), *(v4 + 232), (*(v4 + 232) - *(v4 + 224)) >> 2);
  v5 = *v3;
  if (*v3)
  {
    v6 = 0;
    v7 = __p[0];
    do
    {
      v8 = (*(this + 471) + 4 * v6);
      v9 = v8[v5];
      v21.i32[0] = *v8;
      v21.i32[1] = v9;
      v22 = v8[2 * v5];
      LODWORD(v16) = 0;
      VBAP::triangleLookup(*(this + 55), &v21, &v16, &v18);
      v10 = &v7[12 * v16];
      v11 = *(this + 520) + 4 * *(this + 464) * v6;
      *(v11 + 4 * *v10) = v18;
      *(v11 + 4 * *(v10 + 1)) = DWORD1(v18);
      *(v11 + 4 * *(v10 + 2)) = DWORD2(v18);
      ++v6;
      v5 = *(this + 477);
    }

    while (v6 < v5);
  }

  std::vector<float>::vector[abi:ne200100](&v18, 3uLL);
  v12 = *(this + 474);
  if (v12)
  {
    *(this + 475) = v12;
    operator delete(v12);
    *(this + 474) = 0;
    *(this + 475) = 0;
    *(this + 476) = 0;
  }

  *(this + 237) = v18;
  *(this + 476) = v19;
  v13 = *(this + 477);
  v16 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&v18, v13);
  v14 = *(this + 478);
  if (v14)
  {
    *(this + 479) = v14;
    operator delete(v14);
    *(this + 478) = 0;
    *(this + 479) = 0;
    *(this + 480) = 0;
  }

  *(this + 239) = v18;
  *(this + 480) = v19;
  LiteMatrix<float>::LiteMatrix(&v18, *(this + 477), 1);
  *(this + 267) = v18;
  v15 = *(this + 536);
  if (v15)
  {
    *(this + 537) = v15;
    operator delete(v15);
    *(this + 536) = 0;
    *(this + 537) = 0;
    *(this + 538) = 0;
  }

  *(this + 268) = v19;
  *(this + 538) = v20;
  std::vector<float>::resize(this + 587, *(this + 477));
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_1DDCD1C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ParametricProcessor::calculateRotationMatrices(uint64_t a1, uint64_t *a2, void *a3, int16x4_t a4)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = (v7 - *a2) >> 2;
  CLiteMatrix::CLiteMatrix(v14, *(a1 + 60), *(a1 + 60), a4);
  std::vector<CLiteMatrix>::vector[abi:ne200100](&v17, v9);
  std::vector<CLiteMatrix>::__vdeallocate((a1 + 6528));
  *(a1 + 6528) = v17;
  *(a1 + 6544) = v18;
  v18 = 0;
  v17 = 0uLL;
  v19 = &v17;
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v7 != v8)
  {
    v12 = 0;
    v13 = 0;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      RotationUtilities::yawPitchRoll2RotationMatrixFOA((*(a1 + 6528) + v12), v10, *(*a2 + 4 * v13) * 0.017453, *(*a3 + 4 * v13) * -0.017453, v11);
      ++v13;
      v12 += 40;
    }

    while (v9 != v13);
  }
}

void sub_1DDCD1DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<ActiveIntensityAnalysis>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[10];
    if (v3)
    {
      v2[11] = v3;
      operator delete(v3);
    }

    v4 = v2[7];
    if (v4)
    {
      v2[8] = v4;
      operator delete(v4);
    }

    v5 = v2[4];
    if (v5)
    {
      v2[5] = v5;
      operator delete(v5);
    }

    v6 = v2[1];
    if (v6)
    {
      v2[2] = v6;
      operator delete(v6);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDCD1F48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::vector<LiteMatrix<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void ParametricProcessor::convertHRIRtoHRTF(int *a1, uint64_t a2, unint64_t **a3, int16x4_t a4)
{
  v8 = *a3;
  v7 = a3[1];
  v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 - *a3);
  CLiteMatrix::CLiteMatrix(v85, 2, *(a2 + 28), a4);
  std::vector<CLiteMatrix>::vector[abi:ne200100](a1, v9);
  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  v10 = *(a2 + 28);
  LODWORD(v85[0]) = 0;
  v80 = a1;
  std::vector<float>::vector[abi:ne200100](&v100, v10);
  CLiteMatrix::CLiteMatrix(&v96, 1, 1, v11);
  CLiteMatrix::CLiteMatrix(&v92, 1, 1, v12);
  LiteMatrix<float>::LiteMatrix(&v88, 1, (*a3)[1]);
  v13 = *(a2 + 20);
  v14 = v89 / v13;
  afSTFTWrapper::afSTFTWrapper(v85, 1u, 1u, v13, v89 / v13, *(a2 + 24), *(a2 + 25));
  v15 = *(a2 + 20);
  v16 = (*a3)[1] / v15;
  afSTFTWrapper::afSTFTWrapper(v84, 2u, 1u, v15, v16, *(a2 + 24), *(a2 + 25));
  v17 = 0;
  v82 = 0.0;
  v83 = 0.0;
  v18 = *a3;
  v19 = (*a3)[1];
  v20 = &v83;
  v21 = 1;
  do
  {
    v22 = v21;
    if (v19)
    {
      if (*v18 <= v17)
      {
        goto LABEL_54;
      }

      v23 = 0;
      v24 = v18[2] + 4 * v19 * v17;
      v25 = 1.1755e-38;
      do
      {
        v26 = *(v24 + 4 * v23);
        if (v26 > v25)
        {
          *v20 = v23;
          v25 = v26;
        }

        ++v23;
      }

      while (v19 != v23);
    }

    v21 = 0;
    v20 = &v82;
    v17 = 1;
  }

  while ((v22 & 1) != 0);
  if (!v88 || (v27 = ((v83 + v82) * 0.5) + 1, v89 <= v27))
  {
LABEL_54:
    v74 = CAVerboseAbort();
    afSTFTWrapper::~afSTFTWrapper(v84);
    afSTFTWrapper::~afSTFTWrapper(v85);
    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    v85[0] = v80;
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](v85);
    _Unwind_Resume(v74);
  }

  v75 = v16;
  v77 = v9;
  v28 = v7;
  v79 = a3;
  *(v90 + v27) = 1065353216;
  v29 = afSTFTWrapper::fltbAnalysisMatrix(v85, &v88);
  v30 = *(a2 + 28);
  if (v30)
  {
    v31 = 0;
    v32 = v14 << 32;
    v33 = v14;
    do
    {
      if (v32)
      {
        v34 = 0;
        do
        {
          v35 = *&CLiteMatrix::Get((*v29 + 40 * v31), 0, v34)->isa;
          CLiteMatrix::Get((*v29 + 40 * v31), 0, v34);
          v37 = v35 * v35 + *v36 * *v36 + *(v100 + v31);
          *(v100 + v31) = v37;
          ++v34;
        }

        while (v34 < v33);
        v30 = *(a2 + 28);
      }

      ++v31;
    }

    while (v31 < v30);
  }

  if (v28 != v8)
  {
    v38 = 0;
    v81 = v75 << 32;
    v39 = v75;
    v40 = v77;
    if (v77 <= 1)
    {
      v40 = 1;
    }

    v76 = v40;
    do
    {
      v41 = afSTFTWrapper::fltbAnalysisMatrix(v84, &(*v79)[5 * v38]);
      v42 = 0;
      LODWORD(v43) = *(a2 + 28);
      v44 = 1;
      v45 = v80;
      do
      {
        v46 = v44;
        if (v43)
        {
          v78 = v44;
          v47 = 0;
          do
          {
            vDSP_vclr(v98, 1, v99 - v98);
            if (v81)
            {
              v48 = 0;
              v49 = 0.0;
              do
              {
                v50 = *&CLiteMatrix::Get((*v41 + 40 * v47), v42, v48)->isa;
                CLiteMatrix::Get((*v41 + 40 * v47), v42, v48);
                v52 = *v51;
                v53 = *&CLiteMatrix::Get((*v41 + 40 * v47), v42, v48)->isa;
                v54 = *&CLiteMatrix::Get((*v29 + 40 * v47), 0, v48)->isa;
                CLiteMatrix::Get((*v41 + 40 * v47), v42, v48);
                v56 = *v55;
                CLiteMatrix::Get((*v29 + 40 * v47), 0, v48);
                if (!v96)
                {
                  goto LABEL_54;
                }

                if (!v97)
                {
                  goto LABEL_54;
                }

                v58 = (v53 * v54) + v56 * *v57 + *v98;
                *v98 = v58;
                CLiteMatrix::Get((*v41 + 40 * v47), v42, v48);
                v60 = *v59;
                v61 = *&CLiteMatrix::Get((*v29 + 40 * v47), 0, v48)->isa;
                v62 = *&CLiteMatrix::Get((*v41 + 40 * v47), v42, v48)->isa;
                CLiteMatrix::Get((*v29 + 40 * v47), 0, v48);
                if (!v96 || !v97)
                {
                  goto LABEL_54;
                }

                v49 = v50 * v50 + v52 * v52 + v49;
                v64 = ((v99 - v98) >> 1) & 0xFFFFFFFFFFFFFFFCLL;
                v65 = (v60 * v61) - v62 * *v63 + *(v98 + v64);
                *(v98 + v64) = v65;
                ++v48;
              }

              while (v48 < v39);
              v45 = v80;
            }

            else
            {
              v49 = 0.0;
              if (!v96)
              {
                goto LABEL_54;
              }
            }

            if (!v97)
            {
              goto LABEL_54;
            }

            if (!v92)
            {
              goto LABEL_54;
            }

            if (!v93)
            {
              goto LABEL_54;
            }

            v66 = sqrtf(v49 / *(v100 + v47));
            v67 = atan2f(*(v98 + (((v99 - v98) >> 1) & 0xFFFFFFFFFFFFFFFCLL)), *v98);
            v68 = __sincosf_stret(v67);
            v69 = v94;
            v70 = ((v95 - v94) >> 1) & 0xFFFFFFFFFFFFFFFCLL;
            *v94 = v68.__cosval;
            *(v69 + v70) = v68.__sinval;
            v71 = *v69;
            *&CLiteMatrix::Get((*v45 + 40 * v38), v42, v47)->isa = v66 * v71;
            if (!v92 || !v93)
            {
              goto LABEL_54;
            }

            v72 = *(v94 + (((v95 - v94) >> 1) & 0xFFFFFFFFFFFFFFFCLL));
            CLiteMatrix::Get((*v45 + 40 * v38), v42, v47);
            *v73 = v66 * v72;
            ++v47;
            v43 = *(a2 + 28);
          }

          while (v47 < v43);
          v46 = v78;
        }

        v44 = 0;
        v42 = 1;
      }

      while ((v46 & 1) != 0);
      ++v38;
    }

    while (v38 != v76);
  }

  afSTFTWrapper::~afSTFTWrapper(v84);
  afSTFTWrapper::~afSTFTWrapper(v85);
  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }
}

os_log_t ParametricProcessor::calculatePhaseTerm(os_log_t this, CLiteMatrix *a2, CLiteMatrix *a3, float a4)
{
  isa = this->isa;
  if (this->isa)
  {
    p_isa = &this->isa;
    v8 = 0;
    v9 = this[1].isa;
    do
    {
      if (v9)
      {
        for (i = 0; i < v9; ++i)
        {
          v11 = CLiteMatrix::Get(p_isa, v8, i);
          v12 = cosf(*&v11->isa * 0.5);
          *&CLiteMatrix::Get(a2, v8, i)->isa = v12;
          v13 = CLiteMatrix::Get(p_isa, v8, i);
          v14 = sinf(*&v13->isa * 0.5) * a4;
          this = CLiteMatrix::Get(a2, v8, i);
          *v15 = v14;
          v9 = p_isa[1];
        }

        isa = *p_isa;
      }

      ++v8;
    }

    while (v8 < isa);
  }

  return this;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDCD2940(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IR::DelayLine<float>::~DelayLine(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::vector<std::unique_ptr<IR::DelayLine<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double MoorePenrose::setMandN(MoorePenrose *this, unint64_t a2, unint64_t a3, int16x4_t a4)
{
  CLiteMatrix::CLiteMatrix(&v30, a2, a2, a4);
  *this = v30;
  v7 = *(this + 2);
  if (v7)
  {
    *(this + 3) = v7;
    operator delete(v7);
  }

  v8 = v31;
  *(this + 1) = v31;
  *(this + 4) = v32;
  CLiteMatrix::CLiteMatrix(&v30, a2, a2, v8);
  *(this + 40) = v30;
  v9 = *(this + 7);
  if (v9)
  {
    *(this + 8) = v9;
    operator delete(v9);
  }

  v10 = v31;
  *(this + 56) = v31;
  *(this + 9) = v32;
  CLiteMatrix::CLiteMatrix(&v30, a2, a3, v10);
  *(this + 5) = v30;
  v11 = *(this + 12);
  if (v11)
  {
    *(this + 13) = v11;
    operator delete(v11);
  }

  v12 = v31;
  *(this + 6) = v31;
  *(this + 14) = v32;
  CLiteMatrix::CLiteMatrix(&v30, a2, a3, v12);
  *(this + 120) = v30;
  v13 = *(this + 17);
  if (v13)
  {
    *(this + 18) = v13;
    operator delete(v13);
  }

  v14 = v31;
  *(this + 136) = v31;
  *(this + 19) = v32;
  CLiteMatrix::CLiteMatrix(&v30, a3, a2, v14);
  *(this + 10) = v30;
  v15 = *(this + 22);
  if (v15)
  {
    *(this + 23) = v15;
    operator delete(v15);
  }

  v16 = v31;
  *(this + 11) = v31;
  *(this + 24) = v32;
  CLiteMatrix::CLiteMatrix(&v30, a3, a3, v16);
  *(this + 200) = v30;
  v17 = *(this + 27);
  if (v17)
  {
    *(this + 28) = v17;
    operator delete(v17);
  }

  v18 = v31;
  *(this + 216) = v31;
  *(this + 29) = v32;
  CLiteMatrix::CLiteMatrix(&v30, a3, a3, v18);
  *(this + 15) = v30;
  v19 = *(this + 32);
  if (v19)
  {
    *(this + 33) = v19;
    operator delete(v19);
  }

  v20 = v31;
  *(this + 16) = v31;
  *(this + 34) = v32;
  CLiteMatrix::CLiteMatrix(&v30, a3, a2, v20);
  *(this + 280) = v30;
  v21 = *(this + 37);
  if (v21)
  {
    *(this + 38) = v21;
    operator delete(v21);
  }

  *(this + 296) = v31;
  *(this + 39) = v32;
  std::vector<__CLPK_complex>::vector[abi:ne200100](&v30, a3 * a2);
  v22 = *(this + 40);
  if (v22)
  {
    *(this + 41) = v22;
    operator delete(v22);
  }

  *(this + 20) = v30;
  *(this + 42) = v31;
  if (a3 >= a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = a3;
  }

  std::vector<float>::vector[abi:ne200100](&v30, v23);
  v24 = *(this + 43);
  if (v24)
  {
    *(this + 44) = v24;
    operator delete(v24);
  }

  *(this + 344) = v30;
  *(this + 45) = v31;
  std::vector<__CLPK_complex>::vector[abi:ne200100](&v30, a2 * a2);
  v25 = *(this + 46);
  if (v25)
  {
    *(this + 47) = v25;
    operator delete(v25);
  }

  *(this + 23) = v30;
  *(this + 48) = v31;
  std::vector<__CLPK_complex>::vector[abi:ne200100](&v30, a3 * a3);
  v26 = *(this + 49);
  if (v26)
  {
    *(this + 50) = v26;
    operator delete(v26);
  }

  *(this + 392) = v30;
  *(this + 51) = v31;
  std::vector<__CLPK_complex>::vector[abi:ne200100](&v30, a3 + 2 * a2);
  v27 = *(this + 52);
  if (v27)
  {
    *(this + 53) = v27;
    operator delete(v27);
  }

  *(this + 26) = v30;
  *(this + 54) = v31;
  std::vector<float>::vector[abi:ne200100](&v30, 5 * v23);
  v28 = *(this + 55);
  if (v28)
  {
    *(this + 56) = v28;
    operator delete(v28);
  }

  result = *&v30;
  *(this + 440) = v30;
  *(this + 57) = v31;
  return result;
}

void MoorePenrose::pseudoInverse(MoorePenrose *this, CLiteMatrix *a2, const CLiteMatrix *a3)
{
  v3 = *a3;
  if (*a3 != *(a2 + 1))
  {
    __assert_rtn("pseudoInverse", "MoorePenrose.cpp", 43, "A.NumRows()==Aplus.NumCols()");
  }

  v5 = *(a3 + 1);
  if (v5 != *a2)
  {
    __assert_rtn("pseudoInverse", "MoorePenrose.cpp", 44, "A.NumCols()==Aplus.NumRows()");
  }

  __lda = *a3;
  __n = v5;
  CLiteMatrix::ToCLPKComplex(a3, this + 40);
  if (v5 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v3 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v3;
  }

  v21 = 0;
  v22 = v8 + 2 * v7;
  __jobu = 65;
  __jobvt = 65;
  cgesvd_(&__jobu, &__jobvt, &__lda, &__n, *(this + 40), &__lda, *(this + 43), *(this + 46), &__lda, *(this + 49), &__n, *(this + 52), &v22, *(this + 55), &v21);
  CLiteMatrix::FromCLPKComplex(this, this + 46);
  CLiteMatrix::FromCLPKComplex(this + 30, this + 49);
  CLiteMatrix::SetWithConjugateTranposeOfOther(this + 25, this + 30);
  v9 = __n;
  if (__n >= __lda)
  {
    v9 = __lda;
  }

  if (v9)
  {
    for (i = 0; i < v16; ++i)
    {
      v11 = *(*(this + 43) + 4 * i);
      LODWORD(CLiteMatrix::Get((this + 80), i, i)->isa) = v11;
      v12 = *(*(this + 43) + 4 * i);
      v13 = fabsf(v12);
      v14 = 1.0 / v12;
      if (v13 >= 0.00000011921)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }

      *&CLiteMatrix::Get((this + 120), i, i)->isa = v15;
      v16 = __n;
      if (__n >= __lda)
      {
        v16 = __lda;
      }
    }
  }

  CLiteMatrix::SetWithConjugateTranposeOfOther(this + 5, this);
  CLiteMatrix::SetWithConjugateTranposeOfOther(this + 20, this + 15);
  CLiteMatrix::MatrixMultiply((this + 200), (this + 160), (this + 280), v17);
  CLiteMatrix::MatrixMultiply((this + 280), (this + 40), a2, v18);
}

void AUSM::printFloatVector(uint64_t a1, float **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::string::reserve(a1, 2 * (a2[1] - *a2) - (a2[1] - *a2));
  v4 = *a2;
  if (*a2 == a2[1])
  {
    v5 = *a2;
  }

  else
  {
    caulk::make_string("%.*f", __p, 3, *v4);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = *__p;
    *(a1 + 16) = v10;
    v4 = *a2;
    v5 = a2[1];
  }

  if (((v5 - v4) & 0x3FFFFFFF8) != 0)
  {
    v6 = 1;
    do
    {
      caulk::make_string(", %.*f", __p, 3, v4[v6]);
      if (v10 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if (v10 >= 0)
      {
        v8 = HIBYTE(v10);
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a1, v7, v8);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      ++v6;
      v4 = *a2;
    }

    while (v6 < ((a2[1] - *a2) >> 2));
  }
}

void sub_1DDCD3130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

void lmsfilt_v5::preemphasisFilter(lmsfilt_v5 *this, const float *a2, float *a3, float *a4, float *a5, unsigned __int8 *a6, const BOOL *a7)
{
  if (a5 >= 1)
  {
    v12 = a2;
    v13 = 4 * a2;
    v14 = a5;
    do
    {
      v15 = *a6++;
      if (v15 == 1)
      {
        lmsfilt_v3::preemphasisFilter(this, a2, a3, a4, a5);
      }

      else
      {
        vDSP_vclr(a4, 1, v12);
        *a3 = 0.0;
      }

      ++a3;
      this = (this + v13);
      a4 = (a4 + v13);
      --v14;
    }

    while (v14);
  }
}

float lmsfilt_v5::deemphasisFilterDuo(lmsfilt_v5 *this, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8)
{
  *a4 = *a2 + (*a3 * 0.9);
  *a7 = *a5 + (*a6 * 0.9);
  if (this >= 2)
  {
    v8 = this - 1;
    v9 = a2 + 1;
    v10 = a5 + 1;
    v11 = a4 + 1;
    v12 = a7 + 1;
    do
    {
      v13 = *v9++;
      *v11 = v13 + (*(v11 - 1) * 0.9);
      ++v11;
      v14 = *v10++;
      *v12 = v14 + (*(v12 - 1) * 0.9);
      ++v12;
      --v8;
    }

    while (v8);
  }

  v15 = 4 * this - 4;
  *a3 = *(a4 + v15);
  result = *(a7 + v15);
  *a6 = result;
  return result;
}

void lmsfilt_v5::initLmsFilter(int a1, int a2, int a3, uint64_t a4, float ***a5, int a6)
{
  v10 = *(a4 + 16);
  __A = 0.0;
  v11 = *(a4 + 44);
  v12 = malloc_type_malloc(0x80uLL, 0xE24562B8uLL);
  if (!v12)
  {
    goto LABEL_42;
  }

  *(v12 + 6) = 0u;
  *(v12 + 7) = 0u;
  *(v12 + 4) = 0u;
  *(v12 + 5) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *a5 = v12;
  *(v12 + 8) = v11;
  *(v12 + 9) = v11 * v10;
  v13 = v11 * v10 * a6;
  *(v12 + 22) = v13;
  *(v12 + 23) = a6;
  v14 = 4 * v13;
  v15 = 4 * v13;
  v16 = malloc_type_malloc(4 * v13, 0xB463BED6uLL);
  if (4 * v13 && v16 == 0)
  {
    goto LABEL_42;
  }

  v18 = v16;
  bzero(v16, v14);
  **a5 = v18;
  v19 = malloc_type_malloc(v14, 0xB4C6083uLL);
  if (v15 && v19 == 0)
  {
    goto LABEL_42;
  }

  v21 = v19;
  bzero(v19, v14);
  (*a5)[1] = v21;
  v22 = malloc_type_malloc(v14, 0xFBC61451uLL);
  if (v15 && v22 == 0)
  {
    goto LABEL_42;
  }

  v24 = v22;
  bzero(v22, v14);
  (*a5)[2] = v24;
  v25 = malloc_type_malloc(v14, 0x2D7A3102uLL);
  if (v15 && v25 == 0)
  {
    goto LABEL_42;
  }

  v27 = v25;
  bzero(v25, v14);
  (*a5)[3] = v27;
  v28 = malloc_type_malloc(v14, 0xDC30E342uLL);
  if (v15 && v28 == 0)
  {
    goto LABEL_42;
  }

  v30 = v28;
  bzero(v28, v14);
  (*a5)[6] = v30;
  vDSP_vfill(&__A, **a5, 1, v13);
  vDSP_vfill(&__A, (*a5)[1], 1, v13);
  vDSP_vfill(&__A, (*a5)[2], 1, v13);
  vDSP_vfill(&__A, (*a5)[3], 1, v13);
  vDSP_vfill(&__A, (*a5)[6], 1, v13);
  v31 = *a5;
  *(v31 + 10) = (1.0 - *(a4 + 92)) + (1.0 - *(a4 + 92));
  *(v31 + 11) = 1;
  v31[7] = 0;
  *(v31 + 16) = 0;
  *(v31 + 17) = a1;
  *(v31 + 18) = 0;
  *(v31 + 19) = v11 - 1;
  v32 = a3 / v10;
  if (a3 / v10 >= v11)
  {
    v32 = v11;
  }

  v33 = (a3 - a2) / v10;
  *(v31 + 20) = v33;
  *(v31 + 21) = v32;
  if (v32 - v33 <= 1)
  {
    if (v11 == 4)
    {
      v34 = -1;
    }

    else
    {
      v34 = 0;
    }

    if (v11 > 4)
    {
      v34 = -2;
    }

    *(v31 + 20) = v32 + v34;
  }

  if (*(a4 + 178) == 1)
  {
    v35 = 4 * v11 * v10;
    v36 = malloc_type_malloc(v35, 0x1700522CuLL);
    v37 = v36;
    if (v36 || !v11)
    {
      bzero(v36, v35);
      (*a5)[12] = v37;
      v38 = malloc_type_malloc(v35, 0x3B2CBFEBuLL);
      v39 = v38;
      if (v38 || !v11)
      {
        bzero(v38, v35);
        (*a5)[13] = v39;
        v40 = malloc_type_malloc(v35, 0x139896E8uLL);
        v41 = v40;
        if (v40 || !v11)
        {
          bzero(v40, v35);
          (*a5)[14] = v41;
          v42 = *(a4 + 128);
          v43 = malloc_type_malloc(4 * v42, 0x54EFB5F5uLL);
          v44 = v43;
          if (!v42 || v43)
          {
            bzero(v43, 4 * v42);
            (*a5)[15] = v44;
            return;
          }
        }
      }
    }

LABEL_42:
    exception = __cxa_allocate_exception(8uLL);
    v46 = std::bad_alloc::bad_alloc(exception);
  }
}

void lmsfilt_v5::removeLmsFilter(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*v2)
      {
        free(*v2);
        *v2 = 0;
        v2 = *a1;
      }

      v3 = *(v2 + 8);
      if (v3)
      {
        free(v3);
        *(v2 + 8) = 0;
        v2 = *a1;
      }

      v4 = *(v2 + 16);
      if (v4)
      {
        free(v4);
        *(v2 + 16) = 0;
        v2 = *a1;
      }

      v5 = *(v2 + 24);
      if (v5)
      {
        free(v5);
        *(v2 + 24) = 0;
        v2 = *a1;
      }

      v6 = *(v2 + 48);
      if (v6)
      {
        free(v6);
        *(v2 + 48) = 0;
        v2 = *a1;
      }

      v7 = *(v2 + 96);
      if (v7)
      {
        free(v7);
        *(v2 + 96) = 0;
        v2 = *a1;
      }

      v8 = *(v2 + 104);
      if (v8)
      {
        free(v8);
        *(v2 + 104) = 0;
        v2 = *a1;
      }

      v9 = *(v2 + 112);
      if (v9)
      {
        free(v9);
        *(v2 + 112) = 0;
        v2 = *a1;
      }

      v10 = *(v2 + 120);
      if (!v10 || (free(v10), *(v2 + 120) = 0, (v2 = *a1) != 0))
      {
        free(v2);
        *a1 = 0;
      }
    }
  }
}

void lmsfilt_v5::runLmsFilter_v5(DSPSplitComplex *this, DSPSplitComplex *a2, DSPSplitComplex *a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, float *a8, float *a9, float *a10, int *a11, unsigned __int8 *a12, float **a13, _DWORD *a14, char a15, uint64_t a16, const BOOL *a17, DSPSplitComplex *a18, const unsigned int *a19, BOOL a20)
{
  v27 = a10;
  v28 = a3;
  vDSP_vclr(a2->realp, 1, a3);
  vDSP_vclr(a2->imagp, 1, v28);
  vDSP_vclr(*a13, 1, v28);
  v43 = a13;
  vDSP_vclr(a13[1], 1, v28);
  if (a10 < 2)
  {
    LODWORD(v42) = HIDWORD(a9);
    lmsfilt_v3::runLmsFilter_v3(this, a3, a4, a5, a6, a7, a8, a9, v42, a13, v44[0], v44[1]);
    memcpy(a2->realp, this->realp, 4 * v28);
    imagp = a2->imagp;
    v41 = this->imagp;

    memcpy(imagp, v41, 4 * v28);
  }

  else
  {
    v46 = a2;
    v29 = 0;
    v48 = 4 * a11;
    v49 = SHIDWORD(a10);
    v30 = a3;
    v31 = v28;
    v33 = HIDWORD(a9);
    v32 = a9;
    v34 = a7;
    v35 = a6;
    v50 = this;
    *v45 = v30;
    do
    {
      v36 = *a12++;
      v54 = v34;
      v37 = this->imagp;
      v38 = &this->realp[v29];
      v39 = &v37[v29];
      v51 = v35;
      if (v36 == 1)
      {
        v55.realp = v38;
        v55.imagp = &v37[v29];
        LODWORD(v42) = v33;
        lmsfilt_v3::runLmsFilter_v3(&v55, v30, a4, a5, v35, v34, a8, v32, v42, v43, v45[0], v45[1]);
        MEMORY[0x1E12BE5D0](v38, 1, v46->realp, 1, v46->realp, 1, v31);
        v30 = *v45;
        MEMORY[0x1E12BE5D0](v39, 1, v46->imagp, 1, v46->imagp, 1, v31);
        if (a15)
        {
          if (!*a14)
          {
            MEMORY[0x1E12BE5D0](v38, 1, *v43, 1, *v43, 1, v28);
            MEMORY[0x1E12BE5D0](v39, 1, *(v43 + 1), 1, *(v43 + 1), 1, v28);
          }
        }
      }

      else
      {
        vDSP_vclr(v38, 1, v31);
        vDSP_vclr(v39, 1, v31);
      }

      ++a14;
      v34 = &v54[v49];
      v31 = v28;
      v35 = v51 + v49 * 4;
      a5 += v48;
      a4 += v48;
      v29 += v28;
      --v27;
      this = v50;
      v33 = HIDWORD(a9);
      v32 = a9;
    }

    while (v27);
  }
}

void lmsfilt_v5::resetLmsFilter(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 36);
    if (v3 >= 1)
    {
      v5 = *(a2 + 92);
      v6 = *(a2 + 32);
      __A = 0.0;
      vDSP_vfill(&__A, *a2, 1, v5 * v3);
      vDSP_vfill(&__A, *(a2 + 8), 1, v5 * v3);
      vDSP_vfill(&__A, *(a2 + 16), 1, v5 * v3);
      vDSP_vfill(&__A, *(a2 + 24), 1, v5 * v3);
      vDSP_vfill(&__A, *(a2 + 48), 1, v5 * v3);
      v7 = *a1;
      *(a2 + 40) = (1.0 - *(*a1 + 92)) + (1.0 - *(*a1 + 92));
      *(a2 + 44) = 1;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 76) = v6 - 1;
      v8 = *(a2 + 84);
      if (v8 > v6)
      {
        *(a2 + 84) = v6;
        v8 = v6;
      }

      if (v8 - *(a2 + 80) <= 1)
      {
        if (v6 == 4)
        {
          v9 = -1;
        }

        else
        {
          v9 = 0;
        }

        if (v6 > 4)
        {
          v9 = -2;
        }

        *(a2 + 80) = v8 + v9;
      }

      if (*(v7 + 178) == 1)
      {
        vDSP_vfill(&__A, *(a2 + 96), 1, v3);
        vDSP_vfill(&__A, *(a2 + 104), 1, v3);
        vDSP_vfill(&__A, *(a2 + 112), 1, v3);
        vDSP_vfill(&__A, *(a2 + 120), 1, v5);
      }
    }
  }
}

__CFString *AUToneMeisterParameterImporter::importParameters(DspLib::ToneMeister::Algorithm **this, NSDictionary *a2, char *a3, BOOL *a4)
{
  v365 = *MEMORY[0x1E69E9840];
  v5 = a2;
  *a3 = 1;
  v316 = v5;
  v6 = [(NSDictionary *)v316 objectForKeyedSubscript:@"Filters"];
  *a3 = 1;
  v339 = v6;
  if (v6)
  {
    v7 = [(NSDictionary *)v316 objectForKeyedSubscript:@"Global"];
    v8 = v7;
    *a3 = 1;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"Channels"];
      if (v9)
      {
        v361 = 0u;
        v362 = 0u;
        v359 = 0u;
        v360 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v359 objects:v364 count:16];
        if (v11)
        {
          v12 = *v360;
          v13 = &stru_1F593E800;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v360 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v359 + 1) + 8 * i) substringFromIndex:2];
              v16 = [v15 integerValue];

              v17 = *(this + 2);
              if (v16 > v17)
              {
                *a3 = 0;
                v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempting to assign a global parameter to channel %ld but AU was created with only %u channels\n", v16, v17];
                goto LABEL_18;
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v359 objects:v364 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v13 = &stru_1F593E800;
        }

LABEL_18:
      }

      else
      {
        *a3 = 0;
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not find key :%@", @"Channels"];
      }
    }

    else
    {
      v13 = &stru_1F593E800;
    }

    if (*a3 == 1)
    {
      v352 = 0u;
      v353 = 0u;
      v350 = 0u;
      v351 = 0u;
      obj = v339;
      v18 = [obj countByEnumeratingWithState:&v350 objects:&v359 count:16];
      v19 = 0;
      if (!v18)
      {
        goto LABEL_155;
      }

      v335 = *v351;
      while (1)
      {
        v342 = 0;
        v337 = v19;
        v329 = (v19 + v18);
        v331 = v18;
        do
        {
          if (*v351 != v335)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v350 + 1) + 8 * v342);
          v21 = [v20 objectForKeyedSubscript:@"Type"];
          *a3 = 1;
          v22 = AUToneMeisterParameterImporter::filterTypeStrings(v21);
          v23 = [v22 containsObject:v21];

          v24 = &stru_1F593E800;
          if ((v23 & 1) == 0)
          {
            *a3 = 0;
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown filter type: %@\n", v21];
          }

          if ((*a3 & 1) == 0)
          {
LABEL_152:
            v19 = v337;
            v13 = v24;
            goto LABEL_155;
          }

          v25 = v20;
          v26 = AUToneMeisterParameterImporter::filterTypeStrings(v25);
          v27 = [(AUToneMeisterParameterImporter *)v25 objectForKeyedSubscript:@"Type"];
          v28 = [v26 indexOfObject:v27];

          *a3 = 1;
          if (DspLib::ToneMeister::Parameters::filterTypeHasFrequency(v28))
          {
            if (v28 != 2)
            {
              if (!v28)
              {
                v29 = [(AUToneMeisterParameterImporter *)v25 objectForKeyedSubscript:@"Frequency"];
                *a3 = 1;
                if ([v29 count] != 4)
                {
                  *a3 = 0;
                  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Frequency array has %lu elements, should have 4\n", objc_msgSend(v29, "count")];
                  goto LABEL_65;
                }

                v30 = [v29 objectAtIndex:0];
                [v30 floatValue];
                v32 = v31;

                v33 = [v29 objectAtIndex:1];
                [v33 floatValue];
                v35 = v34;

                v36 = [v29 objectAtIndex:2];
                [v36 floatValue];
                v38 = v37;

                v39 = [v29 objectAtIndex:3];
                [v39 floatValue];
                v41 = v40;

                if (v32 < 20.0)
                {
                  v42 = 20.0;
                  v43 = @"Frequency 0 of %f less than minimum (%f)\n";
                  goto LABEL_64;
                }

                v43 = @"Frequency 0 of %f greater than maximum (%f)\n";
                v42 = 20000.0;
                if (v32 > 20000.0)
                {
                  goto LABEL_64;
                }

                if (v35 < -30.0)
                {
                  v32 = v35;
                  v43 = @"Frequency 1 of %f less than minimum (%f)\n";
                  goto LABEL_56;
                }

                v32 = v35;
                v43 = @"Frequency 1 of %f greater than maximum (%f)\n";
                v42 = 20000.0;
                if (v35 > 20000.0)
                {
                  goto LABEL_64;
                }

                if (v38 < -30.0)
                {
                  v32 = v38;
                  v43 = @"Frequency 2 of %f less than minimum (%f)\n";
LABEL_56:
                  v42 = -30.0;
                  goto LABEL_64;
                }

                v32 = v38;
                v43 = @"Frequency 2 of %f greater than maximum (%f)\n";
                v42 = 20000.0;
                if (v38 > 20000.0)
                {
                  goto LABEL_64;
                }

                if (v41 < -180.0)
                {
                  v32 = v41;
                  v43 = @"Frequency 3 of %f less than minimum (%f)\n";
                  v42 = -180.0;
                  goto LABEL_64;
                }

                v32 = v41;
                v43 = @"Frequency 3 of %f greater than maximum (%f)\n";
                v42 = 20000.0;
                v13 = &stru_1F593E800;
                if (v41 > 20000.0)
                {
LABEL_64:
                  *a3 = 0;
                  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:v43, v32, *&v42];
LABEL_65:
                  v13 = v60;
                }

                v64 = *a3;
                if (*a3)
                {
                  v65 = v13;
                }

                else
                {
                  v65 = 0;
                }

LABEL_69:

                if ((v64 & 1) == 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_70;
              }

              v53 = [(AUToneMeisterParameterImporter *)v25 objectForKeyedSubscript:@"Frequency"];
              v54 = v53;
              *a3 = 1;
              if (v53)
              {
                [v53 floatValue];
                if (v55 < 20.0)
                {
                  *a3 = 0;
                  v56 = MEMORY[0x1E696AEC0];
                  [v54 floatValue];
                  v58 = 20.0;
                  v59 = @"Frequency of %f less than minimum (%f)\n";
                  goto LABEL_45;
                }

                [v54 floatValue];
                v13 = &stru_1F593E800;
                if (v63 > 20000.0)
                {
                  *a3 = 0;
                  v56 = MEMORY[0x1E696AEC0];
                  [v54 floatValue];
                  v59 = @"Frequency of %f greater than maximum (%f)\n";
                  v58 = 20000.0;
LABEL_45:
                  v62 = [v56 stringWithFormat:v59, v57, *&v58];
LABEL_46:
                  v13 = v62;
                }

                v64 = *a3;
                if (*a3)
                {
                  v65 = v13;
                }

                else
                {
                  v65 = 0;
                }

                goto LABEL_69;
              }

              *a3 = 0;
              v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing key: %@\n", @"Frequency"];
              goto LABEL_46;
            }

            v44 = [(AUToneMeisterParameterImporter *)v25 objectForKeyedSubscript:@"Frequency"];
            *a3 = 1;
            if ([v44 count] == 2)
            {
              v45 = [v44 objectAtIndex:0];
              [v45 floatValue];
              v47 = v46;

              v48 = [v44 objectAtIndex:1];
              [v48 floatValue];
              v50 = v49;

              if (v47 < 20.0)
              {
                v51 = 20.0;
                v52 = @"Frequency 0 of %f less than minimum (%f)\n";
                goto LABEL_58;
              }

              v52 = @"Frequency 0 of %f greater than maximum (%f)\n";
              v51 = 20000.0;
              if (v47 > 20000.0)
              {
                goto LABEL_58;
              }

              if (v50 < -30.0)
              {
                v51 = -30.0;
                v47 = v50;
                v52 = @"Frequency 1 of %f less than minimum (%f)\n";
                goto LABEL_58;
              }

              v47 = v50;
              v52 = @"Frequency 1 of %f greater than maximum (%f)\n";
              v51 = 20000.0;
              v13 = &stru_1F593E800;
              if (v50 > 20000.0)
              {
LABEL_58:
                *a3 = 0;
                v61 = [MEMORY[0x1E696AEC0] stringWithFormat:v52, v47, *&v51];
LABEL_59:
                v13 = v61;
              }

              v64 = *a3;
              if (*a3)
              {
                v65 = v13;
              }

              else
              {
                v65 = 0;
              }

              goto LABEL_69;
            }

            *a3 = 0;
            v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Frequency array has %lu elements but should have 2\n", objc_msgSend(v44, "count")];
            goto LABEL_59;
          }

LABEL_70:
          v13 = &stru_1F593E800;
LABEL_71:

          if (*a3 != 1)
          {
            goto LABEL_153;
          }

          v66 = v25;
          v67 = AUToneMeisterParameterImporter::filterTypeStrings(v66);
          v68 = [(AUToneMeisterParameterImporter *)v66 objectForKeyedSubscript:@"Type"];
          v69 = [v67 indexOfObject:v68];

          v70 = DspLib::ToneMeister::Parameters::categoryOfFilterType(v69);
          *a3 = 1;
          v71 = &stru_1F593E800;
          if (DspLib::ToneMeister::Parameters::filterTypeHasGain(v69))
          {
            if (v70 == 4)
            {
              v72 = [(AUToneMeisterParameterImporter *)v66 objectForKeyedSubscript:@"GainRange"];
              if (v72)
              {
                goto LABEL_77;
              }

              v73 = @"GainRange";
            }

            else
            {
              v72 = [(AUToneMeisterParameterImporter *)v66 objectForKeyedSubscript:@"Gain"];
              if (v72)
              {
LABEL_77:
                [v72 floatValue];
                if (v74 < -30.0)
                {
                  *a3 = 0;
                  v75 = MEMORY[0x1E696AEC0];
                  [v72 floatValue];
                  v77 = -30.0;
                  v78 = @"Gain of %f less than minimum (%f)\n";
                  goto LABEL_81;
                }

                [v72 floatValue];
                if (v79 > 30.0)
                {
                  *a3 = 0;
                  v75 = MEMORY[0x1E696AEC0];
                  [v72 floatValue];
                  v77 = 30.0;
                  v78 = @"Gain of %f greater than maximum (%f)\n";
LABEL_81:
                  v71 = [v75 stringWithFormat:v78, v76, *&v77];
                }

                goto LABEL_85;
              }

              v73 = @"Gain";
            }

            *a3 = 0;
            v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing key: %@\n", v73];
          }

LABEL_85:

          if (*a3 != 1)
          {
            v19 = v337;
            v13 = v71;
            goto LABEL_155;
          }

          v80 = v66;
          v81 = AUToneMeisterParameterImporter::filterTypeStrings(v80);
          v82 = [(AUToneMeisterParameterImporter *)v80 objectForKeyedSubscript:@"Type"];
          v83 = [v81 indexOfObject:v82];

          *a3 = 1;
          v24 = &stru_1F593E800;
          if (DspLib::ToneMeister::Parameters::filterTypeHasOrder(v83))
          {
            v84 = [(AUToneMeisterParameterImporter *)v80 objectForKeyedSubscript:@"Order"];
            v85 = v84;
            if (v84)
            {
              [v84 floatValue];
              if (v86 < -30.0)
              {
                *a3 = 0;
                v87 = MEMORY[0x1E696AEC0];
                [v85 floatValue];
                v89 = -30.0;
                v90 = @"Order of %f less than minimum (%f)\n";
                goto LABEL_93;
              }

              [v85 floatValue];
              if (v92 > 20000.0)
              {
                *a3 = 0;
                v87 = MEMORY[0x1E696AEC0];
                [v85 floatValue];
                v90 = @"Order of %f greater than maximum (%f)\n";
                v89 = 20000.0;
LABEL_93:
                v91 = [v87 stringWithFormat:v90, v88, *&v89];
LABEL_94:
                v24 = v91;
              }

              goto LABEL_96;
            }

            *a3 = 0;
            v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing key: %@\n", @"Order"];
            goto LABEL_94;
          }

LABEL_96:

          if (*a3 != 1)
          {
            goto LABEL_152;
          }

          v93 = v80;
          v94 = AUToneMeisterParameterImporter::filterTypeStrings(v93);
          v95 = [(AUToneMeisterParameterImporter *)v93 objectForKeyedSubscript:@"Type"];
          v96 = [v94 indexOfObject:v95];

          *a3 = 1;
          v13 = &stru_1F593E800;
          if (DspLib::ToneMeister::Parameters::filterTypeHasQuality(v96))
          {
            v97 = [(AUToneMeisterParameterImporter *)v93 objectForKeyedSubscript:@"Quality"];
            v98 = v97;
            if (v97)
            {
              [v97 floatValue];
              if (v99 >= -30.0 || (v100 = [v98 floatValue], DspLib::isEqual(v100, v101, -30.0, 1.0e-20)))
              {
                [v98 floatValue];
                if (v102 > 20000.0)
                {
                  v103 = [v98 floatValue];
                  if (!DspLib::isEqual(v103, v104, 20000.0, 1.0e-20))
                  {
                    v105 = MEMORY[0x1E696AEC0];
                    [v98 floatValue];
                    v107 = 20000.0;
                    goto LABEL_106;
                  }
                }

LABEL_108:

                goto LABEL_109;
              }

              v105 = MEMORY[0x1E696AEC0];
              [v98 floatValue];
              v107 = -30.0;
LABEL_106:
              v108 = [v105 stringWithFormat:@"Quality of %f clamped to %f.", v106, *&v107];
            }

            else
            {
              *a3 = 0;
              v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing key: %@\n", @"Quality"];
            }

            v13 = v108;
            goto LABEL_108;
          }

LABEL_109:

          if (*a3 != 1)
          {
            goto LABEL_153;
          }

          v109 = [(AUToneMeisterParameterImporter *)v93 objectForKeyedSubscript:@"Channels"];
          v110 = v109;
          *a3 = 1;
          if (v109)
          {
            v356 = 0u;
            v357 = 0u;
            v354 = 0u;
            v355 = 0u;
            v111 = v109;
            v112 = [v111 countByEnumeratingWithState:&v354 objects:v364 count:16];
            if (v112)
            {
              v113 = *v355;
              while (2)
              {
                for (j = 0; j != v112; ++j)
                {
                  if (*v355 != v113)
                  {
                    objc_enumerationMutation(v111);
                  }

                  v115 = [*(*(&v354 + 1) + 8 * j) substringFromIndex:2];
                  v116 = [v115 integerValue];

                  if (!v116)
                  {
                    *a3 = 0;
                    v24 = @"channel number = 0, but channel enumeration starts with channel 1";
                    goto LABEL_125;
                  }

                  v117 = *(this + 2);
                  if (v116 > v117)
                  {
                    *a3 = 0;
                    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempting to assing a filter to channel: %ld, but only %d channels are available", v116, v117];
                    goto LABEL_125;
                  }
                }

                v112 = [v111 countByEnumeratingWithState:&v354 objects:v364 count:16];
                v24 = &stru_1F593E800;
                if (v112)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v24 = &stru_1F593E800;
            }

LABEL_125:
          }

          else
          {
            *a3 = 0;
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing key %@", @"Channels"];
          }

          if (*a3 != 1)
          {
            goto LABEL_152;
          }

          v118 = v93;
          v119 = AUToneMeisterParameterImporter::filterTypeStrings(v118);
          v120 = [(AUToneMeisterParameterImporter *)v118 objectForKeyedSubscript:@"Type"];
          v121 = [v119 indexOfObject:v120];

          v122 = DspLib::ToneMeister::Parameters::categoryOfFilterType(v121);
          *a3 = 1;
          v13 = &stru_1F593E800;
          if (v122 == 4)
          {
            v363[0] = @"attackTime";
            v363[1] = @"releaseTime";
            v363[2] = @"enableAttackRelease";
            v363[3] = @"Threshold";
            v363[4] = @"Ratio";
            v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:v363 count:5];
            v356 = 0u;
            v357 = 0u;
            v354 = 0u;
            v355 = 0u;
            v124 = v123;
            v125 = [v124 countByEnumeratingWithState:&v354 objects:v364 count:16];
            if (v125)
            {
              v126 = *v355;
              while (2)
              {
                for (k = 0; k != v125; ++k)
                {
                  if (*v355 != v126)
                  {
                    objc_enumerationMutation(v124);
                  }

                  v128 = *(*(&v354 + 1) + 8 * k);
                  v129 = [(AUToneMeisterParameterImporter *)v118 objectForKeyedSubscript:v128];
                  v130 = v129 == 0;

                  if (v130)
                  {
                    *a3 = 0;
                    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error dynamic EQ: missing key '%@' ", v128];
                    goto LABEL_138;
                  }
                }

                v125 = [v124 countByEnumeratingWithState:&v354 objects:v364 count:16];
                if (v125)
                {
                  continue;
                }

                break;
              }

              v13 = &stru_1F593E800;
            }

LABEL_138:
          }

          if (*a3 != 1)
          {
LABEL_153:
            v19 = v337;
            goto LABEL_155;
          }

          ++v337;
          v342 = (v342 + 1);
        }

        while (v342 != v331);
        v18 = [obj countByEnumeratingWithState:&v350 objects:&v359 count:16];
        v19 = v329;
        if (!v18)
        {
LABEL_155:
          v131 = v19;

          if (*a3)
          {
            v315 = &stru_1F593E800;
          }

          else
          {
            v132 = @"nil message";
            if (v13)
            {
              v132 = v13;
            }

            v315 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error for filter %d: %@", v131, v132];
          }

          goto LABEL_161;
        }
      }
    }

    v315 = v13;
  }

  else
  {
    *a3 = 0;
    v315 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing key: %@\n", @"Filters"];
  }

LABEL_161:

  if (*a3 != 1)
  {
    v136 = v315;
    goto LABEL_284;
  }

  v133 = 0;
  v134 = 1023;
  do
  {
    if (DspLib::ToneMeister::Algorithm::filterIsEnabled(*this, v133))
    {
      v134 &= ~(1 << DspLib::ToneMeister::Algorithm::filterGroup(*this, v133));
    }

    v133 = (v133 + 1);
  }

  while (v133 != 50);
  v135 = 0;
  while (((v134 >> v135) & 1) == 0)
  {
    if (++v135 == 10)
    {
      goto LABEL_192;
    }
  }

  v137 = [MEMORY[0x1E696AD98] numberWithInt:?];
  if (!v137)
  {
LABEL_192:
    v158 = 0;
    *a3 = 0;
    v136 = @"Error: No group available for filter import. Please free up one group.";
    goto LABEL_283;
  }

  v317 = v137;
  v319 = [MEMORY[0x1E695DF70] array];
  v138 = 0;
  do
  {
    if (!DspLib::ToneMeister::Algorithm::filterIsEnabled(*this, v138))
    {
      v139 = [MEMORY[0x1E696AD98] numberWithInteger:v138];
      [v319 addObject:v139];
    }

    v138 = (v138 + 1);
  }

  while (v138 != 50);
  if (![v319 count])
  {
    *a3 = 0;
    v136 = @"Error: Not a single filter is available for import. Please free up filters.";
    goto LABEL_282;
  }

  v314 = [(NSDictionary *)v316 objectForKeyedSubscript:@"Global"];
  v140 = [v314 objectForKeyedSubscript:@"InputGain"];
  v141 = v140;
  if (v140)
  {
    [v140 floatValue];
    if (v142 != (*(**this + 104))(*this, 4))
    {
      [v141 floatValue];
      (*(**this + 120))(*this, 4);
    }
  }

  v343 = v314;
  v143 = [v343 objectForKeyedSubscript:@"Channels"];
  v144 = v143;
  if (v143)
  {
    v361 = 0u;
    v362 = 0u;
    v359 = 0u;
    v360 = 0u;
    v340 = v143;
    v145 = v143;
    v146 = [v145 countByEnumeratingWithState:&v359 objects:v364 count:16];
    if (v146)
    {
      v147 = 0;
      v148 = *v360;
      do
      {
        for (m = 0; m != v146; ++m)
        {
          if (*v360 != v148)
          {
            objc_enumerationMutation(v145);
          }

          v150 = *(*(&v359 + 1) + 8 * m);
          v151 = [v145 objectForKeyedSubscript:v150];
          v152 = [v150 substringFromIndex:2];
          v153 = [v152 integerValue];

          v154 = [v151 objectForKeyedSubscript:@"Mute"];
          v155 = [v154 BOOLValue];

          if (v155)
          {
            v156 = 1 << (v153 - 1);
          }

          else
          {
            v156 = 0;
          }

          v147 |= v156;
        }

        v146 = [v145 countByEnumeratingWithState:&v359 objects:v364 count:16];
      }

      while (v146);
      v157 = v147;
    }

    else
    {
      v157 = 0.0;
    }

    v144 = v340;
  }

  else
  {
    v157 = 0.0;
  }

  (*(**this + 120))(*this, 12, v157);

  v313 = v343;
  v159 = [v313 objectForKeyedSubscript:@"Channels"];
  v160 = v159;
  if (v159)
  {
    v361 = 0u;
    v362 = 0u;
    v359 = 0u;
    v360 = 0u;
    v344 = v159;
    v161 = v159;
    v162 = [v161 countByEnumeratingWithState:&v359 objects:v364 count:16];
    if (v162)
    {
      v163 = 0;
      v164 = *v360;
      do
      {
        for (n = 0; n != v162; ++n)
        {
          if (*v360 != v164)
          {
            objc_enumerationMutation(v161);
          }

          v166 = *(*(&v359 + 1) + 8 * n);
          v167 = [v161 objectForKeyedSubscript:v166];
          v168 = [v166 substringFromIndex:2];
          v169 = [v168 integerValue];

          v170 = [v167 objectForKeyedSubscript:@"PhaseFlip"];
          v171 = [v170 BOOLValue];

          if (v171)
          {
            v172 = 1 << (v169 - 1);
          }

          else
          {
            v172 = 0;
          }

          v163 |= v172;
        }

        v162 = [v161 countByEnumeratingWithState:&v359 objects:v364 count:16];
      }

      while (v162);
      v173 = v163;
    }

    else
    {
      v173 = 0.0;
    }

    v160 = v344;
  }

  else
  {
    v173 = 0.0;
  }

  (*(**this + 120))(*this, 10, v173);

  [(NSDictionary *)v316 objectForKeyedSubscript:@"Filters"];
  v348 = 0u;
  v349 = 0u;
  v346 = 0u;
  v318 = v347 = 0u;
  v174 = [v318 countByEnumeratingWithState:&v346 objects:v358 count:16];
  if (!v174)
  {
    v321 = 0;
    goto LABEL_279;
  }

  v324 = 0;
  v320 = *v347;
  v321 = 0;
  do
  {
    v330 = 0;
    v322 = v174;
    do
    {
      if (*v347 != v320)
      {
        objc_enumerationMutation(v318);
      }

      v175 = *(*(&v346 + 1) + 8 * v330);
      v176 = [v175 objectForKeyedSubscript:@"Active"];
      v177 = [v176 BOOLValue];

      if (!v177)
      {
        v321 = (v321 + 1);
        goto LABEL_275;
      }

      v178 = [v319 objectAtIndexedSubscript:v324];
      v327 = [v178 integerValue];

      v179 = [v175 objectForKeyedSubscript:@"Active"];
      v180 = [v179 BOOLValue];

      v182 = AUToneMeisterParameterImporter::filterTypeStrings(v181);
      v183 = [v175 objectForKeyedSubscript:@"Type"];
      v326 = [v182 indexOfObject:v183];

      v323 = DspLib::ToneMeister::Parameters::categoryOfFilterType(v326);
      v325 = [v175 objectForKeyedSubscript:@"automation"];
      LODWORD(v182) = [v317 intValue];
      v184 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 9);
      (*(**this + 120))(*this, v184, v182);
      v185 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 0);
      if (v180)
      {
        v186.n128_f32[0] = 3.0;
      }

      else
      {
        v186.n128_f32[0] = 1.0;
      }

      (*(**this + 120))(*this, v185, v186);
      v187 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 1);
      (*(**this + 120))(*this, v187, v326);
      v328 = v175;
      v188 = AUToneMeisterParameterImporter::filterTypeStrings(v328);
      v189 = [(AUToneMeisterParameterImporter *)v328 objectForKeyedSubscript:@"Type"];
      v338 = [v188 indexOfObject:v189];

      v336 = DspLib::ToneMeister::Parameters::categoryOfFilterType(v338);
      v190 = [(AUToneMeisterParameterImporter *)v328 objectForKeyedSubscript:@"Channels"];
      v361 = 0u;
      v362 = 0u;
      v359 = 0u;
      v360 = 0u;
      v341 = v190;
      v191 = [v341 countByEnumeratingWithState:&v359 objects:v364 count:16];
      if (v191)
      {
        v192 = 0;
        v193 = 0;
        obja = *v360;
        do
        {
          for (ii = 0; ii != v191; ++ii)
          {
            if (*v360 != obja)
            {
              objc_enumerationMutation(v341);
            }

            v195 = *(*(&v359 + 1) + 8 * ii);
            v345 = [v341 objectForKeyedSubscript:v195];
            v196 = [v195 substringFromIndex:2];
            v197 = [v196 integerValue];

            v198 = &kDspLibToneMeisterPlistKey_LowPass;
            if (v336 != 5)
            {
              v198 = &kDspLibToneMeisterPlistKey_Filter;
            }

            v199 = &kDspLibToneMeisterPlistKey_PhaseCompensate;
            if (v336 == 5)
            {
              v199 = &kDspLibToneMeisterPlistKey_HighPass;
            }

            if (v336 == 4)
            {
              v198 = &kDspLibToneMeisterPlistKey_Filter;
              v199 = &kDspLibToneMeisterPlistKey_SideChain;
            }

            if (v338 == 10)
            {
              v198 = &kDspLibToneMeisterPlistKey_ChannelA;
              v200 = &kDspLibToneMeisterPlistKey_ChannelB;
            }

            else
            {
              v200 = v199;
            }

            v201 = *v198;
            v202 = *v200;
            v203 = [v345 objectForKeyedSubscript:v201];
            v204 = [v203 BOOLValue];

            v205 = 1 << (v197 - 1);
            if (v204)
            {
              v206 = 1 << (v197 - 1);
            }

            else
            {
              v206 = 0;
            }

            v207 = [v345 objectForKeyedSubscript:v202];
            v208 = [v207 BOOLValue];

            if (v208)
            {
              v209 = v205;
            }

            else
            {
              v209 = 0;
            }

            v193 |= v206;
            v192 |= v209;
          }

          v191 = [v341 countByEnumeratingWithState:&v359 objects:v364 count:16];
        }

        while (v191);
        v210 = v193;
        v211 = v192;
      }

      else
      {
        v211 = 0.0;
        v210 = 0.0;
      }

      v212 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 7);
      (*(**this + 120))(*this, v212, v210);
      v213 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 8);
      (*(**this + 120))(*this, v213, v211);

      if (DspLib::ToneMeister::Parameters::filterTypeHasQuality(v326))
      {
        v214 = [(AUToneMeisterParameterImporter *)v328 objectForKeyedSubscript:@"Quality"];
        [v214 floatValue];
        v216 = v215;
        v217 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 4);
        (*(**this + 120))(*this, v217, v216);
      }

      HasGain = DspLib::ToneMeister::Parameters::filterTypeHasGain(v326);
      if (v323 == 4)
      {
        v219 = HasGain;
      }

      else
      {
        v219 = 1;
      }

      if (v219 == 1)
      {
        v220 = [(AUToneMeisterParameterImporter *)v328 objectForKeyedSubscript:@"Gain"];
        [v220 floatValue];
        v222 = v221;
        v223 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 2);
        (*(**this + 120))(*this, v223, v222);
      }

      if (DspLib::ToneMeister::Parameters::filterTypeHasOrder(v326))
      {
        v224 = [(AUToneMeisterParameterImporter *)v328 objectForKeyedSubscript:@"Order"];
        [v224 floatValue];
        v226 = v225;
        v227 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 5);
        (*(**this + 120))(*this, v227, v226);
      }

      if (DspLib::ToneMeister::Parameters::filterTypeHasFrequency(v326))
      {
        v228 = v328;
        v229 = AUToneMeisterParameterImporter::filterTypeStrings(v228);
        v230 = [(AUToneMeisterParameterImporter *)v228 objectForKeyedSubscript:@"Type"];
        v231 = [v229 indexOfObject:v230];

        if (v231 == 2)
        {
          v232 = [(AUToneMeisterParameterImporter *)v228 objectForKeyedSubscript:@"Frequency"];
          v249 = [v232 objectAtIndexedSubscript:0];
          [v249 floatValue];
          v251 = v250;
          v252 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 3);
          (*(**this + 120))(*this, v252, v251);

          v245 = [v232 objectAtIndexedSubscript:1];
          [v245 floatValue];
          v254 = v253;
          v255 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 4);
          (*(**this + 120))(*this, v255, v254);
LABEL_260:
        }

        else
        {
          if (!v231)
          {
            v232 = [(AUToneMeisterParameterImporter *)v228 objectForKeyedSubscript:@"Frequency"];
            v233 = [v232 objectAtIndexedSubscript:0];
            [v233 floatValue];
            v235 = v234;
            v236 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 3);
            (*(**this + 120))(*this, v236, v235);

            v237 = [v232 objectAtIndexedSubscript:1];
            [v237 floatValue];
            v239 = v238;
            v240 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 4);
            (*(**this + 120))(*this, v240, v239);

            v241 = [v232 objectAtIndexedSubscript:2];
            [v241 floatValue];
            v243 = v242;
            v244 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 5);
            (*(**this + 120))(*this, v244, v243);

            v245 = [v232 objectAtIndexedSubscript:3];
            [v245 floatValue];
            v247 = v246;
            v248 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 6);
            (*(**this + 120))(*this, v248, v247);
            goto LABEL_260;
          }

          v232 = [(AUToneMeisterParameterImporter *)v228 objectForKeyedSubscript:@"Frequency"];
          [v232 floatValue];
          v257 = v256;
          v258 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 3);
          (*(**this + 120))(*this, v258, v257);
        }
      }

      if (v326 == 10)
      {
        v259 = [(AUToneMeisterParameterImporter *)v328 objectForKeyedSubscript:@"Phase"];
        [v259 floatValue];
        v261 = v260;
        v262 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 6);
        (*(**this + 120))(*this, v262, v261);
      }

      if ([v325 count])
      {
        v263 = v325;
        v264 = [v263 objectForKeyedSubscript:@"state"];
        v265 = 0;
        while (1)
        {
          v266 = [MEMORY[0x1E696AEC0] stringWithCString:_ZGRN6DspLib11ToneMeister10ParametersL26kAutomatedFilterStateNamesE__4479[v265] encoding:4];
          v267 = [v264 isEqualToString:v266];

          if (v267)
          {
            break;
          }

          if (++v265 == 3)
          {
            goto LABEL_271;
          }
        }

        AUToneMeisterParameterImporter::setValueForAutomationParameter(this, v265, 1u, v327);
        v268 = [v263 objectForKeyedSubscript:@"setPointBGain"];
        [v268 floatValue];
        AUToneMeisterParameterImporter::setValueForAutomationParameter(this, v269, 4u, v327);

        v270 = [v263 objectForKeyedSubscript:@"setPointBFrequency"];
        [v270 floatValue];
        AUToneMeisterParameterImporter::setValueForAutomationParameter(this, v271, 5u, v327);

        v272 = [v263 objectForKeyedSubscript:@"systemVolumeSetPointA"];
        [v272 floatValue];
        AUToneMeisterParameterImporter::setValueForAutomationParameter(this, v273, 2u, v327);

        v274 = [v263 objectForKeyedSubscript:@"systemVolumeSetPointB"];
        [v274 floatValue];
        AUToneMeisterParameterImporter::setValueForAutomationParameter(this, v275, 3u, v327);

        v276 = [v263 objectForKeyedSubscript:@"systemVolumeSetPointM"];
        [v276 floatValue];
        AUToneMeisterParameterImporter::setValueForAutomationParameter(this, v277, 7u, v327);

        v278 = [v263 objectForKeyedSubscript:@"systemVolumeSetPointM_enable"];
        [v278 floatValue];
        AUToneMeisterParameterImporter::setValueForAutomationParameter(this, v279, 6u, v327);

        v280 = [v263 objectForKeyedSubscript:@"systemVolumeSetPointM_gain"];
        [v280 floatValue];
        AUToneMeisterParameterImporter::setValueForAutomationParameter(this, v281, 8u, v327);

        v282 = [v263 objectForKeyedSubscript:@"systemVolumeSetPointM_frequency"];
        [v282 floatValue];
        AUToneMeisterParameterImporter::setValueForAutomationParameter(this, v283, 9u, v327);

LABEL_271:
      }

      if (v323 == 4)
      {
        v284 = v328;
        v285 = [(AUToneMeisterParameterImporter *)v284 objectForKeyedSubscript:@"attackTime"];
        v286 = [(AUToneMeisterParameterImporter *)v284 objectForKeyedSubscript:@"releaseTime"];
        v287 = [(AUToneMeisterParameterImporter *)v284 objectForKeyedSubscript:@"enableAttackRelease"];
        v288 = [(AUToneMeisterParameterImporter *)v284 objectForKeyedSubscript:@"Threshold"];
        v289 = [(AUToneMeisterParameterImporter *)v284 objectForKeyedSubscript:@"Ratio"];
        v290 = [(AUToneMeisterParameterImporter *)v284 objectForKeyedSubscript:@"GainRange"];
        v291 = DspLib::ToneMeister::Algorithm::dynamicFilterIndex(*this, v327);
        [v285 floatValue];
        v293 = v292;
        v294 = DspLib::ToneMeister::Parameters::dynamicFilterParameter(v291, 0);
        (*(**this + 120))(*this, v294, v293);
        [v286 floatValue];
        v296 = v295;
        v297 = DspLib::ToneMeister::Parameters::dynamicFilterParameter(v291, 1);
        (*(**this + 120))(*this, v297, v296);
        [v287 floatValue];
        v299 = v298;
        v300 = DspLib::ToneMeister::Parameters::dynamicFilterParameter(v291, 2);
        (*(**this + 120))(*this, v300, v299);
        [v288 floatValue];
        v302 = v301;
        v303 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 6);
        (*(**this + 120))(*this, v303, v302);
        [v289 floatValue];
        v305 = v304;
        v306 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 5);
        (*(**this + 120))(*this, v306, v305);
        [v290 floatValue];
        v308 = v307;
        v309 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v327, 2);
        (*(**this + 120))(*this, v309, v308);
      }

      ++v324;
LABEL_275:
      ++v330;
    }

    while (v330 != v322);
    v174 = [v318 countByEnumeratingWithState:&v346 objects:v358 count:16];
  }

  while (v174);
LABEL_279:

  v136 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Successfully imported %lu filters and assigned them to group %d. ", objc_msgSend(v318, "count"), objc_msgSend(v317, "intValue")];

  if (v321)
  {
    v310 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d filters were not imported.\n", v321];
    v311 = [(__CFString *)v136 stringByAppendingString:v310];

    v136 = v311;
  }

  v315 = 0;
LABEL_282:

  v158 = v317;
LABEL_283:

LABEL_284:

  return v136;
}