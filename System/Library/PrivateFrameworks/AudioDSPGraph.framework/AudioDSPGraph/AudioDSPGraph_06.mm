void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_15,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_15>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1 && *a4 == 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ReblockerBox number of inputs and outputs must be one.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83353A0);
}

void sub_1C9215948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_14,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_14>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1 && *a4 == 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "SRCBox number of inputs and outputs must be one.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335388);
}

void sub_1C9215B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_13,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_13>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a4 == 1)
  {
    if (*a3)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "AverageBox number of inputs cannot be 0.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335370);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "AverageBox number of outputs must be 1");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335358);
}

void sub_1C9215DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_12,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_12>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a4 == 1)
  {
    if (*a3)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "MixBox number of inputs cannot be zero.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335340);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for MixBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335328);
}

void sub_1C921602C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C92161B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_11,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_11>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a4 == 1)
  {
    if (*a3)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "SumBox number of inputs cannot be zero.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335310);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for SumBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83352F8);
}

void sub_1C9216390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_10,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_10>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for CopyBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83352E0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for CopyBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83352C8);
}

void sub_1C92165D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_9,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_9>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for VectorGainBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83352B0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for VectorGainBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335298);
}

void sub_1C9216834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_8,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_8>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic abs box. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335280);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic abs box. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335268);
}

void sub_1C9216A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_7,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_7>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 2)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic sum box. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83351A8);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic sum box. must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335190);
}

void sub_1C9216CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = (v4 - v3) >> 5;
  if (v6 != 2)
  {
    v9 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_27;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = v8 - v7;
  if (((v8 - v7) & 0x1FFFFFFFE0) != 0x20)
  {
    v6 = 2;
LABEL_27:
    caulk::make_string("There must be two inputs and one output, instead of %u and %u.", v29, v6, v9 >> 5);
    AudioDSPGraph::ThrowException(1701602593, v29, off_1E8335220);
  }

  v5 = v4 - v3;
  if (v4 == v3)
  {
    v19 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v19 = *v19;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v30, v19, v5 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C60);
  }

  if (((v4 - v3) >> 5) <= 1)
  {
    v20 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v20 = *v20;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v30, v20, v5 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C60);
  }

  v10 = *(*(v3 + 16) + 120);
  v11 = *(v10 + 28);
  v12 = *(*(v3 + 48) + 120);
  if (v11 != *(v12 + 28))
  {
    v21 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v22 = AudioDSPGraph::Box::in(a1, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v28, v21, *(*(*(v22 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v28, off_1E8335238);
  }

  if (v8 == v7)
  {
    v23 = v9 >> 5;
    v24 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v24 = *v24;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v30, v24, v23, 0);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C78);
  }

  if (v11 != *(*(*(v7 + 16) + 120) + 28))
  {
    v25 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v26 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v27, v25, *(*(*(v26 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v27, off_1E8335250);
  }

  v13 = *(v10 + 8);
  v14 = *(v12 + 8);
  if (v13 == 1819304813 && v14 == 1819304813)
  {
    v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::initialize(void)::kernel;
  }

  else if (v13 != 1819304813 || v14 == 1819304813)
  {
    if (v13 != 1819304813 && v14 == 1819304813)
    {
      v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::initialize(void)::kernel;
    }

    else
    {
      v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::initialize(void)::kernel;
    }
  }

  else
  {
    v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::initialize(void)::kernel;
  }

  *(a1 + 768) = v18;
  return result;
}

void sub_1C9217000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)1>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvadd(&__A, 1, &__B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)0>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvadd(&__A, 1, __B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)0,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)1>::process(int a1, vDSP_Length __N, const float *a3, float *a4, float *a5)
{
  __A.realp = a4;
  __A.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvadd(&__A, 1, a3, 1, &v5, 1, __N);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::process(AudioDSPGraph::Box *this, uint64_t a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v33 = (this + 40);
    if (*(this + 63) < 0)
    {
      v33 = *v33;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v33, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v34 = (this + 40);
    if (*(this + 63) < 0)
    {
      v34 = *v34;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v34, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v35, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v36 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v37 = AudioDSPGraph::Box::in(this, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v48, v36, *(*(*(v37 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v48, off_1E83351C0);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v38 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v39 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v47, v38, *(*(*(v39 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v47, off_1E83351D8);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v11 = v6[3];
  if (v11 < v10)
  {
    caulk::make_string("The buffer passed for input 0 should be at least %u bytes, but is %u.", v46, v10, v11);
    AudioDSPGraph::ThrowException(1718449215, v46, off_1E83351F0);
  }

  v12 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v13 = v7[3];
  if (v13 < v12)
  {
    caulk::make_string("The buffer passed for input 1 should be at least %u bytes, but is %u.", v45, v12, v13);
    AudioDSPGraph::ThrowException(1718449215, v45, off_1E8335208);
  }

  v14 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v14)
  {
    v16 = result;
    v17 = v8 + 4;
    v18 = (v7 + 4);
    v19 = (v6 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      result = (***(this + 96))(*(this + 96), a2, v20, v22, *v17);
      *(v17 - 1) = v16;
      v17 += 2;
      --v14;
    }

    while (v14);
  }

  v23 = *(this + 9);
  if (*(this + 10) == v23)
  {
    v40 = (this + 40);
    if (*(this + 63) < 0)
    {
      v40 = *v40;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v40, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v24 = *(this + 12);
  if (*(this + 13) == v24)
  {
    v41 = (this + 40);
    if (*(this + 63) < 0)
    {
      v41 = *v41;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v41, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v25 = *(*(v23 + 16) + 56);
  v26 = *(*(v24 + 16) + 56);
  v27 = *(v25 + 8);
  v28 = *(v25 + 24);
  v29 = *(v25 + 40);
  *(v26 + 56) = *(v25 + 56);
  *(v26 + 40) = v29;
  *(v26 + 24) = v28;
  *(v26 + 8) = v27;
  v30 = *(this + 9);
  v31 = (*(this + 10) - v30) >> 5;
  if (*(this + 10) == v30)
  {
    v42 = (this + 40);
    if (*(this + 63) < 0)
    {
      v42 = *v42;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v42, v31, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v31 <= 1)
  {
    v43 = (this + 40);
    if (*(this + 63) < 0)
    {
      v43 = *v43;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v43, v31, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v32 = *(this + 12);
  if (*(this + 13) == v32)
  {
    v44 = (this + 40);
    if (*(this + 63) < 0)
    {
      v44 = *v44;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v44, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  *(*(*(v32 + 16) + 56) + 72) = (*(*(*(v30 + 48) + 56) + 72) | 0xFFFFFFEF) & *(*(*(v30 + 16) + 56) + 72);
  return result;
}

void sub_1C921777C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.73571922e161;
  *a1 = xmmword_1C925F1D0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox::~SumBox(AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_6,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_6>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 2)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic difference box. Must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83350D0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic difference box. Must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83350B8);
}

void sub_1C9217A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = (v4 - v3) >> 5;
  if (v6 != 2)
  {
    v9 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_27;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = v8 - v7;
  if (((v8 - v7) & 0x1FFFFFFFE0) != 0x20)
  {
    v6 = 2;
LABEL_27:
    caulk::make_string("There must be two inputs and one output, instead of %u and %u.", v29, v6, v9 >> 5);
    AudioDSPGraph::ThrowException(1701602593, v29, off_1E8335148);
  }

  v5 = v4 - v3;
  if (v4 == v3)
  {
    v19 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v19 = *v19;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v30, v19, v5 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C60);
  }

  if (((v4 - v3) >> 5) <= 1)
  {
    v20 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v20 = *v20;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v30, v20, v5 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C60);
  }

  v10 = *(*(v3 + 16) + 120);
  v11 = *(v10 + 28);
  v12 = *(*(v3 + 48) + 120);
  if (v11 != *(v12 + 28))
  {
    v21 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v22 = AudioDSPGraph::Box::in(a1, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v28, v21, *(*(*(v22 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v28, off_1E8335160);
  }

  if (v8 == v7)
  {
    v23 = v9 >> 5;
    v24 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v24 = *v24;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v30, v24, v23, 0);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C78);
  }

  if (v11 != *(*(*(v7 + 16) + 120) + 28))
  {
    v25 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v26 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v27, v25, *(*(*(v26 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v27, off_1E8335178);
  }

  v13 = *(v10 + 8);
  v14 = *(v12 + 8);
  if (v13 == 1819304813 && v14 == 1819304813)
  {
    v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::initialize(void)::kernel;
  }

  else if (v13 != 1819304813 || v14 == 1819304813)
  {
    if (v13 != 1819304813 && v14 == 1819304813)
    {
      v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::initialize(void)::kernel;
    }

    else
    {
      v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::initialize(void)::kernel;
    }
  }

  else
  {
    v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::initialize(void)::kernel;
  }

  *(a1 + 768) = v18;
  return result;
}

void sub_1C9217D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)1>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvsub(&__A, 1, &__B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)0>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvsub(&__A, 1, __B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)0,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)1>::process(int a1, vDSP_Length __N, const float *a3, float *a4, float *a5)
{
  v5 = __N;
  __A.realp = a4;
  __A.imagp = &a4[__N];
  v6.realp = a5;
  v6.imagp = &a5[__N];
  vDSP_zrvsub(&__A, 1, a3, 1, &v6, 1, __N);
  vDSP_zvneg(&v6, 1, &v6, 1, v5);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::process(AudioDSPGraph::Box *this, uint64_t a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v33 = (this + 40);
    if (*(this + 63) < 0)
    {
      v33 = *v33;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v33, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v34 = (this + 40);
    if (*(this + 63) < 0)
    {
      v34 = *v34;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v34, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v35, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v36 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v37 = AudioDSPGraph::Box::in(this, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v48, v36, *(*(*(v37 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v48, off_1E83350E8);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v38 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v39 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v47, v38, *(*(*(v39 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v47, off_1E8335100);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v11 = v6[3];
  if (v11 < v10)
  {
    caulk::make_string("The buffer passed for input 0 should be at least %u bytes, but is %u.", v46, v10, v11);
    AudioDSPGraph::ThrowException(1718449215, v46, off_1E8335118);
  }

  v12 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v13 = v7[3];
  if (v13 < v12)
  {
    caulk::make_string("The buffer passed for input 1 should be at least %u bytes, but is %u.", v45, v12, v13);
    AudioDSPGraph::ThrowException(1718449215, v45, off_1E8335130);
  }

  v14 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v14)
  {
    v16 = result;
    v17 = v8 + 4;
    v18 = (v7 + 4);
    v19 = (v6 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      result = (***(this + 96))(*(this + 96), a2, v20, v22, *v17);
      *(v17 - 1) = v16;
      v17 += 2;
      --v14;
    }

    while (v14);
  }

  v23 = *(this + 9);
  if (*(this + 10) == v23)
  {
    v40 = (this + 40);
    if (*(this + 63) < 0)
    {
      v40 = *v40;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v40, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v24 = *(this + 12);
  if (*(this + 13) == v24)
  {
    v41 = (this + 40);
    if (*(this + 63) < 0)
    {
      v41 = *v41;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v41, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v25 = *(*(v23 + 16) + 56);
  v26 = *(*(v24 + 16) + 56);
  v27 = *(v25 + 8);
  v28 = *(v25 + 24);
  v29 = *(v25 + 40);
  *(v26 + 56) = *(v25 + 56);
  *(v26 + 40) = v29;
  *(v26 + 24) = v28;
  *(v26 + 8) = v27;
  v30 = *(this + 9);
  v31 = (*(this + 10) - v30) >> 5;
  if (*(this + 10) == v30)
  {
    v42 = (this + 40);
    if (*(this + 63) < 0)
    {
      v42 = *v42;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v42, v31, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v31 <= 1)
  {
    v43 = (this + 40);
    if (*(this + 63) < 0)
    {
      v43 = *v43;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v43, v31, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v32 = *(this + 12);
  if (*(this + 13) == v32)
  {
    v44 = (this + 40);
    if (*(this + 63) < 0)
    {
      v44 = *v44;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v44, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  *(*(*(v32 + 16) + 56) + 72) = (*(*(*(v30 + 48) + 56) + 72) | 0xFFFFFFEF) & *(*(*(v30 + 16) + 56) + 72);
  return result;
}

void sub_1C9218524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.43485253e161;
  *a1 = xmmword_1C925F1E0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox::~DiffBox(AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_5,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_5>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 2)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic max box. Must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334FB0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic max box. Must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334F98);
}

void sub_1C92187EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = (v4 - v3) >> 5;
  if (v6 != 2)
  {
    v9 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_16;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = v8 - v7;
  if (((v8 - v7) & 0x1FFFFFFFE0) != 0x20)
  {
    v6 = 2;
LABEL_16:
    caulk::make_string("There must be two inputs and one output, instead of %u and %u.", v35, v6, v9 >> 5);
    AudioDSPGraph::ThrowException(1701602593, v35, off_1E8335028);
  }

  v5 = v4 - v3;
  if (v4 == v3)
  {
    v16 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v16 = *v16;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v36, v16, v5 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, v36, off_1E8337C60);
  }

  if (((v4 - v3) >> 5) <= 1)
  {
    v17 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v17 = *v17;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v36, v17, v5 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, v36, off_1E8337C60);
  }

  v10 = *(*(v3 + 16) + 120);
  v11 = *(v10 + 28);
  v12 = *(*(v3 + 48) + 120);
  if (v11 != *(v12 + 28))
  {
    v18 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v19 = AudioDSPGraph::Box::in(a1, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v34, v18, *(*(*(v19 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v34, off_1E8335040);
  }

  if (v8 == v7)
  {
    v20 = v9 >> 5;
    v21 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v21 = *v21;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v36, v21, v20, 0);
    AudioDSPGraph::ThrowException(1919837985, v36, off_1E8337C78);
  }

  if (v11 != *(*(*(v7 + 16) + 120) + 28))
  {
    v22 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v23 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v33, v22, *(*(*(v23 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v33, off_1E8335058);
  }

  v13 = *(v10 + 8);
  v14 = *(v12 + 8);
  if (v13 != 1819304813 || v14 != 1819304813)
  {
    v28 = v13;
    v29 = *(v12 + 8);
    if (v13 == 1819304813 && v14 != 1819304813)
    {
      v27 = (*(*a1 + 16))(a1);
      caulk::make_string("Can't use real input for one bus and complex input for another with '%s' box", v32, v27);
      AudioDSPGraph::ThrowException(1718444833, v32, off_1E8335070);
    }

    v25 = (*(*a1 + 16))(a1);
    if (v28 == 1819304813 || v29 != 1819304813)
    {
      caulk::make_string("Can't use complex inputs with '%s' box", v30, v25);
      AudioDSPGraph::ThrowException(1718444833, v30, off_1E83350A0);
    }

    caulk::make_string("Can't use complex input for one bus and real input for another with '%s' box", v31, v25);
    AudioDSPGraph::ThrowException(1718444833, v31, off_1E8335088);
  }

  *(a1 + 768) = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox>::initialize(void)::kernel;
  return result;
}

void sub_1C9218BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox>::process(AudioDSPGraph::Box *this, uint64_t a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v33 = (this + 40);
    if (*(this + 63) < 0)
    {
      v33 = *v33;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v33, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v34 = (this + 40);
    if (*(this + 63) < 0)
    {
      v34 = *v34;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v34, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v35, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v36 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v37 = AudioDSPGraph::Box::in(this, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v48, v36, *(*(*(v37 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v48, off_1E8334FC8);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v38 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v39 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v47, v38, *(*(*(v39 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v47, off_1E8334FE0);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v11 = v6[3];
  if (v11 < v10)
  {
    caulk::make_string("The buffer passed for input 0 should be at least %u bytes, but is %u.", v46, v10, v11);
    AudioDSPGraph::ThrowException(1718449215, v46, off_1E8334FF8);
  }

  v12 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v13 = v7[3];
  if (v13 < v12)
  {
    caulk::make_string("The buffer passed for input 1 should be at least %u bytes, but is %u.", v45, v12, v13);
    AudioDSPGraph::ThrowException(1718449215, v45, off_1E8335010);
  }

  v14 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v14)
  {
    v16 = result;
    v17 = v8 + 4;
    v18 = (v7 + 4);
    v19 = (v6 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      result = (***(this + 96))(*(this + 96), a2, v20, v22, *v17);
      *(v17 - 1) = v16;
      v17 += 2;
      --v14;
    }

    while (v14);
  }

  v23 = *(this + 9);
  if (*(this + 10) == v23)
  {
    v40 = (this + 40);
    if (*(this + 63) < 0)
    {
      v40 = *v40;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v40, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v24 = *(this + 12);
  if (*(this + 13) == v24)
  {
    v41 = (this + 40);
    if (*(this + 63) < 0)
    {
      v41 = *v41;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v41, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v25 = *(*(v23 + 16) + 56);
  v26 = *(*(v24 + 16) + 56);
  v27 = *(v25 + 8);
  v28 = *(v25 + 24);
  v29 = *(v25 + 40);
  *(v26 + 56) = *(v25 + 56);
  *(v26 + 40) = v29;
  *(v26 + 24) = v28;
  *(v26 + 8) = v27;
  v30 = *(this + 9);
  v31 = (*(this + 10) - v30) >> 5;
  if (*(this + 10) == v30)
  {
    v42 = (this + 40);
    if (*(this + 63) < 0)
    {
      v42 = *v42;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v42, v31, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v31 <= 1)
  {
    v43 = (this + 40);
    if (*(this + 63) < 0)
    {
      v43 = *v43;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v43, v31, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v32 = *(this + 12);
  if (*(this + 13) == v32)
  {
    v44 = (this + 40);
    if (*(this + 63) < 0)
    {
      v44 = *v44;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v44, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  *(*(*(v32 + 16) + 56) + 72) = (*(*(*(v30 + 48) + 56) + 72) | 0xFFFFFFEF) & *(*(*(v30 + 16) + 56) + 72);
  return result;
}

void sub_1C9219278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.06533485e161;
  *a1 = xmmword_1C925F1F0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox::~MaxBox(AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_4,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_4>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 2)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic min box. Must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334E90);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic min box. Must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334E78);
}

void sub_1C9219540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = (v4 - v3) >> 5;
  if (v6 != 2)
  {
    v9 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_16;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = v8 - v7;
  if (((v8 - v7) & 0x1FFFFFFFE0) != 0x20)
  {
    v6 = 2;
LABEL_16:
    caulk::make_string("There must be two inputs and one output, instead of %u and %u.", v35, v6, v9 >> 5);
    AudioDSPGraph::ThrowException(1701602593, v35, off_1E8334F08);
  }

  v5 = v4 - v3;
  if (v4 == v3)
  {
    v16 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v16 = *v16;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v36, v16, v5 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, v36, off_1E8337C60);
  }

  if (((v4 - v3) >> 5) <= 1)
  {
    v17 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v17 = *v17;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v36, v17, v5 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, v36, off_1E8337C60);
  }

  v10 = *(*(v3 + 16) + 120);
  v11 = *(v10 + 28);
  v12 = *(*(v3 + 48) + 120);
  if (v11 != *(v12 + 28))
  {
    v18 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v19 = AudioDSPGraph::Box::in(a1, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v34, v18, *(*(*(v19 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v34, off_1E8334F20);
  }

  if (v8 == v7)
  {
    v20 = v9 >> 5;
    v21 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v21 = *v21;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v36, v21, v20, 0);
    AudioDSPGraph::ThrowException(1919837985, v36, off_1E8337C78);
  }

  if (v11 != *(*(*(v7 + 16) + 120) + 28))
  {
    v22 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v23 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v33, v22, *(*(*(v23 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v33, off_1E8334F38);
  }

  v13 = *(v10 + 8);
  v14 = *(v12 + 8);
  if (v13 != 1819304813 || v14 != 1819304813)
  {
    v28 = v13;
    v29 = *(v12 + 8);
    if (v13 == 1819304813 && v14 != 1819304813)
    {
      v27 = (*(*a1 + 16))(a1);
      caulk::make_string("Can't use real input for one bus and complex input for another with '%s' box", v32, v27);
      AudioDSPGraph::ThrowException(1718444833, v32, off_1E8334F50);
    }

    v25 = (*(*a1 + 16))(a1);
    if (v28 == 1819304813 || v29 != 1819304813)
    {
      caulk::make_string("Can't use complex inputs with '%s' box", v30, v25);
      AudioDSPGraph::ThrowException(1718444833, v30, off_1E8334F80);
    }

    caulk::make_string("Can't use complex input for one bus and real input for another with '%s' box", v31, v25);
    AudioDSPGraph::ThrowException(1718444833, v31, off_1E8334F68);
  }

  *(a1 + 768) = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox>::initialize(void)::kernel;
  return result;
}

void sub_1C9219950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox>::process(AudioDSPGraph::Box *this, uint64_t a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v33 = (this + 40);
    if (*(this + 63) < 0)
    {
      v33 = *v33;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v33, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v34 = (this + 40);
    if (*(this + 63) < 0)
    {
      v34 = *v34;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v34, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v35, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v36 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v37 = AudioDSPGraph::Box::in(this, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v48, v36, *(*(*(v37 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v48, off_1E8334EA8);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v38 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v39 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v47, v38, *(*(*(v39 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v47, off_1E8334EC0);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v11 = v6[3];
  if (v11 < v10)
  {
    caulk::make_string("The buffer passed for input 0 should be at least %u bytes, but is %u.", v46, v10, v11);
    AudioDSPGraph::ThrowException(1718449215, v46, off_1E8334ED8);
  }

  v12 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v13 = v7[3];
  if (v13 < v12)
  {
    caulk::make_string("The buffer passed for input 1 should be at least %u bytes, but is %u.", v45, v12, v13);
    AudioDSPGraph::ThrowException(1718449215, v45, off_1E8334EF0);
  }

  v14 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v14)
  {
    v16 = result;
    v17 = v8 + 4;
    v18 = (v7 + 4);
    v19 = (v6 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      result = (***(this + 96))(*(this + 96), a2, v20, v22, *v17);
      *(v17 - 1) = v16;
      v17 += 2;
      --v14;
    }

    while (v14);
  }

  v23 = *(this + 9);
  if (*(this + 10) == v23)
  {
    v40 = (this + 40);
    if (*(this + 63) < 0)
    {
      v40 = *v40;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v40, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v24 = *(this + 12);
  if (*(this + 13) == v24)
  {
    v41 = (this + 40);
    if (*(this + 63) < 0)
    {
      v41 = *v41;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v41, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v25 = *(*(v23 + 16) + 56);
  v26 = *(*(v24 + 16) + 56);
  v27 = *(v25 + 8);
  v28 = *(v25 + 24);
  v29 = *(v25 + 40);
  *(v26 + 56) = *(v25 + 56);
  *(v26 + 40) = v29;
  *(v26 + 24) = v28;
  *(v26 + 8) = v27;
  v30 = *(this + 9);
  v31 = (*(this + 10) - v30) >> 5;
  if (*(this + 10) == v30)
  {
    v42 = (this + 40);
    if (*(this + 63) < 0)
    {
      v42 = *v42;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v42, v31, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v31 <= 1)
  {
    v43 = (this + 40);
    if (*(this + 63) < 0)
    {
      v43 = *v43;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v43, v31, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v32 = *(this + 12);
  if (*(this + 13) == v32)
  {
    v44 = (this + 40);
    if (*(this + 63) < 0)
    {
      v44 = *v44;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v44, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  *(*(*(v32 + 16) + 56) + 72) = (*(*(*(v30 + 48) + 56) + 72) | 0xFFFFFFEF) & *(*(*(v30 + 16) + 56) + 72);
  return result;
}

void sub_1C9219FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.06752086e161;
  *a1 = xmmword_1C925F200;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox::~MinBox(AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_3,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_3>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 2)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic divide box. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334DB8);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic divide box. must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334DA0);
}

void sub_1C921A294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = (v4 - v3) >> 5;
  if (v6 != 2)
  {
    v9 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_27;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = v8 - v7;
  if (((v8 - v7) & 0x1FFFFFFFE0) != 0x20)
  {
    v6 = 2;
LABEL_27:
    caulk::make_string("There must be two inputs and one output, instead of %u and %u.", v29, v6, v9 >> 5);
    AudioDSPGraph::ThrowException(1701602593, v29, off_1E8334E30);
  }

  v5 = v4 - v3;
  if (v4 == v3)
  {
    v19 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v19 = *v19;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v30, v19, v5 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C60);
  }

  if (((v4 - v3) >> 5) <= 1)
  {
    v20 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v20 = *v20;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v30, v20, v5 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C60);
  }

  v10 = *(*(v3 + 16) + 120);
  v11 = *(v10 + 28);
  v12 = *(*(v3 + 48) + 120);
  if (v11 != *(v12 + 28))
  {
    v21 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v22 = AudioDSPGraph::Box::in(a1, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v28, v21, *(*(*(v22 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v28, off_1E8334E48);
  }

  if (v8 == v7)
  {
    v23 = v9 >> 5;
    v24 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v24 = *v24;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v30, v24, v23, 0);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C78);
  }

  if (v11 != *(*(*(v7 + 16) + 120) + 28))
  {
    v25 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v26 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v27, v25, *(*(*(v26 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v27, off_1E8334E60);
  }

  v13 = *(v10 + 8);
  v14 = *(v12 + 8);
  if (v13 == 1819304813 && v14 == 1819304813)
  {
    v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::initialize(void)::kernel;
  }

  else if (v13 != 1819304813 || v14 == 1819304813)
  {
    if (v13 != 1819304813 && v14 == 1819304813)
    {
      v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::initialize(void)::kernel;
    }

    else
    {
      v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::initialize(void)::kernel;
    }
  }

  else
  {
    v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::initialize(void)::kernel;
  }

  *(a1 + 768) = v18;
  return result;
}

void sub_1C921A5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)1>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvdiv(&__B, 1, &__A, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)0>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvdiv(&__A, 1, __B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)0,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)1>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __B.realp = a4;
  __B.imagp = &a4[__N];
  __C.realp = a5;
  __C.imagp = &a5[__N];
  __A = 0.0;
  v5 = __N;
  v8.realp = a3;
  v8.imagp = __C.imagp;
  vDSP_vfill(&__A, __C.imagp, 1, __N);
  vDSP_zvdiv(&__B, 1, &v8, 1, &__C, 1, v5);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::process(AudioDSPGraph::Box *this, uint64_t a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v33 = (this + 40);
    if (*(this + 63) < 0)
    {
      v33 = *v33;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v33, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v34 = (this + 40);
    if (*(this + 63) < 0)
    {
      v34 = *v34;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v34, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v35, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v36 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v37 = AudioDSPGraph::Box::in(this, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v48, v36, *(*(*(v37 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v48, off_1E8334DD0);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v38 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v39 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v47, v38, *(*(*(v39 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v47, off_1E8334DE8);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v11 = v6[3];
  if (v11 < v10)
  {
    caulk::make_string("The buffer passed for input 0 should be at least %u bytes, but is %u.", v46, v10, v11);
    AudioDSPGraph::ThrowException(1718449215, v46, off_1E8334E00);
  }

  v12 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v13 = v7[3];
  if (v13 < v12)
  {
    caulk::make_string("The buffer passed for input 1 should be at least %u bytes, but is %u.", v45, v12, v13);
    AudioDSPGraph::ThrowException(1718449215, v45, off_1E8334E18);
  }

  v14 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v14)
  {
    v16 = result;
    v17 = v8 + 4;
    v18 = (v7 + 4);
    v19 = (v6 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      result = (***(this + 96))(*(this + 96), a2, v20, v22, *v17);
      *(v17 - 1) = v16;
      v17 += 2;
      --v14;
    }

    while (v14);
  }

  v23 = *(this + 9);
  if (*(this + 10) == v23)
  {
    v40 = (this + 40);
    if (*(this + 63) < 0)
    {
      v40 = *v40;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v40, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v24 = *(this + 12);
  if (*(this + 13) == v24)
  {
    v41 = (this + 40);
    if (*(this + 63) < 0)
    {
      v41 = *v41;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v41, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v25 = *(*(v23 + 16) + 56);
  v26 = *(*(v24 + 16) + 56);
  v27 = *(v25 + 8);
  v28 = *(v25 + 24);
  v29 = *(v25 + 40);
  *(v26 + 56) = *(v25 + 56);
  *(v26 + 40) = v29;
  *(v26 + 24) = v28;
  *(v26 + 8) = v27;
  v30 = *(this + 9);
  v31 = (*(this + 10) - v30) >> 5;
  if (*(this + 10) == v30)
  {
    v42 = (this + 40);
    if (*(this + 63) < 0)
    {
      v42 = *v42;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v42, v31, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v31 <= 1)
  {
    v43 = (this + 40);
    if (*(this + 63) < 0)
    {
      v43 = *v43;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v43, v31, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v32 = *(this + 12);
  if (*(this + 13) == v32)
  {
    v44 = (this + 40);
    if (*(this + 63) < 0)
    {
      v44 = *v44;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v44, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  *(*(*(v32 + 16) + 56) + 72) = *(*(*(v30 + 16) + 56) + 72);
  return result;
}

void sub_1C921AD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.43486969e161;
  *a1 = xmmword_1C925F210;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox::~DivBox(AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_2,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_2>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 2)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic multiply box. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334CE0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic multiply box. must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334CC8);
}

void sub_1C921B030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = (v4 - v3) >> 5;
  if (v6 != 2)
  {
    v9 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_27;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = v8 - v7;
  if (((v8 - v7) & 0x1FFFFFFFE0) != 0x20)
  {
    v6 = 2;
LABEL_27:
    caulk::make_string("There must be two inputs and one output, instead of %u and %u.", v29, v6, v9 >> 5);
    AudioDSPGraph::ThrowException(1701602593, v29, off_1E8334D58);
  }

  v5 = v4 - v3;
  if (v4 == v3)
  {
    v19 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v19 = *v19;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v30, v19, v5 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C60);
  }

  if (((v4 - v3) >> 5) <= 1)
  {
    v20 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v20 = *v20;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v30, v20, v5 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C60);
  }

  v10 = *(*(v3 + 16) + 120);
  v11 = *(v10 + 28);
  v12 = *(*(v3 + 48) + 120);
  if (v11 != *(v12 + 28))
  {
    v21 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v22 = AudioDSPGraph::Box::in(a1, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v28, v21, *(*(*(v22 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v28, off_1E8334D70);
  }

  if (v8 == v7)
  {
    v23 = v9 >> 5;
    v24 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v24 = *v24;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v30, v24, v23, 0);
    AudioDSPGraph::ThrowException(1919837985, v30, off_1E8337C78);
  }

  if (v11 != *(*(*(v7 + 16) + 120) + 28))
  {
    v25 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v26 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v27, v25, *(*(*(v26 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v27, off_1E8334D88);
  }

  v13 = *(v10 + 8);
  v14 = *(v12 + 8);
  if (v13 == 1819304813 && v14 == 1819304813)
  {
    v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::initialize(void)::kernel;
  }

  else if (v13 != 1819304813 || v14 == 1819304813)
  {
    if (v13 != 1819304813 && v14 == 1819304813)
    {
      v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::initialize(void)::kernel;
    }

    else
    {
      v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::initialize(void)::kernel;
    }
  }

  else
  {
    v18 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::initialize(void)::kernel;
  }

  *(a1 + 768) = v18;
  return result;
}

void sub_1C921B374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)1>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvmul(&__A, 1, &__B, 1, &v5, 1, __N, 1);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)0>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvmul(&__A, 1, __B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)0,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)1>::process(int a1, vDSP_Length __N, const float *a3, float *a4, float *a5)
{
  __A.realp = a4;
  __A.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvmul(&__A, 1, a3, 1, &v5, 1, __N);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::process(AudioDSPGraph::Box *this, uint64_t a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v33 = (this + 40);
    if (*(this + 63) < 0)
    {
      v33 = *v33;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v33, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v34 = (this + 40);
    if (*(this + 63) < 0)
    {
      v34 = *v34;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v34, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v35, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v36 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v37 = AudioDSPGraph::Box::in(this, 1uLL);
    caulk::make_string("The inputs must have the same channel count, but have %u and %u.", v48, v36, *(*(*(v37 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v48, off_1E8334CF8);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v38 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v39 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string("The inputs and output must have the same channel count, but have %u and %u.", v47, v38, *(*(*(v39 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v47, off_1E8334D10);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v11 = v6[3];
  if (v11 < v10)
  {
    caulk::make_string("The buffer passed for input 0 should be at least %u bytes, but is %u.", v46, v10, v11);
    AudioDSPGraph::ThrowException(1718449215, v46, off_1E8334D28);
  }

  v12 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v13 = v7[3];
  if (v13 < v12)
  {
    caulk::make_string("The buffer passed for input 1 should be at least %u bytes, but is %u.", v45, v12, v13);
    AudioDSPGraph::ThrowException(1718449215, v45, off_1E8334D40);
  }

  v14 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v14)
  {
    v16 = result;
    v17 = v8 + 4;
    v18 = (v7 + 4);
    v19 = (v6 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      result = (***(this + 96))(*(this + 96), a2, v20, v22, *v17);
      *(v17 - 1) = v16;
      v17 += 2;
      --v14;
    }

    while (v14);
  }

  v23 = *(this + 9);
  if (*(this + 10) == v23)
  {
    v40 = (this + 40);
    if (*(this + 63) < 0)
    {
      v40 = *v40;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v40, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v24 = *(this + 12);
  if (*(this + 13) == v24)
  {
    v41 = (this + 40);
    if (*(this + 63) < 0)
    {
      v41 = *v41;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v41, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  v25 = *(*(v23 + 16) + 56);
  v26 = *(*(v24 + 16) + 56);
  v27 = *(v25 + 8);
  v28 = *(v25 + 24);
  v29 = *(v25 + 40);
  *(v26 + 56) = *(v25 + 56);
  *(v26 + 40) = v29;
  *(v26 + 24) = v28;
  *(v26 + 8) = v27;
  v30 = *(this + 9);
  v31 = (*(this + 10) - v30) >> 5;
  if (*(this + 10) == v30)
  {
    v42 = (this + 40);
    if (*(this + 63) < 0)
    {
      v42 = *v42;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v42, v31, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  if (v31 <= 1)
  {
    v43 = (this + 40);
    if (*(this + 63) < 0)
    {
      v43 = *v43;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v49, v43, v31, 1);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C60);
  }

  v32 = *(this + 12);
  if (*(this + 13) == v32)
  {
    v44 = (this + 40);
    if (*(this + 63) < 0)
    {
      v44 = *v44;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v49, v44, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v49, off_1E8337C78);
  }

  *(*(*(v32 + 16) + 56) + 72) = *(*(*(v30 + 48) + 56) + 72) & 0x10 | *(*(*(v30 + 16) + 56) + 72);
  return result;
}

void sub_1C921BAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.07081382e161;
  *a1 = xmmword_1C925F220;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox::~MultBox(AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_1,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_1>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for DBGainBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334CB0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for DBGainBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334C98);
}

void sub_1C921BDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GainBox::GainBox(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v5 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Box::Box(a1, __p, 1u, 1u);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48D0500;
  *(a1 + 764) = 1065353216;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0x3F947AE147AE147BLL;
  *(a1 + 784) = 0x3F60624DD2F1A9FCLL;
  *(a1 + 792) = 0x3F80000000000000;
  *(a1 + 800) = 0;
  *(a1 + 804) = 257;
  return a1;
}

void sub_1C921BEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator=(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      (*(*v3 + 24))(v3, v8);
    }

    else
    {
      v9 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v8 != a1)
  {
    v4 = v9;
    v5 = *(a1 + 24);
    if (v9 == v8)
    {
      if (v5 == a1)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v8);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, a1);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v8);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1C921C274(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v4);
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_0,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_0>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for GainBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334C80);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for GainBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334C68);
}

void sub_1C921C4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::BoxRegistry::BoxRegistry(AudioDSPGraph::BoxRegistry *this)
{
  v8 = *MEMORY[0x1E69E9840];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "gain");
  v2 = xmmword_1C925F230;
  v3 = 0;
  v6[0] = &unk_1F48CCCD8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dbgn");
  v2 = xmmword_1C925F240;
  v3 = 0;
  v6[0] = &unk_1F48CCD20;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amul");
  v2 = xmmword_1C925F220;
  v3 = 0;
  v6[0] = &unk_1F48CCD68;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "adiv");
  v2 = xmmword_1C925F210;
  v3 = 0;
  v6[0] = &unk_1F48CD110;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amin");
  v2 = xmmword_1C925F200;
  v3 = 0;
  v6[0] = &unk_1F48CD4B8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amax");
  v2 = xmmword_1C925F1F0;
  v3 = 0;
  v6[0] = &unk_1F48CD7B8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "adif");
  v2 = xmmword_1C925F1E0;
  v3 = 0;
  v6[0] = &unk_1F48CDAB8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "asum");
  v2 = xmmword_1C925F1D0;
  v3 = 0;
  v6[0] = &unk_1F48CDE60;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "aabs");
  v2 = xmmword_1C925F190;
  v3 = 0;
  v6[0] = &unk_1F48CE208;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "vcgn");
  v2 = xmmword_1C925F250;
  v3 = 0;
  v6[0] = &unk_1F48CE4D0;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "copy");
  v2 = xmmword_1C925F260;
  v3 = 0;
  v6[0] = &unk_1F48CE518;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "sum");
  v2 = xmmword_1C925F270;
  v3 = 0;
  v6[0] = &unk_1F48CE560;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mix");
  v2 = xmmword_1C925F280;
  v3 = 0;
  v6[0] = &unk_1F48CE5A8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "average");
  v2 = xmmword_1C925F290;
  v3 = 0;
  v6[0] = &unk_1F48CE5F0;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "src");
  v2 = xmmword_1C925F2A0;
  v3 = 0;
  v6[0] = &unk_1F48CE638;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "reblocker");
  v2 = xmmword_1C925F2B0;
  v3 = 0;
  v6[0] = &unk_1F48CE680;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "freqsrc");
  v2 = xmmword_1C925F2C0;
  v3 = 0;
  v6[0] = &unk_1F48CE6C8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fft");
  v2 = xmmword_1C925F2D0;
  v3 = 0;
  v6[0] = &unk_1F48CE710;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "join");
  v2 = xmmword_1C925F2E0;
  v3 = 0;
  v6[0] = &unk_1F48CE758;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "split");
  v2 = xmmword_1C925F2F0;
  v3 = 0;
  v6[0] = &unk_1F48CE7A0;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "chancopy");
  v2 = xmmword_1C925F300;
  v3 = 0;
  v6[0] = &unk_1F48CE7E8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "delay");
  v2 = xmmword_1C925F310;
  v3 = 0;
  v6[0] = &unk_1F48CE830;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dead");
  v2 = xmmword_1C925F1C0;
  v3 = 0;
  v6[0] = &unk_1F48CE878;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "constant");
  v2 = xmmword_1C925F320;
  v3 = 0;
  v6[0] = &unk_1F48CEB40;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dbcontrol");
  v2 = xmmword_1C925F330;
  v3 = 0;
  v6[0] = &unk_1F48CEB88;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "denormalzero");
  v2 = xmmword_1C925F340;
  v3 = 0;
  v6[0] = &unk_1F48CEBD0;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mantissarandom");
  v2 = xmmword_1C925F350;
  v3 = 0;
  v6[0] = &unk_1F48CEC18;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "volumecurve");
  v2 = xmmword_1C925F360;
  v3 = 0;
  v6[0] = &unk_1F48CEC60;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "nfnp");
  v2 = xmmword_1C925F370;
  v3 = 0;
  v6[0] = &unk_1F48CECA8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "parameter_smoothing");
  v2 = xmmword_1C925F380;
  v3 = 0;
  v6[0] = &unk_1F48CECF0;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "srlconverter");
  v2 = xmmword_1C925F390;
  v3 = 0;
  v6[0] = &unk_1F48CED38;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_31::operator()<char const*,int,AudioDSPGraph::Boxes::CalculationBox::OperatorDomain,AudioDSPGraph::Boxes::CalculationBox::OperatorCodomain,AudioDSPGraph::Boxes::CalculationBox::Operator>(this, "parameter_add", 1885298475);
}

void sub_1C921D8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,AudioDSPGraph::BoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,AudioDSPGraph::BoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>>>::~__hash_table(v20);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>>>::~__hash_table(v19);
  _Unwind_Resume(a1);
}

void AudioDSPGraph::BoxRegistry::newBox(void *a1, void *a2, void *a3, uint64_t a4, int a5, int a6)
{
  v11 = std::__string_hash<char>::operator()[abi:ne200100](a3);
  v12 = a2[1];
  if (!*&v12)
  {
    goto LABEL_17;
  }

  v13 = v11;
  v14 = vcnt_s8(v12);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v11;
    if (v11 >= *&v12)
    {
      v16 = v11 % *&v12;
    }
  }

  else
  {
    v16 = (*&v12 - 1) & v11;
  }

  v17 = *(*a2 + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_17:
    *a1 = 0;
    return;
  }

  while (1)
  {
    v19 = v18[1];
    if (v13 == v19)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v19 >= *&v12)
      {
        v19 %= *&v12;
      }
    }

    else
    {
      v19 &= *&v12 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_17;
    }

LABEL_16:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_17;
    }
  }

  if (!AudioDSPGraph::IR::BoxAlias::operator==(v18 + 2, a3))
  {
    goto LABEL_16;
  }

  *__p = *a4;
  v22 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(a1, v18[8], __p, a5, a6);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C921DB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v7 = a4;
  v6 = a5;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, a3, &v7, &v6);
}

void AudioDSPGraph::BoxRegistry::newBox(void *a1, uint64_t a2, unint64_t a3, AudioComponentDescription *inDesc, uint64_t a5, int a6, int a7)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_21;
  }

  v8 = inDesc->componentSubType + inDesc->componentType + inDesc->componentManufacturer;
  v9 = vcnt_s8(a3);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = inDesc->componentSubType + inDesc->componentType + inDesc->componentManufacturer;
    if (v8 >= a3)
    {
      v10 = v8 % a3;
    }
  }

  else
  {
    v10 = (a3 - 1) & v8;
  }

  v11 = *(a2 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    if (AudioComponentFindNext(0, inDesc))
    {
      operator new();
    }

    *a1 = 0;
    goto LABEL_24;
  }

  while (1)
  {
    v13 = v12[1];
    if (v8 == v13)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= a3)
      {
        v13 %= a3;
      }
    }

    else
    {
      v13 &= a3 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (v12[2] != *&inDesc->componentType || *(v12 + 6) != inDesc->componentManufacturer)
  {
    goto LABEL_20;
  }

  *v16 = *a5;
  v17 = *(a5 + 16);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(a1, v12[8], v16, a6, a7);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

LABEL_24:
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1C921DE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Buffer::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 96);
    AudioDSPGraph::printi(a2, v4 + 4, "num buffers %u\n");
  }

  return result;
}

AudioDSPGraph::Buffer *AudioDSPGraph::Buffer::copyFrom(AudioDSPGraph::Buffer *this, AudioDSPGraph::Buffer *a2)
{
  if (a2 != this)
  {
    v2 = this;
    v3 = *(a2 + 10);
    v4 = *(this + 10);
    if (*v3 != *v4)
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "Buffer::copyFrom, fromABL->mNumberBuffers != toABL->mNumberBuffers");
      AudioDSPGraph::ThrowException(1718444833, v12, off_1E83354D8);
    }

    v5 = *(this + 24);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 4);
      v8 = v3 + 3;
      do
      {
        v9 = *v8;
        if (v9 > *(v2 + 25))
        {
          std::string::basic_string[abi:ne200100]<0>(v11, "Buffer::copyFrom, fromABL->mBuffers[i].mDataByteSize > mByteCapacity");
          AudioDSPGraph::ThrowException(1718444833, v11, off_1E83354F0);
        }

        v10 = *(v8 + 1);
        this = *v7;
        if (v10 != *v7)
        {
          this = memcpy(this, v10, v9);
          LODWORD(v9) = *v8;
          v5 = *(v2 + 24);
        }

        *(v7 - 1) = v9;
        ++v6;
        v7 += 2;
        v8 += 4;
      }

      while (v6 < v5);
    }
  }

  return this;
}

void sub_1C921E024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::setProperty(uint64_t this, int a2, unsigned int __val, unsigned int a4, int a5, double *a6)
{
  if (a2 > 1936274225)
  {
    if (a2 > 1969828149)
    {
      if (a2 != 1969828150 && a2 != 1969829428)
      {
        v6 = 13106;
        goto LABEL_13;
      }
    }

    else if (a2 != 1936274226 && a2 != 1936274996)
    {
      v6 = 12344;
LABEL_13:
      v7 = v6 | 0x75690000;
      goto LABEL_16;
    }

LABEL_17:
    if (__val != 1 || *(this + 768) != 1)
    {
      std::to_string(&v22, __val);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, "CalculationBox can't set property in scope ", &v22);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &v23, " with property ID ");
      std::to_string(&v21, a2);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v21;
      }

      else
      {
        v13 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v15 = std::string::append(&v24, v13, size);
      v20 = *v15;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      AudioDSPGraph::ThrowException(-10866, &v20, off_1E83355C8);
    }

    v8 = *(this + 784);
    if (a4 >= ((*(this + 792) - v8) >> 4))
    {
      std::to_string(&v22, a4);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, "CalculationBox can't set input scope element ", &v22);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &v23, " with property ID ");
      std::to_string(&v21, a2);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v21;
      }

      else
      {
        v17 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = v21.__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&v24, v17, v18);
      v25 = *v19;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      AudioDSPGraph::ThrowException(-10877, &v25, off_1E83355B0);
    }

    v9 = v8 + 16 * a4;
    if (a2 > 1936274225)
    {
      if (a2 <= 1969828149)
      {
        if (a2 != 1936274226)
        {
          if (a2 != 1936274996)
          {
            if (a2 != 1969827896)
            {
              return this;
            }

            if (a5 == 1)
            {
              this = 0;
              *&v10 = *a6;
LABEL_56:
              *v9 = 0;
              *(v9 + 8) = v10;
              return this;
            }

            return 561211770;
          }

          goto LABEL_36;
        }

        if (a5 == 4)
        {
          this = 0;
          *&v10 = *a6;
          goto LABEL_56;
        }

        return 561211770;
      }

      if (a2 == 1969828150)
      {
        if (a5 == 2)
        {
          this = 0;
          *&v10 = *a6;
          goto LABEL_56;
        }

        return 561211770;
      }

      if (a2 != 1969828658)
      {
        if (a2 != 1969829428)
        {
          return this;
        }

LABEL_36:
        if (a5 == 8)
        {
          this = 0;
          v10 = *a6;
          goto LABEL_56;
        }

        return 561211770;
      }

LABEL_42:
      if (a5 == 4)
      {
        this = 0;
        *&v10 = *a6;
        goto LABEL_56;
      }

      return 561211770;
    }

    if (a2 <= 1718367795)
    {
      if (a2 == 6)
      {
        goto LABEL_42;
      }

      if (a2 != 1718367026)
      {
        return this;
      }

      if (a5 != 4)
      {
        return 561211770;
      }

      this = 0;
      v11 = *a6;
    }

    else
    {
      if (a2 != 1718367796)
      {
        if (a2 == 1936273464)
        {
          if (a5 == 1)
          {
            this = 0;
            *&v10 = *a6;
            goto LABEL_56;
          }
        }

        else
        {
          if (a2 != 1936273718)
          {
            return this;
          }

          if (a5 == 2)
          {
            this = 0;
            *&v10 = *a6;
            goto LABEL_56;
          }
        }

        return 561211770;
      }

      if (a5 != 8)
      {
        return 561211770;
      }

      this = 0;
      v11 = *a6;
    }

    *v9 = 1;
    *(v9 + 8) = v11;
    return this;
  }

  if (a2 > 1718367795)
  {
    if (a2 != 1718367796 && a2 != 1936273464)
    {
      v7 = 1936273718;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (a2 == 6)
  {
    goto LABEL_17;
  }

  v7 = 1718367026;
LABEL_16:
  if (a2 == v7)
  {
    goto LABEL_17;
  }

  return AudioDSPGraph::Box::setProperty(this, a2, __val, a4, a5, a6);
}

void sub_1C921E478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::getProperty(AudioDSPGraph::Boxes::CalculationBox *this, int a2, uint64_t __val, uint64_t a4, unsigned int *a5, CFStringRef *a6, double a7)
{
  v9 = a4;
  if (a2 <= 1936274225)
  {
    if (a2 <= 1718367795)
    {
      if (a2 == 6)
      {
        goto LABEL_17;
      }

      v12 = 1718367026;
    }

    else
    {
      if (a2 == 1718367796 || a2 == 1936273464)
      {
        goto LABEL_17;
      }

      v12 = 1936273718;
    }
  }

  else
  {
    if (a2 > 1969828149)
    {
      if (a2 == 1969828150 || a2 == 1969829428)
      {
        goto LABEL_17;
      }

      v11 = 13106;
    }

    else
    {
      if (a2 == 1936274226 || a2 == 1936274996)
      {
        goto LABEL_17;
      }

      v11 = 12344;
    }

    v12 = v11 | 0x75690000;
  }

  if (a2 != v12)
  {

    return AudioDSPGraph::Box::getProperty(this, a2, __val, a4, a5, a6);
  }

LABEL_17:
  if (__val != 2)
  {
    if (__val == 1 && *(this + 192) == 1)
    {
      v13 = *(this + 98);
      if (a4 >= ((*(this + 99) - v13) >> 4))
      {
        std::to_string(&v33, a4);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, "CalculationBox can't get input scope element ", &v33);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v30, &v34, " with property ID ");
        std::to_string(&v32, a2);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v32;
        }

        else
        {
          v20 = v32.__r_.__value_.__r.__words[0];
        }

        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v32.__r_.__value_.__l.__size_;
        }

        v22 = std::string::append(&v30, v20, size);
        v35 = *v22;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        AudioDSPGraph::ThrowException(-10877, &v35, off_1E8335568);
      }

      return AudioDSPGraph::Boxes::CalculationBox::getValueAsProperty((v13 + 16 * a4), a2, a5, a6, a7);
    }

LABEL_30:
    std::to_string(&v33, __val);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, "CalculationBox can't get property in scope ", &v33);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v30, &v34, " with property ID ");
    std::to_string(&v32, a2);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v32;
    }

    else
    {
      v17 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v32.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v30, v17, v18);
    v27 = *v19;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    AudioDSPGraph::ThrowException(-10866, &v27, off_1E8335598);
  }

  v15 = *(this + 193);
  if (v15 != 1)
  {
    goto LABEL_30;
  }

  AudioDSPGraph::Boxes::CalculationBox::calculate(&v30, this, a4, v15);
  if ((v31 & 1) == 0)
  {
    data = v30.__r_.__value_.__l.__data_;
    std::to_string(&v32, v9);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v33, "CalculationBox can't get output scope element ", &v32);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, &v33, " with property ID ");
    std::to_string(&v28, a2);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v28;
    }

    else
    {
      v24 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v28.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v34, v24, v25);
    v29 = *v26;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    AudioDSPGraph::ThrowException(data, &v29, off_1E8335580);
  }

  return AudioDSPGraph::Boxes::CalculationBox::getValueAsProperty(&v30, a2, a5, a6, v16);
}

void sub_1C921E928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v41 - 81) < 0)
  {
    operator delete(*(v41 - 104));
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if ((a35 & 1) == 0)
  {
    AudioDSPGraph::Error::~Error(&a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::getValueAsProperty(unsigned __int8 *a1, int a2, int *a3, _BYTE *a4, double a5)
{
  if (a2 > 1936274225)
  {
    if (a2 <= 1969828149)
    {
      if (a2 != 1936274226)
      {
        v5 = 1936274996;
        if (a2 != 1936274996)
        {
          if (a2 != 1969827896)
          {
            return v5;
          }

LABEL_27:
          v10 = *a3;
          if (*a3)
          {
            if (*a1 == 1)
            {
              v10 = *(a1 + 1);
            }

            else if (!*a1)
            {
              LOBYTE(v10) = a1[8];
            }

            *a4 = v10;
            v12 = 1;
            goto LABEL_62;
          }

          return 561211770;
        }

        v6 = *a3;
        if (v6 >= 8)
        {
          v7 = *a1;
          if (v7 != 1)
          {
LABEL_37:
            if (!v7)
            {
              v6 = *(a1 + 1);
            }

            goto LABEL_55;
          }

          v6 = *(a1 + 1);
LABEL_55:
          *a4 = v6;
LABEL_58:
          v12 = 8;
LABEL_62:
          v5 = 0;
          *a3 = v12;
          return v5;
        }

        return 561211770;
      }

      v8 = *a3;
      if (*a3 < 4)
      {
        return 561211770;
      }

      v9 = *a1;
      if (v9 != 1)
      {
        goto LABEL_45;
      }

      v8 = *(a1 + 1);
      goto LABEL_60;
    }

    if (a2 != 1969828150)
    {
      v5 = 1969828658;
      if (a2 != 1969828658)
      {
        if (a2 == 1969829428)
        {
          v6 = *a3;
          if (v6 >= 8)
          {
            v7 = *a1;
            if (v7 != 1)
            {
              goto LABEL_37;
            }

            v6 = *(a1 + 1);
            goto LABEL_55;
          }

          return 561211770;
        }

        return v5;
      }

LABEL_24:
      v8 = *a3;
      if (*a3 < 4)
      {
        return 561211770;
      }

      v9 = *a1;
      if (v9 != 1)
      {
LABEL_45:
        if (!v9)
        {
          v8 = *(a1 + 2);
        }

        goto LABEL_60;
      }

      v8 = *(a1 + 1);
LABEL_60:
      *a4 = v8;
      goto LABEL_61;
    }

LABEL_31:
    v11 = *a3;
    if (*a3 >= 2)
    {
      if (*a1 == 1)
      {
        v11 = *(a1 + 1);
      }

      else if (!*a1)
      {
        LOWORD(v11) = *(a1 + 4);
      }

      *a4 = v11;
      v12 = 2;
      goto LABEL_62;
    }

    return 561211770;
  }

  v5 = 1718367795;
  if (a2 > 1718367795)
  {
    if (a2 == 1718367796)
    {
      if (*a3 >= 8)
      {
        if (*a1 == 1)
        {
          a5 = *(a1 + 1);
        }

        else if (!*a1)
        {
          a5 = *(a1 + 1);
        }

        *a4 = a5;
        goto LABEL_58;
      }

      return 561211770;
    }

    v5 = 1936273464;
    if (a2 == 1936273464)
    {
      goto LABEL_27;
    }

    if (a2 != 1936273718)
    {
      return v5;
    }

    goto LABEL_31;
  }

  if (a2 == 6)
  {
    goto LABEL_24;
  }

  if (a2 == 1718367026)
  {
    if (*a3 < 4)
    {
      return 561211770;
    }

    if (*a1 == 1)
    {
      *&a5 = *(a1 + 1);
    }

    else if (!*a1)
    {
      *&a5 = *(a1 + 1);
    }

    *a4 = LODWORD(a5);
LABEL_61:
    v12 = 4;
    goto LABEL_62;
  }

  return v5;
}

void AudioDSPGraph::Boxes::CalculationBox::calculate(AudioDSPGraph::Boxes::CalculationBox *this@<X0>, uint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X8>)
{
  if (a3)
  {
    LODWORD(v31) = -10877;
    *(&v31 + 1) = off_1E83355E0;
    v32 = 0;
    *this = v31;
    *(this + 2) = 0;
    v33 = 0;
    *(this + 6) = 0;
    *(this + 32) = 0;
    AudioDSPGraph::Error::~Error(&v31);
    return;
  }

  v6 = *(a2 + 784);
  switch(*(a2 + 776))
  {
    case 1:
      if (*v6 == 1)
      {
        if (v6[16] == 1)
        {
          v26 = *(v6 + 3);
        }

        else
        {
          if (v6[16])
          {
            goto LABEL_80;
          }

          v26 = *(v6 + 3);
        }

        v30 = *(v6 + 1) - v26;
        goto LABEL_92;
      }

      if (*v6)
      {
        goto LABEL_93;
      }

      v20 = *(v6 + 1);
      if (v6[16] == 1)
      {
        v30 = v20 - *(v6 + 3);
        goto LABEL_92;
      }

      if (!v6[16])
      {
        a4 = 0;
        v4 = v20 - *(v6 + 3);
      }

      goto LABEL_93;
    case 2:
      v13 = (v6 + 16);
      goto LABEL_17;
    case 3:
      if (*v6 == 1)
      {
        v21 = *(v6 + 1);
        a4 = v6[16];
        if (a4 == 1)
        {
          v23 = *(v6 + 3);
          if (v23 != 0.0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v6[16])
          {
            v4 = 1;
            goto LABEL_102;
          }

          v22 = *(v6 + 3);
          if (v22)
          {
            v23 = v22;
LABEL_86:
            v29 = v21 / v23;
            goto LABEL_87;
          }
        }

        if (v21 <= 0.0)
        {
          if (v21 >= 0.0)
          {
            a4 = 0x7FF8000000000000;
          }

          else
          {
            a4 = 0xFFF0000000000000;
          }

          goto LABEL_101;
        }

LABEL_100:
        a4 = 0x7FF0000000000000;
        goto LABEL_101;
      }

      if (*v6)
      {
        goto LABEL_102;
      }

      v17 = *(v6 + 1);
      if (v6[16] == 1)
      {
        v28 = *(v6 + 3);
        if (v28 == 0.0)
        {
          goto LABEL_95;
        }

        v29 = v17 / v28;
LABEL_87:
        a4 = *&v29;
        goto LABEL_101;
      }

      if (v6[16])
      {
        goto LABEL_102;
      }

      v18 = *(v6 + 3);
      if (v18)
      {
        v4 = 0;
        a4 = v17 / v18;
        goto LABEL_102;
      }

LABEL_95:
      if (v17 > 0)
      {
        goto LABEL_100;
      }

      a4 = 0xFFF0000000000000;
      if (!v17)
      {
        a4 = 0x7FF8000000000000;
      }

LABEL_101:
      v4 = 1;
LABEL_102:
      *this = v4;
LABEL_78:
      *(this + 1) = a4;
LABEL_79:
      *(this + 32) = 1;
      return;
    case 4:
      LOBYTE(v31) = 0;
      *(&v31 + 1) = -1;
      v13 = &v31;
LABEL_17:
      *this = AudioDSPGraph::Boxes::CalculationBox::Value::operator*(v6, v13);
      *(this + 1) = v14;
      goto LABEL_79;
    case 5:
      LODWORD(a4) = *v6;
      if (*v6)
      {
        if (a4 == 1 && *(v6 + 1) == 0.0)
        {
          LOBYTE(a4) = 0;
          goto LABEL_76;
        }

        goto LABEL_69;
      }

      a4 = *(v6 + 1);
      if (a4)
      {
        goto LABEL_69;
      }

      goto LABEL_76;
    case 6:
      LODWORD(a4) = *v6;
      if (*v6)
      {
        if (a4 != 1 || *(v6 + 1) == 0.0)
        {
LABEL_69:
          if (v6[16] == 1)
          {
            v27 = *(v6 + 3) == 0.0;
          }

          else
          {
            if (v6[16])
            {
              goto LABEL_76;
            }

            v27 = *(v6 + 3) == 0;
          }

          LOBYTE(a4) = !v27;
LABEL_76:
          a4 &= 1u;
LABEL_77:
          *this = 0;
          goto LABEL_78;
        }
      }

      else
      {
        a4 = *(v6 + 1);
        if (!a4)
        {
          goto LABEL_69;
        }
      }

      LOBYTE(a4) = 1;
      goto LABEL_76;
    case 7:
      if (*v6 == 1)
      {
        v19 = *(v6 + 1) == 0.0;
      }

      else
      {
        if (*v6)
        {
          goto LABEL_58;
        }

        v19 = *(v6 + 1) == 0;
      }

      LOBYTE(a4) = !v19;
LABEL_58:
      LOBYTE(a4) = ~a4;
      goto LABEL_76;
    case 8:
      v16 = *v6;
      goto LABEL_49;
    case 9:
      v11 = AudioDSPGraph::Boxes::CalculationBox::Value::operator==(v6, (v6 + 16), a4);
      goto LABEL_15;
    case 0xA:
      v12 = AudioDSPGraph::Boxes::CalculationBox::Value::operator==(v6, (v6 + 16), a4);
      goto LABEL_47;
    case 0xB:
      v12 = AudioDSPGraph::Boxes::CalculationBox::Value::operator<(v6, (v6 + 16), a4);
      goto LABEL_47;
    case 0xC:
      v11 = AudioDSPGraph::Boxes::CalculationBox::Value::operator>(v6, (v6 + 16), a4);
      goto LABEL_15;
    case 0xD:
      v12 = AudioDSPGraph::Boxes::CalculationBox::Value::operator>(v6, (v6 + 16), a4);
LABEL_47:
      a4 = v12 ^ 1u;
      goto LABEL_77;
    case 0xE:
      v11 = AudioDSPGraph::Boxes::CalculationBox::Value::operator<(v6, (v6 + 16), a4);
LABEL_15:
      a4 = v11;
      goto LABEL_77;
    case 0xF:
      v8 = v6 + 16;
      v9 = (v6 + 16);
      v10 = *(a2 + 784);
      goto LABEL_19;
    case 0x10:
      v8 = v6 + 16;
      v9 = *(a2 + 784);
      v10 = (v6 + 16);
LABEL_19:
      if (AudioDSPGraph::Boxes::CalculationBox::Value::operator<(v9, v10, a4))
      {
        v15 = v8;
      }

      else
      {
        v15 = v6;
      }

      v16 = *v15;
LABEL_49:
      *this = v16;
      goto LABEL_79;
    default:
      if (*v6 == 1)
      {
        v24 = *(v6 + 1);
        if (v6[16] == 1)
        {
          v25 = *(v6 + 3);
        }

        else
        {
          if (v6[16])
          {
LABEL_80:
            a4 = 1;
            goto LABEL_93;
          }

          v25 = *(v6 + 3);
        }
      }

      else
      {
        if (*v6)
        {
          goto LABEL_93;
        }

        v7 = *(v6 + 1);
        if (v6[16] != 1)
        {
          if (!v6[16])
          {
            a4 = 0;
            v4 = *(v6 + 3) + v7;
          }

          goto LABEL_93;
        }

        v24 = *(v6 + 3);
        v25 = v7;
      }

      v30 = v24 + v25;
LABEL_92:
      v4 = *&v30;
      a4 = 1;
LABEL_93:
      *this = a4;
      *(this + 1) = v4;
      goto LABEL_79;
  }
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::Value::operator*(uint64_t result, uint64_t a2)
{
  if (*result == 1)
  {
    v4 = *(result + 8);
    if (*a2 == 1)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      if (*a2)
      {
        return 1;
      }

      v5 = *(a2 + 8);
    }

    return 1;
  }

  if (*result)
  {
    return result;
  }

  v2 = *(result + 8);
  if (*a2 == 1)
  {
    v6 = *(a2 + 8);
    return 1;
  }

  if (!*a2)
  {
    result = 0;
    v3 = *(a2 + 8) * v2;
  }

  return result;
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::Value::operator==@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W8>)
{
  if (*a1 != 1)
  {
    if (*a1)
    {
      return a3 & 1;
    }

    v3 = *(a1 + 8);
    if (*a2 != 1)
    {
      if (*a2)
      {
        return a3 & 1;
      }

      v4 = *(a2 + 8) == v3;
      goto LABEL_12;
    }

    v5 = *(a2 + 8);
    v6 = v3;
    goto LABEL_10;
  }

  v5 = *(a1 + 8);
  if (*a2 != 1)
  {
    if (*a2)
    {
      return a3 & 1;
    }

    v6 = *(a2 + 8);
LABEL_10:
    v4 = v5 == v6;
    goto LABEL_12;
  }

  v4 = *(a2 + 8) == v5;
LABEL_12:
  a3 = v4;
  return a3 & 1;
}

BOOL AudioDSPGraph::Boxes::CalculationBox::Value::operator<@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL a3@<W8>)
{
  if (*a1 != 1)
  {
    if (*a1)
    {
      return a3;
    }

    v3 = *(a1 + 8);
    if (*a2 == 1)
    {
      v4 = *(a2 + 8) <= v3;
    }

    else
    {
      if (*a2)
      {
        return a3;
      }

      v4 = *(a2 + 8) <= v3;
    }

    return !v4;
  }

  v5 = *(a1 + 8);
  if (*a2 == 1)
  {
    v4 = *(a2 + 8) <= v5;
    return !v4;
  }

  if (!*a2)
  {
    return v5 < *(a2 + 8);
  }

  return a3;
}

BOOL AudioDSPGraph::Boxes::CalculationBox::Value::operator>@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL a3@<W8>)
{
  if (*a1 != 1)
  {
    if (*a1)
    {
      return a3;
    }

    v3 = *(a1 + 8);
    if (*a2 != 1)
    {
      if (!*a2)
      {
        return *(a2 + 8) < v3;
      }

      return a3;
    }

    return *(a2 + 8) < v3;
  }

  v4 = *(a1 + 8);
  if (*a2 == 1)
  {
    return *(a2 + 8) < v4;
  }

  if (!*a2)
  {
    return v4 > *(a2 + 8);
  }

  return a3;
}

unint64_t AudioDSPGraph::Boxes::CalculationBox::getPropertyInfo(AudioDSPGraph::Boxes::CalculationBox *this, int a2, int a3)
{
  v3 = 1;
  if (a2 <= 1936274225)
  {
    if (a2 <= 1718367795)
    {
      if (a2 != 6 && a2 != 1718367026)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (a2 != 1718367796)
    {
      if (a2 == 1936273464)
      {
        goto LABEL_20;
      }

      if (a2 != 1936273718)
      {
        goto LABEL_32;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2 > 1969828149)
  {
    if (a2 == 1969828150)
    {
      goto LABEL_16;
    }

    if (a2 == 1969828658)
    {
LABEL_19:
      v3 = 4;
      goto LABEL_20;
    }

    if (a2 != 1969829428)
    {
LABEL_32:
      PropertyInfo = AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
      v4 = PropertyInfo;
      v7 = PropertyInfo & 0xFFFFFFFF00000000;
      return v7 | v4;
    }

LABEL_15:
    v3 = 8;
    goto LABEL_20;
  }

  if (a2 == 1936274226)
  {
    goto LABEL_19;
  }

  if (a2 == 1936274996)
  {
LABEL_16:
    v3 = 2;
    goto LABEL_20;
  }

  if (a2 != 1969827896)
  {
    goto LABEL_32;
  }

LABEL_20:
  v4 = -10866;
  if (a3 == 2)
  {
    v7 = 0;
    if (*(this + 193) == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = -10866;
    }
  }

  else if (a3 == 1)
  {
    v5 = *(this + 192);
    v6 = v5 == 1;
    if (v5 == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = -10866;
    }

    if (v6)
    {
      v7 = 0x100000000;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 | v4;
}

double AudioDSPGraph::Boxes::CalculationBox::desc@<D0>(AudioDSPGraph::Boxes::CalculationBox *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 191);
  *a2 = 1668183148;
  *(a2 + 4) = v2;
  *&result = 1633841016;
  *(a2 + 8) = 1633841016;
  *(a2 + 16) = 0;
  return result;
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::getParameterInfo@<X0>(uint64_t this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!a3)
  {
    if (a2 == 2)
    {
      if (!*(this + 772))
      {
        *(a4 + 48) = 0;
        strcpy(a4, "output parameter");
        *(a4 + 17) = unk_1C925F5B9;
        *(a4 + 18) = unk_1C925F5BA;
        *(a4 + 20) = unk_1C925F5BC;
        *(a4 + 24) = unk_1C925F5C0;
        *(a4 + 32) = xmmword_1C925F5C8;
        *(a4 + 56) = 0;
        *(a4 + 64) = 0;
        *(a4 + 72) = 0;
        *(a4 + 80) = 26;
        *(a4 + 84) = -2.84809454e-306;
        v6 = 0x4000000000000000;
        goto LABEL_12;
      }
    }

    else if (a2 == 1 && !*(this + 768))
    {
      *(a4 + 48) = 0;
      strcpy(a4, "input parameter");
      *(a4 + 16) = unk_1C925F580;
      *(a4 + 32) = xmmword_1C925F590;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 26;
      *(a4 + 84) = -2.84809454e-306;
      v6 = 0xC000000000000000;
LABEL_12:
      *(a4 + 92) = v6;
      v4 = 1;
      goto LABEL_10;
    }

    v4 = 0;
    v5 = -10866;
    goto LABEL_9;
  }

  v4 = 0;
  v5 = 1869640255;
LABEL_9:
  *a4 = v5;
LABEL_10:
  *(a4 + 104) = v4;
  return this;
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::getParameterList@<X0>(uint64_t this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2 == 2)
  {
    if (!*(this + 772))
    {
      v5 = 0;
      v3 = &v5;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;
      v4 = &v5;
LABEL_8:
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, v4, (v3 + 1), 1uLL);
    }
  }

  else if (a2 == 1 && !*(this + 768))
  {
    v6 = 0;
    v3 = &v6;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    v4 = &v6;
    goto LABEL_8;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return this;
}

void sub_1C921F624(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::CalculationBox::getParameter(AudioDSPGraph::Boxes::CalculationBox *this@<X0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v28 = a3;
  v29 = a2;
  v27 = a4;
  if (!a2)
  {
    if (a3 == 2)
    {
      v10 = *(this + 193);
      if (!v10)
      {
        AudioDSPGraph::Boxes::CalculationBox::calculate(&v19, this, a4, v10);
        if (v22 != 1)
        {
          v30 = v19;
          v15 = v20;
          v20 = 0;
          v31 = v15;
          LODWORD(v15) = v21;
          v21 = 0;
          v32 = v15;
          AudioDSPGraph::Error::saveDescription<unsigned int &,unsigned int &>(&v30, "CalculationBox can't get output scope element {} with parameter ID {}", &v27, &v29);
          v23 = v30;
          v16 = v31;
          v31 = 0;
          v17 = v32;
          v32 = 0;
          AudioDSPGraph::Error::~Error(&v30);
          v26 = 0;
          *a5 = v23;
          v24 = 0;
          *(a5 + 16) = v16;
          v25 = 0;
          *(a5 + 24) = v17;
          *(a5 + 32) = 0;
          AudioDSPGraph::Error::~Error(&v23);
          v14 = &v19;
          goto LABEL_14;
        }

        a6 = *&v19;
        v23 = v19;
        if (v19 != 1)
        {
          if (!v19)
          {
            v9 = *(&v23 + 1);
            goto LABEL_20;
          }

LABEL_26:
          *a5 = a6;
          *(a5 + 32) = 1;
          return;
        }

        v18 = *(&v23 + 1);
LABEL_25:
        a6 = v18;
        goto LABEL_26;
      }
    }

    else if (a3 == 1 && !*(this + 192))
    {
      v7 = *(this + 98);
      if (a4 < ((*(this + 99) - v7) >> 4))
      {
        v8 = v7 + 16 * a4;
        if (*v8 != 1)
        {
          if (!*v8)
          {
            v9 = *(v8 + 8);
LABEL_20:
            a6 = v9;
            goto LABEL_26;
          }

          goto LABEL_26;
        }

        v18 = *(v8 + 8);
        goto LABEL_25;
      }

      LODWORD(v23) = -10877;
      *(&v23 + 1) = off_1E8335508;
      v24 = 0;
      v25 = 0;
      v11 = "CalculationBox can't get input scope element {} with parameter ID {}";
      v12 = &v27;
LABEL_12:
      AudioDSPGraph::Error::saveDescription<unsigned int &,unsigned int &>(&v23, v11, v12, &v29);
      *a5 = v23;
      v13 = v24;
      v24 = 0;
      *(a5 + 16) = v13;
      LODWORD(v13) = v25;
      v25 = 0;
      *(a5 + 24) = v13;
      goto LABEL_13;
    }

    LODWORD(v23) = -10866;
    *(&v23 + 1) = off_1E8335520;
    v24 = 0;
    v25 = 0;
    v11 = "CalculationBox can't get parameter in scope {} with parameter ID {}";
    v12 = &v28;
    goto LABEL_12;
  }

  LODWORD(v23) = -10878;
  *(&v23 + 1) = off_1E8334BA8;
  v24 = 0;
  *a5 = v23;
  *(a5 + 16) = 0;
  v25 = 0;
  *(a5 + 24) = 0;
LABEL_13:
  *(a5 + 32) = 0;
  v14 = &v23;
LABEL_14:
  AudioDSPGraph::Error::~Error(v14);
}

uint64_t AudioDSPGraph::Error::saveDescription<unsigned int &,unsigned int &>(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v5 = MEMORY[0x1E69E3C08];
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    result = caulk::rt_safe_memory_resource::rt_allocate(result);
    v10 = result;
    v11 = *a3;
    v12 = *a4;
    *result = &unk_1F48CF018;
    *(result + 8) = a2;
    *(result + 16) = v11;
    *(result + 20) = v12;
    if (*(a1 + 24) != 1)
    {
      goto LABEL_6;
    }

    v13 = *(a1 + 16);
    if (!v13)
    {
      goto LABEL_6;
    }

    (*(*v13 + 24))(*(a1 + 16));
    (**v13)(v13);
    result = *v5;
    if (*v5)
    {
      result = caulk::rt_safe_memory_resource::rt_deallocate(result, v13);
LABEL_6:
      *(a1 + 16) = v10;
      *(a1 + 24) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void AudioDSPGraph::ErrorDescriptor::CustomDeferredDescription<unsigned int,unsigned int>::format(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = strlen(v4);
  v6 = *(a1 + 20);
  v12[0] = *(a1 + 16);
  v12[1] = 0;
  v12[3] = 0;
  v12[4] = 198;
  v12[2] = v6;
  v13 = v17;
  *__len = xmmword_1C925F110;
  v15 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v16 = 0;
  __src = v17;
  v11[0] = 2;
  v11[1] = v12;
  v11[2] = 198;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v13, v4, v5, v11);
  v7 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len[1] >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = __len[1];
  if (__len[1])
  {
    memmove(&v9, __src, __len[1]);
  }

  *(&v9 + v7) = 0;
  if (__src != v17)
  {
    operator delete(__src);
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = 1;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1C921FB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p)
{
  if (a2)
  {
    if (__p != v60)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    *v59 = 0;
    v59[24] = 0;
    __cxa_end_catch();
    JUMPOUT(0x1C921FAD4);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::CalculationBox::setParameter@<D0>(AudioDSPGraph::Boxes::CalculationBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, unsigned int a5@<W3>, uint64_t a6@<X8>)
{
  v14 = a4;
  v15 = a3;
  v13 = a5;
  if (a3)
  {
    LODWORD(v16) = -10878;
    *(&v16 + 1) = off_1E8334BC0;
    v17 = 0;
    *a6 = v16;
    *(a6 + 16) = 0;
    v18 = 0;
    *(a6 + 24) = 0;
  }

  else
  {
    if (a4 == 1 && !*(this + 192))
    {
      v11 = *(this + 98);
      if (a5 < ((*(this + 99) - v11) >> 4))
      {
        v12 = v11 + 16 * a5;
        *v12 = 1;
        result = a2;
        *(v12 + 8) = result;
        *(a6 + 32) = 1;
        return result;
      }

      LODWORD(v16) = -10877;
      *(&v16 + 1) = off_1E8335538;
      v17 = 0;
      v18 = 0;
      v7 = "CalculationBox can't set input scope element {} with parameter ID {}";
      v8 = &v13;
    }

    else
    {
      LODWORD(v16) = -10866;
      *(&v16 + 1) = off_1E8335550;
      v17 = 0;
      v18 = 0;
      v7 = "CalculationBox can't set parameter in scope {} with parameter ID {}";
      v8 = &v14;
    }

    AudioDSPGraph::Error::saveDescription<unsigned int &,unsigned int &>(&v16, v7, v8, &v15);
    *a6 = v16;
    v9 = v17;
    v17 = 0;
    *(a6 + 16) = v9;
    LODWORD(v9) = v18;
    v18 = 0;
    *(a6 + 24) = v9;
  }

  *(a6 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v16);
  return result;
}

void AudioDSPGraph::Boxes::CalculationBox::~CalculationBox(AudioDSPGraph::Boxes::CalculationBox *this)
{
  v1 = *(this + 98);
  if (v1)
  {
    *(this + 99) = v1;
    if ((*(this + 840) & 1) == 0)
    {
      __break(1u);
      goto LABEL_8;
    }

    *(this + 840) = 0;
  }

  AudioDSPGraph::Box::~Box(this);

LABEL_8:
  JUMPOUT(0x1CCA84AE0);
}

{
  v1 = *(this + 98);
  if (!v1)
  {
    goto LABEL_4;
  }

  *(this + 99) = v1;
  if (*(this + 840))
  {
    *(this + 840) = 0;
LABEL_4:
    AudioDSPGraph::Box::~Box(this);
    return;
  }

  __break(1u);
}

uint64_t AudioDSPGraph::Boxes::ChannelCopierBox::initialize(AudioDSPGraph::Boxes::ChannelCopierBox *this)
{
  result = AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 9);
  if (*(this + 10) == v3)
  {
    v12 = (this + 40);
    if (*(this + 63) < 0)
    {
      v12 = *v12;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v16, v12, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v16, off_1E8337C60);
  }

  v4 = *(*(v3 + 16) + 120);
  v5 = v4[2];
  if (v5 == 1819304813)
  {
    v6 = v4[3];
    if ((v6 & 1) == 0 || v4[8] != 32)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v5 != 1718773105 || v4[8] != 64)
    {
LABEL_21:
      std::string::basic_string[abi:ne200100]<0>(v15, "ChannelCopierBox input format must be mono, non-interleaved float");
      AudioDSPGraph::ThrowException(1718449215, v15, off_1E83355F8);
    }

    v6 = v4[3];
  }

  if ((v6 & 0x20) == 0 || v4[7] != 1)
  {
    goto LABEL_21;
  }

  v7 = *(this + 12);
  if (*(this + 13) == v7)
  {
    v13 = (this + 40);
    if (*(this + 63) < 0)
    {
      v13 = *v13;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &v16, v13, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v16, off_1E8337C78);
  }

  v8 = *(*(v7 + 16) + 120);
  v9 = v8[2];
  if (v9 == 1819304813)
  {
    v10 = v8[3];
    if ((v10 & 1) == 0 || v8[8] != 32)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v9 != 1718773105 || v8[8] != 64)
    {
      goto LABEL_22;
    }

    v10 = v8[3];
  }

  if ((v10 & 0x20) == 0)
  {
LABEL_22:
    v11 = this + 40;
    if (*(this + 63) < 0)
    {
      v11 = *v11;
    }

    std::string::basic_string[abi:ne200100]<0>(&v16, v11);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, "ChannelCopierBox output format must be non-interleaved float ", &v16);
    AudioDSPGraph::ThrowException(1718449215, &v14, off_1E8335610);
  }

  return result;
}

void sub_1C921FF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *AudioDSPGraph::Boxes::ChannelCopierBox::process(void *this, int a2)
{
  v2 = this;
  v3 = this[9];
  v4 = this[10];
  v5 = (v4 - v3) >> 5;
  if (v4 == v3)
  {
    v22 = this + 5;
    if (*(this + 63) < 0)
    {
      v22 = *v22;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v28, v22, v5, 0);
    AudioDSPGraph::ThrowException(1919837985, v28, off_1E8337C60);
  }

  v6 = this[12];
  if (this[13] == v6)
  {
    v23 = this + 5;
    if (*(this + 63) < 0)
    {
      v23 = *v23;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v28, v23, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v28, off_1E8337C78);
  }

  v7 = *(v3 + 16);
  v8 = *(*(*(v6 + 16) + 56) + 80);
  v9 = *v8;
  if (v9)
  {
    v10 = *(*(v7 + 56) + 80);
    v11 = ((4 * a2) << (*(*(v7 + 120) + 8) == 1718773105));
    v12 = (v8 + 4);
    do
    {
      *(v12 - 1) = v11;
      v13 = *(v10 + 16);
      this = *v12;
      if (v13 != *v12)
      {
        this = memcpy(this, v13, v11);
      }

      v12 += 2;
      --v9;
    }

    while (v9);
    v3 = v2[9];
    v4 = v2[10];
    v5 = (v4 - v3) >> 5;
  }

  if (v4 == v3)
  {
    v24 = v2 + 5;
    if (*(v2 + 63) < 0)
    {
      v24 = *v24;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v28, v24, v5, 0);
    AudioDSPGraph::ThrowException(1919837985, v28, off_1E8337C60);
  }

  v14 = v2[12];
  if (v2[13] == v14)
  {
    v25 = v2 + 5;
    if (*(v2 + 63) < 0)
    {
      v25 = *v25;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v28, v25, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v28, off_1E8337C78);
  }

  v15 = *(*(v3 + 16) + 56);
  v16 = *(*(v14 + 16) + 56);
  v17 = *(v15 + 8);
  v18 = *(v15 + 24);
  v19 = *(v15 + 40);
  *(v16 + 56) = *(v15 + 56);
  *(v16 + 40) = v19;
  *(v16 + 24) = v18;
  *(v16 + 8) = v17;
  v20 = v2[9];
  if (v2[10] == v20)
  {
    v26 = v2 + 5;
    if (*(v2 + 63) < 0)
    {
      v26 = *v26;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v28, v26, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v28, off_1E8337C60);
  }

  v21 = v2[12];
  if (v2[13] == v21)
  {
    v27 = v2 + 5;
    if (*(v2 + 63) < 0)
    {
      v27 = *v27;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v28, v27, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v28, off_1E8337C78);
  }

  *(*(*(v21 + 16) + 56) + 72) = *(*(*(v20 + 16) + 56) + 72);
  return this;
}

void sub_1C9220258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ChannelCopierBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.36328254e170;
  *a1 = xmmword_1C925F300;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::ChannelCopierBox::~ChannelCopierBox(AudioDSPGraph::Boxes::ChannelCopierBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Boxes::ChannelJoinerBox::initialize(AudioDSPGraph::Boxes::ChannelJoinerBox *this)
{
  result = AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v21 = (this + 40);
    if (*(this + 63) < 0)
    {
      v21 = *v21;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v28, v21, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v28, off_1E8337C78);
  }

  v4 = *(*(v3 + 16) + 120);
  v5 = v4[3];
  if ((v5 & 0x20) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v27, "ChannelJoinerBox output format must be de-interleaved");
    AudioDSPGraph::ThrowException(1718449215, v27, off_1E8335628);
  }

  v6 = v4[2];
  if (v6 == 1819304813)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_38;
    }

    v7 = v4[8];
    if (v7 != 32)
    {
      goto LABEL_38;
    }
  }

  else if (v6 != 1718773105 || (v7 = v4[8], v7 != 64))
  {
LABEL_38:
    std::string::basic_string[abi:ne200100]<0>(v26, "ChannelJoinerBox output format must be 32-bit floating-point PCM or 'freq'");
    AudioDSPGraph::ThrowException(1718449215, v26, off_1E8335640);
  }

  v8 = *(this + 9);
  v9 = *(this + 10) - v8;
  if ((v9 & 0x1FFFFFFFE0) != 0)
  {
    LODWORD(v10) = 0;
    v11 = v9 >> 5;
    v12 = (v9 >> 5);
    v13 = v8 + 16;
    v14 = v11;
    result = v7;
    v15 = v4[2];
    while (1)
    {
      if (!v14)
      {
        v20 = (this + 40);
        if (*(this + 63) < 0)
        {
          v20 = *v20;
        }

        caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v28, v20, v11, v11);
        AudioDSPGraph::ThrowException(1919837985, v28, off_1E8337C60);
      }

      v16 = *(*v13 + 120);
      v17 = v16[3];
      if ((v17 & 0x20) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v25, "ChannelJoinerBox input format must be de-interleaved");
        AudioDSPGraph::ThrowException(1718449215, v25, off_1E8335658);
      }

      v18 = v16[2];
      if (v18 == 1819304813)
      {
        if ((v17 & 1) == 0 || v16[8] != 32)
        {
          goto LABEL_33;
        }

        result = v7;
        v15 = v4[2];
        if (v6 == 1718773105)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v18 != 1718773105 || v16[8] != 64)
        {
LABEL_33:
          std::string::basic_string[abi:ne200100]<0>(v24, "ChannelJoinerBox input format must be 32-bit floating-point PCM or 'freq'");
          AudioDSPGraph::ThrowException(1718449215, v24, off_1E8335670);
        }

        if (v15 != 1718773105 || result != 64)
        {
LABEL_32:
          std::string::basic_string[abi:ne200100]<0>(v23, "ChannelJoinerBox input and output formats must be compatible");
          AudioDSPGraph::ThrowException(1718449215, v23, off_1E8335688);
        }

        v15 = 1718773105;
      }

      v10 = (v16[7] + v10);
      v13 += 32;
      --v14;
      if (!--v12)
      {
        goto LABEL_26;
      }
    }
  }

  v10 = 0;
LABEL_26:
  v19 = v4[7];
  if (v19 != v10)
  {
    caulk::make_string("ChannelJoinerBox channel mismatch: can't join %u input channels into %u output channels", v22, v10, v19);
    AudioDSPGraph::ThrowException(1718449215, v22, off_1E83356A0);
  }

  return result;
}

void sub_1C92205E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::ChannelJoinerBox::process(uint64_t this, unsigned int a2)
{
  v2 = *(this + 96);
  if (*(this + 104) == v2)
  {
    v31 = (this + 40);
    if (*(this + 63) < 0)
    {
      v31 = *v31;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v37, v31, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v37, off_1E8337C78);
  }

  v3 = *(v2 + 16);
  v4 = *(this + 72);
  v5 = *(this + 80);
  v6 = v5 - v4;
  if (((v5 - v4) & 0x1FFFFFFFE0) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(*(v3 + 56) + 80);
    v10 = (4 * a2) << (*(*(v3 + 120) + 8) == 1718773105);
    v36 = this;
    LOBYTE(v11) = 1;
    do
    {
      v12 = v6 >> 5;
      if (v12 <= v7)
      {
        v30 = (this + 40);
        if (*(this + 63) < 0)
        {
          v30 = *v30;
        }

        caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v37, v30, v12, v7);
        AudioDSPGraph::ThrowException(1919837985, v37, off_1E8337C60);
      }

      v13 = *(v4 + 32 * v7 + 16);
      v14 = *(v13 + 120);
      v15 = *(v13 + 56);
      v16 = *(v15 + 72);
      if (*(v14 + 28))
      {
        v17 = 0;
        v18 = (*(v15 + 80) + 16);
        v19 = &v9[4 * v8 + 4];
        do
        {
          if (v8 + v17 >= *v9)
          {
            __assert_rtn("process", "ChannelJoinerBox.cpp", 68, "outBufferIndex < outABL->mNumberBuffers");
          }

          *(v19 - 1) = v10;
          if ((v16 & 0x10) != 0)
          {
            bzero(*v19, v10);
          }

          else if (*v18 != *v19)
          {
            memcpy(*v19, *v18, v10);
          }

          ++v17;
          v18 += 2;
          v19 += 2;
        }

        while (v17 < *(v14 + 28));
        v8 = (v8 + v17);
        this = v36;
        v4 = *(v36 + 72);
        v5 = *(v36 + 80);
      }

      v11 &= (v16 & 0x10) >> 4;
      ++v7;
      v6 = v5 - v4;
    }

    while (v7 < ((v5 - v4) >> 5));
  }

  else
  {
    v11 = 1;
  }

  if (v5 == v4)
  {
    v32 = (this + 40);
    if (*(this + 63) < 0)
    {
      v32 = *v32;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v37, v32, v6 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, v37, off_1E8337C60);
  }

  v20 = *(this + 96);
  if (*(this + 104) == v20)
  {
    v33 = (this + 40);
    if (*(this + 63) < 0)
    {
      v33 = *v33;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v37, v33, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v37, off_1E8337C78);
  }

  v21 = *(*(v4 + 16) + 56);
  v22 = *(*(v20 + 16) + 56);
  v23 = *(v21 + 8);
  v24 = *(v21 + 24);
  v25 = *(v21 + 40);
  *(v22 + 56) = *(v21 + 56);
  *(v22 + 40) = v25;
  *(v22 + 24) = v24;
  *(v22 + 8) = v23;
  v26 = *(this + 72);
  if (*(this + 80) == v26)
  {
    v34 = (this + 40);
    if (*(this + 63) < 0)
    {
      v34 = *v34;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v37, v34, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v37, off_1E8337C60);
  }

  v27 = *(this + 96);
  if (*(this + 104) == v27)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v37, v35, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v37, off_1E8337C78);
  }

  v28 = *(*(*(v26 + 16) + 56) + 72);
  v29 = *(*(v27 + 16) + 56);
  if (!v11)
  {
    v28 &= ~0x10u;
  }

  *(v29 + 72) = v28;
  return this;
}

void sub_1C9220A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ChannelJoinerBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.37152887e170;
  *a1 = xmmword_1C925F2E0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::ChannelJoinerBox::~ChannelJoinerBox(AudioDSPGraph::Boxes::ChannelJoinerBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Boxes::ChannelSplitterBox::initialize(AudioDSPGraph::Boxes::ChannelSplitterBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v34 = (this + 40);
    if (*(this + 63) < 0)
    {
      v34 = *v34;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v40, v34, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v40, off_1E8337C60);
  }

  v3 = *(*(v2 + 16) + 120);
  v4 = v3[7];
  v5 = *(this + 12);
  v6 = *(this + 13) - v5;
  v7 = v6 >> 5;
  v8 = (v6 >> 5);
  v9 = 0;
  v10 = v6 & 0x1FFFFFFFE0;
  if ((v6 & 0x1FFFFFFFE0) != 0)
  {
    v11 = (v6 >> 5) - 1;
    if (v7 < v11)
    {
      v11 = v7;
    }

    v12 = (v5 + 16);
    v13 = v7;
    v14 = v8;
    do
    {
      if (!v13)
      {
        v28 = (this + 40);
        if (*(this + 63) < 0)
        {
          v28 = *v28;
        }

        caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v40, v28, v7, v11);
        AudioDSPGraph::ThrowException(1919837985, v40, off_1E8337C78);
      }

      v15 = *v12;
      v12 += 4;
      v9 = (*(*(v15 + 120) + 28) + v9);
      --v13;
      --v14;
    }

    while (v14);
  }

  v16 = v3[2];
  if (v16 == 1819304813)
  {
    result = v3[3];
    if ((result & 1) == 0 || v3[8] != 32)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (v16 != 1718773105 || v3[8] != 64)
    {
LABEL_61:
      operator new();
    }

    result = v3[3];
  }

  if ((result & 0x20) == 0)
  {
    goto LABEL_61;
  }

  if (v4 != v9)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string("ChannelSplitterBox %s input has %u channels but output has %u channels", v39, v35, v4, v9);
    AudioDSPGraph::ThrowException(1718449215, v39, off_1E83356D0);
  }

  if (v10)
  {
    v18 = v5 + 16;
    v19 = v7;
    v20 = v8;
    do
    {
      if (!v19)
      {
        v29 = (this + 40);
        if (*(this + 63) < 0)
        {
          v29 = *v29;
        }

        caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v40, v29, v7, v7);
        AudioDSPGraph::ThrowException(1919837985, v40, off_1E8337C78);
      }

      v21 = *(*v18 + 120);
      v22 = v21[2];
      if (v22 == 1819304813)
      {
        result = v21[3];
        if ((result & 1) == 0 || v21[8] != 32)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v22 != 1718773105 || v21[8] != 64)
        {
LABEL_40:
          v27 = (this + 40);
          if (*(this + 63) < 0)
          {
            v27 = *v27;
          }

          caulk::make_string("ChannelSplitterBox %s output format must be non-interleaved float in time- of frequency-domain", v38, v27);
          AudioDSPGraph::ThrowException(1718449215, v38, off_1E83356E8);
        }

        result = v21[3];
      }

      if ((result & 0x20) == 0)
      {
        goto LABEL_40;
      }

      v18 += 32;
      --v19;
      --v20;
    }

    while (v20);
    v23 = v5 + 16;
    v24 = v7;
    if (v16 == 1718773105)
    {
      do
      {
        if (!v24)
        {
          v30 = (this + 40);
          if (*(this + 63) < 0)
          {
            v30 = *v30;
          }

          caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v40, v30, v7, v7);
          AudioDSPGraph::ThrowException(1919837985, v40, off_1E8337C78);
        }

        v25 = *(*v23 + 120);
        if (*(v25 + 8) != 1718773105 || *(v25 + 32) != 64)
        {
          v32 = (this + 40);
          if (*(this + 63) < 0)
          {
            v32 = *v32;
          }

          caulk::make_string("ChannelSplitterBox %s output is in time-domain but input is in frequency-domain", v37, v32);
          AudioDSPGraph::ThrowException(1718449215, v37, off_1E8335700);
        }

        v23 += 32;
        --v24;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        if (!v24)
        {
          v31 = (this + 40);
          if (*(this + 63) < 0)
          {
            v31 = *v31;
          }

          caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v40, v31, v7, v7);
          AudioDSPGraph::ThrowException(1919837985, v40, off_1E8337C78);
        }

        v26 = *(*v23 + 120);
        if (*(v26 + 8) == 1718773105 && *(v26 + 32) == 64)
        {
          v33 = (this + 40);
          if (*(this + 63) < 0)
          {
            v33 = *v33;
          }

          caulk::make_string("ChannelSplitterBox %s output is in frequency-domain but input is in time-domain", v36, v33);
          AudioDSPGraph::ThrowException(1718449215, v36, off_1E8335718);
        }

        v23 += 32;
        --v24;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

void sub_1C9220F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 65) < 0)
  {
    operator delete(*(v30 - 88));
  }

  _Unwind_Resume(exception_object);
}

void *AudioDSPGraph::Boxes::ChannelSplitterBox::process(void *this, int a2)
{
  v2 = this;
  v3 = this[9];
  v4 = this[10];
  if (v4 == v3)
  {
    v30 = (v4 - v3) >> 5;
    v31 = this + 5;
    if (*(this + 63) < 0)
    {
      v31 = *v31;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v32, v31, v30, 0);
    AudioDSPGraph::ThrowException(1919837985, v32, off_1E8337C60);
  }

  v5 = this[12];
  v6 = this[13];
  v7 = *(v3 + 16);
  if (((v6 - v5) & 0x1FFFFFFFE0) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = ((4 * a2) << (*(*(v7 + 120) + 8) == 1718773105));
    v11 = *(*(v7 + 56) + 80) + 8;
    v12 = ((v6 - v5) >> 5);
    do
    {
      v13 = (v6 - v5) >> 5;
      if (v13 <= v8)
      {
        v29 = v2 + 5;
        if (*(v2 + 63) < 0)
        {
          v29 = *v29;
        }

        caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v32, v29, v13, v8);
        AudioDSPGraph::ThrowException(1919837985, v32, off_1E8337C78);
      }

      v14 = *(*(*(v5 + 32 * v8 + 16) + 56) + 80);
      v15 = *v14;
      if (v15)
      {
        v16 = (v14 + 4);
        do
        {
          *(v16 - 1) = v10;
          v17 = *(v11 + 16 * v9 + 8);
          this = *v16;
          if (v17 != *v16)
          {
            this = memcpy(this, v17, v10);
          }

          ++v9;
          v16 += 2;
          --v15;
        }

        while (v15);
        v3 = v2[9];
        v4 = v2[10];
      }

      if (v4 == v3)
      {
        v25 = v2 + 5;
        if (*(v2 + 63) < 0)
        {
          v25 = *v25;
        }

        caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v32, v25, 0, 0);
        AudioDSPGraph::ThrowException(1919837985, v32, off_1E8337C60);
      }

      v18 = v2[12];
      v19 = (v2[13] - v18) >> 5;
      if (v19 <= v8)
      {
        v28 = v2 + 5;
        if (*(v2 + 63) < 0)
        {
          v28 = *v28;
        }

        caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v32, v28, v19, v8);
        AudioDSPGraph::ThrowException(1919837985, v32, off_1E8337C78);
      }

      v20 = *(*(v3 + 16) + 56);
      v21 = *(*(v18 + 32 * v8 + 16) + 56);
      v22 = *(v20 + 8);
      v23 = *(v20 + 24);
      v24 = *(v20 + 40);
      *(v21 + 56) = *(v20 + 56);
      *(v21 + 40) = v24;
      *(v21 + 24) = v23;
      *(v21 + 8) = v22;
      v3 = v2[9];
      v4 = v2[10];
      if (v4 == v3)
      {
        v26 = v2 + 5;
        if (*(v2 + 63) < 0)
        {
          v26 = *v26;
        }

        caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v32, v26, 0, 0);
        AudioDSPGraph::ThrowException(1919837985, v32, off_1E8337C60);
      }

      v5 = v2[12];
      v6 = v2[13];
      if ((v6 - v5) >> 5 <= v8)
      {
        v27 = v2 + 5;
        if (*(v2 + 63) < 0)
        {
          v27 = *v27;
        }

        caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v32, v27, (v6 - v5) >> 5, v8);
        AudioDSPGraph::ThrowException(1919837985, v32, off_1E8337C78);
      }

      *(*(*(v5 + 32 * v8++ + 16) + 56) + 72) = *(*(*(v3 + 16) + 56) + 72);
    }

    while (v8 != v12);
  }

  return this;
}

void sub_1C922132C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ChannelSplitterBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.38215236e170;
  *a1 = xmmword_1C925F2F0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::ChannelSplitterBox::~ChannelSplitterBox(AudioDSPGraph::Boxes::ChannelSplitterBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

double AudioDSPGraph::Boxes::ConstantSourceBox::initialize(AudioDSPGraph::Boxes::ConstantSourceBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v2 = *(this + 12);
  v3 = *(this + 13) - v2;
  if ((v3 & 0x1FFFFFFFE0) != 0)
  {
    v4 = v3 >> 5;
    v5 = (v3 >> 5);
    v6 = v2 + 16;
    v7 = v4;
    do
    {
      if (!v7)
      {
        v12 = (this + 40);
        if (*(this + 63) < 0)
        {
          v12 = *v12;
        }

        caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v13, v12, v4, v4);
        AudioDSPGraph::ThrowException(1919837985, v13, off_1E8337C78);
      }

      v8 = *(*v6 + 120);
      v9 = v8[2];
      if (v9 == 1819304813)
      {
        v10 = v8[3];
        if ((v10 & 1) == 0 || v8[8] != 32)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v9 != 1718773105 || v8[8] != 64)
        {
LABEL_14:
          operator new();
        }

        v10 = v8[3];
      }

      if ((v10 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      v6 += 32;
      --v7;
      --v5;
    }

    while (v5);
  }

  *(this + 776) = 0u;
  *(this + 99) = 0x3FF0000000000000;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *&result = 1;
  *(this + 104) = 1;
  return result;
}

void sub_1C9221558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ConstantSourceBox::process(AudioDSPGraph::Boxes::ConstantSourceBox *this, unsigned int a2)
{
  v3 = *(this + 12);
  v4 = *(this + 13);
  v5 = v4 - v3;
  if (((v4 - v3) & 0x1FFFFFFFE0) != 0)
  {
    v6 = 0;
    v7 = 4 * a2;
    v8 = a2 + 1;
    v9 = a2 - 1;
    v10 = 8 * a2;
    __N_4 = (this + 776);
    do
    {
      v11 = v5 >> 5;
      if (v11 <= v6)
      {
        v27 = (this + 40);
        if (*(this + 63) < 0)
        {
          v27 = *v27;
        }

        caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v31, v27, v11, v6);
        AudioDSPGraph::ThrowException(1919837985, v31, off_1E8337C78);
      }

      v12 = *(*(*(v3 + 32 * v6 + 16) + 56) + 80);
      v13 = *v12;
      if (v13)
      {
        v14 = (v12 + 4);
        do
        {
          v15 = *(this + 12);
          v16 = (*(this + 13) - v15) >> 5;
          if (v16 <= v6)
          {
            v26 = (this + 40);
            if (*(this + 63) < 0)
            {
              v26 = *v26;
            }

            caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v31, v26, v16, v6);
            AudioDSPGraph::ThrowException(1919837985, v31, off_1E8337C78);
          }

          v17 = *v14;
          v18 = (this + 764);
          if (*(*(*(v15 + 32 * v6 + 16) + 120) + 8) == 1718773105)
          {
            vDSP_vfill(v18, v17, 1, v8);
            vDSP_vfill(this + 192, &(*v14)[a2 + 1], 1, v9);
            v19 = v10;
          }

          else
          {
            vDSP_vfill(v18, v17, 1, a2);
            v19 = v7;
          }

          *(v14 - 1) = v19;
          v14 += 2;
          --v13;
        }

        while (v13);
        v3 = *(this + 12);
        v4 = *(this + 13);
      }

      v20 = (v4 - v3) >> 5;
      if (v20 <= v6)
      {
        v28 = (this + 40);
        if (*(this + 63) < 0)
        {
          v28 = *v28;
        }

        caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v31, v28, v20, v6);
        AudioDSPGraph::ThrowException(1919837985, v31, off_1E8337C78);
      }

      v21 = *(*(v3 + 32 * v6 + 16) + 56);
      *(v21 + 72) = 512;
      v22 = *__N_4;
      v23 = __N_4[1];
      v24 = __N_4[2];
      *(v21 + 56) = __N_4[3];
      *(v21 + 40) = v24;
      *(v21 + 24) = v23;
      *(v21 + 8) = v22;
      ++v6;
      v3 = *(this + 12);
      v4 = *(this + 13);
      v5 = v4 - v3;
    }

    while (v6 < ((v4 - v3) >> 5));
  }

  result = *(this + 97) + a2;
  *(this + 97) = result;
  return result;
}

void sub_1C92217F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ConstantSourceBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 9.19367275e170;
  *a1 = xmmword_1C925F320;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::ConstantSourceBox::getParameterInfo(AudioDSPGraph::Boxes::ConstantSourceBox *this@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = -10866;
LABEL_7:
    *a4 = v4;
    *(a4 + 104) = 0;
    goto LABEL_8;
  }

  if (a3 > 1)
  {
    v4 = -10878;
    goto LABEL_7;
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  LODWORD(v14) = 0;
  if (a3)
  {
    strcpy(v12, "imag value (freq domain only)");
    HIWORD(v12[1]) = 0;
    v13 = xmmword_1C925F628;
    v5 = @"imag value (freq domain only)";
  }

  else
  {
    v12[0] = *"real value";
    v12[1] = unk_1C925F64D;
    v13 = xmmword_1C925F65D;
    v5 = @"real value";
  }

  *(a4 + 32) = v13;
  *(a4 + 48) = v14;
  *a4 = v12[0];
  *(a4 + 16) = v12[1];
  *(a4 + 64) = v15;
  *(a4 + 72) = v5;
  *(a4 + 80) = 0;
  __asm { FMOV            V0.2S, #-20.0 }

  *(a4 + 84) = -_D0;
  *(a4 + 92) = 0;
  *(a4 + 96) = 3355443200;
  *(a4 + 104) = 1;
LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
}

void AudioDSPGraph::Boxes::ConstantSourceBox::getParameterList(int a1@<W1>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &v4, 2uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void AudioDSPGraph::Boxes::ConstantSourceBox::getParameter(AudioDSPGraph::Boxes::ConstantSourceBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    LODWORD(v7) = -10866;
    v6 = off_1E8335790;
  }

  else if (a2 == 1)
  {
    if (!a4)
    {
      v5 = *(this + 192);
      goto LABEL_8;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E83357C0;
  }

  else if (a2)
  {
    LODWORD(v7) = -10878;
    v6 = off_1E8334BA8;
  }

  else
  {
    if (!a4)
    {
      v5 = *(this + 191);
LABEL_8:
      *a5 = v5;
      *(a5 + 32) = 1;
      return;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E83357A8;
  }

  *(&v7 + 1) = v6;
  v8 = 0;
  *a5 = v7;
  *(a5 + 16) = 0;
  v9 = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::ConstantSourceBox::setParameter(AudioDSPGraph::Boxes::ConstantSourceBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v7) = -10866;
    v6 = off_1E8335748;
  }

  else if (a3 == 1)
  {
    if (!a5)
    {
      *(this + 192) = a2;
      goto LABEL_8;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E8335778;
  }

  else if (a3)
  {
    LODWORD(v7) = -10878;
    v6 = off_1E8334BC0;
  }

  else
  {
    if (!a5)
    {
      *(this + 191) = a2;
LABEL_8:
      *(a6 + 32) = 1;
      return;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E8335760;
  }

  *(&v7 + 1) = v6;
  v8 = 0;
  *a6 = v7;
  *(a6 + 16) = 0;
  v9 = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::ConstantSourceBox::~ConstantSourceBox(AudioDSPGraph::Boxes::ConstantSourceBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Boxes::CopyBox::initialize(AudioDSPGraph::Boxes::CopyBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v5 = (this + 40);
    if (*(this + 63) < 0)
    {
      v5 = *v5;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v7, v5, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v7, off_1E8337C60);
  }

  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v6 = (this + 40);
    if (*(this + 63) < 0)
    {
      v6 = *v6;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v7, v6, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v7, off_1E8337C78);
  }

  result = memcmp(*(*(v2 + 16) + 120), *(*(v3 + 16) + 120), 0x28uLL);
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_1C9221CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

__n128 AudioDSPGraph::Boxes::CopyBox::process(AudioDSPGraph::Boxes::CopyBox *this, int a2)
{
  v3 = *(this + 9);
  if (*(this + 10) == v3)
  {
    v14 = (this + 40);
    if (*(this + 63) < 0)
    {
      v14 = *v14;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v17, v14, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v17, off_1E8337C60);
  }

  v4 = *(this + 12);
  if (*(this + 13) == v4)
  {
    v15 = (this + 40);
    if (*(this + 63) < 0)
    {
      v15 = *v15;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v17, v15, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v17, off_1E8337C78);
  }

  AudioDSPGraph::SimpleABL::copy((*(*(v3 + 16) + 56) + 80), (*(*(v4 + 16) + 56) + 80), 0, 0, (*(*(*(v3 + 16) + 120) + 24) * a2), 1);
  v6 = *(this + 9);
  if (*(this + 10) == v6)
  {
    v16 = (this + 40);
    if (*(this + 63) < 0)
    {
      v16 = *v16;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v17, v16, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v17, off_1E8337C60);
  }

  v7 = *(this + 12);
  v8 = *(this + 13);
  if (v7 != v8)
  {
    v9 = *(*(v6 + 16) + 56);
    v10 = *(v9 + 72);
    do
    {
      v11 = *(*(v7 + 16) + 56);
      result = *(v9 + 8);
      v12 = *(v9 + 24);
      v13 = *(v9 + 40);
      *(v11 + 56) = *(v9 + 56);
      *(v11 + 40) = v13;
      *(v11 + 24) = v12;
      *(v11 + 8) = result;
      *(v11 + 72) = v10;
      v7 += 32;
    }

    while (v7 != v8);
  }

  return result;
}

void sub_1C9221EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::CopyBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 9.49207469e170;
  *a1 = xmmword_1C925F260;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::CopyBox::~CopyBox(AudioDSPGraph::Boxes::CopyBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

double AudioDSPGraph::Boxes::DecibelControlBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.63842702e175;
  *a1 = xmmword_1C925F330;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::DecibelControlBox::getParameterInfo(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (a2 == 1)
    {
      *a3 = *"DBValue";
      *(a3 + 16) = unk_1C925F682;
      *(a3 + 32) = xmmword_1C925F692;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 72) = @"DBValue";
      *(a3 + 80) = 13;
      *(a3 + 84) = -COERCE_DOUBLE(0x7F0000007FLL);
      *(a3 + 92) = 0;
    }

    else
    {
      if (a2)
      {
        v4 = -10878;
        goto LABEL_3;
      }

      memset(v6, 0, sizeof(v6));
      *a3 = *"LinearValue";
      *(a3 + 16) = unk_1C925F6B7;
      *(a3 + 32) = xmmword_1C925F6C7;
      *(a3 + 48) = *v6;
      *(a3 + 64) = 0 >> 96;
      *(a3 + 72) = @"LinearValue";
      *(a3 + 80) = 14;
      *(a3 + 84) = 0x7F80000000000000;
      *(a3 + 92) = 1065353216;
    }

    *(a3 + 96) = 3355443200;
    *(a3 + 104) = 1;
    goto LABEL_9;
  }

  v4 = -10866;
LABEL_3:
  *a3 = v4;
  *(a3 + 104) = 0;
LABEL_9:
  v5 = *MEMORY[0x1E69E9840];
}

void AudioDSPGraph::Boxes::DecibelControlBox::getParameterList(int a1@<W1>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &v4, 2uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void AudioDSPGraph::Boxes::DecibelControlBox::getParameter(AudioDSPGraph::Boxes::DecibelControlBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    LODWORD(v7) = -10866;
    v6 = off_1E8335850;
  }

  else if (a2 == 1)
  {
    if (!a4)
    {
      v5 = *(this + 192);
      goto LABEL_8;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E8335880;
  }

  else if (a2)
  {
    LODWORD(v7) = -10878;
    v6 = off_1E8334BA8;
  }

  else
  {
    if (!a4)
    {
      v5 = *(this + 191);
LABEL_8:
      *a5 = v5;
      *(a5 + 32) = 1;
      return;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E8335868;
  }

  *(&v7 + 1) = v6;
  v8 = 0;
  *a5 = v7;
  *(a5 + 16) = 0;
  v9 = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::DecibelControlBox::setParameter(AudioDSPGraph::Boxes::DecibelControlBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v11) = -10866;
    v9 = off_1E83357F0;
    goto LABEL_10;
  }

  v7 = a2;
  if (a3 == 1)
  {
    if (!a5)
    {
      *(this + 191) = __exp10f(a2 * 0.05);
      goto LABEL_15;
    }

    LODWORD(v11) = -10877;
    v9 = off_1E8335838;
LABEL_10:
    *(&v11 + 1) = v9;
    v12 = 0;
    *a6 = v11;
    *(a6 + 16) = 0;
    goto LABEL_11;
  }

  if (a3)
  {
    LODWORD(v11) = -10878;
    v9 = off_1E8334BC0;
    goto LABEL_10;
  }

  if (a5)
  {
    LODWORD(v11) = -10877;
    v9 = off_1E8335808;
    goto LABEL_10;
  }

  if (a2 < 0.0)
  {
    LODWORD(v11) = 1919837985;
    *(&v11 + 1) = off_1E8335820;
    v12 = 0;
    *a6 = v11;
    *(a6 + 16) = "parameter out of range";
LABEL_11:
    v13 = 0;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v11);
    return;
  }

  *(this + 191) = a2;
  v10 = 1.1755e-38;
  if (v7 >= 1.1755e-38)
  {
    v10 = v7;
  }

  v7 = log10f(v10) * 20.0;
LABEL_15:
  *(this + 192) = v7;
  *(a6 + 32) = 1;
}

void AudioDSPGraph::Boxes::DecibelControlBox::~DecibelControlBox(AudioDSPGraph::Boxes::DecibelControlBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void AudioDSPGraph::Boxes::DelayBox::reset(AudioDSPGraph::Boxes::DelayBox *this)
{
  v2 = *(this + 96);
  if (v2 && *v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      bzero(*&v2[v3 + 4], v2[v3 + 3]);
      ++v4;
      v2 = *(this + 96);
      v3 += 4;
    }

    while (v4 < *v2);
  }

  v5 = *(this + 197);
  *(this + 198) = v5;
  *(this + 100) = v5;
}

void AudioDSPGraph::Boxes::DelayBox::uninitialize(AudioDSPGraph::Boxes::DelayBox *this)
{
  AudioDSPGraph::Box::uninitialize(this);

  AudioDSPGraph::SimpleABL::free((this + 768));
}

void AudioDSPGraph::Boxes::DelayBox::initialize(AudioDSPGraph::Boxes::DelayBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v2 = *(this + 196);
  if (v2)
  {
    v3 = *(this + 12);
    if (*(this + 13) == v3)
    {
      v12 = (this + 40);
      if (*(this + 63) < 0)
      {
        v12 = *v12;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v13, v12, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v13, off_1E8337C78);
    }

    v4 = *(*(v3 + 16) + 120);
    v5 = v2 + 2 * *(*(this + 3) + 272);
    *(this + 199) = v5;
    v6 = (*(v4 + 12) & 0x20) == 0;
    v9 = v4 + 24;
    v7 = *(v4 + 24);
    v8 = *(v9 + 4);
    if (v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }

    AudioDSPGraph::SimpleABL::alloc((this + 768), v10, v7 * v5, 0);
  }

  else
  {
    *(this + 199) = 0;
  }

  v11 = *(this + 197);
  *(this + 198) = v11;
  *(this + 100) = v11;
}

void sub_1C9222500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *AudioDSPGraph::Boxes::DelayBox::process(AudioDSPGraph::Boxes::DelayBox *this, int a2)
{
  v3 = *(this + 197);
  if (v3)
  {
    v4 = *(this + 12);
    if (*(this + 13) == v4)
    {
      v41 = (this + 40);
      if (*(this + 63) < 0)
      {
        v41 = *v41;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v45, v41, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v45, off_1E8337C78);
    }

    v5 = *(this + 9);
    if (*(this + 10) == v5)
    {
      v42 = (this + 40);
      if (*(this + 63) < 0)
      {
        v42 = *v42;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v45, v42, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v45, off_1E8337C60);
    }

    v7 = *(v4 + 16);
    v8 = *(v7 + 120);
    v9 = *(*(v5 + 16) + 56);
    v10 = *(v7 + 56);
    v12 = *(v8 + 24);
    v11 = *(v8 + 28);
    v13 = (v12 * a2);
    v14 = *(this + 200);
    if (v3 != *(this + 198))
    {
      if (v14 >= v3)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(this + 199);
      }

      *(this + 201) = v14 - v3 + v15;
    }

    AudioDSPGraph::SimpleABL::dstWrapCopy((v9 + 80), this + 96, v14 * v12, v13);
    result = AudioDSPGraph::SimpleABL::srcWrapCopy((this + 768), (v10 + 80), (*(this + 201) * v12), v13, 0);
    if (v11)
    {
      v19 = (v11 + 3) & 0x1FFFFFFFCLL;
      v20 = vdupq_n_s64(v11 - 1);
      v21 = xmmword_1C925F0F0;
      v22 = xmmword_1C925F100;
      v23 = (*(v10 + 80) + 44);
      v24 = vdupq_n_s64(4uLL);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v20, v22));
        if (vuzp1_s16(v25, *v20.i8).u8[0])
        {
          *(v23 - 8) = v13;
        }

        if (vuzp1_s16(v25, *&v20).i8[2])
        {
          *(v23 - 4) = v13;
        }

        if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v21))).i32[1])
        {
          *v23 = v13;
          v23[4] = v13;
        }

        v21 = vaddq_s64(v21, v24);
        v22 = vaddq_s64(v22, v24);
        v23 += 16;
        v19 -= 4;
      }

      while (v19);
    }

    v26 = *(this + 200) + a2;
    *(this + 200) = v26;
    v27 = *(this + 201) + a2;
    *(this + 201) = v27;
    v28 = *(this + 199);
    v29 = v26 >= v28;
    v30 = v26 - v28;
    if (v29)
    {
      *(this + 200) = v30;
    }

    v29 = v27 >= v28;
    v31 = v27 - v28;
    if (v29)
    {
      *(this + 201) = v31;
    }
  }

  else
  {
    v16 = *(this + 12);
    if (*(this + 13) == v16)
    {
      v43 = (this + 40);
      if (*(this + 63) < 0)
      {
        v43 = *v43;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v45, v43, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v45, off_1E8337C78);
    }

    v17 = *(this + 9);
    if (*(this + 10) == v17)
    {
      v44 = (this + 40);
      if (*(this + 63) < 0)
      {
        v44 = *v44;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v45, v44, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v45, off_1E8337C60);
    }

    result = AudioDSPGraph::Buffer::copyFrom(*(*(v16 + 16) + 56), *(*(v17 + 16) + 56));
  }

  v32 = *(this + 9);
  if (*(this + 10) == v32)
  {
    v40 = (this + 40);
    if (*(this + 63) < 0)
    {
      v40 = *v40;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v45, v40, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v45, off_1E8337C60);
  }

  v33 = *(this + 12);
  v34 = *(this + 13);
  if (v33 != v34)
  {
    v35 = *(*(v32 + 16) + 56);
    do
    {
      v36 = *(*(v33 + 16) + 56);
      v37 = *(v35 + 8);
      v38 = *(v35 + 24);
      v39 = *(v35 + 40);
      *(v36 + 56) = *(v35 + 56);
      *(v36 + 40) = v39;
      *(v36 + 24) = v38;
      *(v36 + 8) = v37;
      *(v36 + 72) = 0;
      v33 += 32;
    }

    while (v33 != v34);
  }

  *(this + 198) = v3;
  return result;
}

void sub_1C92228B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::DelayBox::setProperty(AudioDSPGraph::Boxes::DelayBox *this, int a2, int a3, unsigned int a4, int a5, unsigned int *a6)
{
  if (a2 != 64000 || (a4 | a3) != 0)
  {
    return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

  v8 = *(this + 2);
  if (v8 && (*(v8 + 922) & 1) != 0)
  {
    return 4294956447;
  }

  if (a5 != 4)
  {
    return 4294956445;
  }

  if (!a6)
  {
    return 4294967246;
  }

  v9 = 0;
  v10 = *a6;
  *(this + 196) = *a6;
  if (v10 >= *(this + 197))
  {
    v10 = *(this + 197);
  }

  *(this + 197) = v10;
  return v9;
}

uint64_t AudioDSPGraph::Boxes::DelayBox::getProperty(AudioDSPGraph::Boxes::DelayBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, CFStringRef *a6)
{
  if (a2 != 64000 || (a4 | a3) != 0)
  {
    return AudioDSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6);
  }

  if (*a5 != 4)
  {
    return 561211770;
  }

  if (!a6)
  {
    return 4294967246;
  }

  result = 0;
  *a6 = *(this + 196);
  return result;
}

uint64_t AudioDSPGraph::Boxes::DelayBox::getPropertyInfo(AudioDSPGraph::Boxes::DelayBox *this, int a2, int a3, int a4)
{
  if (a2 != 64000 || (a4 | a3) != 0)
  {
    return AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
  }

  result = 0x100000004;
  v7 = *(this + 2);
  if (v7)
  {
    if (*(v7 + 922))
    {
      return 4;
    }
  }

  return result;
}

double AudioDSPGraph::Boxes::DelayBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 4.23899122e175;
  *a1 = xmmword_1C925F310;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::DelayBox::getParameterInfo(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = -10866;
  }

  else
  {
    if (!a2)
    {
      memset(v6, 0, sizeof(v6));
      *a3 = *"delay samples";
      *(a3 + 16) = unk_1C925F6EC;
      *(a3 + 32) = xmmword_1C925F6FC;
      *(a3 + 48) = *v6;
      *(a3 + 64) = 0 >> 96;
      *(a3 + 72) = @"delay samples";
      *(a3 + 80) = 5;
      *(a3 + 84) = 0x4974240000000000;
      *(a3 + 92) = 1065353216;
      *(a3 + 96) = 3355443200;
      *(a3 + 104) = 1;
      goto LABEL_6;
    }

    v4 = -10878;
  }

  *a3 = v4;
  *(a3 + 104) = 0;
LABEL_6:
  v5 = *MEMORY[0x1E69E9840];
}

void AudioDSPGraph::Boxes::DelayBox::getParameterList(int a1@<W1>, void *a2@<X8>)
{
  if (!a1)
  {
    v6[0] = v3;
    v6[1] = v4;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v5, v6, 1uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

float AudioDSPGraph::Boxes::DelayBox::getParameter@<S0>(AudioDSPGraph::Boxes::DelayBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    LODWORD(v7) = -10866;
    v5 = off_1E83358F8;
    goto LABEL_4;
  }

  if (a2)
  {
    LODWORD(v7) = -10878;
    v5 = off_1E8334BA8;
LABEL_4:
    *(&v7 + 1) = v5;
    v8 = 0;
    *a5 = v7;
    *(a5 + 16) = 0;
    v9 = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v7);
    return result;
  }

  if (a4)
  {
    LODWORD(v7) = -10877;
    v5 = off_1E8335910;
    goto LABEL_4;
  }

  result = *(this + 197);
  *a5 = result;
  *(a5 + 32) = 1;
  return result;
}

void AudioDSPGraph::Boxes::DelayBox::setParameter(AudioDSPGraph::Boxes::DelayBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v8) = -10866;
    v6 = off_1E83358B0;
    goto LABEL_4;
  }

  if (a3)
  {
    LODWORD(v8) = -10878;
    v6 = off_1E8334BC0;
LABEL_4:
    *(&v8 + 1) = v6;
    v9 = 0;
    *a6 = v8;
    *(a6 + 16) = 0;
    v10 = 0;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v8);
    return;
  }

  if (a5)
  {
    LODWORD(v8) = -10877;
    v6 = off_1E83358C8;
    goto LABEL_4;
  }

  v7 = llroundf(a2);
  if (HIDWORD(v7))
  {
    LODWORD(v8) = -66743;
    v6 = off_1E83358E0;
    goto LABEL_4;
  }

  AudioDSPGraph::Boxes::DelayBox::setDelayFrames(a6, this, v7);
}

void AudioDSPGraph::Boxes::DelayBox::setDelayFrames(AudioDSPGraph::Boxes::DelayBox *this, uint64_t a2, unsigned int a3)
{
  v5 = *(a2 + 16);
  if (v5 && *(v5 + 922) == 1)
  {
    if (*(a2 + 784) < a3)
    {
      v10 = v3;
      v11 = v4;
      LODWORD(v7) = 1919837985;
      *(&v7 + 1) = off_1E8335898;
      v8 = 0;
      *this = v7;
      *(this + 2) = "delay value exceeds current maximum";
      v9 = 0;
      *(this + 6) = 0;
      *(this + 32) = 0;
      AudioDSPGraph::Error::~Error(&v7);
      return;
    }

    *(a2 + 788) = a3;
  }

  else
  {
    *(a2 + 788) = a3;
    v6 = *(a2 + 784);
    if (v6 <= a3)
    {
      v6 = a3;
    }

    *(a2 + 784) = v6;
  }

  *(this + 32) = 1;
}

unint64_t AudioDSPGraph::Boxes::DelayBox::selfLatencyInTicks(AudioDSPGraph::Boxes::DelayBox *this)
{
  v1 = *(this + 12);
  if (*(this + 13) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E8337C78);
  }

  return *(*(this + 2) + 848) / **(*(v1 + 16) + 120) * *(this + 197);
}

void sub_1C9222E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::DelayBox::~DelayBox(AudioDSPGraph::Boxes::DelayBox *this)
{
  *this = &unk_1F48CFF48;
  AudioDSPGraph::SimpleABL::free((this + 768));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CFF48;
  AudioDSPGraph::SimpleABL::free((this + 768));

  AudioDSPGraph::Box::~Box(this);
}

uint64_t AudioDSPGraph::Boxes::DelayBox::DelayBox(uint64_t a1, uint64_t a2, int a3)
{
  *__p = *a2;
  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Box::Box(a1, __p, 1u, 1u);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48CFF48;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0;
  *(a1 + 784) = a3;
  *(a1 + 788) = a3;
  *(a1 + 792) = 0u;
  return a1;
}

void sub_1C9222FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 AudioDSPGraph::Boxes::DenormalEliminatorBox::process(AudioDSPGraph::Boxes::DenormalEliminatorBox *this, unsigned int a2)
{
  v3 = atomic_load(this + 764);
  if (v3)
  {
    v4 = *(this + 9);
    if (*(this + 10) == v4)
    {
      v25 = (this + 40);
      if (*(this + 63) < 0)
      {
        v25 = *v25;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v29, v25, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v29, off_1E8337C60);
    }

    v5 = *(this + 12);
    if (*(this + 13) == v5)
    {
      v27 = (this + 40);
      if (*(this + 63) < 0)
      {
        v27 = *v27;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v29, v27, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v29, off_1E8337C78);
    }

    AudioDSPGraph::SimpleABL::copy((*(*(v4 + 16) + 56) + 80), *(*(*(v5 + 16) + 56) + 80));
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg | 0x1000000);
    v8 = *(this + 12);
    if (*(this + 13) == v8)
    {
      v26 = (this + 40);
      if (*(this + 63) < 0)
      {
        v26 = *v26;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v29, v26, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v29, off_1E8337C78);
    }

    v9 = **(*(*(v8 + 16) + 56) + 80);
    if (v9)
    {
      v10 = a2;
      v11 = 16;
      do
      {
        v28 = 0;
        v12 = *(this + 9);
        if (*(this + 10) == v12)
        {
          v22 = (this + 40);
          if (*(this + 63) < 0)
          {
            v22 = *v22;
          }

          caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v29, v22, 0, 0);
          AudioDSPGraph::ThrowException(1919837985, v29, off_1E8337C60);
        }

        v13 = *(this + 12);
        if (*(this + 13) == v13)
        {
          v23 = (this + 40);
          if (*(this + 63) < 0)
          {
            v23 = *v23;
          }

          caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v29, v23, 0, 0);
          AudioDSPGraph::ThrowException(1919837985, v29, off_1E8337C78);
        }

        MEMORY[0x1CCA853C0](*(*(*(*(v12 + 16) + 56) + 80) + v11), 1, &v28, *(*(*(*(v13 + 16) + 56) + 80) + v11), 1, v10);
        v11 += 16;
        --v9;
      }

      while (v9);
    }

    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg);
  }

  v14 = *(this + 9);
  if (*(this + 10) == v14)
  {
    v24 = (this + 40);
    if (*(this + 63) < 0)
    {
      v24 = *v24;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v29, v24, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v29, off_1E8337C60);
  }

  v15 = *(this + 12);
  v16 = *(this + 13);
  if (v15 != v16)
  {
    v17 = *(*(v14 + 16) + 56);
    v18 = *(v17 + 72);
    do
    {
      v19 = *(*(v15 + 16) + 56);
      result = *(v17 + 8);
      v20 = *(v17 + 24);
      v21 = *(v17 + 40);
      *(v19 + 56) = *(v17 + 56);
      *(v19 + 40) = v21;
      *(v19 + 24) = v20;
      *(v19 + 8) = result;
      *(v19 + 72) = v18;
      v15 += 32;
    }

    while (v15 != v16);
  }

  return result;
}

void sub_1C92232E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::DenormalEliminatorBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 6.02437133e175;
  *a1 = xmmword_1C925F340;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::DenormalEliminatorBox::~DenormalEliminatorBox(AudioDSPGraph::Boxes::DenormalEliminatorBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void AudioDSPGraph::Error::throwException(AudioDSPGraph::Error *this)
{
  v2 = *this;
  v3 = *(this + 2);
  if (*(this + 6))
  {
    if (v3)
    {
      (*(*v3 + 16))(&v4, *(this + 2));
      if (v6)
      {
        goto LABEL_8;
      }

LABEL_6:
      std::string::basic_string[abi:ne200100]<0>(&v7, &byte_1C9279A7A);
      goto LABEL_9;
    }
  }

  else if (v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, v3);
    v4 = v9;
    v5 = v10;
    v6 = 1;
LABEL_8:
    v7 = v4;
    v8 = v5;
    v5 = 0;
    v4 = 0uLL;
LABEL_9:
    AudioDSPGraph::ThrowException(v2, &v7, *(this + 1));
  }

  LOBYTE(v4) = 0;
  v6 = 0;
  goto LABEL_6;
}

void sub_1C9223490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::ThrowException(int a1, uint64_t *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  exception = __cxa_allocate_exception(0x30uLL);
  v7 = *a2;
  *&v9 = a2[1];
  *(&v9 + 7) = *(a2 + 15);
  v8 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  *exception = &unk_1F48D0448;
  *(exception + 2) = a1;
  *(exception + 2) = v7;
  *(exception + 3) = v9;
  *(exception + 31) = *(&v9 + 7);
  exception[39] = v8;
  *(exception + 5) = a3;
}

void AudioDSPGraph::Exception::~Exception(std::exception *this)
{
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

  std::exception::~exception(this);
}

{
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Exception::what(AudioDSPGraph::Exception *this)
{
  result = this + 16;
  if (*(this + 39) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t AudioDSPGraph::FileInjector::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 8);
    AudioDSPGraph::printi(a2, v4 + 4, "wire %p\n");
  }

  return result;
}

void AudioDSPGraph::FileInjector::~FileInjector(void **this)
{
  *this = &unk_1F48D0470;
  v2 = this + 10;
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  AudioDSPGraph::SimpleABL::free((this + 2));

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D0470;
  v2 = this + 10;
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  AudioDSPGraph::SimpleABL::free((this + 2));
}

void std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<TimeFreqConverter>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<TimeFreqConverter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      MEMORY[0x1CCA84AB0](v3, 0x1000C8052888210);
    }

    v4 = *(v2 + 64);
    if (v4)
    {
      MEMORY[0x1CCA84AB0](v4, 0x1000C8052888210);
    }

    v5 = *(v2 + 168);
    if (v5)
    {
      *(v2 + 176) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 144);
    if (v6)
    {
      *(v2 + 152) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 120);
    if (v7)
    {
      *(v2 + 128) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 96);
    if (v8)
    {
      *(v2 + 104) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 72);
    if (v9)
    {
      *(v2 + 80) = v9;
      operator delete(v9);
    }

    if (*(v2 + 48) == 1)
    {
      v10 = *(v2 + 40);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }

    MEMORY[0x1CCA84AE0](v2, 0x10A2C400E3D031BLL);
  }

  return a1;
}

uint64_t AudioDSPGraph::FileRecorder::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 8);
    AudioDSPGraph::printi(a2, v4 + 4, "wire %p\n");
  }

  return result;
}

void AudioDSPGraph::FileRecorder::~FileRecorder(void **this)
{
  *this = &unk_1F48D04A8;
  AudioDSPGraph::SimpleABL::free((this + 9));
  v3 = this + 6;
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D04A8;
  AudioDSPGraph::SimpleABL::free((this + 9));
  v3 = this + 6;
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void *std::vector<std::unique_ptr<TimeFreqConverter>>::reserve(void *result, unint64_t a2)
{
  v8 = *result;
  if (a2 > (result[2] - *result) >> 3)
  {
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = v2;
    v15 = v6;
    v16 = v7;
    v9 = result[1] - v8;
    v10 = result;
    std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<TimeFreqConverter>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<TimeFreqConverter>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(unint64_t result)
{
  if (HIDWORD(result))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "numerical cast overflow: could not retain value in conversion type");
  }

  return result;
}

unint64_t caulk::numeric::exceptional_mul<unsigned int>(unsigned int a1, unsigned int a2)
{
  result = a1 * a2;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
  }

  return result;
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C0] + 16);
  return result;
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
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

OpaqueExtAudioFile *std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100](OpaqueExtAudioFile **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return ExtAudioFileDispose(result);
  }

  return result;
}

void applesauce::CF::URLRef::~URLRef(const void **this)
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

void AudioDSPGraph::FileInjector::inject(AudioDSPGraph::FileInjector *this, unsigned int a2)
{
  v4 = *(this + 8);
  if (!v4)
  {
    kdebug_trace();
    v4 = *(this + 8);
  }

  v5 = *(this + 10);
  v6 = *(this + 1);
  if (v5 <= v4)
  {
    v11 = v6[7];
    v12 = *(v11 + 80);
    if (v12 && *v12)
    {
      v13 = 0;
      v14 = *(this + 9) * a2;
      v15 = 4;
      do
      {
        bzero(*&v12[v15], v14);
        ++v13;
        v12 = *(v11 + 80);
        v15 += 4;
      }

      while (v13 < *v12);
    }
  }

  else
  {
    v7 = v6[15];
    if (*(v7 + 8) == 1718773105)
    {
      if (*(v7 + 40) != a2)
      {
        std::string::basic_string[abi:ne200100]<0>(v27, "inNumFrames != blockSize.");
        AudioDSPGraph::ThrowException(1718188065, v27, off_1E83359A0);
      }

      v8 = *(this + 2);
      v9 = v6[4];
      if (v9)
      {
        v10 = *(*(*(v9 + 16) + 8) + 24);
      }

      else
      {
        v10 = 0;
      }

      v18 = *(v10 + 268);
      if (v18 == 1)
      {
        v18 = *(v10 + 272);
      }

      if (*v8)
      {
        v19 = 0;
        v20 = *(v6[7] + 80);
        v21 = *(this + 9) * v4;
        v22 = v18;
        v23 = 4;
        do
        {
          v24 = (*(v20 + v23 * 4) + 4 * v22);
          v26.realp = *(v20 + v23 * 4);
          v26.imagp = v24;
          TimeFreqConverter::Analyze(*(*(this + 10) + 8 * v19++), (*&v8[v23] + v21), &v26);
          v23 += 4;
        }

        while (v19 < *v8);
        v4 = *(this + 8);
        v5 = *(this + 10);
      }

      v25 = v4 + a2;
      *(this + 8) = v25;
      if (v25 == v5)
      {
        kdebug_trace();
        v25 = *(this + 8);
        v5 = *(this + 10);
      }

      if (v25 >= v5 && (*(this + 72) & 1) != 0)
      {
LABEL_31:
        *(this + 8) = 0;
      }
    }

    else
    {
      if (v5 - v4 < a2)
      {
        a2 = v5 - v4;
      }

      AudioDSPGraph::SimpleABL::copy(this + 4, (v6[7] + 80), *(this + 9) * v4, 0, *(this + 9) * a2, 1);
      v16 = *(this + 8) + a2;
      *(this + 8) = v16;
      v17 = *(this + 10);
      if (v16 == v17)
      {
        kdebug_trace();
        v16 = *(this + 8);
        v17 = *(this + 10);
      }

      if (v16 >= v17 && *(this + 72) == 1)
      {
        goto LABEL_31;
      }
    }
  }
}

void sub_1C9224050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

uint64_t AudioDSPGraph::FileRecorder::record(uint64_t this)
{
  if (*(this + 88) == 1)
  {
    v1 = this;
    this = *(this + 16);
    if (this)
    {
      v2 = *(v1 + 8);
      v3 = *(v2 + 56);
      v4 = *(v3 + 8);
      if (*(v1 + 48) == *(v1 + 56))
      {
        v7 = *(v3 + 80);
        v8 = *(v1 + 89);
        v9 = *(*this + 96);
      }

      else
      {
        v5 = *(v2 + 32);
        if (v5)
        {
          v6 = *(*(*(v5 + 16) + 8) + 24);
        }

        else
        {
          v6 = 0;
        }

        v10 = *(v6 + 268);
        if (v10 == 1)
        {
          v10 = *(v6 + 272);
        }

        v11 = *(v3 + 80);
        v12 = *(v1 + 72);
        if (*v11)
        {
          v13 = 0;
          v14 = v10;
          v15 = 4;
          do
          {
            TimeFreqConverter::Synthesize(*(*(v1 + 48) + 8 * v13++), *&v11[v15], (*&v11[v15] + 4 * v14), *(v12 + v15 * 4));
            v15 += 4;
          }

          while (v13 < *v11);
          this = *(v1 + 16);
        }

        v16 = *(v1 + 89);
        v9 = *(*this + 96);
      }

      return v9();
    }
  }

  return this;
}

float AudioDSPGraph::Boxes::GainBox::reset(AudioDSPGraph::Boxes::GainBox *this)
{
  v1 = 1.0;
  if (*(this + 768))
  {
    v1 = 0.0;
  }

  result = *(this + 191) * v1;
  *(this + 199) = result;
  *(this + 402) = 257;
  return result;
}

uint64_t AudioDSPGraph::Boxes::GainBox::initialize(AudioDSPGraph::Boxes::GainBox *this)
{
  result = AudioDSPGraph::Box::initialize(this);
  v4 = *(this + 9);
  if (*(this + 10) == v4)
  {
    v41 = (this + 40);
    if (*(this + 63) < 0)
    {
      v41 = *v41;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v51, v41, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v51, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v42 = (this + 40);
    if (*(this + 63) < 0)
    {
      v42 = *v42;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &v51, v42, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v51, off_1E8337C78);
  }

  v6 = *(*(v4 + 16) + 120);
  v7 = *(*(v5 + 16) + 120);
  *(this + 805) = 1;
  v8 = *(v6 + 8);
  if (v8 == 1819304813)
  {
    v9 = *(v6 + 12);
    if ((v9 & 1) != 0 && *(v6 + 32) == 32)
    {
      v10 = 32;
      goto LABEL_10;
    }

LABEL_85:
    std::string::basic_string[abi:ne200100]<0>(v50, "GainBox input format must be non-interleaved float or 'freq'");
    AudioDSPGraph::ThrowException(1718449215, v50, off_1E83359D0);
  }

  if (v8 != 1718773105 || *(v6 + 32) != 64)
  {
    goto LABEL_85;
  }

  v9 = *(v6 + 12);
  v10 = 64;
LABEL_10:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_85;
  }

  v11 = *(v7 + 8);
  if (v11 == 1819304813)
  {
    v12 = *(v7 + 12);
    if ((v12 & 1) == 0)
    {
      goto LABEL_86;
    }

    v13 = *(v7 + 32);
    if (v13 != 32)
    {
      goto LABEL_86;
    }
  }

  else
  {
    if (v11 != 1718773105 || *(v7 + 32) != 64)
    {
LABEL_86:
      std::string::basic_string[abi:ne200100]<0>(v49, "GainBox output format must be non-interleaved float or 'freq'");
      AudioDSPGraph::ThrowException(1718449215, v49, off_1E83359E8);
    }

    v12 = *(v7 + 12);
    v13 = 64;
  }

  if ((v12 & 0x20) == 0)
  {
    goto LABEL_86;
  }

  v14 = *v6;
  if (*v6 != 0.0)
  {
    v3 = *v7;
    if (*v7 != 0.0 && v14 != v3)
    {
      goto LABEL_78;
    }
  }

  if (v8 != v11)
  {
    goto LABEL_78;
  }

  v16 = *(v6 + 16);
  if (v16)
  {
    v17 = *(v7 + 16);
    if (v17 && v16 != v17)
    {
      goto LABEL_78;
    }
  }

  v19 = *(v6 + 20);
  if (v19)
  {
    v20 = *(v7 + 20);
    if (v20)
    {
      if (v19 != v20)
      {
        goto LABEL_78;
      }
    }
  }

  v21 = *(v6 + 24);
  if (v21)
  {
    v22 = *(v7 + 24);
    if (v22)
    {
      if (v21 != v22)
      {
        goto LABEL_78;
      }
    }
  }

  v23 = *(v6 + 28);
  if (v23)
  {
    result = *(v7 + 28);
    if (v23 != result && result != 0)
    {
      goto LABEL_78;
    }
  }

  if (v10 != v13)
  {
    goto LABEL_78;
  }

  if (v9 && v12)
  {
    if (v8 == 1819304813)
    {
      v25 = 8 * v21;
      v26 = v9 | 8;
      if (8 * v21 != v10)
      {
        v26 = v9;
      }

      if (v21)
      {
        v27 = v26;
      }

      else
      {
        v27 = v9;
      }

      v9 &= ~0x80000000;
      v28 = v27 & 0x7FFFFFEF;
      if (v25 == v10)
      {
        v9 = v28;
      }

      if (v9)
      {
        v9 &= 0x7FFFFFFBu;
      }

      result = v9 & 0xFFFFFFDF;
      if (v23 == 1)
      {
        v9 &= ~0x20u;
      }

      if (!v9)
      {
        v9 = 0x80000000;
      }

      if (v11 == 1819304813)
      {
        v29 = *(v7 + 24);
        result = (8 * v29);
        v30 = v12 | 8;
        if (result != v13)
        {
          v30 = v12;
        }

        if (v29)
        {
          v31 = v30;
        }

        else
        {
          v31 = v12;
        }

        v32 = v12 & 0x7FFFFFFF;
        v33 = v31 & 0x7FFFFFEF;
        if (result != v13)
        {
          v33 = v32;
        }

        if (v33)
        {
          v33 &= 0x7FFFFFFBu;
        }

        if (*(v7 + 28) == 1)
        {
          v33 &= 0x7FFFFFDFu;
        }

        if (v33)
        {
          v12 = v33;
        }

        else
        {
          v12 = 0x80000000;
        }
      }
    }

    if (v9 != v12)
    {
LABEL_78:
      v34 = v7;
      CA::StreamDescription::AsString(&v45, v6, v14, *&v3);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v46, "GainBox input and output formats don't match (", &v45);
      *&v35 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v47, &v46, " != ").n128_u64[0];
      CA::StreamDescription::AsString(v43, v34, v35, v36);
      if ((v44 & 0x80u) == 0)
      {
        v37 = v43;
      }

      else
      {
        v37 = v43[0];
      }

      if ((v44 & 0x80u) == 0)
      {
        v38 = v44;
      }

      else
      {
        v38 = v43[1];
      }

      v39 = std::string::append(&v47, v37, v38);
      v40 = *&v39->__r_.__value_.__l.__data_;
      v51.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v51.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v48, &v51, ")");
      AudioDSPGraph::ThrowException(1718449215, &v48, off_1E8335A00);
    }
  }

  return result;
}

void sub_1C9224638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (*(v41 - 41) < 0)
  {
    operator delete(*(v41 - 64));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::GainBox::process(AudioDSPGraph::Boxes::GainBox *this, vDSP_Length __N)
{
  v3 = *(this + 9);
  v4 = *(this + 10);
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v50 = (this + 40);
    if (*(this + 63) < 0)
    {
      v50 = *v50;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", __Start, v50, v5 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, __Start, off_1E8337C60);
  }

  v6 = *(this + 12);
  v7 = *(this + 13);
  v8 = v7 - v6;
  if (v7 == v6)
  {
    v51 = (this + 40);
    if (*(this + 63) < 0)
    {
      v51 = *v51;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", __Start, v51, v8 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, __Start, off_1E8337C78);
  }

  v9 = *(v3 + 16);
  v10 = *(v9 + 56);
  v11 = *(v10 + 80);
  v12 = *(v6 + 16);
  v13 = *(*(v12 + 56) + 80);
  v14 = *(v12 + 120);
  v15 = *(v14 + 8);
  v16 = *v11;
  if (*(this + 804) == 1)
  {
    *(this + 804) = 0;
  }

  v17 = (4 * __N) << (v15 == 1718773105);
  v18 = *(this + 805);
  if (v18 == 1)
  {
    v19 = 1.0;
    if (*(this + 768))
    {
      v19 = 0.0;
    }

    *(this + 200) = *(this + 191) * v19;
  }

  if ((*(v10 + 72) & 0x10) == 0)
  {
    v20 = __N;
    v21 = *(this + 199);
    v54 = (this + 800);
    v22 = *(this + 200);
    if (v21 == v22)
    {
      if (v16)
      {
        v23 = (v13 + 16);
        v24 = v11 + 4;
        do
        {
          v25 = *v24;
          v26 = *v23;
          MEMORY[0x1CCA853E0](*v24, 1, v54, *v23, 1, v20);
          if (v15 == 1718773105)
          {
            MEMORY[0x1CCA853E0](v25 + 4 * v20, 1, v54, v26 + 4 * v20, 1, v20);
          }

          *(v23 - 1) = v17;
          v23 += 2;
          v24 += 2;
          --v16;
        }

        while (v16);
      }

      goto LABEL_45;
    }

    if ((v18 & 1) == 0)
    {
      v29 = *(this + 198);
      goto LABEL_28;
    }

    if ((v8 & 0x1FFFFFFFE0) == 0)
    {
      if ((v5 & 0x1FFFFFFFE0) == 0)
      {
        v28 = 1.0;
        goto LABEL_26;
      }

      v14 = *(v9 + 120);
    }

    v28 = *v14;
LABEL_26:
    v29 = (v22 - v21) / (*(this + 97) * v28);
    *(this + 198) = v29;
LABEL_28:
    *(this + 805) = 0;
    v30 = v21 + (v29 * __N);
    if ((v29 <= 0.0 || v30 <= v22) && (v29 >= 0.0 || v30 >= v22))
    {
      if (v16)
      {
        v36 = (v13 + 16);
        v37 = (v11 + 4);
        do
        {
          v38 = *v37;
          v39 = *v36;
          LODWORD(__Start[0]) = *(this + 199);
          vDSP_vrampmul(v38, 1, __Start, this + 198, v39, 1, v20);
          if (v15 == 1718773105)
          {
            LODWORD(__Start[0]) = *(this + 199);
            vDSP_vrampmul(&v38[v20], 1, __Start, this + 198, &v39[v20], 1, v20);
          }

          v36 += 2;
          v37 += 2;
          --v16;
        }

        while (v16);
      }
    }

    else if (v16)
    {
      v31 = fabsf((v22 - v21) / v29);
      v53 = (__N - v31);
      v32 = (v13 + 16);
      v33 = (v11 + 4);
      do
      {
        v34 = *v33;
        v35 = *v32;
        LODWORD(__Start[0]) = *(this + 199);
        vDSP_vrampmul(v34, 1, __Start, this + 198, v35, 1, v31);
        MEMORY[0x1CCA853E0](&v34[v31], 1, v54, &v35[v31], 1, v53);
        if (v15 == 1718773105)
        {
          LODWORD(__Start[0]) = *(this + 199);
          vDSP_vrampmul(&v34[v20], 1, __Start, this + 198, &v35[v20], 1, v31);
          MEMORY[0x1CCA853E0](&v34[v31 + v20], 1, v54, &v35[v31 + v20], 1, v53);
        }

        v32 += 2;
        v33 += 2;
        --v16;
      }

      while (v16);
      v30 = *v54;
    }

    else
    {
      v30 = v22;
    }

    *(this + 199) = v30;
    goto LABEL_45;
  }

  if (v16)
  {
    v27 = (v13 + 16);
    do
    {
      bzero(*v27, v17);
      *(v27 - 1) = v17;
      v27 += 2;
      --v16;
    }

    while (v16);
  }

LABEL_45:
  if (*(this + 805) == 1)
  {
    v40 = 16 * (*(this + 200) == 0.0);
  }

  else
  {
    v40 = 0;
  }

  v41 = *(this + 9);
  if (*(this + 10) == v41)
  {
    v52 = (this + 40);
    if (*(this + 63) < 0)
    {
      v52 = *v52;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", __Start, v52, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, __Start, off_1E8337C60);
  }

  v42 = *(this + 12);
  v43 = *(this + 13);
  if (v42 != v43)
  {
    v44 = *(*(v41 + 16) + 56);
    v45 = *(v44 + 72) | v40;
    do
    {
      v46 = *(*(v42 + 16) + 56);
      v47 = *(v44 + 8);
      v48 = *(v44 + 24);
      v49 = *(v44 + 40);
      *(v46 + 56) = *(v44 + 56);
      *(v46 + 40) = v49;
      *(v46 + 24) = v48;
      *(v46 + 8) = v47;
      *(v46 + 72) = v45;
      v42 += 32;
    }

    while (v42 != v43);
  }

  if (*(this + 199) == *(this + 200))
  {
    *(this + 805) = 1;
  }
}

void sub_1C9224C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GainBox::setProperty(AudioDSPGraph::Boxes::GainBox *this, int a2, int a3, unsigned int a4, int a5, double *a6)
{
  if (a2 != 3098)
  {
    return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

  if (a5 != 8)
  {
    return 561211770;
  }

  if (a3)
  {
    return 4294956430;
  }

  v8 = *a6;
  *(this + 97) = *a6;
  v9 = *(this + 98);
  v6 = 0;
  if (v8 < v9)
  {
    *(this + 97) = v9;
  }

  return v6;
}

double AudioDSPGraph::Boxes::GainBox::getProperty(AudioDSPGraph::Boxes::GainBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, CFStringRef *a6)
{
  if (a2 == 3098)
  {
    if (*a5 == 8 && a6 && !a3)
    {
      result = *(this + 97);
      *a6 = result;
    }
  }

  else
  {
    AudioDSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6);
  }

  return result;
}

unint64_t AudioDSPGraph::Boxes::GainBox::getPropertyInfo(AudioDSPGraph::Boxes::GainBox *this, int a2, int a3)
{
  if (a2 == 3098)
  {
    v3 = 8;
    if (a3)
    {
      v3 = 4294956430;
      v4 = 0;
    }

    else
    {
      v4 = 0x100000000;
    }
  }

  else
  {
    PropertyInfo = AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
    v4 = PropertyInfo & 0xFFFFFFFF00000000;
    v3 = PropertyInfo;
  }

  return v4 | v3;
}

uint64_t AudioDSPGraph::Boxes::GainBox::getParameterInfo@<X0>(uint64_t this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (a3 == 1)
    {
      memset(v7, 0, sizeof(v7));
      *a4 = *"mute";
      *(a4 + 16) = unk_1C925F721;
      *(a4 + 32) = xmmword_1C925F731;
      *(a4 + 48) = *v7;
      *(a4 + 64) = 0 >> 96;
      *(a4 + 72) = @"mute";
      *(a4 + 80) = 2;
      *(a4 + 84) = 0x3F80000000000000;
      *(a4 + 92) = 0;
      *(a4 + 96) = 3355443200;
    }

    else
    {
      if (a3)
      {
        v5 = -10878;
        goto LABEL_3;
      }

      this = (*(*this + 640))(this);
    }

    *(a4 + 104) = 1;
    goto LABEL_9;
  }

  v5 = -10866;
LABEL_3:
  *a4 = v5;
  *(a4 + 104) = 0;
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void AudioDSPGraph::Boxes::GainBox::getParameterList(int a1@<W1>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &v4, 2uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void AudioDSPGraph::Boxes::GainBox::getParameter(AudioDSPGraph::Boxes::GainBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    LODWORD(v8) = -10866;
    v7 = off_1E8335A60;
  }

  else if (a2 == 1)
  {
    if (!a4)
    {
      v6 = 0.0;
      if (*(this + 768))
      {
        v6 = 1.0;
      }

      goto LABEL_9;
    }

    LODWORD(v8) = -10877;
    v7 = off_1E8335A90;
  }

  else if (a2)
  {
    LODWORD(v8) = -10878;
    v7 = off_1E8334BA8;
  }

  else
  {
    if (!a4)
    {
      (*(*this + 632))(this, *(this + 191));
LABEL_9:
      *a5 = v6;
      *(a5 + 32) = 1;
      return;
    }

    LODWORD(v8) = -10877;
    v7 = off_1E8335A78;
  }

  *(&v8 + 1) = v7;
  v9 = 0;
  *a5 = v8;
  *(a5 + 16) = 0;
  v10 = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v8);
}

void AudioDSPGraph::Boxes::GainBox::setParameter(AudioDSPGraph::Boxes::GainBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v15) = -10866;
    v14 = off_1E8335A18;
  }

  else if (a3 == 1)
  {
    if (!a5)
    {
      v10 = a2 != 0.0;
      *(this + 768) = a2 != 0.0;
      v11 = *(this + 2);
      if (!v11 || *(v11 + 922) != 1 || *(this + 804) == 1)
      {
        v8 = *(this + 191);
        goto LABEL_14;
      }

LABEL_17:
      *(a6 + 32) = 1;
      return;
    }

    LODWORD(v15) = -10877;
    v14 = off_1E8335A48;
  }

  else if (a3)
  {
    LODWORD(v15) = -10878;
    v14 = off_1E8334BC0;
  }

  else
  {
    if (!a5)
    {
      v8 = (*(*this + 624))(this, a2);
      *(this + 191) = v8;
      v9 = *(this + 2);
      if (!v9 || *(v9 + 922) != 1 || *(this + 804) == 1)
      {
        v10 = *(this + 768);
LABEL_14:
        v12 = 1.0;
        if (v10)
        {
          v12 = 0.0;
        }

        v13 = v8 * v12;
        *(this + 199) = v13;
        *(this + 200) = v13;
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    LODWORD(v15) = -10877;
    v14 = off_1E8335A30;
  }

  *(&v15 + 1) = v14;
  v16 = 0;
  *a6 = v15;
  *(a6 + 16) = 0;
  v17 = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v15);
}

double AudioDSPGraph::Boxes::LinearGainBox::getPolicyGainParameterInfo@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 84) = --2.00000143;
  *(a1 + 80) = 14;
  *a1 = *"gain";
  *(a1 + 16) = unk_1C925F819;
  *(a1 + 32) = xmmword_1C925F829;
  *(a1 + 48) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 72) = @"gain";
  *(a1 + 92) = 1065353216;
  *(a1 + 96) = -939524096;
  return result;
}

double AudioDSPGraph::Boxes::LinearGainBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 9.69732525e189;
  *a1 = xmmword_1C925F230;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::LinearGainBox::~LinearGainBox(AudioDSPGraph::Boxes::LinearGainBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

double AudioDSPGraph::Boxes::DecibelGainBox::getPolicyGainParameterInfo@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 84) = 0x41C00000C3480000;
  *(a1 + 80) = 13;
  *a1 = *"dbgain";
  *(a1 + 16) = unk_1C925F756;
  *(a1 + 32) = xmmword_1C925F766;
  *(a1 + 48) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 72) = @"dbgain";
  *(a1 + 96) = -939524096;
  return result;
}

float AudioDSPGraph::Boxes::DecibelGainBox::convertLinearGainToPolicyGain(AudioDSPGraph::Boxes::DecibelGainBox *this, float a2)
{
  if (a2 < 1.0e-10)
  {
    a2 = 1.0e-10;
  }

  return log10f(a2) * 20.0;
}

double AudioDSPGraph::Boxes::DecibelGainBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.64150051e175;
  *a1 = xmmword_1C925F240;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::DecibelGainBox::~DecibelGainBox(AudioDSPGraph::Boxes::DecibelGainBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Graph::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 922);
    AudioDSPGraph::printi(a2, v4 + 4, "initialized %d\n");
  }

  return result;
}

void AudioDSPGraph::Graph::~Graph(AudioDSPGraph::Graph *this)
{
  AudioDSPGraph::Graph::~Graph(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D0CC8;
  AudioDSPGraph::Graph::uninitialize(this);
  if (*(this + 922) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "graph is initialized. uninitialize before unconfiguring");
    AudioDSPGraph::ThrowException(1768843553, v45, off_1E8335DD8);
  }

  for (i = *(this + 4); i; i = *i)
  {
    (*(*i[2] + 608))(i[2]);
  }

  v3 = *(this + 44);
  v4 = *(this + 45);
  if (v3 != v4)
  {
    v5 = *(this + 44);
    do
    {
      v6 = *v5;
      v7 = *(*v5 + 176);
      v8 = *(*v5 + 184);
      while (v7 != v8)
      {
        v9 = *v7++;
        *(v9 + 764) = 0;
      }

      for (j = v6[14]; j; j = *j)
      {
        *(j[2] + 764) = 0;
      }

      v12 = v6[25];
      v11 = v6[26];
      while (v12 != v11)
      {
        v13 = *v12++;
        *(v13 + 764) = 0;
      }

      v5 += 8;
    }

    while (v5 != v4);
  }

  *(this + 45) = v3;
  if (*(this + 42))
  {
    std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::__deallocate_node(*(this + 41));
    *(this + 41) = 0;
    v14 = *(this + 40);
    if (v14)
    {
      for (k = 0; k != v14; ++k)
      {
        *(*(this + 39) + 8 * k) = 0;
      }
    }

    *(this + 42) = 0;
  }

  *(this + 921) = 0;
  for (m = *(this + 4); m; m = *m)
  {
    (*(*m[2] + 552))(m[2]);
  }

  for (n = *(this + 9); n; n = *n)
  {
    v18 = n[2];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  if (*(this + 10))
  {
    v19 = *(this + 9);
    if (v19)
    {
      do
      {
        v20 = *v19;
        operator delete(v19);
        v19 = v20;
      }

      while (v20);
    }

    *(this + 9) = 0;
    v21 = *(this + 8);
    if (v21)
    {
      for (ii = 0; ii != v21; ++ii)
      {
        *(*(this + 7) + 8 * ii) = 0;
      }
    }

    *(this + 10) = 0;
  }

  v23 = *(this + 132);
  if (v23)
  {
    v24 = *(this + 133);
    v25 = *(this + 132);
    if (v24 != v23)
    {
      do
      {
        v26 = *(v24 - 24);
        if (v26)
        {
          v27 = *(v24 - 16);
          v28 = *(v24 - 24);
          if (v27 != v26)
          {
            do
            {
              v29 = *(v27 - 24);
              if (v29)
              {
                *(v27 - 16) = v29;
                operator delete(v29);
              }

              v27 -= 32;
            }

            while (v27 != v26);
            v28 = *(v24 - 24);
          }

          *(v24 - 16) = v26;
          operator delete(v28);
        }

        v30 = *(v24 - 48);
        if (v30)
        {
          *(v24 - 40) = v30;
          operator delete(v30);
        }

        v24 -= 56;
      }

      while (v24 != v23);
      v25 = *(this + 132);
    }

    *(this + 133) = v23;
    operator delete(v25);
  }

  v31 = *(this + 127);
  if (v31)
  {
    v32 = *(this + 128);
    v33 = *(this + 127);
    if (v32 != v31)
    {
      do
      {
        std::unique_ptr<AudioDSPGraph::Subset>::reset[abi:ne200100](--v32);
      }

      while (v32 != v31);
      v33 = *(this + 127);
    }

    *(this + 128) = v31;
    operator delete(v33);
  }

  v34 = *(this + 124);
  if (v34)
  {
    do
    {
      v35 = *v34;
      operator delete(v34);
      v34 = v35;
    }

    while (v35);
  }

  v36 = *(this + 122);
  *(this + 122) = 0;
  if (v36)
  {
    operator delete(v36);
  }

  v37 = *(this + 119);
  if (v37)
  {
    do
    {
      v38 = *v37;
      if (*(v37 + 39) < 0)
      {
        operator delete(v37[2]);
      }

      operator delete(v37);
      v37 = v38;
    }

    while (v38);
  }

  v39 = *(this + 117);
  *(this + 117) = 0;
  if (v39)
  {
    operator delete(v39);
  }

  *(this + 94) = &unk_1F48D0D68;
  v45[0] = (this + 800);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](v45);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(this + 768);
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::~__hash_table(this + 704);
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::~__hash_table(this + 664);
  std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>>>::~__hash_table(this + 624);
  std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>>>::~__hash_table(this + 584);
  v40 = *(this + 70);
  if (v40)
  {
    *(this + 71) = v40;
    operator delete(v40);
  }

  v41 = *(this + 67);
  if (v41)
  {
    *(this + 68) = v41;
    operator delete(v41);
  }

  if (*(this + 528) == 1 && *(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 464);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 424);
  v42 = *(this + 50);
  if (v42)
  {
    *(this + 51) = v42;
    operator delete(v42);
  }

  v43 = *(this + 47);
  if (v43)
  {
    *(this + 48) = v43;
    operator delete(v43);
  }

  v44 = *(this + 44);
  if (v44)
  {
    *(this + 45) = v44;
    operator delete(v44);
  }

  std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::~__hash_table(this + 312);
  v45[0] = (this + 288);
  std::vector<std::unique_ptr<AudioDSPGraph::InternalBuffer>>::__destroy_vector::operator()[abi:ne200100](v45);
  *(this + 30) = &unk_1F48D0D00;
  std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(this + 248);
  std::mutex::~mutex((this + 176));
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 136);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 96);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 56);
  std::__hash_table<std::unique_ptr<AudioDSPGraph::Box>,std::hash<std::unique_ptr<AudioDSPGraph::Box>>,std::equal_to<std::unique_ptr<AudioDSPGraph::Box>>,std::allocator<std::unique_ptr<AudioDSPGraph::Box>>>::~__hash_table(this + 16);
}

void sub_1C9225E90(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

void *AudioDSPGraph::Graph::uninitialize(void *this)
{
  if (*(this + 922) == 1)
  {
    v1 = this;
    for (i = this[4]; i; i = *i)
    {
      (*(*i[2] + 568))(i[2]);
      (*(*i[2] + 600))();
    }

    for (j = v1[9]; j; j = *j)
    {
      *(j[2] + 56) = 0;
    }

    this = std::vector<std::unique_ptr<AudioDSPGraph::InternalBuffer>>::clear[abi:ne200100](v1 + 36);
    *(v1 + 922) = 0;
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

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

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[9];
    if (v4)
    {
      v3[10] = v4;
      operator delete(v4);
    }

    if (*(v3 + 56) == 1)
    {
      v5 = v3[4];
      if (v5)
      {
        v3[5] = v5;
        operator delete(v5);
      }
    }

    operator delete(v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}