uint64_t AUFIREngine::GetNumberOfOutputChannels(AUFIREngine *this)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  return *(Element + 108);
}

AUFIREngineKernel *std::unique_ptr<AUFIREngineKernel>::reset[abi:ne200100](AUFIREngineKernel **a1, AUFIREngineKernel *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AUFIREngineKernel::~AUFIREngineKernel(result);

    JUMPOUT(0x1E12BD150);
  }

  return result;
}

void AUFIREngineKernel::~AUFIREngineKernel(AUFIREngineKernel *this)
{
  MEMORY[0x1E12BC1E0](this + 2712);
  for (i = 0; i != -304; i -= 152)
  {
    v3 = this + i;
    v12 = (this + i + 2672);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (this + i + 2640);
    std::vector<std::vector<float *>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v4 = *(this + i + 2632);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v3 + 325);
    if (v5)
    {
      *(this + i + 2608) = v5;
      operator delete(v5);
    }

    v6 = *(this + i + 2576);
    if (v6)
    {
      *(this + i + 2584) = v6;
      operator delete(v6);
    }

    v12 = (v3 + 2552);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
  }

  v12 = (this + 2360);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (this + 2336);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (this + 2312);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
  *(this + 24) = &unk_1F5933058;
  ca::concurrent::deferred_deletion_queue<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::~deferred_deletion_queue(this + 256);
  v7 = *(this + 22);
  *(this + 22) = 0;
  if (v7)
  {
    v12 = v7;
    std::vector<std::shared_ptr<IR::DataLoaderSourceWithTruncation>>::__destroy_vector::operator()[abi:ne200100](&v12);
    MEMORY[0x1E12BD160](v7, 0x20C40960023A9);
  }

  v12 = (this + 152);
  std::vector<AUFIREngineKernel::InputChannel>::__destroy_vector::operator()[abi:ne200100](&v12);
  v8 = *(this + 18);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  CDSPSplitComplex::~CDSPSplitComplex((this + 104));
  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    *(this + 8) = v10;
    operator delete(v10);
  }

  v11 = *(this + 4);
  if (v11)
  {
    *(this + 5) = v11;
    operator delete(v11);
  }
}

uint64_t AUFIREngine::SetParameter(AUFIREngine *this, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  result = AUJBase::SetParameter(this, a2, a3, a4, a5);
  if (v7 != 1 && !(v5 | v6))
  {
    *(this + 632) = 1;
  }

  return result;
}

uint64_t AUFIREngine::SetProperty(void ***this, int a2, int a3, int a4, CFTypeRef *a5, int a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = 4294956417;
  if (a4 | a3 || !a5)
  {
    return v6;
  }

  if (a2 != 1668179559)
  {
    if (a2 != 1717924720)
    {
      if (a2 != 1718186611)
      {
        return v6;
      }

      if (AUJBase::AUJBaseLogScope(void)::once != -1)
      {
        dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
      }

      if (AUJBase::AUJBaseLogScope(void)::scope)
      {
        v10 = *AUJBase::AUJBaseLogScope(void)::scope;
        if (!v10)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v28 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "AUFIREngine.mm";
        *&buf[12] = 1024;
        *&buf[14] = 331;
        _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting property FIRMatrices", buf, 0x12u);
      }

LABEL_62:
      v29 = CFGetTypeID(*a5);
      if (v29 == CFArrayGetTypeID())
      {
        v30 = *a5;
        if (!v30)
        {
          v48 = 0;
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        CFRetain(v30);
        v48 = v30;
        v31 = CFGetTypeID(v30);
        if (v31 != CFArrayGetTypeID())
        {
          v40 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v40, "Could not construct");
        }

        cf = 0;
        v44 = 0;
        v45 = 0;
        applesauce::CF::convert_as<std::vector<std::vector<std::vector<std::vector<float>>>>,0>(buf, v48);
        theDict[1] = 0;
        v47 = 0;
        theDict[0] = 0;
        if (v51 == 1)
        {
          std::vector<std::vector<std::vector<std::vector<float>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::vector<float>>>*,std::vector<std::vector<std::vector<float>>>*>(theDict, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
          if (v51)
          {
            v49 = buf;
            std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v49);
          }
        }

        else
        {
          cf = 0;
          v44 = 0;
          v45 = 0;
        }

        std::vector<std::vector<std::vector<std::vector<float>>>>::__vdeallocate(this + 80);
        *(this + 40) = *theDict;
        this[82] = v47;
        theDict[1] = 0;
        v47 = 0;
        theDict[0] = 0;
        *buf = theDict;
        std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](buf);
        *buf = &cf;
        std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](buf);
        *(this + 633) = 1;
        if (*(this + 17) == 1)
        {
          if (AUJBase::AUJBaseLogScope(void)::once != -1)
          {
            dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
          }

          if (AUJBase::AUJBaseLogScope(void)::scope)
          {
            v33 = *AUJBase::AUJBaseLogScope(void)::scope;
            if (!v33)
            {
              goto LABEL_88;
            }
          }

          else
          {
            v33 = MEMORY[0x1E69E9C10];
            v35 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "AUFIREngine.mm";
            *&buf[12] = 1024;
            *&buf[14] = 342;
            _os_log_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting new FIR matrix", buf, 0x12u);
          }

LABEL_88:
          AUFIREngineKernel::SetMatrixFIRs(this[83], this + 80);
        }

        ((*this)[54])(this, 1718186611, 0, 0);
        v6 = 0;
        v36 = v48;
        if (v48)
        {
          goto LABEL_90;
        }

        return v6;
      }

      return 4294956445;
    }

    if (AUJBase::AUJBaseLogScope(void)::once != -1)
    {
      dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
    }

    if (AUJBase::AUJBaseLogScope(void)::scope)
    {
      v11 = *AUJBase::AUJBaseLogScope(void)::scope;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AUFIREngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 413;
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting property SetParameters", buf, 0x12u);
    }

LABEL_25:
    if (a6 == 8)
    {
      applesauce::CF::DictionaryRef::from_get(theDict, *a5);
      if (!theDict[0])
      {
        v38 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v38, "Could not construct");
      }

      if (CFDictionaryGetCount(theDict[0]))
      {
        CFDictionaryApplyFunction(theDict[0], AUFIREngine::ParseSetParameters, this);
        *buf = 1;
        v14 = CFNumberCreate(0, kCFNumberIntType, buf);
        cf = v14;
        if (!v14)
        {
          v41 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v41, "Could not construct");
        }

        if (!theDict[0])
        {
          v42 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v42, "Could not construct");
        }

        if (!CFDictionaryContainsKey(theDict[0], v14) || (applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(buf, theDict), **buf) && CFDictionaryGetCount(**buf) >= 2)
        {
          *(this + 632) = 1;
        }

        ((*this)[54])(this, 1717924720, 0, 0);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (theDict[0])
      {
        CFRelease(theDict[0]);
      }

      return 0;
    }

    return 4294956445;
  }

  if (AUJBase::AUJBaseLogScope(void)::once != -1)
  {
    dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
  }

  if (AUJBase::AUJBaseLogScope(void)::scope)
  {
    v12 = *AUJBase::AUJBaseLogScope(void)::scope;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "AUFIREngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 355;
    _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting property ConfigPlist", buf, 0x12u);
  }

LABEL_43:
  if (a6 != 8)
  {
    return 4294956445;
  }

  applesauce::CF::DictionaryRef::from_get(&cf, *a5);
  if (*(this + 17) != 1)
  {
    GetFilterMatrix(buf, &cf);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__vdeallocate(this + 80);
    *(this + 40) = *buf;
    this[82] = *&buf[16];
    memset(buf, 0, sizeof(buf));
    theDict[0] = buf;
    goto LABEL_71;
  }

  GetFilterMatrix(buf, &cf);
  v16 = this[81];
  v17 = this[80];
  v18 = *buf;
  if (v16 - v17 != *&buf[8] - *buf)
  {
LABEL_79:
    std::vector<std::vector<std::vector<std::vector<float>>>>::__vdeallocate(this + 80);
    *(this + 40) = *buf;
    this[82] = *&buf[16];
    memset(buf, 0, sizeof(buf));
    theDict[0] = buf;
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](theDict);
    if (AUJBase::AUJBaseLogScope(void)::once != -1)
    {
      dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
    }

    if (AUJBase::AUJBaseLogScope(void)::scope)
    {
      v34 = *AUJBase::AUJBaseLogScope(void)::scope;
      if (!v34)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AUFIREngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 380;
      _os_log_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting new FIR matrix", buf, 0x12u);
    }

LABEL_94:

    AUFIREngineKernel::SetMatrixFIRs(this[83], this + 80);
  }

  while (v17 != v16)
  {
    v20 = *v17;
    v19 = v17[1];
    v21 = *v18;
    if (v19 - *v17 != *(v18 + 8) - *v18)
    {
      goto LABEL_79;
    }

    while (v20 != v19)
    {
      v23 = *v20;
      v22 = v20[1];
      v24 = *v21;
      if (v22 - *v20 != v21[1] - *v21)
      {
        goto LABEL_79;
      }

      while (v23 != v22)
      {
        v25 = *v23;
        v26 = v23[1];
        v27 = *v24;
        if (v26 - *v23 != *(v24 + 8) - *v24)
        {
          goto LABEL_79;
        }

        while (v25 != v26)
        {
          if (*v25 != *v27)
          {
            goto LABEL_79;
          }

          ++v25;
          ++v27;
        }

        v23 += 3;
        v24 += 24;
      }

      v20 += 3;
      v21 += 3;
    }

    v17 += 3;
    v18 += 24;
  }

  theDict[0] = buf;
LABEL_71:
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](theDict);
  *(this + 633) = 1;
  ((*this)[54])(this, 1668179559, 0, 0);
  v6 = 0;
  v36 = cf;
  if (cf)
  {
LABEL_90:
    CFRelease(v36);
  }

  return v6;
}

void sub_1DDFC01F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int buf, uint64_t a20, __int16 a21, int a22, __int16 a23, uint64_t a24, __int16 a25, int a26)
{
  applesauce::CF::NumberRef::~NumberRef(&a10);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a13);
  _Unwind_Resume(a1);
}

void GetFilterMatrix(const applesauce::CF::DictionaryRef *a1, CFDictionaryRef *a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (applesauce::CF::details::has_key<__CFString const* const&>(*a2, @"FIR_Matrices"))
  {
    v4 = *a2;
    if (!*a2)
    {
      v69 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v69, "Could not construct");
    }

    __src[0] = 0;
    __src[1] = 0;
    v89 = 0;
    v5 = applesauce::CF::details::at_key<__CFString const* const&>(v4, @"FIR_Matrices");
    if (v5)
    {
      applesauce::CF::convert_as<std::vector<std::vector<std::vector<std::vector<float>>>>,0>(&v92, v5);
      v91 = 0;
      v90 = 0uLL;
      if (v95)
      {
        std::vector<std::vector<std::vector<std::vector<float>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::vector<float>>>*,std::vector<std::vector<std::vector<float>>>*>(&v90, v92, v93, 0xAAAAAAAAAAAAAAABLL * ((v93 - v92) >> 3));
        if (v95)
        {
          v79 = &v92;
          std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v79);
        }

        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v92) = 0;
      LOBYTE(v95) = 0;
      v91 = 0;
      v90 = 0uLL;
    }

    __src[0] = 0;
    __src[1] = 0;
    v89 = 0;
LABEL_18:
    std::vector<std::vector<std::vector<std::vector<float>>>>::__vdeallocate(a1);
    *a1 = v90;
    *(a1 + 2) = v91;
    v91 = 0;
    v90 = 0uLL;
    v92 = &v90;
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v92);
    v92 = __src;
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v92);
    return;
  }

  if (!*a2)
  {
    v70 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v70, "Could not construct");
  }

  if (!applesauce::CF::details::has_key<__CFString const* const&>(*a2, @"FIR_NamedMatrices"))
  {
    return;
  }

  if (!*a2)
  {
    v71 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v71, "Could not construct");
  }

  if (!applesauce::CF::details::has_key<__CFString const* const&>(*a2, @"FIR_Table"))
  {
    return;
  }

  if (!*a2)
  {
    v73 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v73, "Could not construct");
  }

  v6 = applesauce::CF::details::at_key<__CFString const* const&>(*a2, @"FIR_Table");
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = v6;
  CFRetain(v6);
  v8 = CFGetTypeID(v7);
  if (v8 != CFDictionaryGetTypeID())
  {
    CFRelease(v7);
LABEL_21:
    theDict = 0;
    goto LABEL_22;
  }

  CFRetain(v7);
  theDict = v7;
  CFRelease(v7);
LABEL_22:
  if (!*a2)
  {
    v74 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v74, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(&v92, *a2, @"FIR_NamedMatrices");
  if (v93 != 1 || (v9 = v92) == 0)
  {
    v86 = 0;
    v72 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v72, "Could not construct");
  }

  CFRetain(v92);
  v86 = v9;
  CFRelease(v9);
  Count = CFArrayGetCount(v9);
  if (Count)
  {
    v11 = 0;
    v12 = 0;
    v75 = Count;
    while (1)
    {
      v90 = 0uLL;
      v91 = 0;
      if (!v86)
      {
        v67 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v67, "Could not construct");
      }

      v76 = v12;
      v92 = 0;
      applesauce::CF::at_or<applesauce::CF::ArrayRef>(&theArray, v86, v11, &v92);
      if (v92)
      {
        CFRelease(v92);
      }

      v13 = theArray;
      if (!theArray)
      {
LABEL_115:
        v66 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v66, "Could not construct");
      }

      v14 = 0;
      v78 = 0;
LABEL_32:
      if (CFArrayGetCount(v13) > v14)
      {
        break;
      }

      v50 = a1;
      v51 = *(a1 + 1);
      v52 = *(a1 + 2);
      if (v51 >= v52)
      {
        v54 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *a1) >> 3);
        v55 = v54 + 1;
        if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v56 = 0xAAAAAAAAAAAAAAABLL * ((v52 - *a1) >> 3);
        if (2 * v56 > v55)
        {
          v55 = 2 * v56;
        }

        if (v56 >= 0x555555555555555)
        {
          v57 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v57 = v55;
        }

        v96 = a1;
        if (v57)
        {
          std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](v57);
        }

        v58 = 24 * v54;
        *v58 = 0;
        *(v58 + 8) = 0;
        *(v58 + 16) = 0;
        *v58 = v90;
        *(v58 + 16) = v91;
        v90 = 0uLL;
        v91 = 0;
        v53 = 24 * v54 + 24;
        v50 = a1;
        v59 = *(a1 + 1) - *a1;
        v60 = v58 - v59;
        memcpy((v58 - v59), *a1, v59);
        v61 = *a1;
        *a1 = v60;
        *(a1 + 1) = v53;
        v62 = *(a1 + 2);
        *(a1 + 2) = 0;
        v94 = v61;
        v95 = v62;
        v92 = v61;
        v93 = v61;
        std::__split_buffer<std::vector<std::vector<std::vector<float>>>>::~__split_buffer(&v92);
      }

      else
      {
        *v51 = 0;
        v51[1] = 0;
        v51[2] = 0;
        *v51 = v90;
        v51[2] = v91;
        v90 = 0uLL;
        v91 = 0;
        v53 = (v51 + 3);
      }

      *(v50 + 1) = v53;
      CFRelease(v13);
      v92 = &v90;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v92);
      v11 = (v76 + 1);
      v12 = v76 + 1;
      if (v75 <= v11)
      {
        goto LABEL_107;
      }
    }

    __src[0] = 0;
    __src[1] = 0;
    v89 = 0;
    v92 = 0;
    applesauce::CF::at_or<applesauce::CF::ArrayRef>(&v84, v13, v14, &v92);
    if (v92)
    {
      CFRelease(v92);
    }

    v15 = v84;
    if (!v84)
    {
LABEL_111:
      v63 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v63, "Could not construct");
    }

    v16 = 0;
    v17 = 1;
    while (1)
    {
      if (CFArrayGetCount(v15) <= v16)
      {
        v41 = *(&v90 + 1);
        if (*(&v90 + 1) >= v91)
        {
          v43 = 0xAAAAAAAAAAAAAAABLL * ((*(&v90 + 1) - v90) >> 3);
          v44 = v43 + 1;
          if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v91 - v90) >> 3) > v44)
          {
            v44 = 0x5555555555555556 * ((v91 - v90) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3) >= 0x555555555555555)
          {
            v45 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v45 = v44;
          }

          v96 = &v90;
          if (v45)
          {
            std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](v45);
          }

          v46 = (8 * ((*(&v90 + 1) - v90) >> 3));
          *v46 = 0;
          v46[1] = 0;
          v46[2] = 0;
          *v46 = *__src;
          v46[2] = v89;
          __src[0] = 0;
          __src[1] = 0;
          v89 = 0;
          v42 = 24 * v43 + 24;
          v47 = v46 - (*(&v90 + 1) - v90);
          memcpy(v47, v90, *(&v90 + 1) - v90);
          v48 = v90;
          v49 = v91;
          *&v90 = v47;
          *(&v90 + 1) = v42;
          v91 = 0;
          v94 = v48;
          v95 = v49;
          v92 = v48;
          v93 = v48;
          std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(&v92);
        }

        else
        {
          **(&v90 + 1) = 0;
          *(v41 + 8) = 0;
          *(v41 + 16) = 0;
          *v41 = *__src;
          *(v41 + 16) = v89;
          __src[0] = 0;
          __src[1] = 0;
          v89 = 0;
          v42 = v41 + 24;
        }

        *(&v90 + 1) = v42;
        CFRelease(v15);
        v92 = __src;
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v92);
        v14 = (v78 + 1);
        v13 = theArray;
        ++v78;
        if (!theArray)
        {
          goto LABEL_115;
        }

        goto LABEL_32;
      }

      applesauce::CF::details::at_as<applesauce::CF::ArrayRef>(&cf, v15, v16);
      v18 = v83;
      if (v83)
      {
        goto LABEL_58;
      }

      if (CFArrayGetCount(v15) <= v16)
      {
        goto LABEL_57;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
      v20 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        goto LABEL_57;
      }

      CFRetain(ValueAtIndex);
      v21 = CFGetTypeID(v20);
      if (v21 != CFStringGetTypeID())
      {
        CFRelease(v20);
        goto LABEL_57;
      }

      v92 = v20;
      LOBYTE(v93) = 1;
      if (!theDict)
      {
        v65 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v65, "Could not construct");
      }

      Value = CFDictionaryGetValue(theDict, v20);
      v23 = Value;
      if (!Value)
      {
        goto LABEL_48;
      }

      CFRetain(Value);
      v24 = CFGetTypeID(v23);
      if (v24 != CFArrayGetTypeID())
      {
        break;
      }

      v25 = 1;
      v2 = v23;
LABEL_49:
      if (v18 == v25)
      {
        if (v25)
        {
          if (v2)
          {
            CFRelease(v2);
            if ((v93 & 1) == 0)
            {
              goto LABEL_57;
            }
          }
        }
      }

      else
      {
        cf = v2;
        v83 = 1;
        v2 = 0;
      }

      if (v92)
      {
        CFRelease(v92);
      }

LABEL_57:
      LOBYTE(v18) = v83;
      if ((v83 & 1) == 0)
      {
        v28 = 0;
        v29 = 0;
        goto LABEL_65;
      }

LABEL_58:
      if (!cf)
      {
        v64 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v64, "Could not construct");
      }

      applesauce::CF::convert_as<std::vector<float>,0>(&v92, cf);
      if (v95 == 1)
      {
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v26 = v92;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v79, v92, v93, (v93 - v92) >> 2);
        if (v26)
        {
          operator delete(v26);
        }

        v27 = v79;
        v28 = v80;
        v29 = v81;
        goto LABEL_66;
      }

      v29 = 0;
      v28 = 0;
LABEL_65:
      v27 = 0;
LABEL_66:
      v30 = __src[1];
      if (__src[1] >= v89)
      {
        v32 = __src[0];
        v33 = __src[1] - __src[0];
        v34 = 0xAAAAAAAAAAAAAAABLL * ((__src[1] - __src[0]) >> 3);
        v35 = v34 + 1;
        if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v89 - __src[0]) >> 3) > v35)
        {
          v35 = 0x5555555555555556 * ((v89 - __src[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v89 - __src[0]) >> 3) >= 0x555555555555555)
        {
          v36 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v36 = v35;
        }

        v96 = __src;
        if (v36)
        {
          std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](__src, v36);
        }

        v37 = (8 * ((__src[1] - __src[0]) >> 3));
        *v37 = v27;
        v37[1] = v28;
        v37[2] = v29;
        v31 = (24 * v34 + 24);
        v38 = v37 - v33;
        memcpy(v37 - v33, v32, v33);
        v39 = __src[0];
        v40 = v89;
        __src[0] = v38;
        __src[1] = v31;
        v89 = 0;
        v94 = v39;
        v95 = v40;
        v92 = v39;
        v93 = v39;
        std::__split_buffer<std::vector<float>>::~__split_buffer(&v92);
      }

      else
      {
        *__src[1] = v27;
        v30[1] = v28;
        v31 = v30 + 3;
        v30[2] = v29;
      }

      __src[1] = v31;
      if ((v18 & 1) != 0 && cf)
      {
        CFRelease(cf);
      }

      v16 = v17;
      v15 = v84;
      ++v17;
      if (!v84)
      {
        goto LABEL_111;
      }
    }

    CFRelease(v23);
LABEL_48:
    v25 = 0;
    v2 &= 0xFFFFFFFFFFFFFF00;
    goto LABEL_49;
  }

LABEL_107:
  if (v86)
  {
    CFRelease(v86);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }
}

void sub_1DDFC1164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a22);
  a27 = a12;
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

AULeanSpatial *AUFIREngine::ValidateConfiguration(AULeanSpatial *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(this + 80);
  if (v1 != *(this + 81))
  {
    v2 = v1[1] - *v1;
    if (!v2 || (v3 = this, 0xAAAAAAAAAAAAAAABLL * (v2 >> 3) != AUFIREngine::GetNumberOfOutputChannels(this)))
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v8, 0xFFFFFFFF);
        *buf = 136315906;
        v10 = "AUFIREngine.mm";
        v11 = 1024;
        v12 = 58;
        v13 = 2080;
        v14 = v8;
        v15 = 2080;
        v16 = "Matrix outputs to AU output format validation";
        _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "Matrix outputs to AU output format validation", -1);
    }

    v4 = *(*v1 + 8) - **v1;
    if (!v4 || (v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3), this = AULeanSpatial::GetNumberOfInputChannels(v3), v5 != this))
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v8, 0xFFFFFFFF);
        *buf = 136315906;
        v10 = "AUFIREngine.mm";
        v11 = 1024;
        v12 = 60;
        v13 = 2080;
        v14 = v8;
        v15 = 2080;
        v16 = "Matrix inputs to AU input format validation";
        _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v7 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v7, "Matrix inputs to AU input format validation", -1);
    }
  }

  return this;
}

BOOL ca::concurrent::deferred_deletion_stash<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::store(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
    ;
  }

  if (!*a2)
  {
    __assert_rtn("push", "deferred_deletion_queue.h", 73, "ioObject");
  }

  atomic_exchange((a1 + 2049), 1u);
  v7 = *a2;
  v4 = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::do_push<false>(a1 + 128, &v7);
  if (v4)
  {
    *a2 = 0;
  }

  ca::concurrent::deferred_deletion_queue<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::drain_trash(a1 + 64);
  if (v6)
  {
    AUFIREngineKernel::~AUFIREngineKernel(v6);
    MEMORY[0x1E12BD150]();
  }

  return v4;
}

void AUFIREngine::ParseSetParameters(CFTypeRef cf, const void *a2, AUJBase *a3, void *a4)
{
  applesauce::CF::NumberRef::from_get(&v11, cf);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = applesauce::CF::convert_to<unsigned int,0>(v11);
  applesauce::CF::NumberRef::from_get(&cfa, a2);
  if (!cfa)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
  }

  v7 = applesauce::CF::convert_to<float,0>(cfa);
  AUJBase::SetParameter(a3, v6, 0, 0, v7);
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_1DDFC1828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::NumberRef::~NumberRef(&a9);
  applesauce::CF::NumberRef::~NumberRef(&a10);
  _Unwind_Resume(a1);
}

void *applesauce::CF::NumberRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFNumberGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DDFC1910(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

BOOL ca::concurrent::deferred_deletion_queue<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::drain_trash(uint64_t a1)
{
  v3 = 0;
  while (1)
  {
    result = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 1024), &v3);
    if (!result)
    {
      break;
    }

    if (!v3)
    {
      __assert_rtn("drain_trash", "deferred_deletion_queue.h", 148, "trashObject");
    }

    AUFIREngineKernel::~AUFIREngineKernel(v3);
    MEMORY[0x1E12BD150]();
  }

  return result;
}

void applesauce::CF::at_or<applesauce::CF::ArrayRef>(void *a1, const __CFArray *a2, unint64_t a3, void *a4)
{
  applesauce::CF::details::at_as<applesauce::CF::ArrayRef>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

void applesauce::CF::details::at_as<applesauce::CF::ArrayRef>(_BYTE *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3)
  {
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v7 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_6;
  }

  CFRetain(ValueAtIndex);
  v8 = CFGetTypeID(v7);
  if (v8 != CFArrayGetTypeID())
  {
    CFRelease(v7);
LABEL_6:
    v9 = 0;
    *a1 = 0;
    goto LABEL_7;
  }

  *a1 = v7;
  v9 = 1;
LABEL_7:
  a1[8] = v9;
}

uint64_t std::optional<applesauce::CF::StringRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void applesauce::CF::convert_as<std::vector<std::vector<std::vector<std::vector<float>>>>,0>(char *a1, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Count = CFArrayGetCount(a2);
    v55 = 0uLL;
    v56 = 0;
    if (Count << 32)
    {
      if (Count <= 0xAAAAAAAAAAAAAAALL)
      {
        v71 = &v55;
        std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](Count);
      }

LABEL_72:
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    if (Count < 1)
    {
LABEL_63:
      *a1 = v55;
      *(a1 + 2) = v56;
      v56 = 0;
      v55 = 0uLL;
      a1[24] = 1;
    }

    else
    {
      v5 = 0;
      v48 = Count & 0x7FFFFFFF;
      v43 = a1[24];
      v44 = *a1;
      while (1)
      {
        v49 = v5;
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
        if (!ValueAtIndex)
        {
          break;
        }

        v7 = CFArrayGetTypeID();
        if (v7 != CFGetTypeID(ValueAtIndex))
        {
          break;
        }

        v51 = ValueAtIndex;
        v8 = CFArrayGetCount(ValueAtIndex);
        v60 = 0uLL;
        v61 = 0;
        std::vector<std::vector<std::vector<float>>>::reserve(&v60, v8);
        if (v8 < 1)
        {
LABEL_45:
          v52 = v60;
          v53 = v61;
          v61 = 0;
          v60 = 0uLL;
          v54 = 1;
        }

        else
        {
          v9 = 0;
          v45 = v54;
          v46 = v52;
          v50 = v8 & 0x7FFFFFFF;
          while (1)
          {
            v10 = CFArrayGetValueAtIndex(v51, v9);
            if (!v10)
            {
              break;
            }

            v11 = CFArrayGetTypeID();
            if (v11 != CFGetTypeID(v10))
            {
              break;
            }

            v12 = CFArrayGetCount(v10);
            v65 = 0uLL;
            v66 = 0;
            std::vector<std::vector<float>>::reserve(&v65, v12);
            if (v12 < 1)
            {
LABEL_28:
              v57 = v65;
              v58 = v66;
              v66 = 0;
              v65 = 0uLL;
              v59 = 1;
            }

            else
            {
              v13 = 0;
              v14 = v12 & 0x7FFFFFFF;
              while (1)
              {
                v15 = CFArrayGetValueAtIndex(v10, v13);
                applesauce::CF::convert_as<std::vector<float>,0>(&v62, v15);
                if (v64 != 1)
                {
                  break;
                }

                v16 = *(&v65 + 1);
                if (*(&v65 + 1) >= v66)
                {
                  v18 = 0xAAAAAAAAAAAAAAABLL * ((*(&v65 + 1) - v65) >> 3);
                  v19 = v18 + 1;
                  if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v66 - v65) >> 3) > v19)
                  {
                    v19 = 0x5555555555555556 * ((v66 - v65) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3) >= 0x555555555555555)
                  {
                    v20 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v20 = v19;
                  }

                  v71 = &v65;
                  if (v20)
                  {
                    std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](&v65, v20);
                  }

                  v21 = 8 * ((*(&v65 + 1) - v65) >> 3);
                  *v21 = v62;
                  *(v21 + 16) = v63;
                  v17 = 24 * v18 + 24;
                  v22 = 24 * v18 - (*(&v65 + 1) - v65);
                  memcpy((v21 - (*(&v65 + 1) - v65)), v65, *(&v65 + 1) - v65);
                  v23 = v65;
                  v24 = v66;
                  *&v65 = v22;
                  *(&v65 + 1) = v17;
                  v66 = 0;
                  v69 = v23;
                  v70 = v24;
                  v67 = v23;
                  v68 = v23;
                  std::__split_buffer<std::vector<float>>::~__split_buffer(&v67);
                }

                else
                {
                  **(&v65 + 1) = v62;
                  *(v16 + 16) = v63;
                  v17 = v16 + 24;
                }

                *(&v65 + 1) = v17;
                if (v14 == ++v13)
                {
                  goto LABEL_28;
                }
              }

              v59 = 0;
              LOBYTE(v57) = 0;
            }

            v67 = &v65;
            std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v67);
            if ((v59 & 1) == 0)
            {
              goto LABEL_47;
            }

            v25 = *(&v60 + 1);
            if (*(&v60 + 1) >= v61)
            {
              v27 = 0xAAAAAAAAAAAAAAABLL * ((*(&v60 + 1) - v60) >> 3);
              v28 = v27 + 1;
              if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                v54 = v45;
                LOBYTE(v52) = v46;
                std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v61 - v60) >> 3) > v28)
              {
                v28 = 0x5555555555555556 * ((v61 - v60) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 3) >= 0x555555555555555)
              {
                v29 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v29 = v28;
              }

              v71 = &v60;
              if (v29)
              {
                std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](v29);
              }

              v30 = (8 * ((*(&v60 + 1) - v60) >> 3));
              *v30 = 0;
              v30[1] = 0;
              v30[2] = 0;
              *v30 = v57;
              v30[2] = v58;
              v57 = 0uLL;
              v58 = 0;
              v26 = 24 * v27 + 24;
              v31 = 24 * v27 - (*(&v60 + 1) - v60);
              memcpy(v30 - (*(&v60 + 1) - v60), v60, *(&v60 + 1) - v60);
              v32 = v60;
              v33 = v61;
              *&v60 = v31;
              *(&v60 + 1) = v26;
              v61 = 0;
              v69 = v32;
              v70 = v33;
              v67 = v32;
              v68 = v32;
              std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(&v67);
            }

            else
            {
              **(&v60 + 1) = 0;
              *(v25 + 8) = 0;
              *(v25 + 16) = 0;
              *v25 = v57;
              *(v25 + 16) = v58;
              v57 = 0uLL;
              v58 = 0;
              v26 = v25 + 24;
            }

            *(&v60 + 1) = v26;
            if (v59)
            {
              v67 = &v57;
              std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v67);
            }

            if (++v9 == v50)
            {
              goto LABEL_45;
            }
          }

          LOBYTE(v57) = 0;
          v59 = 0;
LABEL_47:
          v54 = 0;
          LOBYTE(v52) = 0;
        }

        v67 = &v60;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v67);
        if ((v54 & 1) == 0)
        {
          goto LABEL_66;
        }

        v34 = *(&v55 + 1);
        if (*(&v55 + 1) >= v56)
        {
          v36 = 0xAAAAAAAAAAAAAAABLL * ((*(&v55 + 1) - v55) >> 3);
          v37 = v36 + 1;
          if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            a1[24] = v43;
            *a1 = v44;
            goto LABEL_72;
          }

          if (0x5555555555555556 * ((v56 - v55) >> 3) > v37)
          {
            v37 = 0x5555555555555556 * ((v56 - v55) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 3) >= 0x555555555555555)
          {
            v38 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v38 = v37;
          }

          v71 = &v55;
          if (v38)
          {
            std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](v38);
          }

          v39 = (8 * ((*(&v55 + 1) - v55) >> 3));
          *v39 = 0;
          v39[1] = 0;
          v39[2] = 0;
          *v39 = v52;
          v39[2] = v53;
          v52 = 0uLL;
          v53 = 0;
          v35 = 24 * v36 + 24;
          v40 = 24 * v36 - (*(&v55 + 1) - v55);
          memcpy(v39 - (*(&v55 + 1) - v55), v55, *(&v55 + 1) - v55);
          v41 = v55;
          v42 = v56;
          *&v55 = v40;
          *(&v55 + 1) = v35;
          v56 = 0;
          v69 = v41;
          v70 = v42;
          v67 = v41;
          v68 = v41;
          std::__split_buffer<std::vector<std::vector<std::vector<float>>>>::~__split_buffer(&v67);
        }

        else
        {
          **(&v55 + 1) = 0;
          *(v34 + 8) = 0;
          *(v34 + 16) = 0;
          *v34 = v52;
          *(v34 + 16) = v53;
          v52 = 0uLL;
          v53 = 0;
          v35 = v34 + 24;
        }

        *(&v55 + 1) = v35;
        if (v54)
        {
          v67 = &v52;
          std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v67);
        }

        v5 = v49 + 1;
        if (v49 + 1 == v48)
        {
          goto LABEL_63;
        }
      }

      LOBYTE(v52) = 0;
      v54 = 0;
LABEL_66:
      a1[24] = 0;
      *a1 = 0;
    }

    v67 = &v55;
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v67);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

void sub_1DDFC21A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, uint64_t a12, _BYTE *a13)
{
  a13[24] = a9;
  *a13 = a11;
  __clang_call_terminate(a1);
}

uint64_t AUFIREngine::GetProperty(uint64_t **this, int a2, int a3, unsigned int a4, __CFDictionary **a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1717924719)
  {
    if (a2 == 1717924720)
    {
      v11[0] = 0;
      v11[1] = 0;
      CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v11);
    }

    else
    {
      if (a2 != 1718186611)
      {
        return result;
      }

      CFDictionaryRef = applesauce::CF::details::make_CFArrayRef<std::vector<std::vector<std::vector<float>>>>(this + 80);
    }

    v10 = CFDictionaryRef;
    result = 0;
    *a5 = v10;
    return result;
  }

  if (a2 == 21)
  {
    if (((*this)[75])(this))
    {
      result = 0;
      *a5 = *(this + 552);
      return result;
    }

    return 4294956417;
  }

  if (a2 == 1668179559)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (this[80] != this[81])
    {
      v11[0] = applesauce::CF::details::make_CFArrayRef<std::vector<std::vector<std::vector<float>>>>(this + 80);
      CFDictionaryAddValue(Mutable, @"FIR_Matrices", v11[0]);
      CFRelease(v11[0]);
    }

    result = 0;
    *a5 = Mutable;
  }

  return result;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<std::vector<std::vector<std::vector<float>>>>(uint64_t **a1)
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
    std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v13, *v4, v4[1], 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3));
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
      *v10 = applesauce::CF::details::make_CFArrayRef<std::vector<std::vector<float>>>(v13);
      v18 = v10 + 1;
      std::vector<applesauce::CF::ArrayRef>::__swap_out_circular_buffer(&v14, v17);
      v6 = v15;
      std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(v17);
    }

    else
    {
      *v5 = applesauce::CF::details::make_CFArrayRef<std::vector<std::vector<float>>>(v13);
      v6 = v5 + 1;
    }

    v15 = v6;
    v17[0] = v13;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  v11 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::ArrayRef>(&v14);
  v17[0] = &v14;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](v17);
  return v11;
}

void sub_1DDFC24E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t AUFIREngine::GetPropertyInfo(AUFIREngine *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v10 = 8;
  result = 4294956417;
  if (a2 > 1717924719)
  {
    if (a2 != 1717924720)
    {
      v11 = 1718186611;
LABEL_8:
      if (a2 != v11)
      {
        return result;
      }
    }
  }

  else
  {
    if (a2 != 21)
    {
      v11 = 1668179559;
      goto LABEL_8;
    }

    if (!(*(*this + 600))(this))
    {
      return 4294956417;
    }

    v10 = 4;
  }

  result = 0;
  *a6 = 1;
  *a5 = v10;
  return result;
}

uint64_t AUFIREngine::Reset(AUFIREngine *this)
{
  v1 = *(this + 83);
  if (v1)
  {
    v2 = *(v1 + 152);
    v3 = *(v1 + 160);
    while (v2 != v3)
    {
      vDSP_vclr(*v2, 1, (*(v2 + 8) - *v2) >> 2);
      v4 = *(v2 + 24);
      v5 = *(v2 + 32);
      while (v4 != v5)
      {
        v6 = *(v4 + 16);
        v7 = *(v4 + 24) - v6;
        if (v7 >= 1)
        {
          bzero(v6, v7);
        }

        v4 += 32;
      }

      *(v2 + 48) = 0;
      v2 += 56;
    }
  }

  return 0;
}

uint64_t AUFIREngine::Initialize(AUFIREngine *this)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = AUJBase::Initialize(this);
  if (!v2)
  {
    for (i = 0; ; ++i)
    {
      NumberOfInputChannels = AULeanSpatial::GetNumberOfInputChannels(this);
      if (i >= AUFIREngine::GetNumberOfOutputChannels(this) * NumberOfInputChannels)
      {
        break;
      }

      AUFIREngine::AddParameter(this, i + 1000000, v7);
      AUFIREngine::AddParameter(this, i + 2000000, v8);
      AUFIREngine::AddParameter(this, i + 3000000, v9);
    }

    if ((*(this + 633) & 1) == 0)
    {
      v10 = AULeanSpatial::GetNumberOfInputChannels(this);
      NumberOfOutputChannels = AUFIREngine::GetNumberOfOutputChannels(this);
      std::vector<float>::vector[abi:ne200100](&__p, 1uLL);
      std::vector<std::vector<float>>::vector[abi:ne200100](v29, v10);
      if (__p)
      {
        *&v28 = __p;
        operator delete(__p);
      }

      std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](&__p, NumberOfOutputChannels);
      v12 = __p;
      if (NumberOfOutputChannels)
      {
        for (j = 0; j != NumberOfOutputChannels; ++j)
        {
          if (v10)
          {
            v14 = v12[3 * j];
            v15 = j;
            v16 = v10;
            do
            {
              if (v15)
              {
                v17 = 0.0;
              }

              else
              {
                v17 = 1.0;
              }

              v18 = *v14;
              v14 += 3;
              *v18 = v17;
              --v15;
              --v16;
            }

            while (v16);
          }
        }
      }

      v37 = v12;
      v38 = v28;
      v28 = 0uLL;
      __p = 0;
      v26 = 0;
      v25 = 0uLL;
      v29[3] = &v25;
      v30 = 0;
      operator new();
    }

    AUFIREngine::ValidateConfiguration(this);
    if (*(this + 81) != *(this + 80))
    {
      v19 = AULeanSpatial::GetNumberOfInputChannels(this);
      v20 = AUFIREngine::GetNumberOfOutputChannels(this);
      v21 = *(this + 84);
      v22 = operator new(0xAC0uLL, 0x40uLL);
      AUFIREngineKernel::AUFIREngineKernel(v22, v19, v20, v21, this + 80);
    }

    __assert_rtn("Initialize", "AUFIREngine.mm", 106, "mFIRMatrix.size()");
  }

  v3 = v2;
  if (AUJBase::AUJBaseLogScope(void)::once != -1)
  {
    dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
  }

  if (AUJBase::AUJBaseLogScope(void)::scope)
  {
    v4 = *AUJBase::AUJBaseLogScope(void)::scope;
    if (!v4)
    {
      return v3;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    buf = 136315650;
    buf_4 = "AUFIREngine.mm";
    v33 = 1024;
    v34 = 138;
    v35 = 1024;
    v36 = v3;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d AUJBase init failed: %d\n", &buf, 0x18u);
  }

  return v3;
}

void sub_1DDFC2AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf, __int16 a24, __int16 a25, int a26, int a27, int a28)
{
  if (a2)
  {
    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<float>>>>,std::vector<std::vector<std::vector<float>>>*>>::~__exception_guard_exceptions[abi:ne200100](&buf);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&a19);
    *&buf = v29 - 96;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&buf);
    *&buf = &__p;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&buf);
    *&buf = &a16;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&buf);
    v32 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v33 = v32;
      if (AUJBase::AUJBaseLogScope(void)::once != -1)
      {
        dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
      }

      v34 = CALog::LogObjIfEnabled(AUJBase::AUJBaseLogScope(void)::scope);
      v35 = v34;
      if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v36 = v33[66];
        LODWORD(buf) = 136315906;
        *(&buf + 4) = "AUFIREngine.mm";
        WORD6(buf) = 1024;
        *(&buf + 14) = 119;
        a25 = 2080;
        *(v28 + 20) = v33 + 2;
        LOWORD(a28) = 1024;
        *(v28 + 30) = v36;
        _os_log_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d FIREngine Exception: %s (Err=%d)\n", &buf, 0x22u);
      }
    }

    else
    {
      if (AUJBase::AUJBaseLogScope(void)::once != -1)
      {
        dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
      }

      v37 = CALog::LogObjIfEnabled(AUJBase::AUJBaseLogScope(void)::scope);
      v35 = v37;
      if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "AUFIREngine.mm";
        WORD6(buf) = 1024;
        *(&buf + 14) = 134;
        _os_log_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Threw an unknown exception\n", &buf, 0x12u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDFC2A84);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUFIREngine::AddParameter(AUFIREngine *this, uint64_t a2, float a3)
{
  result = (*(*this + 576))(this, a2, 0, 0, a3);
  if (!result)
  {
    v7 = *(*this + 152);
    v6.n128_u64[0] = 0;

    return v7(this, a2, 0, 0, 0, v6);
  }

  return result;
}

void AUFIREngine::~AUFIREngine(AUFIREngine *this)
{
  AUFIREngine::~AUFIREngine(this);

  JUMPOUT(0x1E12BD150);
}

{
  *this = &unk_1F5932D78;
  v2 = *(this + 355);
  if (v2)
  {
    *(this + 356) = v2;
    operator delete(v2);
  }

  v3 = *(this + 352);
  if (v3)
  {
    *(this + 353) = v3;
    operator delete(v3);
  }

  *(this + 88) = &unk_1F5933018;
  ca::concurrent::deferred_deletion_queue<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::~deferred_deletion_queue(this + 768);
  std::unique_ptr<AUFIREngineKernel>::reset[abi:ne200100](this + 83, 0);
  v7 = (this + 640);
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  *this = &unk_1F5934D48;
  v4 = *(this + 76);
  if (v4)
  {
    *(this + 77) = v4;
    operator delete(v4);
  }

  v5 = *(this + 73);
  if (v5)
  {
    *(this + 74) = v5;
    operator delete(v5);
  }

  v6 = *(this + 70);
  if (v6)
  {
    *(this + 71) = v6;
    operator delete(v6);
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t ca::concurrent::deferred_deletion_queue<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::~deferred_deletion_queue(uint64_t a1)
{
  *a1 = &unk_1F5933038;
  ca::concurrent::deferred_deletion_queue<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::drain_trash(a1);
  v3 = 0;
  while (boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v3))
  {
    if (v3)
    {
      AUFIREngineKernel::~AUFIREngineKernel(v3);
      MEMORY[0x1E12BD150]();
    }
  }

  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 1024);
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 64);
  return a1;
}

void ca::concurrent::deferred_deletion_queue<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::~deferred_deletion_queue(uint64_t a1)
{
  ca::concurrent::deferred_deletion_queue<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::~deferred_deletion_queue(a1);

  JUMPOUT(0x1E12BD150);
}

void ca::concurrent::deferred_deletion_stash<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F5933018;
  ca::concurrent::deferred_deletion_queue<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::~deferred_deletion_queue((a1 + 8));

  JUMPOUT(0x1E12BD150);
}

void *ca::concurrent::deferred_deletion_stash<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F5933018;
  ca::concurrent::deferred_deletion_queue<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::~deferred_deletion_queue((a1 + 8));
  return a1;
}

void AUSpeechLevelEstimator::RefreshKernelParamValue(uint64_t a1, unsigned int a2)
{
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v4, a2);
  if (a2 == 7)
  {
    v7 = *(a1 + 608);
    if (v7)
    {
      v8 = 5.0;
      if (Parameter <= 5.0)
      {
        v8 = Parameter;
      }

      v9 = Parameter < 0.0;
      v10 = 0.0;
      if (!v9)
      {
        v10 = v8;
      }

      v7[72] = expf(-1.0 / (*v7 * v10));
    }
  }
}

float AUSpeechLevelEstimator::UpdateDynamicParams(AUSpeechLevelEstimator *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 0xAu);
  v5 = (this + 560);
  *(this + 140) = Parameter;
  if (Parameter > 1.0)
  {
    v5 = &AUSpeechLevelEstimator::kVAD_Max;
  }

  if (Parameter < 0.0)
  {
    v5 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  *(this + 140) = *v5;
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v7 & 1) == 0)
  {
LABEL_12:
    abort();
  }

  v8 = ausdk::AUElement::GetParameter(v6, 0xBu);
  v9 = (this + 568);
  *(this + 142) = v8;
  if (v8 > 200.0)
  {
    v9 = &AUSpeechLevelEstimator::kEchoLevel_dB_Max;
  }

  if (v8 < -100.0)
  {
    v9 = &AUSpeechLevelEstimator::kEchoLevel_dB_Min;
  }

  result = *v9;
  *(this + 142) = *v9;
  return result;
}

float AUSpeechLevelEstimator::UpdateStaticParams(AUSpeechLevelEstimator *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_27;
  }

  ausdk::AUElement::GetParameter(v2, 0);
  *(this + 138) = 0;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_27;
  }

  Parameter = ausdk::AUElement::GetParameter(v4, 1u);
  v7 = 200.0;
  if (Parameter <= 200.0)
  {
    v7 = Parameter;
  }

  v8 = v7 / 10.0;
  v9 = Parameter < -100.0;
  v10 = -10.0;
  if (!v9)
  {
    v10 = v8;
  }

  *(this + 182) = __exp10f(v10);
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v12 & 1) == 0)
  {
    goto LABEL_27;
  }

  v13 = ausdk::AUElement::GetParameter(v11, 6u);
  v14 = 5.0;
  if (v13 <= 5.0)
  {
    v14 = v13;
  }

  v9 = v13 < 0.0;
  v15 = 0.0;
  if (!v9)
  {
    v15 = v14;
  }

  *(this + 133) = expf((-*(this + 136) / *(this + 132)) / v15);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_27;
  }

  *(this + 556) = ausdk::AUElement::GetParameter(v16, 2u) != 0.0;
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_27;
  }

  *(this + 557) = ausdk::AUElement::GetParameter(v18, 3u) != 0.0;
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_27;
  }

  *(this + 558) = ausdk::AUElement::GetParameter(v20, 4u) != 0.0;
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_27;
  }

  *(this + 559) = ausdk::AUElement::GetParameter(v22, 5u) != 0.0;
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_27;
  }

  v26 = ausdk::AUElement::GetParameter(v24, 8u);
  v27 = (this + 564);
  *(this + 141) = v26;
  if (v26 > 1.0)
  {
    v27 = &AUSpeechLevelEstimator::kVAD_Max;
  }

  if (v26 < 0.0)
  {
    v27 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  *(this + 141) = *v27;
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v29 & 1) == 0)
  {
LABEL_27:
    abort();
  }

  v30 = ausdk::AUElement::GetParameter(v28, 9u);
  v31 = (this + 572);
  *(this + 143) = v30;
  if (v30 > 200.0)
  {
    v31 = &AUSpeechLevelEstimator::kEchoLevel_dB_Max;
  }

  if (v30 < -100.0)
  {
    v31 = &AUSpeechLevelEstimator::kEchoLevel_dB_Min;
  }

  result = *v31;
  *(this + 143) = *v31;
  return result;
}

BOOL AUSpeechLevelEstimator::ValidFormat(AUSpeechLevelEstimator *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    result = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  if (v5 == 2)
  {
    mFormatID = a4->mFormatID;
    mBytesPerFrame = a4->mBytesPerFrame;
    mChannelsPerFrame = a4->mChannelsPerFrame;
    if (mBytesPerFrame == 8 && mFormatID == 1718773105 && mChannelsPerFrame == 1)
    {
      return 1;
    }

    return mBytesPerFrame == 4 && mFormatID == 1819304813 && mChannelsPerFrame == 1;
  }

  if (v5 == 1)
  {
    result = 0;
    if (a4->mBytesPerFrame == 8 && a4->mFormatID == 1718773105)
    {
      return a4->mChannelsPerFrame == 1;
    }
  }

  return result;
}

uint64_t AUSpeechLevelEstimator::SupportedNumChannels(AUSpeechLevelEstimator *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSpeechLevelEstimator::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUSpeechLevelEstimator::GetParameterValueStrings(AUSpeechLevelEstimator *this, int a2, int a3, const __CFArray **a4)
{
  result = 0;
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a2 && a4)
  {
    if (a3)
    {
      return 4294956417;
    }

    else
    {
      v7[0] = @"Basic";
      v6 = CFArrayCreate(0, v7, 1, 0);
      result = 0;
      *a4 = v6;
    }
  }

  return result;
}

uint64_t AUSpeechLevelEstimator::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v3 = ausdk::AUBase::RestoreState(this, a2);
  if (!v3)
  {
    (*(*this + 73))(this);
    (*(*this + 74))(this);
    (*(*this + 75))(this);
  }

  return v3;
}

uint64_t AUSpeechLevelEstimator::GetParameterInfo(AUSpeechLevelEstimator *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956430;
  }

  buffer->unitName = 0;
  buffer->flags = 0x40000000;
  if (a3 > 0xF)
  {
    return 4294956418;
  }

  v6 = off_1E866FEE0[a3];
  v7 = dword_1DE11222C[a3];
  v8 = flt_1DE11226C[a3];
  v9 = flt_1DE1122AC[a3];
  v10 = flt_1DE1122EC[a3];
  v11 = dword_1DE11232C[a3];
  buffer->cfNameString = v6;
  buffer->flags = 1207959552;
  CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = v7;
  buffer->minValue = v8;
  buffer->maxValue = v9;
  buffer->defaultValue = v10;
  buffer->flags |= v11;
  return result;
}

uint64_t AUSpeechLevelEstimator::GetParameterList(AUSpeechLevelEstimator *this, int a2, unsigned int *a3, unsigned int *a4)
{
  *a4 = 0;
  if (a2)
  {
    return 4294956418;
  }

  result = 0;
  if (a3)
  {
    *a3 = 0;
    ++*a4;
    a3[1] = 1;
    ++*a4;
    a3[2] = 2;
    ++*a4;
    a3[3] = 3;
    ++*a4;
    a3[4] = 4;
    ++*a4;
    a3[5] = 5;
    ++*a4;
    a3[6] = 6;
    ++*a4;
    a3[7] = 7;
    ++*a4;
    a3[8] = 8;
    ++*a4;
    a3[9] = 9;
    ++*a4;
    a3[10] = 10;
    ++*a4;
    a3[11] = 11;
    ++*a4;
    a3[12] = 12;
    ++*a4;
    a3[13] = 13;
    ++*a4;
    a3[14] = 14;
    ++*a4;
    a3[15] = 15;
    ++*a4;
  }

  return result;
}

ausdk::AUInputElement *AUSpeechLevelEstimator::Render(AUSpeechLevelEstimator *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, &v12, a3, 0, a4);
  }

  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (!*(Element + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v14[0] = *(Element + 152) + 48;
    v11 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v11)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v13 = *(v11 + 152) + 48;
    return (*(*this + 184))(this, a2, a4, 1, v14, 1, &v13);
  }

  return result;
}

uint64_t AUSpeechLevelEstimator::ProcessMultipleBufferLists(AUSpeechLevelEstimator *this, unsigned int *a2, int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7, int16x4_t a8)
{
  if (*(this + 136) != a3)
  {
    return 4294956422;
  }

  v32 = v8;
  v33 = v9;
  result = 4294956428;
  if (a4 == 1 && a6 == 1)
  {
    if (*(this + 540) == 1 && 2 * a3 != 0)
    {
      memmove((*a7)->mBuffers[0].mData, (*a5)->mBuffers[0].mData, 4 * (2 * a3));
    }

    v15 = *(this + 144);
    if (v15 != *(this + 145))
    {
      (*(*this + 584))(this);
      *(this + 145) = v15;
    }

    v16 = *(this + 146);
    if (v16 != *(this + 147))
    {
      (*(*this + 592))(this);
      *(this + 147) = v16;
    }

    v17 = *(this + 148);
    if (v17 != *(this + 149))
    {
      (*(*this + 600))(this);
      *(this + 149) = v17;
    }

    if (*(this + 134))
    {
      if ((*(this + 601) & 1) == 0)
      {
        v18 = (*(this + 83) - *(this + 82)) >> 2;
        LODWORD(__A.realp) = 0;
        std::vector<float>::assign(this + 82, v18, &__A, a8);
        (*(*this + 152))(this, 12, 0, 0, 0, 0.0);
        (*(*this + 152))(this, 13, 0, 0, 0, 0.0);
        *(this + 601) = 1;
      }

      if ((*(this + 600) & 1) == 0)
      {
        v19 = (*(this + 80) - *(this + 79)) >> 2;
        LODWORD(__A.realp) = 0;
        std::vector<float>::assign(this + 79, v19, &__A, a8);
        (*(*this + 152))(this, 14, 0, 0, 0, 0.0);
        (*(*this + 152))(this, 15, 0, 0, 0, 0.0);
        *(this + 600) = 1;
      }

      if ((*(this + 540) & 1) == 0)
      {
        vDSP_vclr((*a7)->mBuffers[0].mData, 1, *(this + 136));
      }

      return 0;
    }

    v20 = *(this + 136);
    __A.realp = (*a5)->mBuffers[0].mData;
    __A.imagp = &__A.realp[v20];
    vDSP_zvmags(&__A, 1, *(this + 88), 1, v20);
    **(this + 88) = *__A.realp * *__A.realp;
    *(*(this + 89) - 4) = *__A.imagp * *__A.imagp;
    v21 = *(this + 76);
    if (v21)
    {
      v22 = SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>::process<std::vector<float>>(*(this + 76), this + 88);
      if (*(this + 182) == 1.0)
      {
        memcpy(*(this + 79), *v22, 4 * *(this + 137));
      }

      else
      {
        MEMORY[0x1E12BE940](*v22, 1, this + 728);
      }

      *(this + 600) = 0;
    }

    else if ((*(this + 600) & 1) == 0)
    {
      vDSP_vclr(*(this + 79), 1, (*(this + 80) - *(this + 79)) >> 2);
    }

    v23 = *(this + 558) != 1 || *(this + 140) > *(this + 141);
    v24 = *(this + 559);
    if (v24 == 1 && v23)
    {
      if (*(this + 142) >= *(this + 143))
      {
        goto LABEL_36;
      }
    }

    else if (((v24 ^ 1) & v23) != 1)
    {
LABEL_36:
      v25 = 0;
      if (v21)
      {
LABEL_37:
        v26 = SPLMeter<float,AWeight>::process<std::vector<float>>(*(this + 77), *(this + 79), *(this + 80));
        (*(*this + 152))(this, 14, 0, 0, 0, v26);
        v27 = SPLMeter<float,AWeight>::process<std::vector<float>>(*(this + 78), *(this + 79), *(this + 80));
        (*(*this + 152))(this, 15, 0, 0, 0, v27);
LABEL_47:
        if ((v25 & 1) != 0 || (*(this + 601) & 1) == 0)
        {
          v28 = SPLMeter<float,AWeight>::process<std::vector<float>>(*(this + 77), *(this + 82), *(this + 83));
          (*(*this + 152))(this, 12, 0, 0, 0, v28);
          v29 = SPLMeter<float,AWeight>::process<std::vector<float>>(*(this + 78), *(this + 82), *(this + 83));
          (*(*this + 152))(this, 13, 0, 0, 0, v29);
          *(this + 601) = 1;
        }

        if ((*(this + 540) & 1) == 0)
        {
          memcpy((*a7)->mBuffers[0].mData, *(this + 82), 4 * *(this + 136));
        }

        return 0;
      }

LABEL_45:
      if ((*(this + 600) & 1) == 0)
      {
        (*(*this + 152))(this, 14, 0, 0, 0, 0.0);
        (*(*this + 152))(this, 15, 0, 0, 0, 0.0);
        *(this + 600) = 1;
      }

      goto LABEL_47;
    }

    if (*(this + 182) == 1.0)
    {
      memcpy(*(this + 85), *(this + 88), 4 * *(this + 137));
    }

    else
    {
      MEMORY[0x1E12BE940]();
    }

    if (*(this + 557) == 1)
    {
      MEMORY[0x1E12BE9A0](*(this + 79), 1, *(this + 85), 1, *(this + 85), 1, *(this + 137));
      __B = 0.0;
      vDSP_vthr(*(this + 85), 1, &__B, *(this + 85), 1, (*(this + 86) - *(this + 85)) >> 2);
    }

    AddMultiplyRVectorRScalarMultiplyRVectorRScalar<std::vector<float>,std::vector<float>,std::vector<float>>(this + 82, *(this + 82), *(this + 83), *(this + 85), *(this + 86), *(this + 133));
    *(this + 601) = 0;
    v25 = 1;
    if (v21)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  return result;
}

uint64_t AUSpeechLevelEstimator::SetParameter(AUSpeechLevelEstimator *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3)
  {
    return 0;
  }

  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (!result)
  {
    if ((a2 & 0xFFFFFFFE) == 0xA)
    {
      result = 0;
      ++*(this + 146);
      return result;
    }

    if (a2 > 7)
    {
      if ((a2 & 0xFFFFFFFE) == 8)
      {
        result = 0;
        ++*(this + 144);
        return result;
      }
    }

    else if (*(this + 76))
    {
      AUSpeechLevelEstimator::RefreshKernelParamValue(this, a2);
    }

    return 0;
  }

  return result;
}

uint64_t AUSpeechLevelEstimator::SetProperty(AUSpeechLevelEstimator *this, int a2, int a3, unsigned int a4, _DWORD *__src, size_t __n)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 5200)
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (__n == 4)
    {
      result = 0;
      *(this + 134) = *__src;
      return result;
    }

    return 4294956445;
  }

  if (*(this + 17) == 1)
  {
    if (__n == 4 * *(this + 137))
    {
      memcpy(*(this + 79), __src, __n);
      return 0;
    }

    return 4294956445;
  }

  return 4294956429;
}

uint64_t AUSpeechLevelEstimator::GetProperty(AUSpeechLevelEstimator *this, int a2, int a3, unsigned int a4, _DWORD *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 5199)
  {
    if (a2 == 5200)
    {
      if (*(this + 17) == 1)
      {
        v8 = *(this + 79);
        v9 = *(this + 80);
        goto LABEL_16;
      }
    }

    else
    {
      if (a2 != 5300)
      {
        return result;
      }

      if (*(this + 17) == 1)
      {
        v8 = *(this + 82);
        v9 = *(this + 83);
LABEL_16:
        if (v9 != v8)
        {
          memmove(__dst, v8, v9 - v8);
        }

        return 0;
      }
    }

    return 4294956429;
  }

  if (a2 == 21)
  {
    result = 0;
    v7 = *(this + 134);
    goto LABEL_13;
  }

  if (a2 == 3700)
  {
    result = 0;
    v7 = *(this + 376);
LABEL_13:
    *__dst = v7;
  }

  return result;
}

uint64_t AUSpeechLevelEstimator::GetPropertyInfo(AUSpeechLevelEstimator *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 5199)
  {
    if (a2 == 5200)
    {
      *a6 = 1;
    }

    else
    {
      if (a2 != 5300)
      {
        return result;
      }

      *a6 = 0;
    }

    v8 = 4 * *(this + 137);
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

uint64_t AUSpeechLevelEstimator::Reset(AUSpeechLevelEstimator *this)
{
  *(this + 36) = xmmword_1DE095FA0;
  *(this + 74) = 1;
  *(this + 300) = 0;
  return 0;
}

uint64_t AUSpeechLevelEstimator::Initialize(AUSpeechLevelEstimator *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_26;
  }

  if (*(Element + 88) == 1718773105 && *(Element + 108) == 1 && *(Element + 104) == 8)
  {
    v5 = *(Element + 80);
    v6 = *(this + 84);
    *(this + 136) = v6;
    *(this + 137) = v6 + 1;
    *(this + 132) = v5;
    v7 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v7)
    {
      if (v7[27] != 1)
      {
        return 4294956428;
      }

      v8 = v7[26];
      if (v8 != 8 && v8 != 4)
      {
        return 4294956428;
      }

      v10 = v7[22];
      if (v10 == 1718773105)
      {
        v11 = 1;
      }

      else
      {
        if (v10 != 1819304813)
        {
          goto LABEL_23;
        }

        v11 = 0;
      }

      *(this + 540) = v11;
LABEL_23:
      (*(*this + 584))(this);
      (*(*this + 592))(this);
      *(this + 300) = 0;
      *(this + 36) = 0u;
      std::unique_ptr<SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>>::reset[abi:ne200100](this + 76, 0);
      if (*(this + 556))
      {
        operator new();
      }

      operator new();
    }

LABEL_26:
    ausdk::Throw(0xFFFFD583);
  }

  return 4294956428;
}

uint64_t *std::unique_ptr<SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 264);
    if (v3)
    {
      *(v2 + 272) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 240);
    if (v4)
    {
      *(v2 + 248) = v4;
      operator delete(v4);
    }

    if (*(v2 + 232) == 1)
    {
      NoiseSuppression::Noise::HendriksSPP::~HendriksSPP((v2 + 8));
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *CWeight<float>::Generate(void *a1, unint64_t a2, float a3)
{
  result = std::vector<float>::vector[abi:ne200100](a1, a2);
  if (a2)
  {
    *v6.i32 = a3 / (2 * a2 - 2);
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v9 = xmmword_1DE095150;
    v10 = xmmword_1DE095160;
    v11 = (*result + 8);
    v12 = vdupq_n_s32(0x43D428CAu);
    v13 = vdupq_n_s32(0x4D0DCF73u);
    v14 = vdupq_n_s32(0x4D0ED319u);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v7, v10));
      v17.i64[0] = v9.i64[0] * v9.i64[0];
      v17.i64[1] = v9.i64[1] * v9.i64[1];
      v18.i64[0] = v10.i64[0] * v10.i64[0];
      v18.i64[1] = v10.i64[1] * v10.i64[1];
      v19 = vmulq_n_f32(vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v18)), vcvtq_f64_u64(v17)), *v6.i32), *v6.i32);
      v20 = vmulq_f32(vdivq_f32(v19, vaddq_f32(v19, v12)), vdivq_f32(v14, vaddq_f32(v19, v13)));
      if (vuzp1_s16(v16, v6).u8[0])
      {
        *(v11 - 2) = vmulq_f32(v20, v20).u32[0];
      }

      if (vuzp1_s16(v16, v6).i8[2])
      {
        *(v11 - 1) = vmulq_f32(v20, v20).i32[1];
      }

      if (vuzp1_s16(v6, vmovn_s64(vcgeq_u64(v7, *&v9))).i32[1])
      {
        *v11 = vmulq_f32(v20, v20).i32[2];
        v11[1] = vmulq_f32(v20, v20).i32[3];
      }

      v9 = vaddq_s64(v9, v15);
      v10 = vaddq_s64(v10, v15);
      v11 += 4;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

void std::default_delete<SPLMeter<float,CWeight>>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void AUSpeechLevelEstimator::~AUSpeechLevelEstimator(AUSpeechLevelEstimator *this)
{
  AUSpeechLevelEstimator::~AUSpeechLevelEstimator(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5933098;
  v2 = *(this + 88);
  if (v2)
  {
    *(this + 89) = v2;
    operator delete(v2);
  }

  v3 = *(this + 85);
  if (v3)
  {
    *(this + 86) = v3;
    operator delete(v3);
  }

  v4 = *(this + 82);
  if (v4)
  {
    *(this + 83) = v4;
    operator delete(v4);
  }

  v5 = *(this + 79);
  if (v5)
  {
    *(this + 80) = v5;
    operator delete(v5);
  }

  v6 = *(this + 78);
  *(this + 78) = 0;
  if (v6)
  {
    std::default_delete<SPLMeter<float,CWeight>>::operator()[abi:ne200100](v6);
  }

  v7 = *(this + 77);
  *(this + 77) = 0;
  if (v7)
  {
    std::default_delete<SPLMeter<float,CWeight>>::operator()[abi:ne200100](v7);
  }

  std::unique_ptr<SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>>::reset[abi:ne200100](this + 76, 0);

  ausdk::AUBase::~AUBase(this);
}

uint64_t EndpointVAD::Uninitialize(EndpointVAD *this)
{
  if (*this == 1)
  {
    v2 = *(this + 24);
    if (v2)
    {
      EndpointVADDSPChain::Uninitialize(*(this + 24));
      AudioComponentInstanceDispose(*(v2 + 64));
      *(v2 + 64) = 0;
      AudioComponentInstanceDispose(*(v2 + 56));
      *(v2 + 56) = 0;
      MEMORY[0x1E12BD160](v2, 0x1020C40CAB7616CLL);
    }

    v3 = *(this + 25);
    if (v3)
    {
      v4 = *v3;
      if (v4)
      {
        v5 = 0;
        v6 = 4;
        do
        {
          if (*&v3[v6])
          {
            free(*&v3[v6]);
            *(*(this + 25) + v6 * 4) = 0;
            v3 = *(this + 25);
            v4 = *v3;
          }

          ++v5;
          v6 += 4;
        }

        while (v5 < v4);
      }

      free(v3);
      *(this + 25) = 0;
    }

    v7 = *(this + 3);
    if (v7)
    {
      MEMORY[0x1E12BD130](v7, 0x1000C8052888210);
    }

    v8 = *(this + 28);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        v22 = (v9 + 72);
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v22);
        v22 = (v9 + 48);
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v22);
        v22 = (v9 + 24);
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v22);
        v10 = *v9;
        if (*v9)
        {
          *(v9 + 8) = v10;
          operator delete(v10);
        }

        MEMORY[0x1E12BD160](v9, 0xA0C400E294FEBLL);
      }

      v11 = v8[1];
      if (v11)
      {
        MEMORY[0x1E12BD160](v11, 0x1000C40451B5BE8);
      }

      v12 = v8[15];
      if (v12)
      {
        v8[16] = v12;
        operator delete(v12);
      }

      v13 = v8[12];
      if (v13)
      {
        v8[13] = v13;
        operator delete(v13);
      }

      v14 = v8[9];
      if (v14)
      {
        v8[10] = v14;
        operator delete(v14);
      }

      v15 = v8[6];
      if (v15)
      {
        v8[7] = v15;
        operator delete(v15);
      }

      v16 = v8[3];
      if (v16)
      {
        v8[4] = v16;
        operator delete(v16);
      }

      MEMORY[0x1E12BD160](v8, 0x1070C40333FFEABLL);
    }

    v17 = *(this + 27);
    if (v17)
    {
      v18 = *(v17 + 24);
      if (v18)
      {
        *(v17 + 32) = v18;
        operator delete(v18);
      }

      v19 = *v17;
      if (*v17)
      {
        *(v17 + 8) = v19;
        operator delete(v19);
      }

      MEMORY[0x1E12BD160](v17, 0x10C407BD0BEC4);
    }

    v20 = *(this + 6);
    *(this + 6) = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    std::__optional_destruct_base<BlockProcessor,false>::reset[abi:ne200100](this + 56);
    *(this + 24) = 0;
    *(this + 3) = 0;
    *this = 0;
    *(this + 27) = 0;
    *(this + 28) = 0;
  }

  result = *(this + 1);
  if (result)
  {
    result = MEMORY[0x1E12BD160](result, 0xC400A2AC0F1);
    *(this + 1) = 0;
  }

  return result;
}

void std::__optional_destruct_base<BlockProcessor,false>::reset[abi:ne200100](_BYTE *a1)
{
  if (a1[64] == 1)
  {
    BlockBuffer::~BlockBuffer((a1 + 24));
    BlockBuffer::~BlockBuffer(a1);
    a1[64] = 0;
  }
}

void EndpointVADViterbiModel::~EndpointVADViterbiModel(EndpointVADViterbiModel *this)
{
  v3 = (this + 72);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 48);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 24);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

float64_t EndpointVAD::BlockProcessFunc(const AudioTimeStamp *this, void *a2, uint64_t a3, AudioBufferList **a4, AudioBufferList **a5)
{
  v5 = a2;
  v117 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  mSampleTime = this[3].mSampleTime;
  Biquad::Process_Float32(*(*&mSampleTime + 48), *(*a3 + 16), (*a4)->mBuffers[0].mData, a2);
  LODWORD(v103) = 512;
  inInputBufferLists = v7;
  ioOutputBufferLists = v7;
  if (AudioUnitProcessMultiple(*(*&mSampleTime + 56), &v103, this + 2, v5, 1u, &inInputBufferLists, 1u, &ioOutputBufferLists))
  {
    goto LABEL_104;
  }

  v10 = AudioUnitProcess(*(*&mSampleTime + 64), &v103, this + 2, v5, v7);
  ++*(*&mSampleTime + 4);
  if (v10)
  {
    goto LABEL_104;
  }

  v11 = this[3].mSampleTime;
  AudioUnitGetParameter(*(*&v11 + 56), 1u, 0, 0, &inInputBufferLists);
  AudioUnitGetParameter(*(*&v11 + 56), 2u, 0, 0, &inInputBufferLists + 1);
  v12 = *(*&v11 + 64);
  *&v11 += 64;
  AudioUnitGetParameter(v12, 0x3Du, 0, 0, &v109);
  AudioUnitGetParameter(**&v11, 0x3Cu, 0, 0, &v109 + 1);
  v112 = 1056964608;
  AudioUnitGetParameter(**&v11, 0x3Bu, 0, 0, &v113);
  AudioUnitGetParameter(**&v11, 0x37u, 0, 0, &v113 + 1);
  v13 = 0;
  v14 = 0;
  v15 = 0.0;
  if (*&inInputBufferLists > 0.5)
  {
    v15 = 1.0;
  }

  v110 = v15;
  __asm { FMOV            V2.2S, #1.0 }

  v20 = vcgt_f32(v109, v113);
  v111 = vand_s8(v20, _D2);
  v106 = *&inInputBufferLists > 0.5;
  *&v9.f64[0] = vrev64_s32(vand_s8(v20, 0x100000001));
  v107 = v9.f64[0];
  mWordClockTime = this[3].mWordClockTime;
  v22 = *(mWordClockTime + 24);
  v23 = **mWordClockTime;
  v24 = v22 + 4;
  do
  {
    v25 = *(&v106 + v14);
    if (v25 + 1 > v23)
    {
      break;
    }

    v13 += *(v24 + v14) * v25;
    v14 += 4;
  }

  while (v14 != 12);
  v26 = *&this[3].mSMPTETime.mSubframes;
  v27 = *(v26 + 144);
  if (v27 >= *(*(v26 + 8) + 12))
  {
    v32 = *(v26 + 152);
    if (v32 < *(v26 + 148))
    {
      *(v26 + 152) = v32 + 1;
    }
  }

  else
  {
    v28 = *(v26 + 148) + 1;
    *(v26 + 144) = v27 + 1;
    *(v26 + 148) = v28;
    std::vector<AUSM::RoomCongruence::Biquad>::push_back[abi:ne200100](v26 + 72, (v26 + 168));
    v30 = *(v26 + 128);
    v29 = *(v26 + 136);
    if (v30 >= v29)
    {
      v33 = *(v26 + 120);
      v34 = (v30 - v33) >> 3;
      if ((v34 + 1) >> 61)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v35 = v29 - v33;
      v36 = v35 >> 2;
      if (v35 >> 2 <= (v34 + 1))
      {
        v36 = v34 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (v37)
      {
        std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v37);
      }

      *(8 * v34) = *(v26 + 184);
      v31 = 8 * v34 + 8;
      v38 = *(v26 + 120);
      v39 = *(v26 + 128) - v38;
      v40 = (8 * v34 - v39);
      memcpy(v40, v38, v39);
      v41 = *(v26 + 120);
      *(v26 + 120) = v40;
      *(v26 + 128) = v31;
      *(v26 + 136) = 0;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      *v30 = *(v26 + 184);
      v31 = (v30 + 1);
    }

    *(v26 + 128) = v31;
    LODWORD(ioOutputBufferLists) = 0;
    std::vector<unsigned int>::push_back[abi:ne200100]((v26 + 24), &ioOutputBufferLists);
    v42 = *(v26 + 144);
    if (v42 == 1)
    {
      v43 = *(*v26 + 48);
      if (0xAAAAAAAAAAAAAAABLL * ((*(*v26 + 56) - v43) >> 3) <= v13)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v44 = *(v26 + 128);
      v9 = vcvtq_f64_f32(vmul_f32(**(v43 + 24 * v13), 0x3C23D7003F7D70A4));
      *(*(v26 + 80) - 16) = v9;
      *(v44 - 8) = 0;
    }

    else
    {
      v45 = *v26;
      *(v26 + 152) = *(v26 + 148) - *(*(v26 + 8) + 8);
      v46 = *(v26 + 96);
      v47 = *(v26 + 104);
      if (v46 != v47)
      {
        v48 = v45[3];
        v49 = v42 - 2;
        v50 = *(v26 + 72);
        v51 = (*(v26 + 80) - v50) >> 4;
        v52 = v50 + 16 * v49;
        v53 = *(v26 + 96);
        do
        {
          if (v51 <= v49)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v54 = 0;
          v55 = *v48;
          do
          {
            v56 = *v55++;
            v53[v54] = *(v52 + v54 * 8) * v56;
            ++v54;
          }

          while (v54 != 2);
          v53 += 2;
          v48 += 3;
        }

        while (v53 != v47);
      }

      v57 = v45[9];
      if (0xAAAAAAAAAAAAAAABLL * ((v45[10] - v57) >> 3) <= v13)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v58 = (v57 + 24 * v13);
      v59 = *(v26 + 160);
      v61 = v58;
      v60 = *v58;
      if (0xAAAAAAAAAAAAAAABLL * ((v61[1] - v60) >> 3) <= v59)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v62 = *(v60 + 24 * v59);
      v63 = (*(v26 + 128) - 8);
      v64 = *(v26 + 80);
      v65 = -16;
      HIDWORD(v9.f64[0]) = 0;
      do
      {
        v66 = *v46;
        v67 = v46[1];
        v46 += 2;
        if (v66 < 0.0)
        {
          v66 = 0.0;
        }

        v68 = v67 >= v66;
        if (v67 >= v66)
        {
          v66 = v67;
        }

        v69 = *v62++;
        *(v64 + v65) = v66 * v69;
        *v63++ = v68;
        v65 += 8;
      }

      while (v65);
      *(v26 + 160) = v13;
    }
  }

  v70 = *(v26 + 152);
  if ((v70 & 0x80000000) != 0)
  {
    goto LABEL_97;
  }

  v71 = *(v26 + 156);
  if (v70 <= v71)
  {
    v92 = *(v26 + 48);
    if (v70 >= (*(v26 + 56) - v92) >> 2)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    v93 = *(v26 + 24);
    if (v70 >= (*(v26 + 32) - v93) >> 2)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    *(v93 + 4 * v70) = *(v92 + 4 * v70);
    goto LABEL_97;
  }

  v72 = *(v26 + 148);
  v73 = v72 - 1;
  if ((v71 & 0x80000000) == 0 && v73 <= v71)
  {
    goto LABEL_92;
  }

  v115 = 0;
  v116 = 0;
  ioOutputBufferLists = &v115;
  LODWORD(v103) = 0;
  if (*(v26 + 20))
  {
    v74 = 0;
    do
    {
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&ioOutputBufferLists, v74++);
      LODWORD(v103) = v74;
    }

    while (v74 < *(v26 + 20));
  }

  v75 = 0;
  v76 = 0;
  v104 = 0;
  v105 = 0;
  v103 = &v104;
  v77 = *(v26 + 128) - ((*(v26 + 128) + 8 * ~v72 - *(v26 + 120)) & 0xFFFFFFFFFFFFFFF8);
  do
  {
    while (1)
    {
      std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(v75);
      v104 = 0;
      v105 = 0;
      v103 = &v104;
      v78 = ioOutputBufferLists;
      if (ioOutputBufferLists == &v115)
      {
        v82 = 0;
        v83 = &v104;
      }

      else
      {
        do
        {
          v79 = *(&v78[1].mNumberBuffers + 1);
          if (v79 >= 2)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v103, *(v77 - 8 + 4 * v79));
          v80 = *&v78->mBuffers[0].mNumberChannels;
          if (v80)
          {
            do
            {
              mData = v80;
              v80 = *&v80->mNumberBuffers;
            }

            while (v80);
          }

          else
          {
            do
            {
              mData = v78->mBuffers[0].mData;
              _ZF = *mData == v78;
              v78 = mData;
            }

            while (!_ZF);
          }

          v78 = mData;
        }

        while (mData != &v115);
        v82 = v105;
        v83 = v103;
        if (v105 == 1)
        {
          v76 = *(&v103[1].mNumberBuffers + 1);
          v84 = 1;
          goto LABEL_61;
        }
      }

      v84 = 0;
      --v73;
LABEL_61:
      v85 = ioOutputBufferLists;
      v75 = v115;
      v86 = v104;
      ioOutputBufferLists = v83;
      v115 = v104;
      v103 = v85;
      v104 = v75;
      v87 = v116;
      v116 = v82;
      v105 = v87;
      if (v82)
      {
        v86[2] = &v115;
        v88 = (v75 + 2);
        if (!v87)
        {
          v88 = &v103;
        }

        *v88 = &v104;
        v77 -= 8;
        if (v84)
        {
          LOBYTE(v82) = 0;
        }

        else
        {
          _ZF = v77 == *(v26 + 120) || v73 == 0;
          LOBYTE(v82) = !_ZF;
        }
      }

      else
      {
        ioOutputBufferLists = &v115;
        v89 = v87 ? v75 + 2 : &v103;
        *v89 = &v104;
        v77 -= 8;
      }

      v91 = *(v26 + 156);
      if ((v91 & 0x80000000) == 0)
      {
        break;
      }

      if ((v82 & 1) == 0)
      {
        if (!v84)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }
    }

    if (v73 <= v91)
    {
      LOBYTE(v82) = 0;
    }
  }

  while ((v82 & 1) != 0);
  if (v73 <= v91)
  {
    LOBYTE(v84) = 0;
  }

  if (v84)
  {
LABEL_90:
    EndpointVADRTViterbi::expandWithZerosIfNecessary(v26 + 48, v73);
    EndpointVADRTViterbi::backtraceBackpointerArray(v26, *(v26 + 48), *(v26 + 56), v73, *(v26 + 156) + 1, v76);
    *(v26 + 156) = v73;
    v75 = v104;
  }

LABEL_91:
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(v75);
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(v115);
  LODWORD(v70) = *(v26 + 152);
  v71 = *(v26 + 156);
LABEL_92:
  if (v70 <= v71)
  {
    v94 = *(v26 + 48);
    if (v70 >= ((*(v26 + 56) - v94) >> 2))
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    v95 = *(v26 + 24);
    if (v70 >= ((*(v26 + 32) - v95) >> 2))
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    *(v95 + 4 * v70) = *(v94 + 4 * v70);
  }

  else
  {
    EndpointVADRTViterbi::decodeStateSequence(v26, *(v26 + 148), v70);
  }

LABEL_97:
  if (!(*(v26 + 144) % **(v26 + 8)))
  {
    v96 = *(v26 + 80);
    v97 = 0.0;
    v98 = -16;
    do
    {
      v97 = v97 + *(v96 + v98);
      v98 += 8;
    }

    while (v98);
    v9 = vmulq_n_f64(*(v96 - 16), 1.0 / v97);
    *(v96 - 16) = v9;
  }

  v99 = 0;
  v100 = this->mWordClockTime;
  v101 = *&this->mSMPTETime.mSubframes;
  do
  {
    *(v100 + 4 * v101++) = *(&inInputBufferLists + v99);
    v99 += 4;
  }

  while (v99 != 40);
  *&this->mSMPTETime.mSubframes = v101;
LABEL_104:
  LODWORD(v9.f64[0]) = this->mSMPTETime.mFlags;
  v9.f64[0] = this[2].mSampleTime + *&v9.f64[0];
  this[2].mSampleTime = v9.f64[0];
  return v9.f64[0];
}

void sub_1DDFC5530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(a10);
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(a20);
  _Unwind_Resume(a1);
}

uint64_t AUPeakPowerGuard::SetProperty(AUPeakPowerGuard *this, int a2, int a3, unsigned int a4, CFDictionaryRef *a5, void *a6, int *a7)
{
  if (a2 == 6611 && a3 == 0)
  {
    v11 = *(this + 268);
    if (v11)
    {
      CFRelease(v11);
    }

    Copy = CFDictionaryCreateCopy(0, *a5);
    *(this + 268) = Copy;
    v13 = *(this + 66);
    if (v13 && !DspLib::PeakPowerGuard::Algorithm::setAdmittanceFilterCoeffSet(v13, Copy))
    {
      return 4294956429;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return AUDspLib::SetProperty(this, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t AUPeakPowerGuard::GetProperty(AUPeakPowerGuard *this, int a2, unsigned int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  if (a2 == 6611 && a3 == 0)
  {
    v9 = *(this + 268);
    if (v9)
    {
      CFRetain(*(this + 268));
      v10 = CFGetTypeID(v9);
      if (v10 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      result = 0;
      *a5 = v9;
    }

    else
    {
      return 4294956445;
    }
  }

  else
  {

    return AUDspLib::GetProperty(this, a2, a3, a4, a5, a6);
  }

  return result;
}

void sub_1DDFC5748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t AUPeakPowerGuard::GetPropertyInfo(AUPeakPowerGuard *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 != 6611 || a3 != 0)
  {
    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  *a6 = 0;
  *a5 = 8;
  return 0;
}

uint64_t AUPeakPowerGuard::Initialize(AUPeakPowerGuard *this)
{
  v2 = AUDspLib::Initialize(this);
  v3 = *(this + 268);
  if (v3)
  {
    v4 = *(this + 66);
    if (v4)
    {
      DspLib::PeakPowerGuard::Algorithm::setAdmittanceFilterCoeffSet(v4, v3);
    }
  }

  return v2;
}

void AUPeakPowerGuard::~AUPeakPowerGuard(AUPeakPowerGuard *this)
{
  AUPeakPowerGuard::~AUPeakPowerGuard(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5933308;
  v2 = *(this + 268);
  if (v2)
  {
    CFRelease(v2);
  }

  AUDspLib::~AUDspLib(this);
}

void *NeuralTranscoder::reset(NeuralTranscoder *this)
{
  result = Neuralizer::reset(this);
  v4 = *(this + 28);
  for (i = *(this + 29); i != v4; result = std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](i, 0))
  {
    --i;
  }

  *(this + 29) = v4;
  *(this + 32) = *(this + 31);
  return result;
}

uint64_t NeuralTranscoder::process(uint64_t result, uint64_t *a2, unsigned int a3)
{
  v76 = *MEMORY[0x1E69E9840];
  if (*(result + 8))
  {
    v3 = result;
    if (*(result + 116) == 1)
    {
      v5 = *(result + 104);
      if (v5 >= a3)
      {
        v5 = a3;
      }

      v74 = v5;
      if (*(result + 52))
      {
        v6 = 0;
        v7 = 0;
        do
        {
          result = memmove(*(*(v3 + 64) + v6), (*(*(v3 + 64) + v6) + 4 * *(v3 + 108)), 4 * (((*(*(v3 + 64) + v6 + 8) - *(*(v3 + 64) + v6)) >> 2) - *(v3 + 108)));
          ++v7;
          v6 += 32;
        }

        while (v7 < *(v3 + 52));
      }

      if (v74)
      {
        v8 = *(v3 + 96);
        v9 = *(v3 + 88);
        v10 = v74;
        do
        {
          v11 = v8 - v9;
          if (*(v3 + 160) == 1)
          {
            RequiredNumberOfInputFrames = AudioSampleRateConverterGetRequiredNumberOfInputFrames();
            v13 = RequiredNumberOfInputFrames;
            if (RequiredNumberOfInputFrames > v10)
            {
              RequiredNumberOfInputFrames = CA::AudioSampleRateConverter::GetExpectedNumberOfOutputFrames(*(v3 + 152));
              v11 = RequiredNumberOfInputFrames;
              v13 = v10;
            }

            v75 = v73;
            MEMORY[0x1EEE9AC00](RequiredNumberOfInputFrames);
            v15 = &v73[-((v14 + 15) & 0xFFFFFFFF0)];
            if (v14 >= 0x200)
            {
              v16 = 512;
            }

            else
            {
              v16 = v14;
            }

            bzero(&v73[-((v14 + 15) & 0xFFFFFFFF0)], v16);
            v17 = *(v3 + 48);
            MEMORY[0x1EEE9AC00](v18);
            v20 = &v73[-((v19 + 15) & 0xFFFFFFFF0)];
            if (v19 >= 0x200)
            {
              v21 = 512;
            }

            else
            {
              v21 = v19;
            }

            bzero(&v73[-((v19 + 15) & 0xFFFFFFFF0)], v21);
            if (v17)
            {
              v22 = 0;
              v23 = *(v3 + 120);
              v24 = *a2;
              v25 = v74 - v10;
              v26 = *(v3 + 96);
              v27 = *(v3 + 88);
              v28 = *(v3 + 16);
              do
              {
                if (v23 == 7012356)
                {
                  v29 = kFuMa2ACNMapping[v22];
                }

                else
                {
                  v29 = v22;
                }

                v15[v22] = (*(v24 + 32 * v29) + 4 * v25);
                *&v20[8 * v22++] = v28 + 4 * v27;
                v27 += v26;
              }

              while (v17 != v22);
            }

            result = CA::AudioSampleRateConverter::Process(*(v3 + 152), v15, v13, v20, v11);
            *(v3 + 88) += v11;
            v9 = *(v3 + 88);
          }

          else
          {
            if (v11 >= v10)
            {
              v13 = v10;
            }

            else
            {
              v13 = v11;
            }

            if (*(v3 + 48))
            {
              v30 = 0;
              v31 = v74 - v10;
              do
              {
                if (*(v3 + 120) == 7012356)
                {
                  v32 = kFuMa2ACNMapping[v30];
                }

                else
                {
                  v32 = v30;
                }

                result = memcpy((*(v3 + 16) + 4 * (*(v3 + 88) + *(v3 + 96) * v30++)), (*(*a2 + 32 * v32) + 4 * v31), 4 * v13);
              }

              while (v30 < *(v3 + 48));
              v9 = *(v3 + 88);
            }

            v9 += v13;
            *(v3 + 88) = v9;
          }

          v8 = *(v3 + 96);
          if (v9 >= v8)
          {
            v75 = v13;
            if (*(v3 + 208) != *(v3 + 200) && *(v3 + 48))
            {
              v33 = 0;
              v34 = 0;
              do
              {
                v35 = *(v3 + 16) + 4 * (*(v3 + 96) * v34);
                MEMORY[0x1E12BE940](v35, 1, *(v3 + 200) + v33, v35, 1);
                ++v34;
                v33 += 4;
              }

              while (v34 < *(v3 + 48));
            }

            if (*(v3 + 292) == 1)
            {
              v36 = memcpy(*(v3 + 248), *(v3 + 16), *(v3 + 24) - *(v3 + 16));
              MEMORY[0x1EEE9AC00](v36);
              v38 = &v73[-((v37 + 15) & 0xFFFFFFFF0)];
              if (v37 >= 0x200)
              {
                v39 = 512;
              }

              else
              {
                v39 = v37;
              }

              bzero(&v73[-((v37 + 15) & 0xFFFFFFFF0)], v39);
              v40 = *(v3 + 48);
              MEMORY[0x1EEE9AC00](v41);
              v43 = &v73[-((v42 + 15) & 0xFFFFFFFF0)];
              if (v42 >= 0x200)
              {
                v44 = 512;
              }

              else
              {
                v44 = v42;
              }

              bzero(&v73[-((v42 + 15) & 0xFFFFFFFF0)], v44);
              v45 = *(v3 + 96);
              if (v40)
              {
                v46 = 0;
                v47 = *(v3 + 248);
                v48 = *(v3 + 16);
                v49 = v38;
                v50 = v43;
                do
                {
                  *v49++ = (v47 + 4 * v46);
                  *v50++ = (v48 + 4 * v46);
                  v46 += v45;
                  --v40;
                }

                while (v40);
              }

              ParametricFilters::process(*(v3 + 280), v43, v38, v45, 0);
              result = (*(***(v3 + 8) + 72))(**(v3 + 8), v3 + 248);
            }

            else
            {
              result = (*(***(v3 + 8) + 72))(**(v3 + 8), v3 + 16);
            }

            LODWORD(ExpectedNumberOfOutputFrames) = *(v3 + 96);
            if (*(v3 + 176) == 1)
            {
              ExpectedNumberOfOutputFrames = CA::AudioSampleRateConverter::GetExpectedNumberOfOutputFrames(*(v3 + 168));
              MEMORY[0x1EEE9AC00](ExpectedNumberOfOutputFrames);
              v53 = &v73[-((v52 + 15) & 0xFFFFFFFF0)];
              if (v52 >= 0x200)
              {
                v54 = 512;
              }

              else
              {
                v54 = v52;
              }

              bzero(&v73[-((v52 + 15) & 0xFFFFFFFF0)], v54);
              if (*(v3 + 276) == 1 && *(v3 + 272))
              {
                IR::FixedIntegerDelay<float>::process();
              }

              if (*(v3 + 56))
              {
                v56 = 0;
                do
                {
                  v55 = (*(***(v3 + 8) + 40))(**(v3 + 8));
                  (&v53[v56])[*(v3 + 272)] = (*v55 + 4 * *(v3 + 96) * v56);
                  ++v56;
                }

                while (v56 < *(v3 + 56));
              }

              v57 = *(v3 + 52);
              MEMORY[0x1EEE9AC00](v55);
              v59 = &v73[-((v58 + 15) & 0xFFFFFFFF0)];
              if (v58 >= 0x200)
              {
                v60 = 512;
              }

              else
              {
                v60 = v58;
              }

              bzero(&v73[-((v58 + 15) & 0xFFFFFFFF0)], v60);
              if (v57)
              {
                v61 = *(v3 + 64);
                v62 = *(v3 + 92);
                v63 = v59;
                do
                {
                  v64 = *v61;
                  v61 += 4;
                  *v63++ = v64 + 4 * v62;
                  --v57;
                }

                while (v57);
              }

              result = CA::AudioSampleRateConverter::Process(*(v3 + 168), v53, *(v3 + 96), v59, ExpectedNumberOfOutputFrames);
            }

            else
            {
              if (*(v3 + 276) == 1 && *(v3 + 272))
              {
                IR::FixedIntegerDelay<float>::process();
              }

              if (*(v3 + 56))
              {
                v65 = 0;
                do
                {
                  v66 = *(v3 + 92);
                  v67 = *(*(v3 + 64) + 32 * (v65 + *(v3 + 272)));
                  v68 = (*(***(v3 + 8) + 40))(**(v3 + 8));
                  result = memcpy((v67 + 4 * v66), (*v68 + 4 * *(v3 + 96) * v65++), 4 * *(v3 + 96));
                }

                while (v65 < *(v3 + 56));
              }
            }

            v8 = *(v3 + 96);
            v9 = *(v3 + 88) - v8;
            v69 = *(v3 + 92) + ExpectedNumberOfOutputFrames;
            *(v3 + 88) = v9;
            *(v3 + 92) = v69;
            LODWORD(v13) = v75;
          }

          v10 = (v10 - v13);
        }

        while (v10);
      }

      v70 = *(v3 + 92);
      v71 = v70 >= v74;
      v72 = v70 - v74;
      if (v71)
      {
        *(v3 + 92) = v72;
      }

      *(v3 + 108) = v74;
    }
  }

  return result;
}

void sub_1DDFC6050(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void NeuralTranscoder::~NeuralTranscoder(void ***this)
{
  NeuralTranscoder::~NeuralTranscoder(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5933598;
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](this + 35, 0);
  v2 = this[31];
  if (v2)
  {
    this[32] = v2;
    operator delete(v2);
  }

  v3 = (this + 28);
  std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](&v3);

  Neuralizer::~Neuralizer(this);
}

uint64_t AUXTC::deleteAlgorithms(AUXTC *this)
{
  *(this + 66) = 0;
  AUDspLib::deleteAlgorithms(this);
  return 0;
}

uint64_t AUXTC::SupportedNumChannels(AUXTC *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUXTC::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 1;
}

uint64_t AUXTC::GetParameterValueStrings(AUXTC *this, unsigned int a2, unsigned int a3, const __CFArray **a4)
{
  if (a3 == 1869769061)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  if (a3 == 1937141612)
  {
    v4 = 16;
  }

  if (v4 > 0x3F)
  {
    return 4294956418;
  }

  if (!a4)
  {
    return 0;
  }

  v6 = *(*(this + 211) + 4 * v4);
  if (v6 == 1)
  {
    v7 = DspLib::XTC::DeviceOrientations::kNames;
    v8 = 7;
  }

  else if ((v6 - 23) > 6)
  {
    if (v6 == 15)
    {
      v7 = DspLib::XTC::TestNoiseGeneratorModes::kNames;
    }

    else
    {
      if (v6)
      {
        return 4294956418;
      }

      v7 = DspLib::XTC::BypassModes::kNames;
    }

    v8 = 3;
  }

  else
  {
    v7 = DspLib::XTC::Setups::kNames;
    v8 = 4;
  }

  v10 = CFArrayCreate(0, v7, v8, 0);
  v9 = 0;
  *a4 = v10;
  return v9;
}

uint64_t AUXTC::RestoreState(AUXTC *this, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = [a2 objectForKey:@"DspLibXTC_customFilterDictionary"];
  *(this + 2768) = 0;
  if (!v27)
  {
    goto LABEL_23;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = v27;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v5)
  {

LABEL_12:
    DeepCopy = CFPropertyListCreateDeepCopy(0, v4, 2uLL);
    v13 = *(this + 337);
    *(this + 337) = DeepCopy;

    v14 = *(this + 337);
    if (v14 && load_W_filters(v14, (this + 2144)))
    {
      *(this + 2768) = 1;
      AUXTC::newFIRMatrix(&v32);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = *(this + 337);
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v16)
    {
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [*(this + 337) objectForKey:*(*(&v28 + 1) + 8 * i)];
          [v19 removeObjectForKey:@"W"];
        }

        v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v16);
    }

    goto LABEL_23;
  }

  v6 = *v34;
  v7 = 1;
  do
  {
    for (j = 0; j != v5; ++j)
    {
      if (*v34 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [v4 objectForKey:*(*(&v33 + 1) + 8 * j)];
      v10 = [v9 objectForKey:@"W"];
      v11 = v10 != 0;

      v7 &= v11;
    }

    v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  }

  while (v5);

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_23:
  v20 = AUDspLib::RestoreState(this, a2);
  v21 = ausdk::AUBase::SetParameter(this, 0x10u, 0, 0, *(this + 1236));
  v22 = ausdk::AUBase::SetParameter(this, 1u, 0, 0, AUXTC::mDeviceOrientationCachedPrevious);
  v23 = ausdk::AUBase::SetParameter(this, 1u, 0, 0, AUXTC::mDeviceOrientationCachedCurrent);
  if (v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (v22)
  {
    v24 = v22;
  }

  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  return v25;
}

void sub_1DDFC6560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    std::default_delete<DspLib::XTC::FIRMatrix>::operator()[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

uint64_t load_W_filters(NSDictionary *a1, DspLib::XTC::Algorithm *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [(NSDictionary *)v3 count];
    v6 = 0;
    if (a2 && v5)
    {
      v7 = [(NSDictionary *)v4 objectForKey:@"CoefficientsLandscape"];

      if (v7)
      {
        v8 = DspLib::XTC::Algorithm::wFilters(a2, 0);
        LOBYTE(v7) = read_W_dictionary(v4, v8, @"CoefficientsLandscape");
        v9 = v7 ^ 1;
      }

      else
      {
        v9 = 0;
      }

      v10 = [(NSDictionary *)v4 objectForKey:@"CoefficientsPortrait"];

      if (v10)
      {
        v11 = DspLib::XTC::Algorithm::wFilters(a2, 1);
        W_dictionary = read_W_dictionary(v4, v11, @"CoefficientsPortrait");
        v9 |= W_dictionary ^ 1;
        LOBYTE(v7) = v7 | W_dictionary;
      }

      v13 = 0;
      v14 = 1;
      do
      {
        v15 = v14;
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Setup_%d", v13];
        v17 = [(NSDictionary *)v4 objectForKey:v16];

        if (v17)
        {
          v18 = DspLib::XTC::Algorithm::wFilters(a2, v13);
          v19 = read_W_dictionary(v4, v18, v16);
          v9 |= v19 ^ 1;
          LOBYTE(v7) = v19 | v7;
        }

        v14 = 0;
        v13 = 1;
      }

      while ((v15 & 1) != 0);
      v6 = v7 & (v9 ^ 1);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1DDFC6870(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::default_delete<DspLib::XTC::FIRMatrix>::operator()[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t ca::concurrent::deferred_deletion_stash<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::store(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
    ;
  }

  if (!*a2)
  {
    __assert_rtn("push", "deferred_deletion_queue.h", 73, "ioObject");
  }

  atomic_exchange((a1 + 2049), 1u);
  v6 = *a2;
  if (boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::do_push<false>(a1 + 128, &v6))
  {
    *a2 = 0;
  }

  ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::drain_trash(a1 + 64);
  result = v5;
  if (v5)
  {

    return std::default_delete<DspLib::XTC::FIRMatrix>::operator()[abi:ne200100](result);
  }

  return result;
}

void sub_1DDFC698C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    std::default_delete<DspLib::XTC::FIRMatrix>::operator()[abi:ne200100](a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::default_delete<DspLib::XTC::FIRMatrix>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 624);
    if (v2)
    {
      *(v1 + 632) = v2;
      operator delete(v2);
    }

    v3 = 608;
    while (1)
    {
      v4 = v1 + v3;
      v5 = *(v1 + v3 - 8);
      *(v1 + v3 - 8) = 0;
      if (v5)
      {
        v6 = DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v5);
        MEMORY[0x1E12BD160](v6, 0x1020C405730B0C9);
      }

      v7 = *(v4 - 16);
      *(v4 - 16) = 0;
      if (v7)
      {
        v8 = DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v7);
        MEMORY[0x1E12BD160](v8, 0x1020C405730B0C9);
      }

      v9 = v1 + v3;
      v10 = *(v1 + v3 - 40);
      if (v10)
      {
        *(v9 - 32) = v10;
        operator delete(v10);
      }

      DspLib::ComplexVector::~ComplexVector((v9 - 120));
      v11 = *(v9 - 144);
      if (v11)
      {
        *(v1 + v3 - 136) = v11;
        operator delete(v11);
      }

      v3 -= 152;
      if (!v3)
      {

        JUMPOUT(0x1E12BD160);
      }
    }
  }

  return result;
}

BOOL ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::pop(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v11);
  if (v4)
  {
    v5 = v11;
    if (!v11)
    {
      __assert_rtn("pop", "deferred_deletion_queue.h", 115, "pendingObject");
    }

    v6 = *a2;
    if (*a2)
    {
      *a2 = 0;
      v10 = v6;
      if (!boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::do_push<false>(a1 + 1024, &v10))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "trash queue exceeded capacity, object memory leaked");
      }

      v7 = *a2;
      *a2 = v5;
      if (v7)
      {
        std::default_delete<DspLib::XTC::FIRMatrix>::operator()[abi:ne200100](v7);
      }
    }

    else
    {
      *a2 = v11;
    }
  }

  return v4;
}

BOOL ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::drain_trash(uint64_t a1)
{
  for (i = 0; ; std::default_delete<DspLib::XTC::FIRMatrix>::operator()[abi:ne200100](i))
  {
    result = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 1024), &i);
    if (!result)
    {
      break;
    }

    if (!i)
    {
      __assert_rtn("drain_trash", "deferred_deletion_queue.h", 148, "trashObject");
    }
  }

  return result;
}

uint64_t read_W_dictionary(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"SampleRate"];
    v10 = v9;
    if (!v9 || ([v9 floatValue], !a2))
    {
      v42 = 0;
LABEL_55:

      goto LABEL_56;
    }

    *(a2 + 8) = v11;
    v12 = [v8 objectForKey:@"W"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKey:@"W11real"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v16 = v13;
        v64 = [v16 objectForKey:@"W11real"];
        if (v64)
        {
          v63 = [v16 objectForKey:@"W11imag"];
          if (v63)
          {
            v62 = [v16 objectForKey:@"W21real"];
            if (v62)
            {
              v61 = [v16 objectForKey:@"W21imag"];
              if (v61)
              {
                v60 = [v16 objectForKey:@"W12real"];
                if (v60)
                {
                  v59 = [v16 objectForKey:@"W12imag"];
                  if (v59)
                  {
                    v58 = [v16 objectForKey:@"W22real"];
                    if (v58)
                    {
                      v57 = [v16 objectForKey:@"W22imag"];
                      if (v57)
                      {
                        v17 = [v64 count];
                        *a2 = v17;
                        v49 = (a2 + 16);
                        v50 = v17;
                        for (i = 16; i != 336; i += 80)
                        {
                          DspLib::ComplexVector::setLength((a2 + i), *a2);
                        }

                        if (v50)
                        {
                          v19 = 0;
                          while (1)
                          {
                            v56 = [v64 objectAtIndex:{v19, v49}];
                            if (!v56)
                            {
                              goto LABEL_45;
                            }

                            v55 = [v63 objectAtIndex:v19];
                            if (!v55)
                            {
                              goto LABEL_44;
                            }

                            v54 = [v62 objectAtIndex:v19];
                            if (!v54)
                            {
                              goto LABEL_43;
                            }

                            v53 = [v61 objectAtIndex:v19];
                            if (!v53)
                            {
                              break;
                            }

                            v52 = [v60 objectAtIndex:v19];
                            if (!v52)
                            {
                              v46 = 0;
                              goto LABEL_41;
                            }

                            v51 = [v59 objectAtIndex:v19];
                            if (!v51)
                            {
                              v47 = 0;
                              v46 = v52;
                              goto LABEL_40;
                            }

                            v20 = [v58 objectAtIndex:v19];
                            if (!v20)
                            {
                              v47 = v51;
                              v46 = v52;
LABEL_40:

LABEL_41:
LABEL_42:

LABEL_43:
LABEL_44:

                              goto LABEL_45;
                            }

                            v21 = [v57 objectAtIndex:v19];

                            if (!v21)
                            {
                              goto LABEL_45;
                            }

                            v22 = [v64 objectAtIndex:v19];
                            [v22 floatValue];
                            v24 = v23;
                            v25 = [v63 objectAtIndex:v19];
                            [v25 floatValue];
                            v65.imag = v26;
                            v65.real = v24;
                            DspLib::ComplexSpan::setElement(v49, v19, v65);

                            v27 = [v62 objectAtIndex:v19];
                            [v27 floatValue];
                            v29 = v28;
                            v30 = [v61 objectAtIndex:v19];
                            [v30 floatValue];
                            v66.imag = v31;
                            v66.real = v29;
                            DspLib::ComplexSpan::setElement((a2 + 176), v19, v66);

                            v32 = [v60 objectAtIndex:v19];
                            [v32 floatValue];
                            v34 = v33;
                            v35 = [v59 objectAtIndex:v19];
                            [v35 floatValue];
                            v67.imag = v36;
                            v67.real = v34;
                            DspLib::ComplexSpan::setElement((a2 + 96), v19, v67);

                            v37 = [v58 objectAtIndex:v19];
                            [v37 floatValue];
                            v39 = v38;
                            v40 = [v57 objectAtIndex:v19];
                            [v40 floatValue];
                            v68.imag = v41;
                            v68.real = v39;
                            DspLib::ComplexSpan::setElement((a2 + 256), v19, v68);

                            if (v50 == ++v19)
                            {
                              goto LABEL_27;
                            }
                          }

                          goto LABEL_42;
                        }

LABEL_27:

                        goto LABEL_35;
                      }

LABEL_45:
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v44 = [v13 objectForKey:@"W11real"];
        objc_opt_class();
        v45 = objc_opt_isKindOfClass();

        if (v45 & 1) != 0 && (parseCoefficientsData(v13, a2))
        {
LABEL_35:
          v42 = 1;
LABEL_54:

          goto LABEL_55;
        }
      }
    }

    else
    {
      *a2 = 0;
      for (j = 16; j != 336; j += 80)
      {
        DspLib::ComplexVector::setLength((a2 + j), *a2);
      }
    }

    v42 = 0;
    goto LABEL_54;
  }

  v42 = 0;
LABEL_56:

  return v42;
}

uint64_t parseCoefficientsData(void *a1, unint64_t *a2)
{
  v68[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 objectForKey:@"W11real"];
  if (v4)
  {
    v5 = [v3 objectForKey:@"W11imag"];
    if (!v5)
    {
      v9 = 0;
      v14 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v6 = [v3 objectForKey:@"W21real"];
    if (!v6)
    {
      v9 = 0;
      v14 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v7 = [v3 objectForKey:@"W21imag"];
    if (!v7)
    {
      v9 = 0;
      v14 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v60 = v6;
    v8 = [v3 objectForKey:@"W12real"];
    if (!v8)
    {
      v9 = 0;
      v14 = 0;
LABEL_36:

      v6 = v60;
      goto LABEL_37;
    }

    v54 = v7;
    v9 = [v3 objectForKey:@"W12imag"];
    if (!v9)
    {
      v14 = 0;
LABEL_35:

      v7 = v54;
      goto LABEL_36;
    }

    v53 = v9;
    v10 = [v3 objectForKey:@"W22real"];
    if (!v10)
    {
      v9 = 0;
      v14 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v51 = v10;
    v52 = v8;
    v11 = [v3 objectForKey:@"W22imag"];
    if (!v11)
    {
      v15 = 0;
      v9 = 0;
      v14 = 0;
      v8 = v52;
LABEL_33:

      goto LABEL_34;
    }

    v50 = v11;
    v12 = [v3 objectForKey:@"WDataIsCompressed"];
    v13 = [v12 BOOLValue];

    if (v13)
    {
      v68[0] = 0;
      v59 = [v4 decompressedDataUsingAlgorithm:3 error:v68];
      v9 = v68[0];

      v8 = v52;
      if (v9)
      {
        v14 = 0;
LABEL_31:
        v4 = v59;
LABEL_32:
        v15 = v50;
        goto LABEL_33;
      }

      v67 = 0;
      v58 = [v5 decompressedDataUsingAlgorithm:3 error:&v67];
      v9 = v67;

      v8 = v52;
      if (v9 || (v66 = 0, [v52 decompressedDataUsingAlgorithm:3 error:&v66], v8 = objc_claimAutoreleasedReturnValue(), v9 = v66, v52, v9))
      {
        v14 = 0;
LABEL_30:
        v5 = v58;
        goto LABEL_31;
      }

      v65 = 0;
      v52 = v8;
      v44 = [v53 decompressedDataUsingAlgorithm:3 error:&v65];
      v9 = v65;

      if (v9)
      {
        v14 = 0;
        v53 = v44;
        goto LABEL_30;
      }

      v64 = 0;
      v52 = v8;
      v45 = [v60 decompressedDataUsingAlgorithm:3 error:&v64];
      v9 = v64;

      if (v9)
      {
        v14 = 0;
        v53 = v44;
LABEL_50:
        v60 = v45;
        goto LABEL_30;
      }

      v63 = 0;
      v52 = v8;
      v60 = v45;
      v46 = [v54 decompressedDataUsingAlgorithm:3 error:&v63];
      v9 = v63;

      if (v9)
      {
        v14 = 0;
LABEL_49:
        v53 = v44;
        v54 = v46;
        goto LABEL_50;
      }

      v62 = 0;
      v52 = v8;
      v54 = v46;
      v60 = v45;
      v47 = [v51 decompressedDataUsingAlgorithm:3 error:&v62];
      v9 = v62;

      if (v9)
      {
        v14 = 0;
        v51 = v47;
        goto LABEL_49;
      }

      v60 = v45;
      v61 = 0;
      v51 = v47;
      v52 = v8;
      v54 = v46;
      v57 = [v50 decompressedDataUsingAlgorithm:3 error:&v61];
      v9 = v61;

      if (v9)
      {
        v14 = 0;
        v15 = v57;
        v5 = v58;
        v51 = v47;
        v53 = v44;
        v54 = v46;
        v60 = v45;
        v4 = v59;
        goto LABEL_33;
      }

      v5 = v58;
      v50 = v57;
      v51 = v47;
      v52 = v8;
      v53 = v44;
      v54 = v46;
      v16 = v45;
      v4 = v59;
    }

    else
    {
      v16 = v60;
    }

    v60 = v16;
    v49 = [v4 length];
    v57 = (v49 >> 2);
    *a2 = v57;
    v55 = a2 + 2;
    for (i = 2; i != 42; i += 10)
    {
      DspLib::ComplexVector::setLength(&a2[i], *a2);
    }

    v48[1] = v48;
    v19 = 4 * v57;
    *&v20 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
    v59 = v48 - ((v19 + 15) & 0x7FFFFFFF0);
    v21 = [v4 length];
    v22 = [v4 getBytes:v59 length:v21];
    *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
    v58 = v48 - ((v19 + 15) & 0x7FFFFFFF0);
    v24 = [v5 length];
    v25 = [v5 getBytes:v58 length:v24];
    *&v26 = MEMORY[0x1EEE9AC00](v25).n128_u64[0];
    v56 = v48 - ((v19 + 15) & 0x7FFFFFFF0);
    v27 = [v52 length];
    v28 = [v52 getBytes:v56 length:v27];
    *&v29 = MEMORY[0x1EEE9AC00](v28).n128_u64[0];
    v30 = v48 - ((v19 + 15) & 0x7FFFFFFF0);
    v31 = [v53 length];
    v32 = [v53 getBytes:v30 length:v31];
    v33 = [v16 getBytes:v30 length:{objc_msgSend(v16, "length", MEMORY[0x1EEE9AC00](v32).n128_f64[0])}];
    *&v34 = MEMORY[0x1EEE9AC00](v33).n128_u64[0];
    v35 = [v54 length];
    v36 = [v54 getBytes:v30 length:v35];
    *&v37 = MEMORY[0x1EEE9AC00](v36).n128_u64[0];
    v38 = [v51 length];
    v39 = [v51 getBytes:v30 length:v38];
    *&v40 = MEMORY[0x1EEE9AC00](v39).n128_u64[0];
    v41 = [v50 length];
    [v50 getBytes:v30 length:v41];
    if ((v49 & 0x3FFFFFFFCLL) != 0)
    {
      v42 = 0;
      do
      {
        v69.real = *&v59[4 * v42];
        v69.imag = *&v58[4 * v42];
        DspLib::ComplexSpan::setElement(v55, v42, v69);
        v70.real = *&v30[4 * v42];
        v70.imag = v70.real;
        DspLib::ComplexSpan::setElement(a2 + 22, v42, v70);
        v71.real = *&v56[4 * v42];
        v71.imag = *&v30[4 * v42];
        DspLib::ComplexSpan::setElement(a2 + 12, v42, v71);
        v72.real = *&v30[4 * v42];
        v72.imag = v72.real;
        DspLib::ComplexSpan::setElement(a2 + 32, v42++, v72);
      }

      while (v57 != v42);
    }

    v9 = 0;
    v14 = 1;
    v8 = v52;
    goto LABEL_32;
  }

  v14 = 0;
LABEL_40:

  return v14;
}

uint64_t AUXTC::SaveState(CFPropertyListRef *this, ausdk **a2)
{
  v100 = *MEMORY[0x1E69E9840];
  AUDspLib::SaveState(this, a2);
  v77 = this;
  DeepCopy = CFPropertyListCreateDeepCopy(0, this[337], 2uLL);
  if (DeepCopy)
  {
    v73 = a2;
    v4 = 0;
    v5 = 1;
    do
    {
      v78 = v5;
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Setup_%d", v4];
      v7 = v77[68];
      if (v4 == vcvtas_u32_f32(fmaxf(v7[23], 0.0)))
      {
LABEL_4:
        v74 = v6;
        v75 = [DeepCopy objectForKey:v6];
        v8 = [v75 objectForKey:@"W"];
        if (!v8)
        {
          v9 = [MEMORY[0x1E695DF90] dictionary];
          v10 = DspLib::XTC::Algorithm::wFilters((v77 + 268), v4);
          v8 = v9;
          v11 = v10[4];
          v83 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
          obj = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
          v80 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
          v79 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
          v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
          v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
          v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
          v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
          if (v11)
          {
            v16 = 0;
            v17 = 1;
            do
            {
              v18 = MEMORY[0x1E696AD98];
              *&v19 = DspLib::ComplexSpan::operator[](v10 + 2, v16);
              v20 = [v18 numberWithFloat:v19];
              [v83 setObject:v20 atIndexedSubscript:v16];

              v21 = MEMORY[0x1E696AD98];
              DspLib::ComplexSpan::operator[](v10 + 2, v16);
              LODWORD(v23) = v22;
              v24 = [v21 numberWithFloat:v23];
              [obj setObject:v24 atIndexedSubscript:v16];

              v25 = MEMORY[0x1E696AD98];
              *&v26 = DspLib::ComplexSpan::operator[](v10 + 12, v16);
              v27 = [v25 numberWithFloat:v26];
              [v80 setObject:v27 atIndexedSubscript:v16];

              v28 = MEMORY[0x1E696AD98];
              DspLib::ComplexSpan::operator[](v10 + 12, v16);
              LODWORD(v30) = v29;
              v31 = [v28 numberWithFloat:v30];
              [v79 setObject:v31 atIndexedSubscript:v16];

              v32 = MEMORY[0x1E696AD98];
              *&v33 = DspLib::ComplexSpan::operator[](v10 + 22, v16);
              v34 = [v32 numberWithFloat:v33];
              [v12 setObject:v34 atIndexedSubscript:v16];

              v35 = MEMORY[0x1E696AD98];
              DspLib::ComplexSpan::operator[](v10 + 22, v16);
              LODWORD(v37) = v36;
              v38 = [v35 numberWithFloat:v37];
              [v13 setObject:v38 atIndexedSubscript:v16];

              v39 = MEMORY[0x1E696AD98];
              *&v40 = DspLib::ComplexSpan::operator[](v10 + 32, v16);
              v41 = [v39 numberWithFloat:v40];
              [v14 setObject:v41 atIndexedSubscript:v16];

              v42 = MEMORY[0x1E696AD98];
              DspLib::ComplexSpan::operator[](v10 + 32, v16);
              LODWORD(v44) = v43;
              v45 = [v42 numberWithFloat:v44];
              [v15 setObject:v45 atIndexedSubscript:v16];

              v16 = v17;
            }

            while (v11 > v17++);
          }

          [v8 setObject:v83 forKey:@"W11real"];
          [v8 setObject:obj forKey:@"W11imag"];
          [v8 setObject:v80 forKey:@"W12real"];
          [v8 setObject:v79 forKey:@"W12imag"];
          [v8 setObject:v12 forKey:@"W21real"];
          [v8 setObject:v13 forKey:@"W21imag"];
          [v8 setObject:v14 forKey:@"W22real"];
          [v8 setObject:v15 forKey:@"W22imag"];

          [v75 setObject:v8 forKey:@"W"];
        }

        v84 = v8;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v47 = [MEMORY[0x1E695DFD8] setWithObjects:{@"W11real", @"W11imag", @"W12real", @"W12imag", @"W21real", @"W21imag", @"W22real", @"W22imag", 0}];
        obja = v47;
        v48 = [v47 countByEnumeratingWithState:&v85 objects:v95 count:16];
        if (v48)
        {
          v49 = *v86;
          do
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v86 != v49)
              {
                objc_enumerationMutation(obja);
              }

              v51 = *(*(&v85 + 1) + 8 * i);
              v52 = v84;
              v53 = v51;
              v54 = [v52 objectForKey:v53];
              std::vector<float>::vector[abi:ne200100](__p, [v54 count]);
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v55 = v54;
              v56 = [v55 countByEnumeratingWithState:&v90 objects:buf count:16];
              if (v56)
              {
                LODWORD(v57) = 0;
                v58 = *v91;
                do
                {
                  v59 = 0;
                  v57 = v57;
                  do
                  {
                    if (*v91 != v58)
                    {
                      objc_enumerationMutation(v55);
                    }

                    [*(*(&v90 + 1) + 8 * v59) floatValue];
                    *(__p[0] + v57++) = v60;
                    ++v59;
                  }

                  while (v56 != v59);
                  v56 = [v55 countByEnumeratingWithState:&v90 objects:buf count:16];
                }

                while (v56);
              }

              v61 = [MEMORY[0x1E695DEF0] dataWithBytes:__p[0] length:{4 * objc_msgSend(v55, "count")}];
              v89 = 0;
              v62 = [v61 compressedDataUsingAlgorithm:3 error:&v89];
              v63 = v89;

              if (!v63)
              {
                v64 = [MEMORY[0x1E696AD98] numberWithBool:1];
                [v52 setObject:v64 forKey:@"WDataIsCompressed"];

                [v52 setObject:v62 forKey:v53];
              }

              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }
            }

            v47 = obja;
            v48 = [obja countByEnumeratingWithState:&v85 objects:v95 count:16];
          }

          while (v48);
        }

        v65 = v74;
      }

      else
      {
        v66 = v7 + 24;
        v67 = 22;
        while (v67 != 28)
        {
          v68 = *v66++;
          ++v67;
          if (v4 == vcvtas_u32_f32(fmaxf(v68, 0.0)))
          {
            if (v67 <= 0x1C)
            {
              goto LABEL_4;
            }

            break;
          }
        }

        v65 = v6;
        [DeepCopy removeObjectForKey:v6];
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v78 & 1) != 0);
    v69 = *v73;
    applesauce::CF::StringRef::get_ns(*v73);
    [objc_claimAutoreleasedReturnValue() setObject:DeepCopy forKey:@"DspLibXTC_customFilterDictionary"];
    v70 = 0;
    goto LABEL_44;
  }

  if (AUXTCLogScope(void)::once != -1)
  {
    dispatch_once(&AUXTCLogScope(void)::once, &__block_literal_global_27536);
  }

  if (!AUXTCLogScope(void)::scope)
  {
    v69 = MEMORY[0x1E69E9C10];
    v71 = MEMORY[0x1E69E9C10];
    goto LABEL_41;
  }

  v69 = *AUXTCLogScope(void)::scope;
  if (v69)
  {
LABEL_41:
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v97 = "AUXTC.mm";
      v98 = 1024;
      v99 = 339;
      _os_log_impl(&dword_1DDB85000, v69, OS_LOG_TYPE_ERROR, "%25s:%-5d Error encountered while creating deep copy of filter dictionary", buf, 0x12u);
    }

    v70 = 4294956421;
LABEL_44:

    goto LABEL_45;
  }

  v70 = 4294956421;
LABEL_45:

  return v70;
}

uint64_t AUXTC::GetParameterInfo(AUXTC *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  if (a3 == 1869769061)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  if (a3 == 1937141612)
  {
    v5 = 16;
  }

  else
  {
    v5 = v4;
  }

  v6 = a3 == 1937141612 || a3 == 1869769061;
  if ((a2 & 0xFFFFFFFB) != 0 || v5 >= *(this + 439))
  {
    return 4294956418;
  }

  v9 = *(*(this + 211) + 4 * v5);
  buffer->unit = *(*(this + 201) + 4 * v9);
  v10 = *(*(this + 203) + 4 * v9);
  buffer->minValue = *(*(this + 205) + 4 * v9);
  buffer->maxValue = *(*(this + 207) + 4 * v9);
  buffer->defaultValue = *(*(this + 213) + 4 * v5);
  v11 = *(*(this + 199) + 8 * v9);
  buffer->cfNameString = v11;
  buffer->flags = v10 | 0xC8800000;
  CFStringGetCString(v11, buffer->name, 52, 0x8000100u);
  if (*(this + 216))
  {
    buffer->clumpID = *(*(this + 215) + 4 * v5);
    buffer->flags |= 0x100000u;
  }

  result = 0;
  if (v6)
  {
    buffer->flags |= 0x10000000u;
  }

  return result;
}

uint64_t AUXTC::ProcessBufferLists(AUXTC *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  v31[3] = *MEMORY[0x1E69E9840];
  if (*(this + 17) != 1)
  {
    return 4294956429;
  }

  if (*(this + 604) >= 1.0)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      v11 = ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::pop(this + 2880, this + 617);
      v9 = 1;
    }

    while (v11);
    if (v10)
    {
      v12 = *(this + 616);
      v13 = *(this + 617);
      *(this + 616) = v13;
      *(this + 617) = v12;
      DspLib::XTC::Algorithm::setFIRMatrixAndTriggerCrossFade(this + 2144, v13);
    }
  }

  result = SimpleMeters::ProcessInputBufferList((this + 1832), a5, a3);
  if (!result)
  {
    if (a3 != a4)
    {
      v15 = 0;
      p_mData = &a3->mBuffers[0].mData;
      for (i = &a4->mBuffers[0].mData; ; i += 2)
      {
        v18 = *(this + 265);
        v19 = v18 == *(this + 266) ? 0 : *v18;
        if (v15 >= v19)
        {
          break;
        }

        result = *i;
        if (*p_mData != *i)
        {
          result = memcpy(result, *p_mData, 4 * a5);
        }

        ++v15;
        p_mData += 2;
      }
    }

    if ((*(this + 2113) & 1) == 0 && (*(this + 1584) & 1) == 0 && *(this + 2768) == 1)
    {
      MEMORY[0x1EEE9AC00](result);
      v21 = v29 - ((v20 + 15) & 0xFFFFFFFF0);
      if (v20 >= 0x200)
      {
        v22 = 512;
      }

      else
      {
        v22 = v20;
      }

      bzero(v29 - ((v20 + 15) & 0xFFFFFFFF0), v22);
      v23 = *(this + 265);
      if (v23 == *(this + 266))
      {
        v24 = 0;
      }

      else
      {
        v24 = *v23;
        if (v24)
        {
          v25 = &a4->mBuffers[0].mData;
          v26 = v21;
          v27 = v24;
          do
          {
            v28 = *v25;
            v25 += 2;
            *v26++ = v28;
            --v27;
          }

          while (v27);
        }
      }

      v31[0] = v21;
      v31[1] = v24;
      v31[2] = a5;
      LOBYTE(v29[0]) = 0;
      v30 = 0;
      DspLib::AlgorithmBase::process(this + 2144, v31, v29);
      AUDspLib::enqueueStatusForInstance(this, 0, *(this + 66), a5);
    }

    SimpleMeters::ProcessOutputBufferList((this + 1832), a5, a4);
    return 0;
  }

  return result;
}

DspLib *AUXTC::SetParameter(AUXTC *this, unsigned int a2, uint64_t a3, uint64_t a4, float a5, uint64_t a6)
{
  v12 = AUDspLib::SetParameter(this, a2, a3, a4, a5);
  v13 = v12;
  v14 = *(this + 439) - 1;
  if (v14 >= a2)
  {
    v14 = a2;
  }

  v15 = *(*(this + 211) + 4 * v14);
  if (v15 == 1)
  {
    AUXTC::mDeviceOrientationCachedPrevious = AUXTC::mDeviceOrientationCachedCurrent;
    AUXTC::mDeviceOrientationCachedCurrent = vcvtas_u32_f32(a5);
  }

  else if (v15 == 16)
  {
    if (DspLib::isEqual(v12, *(this + 1236), a5, 1.0e-20))
    {
      return v13;
    }

    *(this + 1236) = a5;
  }

  else if (a2 == 1869769061)
  {
    (*(*this + 152))(this, 1, a3, a4, a6, a5);
  }

  else if (a2 == 1937141612)
  {
    (*(*this + 152))(this, 16, a3, a4, a6, a5);
  }

  if (!v13)
  {
    AUXTC::enqueueNewFIRMatrix(this);
  }

  return v13;
}

_BYTE *AUXTC::enqueueNewFIRMatrix(_BYTE *this)
{
  v1 = atomic_load(this + 2769);
  if (v1)
  {
    v2 = this;
    if (this[17] == 1)
    {
      this = *MEMORY[0x1E69E3C08];
      if (*MEMORY[0x1E69E3C08])
      {
        v3 = *(v2 + 347);
        v4 = caulk::rt_safe_memory_resource::rt_allocate(this);
        *(v4 + 16) = 0;
        *(v4 + 24) = v2;
        *v4 = &unk_1F59338B8;
        *(v4 + 8) = 0;

        return caulk::concurrent::messenger::enqueue(v3, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return this;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUXTC::enqueueNewFIRMatrix(void)::$_0>::perform(caulk::concurrent::message *a1)
{
  v3 = a1;
  v1 = atomic_load((*(a1 + 3) + 2769));
  if (v1)
  {
    AUXTC::newFIRMatrix(&v4);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v3);
}

void sub_1DDFC8C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, uint64_t a10)
{
  if (a10)
  {
    std::default_delete<DspLib::XTC::FIRMatrix>::operator()[abi:ne200100](a10);
  }

  caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&a9);
  _Unwind_Resume(a1);
}

void caulk::concurrent::details::rt_message_call<AUXTC::enqueueNewFIRMatrix(void)::$_0>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUXTC::SetProperty(AUXTC *this, int a2, int a3, unsigned int a4, id *a5, void *a6, int *a7)
{
  if (a2 == 6620)
  {
    if (a3)
    {
      return 4294956430;
    }

    else if (a6 == 8)
    {
      v9 = *a5;
      applesauce::CF::StringRef::get_ns(*a5);
      objc_claimAutoreleasedReturnValue();
      if (v9)
      {
        std::mutex::lock((this + 2704));
        [*(this + 337) addEntriesFromDictionary:v9];
        if (load_W_filters(*(this + 337), (this + 2144)))
        {
          AUXTC::enqueueNewFIRMatrix(this);
          *(this + 2768) = 1;
        }

        std::mutex::unlock((this + 2704));
      }

      return 0;
    }

    else
    {
      return 4294956445;
    }
  }

  else
  {

    return AUDspLib::SetProperty(this, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t AUXTC::GetProperty(id *this, int a2, unsigned int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  if (a2 == 6620)
  {
    if (a3)
    {
      return 4294956430;
    }

    else
    {
      v8 = this[337];
      result = 0;
      *a5 = v8;
    }
  }

  else
  {

    return AUDspLib::GetProperty(this, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t AUXTC::GetPropertyInfo(AUXTC *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 != 6620)
  {
    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  if (a3)
  {
    return 4294956430;
  }

  result = 0;
  *a6 = 1;
  *a5 = 8;
  return result;
}

double AUXTC::Cleanup(AUXTC *this)
{
  v2 = this + 2769;
  atomic_store(0, this + 2769);
  caulk::concurrent::messenger::drain(*(this + 347));
  atomic_store(1u, v2);
  (*(*this + 592))(this);
  *(this + 1585) = 0;
  result = 0.0;
  *(this + 226) = 0;
  *(this + 230) = *(this + 229);
  *(this + 233) = *(this + 232);
  *(this + 266) = *(this + 265);
  return result;
}

void AUXTC::~AUXTC(AUXTC *this)
{
  AUXTC::~AUXTC(this);

  JUMPOUT(0x1E12BD150);
}

{
  *this = &unk_1F59335C8;
  v2 = *(this + 617);
  *(this + 617) = 0;
  if (v2)
  {
    std::default_delete<DspLib::XTC::FIRMatrix>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 616);
  *(this + 616) = 0;
  if (v3)
  {
    std::default_delete<DspLib::XTC::FIRMatrix>::operator()[abi:ne200100](v3);
  }

  *(this + 352) = &unk_1F5933858;
  ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::~deferred_deletion_queue(this + 2880);
  v4 = *(this + 348);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::mutex::~mutex((this + 2704));

  DspLib::XTC::Algorithm::~Algorithm((this + 2144));

  AUDspLib::~AUDspLib(this);
}

uint64_t ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::~deferred_deletion_queue(uint64_t a1)
{
  *a1 = &unk_1F5933878;
  ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::drain_trash(a1);
    ;
  }

  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 1024);
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 64);
  return a1;
}

void ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::~deferred_deletion_queue(uint64_t a1)
{
  ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::~deferred_deletion_queue(a1);

  JUMPOUT(0x1E12BD150);
}

void ca::concurrent::deferred_deletion_stash<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F5933858;
  ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::~deferred_deletion_queue((a1 + 8));

  JUMPOUT(0x1E12BD150);
}

void *ca::concurrent::deferred_deletion_stash<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F5933858;
  ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::~deferred_deletion_queue((a1 + 8));
  return a1;
}

void iPMWF_HRLS_vDSP::InitializeFilter(iPMWF_HRLS_vDSP *this)
{
  if (*(this + 24) == 1)
  {
    memcpy(*(this + 18), *(this + 99), 4 * *(this + 10));
    v2 = *(this + 10);
    v3 = (*(this + 18) + 4 * v2);
    v4 = *(this + 102);

    memcpy(v3, v4, 4 * v2);
  }

  else if (*(this + 8))
  {
    v5 = 0;
    do
    {
      vDSP_vfill(this + 18, (*(this + 18) + 4 * (*(this + 9) + *(this + 10)) * v5++), 1, *(this + 9));
    }

    while (v5 < *(this + 8));
  }
}

void iPMWF_HRLS_vDSP::FilterToCommonUsingSteering(uint64_t a1, void *a2, float **a3)
{
  vDSP_vclr(*a3, 1, (2 * *(a1 + 36)));
  v6 = *(a1 + 32);
  v7 = &(*a3)[*(a1 + 36)];
  __D.realp = *a3;
  __D.imagp = v7;
  if (v6)
  {
    v8 = 0;
    do
    {
      __N = *(a1 + 36);
      v10 = *(a1 + 144);
      v11 = *(a1 + 40) + __N * v8;
      __A.realp = (v10 + 4 * __N * v8);
      __A.imagp = (v10 + 4 * v11);
      v12 = (*a2 + 4 * v11);
      __B.realp = (*a2 + 4 * __N * v8);
      __B.imagp = v12;
      vDSP_zvma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
      ++v8;
    }

    while (v8 < *(a1 + 32));
  }
}

void iPMWF_HRLS_vDSP::FilterSignal(uint64_t a1, void *a2, float **a3)
{
  vDSP_vclr(*a3, 1, (2 * *(a1 + 40)));
  if (*(a1 + 32))
  {
    v6 = 0;
    do
    {
      v7 = 0;
      v8 = *(a1 + 36) * v6;
      v9 = &(*a3)[v8];
      v10 = &(*a3)[*(a1 + 40) + v8];
      __D.realp = v9;
      __D.imagp = v10;
      do
      {
        __N = *(a1 + 36);
        v11 = *(a1 + 40);
        v13 = __N * v7 + v11 * v6;
        v14 = *(a1 + 144);
        v15 = *(a1 + 44) + v13;
        __A.realp = (v14 + 4 * v13);
        __A.imagp = (v14 + 4 * v15);
        v16 = (*a2 + 4 * (__N * v7 + v11));
        __B.realp = (*a2 + 4 * __N * v7);
        __B.imagp = v16;
        vDSP_zvma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
        ++v7;
        v17 = *(a1 + 32);
      }

      while (v7 < v17);
      ++v6;
    }

    while (v6 < v17);
  }
}

void iPMWF_HRLS_vDSP::FilterCommonToFinalUsingSteering(uint64_t a1, float *a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = &a2[*(a1 + 36)];
  __A.realp = a2;
  __A.imagp = v4;
  if (v3)
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + 36);
      v9 = (*a3 + 4 * (*(a1 + 40) + v8 * v7));
      __C.realp = (*a3 + 4 * v8 * v7);
      __C.imagp = v9;
      v10 = (*(a1 + 816) + 4 * v8 * v7);
      v11.realp = (*(a1 + 792) + 4 * v8 * v7);
      v11.imagp = v10;
      vDSP_zvmul(&__A, 1, &v11, 1, &__C, 1, v8, 1);
      ++v7;
    }

    while (v7 < *(a1 + 32));
  }
}

void iPMWF_HRLS_vDSP::ProcessEchoOneInformedFrame(iPMWF_HRLS_vDSP *this)
{
  v2 = (this + 384);
  v3 = (this + 528);
  if (*(this + 24) == 1)
  {
    iPMWF_HRLS_vDSP::FilterToCommonUsingSteering(this, v2, v3);
    v4 = *(this + 66);

    iPMWF_HRLS_vDSP::FilterCommonToFinalUsingSteering(this, v4, this + 48);
  }

  else
  {
    iPMWF_HRLS_vDSP::FilterSignal(this, v2, v3);
    v5 = *(this + 48);
    v6 = *(this + 66);
    v7 = 4 * (2 * *(this + 10));

    memcpy(v5, v6, v7);
  }
}

void iPMWF_HRLS_vDSP::ProcessBufferList(iPMWF_HRLS_vDSP *this, const AudioBufferList *a2, const AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, int a6, int a7)
{
  v12 = a2;
  if (*(this + 8))
  {
    v14 = 0;
    p_mData = &a2->mBuffers[0].mData;
    v16 = 0.0;
    do
    {
      v17 = *p_mData;
      p_mData += 2;
      v16 = cblas_sdsdot(2 * *(this + 9) - 2, v16, v17, 1, v17, 1);
      ++v14;
      v18 = *(this + 8);
    }

    while (v14 < v18);
    if ((LODWORD(v16) & 0x7FFFFFFFu) > 0x7F7FFFFF || v16 <= *(this + 7))
    {
      if (v18)
      {
        v20 = 0;
        v21 = &v12->mBuffers[0].mData;
        v22 = &a4->mBuffers[0].mData;
        do
        {
          v24 = *v22;
          v22 += 2;
          v23 = v24;
          v25 = *v21;
          v21 += 2;
          memcpy(v23, v25, 4 * (2 * *(this + 9) - 2));
          ++v20;
          v26 = *(this + 8);
        }

        while (v20 < v26);
        if (v26 && a6 != 0)
        {
          v28 = 0;
          v29 = &a3->mBuffers[0].mData;
          v30 = &a5->mBuffers[0].mData;
          do
          {
            v32 = *v30;
            v30 += 2;
            v31 = v32;
            v33 = *v29;
            v29 += 2;
            memcpy(v31, v33, 4 * (2 * *(this + 9) - 2));
            ++v28;
          }

          while (v28 < *(this + 8));
        }
      }

      return;
    }

    if (v18)
    {
      v34 = 0;
      v35 = &v12->mBuffers[0].mData;
      do
      {
        memcpy((*(this + 45) + 4 * (*(this + 9) * v34)), *v35, 4 * *(this + 9));
        v36 = *v35;
        v35 += 2;
        memcpy((*(this + 45) + 4 * (*(this + 10) + *(this + 9) * v34++ + 1)), &v36[4 * *(this + 9)], 4 * (*(this + 9) - 2));
      }

      while (v34 < *(this + 8));
    }
  }

  else if (*(this + 7) >= 0.0)
  {
    return;
  }

  MEMORY[0x1E12BE940](*(this + 45), 1, this + 132, *(this + 45), 1, (2 * *(this + 10)));
  if (!a6)
  {
    goto LABEL_29;
  }

  if (*(this + 8))
  {
    v37 = 0;
    v38 = &a3->mBuffers[0].mData;
    do
    {
      memcpy((*(this + 48) + 4 * (*(this + 9) * v37)), *v38, 4 * *(this + 9));
      v39 = *v38;
      v38 += 2;
      memcpy((*(this + 48) + 4 * (*(this + 10) + *(this + 9) * v37++ + 1)), &v39[4 * *(this + 9)], 4 * (*(this + 9) - 2));
    }

    while (v37 < *(this + 8));
  }

  MEMORY[0x1E12BE940](*(this + 48), 1, this + 132, *(this + 48), 1, (2 * *(this + 10)));
  if ((*(this + 101) & 1) == 0)
  {
    iPMWF_HRLS_vDSP::ProcessEchoOneInformedFrame(this);
    MEMORY[0x1E12BE940](*(this + 48), 1, this + 136, *(this + 48), 1, (2 * *(this + 10)));
    if (a7)
    {
LABEL_30:
      if (*(this + 21) >= *(this + 22))
      {
        memcpy(*(this + 27), *(this + 72), 4 * *(this + 9));
      }

      else
      {
        vDSP_vfill(this + 7, *(this + 27), 1, *(this + 9));
        ++*(this + 21);
      }

      LODWORD(__C.realp) = *(this + 9);
      MEMORY[0x1E12BE910](*(this + 27), 1, this + 80, this + 12, *(this + 30), 1);
      v40 = *(this + 26);
      if (v40 == 2)
      {
        *&__A.realp = *(this + 3) + (*(this + 20) * *(this + 31));
        vDSP_vfill(&__A, *(this + 30), 1, *(this + 9));
      }

      else if (v40 <= 1)
      {
        MEMORY[0x1E12BE910](*(this + 27), 1, this + 80, this + 12, *(this + 30), 1, *(this + 9));
      }

      MEMORY[0x1E12BE810](*(this + 30), 1, *(this + 33), 1, *(this + 9));
      MEMORY[0x1E12BE8A0](*(this + 33), 1, this + 72, *(this + 33), 1, *(this + 9));
      vvsqrtf(*(this + 42), *(this + 33), &__C);
      vvsqrtf(*(this + 39), *(this + 30), &__C);
      vDSP_svdiv(this + 18, *(this + 39), 1, *(this + 39), 1, *(this + 9));
      if (!*(this + 101) || *(this + 26) == 1)
      {
        v41 = (this + 360);
        v42 = (this + 528);
        if (*(this + 24) == 1)
        {
          iPMWF_HRLS_vDSP::FilterToCommonUsingSteering(this, v41, v42);
          if (*(this + 26) != 1)
          {
            goto LABEL_52;
          }

          v43 = *(this + 66);
          v44 = *(this + 27);
          v45 = (*(this + 28) - v44);
          LODWORD(__C.realp) = 0;
          LODWORD(__A.realp) = 0;
          v46 = (v43 + 4 * v44);
          vDSP_svesq(v46, 1, &__C, v45);
          vDSP_svesq(&v46[*(this + 9)], 1, &__A, v45);
          v47 = (*&__C.realp + *&__A.realp) / *(this + 8);
        }

        else
        {
          iPMWF_HRLS_vDSP::FilterSignal(this, v41, v42);
          if (*(this + 26) != 1)
          {
            goto LABEL_52;
          }

          if (*(this + 8))
          {
            v48 = 0;
            v49 = *(this + 27);
            v50 = (*(this + 28) - v49);
            v51 = *(this + 66) + 4 * v49;
            v52 = 0.0;
            do
            {
              LODWORD(__C.realp) = 0;
              LODWORD(__A.realp) = 0;
              vDSP_svesq((v51 + 4 * *(this + 9) * v48), 1, &__C, v50);
              vDSP_svesq((v51 + 4 * (*(this + 10) + *(this + 9) * v48)), 1, &__A, v50);
              v52 = (v52 + *&__C.realp) + *&__A.realp;
              ++v48;
              v53 = *(this + 8);
            }

            while (v48 < v53);
            v47 = v52 / v53;
          }

          else
          {
            v47 = NAN;
          }
        }

        *&__C.realp = 1.0 / fmaxf(*(this + 30), powf(v47, *(this + 29)));
        vDSP_vfill(&__C, *(this + 69), 1, *(this + 9));
        MEMORY[0x1E12BE7F0](*(this + 42), 1, *(this + 69), 1, *(this + 42), 1, *(this + 9));
      }

LABEL_52:
      if ((*(this + 8) & 0x7FFFFFFF) != 0)
      {
        v54 = 0;
        do
        {
          MEMORY[0x1E12BE7F0](*(this + 42), 1, *(this + 45) + 4 * *(this + 9) * v54, 1, *(this + 78) + 4 * *(this + 9) * v54, 1);
          ++v54;
        }

        while (v54 < 2 * *(this + 8));
      }

      vDSP_vclr(*(this + 60), 1, (2 * *(this + 10)));
      MEMORY[0x1E12BE810](*(this + 21) + 4 * *(this + 11), 1, *(this + 57), 1);
      if (*(this + 8))
      {
        v55 = 0;
        do
        {
          v56 = 0;
          v57 = *(this + 9) * v55;
          v58 = *(this + 60);
          v59 = (v58 + 4 * v57);
          v60 = (v58 + 4 * (*(this + 10) + v57));
          __C.realp = v59;
          __C.imagp = v60;
          do
          {
            __N = *(this + 9);
            v61 = *(this + 10);
            v63 = v61 * v56 + __N * v55;
            v64 = (*(this + 21) + 4 * v63);
            v65 = (*(this + 57) + 4 * v63);
            __A.realp = v64;
            __A.imagp = v65;
            v66 = *(this + 78);
            __B.realp = (v66 + 4 * __N * v56);
            __B.imagp = (v66 + 4 * (__N * v56 + v61));
            vDSP_zvma(&__A, 1, &__B, 1, &__C, 1, &__C, 1, __N);
            ++v56;
          }

          while (v56 < *(this + 8));
          vDSP_zrvmul(&__C, 1, *(this + 39), 1, &__C, 1, *(this + 9));
          ++v55;
        }

        while (v55 < *(this + 8));
      }

      vDSP_vclr(*(this + 81), 1, *(this + 9));
      if (*(this + 8))
      {
        v67 = 0;
        do
        {
          v68 = *(this + 9);
          v69 = *(this + 60);
          v70 = (v69 + 4 * (*(this + 10) + v68 * v67));
          __C.realp = (v69 + 4 * v68 * v67);
          __C.imagp = v70;
          vDSP_zvmgsa(&__C, 1, *(this + 81), 1, *(this + 81), 1, v68);
          ++v67;
        }

        while (v67 < *(this + 8));
      }

      MEMORY[0x1E12BE8A0](*(this + 81), 1, this + 72, *(this + 81), 1, *(this + 9));
      LODWORD(__D.realp) = *(this + 9);
      vvsqrtf(*(this + 81), *(this + 81), &__D);
      vDSP_vdiv(*(this + 81), 1, *(this + 39), 1, *(this + 54), 1, *(this + 9));
      MEMORY[0x1E12BE810](*(this + 54), 1, *(this + 54), 1, *(this + 9));
      vDSP_vclr(*(this + 51), 1, (2 * *(this + 10)));
      if (*(this + 8))
      {
        v71 = 0;
        do
        {
          v72 = 0;
          v73 = *(this + 9) * v71;
          v74 = *(this + 51);
          v75 = (v74 + 4 * v73);
          v76 = (v74 + 4 * (*(this + 10) + v73));
          __C.realp = v75;
          __C.imagp = v76;
          do
          {
            v78 = *(this + 9);
            v77 = *(this + 10);
            v79 = v78 * v72 + v77 * v71;
            v80 = *(this + 21);
            v81 = *(this + 11) + v79;
            __A.realp = (v80 + 4 * v79);
            __A.imagp = (v80 + 4 * v81);
            v82 = *(this + 60);
            __B.realp = (v82 + 4 * v78 * v72);
            __B.imagp = (v82 + 4 * (v78 * v72 + v77));
            vDSP_zvma(&__A, 1, &__B, 1, &__C, 1, &__C, 1, v78);
            ++v72;
          }

          while (v72 < *(this + 8));
          vDSP_zrvmul(&__C, 1, *(this + 54), 1, &__C, 1, *(this + 9));
          ++v71;
        }

        while (v71 < *(this + 8));
      }

      if ((*(this + 13) & 0x7FFFFFFF) != 0)
      {
        v83 = 0;
        do
        {
          v84 = *(this + 21) + 4 * *(this + 9) * v83;
          MEMORY[0x1E12BE7F0](v84, 1, *(this + 39), 1, v84, 1);
          ++v83;
        }

        while (v83 < 2 * *(this + 13));
      }

      v85 = 1;
      MEMORY[0x1E12BE8A0](*(this + 81), 1, this + 72, *(this + 54), 1, *(this + 9));
      vDSP_svdiv(this + 18, *(this + 54), 1, *(this + 54), 1, *(this + 9));
      MEMORY[0x1E12BE810](*(this + 60) + 4 * *(this + 10), 1, *(this + 57), 1);
      if (*(this + 8))
      {
        v86 = 0;
        while (1)
        {
          v87 = *(this + 9);
          v88 = *(this + 10);
          v89 = *(this + 51);
          __C.realp = (v89 + 4 * (v87 * v86));
          __C.imagp = (v89 + 4 * (v87 * v86 + v88));
          vDSP_zrvmul(&__C, 1, *(this + 54), 1, &__C, 1, v87);
          if (!*(this + 8))
          {
            break;
          }

          v90 = 0;
          v91 = v88 * v86;
          do
          {
            v92 = *(this + 9);
            v93 = (*(this + 57) + 4 * v92 * v90);
            __A.realp = (*(this + 60) + 4 * v92 * v90);
            __A.imagp = v93;
            v94 = v92 * v90 + v91;
            v95 = *(this + 21);
            LODWORD(v93) = *(this + 11) + v94;
            __B.realp = (v95 + 4 * v94);
            __B.imagp = (v95 + 4 * v93);
            vDSP_zvma(&__A, 1, &__C, 1, &__B, 1, &__B, 1, v92);
            ++v90;
            v96 = *(this + 8);
          }

          while (v90 < v96);
          if (++v86 >= v96)
          {
            v85 = v96 == 0;
            goto LABEL_79;
          }
        }

        v85 = 1;
      }

LABEL_79:
      v97 = *(this + 24);
      if (v97)
      {
        if (v97 == 1)
        {
          vDSP_vclr(*(this + 60), 1, (2 * *(this + 10)));
          vDSP_vclr(*(this + 24), 1, *(this + 9));
          MEMORY[0x1E12BE810](*(this + 21) + 4 * *(this + 11), 1, *(this + 57), 1);
          if (*(this + 8))
          {
            v98 = 0;
            do
            {
              v99 = 0;
              v100 = *(this + 9) * v98;
              v101 = *(this + 60);
              v102 = (v101 + 4 * v100);
              v103 = (v101 + 4 * (*(this + 10) + v100));
              __C.realp = v102;
              __C.imagp = v103;
              do
              {
                v104 = *(this + 9);
                v105 = v100 + *(this + 10) * v99;
                v106 = (*(this + 21) + 4 * v105);
                v107 = (*(this + 57) + 4 * v105);
                __A.realp = v106;
                __A.imagp = v107;
                v108 = (*(this + 102) + 4 * v104 * v99);
                __B.realp = (*(this + 99) + 4 * v104 * v99);
                __B.imagp = v108;
                vDSP_zvma(&__A, 1, &__B, 1, &__C, 1, &__C, 1, v104);
                ++v99;
              }

              while (v99 < *(this + 8));
              vDSP_zvmgsa(&__C, 1, *(this + 24), 1, *(this + 24), 1, *(this + 9));
              ++v98;
            }

            while (v98 < *(this + 8));
          }

          vDSP_vclr(*(this + 18), 1, (2 * *(this + 10)));
          if (*(this + 8))
          {
            v109 = 0;
            do
            {
              v110 = 0;
              v111 = *(this + 10);
              v112 = *(this + 9) * v109;
              v113 = v111 * v109;
              v114 = *(this + 18);
              __C.realp = (v114 + 4 * v112);
              __C.imagp = (v114 + 4 * (v112 + v111));
              do
              {
                v115 = *(this + 9);
                v116 = *(this + 10);
                v117 = *(this + 21);
                v118 = v115 * v110 + v113 + *(this + 11);
                __A.realp = (v117 + 4 * (v115 * v110 + v113));
                __A.imagp = (v117 + 4 * v118);
                v119 = *(this + 60);
                __B.realp = (v119 + 4 * v115 * v110);
                __B.imagp = (v119 + 4 * (v116 + v115 * v110));
                vDSP_zvma(&__A, 1, &__B, 1, &__C, 1, &__C, 1, v115);
                ++v110;
                v120 = *(this + 8);
              }

              while (v110 < v120);
              ++v109;
            }

            while (v109 < v120);
          }

          vDSP_vthr(*(this + 24), 1, this + 7, *(this + 24), 1, *(this + 9));
          vDSP_svdiv(this + 18, *(this + 24), 1, *(this + 24), 1, *(this + 9));
          if ((*(this + 8) & 0x7FFFFFFF) != 0)
          {
            v121 = 0;
            do
            {
              v122 = *(this + 18) + 4 * *(this + 9) * v121;
              MEMORY[0x1E12BE7F0](v122, 1, *(this + 24), 1, v122, 1);
              ++v121;
            }

            while (v121 < 2 * *(this + 8));
          }

          v123 = *(this + 10);
          __C.realp = *(this + 18);
          __C.imagp = &__C.realp[v123];
          __A = __C;
          vDSP_zvconj(&__C, 1, &__A, 1, v123);
          if (*(this + 101) != 1)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }

        if (!v85)
        {
          for (i = 0; i < v153; ++i)
          {
            v141 = 0;
            v142 = *(this + 9) * i;
            v143 = *(this + 99);
            v144 = (v143 + 4 * v142);
            v145 = (v143 + 4 * (*(this + 10) + v142));
            __C.realp = v144;
            __C.imagp = v145;
            do
            {
              v146 = *(this + 9);
              v147 = *(this + 10);
              v148 = *(this + 99);
              __A.realp = (v148 + 4 * v146 * v141);
              __A.imagp = (v148 + 4 * (v147 + v146 * v141));
              v149 = v146 * v141 + v147 * i;
              v150 = *(this + 90);
              v151 = (v150 + 4 * v149);
              v152 = (v150 + 4 * (*(this + 11) + v149));
              __B.realp = v151;
              __B.imagp = v152;
              vDSP_zvmul(&__C, 1, &__A, 1, &__B, 1, v146, -1);
              ++v141;
              v153 = *(this + 8);
            }

            while (v141 < v153);
          }
        }
      }

      else
      {
        MEMORY[0x1E12BE940](*(this + 93), 1, this + 8, *(this + 93), 1, (2 * *(this + 11)));
        MEMORY[0x1E12BE940](*(this + 45), 1, this + 76, *(this + 78), 1, (2 * *(this + 10)));
        if ((*(this + 13) & 0x7FFFFFFF) != 0)
        {
          v124 = 0;
          do
          {
            v125 = *(this + 87) + 4 * *(this + 9) * v124;
            MEMORY[0x1E12BE7F0](v125, 1, *(this + 30), 1, v125, 1);
            ++v124;
          }

          while (v124 < 2 * *(this + 13));
        }

        if ((*(this + 8) & 0x7FFFFFFF) != 0)
        {
          v126 = 0;
          do
          {
            MEMORY[0x1E12BE7F0](*(this + 45) + 4 * *(this + 9) * v126, 1, *(this + 33), 1, *(this + 63) + 4 * *(this + 9) * v126, 1);
            ++v126;
          }

          while (v126 < 2 * *(this + 8));
        }

        MEMORY[0x1E12BE810](*(this + 45) + 4 * *(this + 10), 1, *(this + 57), 1);
        if (*(this + 8))
        {
          v127 = 0;
          do
          {
            v128 = 0;
            v129 = *(this + 9) * v127;
            v130 = *(this + 78);
            v131 = *(this + 10) + v129;
            __C.realp = (v130 + 4 * v129);
            __C.imagp = (v130 + 4 * v131);
            v132 = *(this + 63);
            __A.realp = (v132 + 4 * v129);
            __A.imagp = (v132 + 4 * v131);
            do
            {
              v133 = *(this + 9);
              v134 = *(this + 10);
              v135 = (*(this + 57) + 4 * v133 * v128);
              __B.realp = (*(this + 45) + 4 * v133 * v128);
              __B.imagp = v135;
              v136 = v133 * v128 + v134 * v127;
              v137 = *(this + 93);
              LODWORD(v135) = *(this + 11) + v136;
              __D.realp = (v137 + 4 * v136);
              __D.imagp = (v137 + 4 * v135);
              v138 = *(this + 87);
              v227.realp = (v138 + 4 * v136);
              v227.imagp = (v138 + 4 * v135);
              vDSP_zvma(&__B, 1, &__C, 1, &__D, 1, &__D, 1, v133);
              vDSP_zvma(&__B, 1, &__A, 1, &v227, 1, &v227, 1, *(this + 9));
              ++v128;
              v139 = *(this + 8);
            }

            while (v128 < v139);
            ++v127;
          }

          while (v127 < v139);
        }

        MEMORY[0x1E12BE9A0](*(this + 87), 1, *(this + 93), 1, *(this + 90), 1, (2 * *(this + 11)));
      }

      v226 = v12;
      v154 = a3;
      v155 = a4;
      v156 = a5;
      MEMORY[0x1E12BE810](*(this + 21) + 4 * *(this + 11), 1, *(this + 57), 1);
      vDSP_vclr(*(this + 84), 1, (2 * *(this + 11)));
      if (*(this + 8))
      {
        v157 = 0;
        do
        {
          v158 = 0;
          v159 = *(this + 10) * v157;
          do
          {
            v160 = 0;
            v161 = *(this + 10) * v158;
            v162 = v159 + *(this + 9) * v158;
            v163 = *(this + 84);
            v164 = (v163 + 4 * v162);
            v165 = (v163 + 4 * (*(this + 11) + v162));
            __C.realp = v164;
            __C.imagp = v165;
            do
            {
              v166 = *(this + 9);
              v167 = v166 * v160 + v159;
              v168 = *(this + 21);
              v169 = (v168 + 4 * (*(this + 11) + v167));
              __A.realp = (v168 + 4 * v167);
              __A.imagp = v169;
              v170 = v166 * v160 + v161;
              v171 = (v168 + 4 * v170);
              v172 = (*(this + 57) + 4 * v170);
              __B.realp = v171;
              __B.imagp = v172;
              vDSP_zvma(&__B, 1, &__A, 1, &__C, 1, &__C, 1, v166);
              ++v160;
              v173 = *(this + 8);
            }

            while (v160 < v173);
            ++v158;
          }

          while (v158 < v173);
          ++v157;
        }

        while (v157 < v173);
      }

      vDSP_vclr(*(this + 18), 1, (2 * *(this + 11)));
      a5 = v156;
      a4 = v155;
      a3 = v154;
      v12 = v226;
      if (*(this + 8))
      {
        v174 = 0;
        do
        {
          v175 = 0;
          do
          {
            v176 = 0;
            v177 = *(this + 10) * v174 + *(this + 9) * v175;
            v178 = *(this + 18);
            v179 = (v178 + 4 * v177);
            v180 = (v178 + 4 * (*(this + 11) + v177));
            __C.realp = v179;
            __C.imagp = v180;
            do
            {
              v182 = *(this + 9);
              v181 = *(this + 10);
              v183 = v181 * v174 + v182 * v176;
              v184 = *(this + 90);
              v185 = *(this + 11);
              __A.realp = (v184 + 4 * v183);
              __A.imagp = (v184 + 4 * (v185 + v183));
              v186 = v181 * v176 + v182 * v175;
              v187 = *(this + 84);
              __B.realp = (v187 + 4 * v186);
              __B.imagp = (v187 + 4 * (v185 + v186));
              vDSP_zvma(&__A, 1, &__B, 1, &__C, 1, &__C, 1, v182);
              ++v176;
              v188 = *(this + 8);
            }

            while (v176 < v188);
            ++v175;
          }

          while (v175 < v188);
          ++v174;
        }

        while (v174 < v188);
      }

      vDSP_vclr(*(this + 24), 1, *(this + 9));
      v189 = *(this + 9);
      __C.realp = *(this + 54);
      __C.imagp = &__C.realp[v189];
      vDSP_vclr(__C.realp, 1, (2 * v189));
      if (*(this + 8))
      {
        v190 = 0;
        do
        {
          v191 = *(this + 9);
          v192 = (v191 + *(this + 10)) * v190;
          v193 = *(this + 18);
          v194 = (v193 + 4 * v192);
          v195 = (v193 + 4 * (*(this + 11) + v192));
          __A.realp = v194;
          __A.imagp = v195;
          vDSP_zvadd(&__A, 1, &__C, 1, &__C, 1, v191);
          ++v190;
        }

        while (v190 < *(this + 8));
      }

      vDSP_zvabs(&__C, 1, *(this + 24), 1, *(this + 9));
      vDSP_vthr(*(this + 24), 1, this + 7, *(this + 24), 1, *(this + 9));
      if (*(this + 24) != 1)
      {
        MEMORY[0x1E12BE8A0](*(this + 24), 1, this + 20, *(this + 24), 1, *(this + 9));
      }

      vDSP_svdiv(this + 18, *(this + 24), 1, *(this + 24), 1, *(this + 9));
      if ((*(this + 13) & 0x7FFFFFFF) != 0)
      {
        v196 = 0;
        do
        {
          v197 = *(this + 18) + 4 * *(this + 9) * v196;
          MEMORY[0x1E12BE7F0](v197, 1, *(this + 24), 1, v197, 1);
          ++v196;
        }

        while (v196 < 2 * *(this + 13));
      }

      if (*(this + 101) != 1)
      {
LABEL_138:
        memcpy(*(this + 45), *(this + 66), 4 * (2 * *(this + 10)));
        goto LABEL_139;
      }

LABEL_137:
      iPMWF_HRLS_vDSP::FilterSignal(this, this + 45, this + 66);
      goto LABEL_138;
    }
  }

  else
  {
LABEL_29:
    if (a7)
    {
      goto LABEL_30;
    }
  }

  if (*(this + 24) != 1)
  {
    goto LABEL_137;
  }

LABEL_95:
  iPMWF_HRLS_vDSP::FilterToCommonUsingSteering(this, this + 45, this + 66);
LABEL_96:
  iPMWF_HRLS_vDSP::FilterCommonToFinalUsingSteering(this, *(this + 66), this + 45);
LABEL_139:
  MEMORY[0x1E12BE940](*(this + 45), 1, this + 136, *(this + 45), 1, (2 * *(this + 10)));
  if (a6 && *(this + 101) == 1)
  {
    iPMWF_HRLS_vDSP::ProcessEchoOneInformedFrame(this);
    MEMORY[0x1E12BE940](*(this + 48), 1, this + 136, *(this + 48), 1, (2 * *(this + 10)));
  }

  if (*(this + 8))
  {
    v198 = 0;
    mBuffers = v12->mBuffers;
    v200 = a3->mBuffers;
    v201 = a4->mBuffers;
    while (1)
    {
      v202 = &v201[v198];
      mData = v202->mData;
      v204 = &v202->mData;
      v203 = mData;
      v206 = &a5->mBuffers[v198];
      v209 = v206->mData;
      v208 = &v206->mData;
      v207 = v209;
      v210 = *(this + 9);
      if (v210)
      {
        break;
      }

      v210 = 0;
LABEL_163:
      MEMORY[0x1E12BE7F0](*(this + 75), 1, v203, 1, v203, 1, v210);
      MEMORY[0x1E12BE7F0](*(this + 75) + 4, 1, *v204 + 4 * *(this + 9), 1, *v204 + 4 * *(this + 9), 1, (*(this + 9) - 2));
      if (a6)
      {
        MEMORY[0x1E12BE7F0](*(this + 75), 1, *v208, 1, *v208, 1, *(this + 9));
        MEMORY[0x1E12BE7F0](*(this + 75) + 4, 1, *v208 + 4 * *(this + 9), 1, *v208 + 4 * *(this + 9), 1, (*(this + 9) - 2));
      }

      if (++v198 >= *(this + 8))
      {
        return;
      }
    }

    v211 = 0;
    v212 = mBuffers[v198].mData;
    v213 = v200[v198].mData;
    v214 = (v210 - 1);
    v215 = v210 * v198;
    while (1)
    {
      v216 = v215 + v211;
      if (!v211 || v214 == v211)
      {
        v223 = *(*(this + 45) + 4 * v216);
        v224 = v212[v211];
        if ((v223 * v223) <= (v224 * (*(this + 32) * v224)))
        {
          v203[v211] = (v224 * *(this + 4)) + ((1.0 - *(this + 4)) * v223);
          if (a6)
          {
            v222 = (*(this + 4) * v213[v211]) + ((1.0 - *(this + 4)) * *(*(this + 48) + 4 * v216));
LABEL_156:
            v220 = v211;
LABEL_159:
            v207[v220] = v222;
          }
        }

        else
        {
          v203[v211] = v224;
          if (a6)
          {
            v222 = v213[v211];
            goto LABEL_156;
          }
        }
      }

      else
      {
        v217 = *(this + 45);
        v218 = *(v217 + 4 * v216);
        v219 = (v215 + v211 + *(this + 10));
        v220 = (v214 + v211);
        v221 = v212[v211];
        if (((*(v217 + 4 * v219) * *(v217 + 4 * v219)) + (v218 * v218)) <= (*(this + 32) * ((v212[v220] * v212[v220]) + (v221 * v221))))
        {
          v203[v211] = (v221 * *(this + 4)) + ((1.0 - *(this + 4)) * v218);
          v203[v220] = (*(this + 4) * v212[v220]) + ((1.0 - *(this + 4)) * *(v217 + 4 * v219));
          if (a6)
          {
            v225 = *(this + 48);
            v207[v211] = (*(this + 4) * v213[v211]) + ((1.0 - *(this + 4)) * *(v225 + 4 * v216));
            v222 = (*(this + 4) * v213[v220]) + ((1.0 - *(this + 4)) * *(v225 + 4 * v219));
            goto LABEL_159;
          }
        }

        else
        {
          v203[v211] = v221;
          v203[v220] = v212[v220];
          if (a6)
          {
            v207[v211] = v213[v211];
            v222 = v213[v220];
            goto LABEL_159;
          }
        }
      }

      if (v210 == ++v211)
      {
        goto LABEL_163;
      }
    }
  }
}

_DWORD *CmhBEAMprocOpt::deallocate_memory(_DWORD *this)
{
  if (*this)
  {
    v1 = this;
    *this = 0;
    v2 = this[14];
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(v1 + 17) + 8 * i);
        if (v4)
        {
          MEMORY[0x1E12BD130](v4, 0x1000C8052888210);
          v2 = v1[14];
        }
      }
    }

    v5 = *(v1 + 17);
    if (v5)
    {
      MEMORY[0x1E12BD130](v5, 0x80C80B8603338);
    }

    v6 = *(v1 + 20);
    if (v6)
    {
      MEMORY[0x1E12BD130](v6, 0x1000C8052888210);
    }

    v7 = *(v1 + 21);
    if (v7)
    {
      MEMORY[0x1E12BD130](v7, 0x1000C8052888210);
    }

    if (*(v1 + 16))
    {
      v8 = v1[3];
      if (v8 < 1)
      {
        goto LABEL_20;
      }

      for (j = 0; j < v8; ++j)
      {
        v10 = *(*(v1 + 16) + 8 * j);
        if (v10)
        {
          MEMORY[0x1E12BD130](v10, 0x1000C8052888210);
          v8 = v1[3];
        }
      }

      if (*(v1 + 16))
      {
LABEL_20:
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 16) = 0;
    }

    if (*(v1 + 19))
    {
      v11 = v1[14];
      if (v11 < 0)
      {
        goto LABEL_29;
      }

      v12 = 0;
      v13 = -1;
      do
      {
        v14 = *(*(v1 + 19) + v12);
        if (v14)
        {
          MEMORY[0x1E12BD130](v14, 0x1000C8052888210);
          v11 = v1[14];
        }

        ++v13;
        v12 += 16;
      }

      while (v13 < v11);
      if (*(v1 + 19))
      {
LABEL_29:
        MEMORY[0x1E12BD160]();
      }

      *(v1 + 19) = 0;
    }

    if (*(v1 + 18))
    {
      v15 = v1[3];
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      v16 = 0;
      for (k = 0; k < v15; ++k)
      {
        v18 = *(*(v1 + 18) + v16);
        if (v18)
        {
          MEMORY[0x1E12BD130](v18, 0x1000C8052888210);
          v15 = v1[3];
        }

        v16 += 16;
      }

      if (*(v1 + 18))
      {
LABEL_38:
        MEMORY[0x1E12BD160]();
      }

      *(v1 + 18) = 0;
    }

    v19 = *(v1 + 22);
    if (v19)
    {
      MEMORY[0x1E12BD130](v19, 0x1000C8052888210);
    }

    if (*(v1 + 14))
    {
      v20 = v1[14];
      if (v20 < 0)
      {
        goto LABEL_49;
      }

      v21 = 0;
      do
      {
        v22 = *(*(v1 + 14) + 8 * v21);
        if (v22)
        {
          MEMORY[0x1E12BD130](v22, 0x1000C8052888210);
          v20 = v1[14];
        }
      }

      while (v21++ < v20);
      if (*(v1 + 14))
      {
LABEL_49:
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 14) = 0;
    }

    v24 = *(v1 + 12);
    if (v24)
    {
      MEMORY[0x1E12BD130](v24, 0x80C80B8603338);
    }

    this = *(v1 + 13);
    if (this)
    {

      JUMPOUT(0x1E12BD130);
    }
  }

  return this;
}

uint64_t CmhBEAMprocOpt::init_dc_block(uint64_t this)
{
  v1 = 628.318531 / *(this + 16);
  v2 = (1.0 - v1) + (v1 * v1) * 0.5;
  v3 = v2 <= -0.9999;
  v4 = v2 < 0.9999 || v2 <= -0.9999;
  if (v2 >= 0.9999)
  {
    v3 = 1;
  }

  v5 = 0.9999;
  if (v4)
  {
    v5 = -0.9999;
  }

  v6 = v2;
  if (v3)
  {
    v6 = v5;
  }

  *(this + 80) = v6;
  *(this + 84) = (v6 + 1.0) * 0.5;
  *(this + 64) = 0;
  *(this + 72) = 0;
  return this;
}

uint64_t CmhBEAMprocOpt::process(CmhBEAMprocOpt *this, float **a2, float **a3, float **a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    return 1;
  }

  if (*(this + 30) == 1)
  {
    if (*(this + 14) >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        LPFilterBank::Analysis((this + 1392), v8, a2[v8], (*(this + 19) + v7));
        ++v8;
        v7 += 16;
      }

      while (v8 < *(this + 14));
    }

    if (*(this + 3) == 2)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        memcpy(*(*(this + 18) + v9), *(*(this + 19) + v9), 4 * *(this + 5));
        ++v10;
        v9 += 16;
      }

      while (v10 < *(this + 3));
    }

    else
    {
      memcpy(**(this + 18), *(*(this + 19) + 16 * *(this + 1)), 4 * *(this + 5));
    }

    goto LABEL_61;
  }

  v12 = *(this + 7);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *a2;
    do
    {
      v15 = (*(this + 21) * (*v14 - *(this + 16))) + (*(this + 20) * *(this + 17));
      *(this + 17) = v15;
      *(this + 16) = *v14;
      *v14++ = v15;
      ++v13;
    }

    while (v12 > v13);
    v16 = 0;
    v17 = a2[1];
    do
    {
      v18 = (*(this + 21) * (*v17 - *(this + 18))) + (*(this + 20) * *(this + 19));
      *(this + 19) = v18;
      *(this + 18) = *v17;
      *v17++ = v18;
      ++v16;
    }

    while (v12 > v16);
  }

  if (*(this + 14) >= 1)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      LPFilterBank::Analysis((this + 1392), v20, a2[v20], (*(this + 19) + v19));
      ++v20;
      v19 += 16;
    }

    while (v20 < *(this + 14));
  }

  CmhBEAM2NOpt::process((this + 184), *(this + 19), *(this + 18));
  v21 = (*(this + 265) + *(this + 271));
  v22 = *(this + 133);
  if (v21 < 1)
  {
    v25 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      if (*(v22 + 4 * v23) == 1)
      {
        v24 = v23;
      }

      ++v23;
    }

    while (v21 != v23);
    v25 = v24;
  }

  if (*(v22 + 4 * v25))
  {
    if (*(this + 3) >= 1)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        vDSP_ztoc((*(this + 18) + v26), 1, *(*(this + 16) + 8 * v27++), 2, (*(this + 5) + (*(this + 5) >> 31)) >> 1);
        v26 += 16;
      }

      while (v27 < *(this + 3));
    }

    Cns::process(this + 1056, *(this + 16));
    if (*(this + 3) >= 1)
    {
      v28 = 0;
      v29 = 0;
      do
      {
        vDSP_ctoz(*(*(this + 16) + 8 * v29++), 2, (*(this + 18) + v28), 1, (*(this + 5) + (*(this + 5) >> 31)) >> 1);
        v28 += 16;
      }

      while (v29 < *(this + 3));
    }
  }

  if (*(this + 2))
  {
    CmhBEAMprocOpt::post_res_ns_proc(this);
    *(this + 76) = *(this + 23);
  }

  else
  {
    v30 = *(this + 3);
    if (v30 >= 1)
    {
      for (i = 0; i < v30; ++i)
      {
        v32 = *(this + 271) + *(this + 265) - 1;
        if (v32 >= i)
        {
          v32 = i;
        }

        if (*(*(this + 133) + 4 * v32))
        {
          v33 = *(this + 22);
          v34 = *(this + 272);
          if (v34 >= 1)
          {
            v35 = *(*(this + 173) + 112 * i + 16);
            v36 = *(this + 161);
            v37 = *(this + 22);
            do
            {
              v38 = *v36++;
              *v37++ = *(v35 + 4 * v38);
              --v34;
            }

            while (v34);
          }

          v39 = *(*(this + 18) + 16 * i) + 4;
          MEMORY[0x1E12BE7F0](v39, 1, v33, 1, v39, 1, *(this + 12));
          v40 = *(*(this + 18) + 16 * i + 8) + 4;
          MEMORY[0x1E12BE7F0](v40, 1, v33, 1, v40, 1, *(this + 12));
          v30 = *(this + 3);
        }
      }
    }
  }

  if (*(this + 77))
  {
    goto LABEL_61;
  }

  v41 = *(this + 48);
  if (v41 >= 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = *(this + 48);
  }

  v43 = *(this + 74);
  v55[0] = *(v43 + 136 * v42 - 28);
  v44 = *(this + 3);
  if (v44 == 2)
  {
    if (v41 >= 2)
    {
      v41 = 2;
    }

    v55[1] = *(v43 + 136 * v41 - 28);
    goto LABEL_55;
  }

  if (v44 >= 1)
  {
LABEL_55:
    v45 = 0;
    for (j = 0; j < v44; ++j)
    {
      if (v55[j] == 1)
      {
        v47 = *(this + 48) - 1;
        if (v47 >= j)
        {
          v47 = j;
        }

        v48 = *(*(this + 74) + 136 * v47 + 120);
        v49 = *(*(this + 18) + v45) + 4;
        MEMORY[0x1E12BE7F0](v49, 1, v48, 1, v49, 1, *(this + 12));
        v50 = *(*(this + 18) + v45 + 8) + 4;
        MEMORY[0x1E12BE7F0](v50, 1, v48, 1, v50, 1, *(this + 12));
        v44 = *(this + 3);
      }

      v45 += 16;
    }
  }

LABEL_61:
  if (*(this + 3) >= 1)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = *(this + 18) + v51;
      v54 = *v53;
      **(v53 + 8) = 0;
      *v54 = 0;
      LPFilterBank::Synthesis((this + 1392), v52, v53, a3[v52]);
      ++v52;
      v51 += 16;
    }

    while (v52 < *(this + 3));
  }

  return 0;
}

void CmhBEAMprocOpt::post_res_ns_proc(CmhBEAMprocOpt *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = (*(this + 265) + *(this + 271));
  v3 = *(this + 133);
  if (v2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*(v3 + 4 * v4) == 1)
      {
        v5 = v4;
      }

      ++v4;
    }

    while (v2 != v4);
    v6 = v5;
  }

  v7 = *(this + 14);
  if (*(v3 + 4 * v6))
  {
    Cns::comf_noise(*v7, *(this + 5));
    v7 = *(this + 14);
  }

  else
  {
    v8 = *(this + 5);
    if (v8 >= 1)
    {
      bzero(*v7, 4 * v8);
    }
  }

  v9 = *(this + 12);
  if (v9 >= 1)
  {
    memset_pattern16(*(v7 + 8), &unk_1DE095DF0, 4 * v9);
  }

  if (*(this + 3) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(this + 271) + *(this + 265) - 1;
      if (v11 >= v10)
      {
        v11 = v10;
      }

      v12 = *(this + 22);
      if (*(*(this + 133) + 4 * v11) == 1)
      {
        v13 = *(this + 272);
        if (v13 >= 1)
        {
          v14 = *(*(this + 173) + 112 * v10 + 16);
          v15 = *(this + 161);
          v16 = *(this + 22);
          do
          {
            v17 = *v15++;
            *v16++ = *(v14 + 4 * v17);
            --v13;
          }

          while (v13);
        }

        LODWORD(v18) = *(this + 12);
      }

      else
      {
        v18 = *(this + 12);
        if (v18 >= 1)
        {
          memset_pattern16(*(this + 22), &unk_1DE095DF0, 4 * v18);
        }
      }

      MEMORY[0x1E12BE7F0](v12, 1, *(*(this + 14) + 8), 1, v12, 1, v18);
      v19 = *(*(this + 18) + 16 * v10) + 4;
      MEMORY[0x1E12BE7F0](v19, 1, v12, 1, v19, 1, *(this + 12));
      v20 = *(*(this + 18) + 16 * v10 + 8) + 4;
      v21 = MEMORY[0x1E12BE7F0](v20, 1, v12, 1, v20, 1, *(this + 12));
      MEMORY[0x1EEE9AC00](v21);
      v22 = *(this + 5);
      __Z.realp = (&v24 - v23);
      __Z.imagp = (&v24 + 4 * v22 - v23);
      vDSP_ctoz(**(this + 14), 2, &__Z, 1, (v22 + (v22 >> 31)) >> 1);
      Cns::add_comf_noise((this + 1056), *(*(this + 18) + 16 * v10), *(*(this + 18) + 16 * v10 + 8), __Z.realp, __Z.imagp, v12, v10);
      ++v10;
    }

    while (v10 < *(this + 3));
  }
}

uint64_t CmhBEAMprocOpt::setModelFreqEQVector(CmhBEAMprocOpt *this, CmhBEAM2NOpt *a2)
{
  CmhBEAM2NOpt::interpolateFrequencyVector(a2, 0x101, **(this + 37), 93.75, *(this + 53), *(this + 49) / *(this + 50));
  v4 = *(*(this + 37) + 8);
  v5 = *(this + 53);
  v6 = *(this + 49) / *(this + 50);

  return CmhBEAM2NOpt::interpolateFrequencyVector(a2, 0x101, v4, 93.75, v5, v6);
}

float CmhBEAMprocOpt::setModelFreqCompVector(CmhBEAMprocOpt *this, CmhBEAM2NOpt *a2)
{
  CmhBEAM2NOpt::setModelFreqCompVector((this + 184), a2, 0);

  return CmhBEAM2NOpt::setModelFreqCompVector((this + 184), a2, 1u);
}

void lmsfilt_v4::initLmsFilter(int a1, int a2, int a3, uint64_t a4, float ***a5, int a6)
{
  __A = 0.0;
  v11 = *(a4 + 16);
  v12 = *(a4 + 44);
  v13 = malloc_type_malloc(0x60uLL, 0x130D4B88uLL);
  if (!v13 || ((v13[10] = 0, *(v13 + 3) = 0u, *(v13 + 4) = 0u, *(v13 + 1) = 0u, *(v13 + 2) = 0u, *v13 = 0u, *a5 = v13, *(v13 + 8) = v12, *(v13 + 9) = v12 * v11, v14 = v12 * v11 * a6, *(v13 + 22) = v14, *(v13 + 23) = a6, v15 = 4 * v14, v16 = 4 * v14, v17 = malloc_type_malloc(4 * v14, 0x364D0580uLL), 4 * v14) ? (v18 = v17 == 0) : (v18 = 0), v18 || ((v19 = v17, bzero(v17, v15), **a5 = v19, v20 = malloc_type_malloc(v15, 0xC8156983uLL), v16) ? (v21 = v20 == 0) : (v21 = 0), v21 || ((v22 = v20, bzero(v20, v15), (*a5)[1] = v22, v23 = malloc_type_malloc(v15, 0x9D23D187uLL), v16) ? (v24 = v23 == 0) : (v24 = 0), v24 || ((v25 = v23, bzero(v23, v15), (*a5)[2] = v25, v26 = malloc_type_malloc(v15, 0xE56F3EBBuLL), v16) ? (v27 = v26 == 0) : (v27 = 0), v27 || ((v28 = v26, bzero(v26, v15), (*a5)[3] = v28, v29 = malloc_type_malloc(v15, 0xA0A24367uLL), v16) ? (v30 = v29 == 0) : (v30 = 0), v30))))))
  {
    exception = __cxa_allocate_exception(8uLL);
    v37 = std::bad_alloc::bad_alloc(exception);
  }

  v31 = v29;
  bzero(v29, v15);
  (*a5)[6] = v31;
  vDSP_vfill(&__A, **a5, 1, v14);
  vDSP_vfill(&__A, (*a5)[1], 1, v14);
  vDSP_vfill(&__A, (*a5)[2], 1, v14);
  vDSP_vfill(&__A, (*a5)[3], 1, v14);
  vDSP_vfill(&__A, (*a5)[6], 1, v14);
  v32 = *a5;
  *(v32 + 10) = (1.0 - *(a4 + 92)) + (1.0 - *(a4 + 92));
  *(v32 + 11) = 1;
  v32[7] = 0;
  *(v32 + 16) = 0;
  *(v32 + 17) = a1;
  *(v32 + 18) = 0;
  *(v32 + 19) = v12 - 1;
  v33 = a3 / v11;
  if (a3 / v11 >= v12)
  {
    v33 = v12;
  }

  v34 = (a3 - a2) / v11;
  *(v32 + 20) = v34;
  *(v32 + 21) = v33;
  if (v33 - v34 <= 1)
  {
    if (v12 == 4)
    {
      v35 = -1;
    }

    else
    {
      v35 = 0;
    }

    if (v12 > 4)
    {
      v35 = -2;
    }

    *(v32 + 20) = v33 + v35;
  }
}

void lmsfilt_v4::runLmsFilter_v4(DSPSplitComplex *this, DSPSplitComplex *a2, DSPSplitComplex *a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, float *a8, float *a9, float *a10, int *a11, unsigned __int8 *a12, int a13, int a14, int a15, int a16, const BOOL *a17)
{
  v24 = a10;
  v25 = a3;
  vDSP_vclr(a2->realp, 1, a3);
  vDSP_vclr(a2->imagp, 1, v25);
  if (a10 < 2)
  {
    LODWORD(v38) = HIDWORD(a9);
    lmsfilt_v3::runLmsFilter_v3(this, a3, a4, a5, a6, a7, a8, a9, v38, v39, v41[0], v41[1]);
    v35 = 4 * v25;
    memcpy(a2->realp, this->realp, v35);
    imagp = a2->imagp;
    v37 = this->imagp;

    memcpy(imagp, v37, v35);
  }

  else
  {
    v42 = a2;
    v26 = 0;
    v45 = 4 * a11;
    v46 = 4 * SHIDWORD(a10);
    v44 = 4 * v25;
    v27 = a3;
    v28 = v25;
    v30 = HIDWORD(a9);
    v29 = a9;
    v47 = this;
    v40 = v27;
    do
    {
      v31 = *a12++;
      v32 = this->imagp;
      v33 = (this->realp + v26);
      v34 = (v32 + v26);
      if (v31 == 1)
      {
        v49.realp = v33;
        v49.imagp = (v32 + v26);
        LODWORD(v38) = v30;
        lmsfilt_v3::runLmsFilter_v3(&v49, v27, a4, a5, a6, a7, a8, v29, v38, v40, v42, SHIDWORD(v42));
        MEMORY[0x1E12BE5D0](v33, 1, v42->realp, 1, v42->realp, 1, v28);
        v27 = v40;
        MEMORY[0x1E12BE5D0](v34, 1, v42->imagp, 1, v42->imagp, 1, v28);
      }

      else
      {
        vDSP_vclr(v33, 1, v28);
        vDSP_vclr(v34, 1, v28);
      }

      a7 = (a7 + v46);
      a6 += v46;
      a5 += v45;
      a4 += v45;
      v26 += v44;
      --v24;
      this = v47;
      v30 = HIDWORD(a9);
      v29 = a9;
    }

    while (v24);
  }
}

void clsp::CLSP_Log::getLogDirectory(std::__fs::filesystem::path *this)
{
  v2 = getenv("TMPDIR");
  memset(&v6, 0, sizeof(v6));
  v3 = (v2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(&v6, v2, v3);
  memset(&__p, 0, sizeof(__p));
  std::string::append[abi:ne200100]<char const*,0>(&__p, "CLSPLogs/", "");
  std::__fs::filesystem::operator/[abi:ne200100](this, &v6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1DDFCBC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void clsp::CLSPLogContext::~CLSPLogContext(clsp::CLSPLogContext *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void CLSP_Log_FlushBuffer(FILE **a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*a1)
  {
    v4 = a1[6];
    v5 = (a1[7] - v4) >> 2;
    while (1)
    {
      size = v3->_bf._size;
      v7 = HIDWORD(v3->_bf._base) - size;
      v8 = v7;
      if (v7 < 0)
      {
        v8 = LODWORD(v3->_bf._base) + v7;
      }

      if (!v8)
      {
        break;
      }

      base = v3->_bf._base;
      v10 = v7 + (base & (v7 >> 31));
      if (v10 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = v10;
      }

      v12 = (4 * v11);
      v13 = (base - size);
      if (v11 <= v13)
      {
        p = &v3->_p[4 * size];
        v15 = v4;
      }

      else
      {
        v14 = v12 - 4 * v13;
        memcpy(v4, &v3->_p[4 * size], 4 * v13);
        v15 = v4 + 4 * v13;
        p = v3->_p;
        v12 = v14;
      }

      memcpy(v15, p, v12);
      v17 = *(&v3->_bf._size + 1) - v11;
      v3->_bf._size = (v11 + v3->_bf._size) % LODWORD(v3->_bf._base);
      *(&v3->_bf._size + 1) = v17;
      fwrite(v4, v11, 4uLL, *a1);
    }

    fflush(*a1);
  }

  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DDFCBDE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void CLSP_LogQueueFinalizer(FILE **a1)
{
  CLSP_Log_FlushBuffer(a1);
  if (*a1)
  {
    fclose(*a1);
    *a1 = 0;
  }

  clsp::CLSPLogContext::~CLSPLogContext(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t clsp::CLSP_Log::makeTimeStamp(clsp::CLSP_Log *this)
{
  v1 = CFTimeZoneCopySystem();
  CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(v1);
  CFRelease(v1);
  return CurrentGregorianDate;
}

clsp::CLSPLogContext **std::unique_ptr<clsp::CLSPLogContext>::~unique_ptr[abi:ne200100](clsp::CLSPLogContext **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    clsp::CLSPLogContext::~CLSPLogContext(v2);
    MEMORY[0x1E12BD160]();
  }

  return a1;
}

void std::__shared_ptr_emplace<clsp::CircularBuffer<float>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<clsp::CircularBuffer<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5933920;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void clsp::CLSP_Log::CLSP_Log(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = xmmword_1DE09E5D0;
  *(a1 + 16) = 0;
  operator new();
}

void sub_1DDFCC268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, clsp::CLSPLogContext *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<clsp::CLSPLogContext>::~unique_ptr[abi:ne200100](&a25);
  if (a49 < 0)
  {
    operator delete(a44);
  }

  v51 = *(v49 + 32);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  _Unwind_Resume(a1);
}

void clsp::CLSP_Log::FlushLog(clsp::CLSP_Log *this)
{
  if (*(this + 2))
  {
    v2 = *(this + 5);
    context = dispatch_get_context(v2);
    dispatch_async_f(v2, context, CLSP_Log_FlushBuffer);
    *(this + 2) = 0;
  }
}

void clsp::CLSP_Log::~CLSP_Log(dispatch_object_t *this)
{
  clsp::CLSP_Log::FlushLog(this);
  dispatch_release(this[5]);
  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void clsp::CLSP_Log::LogCLSPData(clsp::CLSP_Log *this, const float *__src, uint64_t a3)
{
  v6 = a3;
  v7 = *(this + 3);
  v8 = *(v7 + 28);
  if (a3 + ((*(v7 + 24) & ((v8 - *(v7 + 32)) >> 31)) + v8 - *(v7 + 32)) >= *(v7 + 24))
  {
    do
    {
      dispatch_sync(*(this + 5), &__block_literal_global_27903);
      v7 = *(this + 3);
      v8 = *(v7 + 28);
      v9 = *(v7 + 24);
    }

    while (v6 + ((v9 & ((v8 - *(v7 + 32)) >> 31)) + v8 - *(v7 + 32)) >= v9);
  }

  else
  {
    LODWORD(v9) = *(v7 + 24);
  }

  v10 = (4 * a3);
  v11 = v9 - v8;
  if (v9 - v8 >= a3)
  {
    v13 = (*v7 + 4 * v8);
    v14 = __src;
  }

  else
  {
    v12 = (v10 - 4 * v11);
    memcpy((*v7 + 4 * v8), __src, (4 * v11));
    v13 = *v7;
    v14 = &__src[v11];
    v10 = v12;
  }

  memcpy(v13, v14, v10);
  *(v7 + 36) += a3;
  *(v7 + 28) = (*(v7 + 28) + a3) % *(v7 + 24);
  v15 = *(this + 1);
  v16 = *(this + 2) + a3;
  *(this + 2) = v16;
  if (v16 >= v15)
  {

    clsp::CLSP_Log::FlushLog(this);
  }
}

uint64_t spp3Subsystem(void)
{
  if (atomic_load_explicit(&spp3Subsystem(void)::onceflag, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&spp3Subsystem(void)::onceflag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<spp3Subsystem(void)::$_0 &&>>);
  }

  return spp3Subsystem(void)::scope;
}

uint64_t spp3SubsystemAsync(void)
{
  if (atomic_load_explicit(&spp3SubsystemAsync(void)::onceflag, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&spp3SubsystemAsync(void)::onceflag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<spp3SubsystemAsync(void)::$_0 &&>>);
  }

  return spp3SubsystemAsync(void)::scope;
}

uint64_t shouldTraceRender(void)
{
  if (atomic_load_explicit(&shouldTraceRender(void)::onceflag, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&shouldTraceRender(void)::onceflag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<shouldTraceRender(void)::$_0 &&>>);
  }

  return shouldTraceRender(void)::traceRender;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<shouldTraceRender(void)::$_0 &&>>()
{
  v0[4] = *MEMORY[0x1E69E9840];
  v0[0] = &unk_1F59339A0;
  v0[3] = v0;
  CASmartPreferences::AddHandler<BOOL>(@"clsp_trace_iothread", @"com.apple.coreaudio", CASmartPreferences::InterpretBoolean, v0);
}

void sub_1DDFCC760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t AUCPMSVolumeV1::ValidFormat(AUCPMSVolumeV1 *this, int a2, int a3, const AudioStreamBasicDescription *a4)
{
  if ((a2 - 1) < 2 && a3 == 0)
  {
    return (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t AUCPMSVolumeV1::Render(AUCPMSVolumeV1 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v10)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    v11 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v11)
    {
      if (!*(v11 + 144))
      {
        goto LABEL_16;
      }

      v12 = *(v11 + 152);
      v13 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v13)
      {
        if (*(v13 + 144))
        {
          v14 = *(*this + 176);
          v15 = *(v13 + 152) + 48;

          return v14(this, a2, v12 + 48, v15, a4);
        }

LABEL_16:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUCPMSVolumeV1::ProcessBufferLists(AUCPMSVolumeV1 *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*(this + 17) != 1)
  {
    return 4294956429;
  }

  mNumberBuffers = a3->mNumberBuffers;
  if (mNumberBuffers != a4->mNumberBuffers)
  {
    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
    {
      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_27990);
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v19 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v40 = a3->mNumberBuffers;
      v41 = a4->mNumberBuffers;
      v49 = 136315906;
      v50 = "AUCPMSVolumeV1.cpp";
      v51 = 1024;
      v52 = 134;
      v53 = 1024;
      v54 = v40;
      v55 = 1024;
      v56 = v41;
      v42 = "%25s:%-5d ERROR: Input bus (%u-ch) and output bus (%u-ch) have different channel counts.";
      v43 = v19;
      v44 = 30;
LABEL_57:
      _os_log_impl(&dword_1DDB85000, v43, OS_LOG_TYPE_ERROR, v42, &v49, v44);
    }

    return 4294956428;
  }

  v10 = 4 * a5;
  if (mNumberBuffers)
  {
    v11 = 0;
    mBuffers = a4->mBuffers;
    p_mDataByteSize = &a4->mBuffers[0].mDataByteSize;
    v14 = &a3->mBuffers[0].mDataByteSize;
    while (v10 <= *v14 && v10 <= *p_mDataByteSize)
    {
      ++v11;
      p_mDataByteSize += 4;
      v14 += 4;
      if (mNumberBuffers == v11)
      {
        goto LABEL_8;
      }
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
    {
      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_27990);
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v39 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v39 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v47 = *v14;
      mDataByteSize = mBuffers[v11].mDataByteSize;
      v49 = 136316418;
      v50 = "AUCPMSVolumeV1.cpp";
      v51 = 1024;
      v52 = 144;
      v53 = 1024;
      v54 = v11;
      v55 = 1024;
      v56 = v47;
      v57 = 1024;
      v58 = mDataByteSize;
      v59 = 1024;
      v60 = v10;
      v42 = "%25s:%-5d ERROR: (For ch-%i) input buffers hold %u bytes, output buffers hold %u bytes, but %u was expected.";
      v43 = v39;
      v44 = 42;
      goto LABEL_57;
    }

    return 4294956428;
  }

LABEL_8:
  v15 = *(this + 268);
  if (v15 & 0x100) != 0 && (v15)
  {
    if (mNumberBuffers)
    {
      p_mData = &a4->mBuffers[0].mData;
      v17 = &a3->mBuffers[0].mData;
      do
      {
        if (a5)
        {
          memmove(*p_mData, *v17, v10);
        }

        result = 0;
        p_mData += 2;
        v17 += 2;
        --mNumberBuffers;
      }

      while (mNumberBuffers);
      return result;
    }

    return 0;
  }

  if (*(this + 78))
  {
    AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::RefreshParamsAndProps(this);
    if (a5 >= 1)
    {
      v20 = 0;
      v21 = *(this + 78);
      v24 = a4->mNumberBuffers;
      v23 = &a4->mBuffers[0].mData;
      v22 = v24;
      v25 = *(v21 + 104);
      v26 = *(v21 + 108);
      do
      {
        if (v26 == v25)
        {
          v27 = *(v21 + 96);
          if (*(v21 + 16) == 1)
          {
            *(v21 + 16) = 0;
          }

          else
          {
            if (*v21 >= v27)
            {
              v28 = 8;
            }

            else
            {
              v28 = 4;
            }

            v27 = (*v21 * *(v21 + v28)) + ((1.0 - *(v21 + v28)) * v27);
          }

          *v21 = v27;
          *(v21 + 112) = v27;
          v26 = 1;
        }

        else
        {
          ++v26;
        }

        v29 = v23;
        v30 = &a3->mBuffers[0].mData;
        v31 = v22;
        if (v22)
        {
          do
          {
            v33 = *v29;
            v29 += 2;
            v32 = v33;
            v34 = *v30;
            v30 += 2;
            v32[v20] = *(v21 + 112) * v34[v20];
            --v31;
          }

          while (v31);
        }

        ++v20;
      }

      while (v20 != a5);
      *(v21 + 108) = v26;
    }

    v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v36 & 1) == 0)
    {
      abort();
    }

    v37 = v35;
    v38 = log10f(*(*(this + 78) + 112));
    ausdk::AUElement::SetParameter(v37, 3u, v38 * 20.0);
    result = 0;
    atomic_store(1u, this + 619);
  }

  else
  {
    if (!mNumberBuffers)
    {
      return 0;
    }

    v45 = &a4->mBuffers[0].mData;
    v46 = &a3->mBuffers[0].mData;
    do
    {
      if (a5)
      {
        memmove(*v45, *v46, v10);
      }

      result = 0;
      v45 += 2;
      v46 += 2;
      --mNumberBuffers;
    }

    while (mNumberBuffers);
  }

  return result;
}

uint64_t AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::RefreshParamsAndProps(uint64_t a1)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v3 & 1) == 0)
  {
    abort();
  }

  v4 = v2;
  if (atomic_load_explicit((a1 + 616), memory_order_acquire))
  {
    Parameter = ausdk::AUElement::GetParameter(v2, 0);
    v6 = *(a1 + 624);
    if (v6)
    {
      *(v6 + 8) = expf(-1.0 / (Parameter * *(v6 + 12)));
    }

    atomic_store(0, (a1 + 616));
  }

  if (atomic_load_explicit((a1 + 617), memory_order_acquire))
  {
    v7 = ausdk::AUElement::GetParameter(v4, 1u);
    v8 = *(a1 + 624);
    if (v8)
    {
      *(v8 + 4) = expf(-1.0 / (v7 * *(v8 + 12)));
    }

    atomic_store(0, (a1 + 617));
  }

  if (atomic_load_explicit((a1 + 618), memory_order_acquire))
  {
    v9 = ausdk::AUElement::GetParameter(v4, 2u);
    v10 = *(a1 + 624);
    if (v10)
    {
      v11 = cpms::PowerLUT<float>::GetForVolumeLevel(v10 + 24, v9);
      *(v10 + 80) = cpms::controllers::LUT<float,cpms::smoothers::Exponential>::Compute<cpms::efficiency::AmpModelBase<float>,float,cpms::powertuplekinds::PowerBudget>((v10 + 48), v11);
      *(v10 + 84) = v12;
      *(v10 + 88) = v13;
      *(v10 + 92) = v14;
      v15 = vdiv_f32(*(v10 + 64), vbsl_s8(vcgt_f32(0x3400000034000000, *(v10 + 80)), 0x3400000034000000, *(v10 + 80)));
      if (v13 < 0.00000011921)
      {
        v13 = 0.00000011921;
      }

      if (v15.f32[1] < v15.f32[0])
      {
        v15.f32[0] = v15.f32[1];
      }

      if ((*(v10 + 72) / v13) < v15.f32[0])
      {
        v15.f32[0] = *(v10 + 72) / v13;
      }

      if (*(v10 + 60) < v15.f32[0])
      {
        v15.i32[0] = *(v10 + 60);
      }

      if (*(v10 + 56) >= v15.f32[0])
      {
        v15.i32[0] = *(v10 + 56);
      }

      *(v10 + 96) = sqrtf(v15.f32[0]);
    }

    atomic_store(0, (a1 + 618));
  }

  if (atomic_load_explicit((a1 + 619), memory_order_acquire))
  {
    ausdk::AUElement::GetParameter(v4, 3u);
    atomic_store(0, (a1 + 619));
  }

  result = caulk::pooled_semaphore_mutex::try_lock((a1 + 528));
  if (result)
  {
    if (atomic_load_explicit((a1 + 620), memory_order_acquire))
    {
      if (*(a1 + 608) == 1)
      {
        v17 = *(a1 + 624);
        if (v17)
        {
          *(v17 + 64) = cpms::controllers::LUT<float,cpms::smoothers::Exponential>::Compute<cpms::efficiency::AmpModelBase<float>,float,cpms::powertuplekinds::PowerBudget>((v17 + 48), (a1 + 592));
          *(v17 + 68) = v18;
          *(v17 + 72) = v19;
          *(v17 + 76) = v20;
          v21 = vdiv_f32(*(v17 + 64), vbsl_s8(vcgt_f32(0x3400000034000000, *(v17 + 80)), 0x3400000034000000, *(v17 + 80)));
          v22 = *(v17 + 88);
          if (v22 < 0.00000011921)
          {
            v22 = 0.00000011921;
          }

          v23 = v19 / v22;
          if (v21.f32[1] < v21.f32[0])
          {
            v21.f32[0] = v21.f32[1];
          }

          if (v23 < v21.f32[0])
          {
            v21.f32[0] = v23;
          }

          if (*(v17 + 60) < v21.f32[0])
          {
            v21.i32[0] = *(v17 + 60);
          }

          if (*(v17 + 56) >= v21.f32[0])
          {
            v21.i32[0] = *(v17 + 56);
          }

          *(v17 + 96) = sqrtf(v21.f32[0]);
        }
      }

      atomic_store(0, (a1 + 620));
    }

    return caulk::pooled_semaphore_mutex::_unlock((a1 + 528));
  }

  return result;
}

float cpms::controllers::LUT<float,cpms::smoothers::Exponential>::Compute<cpms::efficiency::AmpModelBase<float>,float,cpms::powertuplekinds::PowerBudget>(uint64_t *a1, float *a2)
{
  v4 = cpms::efficiency::AmpModelBase<float>::Compute(*a1, *a2);
  cpms::efficiency::AmpModelBase<float>::Compute(*a1, a2[1]);
  cpms::efficiency::AmpModelBase<float>::Compute(*a1, a2[2]);
  cpms::efficiency::AmpModelBase<float>::Compute(*a1, a2[3]);
  return v4;
}

float cpms::efficiency::AmpModelBase<float>::Compute(uint64_t a1, float a2)
{
  v5 = a2;
  v7 = 0;
  v8 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v5, &__p, 1uLL);
  v3 = (*(*a1 + 16))(a1, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_1DDFCD0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float *cpms::PowerLUT<float>::GetForVolumeLevel(uint64_t a1, float a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    v6 = v3;
    do
    {
      v7 = v6[7];
      if (v7 >= a2)
      {
        v5 = v6;
      }

      v6 = *&v6[2 * (v7 < a2)];
    }

    while (v6);
    if (v5 == v2)
    {
      do
      {
        v5 = v3;
        v3 = *(v3 + 1);
      }

      while (v3);
    }
  }

  else
  {
    do
    {
      v5 = *(v2 + 2);
      v8 = *v5 == v2;
      v2 = v5;
    }

    while (v8);
  }

  return v5 + 8;
}

uint64_t AUCPMSVolumeV1::Initialize(AUCPMSVolumeV1 *this)
{
  v65 = *MEMORY[0x1E69E9840];
  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
  {
    dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_27990);
  }

  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
  {
    v2 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
    if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v58 = "AUCPMSVolumeV1.cpp";
    v59 = 1024;
    v60 = 44;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Starting initialization.", buf, 0x12u);
  }

LABEL_9:
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = *(Element + 96);
  v53 = *(Element + 80);
  *v54 = v4;
  *&v54[16] = *(Element + 112);
  v5 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v5)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v7 = *(v5 + 96);
  *&v52.mSampleRate = *(v5 + 80);
  *&v52.mBytesPerPacket = v7;
  *&v52.mBitsPerChannel = *(v5 + 112);
  if (*&v53 != v52.mSampleRate || DWORD2(v53) != v52.mFormatID || *v54 != *&v52.mBytesPerPacket || *&v54[12] != *&v52.mChannelsPerFrame || !CA::Implementation::EquivalentFormatFlags(&v53, &v52, v6))
  {
    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
    {
      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_27990);
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v18 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = &v56;
      CA::StreamDescription::AsString(&v56, &v53, v19, v20);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v56.__r_.__value_.__r.__words[0];
      }

      CA::StreamDescription::AsString(&__p, &v52, v22, v23);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v58 = "AUCPMSVolumeV1.cpp";
      v59 = 1024;
      v60 = 55;
      v61 = 2080;
      v62 = v21;
      v63 = 2080;
      v64 = p_p;
      _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Input and output formats need to be equivalent, but we have:\n[Input:  %s], and\n[Output: %s]", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }
    }

    return 4294956428;
  }

  if (*(this + 584))
  {
    if (!ausdk::AUScope::GetElement((this + 80), 0))
    {
      ausdk::Throw(0xFFFFD583);
    }

    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v8, 0), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v12 & 1) == 0) || (v13 = ausdk::AUElement::GetParameter(v11, 1u), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0))
    {
      abort();
    }

    v16 = ausdk::AUElement::GetParameter(v14, 2u);
    v51 = v16;
    if (*(this + 608) == 1)
    {
      v17 = *(this + 37);
    }

    else
    {
      v17 = vdupq_n_s32(0x42480000u);
    }

    v50 = v17;
    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
    {
      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_27990);
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v27 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      cpms::PowerTuple<float,cpms::powertuplekinds::PowerBudget>::toString(&v56, v50.i32);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v56;
      }

      else
      {
        v28 = v56.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v58 = "AUCPMSVolumeV1.cpp";
      v59 = 1024;
      v60 = 79;
      v61 = 2080;
      v62 = v28;
      _os_log_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_INFO, "%25s:%-5d Initializing with PowerBudget: [ %s ]", buf, 0x1Cu);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
      {
        dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_27990);
      }
    }

LABEL_64:
    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v29 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
LABEL_76:
        if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
        {
          v31 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
          if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v31 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          goto LABEL_103;
        }

        std::to_string(&__p, v16);
        while (1)
        {
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v33 = __p.__r_.__value_.__r.__words[0];
            if (*(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1) != 48)
            {
LABEL_88:
              v56 = __p;
              memset(&__p, 0, sizeof(__p));
              while (1)
              {
                if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  v35 = v56.__r_.__value_.__r.__words[0];
                  if (*(v56.__r_.__value_.__r.__words[0] + v56.__r_.__value_.__l.__size_ - 1) != 46)
                  {
LABEL_95:
                    v49 = v56;
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    v36 = &v49;
                    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v36 = v49.__r_.__value_.__r.__words[0];
                    }

                    *buf = 136315650;
                    v58 = "AUCPMSVolumeV1.cpp";
                    v59 = 1024;
                    v60 = 81;
                    v61 = 2080;
                    v62 = v36;
                    _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_INFO, "%25s:%-5d Initializing with Volume level: %s", buf, 0x1Cu);
                    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v49.__r_.__value_.__l.__data_);
                    }

                    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
                    {
                      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_27990);
                    }

LABEL_103:
                    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
                    {
                      v37 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
                      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
                      {
                        goto LABEL_130;
                      }
                    }

                    else
                    {
                      v37 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      std::to_string(&__p, Parameter);
                      while (1)
                      {
                        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                        {
                          v39 = __p.__r_.__value_.__r.__words[0];
                          if (*(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1) != 48)
                          {
LABEL_115:
                            v56 = __p;
                            memset(&__p, 0, sizeof(__p));
                            while (1)
                            {
                              if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                              {
                                v41 = v56.__r_.__value_.__r.__words[0];
                                if (*(v56.__r_.__value_.__r.__words[0] + v56.__r_.__value_.__l.__size_ - 1) != 46)
                                {
LABEL_122:
                                  v49 = v56;
                                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(__p.__r_.__value_.__l.__data_);
                                  }

                                  v42 = &v49;
                                  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                  {
                                    v42 = v49.__r_.__value_.__r.__words[0];
                                  }

                                  *buf = 136315650;
                                  v58 = "AUCPMSVolumeV1.cpp";
                                  v59 = 1024;
                                  v60 = 82;
                                  v61 = 2080;
                                  v62 = v42;
                                  _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_INFO, "%25s:%-5d Initializing with Smoother attack TC: %s", buf, 0x1Cu);
                                  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v49.__r_.__value_.__l.__data_);
                                  }

                                  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
                                  {
                                    dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_27990);
                                  }

                                  goto LABEL_130;
                                }

                                v40 = --v56.__r_.__value_.__l.__size_;
                              }

                              else
                              {
                                if (*(&__p.__r_.__value_.__r.__words[2] + SHIBYTE(v56.__r_.__value_.__r.__words[2]) + 7) != 46)
                                {
                                  goto LABEL_122;
                                }

                                v40 = SHIBYTE(v56.__r_.__value_.__r.__words[2]) - 1;
                                *(&v56.__r_.__value_.__s + 23) = (*(&v56.__r_.__value_.__s + 23) - 1) & 0x7F;
                                v41 = &v56;
                              }

                              v41->__r_.__value_.__s.__data_[v40] = 0;
                            }
                          }

                          v38 = --__p.__r_.__value_.__l.__size_;
                        }

                        else
                        {
                          if (v54[SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 23] != 48)
                          {
                            goto LABEL_115;
                          }

                          v38 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
                          *(&__p.__r_.__value_.__s + 23) = (*(&__p.__r_.__value_.__s + 23) - 1) & 0x7F;
                          v39 = &__p;
                        }

                        v39->__r_.__value_.__s.__data_[v38] = 0;
                      }
                    }

LABEL_130:
                    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
                    {
                      v43 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
                      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
                      {
                        goto LABEL_155;
                      }
                    }

                    else
                    {
                      v43 = MEMORY[0x1E69E9C10];
                    }

                    if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_155;
                    }

                    std::to_string(&__p, v13);
                    while (1)
                    {
                      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                      {
                        v45 = __p.__r_.__value_.__r.__words[0];
                        if (*(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1) != 48)
                        {
LABEL_142:
                          v56 = __p;
                          memset(&__p, 0, sizeof(__p));
                          while (1)
                          {
                            if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                            {
                              v47 = v56.__r_.__value_.__r.__words[0];
                              if (*(v56.__r_.__value_.__r.__words[0] + v56.__r_.__value_.__l.__size_ - 1) != 46)
                              {
LABEL_149:
                                v49 = v56;
                                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(__p.__r_.__value_.__l.__data_);
                                }

                                v48 = &v49;
                                if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v48 = v49.__r_.__value_.__r.__words[0];
                                }

                                *buf = 136315650;
                                v58 = "AUCPMSVolumeV1.cpp";
                                v59 = 1024;
                                v60 = 83;
                                v61 = 2080;
                                v62 = v48;
                                _os_log_impl(&dword_1DDB85000, v43, OS_LOG_TYPE_INFO, "%25s:%-5d Initializing with Smoother release TC: %s", buf, 0x1Cu);
                                if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v49.__r_.__value_.__l.__data_);
                                }

LABEL_155:
                                cpms::controllers::LUT<float,cpms::smoothers::Exponential>::LUT(buf, &v50, this + 544);
                              }

                              v46 = --v56.__r_.__value_.__l.__size_;
                            }

                            else
                            {
                              if (*(&__p.__r_.__value_.__r.__words[2] + SHIBYTE(v56.__r_.__value_.__r.__words[2]) + 7) != 46)
                              {
                                goto LABEL_149;
                              }

                              v46 = SHIBYTE(v56.__r_.__value_.__r.__words[2]) - 1;
                              *(&v56.__r_.__value_.__s + 23) = (*(&v56.__r_.__value_.__s + 23) - 1) & 0x7F;
                              v47 = &v56;
                            }

                            v47->__r_.__value_.__s.__data_[v46] = 0;
                          }
                        }

                        v44 = --__p.__r_.__value_.__l.__size_;
                      }

                      else
                      {
                        if (v54[SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 23] != 48)
                        {
                          goto LABEL_142;
                        }

                        v44 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
                        *(&__p.__r_.__value_.__s + 23) = (*(&__p.__r_.__value_.__s + 23) - 1) & 0x7F;
                        v45 = &__p;
                      }

                      v45->__r_.__value_.__s.__data_[v44] = 0;
                    }
                  }

                  v34 = --v56.__r_.__value_.__l.__size_;
                }

                else
                {
                  if (*(&__p.__r_.__value_.__r.__words[2] + SHIBYTE(v56.__r_.__value_.__r.__words[2]) + 7) != 46)
                  {
                    goto LABEL_95;
                  }

                  v34 = SHIBYTE(v56.__r_.__value_.__r.__words[2]) - 1;
                  *(&v56.__r_.__value_.__s + 23) = (*(&v56.__r_.__value_.__s + 23) - 1) & 0x7F;
                  v35 = &v56;
                }

                v35->__r_.__value_.__s.__data_[v34] = 0;
              }
            }

            v32 = --__p.__r_.__value_.__l.__size_;
          }

          else
          {
            if (v54[SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 23] != 48)
            {
              goto LABEL_88;
            }

            v32 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
            *(&__p.__r_.__value_.__s + 23) = (*(&__p.__r_.__value_.__s + 23) - 1) & 0x7F;
            v33 = &__p;
          }

          v33->__r_.__value_.__s.__data_[v32] = 0;
        }
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      cpms::LUTSystem<float>::toString(&v56, this + 136);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v56;
      }

      else
      {
        v30 = v56.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v58 = "AUCPMSVolumeV1.cpp";
      v59 = 1024;
      v60 = 80;
      v61 = 2080;
      v62 = v30;
      _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_INFO, "%25s:%-5d Initializing with LUTSystem:\n%s", buf, 0x1Cu);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
      {
        dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_27990);
      }
    }

    goto LABEL_76;
  }

  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
  {
    dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_27990);
  }

  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
  {
    v26 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
    if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      return 0;
    }
  }

  else
  {
    v26 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315394;
    v58 = "AUCPMSVolumeV1.cpp";
    v59 = 1024;
    v60 = 61;
    _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: We have not been configured with a LUT system; we cannot initialize properly and will process in soft bypass.", buf, 0x12u);
    return 0;
  }

  return result;
}

void sub_1DDFCDE80(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_begin_catch(exception_object);
  if (*(v4 + 3952) != -1)
  {
    dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_27990);
  }

  v6 = *(v3 + 3960);
  if (v6)
  {
    v7 = *v6;
    if (!*v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *(v5 - 192) = 136315394;
    *(v2 + 60) = "AUCPMSVolumeV1.cpp";
    *(v5 - 180) = 1024;
    *(v2 + 70) = 96;
    _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: We have not been configured fully; we could not initialize the kernel and will process in soft bypass.", (v5 - 192), 0x12u);
  }

LABEL_10:
  __cxa_end_catch();
  JUMPOUT(0x1DDFCDCD8);
}

void cpms::PowerTuple<float,cpms::powertuplekinds::PowerBudget>::toString(std::string *a1, float *a2)
{
  std::to_string(&v27, (*a2 * 1000.0));
  v4 = std::string::insert(&v27, 0, "Instantaneous: ", 0xFuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v28, "mW; ", 4uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&a1->__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  std::to_string(&v26, (a2[1] * 1000.0));
  v8 = std::string::insert(&v26, 0, "100ms: ", 7uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v27, "mW; ", 4uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v28;
  }

  else
  {
    v12 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v12, size);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  std::to_string(&v26, (a2[2] * 1000.0));
  v14 = std::string::insert(&v26, 0, "1000ms: ", 8uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v27, "mW; ", 4uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v28;
  }

  else
  {
    v18 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v28.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v18, v19);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  std::to_string(&v26, (a2[3] * 1000.0));
  v20 = std::string::insert(&v26, 0, "thermal: ", 9uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v27, "mW", 2uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
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

  std::string::append(a1, v24, v25);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1DDFCE294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDFCE318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  if (a18 < 0)
  {
    JUMPOUT(0x1DDFCE30CLL);
  }

  JUMPOUT(0x1DDFCE310);
}

void cpms::LUTSystem<float>::toString(std::string *a1, float *a2)
{
  std::to_string(&v100, *(a2 + 2));
  v4 = std::string::insert(&v100, 0, "[", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v101.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v101.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v101, " LUT entries]\n", 0xEuLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v80.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v80.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  v79 = a2;
  v10 = *a2;
  v8 = a2 + 2;
  v9 = v10;
  if (v10 != v8)
  {
    do
    {
      std::to_string(&v93, v9[7] * 16.0);
      v11 = std::string::insert(&v93, 0, "  Volume level ", 0xFuLL);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v94.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v94.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = std::string::append(&v94, "/16: ", 5uLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v95.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v95.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v100, (v9[8] * 1000.0));
      v15 = std::string::insert(&v100, 0, "Instantaneous: ", 0xFuLL);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v101.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v101.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = std::string::append(&v101, "mW; ", 4uLL);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v92.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v92.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      std::to_string(&v99, (v9[9] * 1000.0));
      v19 = std::string::insert(&v99, 0, "100ms: ", 7uLL);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(&v100, "mW; ", 4uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v101.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v101.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v101;
      }

      else
      {
        v23 = v101.__r_.__value_.__r.__words[0];
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v101.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v101.__r_.__value_.__l.__size_;
      }

      std::string::append(&v92, v23, size);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      std::to_string(&v99, (v9[10] * 1000.0));
      v25 = std::string::insert(&v99, 0, "1000ms: ", 8uLL);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = std::string::append(&v100, "mW; ", 4uLL);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v101.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v101.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v101;
      }

      else
      {
        v29 = v101.__r_.__value_.__r.__words[0];
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v101.__r_.__value_.__l.__size_;
      }

      std::string::append(&v92, v29, v30);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      std::to_string(&v99, (v9[11] * 1000.0));
      v31 = std::string::insert(&v99, 0, "thermal: ", 9uLL);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v100, "mW", 2uLL);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v101.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v101.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v101;
      }

      else
      {
        v35 = v101.__r_.__value_.__r.__words[0];
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = v101.__r_.__value_.__l.__size_;
      }

      std::string::append(&v92, v35, v36);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v92;
      }

      else
      {
        v37 = v92.__r_.__value_.__r.__words[0];
      }

      if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v92.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v95, v37, v38);
      v40 = *&v39->__r_.__value_.__l.__data_;
      v96.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v96.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v96, "\n", 1uLL);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v98 = v41->__r_.__value_.__r.__words[2];
      v97 = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (v98 >= 0)
      {
        v43 = &v97;
      }

      else
      {
        v43 = v97;
      }

      if (v98 >= 0)
      {
        v44 = HIBYTE(v98);
      }

      else
      {
        v44 = *(&v97 + 1);
      }

      std::string::append(&v80, v43, v44);
      if (SHIBYTE(v98) < 0)
      {
        operator delete(v97);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      v45 = *(v9 + 1);
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = *(v9 + 2);
          v47 = *v46 == v9;
          v9 = v46;
        }

        while (!v47);
      }

      v9 = v46;
    }

    while (v46 != v8);
  }

  v48 = std::string::insert(&v80, 0, "Amp system:\n-", 0xDuLL);
  v49 = *&v48->__r_.__value_.__l.__data_;
  v81.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
  *&v81.__r_.__value_.__l.__data_ = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  v50 = std::string::append(&v81, "\n", 1uLL);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v82.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v82.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v82, "-[Amplifier efficiency expression: ", 0x23uLL);
  v53 = *&v52->__r_.__value_.__l.__data_;
  v83.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
  *&v83.__r_.__value_.__l.__data_ = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  (*(**(v79 + 3) + 40))(&v101);
  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = &v101;
  }

  else
  {
    v54 = v101.__r_.__value_.__r.__words[0];
  }

  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v55 = v101.__r_.__value_.__l.__size_;
  }

  v56 = std::string::append(&v83, v54, v55);
  v57 = *&v56->__r_.__value_.__l.__data_;
  v84.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
  *&v84.__r_.__value_.__l.__data_ = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  v58 = std::string::append(&v84, "]", 1uLL);
  v59 = *&v58->__r_.__value_.__l.__data_;
  v85.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
  *&v85.__r_.__value_.__l.__data_ = v59;
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  v60 = std::string::append(&v85, "\n", 1uLL);
  v61 = *&v60->__r_.__value_.__l.__data_;
  v86.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
  *&v86.__r_.__value_.__l.__data_ = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  v62 = std::string::append(&v86, "-[TargetGainRangeDB: [", 0x16uLL);
  v63 = *&v62->__r_.__value_.__l.__data_;
  v87.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
  *&v87.__r_.__value_.__l.__data_ = v63;
  v62->__r_.__value_.__l.__size_ = 0;
  v62->__r_.__value_.__r.__words[2] = 0;
  v62->__r_.__value_.__r.__words[0] = 0;
  v64 = log10f(v79[8]);
  std::to_string(&v100, v64 * 10.0);
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = &v100;
  }

  else
  {
    v65 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v66 = v100.__r_.__value_.__l.__size_;
  }

  v67 = std::string::append(&v87, v65, v66);
  v68 = *&v67->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v68;
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  v69 = std::string::append(&v88, ", ", 2uLL);
  v70 = *&v69->__r_.__value_.__l.__data_;
  v89.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
  *&v89.__r_.__value_.__l.__data_ = v70;
  v69->__r_.__value_.__l.__size_ = 0;
  v69->__r_.__value_.__r.__words[2] = 0;
  v69->__r_.__value_.__r.__words[0] = 0;
  v71 = log10f(v79[9]);
  std::to_string(&v99, v71 * 10.0);
  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = &v99;
  }

  else
  {
    v72 = v99.__r_.__value_.__r.__words[0];
  }

  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v73 = v99.__r_.__value_.__l.__size_;
  }

  v74 = std::string::append(&v89, v72, v73);
  v75 = *&v74->__r_.__value_.__l.__data_;
  v90.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
  *&v90.__r_.__value_.__l.__data_ = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v76 = std::string::append(&v90, "] dB", 4uLL);
  v77 = *&v76->__r_.__value_.__l.__data_;
  v91.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
  *&v91.__r_.__value_.__l.__data_ = v77;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  v78 = std::string::append(&v91, "\n", 1uLL);
  *a1 = *v78;
  v78->__r_.__value_.__l.__size_ = 0;
  v78->__r_.__value_.__r.__words[2] = 0;
  v78->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }
}