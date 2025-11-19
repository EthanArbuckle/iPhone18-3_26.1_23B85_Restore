void AUSM::ObjectParameters::createDictionary(AUSM::ObjectParameters *this, __n128 *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2[1].n128_u8[0] == 1 && a2[1].n128_f32[1] > 0.0)
  {
    if (a2[5].n128_u8[0] == 1)
    {
      AUSM::ObjectParameters::createArray(&v22, *a2);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],applesauce::CF::ArrayRef>(v25, &v22);
      AUSM::ObjectParameters::createArray(&v21, a2[4]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],applesauce::CF::ArrayRef>(v26, &v21);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[21],float const&>(v27, &a2[7]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[14],float const&>(v28, &a2[7].n128_i32[1]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],float const&>(v29, &a2[7].n128_i32[2]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[19],float const&>(v30, &a2[7].n128_i32[3]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],float const&>(v31, &a2[1].n128_i32[1]);
      AUSM::ObjectParameters::createArray(&v20, a2[2]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[23],applesauce::CF::ArrayRef>(v32, &v20);
      AUSM::ObjectParameters::createArray(&v19, a2[3]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[24],applesauce::CF::ArrayRef>(v33, &v19);
      AUSM::ObjectParameters::createArray(&cf, v4, a2[6]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],applesauce::CF::ArrayRef>(v34, &cf);
      v23 = v25;
      v24 = 10;
      v5 = 0;
      *this = applesauce::CF::details::make_CFDictionaryRef(&v23);
      do
      {
        v6 = *&v34[v5 + 8];
        if (v6)
        {
          CFRelease(v6);
        }

        v7 = *&v34[v5];
        if (v7)
        {
          CFRelease(v7);
        }

        v5 -= 16;
      }

      while (v5 != -160);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    else
    {
      AUSM::ObjectParameters::createArray(&v22, *a2);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],applesauce::CF::ArrayRef>(v25, &v22);
      AUSM::ObjectParameters::createArray(&v21, a2[4]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],applesauce::CF::ArrayRef>(v26, &v21);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[21],float const&>(v27, &a2[7]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[14],float const&>(v28, &a2[7].n128_i32[1]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],float const&>(v29, &a2[7].n128_i32[2]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[19],float const&>(v30, &a2[7].n128_i32[3]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],float const&>(v31, &a2[1].n128_i32[1]);
      AUSM::ObjectParameters::createArray(&v20, a2[2]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[23],applesauce::CF::ArrayRef>(v32, &v20);
      AUSM::ObjectParameters::createArray(&v19, a2[3]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[24],applesauce::CF::ArrayRef>(v33, &v19);
      v23 = v25;
      v24 = 9;
      v15 = 0;
      *this = applesauce::CF::details::make_CFDictionaryRef(&v23);
      do
      {
        v16 = *&v33[v15 + 8];
        if (v16)
        {
          CFRelease(v16);
        }

        v17 = *&v33[v15];
        if (v17)
        {
          CFRelease(v17);
        }

        v15 -= 16;
      }

      while (v15 != -144);
      if (v19)
      {
        CFRelease(v19);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }
  }

  else if (a2[5].n128_u8[0] == 1)
  {
    AUSM::ObjectParameters::createArray(&v22, *a2);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],applesauce::CF::ArrayRef>(v25, &v22);
    AUSM::ObjectParameters::createArray(&v21, a2[4]);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],applesauce::CF::ArrayRef>(v26, &v21);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[21],float const&>(v27, &a2[7]);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[14],float const&>(v28, &a2[7].n128_i32[1]);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],float const&>(v29, &a2[7].n128_i32[2]);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[19],float const&>(v30, &a2[7].n128_i32[3]);
    AUSM::ObjectParameters::createArray(&v20, v8, a2[6]);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],applesauce::CF::ArrayRef>(v31, &v20);
    v23 = v25;
    v24 = 7;
    v9 = 0;
    *this = applesauce::CF::details::make_CFDictionaryRef(&v23);
    do
    {
      v10 = *&v31[v9 + 8];
      if (v10)
      {
        CFRelease(v10);
      }

      v11 = *&v31[v9];
      if (v11)
      {
        CFRelease(v11);
      }

      v9 -= 16;
    }

    while (v9 != -112);
    if (v20)
    {
      CFRelease(v20);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

  else
  {
    AUSM::ObjectParameters::createArray(&v22, *a2);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],applesauce::CF::ArrayRef>(v25, &v22);
    AUSM::ObjectParameters::createArray(&v21, a2[4]);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],applesauce::CF::ArrayRef>(v26, &v21);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[21],float const&>(v27, &a2[7]);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[14],float const&>(v28, &a2[7].n128_i32[1]);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],float const&>(v29, &a2[7].n128_i32[2]);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[19],float const&>(v30, &a2[7].n128_i32[3]);
    v23 = v25;
    v24 = 6;
    v12 = 0;
    *this = applesauce::CF::details::make_CFDictionaryRef(&v23);
    do
    {
      v13 = *&v30[v12 + 8];
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = *&v30[v12];
      if (v14)
      {
        CFRelease(v14);
      }

      v12 -= 16;
    }

    while (v12 != -96);
    if (v21)
    {
      CFRelease(v21);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }
}

void sub_1DDDE3ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AUSM::ObjectParameters::createArray(CFArrayRef *a1, __n128 a2)
{
  *&v8[4] = *MEMORY[0x1E69E9840];
  v6 = a2.n128_u64[0];
  v7 = a2.n128_u32[2];
  v4 = 0;
  v5 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v6, v8, 3uLL);
  *a1 = applesauce::CF::details::make_CFArrayRef<float>(&__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_1DDDE4298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],applesauce::CF::ArrayRef>(applesauce::CF::TypeRef *a1, const void **a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "SourcePosition");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 1) = v4;
  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],applesauce::CF::ArrayRef>(applesauce::CF::TypeRef *a1, const void **a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "SourceSize");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 1) = v4;
  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[21],float const&>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "SceneDistanceGainLin");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDDE43F4(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[14],float const&>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "TuningGainLin");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDDE44C8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],float const&>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "PostProcDRRLin");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDDE459C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[19],float const&>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "InternalizedAmount");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDDE4670(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],float const&>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "Divergence");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDDE4744(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[23],applesauce::CF::ArrayRef>(applesauce::CF::TypeRef *a1, const void **a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "DivergenceLeftPosition");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 1) = v4;
  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[24],applesauce::CF::ArrayRef>(applesauce::CF::TypeRef *a1, const void **a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "DivergenceRightPosition");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 1) = v4;
  return a1;
}

void AUSM::ObjectParameters::createArray(AUSM::ObjectParameters *this, const simd_quatf *a2, __n128 a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v7, v8, 4uLL);
  *this = applesauce::CF::details::make_CFArrayRef<float>(&__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1DDDE48A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],applesauce::CF::ArrayRef>(applesauce::CF::TypeRef *a1, const void **a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "SourceOrientation");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 1) = v4;
  return a1;
}

uint64_t AUSpatialMixerV2ChannelProcessor::processAccumulating(AUSM::FloatVector const&,AUSM::SharedBuffers &,AUSM::ReverbSend *,AUSM::ReverbSend *,AUSM::ReverbSend *,AUSM::ReverbSend *,float,unsigned int)::$_0::operator()(uint64_t a1, int a2, unsigned int a3, uint64_t *a4, uint64_t a5, IR::ComplexDataCircBuffer *a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a2 && a7 && *a4)
  {
    v14 = *a1;
    v8 = atomic_load((*a4 + 168));
    v15 = *a4;
    v16 = 3000.0;
    if (*(v14 + 568))
    {
      v16 = -1.0;
    }

    *(v15 + 80) = v16;
    v17 = *(a5 + 24);
    v18 = *(a5 + 52);
    v19 = *(a1 + 8);
    if (*(v19 + 24) == 1 && *(v14 + 492) >= (**(a1 + 16) + v8))
    {
      v26 = **(a1 + 32);
      v27 = **(a1 + 56);
      v28 = **(a1 + 40);
      v30 = *v19;
      IR::DynamicIRProcessor::processInternal(v15, &v30, v17, 1u, v18, v26, v27, v28, 1, a6);
      *(a5 + 48) = 0;
    }

    else
    {
      AUSpatialMixerV2ChannelProcessor::processReverbSend(v14, **(a1 + 24), a7, **(a1 + 32), a3, ***(a1 + 40), **(a1 + 48));
      if (*(a8 + 12) != 1 || (v20 = *(a8 + 8), v21 = atomic_load((*a4 + 168)), v20 < v21))
      {
        v22 = *a4;
        v23 = **(a1 + 32);
        v24 = **(a1 + 56);
        v25 = **(a1 + 40);
        v30 = **(a1 + 48);
        IR::DynamicIRProcessor::processInternal(v22, &v30, v17, 1u, v18, v23, v24, v25, 1, a6);
        *(a5 + 48) = 0;
        if (*(a8 + 12) == 1)
        {
          *(a8 + 8) += **(a1 + 32);
        }
      }
    }
  }

  return v8;
}

void AUSpatialMixerV2ChannelProcessor::processReverbSend(uint64_t a1, const float *__I, uint64_t a3, unsigned int a4, unsigned int a5, float *a6, float *a7)
{
  v11 = a3;
  v12 = __I;
  v14 = 296;
  if (!a5)
  {
    v14 = 280;
  }

  if (a5 == 1)
  {
    v14 = 264;
  }

  v15 = a1 + v14;
  v16 = *(a1 + v14);
  v50 = v16;
  if ((*(a1 + 500) & 1) == 0)
  {
    v17 = 168;
    if (!a5)
    {
      v17 = 160;
    }

    if (a5 == 1)
    {
      v17 = 152;
    }

    if (*(a1 + v17))
    {
      v50 = 0.0;
    }

    else
    {
      if (*(a1 + 501))
      {
        goto LABEL_15;
      }

      v50 = 0.0;
      *(v15 + 4) = 0;
    }

    v16 = 0.0;
  }

LABEL_15:
  if (a7)
  {
    v18 = a7;
  }

  else
  {
    v18 = a6;
  }

  v19 = *(a1 + 240);
  v20 = (v15 + 4);
  if (v19 == 1)
  {
    *v20 = v16;
  }

  else
  {
    if (*v20 != v16)
    {
      if (a4 >= 0x100)
      {
        v21 = 256;
      }

      else
      {
        v21 = a4;
      }

      __Step = (v16 - *v20) / v21;
      vDSP_vrampmul(__I, 1, (v15 + 4), &__Step, v18, 1, v21);
      LOBYTE(v19) = 0;
      *v20 = v16;
      v22 = a4 - v21;
      v12 += v21;
      v23 = &v18[v21];
      v11 = a3;
      goto LABEL_27;
    }

    LOBYTE(v19) = 1;
  }

  v22 = a4;
  v23 = v18;
LABEL_27:
  v24 = &loc_1DE092000;
  if (v22)
  {
    if (fabsf(v16) > 0.000001)
    {
      MEMORY[0x1E12BE940](v12, 1, &v50, v23, 1, v22);
      goto LABEL_35;
    }

    if (v22 < a4)
    {
      vDSP_vclr(v23, 1, v22);
      goto LABEL_35;
    }
  }

  if ((v19 & 1) == 0)
  {
LABEL_35:
    v27 = atomic_load((*(a1 + 576) + 72));
    if (v27 != 7 || (v28 = atomic_load((*(*(a1 + 576) + 232) + 88)), v28 != 4))
    {
      v29 = atomic_load((a1 + 88));
      if (v29)
      {
        v47 = v11;
        v30 = a1 + 24 * a5;
        v31 = *(v30 + 16);
        v32 = *(v30 + 24);
        v33 = (v30 + 16);
        if (v31 == v32)
        {
          v11 = v47;
        }

        else
        {
          v34 = 0;
          v35 = 1;
          do
          {
            v36 = *(v31 + 8 * v34);
            if (v36)
            {
              AllPassComb::process(v36, v18, a6, a4);
            }

            else if (a7 && v35 == 1)
            {
              memcpy(a6, a7, 4 * a4);
            }

            v34 = v35;
            v31 = *v33;
            ++v35;
            v18 = a6;
          }

          while (v34 < (v33[1] - *v33) >> 3);
          v18 = a6;
          v11 = v47;
          v24 = &loc_1DE092000;
        }
      }
    }

    v37 = *(a1 + 624);
    if (!v37)
    {
      MEMORY[0x1E12BE5D0](v18, 1, *(v11 + 32), 1, *(v11 + 32), 1, a4);
LABEL_62:
      v26 = 0;
      *(v11 + 24) = 0;
      *(v15 + 8) = 0;
      goto LABEL_63;
    }

    v38 = *(a1 + 596);
    if (a5)
    {
      if (a5 == 2)
      {
        v39 = v37[80];
        v40 = 0.0;
        if (v38 < ((v37[81] - v39) >> 2))
        {
          v43 = v37 + 33;
          v41 = v37[33];
          v42 = v43[1];
          goto LABEL_58;
        }

LABEL_60:
        v48 = v40;
        if ((v40 * v40) > v24[970])
        {
          MEMORY[0x1E12BE8F0](v18, 1, &v48, *(v11 + 32), 1, *(v11 + 32), 1, a4);
        }

        goto LABEL_62;
      }

      v39 = v37[74];
      v40 = 0.0;
      if (v38 >= ((v37[75] - v39) >> 2))
      {
        goto LABEL_60;
      }

      v45 = v37 + 27;
      v41 = v37[27];
      v42 = v45[1];
    }

    else
    {
      v39 = v37[77];
      v40 = 0.0;
      if (v38 >= ((v37[78] - v39) >> 2))
      {
        goto LABEL_60;
      }

      v44 = v37 + 30;
      v41 = v37[30];
      v42 = v44[1];
    }

LABEL_58:
    if (v38 < ((v42 - v41) >> 4))
    {
      v40 = *(v39 + 4 * v38);
    }

    goto LABEL_60;
  }

  if (a7)
  {
    v25 = a4;
    v26 = 1;
    vDSP_vclr(a7, 1, v25);
  }

  else
  {
    v26 = 1;
  }

LABEL_63:
  *(v15 + 12) = v26;
}

float *AUSpatialMixerV2ChannelProcessor::setChannelParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a1 + 656) = *a2;
  *(a1 + 672) = v4;
  *(a1 + 1400) = 1;
  v5 = *(a2 + 28);
  *(a1 + 689) = ((v5 - 5) < 0x3C) & (0xDFFD000F0003FF3uLL >> (v5 - 5));
  *(a1 + 688) = (v5 < 0x3F) & (0x4000002000000010uLL >> v5);
  v6 = *(a1 + 200);
  AUSM::DynamicSpatializer::setInputChannelLabel(*v6, v5);
  if (*(v6 + 24) == 1)
  {
    AUSM::DynamicSpatializer::setInputChannelLabel(*(v6 + 8), v5);
    AUSM::DynamicSpatializer::setInputChannelLabel(*(v6 + 16), v5);
  }

  v7 = (*(a2 + 28) < 0x3FuLL) & (0x4000002000000010uLL >> *(a2 + 28));
  v8 = atomic_load((a1 + 504));
  if (v7 != (v8 & 1))
  {
    atomic_store(v7, (a1 + 504));
    if (fabsf(*(a1 + 244)) > 0.00000011921)
    {
      v9 = COERCE_FLOAT(atomic_load((*(*(a1 + 576) + 232) + 164)));
      v10 = ((v9 + v9) / *(a1 + 244)) * 3.14159265;
      AUSpatialMixerV2ChannelProcessor::setLFERollOff(a1, v10);
    }
  }

  v11 = atomic_load((*(*(a1 + 640) + 8) + 80));
  v12 = *(a2 + 20);
  if (v11 != 3)
  {
    v12 = 0.0;
  }

  return AUSpatialMixerV2ChannelProcessor::setDelay(a1, v12);
}

uint64_t AUSpatialMixerV2ChannelProcessor::setDecorrFilterLengthsOnReverbSend(uint64_t a1, uint64_t *a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 484));
  v18 = a1;
  v4 = (a1 + 16);
  for (i = 16; i != 88; v4 = (v18 + i))
  {
    memset(&v19, 0, sizeof(v19));
    v6 = a2[1] - *a2;
    if ((v4[1] - *v4) >> 3 <= (v6 >> 2))
    {
      v7 = v6 >> 2;
    }

    else
    {
      v7 = (v4[1] - *v4) >> 3;
    }

    std::vector<unsigned int>::reserve(&v19, v7);
    v9 = *v4;
    v8 = v4[1];
    v10 = v8 - *v4;
    if (v8 != *v4)
    {
      v11 = 0;
      do
      {
        LODWORD(v20[0]) = *v9[v11];
        std::vector<float>::push_back[abi:ne200100](&v19.__begin_, v20);
        ++v11;
        v9 = *v4;
        v8 = v4[1];
        v10 = v8 - *v4;
      }

      while (v11 < v10 >> 3);
    }

    v12 = v10 >> 3;
    v14 = *a2;
    v13 = a2[1];
    if (v12 < (v13 - *a2) >> 2)
    {
      do
      {
        LODWORD(v20[0]) = 1050253722;
        std::vector<float>::push_back[abi:ne200100](&v19.__begin_, v20);
        ++v12;
        v14 = *a2;
        v13 = a2[1];
      }

      while (v12 < (v13 - *a2) >> 2);
      v9 = *v4;
      v8 = v4[1];
    }

    v15 = v9;
    if (v8 != v9)
    {
      do
      {
        v8 = std::unique_ptr<AllPassComb>::~unique_ptr[abi:ne200100](v8 - 1);
      }

      while (v8 != v9);
      v14 = *a2;
      v13 = a2[1];
      v15 = *v4;
    }

    v4[1] = v9;
    v16 = (v13 - v14) >> 2;
    if (v16 > (v4[2] - v15) >> 3)
    {
      if (!(v16 >> 61))
      {
        v20[4] = v4;
        std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v16);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    if (v13 != v14)
    {
      operator new();
    }

    if (v19.__begin_)
    {
      v19.__end_ = v19.__begin_;
      operator delete(v19.__begin_);
    }

    i += 24;
  }

  return caulk::pooled_semaphore_mutex::_unlock((v18 + 484));
}

void sub_1DDDE5320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  caulk::pooled_semaphore_mutex::_unlock((a9 + 484));
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<AllPassComb>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<AllPassComb>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AUSpatialMixerV2ChannelProcessor::getDecorrFilterLengthsOnReverbSend(std::vector<unsigned int> *this, uint64_t a2)
{
  this->__begin_ = 0;
  this->__end_ = 0;
  this->__end_cap_.__value_ = 0;
  std::vector<unsigned int>::reserve(this, (*(a2 + 24) - *(a2 + 16)) >> 3);
  v4 = *(a2 + 16);
  if (*(a2 + 24) != v4)
  {
    v5 = 0;
    end = this->__end_;
    v7 = 1;
    do
    {
      v8 = (*(*(v4 + 8 * v5) + 16) - *(*(v4 + 8 * v5) + 8)) >> 2;
      value = this->__end_cap_.__value_;
      if (end >= value)
      {
        begin = this->__begin_;
        v11 = end - this->__begin_;
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
          std::allocator<float>::allocate_at_least[abi:ne200100](this, v15);
        }

        *(4 * v12) = v8;
        end = (4 * v12 + 4);
        memcpy(0, begin, v11);
        v16 = this->__begin_;
        this->__begin_ = 0;
        this->__end_ = end;
        this->__end_cap_.__value_ = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *end = v8;
        end += 4;
      }

      this->__end_ = end;
      v5 = v7;
      v4 = *(a2 + 16);
      ++v7;
    }

    while (v5 < (*(a2 + 24) - v4) >> 3);
  }
}

void sub_1DDDE552C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialMixerV2ChannelProcessor::setDecorrFilterCoeffsOnReverbSend(uint64_t a1, uint64_t *a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 484));
  v5 = *a2;
  v4 = a2[1];
  v6 = (v4 - *a2) >> 2;
  for (i = 16; i != 88; i += 24)
  {
    v8 = *(a1 + i);
    if (v6 != (*(a1 + i + 8) - v8) >> 3)
    {
      break;
    }

    if (v4 != v5)
    {
      v9 = 0;
      do
      {
        **(v8 + 8 * v9) = *(v5 + 4 * v9);
        ++v9;
      }

      while (v6 > v9);
    }
  }

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 484));
}

void AUSpatialMixerV2ChannelProcessor::getDecorrFilterCoeffsOnReverbSend(std::vector<unsigned int> *this, uint64_t a2)
{
  this->__begin_ = 0;
  this->__end_ = 0;
  this->__end_cap_.__value_ = 0;
  std::vector<unsigned int>::reserve(this, (*(a2 + 24) - *(a2 + 16)) >> 3);
  v4 = *(a2 + 16);
  if (*(a2 + 24) != v4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = **(v4 + 8 * v5);
      std::vector<float>::push_back[abi:ne200100](&this->__begin_, &v7);
      v5 = v6;
      v4 = *(a2 + 16);
      ++v6;
    }

    while (v5 < (*(a2 + 24) - v4) >> 3);
  }
}

void sub_1DDDE5674(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialMixerV2ChannelProcessor::getHeadTrackedERFilterConfigParams(uint64_t a1, void *a2, int a3)
{
  caulk::pooled_semaphore_mutex::_lock((a2 + 61));
  if (a3 == 2)
  {
    v6 = a2[21];
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else if (a3 == 1)
  {
    v6 = a2[19];
    if (v6)
    {
LABEL_4:
      IR::DynamicIRProcessor::getFFTFilterConfigParams(a1, v6);
      goto LABEL_7;
    }
  }

  else
  {
    v6 = a2[20];
    if (v6)
    {
      goto LABEL_4;
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
LABEL_7:

  return caulk::pooled_semaphore_mutex::_unlock((a2 + 61));
}

uint64_t AUSpatialMixerV2ChannelProcessor::setExclusionZones(uint64_t a1, uint64_t a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 484));
  v4 = *(a1 + 200);
  v5 = AUSM::DynamicSpatializer::setExclusionZones(*v4, a2);
  if (!v5)
  {
    if (*(v4 + 24) == 1)
    {
      v5 = AUSM::DynamicSpatializer::setExclusionZones(*(v4 + 8), a2);
      if (!v5)
      {
        v5 = AUSM::DynamicSpatializer::setExclusionZones(*(v4 + 16), a2);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  caulk::pooled_semaphore_mutex::_unlock((a1 + 484));
  return v5;
}

uint64_t AUSpatialMixerV2ChannelProcessor::setEnable(uint64_t this, int a2)
{
  *(this + 500) = a2;
  v2 = *(this + 684);
  *(this + 680) = a2;
  *(this + 1400) = 1;
  *(this + 689) = ((v2 - 5) < 0x3C) & (0xDFFD000F0003FF3uLL >> (v2 - 5));
  *(this + 688) = (v2 < 0x3F) & (0x4000002000000010uLL >> v2);
  v3 = *(this + 200);
  atomic_store(a2, (*v3 + 105));
  if (*(v3 + 24) == 1)
  {
    atomic_store(a2, (*(v3 + 8) + 105));
    atomic_store(a2, (*(v3 + 16) + 105));
  }

  return this;
}

uint64_t AUSpatialMixerV2ChannelProcessor::setBypassCoeffs(AUSM::DynamicSpatializer **this, float *a2, uint64_t a3)
{
  result = AUSM::DynamicSpatializer::setBypassCoeffs(*this, a2, a3);
  if (!result && *(this + 24) == 1)
  {
    result = AUSM::DynamicSpatializer::setBypassCoeffs(this[1], a2, a3);
    if (!result)
    {
      v7 = this[2];

      return AUSM::DynamicSpatializer::setBypassCoeffs(v7, a2, a3);
    }
  }

  return result;
}

uint64_t AUHandsetNoiseEQ::SetMaxFramesPerSlice(AUHandsetNoiseEQ *this, int a2)
{
  result = ausdk::AUBase::SetMaxFramesPerSlice(this, a2);
  if (*(this + 138) != a2)
  {
    *(this + 138) = a2;
  }

  return result;
}

uint64_t AUHandsetNoiseEQ::ChangeStreamFormat(AUHandsetNoiseEQ *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  if (a4->mSampleRate != a5->mSampleRate)
  {
    *(this + 137) = a5->mSampleRate;
  }

  return 0;
}

uint64_t AUHandsetNoiseEQ::ValidFormat(AUHandsetNoiseEQ *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 64 && a4->mFormatID == 1718773105)
  {
    result = (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    result = 0;
  }

  if (a2 == 2)
  {
    v6 = a4->mChannelsPerFrame == 1;
  }

  else
  {
    if (a2 != 1)
    {
      return result;
    }

    v6 = a4->mChannelsPerFrame == 2;
  }

  if (v6)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t AUHandsetNoiseEQ::SupportedNumChannels(AUHandsetNoiseEQ *this, const AUChannelInfo **a2)
{
  AUHandsetNoiseEQ::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs = 65538;
  if (a2)
  {
    *a2 = &AUHandsetNoiseEQ::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUHandsetNoiseEQ::GetParameterValueStrings(AUHandsetNoiseEQ *this, int a2, int a3, const __CFArray **a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3 != 8)
  {
    return 0;
  }

  v7 = xmmword_1E866B640;
  v6 = CFArrayCreate(0, &v7, 2, 0);
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t AUHandsetNoiseEQ::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 132);
  }

  return result;
}

uint64_t AUHandsetNoiseEQ::GetParameterInfo(AUHandsetNoiseEQ *this, int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  v14 = a3;
  a4->flags = 0;
  a4->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 8)
  {
    if (std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(this + 71, a3))
    {
      v15 = &v14;
      v8 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 71, a3);
      v9 = v8[3];
      v10 = *(v8 + 8);
      v11 = *(v8 + 11);
      v12 = *(v8 + 12);
      a4->cfNameString = v9;
      a4->flags |= 0x8000000u;
      v13 = *(v8 + 36);
      CFStringGetCString(v9, a4->name, 52, 0x8000100u);
      result = 0;
      a4->defaultValue = v10;
      *&a4->minValue = v13;
      a4->unit = v11;
      a4->flags |= v12;
    }

    else
    {
      return 4294956418;
    }
  }

  return result;
}

uint64_t AUHandsetNoiseEQ::SetBusCount(AUHandsetNoiseEQ *this, int a2, unsigned int a3)
{
  v3 = a3 - 1;
  if (a2 == 1 && v3 < 2)
  {
    v4 = 80;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements((this + v4), a3);
    return 0;
  }

  v5 = 4294956445;
  if (a2 == 2 && v3 <= 1)
  {
    v4 = 128;
    goto LABEL_7;
  }

  return v5;
}

ausdk::AUInputElement *AUHandsetNoiseEQ::Render(AUHandsetNoiseEQ *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = *(this + 15);
  if (v8)
  {
    v9 = (*(*v8 + 24))(v8);
  }

  else
  {
    v9 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v10 = 0;
  if (v9)
  {
    v11 = 0;
    do
    {
      Element = ausdk::AUScope::GetElement((this + 80), v11);
      if (Element && *(Element + 172))
      {
        result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v11);
        if (v14)
        {
          result = ausdk::AUInputElement::PullInput(result, a2, a3, v11, a4);
        }

        if (result)
        {
          return result;
        }
      }

      else
      {
        v10 = 1;
      }

      v11 = (v11 + 1);
    }

    while (v9 != v11);
  }

  v15 = *(this + 21);
  if (v15)
  {
    v15 = (*(*v15 + 24))(v15);
    LODWORD(v16) = v15;
  }

  else
  {
    v16 = (*(this + 19) - *(this + 18)) >> 3;
  }

  v17 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v20 = v31 - v19;
  if (v18 >= 0x200)
  {
    v21 = 512;
  }

  else
  {
    v21 = v18;
  }

  bzero(v31 - v19, v21);
  if (v16)
  {
    v23 = 0;
    while (1)
    {
      v24 = ausdk::AUScope::GetElement((this + 128), v23);
      if (!v24)
      {
        break;
      }

      v22 = ausdk::AUIOElement::PrepareBuffer(v24, a4);
      *&v20[8 * v23++] = v22;
      if (v17 == v23)
      {
        goto LABEL_24;
      }
    }

LABEL_36:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_24:
  if (v10)
  {
    return 0;
  }

  v31[0] = v31;
  MEMORY[0x1EEE9AC00](v22);
  v27 = v31 - v26;
  if (v25 >= 0x200)
  {
    v28 = 512;
  }

  else
  {
    v28 = v25;
  }

  bzero(v31 - v26, v28);
  if (v9)
  {
    v29 = 0;
    while (1)
    {
      v30 = ausdk::AUScope::GetElement((this + 80), v29);
      if (!v30)
      {
        break;
      }

      if (!*(v30 + 144))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      *&v27[8 * v29++] = *(v30 + 152) + 48;
      if (v9 == v29)
      {
        return (*(*this + 184))(this, a2, a4, v9, v27, v17, v20);
      }
    }

    goto LABEL_36;
  }

  return (*(*this + 184))(this, a2, a4, v9, v27, v17, v20);
}

uint64_t AUHandsetNoiseEQ::ProcessMultipleBufferLists(AUHandsetNoiseEQ *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 376) == 1 && *(this + 84) != a3)
  {
    return 4294956422;
  }

  LOBYTE(v72.mSampleRate) = 0;
  v11 = a4;
  if (a4)
  {
    v12 = (2 * *(this + 138));
    v13 = a4 - 1;
    HIDWORD(v14) = 41;
    v15 = a5;
    while (1)
    {
      v16 = *v15;
      if (!*v15)
      {
        return 4294956420;
      }

      v17 = v13;
      mNumberBuffers = v16->mNumberBuffers;
      if (v16->mNumberBuffers != *(this + 136))
      {
        return 4294956428;
      }

      LODWORD(v14) = *(this + 137);
      *&__A.mNumberBuffers = v14;
      __A.mBuffers[0] = xmmword_1DE09BD50;
      v69 = 4;
      v70 = mNumberBuffers;
      v71 = 32;
      AudioDSP::Utility::DetectNonFinites(v12, v16, &__A, &v72, a5);
      mSampleRate_low = LOBYTE(v72.mSampleRate);
      if ((LOBYTE(v72.mSampleRate) & 1) == 0)
      {
        v13 = v17 - 1;
        ++v15;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_11;
    }
  }

  mSampleRate_low = 0;
LABEL_11:
  v20 = a6;
  if (a6)
  {
    v21 = a6;
    v22 = a7;
    while (*v22)
    {
      if ((*v22)->mNumberBuffers != 1)
      {
        return 4294956428;
      }

      ++v22;
      if (!--v21)
      {
        goto LABEL_16;
      }
    }

    return 4294956420;
  }

LABEL_16:
  if (!mSampleRate_low || (*(this + 556) & 1) == 0)
  {
    v23 = *(this + 70);
    if (v23)
    {
      if (*(this + 133) == *(this + 132) || (AUHandsetNoiseEQ::UpdateState(this), *(this + 133) = *(this + 132), (v23 = *(this + 70)) != 0))
      {
        if (*v23 == 1)
        {
          mBuffers = (*a5)->mBuffers;
          v25 = *(v23 + 56);
          v26 = *(v23 + 16);
          v27 = mBuffers[*(v23 + 48)].mData + 4 * v26;
          *&__A.mNumberBuffers = mBuffers[*(v23 + 48)].mData;
          *&__A.mBuffers[0].mNumberChannels = v27;
          v28 = *a7;
          *(&v72.mBytesPerPacket + 1) = mBuffers[v25].mData;
          *(&v72.mBytesPerFrame + 1) = *(&v72.mBytesPerPacket + 1) + 4 * v26;
          *(&v72.mSampleRate + 1) = v28->mBuffers[0].mData;
          *(&v72.mFormatID + 1) = *(&v72.mSampleRate + 1) + 4 * v26;
          vDSP_zvabs(&__A, 1, *(v23 + 192), 1, v26);
          vDSP_zvabs((&v72.mBytesPerPacket + 1), 1, *(v23 + 216), 1, *(v23 + 16));
          v29 = *(v23 + 192);
          *v29 = fabsf(**&__A.mNumberBuffers);
          v30 = *(v23 + 16);
          v29[v30] = fabsf(**&__A.mBuffers[0].mNumberChannels);
          v31 = *(v23 + 216);
          *v31 = fabsf(**(&v72.mBytesPerPacket + 1));
          v31[v30] = fabsf(**(&v72.mBytesPerFrame + 1));
          MEMORY[0x1E12BE8A0](v31, 1, v23 + 64, v31, 1, *(v23 + 40));
          MEMORY[0x1E12BE8A0](*(v23 + 192), 1, v23 + 64, *(v23 + 192), 1, *(v23 + 40));
          v32 = *(v23 + 192);
          v33 = *(v23 + 216);
          if (*(v23 + 1) == 1)
          {
            *(v23 + 1) = 0;
            MEMORY[0x1E12BE8A0](v32, 1, v23 + 64, *(v23 + 144), 1, *(v23 + 40));
            MEMORY[0x1E12BE8A0](v33, 1, v23 + 64, *(v23 + 120), 1, *(v23 + 40));
          }

          else
          {
            vDSP_vavlin(*(v23 + 216), 1, (v23 + 108), *(v23 + 120), 1, *(v23 + 40));
            vDSP_vavlin(v32, 1, (v23 + 108), *(v23 + 144), 1, *(v23 + 40));
          }

          v42 = *(v23 + 40);
          if (v42)
          {
            v43 = 0;
            while (*(v23 + 68) > *(v23 + 84))
            {
              v44 = *(*(v23 + 144) + 4 * v43);
              v45 = *(*(v23 + 120) + 4 * v43);
              v46 = *(v23 + 240);
              if ((v44 / v45) < *(v23 + 80))
              {
                goto LABEL_46;
              }

              v47 = (1.0 - *(v23 + 100)) + (*(v23 + 100) * *(v46 + 4 * v43));
LABEL_51:
              *(v46 + 4 * v43++) = v47;
              if (v42 == v43)
              {
                goto LABEL_52;
              }
            }

            v46 = *(v23 + 240);
            v44 = *(*(v23 + 144) + 4 * v43);
            v45 = *(*(v23 + 120) + 4 * v43);
LABEL_46:
            v48 = v44 / (v45 + *(v23 + 64));
            if (v48 < *(v23 + 72))
            {
              v48 = *(v23 + 72);
            }

            if (*(v23 + 76) < v48)
            {
              v48 = *(v23 + 76);
            }

            v47 = ((1.0 - *(v23 + 104)) * v48) + (*(v23 + 104) * *(v46 + 4 * v43));
            goto LABEL_51;
          }

LABEL_52:
          if (*(v23 + 112))
          {
            v49 = *(v23 + 168);
            *v49 = 1.0;
            v49[v42 - 1] = 1.0;
            if ((v42 - 1) >= 2)
            {
              v50 = v42 - 2;
              v51 = (*(v23 + 240) + 8);
              v52 = 1;
              do
              {
                v53 = *(v51 - 1) * 0.5 + *(v51 - 2) * 0.25;
                v54 = *v51++;
                *&v53 = v53 + v54 * 0.25;
                v49[v52++] = *&v53;
                --v50;
              }

              while (v50);
            }
          }

          else
          {
            v55 = *(v23 + 240);
            v49 = *(v23 + 168);
            v56 = *(v23 + 248) - v55;
            if (v56)
            {
              memmove(*(v23 + 168), v55, v56);
              v49 = *(v23 + 168);
            }
          }

          vDSP_zrvmul((&v72.mBytesPerPacket + 1), 1, v49, 1, (&v72.mSampleRate + 1), 1, *(v23 + 16));
          v34 = 0;
          **(&v72.mFormatID + 1) = *(*(v23 + 168) + 4 * *(v23 + 40) - 4) * **(&v72.mBytesPerFrame + 1);
          if (!*(this + 134))
          {
            goto LABEL_64;
          }
        }

        else
        {
          v34 = 4294956429;
        }

        v57 = *a5;
        if ((*a5)->mBuffers[0].mDataByteSize <= (*a7)->mBuffers[0].mDataByteSize)
        {
          mData = (*a7)->mBuffers[0].mData;
          if (v57->mBuffers[0].mData != mData)
          {
            memcpy(mData, *&v57[1].mBuffers[0].mNumberChannels, *(&v57[1].mNumberBuffers + 1));
          }
        }
      }

      else
      {
        v34 = 0;
      }

LABEL_64:
      if (a6 >= 2)
      {
        v59 = 1;
        do
        {
          if (v59 >= v11)
          {
            v61 = a7[v59];
            if (v61->mNumberBuffers)
            {
              v62 = 0;
              v63 = 0;
              do
              {
                bzero(v61->mBuffers[v62].mData, v61->mBuffers[v62].mDataByteSize);
                ++v63;
                v61 = a7[v59];
                ++v62;
              }

              while (v63 < v61->mNumberBuffers);
            }
          }

          else
          {
            v60 = *(this + 70);
            if (*v60 == 1)
            {
              memcpy(a7[v59]->mBuffers[0].mData, a5[v59]->mBuffers[*(v60 + 56)].mData, a7[v59]->mBuffers[0].mDataByteSize);
              v34 = 0;
            }

            else
            {
              v64 = a5[v59];
              v65 = a7[v59];
              if (v64->mBuffers[0].mDataByteSize <= v65->mBuffers[0].mDataByteSize)
              {
                v66 = v65->mBuffers[0].mData;
                if (v64->mBuffers[0].mData != v66)
                {
                  memcpy(v66, *&v64[1].mBuffers[0].mNumberChannels, *(&v64[1].mNumberBuffers + 1));
                }
              }

              v34 = 4294956429;
            }
          }

          ++v59;
        }

        while (v59 != v20);
      }

      return v34;
    }
  }

  if (a6)
  {
    v35 = 0;
    do
    {
      if (v35 >= v11)
      {
        v39 = a7[v35];
        if (v39->mNumberBuffers)
        {
          v40 = 0;
          v41 = 0;
          do
          {
            bzero(v39->mBuffers[v40].mData, v39->mBuffers[v40].mDataByteSize);
            ++v41;
            v39 = a7[v35];
            ++v40;
          }

          while (v41 < v39->mNumberBuffers);
        }
      }

      else
      {
        v36 = a5[v35];
        v37 = a7[v35];
        if (v36->mBuffers[0].mDataByteSize <= v37->mBuffers[0].mDataByteSize)
        {
          v38 = v37->mBuffers[0].mData;
          if (v36->mBuffers[0].mData != v38)
          {
            memcpy(v38, *&v36[1].mBuffers[0].mNumberChannels, *(&v36[1].mNumberBuffers + 1));
          }
        }
      }

      ++v35;
    }

    while (v35 != v20);
  }

  return 0;
}

void AUHandsetNoiseEQ::UpdateState(AUHandsetNoiseEQ *this)
{
  if (*(this + 70))
  {
    for (i = 0; i != 9; ++i)
    {
      v3 = *(this + 70);
      v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v5 & 1) == 0)
      {
        abort();
      }

      Parameter = ausdk::AUElement::GetParameter(v4, i);
      if (*v3 == 1)
      {
        if (i > 3)
        {
          if (i > 5)
          {
            if (i == 6)
            {
              *(v3 + 92) = Parameter;
              v11 = 0.0;
              if (Parameter != 0.0)
              {
                v11 = expf((-*(v3 + 16) / *(v3 + 4)) / Parameter);
              }

              *(v3 + 100) = v11;
            }

            else if (i == 7)
            {
              *(v3 + 96) = Parameter;
              v9 = 0.0;
              if (Parameter != 0.0)
              {
                v9 = expf((-*(v3 + 16) / *(v3 + 4)) / Parameter);
              }

              *(v3 + 108) = v9 / (1.0 - v9);
            }
          }

          else if (i == 4)
          {
            *(v3 + 84) = Parameter;
          }

          else
          {
            *(v3 + 88) = Parameter;
            v8 = 0.0;
            if (Parameter != 0.0)
            {
              v8 = expf((-*(v3 + 16) / *(v3 + 4)) / Parameter);
            }

            *(v3 + 104) = v8;
          }
        }

        else if (i > 1)
        {
          if (i == 2)
          {
            v10 = __exp10(Parameter / 20.0);
            *(v3 + 76) = v10;
          }

          else
          {
            *(v3 + 80) = Parameter;
          }
        }

        else if (i)
        {
          if (i == 1)
          {
            v7 = __exp10(Parameter / 20.0);
            *(v3 + 72) = v7;
          }
        }

        else
        {
          *(v3 + 68) = Parameter;
        }
      }
    }
  }
}

uint64_t AUHandsetNoiseEQ::SetParameter(AUHandsetNoiseEQ *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  result = 0;
  ++*(this + 132);
  return result;
}

uint64_t AUHandsetNoiseEQ::SetProperty(AUHandsetNoiseEQ *this, int a2, int a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
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

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 134) = *a5;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUHandsetNoiseEQ::GetProperty(AUHandsetNoiseEQ *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    v6 = *(this + 376);
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    v6 = *(this + 134);
  }

  result = 0;
  *a5 = v6;
  return result;
}

uint64_t AUHandsetNoiseEQ::GetPropertyInfo(AUHandsetNoiseEQ *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

uint64_t AUHandsetNoiseEQ::Reset(AUHandsetNoiseEQ *this)
{
  if (*(this + 70))
  {
    AUHandsetNoiseEQ::UpdateState(this);
    v2 = *(this + 70);
    *(v2 + 1) = 1;
    v3 = *(v2 + 240);
    v4 = *(v2 + 248) - v3;
    if (v4 >= 1)
    {
      memset_pattern16(v3, &unk_1DE095DF0, v4);
    }
  }

  return 0;
}

void *std::unique_ptr<HandsetNoiseEQCore>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[30];
    if (v3)
    {
      v2[31] = v3;
      operator delete(v3);
    }

    v4 = v2[27];
    if (v4)
    {
      v2[28] = v4;
      operator delete(v4);
    }

    v5 = v2[24];
    if (v5)
    {
      v2[25] = v5;
      operator delete(v5);
    }

    v6 = v2[21];
    if (v6)
    {
      v2[22] = v6;
      operator delete(v6);
    }

    v7 = v2[18];
    if (v7)
    {
      v2[19] = v7;
      operator delete(v7);
    }

    v8 = v2[15];
    if (v8)
    {
      v2[16] = v8;
      operator delete(v8);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUHandsetNoiseEQ::Initialize(AUHandsetNoiseEQ *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_21;
  }

  v3 = Element;
  v4 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v4)
  {
    goto LABEL_21;
  }

  *(this + 136) = *(v3 + 108);
  if (*(v4 + 108) == 1)
  {
    for (i = 0; ; ++i)
    {
      v6 = *(this + 15);
      if (v6)
      {
        LODWORD(v7) = (*(*v6 + 24))(v6);
      }

      else
      {
        v7 = (*(this + 13) - *(this + 12)) >> 3;
      }

      if (i >= v7)
      {
        break;
      }

      v8 = ausdk::AUScope::GetElement((this + 80), i);
      if (!v8)
      {
        goto LABEL_21;
      }

      if (*(v8 + 108) != *(this + 136))
      {
        return 4294956421;
      }
    }

    for (j = 0; ; ++j)
    {
      v10 = *(this + 21);
      if (v10)
      {
        LODWORD(v11) = (*(*v10 + 24))(v10);
      }

      else
      {
        v11 = (*(this + 19) - *(this + 18)) >> 3;
      }

      if (j >= v11)
      {
        operator new();
      }

      v12 = ausdk::AUScope::GetElement((this + 128), j);
      if (!v12)
      {
        break;
      }

      if (*(v12 + 108) != 1)
      {
        return 4294956421;
      }
    }

LABEL_21:
    ausdk::Throw(0xFFFFD583);
  }

  return 4294956421;
}

void AUHandsetNoiseEQ::~AUHandsetNoiseEQ(AUHandsetNoiseEQ *this)
{
  AUHandsetNoiseEQ::~AUHandsetNoiseEQ(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5923E10;
  std::unique_ptr<HandsetNoiseEQCore>::reset[abi:ne200100](this + 70, 0);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(this + 568);
  std::unique_ptr<HandsetNoiseEQCore>::reset[abi:ne200100](this + 70, 0);

  ausdk::AUBase::~AUBase(this);
}

float32x4_t Shoebox::ShoeboxRoom::refreshRoom(float32x4_t *this, double a2, double a3, double a4, __n128 a5)
{
  v5 = 0;
  v6 = 0;
  v38[1] = *MEMORY[0x1E69E9840];
  v38[0] = 0x3F800000BF800000;
  v7 = this[2];
  v8 = this[4];
  v9 = this + 29;
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  do
  {
    v11 = 0;
    a5.n128_u32[0] = *(v38 + v6);
    do
    {
      v12 = 0;
      v13 = a5;
      v13.n128_u32[1] = *(v38 + v11);
      v13.n128_u32[2] = a5.n128_u32[2];
      do
      {
        v14 = v13;
        v14.i32[2] = *(v38 + v12);
        v9[v5++] = vmlaq_f32(v7, v8, vmulq_f32(v14, v10));
        v12 += 4;
      }

      while (v12 != 8);
      v11 += 4;
    }

    while (v11 != 8);
    v6 += 4;
  }

  while (v6 != 8);
  for (i = 0; i != 8; ++i)
  {
    v16 = this[5];
    v17 = v9[i];
    v18 = vmulq_f32(v16, xmmword_1DE09BFF0);
    v19 = vnegq_f32(v18);
    v20 = vtrn2q_s32(v18, vtrn1q_s32(v18, v19));
    v21 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v18, v19, 8uLL), *v17.f32, 1), vextq_s8(v20, v20, 8uLL), v17.f32[0]);
    v22 = vrev64q_s32(v18);
    v22.i32[0] = v19.i32[1];
    v22.i32[3] = v19.i32[2];
    v23 = vmlaq_laneq_f32(v21, v22, v17, 2);
    v24 = vnegq_f32(v23);
    v25 = vtrn2q_s32(v23, vtrn1q_s32(v23, v24));
    v26 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v23, v24, 8uLL), *v16.f32, 1), vextq_s8(v25, v25, 8uLL), v16.f32[0]);
    v27 = vrev64q_s32(v23);
    v27.i32[0] = v24.i32[1];
    v27.i32[3] = v24.i32[2];
    v9[i] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v23, v16, 3), v27, v16, 2), v26);
  }

  v28 = this + 37;
  v29 = 6;
  do
  {
    v30 = v9[v28->u32[0]];
    v31 = vsubq_f32(v9[v28->u32[1]], v30);
    v32 = vsubq_f32(v9[v28->u32[2]], v30);
    v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vnegq_f32(v31)), v32, vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL));
    v34 = vmulq_f32(v33, v33);
    *&v35 = v34.f32[1] + (v34.f32[2] + v34.f32[0]);
    v36 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
    *v33.f32 = vrsqrte_f32(v35);
    *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v35, vmul_f32(*v33.f32, *v33.f32)));
    result = vmulq_n_f32(v36, vmul_f32(*v33.f32, vrsqrts_f32(v35, vmul_f32(*v33.f32, *v33.f32))).f32[0]);
    v28[6] = result;
    ++v28;
    --v29;
  }

  while (v29);
  return result;
}

BOOL Shoebox::ShoeboxRoom::isObjectInsideRoom(float32x4_t *a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, a1[2]);
  v3 = vmulq_f32(v2, a1[47]);
  v4 = fabsf(v3.f32[2] + vaddv_f32(*v3.f32));
  v5 = a1[4];
  if (v4 > (0.5 * v5.f32[0]))
  {
    return 0;
  }

  v6 = vmulq_f32(v2, a1[43]);
  if (fabsf(v6.f32[2] + vaddv_f32(*v6.f32)) > vmuls_lane_f32(0.5, *v5.f32, 1))
  {
    return 0;
  }

  v8 = vmulq_f32(v2, a1[46]);
  return fabsf(v8.f32[2] + vaddv_f32(*v8.f32)) <= vmuls_lane_f32(0.5, v5, 2);
}

void Shoebox::ShoeboxRoom::reflectObject(Shoebox::ShoeboxRoom *this, uint64_t a2, const Shoebox::SoundObject *a3, Shoebox::ShoeboxRoom *a4)
{
  v5 = a3;
  v8 = Shoebox::SoundObject::SoundObject(this);
  v8[10].i64[1] = 0;
  v9 = (a2 + 16 * v5);
  _Q0 = v9[43];
  v11 = vmulq_f32(_Q0, *(a2 + 16 * v9[37].u32[0] + 464));
  v11.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
  _S3 = HIDWORD(v9[43].i64[0]);
  _S4 = vmuls_lane_f32(-2.0, _Q0, 2);
  __asm { FMLA            S6, S4, V0.S[2] }

  _D7 = vmul_f32(*_Q0.f32, 0xC0000000C0000000);
  v20.f32[0] = (_D7.f32[0] * _Q0.f32[0]) + 1.0;
  v20.i32[1] = vmuls_lane_f32(_D7.f32[0], *_Q0.f32, 1);
  __asm { FMLA            S5, S3, V7.S[1] }

  *v22.f32 = vmul_laneq_f32(_D7, _Q0, 2);
  v20.i64[1] = v22.u32[0];
  v23.i64[0] = __PAIR64__(_S5, v20.u32[1]);
  v23.i64[1] = v22.u32[1];
  v22.i64[1] = _S6;
  *v24.f32 = vmul_n_f32(_D7, -v11.f32[0]);
  v24.f32[2] = -(v11.f32[0] * _S4);
  *v8 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(*a4)), v23, *a4, 1), v22, *a4, 2), v24);
  v8[1].i32[0] = 0;
  v25 = *(a4 + 3);
  v26 = vmulq_f32(v25, xmmword_1DE09BFF0);
  v27 = vnegq_f32(v26);
  v28 = vtrn2q_s32(v26, vtrn1q_s32(v26, v27));
  v29 = vmulq_f32(vextq_s8(v26, v27, 8uLL), 0);
  v30 = vrev64q_s32(v26);
  v30.i32[0] = v27.i32[1];
  v30.i32[3] = v27.i32[2];
  v31 = vmlaq_f32(vaddq_f32(vextq_s8(v28, v28, 8uLL), v29), 0, v30);
  v32 = vnegq_f32(v31);
  v33 = vtrn2q_s32(v31, vtrn1q_s32(v31, v32));
  v34 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v31, v32, 8uLL), *v25.f32, 1), vextq_s8(v33, v33, 8uLL), v25.f32[0]);
  v35 = vrev64q_s32(v31);
  v35.i32[0] = v32.i32[1];
  v35.i32[3] = v32.i32[2];
  v36 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v31, v25, 3), v35, v25, 2), v34);
  v37 = vmulq_f32(_Q0, v36);
  v31.f32[0] = vaddv_f32(*v37.f32);
  v37.f32[0] = (v37.f32[2] + v31.f32[0]) + (v37.f32[2] + v31.f32[0]);
  v38 = vmlsq_lane_f32(v36, _Q0, *v37.f32, 0);
  v39 = vmulq_f32(v38, xmmword_1DE09BBD0);
  if ((v39.f32[2] + vaddv_f32(*v39.f32)) >= 0.0)
  {
    v72 = vaddq_f32(v38, xmmword_1DE09BBD0);
    v73 = vmulq_f32(v72, v72);
    *&v74 = v73.f32[2] + vaddv_f32(*v73.f32);
    *v73.f32 = vrsqrte_f32(v74);
    *v73.f32 = vmul_f32(*v73.f32, vrsqrts_f32(v74, vmul_f32(*v73.f32, *v73.f32)));
    v75 = vmulq_n_f32(v72, vmul_f32(*v73.f32, vrsqrts_f32(v74, vmul_f32(*v73.f32, *v73.f32))).f32[0]);
    v76 = vmulq_f32(v75, xmmword_1DE09DB40);
    v77 = vmlaq_f32(vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL), xmmword_1DE095680, v75);
    v71 = vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL);
    v78 = vmulq_f32(v75, xmmword_1DE09BBD0);
    v71.f32[3] = v78.f32[2] + vaddv_f32(*v78.f32);
  }

  else
  {
    v40 = vrsqrte_f32(1065353216);
    v41 = vmul_f32(v40, vrsqrts_f32(1065353216, vmul_f32(v40, v40)));
    LODWORD(v42) = vmul_f32(v41, vrsqrts_f32(1065353216, vmul_f32(v41, v41))).u32[0];
    v44 = vmulq_f32(v38, v38);
    v43 = vaddv_f32(*v44.f32);
    v44.i32[1] = 0;
    *&v45 = v44.f32[2] + v43;
    v46 = vrsqrte_f32(COERCE_UNSIGNED_INT(v44.f32[2] + v43));
    v47 = vmul_f32(v46, vrsqrts_f32(v45, vmul_f32(v46, v46)));
    v48 = vaddq_f32(vmulq_n_f32(xmmword_1DE09BBD0, v42), vmulq_n_f32(v38, vmul_f32(v47, vrsqrts_f32(v45, vmul_f32(v47, v47))).f32[0]));
    v49 = vmulq_f32(v48, v48);
    v50 = v49.f32[2] + vaddv_f32(*v49.f32);
    if (v50 <= 1.4211e-14)
    {
      v71 = vmulq_n_f32(xmmword_1DE097CF0, v42);
      v71.i32[3] = 0;
    }

    else
    {
      v51 = v50;
      v52 = vrsqrte_f32(LODWORD(v50));
      v53 = vmul_f32(v52, vrsqrts_f32(LODWORD(v51), vmul_f32(v52, v52)));
      v54 = vmulq_n_f32(v48, vmul_f32(v53, vrsqrts_f32(LODWORD(v51), vmul_f32(v53, v53))).f32[0]);
      v55 = vaddq_f32(v54, xmmword_1DE09BBD0);
      v56 = vmulq_f32(v55, v55);
      *&v57 = v56.f32[2] + vaddv_f32(*v56.f32);
      *v56.f32 = vrsqrte_f32(v57);
      *v56.f32 = vmul_f32(*v56.f32, vrsqrts_f32(v57, vmul_f32(*v56.f32, *v56.f32)));
      v58 = vmulq_n_f32(v55, vmul_f32(*v56.f32, vrsqrts_f32(v57, vmul_f32(*v56.f32, *v56.f32))).f32[0]);
      v59 = vmulq_f32(v58, xmmword_1DE09DB40);
      v60 = vmlaq_f32(vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL), xmmword_1DE095680, v58);
      v61 = vmulq_f32(v58, xmmword_1DE09BBD0);
      v62 = vaddq_f32(v38, v54);
      v63 = vmulq_f32(v62, v62);
      v44.f32[0] = v63.f32[2] + vaddv_f32(*v63.f32);
      *v63.f32 = vrsqrte_f32(*v44.f32);
      *v63.f32 = vmul_f32(*v63.f32, vrsqrts_f32(*v44.f32, vmul_f32(*v63.f32, *v63.f32)));
      v64 = vmulq_n_f32(v62, vmul_f32(*v63.f32, vrsqrts_f32(*v44.f32, vmul_f32(*v63.f32, *v63.f32))).f32[0]);
      v65 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), vnegq_f32(v54)), v64, vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
      v66 = vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL);
      v67 = vmulq_f32(v54, v64);
      v66.f32[3] = v67.f32[2] + vaddv_f32(*v67.f32);
      v68 = vnegq_f32(v66);
      v69 = vtrn2q_s32(v66, vtrn1q_s32(v66, v68));
      v70 = vrev64q_s32(v66);
      v70.i32[0] = v68.i32[1];
      v70.i32[3] = v68.i32[2];
      v71 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v66, v61.f32[2] + vaddv_f32(*v61.f32)), v70, *v60.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v66, v68, 8uLL), v60.f32[0]), vextq_s8(v69, v69, 8uLL), v60, 2));
    }
  }

  *(this + 3) = v71;
  MEMORY[0x1E12BE7F0](a4 + 68, 1, a2 + 40 * v5 + 784, 1, this + 68, 1, 10);
  v79 = (a2 + 4 * v5);
  *(this + 27) = *(a4 + 27) * v79[256];
  *(this + 112) = *(a2 + v5 + 1120) & *(a4 + 112);
  v80 = *(a4 + 29);
  v81 = 0.0;
  if (!*(a4 + 120))
  {
    v80 = 0.0;
  }

  v82 = *(a4 + 31);
  if (!*(a4 + 128))
  {
    v82 = 3.4028e38;
  }

  if (*(a4 + 136))
  {
    v81 = *(a4 + 33);
  }

  v83 = *(a4 + 141);
  v84 = *(a4 + 140);
  *(this + 29) = v80 + ((1.0 - v80) * v79[262]);
  *(this + 120) = 1;
  v85 = v79[268];
  if (v82 < v85)
  {
    v85 = v82;
  }

  *(this + 31) = v85;
  *(this + 128) = 1;
  v86 = v79[274];
  if (v86 < v81)
  {
    v86 = v81;
  }

  *(this + 33) = v86;
  *(this + 136) = 1;
  if (this != a4)
  {
    std::vector<Shoebox::Walls>::__assign_with_size[abi:ne200100]<Shoebox::Walls*,Shoebox::Walls*>(this + 18, *(a4 + 18), *(a4 + 19), (*(a4 + 19) - *(a4 + 18)) >> 2);
  }

  v88 = *(this + 19);
  v87 = *(this + 20);
  if (v88 >= v87)
  {
    v90 = *(this + 18);
    v91 = v88 - v90;
    v92 = (v88 - v90) >> 2;
    v93 = v92 + 1;
    if ((v92 + 1) >> 62)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v94 = v87 - v90;
    if (v94 >> 1 > v93)
    {
      v93 = v94 >> 1;
    }

    if (v94 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v95 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v95 = v93;
    }

    if (v95)
    {
      std::allocator<int>::allocate_at_least[abi:ne200100](v95);
    }

    v96 = (v88 - v90) >> 2;
    v97 = (4 * v92);
    v98 = (4 * v92 - 4 * v96);
    *v97 = v5;
    v89 = v97 + 1;
    memcpy(v98, v90, v91);
    v99 = *(this + 18);
    *(this + 18) = v98;
    *(this + 19) = v89;
    *(this + 20) = 0;
    if (v99)
    {
      operator delete(v99);
    }
  }

  else
  {
    *v88 = v5;
    v89 = v88 + 4;
  }

  if (v83)
  {
    v100 = v84;
  }

  else
  {
    v100 = 0;
  }

  *(this + 19) = v89;
  if (v100 == (*(a2 + v5 + 1126) ^ 1))
  {
    v101 = 257;
  }

  else
  {
    v101 = 256;
  }

  *(this + 70) = v101;
}

void sub_1DDDE7608(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    *(v1 + 152) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      v11 = **a3;
      v12 = (v11 + 176 * v9);
      v13 = (v11 + 176 * *result);
      if (v12[1].i32[0])
      {
        v14 = v12->f32[2];
      }

      else
      {
        v43 = vmulq_f32(*v12, *v12);
        v14 = sqrtf(v43.f32[2] + vaddv_f32(*v43.f32));
      }

      if (v13[1].i32[0])
      {
        v44 = v13->f32[2];
      }

      else
      {
        v45 = vmulq_f32(*v13, *v13);
        v44 = sqrtf(v45.f32[2] + vaddv_f32(*v45.f32));
      }

      if ((((v12[4].f32[0] * v12[6].f32[3]) * v12[7].u8[0]) / v14) > (((v13[4].f32[0] * v13[6].f32[3]) * v13[7].u8[0]) / v44))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v39 = a5;
      v40 = a4 >> 1;
      v41 = &result[a4 >> 1];
      v42 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(result, v41, a3, v42, a5);
        v46 = &v39[8 * v40];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v46);
        v47 = &v39[8 * a4];
        v48 = *a3;
        v49 = v46;
        while (v49 != v47)
        {
          v50 = *v49;
          v51 = (*v48 + 176 * *v49);
          if (v51[1].i32[0])
          {
            v52 = v51->f32[2];
          }

          else
          {
            v53 = vmulq_f32(*v51, *v51);
            v52 = sqrtf(v53.f32[2] + vaddv_f32(*v53.f32));
          }

          v54 = (*v48 + 176 * *v39);
          if (v54[1].i32[0])
          {
            v55 = v54->f32[2];
          }

          else
          {
            v56 = vmulq_f32(*v54, *v54);
            v55 = sqrtf(v56.f32[2] + vaddv_f32(*v56.f32));
          }

          v57 = ((v51[4].f32[0] * v51[6].f32[3]) * v51[7].u8[0]) / v52;
          v58 = ((v54[4].f32[0] * v54[6].f32[3]) * v54[7].u8[0]) / v55;
          if (v57 <= v58)
          {
            v50 = *v39;
          }

          v39 += 8 * (v57 <= v58);
          v49 += v57 > v58;
          *v8++ = v50;
          if (v39 == v46)
          {
            while (v49 != v47)
            {
              v60 = *v49++;
              *v8++ = v60;
            }

            return result;
          }
        }

        while (v39 != v46)
        {
          v59 = *v39;
          v39 += 8;
          *v8++ = v59;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(result, v41, a3, v42, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v39, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), v39, a6);
      }
    }

    else if (result != a2)
    {
      v16 = result + 1;
      if (result + 1 != a2)
      {
        v17 = 0;
        v18 = **a3;
        v19 = result;
        do
        {
          v20 = v16;
          v21 = *v16;
          v22 = (v18 + 176 * v21);
          v23 = v22[1].i32[0];
          if (v23)
          {
            v24 = v22->f32[2];
          }

          else
          {
            v25 = vmulq_f32(*v22, *v22);
            v24 = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
          }

          v26 = *v19;
          v27 = (v18 + 176 * v26);
          if (v27[1].i32[0])
          {
            v28 = v27->f32[2];
          }

          else
          {
            v29 = vmulq_f32(*v27, *v27);
            v28 = sqrtf(v29.f32[2] + vaddv_f32(*v29.f32));
          }

          v30 = (v22[4].f32[0] * v22[6].f32[3]) * v22[7].u8[0];
          if ((v30 / v24) > (((v27[4].f32[0] * v27[6].f32[3]) * v27[7].u8[0]) / v28))
          {
            v31 = v17;
            while (1)
            {
              *(v8 + v31 + 8) = v26;
              if (!v31)
              {
                break;
              }

              if (v23)
              {
                v32 = v22->f32[2];
              }

              else
              {
                v33 = vmulq_f32(*v22, *v22);
                v32 = sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
              }

              v26 = *(v8 + v31 - 8);
              v34 = (v18 + 176 * v26);
              result = v34[1].u32[0];
              if (result)
              {
                v35 = v34->f32[2];
              }

              else
              {
                v36 = vmulq_f32(*v34, *v34);
                v35 = sqrtf(v36.f32[2] + vaddv_f32(*v36.f32));
              }

              v31 -= 8;
              if ((v30 / v32) <= (((v34[4].f32[0] * v34[6].f32[3]) * v34[7].u8[0]) / v35))
              {
                v37 = (v8 + v31 + 8);
                goto LABEL_28;
              }
            }

            v37 = v8;
LABEL_28:
            *v37 = v21;
          }

          v16 = v20 + 1;
          v17 += 8;
          v19 = v20;
        }

        while (v20 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_59:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = (v11 + 176 * v10);
      v13 = (v11 + 176 * *result);
      if (v12[1].i32[0])
      {
        v14 = v12->f32[2];
      }

      else
      {
        v49 = vmulq_f32(*v12, *v12);
        v14 = sqrtf(v49.f32[2] + vaddv_f32(*v49.f32));
      }

      if (v13[1].i32[0])
      {
        v50 = v13->f32[2];
      }

      else
      {
        v51 = vmulq_f32(*v13, *v13);
        v50 = sqrtf(v51.f32[2] + vaddv_f32(*v51.f32));
      }

      v52 = ((v12[4].f32[0] * v12[6].f32[3]) * v12[7].u8[0]) / v14;
      v53 = ((v13[4].f32[0] * v13[6].f32[3]) * v13[7].u8[0]) / v50;
      if (v52 <= v53)
      {
        v10 = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v52 <= v53)
      {
        v7 = a2 - 1;
      }

      goto LABEL_59;
    }

    if (a4 > 8)
    {
      v35 = &result[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(result, v35, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v36 = *a3;
      v37 = &v7[a4 >> 1];
      while (v37 != a2)
      {
        v38 = *v37;
        v39 = (*v36 + 176 * *v37);
        if (v39[1].i32[0])
        {
          v40 = v39->f32[2];
        }

        else
        {
          v41 = vmulq_f32(*v39, *v39);
          v40 = sqrtf(v41.f32[2] + vaddv_f32(*v41.f32));
        }

        v42 = (*v36 + 176 * *v7);
        if (v42[1].i32[0])
        {
          v43 = v42->f32[2];
        }

        else
        {
          v44 = vmulq_f32(*v42, *v42);
          v43 = sqrtf(v44.f32[2] + vaddv_f32(*v44.f32));
        }

        v45 = ((v39[4].f32[0] * v39[6].f32[3]) * v39[7].u8[0]) / v40;
        v46 = ((v42[4].f32[0] * v42[6].f32[3]) * v42[7].u8[0]) / v43;
        if (v45 <= v46)
        {
          v38 = *v7;
        }

        v37 += v45 > v46;
        v7 += v45 <= v46;
        *v5++ = v38;
        if (v7 == v35)
        {
          while (v37 != a2)
          {
            v48 = *v37++;
            *v5++ = v48;
          }

          return result;
        }
      }

      while (v7 != v35)
      {
        v47 = *v7++;
        *v5++ = v47;
      }
    }

    else if (result != a2)
    {
      v15 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v16 = 0;
        v17 = **a3;
        v18 = a5;
        do
        {
          v19 = (v17 + 176 * *v15);
          if (v19[1].i32[0])
          {
            v20 = v19->f32[2];
          }

          else
          {
            v21 = vmulq_f32(*v19, *v19);
            v20 = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
          }

          v22 = v18 + 1;
          v23 = (v17 + 176 * *v18);
          if (v23[1].i32[0])
          {
            v24 = v23->f32[2];
          }

          else
          {
            v25 = vmulq_f32(*v23, *v23);
            v24 = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
          }

          if ((((v19[4].f32[0] * v19[6].f32[3]) * v19[7].u8[0]) / v20) <= (((v23[4].f32[0] * v23[6].f32[3]) * v23[7].u8[0]) / v24))
          {
            *v22 = *v15;
          }

          else
          {
            v18[1] = *v18;
            v26 = a5;
            if (v18 != a5)
            {
              v27 = v16;
              while (1)
              {
                v28 = (v17 + 176 * *v15);
                if (v28[1].i32[0])
                {
                  v29 = v28->f32[2];
                }

                else
                {
                  v30 = vmulq_f32(*v28, *v28);
                  v29 = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32));
                }

                v31 = *(a5 + v27 - 8);
                v32 = (v17 + 176 * v31);
                if (v32[1].i32[0])
                {
                  v33 = v32->f32[2];
                }

                else
                {
                  v34 = vmulq_f32(*v32, *v32);
                  v33 = sqrtf(v34.f32[2] + vaddv_f32(*v34.f32));
                }

                if ((((v28[4].f32[0] * v28[6].f32[3]) * v28[7].u8[0]) / v29) <= (((v32[4].f32[0] * v32[6].f32[3]) * v32[7].u8[0]) / v33))
                {
                  break;
                }

                *(a5 + v27) = v31;
                v27 -= 8;
                if (!v27)
                {
                  v26 = a5;
                  goto LABEL_30;
                }
              }

              v26 = (a5 + v27);
            }

LABEL_30:
            *v26 = *v15;
          }

          ++v15;
          v16 += 8;
          v18 = v22;
        }

        while (v15 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__inplace_merge<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    v8 = a6;
    v11 = result;
    while (v8 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = **a4;
      v13 = (v12 + 176 * *a2);
      v14 = v13[6].f32[3];
      v15 = v13[4].f32[0] * v14;
      LOBYTE(v14) = v13[7].i8[0];
      v16 = v15 * LODWORD(v14);
      while (1)
      {
        if (v13[1].i32[0])
        {
          v17 = v13->f32[2];
        }

        else
        {
          v18 = vmulq_f32(*v13, *v13);
          v17 = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
        }

        v19 = *v11;
        v20 = (v12 + 176 * *v11);
        if (v20[1].i32[0])
        {
          v21 = v20->f32[2];
        }

        else
        {
          v22 = vmulq_f32(*v20, *v20);
          v21 = sqrtf(v22.f32[2] + vaddv_f32(*v22.f32));
        }

        if ((v16 / v17) > (((v20[4].f32[0] * v20[6].f32[3]) * v20[7].u8[0]) / v21))
        {
          break;
        }

        ++v11;
        if (!--a5)
        {
          return result;
        }
      }

      if (a5 < v8)
      {
        v23 = v8 / 2;
        v24 = &a2[v8 / 2];
        v25 = a2;
        if (a2 != v11)
        {
          v26 = a2 - v11;
          v27 = (v12 + 176 * *v24);
          v28 = v27[6].f32[3];
          v29 = v27[4].f32[0] * v28;
          LOBYTE(v28) = v27[7].i8[0];
          v30 = v29 * LODWORD(v28);
          v25 = v11;
          do
          {
            if (v27[1].i32[0])
            {
              v31 = v27->f32[2];
            }

            else
            {
              v32 = vmulq_f32(*v27, *v27);
              v31 = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32));
            }

            v33 = v26 >> 1;
            v34 = &v25[v26 >> 1];
            v35 = (v12 + 176 * *v34);
            if (v35[1].i32[0])
            {
              v36 = v35->f32[2];
            }

            else
            {
              v37 = vmulq_f32(*v35, *v35);
              v36 = sqrtf(v37.f32[2] + vaddv_f32(*v37.f32));
            }

            v38 = v34 + 1;
            v26 += ~v33;
            if ((v30 / v31) > (((v35[4].f32[0] * v35[6].f32[3]) * v35[7].u8[0]) / v36))
            {
              v26 = v33;
            }

            else
            {
              v25 = v38;
            }
          }

          while (v26);
        }

        v39 = v25 - v11;
        goto LABEL_43;
      }

      if (a5 == 1)
      {
        *v11 = *a2;
        *a2 = v19;
        return result;
      }

      v39 = a5 / 2;
      v25 = &v11[a5 / 2];
      v24 = a2;
      if (a2 != a3)
      {
        v40 = a3 - a2;
        v41 = (v12 + 176 * *v25);
        v42 = v41[6].f32[3];
        v43 = v41[1].i32[0];
        v44 = v41[4].f32[0] * v42;
        LOBYTE(v42) = v41[7].i8[0];
        v45 = v44 * LODWORD(v42);
        v24 = a2;
        do
        {
          v46 = v40 >> 1;
          v47 = &v24[v40 >> 1];
          v48 = (v12 + 176 * *v47);
          if (v48[1].i32[0])
          {
            v49 = v48->f32[2];
            if (!v43)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v51 = vmulq_f32(*v48, *v48);
            v49 = sqrtf(v51.f32[2] + vaddv_f32(*v51.f32));
            if (!v43)
            {
LABEL_37:
              v52 = vmulq_f32(*v41, *v41);
              v50 = sqrtf(v52.f32[2] + vaddv_f32(*v52.f32));
              goto LABEL_38;
            }
          }

          v50 = v41->f32[2];
LABEL_38:
          v53 = v47 + 1;
          v40 += ~v46;
          if ((((v48[4].f32[0] * v48[6].f32[3]) * v48[7].u8[0]) / v49) > (v45 / v50))
          {
            v24 = v53;
          }

          else
          {
            v40 = v46;
          }
        }

        while (v40);
      }

      v23 = v24 - a2;
LABEL_43:
      v54 = v24;
      v55 = a2 - v25;
      if (a2 != v25)
      {
        v54 = v25;
        v56 = v24 - a2;
        if (v24 != a2)
        {
          if (v25 + 1 == a2)
          {
            v115 = *v25;
            v117 = v8;
            v57 = v24 - a2;
            v119 = v39;
            v121 = a7;
            v58 = a3;
            v59 = a4;
            v60 = a8;
            memmove(v25, a2, v24 - a2);
            v8 = v117;
            v39 = v119;
            a8 = v60;
            a4 = v59;
            a3 = v58;
            a7 = v121;
            v54 = (v25 + v57);
            *v54 = v115;
          }

          else if (a2 + 1 == v24)
          {
            v61 = *(v24 - 1);
            v54 = v25 + 1;
            if (v24 - 1 != v25)
            {
              v120 = v39;
              v122 = a7;
              v62 = a3;
              v116 = a4;
              v118 = v8;
              v63 = a8;
              memmove(v25 + 1, v25, (v24 - 1) - v25);
              v8 = v118;
              v39 = v120;
              a8 = v63;
              a4 = v116;
              a3 = v62;
              a7 = v122;
            }

            *v25 = v61;
          }

          else
          {
            v64 = v55 >> 3;
            if (v55 >> 3 == v56 >> 3)
            {
              v65 = v25 + 1;
              v66 = a2 + 1;
              do
              {
                v67 = *(v65 - 1);
                *(v65 - 1) = *(v66 - 1);
                *(v66 - 1) = v67;
                if (v65 == a2)
                {
                  break;
                }

                ++v65;
              }

              while (v66++ != v24);
              v54 = a2;
            }

            else
            {
              v69 = v56 >> 3;
              v70 = v55 >> 3;
              do
              {
                v71 = v70;
                v70 = v69;
                v69 = v71 % v69;
              }

              while (v69);
              v72 = &v25[v70];
              do
              {
                v74 = *--v72;
                v73 = v74;
                v75 = (v72 + v55);
                v76 = v72;
                do
                {
                  v77 = v75;
                  *v76 = *v75;
                  v78 = &v75[v64];
                  v79 = __OFSUB__(v64, v24 - v75);
                  v81 = v64 - (v24 - v75);
                  v80 = (v81 < 0) ^ v79;
                  v75 = &v25[v81];
                  if (v80)
                  {
                    v75 = v78;
                  }

                  v76 = v77;
                }

                while (v75 != v72);
                *v77 = v73;
              }

              while (v72 != v25);
              v54 = (v25 + v56);
            }
          }
        }
      }

      a5 -= v39;
      v82 = v8 - v23;
      if (v39 + v23 >= a5 + v82)
      {
        v85 = a4;
        v86 = a7;
        v87 = a8;
        a5 = v39;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(v54, v24, a3);
        v24 = v25;
        v8 = v23;
        a3 = v54;
      }

      else
      {
        v83 = v11;
        v84 = a3;
        v85 = a4;
        v86 = a7;
        v87 = a8;
        v88 = v82;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(v83, v25, v54);
        v8 = v88;
        a3 = v84;
        v11 = v54;
      }

      a2 = v24;
      a7 = v86;
      a4 = v85;
      a8 = v87;
      if (!v8)
      {
        return result;
      }
    }

    if (a5 <= v8)
    {
      if (a2 != v11)
      {
        v100 = a7;
        v101 = v11;
        do
        {
          v102 = *v101++;
          *v100 = v102;
          v100 += 8;
        }

        while (v101 != a2);
        v103 = *a4;
        while (a2 != a3)
        {
          v104 = *a2;
          v105 = (*v103 + 176 * *a2);
          if (v105[1].i32[0])
          {
            v106 = v105->f32[2];
          }

          else
          {
            v107 = vmulq_f32(*v105, *v105);
            v106 = sqrtf(v107.f32[2] + vaddv_f32(*v107.f32));
          }

          v108 = (*v103 + 176 * *a7);
          if (v108[1].i32[0])
          {
            v109 = v108->f32[2];
          }

          else
          {
            v110 = vmulq_f32(*v108, *v108);
            v109 = sqrtf(v110.f32[2] + vaddv_f32(*v110.f32));
          }

          v111 = ((v105[4].f32[0] * v105[6].f32[3]) * v105[7].u8[0]) / v106;
          v112 = ((v108[4].f32[0] * v108[6].f32[3]) * v108[7].u8[0]) / v109;
          if (v111 <= v112)
          {
            v104 = *a7;
          }

          a2 += v111 > v112;
          a7 += 8 * (v111 <= v112);
          *v11++ = v104;
          if (a7 == v100)
          {
            return result;
          }
        }

        return memmove(v11, a7, v100 - a7);
      }
    }

    else if (a2 != a3)
    {
      v89 = a7;
      v90 = a2;
      do
      {
        v91 = *v90++;
        *v89 = v91;
        v89 += 8;
      }

      while (v90 != a3);
      v92 = *a4;
      while (a2 != v11)
      {
        v93 = *(v89 - 1);
        v94 = (*v92 + 176 * v93);
        if (v94[1].i32[0])
        {
          v95 = v94->f32[2];
        }

        else
        {
          v96 = vmulq_f32(*v94, *v94);
          v95 = sqrtf(v96.f32[2] + vaddv_f32(*v96.f32));
        }

        v97 = (*v92 + 176 * *(a2 - 1));
        if (v97[1].i32[0])
        {
          v98 = v97->f32[2];
        }

        else
        {
          v99 = vmulq_f32(*v97, *v97);
          v98 = sqrtf(v99.f32[2] + vaddv_f32(*v99.f32));
        }

        if ((((v94[4].f32[0] * v94[6].f32[3]) * v94[7].u8[0]) / v95) <= (((v97[4].f32[0] * v97[6].f32[3]) * v97[7].u8[0]) / v98))
        {
          v89 -= 8;
        }

        else
        {
          v93 = *--a2;
        }

        *--a3 = v93;
        if (v89 == a7)
        {
          return result;
        }
      }

      if (v89 != a7)
      {
        v113 = 0x1FFFFFFFFFFFFFFFLL;
        do
        {
          v114 = *(v89 - 1);
          v89 -= 8;
          a3[v113--] = v114;
        }

        while (v89 != a7);
      }
    }
  }

  return result;
}

uint64_t AUSM::MatrixMix::MatrixMix(uint64_t a1, const void **a2)
{
  *a1 = 0;
  std::vector<AudioChannelLayout>::vector[abi:ne200100]((a1 + 8), 1uLL);
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  std::vector<AudioChannelLayout>::vector[abi:ne200100]((a1 + 32), 1uLL);
  v5 = *(a1 + 32);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(a1 + 152) = 0u;
  v6 = (a1 + 152);
  *(a1 + 72) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 198) = 0u;
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  std::string::basic_string[abi:ne200100](&v11, v7 + 10);
  if (v12 >= 0)
  {
    v8 = &v11;
  }

  else
  {
    v8 = v11;
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, "|MatrixMix");
  if (*(a1 + 175) < 0)
  {
    operator delete(*v6);
  }

  *v6 = v11;
  *(a1 + 168) = v12;
  return a1;
}

void sub_1DDDE8770(_Unwind_Exception *exception_object)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*v3);
  }

  v5 = *(v1 + 120);
  if (v5)
  {
    *(v1 + 128) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 96);
  if (v6)
  {
    *(v1 + 104) = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    *(v1 + 40) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 8);
  if (v9)
  {
    *(v1 + 16) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSM::MatrixMix::createHOADecoders(AUSM::MatrixMix *this, int a2, unsigned int a3)
{
  v192 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v5 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (this + 152);
    if (*(this + 175) < 0)
    {
      v6 = *v6;
    }

    v7 = **(this + 1);
    GetStringFromAudioChannelLayoutTag(v166, v7);
    v8 = v166[23];
    v9 = *v166;
    v10 = **(this + 4);
    GetStringFromAudioChannelLayoutTag(&__p, v10);
    v11 = v166;
    if (v8 < 0)
    {
      v11 = v9;
    }

    if (SHIBYTE(__p.__end_cap_.__value_) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__begin_;
    }

    *buf = 136316674;
    v176 = v6;
    *v177 = 2080;
    *&v177[2] = "createHOADecoders";
    *&v177[10] = 1024;
    v178 = v7;
    v179 = 2080;
    v180 = v11;
    v181 = 1024;
    v182 = v10;
    v183 = 2080;
    v184 = p_p;
    v185 = 1024;
    LODWORD(v186) = a2;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "[%s|%s] Creating HOA decoders: Input Tag = %u (%s), Output Tag = %u (%s), SphericalGrid = %u", buf, 0x3Cu);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }

    if (v166[23] < 0)
    {
      operator delete(*v166);
    }
  }

  HOA::HOA(buf, **(this + 1), *(this + 47));
  if (*v177 == *(this + 14))
  {
    v160[0] = 0;
    v160[1] = 0;
    v161 = 0;
    v158[0] = 0;
    v158[1] = 0;
    v159 = 0;
    *&v155.mChannelDescriptions[0].mCoordinates[1] = 0;
    v156 = 0;
    v157 = 0;
    *(this + 15) = 0;
    *(this + 46) = 0;
    *(this + 24) = 0;
    if (!a2)
    {
      v38 = *(this + 4);
      if (*v38 == 0x10000)
      {
        v13 = vcnt_s8(v38[1]);
        v13.i16[0] = vaddlv_u8(v13);
        v39 = v13.i32[0];
      }

      else if (*v38)
      {
        v39 = *v38;
      }

      else
      {
        v39 = v38[2];
      }

      GetChannelLayoutSphericalCoordinates(v166, v38, v13);
      GetChannelLayoutChannelLabels(&v155, *(this + 4));
      v42 = *(&v167 + 1) - v167;
      v43 = *v166;
      v44 = *&v166[8];
      if (*(&v167 + 1) - v167 != *&v166[8] - *v166 || v169 - v168 != v42 || *&v166[8] == *v166 || *&v155.mNumberChannelDescriptions - *&v155.mChannelLayoutTag != v42)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v45 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v138 = (this + 152);
          if (*(this + 175) < 0)
          {
            v138 = *v138;
          }

          LODWORD(__p.__begin_) = 136315394;
          *(&__p.__begin_ + 4) = v138;
          WORD2(__p.__end_) = 2080;
          *(&__p.__end_ + 6) = "createHOADecoders";
          _os_log_error_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_ERROR, "[%s|%s] Failed creating HOA decoders: arrays sizes don't match or are empty. Defaulting to stereo", &__p, 0x16u);
        }

        GetChannelLayoutSphericalCoordinates();
      }

      if (*this == 3)
      {
        *(this + 15) = v39;
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v160, v43, v44, (v44 - v43) >> 2);
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v158, v167, *(&v167 + 1), (*(&v167 + 1) - v167) >> 2);
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v155.mChannelDescriptions[0].mCoordinates[1], *&v155.mChannelLayoutTag, *&v155.mNumberChannelDescriptions, (*&v155.mNumberChannelDescriptions - *&v155.mChannelLayoutTag) >> 2);
        v43 = *v166;
        v44 = *&v166[8];
      }

      v152 = 0;
      v153 = 0;
      v154 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v152, v43, v44, (v44 - v43) >> 2);
      v142 = v39;
      v149 = 0;
      v150 = 0;
      v151 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v149, v167, *(&v167 + 1), (*(&v167 + 1) - v167) >> 2);
      __src = 0;
      v147 = 0;
      v148 = 0;
      if (((*&v155.mNumberChannelDescriptions - *&v155.mChannelLayoutTag) & 0x3FFFFFFFCLL) != 0)
      {
        v46 = ((*&v155.mNumberChannelDescriptions - *&v155.mChannelLayoutTag) >> 2) - 1;
        v47 = 4 * v46;
        v48 = (4 * v46) ^ 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v49 = *(*&v155.mChannelLayoutTag + v47);
          if (v49 <= 0x3E && ((0x4000002000000010uLL >> v49) & 1) != 0 || *(v168 + v47) == 0.0)
          {
            v50 = v147;
            if (v147 >= v148)
            {
              v52 = __src;
              v53 = v147 - __src;
              v54 = (v147 - __src) >> 2;
              v55 = v54 + 1;
              if ((v54 + 1) >> 62)
              {
                std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
              }

              v56 = v148 - __src;
              if ((v148 - __src) >> 1 > v55)
              {
                v55 = v56 >> 1;
              }

              if (v56 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v57 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v57 = v55;
              }

              if (v57)
              {
                std::allocator<float>::allocate_at_least[abi:ne200100](&__src, v57);
              }

              *(4 * v54) = v46;
              v51 = 4 * v54 + 4;
              memcpy(0, v52, v53);
              v58 = __src;
              __src = 0;
              v147 = v51;
              v148 = 0;
              if (v58)
              {
                operator delete(v58);
              }
            }

            else
            {
              *v147 = v46;
              v51 = (v50 + 4);
            }

            v147 = v51;
            v59 = v152 + v47;
            v60 = v152 + v47 + 4;
            v61 = v48 + v153 - v152;
            if (v60 != v153)
            {
              memmove(v152 + v47, v60, v48 + v153 - v152);
            }

            v153 = &v59[v61];
            v62 = v149 + v47;
            v63 = v149 + v47 + 4;
            v64 = v48 + v150 - v149;
            if (v63 != v150)
            {
              memmove(v149 + v47, v63, v48 + v150 - v149);
            }

            v150 = &v62[v64];
          }

          v47 -= 4;
          LODWORD(v46) = v46 - 1;
          v48 += 4;
        }

        while (v46 != -1);
      }

      if (v153 == v152 || v150 == v149)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v65 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v139 = (this + 152);
          if (*(this + 175) < 0)
          {
            v139 = *v139;
          }

          v140 = **(this + 4);
          GetStringFromAudioChannelLayoutTag(&v144, v140);
          if (v145 >= 0)
          {
            v141 = &v144;
          }

          else
          {
            v141 = v144;
          }

          LODWORD(__p.__begin_) = 136315906;
          *(&__p.__begin_ + 4) = v139;
          WORD2(__p.__end_) = 2080;
          *(&__p.__end_ + 6) = "createHOADecoders";
          HIWORD(__p.__end_cap_.__value_) = 1024;
          LODWORD(v163) = v140;
          WORD2(v163) = 2080;
          *(&v163 + 6) = v141;
          _os_log_error_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_ERROR, "[%s|%s] Failed creating HOA decoders for output channel layout tag = %u (%s); Distances for all drivers is zero. Defaulting to stereo", &__p, 0x26u);
          if (SHIBYTE(v145) < 0)
          {
            operator delete(v144);
          }
        }

        v147 = __src;
        GetChannelLayoutSphericalCoordinates();
      }

      v66 = HOA::createDecoder(buf, &v152, &v149, 1);
      if (v66)
      {
        *(this + 13) = *(this + 12);
        *(this + 16) = *(this + 15);
        *(this + 10) = *(this + 9);
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v67 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v68 = (this + 152);
          if (*(this + 175) < 0)
          {
            v68 = *v68;
          }

          LODWORD(__p.__begin_) = 136315394;
          *(&__p.__begin_ + 4) = v68;
          WORD2(__p.__end_) = 2080;
          *(&__p.__end_ + 6) = "createHOADecoders";
          _os_log_error_impl(&dword_1DDB85000, v67, OS_LOG_TYPE_ERROR, "[%s|%s] Failed creating HOA decoders", &__p, 0x16u);
        }
      }

      else
      {
        memset(&__p, 0, sizeof(__p));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v186, v187, (v187 - v186) >> 2);
        v69 = *(this + 12);
        if (v69)
        {
          *(this + 13) = v69;
          operator delete(v69);
          *(this + 12) = 0;
          *(this + 13) = 0;
          *(this + 14) = 0;
        }

        begin = __p.__begin_;
        *(this + 12) = __p.__begin_;
        end = __p.__end_;
        *(this + 104) = *&__p.__end_;
        if (v147 != __src)
        {
          v73 = v152;
          v72 = v153;
          memset(&__p, 0, sizeof(__p));
          std::vector<unsigned int>::reserve(&__p, ((v147 - __src) >> 2) * *(this + 14) + end - begin);
          v74 = (*(this + 13) - *(this + 12)) >> 2;
          LODWORD(v144) = 0;
          std::vector<float>::resize(&__p, v74, &v144, v75);
          v76 = v72 - v73;
          v77 = (v76 >> 2);
          vDSP_mtrans(*(this + 12), 1, __p.__begin_, 1, v77, *(this + 14));
          v79 = __p.__end_ - __p.__begin_;
          if (v79 != *(this + 14) * (v76 >> 2))
          {
            __assert_rtn("createHOADecoders", "AUSMMatrixMix.cpp", 305, "scratchBuffer.size() == numNonLFEChannels * mNumInputChannels");
          }

          v80 = v147;
          if (v147 != __src)
          {
            do
            {
              v81 = *(v80 - 1);
              v80 -= 4;
              v82 = *(this + 14);
              LODWORD(v144) = 0;
              std::vector<float>::insert(&__p, &__p.__begin_[(v82 * v81)], v82, &v144, v78);
            }

            while (v80 != __src);
            v79 = __p.__end_ - __p.__begin_;
          }

          std::vector<float>::resize(this + 12, v79);
          vDSP_mtrans(__p.__begin_, 1, *(this + 12), 1, *(this + 14), v77 + ((v147 - __src) >> 2));
          if (__p.__begin_)
          {
            __p.__end_ = __p.__begin_;
            operator delete(__p.__begin_);
          }
        }

        if (a3 >= 3 && v142 == 2)
        {
          v83 = *(this + 14) * a3;
          LODWORD(__p.__begin_) = 0;
          std::vector<float>::assign(this + 15, v83, &__p, end);
          cblas_scopy(*(this + 14), *(this + 12), 2, *(this + 15), a3);
          cblas_scopy(*(this + 14), (*(this + 12) + 4), 2, (*(this + 15) + 4), a3);
        }

        else
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 15, *(this + 12), *(this + 13), (*(this + 13) - *(this + 12)) >> 2);
        }

        if ((*(this + 65) & 1) == 0)
        {
          *(this + 13) = *(this + 12);
        }
      }

      if (__src)
      {
        v147 = __src;
        operator delete(__src);
      }

      if (v149)
      {
        v150 = v149;
        operator delete(v149);
      }

      if (v152)
      {
        v153 = v152;
        operator delete(v152);
      }

      if (*&v155.mChannelLayoutTag)
      {
        *&v155.mNumberChannelDescriptions = *&v155.mChannelLayoutTag;
        operator delete(*&v155.mChannelLayoutTag);
      }

      if (v168)
      {
        v169 = v168;
        operator delete(v168);
      }

      if (v167)
      {
        *(&v167 + 1) = v167;
        operator delete(v167);
      }

      if (*v166)
      {
        *&v166[8] = *v166;
        operator delete(*v166);
      }

      if (v66)
      {
        v37 = 4294956428;
        v95 = *&v155.mChannelDescriptions[0].mCoordinates[1];
        if (!*&v155.mChannelDescriptions[0].mCoordinates[1])
        {
          goto LABEL_219;
        }

        goto LABEL_218;
      }

LABEL_172:
      v98 = *this;
      if (*this == 4)
      {
        v110 = *(this + 14);
        *(this + 15) = v110;
        *v166 = 0;
        std::vector<float>::assign(v160, v110, v166, v13);
        v111 = *(this + 15);
        *v166 = 0;
        std::vector<float>::assign(v158, v111, v166, v112);
        std::vector<unsigned int>::resize(&v155.mChannelDescriptions[0].mCoordinates[1], *(this + 15));
        if (*&v155.mChannelDescriptions[0].mCoordinates[1] != v156)
        {
          v113 = &v156[-*&v155.mChannelDescriptions[0].mCoordinates[1] - 4] >> 2;
          v114 = (v113 + 4) & 0x7FFFFFFFFFFFFFFCLL;
          v115 = vdupq_n_s64(v113);
          v116 = (*&v155.mChannelDescriptions[0].mCoordinates[1] + 8);
          v117 = 0x10000;
          v118 = 3;
          do
          {
            v119 = vdupq_n_s64(v118 - 3);
            v120 = vmovn_s64(vcgeq_u64(v115, vorrq_s8(v119, xmmword_1DE095160)));
            if (vuzp1_s16(v120, *v115.i8).u8[0])
            {
              *(v116 - 2) = v117;
            }

            if (vuzp1_s16(v120, *&v115).i8[2])
            {
              *(v116 - 1) = v117 + 1;
            }

            if (vuzp1_s16(*&v115, vmovn_s64(vcgeq_u64(v115, vorrq_s8(v119, xmmword_1DE095150)))).i32[1])
            {
              *v116 = v117 + 2;
              v116[1] = v117 + 3;
            }

            v118 += 4;
            v117 += 4;
            v116 += 4;
            v114 -= 4;
          }

          while (v114);
        }
      }

      else if (v98 == 5)
      {
        v109 = *(this + 45);
        *(this + 15) = v109 + *(this + 14);
        *(this + 46) = v109;
      }

      else if (v98 == 6)
      {
        *(this + 15) = 1;
        *v166 = 0;
        std::vector<float>::assign(v160, 1uLL, v166, v13);
        v99 = *(this + 15);
        *v166 = 0;
        std::vector<float>::assign(v158, v99, v166, v100);
        std::vector<unsigned int>::resize(&v155.mChannelDescriptions[0].mCoordinates[1], *(this + 15));
        if (*&v155.mChannelDescriptions[0].mCoordinates[1] != v156)
        {
          v101 = &v156[-*&v155.mChannelDescriptions[0].mCoordinates[1] - 4] >> 2;
          v102 = (v101 + 4) & 0x7FFFFFFFFFFFFFFCLL;
          v103 = vdupq_n_s64(v101);
          v104 = (*&v155.mChannelDescriptions[0].mCoordinates[1] + 8);
          v105 = 0x10000;
          v106 = 3;
          do
          {
            v107 = vdupq_n_s64(v106 - 3);
            v108 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v107, xmmword_1DE095160)));
            if (vuzp1_s16(v108, *v103.i8).u8[0])
            {
              *(v104 - 2) = v105;
            }

            if (vuzp1_s16(v108, *&v103).i8[2])
            {
              *(v104 - 1) = v105 + 1;
            }

            if (vuzp1_s16(*&v103, vmovn_s64(vcgeq_u64(v103, vorrq_s8(v107, xmmword_1DE095150)))).i32[1])
            {
              *v104 = v105 + 2;
              v104[1] = v105 + 3;
            }

            v106 += 4;
            v105 += 4;
            v104 += 4;
            v102 -= 4;
          }

          while (v102);
        }
      }

      if ((v158[1] - v158[0]) >> 2 >= ((v160[1] - v160[0]) >> 2))
      {
        v121 = (v160[1] - v160[0]) >> 2;
      }

      else
      {
        v121 = (v158[1] - v158[0]) >> 2;
      }

      if (&v156[-*&v155.mChannelDescriptions[0].mCoordinates[1]] >> 2 < v121)
      {
        v121 = &v156[-*&v155.mChannelDescriptions[0].mCoordinates[1]] >> 2;
      }

      v122 = v121;
      v124 = *(this + 9);
      v123 = *(this + 10);
      v125 = (v123 - v124) >> 5;
      if (v122 <= v125)
      {
        if (v122 < v125)
        {
          *(this + 10) = v124 + 32 * v122;
        }
      }

      else
      {
        v126 = v122 - v125;
        v127 = *(this + 11);
        if (v126 > (v127 - v123) >> 5)
        {
          v128 = v127 - v124;
          v129 = (v127 - v124) >> 4;
          if (v129 <= v122)
          {
            v129 = v122;
          }

          if (v128 >= 0x7FFFFFFFFFFFFFE0)
          {
            v130 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v130 = v129;
          }

          std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100](v130);
        }

        v131 = v123 + 32 * v126;
        do
        {
          *v123 = 0;
          *(v123 + 8) = xmmword_1DE097D00;
          *(v123 + 24) = 0xFFFFFFFF00000001;
          v123 += 32;
        }

        while (v123 != v131);
        *(this + 10) = v131;
      }

      v95 = *&v155.mChannelDescriptions[0].mCoordinates[1];
      if (v122)
      {
        v132 = 0;
        v133 = v160[0];
        v134 = *(this + 9);
        v135 = v158[0];
        do
        {
          *v134 = *&v133[v132];
          *(v134 + 4) = *&v135[v132];
          *(v134 + 8) = xmmword_1DE097D00;
          *(v134 + 24) = 1;
          *(v134 + 28) = *&v95[v132];
          v132 += 4;
          v134 += 32;
        }

        while (4 * v122 != v132);
        v37 = 0;
      }

      else
      {
        v37 = 0;
        if (!*&v155.mChannelDescriptions[0].mCoordinates[1])
        {
LABEL_219:
          if (v158[0])
          {
            v158[1] = v158[0];
            operator delete(v158[0]);
          }

          if (v160[0])
          {
            v160[1] = v160[0];
            operator delete(v160[0]);
          }

          goto LABEL_223;
        }
      }

LABEL_218:
      v156 = v95;
      operator delete(v95);
      goto LABEL_219;
    }

    if (*this != 5 && *this != 3)
    {
      v40 = 0;
      v41 = 0;
LABEL_171:
      *(this + 48) = v41;
      *(this + 49) = v40;
      goto LABEL_172;
    }

    HOA::createSphericalGridDecoder(buf);
    *(this + 15) = *&v177[8];
    memset(v166, 0, sizeof(v166));
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v166, v188, v189, (v189 - v188) >> 2);
    if (v160[0])
    {
      v160[1] = v160[0];
      operator delete(v160[0]);
    }

    *v160 = *v166;
    v161 = *&v166[16];
    memset(v166, 0, sizeof(v166));
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v166, v190, v191, (v191 - v190) >> 2);
    if (v158[0])
    {
      v158[1] = v158[0];
      operator delete(v158[0]);
    }

    *v158 = *v166;
    v159 = *&v166[16];
    std::vector<unsigned int>::resize(&v155.mChannelDescriptions[0].mCoordinates[1], *(this + 15));
    if (*&v155.mChannelDescriptions[0].mCoordinates[1] != v156)
    {
      v14 = &v156[-*&v155.mChannelDescriptions[0].mCoordinates[1] - 4] >> 2;
      v15 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v16 = vdupq_n_s64(v14);
      v17 = (*&v155.mChannelDescriptions[0].mCoordinates[1] + 8);
      v18 = 0x10000;
      v19 = 3;
      do
      {
        v20 = vdupq_n_s64(v19 - 3);
        v21 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1DE095160)));
        if (vuzp1_s16(v21, *v16.i8).u8[0])
        {
          *(v17 - 2) = v18;
        }

        if (vuzp1_s16(v21, *&v16).i8[2])
        {
          *(v17 - 1) = v18 + 1;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1DE095150)))).i32[1])
        {
          *v17 = v18 + 2;
          v17[1] = v18 + 3;
        }

        v19 += 4;
        v18 += 4;
        v17 += 4;
        v15 -= 4;
      }

      while (v15);
    }

    if (v176 <= *(this + 44))
    {
      *(this + 22) = 0;
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v22 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v23 = (this + 152);
        if (*(this + 175) < 0)
        {
          v23 = *v23;
        }

        v24 = *(this + 44);
        *v166 = 136315906;
        *&v166[4] = v23;
        *&v166[12] = 2080;
        *&v166[14] = "createHOADecoders";
        *&v166[22] = 1024;
        LODWORD(v167) = v24;
        WORD2(v167) = 1024;
        *(&v167 + 6) = v176;
        _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEFAULT, "[%s|%s] HOA reverb order (%u) can not be greater or equal to input HOA order (%u)", v166, 0x22u);
      }
    }

    v25 = *(this + 50);
    if (v176 <= v25)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v84 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v85 = (this + 152);
        if (*(this + 175) < 0)
        {
          v85 = *v85;
        }

        v86 = *(this + 50);
        *v166 = 136315906;
        *&v166[4] = v85;
        *&v166[12] = 2080;
        *&v166[14] = "createHOADecoders";
        *&v166[22] = 1024;
        LODWORD(v167) = v86;
        WORD2(v167) = 1024;
        *(&v167 + 6) = v176;
        _os_log_impl(&dword_1DDB85000, v84, OS_LOG_TYPE_DEFAULT, "[%s|%s] HOA power saving mode order (%u) can not be greater or equal to input HOA order (%u)", v166, 0x22u);
      }

      *(this + 50) = 0;
      if (!*(this + 44))
      {
        goto LABEL_159;
      }
    }

    else if (!*(this + 44))
    {
      if (v25)
      {
        v26 = (v25 + 1) * (v25 + 1);
        HOA::HOA(v166, v26 | (*(*(this + 1) + 2) << 16), *(this + 47));
        HOA::createSphericalGridDecoder(v166);
        memset(&__p, 0, sizeof(__p));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v171, v172, (v172 - v171) >> 2);
        memset(&v155, 0, 24);
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v155, v173, v174, (v174 - v173) >> 2);
        v27 = *&v166[20];
        *(this + 51) = *&v166[20];
        v28 = *(this + 15) + v27;
        v29 = (v28 * *(this + 14));
        LODWORD(v152) = 0;
        std::vector<float>::assign(this + 12, v29, &v152, v30);
        if (*(this + 14))
        {
          v31 = 0;
          v32 = 0;
          do
          {
            memcpy((*(this + 12) + 4 * v31), v186 + 4 * (*(this + 15) * v32), 4 * *(this + 15));
            if (v32 < v26)
            {
              memcpy((*(this + 12) + 4 * (v31 + *(this + 15))), &v169[4 * (*(this + 51) * v32)], 4 * *(this + 51));
            }

            ++v32;
            v31 += v28;
          }

          while (v32 < *(this + 14));
        }

        LODWORD(v33) = *(this + 51);
        if (v33)
        {
          v34 = 0;
          v35 = 0;
          do
          {
            std::vector<float>::push_back[abi:ne200100](v160, &__p.__begin_[v34]);
            std::vector<float>::push_back[abi:ne200100](v158, (*&v155.mChannelLayoutTag + v34 * 4));
            LODWORD(v152) = v35 + *(this + 15) + 0x10000;
            std::vector<unsigned int>::push_back[abi:ne200100](&v155.mChannelDescriptions[0].mCoordinates[1], &v152);
            ++v35;
            v33 = *(this + 51);
            ++v34;
          }

          while (v35 < v33);
        }

LABEL_134:
        *(this + 15) += v33;
        if (*&v155.mChannelLayoutTag)
        {
          *&v155.mNumberChannelDescriptions = *&v155.mChannelLayoutTag;
          operator delete(*&v155.mChannelLayoutTag);
        }

        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        HOA::~HOA(v166);
LABEL_162:
        *(this + 54) = 0;
        MEMORY[0x1E12BE940](v160[0], 1, &AUSM::kRad2Deg, v160[0], 1, (v160[1] - v160[0]) >> 2);
        *&v96 = MEMORY[0x1E12BE940](v158[0], 1, &AUSM::kRad2Deg, v158[0], 1, (v158[1] - v158[0]) >> 2);
        GetChannelLayoutSphericalCoordinates(&__p, *(this + 4), v96);
        HOA::HOA(v166, **(this + 1), *(this + 47));
        HOA::createDecoder(v166, &__p, &v163, 0);
        memset(&v155, 0, 24);
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v155, v169, v170, (v170 - v169) >> 2);
        v97 = *(this + 15);
        if (v97)
        {
          *(this + 16) = v97;
          operator delete(v97);
          *(this + 15) = 0;
          *(this + 16) = 0;
          *(this + 17) = 0;
        }

        *(this + 120) = *&v155.mChannelLayoutTag;
        *(this + 17) = *&v155.mChannelDescriptions[0].mChannelFlags;
        HOA::~HOA(v166);
        if (v164)
        {
          v165 = v164;
          operator delete(v164);
        }

        if (v163)
        {
          *(&v163 + 1) = v163;
          operator delete(v163);
        }

        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        v41 = *(this + 15);
        v40 = *(this + 46);
        goto LABEL_171;
      }

LABEL_159:
      if ((this + 96) != &v186)
      {
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 12, v186, v187, (v187 - v186) >> 2);
      }

      *(this + 46) = 0;
      goto LABEL_162;
    }

    *(this + 25) = 0;
    HOA::HOA(v166, *(this + 45) | (*(*(this + 1) + 2) << 16), *(this + 47));
    HOA::createSphericalGridDecoder(v166);
    memset(&__p, 0, sizeof(__p));
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v171, v172, (v172 - v171) >> 2);
    memset(&v155, 0, 24);
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v155, v173, v174, (v174 - v173) >> 2);
    v87 = *&v166[20];
    *(this + 46) = *&v166[20];
    v88 = *(this + 15) + v87;
    v89 = (v88 * *(this + 14));
    LODWORD(v152) = 0;
    std::vector<float>::assign(this + 12, v89, &v152, v90);
    if (*(this + 14))
    {
      v91 = 0;
      v92 = 0;
      do
      {
        memcpy((*(this + 12) + 4 * v91), v186 + 4 * (*(this + 15) * v92), 4 * *(this + 15));
        if (v92 < *(this + 45))
        {
          memcpy((*(this + 12) + 4 * (v91 + *(this + 15))), &v169[4 * (*(this + 46) * v92)], 4 * *(this + 46));
        }

        ++v92;
        v91 += v88;
      }

      while (v92 < *(this + 14));
    }

    LODWORD(v33) = *(this + 46);
    if (v33)
    {
      v93 = 0;
      v94 = 0;
      do
      {
        std::vector<float>::push_back[abi:ne200100](v160, &__p.__begin_[v93]);
        std::vector<float>::push_back[abi:ne200100](v158, (*&v155.mChannelLayoutTag + v93 * 4));
        LODWORD(v152) = v94 + *(this + 15) + 0x10000;
        std::vector<unsigned int>::push_back[abi:ne200100](&v155.mChannelDescriptions[0].mCoordinates[1], &v152);
        ++v94;
        v33 = *(this + 46);
        ++v93;
      }

      while (v94 < v33);
    }

    goto LABEL_134;
  }

  *(this + 13) = *(this + 12);
  *(this + 16) = *(this + 15);
  *(this + 10) = *(this + 9);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v36 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v137 = (this + 152);
    if (*(this + 175) < 0)
    {
      v137 = *v137;
    }

    *v166 = 136315394;
    *&v166[4] = v137;
    *&v166[12] = 2080;
    *&v166[14] = "createHOADecoders";
    _os_log_error_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_ERROR, "[%s|%s] Failed creating HOA decoders: format and input number of channels differ", v166, 0x16u);
  }

  v37 = 4294956428;
LABEL_223:
  HOA::~HOA(buf);
  return v37;
}

void sub_1DDDE9EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a37)
  {
    operator delete(a37);
  }

  HOA::~HOA(&a47);
  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a33)
  {
    operator delete(a33);
  }

  HOA::~HOA(&STACK[0x2C0]);
  _Unwind_Resume(a1);
}

BOOL ausdk::ACL::operator==(int *a1, _DWORD *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (v2)
  {
    if (v2 == 0x10000)
    {
      return a1[1] == a2[1];
    }

    return 1;
  }

  v4 = a1[2];
  if (v4 != a2[2])
  {
    return 0;
  }

  if (v4)
  {
    v5 = a1 + 3;
    v6 = a2 + 3;
    result = 1;
    while (*v5 == *v6)
    {
      if (*v5 == 100)
      {
        v7 = *v5 == *v6 && *(v5 + 1) == *(v6 + 1);
        if (!v7 || v5[4] != v6[4])
        {
          break;
        }
      }

      v6 += 5;
      v5 += 5;
      if (!--v4)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

void std::vector<float>::insert(void *a1, char *__src, unint64_t a3, char *a4, int16x4_t a5)
{
  if (a3)
  {
    v5 = a4;
    v9 = a1[1];
    v10 = a1[2];
    if (a3 <= (v10 - v9) >> 2)
    {
      v16 = v9 - __src;
      v17 = a1[1];
      v18 = a3;
      if (a3 <= (v9 - __src) >> 2)
      {
        goto LABEL_21;
      }

      v19 = 0;
      v18 = v16 >> 2;
      v20 = a3 - (v16 >> 2);
      a5.i32[0] = *a4;
      v21 = (4 * a3 - v16 - 4) >> 2;
      v22 = (v21 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v23 = vdupq_n_s64(v21);
      v24 = v9 + 8;
      do
      {
        v25 = vdupq_n_s64(v19);
        v26 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_1DE095160)));
        if (vuzp1_s16(v26, a5).u8[0])
        {
          *(v24 - 2) = a5.i32[0];
        }

        if (vuzp1_s16(v26, a5).i8[2])
        {
          *(v24 - 1) = a5.i32[0];
        }

        if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_1DE095150)))).i32[1])
        {
          *v24 = a5.i32[0];
          v24[1] = a5.i32[0];
        }

        v19 += 4;
        v24 += 4;
      }

      while (v22 != v19);
      v17 = &v9[4 * v20];
      a1[1] = v17;
      if (v9 != __src)
      {
LABEL_21:
        v27 = &__src[4 * a3];
        v28 = &v17[-4 * a3];
        v29 = v17;
        if (v28 < v9)
        {
          v29 = v17;
          do
          {
            v30 = *v28;
            v28 += 4;
            *v29 = v30;
            v29 += 4;
          }

          while (v28 < v9);
        }

        a1[1] = v29;
        if (v17 != v27)
        {
          memmove(&__src[4 * a3], __src, v17 - v27);
        }

        if (__src <= v5)
        {
          if (a1[1] <= v5)
          {
            v31 = 0;
          }

          else
          {
            v31 = a3;
          }

          v5 += 4 * v31;
        }

        v32 = 0;
        a5.i32[0] = *v5;
        v33 = vdupq_n_s64(v18 - 1);
        v34 = __src + 8;
        do
        {
          v35 = vdupq_n_s64(v32);
          v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_1DE095160)));
          if (vuzp1_s16(v36, a5).u8[0])
          {
            *(v34 - 2) = a5.i32[0];
          }

          if (vuzp1_s16(v36, a5).i8[2])
          {
            *(v34 - 1) = a5.i32[0];
          }

          if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_1DE095150)))).i32[1])
          {
            *v34 = a5.i32[0];
            v34[1] = a5.i32[0];
          }

          v32 += 4;
          v34 += 4;
        }

        while (((v18 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v32);
      }
    }

    else
    {
      v11 = *a1;
      v12 = a3 + (&v9[-*a1] >> 2);
      if (v12 >> 62)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v13 = __src - v11;
      v14 = v10 - v11;
      if (v14 >> 1 > v12)
      {
        v12 = v14 >> 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      if (v15)
      {
        std::allocator<float>::allocate_at_least[abi:ne200100](a1, v15);
      }

      v37 = 0;
      v38 = 4 * (v13 >> 2);
      a5.i32[0] = *a4;
      v39 = (a3 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v40 = vdupq_n_s64(v39);
      v41 = v39 - ((a3 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v42 = (v38 + 8);
      do
      {
        v43 = vdupq_n_s64(v37);
        v44 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1DE095160)));
        if (vuzp1_s16(v44, a5).u8[0])
        {
          *(v42 - 2) = a5.i32[0];
        }

        if (vuzp1_s16(v44, a5).i8[2])
        {
          *(v42 - 1) = a5.i32[0];
        }

        if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1DE095150)))).i32[1])
        {
          *v42 = a5.i32[0];
          v42[1] = a5.i32[0];
        }

        v37 += 4;
        v42 += 4;
      }

      while (v41 != v37);
      v45 = (v38 + 4 * a3);
      memcpy(v45, __src, a1[1] - __src);
      v46 = *a1;
      v47 = &v45[a1[1] - __src];
      a1[1] = __src;
      v48 = (__src - v46);
      v49 = (v38 - (__src - v46));
      memcpy(v49, v46, v48);
      v50 = *a1;
      *a1 = v49;
      a1[1] = v47;
      a1[2] = 0;
      if (v50)
      {

        operator delete(v50);
      }
    }
  }
}

uint64_t AUSM::MatrixMix::process(uint64_t a1, uint64_t *a2, unsigned int a3, void *a4, vDSP_Length __N, uint64_t a6, unsigned int a7)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(a1 + 60) <= a3)
  {
    return 4294956418;
  }

  if (*(a1 + 64) != 1)
  {
    return 4294956429;
  }

  v14 = __N;
  vDSP_vclr(*a4, 1, __N);
  *(a4 + 24) = 1;
  if ((*(a1 + 65) & 1) == 0)
  {
    v21 = *a2;
    if (a3 >= ((a2[1] - *a2) >> 5))
    {
      return 4294956418;
    }

    if (!a6 && (*(v21 + 32 * a3 + 24) & 1) != 0)
    {
      return 0;
    }

    v22 = *a1;
    if (*a1 > 4)
    {
      if (v22 == 5)
      {
        v35 = *(a1 + 56);
        v36 = a3;
        if (a3 >= v35)
        {
          v36 = a3 - v35;
          if (a3 - v35 >= *(a1 + 180))
          {
            return 4294956418;
          }
        }

        if (a6)
        {
          v37 = 180;
          if (a3 < v35)
          {
            v37 = 56;
          }

          if (AUSM::MatrixMix::rotateHOA(a2, a4, *(a1 + v37), v36, __N, a6, a7))
          {
            return 4294956418;
          }

LABEL_44:
          result = 0;
          *(a4 + 24) = 0;
          return result;
        }

        v32 = *(v21 + 32 * v36);
        v31 = *a4;
LABEL_43:
        memcpy(v31, v32, 4 * v14);
        goto LABEL_44;
      }

      if (v22 != 6)
      {
LABEL_54:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v33 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
        {
          return 4294956421;
        }

        v34 = (a1 + 152);
        if (*(a1 + 175) < 0)
        {
          v34 = *v34;
        }

        goto LABEL_68;
      }

      if (a3)
      {
        return 0;
      }
    }

    else if (v22 && v22 != 4)
    {
      goto LABEL_54;
    }

    v31 = *a4;
    v32 = *(v21 + 32 * a3);
    goto LABEL_43;
  }

  v15 = *(a1 + 56);
  if (v15 > (a2[1] - *a2) >> 5)
  {
    return 4294956418;
  }

  v16 = *a1;
  if (*a1 == 1 || v16 == 3)
  {
    v23 = *(a1 + 60) - *(a1 + 204);
    if ((!*(a1 + 200) || *(a1 + 216) || (((v23 <= a3) ^ *(a1 + 212)) & 1) == 0) && *(a1 + 56))
    {
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = *a2 + v24;
        if ((*(v26 + 24) & 1) == 0)
        {
          *(a4 + 24) = 0;
          MEMORY[0x1E12BE8F0](*v26, 1, *(a1 + 96) + 4 * (a3 + *(a1 + 60) * v25), *a4, 1, *a4, 1, v14);
          v15 = *(a1 + 56);
        }

        ++v25;
        v24 += 32;
      }

      while (v25 < v15);
    }

    v27 = *(a1 + 216);
    if (v27)
    {
      if (v27 >= __N)
      {
        v28 = __N;
      }

      else
      {
        v28 = v27;
      }

      v29 = *(a1 + 208);
      v30 = 1.0 / v29;
      __Start = v30 * (v29 - v27);
      __Step = v30;
      if ((((v23 > a3) ^ *(a1 + 212)) & 1) == 0)
      {
        __Start = 1.0 - (v30 * (v29 - v27));
        __Step = -v30;
        if (v27 < __N)
        {
          vDSP_vclr((*a4 + 4 * v28), 1, (__N - v28));
        }
      }

      vDSP_vrampmul(*a4, 1, &__Start, &__Step, *a4, 1, v28);
    }

    else if ((((v23 > a3) ^ *(a1 + 212)) & 1) == 0)
    {
      AUSM::FloatVector::clearBuffer(a4, __N);
    }

    return 0;
  }

  if (v16 != 2)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v33 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      return 4294956421;
    }

    v34 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v34 = *v34;
    }

LABEL_68:
    __Step = 4.8152e-34;
    v40 = v34;
    v41 = 2080;
    v42 = "process";
    v43 = 2080;
    v44 = "process";
    _os_log_debug_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_DEBUG, "[%s|%s] %s: Invalid MatrixMix Output Type", &__Step, 0x20u);
    return 4294956421;
  }

  if (!*(a1 + 56))
  {
    return 0;
  }

  v17 = 0;
  v18 = 0;
  do
  {
    v19 = *a2 + v17;
    if ((*(v19 + 24) & 1) == 0)
    {
      *(a4 + 24) = 0;
      if ((*(v19 + 24) & 1) == 0)
      {
        MEMORY[0x1E12BE5D0](*v19, 1, *a4, 1, *a4, 1, v14);
        v15 = *(a1 + 56);
      }
    }

    result = 0;
    ++v18;
    v17 += 32;
  }

  while (v18 < v15);
  return result;
}

void sub_1DDDEA9BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AUSM::MatrixMix::rotateHOA(void *a1, void **a2, unsigned int a3, int a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  if (a7 < a3)
  {
    return 4294956418;
  }

  if (!a3)
  {
    return 0;
  }

  v22 = v10;
  v23 = v9;
  v24 = v7;
  v25 = v8;
  v15 = 0;
  v16 = a7 * a4;
  v17 = a5;
  v18 = 4 * a5;
  v19 = 32 * a3;
  do
  {
    v20 = *(a6 + 4 * v16);
    v21 = v20;
    if (fabsf(v20 + -1.0) <= 0.00001)
    {
      memcpy(*a2, *(*a1 + v15), v18);
    }

    else if (fabsf(v20) > 0.00001)
    {
      MEMORY[0x1E12BE8F0](*(*a1 + v15), 1, &v21, *a2, 1, *a2, 1, v17);
    }

    v15 += 32;
    ++v16;
  }

  while (v19 != v15);
  return 0;
}

uint64_t AUSM::MatrixMix::setHOAPowerSavingMode(uint64_t this, int a2)
{
  if (*(this + 212) != a2)
  {
    if (*(this + 216))
    {
      if (a2)
      {
        v2 = *(this + 200) != 0;
      }

      else
      {
        v2 = 0;
      }

      *(this + 213) = v2;
    }

    else
    {
      if (a2)
      {
        v3 = *(this + 200) != 0;
      }

      else
      {
        v3 = 0;
      }

      *(this + 213) = v3;
      *(this + 212) = v3;
      *(this + 216) = *(this + 208);
    }
  }

  return this;
}

uint64_t AUNeuralNetVAD::GetScopeExtended(AUNeuralNetVAD *this, int a2)
{
  if (a2 == 4)
  {
    return this + 552;
  }

  else
  {
    return 0;
  }
}

uint64_t AUNeuralNetVAD::ChangeStreamFormat(AUNeuralNetVAD *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
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
      if (AUNeuralNetVADLogScope(void)::once != -1)
      {
        dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
      }

      if (AUNeuralNetVADLogScope(void)::scope)
      {
        v11 = *AUNeuralNetVADLogScope(void)::scope;
        if (!*AUNeuralNetVADLogScope(void)::scope)
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
        v14 = "AUNeuralNetVAD.cpp";
        v15 = 1024;
        v16 = 1129;
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

uint64_t AUNeuralNetVAD::ValidFormat(AUNeuralNetVAD *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
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
    if (a4->mChannelsPerFrame < 2)
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

uint64_t AUNeuralNetVAD::SupportedNumChannels(AUNeuralNetVAD *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUNeuralNetVAD::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUNeuralNetVAD::GetParameterValueStrings(AUNeuralNetVAD *this, int a2, int a3, const __CFArray **a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3 == 18)
  {
    v6 = &xmmword_1E866B6B0;
    goto LABEL_11;
  }

  if (a3 != 15)
  {
    if (a3 == 11)
    {
      v6 = &xmmword_1E866B670;
LABEL_11:
      v9 = *v6;
      *&v10 = *(v6 + 2);
      v7 = 3;
      goto LABEL_12;
    }

    return 0;
  }

  v9 = xmmword_1E866B688;
  v10 = *&off_1E866B698;
  v11 = @"Uniform";
  v7 = 5;
LABEL_12:
  v8 = CFArrayCreate(0, &v9, v7, 0);
  result = 0;
  *a4 = v8;
  return result;
}

uint64_t AUNeuralNetVAD::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v4 = ausdk::AUBase::RestoreState(this, a2);
  if (!v4)
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(a2, @"auversion");
    if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) && valuePtr == 67073)
    {
      AUNeuralNetVAD::UpdateState(this);
    }

    this[66] = (this[66] + 1);
  }

  return v4;
}

void AUNeuralNetVAD::UpdateState(AUNeuralNetVAD *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 164) = ausdk::AUElement::GetParameter(v2, 3u);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 165) = ausdk::AUElement::GetParameter(v4, 4u);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 166) = ausdk::AUElement::GetParameter(v6, 5u);
  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 167) = ausdk::AUElement::GetParameter(v8, 6u);
  v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v11 & 1) == 0)
  {
    goto LABEL_35;
  }

  Parameter = ausdk::AUElement::GetParameter(v10, 7u);
  *(this + 168) = Parameter;
  if (*(this + 600) == 1)
  {
    v13 = *(this + 81);
    if (v13)
    {
      *(v13 + 8) = Parameter;
    }
  }

  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_35;
  }

  v16 = ausdk::AUElement::GetParameter(v14, 8u);
  *(this + 169) = v16;
  if (*(this + 600) == 1)
  {
    v17 = *(this + 81);
    if (v17)
    {
      *(v17 + 20) = v16;
    }
  }

  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_35;
  }

  v20 = ausdk::AUElement::GetParameter(v18, 9u);
  *(this + 170) = v20;
  if (*(this + 600) == 1)
  {
    v21 = *(this + 81);
    if (v21)
    {
      *(v21 + 12) = v20;
    }
  }

  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_35;
  }

  v24 = ausdk::AUElement::GetParameter(v22, 0xAu);
  *(this + 171) = v24;
  if (*(this + 600) == 1)
  {
    v25 = *(this + 81);
    if (v25)
    {
      *(v25 + 16) = v24;
    }
  }

  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 172) = ausdk::AUElement::GetParameter(v26, 0xBu);
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 692) = ausdk::AUElement::GetParameter(v28, 0xCu) != 0.0;
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 176) = ausdk::AUElement::GetParameter(v30, 0xFu);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 174) = ausdk::AUElement::GetParameter(v32, 0xDu);
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 175) = ausdk::AUElement::GetParameter(v34, 0xEu);
  v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 177) = ausdk::AUElement::GetParameter(v36, 0x10u);
  v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 178) = ausdk::AUElement::GetParameter(v38, 0x11u);
  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 179) = ausdk::AUElement::GetParameter(v40, 0x12u);
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 180) = ausdk::AUElement::GetParameter(v42, 0x13u);
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_35;
  }

  *(this + 181) = ausdk::AUElement::GetParameter(v44, 0x14u);
  v46 = *(this + 95);
  if (v46)
  {
    DirectionalVAD::setTargetDirection(v46, *(this + 174), *(this + 175));
    DirectionalVAD::setShapeParameter(*(this + 95), *(this + 177));
    DirectionalVAD::setConditionalTargetPrior(*(this + 95), *(this + 178));
    v47 = *(this + 95);
    *(v47 + 64) = *(this + 179);
    DirectionalVAD::setCurrentDirection(v47, *(this + 180), *(this + 181));
  }

  v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v49 & 1) == 0)
  {
LABEL_35:
    abort();
  }

  *(this + 732) = ausdk::AUElement::GetParameter(v48, 0x16u) != 0.0;
}

uint64_t AUNeuralNetVAD::SaveExtendedScopes(AUNeuralNetVAD *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUNeuralNetVAD::SaveState(AUNeuralNetVAD *this, ausdk **a2)
{
  ausdk::AUBase::SaveState(this, a2);
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      valuePtr = 67073;
      v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v3, @"auversion", v4);
      CFRelease(v4);
    }
  }

  return 0;
}

uint64_t AUNeuralNetVAD::GetParameterInfo(AUNeuralNetVAD *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2 == 4)
  {
    return 4294956418;
  }

  if (a2)
  {
    return 4294956430;
  }

  switch(a3)
  {
    case 0:
      buffer->cfNameString = @"NNVAD: Number of DNN layers";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: Number of DNN layers", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v6 = 0x4100000000000000;
      goto LABEL_29;
    case 1:
      buffer->cfNameString = @"NNVAD: Number of frames for context window";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: Number of frames for context window", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x4100000000000000;
      v7 = 1.0;
      goto LABEL_19;
    case 2:
      buffer->cfNameString = @"NNVAD: Forgetting factor (time constant)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: Forgetting factor (time constant)", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x4040000000000000;
      v7 = 0.3;
LABEL_19:
      v15 = buffer->flags | 0x40008000;
      goto LABEL_36;
    case 3:
      v10 = @"NNVAD: Binary VAD";
      goto LABEL_28;
    case 4:
      v10 = @"NNVAD: EndPoint VAD";
      goto LABEL_28;
    case 5:
      v10 = @"NNVAD: Utt VAD";
      goto LABEL_28;
    case 6:
      v10 = @"NNVAD: Soft VAD";
LABEL_28:
      buffer->cfNameString = v10;
      buffer->flags = 0x8000000;
      CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v6 = 0x3F80000000000000;
LABEL_29:
      *&buffer->minValue = v6;
      flags = buffer->flags;
      v14 = 1073774592;
      goto LABEL_30;
    case 7:
      buffer->cfNameString = @"NNVAD: threshold";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: threshold", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      goto LABEL_21;
    case 8:
      buffer->cfNameString = @"NNVAD: wait time";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: wait time", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x42C8000000000000;
      v7 = 10.0;
      goto LABEL_35;
    case 9:
      v12 = @"NNVAD: transition prob. a01";
      goto LABEL_33;
    case 10:
      v12 = @"NNVAD: transition prob. a10";
LABEL_33:
      buffer->cfNameString = v12;
      buffer->flags = 0x8000000;
      CFStringGetCString(v12, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v7 = 0.1;
      goto LABEL_35;
    case 11:
      buffer->cfNameString = @"NNVAD: Output mask mode";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: Output mask mode", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v9 = 0x4000000000000000;
      goto LABEL_40;
    case 12:
      buffer->cfNameString = @"NNVAD: Use directional mode";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: Use directional mode", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      v11 = 0x3F80000000000000;
      goto LABEL_15;
    case 13:
      v16 = @"NNVAD: Target azimuth, when using the directional mode";
      goto LABEL_39;
    case 14:
      v8 = @"NNVAD: Target elevation, when using the directional mode";
      goto LABEL_23;
    case 15:
      buffer->cfNameString = @"NNVAD: Model type, when using the directional mode";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: Model type, when using the directional mode", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v11 = 0x4080000000000000;
LABEL_15:
      *&buffer->minValue = v11;
      flags = buffer->flags;
      v14 = -1056964608;
      goto LABEL_30;
    case 16:
      buffer->cfNameString = @"NNVAD: Model shape parameter, when using the directional mode";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: Model shape parameter, when using the directional mode", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Degrees;
      *&buffer->minValue = 0x4120000000000000;
      v7 = 1.0;
      goto LABEL_35;
    case 17:
      buffer->cfNameString = @"NNVAD: Conditional target prior, when using the directional mode";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: Conditional target prior, when using the directional mode", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
LABEL_21:
      *&buffer->minValue = 0x3F80000000000000;
      v7 = 0.5;
      goto LABEL_35;
    case 18:
      buffer->cfNameString = @"NNVAD: Combined probability mode, when using the directional mode";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: Combined probability mode, when using the directional mode", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      *&buffer->minValue = 0x4000000000000000;
      v7 = 2.0;
      goto LABEL_35;
    case 19:
      v16 = @"NNVAD: Current azimuth (input), when using the directional mode";
LABEL_39:
      buffer->cfNameString = v16;
      buffer->flags = 0x8000000;
      CFStringGetCString(v16, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Degrees;
      v9 = 0x43340000C3340000;
      goto LABEL_40;
    case 20:
      v8 = @"NNVAD: Current elevation (input), when using the directional mode";
LABEL_23:
      buffer->cfNameString = v8;
      buffer->flags = 0x8000000;
      CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Degrees;
      v9 = 0x42B40000C2B40000;
LABEL_40:
      *&buffer->minValue = v9;
      v17 = buffer->flags | 0xC0000000;
      goto LABEL_41;
    case 21:
      buffer->cfNameString = @"NNVAD: Spatial SPP upper cutoff in Hz, when using the directional mode";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: Spatial SPP upper cutoff in Hz, when using the directional mode", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      *&buffer->minValue = 0x467A000000000000;
      v7 = 3125.0;
LABEL_35:
      v15 = buffer->flags | 0xC0000000;
LABEL_36:
      buffer->defaultValue = v7;
      buffer->flags = v15;
      return result;
    case 22:
      buffer->cfNameString = @"NNVAD: Send VAD output mask, selected by output mask mode, through audio output.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"NNVAD: Send VAD output mask, selected by output mask mode, through audio output.", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      *&buffer->minValue = 0x3F80000000000000;
      flags = buffer->flags;
      v14 = 1090519040;
LABEL_30:
      v17 = flags | v14;
LABEL_41:
      buffer->defaultValue = 0.0;
      buffer->flags = v17;
      break;
    default:
      return 4294956418;
  }

  return result;
}

uint64_t AUNeuralNetVAD::GetParameterList(AUNeuralNetVAD *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09C1E0;
    *(a3 + 3) = xmmword_1DE09C0E0;
    *(a3 + 4) = xmmword_1DE09DB50;
    *(a3 + 10) = 0x1600000015;
  }

  result = 0;
  *a4 = 22;
  return result;
}

ausdk::AUInputElement *AUNeuralNetVAD::Render(AUNeuralNetVAD *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (Element && *(Element + 172))
  {
    result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
    if (v10)
    {
      result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
    }

    if (result)
    {
      return result;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v12)
  {
    goto LABEL_15;
  }

  v15[0] = ausdk::AUIOElement::PrepareBuffer(v12, a4);
  if (v11)
  {
    return 0;
  }

  v13 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v13)
  {
LABEL_15:
    ausdk::Throw(0xFFFFD583);
  }

  if (!*(v13 + 144))
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v14 = *(v13 + 152) + 48;
  return (*(*this + 184))(this, a2, a4, 1, &v14, 1, v15);
}

uint64_t AUNeuralNetVAD::ProcessMultipleBufferLists(AUNeuralNetVAD *this, unsigned int *a2, AudioDSP::Utility *a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v9 = a3;
  v103 = *MEMORY[0x1E69E9840];
  v11 = *(this + 66);
  if (*(this + 67) != v11)
  {
    AUNeuralNetVAD::UpdateState(this);
    *(this + 67) = v11;
  }

  if (*(this + 84) != v9)
  {
    return 4294956422;
  }

  v12 = *a5;
  if (!*a5)
  {
    if (AUNeuralNetVADLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
    }

    if (AUNeuralNetVADLogScope(void)::scope)
    {
      v17 = *AUNeuralNetVADLogScope(void)::scope;
      if (!*AUNeuralNetVADLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *&v99[6] = 136315394;
      *&v99[10] = "AUNeuralNetVAD.cpp";
      *&v99[18] = 1024;
      *&v99[20] = 1251;
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d InputSignal cannot be NULL. It is a required input\n", &v99[6], 0x12u);
    }

    return 4294956420;
  }

  v13 = *v12;
  if (*v12 != *(this + 156) || *a7 && (*a7)->mNumberBuffers != v13)
  {
    return 4294956428;
  }

  *v99 = 0;
  v14 = (2 * *(this + 151));
  *&v99[6] = *(this + 76);
  *&v99[14] = xmmword_1DE09BD50;
  *&v99[30] = 4;
  *&v99[34] = v13;
  *&v99[38] = 32;
  AudioDSP::Utility::DetectNonFinites(v14, v12, &v99[6], &v99[1], a5);
  if ((*(this + 544) & 1) == 0 && (v99[1] != 1 || *(this + 601) != 1))
  {
    v18 = *(this + 81);
    v19 = *a5;
    v20 = *(this + 77);
    mNumberBuffers = (*a5)->mNumberBuffers;
    *&v99[2] = ((*(v18 + 60) * v20) * (*(v18 + 60) * v20)) / mNumberBuffers;
    vDSP_vclr(*(v18 + 80), 1, *(v18 + 64));
    if (mNumberBuffers)
    {
      v22 = (v19 + 4);
      do
      {
        v23 = *(v18 + 28);
        v24 = &(*v22)[v23];
        v25 = **v22;
        *__A = *v22 + 1;
        v26 = *(v18 + 80);
        *v26 = *v26 + (v25 * v25);
        v27 = *v24;
        *&__A[8] = v24 + 1;
        *(v26 + 4 * v23) = *(v26 + 4 * v23) + (v27 * v27);
        vDSP_zvmgsa(__A, 1, (v26 + 4), 1, (v26 + 4), 1, (v23 - 1));
        v22 += 2;
        --mNumberBuffers;
      }

      while (mNumberBuffers);
    }

    MEMORY[0x1E12BE940](*(v18 + 80), 1, &v99[2], *(v18 + 80), 1, *(v18 + 64));
    if (*(v18 + 40) == 1)
    {
      if (*(v18 + 48) > 0.0)
      {
        MEMORY[0x1E12BE930](*(v18 + 104), 1, v18 + 48, *(v18 + 80), 1, v18 + 52, *(v18 + 104), 1, *(v18 + 64));
      }

      vDSP_vclr(*(v18 + 192), 1, *(v18 + 184));
      sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, *(v18 + 72), *(v18 + 80), 1, *(v18 + 192), 1);
      if (*(v18 + 48) > 0.0)
      {
        sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, *(v18 + 72), *(v18 + 104), 1, (*(v18 + 192) + 4 * *(v18 + 68)), 1);
      }

      vDSP_vthr(*(v18 + 192), 1, (v18 + 56), *(v18 + 192), 1, *(v18 + 184));
      *__A = *(v18 + 184);
      vvlogf(*(v18 + 192), *(v18 + 192), __A);
    }

    else
    {
      v28 = (v18 + 128);
      vDSP_vclr(*(v18 + 128), 1, *(v18 + 68));
      sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, *(v18 + 72), *(v18 + 80), 1, *(v18 + 128), 1);
      vDSP_vthr(*v28, 1, (v18 + 56), *v28, 1, *(v18 + 68));
      *__A = *(v18 + 68);
      vvlogf(*v28, *v28, __A);
      v30 = *(v18 + 36);
      v29 = *(v18 + 40);
      v31 = v30 + 1;
      v32 = *(v18 + 68);
      v33 = (v30 + 1) * v32;
      v34 = v29 - 1;
      v35 = (v29 - 1) * v33;
      if (v35)
      {
        v36 = *(v18 + 192);
        v37 = v36;
        v38 = (v34 * v33);
        do
        {
          *v37++ = v36[v33++];
          --v38;
        }

        while (v38);
      }

      if (v32)
      {
        v39 = *(v18 + 128);
        v40 = *(v18 + 192);
        v41 = v39;
        v42 = v32;
        do
        {
          v43 = *v41++;
          *(v40 + 4 * v35++) = v43;
          --v42;
        }

        while (v42);
        if (v30 == 1)
        {
          v44 = v32 + v32 * v34 * v31;
          v45 = v32 * (v29 - 2) * v31;
          do
          {
            v46 = *v39++;
            *(v40 + 4 * v44++) = v46 - *(v40 + 4 * v45++);
            --v32;
          }

          while (v32);
        }
      }
    }

    v47 = (*(***(v18 + 176) + 72))(**(v18 + 176), v18 + 192);
    vDSP_vclip(*v47, 1, (v18 + 264), (v18 + 268), *v47, 1, 1uLL);
    v49 = 1.0;
    v50 = *v47;
    v51 = ((*(v18 + 12) + ((1.0 - *(v18 + 12)) * *(v18 + 156))) / ((1.0 - *(v18 + 16)) + (*(v18 + 16) * *(v18 + 156)))) * **v47;
    *(v18 + 156) = v51;
    *v50 = v51;
    *(v18 + 172) = *(v18 + 156);
    v52 = *a5;
    v53 = *a7;
    v54 = *(this + 81);
    v55 = *(v54 + 172);
    *(this + 160) = v55;
    if (*(this + 692) != 1)
    {
LABEL_79:
      v67 = 268;
      if (*(v54 + 8) > v55)
      {
        v67 = 264;
      }

      v68 = *(v54 + v67);
      *(v54 + 152) = v68;
      if (v68 <= 0.0)
      {
        v71 = *(v54 + 160);
        if (*(v54 + 24) == 1)
        {
          v71 = v71 + 1.0;
          *(v54 + 160) = v71;
        }

        v49 = 0.0;
        if (v71 <= *(v54 + 20))
        {
LABEL_88:
          *(v54 + 164) = v49;
          *(this + 157) = v68;
          *(this + 79) = *(v54 + 164);
          *(this + 164) = v68;
          v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v73 & 1) == 0 || (ausdk::AUElement::SetParameter(v72, 3u, *(this + 164)), *(this + 165) = *(this + 158), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v75 & 1) == 0) || (ausdk::AUElement::SetParameter(v74, 4u, *(this + 165)), *(this + 166) = *(this + 159), v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v77 & 1) == 0) || (ausdk::AUElement::SetParameter(v76, 5u, *(this + 166)), *(this + 167) = *(this + 160), v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v79 & 1) == 0) || (ausdk::AUElement::SetParameter(v78, 6u, *(this + 167)), v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v81 & 1) == 0) || (ausdk::AUElement::SetParameter(v80, 7u, *(this + 168)), v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v83 & 1) == 0) || (ausdk::AUElement::SetParameter(v82, 8u, *(this + 169)), v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v85 & 1) == 0) || (ausdk::AUElement::SetParameter(v84, 9u, *(this + 170)), v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v87 & 1) == 0))
          {
            abort();
          }

          ausdk::AUElement::SetParameter(v86, 0xAu, *(this + 171));
          v89 = (this + 628);
          *__A = 0;
          v90 = *(this + 172);
          v91 = 0.0;
          if (v90 > 1)
          {
            if (v90 != 2)
            {
              if (v90 == 3)
              {
                *__A = 1065353216;
                v91 = 1.0;
              }

LABEL_106:
              v92 = *v53;
              if (*(this + 732))
              {
                if (v92)
                {
                  v93 = 0;
                  v94 = 4;
                  do
                  {
                    *&v99[2] = 0;
                    vDSP_vfill(&v99[2], *&v53[v94], 1, (2 * *(this + 151)));
                    **&v53[v94] = v91;
                    ++v93;
                    v94 += 4;
                  }

                  while (v93 < *v53);
                }
              }

              else if (v92)
              {
                v95 = 0;
                v96 = 4;
                do
                {
                  MEMORY[0x1E12BE940](*&v52[v96], 1, __A, *&v53[v96], 1, (2 * *(this + 151)));
                  ++v95;
                  v96 += 4;
                }

                while (v95 < *v53);
              }

              AudioDSP::Utility::DetectNonFinites(v14, *a7, &v99[6], v99, v88);
              if (v99[0] != 1 || *(this + 601) != 1)
              {
                return 0;
              }

              if (AUNeuralNetVADLogScope(void)::once != -1)
              {
                dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
              }

              if (AUNeuralNetVADLogScope(void)::scope)
              {
                v97 = *AUNeuralNetVADLogScope(void)::scope;
                if (!*AUNeuralNetVADLogScope(void)::scope)
                {
LABEL_124:
                  (*(*this + 64))(this);
                  *v89 = 0;
                  *(this + 636) = 0;
                  CopyBufferList(*a5, *a7);
                  return 0;
                }
              }

              else
              {
                v97 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                *__A = 136315650;
                *&__A[4] = "AUNeuralNetVAD.cpp";
                *&__A[12] = 1024;
                *&__A[14] = 1303;
                v101 = 1024;
                LODWORD(v102) = v99[0];
                _os_log_impl(&dword_1DDB85000, v97, OS_LOG_TYPE_ERROR, "%25s:%-5d AUNeuralNetVAD: (OutputSignals) is NOT finite: (%u)\n", __A, 0x18u);
              }

              goto LABEL_124;
            }

            v91 = *(this + 160);
          }

          else if (v90)
          {
            if (v90 != 1)
            {
              goto LABEL_106;
            }

            v91 = *(this + 159);
          }

          else
          {
            v91 = *v89;
          }

          *__A = v91;
          goto LABEL_106;
        }

        v70 = 0;
        v69 = 1.0;
      }

      else
      {
        v69 = 0.0;
        v70 = 1;
      }

      *(v54 + 160) = 0;
      *(v54 + 168) = v49;
      v49 = v69;
      *(v54 + 24) = v70;
      goto LABEL_88;
    }

    if (v55 < 0.0 || v55 > 1.0)
    {
      if (AUNeuralNetVADLogScope(void)::once != -1)
      {
        dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_18142);
      }

      if (AUNeuralNetVADLogScope(void)::scope)
      {
        v57 = *AUNeuralNetVADLogScope(void)::scope;
        if (!*AUNeuralNetVADLogScope(void)::scope)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v57 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *__A = 136315650;
        *&__A[4] = "DirectionalVAD.cpp";
        *&__A[12] = 1024;
        *&__A[14] = 148;
        v101 = 2048;
        v102 = v55;
        v62 = "%25s:%-5d nnSoftVAD has value (%f). Valid range is [0, 1]. Skipping update.\n";
        v63 = v57;
        v64 = OS_LOG_TYPE_DEFAULT;
        v65 = 28;
LABEL_73:
        _os_log_impl(&dword_1DDB85000, v63, v64, v62, __A, v65);
        goto LABEL_78;
      }

      goto LABEL_78;
    }

    v58 = *(this + 95);
    v59 = *(v58 + 64);
    if (v59 > 1)
    {
      if (v59 != 2)
      {
        if (v59 == 3)
        {
          if (AUNeuralNetVADLogScope(void)::once != -1)
          {
            dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_18142);
          }

          if (AUNeuralNetVADLogScope(void)::scope)
          {
            v61 = *AUNeuralNetVADLogScope(void)::scope;
            if (!*AUNeuralNetVADLogScope(void)::scope)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v61 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v98 = *(v58 + 64);
            *__A = 136315650;
            *&__A[4] = "DirectionalVAD.cpp";
            *&__A[12] = 1024;
            *&__A[14] = 186;
            v101 = 1024;
            LODWORD(v102) = v98;
            v62 = "%25s:%-5d Invalid value for combined probability mode (%u).\n";
            v63 = v61;
            v64 = OS_LOG_TYPE_ERROR;
            v65 = 24;
            goto LABEL_73;
          }
        }

LABEL_78:
        v55 = *(*(this + 95) + 132);
        *(this + 160) = v55;
        v54 = *(this + 81);
        goto LABEL_79;
      }

      *__A = 0;
      LODWORD(v48) = vcvtas_u32_f32((*(v58 + 120) / *(v58 + 124)) * *(v58 + 128));
      vDSP_meanv(*(v58 + 208), 1, __A, v48);
      v66 = *__A;
    }

    else
    {
      if (v59)
      {
        if (v59 != 1)
        {
          goto LABEL_78;
        }

        (*(**(v58 + 32) + 48))(*(v58 + 32), v58 + 72, v58 + 96, v58 + 136);
        (*(**(v58 + 40) + 48))(*(v58 + 40), v58 + 72, v58 + 96, v58 + 160);
        (*(**(v58 + 48) + 48))(*(v58 + 48), v58 + 72, v58 + 96, v58 + 184);
        v60 = ((*(v58 + 60) * v55) * **(v58 + 136)) / (((((1.0 - *(v58 + 60)) * v55) * **(v58 + 160)) + ((*(v58 + 60) * v55) * **(v58 + 136))) + ((1.0 - v55) * **(v58 + 184)));
LABEL_77:
        *(v58 + 132) = v60;
        goto LABEL_78;
      }

      (*(**(v58 + 32) + 48))(*(v58 + 32), v58 + 72, v58 + 96, v58 + 136);
      (*(**(v58 + 40) + 48))(*(v58 + 40), v58 + 72, v58 + 96, v58 + 160);
      (*(**(v58 + 48) + 48))(*(v58 + 48), v58 + 72, v58 + 96, v58 + 184);
      v66 = **(v58 + 136) / ((**(v58 + 136) + **(v58 + 160)) + **(v58 + 184));
    }

    v60 = v66 * v55;
    goto LABEL_77;
  }

  *(this + 628) = xmmword_1DE09BBD0;
  CopyBufferList(*a5, *a7);
  if (v99[1] == 1)
  {
    if (AUNeuralNetVADLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
    }

    if (AUNeuralNetVADLogScope(void)::scope)
    {
      v15 = *AUNeuralNetVADLogScope(void)::scope;
      if (!*AUNeuralNetVADLogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *__A = 136315650;
      *&__A[4] = "AUNeuralNetVAD.cpp";
      *&__A[12] = 1024;
      *&__A[14] = 1288;
      v101 = 1024;
      LODWORD(v102) = v99[1];
      _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d AUNeuralNetVAD: (InputSignals) is NOT finite: (%u)\n", __A, 0x18u);
    }
  }

  return 0;
}

uint64_t AUNeuralNetVAD::SetParameter(AUNeuralNetVAD *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3 == 4)
  {
    Element = ausdk::AUScope::GetElement((this + 552), a4);
    ausdk::AUElement::SetParameter(Element, a2, a5);
    return 0;
  }

  else if (a3)
  {
    return 4294956418;
  }

  else
  {
    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v8, a2, a5);
    result = 0;
    ++*(this + 66);
  }

  return result;
}

uint64_t AUNeuralNetVAD::SetProperty(AUNeuralNetVAD *this, int a2, int a3, unsigned int a4, CFArrayRef *a5, unsigned int a6)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 3698)
  {
    if (a2 == 21)
    {
      if (a6 == 4)
      {
        result = 0;
        *(this + 544) = *a5 != 0;
        return result;
      }

      return 4294956445;
    }

    if (a2 == 3697)
    {
      if (a5)
      {
        if (*(this + 81))
        {
          std::unique_ptr<NeuralNetVAD>::reset[abi:ne200100](this + 81, 0);
        }

        if (AUNeuralNetVADLogScope(void)::once != -1)
        {
          dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
        }

        operator new();
      }

      if (AUNeuralNetVADLogScope(void)::once != -1)
      {
        dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
      }

      if (AUNeuralNetVADLogScope(void)::scope)
      {
        v22 = *AUNeuralNetVADLogScope(void)::scope;
        if (!*AUNeuralNetVADLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "AUNeuralNetVAD.cpp";
        v31 = 1024;
        v32 = 554;
        v25 = "%25s:%-5d The CFDictionaryRef passed to SetProperty is null.\n";
        v26 = v22;
        v27 = 18;
        goto LABEL_55;
      }

      return 4294956445;
    }
  }

  else
  {
    switch(a2)
    {
      case 3699:
        if (a6 == 4 * (*(this + 151) + 1))
        {
          v18 = *(this + 95);
          if (!v18)
          {
            return 0;
          }

          v19 = *(v18 + 208);
          v11 = a5;
          v16 = a6;
LABEL_59:
          memcpy(v19, v11, v16);
          return 0;
        }

        if (AUNeuralNetVADLogScope(void)::once != -1)
        {
          dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
        }

        if (AUNeuralNetVADLogScope(void)::scope)
        {
          v21 = *AUNeuralNetVADLogScope(void)::scope;
          if (!*AUNeuralNetVADLogScope(void)::scope)
          {
            return 4294956445;
          }
        }

        else
        {
          v21 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v28 = 4 * (*(this + 151) + 1);
          *buf = 136316162;
          v30 = "AUNeuralNetVAD.cpp";
          v31 = 1024;
          v32 = 523;
          v33 = 2048;
          v34 = a6;
          v35 = 2048;
          v36 = v28;
          v37 = 1024;
          LODWORD(v38) = 3699;
          v25 = "%25s:%-5d Input size of PriorSPP  (%lu) is not equal to the the expected size  (%lu) (prop id: %u).\n";
          v26 = v21;
          v27 = 44;
          goto LABEL_55;
        }

        return 4294956445;
      case 3700:
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

        break;
      case 103699:
        if (a6 == 8)
        {
          v10 = *(this + 93) - *(this + 92);
          if (CFArrayGetCount(*a5) == v10 >> 2)
          {
            v11 = *(this + 92);
            if (*(this + 93) == v11)
            {
              v16 = 0;
            }

            else
            {
              v12 = 0;
              v13 = 0;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*a5, v13);
                CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, (*(this + 92) + v12));
                ++v13;
                v11 = *(this + 92);
                v15 = *(this + 93) - v11;
                v12 += 4;
              }

              while (v13 < v15 >> 2);
              v16 = v15;
            }

            v19 = *(*(this + 95) + 208);
            goto LABEL_59;
          }
        }

        if (AUNeuralNetVADLogScope(void)::once != -1)
        {
          dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
        }

        if (AUNeuralNetVADLogScope(void)::scope)
        {
          v20 = *AUNeuralNetVADLogScope(void)::scope;
          if (!*AUNeuralNetVADLogScope(void)::scope)
          {
            return 4294956445;
          }
        }

        else
        {
          v20 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v23 = (*(this + 93) - *(this + 92)) >> 2;
          Count = CFArrayGetCount(*a5);
          *buf = 136316674;
          v30 = "AUNeuralNetVAD.cpp";
          v31 = 1024;
          v32 = 534;
          v33 = 2048;
          v34 = a6;
          v35 = 2048;
          v36 = 8;
          v37 = 2048;
          v38 = v23;
          v39 = 2048;
          v40 = Count;
          v41 = 1024;
          v42 = 103699;
          v25 = "%25s:%-5d Input size of Prior_SPP  (%lu) is not equal to the the expected size  (%lu) or (%lu) is not equal to (%lu) (prop id: %u).\n";
          v26 = v20;
          v27 = 64;
LABEL_55:
          _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
          return 4294956445;
        }

        return 4294956445;
    }
  }

  return result;
}

void sub_1DDDECD9C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9, int a10, __int128 buf, __int16 a12, __int16 a13, int a14)
{
  MEMORY[0x1E12BD160](v14, 0x10E0C40DF43E4E2);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  exception_ptr = __cxa_get_exception_ptr(a1);
  a9.__vftable = &unk_1F593B0D8;
  a10 = exception_ptr[2];
  __cxa_begin_catch(a1);
  if (*(v16 + 2128) != -1)
  {
    dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
  }

  v20 = *(v15 + 2120);
  if (v20)
  {
    v21 = *v20;
    if (!*v20)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315650;
    *(&buf + 4) = "AUNeuralNetVAD.cpp";
    WORD6(buf) = 1024;
    *(&buf + 14) = 568;
    a13 = 1024;
    a14 = a10;
    _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not load NeuralNetVAD plist, exception (%d).\n", &buf, 0x18u);
  }

LABEL_10:
  std::exception::~exception(&a9);
  __cxa_end_catch();
  JUMPOUT(0x1DDDECD00);
}

uint64_t *std::unique_ptr<NeuralNetVAD>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      sparse_matrix_destroy(v3);
      *(v2 + 72) = 0;
    }

    v4 = *(v2 + 192);
    if (v4)
    {
      *(v2 + 200) = v4;
      operator delete(v4);
    }

    std::unique_ptr<NeuralNet>::reset[abi:ne200100]((v2 + 176), 0);
    v5 = *(v2 + 128);
    if (v5)
    {
      *(v2 + 136) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 104);
    if (v6)
    {
      *(v2 + 112) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 80);
    if (v7)
    {
      *(v2 + 88) = v7;
      operator delete(v7);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUNeuralNetVAD::GetProperty(AUNeuralNetVAD *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 544;
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

uint64_t AUNeuralNetVAD::GetPropertyInfo(AUNeuralNetVAD *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

uint64_t AUNeuralNetVAD::Reset(AUNeuralNetVAD *this)
{
  if (*(this + 600) == 1)
  {
    v2 = *(this + 81);
    *(v2 + 24) = 0;
    *(v2 + 164) = 0;
    *(v2 + 156) = 0;
    *(v2 + 172) = 0;
    v3 = *(v2 + 192);
    v4 = *(v2 + 200) - v3;
    if (v4 >= 1)
    {
      bzero(v3, v4);
    }

    if (*(v2 + 40) == 1)
    {
      v5 = *(v2 + 80);
      v6 = *(v2 + 88) - v5;
      if (v6 >= 1)
      {
        bzero(v5, v6);
      }

      v7 = *(v2 + 104);
      v8 = *(v2 + 112);
    }

    else
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 136);
    }

    if (v8 - v7 >= 1)
    {
      bzero(v7, v8 - v7);
    }
  }

  *(this + 628) = 0u;
  return 0;
}

double AUNeuralNetVAD::Cleanup(AUNeuralNetVAD *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (AUNeuralNetVADLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
  }

  if (AUNeuralNetVADLogScope(void)::scope)
  {
    v2 = *AUNeuralNetVADLogScope(void)::scope;
    if (!*AUNeuralNetVADLogScope(void)::scope)
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
    v7 = 136315394;
    v8 = "AUNeuralNetVAD.cpp";
    v9 = 1024;
    v10 = 300;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUNeuralNetVAD: Resetting state variables. Cleanup() started.\n", &v7, 0x12u);
  }

LABEL_9:
  if (*(this + 600) == 1)
  {
    v3 = *(this + 81);
    (*(***(v3 + 176) + 48))(**(v3 + 176));
    *(v3 + 24) = 0;
    *(v3 + 164) = 0;
    *(v3 + 156) = 0;
    *(v3 + 172) = 0;
    bzero(*(v3 + 192), *(v3 + 200) - *(v3 + 192));
    if (*(v3 + 40) == 1)
    {
      bzero(*(v3 + 80), *(v3 + 88) - *(v3 + 80));
      v4 = 112;
      v5 = 104;
    }

    else
    {
      v4 = 136;
      v5 = 128;
    }

    bzero(*(v3 + v5), *(v3 + v4) - *(v3 + v5));
  }

  result = 0.0;
  *(this + 628) = 0u;
  return result;
}

uint64_t AUNeuralNetVAD::Initialize(AUNeuralNetVAD *this)
{
  v96 = *MEMORY[0x1E69E9840];
  if (AUNeuralNetVADLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
  }

  if (AUNeuralNetVADLogScope(void)::scope)
  {
    v2 = *AUNeuralNetVADLogScope(void)::scope;
    if (!*AUNeuralNetVADLogScope(void)::scope)
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
    *&buf[1] = "AUNeuralNetVAD.cpp";
    v86 = 1024;
    v87 = 123;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUNeuralNetVAD: Start Initialization.\n", buf, 0x12u);
  }

LABEL_9:
  if ((*(this + 600) & 1) == 0)
  {
    if (AUNeuralNetVADLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
    }

    if (AUNeuralNetVADLogScope(void)::scope)
    {
      v10 = *AUNeuralNetVADLogScope(void)::scope;
      if (!*AUNeuralNetVADLogScope(void)::scope)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "AUNeuralNetVAD.cpp";
      v86 = 1024;
      v87 = 130;
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initialize called without setting setting NeuralNetVADLayers plist! Setting AU in Bypass mode.\n", buf, 0x12u);
    }

LABEL_30:
    *(this + 544) = 1;
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v12 = *(Element + 80);
    *(this + 156) = *(Element + 108);
    *(this + 76) = v12;
    v13 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v13)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (*(v13 + 108) == *(this + 156))
    {
      v14 = ausdk::AUScope::GetElement((this + 128), 0);
      if (!v14)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (*(v14 + 108) == *(this + 156))
      {
        result = 0;
        *(this + 151) = *(this + 84);
        *(this + 628) = 0u;
        return result;
      }
    }

    return 4294956421;
  }

  (*(*this + 64))(this);
  v3 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v3)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = *(v3 + 80);
  *(this + 156) = *(v3 + 108);
  *(this + 76) = v4;
  v5 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v5)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(v5 + 108) != *(this + 156))
  {
    return 4294956421;
  }

  v6 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v6)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(v6 + 108) != *(this + 156))
  {
    return 4294956421;
  }

  v7 = (*(*this + 408))(this, 4);
  if (!v7)
  {
    ausdk::ThrowQuiet(0);
  }

  ausdk::AUScope::SetNumberOfElements(v7, 1u);
  *(this + 151) = *(this + 84);
  if (((*(*this + 576))(this) & 1) == 0)
  {
    if (AUNeuralNetVADLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
    }

    if (AUNeuralNetVADLogScope(void)::scope)
    {
      v9 = *AUNeuralNetVADLogScope(void)::scope;
      if (!*AUNeuralNetVADLogScope(void)::scope)
      {
LABEL_41:
        *(this + 544) = 1;
        goto LABEL_42;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "AUNeuralNetVAD.cpp";
      v86 = 1024;
      v87 = 181;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Block Size for DFT must be divisable by 2**4! Setting AU in Bypass mode.\n", buf, 0x12u);
    }

    goto LABEL_41;
  }

LABEL_42:
  v16 = *(this + 76);
  v17 = *(this + 81);
  v18 = *v17;
  v19 = *v17;
  if ((v16 + v16) % v19)
  {
    if (AUNeuralNetVADLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
    }

    if (AUNeuralNetVADLogScope(void)::scope)
    {
      v20 = *AUNeuralNetVADLogScope(void)::scope;
      if (!*AUNeuralNetVADLogScope(void)::scope)
      {
LABEL_53:
        *(this + 544) = 1;
        v16 = *(this + 76);
        v17 = *(this + 81);
        v18 = *v17;
        goto LABEL_54;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "AUNeuralNetVAD.cpp";
      v86 = 1024;
      v87 = 189;
      _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sample rate is not supported! Setting AU in Bypass mode.\n", buf, 0x12u);
    }

    goto LABEL_53;
  }

  if (v16 != v19)
  {
    v8 = v16 / v18;
    *(this + 77) = v16 / v18;
  }

LABEL_54:
  LODWORD(v8) = *(this + 151);
  *&v21 = *&v8;
  v22 = *&v21 / v16;
  LODWORD(v21) = *(v17 + 28);
  if (v22 != v21 / v18)
  {
    if (AUNeuralNetVADLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
    }

    if (AUNeuralNetVADLogScope(void)::scope)
    {
      v23 = *AUNeuralNetVADLogScope(void)::scope;
      if (!*AUNeuralNetVADLogScope(void)::scope)
      {
LABEL_63:
        *(this + 544) = 1;
        goto LABEL_64;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "AUNeuralNetVAD.cpp";
      v86 = 1024;
      v87 = 198;
      _os_log_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Block size is not supported! Setting AU in Bypass mode.\n", buf, 0x12u);
    }

    goto LABEL_63;
  }

LABEL_64:
  (*(*this + 72))(this, 0, 0);
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_109;
  }

  v26 = v24;
  v27 = **(*(this + 81) + 176);
  v28 = (*(*v27 + 16))(v27);
  ausdk::AUElement::SetParameter(v26, 0, v28);
  v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v29, 1u, *(*(this + 81) + 40));
  v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v31, 2u, *(*(this + 81) + 44));
  v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v33, 3u, *(this + 164));
  v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v35, 4u, *(this + 165));
  v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v37, 5u, *(this + 166));
  v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v39, 6u, *(this + 167));
  *(this + 168) = *(*(this + 81) + 8);
  v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v41, 7u, *(this + 168));
  *(this + 169) = *(*(this + 81) + 20);
  v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v43, 8u, *(this + 169));
  *(this + 170) = *(*(this + 81) + 12);
  v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v45, 9u, *(this + 170));
  *(this + 171) = *(*(this + 81) + 16);
  v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v47, 0xAu, *(this + 171));
  *(this + 692) = *(*(this + 81) + 216) != 0;
  v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_109;
  }

  LOBYTE(v50) = *(this + 692);
  ausdk::AUElement::SetParameter(v49, 0xCu, v50);
  *(this + 174) = *(*(this + 81) + 220);
  v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v52, 0xDu, *(this + 174));
  *(this + 175) = *(*(this + 81) + 224);
  v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v54, 0xEu, *(this + 175));
  *(this + 177) = *(*(this + 81) + 228);
  v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v56, 0x10u, *(this + 177));
  *(this + 178) = *(*(this + 81) + 232);
  v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v58, 0x11u, *(this + 178));
  *(this + 179) = *(*(this + 81) + 236);
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v60, 0x12u, *(this + 179));
  *(this + 176) = *(*(this + 81) + 240);
  v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v62, 0xFu, *(this + 176));
  *(this + 182) = *(*(this + 81) + 244);
  v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_109;
  }

  ausdk::AUElement::SetParameter(v64, 0x15u, *(this + 182));
  v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v67 & 1) == 0)
  {
    goto LABEL_109;
  }

  *(this + 180) = ausdk::AUElement::GetParameter(v66, 0x13u);
  v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v69 & 1) == 0)
  {
    goto LABEL_109;
  }

  *(this + 181) = ausdk::AUElement::GetParameter(v68, 0x14u);
  v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_109;
  }

  *(this + 182) = ausdk::AUElement::GetParameter(v70, 0x15u);
  if (*(this + 692) == 1)
  {
    if (AUNeuralNetVADLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
    }

    if (AUNeuralNetVADLogScope(void)::scope)
    {
      v72 = *AUNeuralNetVADLogScope(void)::scope;
      if (!*AUNeuralNetVADLogScope(void)::scope)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v72 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = *(this + 174);
      v74 = *(this + 175);
      v75 = *(this + 176);
      v76 = *(this + 177);
      buf[0] = 136316418;
      *&buf[1] = "AUNeuralNetVAD.cpp";
      v86 = 1024;
      v87 = 263;
      v88 = 2048;
      v89 = v73;
      v90 = 2048;
      v91 = v74;
      v92 = 1024;
      v93 = v75;
      v94 = 2048;
      v95 = v76;
      _os_log_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initializing the directional model: azimuth (%f), elev (%f), model type (%d), shape parameter (%f).\n", buf, 0x36u);
    }

LABEL_95:
    operator new();
  }

  v77 = *(this + 95);
  if (v77)
  {
    DirectionalVAD::setTargetDirection(v77, *(this + 174), *(this + 175));
    DirectionalVAD::setShapeParameter(*(this + 95), *(this + 177));
    DirectionalVAD::setConditionalTargetPrior(*(this + 95), *(this + 178));
    v78 = *(this + 95);
    *(v78 + 64) = *(this + 179);
    DirectionalVAD::setCurrentDirection(v78, *(this + 180), *(this + 181));
    *(*(this + 95) + 120) = *(this + 182);
  }

  *(this + 732) = *(*(this + 81) + 248) != 0;
  v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v81 & 1) == 0 || (LOBYTE(v80) = *(this + 732), ausdk::AUElement::SetParameter(v79, 0x16u, v80), *(this + 172) = *(*(this + 81) + 252), v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v83 & 1) == 0))
  {
LABEL_109:
    abort();
  }

  ausdk::AUElement::SetParameter(v82, 0xBu, *(this + 172));
  if (AUNeuralNetVADLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_9686);
  }

  if (AUNeuralNetVADLogScope(void)::scope)
  {
    v84 = *AUNeuralNetVADLogScope(void)::scope;
    if (!*AUNeuralNetVADLogScope(void)::scope)
    {
      return 0;
    }
  }

  else
  {
    v84 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    buf[0] = 136315394;
    *&buf[1] = "AUNeuralNetVAD.cpp";
    v86 = 1024;
    v87 = 289;
    _os_log_impl(&dword_1DDB85000, v84, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUNeuralNetVAD: Successfully Initialized.\n", buf, 0x12u);
    return 0;
  }

  return result;
}

void sub_1DDDEE05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v18 = *v16;
  if (*v16)
  {
    v10[30] = v18;
    operator delete(v18);
  }

  v19 = v10[26];
  if (v19)
  {
    v10[27] = v19;
    operator delete(v19);
  }

  v20 = *v15;
  if (*v15)
  {
    v10[24] = v20;
    operator delete(v20);
  }

  v21 = *v14;
  if (*v14)
  {
    v10[21] = v21;
    operator delete(v21);
  }

  v22 = *v13;
  if (*v13)
  {
    v10[18] = v22;
    operator delete(v22);
  }

  v23 = *v12;
  if (*v12)
  {
    v10[13] = v23;
    operator delete(v23);
  }

  v24 = *v11;
  if (*v11)
  {
    v10[10] = v24;
    operator delete(v24);
  }

  v25 = v10[6];
  v10[6] = 0;
  if (v25)
  {
    (*(*v25 + 24))(v25);
  }

  v26 = v10[5];
  v10[5] = 0;
  if (v26)
  {
    (*(*v26 + 24))(v26);
  }

  v27 = *a10;
  *a10 = 0;
  if (v27)
  {
    (*(*v27 + 24))(v27);
  }

  MEMORY[0x1E12BD160](v10, 0x10A0C4063FAA373);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<DirectionalVAD>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[29];
    if (v3)
    {
      v2[30] = v3;
      operator delete(v3);
    }

    v4 = v2[26];
    if (v4)
    {
      v2[27] = v4;
      operator delete(v4);
    }

    v5 = v2[23];
    if (v5)
    {
      v2[24] = v5;
      operator delete(v5);
    }

    v6 = v2[20];
    if (v6)
    {
      v2[21] = v6;
      operator delete(v6);
    }

    v7 = v2[17];
    if (v7)
    {
      v2[18] = v7;
      operator delete(v7);
    }

    v8 = v2[12];
    if (v8)
    {
      v2[13] = v8;
      operator delete(v8);
    }

    v9 = v2[9];
    if (v9)
    {
      v2[10] = v9;
      operator delete(v9);
    }

    v10 = v2[6];
    v2[6] = 0;
    if (v10)
    {
      (*(*v10 + 24))(v10);
    }

    v11 = v2[5];
    v2[5] = 0;
    if (v11)
    {
      (*(*v11 + 24))(v11);
    }

    v12 = v2[4];
    v2[4] = 0;
    if (v12)
    {
      (*(*v12 + 24))(v12);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void AUNeuralNetVAD::CreateExtendedElements(AUNeuralNetVAD *this)
{
  ausdk::AUScope::Initialize((this + 552), this, 4, 1);
  std::to_string(&v8, 0);
  v2 = std::string::insert(&v8, 0, "Mic", 3uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v10 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v4)
  {
    if (v10 >= 0)
    {
      v5 = HIBYTE(v10);
    }

    else
    {
      v5 = __p[1];
    }

    v8.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
    if (!v8.__r_.__value_.__r.__words[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v8.__r_.__value_.__r.__words[0] = 0;
  }

  Element = ausdk::AUScope::GetElement((this + 552), 0);
  ausdk::Owned<__CFString const*>::operator=((Element + 72), v8.__r_.__value_.__l.__data_);
  if (v8.__r_.__value_.__r.__words[0])
  {
    CFRelease(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DDDEE470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AUNeuralNetVAD::~AUNeuralNetVAD(AUNeuralNetVAD *this)
{
  AUNeuralNetVAD::~AUNeuralNetVAD(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5924080;
  std::unique_ptr<NeuralNetVAD>::reset[abi:ne200100](this + 81, 0);
  std::unique_ptr<caulk::concurrent::messenger>::~unique_ptr[abi:ne200100](this + 96);
  std::unique_ptr<DirectionalVAD>::reset[abi:ne200100](this + 95, 0);
  v2 = *(this + 92);
  if (v2)
  {
    *(this + 93) = v2;
    operator delete(v2);
  }

  std::unique_ptr<NeuralNetVAD>::reset[abi:ne200100](this + 81, 0);
  v3 = (this + 568);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v3);

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUMultiChanEchoCanceler::ValidFormat(AUMultiChanEchoCanceler *this, const AudioStreamBasicDescription *a2, int a3, AudioStreamBasicDescription *a4)
{
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    if ((a4->mFormatFlags & 0x20) != 0)
    {
      result = 1;
      if (a3)
      {
        return result;
      }

      goto LABEL_5;
    }

    result = a4->mChannelsPerFrame == 1;
  }

  if (a3)
  {
    return result;
  }

LABEL_5:
  if (a4->mChannelsPerFrame == 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t AUMultiChanEchoCanceler::SupportedNumChannels(AUMultiChanEchoCanceler *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMultiChanEchoCanceler::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUMultiChanEchoCanceler::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUMultiChanEchoCanceler::GetParameterInfo(AUMultiChanEchoCanceler *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0x38)
  {
    v6 = *(&off_1E866B6E8 + a3);
    v7 = dword_1DE0D860C[a3];
    v8 = flt_1DE0D86F0[a3];
    v9 = flt_1DE0D87D4[a3];
    v10 = flt_1DE0D88B8[a3];
    v11 = dword_1DE0D899C[a3];
    buffer->cfNameString = v6;
    buffer->flags = 1207959552;
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

uint64_t AUMultiChanEchoCanceler::Render(AUMultiChanEchoCanceler *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v12 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v12 || !*(v12 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v14)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    ausdk::AUBufferList::CopyBufferContentsTo(v9 + 6, (*(v11 + 152) + 48));
    return 0;
  }

  return result;
}

uint64_t AUMultiChanEchoCanceler::ProcessMultipleBufferLists(AUMultiChanEchoCanceler *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v8 = *(this + 84);
  if (v8 != a3)
  {
    printf("AUMultiChanEchoCanceler::ProcessMultipleBufferLists error - wrong (%d) block size expected (%d)", a3, v8);
    return 4294956422;
  }

  v103 = 0.0;
  if (a6 < 2)
  {
    mData = 0;
    goto LABEL_7;
  }

  mData = a7[1]->mBuffers[0].mData;
  if (a6 == 2)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = a7[2]->mBuffers[0].mData;
LABEL_8:
  v14 = (*a5)->mBuffers[0].mData;
  v15 = a5[1]->mBuffers[0].mData;
  v16 = (*a7)->mBuffers[0].mData;
  v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_116;
  }

  Parameter = ausdk::AUElement::GetParameter(v17, 2u);
  if (((*(*this + 576))(this) & 1) == 0 && *(this + 86))
  {
    if (v14)
    {
      v20 = v15 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v13 = 0xFFFFFFFFLL;
      v21 = 0.0;
    }

    else
    {
      v27 = *(this + 84);
      v28 = 4 * v27;
      memcpy(*(this + 97), v15, v28);
      v29 = *(this + 191);
      __dst = mData;
      if ((v29 | 2) == 3)
      {
        if (*(this + 192) >= 2)
        {
          MEMORY[0x1E12BE990](v15, 1, *(this + 97) + 4 * v27, 1, v27);
          if (*(this + 192) >= 3)
          {
            MEMORY[0x1E12BE7F0](v15, 1, *(this + 97) + 4 * v27, 1, *(this + 97) + 8 * v27, 1, v27);
          }
        }

        if (*(this + 191) == 3 && *(this + 193) >= 2)
        {
          v30 = 1;
          v31 = 32;
          do
          {
            memcpy((*(this + 97) + 4 * (v30++ + *(this + 192) - 1) * v27), *(&a5[1]->mNumberBuffers + v31), v28);
            v31 += 16;
          }

          while (v30 < *(this + 193));
        }
      }

      else if (v29 == 2 && *(this + 193) >= 2)
      {
        v32 = 4 * v27;
        v33 = 1;
        v34 = 32;
        v35 = v32;
        do
        {
          memcpy((*(this + 97) + v35), *(&a5[1]->mNumberBuffers + v34), v28);
          ++v33;
          v35 += v32;
          v34 += 16;
        }

        while (v33 < *(this + 193));
      }

      if (*(this + 191) == 2)
      {
        v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v37 & 1) == 0)
        {
          goto LABEL_116;
        }

        **(*(*(this + 86) + 8) + 120) = ausdk::AUElement::GetParameter(v36, 0x2Fu) != 0.0;
        if (*(this + 197) >= 2)
        {
          v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v39 & 1) == 0)
          {
            goto LABEL_116;
          }

          *(*(*(*(this + 86) + 8) + 120) + 1) = ausdk::AUElement::GetParameter(v38, 0x30u) != 0.0;
          if (*(this + 197) >= 3)
          {
            v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v41 & 1) == 0)
            {
              goto LABEL_116;
            }

            *(*(*(*(this + 86) + 8) + 120) + 2) = ausdk::AUElement::GetParameter(v40, 0x31u) != 0.0;
            if (*(this + 197) >= 4)
            {
              v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if ((v43 & 1) == 0)
              {
                goto LABEL_116;
              }

              *(*(*(*(this + 86) + 8) + 120) + 3) = ausdk::AUElement::GetParameter(v42, 0x32u) != 0.0;
              if (*(this + 197) >= 5)
              {
                v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if ((v45 & 1) == 0)
                {
                  goto LABEL_116;
                }

                *(*(*(*(this + 86) + 8) + 120) + 4) = ausdk::AUElement::GetParameter(v44, 0x33u) != 0.0;
                if (*(this + 197) >= 6)
                {
                  v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if ((v47 & 1) == 0)
                  {
                    goto LABEL_116;
                  }

                  *(*(*(*(this + 86) + 8) + 120) + 5) = ausdk::AUElement::GetParameter(v46, 0x34u) != 0.0;
                  if (*(this + 197) >= 7)
                  {
                    v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if ((v49 & 1) == 0)
                    {
                      goto LABEL_116;
                    }

                    *(*(*(*(this + 86) + 8) + 120) + 6) = ausdk::AUElement::GetParameter(v48, 0x35u) != 0.0;
                    if (*(this + 197) >= 8)
                    {
                      v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if ((v51 & 1) == 0)
                      {
                        goto LABEL_116;
                      }

                      *(*(*(*(this + 86) + 8) + 120) + 7) = ausdk::AUElement::GetParameter(v50, 0x36u) != 0.0;
                      if (*(this + 197) >= 9)
                      {
                        v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if ((v53 & 1) == 0)
                        {
                          goto LABEL_116;
                        }

                        v54 = ausdk::AUElement::GetParameter(v52, 0x37u) != 0.0;
                        v55 = *(*(*(this + 86) + 8) + 120);
                        *(v55 + 8) = v54;
                        v56 = *(this + 197);
                        if (v56 >= 10)
                        {
                          v57 = (v56 + 6) & 0xFFFFFFF0;
                          v58 = vdupq_n_s64(v56 - 10);
                          v59 = (v55 + 12);
                          v60 = 24;
                          do
                          {
                            v61 = vdupq_n_s64(v60 - 24);
                            v62 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v61, xmmword_1DE095160)));
                            if (vuzp1_s8(vuzp1_s16(v62, *v58.i8), *v58.i8).u8[0])
                            {
                              *(v59 - 3) = v54;
                            }

                            if (vuzp1_s8(vuzp1_s16(v62, *&v58), *&v58).i8[1])
                            {
                              *(v59 - 2) = v54;
                            }

                            if (vuzp1_s8(vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, vorrq_s8(v61, xmmword_1DE095150)))), *&v58).i8[2])
                            {
                              *(v59 - 1) = v54;
                              *v59 = v54;
                            }

                            v63 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v61, xmmword_1DE095220)));
                            if (vuzp1_s8(*&v58, vuzp1_s16(v63, *&v58)).i32[1])
                            {
                              v59[1] = v54;
                            }

                            if (vuzp1_s8(*&v58, vuzp1_s16(v63, *&v58)).i8[5])
                            {
                              v59[2] = v54;
                            }

                            if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, vorrq_s8(v61, xmmword_1DE0952D0))))).i8[6])
                            {
                              v59[3] = v54;
                              v59[4] = v54;
                            }

                            v64 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v61, xmmword_1DE0952C0)));
                            if (vuzp1_s8(vuzp1_s16(v64, *v58.i8), *v58.i8).u8[0])
                            {
                              v59[5] = v54;
                            }

                            if (vuzp1_s8(vuzp1_s16(v64, *&v58), *&v58).i8[1])
                            {
                              v59[6] = v54;
                            }

                            if (vuzp1_s8(vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, vorrq_s8(v61, xmmword_1DE0952B0)))), *&v58).i8[2])
                            {
                              v59[7] = v54;
                              v59[8] = v54;
                            }

                            v65 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v61, xmmword_1DE0952A0)));
                            if (vuzp1_s8(*&v58, vuzp1_s16(v65, *&v58)).i32[1])
                            {
                              v59[9] = v54;
                            }

                            if (vuzp1_s8(*&v58, vuzp1_s16(v65, *&v58)).i8[5])
                            {
                              v59[10] = v54;
                            }

                            if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, vorrq_s8(v61, xmmword_1DE095290))))).i8[6])
                            {
                              v59[11] = v54;
                              v59[12] = v54;
                            }

                            v60 += 16;
                            v59 += 16;
                            v57 -= 16;
                          }

                          while (v57);
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

      v66 = *(this + 97);
      v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v68 & 1) == 0)
      {
        goto LABEL_116;
      }

      v69 = ausdk::AUElement::GetParameter(v67, 4u);
      aec_v4::run_aec(*(this + 86), this + 166, this + 167, this + 168, this + 169, v66, v14, v16, &v103, v69, this + 190, this + 198);
      v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v71 & 1) == 0)
      {
        goto LABEL_116;
      }

      ausdk::AUElement::SetParameter(v70, 8u, *(this + 167));
      v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v73 & 1) == 0)
      {
        goto LABEL_116;
      }

      ausdk::AUElement::SetParameter(v72, 0x21u, *(this + 168));
      v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v75 & 1) == 0)
      {
        goto LABEL_116;
      }

      ausdk::AUElement::SetParameter(v74, 0x22u, *(this + 169));
      v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v77 & 1) == 0)
      {
        goto LABEL_116;
      }

      ausdk::AUElement::SetParameter(v76, 0x25u, *(this + 190));
      v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v79 & 1) == 0)
      {
        goto LABEL_116;
      }

      v21 = v103;
      ausdk::AUElement::SetParameter(v78, 0x2Du, v103);
      v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v81 & 1) == 0)
      {
        goto LABEL_116;
      }

      ausdk::AUElement::SetParameter(v80, 0x2Eu, *(this + 198));
      if (v12)
      {
        memcpy(v12, *(*(*(this + 86) + 56) + 112), 4 * *(this + 84));
      }

      if (__dst)
      {
        memcpy(__dst, *(*(*(this + 86) + 56) + 72), 4 * *(this + 84));
      }

      if (Parameter == 0.0)
      {
        __C = 0;
        v104 = 0.0;
        v82 = *(this + 88);
        v83 = *(this + 87);
        v84 = *(this + 86);
        v85 = 16;
        if (*(*(v84 + 48) + 592) > 0)
        {
          v85 = 40;
        }

        memcpy(*(this + 87), *(*(v84 + v85) + 48), 4 * *(*(v84 + v85) + 88));
        *&v86 = 0.0;
        if (*(*(*(this + 86) + 48) + 232) || (v87 = ((v82 - v83) >> 2), MEMORY[0x1E12BE9A0](*(this + 87), 1, *(this + 89), 1, *(this + 91), 1, v87, 0.0), MEMORY[0x1E12BE990](*(this + 91), 1, *(this + 91), 1, v87), vDSP_sve(*(this + 91), 1, &__C + 1, v87), MEMORY[0x1E12BE990](*(this + 89), 1, *(this + 93), 1, v87), vDSP_sve(*(this + 93), 1, &__C, v87), MEMORY[0x1E12BE990](*(this + 87), 1, *(this + 93), 1, v87), vDSP_sve(*(this + 93), 1, &v104, v87), v88 = *&__C + 0.00000001, *&__C = (v104 * 0.2) + (v88 * 0.8), v89 = *(&__C + 1) * 100.0 / *&__C, *&v86 = 800.0, v89 > 800.0))
        {
          v89 = *&v86;
        }

        std::valarray<float>::__assign_range(this + 712, *(this + 87), *(this + 88));
      }

      else
      {
        v89 = 0.0;
      }

      v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v91 & 1) == 0)
      {
LABEL_116:
        abort();
      }

      ausdk::AUElement::SetParameter(v90, 3u, v89);
      v13 = 0;
    }

    v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v93)
    {
      v94 = ausdk::AUElement::GetParameter(v92, 0x23u);
      v95 = *(this + 170);
      if (v21 >= v95)
      {
        v96 = v21;
      }

      else
      {
        v96 = *(this + 170);
      }

      if (v96 >= *(this + 171))
      {
        v97 = v96;
      }

      else
      {
        v97 = *(this + 171);
      }

      *(this + 171) = v95;
      *(this + 170) = v21;
      v98 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v97 <= v94)
      {
        if (v99)
        {
          v100 = 0.0;
          goto LABEL_114;
        }
      }

      else if (v99)
      {
        v100 = 1.0;
LABEL_114:
        ausdk::AUElement::SetParameter(v98, 0x24u, v100);
        return v13;
      }
    }

    goto LABEL_116;
  }

  if (v14 != v16)
  {
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    memcpy(v16, v14, (*(Element + 104) * a3));
    v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v24 & 1) == 0)
    {
      goto LABEL_116;
    }

    ausdk::AUElement::SetParameter(v23, 3u, 0.0);
    v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v26 & 1) == 0)
    {
      goto LABEL_116;
    }

    ausdk::AUElement::SetParameter(v25, 0x24u, 0.0);
  }

  return 0;
}

uint64_t AUMultiChanEchoCanceler::SetParameter(AUMultiChanEchoCanceler *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a3)
  {
LABEL_2:

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }

  if (a2 > 0x29 || ((1 << a2) & 0x30000000001) == 0)
  {
    a3 = 0;
    goto LABEL_2;
  }

  if (*(this + 17) == 1)
  {
    ++*(this + 133);
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a5);
  return 0;
}

uint64_t AUMultiChanEchoCanceler::SetProperty(AUMultiChanEchoCanceler *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
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

uint64_t AUMultiChanEchoCanceler::GetProperty(AUMultiChanEchoCanceler *this, int a2, int a3, unsigned int a4, CFArrayRef *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 3799)
  {
    if (a2 == 3800 || a2 == 103800)
    {
      v10 = *(this + 86);
      v11 = 16;
      if (*(*(v10 + 48) + 592) > 0)
      {
        v11 = 40;
      }

      memcpy(*(this + 87), *(*(v10 + v11) + 48), 4 * *(*(v10 + v11) + 88));
      if (a2 == 103800)
      {
        __p = 0;
        v13 = 0;
        v14 = 0;
        std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(*(this + 87), (*(this + 87) + 4 * (*(this + 197) * *(this + 135))), &__p);
        *a5 = applesauce::CF::details::make_CFArrayRef<float>(&__p);
        if (__p)
        {
          v13 = __p;
          operator delete(__p);
        }
      }

      else
      {
        memcpy(a5, *(this + 87), 4 * *(this + 135) * *(this + 197));
      }

      return 0;
    }
  }

  else
  {
    if (a2 == 21)
    {
      v9 = (*(*this + 576))(this);
      result = 0;
      goto LABEL_18;
    }

    if (a2 == 3700)
    {
      result = 0;
      v9 = *(this + 376);
LABEL_18:
      *a5 = v9;
    }
  }

  return result;
}

void sub_1DDDEF60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(_DWORD *a1, _DWORD *a2, const void **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a3[1];
    do
    {
      v7 = a3[2];
      if (v6 >= v7)
      {
        v8 = *a3;
        v9 = v6 - *a3;
        v10 = v9 >> 2;
        v11 = (v9 >> 2) + 1;
        if (v11 >> 62)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - v8;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::allocator<float>::allocate_at_least[abi:ne200100](a3, v13);
        }

        *(4 * v10) = *v5;
        v6 = (4 * v10 + 4);
        memcpy(0, v8, v9);
        v14 = *a3;
        *a3 = 0;
        a3[1] = v6;
        a3[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6 = *v5;
        v6 += 4;
      }

      a3[1] = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

uint64_t AUMultiChanEchoCanceler::GetPropertyInfo(AUMultiChanEchoCanceler *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 3799)
  {
    if (a2 == 3800)
    {
      *a6 = 0;
      v8 = 4 * *(this + 135) * *(this + 197);
    }

    else
    {
      if (a2 != 103800)
      {
        return result;
      }

      *a6 = 0;
      v8 = 8;
    }
  }

  else
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

  result = 0;
  *a5 = v8;
  return result;
}

void AUMultiChanEchoCanceler::Cleanup(AUMultiChanEchoCanceler *this)
{
  v2 = *(this + 86);
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      if (!*v3 || (free(*v3), *v3 = 0, v2 = *(this + 86), (v3 = *(v2 + 64)) != 0))
      {
        free(v3);
        *(v2 + 64) = 0;
        v2 = *(this + 86);
      }
    }

    v4 = *(v2 + 56);
    if (v4 && *v4)
    {
      free(*v4);
      *v4 = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v5 = *(v4 + 8);
    if (v5)
    {
      free(v5);
      *(v4 + 8) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v6 = *(v4 + 16);
    if (v6)
    {
      free(v6);
      *(v4 + 16) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v7 = *(v4 + 32);
    if (v7)
    {
      free(v7);
      *(v4 + 32) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v8 = *(v4 + 48);
    if (v8)
    {
      free(v8);
      *(v4 + 48) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v9 = *(v4 + 56);
    if (v9)
    {
      free(v9);
      *(v4 + 56) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v10 = *(v4 + 64);
    if (v10)
    {
      free(v10);
      *(v4 + 64) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v11 = *(v4 + 72);
    if (v11)
    {
      free(v11);
      *(v4 + 72) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v12 = *(v4 + 80);
    if (v12)
    {
      free(v12);
      *(v4 + 80) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v13 = *(v4 + 112);
    if (v13)
    {
      free(v13);
      *(v4 + 112) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v14 = *(v4 + 88);
    if (v14)
    {
      free(v14);
      *(v4 + 88) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v15 = *(v4 + 240);
    if (v15)
    {
      free(v15);
      *(v4 + 240) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v16 = *(v4 + 248);
    if (v16)
    {
      free(v16);
      *(v4 + 248) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v17 = *(v4 + 256);
    if (v17)
    {
      free(v17);
      *(v4 + 256) = 0;
      v2 = *(this + 86);
      v4 = *(v2 + 56);
    }

    v18 = *(v4 + 272);
    if (v18)
    {
      free(v18);
      *(v4 + 272) = 0;
      v2 = *(this + 86);
    }

    if (!*(*v2 + 100))
    {
      v19 = *(v2 + 56);
      v20 = v19[15];
      if (v20)
      {
        free(v20);
        v19[15] = 0;
        v2 = *(this + 86);
        v19 = *(v2 + 56);
      }

      v21 = v19[16];
      if (v21)
      {
        free(v21);
        v19[16] = 0;
        v2 = *(this + 86);
        v19 = *(v2 + 56);
      }

      v22 = v19[17];
      if (v22)
      {
        free(v22);
        v19[17] = 0;
        v2 = *(this + 86);
        v19 = *(v2 + 56);
      }

      v23 = v19[18];
      if (v23)
      {
        free(v23);
        v19[18] = 0;
        v2 = *(this + 86);
        v19 = *(v2 + 56);
      }

      v24 = v19[20];
      if (v24)
      {
        free(v24);
        v19[20] = 0;
        v2 = *(this + 86);
        v19 = *(v2 + 56);
      }

      v25 = v19[22];
      if (v25)
      {
        free(v25);
        v19[22] = 0;
        v2 = *(this + 86);
        v19 = *(v2 + 56);
      }

      v26 = v19[23];
      if (v26)
      {
        free(v26);
        v19[23] = 0;
        v2 = *(this + 86);
        v19 = *(v2 + 56);
      }

      v27 = v19[24];
      if (v27)
      {
        free(v27);
        v19[24] = 0;
        v2 = *(this + 86);
        v19 = *(v2 + 56);
      }

      v28 = v19[26];
      if (v28)
      {
        if (!*v28 || (free(*v28), *v28 = 0, v2 = *(this + 86), v19 = *(v2 + 56), (v28 = v19[26]) != 0))
        {
          free(v28);
          v19[26] = 0;
          v2 = *(this + 86);
          v19 = *(v2 + 56);
        }
      }

      v29 = v19[27];
      if (v29)
      {
        free(v29);
        v19[27] = 0;
        v2 = *(this + 86);
        v19 = *(v2 + 56);
      }

      v30 = v19[28];
      if (v30)
      {
        if (!*v30 || (free(*v30), *v30 = 0, v2 = *(this + 86), v19 = *(v2 + 56), (v30 = v19[28]) != 0))
        {
          free(v30);
          v19[28] = 0;
          v2 = *(this + 86);
          v19 = *(v2 + 56);
        }
      }

      v31 = v19[29];
      if (v31)
      {
        free(v31);
        v19[29] = 0;
        v2 = *(this + 86);
      }

      dft_v3::dftRemove((v2 + 72));
      v2 = *(this + 86);
    }

    v32 = *(v2 + 56);
    v33 = v32[38];
    if (v33)
    {
      free(v33);
      v32[38] = 0;
      v2 = *(this + 86);
      v32 = *(v2 + 56);
    }

    v34 = v32[40];
    if (v34)
    {
      free(v34);
      v32[40] = 0;
      v2 = *(this + 86);
      v32 = *(v2 + 56);
    }

    v35 = v32[42];
    if (v35)
    {
      free(v35);
      v32[42] = 0;
      v2 = *(this + 86);
      v32 = *(v2 + 56);
    }

    v36 = v32[44];
    if (v36)
    {
      free(v36);
      v32[44] = 0;
      v2 = *(this + 86);
      v32 = *(v2 + 56);
    }

    v37 = v32[45];
    if (v37)
    {
      free(v37);
      v32[45] = 0;
      v2 = *(this + 86);
      v32 = *(v2 + 56);
    }

    v38 = v32[46];
    if (v38)
    {
      free(v38);
      v32[46] = 0;
      v2 = *(this + 86);
    }

    dft_v3::dftRemove((v2 + 80));
    lmsfilt_v3::removeLmsFilter((*(this + 86) + 88));
    lmsfilt_v3::removeLmsFilter((*(this + 86) + 96));
    v39 = *(this + 86);
    if (*(*v39 + 104) >= 1)
    {
      lmsfilt_v3::removeLmsFilter(v39 + 13);
      lmsfilt_v3::removeLmsFilter((*(this + 86) + 112));
      v39 = *(this + 86);
      v40 = v39[7];
      v41 = *(v40 + 288);
      if (v41)
      {
        free(v41);
        *(v40 + 288) = 0;
        v39 = *(this + 86);
        v40 = v39[7];
      }

      v42 = *(v40 + 296);
      if (v42)
      {
        free(v42);
        *(v40 + 296) = 0;
        v39 = *(this + 86);
      }
    }

    v43 = v39[6];
    if (v43)
    {
      v44 = v43[39];
      if (v44)
      {
        free(v44);
        v43[39] = 0;
        v43 = v39[6];
      }

      v45 = v43[41];
      if (v45)
      {
        free(v45);
        v43[41] = 0;
        v43 = v39[6];
      }

      v46 = v43[1];
      if (v46)
      {
        free(v46);
        v43[1] = 0;
        v43 = v39[6];
      }

      v47 = v43[6];
      if (v47)
      {
        free(v47);
        v43[6] = 0;
        v43 = v39[6];
      }

      v48 = v43[7];
      if (v48)
      {
        free(v48);
        v43[7] = 0;
        v43 = v39[6];
      }

      v49 = v43[8];
      if (v49)
      {
        free(v49);
        v43[8] = 0;
        v43 = v39[6];
      }

      v50 = v43[9];
      if (v50)
      {
        free(v50);
        v43[9] = 0;
        v43 = v39[6];
      }

      v51 = v43[10];
      if (v51)
      {
        free(v51);
        v43[10] = 0;
        v43 = v39[6];
      }

      v52 = v43[15];
      if (v52)
      {
        free(v52);
        v43[15] = 0;
        v43 = v39[6];
      }

      v53 = v43[13];
      if (v53)
      {
        free(v53);
        v43[13] = 0;
        v43 = v39[6];
      }

      v54 = v43[79];
      if (v54)
      {
        free(v54);
        v43[79] = 0;
        v43 = v39[6];
      }

      v55 = v43[14];
      if (v55)
      {
        free(v55);
        v43[14] = 0;
        v43 = v39[6];
      }

      v56 = v43[12];
      if (v56)
      {
        free(v56);
        v43[12] = 0;
        v43 = v39[6];
      }

      v57 = v43[20];
      if (v57)
      {
        free(v57);
        v43[20] = 0;
        v43 = v39[6];
      }

      v58 = v43[21];
      if (v58)
      {
        free(v58);
        v43[21] = 0;
        v43 = v39[6];
      }

      v59 = v43[22];
      if (v59)
      {
        free(v59);
        v43[22] = 0;
        v43 = v39[6];
      }

      v60 = v43[23];
      if (v60)
      {
        free(v60);
        v43[23] = 0;
        v43 = v39[6];
      }

      v61 = v43[24];
      if (v61)
      {
        free(v61);
        v43[24] = 0;
        v43 = v39[6];
      }

      v62 = v43[25];
      if (v62)
      {
        free(v62);
        v43[25] = 0;
        v43 = v39[6];
      }

      v63 = v43[26];
      if (v63)
      {
        free(v63);
        v43[26] = 0;
        v43 = v39[6];
      }

      v64 = v43[37];
      if (v64)
      {
        free(v64);
        v43[37] = 0;
        v43 = v39[6];
      }

      v65 = v43[38];
      if (v65)
      {
        free(v65);
        v43[38] = 0;
        v43 = v39[6];
      }

      v66 = v43[56];
      if (v66)
      {
        free(v66);
        v43[56] = 0;
        v43 = v39[6];
      }

      v67 = v43[57];
      if (v67)
      {
        free(v67);
        v43[57] = 0;
        v43 = v39[6];
      }

      v68 = v43[58];
      if (v68)
      {
        free(v68);
        v43[58] = 0;
        v43 = v39[6];
      }

      v69 = v43[59];
      if (v69)
      {
        free(v69);
        v43[59] = 0;
        v43 = v39[6];
      }

      v70 = v43[62];
      if (v70)
      {
        free(v70);
        v43[62] = 0;
        v43 = v39[6];
      }

      v71 = v43[63];
      if (v71)
      {
        free(v71);
        v43[63] = 0;
        v43 = v39[6];
      }

      v72 = v43[60];
      if (v72)
      {
        free(v72);
        v43[60] = 0;
        v43 = v39[6];
      }

      v73 = v43[61];
      if (!v73 || (free(v73), v43[61] = 0, (v43 = v39[6]) != 0))
      {
        free(v43);
        v39[6] = 0;
      }
    }

    v74 = *(this + 86);
    v75 = v74[1];
    if (v75)
    {
      v76 = *v74;
      if (*v75)
      {
        free(*v75);
        *v75 = 0;
        v75 = v74[1];
      }

      v77 = *(v75 + 8);
      if (v77)
      {
        free(v77);
        *(v75 + 8) = 0;
        v75 = v74[1];
      }

      v78 = *(v75 + 32);
      if (v78)
      {
        free(v78);
        *(v75 + 32) = 0;
        v75 = v74[1];
      }

      if (!*(v76 + 100))
      {
        v79 = *(v75 + 56);
        if (v79 && *v79)
        {
          free(*v79);
          *v79 = 0;
          v75 = v74[1];
        }

        v80 = *(v75 + 64);
        if (v80 && *v80)
        {
          free(*v80);
          *v80 = 0;
          v75 = v74[1];
        }

        v81 = *(v75 + 56);
        if (v81)
        {
          free(v81);
          *(v75 + 56) = 0;
          v75 = v74[1];
        }

        v82 = *(v75 + 64);
        if (v82)
        {
          free(v82);
          *(v75 + 64) = 0;
          v75 = v74[1];
        }
      }

      v83 = *(v75 + 88);
      if (v83)
      {
        free(v83);
        *(v75 + 88) = 0;
        v75 = v74[1];
      }

      v84 = *(v75 + 16);
      if (v84)
      {
        free(v84);
        *(v75 + 16) = 0;
        v75 = v74[1];
      }

      v85 = *(v75 + 24);
      if (v85)
      {
        free(v85);
        *(v75 + 24) = 0;
        v75 = v74[1];
      }

      v86 = *(v75 + 96);
      if (v86)
      {
        free(v86);
        *(v75 + 96) = 0;
        v75 = v74[1];
      }

      v87 = *(v75 + 104);
      if (v87)
      {
        free(v87);
        *(v75 + 104) = 0;
        v75 = v74[1];
      }

      v88 = *(v75 + 120);
      if (v88)
      {
        free(v88);
        *(v75 + 120) = 0;
        v75 = v74[1];
      }

      v89 = *(v75 + 128);
      if (v89)
      {
        free(v89);
        *(v75 + 128) = 0;
        v75 = v74[1];
      }

      v90 = *(v75 + 136);
      if (v90)
      {
        free(v90);
        *(v75 + 136) = 0;
        v75 = v74[1];
      }

      v91 = *(v75 + 144);
      if (!v91 || (free(v91), *(v75 + 144) = 0, (v75 = v74[1]) != 0))
      {
        free(v75);
        v74[1] = 0;
      }
    }

    dft_v3::dftRemove(*(this + 86));
    v92 = *(this + 86);
    v93 = v92[7];
    if (!v93 || (free(v93), v92[7] = 0, (v92 = *(this + 86)) != 0))
    {
      free(v92);
    }

    *(this + 86) = 0;
  }

  v94 = *(this + 97);
  if (v94)
  {
    free(v94);
    *(this + 97) = 0;
  }
}

uint64_t AUMultiChanEchoCanceler::Initialize(AUMultiChanEchoCanceler *this)
{
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
  if (v4)
  {
    LODWORD(v5) = (*(*v4 + 24))(v4);
  }

  else
  {
    v5 = (*(this + 19) - *(this + 18)) >> 3;
  }

  if (v3 >= 2)
  {
    v6 = 1;
    while (1)
    {
      Element = ausdk::AUScope::GetElement((this + 80), v6 - 1);
      if (!Element)
      {
        break;
      }

      v8 = Element;
      v9 = ausdk::AUScope::GetElement((this + 80), v6);
      if (!v9)
      {
        break;
      }

      if (*(v8 + 80) != *(v9 + 80))
      {
        return 4294956428;
      }

      if (v3 == ++v6)
      {
        goto LABEL_13;
      }
    }

LABEL_79:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_13:
  if (v5 >= 2)
  {
    v10 = 1;
    do
    {
      v11 = ausdk::AUScope::GetElement((this + 128), v10 - 1);
      if (!v11)
      {
        goto LABEL_79;
      }

      v12 = v11;
      v13 = ausdk::AUScope::GetElement((this + 128), v10);
      if (!v13)
      {
        goto LABEL_79;
      }

      if (*(v12 + 80) != *(v13 + 80))
      {
        return 4294956428;
      }
    }

    while (v5 != ++v10);
  }

  v14 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v14)
  {
    goto LABEL_79;
  }

  v15 = *(v14 + 80);
  v16 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v16)
  {
    goto LABEL_79;
  }

  if (v15 == *(v16 + 80))
  {
    *(this + 134) = *(this + 133);
    *(this + 664) = 0u;
    *(this + 85) = vdup_n_s32(0xC2C80000);
    v18 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (!v18)
    {
      goto LABEL_79;
    }

    *(this + 196) = *(v18 + 108);
    v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v20)
    {
      *(this + 198) = ausdk::AUElement::GetParameter(v19, 0x2Eu);
      v21 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v21)
      {
        goto LABEL_79;
      }

      v22 = v21;
      v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v24)
      {
        Parameter = ausdk::AUElement::GetParameter(v23, 0);
        v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v27)
        {
          v28 = ausdk::AUElement::GetParameter(v26, 0x28u);
          v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v30)
          {
            v31 = ausdk::AUElement::GetParameter(v29, 0x29u);
            v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v33)
            {
              *(this + 136) = ausdk::AUElement::GetParameter(v32, 0x27u);
              if (!Parameter)
              {
                return 4294956428;
              }

              if (v28 <= 5)
              {
                v34 = 5;
              }

              else
              {
                v34 = v28;
              }

              (*(*this + 64))(this);
              *(this + 139) = *(v22 + 80);
              v35 = *(this + 84);
              v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v37)
              {
                *(this + 191) = ausdk::AUElement::GetParameter(v36, 0x2Au);
                v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v39)
                {
                  *(this + 192) = ausdk::AUElement::GetParameter(v38, 0x2Bu);
                  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v41)
                  {
                    v42 = ausdk::AUElement::GetParameter(v40, 0x2Cu);
                    if (*(this + 196) < v42)
                    {
                      v42 = *(this + 196);
                    }

                    *(this + 193) = v42;
                    v43 = *(this + 191);
                    if (v43 == 3)
                    {
                      v42 = v42 + *(this + 192) - 1;
                    }

                    else if (v43 != 2)
                    {
                      if (v43 == 1)
                      {
                        v42 = *(this + 192);
                      }

                      else
                      {
                        v42 = 1;
                      }
                    }

                    *(this + 197) = v42;
                    v44 = 4 * v35 * v42;
                    v45 = malloc_type_malloc(v44, 0xBA45DD2EuLL);
                    v46 = v45;
                    if (!v45 && v44)
                    {
                      exception = __cxa_allocate_exception(8uLL);
                      v105 = std::bad_alloc::bad_alloc(exception);
                    }

                    bzero(v45, v44);
                    *(this + 97) = v46;
                    v47 = *(this + 139) / (v35 * 1000.0);
                    v48 = (ceilf(v47 * Parameter) * v35);
                    v49 = (ceilf(v47 * v34) * v35);
                    *(this + 135) = v48;
                    v50 = (ceilf(v47 * v31) * v35);
                    *(this + 137) = v49;
                    if (v49 >= v50)
                    {
                      v51 = v35 + v49;
                    }

                    else
                    {
                      v51 = v50;
                    }

                    *(this + 138) = v51;
                    if (v51 >= v48)
                    {
                      *(this + 138) = v48;
                      *(this + 68) = 0;
                    }

                    v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if (v53)
                    {
                      *(this + 141) = ausdk::AUElement::GetParameter(v52, 9u);
                      v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if (v55)
                      {
                        *(this + 142) = ausdk::AUElement::GetParameter(v54, 0xAu);
                        v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v57)
                        {
                          *(this + 144) = ausdk::AUElement::GetParameter(v56, 0xBu);
                          v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                          if (v59)
                          {
                            *(this + 145) = ausdk::AUElement::GetParameter(v58, 0xCu);
                            v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                            if (v61)
                            {
                              *(this + 146) = ausdk::AUElement::GetParameter(v60, 0xDu);
                              v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                              if (v63)
                              {
                                *(this + 147) = ausdk::AUElement::GetParameter(v62, 0xEu);
                                v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                if (v65)
                                {
                                  *(this + 148) = ausdk::AUElement::GetParameter(v64, 0xFu);
                                  v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                  if (v67)
                                  {
                                    *(this + 149) = ausdk::AUElement::GetParameter(v66, 0x10u);
                                    v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                    if (v69)
                                    {
                                      *(this + 150) = ausdk::AUElement::GetParameter(v68, 0x11u);
                                      v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                      if (v71)
                                      {
                                        *(this + 151) = ausdk::AUElement::GetParameter(v70, 0x12u);
                                        v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                        if (v73)
                                        {
                                          *(this + 152) = ausdk::AUElement::GetParameter(v72, 0x13u);
                                          v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                          if (v75)
                                          {
                                            *(this + 153) = ausdk::AUElement::GetParameter(v74, 0x14u);
                                            v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                            if (v77)
                                            {
                                              *(this + 154) = ausdk::AUElement::GetParameter(v76, 0x15u);
                                              v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                              if (v79)
                                              {
                                                *(this + 155) = ausdk::AUElement::GetParameter(v78, 0x16u);
                                                v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                if (v81)
                                                {
                                                  *(this + 158) = ausdk::AUElement::GetParameter(v80, 0x17u);
                                                  v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                  if (v83)
                                                  {
                                                    *(this + 159) = ausdk::AUElement::GetParameter(v82, 0x18u);
                                                    v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                    if (v85)
                                                    {
                                                      *(this + 156) = ausdk::AUElement::GetParameter(v84, 0x19u);
                                                      v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                      if (v87)
                                                      {
                                                        *(this + 157) = ausdk::AUElement::GetParameter(v86, 0x1Au);
                                                        v88 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                        if (v89)
                                                        {
                                                          *(this + 160) = ausdk::AUElement::GetParameter(v88, 0x1Bu);
                                                          v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                          if (v91)
                                                          {
                                                            *(this + 644) = ausdk::AUElement::GetParameter(v90, 0x1Cu) != 0.0;
                                                            v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                            if (v93)
                                                            {
                                                              *(this + 162) = ausdk::AUElement::GetParameter(v92, 0x1Du);
                                                              v94 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                              if (v95)
                                                              {
                                                                *(this + 163) = ausdk::AUElement::GetParameter(v94, 0x1Eu);
                                                                v96 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                                if (v97)
                                                                {
                                                                  *(this + 164) = ausdk::AUElement::GetParameter(v96, 0x1Fu);
                                                                  v98 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                                  if (v99)
                                                                  {
                                                                    *(this + 165) = ausdk::AUElement::GetParameter(v98, 0x20u);
                                                                    v100 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                                    if (v101)
                                                                    {
                                                                      *(this + 140) = ausdk::AUElement::GetParameter(v100, 0x26u);
                                                                      v102 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                                      if (v103)
                                                                      {
                                                                        *(this + 143) = ausdk::AUElement::GetParameter(v102, 0x38u);
                                                                        aec_v4::aec_init(this + 86, *(this + 139), *(this + 135), *(this + 84), *(this + 141), *(this + 142), *(this + 644), *(this + 140));
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

    abort();
  }

  return 4294956428;
}

void AUMultiChanEchoCanceler::~AUMultiChanEchoCanceler(AUMultiChanEchoCanceler *this)
{
  AUMultiChanEchoCanceler::~AUMultiChanEchoCanceler(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59242F8;
  AUMultiChanEchoCanceler::Cleanup(this);
  v2 = *(this + 93);
  if (v2)
  {
    v3 = *(this + 94);
    if (v3 != v2)
    {
      *(this + 94) = &v3[(v2 - v3 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *(this + 93) = 0;
    *(this + 94) = 0;
  }

  v4 = *(this + 91);
  if (v4)
  {
    v5 = *(this + 92);
    if (v5 != v4)
    {
      *(this + 92) = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v4);
    *(this + 91) = 0;
    *(this + 92) = 0;
  }

  v6 = *(this + 89);
  if (v6)
  {
    v7 = *(this + 90);
    if (v7 != v6)
    {
      *(this + 90) = &v7[(v6 - v7 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v6);
    *(this + 89) = 0;
    *(this + 90) = 0;
  }

  v8 = *(this + 87);
  if (v8)
  {
    v9 = *(this + 88);
    if (v9 != v8)
    {
      *(this + 88) = &v9[(v8 - v9 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v8);
    *(this + 87) = 0;
    *(this + 88) = 0;
  }

  ausdk::AUBase::~AUBase(this);
}