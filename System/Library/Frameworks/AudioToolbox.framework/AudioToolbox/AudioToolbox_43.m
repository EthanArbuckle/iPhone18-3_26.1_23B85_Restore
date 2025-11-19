void sub_1DDE79E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void **a27)
{
  a27 = &a10;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a27);
  a27 = &a13;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a27);
  v29 = *(v27 - 144);
  if (v29)
  {
    *(v27 - 136) = v29;
    operator delete(v29);
  }

  CACFArray::~CACFArray(&a20);
  CACFArray::~CACFArray(&a22);
  CACFArray::~CACFArray(&a24);
  _Unwind_Resume(a1);
}

BOOL ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::drain_trash(uint64_t a1)
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

    AULoudnessWarriorKernel::~AULoudnessWarriorKernel(v3);
    MEMORY[0x1E12BD160]();
  }

  return result;
}

void AULoudnessWarrior::SetPassthroughModeAndBypass(AULoudnessWarrior *this, double *a2, CFMutableArrayRef *a3, CFMutableArrayRef *a4, CFMutableArrayRef *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (AULoudnessWarriorLogScope(void)::once != -1)
  {
    dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
  }

  if (AULoudnessWarriorLogScope(void)::scope)
  {
    v10 = *AULoudnessWarriorLogScope(void)::scope;
    if (!*AULoudnessWarriorLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AULoudnessWarrior.cpp";
    v13 = 1024;
    v14 = 619;
    _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No valid .plist file set, going to passthrough mode and bypassing LoudnessWarrior\n", buf, 0x12u);
  }

LABEL_9:
  if (a2)
  {
    *a2 = 0.0;
  }

  if (*(a3 + 9) == 1 && *a3)
  {
    CFArrayRemoveAllValues(*a3);
  }

  CACFArray::AppendFloat32(a3, 0.0);
  *buf = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *&buf[8] = 257;
  CACFArray::AppendFloat32(buf, 1.0);
  CACFArray::AppendFloat32(buf, 0.0);
  CACFArray::AppendFloat32(buf, 0.0);
  CACFArray::AppendFloat32(buf, 0.0);
  CACFArray::AppendFloat32(buf, 0.0);
  if (*(a4 + 9) == 1)
  {
    if (!*a4)
    {
      goto LABEL_20;
    }

    CFArrayRemoveAllValues(*a4);
  }

  if (*a4 && *(a4 + 9) == 1)
  {
    CFArrayAppendValue(*a4, *buf);
  }

LABEL_20:
  if (*(a5 + 9) == 1)
  {
    if (!*a5)
    {
      goto LABEL_26;
    }

    CFArrayRemoveAllValues(*a5);
  }

  if (*a5 && *(a5 + 9) == 1)
  {
    CFArrayAppendValue(*a5, *buf);
  }

LABEL_26:
  v11 = 1;
  (*(*this + 96))(this, 21, 0, 0, &v11, 4);
  atomic_store(1u, this + 2792);
  CACFArray::~CACFArray(buf);
}

void sub_1DDE7A1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFArray::~CACFArray(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }
  }

  v5 = *a2;
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = *(a2 + 9);
  if (v6 == 1 && v5 != 0)
  {
    CFRetain(v5);
  }

  return a1;
}

void sub_1DDE7A8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, void *a11, void *a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  DspLib::Biquad::Filter::~Filter((v17 + 41));
  std::unique_ptr<BiquadInterpolator>::~unique_ptr[abi:ne200100](v17 + 40);
  v19 = v17[37];
  if (v19)
  {
    v17[38] = v19;
    operator delete(v19);
  }

  v20 = v17[34];
  if (v20)
  {
    v17[35] = v20;
    operator delete(v20);
  }

  std::unique_ptr<BiquadInterpolator>::~unique_ptr[abi:ne200100](v17 + 32);
  v21 = v17[29];
  if (v21)
  {
    v17[30] = v21;
    operator delete(v21);
  }

  v22 = v17[26];
  if (v22)
  {
    v17[27] = v22;
    operator delete(v22);
  }

  v23 = *a9;
  if (*a9)
  {
    v17[23] = v23;
    operator delete(v23);
  }

  v24 = v17[19];
  if (v24)
  {
    v17[20] = v24;
    operator delete(v24);
  }

  v25 = v17[16];
  if (v25)
  {
    v17[17] = v25;
    operator delete(v25);
  }

  v26 = v17[13];
  if (v26)
  {
    v17[14] = v26;
    operator delete(v26);
  }

  v27 = v17[10];
  if (v27)
  {
    v17[11] = v27;
    operator delete(v27);
  }

  v28 = v17[7];
  if (v28)
  {
    operator delete(v28);
  }

  __p = a11;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = a12;
  std::vector<std::unique_ptr<Meter>>::__destroy_vector::operator()[abi:ne200100](&__p);
  MEMORY[0x1E12BD160](v17, 0x10B0C4052777E08);
  _Unwind_Resume(a1);
}

uint64_t AULoudnessWarrior::GetProperty(AULoudnessWarrior *this, int a2, int a3, int a4, _DWORD *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (AULoudnessWarriorLogScope(void)::once != -1)
  {
    dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
  }

  if (AULoudnessWarriorLogScope(void)::scope)
  {
    v10 = *AULoudnessWarriorLogScope(void)::scope;
    if (!*AULoudnessWarriorLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136316162;
    v15 = "AULoudnessWarrior.cpp";
    v16 = 1024;
    v17 = 403;
    v18 = 1024;
    v19 = a2;
    v20 = 1024;
    v21 = a3;
    v22 = 1024;
    v23 = a4;
    _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d GetProperty ID=%d scope=%d bus=%d\n", &v14, 0x24u);
  }

LABEL_9:
  if (a2 != 8900 || a3)
  {
    result = 4294956417;
    if (a2 == 21 && !a3)
    {
      if ((*(*this + 600))(this))
      {
        result = 0;
        *a5 = *(this + 552);
      }

      else
      {
        return 4294956417;
      }
    }
  }

  else
  {
    v11 = *(this + 345);
    if (v11)
    {
      CFRetain(v11);
      v12 = *(this + 345);
    }

    else
    {
      v12 = 0;
    }

    result = 0;
    *a5 = v12;
  }

  return result;
}

uint64_t AULoudnessWarrior::GetPropertyInfo(AULoudnessWarrior *this, int a2, int a3, int a4, unsigned int *a5, BOOL *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (AULoudnessWarriorLogScope(void)::once != -1)
  {
    dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
  }

  if (AULoudnessWarriorLogScope(void)::scope)
  {
    v12 = *AULoudnessWarriorLogScope(void)::scope;
    if (!*AULoudnessWarriorLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136316162;
    v16 = "AULoudnessWarrior.cpp";
    v17 = 1024;
    v18 = 376;
    v19 = 1024;
    v20 = a2;
    v21 = 1024;
    v22 = a3;
    v23 = 1024;
    v24 = a4;
    _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d GetPropertyInfo ID=%d scope=%d bus=%d\n", &v15, 0x24u);
  }

LABEL_9:
  if (a2 == 8900 && !a3)
  {
    v13 = 8;
LABEL_12:
    result = 0;
    *a6 = 1;
    *a5 = v13;
    return result;
  }

  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (!(*(*this + 600))(this))
    {
      return 4294956417;
    }

    v13 = 4;
    goto LABEL_12;
  }

  return result;
}

uint64_t AULoudnessWarrior::Reset(AULoudnessWarrior *this)
{
  v1 = *(this + 344);
  if (v1)
  {
    v2 = v1[1];
    v3 = v1[2];
    while (v2 != v3)
    {
      v4 = *v2++;
      *(*(v4 + 72) + 28) = 0;
      DspLib::Biquad::SetupWrapper::reset((v4 + 48));
    }

    DspLib::Biquad::SetupWrapper::reset((v1 + 47));
  }

  return 0;
}

uint64_t AULoudnessWarrior::Initialize(AULoudnessWarrior *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (AULoudnessWarriorLogScope(void)::once != -1)
  {
    dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
  }

  if (AULoudnessWarriorLogScope(void)::scope)
  {
    v2 = *AULoudnessWarriorLogScope(void)::scope;
    if (!*AULoudnessWarriorLogScope(void)::scope)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element || (v4 = *(Element + 108), (v5 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
    {
      ausdk::Throw(0xFFFFD583);
    }

    v6 = *(v5 + 108);
    *v12 = 136315906;
    *&v12[4] = "AULoudnessWarrior.cpp";
    v13 = 1024;
    v14 = 233;
    v15 = 1024;
    v16 = v4;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting Initializing with %d ins, %d outs\n", v12, 0x1Eu);
  }

LABEL_11:
  v7 = AUJBase::Initialize(this);
  if (v7)
  {
    return v7;
  }

  AULoudnessWarrior::CreateKernel(v12, this, this + 345);
  std::unique_ptr<AULoudnessWarriorKernel>::reset[abi:ne200100](this + 344, *v12);
  v9 = *(this + 344);
  if (!v9)
  {
    if (AULoudnessWarriorLogScope(void)::once != -1)
    {
      dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
    }

    if (AULoudnessWarriorLogScope(void)::scope)
    {
      v10 = *AULoudnessWarriorLogScope(void)::scope;
      if (!*AULoudnessWarriorLogScope(void)::scope)
      {
LABEL_23:
        v7 = 4294956421;
        goto LABEL_24;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "AULoudnessWarrior.cpp";
      v13 = 1024;
      v14 = 245;
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not initilize kernel\n", v12, 0x12u);
    }

    goto LABEL_23;
  }

  v7 = 0;
  atomic_store(*v9, this + 348);
LABEL_24:
  ausdk::AUBase::SetAFactoryPresetAsCurrent(this, &kAuPresets);
  (*(*this + 72))(this, 0, 0);
  if (AULoudnessWarriorLogScope(void)::once != -1)
  {
    dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
  }

  if (AULoudnessWarriorLogScope(void)::scope)
  {
    v11 = *AULoudnessWarriorLogScope(void)::scope;
    if (!*AULoudnessWarriorLogScope(void)::scope)
    {
      return v7;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 136315394;
    *&v12[4] = "AULoudnessWarrior.cpp";
    v13 = 1024;
    v14 = 268;
    _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d End Initialize()", v12, 0x12u);
  }

  return v7;
}

void AULoudnessWarrior::~AULoudnessWarrior(AULoudnessWarrior *this)
{
  AULoudnessWarrior::~AULoudnessWarrior(this);

  JUMPOUT(0x1E12BD150);
}

{
  *this = &unk_1F5928A98;
  CACFDictionary::~CACFDictionary((this + 2760));
  std::unique_ptr<AULoudnessWarriorKernel>::reset[abi:ne200100](this + 344, 0);
  *(this + 80) = &unk_1F5928D38;
  ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::~deferred_deletion_queue(this + 704);
  *this = &unk_1F5934D48;
  v2 = *(this + 76);
  if (v2)
  {
    *(this + 77) = v2;
    operator delete(v2);
  }

  v3 = *(this + 73);
  if (v3)
  {
    *(this + 74) = v3;
    operator delete(v3);
  }

  v4 = *(this + 70);
  if (v4)
  {
    *(this + 71) = v4;
    operator delete(v4);
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::~deferred_deletion_queue(uint64_t a1)
{
  *a1 = &unk_1F5928D58;
  ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::drain_trash(a1);
  v3 = 0;
  while (boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v3))
  {
    if (v3)
    {
      AULoudnessWarriorKernel::~AULoudnessWarriorKernel(v3);
      MEMORY[0x1E12BD160]();
    }
  }

  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 1024);
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 64);
  return a1;
}

void ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::~deferred_deletion_queue(uint64_t a1)
{
  ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::~deferred_deletion_queue(a1);

  JUMPOUT(0x1E12BD150);
}

void ca::concurrent::deferred_deletion_stash<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F5928D38;
  ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::~deferred_deletion_queue((a1 + 8));

  JUMPOUT(0x1E12BD150);
}

void *ca::concurrent::deferred_deletion_stash<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F5928D38;
  ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::~deferred_deletion_queue((a1 + 8));
  return a1;
}

void AUJBase::~AUJBase(AUJBase *this)
{
  *this = &unk_1F5934D48;
  v2 = *(this + 76);
  if (v2)
  {
    *(this + 77) = v2;
    operator delete(v2);
  }

  v3 = *(this + 73);
  if (v3)
  {
    *(this + 74) = v3;
    operator delete(v3);
  }

  v4 = *(this + 70);
  if (v4)
  {
    *(this + 71) = v4;
    operator delete(v4);
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  ausdk::AUBase::~AUBase(this);
}

void clsp::ConvoyDisplacementController::setLogs(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[112] = v5;
  v6 = a1[113];
  a1[113] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  a1[102] = v8;
  v9 = a1[103];
  a1[103] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

double clsp::ConvoyDisplacementController::postProcess(clsp::ConvoyDisplacementController *this)
{
  *&result = 1065353216;
  *(this + 65) = 1065353216;
  return result;
}

uint64_t clsp::ConvoyDisplacementController::zapBadValues(uint64_t this)
{
  v1 = vdupq_n_s64(0x3CD203AF9EE75616uLL);
  v2 = vdupq_n_s64(0x430C6BF526340000uLL);
  v3 = *(this + 852);
  v4 = vabsq_f32(v3);
  v5 = vcvt_hight_f64_f32(v4);
  v6 = vcvtq_f64_f32(*v4.f32);
  *(this + 852) = vandq_s8(v3, vuzp1q_s32(vandq_s8(vcgtq_f64(v6, v1), vcgtq_f64(v2, v6)), vandq_s8(vcgtq_f64(v5, v1), vcgtq_f64(v2, v5))));
  v8 = *(this + 136);
  v7 = *(this + 144);
  v9 = *(v8 + 40);
  v10 = vabsq_f64(v9);
  *(v8 + 40) = vandq_s8(v9, vandq_s8(vcgtq_f64(v10, v1), vcgtq_f64(v2, v10)));
  v11 = *(v8 + 56);
  v12 = vabsq_f64(v11);
  *(v8 + 56) = vandq_s8(v11, vandq_s8(vcgtq_f64(v12, v1), vcgtq_f64(v2, v12)));
  v11.f64[0] = *(this + 100);
  v13 = vcvtq_f64_f32(vabs_f32(*&v11.f64[0]));
  *(this + 100) = vand_s8(*&v11.f64[0], vmovn_s64(vandq_s8(vcgtq_f64(v13, v1), vcgtq_f64(v2, v13))));
  v14 = *(this + 560);
  v15 = fabsf(v14);
  if (v15 >= 1.0e15 || v15 <= 1.0e-15)
  {
    v14 = 0.0;
  }

  *(this + 560) = v14;
  v17 = *(this + 120);
  v18 = vcvtq_f64_f32(vabs_f32(v17));
  *(this + 120) = vand_s8(v17, vmovn_s64(vandq_s8(vcgtq_f64(v18, v1), vcgtq_f64(v2, v18))));
  v19 = *(this + 600);
  v20 = fabsf(v19);
  if (v20 >= 1.0e15 || v20 <= 1.0e-15)
  {
    v19 = 0.0;
  }

  *(this + 600) = v19;
  v22 = *(this + 620);
  v23 = fabsf(v22);
  if (v23 >= 1.0e15 || v23 <= 1.0e-15)
  {
    v22 = 0.0;
  }

  *(this + 620) = v22;
  v25 = *(this + 84);
  v26 = fabsf(v25);
  if (v26 >= 1.0e15 || v26 <= 1.0e-15)
  {
    v25 = 0.0;
  }

  if (v25 < *(this + 400))
  {
    v25 = *(this + 400);
  }

  *(this + 84) = v25;
  v28 = *(v7 + 40);
  v29 = vabsq_f64(v28);
  *(v7 + 40) = vandq_s8(v28, vandq_s8(vcgtq_f64(v29, v1), vcgtq_f64(v2, v29)));
  v30 = *(v7 + 56);
  v31 = vabsq_f64(v30);
  *(v7 + 56) = vandq_s8(v30, vandq_s8(vcgtq_f64(v31, v1), vcgtq_f64(v2, v31)));
  v32 = *(this + 152);
  v33 = *(v32 + 40);
  v34 = vabsq_f64(v33);
  *(v32 + 40) = vandq_s8(v33, vandq_s8(vcgtq_f64(v34, v1), vcgtq_f64(v2, v34)));
  v35 = *(v32 + 56);
  v36 = vabsq_f64(v35);
  *(v32 + 56) = vandq_s8(v35, vandq_s8(vcgtq_f64(v36, v1), vcgtq_f64(v2, v36)));
  v35.f64[0] = *(this + 172);
  v37 = vcvtq_f64_f32(vabs_f32(*&v35.f64[0]));
  *(this + 172) = vand_s8(*&v35.f64[0], vmovn_s64(vandq_s8(vcgtq_f64(v37, v1), vcgtq_f64(v2, v37))));
  v38 = *(this + 660);
  v39 = fabsf(v38);
  if (v39 >= 1.0e15 || v39 <= 1.0e-15)
  {
    v38 = 0.0;
  }

  *(this + 660) = v38;
  if (v38 == 0.0)
  {
    *(this + 660) = *(this + 656);
  }

  v41 = *(this + 700);
  v42 = fabsf(v41);
  if (v42 >= 1.0e15 || v42 <= 1.0e-15)
  {
    v41 = 0.0;
  }

  *(this + 700) = v41;
  if (v41 == 0.0)
  {
    *(this + 700) = *(this + 696);
  }

  v44 = *(this + 736);
  v45 = fabsf(v44);
  if (v45 >= 1.0e15 || v45 <= 1.0e-15)
  {
    v44 = 0.0;
  }

  *(this + 736) = v44;
  v47 = fabsf(*(this + 776));
  if (v47 >= 1.0e15 || v47 <= 1.0e-15)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = *(this + 776);
  }

  *(this + 776) = v49;
  return this;
}

double clsp::ConvoyDisplacementController::reset(clsp::ConvoyDisplacementController *this)
{
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 114) = 1065353216;
  *(this + 184) = 1065353216;
  v1 = *(this + 99);
  v2 = fabsf(*(this + 95));
  v3 = fabsf(*(this + 96));
  if (v3 < v2)
  {
    v2 = v3;
  }

  v4 = v1 * v2;
  *(this + 19) = v4;
  *(this + 20) = 1.0 / v4;
  *(this + 103) = v4;
  *(this + 194) = v4;
  *(this + 102) = v1;
  *(this + 852) = 0u;
  *(this + 100) = 0;
  *(this + 140) = 0;
  *(this + 15) = 0;
  *(this + 150) = 0;
  *(this + 155) = 0;
  *(this + 21) = v4;
  v5 = *(this + 17);
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  v6 = *(this + 18);
  *(v6 + 56) = 0u;
  *(v6 + 40) = 0u;
  v7 = *(this + 19);
  *(v7 + 56) = 0u;
  *(v7 + 40) = 0u;
  *(this + 172) = 0;
  *(this + 64) = 0;
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 165) = *(this + 164);
  *(this + 175) = *(this + 174);
  *(this + 121) = *(this + 120);
  *(this + 500) = 0;
  *(this + 508) = 0;
  *&result = 1065353216;
  *(this + 65) = 1065353216;
  return result;
}

float32_t clsp::ConvoyDisplacementController::analyzeDisp(float32x2_t *this, float a2, float a3)
{
  v4 = this[57].f32[0];
  v5 = this[92].f32[0];
  v6 = 181;
  if (v5 < v4)
  {
    v6 = 180;
  }

  v7 = v5 + (this->f32[v6] * (v4 - v5));
  this[92].f32[0] = v7;
  v8 = this[51].f32[1];
  v9 = this[97].f32[0];
  v10 = 191;
  if (v9 < v8)
  {
    v10 = 190;
  }

  v11 = v9 + (this->f32[v10] * (v8 - v9));
  this[97].f32[0] = v11;
  v12 = 1.0 / v11;
  this[9].f32[1] = v11;
  this[10].f32[0] = 1.0 / v11;
  v13 = this[11].f32[1];
  v14 = this[12].f32[1];
  v15 = ((v7 * a2) * this[12].f32[0]) - (v14 * this[11].f32[0]);
  v16 = this[13].f32[0];
  v17 = this[13].f32[1];
  v18 = v15 - (v16 * v13);
  this[12].f32[1] = v18;
  this[13].f32[0] = v14;
  v19 = -(v15 + (-v16 * v13));
  if (v18 >= 0.0)
  {
    v19 = v18;
  }

  v20 = this[70].f32[0];
  v21 = 137;
  if (v20 < v19)
  {
    v21 = 136;
  }

  v22 = this->f32[v21];
  v23 = v19 - v20;
  v24 = v20 + (v22 * v23);
  this[70].f32[0] = v24;
  if (v11 >= v24)
  {
    v25 = v11;
  }

  else
  {
    v25 = v20 + (v22 * v23);
  }

  v26 = this[14].f32[0];
  v27 = this[15].f32[0];
  v28 = this[15].f32[1];
  v29 = ((v7 * a3) * this[14].f32[1]) - (v27 * v17);
  v30 = v29 - (v28 * v26);
  this[15].f32[0] = v30;
  this[15].f32[1] = v27;
  v31 = -(v29 + (-v28 * v26));
  if (v30 >= 0.0)
  {
    v31 = v30;
  }

  v32 = this[75].f32[0];
  v33 = 147;
  if (v32 < v31)
  {
    v33 = 146;
  }

  v34 = this->f32[v33];
  v35 = v32 + (v34 * (v31 - v32));
  this[75].f32[0] = v35;
  if (v11 < v35)
  {
    v11 = v32 + (v34 * (v31 - v32));
  }

  v36 = this[77].f32[1] + (this[77].f32[0] * ((v12 * v11) - this[77].f32[1]));
  this[77].f32[1] = v36;
  v37.f32[0] = v12 * (v25 * v36);
  v38 = v37.f32[0] * this[50].f32[0];
  v37.f32[1] = v31;
  this[65] = vbsl_s8(vcgt_f32(v37, this[65]), v37, this[65]);
  this[10].f32[1] = v38;
  v39 = this[112];
  v40 = *v39;
  if (*v39)
  {
    __src = a3;
    clsp::CLSP_Log::LogCLSPData(v40, &__src, 1);
    v39 = this[112];
  }

  v41 = v39[2];
  if (v41)
  {
    __src = v18;
    clsp::CLSP_Log::LogCLSPData(v41, &__src, 1);
    v39 = this[112];
    v42 = v39[2];
    if (v42)
    {
      __src = v24;
      clsp::CLSP_Log::LogCLSPData(v42, &__src, 1);
      v39 = this[112];
      v43 = v39[2];
      if (v43)
      {
        __src = v25;
        clsp::CLSP_Log::LogCLSPData(v43, &__src, 1);
        v39 = this[112];
        v44 = v39[2];
        if (v44)
        {
          __src = v36;
          clsp::CLSP_Log::LogCLSPData(v44, &__src, 1);
          v39 = this[112];
        }
      }
    }
  }

  v45 = *v39;
  if (*v39)
  {
    __src = v30;
    clsp::CLSP_Log::LogCLSPData(v45, &__src, 1);
    v46 = **&this[112];
    if (v46)
    {
      __src = v35;
      clsp::CLSP_Log::LogCLSPData(v46, &__src, 1);
      v47 = **&this[112];
      if (v47)
      {
        __src = this[10].f32[1];
        clsp::CLSP_Log::LogCLSPData(v47, &__src, 1);
        v48 = **&this[112];
        if (v48)
        {
          v49 = (*(*this + 128))(this);
          __src = log10f(v49[21] * ((((1.0 - v49[12]) + v49[13]) * ((v49[14] + v49[15]) + v49[16])) / ((v49[12] + 1.0) + v49[13]))) * 20.0;
          clsp::CLSP_Log::LogCLSPData(v48, &__src, 1);
        }
      }
    }
  }

  return this[10].f32[1];
}

float clsp::ConvoyDisplacementController::processSample(clsp::ConvoyDisplacementController *this, float result, float a3)
{
  if (*(this + 72) == 1)
  {
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v5;
    v25 = v3;
    v26 = v4;
    v11 = *(this + 21);
    if (v11 >= *(this + 202))
    {
      v11 = *(this + 202);
    }

    v12 = (*(this + 196) + (*(this + 197) * v11)) + (*(this + 198) * (v11 * v11));
    v13 = (*(this + 199) + (*(this + 200) * v11)) + (*(this + 201) * (v11 * v11));
    *(this + 208) = v12;
    *(this + 209) = v13;
    v14 = *(*(this + 102) + 16);
    if (v14)
    {
      __src = v12;
      clsp::CLSP_Log::LogCLSPData(v14, &__src, 1);
      v15 = *(*(this + 102) + 16);
      if (v15)
      {
        v20 = v13;
        clsp::CLSP_Log::LogCLSPData(v15, &v20, 1);
      }
    }

    v16 = *(this + 213);
    v17 = *(this + 215);
    v18 = ((((*(this + 211) * v16) + (a3 * *(this + 210))) + (*(this + 214) * *(this + 212))) - (v17 * *(this + 208))) - (*(this + 216) * *(this + 209));
    *(this + 213) = a3;
    *(this + 214) = v16;
    *(this + 215) = v18;
    *(this + 216) = v17;
    return v18 * (((1.0 - v12) + v13) * *(this + 217));
  }

  return result;
}

uint64_t clsp::ConvoyDisplacementController::calcCoeffsSyncDisp(clsp::ConvoyDisplacementController *this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = *(this + 16);
  if (!v7)
  {
    __assert_rtn("calcCoeffsSyncDisp", "ConvoyDispController.cpp", 272, "mr_dispModel");
  }

  v13 = 1.0 / a2;
  v14 = -(1.0 / a2 * a3);
  v15 = exp(v14 / (a4 + a4)) * -2.0;
  v16 = v15 * cos(v13 * a3 * sqrt(1.0 / (a4 * -4.0 * a4) + 1.0));
  v17 = exp(v14 / a4);
  v18 = (v17 + v16 + 1.0) * (a7 * 1000.0 * v7[1] / (*v7 * v7[4]));
  v19 = v16;
  *&v17 = v17;
  *(this + 22) = v19;
  *(this + 23) = LODWORD(v17);
  *(this + 24) = v18;
  LODWORD(v17) = *(this + 27);
  v20 = *(this + 28);
  v21 = *(this + 11);
  *(this + 210) = 1065353216;
  *(this + 211) = LODWORD(v17);
  *(this + 212) = v20;
  *(this + 104) = v21;
  *&v17 = 1.0 / (1.0 - *&v17 + v20);
  *(this + 217) = LODWORD(v17);

  return clsp::LFSNFeedbackCoeffCalc::calcCoeffs((this + 784), a2, a3, a4, a5, 1.0, a6);
}

float clsp::ConvoyDisplacementController::calcCoeffs(clsp::ConvoyDisplacementController *this, double a2, double a3)
{
  v4 = *(this + 16);
  if (!v4)
  {
    __assert_rtn("calcCoeffs", "ConvoyDispController.cpp", 202, "mr_dispModel");
  }

  v6 = *(this + 99);
  v7 = *(this + 95);
  v8 = v6 * v7;
  v9 = v6 * *(this + 96);
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = -(v6 * v7);
  if (v8 > 0.0)
  {
    v10 = -0.0;
  }

  if (v10 >= v9)
  {
    v10 = v9;
  }

  *(this + 103) = v10;
  *(this + 19) = v10;
  *(this + 20) = 1.0 / v10;
  *(this + 100) = v10;
  *(this + 101) = 1.0 / v10;
  clsp::DisplacementModelSealed::calcCoeffsFLV(v4, this + 27, a2, a3);
  v11 = clsp::DisplacementModelSealed::calcCoeffsFLV(*(this + 16), this + 40, a2, 1.0);
  v12 = *(this + 16);
  v13 = (*(*this + 72))(this, v11);
  v14 = (*(*this + 40))(this);
  v15 = v12[4];
  v16 = sqrt(v15 / v12[2]) / sqrt(v14);
  v17 = -(1.0 / a2 * v16);
  v18 = exp(v17 / (v13 + v13)) * -2.0;
  v19 = v18 * cos(1.0 / a2 * v16 * sqrt(1.0 / (v13 * -4.0 * v13) + 1.0));
  v20 = exp(v17 / v13);
  v21 = (v20 + v19 + 1.0) * (a3 * 1000.0 * v12[1] / (*v12 * v15));
  v22 = v19;
  *&v20 = v20;
  *(this + 22) = v22;
  *(this + 23) = LODWORD(v20);
  *(this + 24) = v21;
  v23 = *(this + 16);
  v24 = (*(*this + 72))(this);
  v25 = (*(*this + 40))(this);
  clsp::LFSN::calcCoeffs(this + 784, v23, a2, *(this + 11), *(this + 27), *(this + 28), v24, v25, *(this + 100), a3);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 528, a2);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 568, a2);
  v26 = *(this + 7);
  *(this + 76) = v26;
  v27 = v26 * a2;
  v28 = 0.0;
  if (v27 >= 0.00001)
  {
    v28 = exp(-4.60517019 / v27);
  }

  v29 = 1.0 - v28;
  *(this + 154) = v29;
  clsp::ConvoyDisplacementController::designBQCoeffs(9, *(this + 17), a2, 1.0);
  clsp::ConvoyDisplacementController::designBQCoeffs(9, *(this + 18), a2, 1.0);
  clsp::ConvoyDisplacementController::designBQCoeffs(8, *(this + 19), a2, 1.0);
  *(this + 45) = vcvtad_u64_f64(*(this + 8) * 0.001 * a2);
  *(this + 46) = vmul_f32(*(this + 352), vrev64_s32(*(this + 380)));
  clsp::AttackReleaseTo<float,double>::calcCoeffs(this + 624, a2);
  clsp::AttackReleaseTo<float,double>::calcCoeffs(this + 664, a2);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 704, a2);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 744, a2);
  result = round(*(this + 123) * 0.001 * a2);
  *(this + 124) = result;
  return result;
}

void clsp::ConvoyDisplacementController::designBQCoeffs(int a1, double *a2, double a3, float a4)
{
  v5 = a4 * 6.28318531 / a3;
  if (a1 == 9)
  {
    v12 = tan(v5 * 0.5);
    v11 = 1.0;
    v7 = 1.0 / (v12 * 1.41421356 + v12 * v12 + 1.0);
    v6 = v7 * -2.0;
    v13 = v12 * v12 + -1.0;
    goto LABEL_5;
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (a1 == 8)
  {
    v10 = tan(v5 * 0.5);
    v11 = 1.0;
    v12 = 1.0 / v10;
    v7 = 1.0 / (v12 * 1.41421356 + v12 * v12 + 1.0);
    v6 = v7 + v7;
    v13 = 1.0 - v12 * v12;
LABEL_5:
    v8 = (v13 + v13) * v7;
    v9 = (v11 + v12 * -1.41421356 + v12 * v12) * v7;
  }

  a2[2] = v7;
  a2[3] = v6;
  a2[4] = v7;
  *a2 = v8;
  a2[1] = v9;
}

float clsp::AttackReleaseTo<float,double>::calcCoeffs(uint64_t a1, double a2)
{
  *(a1 + 16) = a2;
  v4 = *(a1 + 8) * a2;
  v5 = 0.0;
  v6 = 0.0;
  if (v4 >= 0.00001)
  {
    v6 = exp(-4.60517019 / v4);
  }

  v7 = 1.0 - v6;
  *(a1 + 28) = v7;
  v8 = *a1 * a2;
  if (v8 >= 0.00001)
  {
    v5 = exp(-4.60517019 / v8);
  }

  result = 1.0 - v5;
  *(a1 + 24) = result;
  return result;
}

double *clsp::ConvoyDisplacementController::setPeakDecayTime(double *this, double a2)
{
  this[6] = a2;
  this[67] = a2;
  this[72] = a2;
  return this;
}

double *clsp::ConvoyDisplacementController::setPeakAttackTime(double *this, double a2)
{
  this[5] = a2;
  this[66] = a2;
  this[71] = a2;
  return this;
}

void clsp::ConvoyDisplacementController::logCoeffs(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 && (v5 = *(a1 + 16), __src = v5, clsp::CLSP_Log::LogCLSPData(v4, &__src, 1), (v6 = *a2) != 0) && (v7 = *(a1 + 24), __src = v7, clsp::CLSP_Log::LogCLSPData(v6, &__src, 1), (v8 = *a2) != 0) && (v9 = *(a1 + 32), __src = v9, clsp::CLSP_Log::LogCLSPData(v8, &__src, 1), (v10 = *a2) != 0) && (v11 = *(a1 + 40), __src = v11, clsp::CLSP_Log::LogCLSPData(v10, &__src, 1), (v12 = *a2) != 0) && (v13 = *(a1 + 48), __src = v13, clsp::CLSP_Log::LogCLSPData(v12, &__src, 1), (v14 = *a2) != 0) && (v15 = *(a1 + 56), __src = v15, clsp::CLSP_Log::LogCLSPData(v14, &__src, 1), (v16 = *a2) != 0) && (v17 = *(a1 + 64), __src = v17, clsp::CLSP_Log::LogCLSPData(v16, &__src, 1), (v18 = *a2) != 0) && (__src = *(a1 + 76), clsp::CLSP_Log::LogCLSPData(v18, &__src, 1), (v19 = *a2) != 0) && (__src = *(a1 + 80), clsp::CLSP_Log::LogCLSPData(v19, &__src, 1), (v20 = *a2) != 0) && (__src = *(a1 + 352), clsp::CLSP_Log::LogCLSPData(v20, &__src, 1), (v21 = *a2) != 0) && (__src = *(a1 + 356), clsp::CLSP_Log::LogCLSPData(v21, &__src, 1), (v22 = *a2) != 0) && (__src = *(a1 + 360), clsp::CLSP_Log::LogCLSPData(v22, &__src, 1), (v23 = *a2) != 0) && (__src = *(a1 + 368), clsp::CLSP_Log::LogCLSPData(v23, &__src, 1), (v24 = *a2) != 0) && (__src = *(a1 + 372), clsp::CLSP_Log::LogCLSPData(v24, &__src, 1), (v25 = *a2) != 0) && (__src = *(a1 + 376), clsp::CLSP_Log::LogCLSPData(v25, &__src, 1), (v26 = *a2) != 0) && (__src = *(a1 + 380), clsp::CLSP_Log::LogCLSPData(v26, &__src, 1), (v27 = *a2) != 0) && (__src = *(a1 + 384), clsp::CLSP_Log::LogCLSPData(v27, &__src, 1), (v28 = *a2) != 0) && (__src = *(a1 + 388), clsp::CLSP_Log::LogCLSPData(v28, &__src, 1), (v29 = *a2) != 0) && (__src = *(a1 + 392), clsp::CLSP_Log::LogCLSPData(v29, &__src, 1), (v30 = *a2) != 0) && (__src = *(a1 + 396), clsp::CLSP_Log::LogCLSPData(v30, &__src, 1), (v31 = *a2) != 0) && (__src = *(a1 + 400), clsp::CLSP_Log::LogCLSPData(v31, &__src, 1), (v32 = *a2) != 0) && (__src = *(a1 + 404), clsp::CLSP_Log::LogCLSPData(v32, &__src, 1), (v33 = *a2) != 0) && (__src = *(a1 + 460), clsp::CLSP_Log::LogCLSPData(v33, &__src, 1), (v34 = *a2) != 0) && (__src = *(a1 + 464), clsp::CLSP_Log::LogCLSPData(v34, &__src, 1), (v35 = *a2) != 0) && (__src = *(a1 + 468), clsp::CLSP_Log::LogCLSPData(v35, &__src, 1), (v36 = *a2) != 0) && (__src = *(a1 + 472), clsp::CLSP_Log::LogCLSPData(v36, &__src, 1), (v37 = *a2) != 0) && (__src = *(a1 + 480), clsp::CLSP_Log::LogCLSPData(v37, &__src, 1), (v38 = *a2) != 0) && (__src = *(a1 + 488), clsp::CLSP_Log::LogCLSPData(v38, &__src, 1), (v39 = *a2) != 0) && (__src = *(a1 + 492), clsp::CLSP_Log::LogCLSPData(v39, &__src, 1), (v40 = *a2) != 0))
  {
    __src = *(a1 + 496);
    clsp::CLSP_Log::LogCLSPData(v40, &__src, 1);
    v41 = *a2;
  }

  else
  {
    v41 = 0;
  }

  v42 = *(a2 + 8);
  v64[0] = v41;
  v64[1] = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(v42 + 1, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 88), v64);
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 88), v64);
  }

  v43 = *(a2 + 8);
  v63[0] = *a2;
  v63[1] = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(v43 + 1, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 108), v63);
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 108), v63);
  }

  v44 = *(a2 + 8);
  v62[0] = *a2;
  v62[1] = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(v44 + 1, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 160), v62);
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 160), v62);
  }

  v45 = *(a2 + 8);
  v61[0] = *a2;
  v61[1] = v45;
  if (v45)
  {
    atomic_fetch_add_explicit(v45 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 528, v61);
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 528, v61);
  }

  v46 = *(a2 + 8);
  v60[0] = *a2;
  v60[1] = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(v46 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 568, v60);
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 568, v60);
  }

  v47 = *(a2 + 8);
  v59[0] = *a2;
  v59[1] = v47;
  if (v47)
  {
    atomic_fetch_add_explicit(v47 + 1, 1uLL, memory_order_relaxed);
    clsp::ExponentialSmoother<float,double>::logCoeffs(a1 + 608, v59);
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  else
  {
    clsp::ExponentialSmoother<float,double>::logCoeffs(a1 + 608, v59);
  }

  v48 = *(a2 + 8);
  v58[0] = *a2;
  v58[1] = v48;
  if (v48)
  {
    atomic_fetch_add_explicit(v48 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackReleaseTo<float,double>::logCoeffs(a1 + 624, v58);
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  else
  {
    clsp::AttackReleaseTo<float,double>::logCoeffs(a1 + 624, v58);
  }

  v49 = *(a2 + 8);
  v57[0] = *a2;
  v57[1] = v49;
  if (v49)
  {
    atomic_fetch_add_explicit(v49 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackReleaseTo<float,double>::logCoeffs(a1 + 664, v57);
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  else
  {
    clsp::AttackReleaseTo<float,double>::logCoeffs(a1 + 664, v57);
  }

  v50 = *(a2 + 8);
  v56[0] = *a2;
  v56[1] = v50;
  if (v50)
  {
    atomic_fetch_add_explicit(v50 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 704, v56);
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 704, v56);
  }

  v51 = *(a2 + 8);
  v55[0] = *a2;
  v55[1] = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(v51 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 744, v55);
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 744, v55);
  }

  v52 = *a2;
  v53 = *(a2 + 8);
  v54[0] = v52;
  v54[1] = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::LFSN::logCoeffs((a1 + 784), v54);

    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  else
  {
    clsp::LFSN::logCoeffs((a1 + 784), v54);
  }
}

void clsp::AttackReleaseTo<float,double>::logCoeffs(uint64_t a1, clsp::CLSP_Log **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *a1;
    __src = v5;
    clsp::CLSP_Log::LogCLSPData(v3, &__src, 1);
    v6 = *a2;
    if (*a2)
    {
      v7 = *(a1 + 8);
      __src = v7;
      clsp::CLSP_Log::LogCLSPData(v6, &__src, 1);
      v8 = *a2;
      if (*a2)
      {
        v9 = *(a1 + 16);
        __src = v9;
        clsp::CLSP_Log::LogCLSPData(v8, &__src, 1);
        v10 = *a2;
        if (*a2)
        {
          __src = *(a1 + 24);
          clsp::CLSP_Log::LogCLSPData(v10, &__src, 1);
          v11 = *a2;
          if (*a2)
          {
            __src = *(a1 + 28);
            clsp::CLSP_Log::LogCLSPData(v11, &__src, 1);
            v12 = *a2;
            if (*a2)
            {
              __src = *(a1 + 32);
              clsp::CLSP_Log::LogCLSPData(v12, &__src, 1);
            }
          }
        }
      }
    }
  }
}

void *clsp::ConvoyDisplacementController::dump(uint64_t a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "g_bw = ", 7);
  v5 = MEMORY[0x1E12BCBF0](v4, *(a1 + 16));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\nx_lim = ", 9);
  v7 = MEMORY[0x1E12BCBF0](v6, *(a1 + 24));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\nQ_d = ", 7);
  v9 = MEMORY[0x1E12BCBF0](v8, *(a1 + 32));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\npeakAttackTime = ", 18);
  v11 = MEMORY[0x1E12BCBF0](v10, *(a1 + 40));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\npeakDecayTime = ", 17);
  v13 = MEMORY[0x1E12BCBF0](v12, *(a1 + 48));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nflvSmoothingTime = ", 20);
  v15 = MEMORY[0x1E12BCBF0](v14, *(a1 + 56));
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\npeakFinderWindowTime_ms = ", 27);
  v17 = MEMORY[0x1E12BCBF0](v16, *(a1 + 64));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\nms_x_lim = ", 12);
  v18 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\ninvxlim = ", 11);
  v19 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\nptp_x_flv = ", 13);
  v20 = std::ostream::operator<<();
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n\nptp:\n", 7);
  clsp::IIRTwoPole<float>::dump(a1 + 88, v21);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\nflv:\n", 6);
  clsp::IIRTwoPole<float>::dump(a1 + 108, v22);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\nconvoyModel:\n", 14);
  clsp::IIRTwoPole<float>::dump(a1 + 160, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\nrelative posPeakFinderThreshold = ", 35);
  v24 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "\nrelative negPeakFinderThreshold = ", 35);
  v25 = std::ostream::operator<<();
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\npeakFinderWindowSize = ", 24);
  v27 = MEMORY[0x1E12BCC30](v26, *(a1 + 360));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\nposPeakFinderthreshold = ", 26);
  v28 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\nnegPeakFinderThreshold = ", 26);
  v29 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "\nxLimInc = ", 11);
  v30 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "\nxMin = ", 8);
  v31 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "\nxMax = ", 8);
  v32 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "\nxLimUpper = ", 13);
  v33 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "\nxLimUpperReal = ", 17);
  v34 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\nxLimLower = ", 13);
  v35 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "\nxLimInit = ", 12);
  v36 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "\ninvxLimInit = ", 15);
  v37 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "\nMaxNormFactor = ", 17);
  v38 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "\nMinNormFactor = ", 17);
  v39 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "\nPeakRatioPosBlockThreshold = ", 30);
  v40 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "\nPeakRationNegBlockThreshold = ", 31);
  v41 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "\nPeakRatiosInWindowCountThreshold = ", 36);
  v42 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "\nnormFactorThreshold = ", 23);
  v43 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "\nmp_ConvoyBufferDirtyCountThreshold = ", 38);
  v44 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "\nmc_ConvoyBufferDirtyCountThreshold = ", 38);
  v45 = std::ostream::operator<<();
  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "\nptpAtkRel:\n", 12);
  clsp::AttackRelease<float,double>::dump((a1 + 528), v46);
  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "\nflvTime:\n", 10);
  clsp::AttackRelease<float,double>::dump((a1 + 568), v47);
  v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "\nflvSmoother:\n", 14);
  clsp::ExponentialSmoother<float,double>::dump((a1 + 608), v48);
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "\nlfsn:\n", 7);
  clsp::LFSN::dump(a1 + 784, v49);
  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "\nmodelNormFactor:\n", 18);
  clsp::AttackRelease<float,double>::dump((a1 + 704), v50);
  v52 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, &v52, 1);
  return a2;
}

void clsp::ConvoyDisplacementController::~ConvoyDisplacementController(clsp::ConvoyDisplacementController *this)
{
  clsp::ConvoyDisplacementController::~ConvoyDisplacementController(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5928D78;
  v2 = *(this + 113);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 103);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 41);
  if (v4)
  {
    *(this + 42) = v4;
    operator delete(v4);
  }

  v5 = *(this + 38);
  if (v5)
  {
    *(this + 39) = v5;
    operator delete(v5);
  }

  v6 = *(this + 35);
  if (v6)
  {
    *(this + 36) = v6;
    operator delete(v6);
  }

  v7 = *(this + 32);
  if (v7)
  {
    *(this + 33) = v7;
    operator delete(v7);
  }

  v8 = *(this + 29);
  if (v8)
  {
    *(this + 30) = v8;
    operator delete(v8);
  }

  v9 = *(this + 26);
  if (v9)
  {
    *(this + 27) = v9;
    operator delete(v9);
  }

  v10 = *(this + 23);
  if (v10)
  {
    *(this + 24) = v10;
    operator delete(v10);
  }

  v11 = *(this + 19);
  *(this + 19) = 0;
  if (v11)
  {
    MEMORY[0x1E12BD160](v11, 0x1000C40FF89C88ELL);
  }

  v12 = *(this + 18);
  *(this + 18) = 0;
  if (v12)
  {
    MEMORY[0x1E12BD160](v12, 0x1000C40FF89C88ELL);
  }

  v13 = *(this + 17);
  *(this + 17) = 0;
  if (v13)
  {
    MEMORY[0x1E12BD160](v13, 0x1000C40FF89C88ELL);
  }
}

void clsp::ConvoyDisplacementController::ConvoyDisplacementController(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F5928D78;
  *(a1 + 16) = a6;
  *(a1 + 24) = a7;
  *(a1 + 32) = a8;
  *(a1 + 40) = a9;
  *(a1 + 48) = a10;
  *(a1 + 56) = a11;
  *(a1 + 64) = *(*a4 + 16);
  *(a1 + 72) = 1;
  v18 = a7;
  v19 = 1.0 / a7;
  *(a1 + 76) = v18;
  *(a1 + 80) = v19;
  *(a1 + 84) = v18;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = a3;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 164) = 0u;
  std::vector<float>::vector[abi:ne200100]((a1 + 184), a2);
  std::vector<float>::vector[abi:ne200100]((a1 + 208), a2);
  std::vector<float>::vector[abi:ne200100]((a1 + 232), a2);
  std::vector<float>::vector[abi:ne200100]((a1 + 256), a2);
  std::vector<float>::vector[abi:ne200100]((a1 + 280), vcvtad_u64_f64(*(a1 + 64) * 0.001 * a5));
  std::vector<float>::vector[abi:ne200100]((a1 + 304), vcvtad_u64_f64(*(a1 + 64) * 0.001 * a5));
  std::vector<float>::vector[abi:ne200100]((a1 + 328), a2);
  v20 = *a4;
  *(a1 + 360) = vcvtad_u64_f64(*(a1 + 64) * 0.001 * a5);
  v21 = *(v20 + 20);
  *(a1 + 352) = v21;
  *(a1 + 368) = vmul_f32(v21, vrev64_s32(*(v20 + 4)));
  *v22.i32 = __exp10(*(v20 + 40) / -20.0);
  *(a1 + 376) = v22.i32[0];
  v22.i64[0] = *(v20 + 4);
  *&v23 = v22.i64[0];
  DWORD2(v23) = *(v20 + 28);
  HIDWORD(v23) = DWORD2(v23);
  *(a1 + 380) = v23;
  v24 = *(v20 + 36);
  *(a1 + 396) = v24;
  *(a1 + 400) = v18;
  *(a1 + 404) = v19;
  *(a1 + 408) = v24;
  *(a1 + 412) = *(a1 + 76);
  *(a1 + 448) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 456) = 1065353216;
  v25 = *(v20 + 52);
  *(a1 + 460) = v25;
  *(a1 + 476) = 0;
  v25.i64[0] = *(v20 + 84);
  v26 = vzip1q_s32(v25, v22);
  v26.i32[1] = v26.i32[0];
  v26.i32[3] = *(v20 + 92);
  *(a1 + 480) = v26;
  *v26.i32 = round(*&v26.i32[3] * 0.001 * a5);
  *(a1 + 496) = v26.i32[0];
  *(a1 + 512) = 0;
  *(a1 + 508) = 0;
  *(a1 + 500) = 0;
  *(a1 + 520) = 1065353216;
  *(a1 + 528) = a9;
  *(a1 + 536) = a10;
  *(a1 + 544) = 0;
  *(a1 + 560) = 0;
  *(a1 + 568) = a9;
  *(a1 + 576) = a10;
  *(a1 + 584) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0u;
  v27 = *a4;
  v28 = vcvtq_f64_f32(*(*a4 + 76));
  *(a1 + 624) = v28;
  *(a1 + 648) = xmmword_1DE097CD0;
  *(a1 + 664) = v28;
  *(a1 + 688) = xmmword_1DE097CD0;
  *(a1 + 704) = vcvtq_f64_f32(*(v27 + 44));
  *(a1 + 720) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = vcvtq_f64_f32(*(v27 + 68));
  *(a1 + 760) = 0;
  *(a1 + 776) = 0;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 864) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 872) = 1065353216;
  *(a1 + 896) = 0u;
  *(a1 + 881) = 0;
  *(a1 + 876) = 0;
  if (a3)
  {
    if (*&v22.i32[1] <= 0.0)
    {
      v29 = "mc_xMax > 0.";
      v30 = 93;
    }

    else if (*v22.i32 >= 0.0)
    {
      v29 = "mc_xMin < 0.";
      v30 = 94;
    }

    else if (*(a1 + 368) <= 0.0)
    {
      v29 = "mc_posPeakFinderThreshold > 0.";
      v30 = 95;
    }

    else
    {
      if (*(a1 + 372) < 0.0)
      {
        operator new();
      }

      v29 = "mc_negPeakFinderThreshold < 0.";
      v30 = 96;
    }
  }

  else
  {
    v29 = "inDispModel";
    v30 = 91;
  }

  __assert_rtn("ConvoyDisplacementController", "ConvoyDispController.cpp", v30, v29);
}

void sub_1DDE7D730(_Unwind_Exception *exception_object)
{
  v5 = v2[113];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v2[103];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = v2[41];
  if (v7)
  {
    v2[42] = v7;
    operator delete(v7);
  }

  v8 = v2[38];
  if (v8)
  {
    v2[39] = v8;
    operator delete(v8);
  }

  v9 = v2[35];
  if (v9)
  {
    v2[36] = v9;
    operator delete(v9);
  }

  v10 = v2[32];
  if (v10)
  {
    v2[33] = v10;
    operator delete(v10);
  }

  v11 = v2[29];
  if (v11)
  {
    v2[30] = v11;
    operator delete(v11);
  }

  v12 = v2[26];
  if (v12)
  {
    v2[27] = v12;
    operator delete(v12);
  }

  v13 = v2[23];
  if (v13)
  {
    v2[24] = v13;
    operator delete(v13);
  }

  v14 = v2[19];
  v2[19] = 0;
  if (v14)
  {
    MEMORY[0x1E12BD160](v14, v1);
  }

  v15 = v2[18];
  v2[18] = 0;
  if (v15)
  {
    MEMORY[0x1E12BD160](v15, v1);
  }

  v16 = *v3;
  *v3 = 0;
  if (v16)
  {
    MEMORY[0x1E12BD160](v16, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::BubbleParameterConverters::parameterID(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if ((a2 & 0xFFFFFC00FFFFFC00) != 0 || a3 >= 0x400)
  {
    abort();
  }

  return (a2 >> 22) | (a2 << 20) | a3;
}

void DOAConditioner::LogDOA(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  if (*a1 != -1)
  {
    v4 = 0;
    do
    {
      if (v4 >= (*(a1 + 16) - *(a1 + 8)) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v5 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " ", 1);
      ++v4;
      v6 = (*a1 + 1);
    }

    while (v4 < v6);
    if (*a1 != -1)
    {
      v7 = 0;
      do
      {
        if (v7 + v6 >= (*(a1 + 16) - *(a1 + 8)) >> 2)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v8 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ", 1);
        ++v7;
        v6 = (*a1 + 1);
      }

      while (v7 < v6);
    }
  }

  std::ios_base::getloc((&v19 + *(v19 - 24)));
  v9 = std::locale::use_facet(&v28, MEMORY[0x1E69E5318]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    locale = v21[4].__locale_;
    goto LABEL_17;
  }

  if ((v26 & 8) != 0)
  {
    locale = v21[1].__locale_;
    v11 = v21[3].__locale_;
LABEL_17:
    v10 = v11 - locale;
    if ((v11 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v17 = v11 - locale;
    if (v10)
    {
      memmove(__dst, locale, v10);
    }

    goto LABEL_23;
  }

  v10 = 0;
  v17 = 0;
LABEL_23:
  *(__dst + v10) = 0;
  v18[0] = *MEMORY[0x1E69E54D8];
  v13 = *(MEMORY[0x1E69E54D8] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v19 = v13;
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  MEMORY[0x1E12BD050](&v27);
  if ((v17 & 0x80u) == 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v15 = v17;
  }

  else
  {
    v15 = __dst[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v14, v15);
  if (v17 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1DDE7DC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUDynamicDuckerV2::RemoveAudioChannelLayout(AUDynamicDuckerV2 *this, int a2, int a3)
{
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      return 4294956430;
    }

    v5 = *(this + 15);
    if (v5)
    {
      LODWORD(v6) = (*(*v5 + 24))(v5);
    }

    else
    {
      v6 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v6 > a3)
    {
      result = 0;
      if (a3 <= 1)
      {
        if (a3)
        {
          if (a3 != 1)
          {
            return result;
          }

          if (*(this + 1184) == 1)
          {
            v10 = this + 1184;
            v11 = *(this + 145);
            if (v11)
            {
              v12 = 1168;
              goto LABEL_42;
            }

            goto LABEL_43;
          }
        }

        else if (*(this + 1144) == 1)
        {
          v10 = this + 1144;
          v11 = *(this + 140);
          if (v11)
          {
            v12 = 1128;
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }

      else
      {
        switch(a3)
        {
          case 2:
            if (*(this + 1224) == 1)
            {
              v10 = this + 1224;
              v11 = *(this + 150);
              if (v11)
              {
                v12 = 1208;
                goto LABEL_42;
              }

              goto LABEL_43;
            }

            break;
          case 3:
            if (*(this + 1264) == 1)
            {
              v10 = this + 1264;
              v11 = *(this + 155);
              if (v11)
              {
                v12 = 1248;
                goto LABEL_42;
              }

              goto LABEL_43;
            }

            break;
          case 4:
            if (*(this + 1304) == 1)
            {
              v10 = this + 1304;
              v11 = *(this + 160);
              if (v11)
              {
                v12 = 1288;
LABEL_42:
                *(this + v12) = v11;
                operator delete(v11);
                goto LABEL_43;
              }

              goto LABEL_43;
            }

            break;
          default:
            return result;
        }
      }

      return 0;
    }

    return 4294956419;
  }

  v7 = *(this + 15);
  if (v7)
  {
    LODWORD(v8) = (*(*v7 + 24))(v7);
  }

  else
  {
    v8 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v8 <= a3)
  {
    return 4294956419;
  }

  if (a3 == 1)
  {
    if (*(this + 1384) == 1)
    {
      v10 = this + 1384;
      v11 = *(this + 170);
      if (v11)
      {
        v12 = 1368;
        goto LABEL_42;
      }

      goto LABEL_43;
    }
  }

  else if (!a3 && *(this + 1352) == 1)
  {
    v10 = this + 1352;
    v11 = *(this + 166);
    if (v11)
    {
      v12 = 1336;
      goto LABEL_42;
    }

LABEL_43:
    result = 0;
    *v10 = 0;
    return result;
  }

  return 0;
}

uint64_t AUDynamicDuckerV2::SetAudioChannelLayout(AUDynamicDuckerV2 *this, int a2, unsigned int a3, const AudioChannelLayout *a4)
{
  if (*(this + 17))
  {
    return 4294956447;
  }

  mNumberChannelDescriptions = a4->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions <= 1)
  {
    mNumberChannelDescriptions = 1;
  }

  std::vector<char>::vector[abi:ne200100](__dst, 20 * mNumberChannelDescriptions + 12);
  memcpy(__dst[0], a4, 20 * a4->mNumberChannelDescriptions + 12);
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      v4 = 4294956430;
      goto LABEL_44;
    }

    v10 = *(this + 15);
    if (v10)
    {
      LODWORD(v11) = (*(*v10 + 24))(v10);
    }

    else
    {
      v11 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v11 > a3)
    {
      Element = ausdk::AUScope::GetElement((this + 80), a3);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v15 = *(Element + 108);
      if ((*(Element + 92) & 0x20) == 0)
      {
        v15 = 1;
      }

      if (*__dst[0] == 0x10000)
      {
        v20 = vcnt_s8(*(__dst[0] + 1));
        v20.i16[0] = vaddlv_u8(v20);
        v16 = v20.i32[0];
      }

      else if (*__dst[0])
      {
        v16 = *__dst[0];
      }

      else
      {
        v16 = *(__dst[0] + 2);
      }

      if (v15 == v16)
      {
        if (a3 <= 4)
        {
          std::optional<CA::ChannelLayout>::operator=[abi:ne200100]<CA::ChannelLayout const,void>(this + 40 * a3 + 1120, __dst);
        }

        goto LABEL_43;
      }

LABEL_40:
      v4 = 4294956445;
      goto LABEL_44;
    }

LABEL_28:
    v4 = 4294956419;
    goto LABEL_44;
  }

  v12 = *(this + 21);
  if (v12)
  {
    LODWORD(v13) = (*(*v12 + 24))(v12);
  }

  else
  {
    v13 = (*(this + 19) - *(this + 18)) >> 3;
  }

  if (v13 <= a3)
  {
    goto LABEL_28;
  }

  v17 = ausdk::AUScope::GetElement((this + 128), a3);
  if (!v17)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v18 = *(v17 + 108);
  if ((*(v17 + 92) & 0x20) == 0)
  {
    v18 = 1;
  }

  if (*__dst[0] == 0x10000)
  {
    v21 = vcnt_s8(*(__dst[0] + 1));
    v21.i16[0] = vaddlv_u8(v21);
    v19 = v21.i32[0];
  }

  else if (*__dst[0])
  {
    v19 = *__dst[0];
  }

  else
  {
    v19 = *(__dst[0] + 2);
  }

  if (v18 != v19)
  {
    goto LABEL_40;
  }

  if (!a3)
  {
    v22 = 1328;
    goto LABEL_42;
  }

  if (a3 == 1)
  {
    v22 = 1360;
LABEL_42:
    std::optional<CA::ChannelLayout>::operator=[abi:ne200100]<CA::ChannelLayout const,void>(this + v22, __dst);
  }

LABEL_43:
  v4 = 0;
LABEL_44:
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  return v4;
}

void sub_1DDE7E10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUDynamicDuckerV2::GetAudioChannelLayout(AUDynamicDuckerV2 *this, int a2, unsigned int a3, AudioChannelLayout *a4, BOOL *a5)
{
  *a5 = *(this + 17) ^ 1;
  LOBYTE(__p) = 0;
  v19 = 0;
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      return 0;
    }

    v8 = *(this + 15);
    if (v8)
    {
      LODWORD(v9) = (*(*v8 + 24))(v8);
    }

    else
    {
      v9 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v9 > a3)
    {
      if (a3 < 5)
      {
        v12 = 40 * a3 + 1120;
        goto LABEL_18;
      }

      return 0;
    }

    return 4294956419;
  }

  v10 = *(this + 21);
  if (v10)
  {
    LODWORD(v11) = (*(*v10 + 24))(v10);
  }

  else
  {
    v11 = (*(this + 19) - *(this + 18)) >> 3;
  }

  if (v11 <= a3)
  {
    return 4294956419;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return 0;
    }

    v12 = 1360;
  }

  else
  {
    v12 = 1328;
  }

LABEL_18:
  v14 = this + v12;
  if (!v14[24])
  {
    return 0;
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&__p, *v14, *(v14 + 1), *(v14 + 1) - *v14);
  v13 = v17 - __p;
  if (a4 && v17 != __p)
  {
    memcpy(a4, __p, v17 - __p);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v13;
}

void sub_1DDE7E2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUDynamicDuckerV2::SupportedNumChannels(AUDynamicDuckerV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUDynamicDuckerV2::SupportedNumChannels(AUChannelInfo const**)::chans;
  }

  return 1;
}

uint64_t AUDynamicDuckerV2::RestoreState(AUDynamicDuckerV2 *this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    atomic_fetch_add(this + 135, 1u);
  }

  return result;
}

uint64_t AUDynamicDuckerV2::GetParameterInfo(AUDynamicDuckerV2 *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = -1073741824;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  switch(a3)
  {
    case 0:
      v6 = @"Primary Ducking Level (dB)";
      goto LABEL_20;
    case 1:
      v6 = @"Game Audio Ducking Level (dB)";
      goto LABEL_20;
    case 2:
      v6 = @"Other Audio Ducking Level (dB)";
LABEL_20:
      buffer->cfNameString = v6;
      buffer->flags = -939524096;
      CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v14 = 3267362816;
      goto LABEL_33;
    case 3:
      v10 = @"System Sound Ducking Threshold (dB)";
      goto LABEL_17;
    case 4:
      v10 = @"Primary Ducking Threshold (dB)";
LABEL_17:
      buffer->cfNameString = v10;
      buffer->flags = -939524096;
      CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v13 = 3259498496;
      goto LABEL_24;
    case 5:
      buffer->cfNameString = @"Primary Ducking Min Level (dB)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Primary Ducking Min Level (dB)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v13 = 3267362816;
LABEL_24:
      *&buffer->minValue = v13;
      v8 = -40.0;
      goto LABEL_34;
    case 6:
      buffer->cfNameString = @"Game Audio Ducking Min Level (dB)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Game Audio Ducking Min Level (dB)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 3267362816;
      v8 = -45.0;
      goto LABEL_34;
    case 7:
      buffer->cfNameString = @"Other Audio Ducking Min Level (dB)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Other Audio Ducking Min Level (dB)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 3267362816;
      v8 = -50.0;
      goto LABEL_34;
    case 8:
      buffer->cfNameString = @"Other Audio RMS Limit (dB)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Other Audio RMS Limit (dB)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v14 = 3276275712;
LABEL_33:
      *&buffer->minValue = v14;
      v8 = -18.0;
      goto LABEL_34;
    case 9:
      v9 = @"System Sound Gain (dB)";
      goto LABEL_30;
    case 10:
      v9 = @"Game Audio Gain (dB)";
      goto LABEL_30;
    case 11:
      v9 = @"Other Audio Gain (dB)";
LABEL_30:
      buffer->cfNameString = v9;
      buffer->flags = -939524096;
      CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 0x41400000C1C00000;
      goto LABEL_31;
    case 12:
      buffer->cfNameString = @"FEV Audio RMS";
      buffer->flags = -939524096;
      CFStringGetCString(@"FEV Audio RMS", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x41400000C2C80000;
      v11 = -96.0;
      goto LABEL_39;
    case 13:
      buffer->cfNameString = @"Ducking Ramp Time (s)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Ducking Ramp Time (s)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x400000003C23D70ALL;
      v8 = 0.25;
      goto LABEL_34;
    case 14:
      buffer->cfNameString = @"History Accumulation Time (s)";
      buffer->flags = -939524096;
      CFStringGetCString(@"History Accumulation Time (s)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F8000003DCCCCCDLL;
      v8 = 0.1;
      goto LABEL_34;
    case 15:
      buffer->cfNameString = @"UnDucking Ramp Time (s)";
      buffer->flags = -939524096;
      CFStringGetCString(@"UnDucking Ramp Time (s)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 0x4000000000000000;
      goto LABEL_31;
    case 16:
      buffer->cfNameString = @"Release Hold Time (s)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Release Hold Time (s)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 0x4120000000000000;
      goto LABEL_31;
    case 17:
      buffer->cfNameString = @"0 --> Off, 1 --> ON";
      buffer->flags = -939524096;
      CFStringGetCString(@"0 --> Off, 1 --> ON", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      v7 = 0x3F80000000000000;
      goto LABEL_31;
    case 18:
      v16 = @"Local voice probability";
      goto LABEL_43;
    case 19:
      buffer->cfNameString = @"Threshold for ducking for local voice";
      buffer->flags = -939524096;
      CFStringGetCString(@"Threshold for ducking for local voice", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v8 = 0.5;
LABEL_34:
      buffer->defaultValue = v8;
      goto LABEL_35;
    case 20:
      v15 = @"Other Audio RMS";
      goto LABEL_38;
    case 21:
      buffer->cfNameString = @"Other Audio Ducking Gain";
      buffer->flags = -939524096;
      CFStringGetCString(@"Other Audio Ducking Gain", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 3262119936;
      buffer->defaultValue = 0.0;
      goto LABEL_40;
    case 22:
      v15 = @"Other Audio LongTerm RMS";
LABEL_38:
      buffer->cfNameString = v15;
      buffer->flags = -939524096;
      CFStringGetCString(v15, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x41A00000C3480000;
      v11 = -200.0;
LABEL_39:
      buffer->defaultValue = v11;
LABEL_40:
      v17 = buffer->flags & 0x3FFF7FFF | 0x40008000;
      goto LABEL_36;
    case 23:
      v16 = @"Voice Presence on Other Audio Channel";
LABEL_43:
      buffer->cfNameString = v16;
      buffer->flags = -939524096;
      CFStringGetCString(v16, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      buffer->defaultValue = 0.0;
      v17 = buffer->flags & 0x7FFF7FFF | 0x8000;
      goto LABEL_36;
    case 24:
      v12 = @"Primary Ducking Threshold in presence of voice (dB)";
      goto LABEL_13;
    case 25:
      v12 = @"Other Audio Ducking Min Level in presence of voice (dB)";
LABEL_13:
      buffer->cfNameString = v12;
      buffer->flags = -939524096;
      CFStringGetCString(v12, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 3259498496;
LABEL_31:
      *&buffer->minValue = v7;
      buffer->defaultValue = 0.0;
LABEL_35:
      v17 = buffer->flags | 0xC0000000;
LABEL_36:
      result = 0;
      buffer->flags = v17;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t AUDynamicDuckerV2::GetParameterList(AUDynamicDuckerV2 *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  for (i = 0; i != 26; ++i)
  {
    if (a3)
    {
      a3[i] = i;
    }
  }

  result = 0;
  *a4 = 26;
  return result;
}

uint64_t AUDynamicDuckerV2::SetBusCount(AUDynamicDuckerV2 *this, unsigned int a2, unsigned int a3)
{
  if (a2 != 2)
  {
    if (a2 != 1 || a3 - 1 < 5)
    {
      goto LABEL_4;
    }

    return 4294956445;
  }

  if (a3 - 1 > 1)
  {
    return 4294956445;
  }

LABEL_4:
  if (*(this + 17))
  {
    return 4294956447;
  }

  Scope = ausdk::AUBase::GetScope(this, a2);
  ausdk::AUScope::SetNumberOfElements(Scope, a3);
  return 0;
}

ausdk::AUInputElement *AUDynamicDuckerV2::Render(AUDynamicDuckerV2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  *v17 = 0u;
  v18 = 0u;
  do
  {
    Element = ausdk::AUScope::GetElement((this + 80), v8);
    if (Element && *(Element + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v8);
      if (v11)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, v8, a4);
      }

      if (result)
      {
        return result;
      }

      v12 = ausdk::AUScope::GetElement((this + 80), v8);
      if (!v12)
      {
        goto LABEL_16;
      }

      if (!*(v12 + 144))
      {
        goto LABEL_17;
      }

      v13 = (*(v12 + 152) + 48);
    }

    else
    {
      v13 = 0;
    }

    v17[v8++] = v13;
  }

  while (v8 != 5);
  v14 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v14)
  {
LABEL_16:
    ausdk::Throw(0xFFFFD583);
  }

  if (!*(v14 + 144))
  {
LABEL_17:
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v16[0] = (*(v14 + 152) + 48);
  v16[1] = 0;
  AUDynamicDuckerV2::ProcessMultipleBufferLists(this, v15, a4, 5u, v17, 2, v16);
  return 0;
}

uint64_t AUDynamicDuckerV2::ProcessMultipleBufferLists(AUDynamicDuckerV2 *this, unsigned int *a2, unsigned int a3, unsigned int a4, AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (atomic_load(this + 135))
  {
    AUDynamicDuckerV2::UpdateState(this);
  }

  if (!a4)
  {
    v15 = 0;
    v16 = 0;
    v89 = 0;
    v90 = 0;
    v88 = 0;
    v14 = *(this + 528);
    goto LABEL_7;
  }

  v90 = *a5;
  v14 = *(this + 528);
  if (a4 == 1)
  {
    v15 = 0;
    v16 = 0;
    v88 = 0;
    v89 = 0;
LABEL_7:
    v17 = 1;
    v18 = 1;
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v16 = a5[1];
  v18 = v16 == 0;
  if (a4 < 3)
  {
    v15 = 0;
    v88 = 0;
    v89 = 0;
    v17 = 1;
    goto LABEL_8;
  }

  v89 = a5[2];
  v19 = v89 == 0;
  if (a4 == 3)
  {
    v15 = 0;
    v88 = 0;
    v17 = 1;
  }

  else
  {
    v15 = a5[3];
    if (a4 < 5)
    {
      v88 = 0;
    }

    else
    {
      v88 = a5[4];
    }

    v17 = v15 == 0;
  }

LABEL_9:
  v20 = v14 ^ 1;
  if (!a6)
  {
    v86 = 0;
LABEL_18:
    v87 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v25 = 0.0;
    v92 = 0;
    v26 = 1.0;
    v27 = -200.0;
    v28 = 1.0;
    v29 = v14 ^ 1;
    v30 = 1.0;
    v31 = v14 ^ 1;
    v24 = -200.0;
    v32 = v14 ^ 1;
    goto LABEL_106;
  }

  v86 = *a7;
  if (a6 == 1)
  {
    goto LABEL_18;
  }

  v87 = a7[1];
  if (v14)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (atomic_load(this + 134))
  {
    atomic_store(0, this + 134);
    AUDynamicDuckerV2::Reset(this);
  }

  if (v90 && *(this + 648) == 1)
  {
    LODWORD(v22) = AUDynamicDuckerV2::PowerHistoryWindow::Compute((this + 544), v90, 0.0, a3);
    v91 = v23;
    v24 = v22;
  }

  else
  {
    v24 = -200.0;
    v91 = v20;
  }

  if (v24 <= *(this + 275))
  {
    v33 = *(this + 1076);
  }

  else
  {
    v33 = 1;
  }

  *(this + 1074) = v33 & 1;
  v28 = 1.0;
  if (v18 || *(this + 760) != 1)
  {
    v36 = -200.0;
    v30 = 1.0;
    v31 = v20;
  }

  else
  {
    v34 = AUDynamicDuckerV2::PowerHistoryWindow::Compute((this + 656), v16, *(this + 260), a3);
    v31 = v35;
    v30 = *(&v34 + 1);
    v36 = *&v34;
  }

  *(this + 1075) = v36 > *(this + 254);
  if (v19 || *(this + 872) != 1)
  {
    v39 = -200.0;
    v29 = v20;
  }

  else
  {
    v37 = AUDynamicDuckerV2::PowerHistoryWindow::Compute((this + 768), v89, *(this + 261), a3);
    v29 = v38;
    v28 = *(&v37 + 1);
    v39 = *&v37;
  }

  v26 = 1.0;
  if (v17 || *(this + 984) != 1)
  {
    v27 = -200.0;
  }

  else
  {
    v40 = AUDynamicDuckerV2::PowerHistoryWindow::Compute((this + 880), v15, *(this + 262), a3);
    v20 = v41;
    v26 = *(&v40 + 1);
    v27 = *&v40;
  }

  v42 = (v27 * 0.005) + (*(this + 272) * 0.995);
  *(this + 272) = v42;
  v43 = *(this + 254);
  if (v36 >= v43)
  {
    v46 = v43 - v24;
    v45 = v43 - v39;
    v44 = v43 - v27;
  }

  else
  {
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    if (v36 >= (v43 + -18.0))
    {
      v47 = (v36 - (v43 + -18.0)) / 18.0;
      v46 = (v43 - v24) * v47;
      v45 = (v43 - v39) * v47;
      v44 = (v43 - v27) * v47;
    }
  }

  if (*(this + 529))
  {
    v48 = 0;
  }

  else
  {
    v48 = *(this + 1073) ^ 1;
  }

  v49 = *(this + 275);
  if (v24 < v49 || (v48) && *(this + 1076) != 1)
  {
    if ((v24 < (v49 + -18.0)) | v48 & 1)
    {
      v50 = 0;
      *(this + 1073) = 0;
    }

    else
    {
      v50 = 1;
      *(this + 1073) = 1;
      v55 = (v24 - (v49 + -18.0)) / 18.0;
      v45 = v45 + (v55 * (v49 - v39));
      v44 = v44 + (v55 * (v49 - v27));
    }
  }

  else
  {
    v50 = 1;
    *(this + 1073) = 1;
    v45 = v45 + (v49 - v39);
    v44 = v44 + (v49 - v27);
  }

  if (v46 != 0.0)
  {
    v51 = *(this + 256) - v24;
    if (v51 <= v46)
    {
      v51 = v46;
    }

    if (v51 > 0.0)
    {
      v46 = 0.0;
    }

    else
    {
      v46 = v51;
    }
  }

  if (v45 != 0.0)
  {
    v52 = *(this + 257) - v39;
    if (v52 <= v45)
    {
      v52 = v45;
    }

    if (v52 > 0.0)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = v52;
    }
  }

  v53 = *(this + 276);
  if (v44 != 0.0)
  {
    if ((v53 - v27) > v44)
    {
      v44 = v53 - v27;
    }

    if (v44 > 0.0)
    {
      v44 = 0.0;
    }
  }

  _NF = v42 > (v53 + -12.0) && v27 < (v53 + 4.0);
  if (_NF && *(this + 1074) == 1)
  {
    if (v42 <= (v53 + -6.0))
    {
      v44 = v44 + (((v42 - (v53 + -12.0)) / -6.0) * 8.0);
    }

    else
    {
      v44 = v44 + -8.0;
    }
  }

  v56 = *(this + 133);
  v85 = v45;
  switch(v56)
  {
    case 10:
      v57 = 0.33333;
      break;
    case 30:
      v57 = 1.3333;
      break;
    case 20:
      v57 = 0.66667;
      break;
    default:
      v57 = 1.0;
      break;
  }

  v58 = *(this + 259) * v57;
  if ((v27 + v44) > v58)
  {
    v44 = v58 - v27;
  }

  v84 = v44;
  v59 = *(this + 249);
  if (v59 < 1.1755e-38)
  {
    v59 = 1.1755e-38;
  }

  v60 = log10f(v59);
  v61.f32[0] = v84;
  v62 = v60 * 20.0;
  if (v84 >= v62)
  {
    v64 = *(this + 270);
    v63 = LODWORD(v85);
    if (v64)
    {
      *(this + 270) = v64 - 1;
      v61.f32[0] = v62;
    }
  }

  else
  {
    *(this + 270) = *(this + 271);
    v63 = LODWORD(v85);
  }

  v61.i32[1] = v63;
  if (*(this + 530) == 1)
  {
    __asm { FMOV            V0.2S, #-6.0 }

    v69 = COERCE_DOUBLE(vadd_f32(v61, _D0));
    __asm { FMOV            V1.2S, #-9.0 }

    v71 = COERCE_DOUBLE(vadd_f32(v61, _D1));
    if (v50)
    {
      v69 = v71;
    }

    v72 = COERCE_DOUBLE(vadd_f32(v61, 0));
    if (v56 != 10)
    {
      v72 = *&v61;
    }

    if (v56 == 30)
    {
      *&v61 = v69;
    }

    else
    {
      *&v61 = v72;
    }
  }

  v32 = v91;
  v25 = (v46 + 0.0) * 0.05;
  v92 = vmul_f32(vadd_f32(v61, 0), vdup_n_s32(0x3D4CCCCDu));
LABEL_106:
  v73 = __exp10f(v25);
  v74 = __exp10f(v92.f32[1]);
  AUDynamicDuckerV2::GenerateOutputToCompress(this, v86, v90, v32 & 1, v73, v16, v31 & 1, v30, v74, v89, v29 & 1, v28, v75, a3);
  v76 = __exp10f(v92.f32[0]);
  AUDynamicDuckerV2::GenerateOutputToMix(this, v87, v15, v20 & 1, v76, v26, v88, v77, a3);
  v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v79 & 1) == 0)
  {
    abort();
  }

  v80 = v78;
  ausdk::AUElement::SetParameter(v78, 0xCu, v24);
  ausdk::AUElement::SetParameter(v80, 0x14u, v27);
  v81 = *(this + 249);
  if (v81 < 1.1755e-38)
  {
    v81 = 1.1755e-38;
  }

  v82 = log10f(v81);
  ausdk::AUElement::SetParameter(v80, 0x15u, v82 * 20.0);
  ausdk::AUElement::SetParameter(v80, 0x16u, *(this + 272));
  return 0;
}

void AUDynamicDuckerV2::UpdateState(AUDynamicDuckerV2 *this)
{
  atomic_store(0, this + 135);
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    abort();
  }

  v4 = v2;
  v5 = *(this + 84);
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_54;
  }

  v7 = Element;
  v8 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v8)
  {
    goto LABEL_54;
  }

  if (*(v8 + 80) >= *(v7 + 80))
  {
    v9 = *(v7 + 80);
  }

  else
  {
    v9 = *(v8 + 80);
  }

  Parameter = ausdk::AUElement::GetParameter(v4, 0);
  *(this + 251) = __exp10f(Parameter * 0.05);
  v11 = ausdk::AUElement::GetParameter(v4, 1u);
  *(this + 252) = __exp10f(v11 * 0.05);
  v12 = ausdk::AUElement::GetParameter(v4, 2u);
  *(this + 253) = __exp10f(v12 * 0.05);
  *(this + 254) = ausdk::AUElement::GetParameter(v4, 3u);
  *(this + 255) = ausdk::AUElement::GetParameter(v4, 4u);
  *(this + 256) = ausdk::AUElement::GetParameter(v4, 5u);
  *(this + 257) = ausdk::AUElement::GetParameter(v4, 6u);
  *(this + 258) = ausdk::AUElement::GetParameter(v4, 7u);
  *(this + 259) = ausdk::AUElement::GetParameter(v4, 8u);
  *(this + 260) = ausdk::AUElement::GetParameter(v4, 9u);
  *(this + 261) = ausdk::AUElement::GetParameter(v4, 0xAu);
  *(this + 262) = ausdk::AUElement::GetParameter(v4, 0xBu);
  *(this + 263) = ausdk::AUElement::GetParameter(v4, 0xDu);
  v13 = ausdk::AUElement::GetParameter(v4, 0xFu);
  *(this + 264) = v13;
  if (v13 == 0.0)
  {
    *(this + 264) = *(this + 263);
  }

  *(this + 265) = ausdk::AUElement::GetParameter(v4, 0xEu);
  *(this + 271) = (v9 * ausdk::AUElement::GetParameter(v4, 0x10u) / v5);
  *(this + 266) = ausdk::AUElement::GetParameter(v4, 0x12u);
  *(this + 267) = ausdk::AUElement::GetParameter(v4, 0x13u);
  v14 = ausdk::AUElement::GetParameter(v4, 0x11u);
  v15 = *(this + 266) > *(this + 267);
  *(this + 1072) = v14 == 1.0;
  if (v14 != 1.0)
  {
    v15 = 0;
  }

  *(this + 1076) = v15;
  *(this + 273) = ausdk::AUElement::GetParameter(v4, 0x18u);
  *(this + 274) = ausdk::AUElement::GetParameter(v4, 0x19u);
  v16 = ausdk::AUElement::GetParameter(v4, 0x17u);
  *(this + 1108) = v16 == 1.0;
  if (v16 == 1.0)
  {
    v17 = *(this + 273);
    if (v17 >= *(this + 255))
    {
      v17 = *(this + 255);
    }

    v18 = *(this + 274);
    if (v18 >= *(this + 258))
    {
      v18 = *(this + 258);
    }
  }

  else
  {
    v17 = *(this + 255);
    v18 = *(this + 258);
  }

  *(this + 275) = v17;
  *(this + 276) = v18;
  if (*(this + 648) == 1)
  {
    v19 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v19)
    {
      goto LABEL_54;
    }

    v21 = *(this + 265);
    v22 = 1.0;
    if (v21 <= 1.0)
    {
      v22 = *(this + 265);
    }

    if (v21 >= 0.1)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0.1;
    }

    if (v23 != *(this + 150))
    {
      LODWORD(v20) = *(this + 145);
      *(this + 149) = fmax(v23 / (v20 / *(v19 + 80)), 1.0);
      *(this + 150) = v23;
    }
  }

  if (*(this + 760) == 1)
  {
    v24 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (!v24)
    {
      goto LABEL_54;
    }

    v26 = *(this + 265);
    v27 = 1.0;
    if (v26 <= 1.0)
    {
      v27 = *(this + 265);
    }

    if (v26 >= 0.1)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0.1;
    }

    if (v28 != *(this + 178))
    {
      LODWORD(v25) = *(this + 173);
      *(this + 177) = fmax(v28 / (v25 / *(v24 + 80)), 1.0);
      *(this + 178) = v28;
    }
  }

  if (*(this + 872) == 1)
  {
    v29 = ausdk::AUScope::GetElement((this + 80), 2u);
    if (!v29)
    {
      goto LABEL_54;
    }

    v31 = *(this + 265);
    v32 = 1.0;
    if (v31 <= 1.0)
    {
      v32 = *(this + 265);
    }

    if (v31 >= 0.1)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0.1;
    }

    if (v33 != *(this + 206))
    {
      LODWORD(v30) = *(this + 201);
      *(this + 205) = fmax(v33 / (v30 / *(v29 + 80)), 1.0);
      *(this + 206) = v33;
    }
  }

  if (*(this + 984) != 1)
  {
    return;
  }

  v34 = ausdk::AUScope::GetElement((this + 80), 3u);
  if (!v34)
  {
LABEL_54:
    ausdk::Throw(0xFFFFD583);
  }

  v36 = *(this + 265);
  v37 = 1.0;
  if (v36 <= 1.0)
  {
    v37 = *(this + 265);
  }

  if (v36 >= 0.1)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0.1;
  }

  if (v38 != *(this + 234))
  {
    LODWORD(v35) = *(this + 229);
    *(this + 233) = fmax(v38 / (v35 / *(v34 + 80)), 1.0);
    *(this + 234) = v38;
  }
}

uint64_t AUDynamicDuckerV2::Reset(AUDynamicDuckerV2 *this)
{
  v2 = *(this + 139);
  if (!v2 || (result = AudioConverterReset(v2), !result))
  {
    v4 = *(this + 144);
    if (!v4 || (result = AudioConverterReset(v4), !result))
    {
      v5 = *(this + 149);
      if (!v5 || (result = AudioConverterReset(v5), !result))
      {
        v6 = *(this + 154);
        if (!v6 || (result = AudioConverterReset(v6), !result))
        {
          v7 = *(this + 159);
          if (!v7 || (result = AudioConverterReset(v7), !result) && ((v8 = *(this + 159)) == 0 || (result = AudioConverterReset(v8), !result)))
          {
            if (*(this + 648) == 1)
            {
              AUDynamicDuckerV2::PowerHistoryWindow::Reset(this + 544);
            }

            if (*(this + 760) == 1)
            {
              AUDynamicDuckerV2::PowerHistoryWindow::Reset(this + 656);
            }

            if (*(this + 872) == 1)
            {
              AUDynamicDuckerV2::PowerHistoryWindow::Reset(this + 768);
            }

            if (*(this + 984) == 1)
            {
              AUDynamicDuckerV2::PowerHistoryWindow::Reset(this + 880);
            }

            result = 0;
            *(this + 272) = 0;
          }
        }
      }
    }
  }

  return result;
}

unint64_t AUDynamicDuckerV2::PowerHistoryWindow::Compute(AUDynamicDuckerV2::PowerHistoryWindow *this, const AudioBufferList *a2, float a3, unsigned int a4)
{
  v8 = __exp10f(a3 * 0.05);
  v9 = v8 * v8;
  mNumberBuffers = a2->mNumberBuffers;
  v11 = a4;
  v12 = *(this + 8);
  if (v12 <= a4)
  {
    LODWORD(v13) = 0;
    v14 = 1;
    do
    {
      if (mNumberBuffers)
      {
        v15 = 0;
        v16 = 0.0;
        p_mData = &a2->mBuffers[0].mData;
        do
        {
          __C = 0.0;
          vDSP_svesq(*p_mData + v13, 1, &__C, *(this + 8));
          __C = v9 * __C;
          if (*(this + 1) <= v15)
          {
            __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
          }

          v18 = *(*this + 4 * v15);
          *(*this + 4 * v15) = 0;
          v19 = v18 + __C;
          if (v16 < v19)
          {
            v16 = v19;
          }

          ++v15;
          p_mData += 2;
        }

        while (mNumberBuffers != v15);
        v12 = *(this + 8);
      }

      else
      {
        v16 = 0.0;
      }

      *(this + 8) = *(this + 9);
      v21 = *(this + 12);
      v20 = *(this + 13);
      v22 = *(this + 12);
      if (v21 >= v20)
      {
        v24 = *(this + 8);
        v25 = *(this + 11);
        v23 = *(this + 5);
        do
        {
          if (v25 == v24)
          {
            v25 = *(this + 9);
          }

          v26 = *(v25 - 4);
          v25 -= 4;
          v23 = v23 - v26;
          --v22;
          --v21;
        }

        while (v21 >= v20);
        *(this + 11) = v25;
        *(this + 12) = v22;
      }

      else
      {
        v23 = *(this + 5);
        v24 = *(this + 8);
        v20 = v21 + 1;
      }

      v7 = v23 + v16;
      *(this + 5) = v7;
      v27 = *(this + 9);
      if (v22 == (v27 - v24) >> 2)
      {
        if (v27 != v24)
        {
          v28 = *(this + 10);
          if (v28 == v24)
          {
            v28 = *(this + 9);
          }

          *(v28 - 4) = v16;
          v29 = v28 - 4;
          *(this + 10) = v29;
          *(this + 11) = v29;
        }
      }

      else
      {
        if (*(this + 10) == v24)
        {
          v30 = *(this + 9);
        }

        else
        {
          v30 = *(this + 10);
        }

        *(v30 - 4) = v16;
        *(this + 10) = v30 - 4;
        *(this + 12) = v22 + 1;
      }

      v13 = (v12 + v13);
      a4 = (v11 - v12);
      v14 &= v16 == 0.0;
      *(this + 12) = v20;
      v11 = a4;
      v12 = *(this + 8);
    }

    while (v12 <= a4);
  }

  else
  {
    v13 = 0;
  }

  if (a4)
  {
    if (mNumberBuffers)
    {
      v31 = 0;
      v32 = &a2->mBuffers[0].mData;
      v33 = 0.0;
      do
      {
        v40 = 0.0;
        vDSP_svesq(*v32 + v13, 1, &v40, a4);
        v34 = v9 * v40;
        v40 = v9 * v40;
        if (*(this + 1) <= v31)
        {
          __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
        }

        *(*this + 4 * v31) = v34 + *(*this + 4 * v31);
        if (v33 < v40)
        {
          v33 = v40;
        }

        ++v31;
        v32 += 2;
      }

      while (mNumberBuffers != v31);
      v12 = *(this + 8);
    }

    *(this + 8) = v12 - v11;
  }

  LODWORD(v7) = *(this + 12);
  *&v35 = *&v7;
  v36 = *(this + 5) / *&v35;
  LODWORD(v35) = *(this + 9);
  v37 = v36 / v35;
  if (v37 < 2.22507386e-308)
  {
    v37 = 2.22507386e-308;
  }

  *&v38 = log10(v37) * 20.0 * 0.5;
  return v38 | (LODWORD(v8) << 32);
}

void AUDynamicDuckerV2::GenerateOutputToCompress(unsigned int **this, AudioBufferList *a2, const AudioBufferList *a3, char a4, float a5, const AudioBufferList *a6, char a7, float a8, float a9, const AudioBufferList *a10, int a11, float a12, float a13, UInt32 a14)
{
  v69 = a10;
  v76 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v16 = a11;
  v20 = a3;
  v21 = this;
  v70 = a2;
  LOBYTE(v71) = 0;
  if (!a3 || (a4 & 1) != 0)
  {
LABEL_21:
    if (!a6)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  v23 = this[139];
  if (v23)
  {
    HIDWORD(v68) = a11;
    CA::AudioBuffersDeprecated::PrepareWithNumberOfBuffers(this[164]);
    v24 = v21[164];
    v25 = v24 + 2;
    this = AudioConverterConvertComplexBuffer(v23, a14, v20, v24 + 2);
    if (this && v25->mNumberBuffers)
    {
      v26 = 0;
      p_mData = &v24[2].mBuffers[0].mData;
      do
      {
        bzero(*p_mData, *(p_mData - 1));
        ++v26;
        p_mData += 2;
      }

      while (v26 < v25->mNumberBuffers);
    }

    v20 = v24 + 2;
    v16 = BYTE4(v68);
  }

  if ((v21[66] & 1) != 0 || *(v21 + 248) == a5)
  {
    this = AUDynamicDuckerV2::GenerateOutput::Mix(&v70, v20, a5, a14);
    goto LABEL_21;
  }

  MEMORY[0x1EEE9AC00](this);
  v29 = &v67 - v28;
  v30 = 1052;
  if (*(v21 + 248) < a5)
  {
    v30 = 1056;
  }

  v31 = *(v21 + v30);
  v32 = *(v21 + 251);
  Element = ausdk::AUScope::GetElement((v21 + 16), 0);
  if (!Element)
  {
    goto LABEL_84;
  }

  v34 = (1.0 - v32) / (*(Element + 80) * v31);
  v75 = v34;
  v74 = 1.0;
  v35 = *(v21 + 251);
  v73 = v35;
  v36 = *(v21 + 248);
  if (v36 <= a5)
  {
    v74 = fminf(a5, 1.0);
  }

  else
  {
    v75 = -v34;
    if (v35 >= a5)
    {
      v37 = v35;
    }

    else
    {
      v37 = a5;
    }

    v73 = v37;
  }

  v72 = v36;
  vDSP_vramp(&v72, &v75, (v29 & 0xFFFFFFFFFFFFFFC0), 1, a14);
  vDSP_vclip((v29 & 0xFFFFFFFFFFFFFFC0), 1, &v73, &v74, (v29 & 0xFFFFFFFFFFFFFFC0), 1, a14);
  v59 = v75;
  v60 = *(v21 + 248) + (v75 * a14);
  *(v21 + 248) = v60;
  if (v60 < a5 && v59 < 0.0 || v60 > a5 && v59 > 0.0)
  {
    *(v21 + 248) = a5;
  }

  this = AUDynamicDuckerV2::GenerateOutput::Mix(&v70, v20, (v29 & 0xFFFFFFFFFFFFFFC0), a14);
  if (a6)
  {
LABEL_22:
    if ((a7 & 1) == 0)
    {
      v38 = v21[144];
      if (v38)
      {
        v39 = v16;
        CA::AudioBuffersDeprecated::PrepareWithNumberOfBuffers(v21[164]);
        v40 = v21[164];
        v41 = v40 + 2;
        if (AudioConverterConvertComplexBuffer(v38, a14, a6, &v40[2]) && v41->mNumberBuffers)
        {
          v42 = 0;
          v43 = &v40[2].mBuffers[0].mData;
          do
          {
            bzero(*v43, *(v43 - 1));
            ++v42;
            v43 += 2;
          }

          while (v42 < v41->mNumberBuffers);
        }

        a6 = v40 + 2;
        v16 = v39;
      }

      this = AUDynamicDuckerV2::GenerateOutput::Mix(&v70, a6, a8, a14);
    }
  }

LABEL_30:
  if (v69 && (v16 & 1) == 0)
  {
    v44 = v21[149];
    if (v44)
    {
      CA::AudioBuffersDeprecated::PrepareWithNumberOfBuffers(v21[164]);
      v45 = v21[164];
      v46 = v45 + 2;
      this = AudioConverterConvertComplexBuffer(v44, a14, v69, v45 + 2);
      if (this && v46->mNumberBuffers)
      {
        v47 = 0;
        v48 = &v45[2].mBuffers[0].mData;
        do
        {
          bzero(*v48, *(v48 - 1));
          ++v47;
          v48 += 2;
        }

        while (v47 < v46->mNumberBuffers);
      }

      v69 = v46;
    }

    if ((v21[66] & 1) == 0 && *(v21 + 250) != a9)
    {
      MEMORY[0x1EEE9AC00](this);
      v50 = &v67 - v49;
      v75 = a12;
      v51 = 1052;
      if (*(v21 + 250) < a9)
      {
        v51 = 1056;
      }

      v52 = *(v21 + v51);
      v53 = *(v21 + 252);
      v54 = ausdk::AUScope::GetElement((v21 + 16), 0);
      if (v54)
      {
        v55 = (1.0 - v53) / (*(v54 + 80) * v52);
        v74 = v55;
        v73 = 1.0;
        v56 = *(v21 + 252);
        v57 = v56 * v56;
        v72 = v56 * v56;
        v58 = *(v21 + 250);
        if (v58 > a9)
        {
          v55 = -v55;
          v74 = v55;
        }

        if (v55 < 0.0)
        {
          if (v58 < v56 || *(v21 + 1075) == 1 && (*(v21 + 1074) & 1) != 0)
          {
            if (v57 < a9)
            {
              v57 = a9;
            }
          }

          else if (v56 >= a9)
          {
            v57 = v56;
          }

          else
          {
            v57 = a9;
          }

          v72 = v57;
        }

        v61 = (v21 + 125);
        if (v55 > 0.0)
        {
          if (v58 <= v56 && ((*(v21 + 1075) & 1) != 0 || *(v21 + 1074) == 1))
          {
            if (v56 > a9)
            {
              v56 = a9;
            }
          }

          else
          {
            v56 = fminf(a9, 1.0);
          }

          v73 = v56;
        }

        vDSP_vramp(v21 + 250, &v74, (v50 & 0xFFFFFFFFFFFFFFC0), 1, a14);
        vDSP_vclip((v50 & 0xFFFFFFFFFFFFFFC0), 1, &v72, &v73, (v50 & 0xFFFFFFFFFFFFFFC0), 1, a14);
        MEMORY[0x1E12BE940](v50 & 0xFFFFFFFFFFFFFFC0, 1, &v75, v50 & 0xFFFFFFFFFFFFFFC0, 1, a14);
        v62 = v74;
        v63 = *v61 + (v74 * a14);
        *v61 = v63;
        if (v63 < a9 && v62 < 0.0 || v63 > a9 && v62 > 0.0)
        {
          *v61 = a9;
        }

        AUDynamicDuckerV2::GenerateOutput::Mix(&v70, v69, (v50 & 0xFFFFFFFFFFFFFFC0), a14);
        goto LABEL_79;
      }

LABEL_84:
      ausdk::Throw(0xFFFFD583);
    }

    AUDynamicDuckerV2::GenerateOutput::Mix(&v70, v69, a9 * a12, a14);
  }

LABEL_79:
  if ((v71 & 1) == 0)
  {
    v64 = v70;
    if (v70->mNumberBuffers)
    {
      v65 = 0;
      v66 = &v70->mBuffers[0].mData;
      do
      {
        bzero(*v66, *(v66 - 1));
        ++v65;
        v66 += 2;
      }

      while (v65 < v64->mNumberBuffers);
    }
  }
}

void sub_1DDE8001C(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 40) & 1) == 0)
  {
    v3 = *(v1 + 32);
    if (*v3)
    {
      v4 = 0;
      v5 = (v3 + 4);
      do
      {
        bzero(*v5, *(v5 - 1));
        ++v4;
        v5 += 2;
      }

      while (v4 < *v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void AUDynamicDuckerV2::GenerateOutputToMix(OpaqueAudioConverter **this, AudioBufferList *a2, const AudioBufferList *a3, char a4, float a5, float a6, const AudioBufferList *a7, float a8, UInt32 a9)
{
  vars8 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v11 = a3;
  v12 = this;
  v42 = a2;
  LOBYTE(v43) = 0;
  if (a3 && (a4 & 1) == 0)
  {
    v15 = this[154];
    if (v15)
    {
      CA::AudioBuffersDeprecated::PrepareWithNumberOfBuffers(this[164]);
      v16 = *(v12 + 164);
      v17 = v16 + 2;
      this = AudioConverterConvertComplexBuffer(v15, a9, v11, v16 + 2);
      if (this && v17->mNumberBuffers)
      {
        v18 = 0;
        p_mData = &v16[2].mBuffers[0].mData;
        do
        {
          bzero(*p_mData, *(p_mData - 1));
          ++v18;
          p_mData += 2;
        }

        while (v18 < v17->mNumberBuffers);
      }

      v11 = v16 + 2;
    }

    if ((*(v12 + 528) & 1) == 0 && *(v12 + 249) != a5)
    {
      MEMORY[0x1EEE9AC00](this);
      v21 = &v41 - v20;
      v47 = a6;
      v22 = 1052;
      if (*(v12 + 249) < a5)
      {
        v22 = 1056;
      }

      v23 = *(v12 + v22);
      v24 = *(v12 + 253);
      Element = ausdk::AUScope::GetElement((v12 + 128), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v26 = (1.0 - v24) / (*(Element + 80) * v23);
      v46 = v26;
      v45 = 1.0;
      v27 = *(v12 + 253);
      v28 = v27 * v27;
      v44 = v27 * v27;
      v29 = *(v12 + 249);
      if (v29 > a5)
      {
        v26 = -v26;
        v46 = v26;
      }

      if (v26 < 0.0)
      {
        if (v29 < v27 || *(v12 + 1075) == 1 && (*(v12 + 1074) & 1) != 0)
        {
          if (v28 < a5)
          {
            v28 = a5;
          }
        }

        else if (v27 >= a5)
        {
          v28 = v27;
        }

        else
        {
          v28 = a5;
        }

        v44 = v28;
      }

      v38 = (v12 + 996);
      if (v26 > 0.0)
      {
        if (v29 <= v27 && ((*(v12 + 1075) & 1) != 0 || *(v12 + 1074) == 1))
        {
          if (v27 > a5)
          {
            v27 = a5;
          }
        }

        else
        {
          v27 = fminf(a5, 1.0);
        }

        v45 = v27;
      }

      vDSP_vramp(v12 + 249, &v46, (v21 & 0xFFFFFFFFFFFFFFC0), 1, a9);
      vDSP_vclip((v21 & 0xFFFFFFFFFFFFFFC0), 1, &v44, &v45, (v21 & 0xFFFFFFFFFFFFFFC0), 1, a9);
      MEMORY[0x1E12BE940](v21 & 0xFFFFFFFFFFFFFFC0, 1, &v47, v21 & 0xFFFFFFFFFFFFFFC0, 1, a9);
      v39 = v46;
      v40 = *v38 + (v46 * a9);
      *v38 = v40;
      if (v40 < a5 && v39 < 0.0 || v40 > a5 && v39 > 0.0)
      {
        *v38 = a5;
      }

      AUDynamicDuckerV2::GenerateOutput::Mix(&v42, v11, (v21 & 0xFFFFFFFFFFFFFFC0), a9);
      if (!a7)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    AUDynamicDuckerV2::GenerateOutput::Mix(&v42, v11, a5 * a6, a9);
  }

  if (a7)
  {
LABEL_24:
    v30 = *(v12 + 159);
    if (v30)
    {
      CA::AudioBuffersDeprecated::PrepareWithNumberOfBuffers(*(v12 + 164));
      v31 = *(v12 + 164);
      v32 = v31 + 2;
      if (AudioConverterConvertComplexBuffer(v30, a9, a7, v31 + 2) && v32->mNumberBuffers)
      {
        v33 = 0;
        v34 = &v31[2].mBuffers[0].mData;
        do
        {
          bzero(*v34, *(v34 - 1));
          ++v33;
          v34 += 2;
        }

        while (v33 < v32->mNumberBuffers);
      }

      a7 = v32;
    }

    AUDynamicDuckerV2::GenerateOutput::Mix(&v42, a7, 1.0, a9);
  }

LABEL_31:
  if ((v43 & 1) == 0)
  {
    v35 = v42;
    if (v42->mNumberBuffers)
    {
      v36 = 0;
      v37 = &v42->mBuffers[0].mData;
      do
      {
        bzero(*v37, *(v37 - 1));
        ++v36;
        v37 += 2;
      }

      while (v36 < v35->mNumberBuffers);
    }
  }
}

void sub_1DDE80468(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 40) & 1) == 0)
  {
    v3 = *(v1 + 32);
    if (*v3)
    {
      v4 = 0;
      v5 = (v3 + 4);
      do
      {
        bzero(*v5, *(v5 - 1));
        ++v4;
        v5 += 2;
      }

      while (v4 < *v3);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int **AUDynamicDuckerV2::GenerateOutput::Mix(unsigned int **this, const AudioBufferList *a2, const float *a3, unsigned int a4)
{
  v5 = this;
  v6 = *this;
  mBuffers = a2->mBuffers;
  v8 = **this;
  if (*(this + 8) == 1)
  {
    if (v8)
    {
      v9 = 0;
      v10 = a2->mNumberBuffers - 1;
      v11 = a4;
      v12 = (v6 + 4);
      do
      {
        if (v10 >= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v10;
        }

        v14 = *v12;
        v12 += 2;
        this = MEMORY[0x1E12BE780](mBuffers[v13].mData, 1, a3, 1, v14, 1, v14, 1, v11);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  else if (v8)
  {
    v15 = 0;
    v16 = a2->mNumberBuffers - 1;
    v17 = a4;
    v18 = (v6 + 4);
    do
    {
      if (v16 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = v16;
      }

      v20 = *v18;
      v18 += 2;
      this = MEMORY[0x1E12BE7F0](mBuffers[v19].mData, 1, a3, 1, v20, 1, v17);
      ++v15;
    }

    while (v8 != v15);
  }

  *(v5 + 8) = 1;
  return this;
}

unsigned int **AUDynamicDuckerV2::GenerateOutput::Mix(unsigned int **this, const AudioBufferList *a2, float a3, unsigned int a4)
{
  v4 = this;
  v30 = a3;
  v5 = *this;
  mBuffers = a2->mBuffers;
  v7 = **this;
  if (*(this + 8) == 1)
  {
    if (a3 == 1.0)
    {
      if (v7)
      {
        v8 = 0;
        v9 = a2->mNumberBuffers - 1;
        v10 = a4;
        v11 = (v5 + 4);
        do
        {
          if (v9 >= v8)
          {
            v12 = v8;
          }

          else
          {
            v12 = v9;
          }

          v13 = *v11;
          v11 += 2;
          this = MEMORY[0x1E12BE5D0](mBuffers[v12].mData, 1, v13, 1, v13, 1, v10);
          ++v8;
        }

        while (v7 != v8);
      }
    }

    else if (v7)
    {
      v20 = 0;
      v21 = a2->mNumberBuffers - 1;
      v22 = a4;
      v23 = (v5 + 4);
      do
      {
        if (v21 >= v20)
        {
          v24 = v20;
        }

        else
        {
          v24 = v21;
        }

        v25 = *v23;
        v23 += 2;
        this = MEMORY[0x1E12BE8F0](mBuffers[v24].mData, 1, &v30, v25, 1, v25, 1, v22);
        ++v20;
      }

      while (v7 != v20);
    }
  }

  else if (a3 == 1.0)
  {
    if (v7)
    {
      v14 = 0;
      v15 = a2->mNumberBuffers - 1;
      v16 = 4 * a4;
      v17 = (v5 + 4);
      do
      {
        if (v15 >= v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = v15;
        }

        mData = mBuffers[v18].mData;
        this = *v17;
        if (mData != *v17)
        {
          this = memcpy(this, mData, v16);
        }

        ++v14;
        v17 += 2;
      }

      while (v7 != v14);
    }
  }

  else if (v7)
  {
    v26 = 0;
    v27 = a2->mNumberBuffers - 1;
    v28 = (v5 + 4);
    do
    {
      if (v27 >= v26)
      {
        v29 = v26;
      }

      else
      {
        v29 = v27;
      }

      this = mBuffers[v29].mData;
      if (this != *v28)
      {
        this = MEMORY[0x1E12BE940](this, 1, &v30);
      }

      ++v26;
      v28 += 2;
    }

    while (v7 != v26);
  }

  *(v4 + 8) = 1;
  return this;
}

uint64_t AUDynamicDuckerV2::PowerHistoryWindow::Reset(uint64_t this)
{
  v1 = *this;
  v2 = *(this + 8);
  if (*this)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v2)
  {
    v4 = 4 * v2;
    do
    {
      if (!v1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      *v1++ = 0;
      v4 -= 4;
    }

    while (v4);
  }

  *(this + 32) = *(this + 36);
  *(this + 40) = 0;
  *(this + 48) = 0;
  v5 = *(this + 96);
  v7 = *(this + 72);
  v6 = *(this + 80);
  if (v5 >= (v7 - v6) >> 2)
  {
    v5 -= (v7 - *(this + 64)) >> 2;
  }

  *(this + 80) = v6 + 4 * v5;
  *(this + 96) = 0;
  return this;
}

uint64_t AUDynamicDuckerV2::SetParameter(atomic_uint *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  v12 = 0.0;
  result = ausdk::AUBase::GetParameter(this, a2, a3, a4, &v12);
  if (result || v12 != a5)
  {
    result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
    if (!result)
    {
      if (a2 == 18)
      {
        *(this + 266) = a5;
        if (*(this + 267) >= a5)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(this + 1072);
        }

        result = 0;
        *(this + 1076) = v11 & 1;
      }

      else
      {
        result = 0;
        atomic_fetch_add(this + 135, 1u);
      }
    }
  }

  return result;
}

uint64_t AUDynamicDuckerV2::SetProperty(AUDynamicDuckerV2 *this, int a2, int a3, unsigned int a4, _DWORD *a5, int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1852141668)
  {
    if (a2 != 1852141669)
    {
      if (a2 == 1852141676)
      {
        if (a6 == 4)
        {
          result = 0;
          *(this + 133) = *a5;
          return result;
        }

        return 4294956445;
      }

      return result;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 530) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  if (a2 == 21)
  {
    if (a6 == 4)
    {
      v8 = *a5 != 0;
      if (*(this + 528) == 1 && !*a5)
      {
        atomic_fetch_add(this + 134, 1u);
      }

      result = 0;
      *(this + 528) = v8;
      return result;
    }

    return 4294956445;
  }

  if (a2 == 1633973611)
  {
    if (a6 == 4)
    {
      result = 0;
      *(this + 529) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  return result;
}

uint64_t AUDynamicDuckerV2::GetProperty(AUDynamicDuckerV2 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1852141668)
  {
    if (a2 == 1852141669)
    {
      v7 = *(this + 530);
    }

    else
    {
      if (a2 != 1852141676)
      {
        return result;
      }

      v7 = *(this + 133) != 0;
    }
  }

  else if (a2 == 21)
  {
    v7 = *(this + 528);
  }

  else
  {
    if (a2 != 1633973611)
    {
      return result;
    }

    v7 = *(this + 529);
  }

  result = 0;
  *a5 = v7;
  return result;
}

uint64_t AUDynamicDuckerV2::GetPropertyInfo(AUDynamicDuckerV2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  result = 4294956417;
  if (!a3)
  {
    if (a2 > 1852141668)
    {
      if (a2 == 1852141676)
      {
        goto LABEL_9;
      }

      v7 = 1852141669;
    }

    else
    {
      if (a2 == 21)
      {
        goto LABEL_9;
      }

      v7 = 1633973611;
    }

    if (a2 != v7)
    {
      return result;
    }

LABEL_9:
    result = 0;
    *a6 = 1;
    *a5 = 4;
  }

  return result;
}

void AUDynamicDuckerV2::Cleanup(OpaqueAudioConverter **this)
{
  AUDynamicDuckerV2::DisposeAudioConverters(this);

  AUDynamicDuckerV2::DisposePowerHistoryWindows(this);
}

uint64_t AUDynamicDuckerV2::DisposeAudioConverters(OpaqueAudioConverter **this)
{
  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](this + 139, 0);
  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](this + 144, 0);
  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](this + 149, 0);
  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](this + 154, 0);
  result = std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](this + 159, 0);
  if (*(this + 1320) == 1)
  {
    result = ExtendedAudioBufferList_Destroy();
    *(this + 1320) = 0;
  }

  return result;
}

void AUDynamicDuckerV2::DisposePowerHistoryWindows(AUDynamicDuckerV2 *this)
{
  std::__optional_destruct_base<AUDynamicDuckerV2::PowerHistoryWindow,false>::reset[abi:ne200100](this + 544);
  std::__optional_destruct_base<AUDynamicDuckerV2::PowerHistoryWindow,false>::reset[abi:ne200100](this + 656);
  std::__optional_destruct_base<AUDynamicDuckerV2::PowerHistoryWindow,false>::reset[abi:ne200100](this + 768);

  std::__optional_destruct_base<AUDynamicDuckerV2::PowerHistoryWindow,false>::reset[abi:ne200100](this + 880);
}

void std::__optional_destruct_base<AUDynamicDuckerV2::PowerHistoryWindow,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    boost::circular_buffer<float,std::allocator<float>>::destroy(a1 + 64);
    if (*(a1 + 16))
    {
      if (a1 + 24 != *a1)
      {
        operator delete(*a1);
      }
    }

    *(a1 + 104) = 0;
  }
}

void boost::circular_buffer<float,std::allocator<float>>::destroy(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *a1;
  v6 = v3 - v2;
  v7 = (v3 - v5) >> 2;
  if (v4 < v6 >> 2)
  {
    v7 = 0;
  }

  *(a1 + 16) = v2 + 4 * (v4 - v7);
  if (v5)
  {
    operator delete(v5);
  }
}

OpaqueAudioConverter *std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](OpaqueAudioConverter **a1, OpaqueAudioConverter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return AudioConverterDispose(result);
  }

  return result;
}

uint64_t AUDynamicDuckerV2::Initialize(AUDynamicDuckerV2 *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_23;
  }

  v3 = *(Element + 80);
  for (i = 1; ; ++i)
  {
    v5 = *(this + 15);
    if (v5)
    {
      LODWORD(v6) = (*(*v5 + 24))(v5);
    }

    else
    {
      v6 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (i >= v6)
    {
      break;
    }

    v7 = ausdk::AUScope::GetElement((this + 80), i);
    if (!v7)
    {
      goto LABEL_23;
    }

    if (*(v7 + 80) != v3)
    {
      return 4294956428;
    }
  }

  v8 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v8)
  {
LABEL_23:
    ausdk::Throw(0xFFFFD583);
  }

  v9 = *(v8 + 80);
  for (j = 1; ; ++j)
  {
    v11 = *(this + 21);
    if (v11)
    {
      LODWORD(v12) = (*(*v11 + 24))(v11);
    }

    else
    {
      v12 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (j >= v12)
    {
      break;
    }

    v13 = ausdk::AUScope::GetElement((this + 128), j);
    if (!v13)
    {
      goto LABEL_23;
    }

    if (*(v13 + 80) != v9)
    {
      return 4294956428;
    }
  }

  if (v3 == v9)
  {
    std::vector<AudioChannelLayout>::vector[abi:ne200100](&v19, 1uLL);
    v14 = v19;
    *v19 = 0;
    *(v14 + 2) = 0;
    v15 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v15)
    {
      v16 = *(v15 + 96);
      *&inDestinationFormat.mSampleRate = *(v15 + 80);
      *&inDestinationFormat.mBytesPerPacket = v16;
      *&inDestinationFormat.mBitsPerChannel = *(v15 + 112);
      AU::ReferenceSignalMixer::MakeDefaultChannelLayout(&v18, HIDWORD(v16));
    }

    ausdk::Throw(0xFFFFD583);
  }

  return 4294956428;
}

void sub_1DDE81B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a34)
  {
    operator delete(a34);
  }

  v36 = *(v34 - 176);
  if (v36)
  {
    *(v34 - 168) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 152);
  if (v37)
  {
    *(v34 - 144) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

AUDynamicDuckerV2::PowerHistoryWindow *AUDynamicDuckerV2::PowerHistoryWindow::PowerHistoryWindow(AUDynamicDuckerV2::PowerHistoryWindow *this, const CA::StreamDescription *a2, unsigned int a3)
{
  *this = this + 24;
  *(this + 8) = xmmword_1DE09DD30;
  *(this + 4) = 0u;
  v6 = this + 64;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0x48400000000;
  *(this + 14) = 0;
  if ((*(a2 + 3) & 0x20) != 0)
  {
    v7 = *(a2 + 7);
  }

  else
  {
    v7 = 1;
  }

  v10 = 0;
  boost::container::vector<float,boost::container::small_vector_allocator<float,boost::container::new_allocator<void>,void>,void>::priv_resize<float,boost::move_detail::integral_constant<unsigned int,1u>>(this, v7, &v10, 0);
  *(this + 8) = a3;
  *(this + 9) = a3;
  *(this + 5) = 0;
  v8 = fmax(ceil(1.0 / (a3 / *a2)), 1.0);
  *(this + 12) = 0;
  *(this + 13) = v8;
  *(this + 14) = 1065353216;
  if (v8 != (*(this + 9) - *(this + 8)) >> 2)
  {
    if (v8)
    {
      operator new();
    }

    boost::circular_buffer<float,std::allocator<float>>::destroy(v6);
    *(this + 8) = 0;
    *(this + 9) = 4 * v8;
    *(this + 10) = 0;
    *(this + 11) = 0;
    *(this + 12) = 0;
  }

  return this;
}

void sub_1DDE81EB0(_Unwind_Exception *a1)
{
  boost::circular_buffer<float,std::allocator<float>>::destroy(v2);
  if (*(v1 + 16))
  {
    if (v3 != *v1)
    {
      operator delete(*v1);
    }
  }

  _Unwind_Resume(a1);
}

void boost::container::vector<float,boost::container::small_vector_allocator<float,boost::container::new_allocator<void>,void>,void>::priv_resize<float,boost::move_detail::integral_constant<unsigned int,1u>>(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 < v4)
  {
LABEL_14:
    *(a1 + 8) = a2;
    return;
  }

  v6 = *(a1 + 16);
  v7 = v6 >= v4;
  v8 = v6 - v4;
  if (!v7)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  v10 = (*a1 + 4 * v4);
  if (v8 >= v5)
  {
    if (a2 != v4)
    {
      v11 = 0;
      a4.i32[0] = *a3;
      v12 = vdupq_n_s64(v5 - 1);
      v13 = v10 + 8;
      do
      {
        v14 = vdupq_n_s64(v11);
        v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1DE095160)));
        if (vuzp1_s16(v15, a4).u8[0])
        {
          *(v13 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v15, a4).i8[2])
        {
          *(v13 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1DE095150)))).i32[1])
        {
          *v13 = a4.i32[0];
          v13[1] = a4.i32[0];
        }

        v11 += 4;
        v13 += 4;
      }

      while (((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v11);
    }

    goto LABEL_14;
  }

  boost::container::vector<float,boost::container::small_vector_allocator<float,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_n_copies_proxy<boost::container::small_vector_allocator<float,boost::container::new_allocator<void>,void>,float *>>(&v16, a1, v10, v5, a3);
}

void boost::container::vector<float,boost::container::small_vector_allocator<float,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_n_copies_proxy<boost::container::small_vector_allocator<float,boost::container::new_allocator<void>,void>,float *>>(void *a1, char *a2, char *a3, unint64_t a4, __int32 *a5)
{
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  if (v6 - v5 >= a4)
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v8 = 0x1FFFFFFFFFFFFFFFLL;
  if (0x1FFFFFFFFFFFFFFFLL - v6 < &v5[a4 - v6])
  {
    goto LABEL_33;
  }

  v9 = v6 >> 61;
  v10 = 8 * v6;
  if (v9 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v10 / 5;
  if (v9)
  {
    v12 = v11;
  }

  v13 = &v5[a4];
  if (v12 < 0x1FFFFFFFFFFFFFFFLL)
  {
    v8 = v12;
  }

  v14 = v13 <= v8 ? v8 : v13;
  if (v13 >> 61)
  {
LABEL_33:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v19 = *a2;
  v20 = operator new(4 * v14);
  v22 = v20;
  v24 = *a2;
  v23 = *(a2 + 1);
  v25 = v20;
  if (*a2)
  {
    v25 = v20;
    if (v24 != a3)
    {
      memmove(v20, v24, a3 - v24);
      v25 = &v22[a3 - v24];
    }
  }

  v21.i32[0] = *a5;
  v26 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v27 = vdupq_n_s64(a4 - 1);
  v28 = v25 + 8;
  v29 = 3;
  v30 = &v24[4 * v23];
  do
  {
    v31 = vdupq_n_s64(v29 - 3);
    v32 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v31, xmmword_1DE095160)));
    if (vuzp1_s16(v32, v21).u8[0])
    {
      *(v28 - 2) = v21.i32[0];
    }

    if (vuzp1_s16(v32, v21).i8[2])
    {
      *(v28 - 1) = v21.i32[0];
    }

    if (vuzp1_s16(v21, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v31, xmmword_1DE095150)))).i32[1])
    {
      *v28 = v21.i32[0];
      v28[1] = v21.i32[0];
    }

    v29 += 4;
    v28 += 4;
    v26 -= 4;
  }

  while (v26);
  if (a3 && v30 != a3)
  {
    memmove(&v25[4 * a4], a3, v30 - a3);
  }

  if (v24 && a2 + 24 != v24)
  {
    operator delete(v24);
    v23 = *(a2 + 1);
  }

  *a2 = v22;
  *(a2 + 1) = &v23[a4];
  *(a2 + 2) = v14;
  *a1 = &v22[a3 - v19];
}

void boost::container::throw_length_error(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F5938430;
  exception[1] = this;
}

const char *boost::container::exception::what(boost::container::exception *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  else
  {
    return "unknown boost::container exception";
  }
}

void boost::container::out_of_range::~out_of_range(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12BD160);
}

void AUDynamicDuckerV2::~AUDynamicDuckerV2(OpaqueAudioConverter **this)
{
  AUDynamicDuckerV2::~AUDynamicDuckerV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  AUDynamicDuckerV2::DisposeAudioConverters(this);
  AUDynamicDuckerV2::DisposePowerHistoryWindows(this);
  if (*(this + 1384) == 1)
  {
    v2 = this[170];
    if (v2)
    {
      this[171] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 1352) == 1)
  {
    v3 = this[166];
    if (v3)
    {
      this[167] = v3;
      operator delete(v3);
    }
  }

  if (*(this + 1320) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  if (*(this + 1304) == 1)
  {
    v4 = this[160];
    if (v4)
    {
      this[161] = v4;
      operator delete(v4);
    }
  }

  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](this + 159, 0);
  if (*(this + 1264) == 1)
  {
    v5 = this[155];
    if (v5)
    {
      this[156] = v5;
      operator delete(v5);
    }
  }

  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](this + 154, 0);
  if (*(this + 1224) == 1)
  {
    v6 = this[150];
    if (v6)
    {
      this[151] = v6;
      operator delete(v6);
    }
  }

  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](this + 149, 0);
  if (*(this + 1184) == 1)
  {
    v7 = this[145];
    if (v7)
    {
      this[146] = v7;
      operator delete(v7);
    }
  }

  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](this + 144, 0);
  if (*(this + 1144) == 1)
  {
    v8 = this[140];
    if (v8)
    {
      this[141] = v8;
      operator delete(v8);
    }
  }

  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](this + 139, 0);
  if (*(this + 984) == 1)
  {
    boost::circular_buffer<float,std::allocator<float>>::destroy((this + 118));
    if (this[112])
    {
      v9 = this[110];
      if (this + 113 != v9)
      {
        operator delete(v9);
      }
    }
  }

  if (*(this + 872) == 1)
  {
    boost::circular_buffer<float,std::allocator<float>>::destroy((this + 104));
    if (this[98])
    {
      v10 = this[96];
      if (this + 99 != v10)
      {
        operator delete(v10);
      }
    }
  }

  if (*(this + 760) == 1)
  {
    boost::circular_buffer<float,std::allocator<float>>::destroy((this + 90));
    if (this[84])
    {
      v11 = this[82];
      if (this + 85 != v11)
      {
        operator delete(v11);
      }
    }
  }

  if (*(this + 648) == 1)
  {
    boost::circular_buffer<float,std::allocator<float>>::destroy((this + 76));
    if (this[70])
    {
      v12 = this[68];
      if (this + 71 != v12)
      {
        operator delete(v12);
      }
    }
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUMicSense::GetScopeExtended(AUMicSense *this, int a2)
{
  if (a2 == 4)
  {
    return this + 560;
  }

  else
  {
    return 0;
  }
}

uint64_t AUMicSense::ValidFormat(AUMicSense *this, const AudioStreamBasicDescription *a2, int a3, AudioStreamBasicDescription *a4)
{
  if (a2 == 2 && a3 == 1)
  {
    if (ausdk::ASBD::IsCommonFloat32(a4, a2))
    {
      v5 = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
    }

    else
    {
      v5 = 0;
    }

    return a4->mChannelsPerFrame < 9 && v5;
  }

  else
  {
    mBitsPerChannel = a4->mBitsPerChannel;
    v8 = mBitsPerChannel == 32 || mBitsPerChannel == 64;
    mFormatID = a4->mFormatID;
    if (mFormatID != 1819304813 && mFormatID != 1718773105)
    {
      v8 = 0;
    }

    if (a4->mChannelsPerFrame - 1 >= 8)
    {
      v8 = 0;
    }

    return *&v8 & ((a4->mFormatFlags & 0x20) >> 5);
  }
}

uint64_t AUMicSense::SupportedNumChannels(AUMicSense *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMicSense::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 8;
}

double AUMicSense::GetLatency(AUMicSense *this)
{
  v1 = *(this + 132);
  if (v1)
  {
    v2 = 0;
    v3 = *(this + 67);
    while (1)
    {
      v4 = *v3;
      *(v4 + 48) = 0;
      if ((*(v4 + 142) & 1) == 0)
      {
        v6 = *(v4 + 56);
        if ((v6 - 1) < 3)
        {
          v5 = (*(v4 + 96) >> 1) - *(v4 + 104);
          goto LABEL_11;
        }

        if ((v6 - 4) < 2)
        {
          v5 = *(v4 + 96) >> 1;
LABEL_11:
          *(v4 + 48) = v5;
          goto LABEL_12;
        }

        if (v6 == 6)
        {
          v5 = *(v4 + 24);
          goto LABEL_11;
        }
      }

      LODWORD(v5) = 0;
LABEL_12:
      if (v2 <= v5)
      {
        v2 = v5;
      }

      v3 += 22;
      if (!--v1)
      {
        goto LABEL_17;
      }
    }
  }

  v2 = 0;
LABEL_17:
  if (*(this + 612))
  {
    v2 += *(this + 154);
  }

  return v2 / AUDspLib::GetSampleRate(this);
}

uint64_t AUMicSense::GetParameterValueStrings(AUMicSense *this, int a2, int a3, const __CFArray **a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((a2 & 0xFFFFFFFB) != 0)
  {
    return 4294956418;
  }

  if (!a4)
  {
    return 0;
  }

  if (a3 == 1)
  {
    v8[0] = xmmword_1E866C538;
    v8[1] = *&off_1E866C548;
    v8[2] = xmmword_1E866C558;
    v9 = @"Frequency Domain 10.00ms";
    v6 = 7;
    goto LABEL_10;
  }

  if (a3 == 2)
  {
    *&v8[0] = @"FFT";
    v6 = 1;
LABEL_10:
    v7 = CFArrayCreate(0, v8, v6, 0);
    result = 0;
    *a4 = v7;
    return result;
  }

  return 4294956418;
}

uint64_t AUMicSense::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    v4 = *(this + 132);
    if (v4)
    {
      v5 = (this[67] + 56);
      do
      {
        ++*v5;
        v5 += 44;
        --v4;
      }

      while (v4);
    }

    return 0;
  }

  return result;
}

uint64_t AUMicSense::SaveExtendedScopes(AUMicSense *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUMicSense::GetParameterInfo(AUMicSense *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  result = 4294956418;
  if ((a2 & 0xFFFFFFFB) == 0 && a3 <= 0xD)
  {
    v5 = AUMicSense::kUserParameter[a3];
    buffer->unit = AUMicSense::kParameterUnit[v5];
    v6 = MicSense_Core::kMaxValue[v5];
    LODWORD(buffer->minValue) = MicSense_Core::kMinValue[v5];
    buffer->maxValue = v6;
    buffer->defaultValue = AUMicSense::kUserParameterDefault[a3];
    v7 = *(&AUMicSense::kParameterName + v5);
    buffer->cfNameString = v7;
    buffer->flags = -914358272;
    CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
    return 0;
  }

  return result;
}

uint64_t AUMicSense::SetBusCount(AUMicSense *this, int a2, unsigned int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    if (a3 - 1 <= 1)
    {
      v4 = (this + 128);
      v5 = a3;
      goto LABEL_7;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294956445;
    }

    v9 = 136315650;
    v10 = "AUMicSense.cpp";
    v11 = 1024;
    v12 = 323;
    v13 = 1024;
    v14 = a3;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d Invalid number (%u) of output buses requested. We only support 1–2 buses.";
    goto LABEL_13;
  }

  if (a2 != 1)
  {
    return 4294956430;
  }

  if (a3 == 1)
  {
    v4 = (this + 80);
    v5 = 1;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements(v4, v5);
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "AUMicSense.cpp";
    v11 = 1024;
    v12 = 314;
    v13 = 1024;
    v14 = a3;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d Invalid number (%u) of input buses requested. We only support 1 bus.";
LABEL_13:
    _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, v8, &v9, 0x18u);
  }

  return 4294956445;
}

uint64_t AUMicSense::BusCountWritable(AUMicSense *this, int a2)
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

ausdk::AUInputElement *AUMicSense::Render(AUMicSense *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, &v21, a3, 0, a4);
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

    v22[0] = *(Element + 152) + 48;
    v11 = *(this + 21);
    if (v11)
    {
      v11 = (*(*v11 + 24))(v11);
      LODWORD(v12) = v11;
    }

    else
    {
      v12 = (*(this + 19) - *(this + 18)) >> 3;
    }

    v13 = v12;
    MEMORY[0x1EEE9AC00](v11);
    v16 = &v20[-v15];
    if (v14 >= 0x200)
    {
      v17 = 512;
    }

    else
    {
      v17 = v14;
    }

    bzero(&v20[-v15], v17);
    if (v12)
    {
      v18 = 0;
      do
      {
        v19 = ausdk::AUScope::GetElement((this + 128), v18);
        if (!v19)
        {
          ausdk::Throw(0xFFFFD583);
        }

        if (!*(v19 + 144))
        {
          ausdk::Throw(0xFFFFFFFFLL);
        }

        *&v16[8 * v18++] = *(v19 + 152) + 48;
      }

      while (v13 != v18);
    }

    return (*(*this + 184))(this, a2, a4, 1, v22, v13, v16);
  }

  return result;
}

uint64_t AUMicSense::ProcessMultipleBufferLists(AUMicSense *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7, __n128 a8)
{
  if (*(this + 720))
  {
    v13 = *(this + 176);
    if (v13)
    {
      v14 = 0;
      v15 = 16;
      do
      {
        v16 = *(&(*a5)->mNumberBuffers + v15);
        v17 = *(&(*a7)->mNumberBuffers + v15);
        if (v16 != v17)
        {
          memcpy(v17, v16, 4 * (a3 << *(this + 721)));
          v13 = *(this + 176);
        }

        ++v14;
        v15 += 16;
      }

      while (v14 < v13);
    }

    if (a6 <= 1 || !a7[1])
    {
      return 0;
    }

    Element = ausdk::AUScope::GetElement((this + 128), 1u);
    if (Element)
    {
      v19 = *(Element + 108);
      v20 = *(this + 176);
      if (v20 >= v19)
      {
        v20 = *(Element + 108);
      }

      if (v20)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = a7[1] + v21;
          v24 = *(v23 + 2);
          v25 = *(v23 + 3) >> 2;
          __A = 1.0;
          vDSP_vfill(&__A, v24, 1, v25);
          ++v22;
          LODWORD(v26) = *(this + 176);
          if (v26 >= v19)
          {
            v26 = v19;
          }

          else
          {
            v26 = v26;
          }

          v21 += 16;
        }

        while (v22 < v26);
      }

      return 0;
    }

LABEL_62:
    ausdk::Throw(0xFFFFD583);
  }

  v59 = a3;
  v27 = *(this + 132);
  if (v27)
  {
    v28 = 0;
    for (i = 0; i < v27; ++i)
    {
      v30 = *(this + 67) + v28;
      v31 = *(v30 + 56);
      if (v31 != *(v30 + 60))
      {
        *(v30 + 60) = v31;
        AUMicSense::syncParametersWithCore(this, i);
        v27 = *(this + 132);
      }

      v28 += 176;
    }
  }

  if (*(this + 612))
  {
    v58 = a6;
    BlockProcessor::Process(*(this + 78), v59, a5, a7);
  }

  else
  {
    if (*(this + 179) != v59)
    {
      return 4294956428;
    }

    v58 = a6;
    v32 = *(this + 154);
    if (v59 % v32)
    {
      __assert_rtn("ProcessMultipleBufferLists", "AUMicSense.cpp", 781, "inFramesToProcess % mBlockSize == 0");
    }

    if (v59)
    {
      v33 = 0;
      v34 = 4 * (v32 << *(this + 721));
      LODWORD(v35) = *(this + 176);
      do
      {
        if (v35)
        {
          v36 = 0;
          v37 = 0;
          v38 = 8;
          v39 = 16;
          do
          {
            v40 = *(this + 67);
            if (*(this + 152))
            {
              v41 = *(v40 + v38);
            }

            else
            {
              v41 = (*(v40 + 8) + v36);
            }

            memcpy(*v41, (*(&(*a5)->mNumberBuffers + v39) + 4 * v33), v34);
            ++v37;
            v35 = *(this + 176);
            v39 += 16;
            v38 += 176;
            v36 += 24;
          }

          while (v37 < v35);
        }

        if (*(this + 132))
        {
          v42 = 0;
          v43 = 0;
          do
          {
            MicSense_Core::process(*(*(this + 67) + v42), *(this + 67) + v42 + 8, (*(this + 67) + v42 + 32), *(this + 154), a8);
            ++v43;
            v42 += 176;
          }

          while (v43 < *(this + 132));
          LODWORD(v35) = *(this + 176);
        }

        if (v35)
        {
          v44 = 0;
          v45 = 0;
          v46 = 16;
          v47 = 32;
          do
          {
            v48 = *(this + 67);
            if (*(this + 152))
            {
              v49 = *(v48 + v47);
            }

            else
            {
              v49 = (*(v48 + 32) + v44);
            }

            memcpy((*(&(*a7)->mNumberBuffers + v46) + 4 * v33), *v49, v34);
            ++v45;
            v35 = *(this + 176);
            v47 += 176;
            v44 += 24;
            v46 += 16;
          }

          while (v45 < v35);
        }

        v50 = *(this + 154);
        v33 += v50;
        v59 -= v50;
      }

      while (v59);
    }
  }

  if (v58 < 2 || !a7[1])
  {
    return 0;
  }

  v51 = ausdk::AUScope::GetElement((this + 128), 1u);
  if (!v51)
  {
    goto LABEL_62;
  }

  v52 = *(v51 + 108);
  v53 = *(this + 176);
  if (v53 >= v52)
  {
    v53 = *(v51 + 108);
  }

  if (!v53)
  {
    return 0;
  }

  v54 = 0;
  for (j = 16; ; j += 16)
  {
    result = (*(*this + 88))(this, 1004, 4 * (*(this + 152) == 1), v54, *(&a7[1]->mNumberBuffers + j));
    if (result)
    {
      break;
    }

    ++v54;
    LODWORD(v57) = *(this + 176);
    if (v57 >= v52)
    {
      v57 = v52;
    }

    else
    {
      v57 = v57;
    }

    if (v54 >= v57)
    {
      return 0;
    }
  }

  return result;
}

void AUMicSense::syncParametersWithCore(AUMicSense *this, uint64_t a2)
{
  v4 = 0;
  v5 = 176 * a2;
  do
  {
    v6 = *(*(this + 67) + v5);
    v7 = AUMicSense::kUserParameter[v4];
    if (*(this + 152))
    {
      Element = ausdk::AUScope::GetElement((this + 560), a2);
    }

    else
    {
      Element = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v9 & 1) == 0)
      {
        abort();
      }
    }

    Parameter = ausdk::AUElement::GetParameter(Element, v4);
    if (MicSense_Core::kMaxValue[v7] < Parameter)
    {
      Parameter = MicSense_Core::kMaxValue[v7];
    }

    if (Parameter < *&MicSense_Core::kMinValue[v7])
    {
      Parameter = *&MicSense_Core::kMinValue[v7];
    }

    *(*v6 + 4 * v7) = Parameter;
    ++v4;
  }

  while (v4 != 14);
  v12 = *(*(this + 67) + 176 * a2);

  MicSense_Core::setParameters(v12, v10);
}

uint64_t AUMicSense::SetParameter(AUMicSense *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a4 > 8)
  {
    return 4294956419;
  }

  if (a2 > 0xE)
  {
    return 4294956418;
  }

  if (a3 == 4)
  {
    if (*(this + 152) == 1)
    {
      Element = ausdk::AUScope::GetElement((this + 560), a4);
      ausdk::AUElement::SetParameter(Element, a2, a5);
      if (*(this + 17) == 1 && *(this + 132) > a4)
      {
        v11 = *(this + 67) + 176 * a4;
        goto LABEL_14;
      }
    }
  }

  else if (!a3 && !*(this + 152) && *(this + 17) == 1)
  {
    v11 = *(this + 67);
LABEL_14:
    ++*(v11 + 56);
  }

  return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
}

uint64_t AUMicSense::SetProperty(AUMicSense *this, int a2, int a3, unsigned int a4, const __CFNumber **a5, unsigned int a6)
{
  if (a3)
  {
    if (a2 == 1000)
    {
      return 4294956430;
    }

    if (a2 == 1003)
    {
      if (*(this + 17))
      {
        return 4294956447;
      }

      else
      {
        return 4294956430;
      }
    }

    return 4294956417;
  }

  if (a2 > 1002)
  {
    if (a2 == 1003)
    {
      if (*(this + 17))
      {
        return 4294956447;
      }

      v30 = *a5;
      v37[0] = 0;
      CFNumberGetValue(v30, kCFNumberSInt64Type, v37);
      v7 = 0;
      *(this + 152) = v37[0];
      return v7;
    }

    if (a2 != 3700)
    {
      return 4294956417;
    }

    if (a6 >= 4)
    {
      v7 = 0;
      *(this + 376) = *a5;
      return v7;
    }

    return 4294956445;
  }

  if (a2 == 21)
  {
    if (a6 == 4)
    {
      v7 = 0;
      *(this + 720) = *a5 != 0;
      return v7;
    }

    return 4294956445;
  }

  if (a2 != 1000)
  {
    return 4294956417;
  }

  if (!a5)
  {
    return 4294956445;
  }

  v8 = *a5;
  if (!*a5)
  {
    return 4294956445;
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(v8, @"SampleRate");
  if (!CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Failed to retrieve sample rate from input dictionary.", -1);
    goto LABEL_66;
  }

  *(this + 159) = valuePtr;
  v40 = 0;
  v10 = CFDictionaryGetValue(v8, @"BlockSize");
  if (!CFNumberGetValue(v10, kCFNumberIntType, &v40))
  {
    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Failed to retrieve block size used from input dictionary.", -1);
    goto LABEL_66;
  }

  *(this + 158) = v40;
  v39 = 0;
  v11 = CFDictionaryGetValue(v8, @"NumberOfChannels");
  if (!CFNumberGetValue(v11, kCFNumberIntType, &v39))
  {
    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Failed to retrieve number of channels from input dictionary.", -1);
LABEL_66:
  }

  v12 = v39;
  *(this + 160) = v39;
  v13 = (this + 648);
  std::vector<std::vector<float>>::resize(this + 81, v12);
  std::string::basic_string[abi:ne200100]<0>(v37, "NoiseProfile");
  v14 = v39;
  if (v39)
  {
    v15 = 0;
    while (1)
    {
      std::to_string(&v34, v15);
      if ((v38 & 0x80u) == 0)
      {
        v16 = v37;
      }

      else
      {
        v16 = v37[0];
      }

      if ((v38 & 0x80u) == 0)
      {
        v17 = v38;
      }

      else
      {
        v17 = v37[1];
      }

      v18 = std::string::insert(&v34, 0, v16, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v36 = v18->__r_.__value_.__r.__words[2];
      *__p = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (v36 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      v21 = CFStringCreateWithCString(0, v20, 0x8000100u);
      v22 = CFDictionaryGetValue(v8, v21);
      CFRelease(v21);
      if (!v22)
      {
        v32 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v32, "Failed to retrieve noise profile from input dictionary.", -1);
      }

      Length = CFDataGetLength(v22);
      v24 = Length >> 2;
      if (Length >> 2 != v40 + 1)
      {
        break;
      }

      std::vector<float>::resize((*v13 + 24 * v15), v24);
      BytePtr = CFDataGetBytePtr(v22);
      if (Length >= 4)
      {
        v26 = *(*v13 + 24 * v15);
        if (v24 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v24;
        }

        do
        {
          v28 = *BytePtr;
          BytePtr += 4;
          *v26++ = bswap32(v28);
          --v27;
        }

        while (v27);
      }

      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

      ++v15;
      v14 = v39;
      if (v15 >= v39)
      {
        goto LABEL_38;
      }
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_56;
  }

LABEL_38:
  if (*(this + 17) == 1)
  {
    if (*(this + 176) != v14)
    {
LABEL_56:
      v29 = 0;
      v7 = 4294956445;
      goto LABEL_57;
    }

    AUMicSense::syncPropertiesWithCore(this);
  }

  v7 = 0;
  v29 = 1;
LABEL_57:
  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (v29)
  {
    v7 = 0;
    *(this + 696) = 1;
  }

  return v7;
}

void sub_1DDE83700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUMicSense::syncPropertiesWithCore(AUMicSense *this)
{
  v2 = *(this + 82) - *(this + 81);
  v3 = *(this + 176);
  if (0xAAAAAAAAAAAAAAABLL * (v2 >> 3) == v3 && *(this + 85) - *(this + 84) == v2 && *(this + 159) && *(this + 158))
  {
    v5 = (this + 672);
    if (v3)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v29 = 0;
        *__p = 0u;
        v28 = 0u;
        LODWORD(v1) = *(this + 159);
        v8 = (*(this + 81) + v6);
        v9 = *(this + 158);
        if (v8 != __p)
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, *v8, v8[1], (v8[1] - *v8) >> 2);
        }

        *&v10 = v1;
        *(&v28 + 1) = v1;
        v29 = 2 * v9;
        LODWORD(v10) = *(this + 175);
        SpectralProfile::GetProfile(&v25, v10, __p, *(this + 154) + 1, 0.0, 2 * *(this + 154));
        v12 = *v5;
        v13 = *v5 + v6;
        v14 = *v13;
        if (*v13)
        {
          *(v13 + 8) = v14;
          operator delete(v14);
          *v13 = 0;
          *(v13 + 8) = 0;
          *(v13 + 16) = 0;
          v12 = *v5;
        }

        HIDWORD(v15) = DWORD1(v25);
        *v13 = v25;
        *(v13 + 16) = v26;
        LODWORD(v15) = *(this + 159);
        LODWORD(v11) = *(this + 175);
        *&v15 = v11 / fmax(v15, 1.0);
        LODWORD(v25) = v15;
        MEMORY[0x1E12BE940](*(v12 + v6), 1, &v25, *(v12 + v6), 1, (*(v12 + v6 + 8) - *(v12 + v6)) >> 2);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        ++v7;
        v6 += 24;
      }

      while (v7 < *(this + 176));
    }

    if (*(this + 152))
    {
      v16 = *(this + 132);
      if (v16)
      {
        for (i = 0; i < v16; ++i)
        {
          v18 = *(this + 84) + 24 * i;
          v19 = *(v18 + 8);
          if (*(this + 154) + 1 == (v19 - *v18) >> 2 && v19 != *v18)
          {
            v20 = *(*(this + 67) + 176 * i);
            v21 = v20[8];
            if (v21)
            {
              v22 = 0;
              for (j = 0; j < v21; ++j)
              {
                v24 = v20[5];
                if (v24)
                {
                  memmove(*(v20[63] + v22), *v18, 4 * v24);
                  v21 = v20[8];
                }

                v22 += 24;
              }

              v16 = *(this + 132);
            }
          }
        }
      }
    }

    else if (*(this + 154) + 1 == (*(*(this + 84) + 8) - **(this + 84)) >> 2)
    {
      MicSense_Core::setNoiseProfile(**(this + 67), this + 84);
    }
  }
}

void sub_1DDE83A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUMicSense::GetProperty(AUMicSense *this, int a2, int a3, unsigned int a4, CFDataRef *__b)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (a2 > 1002)
    {
      switch(a2)
      {
        case 1003:
          result = 0;
          v11 = *(this + 152);
          break;
        case 1004:
          goto LABEL_25;
        case 3700:
          result = 0;
          v11 = *(this + 376);
          break;
        default:
          return 4294956417;
      }
    }

    else
    {
      if (a2 != 21)
      {
        if (a2 == 1001)
        {
          *bytes = 65792;
          strcpy(v21, "Oct 12 2025");
          strcpy(v22, "21:27:21");
          v22[3] = *(this + 152);
          v13 = CFDataCreate(0, bytes, 44);
LABEL_36:
          v14 = v13;
          result = 0;
          *__b = v14;
          return result;
        }

LABEL_8:
        if (a2 == 1002)
        {
          if (*(this + 17) == 1)
          {
            v9 = *(this + 152);
            if ((!a3 || v9) && (a3 == 4 || v9 != 1))
            {
              if (a4 <= 7)
              {
                AUMicSense::updateStatus(this, a4);
                if (*(this + 152))
                {
                  v10 = *(this + 67) + 176 * a4;
                }

                else
                {
                  v10 = *(this + 67);
                }

                v13 = CFDataCreate(0, *(v10 + 152), *(v10 + 160) - *(v10 + 152));
                goto LABEL_36;
              }

              return 4294956419;
            }

            return 4294956430;
          }

          return 4294956429;
        }

        return 4294956417;
      }

      result = 0;
      v11 = *(this + 720);
    }

    *__b = v11;
    return result;
  }

  result = 4294956430;
  if (a2 > 1002)
  {
    if (a2 == 1003)
    {
      return result;
    }

    if (a2 != 1004)
    {
      return 4294956417;
    }

LABEL_25:
    if (*(this + 17) == 1)
    {
      v12 = *(this + 152);
      if ((!a3 || v12) && (a3 == 4 || v12 != 1))
      {
        if (a4 <= 7)
        {
          v15 = v12 == 0;
          if (v12)
          {
            v16 = 0;
          }

          else
          {
            v16 = a4;
          }

          if (v15)
          {
            v17 = 0;
          }

          else
          {
            v17 = a4;
          }

          if (*(this + 720) == 1)
          {
            v18 = *(this + 84);
            if (v18)
            {
              memset_pattern16(__b, &unk_1DE095DF0, 4 * v18);
            }
          }

          else
          {
            v19 = *(this + 154);
            if (v19 != *(this + 84))
            {
              return 4294956446;
            }

            if (v19)
            {
              memmove(__b, *(*(*(*(this + 67) + 176 * v17) + 480) + 24 * v16), 4 * v19);
            }
          }

          return 0;
        }

        return 4294956419;
      }

      return 4294956430;
    }

    return 4294956429;
  }

  if (a2 != 1001)
  {
    goto LABEL_8;
  }

  return result;
}

float32x2_t AUMicSense::updateStatus(AUMicSense *this, unsigned int a2)
{
  v3 = *(this + 152);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  if (v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(this + 67) + 176 * v5);
  v7 = *(v6 + 24);
  v8 = *(v6 + 96);
  *(*(this + 67) + 176 * v5 + 88) = AUDspLib::GetSampleRate(this);
  v9 = (*(*this + 344))(this);
  v10 = *(this + 67) + 176 * v5;
  *(v10 + 96) = v9;
  *(v10 + 104) = v7;
  *(v10 + 108) = v8;
  __B = *(this + 175) / (2 * *(*v10 + 24));
  v11 = (v7 + 1);
  vDSP_vramp(&AUMicSense::updateStatus::kStart, &__B, *(v10 + 112), 1, v11);
  v12 = *(this + 67);
  v13 = v12 + 176 * v5;
  **(v13 + 112) = 1101004800;
  v14 = *v13;
  if (v7 != -1)
  {
    v15 = 4 * (v7 + 1);
    memmove(*(v12 + 176 * v5 + 120), *(v14[57] + 24 * v4), v15);
    v16 = (*(this + 67) + 176 * v5);
    memmove(v16[16], *(*(*v16 + 63) + 24 * v4), v15);
    v17 = (*(this + 67) + 176 * v5);
    memmove(v17[17], *(*(*v17 + 60) + 24 * v4), v15);
    v12 = *(this + 67);
    v14 = *(v12 + 176 * v5);
  }

  if (v14[12] >= v11)
  {
    v18 = (v7 + 1);
  }

  else
  {
    v18 = v14[12];
  }

  if (v18)
  {
    memmove(*(v12 + 176 * v5 + 144), *(v14[66] + 24 * v4), 4 * v18);
    v12 = *(this + 67);
  }

  if (v11 != v18)
  {
    __A = -1.0;
    vDSP_vfill(&__A, (*(v12 + 176 * v5 + 144) + 4 * v18), 1, (v11 - v18));
    v12 = *(this + 67);
  }

  v19 = v12 + 176 * v5;
  v20 = *(v19 + 152);
  result = vcvt_f32_f64(*(v19 + 88));
  v22 = vcvt_f32_u32(*(v19 + 104));
  *v20 = result;
  v20[1] = v22;
  return result;
}

uint64_t AUMicSense::GetPropertyInfo(AUMicSense *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (!a3)
  {
    if (a2 <= 1001)
    {
      if (a2 != 21)
      {
        if (a2 == 1000)
        {
          result = 0;
          *a6 = 1;
        }

        else
        {
          if (a2 != 1001)
          {
            return 4294956417;
          }

          result = 0;
          *a6 = 0;
        }

        v8 = 8;
LABEL_26:
        *a5 = v8;
        return result;
      }
    }

    else if (a2 > 1003)
    {
      if (a2 == 1004)
      {
LABEL_22:
        result = 0;
        *a6 = 1;
        v8 = 4 * *(this + 84);
        goto LABEL_26;
      }

      if (a2 != 3700)
      {
        return 4294956417;
      }
    }

    else if (a2 == 1002)
    {
LABEL_18:
      result = 0;
      *a5 = 8;
      *a6 = 0;
      return result;
    }

    result = 0;
    *a6 = 1;
    v8 = 4;
    goto LABEL_26;
  }

  result = 4294956430;
  if (a2 > 1002)
  {
    if (a2 == 1003)
    {
      return result;
    }

    if (a2 != 1004)
    {
      return 4294956417;
    }

    goto LABEL_22;
  }

  if ((a2 - 1000) < 2)
  {
    return result;
  }

  if (a2 != 1002)
  {
    return 4294956417;
  }

  if ((a3 & 0xFFFFFFFB) == 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t AUMicSense::Reset(AUMicSense *this, uint64x2_t a2)
{
  v3 = *(this + 132);
  if (v3)
  {
    v4 = 0;
    v5 = xmmword_1DE095160;
    do
    {
      v6 = *(*(this + 67) + 176 * v4);
      if (v6)
      {
        v7 = *(v6 + 64);
        v8 = *(v6 + 568);
        v9 = *(v6 + 552);
        if (v7 > (v8 - v9) >> 3)
        {
          if (v9)
          {
            *(v6 + 560) = v9;
            operator delete(v9);
            v8 = 0;
            *(v6 + 552) = 0;
            *(v6 + 560) = 0;
            *(v6 + 568) = 0;
          }

          if (!(v7 >> 61))
          {
            v10 = v8 >> 2;
            if (v8 >> 2 <= v7)
            {
              v10 = v7;
            }

            if (v8 >= 0x7FFFFFFFFFFFFFF8)
            {
              v11 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v11 = v10;
            }

            std::vector<double>::__vallocate[abi:ne200100](v6 + 552, v11);
          }

          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v12 = *(v6 + 560);
        v13 = (v12 - v9) >> 3;
        if (v13 >= v7)
        {
          v14 = *(v6 + 64);
        }

        else
        {
          v14 = (v12 - v9) >> 3;
        }

        if (v14)
        {
          v15 = 0;
          a2 = vdupq_n_s64(v14 - 1);
          do
          {
            v16 = vmovn_s64(vcgeq_u64(a2, vorrq_s8(vdupq_n_s64(v15), v5)));
            if (v16.i8[0])
            {
              *&v9[8 * v15] = 0;
            }

            if (v16.i8[4])
            {
              *&v9[8 * v15 + 8] = 0;
            }

            v15 += 2;
          }

          while (((v14 + 1) & 0xFFFFFFFFFFFFFFFELL) != v15);
        }

        v17 = v7 >= v13;
        v18 = v7 - v13;
        if (v18 != 0 && v17)
        {
          v19 = 0;
          v20 = (8 * v7 - (v12 - v9) - 8) >> 3;
          a2 = vdupq_n_s64(v20);
          do
          {
            v21 = vmovn_s64(vcgeq_u64(a2, vorrq_s8(vdupq_n_s64(v19), v5)));
            if (v21.i8[0])
            {
              *(v12 + 8 * v19) = 0;
            }

            if (v21.i8[4])
            {
              *(v12 + 8 * v19 + 8) = 0;
            }

            v19 += 2;
          }

          while (((v20 + 2) & 0x3FFFFFFFFFFFFFFELL) != v19);
          v22 = (v12 + 8 * v18);
        }

        else
        {
          v22 = &v9[8 * v7];
        }

        *(v6 + 560) = v22;
        v23 = *(v6 + 32);
        LODWORD(v39.realp) = 0;
        std::vector<float>::assign((v6 + 312), v23, &v39, *a2.i8);
        if (*(v6 + 64))
        {
          v24 = 0;
          v25 = 0;
          do
          {
            v26 = *(*(v6 + 616) + 8 * v25);
            if (v26)
            {
              v27 = *(v26 + 104);
              v28 = *(v26 + 128);
              *(v26 + 152) = v27;
              *(v26 + 160) = v28;
              *(v26 + 48) = 1;
              *(v26 + 32) = 0;
              vDSP_vfill(&MicSenseUtils::DynamicFIR<float>::reset(void)::val, v27, 1, *(v26 + 16));
              vDSP_vfill(&MicSenseUtils::DynamicFIR<float>::reset(void)::val, *(v26 + 128), 1, *(v26 + 16));
              vDSP_vfill(&MicSenseUtils::DynamicFIR<float>::reset(void)::val, *(v26 + 80), 1, *(v26 + 16) + *(v26 + 8) - 1);
            }

            v39.realp = *(v6 + 312);
            v39.imagp = v39.realp;
            VPTimeFreqConverter::Synthesize(*(*(v6 + 576) + 8 * v25), &v39, *(v6 + 144));
            v29 = *(v6 + 40);
            v30 = *(v6 + 456);
            v31 = *(v6 + 480);
            v40 = 0;
            std::vector<float>::assign((v30 + v24), v29, &v40, v32);
            v40 = 0;
            std::vector<float>::assign((v31 + v24), v29, &v40, v33);
            v34 = *(v6 + 32);
            v35 = *(v6 + 432);
            v40 = 0;
            std::vector<float>::assign((v35 + v24), v34, &v40, v36);
            ++v25;
            v24 += 24;
          }

          while (*(v6 + 64) > v25);
        }

        v3 = *(this + 132);
        v5 = xmmword_1DE095160;
      }

      ++v4;
    }

    while (v4 < v3);
  }

  v37 = *(this + 78);
  if (v37)
  {
    BlockProcessor::Reset(v37);
  }

  return 0;
}

uint64_t AUMicSense::Initialize(AUMicSense *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = Element, (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = *(v3 + 88);
  *(this + 721) = v5 == 1718773105;
  if (v5 != 1819304813 && v5 != 1718773105)
  {
    return 4294956428;
  }

  v7 = v4;
  v8 = *(v3 + 108);
  v9 = *(v4 + 108);
  v39 = 0;
  v10 = (*(*this + 376))(this, &v39);
  if (!v10)
  {
    return 4294956428;
  }

  v11 = v10;
  for (i = (v39 + 2); v8 != *(i - 1) || v9 != *i; i += 2)
  {
    if (!--v11)
    {
      return 4294956428;
    }
  }

  if (*(v3 + 80) != *(v7 + 80))
  {
    return 4294956428;
  }

  *(this + 176) = v8;
  *(this + 177) = v9;
  v14 = (AUDspLib::GetSampleRate(this) + 0.5);
  *(this + 175) = v14;
  v15 = *(this + 84);
  *(this + 179) = v15;
  if (*(this + 721) == 1)
  {
    *(this + 612) = 0;
    *(this + 154) = v15;
  }

  else
  {
    if (*(this + 376) != 1 || (PreferredBlockSize = MicSense_Core::getPreferredBlockSize(v14, v15)) == 0)
    {
      *(this + 612) = 1;
      *(this + 154) = MicSense_Core::getPreferredBlockProcessorSize(v14);
      v38 = 1;
      v37 = this + 704;
      MicSenseUtils::create<BlockProcessor,std::unique_ptr<BlockProcessor>,int,unsigned int *,int,unsigned int *,unsigned int &,int (&)(void *,unsigned int,AudioBufferList const**,AudioBufferList**),AUMicSense *>(this + 78);
    }

    *(this + 154) = PreferredBlockSize;
    *(this + 612) = 0;
  }

  v17 = *(this + 152);
  if (v17 == 1)
  {
    v18 = *(this + 176);
    *(this + 132) = v18;
  }

  else
  {
    if (v17)
    {
      return 4294956445;
    }

    v18 = 1;
    *(this + 132) = 1;
    v17 = *(this + 176);
  }

  *(this + 178) = v17;
  v19 = *(this + 68);
  v20 = *(this + 67);
  v21 = 0x2E8BA2E8BA2E8BA3 * ((v19 - v20) >> 4);
  v22 = v18 >= v21;
  v23 = v18 - v21;
  if (v23 != 0 && v22)
  {
    v24 = *(this + 69);
    if (0x2E8BA2E8BA2E8BA3 * ((v24 - v19) >> 4) < v23)
    {
      v25 = 0x2E8BA2E8BA2E8BA3 * ((v24 - v20) >> 4);
      v26 = 2 * v25;
      if (2 * v25 <= v18)
      {
        v26 = v18;
      }

      if (v25 >= 0xBA2E8BA2E8BA2ELL)
      {
        v27 = 0x1745D1745D1745DLL;
      }

      else
      {
        v27 = v26;
      }

      if (v27 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = v19 + 176 * v23;
    do
    {
      *(v19 + 48) = 0;
      *(v19 + 16) = 0uLL;
      *(v19 + 32) = 0uLL;
      *v19 = 0uLL;
      *(v19 + 56) = 1;
      *(v19 + 60) = 0uLL;
      *(v19 + 76) = 0uLL;
      *(v19 + 92) = 0uLL;
      *(v19 + 108) = 0uLL;
      *(v19 + 124) = 0uLL;
      *(v19 + 140) = 0uLL;
      *(v19 + 156) = 0uLL;
      *(v19 + 172) = 0;
      v19 += 176;
    }

    while (v19 != v29);
    *(this + 68) = v29;
  }

  else if (!v22)
  {
    v28 = v20 + 176 * v18;
    while (v19 != v28)
    {
      v19 -= 176;
      std::allocator_traits<std::allocator<AUMicSense::MicSenseInfo>>::destroy[abi:ne200100]<AUMicSense::MicSenseInfo,void,0>(v19);
    }

    *(this + 68) = v28;
  }

  if (*(this + 132))
  {
    operator new();
  }

  std::vector<std::vector<float>>::resize(this + 84, *(this + 176));
  AUMicSense::syncPropertiesWithCore(this);
  if (*(this + 132))
  {
    v31 = 0;
    v32 = 0;
    v33 = *(this + 154);
    v34 = *(this + 67);
    do
    {
      LODWORD(v37) = 0;
      std::vector<float>::assign((v34 + v31 + 152), (5 * v33 + 9), &v37, v30);
      v34 = *(this + 67);
      v35 = (v34 + v31);
      v36 = *(v34 + v31 + 152) + 16;
      v35[14] = v36;
      v33 = *(this + 154);
      v35[15] = v36 + 4 * (v33 + 1);
      v35[16] = v36 + 4 * (2 * v33 + 2);
      v35[17] = v36 + 4 * (3 * v33 + 3);
      v35[18] = v36 + 4 * (4 * v33 + 4);
      ++v32;
      v31 += 176;
    }

    while (v32 < *(this + 132));
  }

  return 0;
}

void MicSenseUtils::create<BlockProcessor,std::unique_ptr<BlockProcessor>,int,unsigned int *,int,unsigned int *,unsigned int &,int (&)(void *,unsigned int,AudioBufferList const**,AudioBufferList**),AUMicSense *>(void *a1)
{
  if (*a1)
  {
    operator new();
  }

  operator new();
}

uint64_t *std::unique_ptr<MicSense_Core>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 640);
    if (v3)
    {
      CFilterBank::filterbank_destroy(v3);
      *(v2 + 640) = 0;
    }

    v4 = *(v2 + 704);
    if (v4)
    {
      *(v2 + 712) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 680);
    if (v5)
    {
      *(v2 + 688) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 656);
    if (v6)
    {
      *(v2 + 664) = v6;
      operator delete(v6);
    }

    v22 = (v2 + 616);
    std::vector<std::unique_ptr<MicSenseUtils::DynamicFIR<float>>>::__destroy_vector::operator()[abi:ne200100](&v22);
    std::unique_ptr<MicSenseUtils::GainsToFIR>::reset[abi:ne200100]((v2 + 608), 0);
    v7 = *(v2 + 600);
    *(v2 + 600) = 0;
    if (v7)
    {
      std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](v7);
    }

    v22 = (v2 + 576);
    std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v22);
    v8 = *(v2 + 552);
    if (v8)
    {
      *(v2 + 560) = v8;
      operator delete(v8);
    }

    v22 = (v2 + 528);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v22);
    v22 = (v2 + 504);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v22);
    v22 = (v2 + 480);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v22);
    v22 = (v2 + 456);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v22);
    v22 = (v2 + 432);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v22);
    v9 = *(v2 + 408);
    if (v9)
    {
      *(v2 + 416) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 384);
    if (v10)
    {
      *(v2 + 392) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 360);
    if (v11)
    {
      *(v2 + 368) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 336);
    if (v12)
    {
      *(v2 + 344) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 312);
    if (v13)
    {
      *(v2 + 320) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 288);
    if (v14)
    {
      *(v2 + 296) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 264);
    if (v15)
    {
      *(v2 + 272) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 240);
    if (v16)
    {
      *(v2 + 248) = v16;
      operator delete(v16);
    }

    v17 = *(v2 + 216);
    if (v17)
    {
      *(v2 + 224) = v17;
      operator delete(v17);
    }

    v18 = *(v2 + 192);
    if (v18)
    {
      *(v2 + 200) = v18;
      operator delete(v18);
    }

    v19 = *(v2 + 168);
    if (v19)
    {
      *(v2 + 176) = v19;
      operator delete(v19);
    }

    v20 = *(v2 + 144);
    if (v20)
    {
      *(v2 + 152) = v20;
      operator delete(v20);
    }

    v21 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v21;
      operator delete(v21);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::allocator_traits<std::allocator<AUMicSense::MicSenseInfo>>::destroy[abi:ne200100]<AUMicSense::MicSenseInfo,void,0>(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 8);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return std::unique_ptr<MicSense_Core>::reset[abi:ne200100](a1, 0);
}

uint64_t AUMicSense::BlockProcessClassFunc(AUMicSense *this, void *a2, void *a3, const AudioBufferList **a4, AudioBufferList **a5, __n128 a6)
{
  v7 = a2;
  LODWORD(v9) = *(this + 176);
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 16;
    v14 = 8;
    do
    {
      v15 = *(this + 67);
      if (*(this + 152))
      {
        v16 = *(v15 + v14);
      }

      else
      {
        v16 = (*(v15 + 8) + v11);
      }

      memcpy(*v16, *(*a3 + v13), 4 * v7);
      ++v12;
      v9 = *(this + 176);
      v11 += 24;
      v13 += 16;
      v14 += 176;
    }

    while (v12 < v9);
  }

  if (*(this + 132))
  {
    v17 = 0;
    v18 = 0;
    do
    {
      MicSense_Core::process(*(*(this + 67) + v17), *(this + 67) + v17 + 8, (*(this + 67) + v17 + 32), v7, a6);
      ++v18;
      v17 += 176;
    }

    while (v18 < *(this + 132));
    LODWORD(v9) = *(this + 176);
  }

  if (v9)
  {
    v19 = 0;
    v20 = 0;
    v21 = 4 * v7;
    v22 = 32;
    v23 = 16;
    do
    {
      v24 = *(this + 67);
      if (*(this + 152))
      {
        v25 = *(v24 + v22);
      }

      else
      {
        v25 = (*(v24 + 32) + v19);
      }

      memcpy(*(&(*a4)->mNumberBuffers + v23), *v25, v21);
      ++v20;
      v19 += 24;
      v22 += 176;
      v23 += 16;
    }

    while (v20 < *(this + 176));
  }

  return 0;
}

uint64_t AUMicSense::CreateExtendedElements(AUMicSense *this)
{
  ausdk::AUScope::Initialize((this + 560), this, 4, 8);
  for (i = 0; ; ++i)
  {
    v3 = *(this + 75);
    result = v3 ? (*(*v3 + 24))(v3) : (*(this + 73) - *(this + 72)) >> 3;
    if (i >= result)
    {
      break;
    }

    std::to_string(&v11, i);
    v5 = std::string::insert(&v11, 0, "Channel", 7uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v13 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    if (v13 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
    Element = ausdk::AUScope::GetElement((this + 560), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v8);
    CFRelease(v8);
    v10 = ausdk::AUScope::GetElement((this + 560), i);
    (*(*v10 + 40))(v10, 14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return result;
}

void sub_1DDE850C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUMicSense::~AUMicSense(AUMicSense *this)
{
  AUMicSense::~AUMicSense(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59290E0;
  v2 = (this + 672);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 648);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 78, 0);
  v2 = (this + 576);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 536);
  std::vector<AUMicSense::MicSenseInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  ausdk::AUBase::~AUBase(this);
}

void std::vector<AUMicSense::MicSenseInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<AUMicSense::MicSenseInfo>>::destroy[abi:ne200100]<AUMicSense::MicSenseInfo,void,0>(i))
    {
      i -= 176;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void AUMicSenseNoiseProfile::~AUMicSenseNoiseProfile(AUMicSenseNoiseProfile *this)
{
  v2 = (this + 40);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 16);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void NeuralNetVAD::NeuralNetVAD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 80) = 0u;
  *(a1 + 56) = 629145600;
  *(a1 + 128) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 248) = 0x100000000;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 256) = a3;
  *(a1 + 264) = 0x3F80000000000000;
  operator new();
}

void sub_1DDE87DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  v15 = *a11;
  if (*a11)
  {
    v11[25] = v15;
    operator delete(v15);
  }

  std::unique_ptr<NeuralNet>::reset[abi:ne200100](v13, 0);
  v16 = *a10;
  if (*a10)
  {
    v11[17] = v16;
    operator delete(v16);
  }

  v17 = *(v12 + 24);
  if (v17)
  {
    v11[14] = v17;
    operator delete(v17);
  }

  v18 = *v12;
  if (*v12)
  {
    v11[11] = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void AcousticPasscodeDec_SetRealTimeTunableThresholds(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 76) == 1)
  {
    AcousticPasscodeDec_ResetState(a1, 0);
    *(a2 + 76) = 0;
  }

  v4 = *(a2 + 80);
  v5 = (a1 + 788);
  *(a1 + 788) = v4;
  if (v4 > 0.0)
  {
    v5 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  if (v4 < -100.0)
  {
    v5 = &AUSpeechLevelEstimator::kEchoLevel_dB_Min;
  }

  v6 = *v5;
  *(a1 + 788) = *v5;
  v7 = *(a1 + 392);
  *(a1 + 792) = __exp10f(v6 * 0.05) * v7;
  v8 = (a1 + 504);
  v9 = *(a2 + 84);
  v10 = *(a2 + 88);
  *(a1 + 504) = v9;
  if (v9 > 0.99)
  {
    v8 = &kAUAcousticPasscodeDecMax_ThresholdOnSync;
  }

  if (v9 < 0.0)
  {
    v8 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  *(a1 + 504) = *v8;
  v11 = (a1 + 736);
  *(a1 + 736) = v10;
  if (v10 > 0.99)
  {
    v11 = &kAUAcousticPasscodeDecMax_ThresholdOnSync;
  }

  if (v10 < 0.0)
  {
    v11 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  *(a1 + 736) = *v11;
  v13 = *(a2 + 92);
  v12 = *(a2 + 96);
  v14 = (a1 + 740);
  *(a1 + 740) = v13;
  if (v13 > 20.0)
  {
    v14 = &kParamValue_UppGain_Max;
  }

  if (v13 < 0.0)
  {
    v14 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  *(a1 + 740) = *v14;
  v15 = -10.0;
  if (v12 >= -10.0)
  {
    v15 = 10.0;
    if (v12 <= 10.0)
    {
      v15 = v12;
    }
  }

  *(a1 + 756) = v15;
  v16 = *(a2 + 100);
  v17 = 0.0;
  if (v16 >= 0.0)
  {
    v17 = 2.0;
    if (v16 <= 2.0)
    {
      v17 = *(a2 + 100);
    }
  }

  *(a1 + 760) = v17;
  v18 = *(a2 + 12);
  v19 = (a1 + 1220);
  *(a1 + 1220) = v18;
  if (v18 > 0x14)
  {
    v19 = &kAUAcousticPasscodeMax_NumBits;
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = &kAUAcousticPasscodeMin_NumBits;
  }

  v21 = *v20;
  *(a1 + 1220) = v21;
  if (*(a1 + 148) == 1)
  {
    v21 = *(a1 + 1224);
  }

  *(a1 + 1216) = v21;
  *(a1 + 188) = 0;
}

double AcousticPasscodeDec_ResetState(uint64_t a1, int a2)
{
  *(a1 + 796) = 0;
  *(a1 + 800) = 0;
  *(a1 + 436) = 0;
  *(a1 + 500) = 0;
  *(a1 + 444) = 1;
  if (a2)
  {
    v3 = *(a1 + 424) * *(a1 + 440);
    if (*(a1 + 152) == 1)
    {
      v4 = (a1 + 356);
      if (v3 <= *(a1 + 356))
      {
        v3 = *(a1 + 356);
      }

      v5 = *(a1 + 352);
      v6 = v5 >= v3;
      v7 = v5 - v3;
      if (!v6)
      {
        v7 = 0;
      }

      *(a1 + 352) = v7;
      *(a1 + 368) = 0;
    }

    else
    {
      v8 = *(a1 + 320);
      v9 = v3 + *(a1 + 388);
      if (v9 >= v8)
      {
        v10 = *(a1 + 320);
      }

      else
      {
        v10 = 0;
      }

      v11 = v9 - v10;
      if (v8 < v3)
      {
        v11 = 0;
      }

      *(a1 + 388) = v11;
      v12 = *(a1 + 372);
      v6 = v12 >= v3;
      v13 = v12 - v3;
      if (v6)
      {
        *(a1 + 372) = v13;
      }

      *(a1 + 368) = 0;
      v4 = (a1 + 356);
    }
  }

  else
  {
    if (*(a1 + 156) == 1)
    {
      *(a1 + 336) = 0;
      vDSP_vclr(*(a1 + 328), 1, *(a1 + 320));
    }

    *(a1 + 352) = 0;
    *(a1 + 368) = 0;
    *(a1 + 372) = 0;
    *(a1 + 360) = 0;
    v4 = (a1 + 380);
  }

  *v4 = 0;
  *(a1 + 384) = 0;
  *(a1 + 496) = 0;
  *(a1 + 436) = 0;
  *(a1 + 1228) = 0;
  *(a1 + 1516) = 0;
  memset((a1 + 1232), 48, 20);
  *(a1 + 1208) = 0;
  *(a1 + 1252) = 0u;
  *(a1 + 1268) = 0u;
  *(a1 + 1284) = 0;
  *(a1 + 1436) = 0u;
  *(a1 + 1452) = 0u;
  *(a1 + 1468) = 0;
  *(a1 + 1432) = 0;
  *(a1 + 624) = 0;
  *(a1 + 636) = 0;
  AcousticPasscodeDec_SetRealTimeTunableThresholds(a1, a1 + 8);
  *(a1 + 120) = *(a1 + 436);
  *(a1 + 128) = *(a1 + 1433);
  *(a1 + 124) = *(a1 + 500);
  *(a1 + 129) = *(a1 + 189);
  result = *(a1 + 376);
  *(a1 + 132) = result;
  *(a1 + 140) = *(a1 + 190);
  *(a1 + 142) = *(a1 + 764);
  *(a1 + 188) = 0;
  return result;
}

uint64_t AcousticPasscodeDec_SetPlistOracleBitValuesOnAU(_DWORD *a1)
{
  v2 = a1[304];
  v3 = a1[435];
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (!v4 || (memmove(a1 + 333, a1 + 436, v4), v4 <= 0x13))
  {
    memset(a1 + v4 + 1332, 48, (20 - v4));
  }

  v5 = a1[288];

  return ConvertBitstreamToSymbolStream((a1 + 338), (a1 + 333), (a1 + 267), (a1 + 277), v5, v2);
}

void AcousticPasscodeDec_GetAuxCode(unsigned int *a1, float *__C, int a3)
{
  v3 = __C;
  v4 = a1[132];
  if (a1[a3 + 162])
  {
    v5 = a1[106];
    v6 = a1[a3 + 172];
    if (v6 >= a1[158])
    {
      v6 = a1[158];
    }

    memcpy(__C, *&a1[2 * v6 + 146], 4 * v5);
    v3 += v5;
    v4 -= v5;
  }

  vDSP_vclr(v3, 1, v4);
}

void AcousticPasscodeDec_PrecalculateAndStoreContents(uint64_t a1)
{
  if (*(a1 + 152) == 1 && *(a1 + 1632) == 1 && *(a1 + 148) == 1)
  {
    v2 = *(a1 + 1152);
    v3 = v2 >= 3 ? 3 : v2;
    if (!v2)
    {
      goto LABEL_19;
    }

    v24 = *(a1 + 1152);
    v33 = 0;
    v4 = 0;
    v5 = *(a1 + 1608);
    v6 = (*(a1 + 808) + ~*(a1 + 812));
    v7 = a1 + 1616;
    v26 = v3;
    v27 = a1 + 1108;
    v8 = 4 * v6;
    v25 = a1 + 1616;
    v30 = 4 * (2 * v6);
    v31 = (4 * v6);
    do
    {
      v9 = (v4 << 6) + 96;
      if (*(v7 + v4))
      {
        v10 = *(v27 + 4 * v4);
        if (!v10)
        {
          goto LABEL_14;
        }

        v28 = *(v27 + 4 * v4);
        v29 = (v4 << 6) + 96;
        v11 = 0;
        v12 = 0;
        v32 = 16 * v10;
        do
        {
          v13 = *(a1 + 1640) + v33 + v12;
          *(v13 + 96) = v5;
          *(v13 + 104) = v5 + v8;
          GenerateNextCode(*(a1 + 216), *(a1 + 224), v11, v4, a1 + 848);
          vDSP_vclr((*(a1 + 216) + 4 * *(a1 + 556)), 1, (*(a1 + 560) - *(a1 + 556)));
          v14 = *(a1 + 1640) + v33 + v12;
          v15 = *(v14 + 96);
          v16 = *(v14 + 104);
          v17 = v5;
          v18 = v8;
          v19 = v4;
          v20 = *(a1 + 812);
          MultiRadixRealFFT::RealOutOfPlaceForwardTransform((a1 + 1768), *(a1 + 216), (a1 + 240), 1.0);
          memcpy(v15, (*(a1 + 240) + 4 * v20), v31);
          v21 = (*(a1 + 248) + 4 * v20);
          v4 = v19;
          v8 = v18;
          memcpy(v16, v21, v31);
          v12 += 16;
          ++v11;
          v5 = v17 + v30;
        }

        while (v32 != v12);
        v10 = v28;
        v9 = v29;
        v7 = v25;
        v3 = v26;
        if (v28 <= 3)
        {
LABEL_14:
          bzero((*(a1 + 1640) + v9 + 16 * v10), (64 - 16 * v10));
        }
      }

      else
      {
        v22 = (*(a1 + 1640) + v9);
        v22[2] = 0u;
        v22[3] = 0u;
        *v22 = 0u;
        v22[1] = 0u;
      }

      ++v4;
      v33 += 64;
    }

    while (v4 != v3);
    v2 = v24;
    if (v24 <= 2)
    {
LABEL_19:
      v23 = (*(a1 + 1640) + (v2 << 6) + 96);

      bzero(v23, ((2 - v3) << 6) + 64);
    }
  }
}

float SetTimer(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = a1 + 1656;
  do
  {
    if (!**(v3 + 8 * v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 10);
  if (v2 >= 9)
  {
    LODWORD(v2) = 9;
  }

  v4 = *(v3 + 8 * v2);
  *v4 = 1;
  v5 = *(a1 + 424) * *(a1 + 768);
  v6 = *(a1 + 748) + *(a1 + 744);
  v7 = v5 >= v6;
  v8 = v5 - v6;
  if (!v7)
  {
    v8 = 0;
  }

  v7 = v8 >= a2;
  v9 = v8 - a2;
  v10 = v9;
  if (v9 == 0 || !v7)
  {
    v10 = 0.0;
  }

  *(v4 + 16) = *(a1 + 756) + (v10 / *(a1 + 420));
  *(v4 + 12) = 1;
  result = *(a1 + 760);
  *(v4 + 24) = result;
  *(v4 + 20) = 0;
  return result;
}

BOOL AcousticPasscodeDec_CheckConfirmation(uint64_t a1, unsigned int a2, int a3)
{
  if (*(a1 + 4 * a2 + 648) != 2)
  {
    return 1;
  }

  v19 = v3;
  v20 = v4;
  if (*(a1 + 572) != 1)
  {
    return 1;
  }

  CopyInputCircBufferToBuffer(*(a1 + 216), *(a1 + 328), a3, *(a1 + 528), *(a1 + 320));
  v7 = *(a1 + 536);
  if (v7)
  {
    vDSP_vclr((*(a1 + 216) + 4 * *(a1 + 520)), 1, v7);
  }

  v8 = *(a1 + 1632);
  if (v8 == 1)
  {
    v9 = *(a1 + 4 * a2 + 688);
    if (v9 >= *(a1 + 632))
    {
      v9 = *(a1 + 632);
    }

    v10 = (*(a1 + 1640) + 16 * v9);
    v11 = *(a1 + 1572);
    v12 = *(a1 + 1568);
    v13 = 4 * (v12 + ~v11);
    BandPassFFT(*(a1 + 256), *(a1 + 264), &v18, v12, v11, *(a1 + 532));
    memcpy((*(a1 + 256) + 4 * v11), *v10, v13);
    memcpy((*(a1 + 264) + 4 * v11), v10[1], v13);
  }

  else
  {
    AcousticPasscodeDec_GetAuxCode(a1, *(a1 + 224), a2);
  }

  v18 = 0.0;
  ShiftedMatchedFilterSearch_FreqLim(&v18, &v17, &v16, &v15, v8, *(a1 + 216), *(a1 + 224), *(a1 + 216), (a1 + 240), (a1 + 256), (a1 + 1768), (a1 + 1556), 0);
  return v18 >= *(a1 + 736);
}

uint64_t AcousticPasscodeDec_RunBitDetectAndConfirmation(uint64_t result, int a2)
{
  v2 = *(result + 424);
  if (*(result + 1152) >= 3u)
  {
    v3 = 3;
  }

  else
  {
    v3 = *(result + 1152);
  }

  if (*(result + 1632))
  {
    v4 = v3;
  }

  else
  {
    v4 = *(result + 1152);
  }

  if (*(result + 372) >= v2)
  {
    v5 = a2;
    v6 = result;
    v7 = result + 1108;
    v65 = result + 1616;
    v8 = result + 1252;
    v55 = result + 1068;
    v59 = (result + 1232);
    v60 = result + 1436;
    v64 = *(result + 1208);
    result = 48;
    v53 = v2;
    v58 = v4;
    v56 = v8;
    v57 = v7;
    do
    {
      if (v64 >= v4 || (*(v6 + 1433) & 1) != 0 || *(v6 + 1212) >= *(v6 + 1216))
      {
        return result;
      }

      if (*(v7 + 4 * v64))
      {
        v9 = *(v6 + 740);
        v10 = *(v6 + 1640);
        v11 = *(v6 + 812);
        v12 = *(v6 + 808);
        v13 = *(v6 + 216);
        v14 = *(v6 + 224);
        __dst = *(v6 + 232);
        v15 = *(v6 + 564);
        CopyInputCircBufferToBuffer(v14, *(v6 + 328), *(v6 + 388), *(v6 + 552), *(v6 + 320));
        v16 = *(v6 + 568);
        if (v16)
        {
          vDSP_vclr(v14 + *(v6 + 552), 1, v16);
        }

        MultiRadixRealFFT::RealOutOfPlaceForwardTransform((v6 + 1768), v14, (v6 + 240), 1.0);
        v17 = *(v7 + 4 * v64);
        if (v17)
        {
          v18 = 0;
          v62 = 0;
          v63 = 0;
          v19 = (v10 + (v64 << 6) + 104);
          v20 = 0.0;
          v21 = 0.0;
          do
          {
            v22 = v21;
            if (*(v65 + v64) == 1)
            {
              BandPassFFT(*(v6 + 256), *(v6 + 264), v68, v12, v11, *(v6 + 564));
              memcpy((*(v6 + 256) + 4 * v11), *(v19 - 1), 4 * (v12 + ~v11));
              memcpy((*(v6 + 264) + 4 * v11), *v19, 4 * (v12 + ~v11));
            }

            else
            {
              GenerateNextCode(v13, v14, v18, v64, v6 + 848);
              vDSP_vclr(v13 + *(v6 + 556), 1, (*(v6 + 560) - *(v6 + 556)));
              MultiRadixRealFFT::RealOutOfPlaceForwardTransform((v6 + 1768), v13, (v6 + 256), 1.0);
            }

            BandPass_zvmul((v6 + 256), (v6 + 240), (v6 + 256), v12, v11, v15);
            MultiRadixRealFFT::RealOutOfPlaceInverseTransform((v6 + 1768), (v6 + 256), v13);
            __I = 0;
            __C = 0.0;
            vDSP_maxvi(v13, 1, &__C, &__I, *(v6 + 548));
            v23 = __C;
            if (v18)
            {
              if (v22 >= __C)
              {
                if (__C <= v20)
                {
                  v21 = v22;
                }

                else
                {
                  memcpy(__dst, v13, 4 * *(v6 + 548));
                  v21 = v22;
                  v20 = v23;
                }
              }

              else
              {
                v21 = __C;
                v20 = v22;
                v62 = __I;
                v63 = v18;
              }
            }

            else
            {
              v62 = __I;
              v63 = 0;
              v21 = __C;
            }

            ++v18;
            v19 += 2;
          }

          while (v17 != v18);
          v24 = v20 + 1.0e-20;
          v2 = v53;
          v5 = a2;
          v26 = v62;
          v25 = v63;
        }

        else
        {
          v26 = 0;
          v25 = 0;
          v21 = 0.0;
          v24 = 1.0e-20;
        }

        v28 = v21;
        v29 = v21 / v24;
        v27 = fabsf(v29);
        v4 = v58;
        v8 = v56;
        v7 = v57;
        result = 48;
        if (v27 < v9)
        {
          v30 = v21 * 0.0001;
          v31 = v26 >= 0xF0;
          v32 = v26 - 240;
          if (v31)
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }

          v34 = v33 + 480;
          if ((v33 + 480) >= *(v6 + 548))
          {
            v34 = *(v6 + 548);
          }

          if (v33 < v34)
          {
            v35 = v33 - v34;
            v36 = &__dst[4 * v33];
            do
            {
              v37 = *v36++;
              v38 = v37;
              if (v30 < v37)
              {
                v30 = v38;
              }

              v31 = __CFADD__(v35++, 1);
            }

            while (!v31);
          }

          v39 = v28 / (v30 + 1.0e-20);
          v27 = fabsf(v39);
        }
      }

      else
      {
        v25 = 0;
        v27 = 0.0;
      }

      if (v5 && v27 < *(v6 + 740))
      {
        *(v6 + 436) = 0;
      }

      else if (*(v6 + 436))
      {
        v40 = *(v6 + 1208);
        *(v8 + 4 * v40) = v25;
        *(v60 + 4 * v40) = v27;
        v41 = *(v55 + 4 * v40);
        if (v41)
        {
          v42 = 0;
          v43 = *(v6 + 1516);
          v44 = 1 << (v41 - 1);
          v45 = *(v55 + 4 * v40);
          do
          {
            if (v42 < v43)
            {
              if ((v44 & v25) != 0)
              {
                v46 = 49;
              }

              else
              {
                v46 = 48;
              }

              v59[v43 + v42] = v46;
              v44 >>= 1;
              ++v42;
            }

            --v45;
          }

          while (v45);
          *(v6 + 1516) += v41;
        }

        else
        {
          *(v8 + 4 * v40) = 0;
        }

        *(v6 + 1212) += v41;
        v64 = v40 + 1;
        *(v6 + 1208) = v40 + 1;
        v47 = *(v6 + 372) - v2;
        *(v6 + 372) = v47;
        *(v6 + 356) += v2;
        v48 = *(v6 + 320);
        v49 = *(v6 + 424);
        v50 = v49 + *(v6 + 388);
        if (v50 >= v48)
        {
          v51 = *(v6 + 320);
        }

        else
        {
          v51 = 0;
        }

        v52 = v50 - v51;
        if (v48 < v49)
        {
          v52 = 0;
        }

        *(v6 + 388) = v52;
        continue;
      }

      v64 = 0;
      v47 = 0;
      *(v6 + 372) = 0;
      *(v6 + 748) = 0;
      *(v6 + 384) = 0;
      *(v6 + 1228) = 0;
      *(v6 + 1433) = 0;
      *(v6 + 1516) = 0;
      memset(v59, 48, 20);
      *(v6 + 1208) = 0;
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0;
      *v60 = 0u;
      *(v60 + 16) = 0u;
      *(v60 + 32) = 0;
    }

    while (v47 >= v2);
  }

  return result;
}

uint64_t AcousticPasscodeDec_setParameter(uint64_t result, __int16 a2, float a3)
{
  v3 = a2 & 0x3FFF;
  if (v3 == 250)
  {
    *(result + 4) = a3 != 0.0;
  }

  else
  {
    if (*(result + 156) == 1)
    {
      if (v3 == 1 || v3 == 40 || (v4 = a2 & 0x3FFE, v4 == 38) || v4 == 30 || v4 == 32)
      {
        ++*(result + 408);
      }
    }

    switch(a2 & 0x3FFF)
    {
      case 0:
        *(result + 8) = a3;
        break;
      case 1:
        *(result + 20) = a3;
        break;
      case 2:
        *(result + 24) = a3;
        break;
      case 3:
        *(result + 12) = a3 != 0.0;
        break;
      case 4:
        *(result + 13) = a3 != 0.0;
        break;
      case 5:
        *(result + 14) = a3 != 0.0;
        break;
      case 6:
        *(result + 15) = a3 != 0.0;
        break;
      case 0xA:
        *(result + 28) = a3;
        break;
      case 0xB:
        *(result + 32) = a3 != 0.0;
        break;
      case 0xC:
        *(result + 36) = a3;
        break;
      case 0xD:
        *(result + 44) = a3;
        break;
      case 0xE:
        *(result + 48) = a3;
        break;
      case 0xF:
        *(result + 56) = a3;
        break;
      case 0x10:
        *(result + 52) = a3;
        break;
      case 0x11:
        *(result + 40) = a3;
        break;
      case 0x12:
        *(result + 60) = a3;
        break;
      case 0x13:
        *(result + 64) = a3;
        break;
      case 0x1E:
        *(result + 84) = a3 != 0.0;
        break;
      case 0x1F:
        *(result + 88) = a3;
        break;
      case 0x20:
        *(result + 92) = a3;
        break;
      case 0x21:
        *(result + 96) = a3;
        break;
      case 0x22:
        *(result + 68) = a3;
        break;
      case 0x23:
        *(result + 72) = a3;
        break;
      case 0x24:
        *(result + 76) = a3;
        break;
      case 0x25:
        *(result + 80) = a3;
        break;
      case 0x26:
        *(result + 100) = a3;
        break;
      case 0x27:
        *(result + 108) = a3;
        break;
      case 0x28:
        *(result + 104) = a3;
        break;
      default:
        return result;
    }
  }

  return result;
}

float ecMIMO::fcn_set_gammaX(ecMIMO *this, float a2)
{
  v3 = 0.0;
  if (a2 > 0.0)
  {
    v4 = -(*(this + 11) / *(this + 7)) / a2;
    v3 = expf(v4);
  }

  result = 1.0 - v3;
  *(this + 21) = v3;
  *(this + 22) = 1.0 - v3;
  return result;
}

float ecMIMO::fcn_set_gammaS(ecMIMO *this, float a2)
{
  v3 = 0.0;
  if (a2 > 0.0)
  {
    v4 = -(*(this + 11) / *(this + 7)) / a2;
    v3 = expf(v4);
  }

  *(this + 20) = v3;
  result = 1.0 - v3;
  *(this + 36) = 1.0 - v3;
  return result;
}

float ecMIMO::fcn_get_sxx(ecMIMO *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 32);
    v3 = 0.0;
    v4 = *(this + 4);
    do
    {
      v5 = *v2++;
      v3 = v3 + v5;
      --v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0.0;
  }

  return v3 / v1;
}

float ecMIMO::fcn_get_erle_external_db(ecMIMO *this, unsigned int a2)
{
  __C = 0;
  v3 = 24 * a2;
  vDSP_svesq((*(*(this + 65) + v3) + 4 * *(this + 11)), 1, &__C + 1, *(this + 11));
  vDSP_svesq((*(*(this + 53) + v3) + 4 * *(this + 11)), 1, &__C, *(this + 11));
  return log10f((*(&__C + 1) + *(this + 33)) / (*(this + 33) + *&__C)) * 10.0;
}

float ecMIMO::fcn_get_erle_internal_db(ecMIMO *this, unsigned int a2)
{
  __C = 0;
  v3 = 24 * a2;
  vDSP_svesq((*(*(this + 65) + v3) + 4 * *(this + 11)), 1, &__C + 1, *(this + 11));
  vDSP_svesq((*(*(this + 68) + v3) + 4 * *(this + 11)), 1, &__C, *(this + 11));
  return log10f((*(&__C + 1) + *(this + 33)) / (*(this + 33) + *&__C)) * 10.0;
}

BOOL ecMIMO::fcn_isfinite_ref(ecMIMO *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 1;
  }

  v2 = *(this + 32);
  if ((*v2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  v4 = 0;
  v5 = v2 + 1;
  while (v1 - 1 != v4)
  {
    v6 = v5[v4++] & 0x7FFFFFFF;
    if (v6 >= 2139095040)
    {
      return v4 >= v1;
    }
  }

  v4 = *(this + 4);
  return v4 >= v1;
}

BOOL ecMIMO::fcn_isfinite_output(ecMIMO *this)
{
  __C = 0.0;
  if (!*(this + 3))
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  while (1)
  {
    vDSP_sve((*(*(this + 65) + v2) + 4 * *(this + 11)), 1, &__C, *(this + 11));
    result = (LODWORD(__C) & 0x7FFFFFFFu) < 0x7F800000;
    if ((LODWORD(__C) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      break;
    }

    ++v3;
    v2 += 24;
    if (v3 >= *(this + 3))
    {
      return 1;
    }
  }

  return result;
}

BOOL ecMIMO::fcn_isfinite_state(ecMIMO *this)
{
  __C = 0.0;
  if (!*(this + 3))
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  while (1)
  {
    vDSP_sve((*(*(this + 68) + v2) + 4 * *(this + 11)), 1, &__C, *(this + 11));
    result = (LODWORD(__C) & 0x7FFFFFFFu) < 0x7F800000;
    if ((LODWORD(__C) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      break;
    }

    ++v3;
    v2 += 24;
    if (v3 >= *(this + 3))
    {
      return 1;
    }
  }

  return result;
}

unsigned int *ecMIMO::fcn_tf_output(unsigned int *result, void *a2)
{
  v2 = result[3];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = result[4];
    v7 = result[6];
    v8 = v7;
    v9 = v6;
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v9 * v5 * v8 * v4[9];
        do
        {
          if (v8)
          {
            v12 = 0;
            v13 = v11 + v7 * v10 * v4[9];
            v14 = -1;
            do
            {
              result = memcpy((*a2 + 4 * (v13 + v4[9] * v12++)), *(*(*(*(v4 + 92) + 24 * v5) + 24 * v10) + 24 * (v8 + v14)), 4 * v4[9]);
              v8 = v4[6];
              --v14;
            }

            while (v12 < v8);
            v6 = v4[4];
            v7 = v4[6];
          }

          ++v10;
        }

        while (v10 < v6);
        v2 = v4[3];
        v9 = v6;
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

void ecMIMO::fcn_ir_input(uint64_t a1, uint64_t *a2)
{
  vDSP_vclr(*(a1 + 376), 1, *(a1 + 36));
  v4 = *(a1 + 12);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    v7 = v6;
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = *(a1 + 156);
        v10 = v7 * v5 * *(a1 + 152);
        v11 = v9;
        do
        {
          if (v11)
          {
            v12 = 0;
            v13 = v10 + *(a1 + 152) * v8;
            v14 = -1;
            do
            {
              v15 = *(a1 + 44);
              v16 = v13 + v15 * v12;
              v17 = *a2;
              if (v16 + v15 <= ((a2[1] - *a2) >> 2))
              {
                v18 = v14 + *(a1 + 24);
                v20.realp = 0;
                v20.imagp = 0;
                v20.realp = *(*(*(*(a1 + 736) + 24 * v5) + 24 * v8) + 24 * v18);
                v20.imagp = &v20.realp[v15];
                memcpy(*(a1 + 376), (v17 + 4 * v16), 4 * v15);
                v19 = *(a1 + 952);
                if (v19)
                {
                  MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v19, *(a1 + 376), &v20, 1.0);
                }

                v9 = *(a1 + 156);
              }

              ++v12;
              --v14;
            }

            while (v12 < v9);
            v6 = *(a1 + 16);
            v11 = v9;
          }

          ++v8;
        }

        while (v8 < v6);
        v4 = *(a1 + 12);
        v7 = v6;
      }

      ++v5;
    }

    while (v5 < v4);
  }
}

uint64_t ecMIMO::fcn_ir_output(uint64_t result, void *a2)
{
  v2 = *(result + 12);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = *(result + 16);
    v7 = v6;
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = *(v4 + 156);
        v10 = v7 * v5 * *(v4 + 152);
        do
        {
          if (v9)
          {
            v11 = 0;
            v12 = v10 + *(v4 + 152) * v8;
            v13 = -1;
            do
            {
              v14 = *(v4 + 44);
              v15 = (*(*(*(*(v4 + 736) + 24 * v5) + 24 * v8) + 24 * (v13 + *(v4 + 24))) + 4 * v14);
              v18.realp = *(*(*(*(v4 + 736) + 24 * v5) + 24 * v8) + 24 * (v13 + *(v4 + 24)));
              v18.imagp = v15;
              v16 = *(v4 + 952);
              v17 = v14;
              if (v16)
              {
                MultiRadixRealFFT::RealOutOfPlaceInverseTransform(v16, &v18, *(v4 + 376));
                v17 = *(v4 + 44);
              }

              result = MEMORY[0x1E12BE940](*(v4 + 376), 1, v4 + 108, *a2 + 4 * (v12 + v14 * v11++), 1, v17);
              v9 = *(v4 + 156);
              --v13;
            }

            while (v11 < v9);
            v6 = *(v4 + 16);
          }

          ++v8;
        }

        while (v8 < v6);
        v2 = *(v4 + 12);
        v7 = v6;
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t ecMIMO::ec_proc(ecMIMO *this, const AudioBufferList *a2, const AudioBufferList *a3, const AudioBufferList *a4, AudioBufferList *a5, AudioBufferList *a6, AudioBufferList *a7, int a8)
{
  v180 = 0;
  __C = 0.0;
  bzero(*(this + 23), 4 * *(this + 4));
  LODWORD(v12) = *(this + 4);
  if (v12)
  {
    v13 = 0;
    v173 = 0;
    v175 = a4;
    mBuffers = a7->mBuffers;
    do
    {
      mData = a3->mBuffers[v13].mData;
      v16 = *(*(this + 50) + 24 * v13);
      memcpy(v16, &v16[4 * *(this + 11)], 4 * *(this + 11));
      memcpy((*(*(this + 50) + 24 * v13) + 4 * *(this + 11)), mData, 4 * *(this + 11));
      v17 = *(this + 83);
      v18 = *(this + 13);
      v19 = *(this + 11);
      v190.realp = *(*(v17 + 24 * v13) + 24 * v18);
      v190.imagp = &v190.realp[v19];
      v20 = *(this + 119);
      if (v20)
      {
        MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v20, *(*(this + 50) + 24 * v13), &v190, 1.0);
        v17 = *(this + 83);
        v18 = *(this + 13);
        v19 = *(this + 11);
      }

      v21 = 3 * v18;
      v22 = *(*(v17 + 24 * v13) + 8 * v21);
      if (*(this + 8))
      {
        v23 = 712;
      }

      else
      {
        v23 = 688;
      }

      v24 = *(*(*(this + v23) + 24 * v13) + 8 * v21);
      __A.realp = v22 + 1;
      __A.imagp = &v22[(v19 + 1)];
      vDSP_zvmags(&__A, 1, v24 + 1, 1, (v19 - 1));
      *v24 = *v22 * *v22;
      v24[v19] = v22[v19] * v22[v19];
      *(*(this + 32) + 4 * v13) = 0;
      if (*(this + 6))
      {
        v25 = 0;
        v26 = 0;
        do
        {
          if (*(this + 8))
          {
            v27 = 712;
          }

          else
          {
            v27 = 688;
          }

          vDSP_meanv(*(*(*(this + v27) + 24 * v13) + v25), 1, &__C, *(this + 10));
          *(*(this + 32) + 4 * v13) = *(*(this + 32) + 4 * v13) + __C;
          ++v26;
          v25 += 24;
        }

        while (v26 < *(this + 6));
      }

      memcpy(mBuffers[v13].mData, mData, 4 * *(this + 11));
      v28 = *(this + 32);
      v29 = *(this + 33) + (*(v28 + 4 * v13) / (*(this + 6) * *(this + 9)));
      *(v28 + 4 * v13) = v29;
      if ((log10f(v29) * 10.0) > *(this + 37))
      {
        *(*(this + 23) + 4 * v173++) = v13;
      }

      ++v13;
      v12 = *(this + 4);
    }

    while (v13 < v12);
    a4 = v175;
  }

  else
  {
    v173 = 0;
  }

  if (*(this + 8) == 1)
  {
    if (*(this + 5))
    {
      v30 = 0;
      v31 = 0;
      p_mData = &a4->mBuffers[0].mData;
      do
      {
        v33 = *p_mData;
        memcpy(*(*(this + 56) + v30), (*(*(this + 56) + v30) + 4 * *(this + 11)), 4 * *(this + 11));
        memcpy((*(*(this + 56) + v30) + 4 * *(this + 11)), v33, 4 * *(this + 11));
        v34 = (*(*(this + 59) + v30) + 4 * *(this + 11));
        v185.realp = *(*(this + 59) + v30);
        v185.imagp = v34;
        v35 = *(this + 119);
        if (v35)
        {
          MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v35, *(*(this + 56) + v30), &v185, 1.0);
        }

        ++v31;
        v30 += 24;
        p_mData += 2;
      }

      while (v31 < *(this + 5));
      LODWORD(v12) = *(this + 4);
    }

    if (v12)
    {
      v36 = 0;
      v37 = 0;
      v38 = -1;
      do
      {
        v39 = *(this + 5);
        if (v37 >= v39 >> 1)
        {
          v53 = *(*(*(this + 83) + v36) + 24 * *(this + 13));
          v54 = *(*(*(this + 86) + v36) + 24 * *(this + 13));
          v55 = *(this + 11);
          __A.realp = v53 + 1;
          __A.imagp = &v53[(v55 + 1)];
          vDSP_zvmags(&__A, 1, v54 + 1, 1, (v55 - 1));
          *v54 = *v53 * *v53;
          v54[v55] = v53[v55] * v53[v55];
          LODWORD(__A.realp) = 1065353216;
          vDSP_vfill(&__A, *(*(this + 80) + v36), 1, *(this + 10));
        }

        else
        {
          v40 = 24 * (v38 + v39);
          memcpy(*(*(*(this + 83) + v36) + 24 * *(this + 13)), *(*(this + 59) + v40), 4 * *(this + 9));
          v41 = *(*(*(this + 83) + v36) + 24 * *(this + 13));
          v42 = *(*(*(this + 86) + v36) + 24 * *(this + 13));
          v43 = *(this + 11);
          __A.realp = v41 + 1;
          __A.imagp = &v41[(v43 + 1)];
          vDSP_zvmags(&__A, 1, v42 + 1, 1, (v43 - 1));
          *v42 = *v41 * *v41;
          v42[v43] = v41[v43] * v41[v43];
          v44 = *(this + 59);
          v45 = *(this + 11);
          v46 = (*(v44 + v40) + 4 * v45);
          v184.realp = *(v44 + v40);
          v184.imagp = v46;
          __B.realp = *(v44 + v36);
          __B.imagp = &__B.realp[v45];
          v182.realp = *(this + 35);
          v182.imagp = &v182.realp[v45];
          v181.realp = *(this + 38);
          v181.imagp = &v181.realp[v45];
          vDSP_zvadd(&v184, 1, &__B, 1, &v182, 1, v45);
          vDSP_zvsub(&v184, 1, &__B, 1, &v181, 1, *(this + 11));
          v47 = *(this + 35);
          v48 = *(this + 41);
          v49 = *(this + 11);
          __A.realp = v47 + 1;
          __A.imagp = &v47[(v49 + 1)];
          vDSP_zvmags(&__A, 1, v48 + 1, 1, (v49 - 1));
          *v48 = *v47 * *v47;
          v48[v49] = v47[v49] * v47[v49];
          v50 = *(this + 38);
          v51 = *(this + 44);
          v52 = *(this + 11);
          __A.realp = v50 + 1;
          __A.imagp = &v50[(v52 + 1)];
          vDSP_zvmags(&__A, 1, v51 + 1, 1, (v52 - 1));
          *v51 = *v50 * *v50;
          v51[v52] = v50[v52] * v50[v52];
          vDSP_vthr(*(this + 41), 1, this + 33, *(this + 41), 1, *(this + 10));
          vDSP_vthr(*(this + 44), 1, this + 33, *(this + 44), 1, *(this + 10));
          vDSP_vdiv(*(this + 41), 1, *(this + 44), 1, *(*(this + 80) + v36), 1, *(this + 10));
          vDSP_vclip(*(*(this + 80) + v36), 1, this + 33, this + 29, *(*(this + 80) + v36), 1, *(this + 10));
          LODWORD(__A.realp) = *(this + 10);
          vvsqrtf(*(*(this + 80) + v36), *(*(this + 80) + v36), &__A);
        }

        ++v37;
        v36 += 24;
        --v38;
      }

      while (v37 < *(this + 4));
    }
  }

  if (!v173)
  {
    if (*(this + 3))
    {
      v153 = 0;
      v154 = &a6->mBuffers[0].mData;
      v155 = &a2->mBuffers[0].mData;
      v156 = &a5->mBuffers[0].mData;
      do
      {
        v158 = *v156;
        v156 += 2;
        v157 = v158;
        v160 = *v155;
        v155 += 2;
        v159 = v160;
        v161 = *v154;
        v154 += 2;
        memcpy(v157, v159, 4 * *(this + 11));
        vDSP_vclr(v161, 1, *(this + 11));
        ++v153;
      }

      while (v153 < *(this + 3));
    }

    ecMIMO::fcn_ring_buffer_fwd(this, this + 26);
    *(this + 164) = 0;
    return 0;
  }

  *(this + 164) = 1;
  if (*(this + 3))
  {
    v56 = 0;
    v57 = 0;
    v58 = &a2->mBuffers[0].mData;
    do
    {
      v59 = *v58;
      v58 += 2;
      memcpy((*(*(this + 53) + v56) + 4 * *(this + 11)), v59, 4 * *(this + 11));
      ++v57;
      v56 += 24;
    }

    while (v57 < *(this + 3));
  }

  v60 = *(this + 140);
  v61.i32[0] = vdup_lane_s32(v60, 1).u32[0];
  v61.i32[1] = *(this + 34);
  *(this + 12) = vmla_n_f32(vmul_f32(v60, v61), *(this + 96), *(this + 20));
  LODWORD(v62) = *(this + 40);
  if (v62)
  {
    v63 = 0;
    do
    {
      vDSP_vclr(*(*(this + 77) + 24 * v63), 1, *(this + 10));
      vDSP_vclr(*(*(this + 62) + 24 * v63), 1, *(this + 9));
      for (i = 0; i != v173; ++i)
      {
        v65 = *(this + 23);
        if (i >= (*(this + 24) - v65) >> 2)
        {
LABEL_108:
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v66 = *(v65 + 4 * i);
        if (!v66 || (v67 = (this + 60), v66 >= *(this + 4) - 1))
        {
          v67 = (this + 56);
        }

        if (*(this + 6))
        {
          v68 = 0;
          v69 = 0;
          v70 = *v67;
          do
          {
            v71 = *(*(this + 26) + 4 * v69);
            v72 = *(*(*(*(this + 92) + 24 * v63) + 24 * v66) + v68);
            MEMORY[0x1E12BE940](v72, 1, this + 76, v72, 1, *(this + 9));
            v71 *= 3;
            v73 = *(*(*(this + 83) + 24 * v66) + 8 * v71);
            v74 = *(this + 11);
            v190.realp = (v73 + 4);
            v190.imagp = (v73 + 4 * (v74 + 1));
            v75 = *(*(*(*(this + 92) + 24 * v63) + 24 * v66) + v68);
            __D.realp = (v75 + 4);
            __D.imagp = (v75 + 4 * (v74 + 1));
            v76 = *(*(*(*(this + 104) + 24 * v63) + 24 * v66) + v68);
            v189.realp = (v76 + 4);
            v189.imagp = (v76 + 4 * (v74 + 1));
            vDSP_zvmul(&v190, 1, &__D, 1, &v189, 1, (v74 - 1), 1);
            v77 = *(*(*(this + 83) + 24 * v66) + 8 * v71);
            v78 = *(*(*(*(this + 92) + 24 * v63) + 24 * v66) + v68);
            v79 = *(*(*(*(this + 104) + 24 * v63) + 24 * v66) + v68);
            *v79 = *v77 * *v78;
            v79[*(this + 11)] = v77[*(this + 11)] * v78[*(this + 11)];
            MEMORY[0x1E12BE5D0]();
            ecutils::fcn_smooth_psd(*(*(*(*(this + 95) + 24 * v63) + 24 * v66) + v68), *(*(*(*(this + 101) + 24 * v63) + 24 * v66) + v68), *(this + 17), *(this + 18), 1, v70, *(this + 10));
            MEMORY[0x1E12BE7F0](*(*(*(this + 86) + 24 * v66) + 8 * v71), 1, *(*(*(*(this + 95) + 24 * v63) + 24 * v66) + v68), 1, *(*(*(*(this + 110) + 24 * v63) + 24 * v66) + v68), 1, *(this + 10));
            MEMORY[0x1E12BE5D0](*(*(this + 77) + 24 * v63), 1, *(*(*(*(this + 110) + 24 * v63) + 24 * v66) + v68), 1, *(*(this + 77) + 24 * v63), 1, *(this + 10));
            ecutils::fcn_complex_mult_by_psd(*(*(*(this + 83) + 24 * v66) + 8 * v71), *(*(*(*(this + 95) + 24 * v63) + 24 * v66) + v68), *(*(*(*(this + 98) + 24 * v63) + 24 * v66) + v68), *(this + 11));
            if (*(this + 8) == 1)
            {
              ecutils::fcn_complex_mult_by_psd(*(*(*(*(this + 98) + 24 * v63) + 24 * v66) + v68), *(*(this + 80) + 24 * v66), *(*(*(*(this + 98) + 24 * v63) + 24 * v66) + v68), *(this + 11));
            }

            ++v69;
            v68 += 24;
          }

          while (v69 < *(this + 6));
        }
      }

      v80 = *(this + 11);
      __A.realp = *(*(this + 62) + 24 * v63);
      __A.imagp = &__A.realp[v80];
      ecutils::fcn_otplace_fftReal_inverse(*(this + 119), &__A, *(*(this + 68) + 24 * v63), v80, *(this + 27));
      MEMORY[0x1E12BE9A0](*(*(this + 68) + 24 * v63) + 4 * *(this + 11), 1, *(*(this + 53) + 24 * v63) + 4 * *(this + 11), 1, *(*(this + 65) + 24 * v63) + 4 * *(this + 11), 1);
      v81 = (*(*(this + 71) + 24 * v63) + 4 * *(this + 11));
      v187.realp = *(*(this + 71) + 24 * v63);
      v187.imagp = v81;
      v82 = *(this + 119);
      if (v82)
      {
        MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v82, *(*(this + 65) + 24 * v63), &v187, 1.0);
      }

      v83 = (*(*(this + 74) + 24 * v63) + 4 * *(this + 9));
      v186.realp = *(*(this + 74) + 24 * v63);
      v186.imagp = v83;
      ecMIMO::fcn_hilbert_transform(this, &v187, (*(this + 29) + 4 * v63++), *(this + 120), &v186);
      v62 = *(this + 40);
    }

    while (v63 < v62);
  }

  v84 = *(this + 26);
  if (!v84)
  {
    goto LABEL_75;
  }

  v176 = 0;
  v85 = v62;
  do
  {
    if (!v85)
    {
      goto LABEL_74;
    }

    v86 = 0;
    do
    {
      MEMORY[0x1E12BE8A0](*(*(this + 77) + 24 * v86), 1, *(this + 29) + 4 * v86, *(*(this + 116) + 24 * v86), 1, *(this + 10));
      v87 = *(*(this + 116) + 24 * v86);
      vDSP_svdiv(this + 25, v87, 1, v87, 1, *(this + 10));
      ecutils::fcn_complex_mult_by_psd(*(*(this + 71) + 24 * v86), *(*(this + 116) + 24 * v86), *(*(this + 71) + 24 * v86), *(this + 11));
      vDSP_vclr(*(*(this + 62) + 24 * v86), 1, *(this + 9));
      v88 = 0;
      v89 = *(*(this + 62) + 24 * v86);
      v90 = (v89 + 4);
      v91 = (v89 + 4 * (*(this + 11) + 1));
      __A.realp = v90;
      __A.imagp = v91;
      do
      {
        v92 = *(this + 23);
        if (v88 >= (*(this + 24) - v92) >> 2)
        {
          goto LABEL_108;
        }

        v174 = v88;
        if (*(this + 6))
        {
          v93 = 0;
          v94 = 0;
          v177 = *(v92 + 4 * v88);
          do
          {
            v95 = *(*(this + 26) + 4 * v94);
            v96 = *(this + 113);
            v97 = *(this + 11);
            v98 = *(this + 92);
            if ((*(*(*(v96 + 24 * v86) + 24 * v177) + 8 * (v94 >> 6)) & (1 << v94)) != 0)
            {
              v99 = *(*(*(*(this + 98) + 24 * v86) + 24 * v177) + v93);
              v190.realp = (v99 + 4);
              v190.imagp = (v99 + 4 * (v97 + 1));
              v100 = *(*(this + 71) + 24 * v86);
              v187.realp = (v100 + 4);
              v187.imagp = (v100 + 4 * (v97 + 1));
              v101 = *(*(*(v98 + 24 * v86) + 24 * v177) + v93);
              __D.realp = (v101 + 4);
              __D.imagp = (v101 + 4 * (v97 + 1));
              vDSP_zvcma(&v190, 1, &v187, 1, &__D, 1, &__D, 1, (v97 - 1));
              v102 = *(*(*(*(this + 98) + 24 * v86) + 24 * v177) + v93);
              v103 = *(*(this + 71) + 24 * v86);
              v104 = *(*(*(*(this + 92) + 24 * v86) + 24 * v177) + v93);
              *v104 = *v104 + (*v102 * *v103);
              v105 = *(this + 11);
              v106 = &v104[v105];
              *v106 = *v106 + (v102[v105] * v103[v105]);
              __D.realp = v104;
              __D.imagp = v106;
              vDSP_DFT_Execute(*(this + 122), v104, v106, v104, v106);
              vDSP_vclr(&__D.realp[*(this + 12)], 1, *(this + 12));
              vDSP_vclr(&__D.imagp[*(this + 12)], 1, *(this + 12));
              MEMORY[0x1E12BE940](__D.realp, 1, this + 112, __D.realp, 1, *(this + 12));
              MEMORY[0x1E12BE940](__D.imagp, 1, this + 112, __D.imagp, 1, *(this + 12));
              vDSP_DFT_Execute(*(this + 121), __D.realp, __D.imagp, __D.realp, __D.imagp);
              v97 = *(this + 11);
              v98 = *(this + 92);
              v96 = *(this + 113);
            }

            v107 = *(*(*(this + 83) + 24 * v177) + 24 * v95);
            v190.realp = (v107 + 4);
            v190.imagp = (v107 + 4 * (v97 + 1));
            v108 = *(*(*(v98 + 24 * v86) + 24 * v177) + v93);
            __D.realp = (v108 + 4);
            __D.imagp = (v108 + 4 * (v97 + 1));
            v109 = *(this + 104);
            v110 = *(*(*(v109 + 24 * v86) + 24 * v177) + v93);
            v189.realp = (v110 + 4);
            v189.imagp = (v110 + 4 * (v97 + 1));
            if ((*(*(*(v96 + 24 * v86) + 24 * v177) + 8 * (v94 >> 6)) & (1 << v94)) != 0)
            {
              if (v176 != *(this + 26) - 1)
              {
                v115 = *(*(*(v98 + 24 * v86) + 24 * v177) + v93);
                MEMORY[0x1E12BE940](v115, 1, this + 76, v115, 1, *(this + 9));
                vDSP_zvma(&v190, 1, &__D, 1, &__A, 1, &__A, 1, (*(this + 11) - 1));
                v116 = *(*(*(this + 83) + 24 * v177) + 24 * v95);
                v117 = *(*(*(*(this + 92) + 24 * v86) + 24 * v177) + v93);
                v118 = *(*(this + 62) + 24 * v86);
                *v118 = *v118 + (*v116 * *v117);
                v118[*(this + 11)] = v118[*(this + 11)] + (v116[*(this + 11)] * v117[*(this + 11)]);
                goto LABEL_68;
              }

              vDSP_zvmul(&v190, 1, &__D, 1, &v189, 1, (v97 - 1), 1);
              v111 = *(*(*(this + 83) + 24 * v177) + 24 * v95);
              v112 = *(*(*(*(this + 92) + 24 * v86) + 24 * v177) + v93);
              v113 = *(*(*(*(this + 104) + 24 * v86) + 24 * v177) + v93);
              *v113 = *v111 * *v112;
              v113[*(this + 11)] = v111[*(this + 11)] * v112[*(this + 11)];
              v114 = *(*(this + 62) + 24 * v86);
            }

            else
            {
              v113 = *(*(*(v109 + 24 * v86) + 24 * v177) + v93);
              v114 = *(*(this + 62) + 24 * v86);
            }

            MEMORY[0x1E12BE5D0](v113, 1, v114, 1, v114, 1, *(this + 9));
LABEL_68:
            ++v94;
            v93 += 24;
          }

          while (v94 < *(this + 6));
        }

        v88 = v174 + 1;
      }

      while (v174 + 1 != v173);
      v119 = *(this + 11);
      __A.realp = *(*(this + 62) + 24 * v86);
      __A.imagp = &__A.realp[v119];
      ecutils::fcn_otplace_fftReal_inverse(*(this + 119), &__A, *(*(this + 68) + 24 * v86), v119, *(this + 27));
      MEMORY[0x1E12BE9A0](*(*(this + 68) + 24 * v86) + 4 * *(this + 11), 1, *(*(this + 53) + 24 * v86) + 4 * *(this + 11), 1, *(*(this + 65) + 24 * v86) + 4 * *(this + 11), 1);
      v120 = (*(*(this + 71) + 24 * v86) + 4 * *(this + 11));
      v187.realp = *(*(this + 71) + 24 * v86);
      v187.imagp = v120;
      v121 = *(this + 119);
      if (v121)
      {
        MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v121, *(*(this + 65) + 24 * v86), &v187, 1.0);
      }

      v122 = (*(*(this + 74) + 24 * v86) + 4 * *(this + 9));
      v186.realp = *(*(this + 74) + 24 * v86);
      v186.imagp = v122;
      ecMIMO::fcn_hilbert_transform(this, &v187, (*(this + 29) + 4 * v86++), *(this + 120), &v186);
      v62 = *(this + 40);
    }

    while (v86 < v62);
    v84 = *(this + 26);
    v85 = *(this + 40);
LABEL_74:
    ++v176;
  }

  while (v176 < v84);
LABEL_75:
  if (v62)
  {
    v123 = 0;
    do
    {
      v124 = *(*(this + 116) + 24 * v123);
      MEMORY[0x1E12BE940](v124, 1, this + 124, v124, 1, *(this + 10));
      v125 = 0;
      v178 = v123;
      v126 = 3 * v123;
      do
      {
        v127 = *(this + 23);
        if (v125 >= (*(this + 24) - v127) >> 2)
        {
          goto LABEL_108;
        }

        if (*(this + 6))
        {
          v128 = 0;
          v129 = 0;
          v130 = 3 * *(v127 + 4 * v125);
          do
          {
            v131 = *(*(this + 26) + 4 * v129);
            MEMORY[0x1E12BE7F0](*(*(*(*(this + 110) + 8 * v126) + 8 * v130) + v128), 1, *(*(this + 116) + 8 * v126), 1, *(*(*(*(this + 110) + 8 * v126) + 8 * v130) + v128), 1, *(this + 10));
            MEMORY[0x1E12BE7F0](*(*(*(*(this + 110) + 8 * v126) + 8 * v130) + v128), 1, *(*(*(*(this + 95) + 8 * v126) + 8 * v130) + v128), 1, *(*(*(*(this + 110) + 8 * v126) + 8 * v130) + v128), 1, *(this + 10));
            v132 = *(*(*(*(this + 95) + 8 * v126) + 8 * v130) + v128);
            MEMORY[0x1E12BE9A0](*(*(*(*(this + 110) + 8 * v126) + 8 * v130) + v128), 1, v132, 1, v132, 1, *(this + 10));
            v133 = *(*(*(*(this + 95) + 8 * v126) + 8 * v130) + v128);
            vDSP_vabs(v133, 1, v133, 1, *(this + 10));
            v134 = *(*(this + 71) + 8 * v126);
            v135 = *(*(*(*(this + 104) + 8 * v126) + 8 * v130) + v128);
            vDSP_vmma((v134 + 4), 1, (v135 + 4), 1, (v134 + 4 * (*(this + 11) + 1)), 1, (v135 + 4 * (*(this + 11) + 1)), 1, (*(*(*(*(this + 107) + 8 * v126) + 8 * v130) + v128) + 4), 1, (*(this + 11) - 1));
            v136 = *(*(this + 71) + 8 * v126);
            v137 = *(*(*(*(this + 104) + 8 * v126) + 8 * v130) + v128);
            v138 = *(*(*(*(this + 107) + 8 * v126) + 8 * v130) + v128);
            *v138 = *v136 * *v137;
            v138[*(this + 11)] = v136[*(this + 11)] * v137[*(this + 11)];
            MEMORY[0x1E12BE8A0](*(*(*(this + 86) + 8 * v130) + 24 * v131), 1, this + 92, *(*(this + 74) + 8 * v126), 1, *(this + 10));
            v139 = *(*(*(*(this + 107) + 8 * v126) + 8 * v130) + v128);
            vDSP_vdiv(*(*(this + 74) + 8 * v126), 1, v139, 1, v139, 1, *(this + 10));
            ecutils::fcn_smooth_psd(*(*(*(*(this + 101) + 8 * v126) + 8 * v130) + v128), *(*(*(*(this + 107) + 8 * v126) + 8 * v130) + v128), *(this + 21), *(this + 22), 0, *(this + 32), *(this + 10));
            ++v129;
            v128 += 24;
          }

          while (v129 < *(this + 6));
        }

        ++v125;
      }

      while (v125 != v173);
      v123 = v178 + 1;
      v140 = *(this + 40);
    }

    while (v178 + 1 < v140);
    *(this + 180) = 0;
    if (v140)
    {
      v141 = 0;
      v142 = 0;
      v143 = &a6->mBuffers[0].mData;
      v144 = &a2->mBuffers[0].mData;
      v145 = &a5->mBuffers[0].mData;
      do
      {
        if (a8 && *(this + 8) == 1)
        {
          v146 = (*(this + 5) >> 1) - 1;
          if (v146 >= v142)
          {
            v146 = v142;
          }

          v147 = *(this + 62);
          v148 = *(this + 11);
          __A.realp = *(v147 + v141);
          __A.imagp = &__A.realp[v148];
          ecutils::fcn_complex_mult_by_psd(*(v147 + v141), *(*(this + 80) + 24 * v146), *(v147 + v141), v148);
          ecutils::fcn_otplace_fftReal_inverse(*(this + 119), &__A, *(*(this + 68) + v141), *(this + 11), *(this + 27));
        }

        v149 = *v145;
        v150 = *v144;
        v151 = *v143;
        vDSP_svesq(*v144, 1, &v180 + 1, *(this + 11));
        vDSP_svesq((*(*(this + 65) + v141) + 4 * *(this + 11)), 1, &v180, *(this + 11));
        if (*&v180 <= (*(&v180 + 1) * 3.0))
        {
          memcpy(v149, (*(*(this + 65) + v141) + 4 * *(this + 11)), 4 * *(this + 11));
        }

        else
        {
          memcpy(v149, v150, 4 * *(this + 11));
          *(this + 180) = 1;
        }

        memcpy(v151, (*(*(this + 68) + v141) + 4 * *(this + 11)), 4 * *(this + 11));
        ++v142;
        v141 += 24;
        v143 += 2;
        v144 += 2;
        v145 += 2;
      }

      while (v142 < *(this + 40));
      v152 = *(this + 40);
    }

    else
    {
      v152 = 0;
    }
  }

  else
  {
    v152 = 0;
    *(this + 180) = 0;
  }

  if (*(this + 8) == 1 && v152 < *(this + 3))
  {
    v162 = 16 * v152 + 16;
    v163 = (a6 + v162);
    v164 = (a5 + v162);
    do
    {
      v166 = *v164;
      v164 += 2;
      v165 = v166;
      v167 = *v163;
      v163 += 2;
      vDSP_vclr(v165, 1, *(this + 11));
      vDSP_vclr(v167, 1, *(this + 11));
      ++v152;
    }

    while (*(this + 3) > v152);
  }

  ecMIMO::fcn_ring_buffer_fwd(this, this + 26);
  ecMIMO::fcn_update_filter_fwd(this);
  return 0;
}

uint64_t ecMIMO::fcn_ring_buffer_fwd(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 52);
  v3 = *(result + 24);
  if (v2 + 1 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2 + 1;
  }

  *(result + 52) = v4;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = *a2;
      v7 = *(*a2 + 4 * v5);
      *(*a2 + 4 * v5) = v7 + 1;
      if (v7 + 1 == *(result + 24))
      {
        v8 = 0;
      }

      else
      {
        v8 = v7 + 1;
      }

      *(v6 + 4 * v5++) = v8;
    }

    while (v5 < *(result + 24));
  }

  return result;
}

float ecMIMO::fcn_hilbert_transform(ecMIMO *this, int64x2_t *a2, float *a3, void *a4, DSPSplitComplex *a5)
{
  v9 = *(this + 10);
  v10 = *(this + 11);
  v21 = *(this + 9);
  v11 = v21;
  v12 = *(this + 23);
  v13 = *(this + 24);
  __E = a5->realp;
  imagp = a5->imagp;
  *a3 = 0.0;
  vDSP_vclr(__E, 1, (2 * v11));
  __A = vaddq_s64(*a2, vdupq_n_s64(4uLL));
  vDSP_zvmags(&__A, 1, __E + 1, 1, (v10 - 1));
  memcpy(&__E[(v10 + 1)], __E + 1, 4 * (v10 - 1));
  vDSP_vrvrs(&__E[(v10 + 1)], 1, (v10 - 1));
  v16 = a2->i64[1];
  *__E = *a2->i64[0] * *a2->i64[0];
  __E[v10] = *v16 * *v16;
  vDSP_meanv(__E, 1, a3, *(this + 9));
  *a3 = -*a3;
  MEMORY[0x1E12BE8A0](__E, 1, a3, __E, 1, *(this + 9));
  *a3 = -*a3;
  MultiRadixFFT_CplxInPlaceTransform(a4, &a5->realp, 1);
  v19 = 0x40000000;
  MEMORY[0x1E12BE940](__E, 1, &v19, __E, 1, v9);
  MEMORY[0x1E12BE940](imagp, 1, &v19, imagp, 1, v9);
  *__E = *__E * 0.5;
  __E[v10] = __E[v10] * 0.5;
  *imagp = *imagp * 0.5;
  imagp[v10] = imagp[v10] * 0.5;
  vDSP_vclr(&__E[v9], 1, (v10 - 1));
  vDSP_vclr(&imagp[v9], 1, (v10 - 1));
  MultiRadixFFT_CplxInPlaceTransform(a4, &a5->realp, -1);
  vDSP_vmma(__E, 1, __E, 1, imagp, 1, imagp, 1, __E, 1, *(this + 9));
  vvsqrtf(__E, __E, &v21);
  MEMORY[0x1E12BE910](__E, 1, this + 108, a3, __E, 1, *(this + 9));
  vDSP_meanv(__E, 1, a3, v9);
  result = v12 + (*a3 * v13);
  *a3 = result;
  return result;
}

uint64_t ecMIMO::fcn_update_filter_fwd(uint64_t this)
{
  v1 = *(this + 172);
  *(this + 176) = v1;
  v2 = *(this + 160);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 16);
    v5 = v1;
    do
    {
      if (v4)
      {
        v6 = 0;
        v7 = *(this + 24);
        do
        {
          if (v7)
          {
            v8 = 0;
            v9 = *(this + 168);
            v10 = *(*(*(this + 904) + 24 * v3) + 24 * v6);
            do
            {
              v11 = v8 >> 6;
              v12 = 1 << v8;
              if (v5)
              {
                v13 = *(v10 + 8 * v11) & ~v12;
              }

              else
              {
                v13 = *(v10 + 8 * v11) | v12;
              }

              *(v10 + 8 * v11) = v13;
              v5 = (v5 + 1) % v9;
              ++v8;
            }

            while (v7 != v8);
            *(this + 176) = v5;
          }

          ++v6;
        }

        while (v6 != v4);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  *(this + 172) = (v1 + 1) % *(this + 168);
  return this;
}

void ecMIMO::ec_init(ecMIMO *this, char a2, int a3, int a4, int a5, unsigned int a6, int a7, unsigned int a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, float a17, unsigned int a18, float a19, float a20, unsigned int a21, unsigned int a22, unsigned int a23)
{
  *(this + 8) = a2;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 5) = a5;
  *(this + 7) = a6;
  *(this + 8) = a7;
  *(this + 11) = a8;
  *(this + 12) = a8 >> 1;
  *(this + 14) = __exp10f(a9 / 10.0);
  *(this + 15) = __exp10f(a10 / 10.0);
  *(this + 16) = a11;
  *(this + 37) = a20;
  v30 = 0.0;
  if (a12 > 0.0)
  {
    v31 = -(a8 / a6) / a12;
    v30 = expf(v31);
  }

  v32 = 1.0 - v30;
  v33 = 1.0 - (v32 * a11);
  *(this + 17) = v33;
  *(this + 18) = -(v32 * a11);
  v34 = sqrtf(v33);
  if (v33 <= 0.0)
  {
    v34 = 0.0;
  }

  *(this + 19) = v34;
  (*(*this + 152))(this, a14);
  (*(*this + 144))(this, a13);
  v35 = __exp10f(a15 / 10.0);
  *(this + 23) = v35;
  *(this + 34) = a17;
  *(this + 35) = a16;
  *(this + 26) = a18;
  *(this + 30) = __exp10f(a19 / 10.0);
  *(this + 124) = 1056964608;
  *(this + 33) = 507307272;
  *(this + 24) = v35;
  *(this + 25) = 1056964608;
  v36 = *(this + 11);
  v37 = vcvtps_u32_f32(*(this + 8) / v36);
  *(this + 6) = v37;
  *(this + 8) = v36 * v37;
  v38 = vcvtps_u32_f32(a21 / v36);
  *(this + 38) = v36 * v38;
  *(this + 39) = v38;
  v39 = *(this + 3);
  if (*(this + 8) == 1)
  {
    v39 -= *(this + 5) >> 1;
    if (v39 >= a22)
    {
      v39 = a22;
    }
  }

  *(this + 40) = v39;
  *(this + 42) = a23;
  *(this + 9) = 2 * v36;
  *(this + 10) = v36 + 1;
  MultiRadixRealFFT_Create();
}

void ecMIMO::ec_state_reset(ecMIMO *this)
{
  v2 = *(this + 4);
  __u[0] = 0;
  std::vector<unsigned int>::assign((this + 184), v2, __u);
  v3 = *(this + 3);
  __u[0] = 0;
  std::vector<float>::assign(this + 29, v3, __u, v4);
  v5 = *(this + 6);
  __u[0] = 0;
  std::vector<unsigned int>::assign((this + 208), v5, __u);
  v6 = *(this + 4);
  __u[0] = 0;
  std::vector<float>::assign(this + 32, v6, __u, v7);
  v8 = *(this + 9);
  __u[0] = 0;
  std::vector<float>::assign(this + 47, v8, __u, v9);
  ecutils::fcn_vector_init<float>(this + 50, *(this + 4), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 53, *(this + 3), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 62, *(this + 3), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 65, *(this + 3), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 68, *(this + 3), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 71, *(this + 3), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 74, *(this + 3), 2 * *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 77, *(this + 3), *(this + 10), 0.0);
  ecutils::fcn_vector_init<float>(this + 116, *(this + 3), *(this + 10), 0.0);
  ecutils::fcn_vector_init<float>(this + 664, *(this + 4), *(this + 6), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 688, *(this + 4), *(this + 6), *(this + 10), 0.0);
  ecutils::fcn_vector_init<float>(this + 736, *(this + 3), *(this + 4), *(this + 6), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 760, *(this + 3), *(this + 4), *(this + 6), *(this + 10), *(this + 30));
  ecutils::fcn_vector_init<float>(this + 784, *(this + 3), *(this + 4), *(this + 6), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 808, *(this + 3), *(this + 4), *(this + 6), *(this + 10), *(this + 30));
  ecutils::fcn_vector_init<float>(this + 832, *(this + 3), *(this + 4), *(this + 6), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 856, *(this + 3), *(this + 4), *(this + 6), *(this + 10), 0.0);
  ecutils::fcn_vector_init<float>(this + 880, *(this + 3), *(this + 4), *(this + 6), *(this + 10), 0.0);
  v11 = *(this + 3);
  v10 = *(this + 4);
  v12 = *(this + 6);
  v55 = 0;
  std::vector<BOOL>::vector(&__p, v12);
  std::vector<std::vector<BOOL>>::vector[abi:ne200100](__u, v10);
  v13 = *(this + 115);
  v14 = *(this + 113);
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3) < v11)
  {
    if (v14)
    {
      v15 = (this + 904);
      v16 = *(this + 114);
      v17 = *(this + 113);
      if (v16 != v14)
      {
        do
        {
          v16 -= 3;
          v56 = v16;
          std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&v56);
        }

        while (v16 != v14);
        v17 = *v15;
      }

      *(this + 114) = v14;
      operator delete(v17);
      v13 = 0;
      *v15 = 0;
      *(this + 114) = 0;
      *(this + 115) = 0;
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    v19 = 2 * v18;
    if (2 * v18 <= v11)
    {
      v19 = v11;
    }

    if (v18 >= 0x555555555555555)
    {
      v20 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v20 = v19;
    }

    if (v20 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v50 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 114) - v14) >> 3);
  v51 = v11;
  if (v50 >= v11)
  {
    v21 = v11;
  }

  else
  {
    v21 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 114) - v14) >> 3);
  }

  for (; v21; --v21)
  {
    if (v14 != __u)
    {
      v23 = *__u;
      v22 = v54;
      v24 = v54 - *__u;
      v25 = v14[2];
      v26 = *v14;
      if (v25 - *v14 < (v54 - *__u))
      {
        if (v26)
        {
          std::vector<std::vector<BOOL>>::clear[abi:ne200100](v14);
          operator delete(*v14);
          v25 = 0;
          *v14 = 0;
          v14[1] = 0;
          v14[2] = 0;
        }

        v27 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 3);
        if (v27 <= 0xAAAAAAAAAAAAAAALL)
        {
          v28 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3);
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0x555555555555555)
          {
            v29 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v29 = v27;
          }

          std::vector<std::vector<BOOL>>::__vallocate[abi:ne200100](v14, v29);
        }

        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v30 = v14[1];
      v31 = v30 - v26;
      if (v30 - v26 >= v24)
      {
        if (*__u != v54)
        {
          do
          {
            std::vector<BOOL>::operator=(v26, v23);
            v23 += 24;
            v26 += 24;
          }

          while (v23 != v22);
          v30 = v14[1];
        }

        while (v30 != v26)
        {
          v34 = *(v30 - 3);
          v30 -= 3;
          v33 = v34;
          if (v34)
          {
            operator delete(v33);
          }
        }

        v14[1] = v26;
      }

      else
      {
        if (v30 == v26)
        {
          v32 = *__u;
        }

        else
        {
          v32 = &v31[*__u];
          do
          {
            std::vector<BOOL>::operator=(v26, v23);
            v23 += 24;
            v26 += 24;
            v31 -= 24;
          }

          while (v31);
          v30 = v14[1];
        }

        v14[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*,std::vector<BOOL>*,std::vector<BOOL>*>(v14, v32, v22, v30);
      }
    }

    v14 += 3;
  }

  if (v51 <= v50)
  {
    v38 = *(this + 113) + 24 * v51;
    v39 = *(this + 114);
    while (v39 != v38)
    {
      v39 -= 3;
      v56 = v39;
      std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&v56);
    }

    *(this + 114) = v38;
  }

  else
  {
    v35 = *(this + 114);
    v36 = &v35[3 * (v51 - v50)];
    v37 = 24 * v51 - 24 * v50;
    do
    {
      *v35 = 0;
      v35[1] = 0;
      v35[2] = 0;
      std::vector<std::vector<BOOL>>::__init_with_size[abi:ne200100]<std::vector<BOOL>*,std::vector<BOOL>*>(v35, *__u, v54, 0xAAAAAAAAAAAAAAABLL * ((v54 - *__u) >> 3));
      v35 += 3;
      v37 -= 24;
    }

    while (v37);
    *(this + 114) = v36;
  }

  v56 = __u;
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&v56);
  if (__p)
  {
    operator delete(__p);
  }

  *(this + 43) = 0;
  *(this + 44) = 0;
  ecMIMO::fcn_update_filter_fwd(this);
  if (*(this + 8) == 1)
  {
    v41 = *(this + 9);
    __u[0] = 0;
    std::vector<float>::assign(this + 35, v41, __u, v40);
    v42 = *(this + 9);
    __u[0] = 0;
    std::vector<float>::assign(this + 38, v42, __u, v43);
    v44 = *(this + 10);
    __u[0] = 0;
    std::vector<float>::assign(this + 41, v44, __u, v45);
    v46 = *(this + 10);
    __u[0] = 0;
    std::vector<float>::assign(this + 44, v46, __u, v47);
    ecutils::fcn_vector_init<float>(this + 56, *(this + 3), *(this + 9), 0.0);
    ecutils::fcn_vector_init<float>(this + 59, *(this + 3), *(this + 9), 0.0);
    ecutils::fcn_vector_init<float>(this + 80, *(this + 4), *(this + 10), 0.0);
    ecutils::fcn_vector_init<float>(this + 712, *(this + 4), *(this + 6), *(this + 10), 0.0);
  }

  if (*(this + 6) != 1)
  {
    v48 = 0;
    v49 = *(this + 26);
    do
    {
      *(v49 + 4 * v48) = v48 + 1;
      ++v48;
    }

    while (v48 < (*(this + 6) - 1));
  }
}