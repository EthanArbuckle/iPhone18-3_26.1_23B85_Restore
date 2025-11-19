void sub_1DDE223C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DDE22D58(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a2)
  {
    STACK[0x240] = &a39;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
    JUMPOUT(0x1DDE23044);
  }

  JUMPOUT(0x1DDE236C8);
}

void sub_1DDE22D80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (a2)
  {
    if (*(v45 + 39) < 0)
    {
      operator delete(*(v45 + 16));
    }

    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](&STACK[0x220]);
    std::pair<std::string,std::string>::~pair(&__p);
    applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(&a45);
    applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(&STACK[0x240]);
    JUMPOUT(0x1DDE230D0);
  }

  _Unwind_Resume(a1);
}

void sub_1DDE23028(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DDE23034);
  }

  _Unwind_Resume(a1);
}

void sub_1DDE23058(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DDE23068);
  }

  _Unwind_Resume(a1);
}

void sub_1DDE23074(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (a2)
  {
    applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(&a45);
    applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(&STACK[0x240]);
    JUMPOUT(0x1DDE230D0);
  }

  _Unwind_Resume(a1);
}

void sub_1DDE23670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

DSPGraph::Interpreter *DSPGraph::Interpreter::Interpreter(DSPGraph::Interpreter *this)
{
  *this = MEMORY[0x1E698D888] + 16;
  *(this + 1) = 0;
  MEMORY[0x1E12BC390](this + 16);
  *(this + 20) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 42) = 1;
  *(this + 22) = 0;
  *(this + 184) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  return this;
}

void sub_1DDE23738(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t applesauce::CF::DictionaryRef_iterator<std::string,std::string>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::string_view>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
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

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t std::shared_ptr<DSPGraph::Graph>::operator=[abi:ne200100]<DSPGraph::Graph,std::default_delete<DSPGraph::Graph>,0>(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v3 = *(a1 + 8);
  *a1 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t applesauce::gestalt::query_as<BOOL,0>()
{
  v0 = MGCopyAnswerWithError();
  v1 = v0;
  if (v0)
  {
    v2 = applesauce::CF::convert_as<BOOL,0>(v0);
    v3 = v2;
    v4 = HIBYTE(v2);
    CFRelease(v1);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | (v4 << 8);
}

void *std::vector<DSPGraph::GraphIOData>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

void sub_1DDE23B00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<DSPGraph::Graph  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<DSPGraph::Graph  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void std::vector<void const*>::resize(uint64_t *a1, unint64_t a2)
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

        std::allocator<void const*>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void AUDSPGraph_v1::~AUDSPGraph_v1(AUDSPGraph_v1 *this)
{
  AUDSPGraph_v1::~AUDSPGraph_v1(this);

  JUMPOUT(0x1E12BD160);
}

{
  v34 = *MEMORY[0x1E69E9840];
  *this = &unk_1F59253F0;
  v2 = (this + 632);
  v3 = *(this + 656);
  if (v3 == 1)
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v5 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v2;
      if (*(this + 655) < 0)
      {
        v6 = *v2;
      }

      *v31 = 136315394;
      *&v31[4] = v6;
      v32 = 2048;
      v33 = this;
      v7 = "[%s|%p] destructed";
      v8 = v5;
      v9 = 22;
      goto LABEL_10;
    }
  }

  else
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v10 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 134217984;
      *&v31[4] = this;
      v7 = "[%p] destructed";
      v8 = v10;
      v9 = 12;
LABEL_10:
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, v7, v31, v9);
    }
  }

  v11 = *(this + 129);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 128);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 127);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 126);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 125);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(this + 122);
  if (v16)
  {
    *(this + 123) = v16;
    operator delete(v16);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 120));
  v17 = *(this + 118);
  if (v17)
  {
    CFRelease(v17);
  }

  std::mutex::~mutex((this + 880));
  *v31 = this + 856;
  std::vector<AU::DSPGraph::MetaParameter>::__destroy_vector::operator()[abi:ne200100](v31);
  v18 = *(this + 103);
  if (v18)
  {
    *(this + 104) = v18;
    operator delete(v18);
  }

  v19 = *(this + 100);
  if (v19)
  {
    *(this + 101) = v19;
    operator delete(v19);
  }

  v20 = *(this + 99);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(this + 98);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(this + 97);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(this + 94);
  if (v23)
  {
    *(this + 95) = v23;
    operator delete(v23);
  }

  v24 = *(this + 91);
  if (v24)
  {
    *(this + 92) = v24;
    operator delete(v24);
  }

  v25 = *(this + 88);
  if (v25)
  {
    *(this + 89) = v25;
    operator delete(v25);
  }

  v26 = *(this + 87);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *(this + 85);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(this + 84);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(this + 83);
  if (v29)
  {
    CFRelease(v29);
  }

  if (*(this + 656) == 1 && *(this + 655) < 0)
  {
    operator delete(*v2);
  }

  if (*(this + 624) == 1 && *(this + 623) < 0)
  {
    operator delete(*(this + 75));
  }

  if (*(this + 592) == 1 && *(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  v30 = *(this + 70);
  *(this + 70) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  if (*(this + 559) < 0)
  {
    operator delete(*(this + 67));
  }

  ausdk::AUBase::~AUBase(this);
}

void sub_1DDE2403C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AULoudnessMeter::GetParameterValueStrings(AULoudnessMeter *this, unsigned int a2, int a3, const __CFArray **a4)
{
  if (!a4)
  {
    return 0;
  }

  if (a3)
  {
    return 4294956418;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<char const*,char const* const*>(DspLib::LoudnessMeter::Parameters::kStateNames, DspLib::LoudnessNormalizer::Parameters::kRenderQualityNames);
  result = 0;
  *a4 = CFArray;
  return result;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<char const*,char const* const*>(char **a1, char **a2)
{
  v3 = a1;
  v10 = 0;
  *v11 = 0;
  v12 = 0;
  std::vector<applesauce::CF::StringRef>::reserve(&v10, a2 - a1);
  if (v3 != a2)
  {
    v4 = *v11;
    do
    {
      if (v4 >= v12)
      {
        v5 = (v4 - v10) >> 3;
        if ((v5 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v6 = (v12 - v10) >> 2;
        if (v6 <= v5 + 1)
        {
          v6 = v5 + 1;
        }

        if (v12 - v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v7 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v7 = v6;
        }

        v16 = &v10;
        if (v7)
        {
          std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v7);
        }

        v13[0] = 0;
        v13[1] = (8 * v5);
        v14 = 8 * v5;
        v15 = 0;
        std::construct_at[abi:ne200100]<applesauce::CF::StringRef,char const* const&,applesauce::CF::StringRef*>((8 * v5), *v3);
        v14 += 8;
        std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(&v10, v13);
        v4 = *v11;
        std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(v13);
      }

      else
      {
        std::construct_at[abi:ne200100]<applesauce::CF::StringRef,char const* const&,applesauce::CF::StringRef*>(v4++, *v3);
      }

      *v11 = v4;
      ++v3;
    }

    while (v3 != a2);
  }

  v8 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::StringRef>(&v10);
  v13[0] = &v10;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](v13);
  return v8;
}

void sub_1DDE242AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t AULoudnessMeter::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = AUDspLib::RestoreState(this, a2);
  if (!result)
  {

    return AUDspLib::loadDefaultAudioChannelLayout(this, a2);
  }

  return result;
}

uint64_t AULoudnessMeter::GetParameterInfo(AULoudnessMeter *this, unsigned int a2, uint64_t a3, AudioUnitParameterInfo *buffer)
{
  if ((a3 - 104) > 0xFFFFFFFB)
  {
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    *&buffer->minValue = 0x42200000C2F00000;
    buffer->defaultValue = -120.0;
    if (a3 > 101)
    {
      if (a3 == 102)
      {
        v6 = @"momentary loudness";
      }

      else
      {
        v6 = @"short term loudness";
      }
    }

    else if (a3 == 100)
    {
      v6 = @"integrated loudness";
    }

    else
    {
      v6 = @"true peak";
    }

    buffer->cfNameString = v6;
    buffer->flags = 1207992320;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    return 0;
  }

  else
  {

    return AUDspLibWithNewParameters::GetParameterInfo(this, a2, a3, buffer);
  }
}

double AULoudnessMeter::GetParameterList(AULoudnessMeter *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (!a2)
  {
    *a4 = 9;
    if (a3)
    {
      *&result = 0x100000000;
      *a3 = xmmword_1DE096230;
      *(a3 + 1) = xmmword_1DE09DBC0;
      a3[8] = 103;
    }
  }

  return result;
}

uint64_t AULoudnessMeter::GetParameter(AULoudnessMeter *this, signed int a2, unsigned int a3, unsigned int a4, float *a5)
{
  v5 = *(this + 66);
  if (!v5)
  {
    return 4294956429;
  }

  if (a2 > 101)
  {
    if (a2 == 102)
    {
      result = 0;
      v7 = *(v5 + 568);
LABEL_20:
      *a5 = v7;
      return result;
    }

    if (a2 == 103)
    {
      result = 0;
      v9 = v5 + 552;
      v10 = *(v5 + 552) == 0;
      v11 = 48;
      if (!v10)
      {
        v11 = 20;
      }

      v7 = *(v9 + v11);
      goto LABEL_20;
    }
  }

  else
  {
    if (a2 == 100)
    {
      DspLib::LoudnessMeter::LoudnessProcessor::integratedLoudness((v5 + 552));
LABEL_19:
      result = 0;
      goto LABEL_20;
    }

    if (a2 == 101)
    {
      if (*(v5 + 384) == 1)
      {
        v7 = DspLib::amp2dBSafe(this, *(v5 + 544), 0.000001);
      }

      else
      {
        v7 = -120.0;
      }

      goto LABEL_19;
    }
  }

  return ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
}

uint64_t AULoudnessMeter::Initialize(AULoudnessMeter *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = *(Element + 108);
  if (v3 >= 3 && v3 != *(this + 900))
  {
    return 4294956428;
  }

  return AUDspLib::Initialize(this);
}

void AULoudnessMeter::~AULoudnessMeter(AULoudnessMeter *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSignalCombiner::GetScopeExtended(AUSignalCombiner *this, int a2)
{
  if (a2 == 4)
  {
    return this + 1568;
  }

  else
  {
    return 0;
  }
}

uint64_t AUSignalCombiner::ValidFormat(AUSignalCombiner *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 64 && a4->mFormatID == 1718773105)
  {
    return (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t AUSignalCombiner::SupportedNumChannels(AUSignalCombiner *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSignalCombiner::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 2;
}

uint64_t AUSignalCombiner::CopyClumpName(AUSignalCombiner *this, int a2, int a3, unsigned int a4, const __CFString **a5)
{
  if (a2)
  {
    return 4294956430;
  }

  if ((a3 - 1) > 3)
  {
    return 4294956418;
  }

  v7 = CFStringCreateWithCString(0, off_1E866BA18[a3 - 1], 0x8000100u);
  result = 0;
  *a5 = v7;
  return result;
}

uint64_t AUSignalCombiner::GetParameterValueStrings(AUSignalCombiner *this, int a2, unsigned int a3, const __CFArray **a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2 == 4)
    {
      v5 = 648;
    }

    else
    {
      if (a2 != 1)
      {
        return 4294956418;
      }

      v5 = 600;
    }
  }

  else
  {
    v5 = 576;
  }

  v6 = this + v5;
  v9 = *(v6 + 1);
  v7 = v6 + 8;
  v8 = v9;
  if (!v9)
  {
    return 4294956418;
  }

  v10 = v7;
  do
  {
    v11 = *(v8 + 32);
    v12 = v11 >= a3;
    v13 = v11 < a3;
    if (v12)
    {
      v10 = v8;
    }

    v8 = *(v8 + 8 * v13);
  }

  while (v8);
  if (v10 == v7 || *(v10 + 8) > a3)
  {
    return 4294956418;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return 4294956418;
    }

    if (a4)
    {
      if (!a3)
      {
        v14 = &xmmword_1E866B9E0;
LABEL_28:
        v18 = *v14;
        v15 = 2;
        goto LABEL_29;
      }

      return 4294956418;
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  if (a3 == 2)
  {
    v14 = &xmmword_1E866BA08;
    goto LABEL_28;
  }

  if (a3 == 1)
  {
    v18 = xmmword_1E866B9F0;
    v19 = @"Only Track External Channel During Occlusion";
    v15 = 3;
LABEL_29:
    v17 = CFArrayCreate(0, &v18, v15, 0);
    result = 0;
    *a4 = v17;
    return result;
  }

  return 4294956418;
}

uint64_t AUSignalCombiner::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result && *(this + 17) == 1)
  {
    ++*(this + 137);
    ++*(this + 139);
    ++*(this + 141);
  }

  return result;
}

uint64_t AUSignalCombiner::SaveExtendedScopes(AUSignalCombiner *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUSignalCombiner::GetParameterInfo(AUSignalCombiner *this, int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v6 = 648;
    }

    else
    {
      if (a2 != 1)
      {
        return 4294956418;
      }

      v6 = 600;
    }
  }

  else
  {
    v6 = 576;
  }

  v7 = (this + v6 + 8);
  if (!*v7)
  {
    return 4294956418;
  }

  v8 = v7;
  v9 = *v7;
  do
  {
    v10 = *(v9 + 8);
    v11 = v10 >= a3;
    v12 = v10 < a3;
    if (v11)
    {
      v8 = v9;
    }

    v9 = v9[v12];
  }

  while (v9);
  if (v8 == v7 || *(v8 + 8) > a3)
  {
    return 4294956418;
  }

  a4->unit = *(std::map<unsigned int,std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::at(*v7, a3) + 2);
  a4->minValue = *(std::map<unsigned int,std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::at(*v7, a3) + 4);
  a4->maxValue = *(std::map<unsigned int,std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::at(*v7, a3) + 5);
  a4->defaultValue = *(std::map<unsigned int,std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::at(*v7, a3) + 6);
  a4->flags = *(std::map<unsigned int,std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::at(*v7, a3) + 3) + 1082130432;
  if (*(std::map<unsigned int,std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::at(*v7, a3) + 7) >= 1)
  {
    a4->clumpID = *(std::map<unsigned int,std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::at(*v7, a3) + 7);
    a4->flags |= 0x100000u;
  }

  v14 = *std::map<unsigned int,std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::at(*v7, a3);
  a4->cfNameString = v14;
  a4->flags |= 0x8000000u;
  CFStringGetCString(v14, a4->name, 52, 0x8000100u);
  return 0;
}

uint64_t *std::map<unsigned int,std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::at(uint64_t *a1, unsigned int a2)
{
  if (!a1)
  {
LABEL_7:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 8);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

uint64_t AUSignalCombiner::SetBusCount(AUSignalCombiner *this, int a2, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    if (a3 - 1 <= 0x14)
    {
      v4 = (this + 128);
      goto LABEL_7;
    }

    {
      AU::AUSignalCombiner::get_log(void)::ausicm_os_log = os_log_create("com.apple.coreaudio", "AUAUSignalCombiner");
    }

    v6 = AU::AUSignalCombiner::get_log(void)::ausicm_os_log;
    if (!os_log_type_enabled(AU::AUSignalCombiner::get_log(void)::ausicm_os_log, OS_LOG_TYPE_ERROR))
    {
      return 4294956445;
    }

    v8 = 136315650;
    v9 = "AUSignalCombiner.cpp";
    v10 = 1024;
    v11 = 155;
    v12 = 1024;
    v13 = a3;
    v7 = "%s:%-5d Invalid number (%u) of output buses requested. We only support 1–2 buses.";
    goto LABEL_15;
  }

  if (a2 != 1)
  {
    return 4294956430;
  }

  if (a3 - 1 <= 0x13)
  {
    v4 = (this + 80);
LABEL_7:
    ausdk::AUScope::SetNumberOfElements(v4, a3);
    return 0;
  }

  {
    {
      AU::AUSignalCombiner::get_log(void)::ausicm_os_log = os_log_create("com.apple.coreaudio", "AUAUSignalCombiner");
    }
  }

  v6 = AU::AUSignalCombiner::get_log(void)::ausicm_os_log;
  if (os_log_type_enabled(AU::AUSignalCombiner::get_log(void)::ausicm_os_log, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = "AUSignalCombiner.cpp";
    v10 = 1024;
    v11 = 146;
    v12 = 1024;
    v13 = a3;
    v7 = "%s:%-5d Invalid number (%u) of input buses requested. We only support 1 bus.";
LABEL_15:
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, v7, &v8, 0x18u);
  }

  return 4294956445;
}

uint64_t AUSignalCombiner::BusCountWritable(AUSignalCombiner *this, int a2)
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

ausdk::AUInputElement *AUSignalCombiner::Render(AUSignalCombiner *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v32 = *MEMORY[0x1E69E9840];
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
  v31 = 0;
  memset(v30, 0, sizeof(v30));
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

    *(v30 + v15++) = v19;
  }

  while (v15 != 21);
  if (v8)
  {
    return 0;
  }

  v20 = 0;
  memset(v29, 0, sizeof(v29));
  do
  {
    v21 = *(this + 15);
    if (v21)
    {
      LODWORD(v22) = (*(*v21 + 24))(v21);
    }

    else
    {
      v22 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v20 >= v22)
    {
      v24 = 0;
    }

    else
    {
      v23 = ausdk::AUScope::GetElement((this + 80), v20);
      if (!v23)
      {
        goto LABEL_43;
      }

      if (!*(v23 + 144))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v24 = *(v23 + 152) + 48;
    }

    *(v29 + v20++) = v24;
  }

  while (v20 != 20);
  v25 = *(this + 15);
  if (v25)
  {
    v26 = (*(*v25 + 24))(v25);
  }

  else
  {
    v26 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v27 = *(this + 21);
  if (v27)
  {
    v28 = (*(*v27 + 24))(v27);
  }

  else
  {
    v28 = (*(this + 19) - *(this + 18)) >> 3;
  }

  return (*(*this + 184))(this, a2, a4, v26, v29, v28, v30);
}

uint64_t AUSignalCombiner::ProcessMultipleBufferLists(AUSignalCombiner *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 133) != a3)
  {
    return 4294956422;
  }

  if (*(this + 135) != a4 || *(this + 136) != a6)
  {
    return 4294956419;
  }

  v10 = 2 * a3;
  if (a6 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a6;
  }

  if (v11)
  {
    v12 = 0;
    do
    {
      if (v10)
      {
        memmove(a7[v12]->mBuffers[0].mData, a5[v12]->mBuffers[0].mData, 4 * v10);
      }

      if (!(v12 * 8) && (*(this + 716) & 1) != 0)
      {
        mNumberBuffers = (*a5)->mNumberBuffers;
        if ((mNumberBuffers & 1) != 0 || (*a7)->mNumberBuffers < 2)
        {
          *(this + 716) = 0;
        }

        else if (v10)
        {
          memmove(*&(*a7)[1].mBuffers[0].mNumberChannels, *(&(*a5)->mBuffers[0].mData + mNumberBuffers), 4 * v10);
        }
      }

      ++v12;
    }

    while (v11 != v12);
    a6 = *(this + 136);
  }

  if (v11 < a6)
  {
    do
    {
      if (v10)
      {
        memmove(a7[v11]->mBuffers[0].mData, a5[*(this + 135) - 1]->mBuffers[0].mData, 4 * v10);
        a6 = *(this + 136);
      }

      ++v11;
    }

    while (v11 < a6);
  }

  vDSP_vfill(&AlgorithmUtils::kZerof, *(this + 193), 1, *(this + 134));
  if (*(this + 528))
  {
    return 0;
  }

  AUSignalCombiner::propagateParameterChanges(this);
  *(this + 342) = 0;
  if (*(this + 135))
  {
    v14 = 0;
    v15 = (2 * *(this + 133));
    v16 = (this + 748);
    while (1)
    {
      v17 = *(v16 - 5);
      if (v17 < 0)
      {
        v17 = *(this + 171);
      }

      *(v16 - 1) = v17;
      v18 = *(v16 - 4);
      if (v18 == 1 || v18 == 2 && *(this + 677) == 1)
      {
        *(v16 - 1) = *(this + 170);
      }

      Element = ausdk::AUScope::GetElement((this + 80), v14);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v20 = *(Element + 108) - 1;
      v21 = *(v16 - 2);
      if (v20 >= *(v16 - 1))
      {
        v20 = *(v16 - 1);
      }

      *(v16 - 1) = v20;
      if ((v21 & 0x80000000) == 0 && v15)
      {
        if (*(this + 136) - 1 < v21)
        {
          v21 = *(this + 136) - 1;
        }

        memmove(a7[v21]->mBuffers[0].mData, a5[v14]->mBuffers[v20].mData, 4 * v15);
      }

      if ((*v16 & 0x80000000) != 0)
      {
        if (*(v16 - 12) == 1)
        {
LABEL_43:
          v22 = *(v16 - 1);
          *(*(this + 172) + 8 * v14) = a5[v14]->mBuffers[v22].mData;
          v23 = a5[v14];
          if (v23->mNumberBuffers)
          {
            mData = 0;
            *(this + 716) = 0;
          }

          else if (*(this + 716) == 1)
          {
            mData = v23->mBuffers[(v22 + (v23->mNumberBuffers >> 1))].mData;
          }

          else
          {
            mData = 0;
          }

          *(*(this + 175) + 8 * v14) = mData;
          ++*(this + 342);
          goto LABEL_51;
        }
      }

      else if (*v16)
      {
        goto LABEL_43;
      }

      *(*(this + 172) + 8 * v14) = 0;
      *(*(this + 175) + 8 * v14) = 0;
LABEL_51:
      v25 = *(this + 173);
      if ((v25 & 0x80000000) == 0 && v14 == v25)
      {
        v26 = ausdk::AUScope::GetElement((this + 1568), *(v16 - 1));
        *(this + 302) = ausdk::AUElement::GetParameter(v26, 0);
        v27 = ausdk::AUScope::GetElement((this + 1568), *(v16 - 1));
        *(this + 303) = ausdk::AUElement::GetParameter(v27, 1u);
        v28 = ausdk::AUScope::GetElement((this + 1568), *(v16 - 1));
        *(this + 304) = ausdk::AUElement::GetParameter(v28, 2u);
        v29 = ausdk::AUScope::GetElement((this + 1568), *(v16 - 1));
        *(this + 305) = ausdk::AUElement::GetParameter(v29, 3u);
        v30 = ausdk::AUScope::GetElement((this + 1568), *(v16 - 1));
        *(this + 306) = ausdk::AUElement::GetParameter(v30, 4u);
      }

      ++v14;
      v31 = *(this + 135);
      v16 += 6;
      if (v14 >= v31)
      {
        v32 = v31 - 1;
        goto LABEL_59;
      }
    }
  }

  v32 = -1;
LABEL_59:
  if (*(this + 168) != 1)
  {
    goto LABEL_117;
  }

  v34 = *(this + 342);
  if (!v34)
  {
    goto LABEL_117;
  }

  v35 = *(this + 172);
  if (*(this + 676) == 1 && *(this + 175) >= 0)
  {
    v35 = *(this + 175);
  }

  if (v32 >= v35)
  {
    v32 = v35;
  }

  *(this + 343) = v32;
  v36 = *(this + 176);
  if ((v36 & 0x80000000) == 0 && *(this + 24 * v36 + 736) == 1)
  {
    *(this + 177) = *(this + 178);
    v37 = *(this + 174);
    if ((v37 & 0x80000000) == 0 && (v38 = *(this + 133), __A.realp = a5[v37]->mBuffers[*(this + 6 * v37 + 186)].mData, __A.imagp = &__A.realp[v38], v39 = *(this + 178), v40 = *__A.realp, v41 = *__A.imagp, v42 = *(this + 134) - 1, vDSP_zvmags(&__A, 1, v39, 1, v42), *v39 = v40 * v40, v39[v42] = v41 * v41, LODWORD(__C.realp) = 0, vDSP_sve(*(this + 178), 1, &__C, *(this + 134)), v43 = log10f(*&__C.realp + 2.2204e-16) * 10.0, *(this + 177) = v43, v34 = *(this + 342), v43 < *(this + 178)) || *(this + 677) == 1)
    {
      v44 = *(this + 176);
      *(*(this + 172) + 8 * v44) = 0;
      *(*(this + 175) + 8 * v44) = 0;
      *(this + 342) = --v34;
    }

    if (!v34)
    {
      goto LABEL_117;
    }
  }

  v45 = *a7;
  if (*(this + 716) == 1)
  {
    __dst = *(v45 + 32);
  }

  else
  {
    __dst = 0;
  }

  v46 = *(v45 + 16);
  v47 = *(this + 173);
  if ((v47 & 0x80000000) != 0)
  {
    goto LABEL_85;
  }

  v48 = *(this + 172);
  if (v47 >= (*(this + 173) - v48) >> 3)
  {
    goto LABEL_85;
  }

  v49 = *(v48 + 8 * v47);
  if (!v49)
  {
    goto LABEL_85;
  }

  if (2 * *(this + 133))
  {
    memmove(v46, v49, 4 * (2 * *(this + 133)));
    if ((*(this + 716) & 1) == 0)
    {
      goto LABEL_85;
    }

LABEL_83:
    if (2 * *(this + 133))
    {
      memmove(__dst, *(*(this + 175) + 8 * *(this + 173)), 4 * (2 * *(this + 133)));
    }

    goto LABEL_85;
  }

  if (*(this + 716))
  {
    goto LABEL_83;
  }

LABEL_85:
  v50 = *(this + 172);
  v51 = *(this + 133);
  v52 = &v46[4 * v51];
  v53 = &__dst[4 * v51];
  v54 = *(this + 180);
  v55 = *(this + 181) - v54;
  v56 = *(this + 173);
  if (v56 == v50)
  {
    goto LABEL_111;
  }

  v57 = 0;
  v58 = *(v50 + 8 * *(this + 343));
  v59 = 1;
  do
  {
    if (!*(v50 + 8 * v57))
    {
      goto LABEL_109;
    }

    __A.realp = *(v50 + 8 * v57);
    v60 = *(this + 133);
    __A.imagp = (*(v50 + 8 * v57) + 4 * v60);
    if (*(this + 716) == 1)
    {
      v61 = (*(*(this + 175) + 8 * v57) + 4 * v60);
      __C.realp = *(*(this + 175) + 8 * v57);
      __C.imagp = v61;
    }

    vDSP_zvabs(&__A, 1, *(this + 181), 1, v60);
    v62 = *(this + 181);
    *v62 = fabsf(*__A.realp);
    v63 = *(this + 133);
    v62[v63] = fabsf(*__A.imagp);
    if (*(this + 716) == 1)
    {
      vDSP_zvabs(&__C, 1, *(this + 187), 1, v63);
      v64 = *(this + 187);
      *v64 = fabsf(*__C.realp);
      v64[*(this + 133)] = fabsf(*__C.imagp);
    }

    v90 = v57;
    v65 = *(this + 134);
    if (v59)
    {
      memcpy(*(this + 178), *(this + 181), 4 * v65);
      vDSP_vfill(&v90, *(this + 193), 1, *(this + 134));
      if (*(this + 716) == 1)
      {
        memcpy(*(this + 184), *(this + 187), 4 * *(this + 134));
      }

      if (!v58)
      {
LABEL_102:
        *(this + 343) = v57;
        MEMORY[0x1E12BE8A0](*(this + 181), 1, &AUSignalCombiner::kEpsf, *(this + 181), 1, *(this + 134));
        vDSP_svdiv(&AUSignalCombiner::kOnef, *(this + 181), 1, *(this + 181), 1, *(this + 134));
        v66 = *v52;
        MEMORY[0x1E12BE7F0](&__A.realp[*(this + 180)], 1, *(this + 181) + 4 * *(this + 180), 1, &v46[4 * *(this + 180)], 1, v55);
        MEMORY[0x1E12BE7F0](&__A.imagp[*(this + 180)], 1, *(this + 181) + 4 * *(this + 180), 1, &v52[*(this + 180)], 1, v55);
        v67 = *(this + 181);
        if (v67 == *(this + 133))
        {
          v66 = *__A.imagp * *(*(this + 181) + 4 * v67);
        }

        *v52 = v66;
        if (*(this + 716) == 1)
        {
          MEMORY[0x1E12BE8A0](*(this + 187), 1, &AUSignalCombiner::kEpsf, *(this + 187), 1, *(this + 134));
          vDSP_svdiv(&AUSignalCombiner::kOnef, *(this + 187), 1, *(this + 187), 1, *(this + 134));
          v68 = *v53;
          MEMORY[0x1E12BE7F0](&__C.realp[*(this + 180)], 1, *(this + 187) + 4 * *(this + 180), 1, &__dst[4 * *(this + 180)], 1, v55);
          MEMORY[0x1E12BE7F0](&__C.imagp[*(this + 180)], 1, *(this + 187) + 4 * *(this + 180), 1, &v53[*(this + 180)], 1, v55);
          v69 = *(this + 181);
          if (v69 == *(this + 133))
          {
            v68 = *__C.imagp * *(*(this + 187) + 4 * v69);
          }

          *v53 = v68;
        }

        goto LABEL_108;
      }
    }

    else
    {
      vDSP_vmin(*(this + 181), 1, *(this + 178), 1, *(this + 178), 1, v65);
      MEMORY[0x1E12BE9A0](*(this + 178), 1, *(this + 181), 1, *(this + 190), 1, *(this + 134));
      vDSP_vthrsc(*(this + 190), 1, &AUSignalCombiner::kEpsf, &AUSignalCombiner::kPoint5f, *(this + 190), 1, *(this + 134));
      MEMORY[0x1E12BE8A0](*(this + 190), 1, &AUSignalCombiner::kPoint5f, *(this + 190), 1, *(this + 134));
      MEMORY[0x1E12BE7F0](*(this + 190), 1, *(this + 193), 1, *(this + 193), 1, *(this + 134));
      if (*(this + 716) == 1)
      {
        MEMORY[0x1E12BE7F0](*(this + 190), 1, *(this + 184), 1, *(this + 184), 1, *(this + 134));
      }

      MEMORY[0x1E12BE8A0](*(this + 190), 1, &AUSignalCombiner::kMinus1f, *(this + 190), 1, *(this + 134));
      vDSP_vabs(*(this + 190), 1, *(this + 190), 1, *(this + 134));
      MEMORY[0x1E12BE8F0](*(this + 190), 1, &v90, *(this + 193), 1, *(this + 193), 1, *(this + 134));
      if (*(this + 716) == 1)
      {
        MEMORY[0x1E12BE780](*(this + 190), 1, *(this + 187), 1, *(this + 184), 1, *(this + 184), 1, *(this + 134));
      }
    }

    if (v57 == *(this + 343))
    {
      goto LABEL_102;
    }

LABEL_108:
    v59 = 0;
    v56 = *(this + 173);
    v50 = *(this + 172);
LABEL_109:
    ++v57;
  }

  while (v57 < (v56 - v50) >> 3);
  v54 = *(this + 180);
LABEL_111:
  v70 = *v52;
  MEMORY[0x1E12BE7F0](&v46[4 * v54], 1, *(this + 178) + 4 * v54, 1, &v46[4 * v54], 1, v55);
  MEMORY[0x1E12BE7F0](&v52[*(this + 180)], 1, *(this + 178) + 4 * *(this + 180), 1, &v52[*(this + 180)], 1, v55);
  v71 = *(this + 181);
  v72 = 1.0;
  if (v71 == *(this + 133))
  {
    v72 = *(*(this + 178) + 4 * v71);
  }

  *v52 = v70 * v72;
  if (*(this + 716) == 1)
  {
    v73 = *v53;
    MEMORY[0x1E12BE7F0](&__dst[4 * *(this + 180)], 1, *(this + 184) + 4 * *(this + 180), 1, &__dst[4 * *(this + 180)], 1, v55);
    MEMORY[0x1E12BE7F0](&v53[*(this + 180)], 1, *(this + 184) + 4 * *(this + 180), 1, &v53[*(this + 180)], 1, v55);
    v74 = *(this + 181);
    v75 = 1.0;
    if (v74 == *(this + 133))
    {
      v75 = *(*(this + 184) + 4 * v74);
    }

    *v53 = v73 * v75;
  }

LABEL_117:
  v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v77 & 1) == 0 || (ausdk::AUElement::SetParameter(v76, 0x97u, *(this + 343)), v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v79 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v78, 0x9Au, *(this + 177));
  if (*(this + 135))
  {
    v80 = 0;
    v81 = (this + 744);
    do
    {
      v82 = ausdk::AUScope::GetElement((this + 80), v80);
      v83 = *v81;
      v81 += 6;
      ausdk::AUElement::SetParameter(v82, 0x32u, v83);
      ++v80;
    }

    while (v80 < *(this + 135));
  }

  v84 = ausdk::AUScope::GetElement((this + 1568), 0);
  ausdk::AUElement::SetParameter(v84, 0, *(this + 302));
  v85 = ausdk::AUScope::GetElement((this + 1568), 0);
  ausdk::AUElement::SetParameter(v85, 1u, *(this + 303));
  v86 = ausdk::AUScope::GetElement((this + 1568), 0);
  ausdk::AUElement::SetParameter(v86, 2u, *(this + 304));
  v87 = ausdk::AUScope::GetElement((this + 1568), 0);
  ausdk::AUElement::SetParameter(v87, 3u, *(this + 305));
  v88 = ausdk::AUScope::GetElement((this + 1568), 0);
  ausdk::AUElement::SetParameter(v88, 4u, *(this + 306));
  return 0;
}

void AUSignalCombiner::propagateParameterChanges(AUSignalCombiner *this)
{
  v2 = *(this + 137);
  if (v2 != *(this + 138))
  {
    *(this + 138) = v2;
    v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v4 & 1) == 0)
    {
      goto LABEL_34;
    }

    *(this + 168) = ausdk::AUElement::GetParameter(v3, 0);
    v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v6 & 1) == 0)
    {
      goto LABEL_34;
    }

    *(this + 171) = ausdk::AUElement::GetParameter(v5, 0x32u);
    v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v8 & 1) == 0)
    {
      goto LABEL_34;
    }

    *(this + 172) = ausdk::AUElement::GetParameter(v7, 0x96u);
    v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v10 & 1) == 0)
    {
      goto LABEL_34;
    }

    *(this + 173) = ausdk::AUElement::GetParameter(v9, 0x64u);
    v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v12 & 1) == 0)
    {
      goto LABEL_34;
    }

    *(this + 174) = ausdk::AUElement::GetParameter(v11, 0x65u);
    v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v14 & 1) == 0)
    {
      goto LABEL_34;
    }

    *(this + 175) = ausdk::AUElement::GetParameter(v13, 0x66u);
    v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v16 & 1) == 0)
    {
      goto LABEL_34;
    }

    *(this + 176) = ausdk::AUElement::GetParameter(v15, 0x67u);
    v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v18 & 1) == 0)
    {
      goto LABEL_34;
    }

    *(this + 178) = ausdk::AUElement::GetParameter(v17, 0x9Bu);
    v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v20 & 1) == 0)
    {
      goto LABEL_34;
    }

    *(this + 716) = ausdk::AUElement::GetParameter(v19, 0x9Cu) != 0.0;
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v22 = *(Element + 80);
    v23 = *(this + 133);
    v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v25 & 1) == 0)
    {
      goto LABEL_34;
    }

    v26 = v22;
    v27 = v26 / (v23 + v23);
    v28 = roundf(fabsf(ausdk::AUElement::GetParameter(v24, 0x98u) / v27));
    if (v28 > *(this + 133))
    {
      v28 = *(this + 133);
    }

    *(this + 180) = v28;
    v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v30 & 1) == 0)
    {
      goto LABEL_34;
    }

    v31 = roundf(fabsf(ausdk::AUElement::GetParameter(v29, 0x99u) / v27));
    if (v31 > *(this + 133))
    {
      v31 = *(this + 133);
    }

    *(this + 181) = v31;
    v32 = v31 - 1;
    if (v32 >= *(this + 180))
    {
      v32 = *(this + 180);
    }

    *(this + 180) = v32;
    if (*(this + 135))
    {
      v33 = 0;
      v34 = (this + 740);
      do
      {
        v35 = ausdk::AUScope::GetElement((this + 80), v33);
        *(v34 - 3) = ausdk::AUElement::GetParameter(v35, 0);
        v36 = ausdk::AUScope::GetElement((this + 80), v33);
        *(v34 - 2) = ausdk::AUElement::GetParameter(v36, 1u);
        v37 = ausdk::AUScope::GetElement((this + 80), v33);
        *(v34 - 4) = ausdk::AUElement::GetParameter(v37, 2u) != 0.0;
        v38 = ausdk::AUScope::GetElement((this + 80), v33);
        *v34 = ausdk::AUElement::GetParameter(v38, 3u);
        v34 += 6;
        ++v33;
      }

      while (v33 < *(this + 135));
    }
  }

  v39 = *(this + 139);
  if (v39 == *(this + 140))
  {
    goto LABEL_30;
  }

  *(this + 140) = v39;
  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v41 & 1) == 0 || (*(this + 676) = ausdk::AUElement::GetParameter(v40, 0xAu) != 0.0, v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v43 & 1) == 0) || (*(this + 677) = ausdk::AUElement::GetParameter(v42, 0xBu) != 0.0, v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v45 & 1) == 0))
  {
LABEL_34:
    abort();
  }

  *(this + 170) = ausdk::AUElement::GetParameter(v44, 0x33u);
  if (*(this + 135))
  {
    v46 = 0;
    v47 = (this + 748);
    do
    {
      v48 = ausdk::AUScope::GetElement((this + 80), v46);
      *v47 = ausdk::AUElement::GetParameter(v48, 0x33u);
      v47 += 6;
      ++v46;
    }

    while (v46 < *(this + 135));
  }

LABEL_30:
  v49 = *(this + 141);
  if (v49 != *(this + 142))
  {
    v50 = 0;
    *(this + 142) = v49;
    v51 = (this + 1224);
    do
    {
      v52 = ausdk::AUScope::GetElement((this + 1568), v50);
      *(v51 - 4) = ausdk::AUElement::GetParameter(v52, 0);
      v53 = ausdk::AUScope::GetElement((this + 1568), v50);
      *(v51 - 3) = ausdk::AUElement::GetParameter(v53, 1u);
      v54 = ausdk::AUScope::GetElement((this + 1568), v50);
      *(v51 - 2) = ausdk::AUElement::GetParameter(v54, 2u);
      v55 = ausdk::AUScope::GetElement((this + 1568), v50);
      *(v51 - 1) = ausdk::AUElement::GetParameter(v55, 3u);
      v56 = ausdk::AUScope::GetElement((this + 1568), v50);
      *v51 = ausdk::AUElement::GetParameter(v56, 4u);
      v51 += 5;
      ++v50;
    }

    while (v50 != 8);
  }
}

uint64_t AUSignalCombiner::SetParameter(AUSignalCombiner *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (!result)
  {
    switch(a3)
    {
      case 0u:
        v9 = 576;
LABEL_8:
        v11 = std::map<unsigned int,std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::at(*(this + v9 + 8), a2);
        v10 = 556;
        if ((*(v11 + 13) & 0x80) == 0)
        {
          v10 = 548;
        }

        goto LABEL_10;
      case 4u:
        v10 = 564;
LABEL_10:
        result = 0;
        ++*(this + v10);
        return result;
      case 1u:
        v9 = 600;
        goto LABEL_8;
    }

    return 4294956418;
  }

  return result;
}

uint64_t AUSignalCombiner::SetProperty(AUSignalCombiner *this, int a2, int a3, unsigned int a4, _DWORD *a5, int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
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

  return result;
}

uint64_t AUSignalCombiner::GetProperty(AUSignalCombiner *this, int a2, int a3, unsigned int a4, _DWORD *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  v18[3] = v5;
  v18[4] = v6;
  v7 = 4294956417;
  if (a2 <= 1001)
  {
    if (a2 == 21)
    {
      v7 = 0;
      v9 = *(this + 528);
      goto LABEL_26;
    }

    if (a2 != 1001)
    {
      return v7;
    }

    if (*(this + 17) == 1)
    {
      v10 = *(this + 133);
      if (v10 == *(this + 84))
      {
        v11 = __CFADD__(v10, 1);
        v12 = v10 + 1;
        if (!v11)
        {
          memmove(__dst, *(this + 193), 4 * v12);
        }

        return 0;
      }
    }

    return 4294956446;
  }

  if (a2 != 1002)
  {
    if (a2 != 1003)
    {
      if (a2 != 3700)
      {
        return v7;
      }

      v7 = 0;
      v9 = *(this + 376);
LABEL_26:
      *__dst = v9;
      return v7;
    }

    if (*(this + 17) == 1 && *(this + 133) == *(this + 84))
    {
      v16 = applesauce::CF::details::make_CFArrayRef<float,std::__wrap_iter<float const*>>(*(this + 193), *(this + 194));
      v18[0] = 0;
      *__dst = v16;
      applesauce::CF::ArrayRef::~ArrayRef(v18);
      return 0;
    }

    return 4294956446;
  }

  if (*(this + 17) != 1)
  {
    return 4294956446;
  }

  v13 = *(this + 133);
  if (v13 != *(this + 84))
  {
    return 4294956446;
  }

  if (v13 == -1)
  {
    return 0;
  }

  v14 = 0;
  v15 = *(this + 193);
  do
  {
    v7 = 0;
    __dst[v14] = *(v15 + 4 * v14);
    ++v14;
  }

  while (v14 < (*(this + 133) + 1));
  return v7;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<float,std::__wrap_iter<float const*>>(float *a1, float *a2)
{
  v3 = a1;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v10, a2 - a1);
  if (a2 != v3)
  {
    v4 = v11;
    do
    {
      if (v4 >= v12)
      {
        v5 = (v4 - v10) >> 3;
        if ((v5 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v6 = (v12 - v10) >> 2;
        if (v6 <= v5 + 1)
        {
          v6 = v5 + 1;
        }

        if (v12 - v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v7 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v7 = v6;
        }

        v16 = &v10;
        if (v7)
        {
          std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v7);
        }

        v13[0] = 0;
        v13[1] = (8 * v5);
        v14 = 8 * v5;
        v15 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float const&,void,0>((8 * v5), *v3);
        v14 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v10, v13);
        v4 = v11;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v13);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float const&,void,0>(v4++, *v3);
      }

      v11 = v4;
      ++v3;
    }

    while (v3 != a2);
  }

  v8 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v10);
  v13[0] = &v10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v13);
  return v8;
}

void sub_1DDE26340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t AUSignalCombiner::GetPropertyInfo(AUSignalCombiner *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1001)
  {
    if (a2 != 1002)
    {
      if (a2 == 1003)
      {
        *a6 = 0;
        v8 = 8;
        goto LABEL_13;
      }

      if (a2 != 3700)
      {
        return result;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2 == 21)
  {
LABEL_11:
    *a6 = 1;
    v8 = 4;
    goto LABEL_13;
  }

  if (a2 == 1001)
  {
LABEL_10:
    *a6 = 0;
    v8 = 4 * *(this + 84) + 4;
LABEL_13:
    result = 0;
    *a5 = v8;
  }

  return result;
}

uint64_t AUSignalCombiner::Reset(AUSignalCombiner *this)
{
  *(this + 548) = xmmword_1DE095FA0;
  *(this + 564) = 1;
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (ausdk::AUElement::SetParameter(v2, 0xAu, 0.0), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (ausdk::AUElement::SetParameter(v4, 0xBu, 0.0), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v6, 0x33u, 0.0);
  if (*(this + 135))
  {
    v8 = 0;
    do
    {
      Element = ausdk::AUScope::GetElement((this + 80), v8);
      ausdk::AUElement::SetParameter(Element, 0x33u, -1.0);
      ++v8;
    }

    while (v8 < *(this + 135));
  }

  AUSignalCombiner::propagateParameterChanges(this);
  return 0;
}

uint64_t AUSignalCombiner::Initialize(AUSignalCombiner *this)
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

  if ((v3 - 21) < 0xFFFFFFEC || (v5 - 22) < 0xFFFFFFEB)
  {
    return 4294956428;
  }

  v8 = 0;
  do
  {
    Element = ausdk::AUScope::GetElement((this + 80), v8);
    if (!Element)
    {
      goto LABEL_32;
    }

    v10 = Element;
    if (*(Element + 88) != 1718773105)
    {
      return 4294956428;
    }

    v11 = *(Element + 80);
    v12 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v12)
    {
      goto LABEL_32;
    }

    v13 = *(v12 + 80);
    if (v11 != v13 || *(v10 + 108) == 0)
    {
      return 4294956428;
    }

    ++v8;
  }

  while (v3 != v8);
  if (v5)
  {
    v15 = 0;
    while (1)
    {
      v16 = ausdk::AUScope::GetElement((this + 128), v15);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if (*(v16 + 88) != 1718773105)
      {
        return 4294956428;
      }

      v18 = *(v16 + 80);
      v19 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v19)
      {
        break;
      }

      v20 = *(v19 + 80);
      if (v18 != v20 || *(v17 + 108) > 2u)
      {
        return 4294956428;
      }

      if (v5 == ++v15)
      {
        goto LABEL_31;
      }
    }

LABEL_32:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_31:
  v22 = *(this + 84);
  *(this + 133) = v22;
  *(this + 134) = v22 + 1;
  *(this + 135) = v3;
  *(this + 136) = v5;
  v35 = 0;
  std::vector<float *>::assign(this + 172, v3, &v35);
  v35 = 0;
  std::vector<float *>::assign(this + 175, v3, &v35);
  v23 = *(this + 134);
  LODWORD(v35) = 0;
  std::vector<float>::assign(this + 178, v23, &v35, v24);
  v25 = *(this + 134);
  LODWORD(v35) = 0;
  std::vector<float>::assign(this + 181, v25, &v35, v26);
  v27 = *(this + 134);
  LODWORD(v35) = 0;
  std::vector<float>::assign(this + 184, v27, &v35, v28);
  v29 = *(this + 134);
  LODWORD(v35) = 0;
  std::vector<float>::assign(this + 187, v29, &v35, v30);
  v31 = *(this + 134);
  LODWORD(v35) = 0;
  std::vector<float>::assign(this + 190, v31, &v35, v32);
  v33 = *(this + 134);
  LODWORD(v35) = 0;
  std::vector<float>::assign(this + 193, v33, &v35, v34);
  (*(*this + 72))(this, 0, 0);
  return 0;
}

void AUSignalCombiner::CreateExtendedElements(AUSignalCombiner *this)
{
  ausdk::AUScope::Initialize((this + 1568), this, 4, 8);
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
    Element = ausdk::AUScope::GetElement((this + 1568), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v6);
    CFRelease(v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DDE26874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUSignalCombiner::~AUSignalCombiner(AUSignalCombiner *this)
{
  AUSignalCombiner::~AUSignalCombiner(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5925DB8;
  v10 = (this + 1584);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v2 = *(this + 193);
  if (v2)
  {
    *(this + 194) = v2;
    operator delete(v2);
  }

  v3 = *(this + 190);
  if (v3)
  {
    *(this + 191) = v3;
    operator delete(v3);
  }

  v4 = *(this + 187);
  if (v4)
  {
    *(this + 188) = v4;
    operator delete(v4);
  }

  v5 = *(this + 184);
  if (v5)
  {
    *(this + 185) = v5;
    operator delete(v5);
  }

  v6 = *(this + 181);
  if (v6)
  {
    *(this + 182) = v6;
    operator delete(v6);
  }

  v7 = *(this + 178);
  if (v7)
  {
    *(this + 179) = v7;
    operator delete(v7);
  }

  v8 = *(this + 175);
  if (v8)
  {
    *(this + 176) = v8;
    operator delete(v8);
  }

  v9 = *(this + 172);
  if (v9)
  {
    *(this + 173) = v9;
    operator delete(v9);
  }

  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 82));
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 79));
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 76));
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 73));

  ausdk::AUBase::~AUBase(this);
}

uint64_t PassThroughSpatializer::processAccumulating(PassThroughSpatializer *this, const float *__I, float **a3, unsigned int a4, float *const *a5, unsigned int a6, vDSP_Length __N, float a8, IR::ComplexDataCircBuffer *a9)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(this + 16) == 1)
  {
    if (a4)
    {
      v11 = __N;
      v14 = 0;
      v15 = 0;
      v16 = __N;
      v17 = __N;
      v18 = 4 * a4;
      do
      {
        v19 = *(this + 6);
        v20 = *(v19 + 82);
        v21 = 0.0;
        if (v20 == 1)
        {
          v21 = *(*(v19 + 144) + v14) * a8;
        }

        if (*(this + 17) == 1)
        {
          v22 = *(this + 38);
          v23 = (v22 + 4 * v15);
        }

        else
        {
          v22 = *(this + 38);
          if (v20 != *(this + 146))
          {
            goto LABEL_13;
          }

          v23 = (v22 + v14);
          v24 = *(v22 + v14);
          if (v24 != v21 && vabds_f32(v24, v21) >= 0.0001)
          {
            if (*(this + 73))
            {
LABEL_13:
              if (v11)
              {
                goto LABEL_14;
              }
            }

            else
            {
              v21 = v21 + ((v24 - v21) * *(this + 75));
              if (v11)
              {
LABEL_14:
                *&__Step = (v21 - *(v22 + v14)) / v16;
                LODWORD(__Start.__r_.__value_.__l.__data_) = *(v22 + v14);
                vDSP_vrampmuladd(__I, 1, &__Start, &__Step, *a3, 1, v17);
                v22 = *(this + 38);
              }
            }

            *(v22 + v14) = v21;
            goto LABEL_16;
          }
        }

        *v23 = v21;
        MEMORY[0x1E12BE8F0](__I, 1, v22 + v14, *a3, 1, *a3, 1, v17);
LABEL_16:
        ++v15;
        v14 += 4;
        ++a3;
      }

      while (v18 != v14);
    }

    result = 0;
    *(this + 17) = 0;
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
      strcpy(&__p, "PassThroughSpatializer");
      *(&__p.__r_.__value_.__s + 23) = 22;
      v27 = std::string::append(&__p, "::", 2uLL);
      v28 = *&v27->__r_.__value_.__l.__data_;
      __Start.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&__Start.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = std::string::append(&__Start, "processAccumulating", 0x13uLL);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v35 = v29->__r_.__value_.__r.__words[2];
      __Step = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      p_Step = &__Step;
      if (v35 < 0)
      {
        p_Step = __Step;
      }

      *buf = 136315138;
      v37 = p_Step;
      _os_log_debug_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", buf, 0xCu);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__Step);
      }

      if (SHIBYTE(__Start.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__Start.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    return 4294956429;
  }

  return result;
}

void sub_1DDE26E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PassThroughSpatializer::initialize(PassThroughSpatializer *this, float a2, unsigned int a3, int a4)
{
  *(this + 2) = a2;
  *(this + 3) = a4;
  v7 = a2 * 0.001953125 * 0.0219999999;
  if (v7 < 2.22507386e-308)
  {
    v7 = 2.22507386e-308;
  }

  v8 = -6.90775528 / v7;
  v9 = exp(-6.90775528 / v7);
  if (v8 < -708.4)
  {
    v9 = 0.0;
  }

  *&v9 = v9;
  *(this + 75) = LODWORD(v9);
  *&v9 = a2 * 0.044;
  *(this + 5) = (a2 * 0.044);
  Spatializer::initialize(this, *&v9, a3);
  v10 = (*(*(this + 6) + 152) - *(*(this + 6) + 144)) >> 2;
  v13 = 1065353216;
  std::vector<float>::assign(this + 38, v10, &v13, v11);
  return 0;
}

void PassThroughSpatializer::~PassThroughSpatializer(PassThroughSpatializer *this)
{
  *this = &unk_1F5926008;
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 39) = v2;
    operator delete(v2);
  }

  Spatializer::~Spatializer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5926008;
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 39) = v2;
    operator delete(v2);
  }

  Spatializer::~Spatializer(this);
}

uint64_t MixViterbiProd::createCProdArray(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = (a2 - result) >> 2;
  if (v4 < 1)
  {
    v6 = 1;
  }

  else
  {
    v5 = (((a2 - result) >> 2) & 0x7FFFFFFF) - 1;
    v6 = 1;
    do
    {
      *(a3 + 4 * v5) = v6;
      if (v4 <= v5)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v6 *= *(result + 4 * v5);
      v7 = v5-- + 1;
    }

    while (v7 > 1);
  }

  *a4 = v6;
  return result;
}

uint64_t MixViterbiProd::fullToTopLayerAddr(uint64_t this, unsigned int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v6 = *(this + 112);
  v7 = *(this + 136);
  if (v6 != v7)
  {
    v8 = a2 % *(this + 80);
    v9 = a3;
    do
    {
      if (v9 == a4)
      {
        v10 = v8;
      }

      else
      {
        v10 = v8 % *v6;
        LODWORD(v8) = v8 / *v6;
      }

      *v9++ = v8;
      ++v6;
      v8 = v10;
    }

    while (v6 != v7);
  }

  if (*(this + 92))
  {
    v11 = 0;
    v12 = *(this + 24);
    do
    {
      a5[v11] = a3[v11] / *(v12 + 4 * v11);
      ++v11;
    }

    while (v11 < *(this + 92));
  }

  v13 = *(this + 96);
  v14 = *(this + 120);
  *a6 = 0;
  if (v13 != v14)
  {
    v15 = 0;
    do
    {
      v17 = *a5++;
      v16 = v17;
      v18 = *v13++;
      v15 += v18 * v16;
      *a6 = v15;
    }

    while (v13 != v14);
  }

  return this;
}

void MixViterbiProd::MixViterbiProd(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 24, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 84) = a4;
  *(a1 + 88) = a9;
  *(a1 + 92) = (a2[1] - *a2) >> 2;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = a5;
  *(a1 + 152) = a6;
  *(a1 + 176) = 0u;
  *(a1 + 160) = a7;
  *(a1 + 168) = a8;
  *(a1 + 192) = 0u;
  *(a1 + 204) = 0u;
  i = 1;
  *(a1 + 220) = 1;
  *(a1 + 224) = 0xFFFFFFFFLL;
  *(a1 + 232) = 1;
  *(a1 + 252) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 300) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0u;
  *(a1 + 364) = 0u;
  *(a1 + 380) = 0u;
  *(a1 + 392) = 0u;
  v19 = *a1;
  v18 = *(a1 + 8);
  v20 = v18 - *a1;
  if (v18 != *a1)
  {
    v22 = *v19;
    v21 = v19 + 1;
    for (i = v22; v21 != v18; i *= v23)
    {
      v23 = *v21++;
    }
  }

  *(a1 + 72) = i;
  v25 = *(a1 + 24);
  v24 = *(a1 + 32);
  if (v24 == v25)
  {
    j = 1;
  }

  else
  {
    v28 = *v25;
    v27 = v25 + 1;
    for (j = v28; v27 != v24; j *= v29)
    {
      v29 = *v27++;
    }
  }

  *(a1 + 76) = j;
  *(a1 + 56) = 0;
  std::vector<unsigned int>::resize((a1 + 48), v20 >> 2);
  v30 = *a1;
  v31 = *(a1 + 8);
  if (*a1 != v31)
  {
    v32 = *(a1 + 24);
    v33 = *(a1 + 48);
    do
    {
      v35 = *v30++;
      v34 = v35;
      v36 = *v32++;
      *v33++ = v36 * v34;
    }

    while (v30 != v31);
  }

  *(a1 + 80) = *(a1 + 76) * *(a1 + 72);
  v37 = *(a1 + 92);
  v38 = malloc_type_malloc(4 * v37, 0xA2F1B8F2uLL);
  v39 = v38;
  if (v37)
  {
    v40 = v38 == 0;
  }

  else
  {
    v40 = 0;
  }

  if (!v40)
  {
    bzero(v38, 4 * v37);
    *(a1 + 96) = v39;
    v41 = *(a1 + 92);
    v42 = malloc_type_malloc(4 * v41, 0x6033D62DuLL);
    v43 = v42;
    if (!v41 || v42)
    {
      bzero(v42, 4 * v41);
      *(a1 + 104) = v43;
      v44 = *(a1 + 92);
      v45 = malloc_type_malloc(4 * v44, 0x3BF5501DuLL);
      v46 = v45;
      if (!v44 || v45)
      {
        bzero(v45, 4 * v44);
        *(a1 + 112) = v46;
        operator new();
      }
    }
  }

  exception = __cxa_allocate_exception(8uLL);
  v48 = std::bad_alloc::bad_alloc(exception);
}

void sub_1DDE27A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  MEMORY[0x1E12BD160](v12, 0x1080C40FC6463CFLL);
  v14 = *a10;
  if (*a10)
  {
    *(v11 + 56) = v14;
    operator delete(v14);
  }

  v15 = *a11;
  if (*a11)
  {
    *(v11 + 32) = v15;
    operator delete(v15);
  }

  v16 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

double MixViterbiProd::Initialize(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  ++*(a1 + 236);
  vDSP_mmov(*(a1 + 144), *(a1 + 272), **(a1 + 392), 1uLL, **(a1 + 392), **(a1 + 392));
  v6 = *(a1 + 392);
  v7 = *(a1 + 280);
  v8 = a2;
  MEMORY[0x1E12BE7F0](*(a1 + 272), 1, *(a1 + 256) + 4 * *v6 * a2, 1, v7, 1);
  __C = 0.0;
  vDSP_sve(v7, 1, &__C, *v6);
  __C = 1.0 / __C;
  MEMORY[0x1E12BE940](v7, 1, &__C, v7, 1, *v6);
  MixViterbiProd::marginalizeStateDist(a1, *(a1 + 272), *(a1 + 240), *(a1 + 344), *(a1 + 360), *(a1 + 352));
  v9 = MixViterbiProd::marginalizeStateDist(a1, *(a1 + 280), *(a1 + 296), *(a1 + 344), *(a1 + 360), *(a1 + 352));
  v10 = *(a1 + 400);
  v11 = *(a1 + 320);
  v12 = *(a1 + 336);
  MEMORY[0x1E12BE7F0](*(a1 + 240), 1, *(a1 + 160) + 4 * *v10 * v8, 1, v11, 1, v9);
  ViterbiOdep::normalizeLik(v10, v11);
  bzero(v12, 4 * *v10);

  *&result = MixViterbiProd::prepareForNextIter(a1, a3).u64[0];
  return result;
}

float MixViterbiProd::marginalizeStateDist(MixViterbiProd *this, const float *a2, float *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  bzero(a3, 4 * *(this + 18));
  if (*(this + 20))
  {
    v13 = 0;
    do
    {
      v14 = 0;
      MixViterbiProd::fullToTopLayerAddr(this, v13, a4, a6, a5, &v14);
      result = a2[v13] + a3[v14];
      a3[v14] = result;
      ++v13;
    }

    while (v13 < *(this + 20));
  }

  return result;
}

int8x16_t MixViterbiProd::prepareForNextIter(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 176);
  v5 = *(a1 + 336);
  v6 = *(a1 + 72);
  v7 = *(v4 + 8);
  v8 = *(v4 + 12);
  if (v7 < v6)
  {
    v6 = *(v4 + 8);
  }

  v9 = v8 + v6;
  v10 = v8 + v6 - v7;
  if (v10 < 0)
  {
    memcpy((*v4 + 4 * v8), v5, 4 * v6);
  }

  else
  {
    v11 = v7 - v8;
    memcpy((*v4 + 4 * v8), v5, 4 * (v7 - v8));
    memcpy(*v4, &v5[4 * v11], 4 * v10);
    v9 = v10;
  }

  *(v4 + 12) = v9;
  v12 = *(a1 + 200);
  v13 = *(a1 + 320);
  v14 = *(a1 + 72);
  v15 = *(v12 + 8);
  v16 = *(v12 + 12);
  if (v15 < v14)
  {
    v14 = *(v12 + 8);
  }

  v17 = v16 + v14;
  v18 = v16 + v14 - v15;
  if (v18 < 0)
  {
    memcpy((*v12 + 4 * v16), *(a1 + 320), 4 * v14);
  }

  else
  {
    v19 = v15 - v16;
    memcpy((*v12 + 4 * v16), *(a1 + 320), 4 * (v15 - v16));
    memcpy(*v12, (v13 + 4 * v19), 4 * v18);
    v17 = v18;
  }

  *(v12 + 12) = v17;
  v20 = *(a1 + 208);
  v21 = *(a1 + 296);
  v22 = *(a1 + 72);
  v23 = *(v20 + 8);
  v24 = *(v20 + 12);
  if (v23 < v22)
  {
    v22 = *(v20 + 8);
  }

  v25 = v24 + v22;
  v26 = v24 + v22 - v23;
  if (v26 < 0)
  {
    memcpy((*v20 + 4 * v24), *(a1 + 296), 4 * v22);
  }

  else
  {
    v27 = v23 - v24;
    memcpy((*v20 + 4 * v24), *(a1 + 296), 4 * (v23 - v24));
    memcpy(*v20, (v21 + 4 * v27), 4 * v26);
    v25 = v26;
  }

  *(v20 + 12) = v25;
  v28 = *(a1 + 192);
  v29 = *(v28 + 8);
  v30 = *(v28 + 12);
  *(*v28 + 16 * v30) = *a2;
  *(v28 + 12) = (v30 + 1) % v29;
  --*(a1 + 216);
  if (*(a1 + 236) < 2u)
  {
    goto LABEL_25;
  }

  v31 = *(a1 + 72);
  if (v31 <= 0)
  {
    goto LABEL_24;
  }

  v32 = 0;
  v33 = *(a1 + 176);
  v34 = *v33;
  v35 = *(v33 + 2);
  v36 = *(v33 + 3);
  v37 = 1;
  v38 = 1 - v31;
  v39 = ~v36 + v31 + v35;
  do
  {
    v40 = v38;
    v41 = v37 | (v32 == *(v34 + 4 * (v35 + ~(v39 % v35))));
    if (v37)
    {
      v32 = *(v34 + 4 * (v35 + ~(v39 % v35)));
    }

    if ((v41 & 1) == 0)
    {
      break;
    }

    v37 = 0;
    ++v38;
    --v39;
  }

  while (v40);
  if (v41)
  {
LABEL_24:
    *(a1 + 232) = 0;
    v42 = -1;
  }

  else
  {
LABEL_25:
    v42 = *(a1 + 224) - 1;
  }

  *(a1 + 224) = v42;
  result = vextq_s8(*(a1 + 320), *(a1 + 320), 8uLL);
  *(a1 + 320) = result;
  return result;
}

double MixViterbiProd::Update(uint64_t a1, unsigned int a2, unsigned int a3, _OWORD *a4)
{
  ++*(a1 + 236);
  v7 = *(a1 + 392);
  v8 = *(a1 + 152);
  v9 = *(a1 + 272);
  v10 = *(a1 + 288);
  v11 = *v7;
  if (*v7)
  {
    v12 = 0;
    v13 = *(a1 + 280);
    v14 = *(a1 + 288);
    do
    {
      vDSP_mmov(v13, v14, v11, 1uLL, v11, v11);
      v11 = *v7;
      v14 += *v7;
      ++v12;
    }

    while (v12 < *v7);
  }

  MEMORY[0x1E12BE7F0](v8, 1, v10, 1, v10, 1, v7[1]);
  v15 = *v7;
  if (*v7)
  {
    v16 = 0;
    do
    {
      vDSP_sve(v10, 1, v9++, v15);
      v15 = *v7;
      v10 += *v7;
      ++v16;
    }

    while (v16 < *v7);
  }

  v17 = *(a1 + 392);
  v18 = *(a1 + 280);
  v56 = a3;
  v55 = a2;
  MEMORY[0x1E12BE7F0](*(a1 + 272), 1, *(a1 + 264) + 4 * (v17[2] * a3 + a2) * *v17, 1, v18, 1);
  LODWORD(__C) = 0;
  vDSP_sve(v18, 1, &__C, *v17);
  *&__C = 1.0 / *&__C;
  MEMORY[0x1E12BE940](v18, 1, &__C, v18, 1, *v17);
  v19 = *(a1 + 288);
  v20 = *(a1 + 248);
  v59 = *(a1 + 352);
  v60 = *(a1 + 344);
  v21 = *(a1 + 368);
  v58 = *(a1 + 360);
  v23 = *(a1 + 376);
  v22 = *(a1 + 384);
  bzero(v20, 4 * (*(a1 + 72) * *(a1 + 72)));
  if (*(a1 + 80))
  {
    v24 = 0;
    v25 = 0;
    do
    {
      LODWORD(__C) = 0;
      MixViterbiProd::fullToTopLayerAddr(a1, v25, v60, v59, v58, &__C);
      v26 = *(a1 + 80);
      if (!v26)
      {
        break;
      }

      v27 = 0;
      v28 = __C * *(a1 + 72);
      do
      {
        v29 = *(v19 + 4 * v24);
        if (v29 > 0.0)
        {
          v61 = 0;
          MixViterbiProd::fullToTopLayerAddr(a1, v27, v21, v23, v22, &v61);
          *(v20 + v61 + v28) = v29 + *(v20 + v61 + v28);
          v26 = *(a1 + 80);
        }

        ++v24;
        ++v27;
      }

      while (v27 < v26);
      ++v25;
    }

    while (v25 < v26);
  }

  v30 = *(a1 + 72);
  if (v30)
  {
    v31 = *(a1 + 248);
    v32 = v31 + 4 * v30;
    v33 = v30 * v30;
    v34 = 4 * (v30 * v30);
    v35 = 4 * v30;
    do
    {
      if (v33)
      {
        v36 = 0;
        v37 = 0.0;
        do
        {
          v37 = v37 + *(v31 + v36);
          v36 += v35;
        }

        while (v34 != v36);
        v38 = 0;
        v39 = 1.0 / (v37 + 2.2204e-16);
        do
        {
          *(v31 + v38) = *(v31 + v38) * v39;
          v38 += v35;
        }

        while (v34 != v38);
      }

      v31 += 4;
    }

    while (v31 != v32);
  }

  v40.n128_f32[0] = MixViterbiProd::marginalizeStateDist(a1, *(a1 + 280), *(a1 + 296), *(a1 + 344), *(a1 + 360), *(a1 + 352));
  v41 = *(a1 + 400);
  v42 = *(a1 + 248);
  v43 = *(a1 + 168);
  v45 = *(a1 + 312);
  v44 = *(a1 + 320);
  v46 = *(a1 + 336);
  v47 = *v41;
  if (*v41)
  {
    v48 = 0;
    v49 = *(a1 + 328);
    v50 = *(a1 + 312);
    do
    {
      vDSP_mmov(v49, v50, v47, 1uLL, v47, v47);
      v47 = *v41;
      v50 += *v41;
      ++v48;
    }

    while (v48 < *v41);
  }

  MEMORY[0x1E12BE7F0](v42, 1, v45, 1, v45, 1, v41[1], v40);
  v51 = *v41;
  if (*v41)
  {
    v52 = 0;
    v53 = v44;
    do
    {
      __C = 0;
      vDSP_maxvi(v45, 1, v53, &__C, v51);
      v51 = *v41;
      v45 += *v41;
      ++v53;
      *(v46 + 4 * v52++) = __C;
    }

    while (v52 < v51);
  }

  MEMORY[0x1E12BE7F0](v43 + 4 * (v55 + v41[2] * v56) * v51, 1, v44, 1, v44, 1);
  ViterbiOdep::normalizeLik(v41, v44);

  *&result = MixViterbiProd::prepareForNextIter(a1, a4).u64[0];
  return result;
}

void MixViterbiProd::decodeRaw(uint64_t a1, std::vector<unsigned int>::size_type __sz, std::vector<unsigned int> *this)
{
  v4 = __sz;
  this->__end_ = this->__begin_;
  std::vector<unsigned int>::resize(this, __sz);
  __C = 0.0;
  v15 = 0;
  vDSP_maxvi(*(a1 + 328), 1, &__C, &v15, *(a1 + 72));
  v6 = (v4 - 1);
  begin = this->__begin_;
  v8 = this->__end_ - this->__begin_;
  if (v8 <= v6)
  {
    goto LABEL_10;
  }

  v9 = v15;
  begin[v6] = v15;
  if (v4 - 2 >= 0)
  {
    v10 = -*(a1 + 72);
    v11 = *(a1 + 176);
    v12 = *v11;
    while (1)
    {
      v13 = v10 + v9;
      v14 = v13 < 0 ? *(v11 + 2) + ~((*(v11 + 2) - v13 + ~*(v11 + 3)) % *(v11 + 2)) : (*(v11 + 3) + v13) % *(v11 + 2);
      LODWORD(v6) = v6 - 1;
      if (v8 <= v6)
      {
        break;
      }

      v10 -= *(a1 + 72);
      v9 = *(v12 + 4 * v14);
      begin[v6] = v9;
      if (v6 <= 0)
      {
        return;
      }
    }

LABEL_10:
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }
}

void MixViterbiProd::convertRawStateSequenceToProd(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = a2[1] - *a2;
  v7 = (v6 >> 2);
  std::vector<std::vector<unsigned int>>::resize(a3, v7);
  if ((v6 & 0x3FFFFFFFCLL) != 0)
  {
    v8 = 0;
    v9 = *a3;
    v10 = a3[1];
    v11 = 4 * (*(a1 + 72) - 1);
    do
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3) <= v8 || (std::vector<unsigned int>::resize((v9 + 24 * v8), *(a1 + 92)), v9 = *a3, v10 = a3[1], 0xAAAAAAAAAAAAAAABLL * ((v10 - *a3) >> 3) <= v8))
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *(v9 + 24 * v8);
      if (*(v9 + 24 * v8 + 8) == v12 || v8 >= (a2[1] - *a2) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = *(a1 + 96);
      v14 = *(a1 + 120);
      if (v13 != v14)
      {
        v15 = (*(*a2 + 4 * v8) % *(a1 + 72));
        v16 = v11;
        do
        {
          if (v16)
          {
            v17 = v15 % *v13;
            LODWORD(v15) = v15 / *v13;
          }

          else
          {
            v17 = v15;
          }

          *v12++ = v15;
          ++v13;
          v16 -= 4;
          v15 = v17;
        }

        while (v13 != v14);
      }

      ++v8;
    }

    while (v8 != v7);
  }
}

void MixViterbiProd::retrieveTimeStamps(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  std::vector<DataTimeStamp>::resize(a4, (a3 - a2 + 1));
  if (a3 >= a2)
  {
    v8 = *a4;
    v9 = *(a1 + 192);
    v10 = a2 - 1;
    do
    {
      *v8 = MRRingBuffer<DataTimeStamp>::GetSample(v9, v10);
      *(v8 + 8) = v11;
      v8 += 16;
      ++v10;
    }

    while (a3 != v10);
  }
}

void MixViterbiProd::updateDecode(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v5 = *(a1 + 216);
  v6 = (a4 - v5);
  if (a4 - v5 >= 0)
  {
    memset(&v11, 0, sizeof(v11));
    MixViterbiProd::decodeRaw(a1, -v5, &v11);
    memset(&__p, 0, sizeof(__p));
    std::vector<unsigned int>::resize(&__p, v6);
    MixViterbiProd::copyStateSequenceAndUpdateTrajectoryRingBuf(a1, &v11.__begin_, &__p, v6);
    MixViterbiProd::convertRawStateSequenceToProd(a1, &__p, a2);
    MixViterbiProd::retrieveTimeStamps(a1, *(a1 + 216) + 1, a4, a3);
    *(a1 + 216) = a4;
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    if (v11.__begin_)
    {
      v11.__end_ = v11.__begin_;
      operator delete(v11.__begin_);
    }
  }

  *(a1 + 220) = 0;
}

void sub_1DDE28788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MixViterbiProd::copyStateSequenceAndUpdateTrajectoryRingBuf(uint64_t a1, unsigned int **a2, std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  std::vector<unsigned int>::resize(this, __sz);
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ != end)
  {
    v9 = *a2;
    v10 = *(a1 + 184);
    v11 = *v10;
    do
    {
      v12 = *v9++;
      *begin++ = v12;
      *(v11 + 4 * *(v10 + 3)) = v12;
      *(v10 + 3) = (*(v10 + 3) + 1) % *(v10 + 2);
    }

    while (begin != end);
  }
}

BOOL MixViterbiProd::getForceDecodeTimeFramesRelativeToPresent(MixViterbiProd *this, double a2, int *a3)
{
  v5 = *(this + 59);
  if (v5 >= *(this + 22))
  {
    v5 = *(this + 22);
  }

  v6 = -v5;
  if ((*(this + 220) & 1) == 0 && *(this + 54) > v6)
  {
    v6 = *(this + 54);
  }

  *a3 = 0;
  if ((v6 & 0x80000000) == 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(this + 24);
  while (1)
  {
    v9 = v7 - 1;
    MRRingBuffer<DataTimeStamp>::GetSample(v8, v7 - 1);
    result = v10 <= a2;
    if (v10 <= a2)
    {
      break;
    }

    *a3 = v7--;
    if (v9 <= v6)
    {
      return 0;
    }
  }

  return result;
}

_DWORD *MixViterbiProd::decodeRaw_Post(uint64_t a1, std::vector<unsigned int>::size_type __sz, std::vector<unsigned int> *this, uint64_t *a4)
{
  v6 = __sz;
  this->__end_ = this->__begin_;
  v8 = __sz;
  std::vector<unsigned int>::resize(this, __sz);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](a4);
  std::vector<std::vector<float>>::resize(a4, v8);
  __C = 0.0;
  v18 = 0;
  vDSP_maxvi(*(a1 + 328), 1, &__C, &v18, *(a1 + 72));
  v9 = (v6 - 1);
  if (v9 >= this->__end_ - this->__begin_)
  {
LABEL_14:
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = v18;
  this->__begin_[v9] = v18;
  if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v9)
  {
    goto LABEL_13;
  }

  v11 = *(a1 + 72);
  std::vector<float>::resize((*a4 + 24 * v9), v11);
  if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v9)
  {
    goto LABEL_13;
  }

  v12 = -v11;
  result = MixViterbiProd::copyFloat32RingBufToVector(*(*a4 + 24 * v9), *(a1 + 208), v12, *(a1 + 72));
  if (v6 - 2 >= 0)
  {
    while (1)
    {
      v14 = *(a1 + 176);
      v15 = v12 + v10;
      v16 = (v12 + v10) < 0 ? *(v14 + 8) + ~((*(v14 + 8) - v15 + ~*(v14 + 12)) % *(v14 + 8)) : (*(v14 + 12) + v15) % *(v14 + 8);
      v9 = (v9 - 1);
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v9)
      {
        break;
      }

      v10 = *(*v14 + 4 * v16);
      v17 = *(a1 + 72);
      std::vector<float>::resize((*a4 + 24 * v9), v17);
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v9)
      {
        break;
      }

      v12 -= v17;
      result = MixViterbiProd::copyFloat32RingBufToVector(*(*a4 + 24 * v9), *(a1 + 208), v12, *(a1 + 72));
      if (v9 >= this->__end_ - this->__begin_)
      {
        goto LABEL_14;
      }

      this->__begin_[v9] = v10;
      if (v9 <= 0)
      {
        return result;
      }
    }

LABEL_13:
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  return result;
}

_DWORD *MixViterbiProd::copyFloat32RingBufToVector(_DWORD *result, uint64_t *a2, int a3, int a4)
{
  if (a4)
  {
    v4 = *a2;
    v5 = ~a3;
    do
    {
      if (a3 < 0)
      {
        v6 = *(a2 + 2) + ~((v5 + *(a2 + 2) - *(a2 + 3)) % *(a2 + 2));
      }

      else
      {
        v6 = (a3 + *(a2 + 3)) % *(a2 + 2);
      }

      *result++ = *(v4 + 4 * v6);
      --v5;
      ++a3;
      --a4;
    }

    while (a4);
  }

  return result;
}

void MixViterbiProd::updateDecode_Post(uint64_t a1, uint64_t *a2, uint64_t *a3, char ***a4, int a5)
{
  v6 = *(a1 + 216);
  v7 = (a5 - v6);
  if (a5 - v6 >= 0)
  {
    memset(&__p, 0, sizeof(__p));
    memset(v17, 0, sizeof(v17));
    MixViterbiProd::decodeRaw_Post(a1, -v6, &__p, v17);
    memset(&v16, 0, sizeof(v16));
    memset(v15, 0, sizeof(v15));
    std::vector<unsigned int>::resize(&v16, v7);
    std::vector<std::vector<float>>::resize(a4, v7);
    MixViterbiProd::copyStateSequenceAndUpdateTrajectoryRingBuf(a1, &__p.__begin_, &v16, v7);
    std::vector<std::vector<float>>::resize(a4, v7);
    v13 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      v14 = v17[0];
      do
      {
        if (v13 != v14)
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v13, *v14, v14[1], (v14[1] - *v14) >> 2);
          v12 = a4[1];
        }

        v14 += 3;
        v13 += 3;
      }

      while (v13 != v12);
    }

    MixViterbiProd::convertRawStateSequenceToProd(a1, &v16, a2);
    MixViterbiProd::retrieveTimeStamps(a1, *(a1 + 216) + 1, a5, a3);
    *(a1 + 216) = a5;
    v19 = v15;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v19);
    if (v16.__begin_)
    {
      v16.__end_ = v16.__begin_;
      operator delete(v16.__begin_);
    }

    v16.__begin_ = v17;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }
  }

  *(a1 + 220) = 0;
}

void sub_1DDE28CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  a13 = &a16;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void *std::ostringstream::str[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

id ___Z17createDescriptionRK18AudioChannelLayout_block_invoke(uint64_t a1)
{
  v21[1] = v21;
  v26[3] = *MEMORY[0x1E69E9840];
  v22 = *(*(a1 + 32) + 8);
  v2 = 8 * v22;
  v23 = v21 - ((8 * v22 + 15) & 0xFFFFFFFF0);
  bzero(v23, 8 * v22);
  v3 = *(a1 + 32);
  if (*(v3 + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v25[0] = @"AudioChannelLabel";
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + v4 + 12)];
      v26[0] = v6;
      v25[1] = @"AudioChannelFlags";
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*(a1 + 32) + v4 + 16)];
      v26[1] = v7;
      v25[2] = @"Coordinates";
      LODWORD(v8) = *(*(a1 + 32) + v4 + 20);
      v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
      v24[0] = v9;
      LODWORD(v10) = *(*(a1 + 32) + v4 + 24);
      v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
      v24[1] = v11;
      LODWORD(v12) = *(*(a1 + 32) + v4 + 28);
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
      v24[2] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
      v26[2] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
      v16 = *&v23[8 * v5];
      *&v23[8 * v5] = v15;

      ++v5;
      v3 = *(a1 + 32);
      v17 = *(v3 + 8);
      v4 += 20;
    }

    while (v5 < v17);
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:v17];
  if (v22)
  {
    v19 = v23 - 8;
    do
    {

      v2 -= 8;
    }

    while (v2);
  }

  return v18;
}

void sub_1DDE29130(_Unwind_Exception *exception_object)
{
  if (*(v2 - 176))
  {
    v4 = *(v2 - 168) - 8;
    do
    {

      v1 -= 8;
    }

    while (v1);
  }

  _Unwind_Resume(exception_object);
}

id createDescription(const AudioStreamBasicDescription *a1)
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:{a1->mSampleRate, @"SampleRate"}];
  v14[0] = v2;
  v13[1] = @"AudioFormatID";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1->mFormatID];
  v14[1] = v3;
  v13[2] = @"AudioFormatFlags";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1->mFormatFlags];
  v14[2] = v4;
  v13[3] = @"BytesPerPacket";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1->mBytesPerPacket];
  v14[3] = v5;
  v13[4] = @"FramesPerPacket";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1->mFramesPerPacket];
  v14[4] = v6;
  v13[5] = @"BytesPerFrame";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1->mBytesPerFrame];
  v14[5] = v7;
  v13[6] = @"ChannelsPerFrame";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1->mChannelsPerFrame];
  v14[6] = v8;
  v13[7] = @"BitsPerChannel";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1->mBitsPerChannel];
  v14[7] = v9;
  v13[8] = @"Reserved";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1->mReserved];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:9];

  return v11;
}

void addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(uint64_t a1, AudioUnitPropertyID a2, void *a3, uint64_t a4)
{
  v7 = a3;
  HIDWORD(v15) = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(*a1, a2, *(a1 + 8), *(a1 + 12), &v15 + 1, 0);
  if (PropertyInfo)
  {
    v9 = 1;
  }

  else
  {
    v9 = HIDWORD(v15) == 0;
  }

  if (!v9)
  {
    MEMORY[0x1EEE9AC00](PropertyInfo);
    v11 = &v14 - ((v10 + 15) & 0x1FFFFFFF0);
    if (!AudioUnitGetProperty(*a1, a2, *(a1 + 8), *(a1 + 12), (v11 & 0xFFFFFFFFFFFFFFC0), &v15 + 1))
    {
      v12 = *(a1 + 16);
      v13 = (*(*a4 + 16))(a4, v11 & 0xFFFFFFFFFFFFFFC0, HIDWORD(v15));
      [v12 setObject:v13 forKey:v7];
    }
  }
}

id getABHelperSerializer<unsigned int []>(void)::Serializer::Serialize(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3 >> 2;
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = (v19 - v7);
  bzero(v19 - v7, v9);
  if (a3 >= 4)
  {
    v10 = v8;
    v11 = v5;
    do
    {
      v12 = *a2++;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
      v14 = *v10;
      *v10++ = v13;

      --v11;
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:v5];
  v16 = 8 * v6;
  v17 = (v8 - 1);
  do
  {

    v16 -= 8;
  }

  while (v16);

  return v15;
}

void sub_1DDE296E8(_Unwind_Exception *a1)
{
  v4 = 8 * v2;
  v5 = v1 - 8;
  do
  {

    v4 -= 8;
  }

  while (v4);
  _Unwind_Resume(a1);
}

id getABHelperSerializer<AUChannelInfo>(void)::Serializer::Serialize(uint64_t a1, __int16 *a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"InChannels";
  v3 = [MEMORY[0x1E696AD98] numberWithShort:*a2];
  v7[1] = @"OutChannels";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithShort:a2[1]];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

id getABHelperSerializer<AudioUnitFrequencyResponseBin>(void)::Serializer::Serialize(uint64_t a1, double *a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"Frequency";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*a2];
  v7[1] = @"Magnitude";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a2[1]];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

id getABHelperSerializer<AudioChannelLayout>(void)::Serializer::Serialize(uint64_t a1, unsigned int *a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"AudioChannelLayoutTag";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a2];
  v11[0] = v3;
  v10[1] = @"AudioChannelBitmap";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2[1]];
  v11[1] = v4;
  v10[2] = @"NumberChannelDescriptions";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2[2]];
  v11[2] = v5;
  v10[3] = @"AudioChannelDescriptions";
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___Z17createDescriptionRK18AudioChannelLayout_block_invoke;
  v9[3] = &__block_descriptor_40_e14___NSArray_8__0l;
  v9[4] = a2;
  v6 = ___Z17createDescriptionRK18AudioChannelLayout_block_invoke(v9);
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v7;
}

void addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(uint64_t a1, AudioUnitPropertyID a2, void *a3, uint64_t a4)
{
  v7 = a3;
  HIDWORD(v15) = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(*a1, a2, *(a1 + 8), *(a1 + 12), &v15 + 1, 0);
  if (PropertyInfo)
  {
    v9 = 1;
  }

  else
  {
    v9 = HIDWORD(v15) == 0;
  }

  if (!v9)
  {
    MEMORY[0x1EEE9AC00](PropertyInfo);
    v11 = &v14 - ((v10 + 15) & 0x1FFFFFFF0);
    if (!AudioUnitGetProperty(*a1, a2, *(a1 + 8), *(a1 + 12), (v11 & 0xFFFFFFFFFFFFFFC0), &v15 + 1))
    {
      v12 = *(a1 + 16);
      v13 = (*(*a4 + 16))(a4, v11 & 0xFFFFFFFFFFFFFFC0, HIDWORD(v15));
      [v12 setObject:v13 forKey:v7];
    }
  }
}

id getABHelperSerializer<float []>(void)::Serializer::Serialize(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3 >> 2;
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = (v19 - v7);
  bzero(v19 - v7, v9);
  if (a3 >= 4)
  {
    v11 = v8;
    v12 = v5;
    do
    {
      LODWORD(v10) = *a2;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
      v14 = *v11;
      *v11++ = v13;

      ++a2;
      --v12;
    }

    while (v12);
  }

  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:v5];
  v16 = 8 * v6;
  v17 = (v8 - 1);
  do
  {

    v16 -= 8;
  }

  while (v16);

  return v15;
}

void sub_1DDE29F04(_Unwind_Exception *a1)
{
  v4 = 8 * v2;
  v5 = v1 - 8;
  do
  {

    v4 -= 8;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void addGenericBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = (*(**a1 + 296))(*a1, a2, *a1[1], *a1[2]);
  if (v9)
  {
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v16 - ((v11 + 15) & 0x1FFFFFFF0);
    HIDWORD(v17) = v13;
    if (!(*(**a1 + 304))(v10))
    {
      v14 = *a1[3];
      v15 = (*(*a4 + 16))(a4, v12 & 0xFFFFFFFFFFFFFFC0, HIDWORD(v17));
      [v14 setObject:v15 forKey:v7];
    }
  }
}

void addSpecificBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = (*(**a1 + 296))(*a1, a2, *a1[1], *a1[2]);
  if (v9)
  {
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v16 - ((v11 + 15) & 0x1FFFFFFF0);
    HIDWORD(v17) = v13;
    if (!(*(**a1 + 304))(v10))
    {
      v14 = *a1[3];
      v15 = (*(*a4 + 16))(a4, v12 & 0xFFFFFFFFFFFFFFC0, HIDWORD(v17));
      [v14 setObject:v15 forKey:v7];
    }
  }
}

uint64_t AUSM::Properties::Properties(uint64_t a1, uint64_t a2, int a3, int a4, __int128 *a5)
{
  *a1 = &unk_1F59311D0;
  v9 = (a1 + 8);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    v9->__r_.__value_.__r.__words[2] = *(a5 + 2);
    *&v9->__r_.__value_.__l.__data_ = v10;
  }

  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

void AUSM::Properties::addPropertyMapEntry<unsigned int>()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_1DDE2AA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void AUSM::Properties::addCFURLAndCStringPropertyMapEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  if (*(a5 + 23) >= 0)
  {
    v6 = *(a5 + 23);
  }

  else
  {
    v6 = a5[1];
  }

  v7 = __p;
  std::string::basic_string[abi:ne200100](__p, v6 + 6);
  if (v10 < 0)
  {
    v7 = __p[0];
  }

  if (v6)
  {
    if (*(a5 + 23) >= 0)
    {
      v8 = a5;
    }

    else
    {
      v8 = *a5;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, " CFURL");
  operator new();
}

void sub_1DDE2AD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x1E12BD160](v14, 0x10B3C403C7774E2);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t AUSM::AppleSauceCFWithMutex<__CFURL const*>::~AppleSauceCFWithMutex(uint64_t a1)
{
  std::mutex::~mutex((a1 + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

{
  std::mutex::~mutex((a1 + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

uint64_t AUSM::PropertyDescriptor::PropertyDescriptor(uint64_t a1, int a2, int a3, char a4, __int128 *a5)
{
  *a1 = &unk_1F5931288;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 40) = *(a5 + 2);
    *(a1 + 24) = v6;
  }

  return a1;
}

void AUSM::AtomicProperty<AUSM::eBinauralCompatibilityMode>::createCF(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
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

uint64_t AUSM::PropertyDescriptor::isWritable(AUSM::PropertyDescriptor *this, int a2)
{
  v2 = *(this + 2);
  v3 = a2 ^ 1;
  if (v2 != 2)
  {
    v3 = 0;
  }

  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eBinauralCompatibilityMode>::setMaxValue(uint64_t result, _DWORD *a2)
{
  *(result + 64) = *a2;
  *(result + 68) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eBinauralCompatibilityMode>::setMinValue(uint64_t result, _DWORD *a2)
{
  *(result + 56) = *a2;
  *(result + 60) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eBinauralCompatibilityMode>::setData(uint64_t a1, unsigned int *a2, int a3, char a4)
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

uint64_t AUSM::AtomicProperty<AUSM::eBinauralCompatibilityMode>::getData(uint64_t a1, unsigned int *a2)
{
  v2 = atomic_load(*(a1 + 48));
  *a2 = v2;
  return 0;
}

void AUSM::AtomicPropertyWithRange<AUSM::eBinauralCompatibilityMode>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicPropertyWithRange<AUSM::eBinauralCompatibilityMode>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::AtomicProperty<AUSM::ExclusionZone::ePreset>::createCF(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
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

uint64_t AUSM::AtomicProperty<AUSM::ExclusionZone::ePreset>::setData(uint64_t a1, unsigned int *a2, int a3, char a4)
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
  v9 = atomic_load(*(a1 + 48));
  if (v8 == v9)
  {
    return 2;
  }

  atomic_store(v8, *(a1 + 48));
  return 1;
}

uint64_t AUSM::AtomicProperty<AUSM::ExclusionZone::ePreset>::getData(uint64_t a1, unsigned int *a2)
{
  v2 = atomic_load(*(a1 + 48));
  *a2 = v2;
  return 0;
}

void AUSM::AtomicProperty<AUSM::ExclusionZone::ePreset>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicProperty<AUSM::ExclusionZone::ePreset>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::CFURLPropertyCStringInterface::printValue(AUSM::CFURLPropertyCStringInterface *this@<X0>, _BYTE *a2@<X8>)
{
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&anURL, *(this + 6));
  v3 = anURL;
  if (anURL)
  {
    applesauce::CF::get_filesystem_path(&cf, anURL);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(a2, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v3);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "[empty]");
  }
}

void sub_1DDE2B61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::StringRef::~StringRef(&a9);
  applesauce::CF::URLRef::~URLRef(&a10);
  _Unwind_Resume(a1);
}

void AUSM::CFURLPropertyCStringInterface::createCF(AUSM::CFURLPropertyCStringInterface *this@<X0>, void *a2@<X8>)
{
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&anURL, *(this + 6));
  v3 = anURL;
  if (anURL)
  {
    applesauce::CF::get_filesystem_path(&cf, anURL);
    v4 = cf;
    if (cf)
    {
      CFRetain(cf);
      v5 = cf;
      *a2 = v4;
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      *a2 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1DDE2B6F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::URLRef::~URLRef(va);
  _Unwind_Resume(a1);
}

uint64_t AUSM::CFURLPropertyCStringInterface::setData(AUSM::CFURLPropertyCStringInterface *this, _BYTE *__src, size_t __n, char a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (!v4)
  {
    return 5;
  }

  if (v4 == 2 && (a4 & 1) != 0)
  {
    return 6;
  }

  cf = 0;
  v7 = __n;
  if (__n <= 1)
  {
    if (!__src || __n != 1 || !*__src)
    {
      goto LABEL_43;
    }

    *(&__dst[0].__r_.__value_.__s + 23) = 1;
  }

  else
  {
    if (__n >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = __n;
  }

  memcpy(__dst, __src, __n);
  __dst[0].__r_.__value_.__s.__data_[v7] = 0;
  v8 = SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
  size = __dst[0].__r_.__value_.__l.__size_;
  v9 = __dst[0].__r_.__value_.__r.__words[0];
  if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0].__r_.__value_.__r.__words[0];
  }

  if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = __dst[0].__r_.__value_.__l.__size_;
  }

  if (v12 >= 7)
  {
    v13 = v11 + v12;
    v14 = v11;
    do
    {
      v15 = memchr(v14, 102, v12 - 6);
      if (!v15)
      {
        break;
      }

      if (LODWORD(v15->__r_.__value_.__l.__data_) == 1701603686 && *(v15->__r_.__value_.__r.__words + 3) == 791624293)
      {
        if (v15 == v11)
        {
          std::string::erase(__dst, 0, 7uLL);
          v8 = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
          size = __dst[0].__r_.__value_.__l.__size_;
          v9 = __dst[0].__r_.__value_.__r.__words[0];
        }

        break;
      }

      v14 = (&v15->__r_.__value_.__l.__data_ + 1);
      v12 = v13 - v14;
    }

    while (v13 - v14 >= 7);
  }

  if ((v8 & 0x80u) == 0)
  {
    v17 = __dst;
  }

  else
  {
    v17 = v9;
  }

  if ((v8 & 0x80u) == 0)
  {
    v18 = v8;
  }

  else
  {
    v18 = size;
  }

  v19 = MEMORY[0x1E12BB970](0, v17, v18, 0, 0);
  *&v36.st_dev = v19;
  if (!v19)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v20 = cf;
  cf = v19;
  *&v36.st_dev = v20;
  if (v20)
  {
    CFRelease(v20);
  }

  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
  }

LABEL_43:
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v34, *(this + 6));
  if (!cf)
  {
    if (!v34)
    {
      return 2;
    }

    goto LABEL_64;
  }

  if (!CFURLGetFileSystemRepresentation(cf, 1u, __dst, 1024) || stat(__dst, &v36) || (v36.st_mode & 0xF000) == 0x4000)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v23 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v27 = applesauce::CF::URLRef::operator->(&cf);
      applesauce::CF::get_filesystem_path(&v33, *v27);
      v28 = applesauce::CF::StringRef::operator->(&v33);
      applesauce::CF::convert_to<std::string,0>(__dst, *v28);
      if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = __dst;
      }

      else
      {
        v29 = __dst[0].__r_.__value_.__r.__words[0];
      }

      v36.st_dev = 136315394;
      *&v36.st_mode = "setData";
      WORD2(v36.st_ino) = 2080;
      *(&v36.st_ino + 6) = v29;
      _os_log_error_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_ERROR, "CFURLPropertyCStringInterface::%s: file %s not found", &v36, 0x16u);
      if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst[0].__r_.__value_.__l.__data_);
      }

      applesauce::CF::StringRef::~StringRef(&v33);
    }

    v6 = 7;
    goto LABEL_68;
  }

  if (!v34)
  {
    goto LABEL_74;
  }

  if (!cf)
  {
LABEL_64:
    v24 = 0;
    v25 = *(this + 6);
LABEL_65:
    v32 = v24;
    AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(v25, &v32);
    if (v24)
    {
      CFRelease(v24);
    }

    v6 = 1;
    goto LABEL_68;
  }

  applesauce::CF::get_absolute_path(__dst, v34);
  if (!cf)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
  }

  applesauce::CF::get_absolute_path(&v36, cf);
  v21 = *&v36.st_dev;
  v22 = (__dst[0].__r_.__value_.__r.__words[0] | *&v36.st_dev) == 0;
  if (__dst[0].__r_.__value_.__r.__words[0] && *&v36.st_dev)
  {
    v22 = CFEqual(__dst[0].__r_.__value_.__l.__data_, *&v36.st_dev) != 0;
    v21 = *&v36.st_dev;
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (__dst[0].__r_.__value_.__r.__words[0])
  {
    CFRelease(__dst[0].__r_.__value_.__l.__data_);
  }

  if (!v22)
  {
LABEL_74:
    v24 = cf;
    v25 = *(this + 6);
    if (cf)
    {
      CFRetain(cf);
    }

    goto LABEL_65;
  }

  v6 = 2;
LABEL_68:
  if (v34)
  {
    CFRelease(v34);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sub_1DDE2BB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::operator=(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *applesauce::CF::URLRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

uint64_t AUSM::CFURLPropertyCStringInterface::getData(AUSM::CFURLPropertyCStringInterface *this, char *a2)
{
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&anURL, *(this + 6));
  v3 = anURL;
  if (anURL)
  {
    applesauce::CF::get_filesystem_path(&cf, anURL);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(__src, cf);
    if (v9 < 0)
    {
      v4 = *__src;
      strcpy(a2, *__src);
      operator delete(v4);
    }

    else
    {
      strcpy(a2, __src);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v3);
  }

  else
  {
    *a2 = 0;
  }

  return 0;
}

void sub_1DDE2BEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14)
{
  __cxa_free_exception(v14);
  applesauce::CF::StringRef::~StringRef(&a10);
  applesauce::CF::URLRef::~URLRef(&a14);
  _Unwind_Resume(a1);
}

uint64_t AUSM::CFURLPropertyCStringInterface::getDataSizeBytes(AUSM::CFURLPropertyCStringInterface *this)
{
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v9, *(this + 6));
  v1 = v9;
  if (!v9)
  {
    return 1;
  }

  applesauce::CF::get_filesystem_path(&cf, v9);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(&__p, cf);
  if (v8 < 0)
  {
    v2 = (v7 + 1);
    operator delete(__p);
  }

  else
  {
    v2 = v8 + 1;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v1);
  return v2;
}

void sub_1DDE2BFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::StringRef::~StringRef(&a10);
  applesauce::CF::URLRef::~URLRef((v11 - 24));
  _Unwind_Resume(a1);
}

void AUSM::CFURLPropertyCStringInterface::~CFURLPropertyCStringInterface(void **this)
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

void AUSM::CFProperty<__CFURL const*>::printValue(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&anURL, *(a1 + 48));
  v3 = anURL;
  if (anURL)
  {
    applesauce::CF::get_filesystem_path(&cf, anURL);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(a2, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v3);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "[empty]");
  }
}

void sub_1DDE2C170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::StringRef::~StringRef(&a9);
  applesauce::CF::URLRef::~URLRef(&a10);
  _Unwind_Resume(a1);
}

void AUSM::CFProperty<__CFURL const*>::createCF(uint64_t a1@<X0>, void *a2@<X8>)
{
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&cf, *(a1 + 48));
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

uint64_t AUSM::CFProperty<__CFURL const*>::setData(uint64_t a1, const void **a2, int a3, char a4)
{
  v27 = *MEMORY[0x1E69E9840];
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
  if (v8 && (CFRetain(v8), v9 = CFGetTypeID(v8), v9 != CFURLGetTypeID()))
  {
    url = 0;
    CFRelease(v8);
  }

  else
  {
    url = v8;
  }

  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&cf, *(a1 + 48));
  if (!url)
  {
    if (!cf)
    {
      return 2;
    }

    goto LABEL_33;
  }

  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024) || stat(buffer, &v24) || (v24.st_mode & 0xF000) == 0x4000)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v12 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v16 = applesauce::CF::URLRef::operator->(&url);
      applesauce::CF::get_filesystem_path(&v21, *v16);
      v17 = applesauce::CF::StringRef::operator->(&v21);
      applesauce::CF::convert_to<std::string,0>(buffer, *v17);
      if (v26 >= 0)
      {
        v18 = buffer;
      }

      else
      {
        v18 = *buffer;
      }

      v24.st_dev = 136315394;
      *&v24.st_mode = "setData";
      WORD2(v24.st_ino) = 2080;
      *(&v24.st_ino + 6) = v18;
      _os_log_error_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_ERROR, "CFProperty::%s: file %s not found", &v24, 0x16u);
      if (v26 < 0)
      {
        operator delete(*buffer);
      }

      applesauce::CF::StringRef::~StringRef(&v21);
    }

    v7 = 7;
    goto LABEL_37;
  }

  if (!cf)
  {
    goto LABEL_43;
  }

  if (!url)
  {
LABEL_33:
    v13 = 0;
    v14 = *(a1 + 48);
LABEL_34:
    v20 = v13;
    AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(v14, &v20);
    if (v13)
    {
      CFRelease(v13);
    }

    v7 = 1;
    goto LABEL_37;
  }

  applesauce::CF::get_absolute_path(buffer, cf);
  if (!url)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::get_absolute_path(&v24, url);
  v10 = *&v24.st_dev;
  v11 = (*buffer | *&v24.st_dev) == 0;
  if (*buffer && *&v24.st_dev)
  {
    v11 = CFEqual(*buffer, *&v24.st_dev) != 0;
    v10 = *&v24.st_dev;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (*buffer)
  {
    CFRelease(*buffer);
  }

  if (!v11)
  {
LABEL_43:
    v13 = url;
    v14 = *(a1 + 48);
    if (url)
    {
      CFRetain(url);
    }

    goto LABEL_34;
  }

  v7 = 2;
LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

  if (url)
  {
    CFRelease(url);
  }

  return v7;
}

void sub_1DDE2C55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSM::CFProperty<__CFURL const*>::getData(uint64_t a1, CFTypeRef *a2)
{
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&cf, *(a1 + 48));
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

void sub_1DDE2C65C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::URLRef::~URLRef(va);
  _Unwind_Resume(a1);
}

void AUSM::CFProperty<__CFURL const*>::~CFProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::CFProperty<__CFURL const*>::~CFProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::unique_ptr<AUSM::AtomicProperty<BOOL>>>>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

_BYTE *AUSM::AtomicProperty<BOOL>::printValue@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = atomic_load(*(a1 + 48));
  if (v2)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void AUSM::AtomicProperty<BOOL>::createCF(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  v3 = atomic_load(*(a1 + 48));
  valuePtr = v3 & 1;
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

uint64_t AUSM::AtomicProperty<BOOL>::setData(uint64_t a1, _DWORD *a2, int a3, char a4)
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

  v8 = *a2 != 0;
  v9 = atomic_load(*(a1 + 48));
  if (v8 == (v9 & 1))
  {
    return 2;
  }

  atomic_store(*a2 != 0, *(a1 + 48));
  return 1;
}

uint64_t AUSM::AtomicProperty<BOOL>::getData(uint64_t a1, int *a2)
{
  v2 = atomic_load(*(a1 + 48));
  *a2 = v2 & 1;
  return 0;
}

void AUSM::AtomicProperty<BOOL>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicProperty<BOOL>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::AtomicProperty<AUSM::DistanceParameters>::printValue(std::string *a1@<X8>)
{
  _X20 = 0;
  _X21 = 0;
  __asm { CASPAL          X20, X21, X20, X21, [X8] }

  std::to_string(&v24, *&_X20);
  v9 = std::string::insert(&v24, 0, "ReferenceDistance = ", 0x14uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v25, ", MaxDistance = ", 0x10uLL);
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
  v17 = std::string::append(&v27, ", MaxAttenuation = ", 0x13uLL);
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

void sub_1DDE2CC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
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

void AUSM::AtomicProperty<AUSM::DistanceParameters>::createCF(CFDataRef *a1@<X8>)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  bytes = _X2;
  bytes_4 = vzip1_s32((_X2 >> 32), 0);
  v9 = CFDataCreate(0, &bytes, 12);
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

void sub_1DDE2CE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t AUSM::AtomicProperty<AUSM::DistanceParameters>::setData(uint64_t a1, unsigned int *a2, int a3, char a4)
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
  v9 = *(a2 + 1);
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  if (*a2 == *&_X0)
  {
    v16 = vceq_f32(v9, vzip1_s32((_X0 >> 32), 0));
    if (v16.i8[0] & 1) != 0 && (v16.i8[4])
    {
      return 2;
    }
  }

  v17 = *(a1 + 48);
  _X0 = *a2 | (v9.u32[0] << 32);
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

uint64_t AUSM::AtomicProperty<AUSM::DistanceParameters>::getData(uint64_t a1, uint64_t a2)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *a2 = _X2;
  *(a2 + 4) = vzip1_s32((_X2 >> 32), 0);
  return 0;
}

void AUSM::AtomicProperty<AUSM::DistanceParameters>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicProperty<AUSM::DistanceParameters>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUSM::AtomicProperty<unsigned int>::createCF(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
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

uint64_t AUSM::AtomicProperty<unsigned int>::setData(uint64_t a1, unsigned int *a2, int a3, char a4)
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
  v9 = atomic_load(*(a1 + 48));
  if (v8 == v9)
  {
    return 2;
  }

  atomic_store(v8, *(a1 + 48));
  return 1;
}

uint64_t AUSM::AtomicProperty<unsigned int>::getData(uint64_t a1, unsigned int *a2)
{
  v2 = atomic_load(*(a1 + 48));
  *a2 = v2;
  return 0;
}

void AUSM::AtomicProperty<unsigned int>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicProperty<unsigned int>::~AtomicProperty(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t AUSM::AtomicPropertyWithRange<unsigned int>::setMaxValue(uint64_t result, _DWORD *a2)
{
  *(result + 64) = *a2;
  *(result + 68) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<unsigned int>::setMinValue(uint64_t result, _DWORD *a2)
{
  *(result + 56) = *a2;
  *(result + 60) = 1;
  return result;
}

uint64_t AUSM::AtomicPropertyWithRange<unsigned int>::setData(uint64_t a1, unsigned int *a2, int a3, char a4)
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

void AUSM::AtomicPropertyWithRange<unsigned int>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSM::AtomicPropertyWithRange<unsigned int>::~AtomicPropertyWithRange(uint64_t a1)
{
  *a1 = &unk_1F5931288;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AUsubMAEC::dualEC::~dualEC(AUsubMAEC::dualEC *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    free(v2);
    *(this + 3) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {
    free(v3);
    *(this + 4) = 0;
  }

  v4 = *(this + 5);
  if (v4)
  {
    free(v4);
    *(this + 5) = 0;
  }

  v5 = *(this + 6);
  if (v5)
  {
    free(v5);
    *(this + 6) = 0;
  }

  v6 = *(this + 7);
  if (v6)
  {
    free(v6);
    *(this + 7) = 0;
  }

  v7 = *(this + 8);
  if (v7)
  {
    free(v7);
    *(this + 8) = 0;
  }

  v8 = *(this + 9);
  if (v8)
  {
    free(v8);
    *(this + 9) = 0;
  }
}

double AUsubMAEC::dualEC::initDualEC(uint64_t a1, _DWORD *a2, double a3, double a4)
{
  *(a1 + 180) = a2[12];
  *(a1 + 184) = a2[2];
  *(a1 + 192) = a2[6];
  LODWORD(a4) = a2[7];
  *(a1 + 196) = LODWORD(a4);
  *(a1 + 200) = a2[13];
  *(a1 + 204) = a2[14];
  *(a1 + 188) = a2[15];
  *(a1 + 112) = xmmword_1DE09DBD0;
  *(a1 + 128) = 1138819072;
  *(a1 + 152) = 1101004800;
  *(a1 + 172) = 1;
  *(a1 + 80) = 0;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  *(a1 + 92) = v5;
  if (*&a4 <= 0.0)
  {
    v16 = 0x100000001;
    v8 = 1;
    v7 = 5;
    v20 = 0x100000001;
    goto LABEL_13;
  }

  v6 = floorf(500.0 / *&a4);
  if (v6 <= 1.0)
  {
    v6 = 1.0;
  }

  v7 = v6;
  *(a1 + 88) = v6;
  v8 = a2[13];
  if (v8 > v6)
  {
    v7 = v8 + 1;
    *(a1 + 88) = v8 + 1;
  }

  v9 = vdup_lane_s32(*&a4, 0);
  v10 = vrndm_f32(vdiv_f32(0x42C8000041A00000, v9));
  __asm { FMOV            V4.2S, #1.0 }

  v16 = vcvt_u32_f32(vbsl_s8(vcge_f32(_D4, v10), _D4, v10));
  v17 = vdiv_f32(0x41A0000043480000, v9);
  v18 = floorf(450.0 / *&a4);
  if (v18 <= 1.0)
  {
    v18 = 1.0;
  }

  if (v8 <= v18)
  {
    v8 = v18;
  }

  v19 = vrndm_f32(v17);
  v20 = vcvt_u32_f32(vbsl_s8(vcge_f32(_D4, v19), _D4, v19));
  if (v7 < 5)
  {
    v7 = 5;
LABEL_13:
    *(a1 + 88) = v7;
    goto LABEL_14;
  }

  if (v7 >= 0x51)
  {
    v7 = 80;
    goto LABEL_13;
  }

LABEL_14:
  v21 = v20.i32[0];
  if (v20.i32[0] >= v7)
  {
    v21 = v7;
  }

  v22 = v20.u32[1];
  if (v20.i32[1] >= v7)
  {
    v22 = v7;
  }

  *(a1 + 108) = v22;
  *(a1 + 92) = vmin_u32(v16, vdup_n_s32(v7));
  if (v8 >= v7 + 1)
  {
    v8 = v7 + 1;
  }

  *(a1 + 100) = v21;
  *(a1 + 104) = v8;
  if (v8 > v7)
  {
    v7 = v8;
  }

  v23 = 4 * v7;
  v24 = malloc_type_malloc(v23, 0x52DD780CuLL);
  if (!v24 || (v25 = v24, bzero(v24, v23), *(a1 + 48) = v25, memset_pattern16(v25, &unk_1DE09EA50, v23), v26 = (4 * *(a1 + 88)), v27 = malloc_type_malloc(v26, 0x9BC5B660uLL), (v28 = v27) == 0) && v26 || (bzero(v27, v26), *(a1 + 56) = v28, v29 = malloc_type_malloc(v26, 0x63375BCuLL), v30 = v29, v26) && !v29 || (bzero(v29, v26), *(a1 + 64) = v30, v31 = malloc_type_malloc(v26, 0x6F0E04AAuLL), v32 = v31, v26) && !v31 || (bzero(v31, v26), *(a1 + 72) = v32, v33 = malloc_type_malloc(v26, 0xB5543FF6uLL), v34 = v33, v26) && !v33 || (bzero(v33, v26), *(a1 + 24) = v34, v35 = malloc_type_malloc(v26, 0xE26FE4D3uLL), v36 = v35, v26) && !v35 || (bzero(v35, v26), *(a1 + 32) = v36, v37 = malloc_type_malloc(v26, 0xECCF6B13uLL), v38 = v37, v26) && !v37)
  {
    exception = __cxa_allocate_exception(8uLL);
    v45 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v37, v26);
  *(a1 + 40) = v38;
  v39 = *(a1 + 88);
  if (v39)
  {
    v40 = *(a1 + 56);
    v41 = *(a1 + 64);
    v42 = *(a1 + 72);
    do
    {
      *v40++ = 1;
      *v41++ = 1;
      *v42++ = 1;
      --v39;
    }

    while (v39);
  }

  *(a1 + 176) = 0;
  *(a1 + 156) = xmmword_1DE09C160;
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0000000134110481;
  *(a1 + 132) = xmmword_1DE09DBE0;
  *(a1 + 148) = 814313567;
  return result;
}

void AUsubMAEC::dualEC::dualECProcess(AUsubMAEC::dualEC *this, AUsubMAEC::myFilter *a2, AUsubMAEC::myFilter *a3, AUsubMAEC::Kalman *a4, AUsubMAEC::Kalman *a5, AUsubMAEC::learnRate *a6, AUsubMAEC::learnRate *a7, void **a8, const void **a9, BOOL a10)
{
  __C = 0.0;
  *(this + 44) = 0;
  *(this + 39) = 1;
  *this = a8;
  *(this + 4) = 0;
  if (*(this + 43) == 1)
  {
    *(this + 172) = 0x100000000;
    **(this + 7) = 1;
    *(this + 4) = 2;
    v16 = 0.0;
    v17 = 0;
    v18 = 0.0;
    v19 = 0.0;
    goto LABEL_39;
  }

  v87 = *(a6 + 23);
  v21 = *(a7 + 22);
  v22 = *(a7 + 23);
  v92 = *(a7 + 21);
  v89 = *(a6 + 22);
  v88 = *(a6 + 20);
  v23 = *(this + 33);
  v90 = log10f(v23 + ((v89 + 1.0e-13) / (v88 + 0.000000001))) * 10.0;
  v91 = v21;
  v24 = log10f(v23 + ((v21 + 1.0e-13) / (v88 + 0.000000001))) * 10.0;
  v25 = log10f(v23 + ((v89 + 1.0e-13) / (v87 + 0.000000001))) * 10.0;
  v16 = v22;
  v26 = log10f(v23 + ((v21 + 1.0e-13) / (v22 + 0.000000001))) * 10.0;
  if (v26 <= v25)
  {
    v27 = v26;
    v28 = v27;
  }

  else
  {
    v28 = v25;
  }

  v29 = *(this + 22);
  v30 = v29 - 1;
  if (v29 == 1)
  {
    v36 = *(this + 4);
    v41 = *(this + 5);
    v35 = *(this + 3);
  }

  else
  {
    v31 = 0;
    v33 = *(this + 8);
    v32 = *(this + 9);
    v34 = v32 + 4 * v30;
    v35 = *(this + 3);
    v36 = *(this + 4);
    v37 = *(this + 6);
    v38 = *(this + 7);
    v39 = v33 + 4 * v30;
    v40 = v38 + 4 * v30;
    v41 = *(this + 5);
    v42 = v29 - 2;
    v43 = v30 - 1;
    v44 = v37 + 4 * v30;
    v45 = &v41[v30];
    v46 = &v36[v30];
    v47 = &v35[v30];
    do
    {
      v47[v31] = v35[(v42 + v31)];
      v46[v31] = v36[(v42 + v31)];
      v45[v31] = v41[(v42 + v31)];
      *(v44 + 4 * v31) = *(v37 + 4 * (v42 + v31));
      *(v40 + 4 * v31) = *(v38 + 4 * (v42 + v31));
      *(v39 + 4 * v31) = *(v33 + 4 * (v42 + v31));
      *(v34 + 4 * v31) = *(v32 + 4 * (v42 + v31));
    }

    while (v43 + v31--);
  }

  v17 = v92;
  *v36 = v90;
  *v41 = v28;
  v49 = v90 - v24;
  *v35 = v90 - v24;
  *(this + 20) = 0;
  v19 = v87 / *(this + 46);
  v50 = ((v90 - v24) + *(this + 34)) < 0.0 || v19 < *(this + 37);
  v51 = *(this + 6);
  *v51 = v50;
  if (v88 * 4.0 < v89 && (v19 * 10.0) >= *(this + 37))
  {
    *v51 = 1;
    *(this + 20) = 0x100000001;
    bzero(v51, 4 * *(this + 26));
    v49 = **(this + 3);
  }

  v52 = v49 < *(this + 35) && **(this + 4) < -10.0;
  v53 = *(this + 8);
  **(this + 7) = v52;
  *v53 = v90 > v24;
  **(this + 9) = **(this + 5) < *(this + 36);
  v54 = *(this + 26);
  v18 = v91;
  if (v54 > *(this + 22))
  {
LABEL_38:
    if (*(this + 40))
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

  if (v54 < 1)
  {
    goto LABEL_28;
  }

  v55 = 0;
  v56 = *(this + 6);
  v57 = *(this + 26);
  do
  {
    v58 = *v56++;
    v55 += v58;
    --v57;
  }

  while (v57);
  if (v55)
  {
    v59 = *(this + 21);
  }

  else
  {
LABEL_28:
    v59 = *(this + 21);
    if (v59 > 1)
    {
LABEL_33:
      *(this + 20) = 0x100000001;
      goto LABEL_34;
    }
  }

  if (v59 >= v54)
  {
    goto LABEL_33;
  }

  v60 = *(this + 40);
  if (v60 == 1)
  {
LABEL_34:
    if (a10)
    {
      AUsubMAEC::dualEC::copyKalmanFilter(this, a4, a5);
    }

    else
    {
      AUsubMAEC::dualEC::copyLmsFilter(this, a2, a3);
    }

    *this = a9;
    v61 = 4 * *(this + 48);
    memcpy(a8[6], a9[6], v61);
    memcpy(a8[7], a9[7], v61);
    *(a6 + 14) = *(a7 + 14);
    memcpy(*(a6 + 1), *(a7 + 1), 4 * *(this + 48));
    memcpy(*(a6 + 2), *(a7 + 2), 4 * *(this + 48));
    *(a6 + 21) = v92;
    *(a6 + 22) = v91;
    *(a6 + 23) = v22;
    **(this + 6) = 1;
    *(this + 21) = 0;
    *(this + 39) = 1;
    *(this + 4) = 1;
    goto LABEL_38;
  }

  if (v60)
  {
    goto LABEL_39;
  }

LABEL_52:
  v71 = *(this + 7);
  v72 = *(this + 24);
  if (v72 < 1)
  {
    v73 = 0;
  }

  else
  {
    v73 = 0;
    v74 = *(this + 7);
    do
    {
      v75 = *v74++;
      v73 += v75;
      --v72;
    }

    while (v72);
  }

  v76 = *(this + 25);
  if (v76 < 1)
  {
    v79 = 0.0;
  }

  else
  {
    v77 = 0;
    do
    {
      v78 = *v71++;
      v77 += v78;
      --v76;
    }

    while (v76);
    v79 = v77 * 1.5;
  }

  v80 = *(this + 27);
  if (v80 < 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = 0;
    v82 = *(this + 9);
    do
    {
      v83 = *v82++;
      v81 += v83;
      --v80;
    }

    while (v80);
  }

  if (*(this + 42) > 2)
  {
    v84 = 0;
  }

  else
  {
    vDSP_maxv(*(this + 3), 1, &__C, *(this + 23));
    v84 = __C < -10.0;
  }

  v85 = *(this + 4);
  v86 = v85[1];
  if (*v85 < v86 || ((v86 >= v85[2]) & ~v84) == 0)
  {
    if (v73 == *(this + 24) && v81 == *(this + 27))
    {
      if (v79 > *(this + 25))
      {
        LOBYTE(v84) = 1;
      }

      if (v84)
      {
        goto LABEL_85;
      }
    }

    else if (v84)
    {
LABEL_85:
      *(this + 44) = 1;
      goto LABEL_40;
    }
  }

LABEL_39:
  v62 = *(this + 44);
  if (v62 != 1)
  {
    ++*(this + 20);
    if (v62)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
  }

LABEL_40:
  *(this + 20) = 0;
  if (a10)
  {
    AUsubMAEC::dualEC::copyKalmanFilter(this, a5, a4);
  }

  else
  {
    AUsubMAEC::dualEC::copyLmsFilter(this, a3, a2);
  }

  *(a7 + 14) = *(a6 + 14);
  memcpy(*(a7 + 1), *(a6 + 1), 4 * *(this + 48));
  memcpy(*(a7 + 2), *(a6 + 2), 4 * *(this + 48));
  v63 = *(this + 7);
  **(this + 6) = 0;
  bzero(v63, 4 * *(this + 25));
  v64 = *(this + 9);
  **(this + 8) = 0;
  *v64 = 0;
  v65 = *(this + 42);
  if (v65 <= 4)
  {
    *(this + 42) = v65 + 1;
  }

  *(this + 4) = 2;
  if (!*(this + 44))
  {
LABEL_48:
    v66 = *(this + 23);
    if (v66 < 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = 0;
      v68 = *(this + 8);
      v69 = *(this + 23);
      do
      {
        v70 = *v68++;
        v67 += v70;
        --v69;
      }

      while (v69);
    }

    if (v67 == v66)
    {
      *this = a9;
      *(a6 + 22) = v18;
      *(a6 + 23) = v16;
      *(a6 + 21) = v17;
      *(this + 4) = 3;
      if (v19 >= *(this + 37))
      {
        ++*(this + 21);
      }
    }

    else
    {
      *(this + 21) = 0;
    }
  }

LABEL_61:
  *(this + 1) = a6;
}

int *AUsubMAEC::dualEC::copyLmsFilter(int *result, void *a2, void *a3)
{
  if (result[45] >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = result[48];
    v8 = 4 * result[50] * v7;
    v9 = 4 * v7 * result[51];
    do
    {
      memcpy(*(*a2 + 8 * v6), *(*a3 + 8 * v6), v8);
      result = memcpy(*(a2[1] + 8 * v6), *(a3[1] + 8 * v6), v8);
      if (v5[51])
      {
        memcpy(*(a2[2] + 8 * v6), *(a3[2] + 8 * v6), v9);
        memcpy(*(a2[3] + 8 * v6), *(a3[3] + 8 * v6), v9);
        memcpy(*(a2[4] + 8 * v6), *(a3[4] + 8 * v6), v9);
        result = memcpy(*(a2[5] + 8 * v6), *(a3[5] + 8 * v6), v9);
      }

      ++v6;
    }

    while (v6 < v5[45]);
  }

  return result;
}

_DWORD *AUsubMAEC::dualEC::copyKalmanFilter(_DWORD *result, uint64_t a2, void *a3)
{
  if (result[48] >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = 4 * result[47];
    v8 = 4 * *(a2 + 140);
    do
    {
      memcpy(*(*(a2 + 16) + 8 * v6), *(a3[2] + 8 * v6), v7);
      memcpy(*(*(a2 + 24) + 8 * v6), *(a3[3] + 8 * v6), v7);
      memcpy(*(*(a2 + 32) + 8 * v6), *(a3[4] + 8 * v6), v8);
      result = memcpy(*(*(a2 + 40) + 8 * v6), *(a3[5] + 8 * v6), v8);
      ++v6;
    }

    while (v6 < v5[48]);
  }

  return result;
}

void AU::FTSpatialAC::GetMessenger(AU::FTSpatialAC *this)
{
  {
    if (v1)
    {
      v2 = caulk::concurrent::messenger::shared_logging_priority(v1);
      MEMORY[0x1E12BC1D0](&AU::FTSpatialAC::GetMessenger(void)::sMessenger, 0, v2);
    }
  }
}

uint64_t TTYSignalTracker::Gain(uint64_t this, float a2)
{
  v2 = fabsf(a2);
  v3 = *this;
  v4 = *(this + 48);
  v5 = 0.0;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(this + 12);
      if (v2 >= *(this + 4))
      {
        goto LABEL_21;
      }

      v7 = 0x300000000;
    }

    else
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          v5 = *(this + 20) + (*(this + 28) * *(this + 44));
          v6 = *(this + 8);
          if (v5 <= v6)
          {
            *(this + 44) = 0;
            *(this + 48) = 0;
LABEL_11:
            v5 = v6;
            goto LABEL_21;
          }
        }

        goto LABEL_21;
      }

      v5 = *(this + 16);
      if (*(this + 44) > *(this + 36))
      {
        *(this + 44) = 0x400000000;
        *(this + 20) = v5;
      }

      if (v2 <= v3)
      {
        goto LABEL_21;
      }

      v7 = 0x200000000;
    }

    *(this + 44) = v7;
    goto LABEL_21;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v5 = *(this + 20) + (*(this + 24) * *(this + 44));
      v6 = *(this + 12);
      if (v5 >= v6)
      {
        *(this + 44) = 0x200000000;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v5 = *(this + 8);
    if (v2 > v3)
    {
      *(this + 44) = 0x100000000;
      *(this + 20) = v5;
    }
  }

LABEL_21:
  ++*(this + 44);
  *(this + 16) = v5;
  return this;
}

void *MicIssueDetectorCore::process(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void **a7)
{
  v12 = *a2;
  v13 = a2[1];
  if (v13 != *a2)
  {
    v16 = 0;
    v17 = 0;
    v18 = *a3;
    do
    {
      v19 = *(v12 + v16);
      v20 = *(v12 + v16 + 8);
      if (v20 != v19)
      {
        memmove(*(v18 + v16), v19, v20 - v19);
        v12 = *a2;
        v13 = a2[1];
        v18 = *a3;
      }

      ++v17;
      v16 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3) > v17);
  }

  result = *a4;
  if (*(a1 + 68) == (*(a4 + 8) - *a4) >> 2)
  {
    v22 = *(v12 + 24);
    v23 = *(v12 + 32);
    if (v23 != v22)
    {
      result = memmove(result, v22, v23 - v22);
    }
  }

  v25 = *a5;
  v24 = a5[1];
  if (v24 != *a5)
  {
    v26 = 0;
    v27 = 0;
    v28 = *a6;
    do
    {
      v29 = *(v25 + v26);
      v30 = *(v25 + v26 + 8);
      if (v30 != v29)
      {
        result = memmove(*(v28 + v26), v29, v30 - v29);
        v25 = *a5;
        v24 = a5[1];
        v28 = *a6;
      }

      ++v27;
      v26 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3) > v27);
    v31 = *v25;
    v32 = *(v25 + 8);
    v33 = v32 - *v25;
    if (v32 != *v25)
    {
      v34 = *a7;

      return memmove(v34, v31, v33);
    }
  }

  return result;
}

uint64_t MicIssueDetectorCore::initialize(uint64_t result, int a2, unsigned int a3, float a4)
{
  *(result + 76) = a2;
  *(result + 80) = vcvts_n_f32_u32((a2 - 1) * a2, 1uLL);
  *(result + 64) = a3;
  *(result + 68) = 2 * a3;
  *(result + 72) = a3 + 1;
  *(result + 56) = a4;
  *(result + 60) = a4 / a3;
  return result;
}

void MicIssueDetectorCore::~MicIssueDetectorCore(MicIssueDetectorCore *this)
{
  MicIssueDetectorCore::~MicIssueDetectorCore(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5926508;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v4 = (this + 32);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t AUSpatialMixerV2InputElement::PropertyChanged(AUSpatialMixerV2InputElement *this, uint64_t a2)
{
  v2 = a2;
  v68 = *MEMORY[0x1E69E9840];
  if (a2 > 3285)
  {
    if (a2 > 5686)
    {
      if ((a2 - 104000) > 0x1E || ((1 << (a2 - 64)) & 0x7BFCFFFF) == 0)
      {
        if ((a2 - 5688) >= 2)
        {
          if (a2 == 5687)
          {
            v23 = atomic_load((*(this + 133) + 88));
            if (v23 == 1)
            {
              caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
              v24 = *(this + 53);
              if (v24)
              {
                AUSM::IRManager::getHRIRAttributes(buf, *(this + 214));
                AUSM::OBHDConfig::setDirectSoundAttributes(v24, buf);
                IR::IRDataAttributes::~IRDataAttributes(buf);
              }

              caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
            }

            AUSpatialMixerV2InputElement::NotifyChannelProcessorsOfPropertyChange(this, 5687);
            AUSpatialMixerV2InputElement::SetIsUsingPersonalizedHRTF(this);
          }
        }

        else
        {
          v19 = atomic_load((*(this + 133) + 88));
          if (v19 - 1 <= 1)
          {
            caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
            v20 = *(this + 53);
            if (v20)
            {
              AUSM::IRManager::getEarlyReverbAttributes(buf, *(this + 214), 1);
              AUSM::IRManager::getEarlyReverbAttributes(&v65, *(this + 214), 0);
              AUSM::IRManager::getEarlyReverbAttributes(v64, *(this + 214), 2);
              AUSM::OBHDConfig::setEarlyReverbAttributes(v20, buf, &v65, v64);
              IR::IRDataAttributes::~IRDataAttributes(v64);
              IR::IRDataAttributes::~IRDataAttributes(&v65);
              IR::IRDataAttributes::~IRDataAttributes(buf);
            }

            caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
          }

          AUSpatialMixerV2InputElement::NotifyChannelProcessorsOfPropertyChange(this, v2);
        }

        return 0;
      }

LABEL_14:
      AUSpatialMixerV2InputElement::NotifyChannelProcessorsOfPropertyChange(this, a2);
      return 0;
    }

    if (a2 > 5002)
    {
      if (a2 != 5003 && a2 != 5684)
      {
        return 0;
      }

      goto LABEL_14;
    }

    v8 = a2 + 27;
    if ((a2 - 3301) > 0xB)
    {
      goto LABEL_65;
    }

    if (((1 << v8) & 0x198) != 0)
    {
      goto LABEL_14;
    }

    if (((1 << v8) & 0xC00) != 0)
    {
LABEL_20:
      v9 = atomic_load(this + 760);
      if ((v9 & 1) == 0)
      {
        v10 = atomic_load(this + 761);
        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      v11 = atomic_load(this + 205);
      if (!ChannelLayoutTagIsSupportedHOA(v11))
      {
        return 0;
      }

      v12 = atomic_load((*(this + 133) + 3048));
      if (v12 != 1)
      {
        return 0;
      }

      goto LABEL_48;
    }

    if (a2 != 3301)
    {
LABEL_65:
      if (a2 == 3286)
      {
        v21 = atomic_load((*(this + 133) + 3132));
        AUSM::MatrixMix::setHOAPowerSavingMode(this + 1072, v21 & 1);
      }

      return 0;
    }

    goto LABEL_64;
  }

  if (a2 > 3201)
  {
    if (a2 <= 3273)
    {
      switch(a2)
      {
        case 3202:
        case 3203:
          v4 = atomic_load((*(this + 133) + 88));
          if (v4 == 2)
          {
            caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
            v5 = *(this + 53);
            if (v5)
            {
              AUSM::IRManager::getXTCIRAttributes(buf, *(this + 214));
              AUSM::OBHDConfig::setDirectSoundAttributes(v5, buf);
              IR::IRDataAttributes::~IRDataAttributes(buf);
            }

            caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
          }

          AUSpatialMixerV2InputElement::NotifyChannelProcessorsOfPropertyChange(this, v2);
          goto LABEL_10;
        case 3204:
        case 3205:
          goto LABEL_75;
        case 3206:
        case 3207:
        case 3208:
        case 3209:
        case 3215:
        case 3216:
        case 3221:
        case 3222:
        case 3223:
        case 3225:
        case 3226:
        case 3230:
        case 3231:
        case 3232:
        case 3233:
        case 3234:
        case 3235:
        case 3237:
        case 3238:
        case 3239:
        case 3241:
        case 3243:
        case 3244:
        case 3245:
        case 3246:
        case 3247:
        case 3248:
        case 3249:
        case 3250:
        case 3251:
        case 3252:
        case 3253:
        case 3254:
          return 0;
        case 3210:
        case 3211:
        case 3212:
        case 3213:
        case 3214:
        case 3217:
        case 3218:
        case 3219:
        case 3228:
        case 3229:
        case 3240:
          goto LABEL_14;
        case 3220:
          v39 = atomic_load(this + 262);
          if ((*(this + 817) & 1) != 0 || v39 > 0xFFFEFFFF)
          {
            return 0;
          }

          std::vector<AudioChannelLayout>::vector[abi:ne200100](buf, 1uLL);
          v40 = *buf;
          *(*buf + 4) = 0;
          v40->mNumberChannelDescriptions = 0;
          v40->mChannelLayoutTag = v39;
          AUSpatialMixerV2InputElement::SetAudioChannelLayoutPrivate(this, v40, 1);
LABEL_101:
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          return 0;
        case 3224:
          atomic_store(1u, this + 1681);
          a2 = 3224;
          goto LABEL_14;
        case 3227:
          v41 = atomic_load(this + 259);
          memset(buf, 0, sizeof(buf));
          AUSM::ExclusionZone::getPreset(v41, buf);
          AUSpatialMixerV2InputElement::SetExclusionZones(this, buf);
          atomic_store(1u, this + 1681);
          goto LABEL_101;
        case 3236:
          v25 = atomic_load(this + 761);
          if ((v25 & 1) == 0)
          {
            v26 = atomic_load(this + 760);
            if ((v26 & 1) == 0)
            {
              return 0;
            }
          }

          v27 = atomic_load(this + 1040);
          if (v27)
          {
            std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 800, this + 1336);
            v28 = *(this + 10);
            v29 = *(this + 15);
            v31 = ausdk::AUChannelLayout::NumberChannels(v29, v30);
            GetChannelLayoutChannelLabels(&v65, v29);
            v32 = *&v65.mChannelLayoutTag;
            if (*&v65.mNumberChannelDescriptions == *&v65.mChannelLayoutTag)
            {
              v38 = 0;
              goto LABEL_112;
            }

            v33 = 0;
            v34 = 0;
            v35 = (*&v65.mNumberChannelDescriptions - *&v65.mChannelLayoutTag) >> 2;
            while (1)
            {
              v36 = *(v32 + 4 * v33);
              if (v36 == 3)
              {
                v37 = (*(this + 163) + 8);
                goto LABEL_90;
              }

              if (v36 == 2)
              {
                break;
              }

              if (v36 == 1)
              {
                v37 = *(this + 163);
LABEL_90:
                *v37 = v33;
                ++v34;
              }

              if (v35 <= ++v33)
              {
                v38 = v34 == 3;
LABEL_112:
                atomic_store(v38, this + 1328);
                v45 = atomic_load(this + 1328);
                if (v45)
                {
                  if (!*(this + 162) || (v46 = atomic_load(this + 761), (v46 & 1) != 0))
                  {
                    v47 = *(this + 27);
                    v48 = *(v47 + 84);
                    v49 = AUSpatialMixerV2::MaxFramesForInputSampleRate(v47, v28);
                    if (v49 >= v48)
                    {
                      v50 = v48;
                    }

                    else
                    {
                      v50 = v49;
                    }

                    HIDWORD(v51) = -286331153 * v50;
                    LODWORD(v51) = -286331153 * v50;
                    if ((v51 >> 5) >= 0x888889)
                    {
                      v52 = 2048;
                    }

                    else
                    {
                      v52 = 1920;
                    }

                    v64[0] = v52;
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v53 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
                    {
                      v62 = (this + 1720);
                      if (*(this + 1743) < 0)
                      {
                        v62 = *v62;
                      }

                      *buf = 136315650;
                      *&buf[4] = v62;
                      *&buf[12] = 2080;
                      *&buf[14] = "PropertyChanged";
                      *&buf[22] = 1024;
                      v67 = v52;
                      _os_log_debug_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_DEBUG, "[%s|%s] Creating upmixer with FFT size %u", buf, 0x1Cu);
                    }

                    std::make_unique[abi:ne200100]<ScottyLite,unsigned int &,unsigned int &,std::string &,0>();
                  }

                  if (*(*(this + 162) + 756) == 1)
                  {
                    std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::resize(this + 169, (v31 - 2));
                    v64[0] = *(*(this + 162) + 748);
                    v54 = *(this + 170);
                    v55 = *(this + 169);
                    if (v54 != v55)
                    {
                      v56 = 0;
                      v57 = 1;
                      do
                      {
                        if (!*(v55 + 8 * v56))
                        {
                          std::make_unique[abi:ne200100]<IR::FixedIntegerDelay<float>,unsigned int &,BOOL,0>();
                        }

                        v56 = v57++;
                      }

                      while (v56 < (v54 - v55) >> 3);
                    }
                  }

                  else
                  {
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v58 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                    {
                      v63 = (this + 1720);
                      if (*(this + 1743) < 0)
                      {
                        v63 = *v63;
                      }

                      *buf = 136315394;
                      *&buf[4] = v63;
                      *&buf[12] = 2080;
                      *&buf[14] = "PropertyChanged";
                      _os_log_error_impl(&dword_1DDB85000, v58, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR, Upmixer did not initialize properly", buf, 0x16u);
                    }

                    std::unique_ptr<ScottyLite>::reset[abi:ne200100](this + 162, 0);
                    v59 = *(this + 170);
                    v60 = *(this + 169);
                    while (v59 != v60)
                    {
                      std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](--v59, 0);
                    }

                    *(this + 170) = v60;
                  }
                }

                if (*&v65.mChannelLayoutTag)
                {
                  *&v65.mNumberChannelDescriptions = *&v65.mChannelLayoutTag;
                  operator delete(*&v65.mChannelLayoutTag);
                }

                caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
                goto LABEL_142;
              }
            }

            v37 = (*(this + 163) + 4);
            goto LABEL_90;
          }

          caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 1336);
          if (*(this + 162))
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v42 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
            {
              v61 = (this + 1720);
              if (*(this + 1743) < 0)
              {
                v61 = *v61;
              }

              *buf = 136315394;
              *&buf[4] = v61;
              *&buf[12] = 2080;
              *&buf[14] = "PropertyChanged";
              _os_log_debug_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_DEBUG, "[%s|%s] Deleting upmixer", buf, 0x16u);
            }

            std::unique_ptr<ScottyLite>::reset[abi:ne200100](this + 162, 0);
            v43 = *(this + 170);
            v44 = *(this + 169);
            while (v43 != v44)
            {
              std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](--v43, 0);
            }

            *(this + 170) = v44;
          }

LABEL_142:
          caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 1336);
          break;
        case 3242:
          atomic_store(1u, this + 1681);
          v22 = this + 1682;
          goto LABEL_94;
        case 3255:
LABEL_10:
          v6 = this + 1681;
          goto LABEL_95;
        case 3256:
        case 3257:
          goto LABEL_20;
        default:
          if (a2 != 3269)
          {
            return 0;
          }

LABEL_75:
          v13 = this + 1681;
          goto LABEL_76;
      }

      return 0;
    }

    if (a2 <= 3277)
    {
      if ((a2 - 3274) < 2)
      {
        goto LABEL_14;
      }

      if (a2 != 3276)
      {
        return 0;
      }
    }

    else if ((a2 - 3281) >= 2)
    {
      if (a2 == 3278)
      {
        v22 = this + 1681;
LABEL_94:
        atomic_store(1u, v22);
        v6 = this + 776;
LABEL_95:
        atomic_store(1u, v6);
        return 0;
      }

      if (a2 != 3279)
      {
        return 0;
      }

      goto LABEL_14;
    }

    v16 = atomic_load(this + 760);
    if ((v16 & 1) == 0)
    {
      v17 = atomic_load(this + 761);
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    v18 = atomic_load(this + 205);
    if (!ChannelLayoutTagIsSupportedHOA(v18))
    {
      return 0;
    }

LABEL_48:
    AUSpatialMixerV2InputElement::InitializeChannelProcessors(this);
    return 0;
  }

  if (a2 <= 3099)
  {
    if (a2 > 3004)
    {
      if (a2 != 3005)
      {
        if (a2 != 3010 && a2 != 3013)
        {
          return 0;
        }

        v13 = this + 1682;
LABEL_76:
        atomic_store(1u, v13);
        goto LABEL_14;
      }

      goto LABEL_40;
    }

    if (a2 != 3000)
    {
      if (a2 != 3003)
      {
        return 0;
      }

      atomic_store(1u, this + 1682);
      a2 = 3003;
      goto LABEL_14;
    }

LABEL_64:
    AUSpatialMixerV2InputElement::UpdateSpatializationAlgorithm(this);
    return 0;
  }

  if (a2 > 3107)
  {
    if ((a2 - 3108) >= 2)
    {
      return 0;
    }

    goto LABEL_14;
  }

  switch(a2)
  {
    case 0xC1C:
      AUSpatialMixerV2InputElement::UpdateOutputType(this);
      return 0;
    case 0xC1F:
      AUSpatialMixerV2InputElement::UpdatePointSourceInHeadMode(this);
      return 0;
    case 0xC22:
LABEL_40:
      v14 = atomic_load(this + 760);
      if ((v14 & 1) == 0)
      {
        v15 = atomic_load(this + 761);
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_48;
  }

  return 0;
}

void sub_1DDE2EFDC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 800);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 1336);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2InputElement::UpdateSpatializationAlgorithm(AUSpatialMixerV2InputElement *this)
{
  v1 = atomic_load(this + 760);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v3 = atomic_load((*(this + 177) + 80));
  if (v3 == 1 || !v3 && *(*(this + 176) + 108) > 1u)
  {
    return 0;
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
  v5 = atomic_load(this + 226);
  if (AUSpatialMixerV2InputElement::NeedsMoreThanOneSpatializer(this, v5))
  {
    v6 = *(this + 27);
  }

  else
  {
    v6 = 1;
  }

  v7 = atomic_load(this + 205);
  if (ChannelLayoutTagIsSupportedHOA(v7) || (v9 = *(this + 31), v8 = *(this + 32), v6 != v8 - v9))
  {
    v4 = AUSpatialMixerV2InputElement::InitializeChannelProcessors(this);
  }

  else
  {
    if (v9 == v8)
    {
      v4 = 0;
    }

    else
    {
      do
      {
        v10 = *v9;
        v11 = atomic_load((*(this + 133) + 88));
        v12 = AUSpatialMixerV2ChannelProcessor::initializeSpatializer(v10, v5, v11);
        ++v9;
      }

      while (v9 != v8);
      v4 = v12;
    }

    AUSpatialMixerV2InputElement::SetIsUsingPersonalizedHRTF(this);
    if (!v4)
    {
      AUSpatialMixerV2InputElement::UpdateBypassMatrix(this);
      v4 = 0;
    }
  }

  AUSpatialMixerV2InputElement::UpdateAlignmentDelayLines(this);
  atomic_store(1u, this + 1681);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
  return v4;
}

void AUSpatialMixerV2InputElement::UpdateOutputType(AUSpatialMixerV2InputElement *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(this + 133) + 88));
  v3 = atomic_load(this + 226);
  if (v3 == 7)
  {
    v4 = atomic_load((*(this + 177) + 80));
    if (v4 != 1 && (v4 || *(*(this + 176) + 108) <= 1u))
    {
      v5 = atomic_load((*(this + 177) + 72));
      if (v5 != 5)
      {
        v6 = atomic_load(this + 760);
        if ((v6 & 1) != 0 || (v7 = atomic_load(this + 761), (v7)) && (v8 = atomic_load(this + 205), ChannelLayoutTagIsSupportedHOA(v8)))
        {
          if (AUSpatialMixerV2InputElement::InitializeChannelProcessors(this))
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v9 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              v10 = (this + 1720);
              if (*(this + 1743) < 0)
              {
                v10 = *v10;
              }

              v13 = 136315650;
              v14 = v10;
              v15 = 2080;
              v16 = "UpdateOutputType";
              v17 = 1024;
              v18 = v2;
              v11 = "[%s|%s] could not initialize the channel processors with output type %u";
LABEL_24:
              _os_log_error_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, v11, &v13, 0x1Cu);
            }
          }
        }

        else if (AUSpatialMixerV2InputElement::UpdateSpatializationAlgorithm(this))
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v9 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            v12 = (this + 1720);
            if (*(this + 1743) < 0)
            {
              v12 = *v12;
            }

            v13 = 136315650;
            v14 = v12;
            v15 = 2080;
            v16 = "UpdateOutputType";
            v17 = 1024;
            v18 = v2;
            v11 = "[%s|%s] could not set the spatialization algorithm with output type %u";
            goto LABEL_24;
          }
        }
      }
    }
  }

  atomic_store(1u, this + 1681);
}

uint64_t AUSpatialMixerV2InputElement::InitializeChannelProcessors(AUSpatialMixerV2InputElement *this)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(this + 760);
  if (v2 & 1) != 0 || (v3 = atomic_load(this + 761), (v3))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v4 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v26 = (this + 1720);
      if (*(this + 1743) < 0)
      {
        v26 = *v26;
      }

      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = v26;
      LOWORD(buf.mFormatFlags) = 2080;
      *(&buf.mFormatFlags + 2) = "InitializeChannelProcessors";
      _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "[%s|%s] Initializing channel processors", &buf, 0x16u);
    }

    std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 800, this + 784);
    Element = ausdk::AUScope::GetElement((*(this + 27) + 128), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v6 = (Element + 120);
    v7 = *(Element + 120);
    if (*v7 == 6553601 || !*v7 && v7[2] == 1 && v7[3] == 42)
    {
      v6 = (Element + 224);
    }

    ausdk::AUChannelLayout::AUChannelLayout(__p, v6);
    if (*__p[0] == 0x10000)
    {
      v12 = vcnt_s8(*(__p[0] + 1));
      v12.i16[0] = vaddlv_u8(v12);
      if (!v12.i32[0])
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (!*__p[0])
      {
        if (*(__p[0] + 2))
        {
          goto LABEL_15;
        }

LABEL_23:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v13 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v27 = (this + 1720);
          if (*(this + 1743) < 0)
          {
            v27 = *v27;
          }

          LODWORD(buf.mSampleRate) = 136315394;
          *(&buf.mSampleRate + 4) = v27;
          LOWORD(buf.mFormatFlags) = 2080;
          *(&buf.mFormatFlags + 2) = "InitializeChannelProcessors";
          _os_log_error_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid output channel layout, unable to initialize channel processors", &buf, 0x16u);
        }

        v11 = 4294956445;
        goto LABEL_185;
      }

      if (!*__p[0])
      {
        goto LABEL_23;
      }
    }

LABEL_15:
    v8 = *(this + 15);
    if (*v8 == 0x10000)
    {
      v14 = vcnt_s8(v8[1]);
      v14.i16[0] = vaddlv_u8(v14);
      v9 = v14.i32[0];
    }

    else if (*v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = v8[2];
    }

    v89 = *(*(this + 27) + 336);
    if (v9)
    {
      IsSupportedHOA = ChannelLayoutTagIsSupportedHOA(**(this + 135));
      AUSpatialMixerV2InputElement::UpdateNeuralPreMix(this);
      *(this + 389) = *(this + 466);
      if (AUSpatialMixerV2InputElement::UpdateMatrixMix(this))
      {
        v11 = 4294956428;
LABEL_185:
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 784);
        return v11;
      }

      if (IsSupportedHOA || ChannelLayoutTagIsSupportedHOA(**(this + 135)) || *(this + 1808) == 1 && *(this + 229))
      {
        if (_os_feature_enabled_impl())
        {
          if (AUSM::GlobalProperties::isEnabledFeature(*(this + 133), @"EnableHOAZoom") && (*(this + 268) - 3) <= 1)
          {
            v17 = atomic_load(this + 228);
            if (v17 == 3 && *(this + 27) >= 4u)
            {
              LOWORD(v18) = atomic_load(this + 205);
              v18 = v18;
              v19 = 0x40000000;
              do
              {
                v20 = v19;
                v19 >>= 2;
              }

              while (v20 > v18);
              if (v20)
              {
                v21 = 0;
                do
                {
                  v22 = v20 + v21;
                  v23 = 2 * v20;
                  if (v18 < v20 + v21)
                  {
                    v22 = 0;
                    v23 = 0;
                  }

                  v18 -= v22;
                  v21 = (v23 + v21) >> 1;
                  v24 = v20 > 3;
                  v20 >>= 2;
                }

                while (v24);
                v25 = v21 - 1;
              }

              else
              {
                v25 = -1;
              }

              ZoomMixingMatrix::ZoomMixingMatrix(&buf, v25);
            }
          }
        }

        if (AUSpatialMixerV2InputElement::ShouldUseOBHD(this) && *(this + 316))
        {
          operator new();
        }

        v29 = *(this + 54);
        *(this + 53) = 0;
        *(this + 54) = 0;
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        *(this + 1552) = 0;
        v30 = atomic_load((*(this + 133) + 1650));
        if (v30)
        {
          if ((*(this + 1808) & 1) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_73;
        }

        if ((*(this + 1808) & 1) != 0 && *(this + 229))
        {
LABEL_73:
          if (*(this + 227))
          {
            operator new();
          }

LABEL_75:
          operator new();
        }

        std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100](this + 55, 0);
        v31 = *(this + 56);
        *(this + 56) = 0;
        if (v31)
        {
          std::default_delete<std::vector<float>>::operator()[abi:ne200100](v31);
        }

        v32 = *(this + 57);
        *(this + 57) = 0;
        if (v32)
        {
          std::default_delete<std::vector<float>>::operator()[abi:ne200100](v32);
        }

        *(this + 116) = 0;
      }

      v16 = *(this + 283);
    }

    else
    {
      v16 = 1;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v33 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v34 = (this + 1720);
      if (*(this + 1743) < 0)
      {
        v34 = *v34;
      }

      LODWORD(buf.mSampleRate) = 136315650;
      *(&buf.mSampleRate + 4) = v34;
      LOWORD(buf.mFormatFlags) = 2080;
      *(&buf.mFormatFlags + 2) = "InitializeChannelProcessors";
      HIWORD(buf.mFramesPerPacket) = 1024;
      buf.mBytesPerFrame = v16;
      _os_log_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_DEFAULT, "[%s|%s] Initializing %u channel processors", &buf, 0x1Cu);
    }

    if (*(this + 1808) == 1 && *(this + 229))
    {
      v16 += 2;
    }

    v35 = v16;
    v36 = *(this + 31);
    v90 = (this + 248);
    v37 = *(this + 32);
    v38 = (v37 - v36) >> 3;
    if (v38 == v16)
    {
      goto LABEL_116;
    }

    if (v38 <= v16)
    {
      for (; v38 < v16; v38 = (v37 - v36) >> 3)
      {
        if (v16 > v38)
        {
          operator new();
        }
      }
    }

    else
    {
      v39 = (v36 + 8 * v16);
      while (v37 != v39)
      {
        v37 = std::unique_ptr<AUSpatialMixerV2ChannelProcessor>::~unique_ptr[abi:ne200100](v37 - 1);
      }

      *(this + 32) = v39;
    }

    v41 = *(this + 28);
    v40 = *(this + 29);
    v42 = 0x6DB6DB6DB6DB6DB7 * ((v40 - v41) >> 2);
    v43 = v35 - v42;
    if (v35 <= v42)
    {
      if (v35 >= v42)
      {
LABEL_116:
        AUSpatialMixerV2InputElement::UpdateChannelLayout(this, 0);
        if (*(this + 53))
        {
          v49 = atomic_load((*(this + 133) + 3120));
          if (v49)
          {
            v50 = (v49 + 1) * (v49 + 1);
          }

          else
          {
            v50 = 0;
          }
        }

        else
        {
          v50 = *(this + 314);
        }

        v91 = v50;
        v51 = ausdk::AUScope::GetElement((*(this + 27) + 128), 0);
        if (!v51)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v52 = *(v51 + 80);
        v53 = ausdk::AUScope::GetElement((*(this + 27) + 128), 0);
        if (!v53)
        {
          ausdk::Throw(0xFFFFD583);
        }

        if (*(v53 + 108) <= 2u)
        {
          v54 = 2;
        }

        else
        {
          v54 = *(v53 + 108);
        }

        if (*(this + 32) == *(this + 31))
        {
          v11 = 0;
LABEL_181:
          AUSpatialMixerV2InputElement::SetIsUsingPersonalizedHRTF(this);
          v86 = *(this + 28);
          v87 = *(this + 29);
          while (v86 != v87)
          {
            *(v86 + 4) = 0;
            *(v86 + 20) = 0;
            v86 += 28;
          }

          atomic_store(1u, this + 776);
          atomic_store(1u, this + 1681);
          goto LABEL_185;
        }

        v55 = v52;
        v92 = v35 - v91;
        v56 = v55;
        v57 = -6.90775528 / fmax(v55 * 2.5, 2.22507386e-308);
        v58 = exp(v57);
        if (v57 >= -708.4)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0.0;
        }

        v60 = -6.90775528 / fmax(v56 * 1.24, 2.22507386e-308);
        v61 = exp(v60);
        v62 = 0;
        v63 = 0;
        if (v60 >= -708.4)
        {
          v64 = v61;
        }

        else
        {
          v64 = 0.0;
        }

        v65 = this;
        while (1)
        {
          v66 = &kAllPassFilterLengthsForReverbSend + 12 * v63 + 12 * (*(v65 + 191) - 25 * ((*(v65 + 191) + v63) / 0x19));
          v93[0] = 0;
          v93[1] = 0;
          v94 = 0;
          std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v93, v66, (v66 + 12), 3uLL);
          AUSpatialMixerV2ChannelProcessor::setDecorrFilterLengthsOnReverbSend(*(*v90 + 8 * v62), v93);
          v67 = *(*v90 + 8 * v62);
          AUSM::InputGeometry::getExclusionZones(&buf, this + 1408);
          AUSpatialMixerV2ChannelProcessor::setExclusionZones(v67, &buf);
          if (*&buf.mSampleRate)
          {
            *&buf.mFormatID = buf.mSampleRate;
            operator delete(*&buf.mSampleRate);
          }

          if (*(this + 53))
          {
            v68 = *(*v90 + 8 * v62);
            *(v68 + 502) = 1;
            *(v68 + 503) = v91 - 1 >= v63;
            goto LABEL_154;
          }

          if (*(this + 1808) == 1 && *(this + 229))
          {
            v68 = *(*v90 + 8 * v62);
            if (v63 <= 3)
            {
              goto LABEL_151;
            }
          }

          else
          {
            v69 = v91 == 0;
            if (v63 >= v92)
            {
              v69 = 1;
            }

            if (v69)
            {
              v68 = *(*v90 + 8 * v62);
              if (v91 && v63 >= v92)
              {
LABEL_151:
                v70 = 256;
              }

              else
              {
                v70 = 257;
              }

              *(v68 + 502) = v70;
              goto LABEL_154;
            }

            v68 = *(*v90 + 8 * v62);
          }

          *(v68 + 502) = 1;
LABEL_154:
          v71 = ausdk::AUScope::GetElement((*(this + 27) + 128), 0);
          if (!v71)
          {
            ausdk::Throw(0xFFFFD583);
          }

          v72 = *(v71 + 108);
          v73 = *(this + 53);
          v74 = *(this + 54);
          if (v74)
          {
            atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          atomic_store(0, (v68 + 552));
          *(v68 + 244) = v55;
          *(v68 + 248) = v54;
          ausdk::AUChannelLayout::CopyStorage((v68 + 216), __p);
          *(v68 + 252) = v72;
          *(v68 + 256) = v89;
          if (v74)
          {
            atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *(v68 + 624) = v73;
          v75 = *(v68 + 632);
          *(v68 + 632) = v74;
          if (v75)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v75);
          }

          (**v68)(v68, 3003);
          (**v68)(v68, 3219);
          (**v68)(v68, 3204);
          (**v68)(v68, 3279);
          (**v68)(v68, 5003);
          (**v68)(v68, 3108);
          (**v68)(v68, 3109);
          (**v68)(v68, 3210);
          (**v68)(v68, 3274);
          (**v68)(v68, 3217);
          (**v68)(v68, 3228);
          (**v68)(v68, 3214);
          (**v68)(v68, 3224);
          caulk::pooled_semaphore_mutex::_lock((v68 + 484));
          buf.mSampleRate = v55;
          *&buf.mFormatID = xmmword_1DE09BD50;
          *&buf.mBytesPerFrame = xmmword_1DE09BD60;
          AUSpatialMixerV2OcclusionFilter::initialize((v68 + 120), &buf);
          buf.mSampleRate = v55;
          *&buf.mFormatID = xmmword_1DE09BD50;
          *&buf.mBytesPerFrame = xmmword_1DE09BD60;
          AUSpatialMixerV2OcclusionFilter::initialize((v68 + 96), &buf);
          caulk::pooled_semaphore_mutex::_unlock((v68 + 484));
          v76 = *(v68 + 144);
          if (v76)
          {
            v77 = *(v68 + 244);
            v78 = *(v68 + 256);
            *&buf.mSampleRate = xmmword_1DE09CD90;
            IR::DynamicIRProcessor::initialize(v76, v78, &buf, v77);
          }

          v79 = *(v68 + 640);
          v80 = *(v79 + 148) == 3 && *(v68 + 596) > 3u;
          v81 = atomic_load((*(v79 + 8) + 80));
          if (v81 == 1 || !v81 && *(*v79 + 108) > 1u || (v82 = atomic_load((*(v79 + 8) + 72)), v82 == 5 || v80))
          {
            v83 = 5;
          }

          else
          {
            v83 = atomic_load((*(v68 + 576) + 72));
          }

          v84 = atomic_load((*(*(v68 + 576) + 232) + 88));
          v11 = AUSpatialMixerV2ChannelProcessor::initializeSpatializer(v68, v83, v84);
          AUSpatialMixerV2ChannelProcessor::setDelay(v68, *(v68 + 316));
          v85 = atomic_load((*(v68 + 576) + 120));
          if (v85)
          {
            AUSpatialMixerV2ChannelProcessor::initializePropagationDelay(v68);
          }

          *(v68 + 1432) = v56;
          *(v68 + 1440) = v59;
          *(v68 + 1456) = v64;
          atomic_store(1u, (v68 + 552));
          if (v74)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          if (v93[0])
          {
            v93[1] = v93[0];
            operator delete(v93[0]);
          }

          v65 = this;
          v62 = ++v63;
          if (v63 >= ((*(this + 32) - *(this + 31)) >> 3))
          {
            goto LABEL_181;
          }
        }
      }

      v47 = v41 + 28 * v35;
    }

    else
    {
      v44 = *(this + 30);
      if (0x6DB6DB6DB6DB6DB7 * ((v44 - v40) >> 2) < v43)
      {
        v45 = 0xDB6DB6DB6DB6DB6ELL * ((v44 - v41) >> 2);
        if (v45 <= v35)
        {
          v45 = v35;
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((v44 - v41) >> 2)) >= 0x492492492492492)
        {
          v46 = 0x924924924924924;
        }

        else
        {
          v46 = v45;
        }

        if (v46 <= 0x924924924924924)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v47 = v40 + 28 * v43;
      v48 = 28 * v35 - 4 * ((v40 - v41) >> 2);
      do
      {
        *v40 = 0;
        *(v40 + 8) = 0;
        *(v40 + 24) = 0;
        *(v40 + 16) = 0;
        v40 += 28;
        v48 -= 28;
      }

      while (v48);
    }

    *(this + 29) = v47;
    goto LABEL_116;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v10 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v28 = (this + 1720);
    if (*(this + 1743) < 0)
    {
      v28 = *v28;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = v28;
    LOWORD(buf.mFormatFlags) = 2080;
    *(&buf.mFormatFlags + 2) = "InitializeChannelProcessors";
    _os_log_debug_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "[%s|%s] Initialize channel processors called before the input element is initialized", &buf, 0x16u);
  }

  return 0;
}

void sub_1DDE3101C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2InputElement::UpdatePointSourceInHeadMode(AUSpatialMixerV2InputElement *this)
{
  v2 = atomic_load(this + 226);
  result = AUSpatialMixerV2InputElement::NeedsMoreThanOneSpatializer(this, v2);
  if (result)
  {
    v4 = *(this + 27);
  }

  else
  {
    v4 = 1;
  }

  v5 = atomic_load(this + 760);
  if (v5 & 1) != 0 || (v6 = atomic_load(this + 761), (v6))
  {
    v7 = atomic_load(this + 205);
    if (ChannelLayoutTagIsSupportedHOA(v7) || v4 == (*(this + 32) - *(this + 31)) >> 3)
    {

      return AUSpatialMixerV2InputElement::UpdateBypassMatrix(this);
    }

    else
    {

      return AUSpatialMixerV2InputElement::InitializeChannelProcessors(this);
    }
  }

  return result;
}

pthread_t AUSpatialMixerV2InputElement::NotifyChannelProcessorsOfPropertyChange(AUSpatialMixerV2InputElement *this, uint64_t a2)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
  v4 = atomic_load(this + 760);
  if (v4 & 1) != 0 || (v5 = atomic_load(this + 761), (v5))
  {
    v6 = *(this + 31);
    v7 = *(this + 32);
    while (v6 != v7)
    {
      (***v6)(*v6, a2);
      ++v6;
    }
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
}

uint64_t AUSpatialMixerV2InputElement::SetAudioChannelLayoutPrivate(AUSpatialMixerV2InputElement *this, const AudioChannelLayout *a2, int a3)
{
  v58 = *MEMORY[0x1E69E9840];
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
  v6 = AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)8>((*(this + 27) + 9824));
  if (a2->mChannelLayoutTag == 0x10000)
  {
    v8 = vcnt_s8(a2->mChannelBitmap);
    v8.i16[0] = vaddlv_u8(v8);
    mChannelLayoutTag = v8.i32[0];
  }

  else if (a2->mChannelLayoutTag)
  {
    mChannelLayoutTag = a2->mChannelLayoutTag;
  }

  else
  {
    mChannelLayoutTag = a2->mNumberChannelDescriptions;
  }

  v9 = atomic_load(this + 760);
  if (v9)
  {
    if (*(this + 27) != mChannelLayoutTag)
    {
      if (a3)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v10 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = (this + 1720);
          if (*(this + 1743) < 0)
          {
            v11 = *v11;
          }

          GetStringFromAudioChannelLayoutTag(__p, a2->mChannelLayoutTag);
          if (v54 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          *buf = 136315906;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = "SetAudioChannelLayoutPrivate";
          v56 = 1024;
          *v57 = mChannelLayoutTag;
          *&v57[4] = 2080;
          *&v57[6] = v12;
          _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "[%s|%s] Number of channels %u in requested audio channel layout is different than in stream format. Default audio channel layout tag %s from preset is ignored.", buf, 0x26u);
          if (v54 < 0)
          {
            operator delete(__p[0]);
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }
        }

        v13 = getAUSMV2Log(void)::gLog;
        Property = 0;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v15 = (this + 1720);
          if (*(this + 1743) < 0)
          {
            v15 = *v15;
          }

          PrintAudioChannelLayout(__p, *(this + 15));
          if (v54 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = "SetAudioChannelLayoutPrivate";
          v56 = 2080;
          *v57 = v16;
          _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEFAULT, "[%s|%s] Current audio channel layout is %s", buf, 0x20u);
          if (v54 < 0)
          {
            operator delete(__p[0]);
          }

          Property = 0;
        }

        goto LABEL_84;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v34 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v47 = (this + 1720);
        if (*(this + 1743) < 0)
        {
          v47 = *v47;
        }

        GetStringFromAudioChannelLayoutTag(__p, a2->mChannelLayoutTag);
        if (v54 >= 0)
        {
          v48 = __p;
        }

        else
        {
          v48 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = v47;
        *&buf[12] = 2080;
        *&buf[14] = "SetAudioChannelLayoutPrivate";
        v56 = 1024;
        *v57 = mChannelLayoutTag;
        *&v57[4] = 2080;
        *&v57[6] = v48;
        _os_log_error_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_ERROR, "[%s|%s] Number of channels %u in requested audio channel layout %s is different than in the stream format.", buf, 0x26u);
        if (v54 < 0)
        {
          operator delete(__p[0]);
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
LABEL_83:
        Property = 4294956445;
        goto LABEL_84;
      }

      v20 = (this + 1720);
      if (*(this + 1743) < 0)
      {
        v20 = *v20;
      }

      PrintAudioChannelLayout(__p, *(this + 15));
      if (v54 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      goto LABEL_80;
    }
  }

  else
  {
    if (HIDWORD(v6))
    {
      v17 = v6 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17 && *(this + 27) != mChannelLayoutTag && (a3 & 1) == 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v18 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v49 = (this + 1720);
        if (*(this + 1743) < 0)
        {
          v49 = *v49;
        }

        GetStringFromAudioChannelLayoutTag(__p, a2->mChannelLayoutTag);
        if (v54 >= 0)
        {
          v50 = __p;
        }

        else
        {
          v50 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = v49;
        *&buf[12] = 2080;
        *&buf[14] = "SetAudioChannelLayoutPrivate";
        v56 = 1024;
        *v57 = mChannelLayoutTag;
        *&v57[4] = 2080;
        *&v57[6] = v50;
        _os_log_error_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, "[%s|%s] Number of channels %u in requested audio channel layout %s is different than in the stream format.", buf, 0x26u);
        if (v54 < 0)
        {
          operator delete(__p[0]);
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_83;
      }

      v20 = (this + 1720);
      if (*(this + 1743) < 0)
      {
        v20 = *v20;
      }

      PrintAudioChannelLayout(__p, *(this + 15));
      if (v54 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

LABEL_80:
      *buf = 136315650;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = "SetAudioChannelLayoutPrivate";
      v56 = 2080;
      *v57 = v21;
      _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEFAULT, "[%s|%s] Current audio channel layout is %s", buf, 0x20u);
LABEL_81:
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_83;
    }
  }

  if (a2->mChannelLayoutTag >= 0xFFFF0000)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v22 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    v23 = (this + 1720);
    if (*(this + 1743) < 0)
    {
      v23 = *v23;
    }

    GetStringFromAudioChannelLayoutTag(__p, a2->mChannelLayoutTag);
    v24 = v54;
    v25 = __p[0];
    v26 = atomic_load(this + 205);
    GetStringFromAudioChannelLayoutTag(v51, v26);
    v27 = __p;
    if (v24 < 0)
    {
      v27 = v25;
    }

    if (v52 >= 0)
    {
      v28 = v51;
    }

    else
    {
      v28 = v51[0];
    }

    *buf = 136315906;
    *&buf[4] = v23;
    *&buf[12] = 2080;
    *&buf[14] = "SetAudioChannelLayoutPrivate";
    v56 = 2080;
    *v57 = v27;
    *&v57[8] = 2080;
    *&v57[10] = v28;
    _os_log_error_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "[%s|%s] Failed to set audio channel layout %s. Current audio channel layout tag = %s", buf, 0x2Au);
    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    goto LABEL_81;
  }

  v29 = 20 * a2->mNumberChannelDescriptions + 12;
  LODWORD(v51[0]) = 4;
  Property = AudioFormatGetProperty(0x7661636Cu, v29, a2, v51, 0);
  if (Property)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v30 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v46 = (this + 1720);
      if (*(this + 1743) < 0)
      {
        v46 = *v46;
      }

      *buf = 136315650;
      *&buf[4] = v46;
      *&buf[12] = 2080;
      *&buf[14] = "SetAudioChannelLayoutPrivate";
      v56 = 1024;
      *v57 = Property;
      _os_log_error_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid audio channel layout: AudioFormatGetProperty returned error %d", buf, 0x1Cu);
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }
    }

    v31 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v32 = (this + 1720);
      if (*(this + 1743) < 0)
      {
        v32 = *v32;
      }

      PrintAudioChannelLayout(__p, *(this + 15));
      if (v54 >= 0)
      {
        v33 = __p;
      }

      else
      {
        v33 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = v32;
      *&buf[12] = 2080;
      *&buf[14] = "SetAudioChannelLayoutPrivate";
      v56 = 2080;
      *v57 = v33;
      _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_DEFAULT, "[%s|%s] Current audio channel layout is %s", buf, 0x20u);
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (!a2->mChannelLayoutTag || ((v36 = 20 * a2->mNumberChannelDescriptions + 12, v17 = (v36 & 0x1C) == 0, v37 = v36 >> 5, v17) ? (v38 = v37) : (v38 = v37 + 1), std::vector<AudioChannelLayout>::vector[abi:ne200100](buf, v38), memcpy(*buf, a2, 20 * a2->mNumberChannelDescriptions + 12), v39 = *buf, v40 = ausdk::ACL::operator==(*buf, *(this + 15)), *&buf[8] = v39, operator delete(v39), !v40))
    {
      v41 = atomic_load(this + 205);
      IsSupportedHOA = ChannelLayoutTagIsSupportedHOA(v41);
      ausdk::AUIOElement::ForceSetAudioChannelLayout(this, a2);
      atomic_store(a2->mChannelLayoutTag, this + 205);
      v43 = atomic_load(this + 760);
      if (v43 & 1) != 0 || (v44 = atomic_load(this + 761), (v44))
      {
        v45 = atomic_load(this + 205);
        if (ChannelLayoutTagIsSupportedHOA(v45) || IsSupportedHOA)
        {
          AUSpatialMixerV2InputElement::InitializeChannelProcessors(this);
        }

        else
        {
          AUSpatialMixerV2InputElement::UpdateChannelLayout(this, 1);
        }
      }
    }

    *(this + 816) = 1;
    *(this + 817) |= a3 ^ 1;
  }

LABEL_84:
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
  return Property;
}

void AUSpatialMixerV2InputElement::SetIsUsingPersonalizedHRTF(AUSpatialMixerV2InputElement *this)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v1 = atomic_load((*(this + 133) + 88));
  if (v1 == 1)
  {
    v3 = atomic_load(this + 226);
    if (v3 == 7)
    {
      v4 = *(this + 214);
      std::mutex::lock((v4 + 1560));
      IR::IRDataAttributes::IRDataAttributes(v33, (v4 + 64));
      std::mutex::unlock((v4 + 1560));
      v6 = IR::IRDataLoader::instance(v5);
      IR::IRDataLoader::getLoadedIR(&v31, v6, v33);
      if (v31)
      {
        v7 = *(IR::IRData::getIRDataAttributes(v31) + 48);
        if (v7)
        {
          atomic_store(1u, this + 1744);
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v8 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
          {
            v9 = (this + 1720);
            if (*(this + 1743) < 0)
            {
              v9 = *v9;
            }

            *buf = 136315650;
            *&buf[4] = v9;
            v38 = 2080;
            v39 = "SetIsUsingPersonalizedHRTF";
            v40 = 1024;
            LODWORD(v41[0]) = v7;
            _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_HRIR: Personalized HRIR type %u is loaded.", buf, 0x1Cu);
          }

          applesauce::CF::TypeRef::TypeRef(buf, "hrir_category");
          applesauce::CF::TypeRef::TypeRef(&buf[8], "personal");
          applesauce::CF::TypeRef::TypeRef((&v39 + 2), "hrir_type");
          LODWORD(valuePtr) = v7;
          v41[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          if (!v41[0])
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          __p[0] = buf;
          __p[1] = 2;
          CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(__p);
          v11 = 0;
          v27[0] = CFDictionaryRef;
          do
          {
            v12 = v41[v11];
            if (v12)
            {
              CFRelease(v12);
            }

            v13 = *(&v39 + v11 * 8 + 2);
            if (v13)
            {
              CFRelease(v13);
            }

            v11 -= 2;
          }

          while (v11 != -4);
          if (AudioStatisticsLibraryLoader(void)::once != -1)
          {
            dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_11617);
          }

          if (AudioStatisticsLibraryLoader(void)::libSym)
          {
            AudioStatisticsLibraryLoader(void)::libSym(CFDictionaryRef, 268435457, 5);
          }

          CFRelease(CFDictionaryRef);
        }

        else
        {
          atomic_store(0, this + 1744);
          if (!v33[0])
          {
            v25 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v25, "Could not construct");
          }

          applesauce::CF::get_filesystem_path(buf, v33[0]);
          if (!*buf)
          {
            v26 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v26, "Could not construct");
          }

          applesauce::CF::convert_to<std::string,0>(__p, *buf);
          if (*buf)
          {
            CFRelease(*buf);
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v14 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
          {
            v15 = (this + 1720);
            if (*(this + 1743) < 0)
            {
              v15 = *v15;
            }

            v16 = __p;
            if (v30 < 0)
            {
              v16 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = v15;
            v38 = 2080;
            v39 = "SetIsUsingPersonalizedHRTF";
            v40 = 2080;
            v41[0] = v16;
            _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_HRIR: Generic HRIR is loaded from %s.", buf, 0x20u);
          }

          applesauce::CF::TypeRef::TypeRef(buf, "hrir_category");
          applesauce::CF::TypeRef::TypeRef(&buf[8], "generic");
          v17 = v30;
          v18 = __p[0];
          applesauce::CF::TypeRef::TypeRef((&v39 + 2), "hrir_source");
          if (v17 >= 0)
          {
            v19 = __p;
          }

          else
          {
            v19 = v18;
          }

          applesauce::CF::TypeRef::TypeRef(v41, v19);
          v27[0] = buf;
          v27[1] = 2;
          v20 = applesauce::CF::details::make_CFDictionaryRef(v27);
          v21 = 0;
          valuePtr = v20;
          do
          {
            v22 = v41[v21];
            if (v22)
            {
              CFRelease(v22);
            }

            v23 = *(&v39 + v21 * 8 + 2);
            if (v23)
            {
              CFRelease(v23);
            }

            v21 -= 2;
          }

          while (v21 != -4);
          if (AudioStatisticsLibraryLoader(void)::once != -1)
          {
            dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_11617);
          }

          if (AudioStatisticsLibraryLoader(void)::libSym)
          {
            AudioStatisticsLibraryLoader(void)::libSym(v20, 268435457, 5);
          }

          CFRelease(v20);
          if (v30 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v35)
      {
        CFRelease(v35);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      if (v33[0])
      {
        CFRelease(v33[0]);
      }
    }
  }
}

void sub_1DDE32860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  __cxa_free_exception(v21);
  applesauce::CF::StringRef::~StringRef((v22 - 96));
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  IR::IRDataAttributes::~IRDataAttributes(&a21);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2::MaxFramesForInputSampleRate(AUSpatialMixerV2 *this, double a2)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = *(Element + 80);
  result = *(this + 84);
  if (v5 != a2)
  {
    return (result * a2 / v5 + 15.0) & 0xFFFFFFF0;
  }

  return result;
}

void sub_1DDE330BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  v40 = 0;
  while (1)
  {
    v41 = *(v38 + v40 + 712);
    if (v41)
    {
      *(v38 + v40 + 720) = v41;
      operator delete(v41);
    }

    v40 -= 24;
    if (v40 == -72)
    {
      v42 = 0;
      while (1)
      {
        v43 = *(v38 + v42 + 640);
        if (v43)
        {
          *(v38 + v42 + 648) = v43;
          operator delete(v43);
        }

        v42 -= 24;
        if (v42 == -48)
        {
          v44 = 0;
          while (1)
          {
            v45 = *(v38 + v44 + 544);
            if (v45)
            {
              *(v38 + v44 + 552) = v45;
              operator delete(v45);
            }

            v44 -= 24;
            if (v44 == -96)
            {
              v46 = *(v38 + 464);
              *(v38 + 464) = 0;
              if (v46)
              {
                MultiRadixFFT_Dispose(v46);
              }

              ScottyLite::STFT_state_t::~STFT_state_t((v38 + 24));
              v47 = *v38;
              if (*v38)
              {
                *(v38 + 8) = v47;
                operator delete(v47);
              }

              if (a38 < 0)
              {
                operator delete(__p);
              }

              MEMORY[0x1E12BD160](v38, 0x1092C40F99F0848);
              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

uint64_t *std::unique_ptr<ScottyLite>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (getScottyLog(void)::onceToken != -1)
    {
      dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
    }

    v3 = getScottyLog(void)::gLog;
    if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (v2 + 760);
      if (*(v2 + 783) < 0)
      {
        v4 = *v4;
      }

      v13 = 136315394;
      v14 = v4;
      v15 = 2080;
      v16 = "~ScottyLite";
      _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "[%s|%s] Destructing", &v13, 0x16u);
    }

    ScottyLite::UnInitialize(v2);
    if (*(v2 + 783) < 0)
    {
      operator delete(*(v2 + 760));
    }

    v5 = 0;
    while (1)
    {
      v6 = *(v2 + v5 + 712);
      if (v6)
      {
        *(v2 + v5 + 720) = v6;
        operator delete(v6);
      }

      v5 -= 24;
      if (v5 == -72)
      {
        v7 = 0;
        while (1)
        {
          v8 = *(v2 + v7 + 640);
          if (v8)
          {
            *(v2 + v7 + 648) = v8;
            operator delete(v8);
          }

          v7 -= 24;
          if (v7 == -48)
          {
            v9 = 0;
            while (1)
            {
              v10 = *(v2 + v9 + 544);
              if (v10)
              {
                *(v2 + v9 + 552) = v10;
                operator delete(v10);
              }

              v9 -= 24;
              if (v9 == -96)
              {
                v11 = *(v2 + 464);
                *(v2 + 464) = 0;
                if (v11)
                {
                  MultiRadixFFT_Dispose(v11);
                }

                ScottyLite::STFT_state_t::~STFT_state_t((v2 + 24));
                v12 = *v2;
                if (*v2)
                {
                  *(v2 + 8) = v12;
                  operator delete(v12);
                }

                JUMPOUT(0x1E12BD160);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1DDE3339C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_11625()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

pthread_t AUSpatialMixerV2InputElement::UpdateChannelLayout(AUSpatialMixerV2InputElement *this, int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v4 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v28 = (this + 1720);
    if (*(this + 1743) < 0)
    {
      v28 = *v28;
    }

    PrintAudioChannelLayout(&v32, *(this + 15));
    if (v34 >= 0)
    {
      v29 = &v32;
    }

    else
    {
      v29 = v32;
    }

    v35.mChannelLayoutTag = 136315650;
    *&v35.mChannelBitmap = v28;
    LOWORD(v35.mChannelDescriptions[0].mChannelLabel) = 2080;
    *(&v35.mChannelDescriptions[0].mChannelLabel + 2) = "UpdateChannelLayout";
    HIWORD(v35.mChannelDescriptions[0].mCoordinates[0]) = 2080;
    *&v35.mChannelDescriptions[0].mCoordinates[1] = v29;
    _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "[%s|%s] Updating audio channel layout %s", &v35, 0x20u);
    if (v34 < 0)
    {
      operator delete(v32);
    }
  }

  if (a2)
  {
    v5 = this + 784;
    std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 800, this + 784);
    AUSpatialMixerV2InputElement::UpdateNeuralPreMix(this);
    if (!AUSpatialMixerV2InputElement::UpdateMatrixMix(this))
    {
      if (*(this + 283) == (*(this + 32) - *(this + 31)) >> 3)
      {
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 784);
        goto LABEL_8;
      }

      AUSpatialMixerV2InputElement::InitializeChannelProcessors(this);
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
    return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v5);
  }

LABEL_8:
  v5 = this + 800;
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
  std::vector<AUSMChannelParameters>::vector[abi:ne200100](&v32, *(this + 283));
  if (!ChannelLayoutTagIsSupportedHOA(**(this + 135)))
  {
    ausdk::AUChannelLayout::AUChannelLayout(&v30.mChannelDescriptions[0].mCoordinates[1], (this + 1104));
    GetChannelLayoutSphericalCoordinates(&v35, *&v30.mChannelDescriptions[0].mCoordinates[1], v6);
    v8 = *&v35.mChannelLayoutTag;
    for (i = *&v35.mNumberChannelDescriptions; v8 != i; ++v8)
    {
      *v7.i32 = remainderf(*v8, 360.0);
      if (*v7.i32 == -180.0)
      {
        *v7.i32 = 180.0;
      }

      *v8 = *v7.i32;
    }

    v10 = atomic_load(this + 205);
    if (v10 == 6553601)
    {
      *__p = 1065353216;
    }

    if ((v33 - v32) >> 5 != (*&v35.mNumberChannelDescriptions - *&v35.mChannelLayoutTag) >> 2)
    {
      v11 = atomic_load(this + 228);
      if (v11 == 2)
      {
        v30.mChannelLayoutTag = 0;
        std::vector<float>::assign(&v35, (*&v35.mNumberChannelDescriptions - *&v35.mChannelLayoutTag) >> 2, &v30, v7);
        v30.mChannelLayoutTag = 0;
        std::vector<float>::assign(&v35.mChannelDescriptions[0].mCoordinates[1], (v36 - *&v35.mChannelDescriptions[0].mCoordinates[1]) >> 2, &v30, v12);
        v30.mChannelLayoutTag = 1065353216;
        std::vector<float>::assign(&__p, (v38 - __p) >> 2, &v30, v13);
      }
    }

    GetChannelLayoutChannelLabels(&v30, *&v30.mChannelDescriptions[0].mCoordinates[1]);
    v14 = *&v35.mChannelLayoutTag;
    v15 = *&v30.mChannelLayoutTag;
    v16 = __p;
    if ((*&v30.mNumberChannelDescriptions - *&v30.mChannelLayoutTag) >> 2 >= ((*&v35.mNumberChannelDescriptions - *&v35.mChannelLayoutTag) >> 2))
    {
      v17 = (*&v35.mNumberChannelDescriptions - *&v35.mChannelLayoutTag) >> 2;
    }

    else
    {
      v17 = (*&v30.mNumberChannelDescriptions - *&v30.mChannelLayoutTag) >> 2;
    }

    if ((v33 - v32) >> 5 < v17)
    {
      v17 = (v33 - v32) >> 5;
    }

    if (v17)
    {
      v18 = 0;
      v19 = *&v35.mChannelDescriptions[0].mCoordinates[1];
      v20 = v32 + 20;
      do
      {
        *(v20 - 5) = *(v14 + 4 * v18);
        *(v20 - 4) = *(v19 + 4 * v18);
        *(v20 - 3) = *&v16[4 * v18];
        *(v20 - 1) = 1065353216;
        *v20 = 0;
        v20[1] = 1;
        v20[2] = v15[v18++];
        v20 += 8;
      }

      while (v17 > v18);
      atomic_store(0, this + 1680);
    }

    else
    {
      atomic_store(0, this + 1680);
      if (!v15)
      {
LABEL_32:
        if (v16)
        {
          v38 = v16;
          operator delete(v16);
        }

        if (*&v35.mChannelDescriptions[0].mCoordinates[1])
        {
          v36 = *&v35.mChannelDescriptions[0].mCoordinates[1];
          operator delete(*&v35.mChannelDescriptions[0].mCoordinates[1]);
        }

        if (*&v35.mChannelLayoutTag)
        {
          *&v35.mNumberChannelDescriptions = *&v35.mChannelLayoutTag;
          operator delete(*&v35.mChannelLayoutTag);
        }

        if (*&v30.mChannelDescriptions[0].mCoordinates[1])
        {
          v31 = *&v30.mChannelDescriptions[0].mCoordinates[1];
          operator delete(*&v30.mChannelDescriptions[0].mCoordinates[1]);
        }

        goto LABEL_40;
      }
    }

    *&v30.mNumberChannelDescriptions = v15;
    operator delete(v15);
    v16 = __p;
    goto LABEL_32;
  }

  if (&v32 != (this + 1144))
  {
    std::vector<AUSMChannelParameters>::__assign_with_size[abi:ne200100]<AUSMChannelParameters*,AUSMChannelParameters*>(&v32, *(this + 143), *(this + 144), (*(this + 144) - *(this + 143)) >> 5);
  }

  atomic_store(1u, this + 1680);
LABEL_40:
  v21 = atomic_load(this + 1040);
  if (v21)
  {
    (*(*this + 136))(this, 3236);
  }

  v22 = *(this + 31);
  v23 = *(this + 32);
  if (v23 - v22 == (v33 - v32) >> 5)
  {
    if (v23 != v22)
    {
      v24 = 0;
      v25 = 1;
      do
      {
        AUSpatialMixerV2ChannelProcessor::setChannelParameters(v22[v24], &v32[32 * v24]);
        v24 = v25;
        v22 = *(this + 31);
        ++v25;
      }

      while (v24 < (*(this + 32) - v22) >> 3);
    }
  }

  else
  {
    *&v35.mChannelLayoutTag = xmmword_1DE097CD0;
    *&v35.mChannelDescriptions[0].mChannelFlags = 0;
    *&v35.mChannelDescriptions[0].mCoordinates[1] = 0x64000100000001;
    while (v22 != v23)
    {
      AUSpatialMixerV2ChannelProcessor::setChannelParameters(*v22++, &v35);
    }
  }

  AUSpatialMixerV2InputElement::UpdateBypassMatrix(this);
  v26 = atomic_load(this + 760);
  if (v26)
  {
    AUSpatialMixerV2InputElement::UpdateAlignmentDelayLines(this);
  }

  atomic_store(1u, this + 776);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v5);
}

void sub_1DDE33AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  AUSM::ABLBuffer::~ABLBuffer(&a19);
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v19);
  _Unwind_Resume(a1);
}

void AUSpatialMixerV2InputElement::UpdateNeuralPreMix(AUSpatialMixerV2InputElement *this)
{
  v2 = atomic_load((*(this + 133) + 3048));
  if (v2 != 1)
  {
    goto LABEL_4;
  }

  Element = ausdk::AUScope::GetElement((*(this + 27) + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(Element + 108) != 1)
  {
    v18[0] = AUSpatialMixerV2InputElement::IsUsingTDesign(this);
    AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v19, *(this + 133) + 1112);
    if (!v19)
    {
      v4 = CFURLCreateWithBytes(0, "/System/Library/Audio/Tunings/Generic/AU/neural_transcoder/aumx-3dem-appl-nt.plist", 82, 0, 0);
      __p[0] = v4;
      if (!v4)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v19 = v4;
    }

    AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&cf, *(this + 133) + 1184);
    if (!cf)
    {
      v5 = CFURLCreateWithBytes(0, "/System/Library/Audio/Tunings/Generic/AU/neuralrad/aumx-3dem-appl-nrad.plist", 76, 0, 0);
      __p[0] = v5;
      if (!v5)
      {
        v15 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v15, "Could not construct");
      }

      v6 = cf;
      cf = v5;
      if (v6)
      {
        CFRelease(v6);
      }
    }

    AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v21, *(this + 133) + 1256);
    if (!v21)
    {
      v7 = CFURLCreateWithBytes(0, "", 0, 0, 0);
      __p[0] = v7;
      if (!v7)
      {
        v16 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v16, "Could not construct");
      }

      v8 = v21;
      v21 = v7;
      if (v8)
      {
        CFRelease(v8);
      }
    }

    v9 = atomic_load((*(this + 133) + 88));
    v22 = v9;
    v23 = 0;
    AUSpatialMixerV2InputElement::GetMatrixMixOutputLayout(__p, this);
    v10 = *(this + 27);
    v11 = *(v10 + 336);
    v12 = ausdk::AUScope::GetElement((v10 + 128), 0);
    if (!v12)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v13 = *(v12 + 80);
    AUSM::NeuralPreMix::initialize(this + 219, (this + 120), __p, v11, v13, v18);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  else
  {
LABEL_4:

    AUSM::NeuralPreMix::uninitialize((this + 1752));
  }
}

void sub_1DDE33E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, const void *a15)
{
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(&__p);
  applesauce::CF::URLRef::~URLRef(&a15);
  applesauce::CF::URLRef::~URLRef((v15 + 16));
  applesauce::CF::URLRef::~URLRef((v15 + 8));
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2InputElement::UpdateMatrixMix(void **this)
{
  v34 = *MEMORY[0x1E69E9840];
  IsUsingTDesign = AUSpatialMixerV2InputElement::IsUsingTDesign(this);
  v2 = atomic_load(this[133] + 779);
  if (AUSpatialMixerV2InputElement::ShouldUseOBHD(this))
  {
    v3 = 0;
  }

  else if (*(this + 1808) == 1 && this[227])
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load(this[133] + 780);
  }

  v4 = atomic_load(this[133] + 781);
  v5 = atomic_load(this[133] + 782);
  v6 = atomic_load(this[133] + 784);
  v7 = atomic_load(this[133] + 3132);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v8 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v26 = this + 215;
    if (*(this + 1743) < 0)
    {
      v26 = *v26;
    }

    *buf = 136315650;
    *&buf[4] = v26;
    *&buf[12] = 2080;
    *&buf[14] = "UpdateMatrixMix";
    v31 = 1024;
    MatrixMixOutputType = AUSpatialMixerV2InputElement::GetMatrixMixOutputType(this);
    _os_log_debug_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "[%s|%s] output type: %u", buf, 0x1Cu);
  }

  if (*(this + 1808) == 1 && !this[229])
  {
    ausdk::AUChannelLayout::AUChannelLayout(buf, (this + 222));
  }

  else
  {
    ausdk::AUChannelLayout::AUChannelLayout(buf, (this + 15));
  }

  AUSpatialMixerV2InputElement::GetMatrixMixOutputLayout(__p, this);
  v9 = AUSpatialMixerV2InputElement::GetMatrixMixOutputType(this);
  Element = ausdk::AUScope::GetElement((this[27] + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(Element + 108) <= 2u)
  {
    v11 = 2;
  }

  else
  {
    v11 = *(Element + 108);
  }

  *(this + 1136) = 0;
  v12 = (this + 135);
  ausdk::AUChannelLayout::CopyStorage((this + 135), buf);
  ausdk::AUChannelLayout::CopyStorage((this + 138), __p);
  v14 = v7 & 1;
  *(this + 268) = v9;
  if (**buf == 0x10000)
  {
    v13 = vcnt_s8(*(*buf + 4));
    v13.i16[0] = vaddlv_u8(v13);
    v15 = v13.i32[0];
  }

  else if (**buf)
  {
    v15 = **buf;
  }

  else
  {
    v15 = *(*buf + 8);
  }

  *(this + 282) = v15;
  *(this + 304) = v2;
  if ((v9 & 6) == 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = v3;
  }

  *(this + 312) = v16;
  *(this + 315) = v4;
  *(this + 318) = v5;
  *(this + 320) = v6;
  *(this + 1285) = v14;
  *(this + 1284) = v14;
  v17 = (v16 + 1) * (v16 + 1);
  if (!v16)
  {
    v17 = 0;
  }

  *(this + 313) = v17;
  this[147] = this[146];
  this[150] = this[149];
  this[144] = this[143];
  if (v9 > 2)
  {
    if ((v9 - 4) < 2)
    {
      if (!ChannelLayoutTagIsSupportedHOA(**v12))
      {
        goto LABEL_55;
      }

      goto LABEL_38;
    }

    if (v9 == 6)
    {
      if (ChannelLayoutTagIsSupportedHOA(**v12))
      {
LABEL_38:
        v20 = 0;
LABEL_54:
        *(this + 1137) = v20;
        HOADecoders = AUSM::MatrixMix::createHOADecoders((this + 134), IsUsingTDesign, v11);
        goto LABEL_59;
      }
    }

    else if (ChannelLayoutTagIsSupportedHOA(**v12))
    {
      v20 = 1;
      goto LABEL_54;
    }

LABEL_55:
    v24 = 4294956418;
    goto LABEL_62;
  }

  if (!v9)
  {
    *(this + 1137) = 0;
    *(this + 283) = v15;
    if (ausdk::ACL::operator==(this[138], this[135]))
    {
      goto LABEL_61;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v21 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
LABEL_50:
      ausdk::AUChannelLayout::CopyStorage((this + 138), (this + 135));
      goto LABEL_61;
    }

    v22 = this + 153;
    if (*(this + 1247) < 0)
    {
      v22 = *v22;
    }

LABEL_72:
    *inSpecifier = 136315394;
    *&inSpecifier[4] = v22;
    *&inSpecifier[12] = 2080;
    *&inSpecifier[14] = "initialize";
    _os_log_debug_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEBUG, "[%s|%s] Invalid output layout is defined for MatrixMix, resetting output layout = input layout", inSpecifier, 0x16u);
    goto LABEL_50;
  }

  if (v9 != 1)
  {
    *(this + 1137) = 1;
    *(this + 283) = 1;
    if (ausdk::ACL::operator==(this[138], this[135]))
    {
      goto LABEL_61;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v21 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_50;
    }

    v22 = this + 153;
    if (*(this + 1247) < 0)
    {
      v22 = *v22;
    }

    goto LABEL_72;
  }

  *(this + 1137) = 1;
  v18 = this[138];
  if (*v18 == 0x10000)
  {
    v13 = vcnt_s8(v18[1]);
    v13.i16[0] = vaddlv_u8(v13);
    v19 = v13.i32[0];
  }

  else if (*v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = v18[2];
  }

  *(this + 283) = v19;
  *inSpecifier = this[135];
  *&inSpecifier[8] = v18;
  ioPropertyDataSize = 0;
  std::vector<float>::assign(this + 146, (v15 * v19), &ioPropertyDataSize, v13);
  ioPropertyDataSize = 4 * *(this + 282) * *(this + 283);
  HOADecoders = AudioFormatGetProperty(0x6D6D6170u, 0x10u, inSpecifier, &ioPropertyDataSize, this[146]);
LABEL_59:
  v24 = HOADecoders;
  if (HOADecoders)
  {
    this[147] = this[146];
    this[150] = this[149];
    this[144] = this[143];
    goto LABEL_62;
  }

LABEL_61:
  v24 = 0;
  *(this + 1136) = 1;
LABEL_62:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return v24;
}

void sub_1DDE344BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}