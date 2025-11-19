float DSPGraph::ConstantSourceBox::getParameter(DSPGraph::ConstantSourceBox *this, int a2, int a3)
{
  if (a3 | a2)
  {
    if (a2 != 1 || a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v6, "getParameter");
      std::string::basic_string[abi:ne200100]<0>(&v5, "");
      DSPGraph::ThrowException(-10878, &v7, 3649, &v6, &v5);
    }

    v3 = 776;
  }

  else
  {
    v3 = 772;
  }

  return *(this + v3);
}

void sub_18F86FB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::ConstantSourceBox::setParameter(uint64_t this, int a2, int a3, float a4)
{
  if (a3 | a2)
  {
    if (a2 != 1 || a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v5, "setParameter");
      std::string::basic_string[abi:ne200100]<0>(&v4, "");
      DSPGraph::ThrowException(-10878, &v6, 3635, &v5, &v4);
    }

    *(this + 776) = a4;
  }

  else
  {
    *(this + 772) = a4;
  }

  return this;
}

void sub_18F86FC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::ConstantSourceBox::~ConstantSourceBox(DSPGraph::ConstantSourceBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

double DSPGraph::DecibelControlBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.63842702e175;
  *a1 = xmmword_18F901B50;
  *(a1 + 16) = 0;
  return result;
}

size_t DSPGraph::DecibelControlBox::getParameterInfo@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (a2 == 1)
    {
      v18 = 0;
      v16 = 0u;
      HIDWORD(v17) = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      LODWORD(v17) = 13;
      *(&v17 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
      result = strlcpy(&v12, "DBValue", 0x34uLL);
      v7 = @"DBValue";
    }

    else
    {
      if (a2)
      {
        v5 = -10878;
        goto LABEL_3;
      }

      v18 = 0;
      v16 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      *&v17 = 14;
      *(&v17 + 1) = 0x3F8000007F800000;
      result = strlcpy(&v12, "LinearValue", 0x34uLL);
      v7 = @"LinearValue";
    }

    *(&v16 + 1) = v7;
    LODWORD(v18) = v18 | 0xC8000000;
    v8 = v13;
    *a3 = v12;
    *(a3 + 16) = v8;
    v9 = v15;
    *(a3 + 32) = v14;
    *(a3 + 48) = v9;
    v10 = v17;
    *(a3 + 64) = v16;
    *(a3 + 80) = v10;
    *(a3 + 96) = v18;
    *(a3 + 104) = 1;
    goto LABEL_9;
  }

  v5 = -10866;
LABEL_3:
  *a3 = v5;
  *(a3 + 104) = 0;
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F86FE5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t DSPGraph::DecibelControlBox::getParameterList@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v5 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v5, &v6, 2uLL);
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

float DSPGraph::DecibelControlBox::getParameter(DSPGraph::DecibelControlBox *this, int a2, int a3)
{
  if (a3 | a2)
  {
    if (a2 != 1 || a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v6, "getParameter");
      std::string::basic_string[abi:ne200100]<0>(&v5, "");
      DSPGraph::ThrowException(-10878, &v7, 3720, &v6, &v5);
    }

    v3 = 776;
  }

  else
  {
    v3 = 772;
  }

  return *(this + v3);
}

void sub_18F86FF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::DecibelControlBox::setParameter(DSPGraph::DecibelControlBox *this, int a2, int a3, float a4)
{
  v4 = a4;
  if (a3 | a2)
  {
    if (a2 != 1 || a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v8, "setParameter");
      std::string::basic_string[abi:ne200100]<0>(&v7, "");
      DSPGraph::ThrowException(-10878, &v9, 3706, &v8, &v7);
    }

    *(this + 193) = __exp10f(a4 * 0.05);
  }

  else
  {
    if (a4 < 0.0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v8, "setParameter");
      std::string::basic_string[abi:ne200100]<0>(&v7, "Parameter out of range");
      DSPGraph::ThrowException(1919837985, &v9, 3698, &v8, &v7);
    }

    *(this + 193) = a4;
    v6 = 1.1755e-38;
    if (v4 >= 1.1755e-38)
    {
      v6 = v4;
    }

    v4 = log10f(v6) * 20.0;
  }

  *(this + 194) = v4;
}

void sub_18F8700F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::DecibelControlBox::~DecibelControlBox(DSPGraph::DecibelControlBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

double DSPGraph::SingleRateLPCMConverterBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.28814877e248;
  *a1 = xmmword_18F901B80;
  *(a1 + 16) = 0;
  return result;
}

uint64_t DSPGraph::Box::clearCachedLatency(uint64_t this)
{
  if (*(this + 760) == 1)
  {
    *(this + 760) = 0;
  }

  return this;
}

void DSPGraph::Box::setSubset(unint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != a2)
  {
    if (v2)
    {
      std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::__erase_unique<RegistrarClientProcess *>((v2 + 24), a1);
    }

    *(a1 + 24) = a2;
    if (a2)
    {
      std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box * const&>((a2 + 24), a1);
    }
  }
}

void DSPGraph::Box::addAnalysis(DSPGraph::Box *this, unsigned int a2, int a3)
{
  std::mutex::lock((this + 248));
  for (i = *(this + 39); i != *(this + 40); i += 8)
  {
    if (*(*i + 24) == a2 && *(*i + 80) == a3)
    {
      goto LABEL_24;
    }
  }

  v7 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>((*(this + 1) + 952), a2);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v7[12];
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v9 = (*(*v8 + 48))(&v29);
  v10 = v29;
  if (!v29)
  {
    std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v27, "addAnalysis");
    std::string::basic_string[abi:ne200100]<0>(&v26, "Box::addAnalysis, Analyzer Not Supported.");
    DSPGraph::ThrowException(1852204065, &v28, 357, &v27, &v26);
  }

  *(v29 + 80) = a3;
  *(v10 + 88) = DSPGraph::Graph::generateSerialNumber(v9);
  DSPGraph::Graph::addAnalyzer(*(this + 1), v29);
  v12 = *(this + 40);
  v11 = *(this + 41);
  if (v12 >= v11)
  {
    v15 = *(this + 39);
    v16 = v12 - v15;
    v17 = (v12 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v19 = v11 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (!(v20 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = (v12 - v15) >> 3;
    v22 = (8 * v17);
    v23 = v29;
    v29 = 0;
    v24 = (8 * v17 - 8 * v21);
    *v22 = v23;
    v14 = v22 + 1;
    memcpy(v24, v15, v16);
    *(this + 39) = v24;
    *(this + 40) = v14;
    *(this + 41) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v13 = v29;
    v29 = 0;
    *v12 = v13;
    v14 = v12 + 1;
  }

  *(this + 40) = v14;
  atomic_fetch_add(this + 192, 1u);
  v25 = v29;
  v29 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

LABEL_24:
  std::mutex::unlock((this + 248));
}

void sub_18F8704BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  v29 = *(v27 - 56);
  *(v27 - 56) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  std::mutex::unlock((v26 + 248));
  _Unwind_Resume(a1);
}

void DSPGraph::Box::removeAnalysis(DSPGraph::Box *this, int a2, int a3)
{
  std::mutex::lock((this + 248));
  v7 = *(this + 39);
  v6 = *(this + 40);
  if (v7 != v6)
  {
    while (*(*v7 + 6) != a2 || *(*v7 + 20) != a3)
    {
      if (++v7 == v6)
      {
        goto LABEL_16;
      }
    }
  }

  if (v7 != v6)
  {
    caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(this + 336, a2);
    DSPGraph::Graph::removeAnalyzer(*(this + 1), *v7);
    v8 = v7 + 1;
    v9 = *(this + 40);
    if (v7 + 1 != v9)
    {
      do
      {
        v7 = v8;
        v10 = *(v8 - 1);
        *(v8 - 1) = *v8;
        *v8 = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        v8 = v7 + 1;
      }

      while (v7 + 1 != v9);
      v9 = *(this + 40);
    }

    while (v9 != v7)
    {
      v12 = *--v9;
      v11 = v12;
      *v9 = 0;
      if (v12)
      {
        (*(*v11 + 8))(v11);
      }
    }

    *(this + 40) = v7;
    atomic_fetch_add(this + 192, 0xFFFFFFFF);
  }

LABEL_16:

  std::mutex::unlock((this + 248));
}

uint64_t DSPGraph::Box::hasAnalysis(DSPGraph::Box *this, int a2, uint64_t a3)
{
  v3 = *(this + 11);
  v4 = *(this + 12) - v3;
  if ((v4 & 0x1FFFFFFFE0) == 0)
  {
    goto LABEL_15;
  }

  if (a3 >= (v4 >> 5))
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v14, "out");
    v12 = (this + 32);
    if (*(this + 55) < 0)
    {
      v12 = *v12;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v11, v12, (*(this + 12) - *(this + 11)) >> 5, a3);
  }

  v8 = (*(*(v3 + 32 * a3) + 40))(v3 + 32 * a3);
  if (!v8)
  {
LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "hasAnalysis");
    std::string::basic_string[abi:ne200100]<0>(&v13, "Box::hasAnalysis, Port Not Connected to Box.");
    DSPGraph::ThrowException(1970168609, &v15, 431, &v14, &v13);
  }

  for (i = *(this + 39); ; i += 8)
  {
    if (i == *(this + 40))
    {
      return 0;
    }

    if (*(*i + 8) == v8 && *(*i + 24) == a2)
    {
      break;
    }
  }

  return 1;
}

void sub_18F870830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::getAnalysisCount(DSPGraph::Box *this, uint64_t a2)
{
  v2 = *(this + 11);
  v3 = *(this + 12) - v2;
  if ((v3 & 0x1FFFFFFFE0) == 0)
  {
    return 0;
  }

  if (a2 >= (v3 >> 5))
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v14, "out");
    v13 = (this + 32);
    if (*(this + 55) < 0)
    {
      v13 = *v13;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v12, v13, (*(this + 12) - *(this + 11)) >> 5, a2);
  }

  v6 = (*(*(v2 + 32 * a2) + 40))(v2 + 32 * a2);
  if (!v6)
  {
    return 0;
  }

  v7 = *(this + 39);
  v8 = *(this + 40);
  if (v7 == v8)
  {
    return 0;
  }

  LODWORD(v9) = 0;
  do
  {
    v10 = *v7++;
    if (*(v10 + 8) == v6)
    {
      v9 = (v9 + 1);
    }

    else
    {
      v9 = v9;
    }
  }

  while (v7 != v8);
  return v9;
}

void sub_18F8709A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::addRenderCallback(uint64_t a1, uint64_t a2, unsigned int a3, signed int a4)
{
  v65 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 672));
  v8 = *(a1 + 736);
  std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v52, a2);
  LODWORD(a2) = atomic_fetch_add(DSPGraph::RenderObserverList<DSPGraph::Box>::add(std::function<void ()(DSPGraph::Box*,unsigned int)>,DSPGraph::RenderCallbackType,DSPGraph::RenderCallbackOrder)::sToken, 1u);
  std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v53, v52);
  v54[0] = a2 + 1;
  std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v55, v53);
  v56 = __PAIR64__(a4, a3);
  std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](v53);
  v48[0] = (v8 + ((a3 != 0) << 6));
  v48[1] = 0;
  v48[2] = (v48[0] + 4);
  v49 = 1;
  os_unfair_lock_lock(v48[0] + 1);
  v50 = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate(v48[0]);
  v51 = v50 == 0;
  v9 = caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::mutator::copy_previous(v48);
  v10 = v9;
  v12 = *v9;
  v11 = v9[1];
  v13 = v11 - *v9;
  if (v11 == *v9)
  {
    v15 = v9[1];
  }

  else
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
    v15 = *v9;
    do
    {
      v16 = v14 >> 1;
      v17 = v15 + 48 * (v14 >> 1);
      v18 = *(v17 + 44);
      v19 = v17 + 48;
      v14 += ~(v14 >> 1);
      if (v18 > a4)
      {
        v14 = v16;
      }

      else
      {
        v15 = v19;
      }
    }

    while (v14);
  }

  v20 = v9[2];
  if (v11 >= v20)
  {
    v33 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4) + 1;
    if (v33 > 0x555555555555555)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v34 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v12) >> 4);
    if (2 * v34 > v33)
    {
      v33 = 2 * v34;
    }

    if (v34 >= 0x2AAAAAAAAAAAAAALL)
    {
      v35 = 0x555555555555555;
    }

    else
    {
      v35 = v33;
    }

    v61 = v10;
    if (v35)
    {
      std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>::allocate_at_least[abi:ne200100](v35);
    }

    v36 = v15 - v12;
    v37 = 16 * ((v15 - v12) >> 4);
    v57 = 0;
    v58 = v37;
    v59 = v37;
    v60 = 0;
    if (!(0xAAAAAAAAAAAAAAABLL * ((v15 - v12) >> 4)))
    {
      if (v36 < 1)
      {
        if (v15 == v12)
        {
          v40 = 1;
        }

        else
        {
          v40 = 0x5555555555555556 * ((v15 - v12) >> 4);
        }

        v64 = v10;
        std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>::allocate_at_least[abi:ne200100](v40);
      }

      v38 = 1 - 0x5555555555555555 * (v36 >> 4);
      v39 = -3 * (v38 >> 1);
      v37 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver *>(16 * ((v15 - v12) >> 4), v37, v37 - 48 * (v38 >> 1));
      v58 += 16 * v39;
      v59 = v37;
    }

    *v37 = v54[0];
    std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v37 + 8, v55);
    *(v37 + 40) = v56;
    v59 += 48;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>,DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver*>(v15, v10[1], v59);
    v59 += v10[1] - v15;
    v10[1] = v15;
    v41 = v58 + *v10 - v15;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>,DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver*>(*v10, v15, v41);
    v42 = *v10;
    *v10 = v41;
    v57 = v42;
    v58 = v42;
    v10[1] = v59;
    v59 = v42;
    v43 = v10[2];
    v10[2] = v60;
    v60 = v43;
    std::__split_buffer<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver> &>::~__split_buffer(&v57);
  }

  else if (v15 == v11)
  {
    *v11 = v54[0];
    std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v11 + 8, v55);
    *(v11 + 40) = v56;
    v10[1] = v11 + 48;
  }

  else
  {
    v21 = v11 - 48;
    v22 = v9[1];
    if (v11 >= 0x30)
    {
      v22 = v9[1];
      do
      {
        *v22 = *v21;
        std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v22 + 8, v21 + 8);
        *(v22 + 40) = *(v21 + 40);
        v21 += 48;
        v22 += 48;
      }

      while (v21 < v11);
    }

    v10[1] = v22;
    if (v11 != v15 + 48)
    {
      v23 = 0;
      do
      {
        *(v11 + v23 - 48) = *(v11 + v23 - 96);
        std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::operator=[abi:ne200100](v11 + v23 - 40, v11 + v23 - 88);
        *(v11 + v23 - 8) = *(v11 + v23 - 56);
        v23 -= 48;
      }

      while (v15 - v11 + 48 != v23);
      v22 = v10[1];
    }

    v24 = v15 <= v54;
    v25 = v22 > v54;
    v27 = v24 && v25;
    v26 = !v24 || !v25;
    v28 = 12;
    if (v26)
    {
      v28 = 0;
    }

    *v15 = v54[v28];
    v29 = (v15 + 8);
    if (v26)
    {
      v30 = v55;
    }

    else
    {
      v30 = &v58;
    }

    std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v62, v30);
    if (v29 != v62)
    {
      v31 = v63;
      v32 = *(v15 + 32);
      if (v63 == v62)
      {
        if (v32 == v29)
        {
          (*(*v63 + 24))();
          (*(*v63 + 32))(v63);
          v63 = 0;
          (*(**(v15 + 32) + 24))(*(v15 + 32), v62);
          (*(**(v15 + 32) + 32))(*(v15 + 32));
          *(v15 + 32) = 0;
          v63 = v62;
          (*(v57 + 24))(&v57, v15 + 8);
          (*(v57 + 32))(&v57);
        }

        else
        {
          (*(*v63 + 24))();
          (*(*v63 + 32))(v63);
          v63 = *(v15 + 32);
        }

        *(v15 + 32) = v29;
      }

      else if (v32 == v29)
      {
        (*(*v32 + 24))(*(v15 + 32), v62);
        (*(**(v15 + 32) + 32))(*(v15 + 32));
        *(v15 + 32) = v63;
        v63 = v62;
      }

      else
      {
        v63 = *(v15 + 32);
        *(v15 + 32) = v31;
      }
    }

    std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](v62);
    v44 = 10;
    if (v27)
    {
      v44 = 22;
    }

    *(v15 + 40) = *&v54[v44];
  }

  caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::mutator::~mutator(v48);
  v45 = v54[0];
  std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](v55);
  std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](v52);
  atomic_fetch_add((a1 + 768), 1u);
  std::mutex::unlock((a1 + 672));
  v46 = *MEMORY[0x1E69E9840];
  return v45;
}

void sub_18F8710FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::mutator::copy_previous(void *result)
{
  v1 = *result;
  v2 = *(result + 8);
  if (*(*result + v2 + 8))
  {
    v3 = result;
    v4 = v1 + 24 * v2;
    v10 = 0uLL;
    v11 = 0;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v12 = &v10;
    v13 = 0;
    if (v6 != v5)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4);
      if (v7 < 0x555555555555556)
      {
        std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>::allocate_at_least[abi:ne200100](v7);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = *(result + 9);
    v9 = (v1 + 24 * v8 + 16);
    if (*(v1 + 8 + v8) == 1)
    {
      v12 = (v1 + 24 * v8 + 16);
      std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v12);
    }

    else
    {
      *(v1 + 8 + v8) = 1;
    }

    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = v10;
    v9[2] = v11;
    v10 = 0uLL;
    v11 = 0;
    v3[1] = v9;
    v12 = &v10;
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v12);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18F87137C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](va);
  __clang_call_terminate(a1);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::mutator::~mutator(uint64_t a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8))
  {
    v3 = *(a1 + 36);
    caulk::concurrent::details::lf_read_sync_write_impl::end_mutate(v2);
    v4 = *a1;
    v5 = *(a1 + 32);
    *(*a1 + v5 + 8) = 0;
    v7 = (v4 + 24 * v5 + 16);
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v7);
  }

  if (*(a1 + 24) == 1)
  {
    os_unfair_lock_unlock(*(a1 + 16));
  }

  return a1;
}

void std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>,DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 8;
    v6 = a3 + 8;
    do
    {
      *(v6 - 8) = *(v5 - 8);
      v7 = std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v6, v5);
      *(v7 + 32) = *(v5 + 32);
      v8 = v5 + 40;
      v5 += 48;
      v6 = v7 + 48;
    }

    while (v8 != a2);
    do
    {
      result = std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](v4 + 8);
      v4 += 48;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 8;
    do
    {
      v6 = v5 - 8;
      *a3 = *(v5 - 8);
      std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::operator=[abi:ne200100](a3 + 8, v5);
      *(a3 + 40) = *(v5 + 32);
      a3 += 48;
      v5 += 48;
    }

    while (v6 + 48 != a2);
  }

  return a3;
}

uint64_t std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
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

void DSPGraph::Box::removeRenderCallback(DSPGraph::Box *this, int a2)
{
  v30[5] = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 672));
  v4 = 0;
  v20 = this;
  v5 = *(this + 92) + 64;
  v26[0] = *(this + 92);
  v26[1] = v5;
  do
  {
    v6 = v26[v4];
    v22[0] = v6;
    v22[1] = 0;
    v22[2] = v6 + 1;
    v23 = 1;
    os_unfair_lock_lock(v6 + 1);
    v24 = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate(v6);
    v25 = v24 == 0;
    v7 = caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::mutator::copy_previous(v22);
    v8 = v7[1];
    v9 = *v7;
    v21 = *v7;
    if (*v7 == v8)
    {
LABEL_5:
      v11 = v8;
    }

    else
    {
      while (1)
      {
        v29 = *v9;
        std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v30, v9 + 8);
        v30[4] = *(v9 + 40);
        v10 = v29;
        std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](v30);
        if (v10 == a2)
        {
          break;
        }

        v9 += 48;
        if (v9 == v8)
        {
          goto LABEL_5;
        }
      }

      v11 = v8;
      if (v9 != v8)
      {
        v16 = v9 + 48;
        v11 = v9;
        while (v16 != v8)
        {
          v27 = *v16;
          std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v28, v16 + 8);
          v28[4] = *(v16 + 40);
          v17 = v27;
          std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](v28);
          if (v17 != a2)
          {
            *v11 = *v16;
            std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::operator=[abi:ne200100](v11 + 8, v16 + 8);
            *(v11 + 40) = *(v16 + 40);
            v11 += 48;
          }

          v16 += 48;
        }
      }
    }

    v12 = v7[1];
    if (v11 != v12)
    {
      v11 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver *>(v12, v7[1], v11);
      v13 = v7[1];
      if (v13 != v11)
      {
        do
        {
          v14 = v13 - 48;
          std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](v13 - 40);
          v13 = v14;
        }

        while (v14 != v11);
      }

      v7[1] = v11;
    }

    v15 = *v7;
    caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::mutator::~mutator(v22);
    ++v4;
  }

  while (v4 != 2);
  if (v11 - v15 != v8 - v21)
  {
    atomic_fetch_add(v20 + 192, 0xFFFFFFFF);
  }

  std::mutex::unlock((v20 + 672));
  do
  {
    v18 = atomic_load(v20 + 192);
  }

  while ((v18 & 0x80000000) != 0);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_18F871978(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t DSPGraph::Box::sampleRate(DSPGraph::Box *this)
{
  v4 = this + 88;
  v2 = *(this + 11);
  v3 = *(v4 + 1);
  if (((v3 - v2) & 0x1FFFFFFFE0) != 0)
  {
    if (v3 == v2)
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v11, "out");
      v6 = (this + 32);
      if (*(this + 55) < 0)
      {
        v6 = *v6;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(this + 12) - *(this + 11)) >> 5, 0);
    }
  }

  else
  {
    v2 = *(this + 8);
    v7 = *(this + 9);
    if (((v7 - v2) & 0x1FFFFFFFE0) == 0)
    {
      return 1;
    }

    if (v7 == v2)
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v11, "in");
      v10 = (this + 32);
      if (*(this + 55) < 0)
      {
        v10 = *v10;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v9, v10, (*(this + 9) - *(this + 8)) >> 5, 0);
    }
  }

  return **((*(*v2 + 40))(v2) + 120);
}

void sub_18F871B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::totalLatencyInSamples(DSPGraph::Box *this)
{
  v2 = (*(*this + 72))(this);
  v3 = DSPGraph::Box::upstreamLatencyInTicks(this) + v2;
  v4 = v3 * DSPGraph::Box::sampleRate(this) / *(*(this + 1) + 696);
  if (HIDWORD(v4))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4;
  }
}

void *DSPGraph::Box::propagateFlagsAndTimeStamp(void *this, int a2, const AudioTimeStamp *a3)
{
  v3 = this[11];
  v4 = this[12];
  if (v3 != v4)
  {
    this = this[11];
    v7 = v3;
    do
    {
      v8 = *v7;
      v7 += 4;
      v9 = *((*(v8 + 40))(this) + 56);
      v11 = *&a3->mSMPTETime.mSubframes;
      v10 = *&a3->mSMPTETime.mHours;
      v12 = *&a3->mRateScalar;
      *(v9 + 8) = *&a3->mSampleTime;
      *(v9 + 24) = v12;
      *(v9 + 40) = v11;
      *(v9 + 56) = v10;
      *(v9 + 72) = a2;
      v3 += 4;
      this = v7;
    }

    while (v7 != v4);
  }

  return this;
}

void DSPGraph::Box::addParameterTap(DSPGraph::Box *this, const DSPGraph::ParameterTap *a2)
{
  v3 = *(this + 20);
  v4 = *(this + 21);
  if (v3 >= v4)
  {
    v8 = *(this + 19);
    v9 = v3 - v8;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v8) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x666666666666666)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = 40 * v10;
    v15 = *(a2 + 1);
    *v14 = *a2;
    *(v14 + 16) = v15;
    *(v14 + 32) = *(a2 + 4);
    v7 = 40 * v10 + 40;
    v16 = v14 - v9;
    memcpy((v14 - v9), v8, v9);
    *(this + 19) = v16;
    *(this + 20) = v7;
    *(this + 21) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(this + 20) = v7;
  atomic_fetch_add(this + 192, 1u);
}

uint64_t DSPGraph::Box::addPropertyTap(DSPGraph::Box *this, const DSPGraph::PropertyTap *a2)
{
  v5 = *(this + 23);
  v4 = *(this + 24);
  if (v5 >= v4)
  {
    v10 = *(this + 22);
    v11 = (v5 - v10) >> 6;
    if ((v11 + 1) >> 58)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v12 = v4 - v10;
    v13 = v12 >> 5;
    if (v12 >> 5 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v14 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v33 = this + 176;
    if (v14)
    {
      if (!(v14 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = v11 << 6;
    v30 = 0;
    v31 = v15;
    v32 = (v11 << 6);
    v16 = *(a2 + 1);
    *v15 = *a2;
    *(v15 + 16) = v16;
    *(v15 + 29) = *(a2 + 29);
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    v17 = *(a2 + 5);
    v18 = *(a2 + 6);
    *(v15 + 40) = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v11 << 6) + 40, v17, v18, v18 - v17);
    *&v32 = v32 + 64;
    v20 = *(this + 22);
    v19 = *(this + 23);
    v21 = v31 + v20 - v19;
    if (v20 != v19)
    {
      v22 = *(this + 22);
      v23 = v31 + v20 - v19;
      do
      {
        v24 = *v22;
        v25 = v22[1];
        *(v23 + 29) = *(v22 + 29);
        *v23 = v24;
        *(v23 + 16) = v25;
        *(v23 + 48) = 0;
        *(v23 + 56) = 0;
        *(v23 + 40) = 0;
        *(v23 + 40) = *(v22 + 40);
        *(v23 + 56) = *(v22 + 7);
        *(v22 + 5) = 0;
        *(v22 + 6) = 0;
        *(v22 + 7) = 0;
        v22 += 4;
        v23 += 64;
      }

      while (v22 != v19);
      do
      {
        v26 = *(v20 + 40);
        if (v26)
        {
          *(v20 + 48) = v26;
          operator delete(v26);
        }

        v20 += 64;
      }

      while (v20 != v19);
    }

    v27 = *(this + 22);
    *(this + 22) = v21;
    v28 = *(this + 24);
    v29 = v32;
    *(this + 184) = v32;
    *&v32 = v27;
    *(&v32 + 1) = v28;
    v30 = v27;
    v31 = v27;
    result = std::__split_buffer<DSPGraph::PropertyTap>::~__split_buffer(&v30);
    v9 = v29;
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 1);
    *(v5 + 29) = *(a2 + 29);
    *v5 = v6;
    *(v5 + 16) = v7;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;
    *(v5 + 40) = 0;
    result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v5 + 40, *(a2 + 5), *(a2 + 6), *(a2 + 6) - *(a2 + 5));
    v9 = v5 + 64;
    *(this + 23) = v5 + 64;
  }

  *(this + 23) = v9;
  atomic_fetch_add(this + 192, 1u);
  return result;
}

void sub_18F872144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<DSPGraph::PropertyTap>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<DSPGraph::PropertyTap>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 64;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_18F872474(_Unwind_Exception *a1)
{
  v4 = *(v1 + 100);
  if (v4)
  {
    *(v1 + 101) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 98) = v5;
    operator delete(v5);
  }

  DSPGraph::Box::~Box(v1);
  _Unwind_Resume(a1);
}

void DSPGraph::ArithmeticDivBox::f(float *a1, const DSPSplitComplex *a2, const DSPSplitComplex *a3, vDSP_Length __N)
{
  __A = 0.0;
  imagp = a3->imagp;
  v8.realp = a1;
  v8.imagp = imagp;
  v7 = __N;
  vDSP_vfill(&__A, imagp, 1, __N);
  vDSP_zvdiv(a2, 1, &v8, 1, a3, 1, v7);
}

void DSPGraph::ArithmeticDiffBox::f(const float *__B, DSPSplitComplex *__A, DSPSplitComplex *__C, vDSP_Length __N)
{
  v5 = __N;
  vDSP_zrvsub(__A, 1, __B, 1, __C, 1, __N);

  vDSP_zvneg(__C, 1, __C, 1, v5);
}

size_t DSPGraph::LinearGainPolicy::getGainParameterInfo@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 84) = --2.00000143;
  *(a1 + 92) = 1065353216;
  *(a1 + 80) = 14;
  result = strlcpy(a1, "gain", 0x34uLL);
  *(a1 + 72) = @"gain";
  *(a1 + 96) |= 0xC8000000;
  return result;
}

size_t DSPGraph::DecibelGainPolicy::getGainParameterInfo@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 84) = 0x41C00000C3480000;
  *(a1 + 80) = 13;
  result = strlcpy(a1, "dbgain", 0x34uLL);
  *(a1 + 72) = @"dbgain";
  *(a1 + 96) |= 0xC8000000;
  return result;
}

float DSPGraph::DecibelGainPolicy::linearGainToPolicyGain(DSPGraph::DecibelGainPolicy *this, float a2)
{
  if (a2 < 1.0e-10)
  {
    a2 = 1.0e-10;
  }

  return log10f(a2) * 20.0;
}

void DSPGraph::GainBox::GainBox(DSPGraph::GainBox *this)
{
  DSPGraph::Box::Box(this, 1u, 1u);
}

{
  DSPGraph::Box::Box(this, 1u, 1u);
}

uint64_t DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::setProperty(double *a1, int a2, int a3, unsigned int a4, int a5, double *a6)
{
  if (a2 != 3098)
  {
    return DSPGraph::Box::setProperty(a1, a2, a3, a4, a5, a6);
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
  a1[98] = *a6;
  v9 = a1[99];
  v6 = 0;
  if (v8 < v9)
  {
    a1[98] = v9;
  }

  return v6;
}

double DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::getProperty(DSPGraph::Box *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, CFStringRef *a6)
{
  if (a2 == 3098)
  {
    if (*a5 == 8 && a6 && !a3)
    {
      result = *(this + 98);
      *a6 = result;
    }
  }

  else
  {
    DSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6);
  }

  return result;
}

unint64_t DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::getPropertyInfo(DSPGraph::Box *a1, int a2, int a3)
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
    PropertyInfo = DSPGraph::Box::getPropertyInfo(a1, a2, a3);
    v4 = PropertyInfo & 0xFFFFFFFF00000000;
    v3 = PropertyInfo;
  }

  return v4 | v3;
}

double DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::desc@<D0>(uint64_t a1@<X8>)
{
  result = 9.69732525e189;
  *a1 = xmmword_18F9019D0;
  *(a1 + 16) = 0;
  return result;
}

size_t DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::getParameterInfo@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (a2 == 1)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      DWORD2(v15) = 1065353216;
      LODWORD(v15) = 2;
      result = strlcpy(&v10, "mute", 0x34uLL);
      *(&v14 + 1) = @"mute";
      LODWORD(v16) = v16 | 0xC8000000;
      v6 = v11;
      *a3 = v10;
      *(a3 + 16) = v6;
      v7 = v13;
      *(a3 + 32) = v12;
      *(a3 + 48) = v7;
      v8 = v15;
      *(a3 + 64) = v14;
      *(a3 + 80) = v8;
      *(a3 + 96) = v16;
    }

    else
    {
      if (a2)
      {
        v4 = -10878;
        goto LABEL_3;
      }

      result = DSPGraph::LinearGainPolicy::getGainParameterInfo(a3);
    }

    *(a3 + 104) = 1;
    goto LABEL_9;
  }

  v4 = -10866;
LABEL_3:
  *a3 = v4;
  *(a3 + 104) = 0;
LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F872B64(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::getParameterList@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v4 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v4, &v5, 2uLL);
    v3 = *MEMORY[0x1E69E9840];
  }

  return result;
}

float DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::getParameter(uint64_t a1, int a2, int a3)
{
  if (!(a3 | a2))
  {
    return *(a1 + 776);
  }

  if (a2 != 1 || a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v4, "");
    DSPGraph::ThrowException(-10878, &v6, 2753, &v5, &v4);
  }

  result = 0.0;
  if (*(a1 + 780))
  {
    return 1.0;
  }

  return result;
}

void sub_18F872C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

float DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::setParameter(uint64_t a1, int a2, int a3, float result)
{
  if (a3 | a2)
  {
    if (a2 != 1 || a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v6, "setParameter");
      std::string::basic_string[abi:ne200100]<0>(&v5, "");
      DSPGraph::ThrowException(-10878, &v7, 2732, &v6, &v5);
    }

    *(a1 + 780) = result != 0.0;
  }

  else
  {
    *(a1 + 776) = result;
  }

  if (*(*(a1 + 8) + 762) != 1 || *(a1 + 812) == 1)
  {
    v4 = 1.0;
    if (*(a1 + 780))
    {
      v4 = 0.0;
    }

    result = *(a1 + 776) * v4;
    *(a1 + 804) = result;
    *(a1 + 808) = result;
  }

  return result;
}

void sub_18F872DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::DBGainBox::DBGainBox(DSPGraph::DBGainBox *this)
{
  DSPGraph::Box::Box(this, 1u, 1u);
}

{
  DSPGraph::Box::Box(this, 1u, 1u);
}

float DSPGraph::GenericGainBox<DSPGraph::DecibelGainPolicy>::reset(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 780))
  {
    v1 = 0.0;
  }

  result = *(a1 + 776) * v1;
  *(a1 + 804) = result;
  *(a1 + 812) = 257;
  return result;
}

BOOL DSPGraph::GenericGainBox<DSPGraph::DecibelGainPolicy>::initialize(uint64_t a1)
{
  DSPGraph::Box::initialize(a1);
  v2 = *(a1 + 64);
  if (*(a1 + 72) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v31, "in");
    v13 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v13 = *v13;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v12, v13, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = *(a1 + 88);
  if (*(a1 + 96) == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v31, "out");
    v15 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v15 = *v15;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v14, v15, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v5 = *(v3 + 120);
  v6 = *((*(*v4 + 40))(v4) + 120);
  *(a1 + 813) = 1;
  v7 = *(v5 + 8);
  if (v7 == 1819304813)
  {
    v8 = *(v5 + 12);
    if ((v8 & 1) == 0 || *(v5 + 32) != 32)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v7 != 1718773105 || *(v5 + 32) != 64)
    {
LABEL_27:
      std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v31, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v30, "GainBox input format must be non-interleaved float or 'freq'");
      DSPGraph::ThrowException(1718449215, &v32, 2615, &v31, &v30);
    }

    v8 = *(v5 + 12);
  }

  if ((v8 & 0x20) == 0)
  {
    goto LABEL_27;
  }

  v9 = *(v6 + 8);
  if (v9 == 1819304813)
  {
    v10 = *(v6 + 12);
    if ((v10 & 1) == 0 || *(v6 + 32) != 32)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v9 != 1718773105 || *(v6 + 32) != 64)
    {
LABEL_28:
      std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v31, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v30, "GainBox output format must be non-interleaved float or 'freq'");
      DSPGraph::ThrowException(1718449215, &v32, 2618, &v31, &v30);
    }

    v10 = *(v6 + 12);
  }

  if ((v10 & 0x20) == 0)
  {
    goto LABEL_28;
  }

  result = CA::StreamDescription::IsEquivalent(v5, v6);
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v31, "initialize");
    CA::StreamDescription::AsString(&v26, v5, v16, v17);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v27, "GainBox input and output formats don't match (", &v26);
    *&v18 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v28, &v27, " != ").n128_u64[0];
    CA::StreamDescription::AsString(v24, v6, v18, v19);
    if ((v25 & 0x80u) == 0)
    {
      v20 = v24;
    }

    else
    {
      v20 = v24[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v21 = v25;
    }

    else
    {
      v21 = v24[1];
    }

    v22 = std::string::append(&v28, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v30, &v29, ")");
    DSPGraph::ThrowException(1718449215, &v32, 2623, &v31, &v30);
  }

  return result;
}

void sub_18F8732CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 97) < 0)
  {
    operator delete(*(v42 - 120));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (*(v42 - 49) < 0)
  {
    operator delete(*(v42 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GenericGainBox<DSPGraph::DecibelGainPolicy>::process(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  if (*(v4 + 8) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "in");
    v55 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v55 = *v55;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v54, v55, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(v2 + 88);
  if (*(v2 + 96) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "out");
    v57 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v57 = *v57;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v56, v57, (*(v2 + 96) - *(v2 + 88)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*v7 + 40))(v7);
  v10 = *(v2 + 88);
  if (*(v2 + 96) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "out");
    v59 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v59 = *v59;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v58, v59, (*(v2 + 96) - *(v2 + 88)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v68 = *(*((*(*v10 + 40))(v10) + 120) + 8);
  v12 = *v8;
  if (*(v2 + 812) == 1)
  {
    *(v2 + 812) = 0;
  }

  if (*(v2 + 813) == 1)
  {
    v13 = 1.0;
    if (*(v2 + 780))
    {
      v13 = 0.0;
    }

    *(v2 + 808) = *(v2 + 776) * v13;
  }

  v14 = *(v2 + 64);
  if (*(v2 + 72) == v14)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "in");
    v61 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v61 = *v61;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v60, v61, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v15 = (4 * a2) << (v68 == 1718773105);
  if ((*(*((*(*v14 + 40))(v14) + 56) + 72) & 0x10) != 0)
  {
    if (v12)
    {
      v24 = (v11 + 16);
      do
      {
        bzero(*v24, v15);
        *(v24 - 1) = v15;
        v24 += 2;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v16 = a2;
    v17 = *(v2 + 804);
    v18 = (v2 + 808);
    v19 = *(v2 + 808);
    if (v17 == v19)
    {
      if (v12)
      {
        v20 = (v11 + 16);
        v21 = v8 + 4;
        do
        {
          v22 = *v21;
          v23 = *v20;
          MEMORY[0x193AE08B0](*v21, 1, v2 + 808, *v20, 1, v16);
          if (v68 == 1718773105)
          {
            MEMORY[0x193AE08B0](v22 + 4 * v16, 1, v2 + 808, v23 + 4 * v16, 1, v16);
          }

          *(v20 - 1) = v15;
          v20 += 2;
          v21 += 2;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      if (*(v2 + 813))
      {
        v25 = *(v2 + 784);
        v26 = (v19 - v17) / (v25 * DSPGraph::Box::sampleRate(v2));
        *(v2 + 800) = v26;
        v17 = *(v2 + 804);
      }

      else
      {
        v26 = *(v2 + 800);
      }

      *(v2 + 813) = 0;
      v27 = v17 + (v26 * a2);
      if ((v26 <= 0.0 || (v28 = *v18, v27 <= *v18)) && (v26 >= 0.0 || (v28 = *v18, v27 >= *v18)))
      {
        if (v12)
        {
          v34 = (v11 + 16);
          v35 = (v8 + 4);
          do
          {
            v36 = *v35;
            v37 = *v34;
            __Start[0] = *(v2 + 804);
            vDSP_vrampmul(v36, 1, __Start, (v2 + 800), v37, 1, v16);
            if (v68 == 1718773105)
            {
              __Start[0] = *(v2 + 804);
              vDSP_vrampmul(&v36[v16], 1, __Start, (v2 + 800), &v37[v16], 1, v16);
            }

            v34 += 2;
            v35 += 2;
            --v12;
          }

          while (v12);
        }
      }

      else if (v12)
      {
        v29 = fabsf((v28 - v17) / v26);
        v66 = a2 - v29;
        v67 = v2;
        v30 = (v11 + 16);
        v31 = (v8 + 4);
        do
        {
          v32 = *v31;
          v33 = *v30;
          __Start[0] = *(v2 + 804);
          vDSP_vrampmul(v32, 1, __Start, (v2 + 800), v33, 1, v29);
          MEMORY[0x193AE08B0](&v32[v29], 1, v18, &v33[v29], 1, v66);
          if (v68 == 1718773105)
          {
            __Start[0] = *(v67 + 804);
            vDSP_vrampmul(&v32[v16], 1, __Start, (v67 + 800), &v33[v16], 1, v29);
            MEMORY[0x193AE08B0](&v32[v29 + v16], 1, v18, &v33[v29 + v16], 1, v66);
          }

          v30 += 2;
          v31 += 2;
          --v12;
          v2 = v67;
        }

        while (v12);
        v27 = *v18;
      }

      else
      {
        v27 = v28;
      }

      *(v2 + 804) = v27;
    }
  }

  if (*(v2 + 813) == 1)
  {
    v38 = 16 * (*(v2 + 808) == 0.0);
  }

  else
  {
    v38 = 0;
  }

  v39 = *(v2 + 64);
  if (*(v2 + 72) == v39)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "in");
    v63 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v63 = *v63;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v62, v63, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v40 = (*(*v39 + 40))(v39);
  v41 = *(v2 + 64);
  if (*(v2 + 72) == v41)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "in");
    v65 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v65 = *v65;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v64, v65, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v42 = *(*(v40 + 56) + 72);
  result = (*(*v41 + 40))(v41);
  v44 = *(v2 + 88);
  v45 = *(v2 + 96);
  if (v44 != v45)
  {
    v46 = v42 | v38;
    v47 = *(result + 56);
    result = *(v2 + 88);
    v48 = result;
    do
    {
      v49 = *v48;
      v48 += 4;
      v50 = *((*(v49 + 40))(result) + 56);
      v51 = *(v47 + 56);
      v52 = *(v47 + 40);
      v53 = *(v47 + 24);
      *(v50 + 8) = *(v47 + 8);
      *(v50 + 24) = v53;
      *(v50 + 40) = v52;
      *(v50 + 56) = v51;
      *(v50 + 72) = v46;
      v44 += 4;
      result = v48;
    }

    while (v48 != v45);
  }

  if (*(v2 + 804) == *(v2 + 808))
  {
    *(v2 + 813) = 1;
  }

  return result;
}

void sub_18F873BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GenericGainBox<DSPGraph::DecibelGainPolicy>::setProperty(double *a1, int a2, int a3, unsigned int a4, int a5, double *a6)
{
  if (a2 != 3098)
  {
    return DSPGraph::Box::setProperty(a1, a2, a3, a4, a5, a6);
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
  a1[98] = *a6;
  v9 = a1[99];
  v6 = 0;
  if (v8 < v9)
  {
    a1[98] = v9;
  }

  return v6;
}

double DSPGraph::GenericGainBox<DSPGraph::DecibelGainPolicy>::getProperty(DSPGraph::Box *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, CFStringRef *a6)
{
  if (a2 == 3098)
  {
    if (*a5 == 8 && a6 && !a3)
    {
      result = *(this + 98);
      *a6 = result;
    }
  }

  else
  {
    DSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6);
  }

  return result;
}

unint64_t DSPGraph::GenericGainBox<DSPGraph::DecibelGainPolicy>::getPropertyInfo(DSPGraph::Box *a1, int a2, int a3)
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
    PropertyInfo = DSPGraph::Box::getPropertyInfo(a1, a2, a3);
    v4 = PropertyInfo & 0xFFFFFFFF00000000;
    v3 = PropertyInfo;
  }

  return v4 | v3;
}

double DSPGraph::GenericGainBox<DSPGraph::DecibelGainPolicy>::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.64150051e175;
  *a1 = xmmword_18F901A60;
  *(a1 + 16) = 0;
  return result;
}

size_t DSPGraph::GenericGainBox<DSPGraph::DecibelGainPolicy>::getParameterInfo@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (a2 == 1)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      DWORD2(v15) = 1065353216;
      LODWORD(v15) = 2;
      result = strlcpy(&v10, "mute", 0x34uLL);
      *(&v14 + 1) = @"mute";
      LODWORD(v16) = v16 | 0xC8000000;
      v6 = v11;
      *a3 = v10;
      *(a3 + 16) = v6;
      v7 = v13;
      *(a3 + 32) = v12;
      *(a3 + 48) = v7;
      v8 = v15;
      *(a3 + 64) = v14;
      *(a3 + 80) = v8;
      *(a3 + 96) = v16;
    }

    else
    {
      if (a2)
      {
        v4 = -10878;
        goto LABEL_3;
      }

      result = DSPGraph::DecibelGainPolicy::getGainParameterInfo(a3);
    }

    *(a3 + 104) = 1;
    goto LABEL_9;
  }

  v4 = -10866;
LABEL_3:
  *a3 = v4;
  *(a3 + 104) = 0;
LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F873E80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t DSPGraph::GenericGainBox<DSPGraph::DecibelGainPolicy>::getParameterList@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v4 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v4, &v5, 2uLL);
    v3 = *MEMORY[0x1E69E9840];
  }

  return result;
}

float DSPGraph::GenericGainBox<DSPGraph::DecibelGainPolicy>::getParameter(uint64_t a1, int a2, int a3)
{
  if (a3 | a2)
  {
    if (a2 != 1 || a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v6, "getParameter");
      std::string::basic_string[abi:ne200100]<0>(&v5, "");
      DSPGraph::ThrowException(-10878, &v7, 2753, &v6, &v5);
    }

    result = 0.0;
    if (*(a1 + 780))
    {
      return 1.0;
    }
  }

  else
  {
    v4 = *(a1 + 776);
    if (v4 < 1.0e-10)
    {
      v4 = 1.0e-10;
    }

    return log10f(v4) * 20.0;
  }

  return result;
}

void sub_18F873FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

float DSPGraph::GenericGainBox<DSPGraph::DecibelGainPolicy>::setParameter(uint64_t a1, int a2, int a3, float result)
{
  if (a3 | a2)
  {
    if (a2 != 1 || a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v7, "setParameter");
      std::string::basic_string[abi:ne200100]<0>(&v6, "");
      DSPGraph::ThrowException(-10878, &v8, 2732, &v7, &v6);
    }

    *(a1 + 780) = result != 0.0;
  }

  else
  {
    result = __exp10f(result / 20.0);
    *(a1 + 776) = result;
  }

  if (*(*(a1 + 8) + 762) != 1 || *(a1 + 812) == 1)
  {
    v5 = 1.0;
    if (*(a1 + 780))
    {
      v5 = 0.0;
    }

    result = *(a1 + 776) * v5;
    *(a1 + 804) = result;
    *(a1 + 808) = result;
  }

  return result;
}

void sub_18F874104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::DBGainBox::~DBGainBox(DSPGraph::DBGainBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void sub_18F874300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = AUHostingService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18F8749D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  os_unfair_lock_unlock(&AUHostingService_exit_handler(void)::handler);
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(a1);
}

void initKfilter(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t FLACAudioStream::HandleDiscontinuity(FLACAudioStream *this)
{
  *(this + 59) = 0;
  *(this + 500) = 0;
  *(this + 126) = 0;
  FLACAudioStream::Resync(this);
  return 0;
}

BOOL FLACAudioStream::Resync(FLACAudioStream *this)
{
  v2 = 0;
  v3 = *(this + 1);
  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  v6 = v4 + *(v3 + 80);
  v7 = v5 < v4 || v6 <= v5;
  v8 = v7;
  v9 = v6 - v5;
  if (!v7 && v9)
  {
    v2 = *(v3 + 72) + (v5 - v4);
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  *(this + 122) = 0;
  if (v10 > 1)
  {
    if (v10 < 2)
    {
LABEL_30:
      v11 = 0;
      goto LABEL_31;
    }

    v13 = 0;
    v14 = v2 + 1;
    v15 = 1;
    while (1)
    {
      v16 = (v2 + v13);
      if ((*(v2 + v13 + 1) & 0xFC | (*(v2 + v13) << 8)) == 0xFFF8)
      {
        v30[0] = v2 + v13;
        v30[1] = v2 + v13;
        v17 = &v16[(v10 - v13)];
        v30[2] = v17;
        v31 = 0;
        if ((v16 & 3) != 0)
        {
          v18 = 0;
          v19 = -8;
          v20 = v14;
          do
          {
            v21 = v19;
            if (v16 >= v17)
            {
              v22 = 255;
            }

            else
            {
              v22 = *v16;
            }

            v18 = v22 | (v18 << 8);
            ++v16;
            v19 = v21 + 8;
          }

          while ((v20++ & 3) != 0);
          v30[0] = v16;
          LODWORD(v31) = v18 << (16 - v21);
          HIDWORD(v31) = v21 + 16;
        }

        v29 = 0;
        v24 = FLACAudioStream::ParseFLACFrameHeader(this, v30, &v27, v28, &v29);
        if (!v24)
        {
          v11 = 1;
          goto LABEL_31;
        }

        if (v24 == -11)
        {
          v11 = 0;
          v12 = v29 + v10;
          goto LABEL_15;
        }
      }

      ++v15;
      ++v13;
      ++v14;
      if (v15 == v10)
      {
        goto LABEL_30;
      }
    }
  }

  v11 = 0;
  v12 = 2;
LABEL_15:
  *(this + 122) = v12;
LABEL_31:
  v25 = *(this + 122);
  result = v25 == 0;
  if ((v11 & 1) == 0 && !v25)
  {
    result = 0;
    *(*(this + 1) + 96) = *(*(this + 1) + 88) + *(*(this + 1) + 80);
  }

  return result;
}

uint64_t FLACAudioStream::ParseFLACFrameHeader(uint64_t a1, uint64_t a2, unsigned int *a3, double *a4, int *a5)
{
  *a3 = 0;
  bzero(a4, 0x28uLL);
  *a5 = 0;
  v10 = *(a2 + 16);
  v11 = *a2;
  v12 = v10 - *a2;
  v13 = *(a2 + 28);
  v14 = (v13 + 8 * v12) >> 3;
  if (v14 <= 5)
  {
    v15 = 6 - v14;
LABEL_3:
    *a5 = v15;
    return 4294967285;
  }

  v17 = *(a2 + 24);
  v18 = HIWORD(v17);
  v19 = v13 - 16;
  *(a2 + 28) = v13 - 16;
  if (v13 - 16 < 0)
  {
    v21 = *(a2 + 8);
    if ((v12 & ~(v12 >> 63) & 0xFFFFFFFC) == 0 || v21 > v11)
    {
      v23 = 4;
      v24 = v11;
      do
      {
        v25 = v17 << 8;
        *(a2 + 24) = v25;
        v26 = 255;
        if (v24 < v10 && v24 >= v21)
        {
          v26 = *v24;
        }

        v17 = v26 | v25;
        *(a2 + 24) = v17;
        v24 = (v24 + 1);
        --v23;
      }

      while (v23);
    }

    else
    {
      v17 = bswap32(*v11);
    }

    v27 = v17 << (16 - v13);
    v28 = v13 + 16;
    *(a2 + 28) = v28;
    *a2 = ++v11;
    v18 |= v17 >> v28;
    if (v28)
    {
      v20 = v27;
    }

    else
    {
      v20 = 0;
    }

    if (v28)
    {
      v19 = v28;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = v17 << 16;
  }

  *(a2 + 24) = v20;
  if ((v18 & 0xFFFE) != 0xFFF8)
  {
    return 4294967284;
  }

  v29 = *(a1 + 364);
  if (v18)
  {
    if (v29)
    {
      return 4294967284;
    }
  }

  else if (!v29)
  {
    return 4294967284;
  }

  v30 = HIWORD(v20);
  v31 = v19 - 16;
  *(a2 + 28) = v19 - 16;
  if (v19 - 16 < 0)
  {
    v33 = *(a2 + 8);
    if (((v10 - v11) & ~((v10 - v11) >> 63) & 0xFFFFFFFC) != 0 && v33 <= v11)
    {
      v20 = bswap32(*v11);
    }

    else
    {
      v34 = 4;
      v35 = v11;
      do
      {
        v36 = v20 << 8;
        *(a2 + 24) = v36;
        v37 = 255;
        if (v35 < v10 && v35 >= v33)
        {
          v37 = *v35;
        }

        v20 = v37 | v36;
        *(a2 + 24) = v20;
        v35 = (v35 + 1);
        --v34;
      }

      while (v34);
    }

    v39 = v19 + 16;
    v38 = v19 == -16;
    *(a2 + 28) = v19 + 16;
    *a2 = ++v11;
    v30 |= v20 >> (v19 + 16);
    if (v19 == -16)
    {
      v32 = 0;
    }

    else
    {
      v32 = v20 << (16 - v19);
    }

    if (v38)
    {
      v31 = 0;
    }

    else
    {
      v31 = v39;
    }
  }

  else
  {
    v32 = v20 << 16;
  }

  *(a2 + 24) = v32;
  result = 4294967284;
  if ((v30 & 1) == 0 && (v30 & 6) != 6)
  {
    v40 = v30 >> 4;
    if (v40 != 15)
    {
      v41 = v30 >> 12;
      if (v30 >> 12)
      {
        v42 = (v30 >> 8) & 0xF;
        v43 = v42 - 15;
        if (v42 != 15)
        {
          v44 = HIBYTE(v32);
          *(a2 + 28) = v31 - 8;
          if ((v31 - 8) < 0)
          {
            v46 = *(a2 + 8);
            if (((v10 - v11) & ~((v10 - v11) >> 63) & 0xFFFFFFFC) != 0 && v46 <= v11)
            {
              v32 = bswap32(*v11);
            }

            else
            {
              v47 = 4;
              v48 = v11;
              do
              {
                v49 = v32 << 8;
                *(a2 + 24) = v49;
                v50 = 255;
                if (v48 < v10 && v48 >= v46)
                {
                  v50 = *v48;
                }

                v32 = v49 | v50;
                *(a2 + 24) = v32;
                v48 = (v48 + 1);
                --v47;
              }

              while (v47);
            }

            ++v11;
            v44 |= v32 >> (v31 + 24);
            if (v31 == -24)
            {
              v45 = 0;
              *(a2 + 24) = 0;
              v31 = 8;
            }

            else
            {
              v45 = v32 << (8 - v31);
              *(a2 + 24) = v45;
              v31 += 32;
            }
          }

          else
          {
            v45 = v32 << 8;
            *(a2 + 24) = v45;
          }

          v51 = (v11 - ((v31 >> 3) & 0x1FFFFFFC));
          *a2 = v51;
          v52 = v31 & 0x1F;
          *(a2 + 28) = v52;
          if ((v31 & 0x1F) != 0)
          {
            v53 = v51 - 1;
            v54 = *(a2 + 8);
            if (((v10 - (v51 - 4)) & ~((v10 - (v51 - 1)) >> 63) & 0xFFFFFFFC) == 0 || v54 > v53)
            {
              v56 = 4;
              do
              {
                v57 = v45 << 8;
                *(a2 + 24) = v57;
                v58 = 255;
                if (v53 < v10 && v53 >= v54)
                {
                  v58 = *v53;
                }

                v45 = v58 | v57;
                *(a2 + 24) = v45;
                v53 = (v53 + 1);
                --v56;
              }

              while (v56);
            }

            else
            {
              v45 = bswap32(*v53);
            }

            v59 = v45 << -v52;
          }

          else
          {
            v59 = 0;
          }

          *(a2 + 24) = v59;
          if (v44 >= 0x80)
          {
            if ((v44 & 0xFFFFFFE0) == 0xC0)
            {
              v60 = 0;
              v61 = 2;
            }

            else if ((v44 & 0xFFFFFFF0) == 0xE0)
            {
              v60 = 0;
              v61 = 3;
            }

            else
            {
              if ((v44 & 0xFFFFFFF8) == 0xF0)
              {
                v61 = 4;
              }

              else if ((v44 & 0xFFFFFFFC) == 0xF8)
              {
                v61 = 5;
              }

              else if ((v44 & 0xFFFFFFFE) == 0xFC)
              {
                v61 = 6;
              }

              else
              {
                result = 4294967284;
                if ((v18 & 1) == 0 || v44 != 254)
                {
                  return result;
                }

                v61 = 7;
              }

              v60 = 1;
            }
          }

          else
          {
            v60 = 0;
            v61 = 1;
          }

          v62 = v14 - 4 - v61;
          if (v14 - 4 < v61)
          {
            v15 = v61 - (v14 - 4);
            goto LABEL_3;
          }

          if (!v60)
          {
            goto LABEL_111;
          }

          v63 = *(a2 + 8);
          v64 = 32 - v52;
          v65 = v31 | 0xFFFFFFE0;
          do
          {
            *(a2 + 24) = 0;
            if (v52)
            {
              *(a2 + 28) = v65;
              if (((v10 - v51) & ~((v10 - v51) >> 63) & 0xFFFFFFFC) == 0 || v63 > v51)
              {
                v71 = 0;
                v67 = 4;
                v68 = v51;
                do
                {
                  v69 = v71 << 8;
                  *(a2 + 24) = v69;
                  v70 = 255;
                  if (v68 < v10 && v68 >= v63)
                  {
                    v70 = *v68;
                  }

                  v71 = v70 | v69;
                  *(a2 + 24) = v71;
                  v68 = (v68 + 1);
                  --v67;
                }

                while (v67);
              }

              else
              {
                v71 = bswap32(*v51);
              }

              *a2 = ++v51;
              v59 = v71 << v64;
              *(a2 + 24) = v71 << v64;
              *(a2 + 28) = v52;
            }

            else
            {
              v59 = 0;
              *a2 = ++v51;
            }

            v61 -= 4;
          }

          while (v61 > 3);
          if (v61)
          {
LABEL_111:
            v72 = 8 * v61;
            v73 = v72 - v52;
            if (v72 > v52)
            {
              *(a2 + 24) = 0;
              v59 = 0;
              v52 = 0;
              if (v73 >= 0x20)
              {
                v51 = (v51 + ((v73 >> 3) & 0x1FFFFFFC));
                *a2 = v51;
                v72 = v73 & 0x1F;
              }

              else
              {
                v72 = v73;
              }
            }

            if (v72 - 33 >= 0xFFFFFFE0)
            {
              v52 -= v72;
              *(a2 + 28) = v52;
              if (v52 < 0)
              {
                v74 = *(a2 + 8);
                if (((v10 - v51) & ~((v10 - v51) >> 63) & 0xFFFFFFFC) != 0 && v74 <= v51)
                {
                  v59 = bswap32(*v51);
                }

                else
                {
                  v75 = 4;
                  v76 = v51;
                  do
                  {
                    v77 = v59 << 8;
                    *(a2 + 24) = v77;
                    v78 = 255;
                    if (v76 < v10 && v76 >= v74)
                    {
                      v78 = *v76;
                    }

                    v59 = v78 | v77;
                    *(a2 + 24) = v59;
                    v76 = (v76 + 1);
                    --v75;
                  }

                  while (v75);
                }

                v79 = v59 << -v52;
                v52 += 32;
                *(a2 + 28) = v52;
                *a2 = ++v51;
                if (v52)
                {
                  v59 = v79;
                }

                else
                {
                  v52 = 0;
                  v59 = 0;
                }
              }

              else
              {
                v59 <<= v72;
              }

              *(a2 + 24) = v59;
            }
          }

          if (v41 == 7)
          {
            if (v62 <= 2)
            {
              goto LABEL_158;
            }

            v80 = HIWORD(v59);
            v52 -= 16;
            *(a2 + 28) = v52;
            if (v52 >= 0)
            {
              v59 <<= 16;
              v81 = -2;
              goto LABEL_148;
            }

            v139 = v42 - 15;
            v141 = (v30 >> 8) & 0xF;
            v143 = v30 >> 4;
            AT::TBitstreamReader<unsigned int>::FillCacheFrom(a2, v51);
            v51 = (*a2 + 4);
            *a2 = v51;
            v86 = *(a2 + 24);
            v85 = *(a2 + 28);
            v80 |= v86 >> v85;
            v52 = v85 + 32;
            *(a2 + 28) = v85 + 32;
            if (v85 == -32)
            {
              v59 = 0;
            }

            else
            {
              v59 = v86 << -v85;
            }

            v81 = -2;
          }

          else
          {
            if (v41 != 6)
            {
              v82 = 0;
              goto LABEL_149;
            }

            if (v62 <= 1)
            {
LABEL_153:
              v88 = 2;
LABEL_159:
              v15 = v88 - v62;
              goto LABEL_3;
            }

            v80 = HIBYTE(v59);
            v52 -= 8;
            *(a2 + 28) = v52;
            if (v52 >= 0)
            {
              v59 <<= 8;
              v81 = -1;
LABEL_148:
              *(a2 + 24) = v59;
              v82 = v80 + 1;
              v62 += v81;
LABEL_149:
              switch(v42)
              {
                case 14:
                  v87 = v62 - 2;
                  if (v62 > 2)
                  {
                    v140 = v43;
                    v142 = 14;
                    v144 = v40;
                    v91 = HIWORD(v59);
                    *(a2 + 28) = v52 - 16;
                    if (v52 - 16 < 0)
                    {
                      v100 = v82;
                      AT::TBitstreamReader<unsigned int>::FillCacheFrom(a2, v51);
                      *a2 += 4;
                      v102 = *(a2 + 24);
                      v101 = *(a2 + 28);
                      v91 |= v102 >> v101;
                      *(a2 + 28) = v101 + 32;
                      if (v101 == -32)
                      {
                        v92 = 0;
                      }

                      else
                      {
                        v92 = v102 << -v101;
                      }

                      v82 = v100;
                    }

                    else
                    {
                      v92 = v59 << 16;
                    }

                    v138 = v82;
                    *(a2 + 24) = v92;
                    v89 = 10 * v91;
                    goto LABEL_182;
                  }

                  break;
                case 13:
                  v87 = v62 - 2;
                  if (v62 > 2)
                  {
                    v140 = v43;
                    v142 = 13;
                    v144 = v40;
                    v89 = HIWORD(v59);
                    *(a2 + 28) = v52 - 16;
                    if (v52 - 16 < 0)
                    {
                      v95 = HIWORD(v59);
                      v96 = v82;
                      AT::TBitstreamReader<unsigned int>::FillCacheFrom(a2, v51);
                      *a2 += 4;
                      v98 = *(a2 + 24);
                      v97 = *(a2 + 28);
                      v99 = (v98 >> v97) | v95;
                      *(a2 + 28) = v97 + 32;
                      if (v97 == -32)
                      {
                        v90 = 0;
                      }

                      else
                      {
                        v90 = v98 << -v97;
                      }

                      v82 = v96;
                      v89 = v99;
                    }

                    else
                    {
                      v90 = v59 << 16;
                    }

                    v138 = v82;
                    *(a2 + 24) = v90;
                    goto LABEL_182;
                  }

                  break;
                case 12:
                  v87 = v62 - 1;
                  if (v62 <= 1)
                  {
                    goto LABEL_153;
                  }

                  v140 = v43;
                  v142 = 12;
                  v144 = v40;
                  v93 = HIBYTE(v59);
                  *(a2 + 28) = v52 - 8;
                  if (v52 - 8 < 0)
                  {
                    v103 = v82;
                    AT::TBitstreamReader<unsigned int>::FillCacheFrom(a2, v51);
                    *a2 += 4;
                    v105 = *(a2 + 24);
                    v104 = *(a2 + 28);
                    v93 |= v105 >> v104;
                    *(a2 + 28) = v104 + 32;
                    if (v104 == -32)
                    {
                      v94 = 0;
                    }

                    else
                    {
                      v94 = v105 << -v104;
                    }

                    v82 = v103;
                  }

                  else
                  {
                    v94 = v59 << 8;
                  }

                  v138 = v82;
                  *(a2 + 24) = v94;
                  v89 = 1000 * v93;
LABEL_182:
                  v62 = v87;
LABEL_183:
                  v106 = v14 - v62;
                  *a3 = v106;
                  AT::TBitstreamReader<unsigned int>::PutBack(a2, 8 * v106);
                  v107 = *(a2 + 28);
                  v108 = 0;
                  if (v106)
                  {
                    v109 = *(a2 + 24);
                    v111 = *(a2 + 8);
                    v110 = *(a2 + 16);
                    v112 = *a2;
                    v113 = v144;
                    v115 = v140;
                    v114 = v142;
                    do
                    {
                      v116 = HIBYTE(v109);
                      *(a2 + 28) = v107 - 8;
                      if (v107 - 8 < 0)
                      {
                        if (((v110 - v112) & ~((v110 - v112) >> 63) & 0xFFFFFFFC) == 0 || v111 > v112)
                        {
                          v118 = 4;
                          v119 = v112;
                          do
                          {
                            v120 = v109 << 8;
                            *(a2 + 24) = v120;
                            v121 = 255;
                            if (v119 < v110 && v119 >= v111)
                            {
                              v121 = *v119;
                            }

                            v109 = v121 | v120;
                            *(a2 + 24) = v109;
                            v119 = (v119 + 1);
                            --v118;
                          }

                          while (v118);
                        }

                        else
                        {
                          v109 = bswap32(*v112);
                        }

                        v122 = v109 << (8 - v107);
                        v107 += 24;
                        *(a2 + 28) = v107;
                        *a2 = ++v112;
                        v116 |= v109 >> v107;
                        if (v107)
                        {
                          v109 = v122;
                        }

                        else
                        {
                          v109 = 0;
                        }

                        if (!v107)
                        {
                          v107 = 0;
                        }
                      }

                      else
                      {
                        v109 <<= 8;
                        v107 -= 8;
                      }

                      *(a2 + 24) = v109;
                      v108 = FLAC_crc8[v116 ^ v108];
                      --v106;
                    }

                    while (v106);
                  }

                  else
                  {
                    v109 = *(a2 + 24);
                    v113 = v144;
                    v115 = v140;
                    v114 = v142;
                  }

                  v123 = HIBYTE(v109);
                  v124 = v107 - 8;
                  *(a2 + 28) = v124;
                  if (v124 < 0)
                  {
                    v145 = v89;
                    v126 = v115;
                    v127 = v114;
                    v128 = v113;
                    AT::TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                    *a2 += 4;
                    v130 = *(a2 + 24);
                    v129 = *(a2 + 28);
                    v123 |= v130 >> v129;
                    *(a2 + 28) = v129 + 32;
                    if (v129 == -32)
                    {
                      v125 = 0;
                    }

                    else
                    {
                      v125 = v130 << -v129;
                    }

                    v113 = v128;
                    v114 = v127;
                    v115 = v126;
                    v89 = v145;
                  }

                  else
                  {
                    v125 = v109 << 8;
                  }

                  *(a2 + 24) = v125;
                  if (v123 != v108)
                  {
                    return 4294967284;
                  }

                  if (v115 > 0xFFFFFFFC)
                  {
                    v131 = v89;
                  }

                  else
                  {
                    if (!v114)
                    {
                      return 4294967284;
                    }

                    v131 = kFLACSampleRates[v114];
                  }

                  *a4 = v131;
                  if (v131 == *(a1 + 344))
                  {
                    v132 = (v30 >> 1) & 7;
                    *(a4 + 2) = 1718378851;
                    if (v132)
                    {
                      v133 = kFLACBitDepths[v132];
                      if (v133 == *(a1 + 328))
                      {
                        if ((0x89uLL >> v132))
                        {
LABEL_225:
                          v136 = v138;
                          if ((v41 - 8) <= 0xFFFFFFFD)
                          {
                            v136 = kFLACBlockSizes[v30 >> 12];
                          }

                          *(a4 + 5) = v136;
                          result = 4294967284;
                          if (v113 <= 0xA)
                          {
                            v137 = LOWORD(kFLACChannelConfigToLayoutTag[v113]);
                            *(a4 + 7) = v137;
                            if (v137 == *(a1 + 372))
                            {
                              return 0;
                            }

                            else
                            {
                              return 4294967284;
                            }
                          }

                          return result;
                        }

                        HIDWORD(v135) = v133 - 16;
                        LODWORD(v135) = v133 - 16;
                        v134 = v135 >> 2;
                        if (v134 <= 4 && ((0x17u >> v134) & 1) != 0)
                        {
                          *(a4 + 3) = dword_18F917E58[v134];
                          goto LABEL_225;
                        }
                      }
                    }
                  }

                  return 4294967284;
                default:
                  if (!v62)
                  {
                    v15 = 1;
                    goto LABEL_3;
                  }

                  v138 = v82;
                  v140 = v43;
                  v142 = v42;
                  v144 = v40;
                  v89 = 0;
                  goto LABEL_183;
              }

LABEL_158:
              v88 = 3;
              goto LABEL_159;
            }

            v139 = v42 - 15;
            v141 = (v30 >> 8) & 0xF;
            v143 = v30 >> 4;
            AT::TBitstreamReader<unsigned int>::FillCacheFrom(a2, v51);
            v51 = (*a2 + 4);
            *a2 = v51;
            v84 = *(a2 + 24);
            v83 = *(a2 + 28);
            v80 |= v84 >> v83;
            v52 = v83 + 32;
            *(a2 + 28) = v83 + 32;
            if (v83 == -32)
            {
              v59 = 0;
            }

            else
            {
              v59 = v84 << -v83;
            }

            v81 = -1;
          }

          v40 = v143;
          v43 = v139;
          v42 = v141;
          goto LABEL_148;
        }
      }
    }
  }

  return result;
}

uint64_t AT::TBitstreamReader<unsigned int>::PutBack(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 28) + a2;
    v3 = *result - ((v2 >> 3) & 0x1FFFFFFC);
    *result = v3;
    v4 = v2 & 0x1F;
    *(result + 28) = v4;
    if (v4)
    {
      v5 = (v3 - 4);
      v7 = *(result + 8);
      v6 = *(result + 16);
      if (((v6 - v5) & ~((v6 - v5) >> 63) & 0xFFFFFFFC) == 0 || v7 > v5)
      {
        v12 = *(result + 24);
        v9 = 4;
        do
        {
          v10 = v12 << 8;
          *(result + 24) = v10;
          v11 = 255;
          if (v5 < v6 && v5 >= v7)
          {
            v11 = *v5;
          }

          v12 = v11 | v10;
          *(result + 24) = v12;
          v5 = (v5 + 1);
          --v9;
        }

        while (v9);
      }

      else
      {
        v12 = bswap32(*v5);
      }

      *(result + 24) = v12 << -v4;
    }

    else
    {
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t FLACAudioStream::GeneratePackets(uint64_t a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 236);
  v3 = -1;
  if (v2 > 553)
  {
    if (v2 == 562)
    {
      v4 = *(a1 + 8);
      v5 = *(v4 + 120);
      goto LABEL_26;
    }

    if (v2 != 554)
    {
LABEL_123:
      *(a1 + 236) = v3;
      goto LABEL_124;
    }

    while (1)
    {
      while (1)
      {
LABEL_9:
        v4 = *(a1 + 8);
        v6 = *(v4 + 88);
        v7 = *(v4 + 96);
        v8 = v6 + *(v4 + 80);
        v3 = 554;
        if (v7 < v6 || v8 <= v7)
        {
          goto LABEL_123;
        }

        v5 = v8 - v7;
        if (v8 == v7)
        {
          goto LABEL_123;
        }

        v10 = *(a1 + 488);
        if (v10)
        {
          *(a1 + 256) = v10;
          if (v10 > v5)
          {
            *(a1 + 272) = v7;
            v11 = *(v4 + 128);
            v12 = *(v4 + 72);
            if (v12 == v11)
            {
              if (v5)
              {
                v13 = &v12[(v7 - v6)];
              }

              else
              {
                v13 = 0;
              }

              memmove(v11, v13, v5);
              v14 = *(a1 + 488);
              v4 = *(a1 + 8);
              if (*(v4 + 124) < v14)
              {
                *(v4 + 124) = v14;
                CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v4 + 128), v14);
                v4 = *(a1 + 8);
              }

              *(v4 + 120) = v5;
              *(v4 + 96) = *(v4 + 88) + *(v4 + 80);
            }

            else
            {
              if (*(v4 + 124) < v10)
              {
                *(v4 + 124) = v10;
                CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v4 + 128), v10);
                v4 = *(a1 + 8);
              }

              v5 = 0;
              *(v4 + 120) = 0;
            }

LABEL_26:
            v15 = *(a1 + 256) - v5;
            v16 = *(v4 + 88);
            v17 = *(v4 + 96);
            v18 = v16 + *(v4 + 80);
            if (v18 <= v17 || v17 < v16)
            {
              v20 = 0;
            }

            else
            {
              v20 = v18 - v17;
            }

            if (v15 <= v20)
            {
              v15 = v20;
            }

            LODWORD(v72[0]) = v15;
            v21 = v15 + v5;
            if (*(v4 + 124) < v21)
            {
              *(v4 + 124) = v21;
              CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v4 + 128), v21);
              v4 = *(a1 + 8);
            }

            StreamBuffer::Copy((v4 + 72), v72, (*(v4 + 128) + *(v4 + 120)));
            v4 = *(a1 + 8);
            v22 = *(v4 + 120) + LODWORD(v72[0]);
            *(v4 + 120) = v22;
            if (v22 < *(a1 + 256))
            {
              v3 = 562;
              goto LABEL_123;
            }

            v23 = *(a1 + 272);
            v24 = *(v4 + 128);
            *(v4 + 88) = v23;
            *(v4 + 96) = v23;
            *(v4 + 72) = v24;
            *(v4 + 80) = v22;
          }

          *(a1 + 488) = 0;
        }

        if (*(a1 + 500) != 1)
        {
          goto LABEL_80;
        }

        v25 = 0;
        v26 = *(v4 + 88);
        v27 = *(v4 + 96);
        v28 = v26 + *(v4 + 80);
        v29 = v27 < v26 || v28 <= v27;
        v30 = v29;
        v31 = v28 - v27;
        if (!v29 && v31)
        {
          v25 = (*(v4 + 72) + (v27 - v26));
        }

        v32 = v30 ? 0 : v31;
        if ((*v25 & 0xFC) == 0xF8)
        {
          break;
        }

LABEL_79:
        *(a1 + 500) = 0;
LABEL_80:
        v51 = 0;
        v52 = *(v4 + 88);
        v53 = *(v4 + 96);
        v54 = v52 + *(v4 + 80);
        v55 = v53 < v52 || v54 <= v53;
        v56 = v55;
        v57 = v54 - v53;
        if (!v55 && v57)
        {
          v51 = (*(v4 + 72) + (v53 - v52));
        }

        if (v56)
        {
          v58 = 0;
        }

        else
        {
          v58 = v57;
        }

        if (v58 > 1)
        {
          v59 = 0;
          while (1)
          {
            v60 = &v51[v59];
            if ((v60[1] & 0xFC | (*v60 << 8)) == 0xFFF8)
            {
              if (v59 + 6 > v58)
              {
                *(a1 + 488) = v59 + 6;
                goto LABEL_114;
              }

              v74 = &v51[v59];
              v75 = v74;
              v61 = &v60[(v58 - v59)];
              v76 = v61;
              v77 = 0;
              if ((v60 & 3) != 0)
              {
                v62 = 0;
                v63 = &v51[v59 + 1];
                v64 = -8;
                do
                {
                  v65 = v62 << 8;
                  LODWORD(v77) = v65;
                  HIDWORD(v77) = v64 + 16;
                  if (v60 >= v61)
                  {
                    v66 = 255;
                  }

                  else
                  {
                    v66 = *v60;
                  }

                  v62 = v66 | v65;
                  LODWORD(v77) = v62;
                  v74 = ++v60;
                  v64 += 8;
                  v49 = (v63++ & 3) == 0;
                }

                while (!v49);
                LODWORD(v77) = v62 << (24 - v64);
              }

              __src[0] = 0;
              v73 = 0;
              v67 = FLACAudioStream::ParseFLACFrameHeader(a1, &v74, __src, v72, &v73);
              if (!v67)
              {
                std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](1uLL);
              }

              if (v67 == -11)
              {
                break;
              }
            }

            if (++v59 + 1 >= v58)
            {
              goto LABEL_114;
            }
          }

          *(a1 + 488) = v73 + v58;
LABEL_114:
          if (!*(a1 + 488))
          {
            v68 = *(a1 + 504);
            if (v68 && v68 + v58 <= (*(a1 + 496) + 1))
            {
              memcpy((*(a1 + 288) + v68), v51, v58);
              *(a1 + 504) += v58;
            }

            else
            {
              *(a1 + 504) = 0;
            }

            if (v51[(v58 - 1)] == 255)
            {
              *(a1 + 500) = 1;
            }

            *(*(a1 + 8) + 96) = *(*(a1 + 8) + 88) + *(*(a1 + 8) + 80);
          }
        }

        else
        {
          v50 = 2;
LABEL_94:
          *(a1 + 488) = v50;
        }
      }

      v33 = __src;
      bzero(__src, 0x10uLL);
      LOBYTE(__src[0]) = -1;
      if (v32 >= 0xF)
      {
        v34 = 15;
      }

      else
      {
        v34 = v32;
      }

      memcpy(__src + 1, v25, v34);
      v35 = (v34 + 1);
      v74 = __src;
      v75 = __src;
      v76 = __src + v35;
      v77 = 0;
      if ((__src & 3) != 0)
      {
        v36 = 0;
        v37 = (__src ^ 3) & 3;
        v38 = __src + v37;
        v39 = 8 * ((__src ^ 3) & 3);
        v40 = v37 + 1;
        do
        {
          if (v33 >= (__src + v35))
          {
            v41 = 255;
          }

          else
          {
            v41 = *v33;
          }

          v36 = v41 | (v36 << 8);
          v33 = (v33 + 1);
          --v40;
        }

        while (v40);
        v74 = (v38 + 1);
        LODWORD(v77) = v36 << (24 - v39);
        HIDWORD(v77) = v39 + 8;
      }

      v71 = 0;
      v42 = FLACAudioStream::ParseFLACFrameHeader(a1, &v74, &v73, v72, &v71);
      if (v42 == -11)
      {
        v50 = v71 + v32;
        goto LABEL_94;
      }

      if (v42)
      {
        v4 = *(a1 + 8);
        goto LABEL_79;
      }

      v43 = *(a1 + 504);
      if (v43)
      {
        if (!*(a1 + 200))
        {
          *(a1 + 200) = 1;
          CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((a1 + 192), 1);
          v43 = *(a1 + 504);
        }

        v44 = *(a1 + 192);
        v44->mStartOffset = 0;
        v44->mVariableFramesInPacket = 0;
        v44->mDataByteSize = v43 - 1;
        AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v43 - 1, 1u, *(a1 + 288), v44, 1);
        ++*(a1 + 184);
      }

      memcpy(*(a1 + 288), __src, (v34 + 1));
      *(a1 + 504) = v35;
      v4 = *(a1 + 8);
      v45 = *(v4 + 88);
      v46 = *(v4 + 96) + v34;
      *(v4 + 96) = v46;
      v47 = v45 + *(v4 + 80);
      v49 = v46 < v45 || v47 <= v46 || v47 - v46 == 0;
      if (!v49)
      {
        goto LABEL_79;
      }
    }
  }

  if (v2 != -1)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_123;
  }

LABEL_124:
  v69 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t FLACAudioStream::FlushPacketBuffer(uint64_t this)
{
  v1 = *(this + 504);
  if (v1)
  {
    v2 = this;
    if (!*(this + 200))
    {
      *(this + 200) = 1;
      CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((this + 192), 1);
      v1 = *(v2 + 504);
    }

    v3 = *(v2 + 192);
    v3->mStartOffset = 0;
    v3->mVariableFramesInPacket = 0;
    v3->mDataByteSize = v1;
    this = AudioFileStreamWrapper::CallPacketsProc(*(v2 + 8), v1, 1u, *(v2 + 288), v3, 1);
    ++*(v2 + 184);
    *(v2 + 504) = 0;
  }

  return this;
}

uint64_t FLACAudioStream::ParseHeader(FLACAudioStream *this, uint64_t a2)
{
  v4 = *(this + 59);
  if (v4 > 375)
  {
    if (v4 <= 409)
    {
      if (v4 <= 392)
      {
        switch(v4)
        {
          case 376:
            goto LABEL_417;
          case 383:
            v37 = *(this + 64);
            v38 = *(this + 33);
            goto LABEL_159;
          case 388:
            v11 = *(this + 64);
            v12 = *(this + 33);
            goto LABEL_162;
        }
      }

      else if (v4 > 401)
      {
        if (v4 == 402)
        {
          goto LABEL_464;
        }

        if (v4 == 406)
        {
          goto LABEL_482;
        }
      }

      else
      {
        if (v4 == 393)
        {
          goto LABEL_347;
        }

        if (v4 == 397)
        {
          v7 = *(this + 64);
          v8 = *(this + 33);
          goto LABEL_363;
        }
      }
    }

    else if (v4 > 455)
    {
      if (v4 > 534)
      {
        if (v4 == 535)
        {
          goto LABEL_287;
        }

        if (v4 == 541)
        {
          v21 = *(this + 1);
          LODWORD(v22) = *(v21 + 120);
          goto LABEL_333;
        }
      }

      else
      {
        if (v4 == 456)
        {
          goto LABEL_557;
        }

        if (v4 == 460)
        {
          goto LABEL_198;
        }
      }
    }

    else if (v4 > 433)
    {
      if (v4 == 434)
      {
        goto LABEL_537;
      }

      if (v4 == 439)
      {
        v17 = *(this + 64);
        v18 = *(this + 33);
        goto LABEL_516;
      }
    }

    else
    {
      if (v4 == 410)
      {
        v25 = *(this + 64);
        v26 = *(this + 33);
        goto LABEL_498;
      }

      if (v4 == 427)
      {
        goto LABEL_524;
      }
    }

    goto LABEL_71;
  }

  if (v4 <= 282)
  {
    if (v4 <= 176)
    {
      if (v4 == -1)
      {
        return 0;
      }

      if (v4)
      {
        if (v4 != 167)
        {
          goto LABEL_71;
        }

        v9 = *(this + 64);
        v10 = *(this + 33);
      }

      else
      {
        v9 = 4;
        *(this + 64) = 4;
        v10 = this + 332;
        *(this + 33) = this + 332;
      }

      LODWORD(result.location) = v9;
      StreamBuffer::Copy((*(this + 1) + 72), &result, v10);
      location = result.location;
      v32 = *(this + 64);
      *(this + 33) += LODWORD(result.location);
      v33 = v32 - location;
      *(this + 64) = v33;
      if (v33)
      {
        v39 = 0;
        v40 = 167;
        goto LABEL_73;
      }

      v34 = *(this + 83);
      *(this + 83) = bswap32(v34);
      if (v34 == 1130450022)
      {
        *(this + 37) += 4;
        v35 = *(this + 1);
        LODWORD(result.location) = 1;
        if ((*(v35 + 104) & 1) == 0)
        {
          *(v35 + 104) = 1;
          v36 = *(v35 + 24);
          if (v36)
          {
            v36(*(v35 + 40), *(v35 + 8), 1717988724, &result);
          }
        }

        goto LABEL_197;
      }

LABEL_190:
      v39 = 1685348671;
      *(this + 177) = 1;
      goto LABEL_72;
    }

    if (v4 <= 265)
    {
      if (v4 == 177)
      {
        v23 = *(this + 64);
        v24 = *(this + 33);
        goto LABEL_148;
      }

      if (v4 == 190)
      {
        v5 = *(this + 64);
        v6 = *(this + 33);
        goto LABEL_167;
      }

      goto LABEL_71;
    }

    if (v4 == 266)
    {
      goto LABEL_369;
    }

    if (v4 != 275)
    {
LABEL_71:
      v39 = 0;
LABEL_72:
      v40 = -1;
      goto LABEL_73;
    }

    v13 = *(this + 64);
    v14 = *(this + 33);
LABEL_74:
    LODWORD(result.location) = v13;
    StreamBuffer::Copy((*(this + 1) + 72), &result, v14);
    v41 = result.location;
    v42 = *(this + 64);
    *(this + 33) += LODWORD(result.location);
    v43 = v42 - v41;
    *(this + 64) = v43;
    if (v43)
    {
      v39 = 0;
      v40 = 275;
      goto LABEL_73;
    }

    v44 = *(this + 129);
    v45 = *(this + 128) + 4;
    *(this + 128) = v45;
    if (*(this + 127) - v45 <= v44)
    {
      goto LABEL_396;
    }

    Mutable = CFDataCreateMutable(0, v44);
    *(this + 65) = Mutable;
    v47 = *(this + 129);
    if (!Mutable)
    {
      while (1)
      {
        *(this + 64) = v47;
        if (!v47)
        {
          goto LABEL_396;
        }

LABEL_385:
        v274 = *(this + 1);
        v276 = *(v274 + 88);
        v275 = *(v274 + 96);
        v277 = v276 + *(v274 + 80);
        v278 = v277 - v275;
        if (v275 < v276 || v277 <= v275 || v277 == v275)
        {
          v39 = 0;
          v40 = 283;
          goto LABEL_73;
        }

        v281 = *(this + 64);
        v282 = v275 + v281;
        v160 = v281 >= v278;
        v283 = v281 - v278;
        if (v160)
        {
          LODWORD(v47) = v283;
        }

        else
        {
          v277 = v282;
          LODWORD(v47) = 0;
        }

        *(v274 + 96) = v277;
      }
    }

    CFDataSetLength(Mutable, v47);
    MutableBytePtr = CFDataGetMutableBytePtr(*(this + 65));
    *(this + 66) = MutableBytePtr;
    v29 = *(this + 129);
    *(this + 64) = v29;
    if (!MutableBytePtr)
    {
      goto LABEL_400;
    }

    v30 = MutableBytePtr;
    *(this + 33) = MutableBytePtr;
  }

  else
  {
    if (v4 > 314)
    {
      if (v4 > 330)
      {
        if (v4 == 331)
        {
          goto LABEL_448;
        }

        if (v4 == 334)
        {
          v19 = *(this + 64);
          v20 = *(this + 33);
          goto LABEL_99;
        }
      }

      else
      {
        if (v4 == 315)
        {
          v27 = *(this + 64);
          v28 = *(this + 33);
          goto LABEL_94;
        }

        if (v4 == 323)
        {
          goto LABEL_435;
        }
      }

      goto LABEL_71;
    }

    if (v4 <= 293)
    {
      if (v4 == 283)
      {
        goto LABEL_385;
      }

      if (v4 != 291)
      {
        goto LABEL_71;
      }

      do
      {
        v287 = *(this + 1);
        v289 = *(v287 + 88);
        v288 = *(v287 + 96);
        v290 = v289 + *(v287 + 80);
        v291 = v290 - v288;
        if (v288 < v289 || v290 <= v288 || v290 == v288)
        {
          v39 = 0;
          v40 = 291;
          goto LABEL_73;
        }

        v294 = *(this + 64);
        v295 = v288 + v294;
        v296 = v294 >= v291;
        v297 = v294 - v291;
        if (v296)
        {
          v295 = v290;
        }

        if (v296)
        {
          v29 = v297;
        }

        else
        {
          v29 = 0;
        }

        *(v287 + 96) = v295;
        *(this + 64) = v29;
LABEL_400:
        ;
      }

      while (v29);
      goto LABEL_195;
    }

    if (v4 != 294)
    {
      if (v4 == 307)
      {
        v15 = *(this + 64);
        v16 = *(this + 33);
LABEL_88:
        LODWORD(result.location) = v15;
        StreamBuffer::Copy((*(this + 1) + 72), &result, v16);
        v57 = result.location;
        v58 = *(this + 64);
        *(this + 33) += LODWORD(result.location);
        v59 = v58 - v57;
        *(this + 64) = v59;
        if (v59)
        {
          v39 = 0;
          v40 = 307;
          goto LABEL_73;
        }

        v60 = *(this + 136);
        *(this + 128) += 4;
        std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::reserve(this + 71, v60);
        v61 = 0;
        for (*(this + 137) = 0; ; *(this + 137) = v61)
        {
          if (v61 >= *(this + 136))
          {
            v91 = *(this + 1);
            LODWORD(result.location) = 1;
            v92 = *(v91 + 24);
            if (v92)
            {
              v92(*(v91 + 40), *(v91 + 8), 1986225779, &result);
              v91 = *(this + 1);
              v93 = *(v91 + 24);
              LODWORD(result.location) = 1;
              if (v93)
              {
                v93(*(v91 + 40), *(v91 + 8), 1768842863, &result);
                v91 = *(this + 1);
              }
            }

            else
            {
              LODWORD(result.location) = 1;
            }

            LODWORD(result.location) = 1;
            if ((*(v91 + 110) & 1) == 0)
            {
              *(v91 + 110) = 1;
              v94 = *(v91 + 24);
              if (v94)
              {
                v94(*(v91 + 40), *(v91 + 8), 1819243876, &result);
              }
            }

            goto LABEL_396;
          }

          if ((*(this + 127) - *(this + 128)) >= 5)
          {
            v27 = 4;
            *(this + 64) = 4;
            v28 = this + 516;
            *(this + 33) = this + 516;
LABEL_94:
            LODWORD(result.location) = v27;
            StreamBuffer::Copy((*(this + 1) + 72), &result, v28);
            v62 = result.location;
            v63 = *(this + 64);
            *(this + 33) += LODWORD(result.location);
            v64 = v63 - v62;
            *(this + 64) = v64;
            if (v64)
            {
              v39 = 0;
              v40 = 315;
              goto LABEL_73;
            }

            v65 = *(this + 129);
            v66 = *(this + 128) + 4;
            *(this + 128) = v66;
            if (*(this + 127) - v66 >= v65)
            {
              v67 = CFDataCreateMutable(0, v65);
              *(this + 65) = v67;
              v68 = *(this + 129);
              if (v67)
              {
                CFDataSetLength(v67, v68);
                v69 = CFDataGetMutableBytePtr(*(this + 65));
                *(this + 66) = v69;
                v19 = *(this + 129);
                *(this + 64) = v19;
                if (v69)
                {
                  v20 = v69;
                  *(this + 33) = v69;
LABEL_99:
                  LODWORD(result.location) = v19;
                  StreamBuffer::Copy((*(this + 1) + 72), &result, v20);
                  v70 = result.location;
                  v71 = *(this + 64);
                  *(this + 33) += LODWORD(result.location);
                  v72 = v71 - v70;
                  *(this + 64) = v72;
                  if (v72)
                  {
                    v39 = 0;
                    v40 = 334;
                    goto LABEL_73;
                  }

                  cf = 0;
                  theString = 0;
                  v73 = CFStringCreateFromExternalRepresentation(0, *(this + 65), 0x8000100u);
                  if (v73)
                  {
                    v422 = v73;
                    v74 = CFGetTypeID(v73);
                    if (v74 != CFStringGetTypeID())
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(exception, "Could not construct");
                    }

                    v75 = v422;
                    if (!v422)
                    {
                      goto LABEL_137;
                    }

                    if (sCreateEqualCharSetOnce != -1)
                    {
                      dispatch_once_f(&sCreateEqualCharSetOnce, 0, CreateEqualCharSet);
                    }

                    v76 = sEqualCharSet;
                    v423.length = CFStringGetLength(v75);
                    v423.location = 0;
                    CharacterFromSet = CFStringFindCharacterFromSet(v75, v76, v423, 0, &result);
                    v78 = 0;
                    if (CharacterFromSet)
                    {
                      v79 = result.location;
                      if (result.location >= 1)
                      {
                        v78 = 0;
                        if (v79 < CFStringGetLength(v422) - 1)
                        {
                          v424.length = result.location;
                          v424.location = 0;
                          v80 = CFStringCreateWithSubstring(0, v422, v424);
                          v81 = v80;
                          v421 = v80;
                          if (v80)
                          {
                            v82 = CFGetTypeID(v80);
                            if (v82 != CFStringGetTypeID())
                            {
                              v107 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v107, "Could not construct");
                            }
                          }

                          theString = v81;
                          v83 = v422;
                          v84 = result.location;
                          Length = CFStringGetLength(v422);
                          v425.length = Length - (result.location + result.length);
                          v425.location = v84 + 1;
                          v86 = CFStringCreateWithSubstring(0, v83, v425);
                          v78 = v86;
                          v421 = v86;
                          if (v86)
                          {
                            v87 = CFGetTypeID(v86);
                            if (v87 != CFStringGetTypeID())
                            {
                              v108 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v108, "Could not construct");
                            }
                          }

                          v88 = cf;
                          cf = v78;
                          v421 = v88;
                          if (v88)
                          {
                            CFRelease(v88);
                          }
                        }
                      }
                    }

                    if (v422)
                    {
                      CFRelease(v422);
                    }

                    v89 = theString;
                    if (!theString)
                    {
LABEL_135:
                      if (v78)
                      {
                        goto LABEL_136;
                      }

                      goto LABEL_138;
                    }

                    if (!v78)
                    {
                      goto LABEL_139;
                    }

                    v426.length = CFStringGetLength(theString);
                    v426.location = 0;
                    if (CFStringCompareWithOptions(v89, @"METADATA_BLOCK_PICTURE", v426, 1uLL))
                    {
                      VorbisComment::AddUserComment((this + 560), v89, &cf);
                      goto LABEL_136;
                    }

                    v95 = *(*(this + 1) + 48);
                    v96 = *(*(this + 1) + 56);
                    v97 = v96 - v95;
                    if (v96 != v95)
                    {
                      v98 = 0;
                      v99 = v97 >> 2;
                      v100 = 1;
                      do
                      {
                        v101 = *(v95 + 4 * v98);
                        v98 = v100++;
                      }

                      while (v101 != 1633776244 && v99 > v98);
                      if (v101 == 1633776244 && !*(this + 75))
                      {
                        result.location = 0;
                        VorbisComment::ConvertBase64FieldValueToAlbumArtwork(&cf, &result, v90);
                        v103 = result.location;
                        if (result.location)
                        {
                          result.location = 0;
                          *(this + 75) = v103;
                          v104 = *(this + 1);
                          LODWORD(v422) = 1;
                          v105 = *(v104 + 24);
                          if (v105)
                          {
                            v105(*(v104 + 40), *(v104 + 8), 1633776244, &v422);
                          }
                        }
                      }

                      goto LABEL_135;
                    }

LABEL_136:
                    CFRelease(v78);
LABEL_137:
                    v89 = theString;
LABEL_138:
                    if (v89)
                    {
LABEL_139:
                      CFRelease(v89);
                    }
                  }
                }

                else
                {
                  while (v19)
                  {
LABEL_448:
                    v319 = *(this + 1);
                    v321 = *(v319 + 88);
                    v320 = *(v319 + 96);
                    v322 = v321 + *(v319 + 80);
                    v323 = v322 - v320;
                    if (v320 < v321 || v322 <= v320 || v322 == v320)
                    {
                      v39 = 0;
                      v40 = 331;
                      goto LABEL_73;
                    }

                    v326 = *(this + 64);
                    v327 = v320 + v326;
                    v328 = v326 >= v323;
                    v329 = v326 - v323;
                    if (v328)
                    {
                      v327 = v322;
                    }

                    if (v328)
                    {
                      v19 = v329;
                    }

                    else
                    {
                      v19 = 0;
                    }

                    *(v319 + 96) = v327;
                    *(this + 64) = v19;
                  }
                }

                *(this + 128) += *(this + 129);
                CFRelease(*(this + 65));
                *(this + 65) = 0;
                goto LABEL_433;
              }

              while (1)
              {
                *(this + 64) = v68;
                if (!v68)
                {
                  break;
                }

LABEL_435:
                v309 = *(this + 1);
                v311 = *(v309 + 88);
                v310 = *(v309 + 96);
                v312 = v311 + *(v309 + 80);
                v313 = v312 - v310;
                if (v310 < v311 || v312 <= v310 || v312 == v310)
                {
                  v39 = 0;
                  v40 = 323;
                  goto LABEL_73;
                }

                v316 = *(this + 64);
                v317 = v310 + v316;
                v160 = v316 >= v313;
                v318 = v316 - v313;
                if (v160)
                {
                  LODWORD(v68) = v318;
                }

                else
                {
                  v312 = v317;
                  LODWORD(v68) = 0;
                }

                *(v309 + 96) = v312;
              }
            }
          }

LABEL_433:
          v61 = *(this + 137) + 1;
        }
      }

      goto LABEL_71;
    }

    v29 = *(this + 64);
    v30 = *(this + 33);
  }

  LODWORD(result.location) = v29;
  StreamBuffer::Copy((*(this + 1) + 72), &result, v30);
  v49 = result.location;
  v50 = *(this + 64);
  *(this + 33) += LODWORD(result.location);
  v51 = v50 - v49;
  *(this + 64) = v51;
  if (v51)
  {
    v39 = 0;
    v40 = 294;
    goto LABEL_73;
  }

  v52 = CFStringCreateFromExternalRepresentation(0, *(this + 65), 0x8000100u);
  *(this + 67) = v52;
  if (v52)
  {
    v53 = v52;
    v417 = v52;
    v54 = CFGetTypeID(v52);
    if (v54 != CFStringGetTypeID())
    {
      v56 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v56, "Could not construct");
    }

    v55 = *(this + 70);
    *(this + 70) = v53;
    CFRetain(v53);
    if (v55)
    {
      CFRelease(v55);
    }

    CFRelease(v53);
  }

LABEL_195:
  *(this + 128) += *(this + 129);
  CFRelease(*(this + 65));
  *(this + 65) = 0;
  if ((*(this + 127) - *(this + 128)) >= 5)
  {
    v15 = 4;
    *(this + 64) = 4;
    v16 = this + 544;
    *(this + 33) = this + 544;
    goto LABEL_88;
  }

LABEL_396:
  v284 = *(this + 127);
  v285 = *(this + 128);
  v160 = v284 >= v285;
  v286 = v284 - v285;
  if (v286 != 0 && v160)
  {
    while (1)
    {
      *(this + 64) = v286;
      if (!v286)
      {
        goto LABEL_215;
      }

LABEL_417:
      v298 = *(this + 1);
      v300 = *(v298 + 88);
      v299 = *(v298 + 96);
      v301 = v300 + *(v298 + 80);
      v302 = v301 - v299;
      if (v299 < v300 || v301 <= v299 || v301 == v299)
      {
        v39 = 0;
        v40 = 376;
        goto LABEL_73;
      }

      v305 = *(this + 64);
      v306 = v299 + v305;
      v307 = v305 >= v302;
      v308 = v305 - v302;
      if (v307)
      {
        v306 = v301;
      }

      if (v307)
      {
        v286 = v308;
      }

      else
      {
        v286 = 0;
      }

      *(v298 + 96) = v306;
    }
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_215:
        v162 = *(this + 37) + *(this + 127);
        *(this + 37) = v162;
        if ((*(this + 84) & 0x80000000) != 0)
        {
          *(this + 13) = v162;
          v163 = *(this + 1);
          LODWORD(result.location) = 1;
          v164 = *(v163 + 24);
          if (v164)
          {
            v164(*(v163 + 40), *(v163 + 8), 1685022310, &result);
          }

          if (VorbisComment::GetWAVEChannelMask(*(this + 71), *(this + 72), this + 97))
          {
LABEL_222:
            v165 = *(this + 1);
            LODWORD(result.location) = 1;
            if ((*(v165 + 109) & 1) == 0)
            {
              *(v165 + 109) = 1;
              v166 = *(v165 + 24);
              if (v166)
              {
                v166(*(v165 + 40), *(v165 + 8), 1668112752, &result);
              }
            }

            if (!*(this + 70) && *(this + 72) == *(this + 71))
            {
              v187 = *(this + 1);
              v188 = *(v187 + 48);
              v189 = *(v187 + 56);
              v190 = (v189 - v188) >> 2;
              if (v189 != v188)
              {
                v191 = 0;
                v192 = 1;
                do
                {
                  v193 = *(v188 + 4 * v191);
                  v191 = v192++;
                }

                while (v193 != 1986225779 && v190 > v191);
                if (v193 == 1986225779)
                {
                  LODWORD(result.location) = 1;
                  v195 = *(v187 + 24);
                  if (v195)
                  {
                    v195(*(v187 + 40), *(v187 + 8), 1986225779, &result);
                    v187 = *(this + 1);
                    v188 = *(v187 + 48);
                    v189 = *(v187 + 56);
                    v190 = (v189 - v188) >> 2;
                  }
                }
              }

              if (v189 != v188)
              {
                v196 = 0;
                v197 = 1;
                do
                {
                  v198 = *(v188 + 4 * v196);
                  v196 = v197++;
                }

                while (v198 != 1768842863 && v190 > v196);
                if (v198 == 1768842863)
                {
                  LODWORD(result.location) = 1;
                  v200 = *(v187 + 24);
                  if (v200)
                  {
                    v200(*(v187 + 40), *(v187 + 8), 1768842863, &result);
                    v187 = *(this + 1);
                    v188 = *(v187 + 48);
                    v189 = *(v187 + 56);
                  }
                }

                if (v189 != v188)
                {
                  v201 = 0;
                  v202 = (v189 - v188) >> 2;
                  v203 = 1;
                  do
                  {
                    v204 = *(v188 + 4 * v201);
                    v201 = v203++;
                  }

                  while (v204 != 1819243876 && v202 > v201);
                  if (v204 == 1819243876)
                  {
                    LODWORD(result.location) = 1;
                    if ((*(v187 + 110) & 1) == 0)
                    {
                      *(v187 + 110) = 1;
                      v206 = *(v187 + 24);
                      if (v206)
                      {
                        v206(*(v187 + 40), *(v187 + 8), 1819243876, &result);
                      }
                    }
                  }
                }
              }
            }

            if (!*(this + 75))
            {
              v176 = *(this + 1);
              v177 = *(v176 + 48);
              v178 = *(v176 + 56);
              v179 = v178 - v177;
              if (v178 != v177)
              {
                v180 = 0;
                v181 = v179 >> 2;
                v182 = 1;
                do
                {
                  v183 = *(v177 + 4 * v180);
                  v180 = v182++;
                }

                while (v183 != 1633776244 && v181 > v180);
                if (v183 == 1633776244)
                {
                  LODWORD(result.location) = 1;
                  v185 = *(v176 + 24);
                  if (v185)
                  {
                    v185(*(v176 + 40), *(v176 + 8), 1633776244, &result);
                  }
                }
              }
            }

            v167 = *(this + 124);
            if (!v167)
            {
              v168 = *(this + 93);
              v169 = *(this + 82);
              if (v169 == 20)
              {
                v170 = (((v169 >> 3) * v168 * *(this + 91)) * 1.5);
              }

              else
              {
                v170 = (v169 >> 3) * v168 * *(this + 91);
              }

              if (!v170)
              {
                v170 = 0x100000;
              }

              if (v168)
              {
                v171 = 8 * v168 + 18;
              }

              else
              {
                v171 = 82;
              }

              v167 = v170 + v171;
              *(this + 124) = v167;
            }

            v172 = (v167 + 1);
            if (*(this + 71) < v172)
            {
              *(this + 71) = v172;
              CADeprecated::CAAutoFree<unsigned char>::allocBytes(this + 36, v172, 0);
              v167 = *(this + 124);
            }

            *(this + 28) = v167;
            v173 = *(this + 1);
            LODWORD(result.location) = 1;
            v174 = *(v173 + 24);
            if (v174)
            {
              v174(*(v173 + 40), *(v173 + 8), 1886616165, &result);
              v173 = *(this + 1);
            }

            LODWORD(result.location) = 1;
            if (!*(v173 + 112))
            {
              *(v173 + 112) = 1;
              v175 = *(v173 + 24);
              if (v175)
              {
                v175(*(v173 + 40), *(v173 + 8), 1919247481, &result);
              }
            }

            while (1)
            {
LABEL_287:
              v207 = *(this + 1);
              v208 = *(v207 + 80);
              v210 = *(v207 + 88);
              v209 = *(v207 + 96);
              v211 = v210 + v208;
              if (v209 < v210 || v211 <= v209 || v211 - v209 == 0)
              {
                v39 = 0;
                v40 = 535;
                goto LABEL_73;
              }

              if (FLACAudioStream::Resync(this))
              {
                break;
              }

              v214 = *(this + 122);
              if (v214)
              {
                *(this + 64) = v214;
                v21 = *(this + 1);
                v215 = *(v21 + 88);
                v216 = *(v21 + 96);
                v217 = v215 + *(v21 + 80);
                v218 = v216 < v215 || v217 <= v216;
                v219 = v218;
                v220 = v217 - v216;
                v22 = v219 ? 0 : v220;
                if (v22 < v214)
                {
                  *(this + 34) = v216;
                  v221 = *(v21 + 128);
                  v222 = *(v21 + 72);
                  if (v222 == v221)
                  {
                    if (v220)
                    {
                      v232 = v219;
                    }

                    else
                    {
                      v232 = 1;
                    }

                    if (v232)
                    {
                      v233 = 0;
                    }

                    else
                    {
                      v233 = &v222[(v216 - v215)];
                    }

                    memmove(v221, v233, v22);
                    v234 = *(this + 122);
                    v21 = *(this + 1);
                    if (*(v21 + 124) < v234)
                    {
                      *(v21 + 124) = v234;
                      CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v21 + 128), v234);
                      v21 = *(this + 1);
                    }

                    *(v21 + 120) = v22;
                    *(v21 + 96) = *(v21 + 88) + *(v21 + 80);
                  }

                  else
                  {
                    if (*(v21 + 124) < v214)
                    {
                      *(v21 + 124) = v214;
                      CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v21 + 128), v214);
                      v21 = *(this + 1);
                    }

                    LODWORD(v22) = 0;
                    *(v21 + 120) = 0;
                  }

LABEL_333:
                  v235 = *(this + 64) - v22;
                  v236 = *(v21 + 88);
                  v237 = *(v21 + 96);
                  v238 = v236 + *(v21 + 80);
                  if (v238 <= v237 || v237 < v236)
                  {
                    v240 = 0;
                  }

                  else
                  {
                    v240 = v238 - v237;
                  }

                  if (v235 <= v240)
                  {
                    v235 = v240;
                  }

                  LODWORD(result.location) = v235;
                  v241 = v235 + v22;
                  if (*(v21 + 124) < v241)
                  {
                    *(v21 + 124) = v241;
                    CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v21 + 128), v241);
                    v21 = *(this + 1);
                  }

                  StreamBuffer::Copy((v21 + 72), &result, (*(v21 + 128) + *(v21 + 120)));
                  v242 = *(this + 1);
                  v243 = *(v242 + 120) + LODWORD(result.location);
                  *(v242 + 120) = v243;
                  if (v243 < *(this + 64))
                  {
                    v39 = 0;
                    v40 = 541;
                    goto LABEL_73;
                  }

                  v244 = *(this + 34);
                  v245 = *(v242 + 128);
                  *(v242 + 88) = v244;
                  *(v242 + 96) = v244;
                  *(v242 + 72) = v245;
                  *(v242 + 80) = v243;
                }
              }
            }

            v223 = 0;
            *a2 = this;
            *(a2 + 8) = AudioFileStreamObject::GeneratePackets;
            *(a2 + 16) = 0;
            v224 = *(this + 1);
            v225 = *(v224 + 88);
            v226 = *(v224 + 96);
            v227 = v225 + *(v224 + 80);
            v228 = v226 < v225 || v227 <= v226;
            v229 = v228;
            v230 = v227 - v226;
            if (!v228 && v230)
            {
              v223 = *(v224 + 72) + (v226 - v225);
            }

            v39 = 0;
            *(a2 + 32) = v223;
            if (v229)
            {
              v231 = 0;
            }

            else
            {
              v231 = v230;
            }

            *(a2 + 24) = v231;
            return v39;
          }

          *(this + 98) = *(this + 93);
          if (AudioFormatGetPropertyInfo(0x636C636Du, 8u, this + 388, this + 36))
          {
            *(this + 36) = 0;
LABEL_221:
            CADeprecated::CAAutoFree<unsigned char>::allocBytes(this + 17, 0x20uLL, 0);
            bzero(*(this + 17), 0x20uLL);
            **(this + 17) = kFLACChannelConfigToLayoutTag[*(this + 93) - 1];
            *(this + 36) = 32;
            goto LABEL_222;
          }

          CADeprecated::CAAutoFree<unsigned char>::allocBytes(this + 17, *(this + 36), 0);
          bzero(*(this + 17), *(this + 36));
          if (AudioFormatGetProperty(0x636C636Du, 8u, this + 388, this + 36, *(this + 17)))
          {
            *(this + 36) = 0;
            v186 = *(this + 17);
            if (!v186)
            {
              goto LABEL_221;
            }

            free(v186);
            *(this + 17) = 0;
          }

          if (*(this + 36))
          {
            goto LABEL_222;
          }

          goto LABEL_221;
        }

LABEL_197:
        v23 = 4;
        *(this + 64) = 4;
        v24 = this + 336;
        *(this + 33) = this + 336;
LABEL_148:
        LODWORD(result.location) = v23;
        StreamBuffer::Copy((*(this + 1) + 72), &result, v24);
        v109 = result.location;
        v110 = *(this + 64);
        *(this + 33) += LODWORD(result.location);
        v111 = v110 - v109;
        *(this + 64) = v111;
        if (v111)
        {
          v39 = 0;
          v40 = 177;
          goto LABEL_73;
        }

        v112 = bswap32(*(this + 84));
        *(this + 84) = v112;
        v113 = v112 & 0xFFFFFF;
        *(this + 127) = v112 & 0xFFFFFF;
        *(this + 37) += 4;
        v114 = HIBYTE(v112) & 0x7F;
        if (v114 > 5)
        {
          break;
        }

        if (v114)
        {
          if (v114 != 4)
          {
            goto LABEL_212;
          }

          *(this + 128) = 0;
          if (!*(this + 70) && v113 >= 5 && *(this + 72) == *(this + 71))
          {
            v13 = 4;
            *(this + 64) = 4;
            v14 = this + 516;
            *(this + 33) = this + 516;
            goto LABEL_74;
          }

          goto LABEL_396;
        }

        if (v113 <= 0x21)
        {
          goto LABEL_190;
        }

        bzero(this + 344, 0x28uLL);
        *(this + 88) = 1718378851;
        v5 = 34;
        *(this + 64) = 34;
        v6 = this + 396;
        *(this + 33) = this + 396;
LABEL_167:
        LODWORD(result.location) = v5;
        StreamBuffer::Copy((*(this + 1) + 72), &result, v6);
        v124 = result.location;
        v125 = *(this + 64);
        *(this + 33) += LODWORD(result.location);
        v126 = v125 - v124;
        *(this + 64) = v126;
        if (v126)
        {
          v39 = 0;
          v40 = 190;
          goto LABEL_73;
        }

        result.location = this + 396;
        result.length = this + 396;
        v419 = this + 430;
        v420 = 0;
        if (((this + 396) & 3) != 0)
        {
          v127 = 0;
          v128 = 8 * ((this ^ 3) & 3);
          v129 = 397;
          do
          {
            v127 = *(this + v129 - 1) | (v127 << 8);
            v130 = v129++ & 3;
          }

          while (v130 != (-this & 3));
          result.location = this + ((this ^ 3) & 3) + 397;
          LODWORD(v420) = v127 << (24 - v128);
          HIDWORD(v420) = v128 + 8;
        }

        FLACUnpackStreamInfo(&result, this + 432);
        v131 = *(this + 108);
        if (v131 != *(this + 109))
        {
          v131 = 0;
        }

        *(this + 91) = v131;
        v132 = *(this + 55);
        *(this + 492) = v132;
        LODWORD(v132) = *(this + 112);
        *(this + 43) = v132;
        v133 = *(this + 113);
        *(this + 93) = v133;
        v134 = *(this + 114);
        *(this + 82) = v134;
        *(this + 96) = kFLACChannelConfigToLayoutTag[v133 - 1];
        HIDWORD(v136) = v134 - 16;
        LODWORD(v136) = v134 - 16;
        v135 = v136 >> 2;
        if (v135 >= 5 || ((0x17u >> v135) & 1) == 0)
        {
          goto LABEL_190;
        }

        *(this + 89) = dword_18F917E58[v135];
        (*(*this + 56))(this, this + 344);
        v137 = *(this + 1);
        LODWORD(result.location) = 1;
        if ((*(v137 + 105) & 1) == 0)
        {
          *(v137 + 105) = 1;
          v138 = *(v137 + 24);
          if (v138)
          {
            v138(*(v137 + 40), *(v137 + 8), 1684434292, &result);
          }
        }

        v139 = *(this + 58);
        *(this + 20) = v139;
        v140 = *(this + 91);
        if (v140)
        {
          v141 = v139 <= v140 * (v139 / v140) ? v139 / v140 : (v139 / v140) + 1;
          *(this + 43) = v141 * v140 - v139;
          (*(*this + 80))(this);
          v142 = *(this + 1);
          LODWORD(result.location) = 1;
          v143 = *(v142 + 24);
          if (v143)
          {
            v143(*(v142 + 40), *(v142 + 8), 1885564532, &result);
          }
        }

        CADeprecated::CAAutoFree<unsigned char>::alloc(this + 15, 0x32uLL, 0);
        v144 = *(this + 15);
        *v144 = xmmword_18F901890;
        v146 = *(this + 396);
        v145 = *(this + 412);
        *(v144 + 48) = *(this + 214);
        *(v144 + 16) = v146;
        *(v144 + 32) = v145;
        *(this + 32) = 50;
        v147 = *(this + 1);
        LODWORD(result.location) = 1;
        *(v147 + 108) = 1;
        v148 = *(v147 + 24);
        if (v148)
        {
          v148(*(v147 + 40), *(v147 + 8), 1835493731, &result);
        }

        v149 = *(this + 127);
        if (v149 >= 0x23)
        {
          v150 = v149 - 34;
          while (1)
          {
            *(this + 64) = v150;
            if (!v150)
            {
              break;
            }

LABEL_369:
            v263 = *(this + 1);
            v265 = *(v263 + 88);
            v264 = *(v263 + 96);
            v266 = v265 + *(v263 + 80);
            v267 = v266 - v264;
            if (v264 < v265 || v266 <= v264 || v266 == v264)
            {
              v39 = 0;
              v40 = 266;
              goto LABEL_73;
            }

            v270 = *(this + 64);
            v271 = v264 + v270;
            v272 = v270 >= v267;
            v273 = v270 - v267;
            if (v272)
            {
              v271 = v266;
            }

            if (v272)
            {
              v150 = v273;
            }

            else
            {
              v150 = 0;
            }

            *(v263 + 96) = v271;
          }
        }
      }

      if (v114 == 6)
      {
        break;
      }

      if (v114 == 127)
      {
        goto LABEL_190;
      }

LABEL_212:
      while (1)
      {
        *(this + 64) = v113;
        if (!v113)
        {
          break;
        }

LABEL_198:
        v151 = *(this + 1);
        v153 = *(v151 + 88);
        v152 = *(v151 + 96);
        v154 = v153 + *(v151 + 80);
        v155 = v154 - v152;
        if (v152 < v153 || v154 <= v152 || v154 == v152)
        {
          v39 = 0;
          v40 = 460;
          goto LABEL_73;
        }

        v158 = *(this + 64);
        v159 = v152 + v158;
        v160 = v158 >= v155;
        v161 = v158 - v155;
        if (v160)
        {
          v159 = v154;
        }

        if (v160)
        {
          v113 = v161;
        }

        else
        {
          v113 = 0;
        }

        *(v151 + 96) = v159;
      }
    }

    *(this + 128) = 0;
    if (v113 >= 5)
    {
      v37 = 4;
      *(this + 64) = 4;
      v38 = this + 552;
      *(this + 33) = this + 552;
LABEL_159:
      LODWORD(result.location) = v37;
      StreamBuffer::Copy((*(this + 1) + 72), &result, v38);
      v115 = result.location;
      v116 = *(this + 64);
      *(this + 33) += LODWORD(result.location);
      v117 = v116 - v115;
      *(this + 64) = v117;
      if (v117)
      {
        v39 = 0;
        v40 = 383;
        goto LABEL_73;
      }

      *(this + 138) = bswap32(*(this + 138));
      v118 = *(this + 128) + 4;
      *(this + 128) = v118;
      if ((*(this + 127) - v118) >= 5)
      {
        v11 = 4;
        *(this + 64) = 4;
        v12 = this + 516;
        *(this + 33) = this + 516;
LABEL_162:
        LODWORD(result.location) = v11;
        StreamBuffer::Copy((*(this + 1) + 72), &result, v12);
        v119 = result.location;
        v120 = *(this + 64);
        *(this + 33) += LODWORD(result.location);
        v121 = v120 - v119;
        *(this + 64) = v121;
        if (v121)
        {
          v39 = 0;
          v40 = 388;
          goto LABEL_73;
        }

        v122 = bswap32(*(this + 129));
        *(this + 129) = v122;
        v123 = *(this + 128) + 4;
        *(this + 128) = v123;
        if (*(this + 127) - v123 > v122)
        {
          while (1)
          {
            *(this + 64) = v122;
            if (!v122)
            {
              break;
            }

LABEL_347:
            v246 = *(this + 1);
            v248 = *(v246 + 88);
            v247 = *(v246 + 96);
            v249 = v248 + *(v246 + 80);
            v250 = v249 - v247;
            if (v247 < v248 || v249 <= v247 || v249 == v247)
            {
              v39 = 0;
              v40 = 393;
              goto LABEL_73;
            }

            v253 = *(this + 64);
            v254 = v247 + v253;
            v255 = v253 >= v250;
            v256 = v253 - v250;
            if (v255)
            {
              v254 = v249;
            }

            if (v255)
            {
              v122 = v256;
            }

            else
            {
              v122 = 0;
            }

            *(v246 + 96) = v254;
          }

          v257 = *(this + 128) + *(this + 129);
          *(this + 128) = v257;
          if ((*(this + 127) - v257) < 5)
          {
            goto LABEL_552;
          }

          v8 = this + 516;
          v7 = 4;
          *(this + 64) = 4;
          *(this + 33) = this + 516;
LABEL_363:
          LODWORD(result.location) = v7;
          StreamBuffer::Copy((*(this + 1) + 72), &result, v8);
          v258 = result.location;
          v259 = *(this + 64);
          *(this + 33) += LODWORD(result.location);
          v260 = v259 - v258;
          *(this + 64) = v260;
          if (v260)
          {
            v39 = 0;
            v40 = 397;
            goto LABEL_73;
          }

          v261 = bswap32(*(this + 129));
          *(this + 129) = v261;
          v262 = *(this + 128) + 4;
          *(this + 128) = v262;
          if (*(this + 127) - v262 > v261)
          {
            while (1)
            {
              *(this + 64) = v261;
              if (!v261)
              {
                break;
              }

LABEL_464:
              v330 = *(this + 1);
              v332 = *(v330 + 88);
              v331 = *(v330 + 96);
              v333 = v332 + *(v330 + 80);
              v334 = v333 - v331;
              if (v331 < v332 || v333 <= v331 || v333 == v331)
              {
                v39 = 0;
                v40 = 402;
                goto LABEL_73;
              }

              v337 = *(this + 64);
              v338 = v331 + v337;
              v339 = v337 >= v334;
              v340 = v337 - v334;
              if (v339)
              {
                v338 = v333;
              }

              if (v339)
              {
                v261 = v340;
              }

              else
              {
                v261 = 0;
              }

              *(v330 + 96) = v338;
            }

            v341 = *(this + 128) + *(this + 129);
            *(this + 128) = v341;
            if ((*(this + 127) - v341) < 0x11)
            {
              goto LABEL_552;
            }

            v342 = 16;
            while (1)
            {
              *(this + 64) = v342;
              if (!v342)
              {
                break;
              }

LABEL_482:
              v343 = *(this + 1);
              v345 = *(v343 + 88);
              v344 = *(v343 + 96);
              v346 = v345 + *(v343 + 80);
              v347 = v346 - v344;
              if (v344 < v345 || v346 <= v344 || v346 == v344)
              {
                v39 = 0;
                v40 = 406;
                goto LABEL_73;
              }

              v350 = *(this + 64);
              v351 = v344 + v350;
              v352 = v350 >= v347;
              v353 = v350 - v347;
              if (v352)
              {
                v351 = v346;
              }

              if (v352)
              {
                v342 = v353;
              }

              else
              {
                v342 = 0;
              }

              *(v343 + 96) = v351;
            }

            v354 = *(this + 128) + 16;
            *(this + 128) = v354;
            if ((*(this + 127) - v354) < 5)
            {
              goto LABEL_552;
            }

            v25 = 4;
            *(this + 64) = 4;
            v26 = this + 516;
            *(this + 33) = this + 516;
LABEL_498:
            LODWORD(result.location) = v25;
            StreamBuffer::Copy((*(this + 1) + 72), &result, v26);
            v355 = result.location;
            v356 = *(this + 64);
            *(this + 33) += LODWORD(result.location);
            v357 = v356 - v355;
            *(this + 64) = v357;
            if (v357)
            {
              v39 = 0;
              v40 = 410;
              goto LABEL_73;
            }

            v358 = bswap32(*(this + 129));
            *(this + 129) = v358;
            v359 = *(this + 128);
            v360 = v359 + 4;
            *(this + 128) = v359 + 4;
            if (v358 < -5 - v359)
            {
              v361 = v360 + v358;
              v362 = *(this + 127);
              if (v360 + v358 > v362 && v362 == (v361 & 0xFFFFFF))
              {
                *(this + 127) = v361;
              }
            }

            v363 = *(*(this + 1) + 48);
            v364 = *(*(this + 1) + 56);
            v365 = v364 - v363;
            if (v364 != v363)
            {
              v366 = 0;
              v367 = v365 >> 2;
              v368 = 1;
              do
              {
                v369 = *(v363 + 4 * v366);
                v366 = v368++;
              }

              while (v369 != 1633776244 && v367 > v366);
              if (v369 == 1633776244 && *(this + 138) == 3 && !*(this + 75) && *(this + 127) - v360 >= v358)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_552:
    v401 = *(this + 127);
    v402 = *(this + 128);
    v160 = v401 >= v402;
    v403 = v401 - v402;
    if (v403 != 0 && v160)
    {
      while (1)
      {
        *(this + 64) = v403;
        if (!v403)
        {
          break;
        }

LABEL_557:
        v404 = *(this + 1);
        v406 = *(v404 + 88);
        v405 = *(v404 + 96);
        v407 = v406 + *(v404 + 80);
        v408 = v407 - v405;
        if (v405 < v406 || v407 <= v405 || v407 == v405)
        {
          v39 = 0;
          v40 = 456;
          goto LABEL_73;
        }

        v411 = *(this + 64);
        v412 = v405 + v411;
        v413 = v411 >= v408;
        v414 = v411 - v408;
        if (v413)
        {
          v412 = v407;
        }

        if (v413)
        {
          v403 = v414;
        }

        else
        {
          v403 = 0;
        }

        *(v404 + 96) = v412;
      }
    }
  }

  v371 = CFDataCreateMutable(0, v358);
  *(this + 76) = v371;
  v372 = *(this + 129);
  if (!v371)
  {
    while (1)
    {
      *(this + 64) = v372;
      if (!v372)
      {
        goto LABEL_552;
      }

LABEL_524:
      v380 = *(this + 1);
      v382 = *(v380 + 88);
      v381 = *(v380 + 96);
      v383 = v382 + *(v380 + 80);
      v384 = v383 - v381;
      if (v381 < v382 || v383 <= v381 || v383 == v381)
      {
        v39 = 0;
        v40 = 427;
        goto LABEL_73;
      }

      v387 = *(this + 64);
      v388 = v381 + v387;
      v160 = v387 >= v384;
      v389 = v387 - v384;
      if (v160)
      {
        LODWORD(v372) = v389;
      }

      else
      {
        v383 = v388;
        LODWORD(v372) = 0;
      }

      *(v380 + 96) = v383;
    }
  }

  CFDataSetLength(v371, v372);
  v373 = CFDataGetMutableBytePtr(*(this + 76));
  *(this + 66) = v373;
  v17 = *(this + 129);
  *(this + 64) = v17;
  if (v373)
  {
    v18 = v373;
    *(this + 33) = v373;
LABEL_516:
    LODWORD(result.location) = v17;
    StreamBuffer::Copy((*(this + 1) + 72), &result, v18);
    v374 = result.location;
    v375 = *(this + 64);
    *(this + 33) += LODWORD(result.location);
    v376 = v375 - v374;
    *(this + 64) = v376;
    if (v376)
    {
      v39 = 0;
      v40 = 439;
      goto LABEL_73;
    }

    v377 = *(this + 76);
    *(this + 128) += *(this + 129);
    if (v377)
    {
      *(this + 75) = v377;
      v378 = *(this + 1);
      LODWORD(result.location) = 1;
      v379 = *(v378 + 24);
      if (v379)
      {
        v379(*(v378 + 40), *(v378 + 8), 1633776244, &result);
      }
    }

    goto LABEL_552;
  }

  while (1)
  {
    if (!v17)
    {
      CFRelease(*(this + 76));
      *(this + 76) = 0;
      *(this + 128) += *(this + 129);
      goto LABEL_552;
    }

LABEL_537:
    v390 = *(this + 1);
    v392 = *(v390 + 88);
    v391 = *(v390 + 96);
    v393 = v392 + *(v390 + 80);
    v394 = v393 - v391;
    v395 = v391 < v392 || v393 <= v391;
    if (v395 || v393 == v391)
    {
      break;
    }

    v397 = *(this + 64);
    v398 = v391 + v397;
    v399 = v397 >= v394;
    v400 = v397 - v394;
    if (v399)
    {
      v398 = v393;
    }

    if (v399)
    {
      v17 = v400;
    }

    else
    {
      v17 = 0;
    }

    *(v390 + 96) = v398;
    *(this + 64) = v17;
  }

  v39 = 0;
  v40 = 434;
LABEL_73:
  *(this + 59) = v40;
  return v39;
}

uint64_t FLACAudioStream::GetProperty(FLACAudioStream *this, int a2, unsigned int *a3, void *__dst)
{
  if (a2 <= 1819243875)
  {
    if (a2 == 1633776244)
    {
      if (*a3 >= 8)
      {
        v10 = *(this + 75);
        if (v10)
        {
          CFRetain(v10);
          v11 = *(this + 75);
        }

        else
        {
          v11 = 0;
        }

        v12 = 0;
        *__dst = v11;
        *a3 = 8;
        return v12;
      }

      return 561211770;
    }

    if (a2 == 1768842863)
    {
      if (*a3 >= 8)
      {
        cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v16 = 257;
        VorbisComment::FillInfoDictionary(this + 70, &cf);
        if (cf)
        {
          CFRetain(cf);
          v7 = cf;
        }

        else
        {
          v7 = 0;
        }

        *__dst = v7;
        CACFDictionary::~CACFDictionary(&cf);
        return 0;
      }

      return 561211770;
    }

LABEL_12:

    return AudioFileStreamObject::GetProperty(this, a2, a3, __dst);
  }

  if (a2 == 1819243876)
  {
    if (*a3 >= 8)
    {
      cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v16 = 257;
      v13 = VorbisComment::FillLoudnessInfoDictionary((this + 560), &cf);
      v12 = 1886681407;
      if (!v13 && CACFDictionary::Size(&cf))
      {
        if (cf)
        {
          CFRetain(cf);
          v14 = cf;
        }

        else
        {
          v14 = 0;
        }

        v12 = 0;
        *__dst = v14;
      }

      CACFDictionary::~CACFDictionary(&cf);
      return v12;
    }

    return 561211770;
  }

  if (a2 != 1986225779)
  {
    goto LABEL_12;
  }

  v8 = (this + 560);

  return VorbisComment::GetVorbisCommentFieldList(v8, a3, __dst);
}

uint64_t FLACAudioStream::GetPropertyInfo(FLACAudioStream *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (a2 <= 1819243875)
  {
    if (a2 != 1633776244 && a2 != 1768842863)
    {
      return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
    }

LABEL_10:
    if (a3)
    {
      v6 = 8;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (a2 == 1819243876)
  {
    goto LABEL_10;
  }

  if (a2 != 1986225779)
  {
    return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a3)
  {
    if (*(this + 70))
    {
      v4 = *(this + 72);
      v5 = *(this + 71);
    }

    else
    {
      v4 = *(this + 72);
      v5 = *(this + 71);
      if (v4 == v5)
      {
        v6 = 0;
        goto LABEL_15;
      }
    }

    v6 = 24 * ((v4 - v5) >> 4) + 16;
LABEL_15:
    *a3 = v6;
  }

LABEL_16:
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

void FLACAudioStream::~FLACAudioStream(FLACAudioStream *this)
{
  FLACAudioStream::~FLACAudioStream(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033ADD8;
  v2 = *(this + 65);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 75);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 74);
  if (v4)
  {
    CFRelease(v4);
  }

  v6 = (this + 568);
  std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v5 = *(this + 70);
  if (v5)
  {
    CFRelease(v5);
  }

  AudioFileStreamObject::~AudioFileStreamObject(this);
}

uint64_t DSPGraph::Wire::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 4)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(*(v6 + 120) + 40);
    DSPGraph::printi(a2, v4 + 4, "block size %u\n");
  }

  return result;
}

void sub_18F87934C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::Wire::add(DSPGraph::Wire *this, DSPGraph::InputPort *a2)
{
  result = std::__hash_table<DSPGraph::InputPort *,std::hash<DSPGraph::InputPort *>,std::equal_to<DSPGraph::InputPort *>,std::allocator<DSPGraph::InputPort *>>::__emplace_unique_key_args<DSPGraph::InputPort *,DSPGraph::InputPort * const&>(this + 2, a2);
  *(a2 + 2) = this;
  return result;
}

void *DSPGraph::Wire::removeAll(void *this)
{
  if (this[5])
  {
    v1 = this;
    this = this[4];
    if (this)
    {
      do
      {
        v2 = *this;
        operator delete(this);
        this = v2;
      }

      while (v2);
    }

    v1[4] = 0;
    v3 = v1[3];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(v1[2] + 8 * i) = 0;
      }
    }

    v1[5] = 0;
  }

  return this;
}

void *DSPGraph::Wire::addAll(void *this, DSPGraph::Wire *a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    v3 = this;
    do
    {
      v4 = v2[2];
      this = std::__hash_table<DSPGraph::InputPort *,std::hash<DSPGraph::InputPort *>,std::equal_to<DSPGraph::InputPort *>,std::allocator<DSPGraph::InputPort *>>::__emplace_unique_key_args<DSPGraph::InputPort *,DSPGraph::InputPort * const&>((v3 + 16), v4);
      *(v4 + 16) = v3;
      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

uint64_t DSPGraph::Wire::setLocalFormat(uint64_t this, const AudioStreamBasicDescription *__s1, uint64_t a3)
{
  v5 = this;
  if (*(this + 64) == 1)
  {
    v6 = *(this + 120);
    this = memcmp(__s1, v6, 0x28uLL);
    if (this || v6[10] != a3)
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Wire.cpp");
      std::string::basic_string[abi:ne200100]<0>(v23, "setLocalFormat");
      v7 = *(*(v5 + 8) + 8);
      v8 = (v7 + 32);
      if (*(v7 + 55) < 0)
      {
        v8 = *v8;
      }

      v9 = *&__s1->mBytesPerPacket;
      v25 = *&__s1->mSampleRate;
      v26 = v9;
      v27 = *&__s1->mBitsPerChannel;
      CA::StreamDescription::AsString(v21, &v25, *&v25, *&v9);
      v10 = v22;
      v11 = v21[0];
      v12 = *(v5 + 120);
      v25 = *v12;
      v26 = v12[1];
      v27 = *(v12 + 4);
      CA::StreamDescription::AsString(v19, &v25, *&v26, v13);
      if (v10 >= 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v11;
      }

      if (v20 >= 0)
      {
        v16 = v19;
      }

      else
      {
        v16 = v19[0];
      }

      DSPGraph::strprintf("Wire from box %s: format\n%s, %u block size\ndoes not match the one previously set\n%s, %u block size\n", v14, v8, v15, a3, v16, *(*(v5 + 120) + 40));
    }
  }

  else
  {
    v17 = *&__s1->mSampleRate;
    v18 = *&__s1->mBytesPerPacket;
    *(this + 104) = *&__s1->mBitsPerChannel;
    *(this + 88) = v18;
    *(this + 72) = v17;
    *(this + 64) = 1;
  }

  *(v5 + 112) = a3;
  *(v5 + 120) = v5 + 72;
  return this;
}

void sub_18F879678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Wire::setSameFormat(uint64_t this, DSPGraph::Wire *a2)
{
  *(this + 64) = *(a2 + 64);
  v2 = *(a2 + 15);
  if (v2 == (a2 + 72))
  {
    v2 = (this + 72);
    v3 = *(a2 + 72);
    v4 = *(a2 + 88);
    *(this + 100) = *(a2 + 100);
    *(this + 88) = v4;
    *(this + 72) = v3;
  }

  *(this + 120) = v2;
  return this;
}

uint64_t WAVEAudioFile::GetMarkerList(WAVEAudioFile *this, unsigned int *a2, AudioFileMarkerList *a3)
{
  v4 = *(this + 18);
  v5 = *(this + 19) - v4;
  if (v5)
  {
    v8 = 0;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v10 = 1;
    while (1)
    {
      v11 = v4 + 24 * v8;
      if (*v11 == 1668637984)
      {
        break;
      }

      v8 = v10;
      if (v9 <= v10++)
      {
        goto LABEL_5;
      }
    }

    bzero(a3, *a2);
    v14 = *(v11 + 16) + *(v11 + 4);
    v36 = 0;
    ListChunkData = (*(**(this + 13) + 48))(*(this + 13), 0, v14, 4, &v36 + 4, &v36);
    if (!ListChunkData)
    {
      v15 = (*a2 - 8) / 0x28;
      if (*a2 < 8)
      {
        v15 = 0;
      }

      v16 = v36;
      if (SHIDWORD(v36) >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = HIDWORD(v36);
      }

      a3->mSMPTE_TimeType = 0;
      a3->mNumberMarkers = v17;
      v35 = 0;
      v34 = 0;
      ListChunkData = WAVEAudioFile::GetListChunkData(this, &v35, &v34, 1633973356);
      if (ListChunkData)
      {
        v18 = v34;
      }

      else
      {
        v18 = v34;
        if (v17 < 1)
        {
LABEL_21:
          ListChunkData = 0;
        }

        else
        {
          v19 = v14 + v16;
          v20 = v35;
          v21 = *MEMORY[0x1E695E480];
          p_mMarkerID = &a3->mMarkers[0].mMarkerID;
          while (1)
          {
            HIDWORD(v30) = 24;
            ListChunkData = (*(**(this + 13) + 48))(*(this + 13), 0, v19, 24, &v31, &v30 + 4);
            if (ListChunkData)
            {
              break;
            }

            v25 = HIDWORD(v30);
            v24 = v31;
            v32 = bswap32(v32);
            cStr = 0;
            WAVEAudioFile::FindAssocDataName(v20, v18, v31, &cStr, &v30, v23);
            if (cStr)
            {
              v26 = CFStringCreateWithCString(v21, cStr, 0x500u);
              v24 = v31;
            }

            else
            {
              v26 = 0;
            }

            v19 += v25;
            v27 = v33;
            *(p_mMarkerID - 1) = v26;
            *(p_mMarkerID - 2) = v27;
            *p_mMarkerID = v24;
            *(p_mMarkerID + 3) = 0;
            p_mMarkerID += 10;
            if (!--v17)
            {
              goto LABEL_21;
            }
          }
        }
      }

      if (v18)
      {
        free(v18);
      }
    }
  }

  else
  {
LABEL_5:
    ListChunkData = 0;
    *a2 = 0;
  }

  return ListChunkData;
}

{
  return (*(*this + 824))(this, a2, a3, 1);
}

void sub_18F87997C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WAVEAudioFile::GetListChunkData(uint64_t a1, _DWORD *a2, void **a3, int a4)
{
  v12 = 0;
  if ((WAVEAudioFile::FindListChunk(a1, &v12, a4) & 1) == 0)
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  v7 = *(v12 + 4);
  v8 = *(v12 + 8) - v7 - 4;
  if (v8 > 0xFFFFFFFE)
  {
    *a2 = 0;
    return 0xFFFFFFFFLL;
  }

  v9 = v7 + *(v12 + 16);
  CADeprecated::CAAutoFree<unsigned char>::allocBytes(a3, *(v12 + 8) - v7 - 4, 1);
  v11 = 0;
  result = (*(**(a1 + 104) + 48))(*(a1 + 104), 0, v9 + 4, v8, *a3, &v11);
  if (v11 != v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (!result)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t WAVEAudioFile::FindAssocDataName(uint64_t this, uint64_t a2, const unsigned __int8 *a3, void *a4, const char **a5, unsigned int *a6)
{
  if (this < 0xD)
  {
LABEL_10:
    *a4 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 12;
    while (1)
    {
      v8 = (*(a2 + v6) << 24) | (*(a2 + v6 + 1) << 16) | (*(a2 + v6 + 2) << 8) | *(a2 + v6 + 3);
      v9 = ((*(a2 + v6 + 4) | (*(a2 + v6 + 5) << 8) | (*(a2 + v6 + 6) << 16) | (*(a2 + v6 + 7) << 24)) + 1) & 0xFFFFFFFE;
      v10 = v6 + 8;
      v11 = v8 == 1852798053 || v8 == 1818321516;
      if (v11 && (*(a2 + v10) | (*(a2 + v6 + 9) << 8) | (*(a2 + v6 + 10) << 16) | (*(a2 + v6 + 11) << 24)) == a3)
      {
        break;
      }

      v6 = v9 + v10;
      v7 = v9 + v10 + 12;
      if (v7 >= this)
      {
        goto LABEL_10;
      }
    }

    *a4 = a2 + v7;
    *a5 = v9 + 8;
  }

  return this;
}

uint64_t WAVEAudioFile::FindListChunk(uint64_t a1, void *a2, int a3)
{
  v6 = 0;
  while (2)
  {
    v7 = *(a1 + 144);
    v8 = *(a1 + 152);
    v9 = v8 - v7;
    if (v8 == v7)
    {
LABEL_12:
      result = 0;
      *a2 = 0;
      return result;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    v13 = 1;
    while (1)
    {
      v14 = v7 + 24 * v10;
      if (*v14 == 1279873876)
      {
        break;
      }

LABEL_7:
      v10 = v13;
      if (v12 <= v13++)
      {
        goto LABEL_12;
      }
    }

    if (v11 != v6)
    {
      ++v11;
      goto LABEL_7;
    }

    *a2 = v14;
    v17 = 0;
    if (!(*(**(a1 + 104) + 48))(*(a1 + 104), 0, *(v14 + 16) + *(v14 + 4), 4, &v17 + 4, &v17))
    {
      ++v6;
      if (bswap32(HIDWORD(v17)) == a3)
      {
        return 1;
      }

      continue;
    }

    return 0;
  }
}

uint64_t WAVEAudioFile::WriteChunkHeader(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = 1869627199;
  v5 = *(a2 + 4);
  if (v5 == 24)
  {
    if (*(a1 + 84) == 1463170150)
    {
      if (*a2 == 1919510118)
      {
        v7 = 0;
      }

      else
      {
        v7 = 0;
        v9 = w64GUIDMap;
        while (1)
        {
          v10 = *v9;
          v9 += 5;
          if (v10 == *a2)
          {
            break;
          }

          if (++v7 == 29)
          {
            return v4;
          }
        }
      }

      v12 = *&w64GUIDMap[5 * v7 + 1];
      v8 = *(a2 + 16);
      v13 = *(a2 + 8);
      v11 = 0;
      v4 = (*(**(a1 + 104) + 56))(*(a1 + 104), 0, v8, 24, &v12, &v11);
      *a3 = v11;
    }

    return v4;
  }

  if (v5 != 8)
  {
    return v4;
  }

  return ChunkyAudioFile::WriteChunkHeader(a1, a2, a3);
}

uint64_t WAVEAudioFile::IsDataFormatSupported(WAVEAudioFile *this, const AudioStreamBasicDescription *a2)
{
  mFormatID = a2->mFormatID;
  v3 = 1;
  if (mFormatID <= 1667326770)
  {
    if ((mFormatID - 778924081) < 3)
    {
      return v3 & 1;
    }

    if (mFormatID == 1096107074)
    {
      if (IsACELPnetSupported(void)::sCheckForACELPnetOnce != -1)
      {
        dispatch_once(&IsACELPnetSupported(void)::sCheckForACELPnetOnce, &__block_literal_global_12341);
      }

      v3 = IsACELPnetSupported(void)::isACELPnetSupported;
      return v3 & 1;
    }

    if (mFormatID == 1634492791)
    {
      return v3 & 1;
    }

LABEL_25:
    v3 = 0;
    return v3 & 1;
  }

  if (mFormatID <= 1836253185)
  {
    if (mFormatID == 1667326771)
    {
      return v3 & 1;
    }

    if (mFormatID == 1819304813)
    {
      mFormatFlags = a2->mFormatFlags;
      v7 = 0x101200u >> mFormatFlags;
      if (mFormatFlags >= 0x15)
      {
        LOBYTE(v7) = 0;
      }

      v8 = (mFormatFlags & 0xFFFFFFED) == 8;
      if (a2->mBitsPerChannel == 8)
      {
        v3 = v8;
      }

      else
      {
        v3 = v7;
      }

      return v3 & 1;
    }

    goto LABEL_25;
  }

  if (((mFormatID - 1836253186) > 0x2F || ((1 << (mFormatID - 2)) & 0x800000008001) == 0) && mFormatID != 1970037111)
  {
    goto LABEL_25;
  }

  return v3 & 1;
}

void ___ZL19IsACELPnetSupportedv_block_invoke()
{
  outPropertyDataSize = 0;
  if (!AudioFormatGetPropertyInfo(0x61636966u, 0, 0, &outPropertyDataSize))
  {
    if (outPropertyDataSize >= 4)
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](outPropertyDataSize >> 2);
    }

    if (!AudioFormatGetProperty(0x61636966u, 0, 0, &outPropertyDataSize, 0) && outPropertyDataSize >= 4)
    {
      v0 = outPropertyDataSize >> 2;
      v1 = 0;
      while (1)
      {
        v2 = *v1++;
        if (v2 == 1096107074)
        {
          break;
        }

        if (!--v0)
        {
          goto LABEL_7;
        }
      }

      IsACELPnetSupported(void)::isACELPnetSupported = 1;
LABEL_7:
      operator delete(0);
    }
  }
}

void sub_18F87A0A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WAVEAudioFile::GetInfoDictionary(WAVEAudioFile *this, CACFDictionary *a2)
{
  v39 = 0;
  v38 = 0;
  ListChunkData = WAVEAudioFile::GetListChunkData(this, &v39, &v38, 1229866575);
  v5 = v39;
  if (ListChunkData)
  {
    v6 = 1;
  }

  else
  {
    v6 = v39 == 0;
  }

  v7 = v6;
  if (v6)
  {
    if (*(this + 21) != 1463170150)
    {
      goto LABEL_43;
    }

    v8 = *(this + 18);
    v9 = *(this + 19) - v8;
    if (!v9)
    {
      goto LABEL_43;
    }

    v10 = 0;
    v11 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    v12 = 1;
    while (1)
    {
      v13 = v8 + 24 * v10;
      if (*v13 == -1131126894)
      {
        break;
      }

      v10 = v12;
      if (v11 <= v12++)
      {
        goto LABEL_43;
      }
    }

    v29 = *(v13 + 8);
    if (v29 < 0x1D || (v30 = *(v13 + 4), v31 = v29 - v30 - 4, v31 > 0xFFFFFFFE))
    {
LABEL_43:
      v16 = v38;
      goto LABEL_44;
    }

    v32 = *(v13 + 16);
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v38, v31, 1);
    v40 = 0;
    v33 = (*(**(this + 13) + 48))(*(this + 13), 0, v30 + v32 + 4, v31, v38, &v40);
    v15 = v40 == v31 && v33 == 0;
    if (v15)
    {
      v5 = v31;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  v16 = v38;
  if (v15 && v5)
  {
    v37 = a2;
    v17 = 0;
    v18 = *MEMORY[0x1E695E480];
    do
    {
      if (v5 >= 8)
      {
        v19 = 0;
        v20 = &WAVEAudioFile::GetInfoDictionaryFromListChunk(CACFDictionary *)::listTypes[16 * v17];
        v21 = v5;
        while (1)
        {
          v22 = &v16[v19];
          if (bswap32(*v22) == *v20)
          {
            break;
          }

          v23 = *(v22 + 1);
          v19 += v23 + 8;
          if (v21 - 8 < v23)
          {
            v19 = v5;
          }

          if (v19 < v5 && !v16[v19])
          {
            ++v19;
          }

          v21 = v5 - v19;
          if (v5 - v19 <= 7)
          {
            goto LABEL_36;
          }
        }

        v24 = *(v22 + 1);
        if ((v24 + v19) + 8 <= v5)
        {
          if (v7)
          {
            v25 = 4 * wcsnlen(v22 + 2, v24 >> 2);
            v26 = 335544576;
          }

          else
          {
            v25 = strnlen(v22 + 8, v24);
            v26 = 1280;
          }

          v27 = CFStringCreateWithBytes(v18, v22 + 8, v25, v26, 0);
          v28 = v27;
          if (v27)
          {
            if (CFStringGetLength(v27))
            {
              CACFDictionary::AddString(v37, *(v20 + 1), v28);
            }

            CFRelease(v28);
          }
        }
      }

LABEL_36:
      ++v17;
    }

    while (v17 != 6);
    a2 = v37;
  }

LABEL_44:
  if (v16)
  {
    free(v16);
  }

  v34 = *(this + 69);
  if (v34)
  {
    FillInfoDictionaryFromID3Parser(a2, v34);
  }

  v38 = 0;
  v35 = (*(*this + 552))(this, &v38);
  if (!v35)
  {
    AudioFileObject::AddDurationToInfoDictionary(v35, a2, &v38);
  }

  return 0;
}

void sub_18F87A3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WAVEAudioFile::SetChannelLayout(WAVEAudioFile *this, UInt32 a2, const AudioChannelLayout *a3)
{
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  result = AudioFormatGetProperty(0x6E63686Du, a2, a3, &ioPropertyDataSize, &outPropertyData);
  if (!result)
  {
    if (outPropertyData != *(this + 13))
    {
      return 4294967246;
    }

    v7 = 0;
    result = AudioFormatProperty_WAVEChannelMaskForChannelLayout(a3, &v7);
    if (result)
    {
      return result;
    }

    v6 = vcnt_s8(v7);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.i32[0] == *(this + 13))
    {
      *(this + 114) = v7;
      return (*(*this + 192))(this, this + 24);
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t WAVEAudioFile::GetChannelLayout(WAVEAudioFile *this, unsigned int *a2, AudioChannelLayout *__dst, int8x8_t a4)
{
  v7 = 561211770;
  if (*(this + 488) == 1)
  {
    v8 = *(this + 58);
    v9 = *(this + 59) - v8;
    if (*a2 >= v9)
    {
      *a2 = v9;
      memcpy(__dst, v8, v9);
      return 0;
    }
  }

  else
  {
    v10 = *a2;
    if (*a2 < 0x20)
    {
      return v7;
    }

    if (*(this + 8) == 1667326771)
    {
      v7 = 0;
      *&__dst->mChannelLayoutTag = 0u;
      *&__dst->mChannelDescriptions[0].mChannelFlags = 0u;
      __dst->mChannelLayoutTag = *(this + 125);
      *a2 = 32;
      return v7;
    }

    v11 = *(this + 114);
    if (!v11)
    {
      *a2 = 0;
      return 1667787583;
    }

    if (!*(this + 127))
    {
      v12 = *(this + 13);
      v13 = AudioFormatProperty_ChannelLayoutSizeForWAVEChannelMask(*(this + 114), v12, a4);
      if (v10 < v13)
      {
        return v7;
      }

      if (v10 > v13)
      {
        *a2 = v13;
        v11 = *(this + 114);
      }

      AudioFormatProperty_ChannelLayoutForWAVEChannelMask(v11, v12, __dst, v14);
      return 0;
    }

    if (v10 != 32)
    {
      *a2 = 32;
    }

    v7 = 0;
    *&__dst->mChannelLayoutTag = 6619138;
    *&__dst->mChannelDescriptions[0].mChannelFlags = 0;
    *&__dst->mChannelDescriptions[0].mCoordinates[1] = 0;
    *&__dst->mNumberChannelDescriptions = 0;
  }

  return v7;
}

uint64_t WAVEAudioFile::GetChannelLayoutSize(WAVEAudioFile *this, unsigned int *a2, unsigned int *a3, int8x8_t a4)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (*(this + 488) == 1)
  {
    v5 = 0;
    v6 = *(this + 118) - *(this + 116);
  }

  else if (*(this + 114) || *(this + 8) == 1667326771)
  {
    v6 = AudioFormatProperty_ChannelLayoutSizeForWAVEChannelMask(*(this + 114), *(this + 13), a4);
    v5 = 0;
  }

  else
  {
    v6 = 0;
    v5 = 1667787583;
  }

  *a2 = v6;
  return v5;
}

uint64_t WAVEAudioFile::GetRegionListSize(WAVEAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1886681407;
}

uint64_t WAVEAudioFile::SetMarkerList(WAVEAudioFile *this, unsigned int a2, const AudioFileMarkerList *a3)
{
  v4 = this;
  v42 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = 0;
  ListChunkData = WAVEAudioFile::GetListChunkData(this, &v38, &v37, 1633973356);
  if (!ListChunkData)
  {
    mNumberMarkers = a3->mNumberMarkers;
    CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&v36, (24 * mNumberMarkers) | 4u, 0);
    *v36 = mNumberMarkers;
    *(v36 + 2) = BYTE2(mNumberMarkers);
    *(v36 + 3) = BYTE3(mNumberMarkers);
    if (mNumberMarkers)
    {
      v32 = v4;
      v33 = mNumberMarkers;
      v7 = 0;
      v8 = 0;
      mMarkers = a3->mMarkers;
      v9 = v38;
      LODWORD(v10) = 4;
      v11 = v37;
      do
      {
        v12 = &mMarkers[v7];
        mMarkerID = v12->mMarkerID;
        mFramePosition = v12->mFramePosition;
        *(v36 + v10) = mMarkerID;
        *(v36 + v10 + 2) = BYTE2(mMarkerID);
        *(v36 + v10 + 3) = BYTE3(mMarkerID);
        *(v36 + (v10 + 4)) = mFramePosition;
        *(v36 + (v10 + 5)) = BYTE1(mFramePosition);
        *(v36 + (v10 + 6)) = BYTE2(mFramePosition);
        *(v36 + (v10 + 7)) = HIBYTE(mFramePosition);
        *(v36 + (v10 + 8)) = 100;
        *(v36 + (v10 + 9)) = 97;
        *(v36 + (v10 + 10)) = 116;
        *(v36 + (v10 + 11)) = 97;
        *(v36 + (v10 + 12)) = 0;
        *(v36 + (v10 + 13)) = 0;
        *(v36 + (v10 + 14)) = 0;
        *(v36 + (v10 + 15)) = 0;
        *(v36 + (v10 + 16)) = 0;
        *(v36 + (v10 + 17)) = 0;
        *(v36 + (v10 + 18)) = 0;
        *(v36 + (v10 + 19)) = 0;
        *(v36 + (v10 + 20)) = mFramePosition;
        *(v36 + (v10 + 21)) = BYTE1(mFramePosition);
        *(v36 + (v10 + 22)) = BYTE2(mFramePosition);
        *(v36 + (v10 + 23)) = HIBYTE(mFramePosition);
        mName = v12->mName;
        if (mName && CFStringGetCString(mName, buffer, 1024, 0x500u))
        {
          memset(v40, 0, sizeof(v40));
          WAVEAudioFile::FindAssocDataName(v9, v11, mMarkerID, &v40[4], v40, v16);
          if (*&v40[4])
          {
            v17 = *v40;
          }

          else
          {
            v17 = 0;
          }

          v18 = strlen(buffer);
          v19 = (v18 & 0xFFFFFFFE) + 14;
          v20 = v9 - v17 + v19;
          CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&v39, v20, 0);
          *v39 = 1818386796;
          *(v39 + 1) = (v18 & 0xFFFFFFFE) + 6;
          v21 = v39;
          *(v39 + 2) = mMarkerID;
          memcpy(v21 + 12, buffer, (v18 + 1));
          if (v9 >= 9)
          {
            v34 = v20;
            v22 = 0;
            v23 = 8;
            do
            {
              v24 = (v11[v22] << 24) | (v11[v22 + 1] << 16) | (v11[v22 + 2] << 8) | v11[v22 + 3];
              v25 = ((v11[v22 + 4] | (v11[v22 + 5] << 8) | (v11[v22 + 6] << 16) | (v11[v22 + 7] << 24)) + 1) & 0xFFFFFFFE;
              v26 = v24 == 1852798053 || v24 == 1818321516;
              if (!v26 || (v11[v23] | (v11[v22 + 9] << 8) | (v11[v22 + 10] << 16) | (v11[v22 + 11] << 24)) != mMarkerID)
              {
                memcpy(v39 + v19, &v11[v23 - 8], v25 + 8);
                v19 += v25 + 8;
              }

              v22 = v25 + v23;
              v23 += v25 + 8;
            }

            while (v23 < v9);
            v21 = v39;
            mNumberMarkers = v33;
            v20 = v34;
          }

          v39 = 0;
          if (v11 == v21)
          {
            v21 = v11;
          }

          else
          {
            free(v11);
            if (v39)
            {
              free(v39);
            }
          }

          v8 = 1;
          v11 = v21;
          v9 = v20;
        }

        v10 = (v10 + 24);
        ++v7;
      }

      while (v7 != mNumberMarkers);
      v38 = v9;
      v37 = v11;
      v4 = v32;
    }

    else
    {
      v8 = 0;
      v10 = 4;
    }

    ListChunkData = (*(*v4 + 776))(v4, 1668637984, v10, v36);
    if (v8)
    {
      v27 = v38;
      v28 = v37;
      *buffer = 0;
      if (!WAVEAudioFile::FindListChunk(v4, buffer, 1633973356) || (v29 = *buffer, **buffer = 1179405394, *&v40[4] = 1380731974, LODWORD(v39) = 4, !(*(**(v4 + 13) + 56))(*(v4 + 13), 0, *(v29 + 16), 4, &v40[4], &v39)))
      {
        CADeprecated::CAAutoFree<char>::CAAutoFree(&v40[4], v27 + 4);
        **&v40[4] = 1819567201;
        memcpy((*&v40[4] + 4), v28, v27);
        (*(*v4 + 768))(v4, 1279873876, v27 + 4, *&v40[4]);
        if (*&v40[4])
        {
          free(*&v40[4]);
        }
      }
    }

    if (v36)
    {
      free(v36);
    }
  }

  if (v37)
  {
    free(v37);
  }

  v30 = *MEMORY[0x1E69E9840];
  return ListChunkData;
}

void sub_18F87ACC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  if (a13)
  {
    free(a13);
  }

  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WAVEAudioFile::GetMarkerListSize(WAVEAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *(this + 18);
  v5 = *(this + 19) - v4;
  if (v5)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v8 = 1;
    while (1)
    {
      v9 = v4 + 24 * v6;
      if (*v9 == 1668637984)
      {
        break;
      }

      v6 = v8;
      if (v7 <= v8++)
      {
        goto LABEL_8;
      }
    }

    v12 = 0;
    result = (*(**(this + 13) + 48))(*(this + 13), 0, *(v9 + 16) + *(v9 + 4), 4, &v12 + 4, &v12);
    if (!result)
    {
      *a2 = 40 * HIDWORD(v12) + 8;
    }
  }

  else
  {
LABEL_8:
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t WAVEAudioFile::GetMagicCookieData(WAVEAudioFile *this, unsigned int *a2, char *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = 2003334207;
  if (!a2 || !a3)
  {
    goto LABEL_32;
  }

  if (*(this + 8) == 1667326771)
  {
    v34 = 0;
    v3 = (*(**(this + 13) + 48))(*(this + 13), 0, *(this + 9) + 8, 10, v35, &v34);
    if (v3)
    {
      goto LABEL_32;
    }

    LOWORD(v27) = 0;
    v28 = v35;
    v29 = v34;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0xF6400000000;
    if (v34 < 0xA)
    {
      goto LABEL_27;
    }

    if (v35[0] != 2935)
    {
      if (v35[0] != 30475)
      {
LABEL_27:
        if (AC3PacketParser::IsValid(&v27) && *a2 >= 0xB)
        {
          AC3PacketParser::GetMagicCookie(&v27, a3, a2);
        }

        v22 = v32;
        if (v32)
        {
LABEL_31:
          free(v22);
          goto LABEL_32;
        }

        goto LABEL_32;
      }

      v30 = 1;
    }

    LOBYTE(v27) = 1;
    goto LABEL_27;
  }

  v3 = 561211770;
  if (*(this + 496) == 1)
  {
    v7 = *(this + 18);
    v8 = *(this + 19) - v7;
    if (v8)
    {
      v9 = 0;
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 1;
      while (1)
      {
        v12 = v7 + 24 * v9;
        if (*v12 == 1718449184)
        {
          break;
        }

        v9 = v11;
        if (v10 <= v11++)
        {
          goto LABEL_25;
        }
      }

      v14 = *(v12 + 8);
      if (v14 <= 0xFFFFFFFE)
      {
        v15 = *(v12 + 4);
        v16 = v14 - v15;
        v17 = v14 - v15 + 28;
        if (*a2 < v17)
        {
          goto LABEL_32;
        }

        v18 = malloc_type_malloc((v14 - v15), 0x998AA3B6uLL);
        if (v14 != v15 && v18 == 0)
        {
          exception = __cxa_allocate_exception(8uLL);
          v26 = std::bad_alloc::bad_alloc(exception);
        }

        v20 = v18;
        if (v18)
        {
          v27 = 0;
          v3 = (*(**(this + 13) + 48))(*(this + 13), 0, *(v12 + 16) + *(v12 + 4), (v14 - v15), v18, &v27);
          if (!v3)
          {
            *a3 = 0x616D72660C000000;
            v21 = bswap32(*v20 | 0x6D730000);
            *(a3 + 2) = v21;
            *(a3 + 3) = bswap32(v16 + 8);
            *(a3 + 4) = v21;
            memcpy(a3 + 20, v20, (v14 - v15));
            *&a3[v16 + 20] = 0x8000000;
            *a2 = v17;
          }

          v22 = v20;
          goto LABEL_31;
        }
      }
    }

LABEL_25:
    v3 = 0;
  }

LABEL_32:
  v23 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_18F87B148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WAVEAudioFile::GetMagicCookieDataSize(WAVEAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(this + 8) != 1667326771)
  {
    if (!a2)
    {
      v4 = 2003334207;
      goto LABEL_24;
    }

    if (*(this + 496) != 1)
    {
      v4 = 1886681407;
      goto LABEL_24;
    }

    if (a3)
    {
      *a3 = 0;
    }

    *a2 = 0;
    v5 = *(this + 18);
    v6 = *(this + 19) - v5;
    if (v6)
    {
      v7 = 0;
      v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v9 = 1;
      while (1)
      {
        v10 = v5 + 24 * v7;
        if (*v10 == 1718449184)
        {
          break;
        }

        v7 = v9;
        if (v8 <= v9++)
        {
          goto LABEL_23;
        }
      }

      v12 = *(v10 + 8);
      if (v12 <= 0xFFFFFFFE)
      {
        v4 = 0;
        *a2 = v12 - *(v10 + 4) + 28;
        goto LABEL_24;
      }
    }

LABEL_23:
    v4 = 0;
    goto LABEL_24;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (!a2)
  {
    goto LABEL_23;
  }

  *a2 = 0;
  v22 = 0;
  v4 = (*(**(this + 13) + 48))(*(this + 13), 0, *(this + 9) + 8, 10, v23, &v22);
  if (v4)
  {
    goto LABEL_24;
  }

  v15 = 0;
  v16 = v23;
  v17 = v22;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0xF6400000000;
  if (v22 >= 0xA)
  {
    if (v23[0] == 2935)
    {
LABEL_25:
      LOBYTE(v15) = 1;
      goto LABEL_26;
    }

    if (v23[0] == 30475)
    {
      v18 = 1;
      goto LABEL_25;
    }
  }

LABEL_26:
  if (AC3PacketParser::IsValid(&v15))
  {
    *a2 = 11;
  }

  if (v20)
  {
    free(v20);
  }

LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t WAVEAudioFile::UpdateSize(WAVEAudioFile *this)
{
  v65 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v1 = *(this + 548);
  v59 = 0;
  v58 = 0;
  v2 = *(this + 18);
  v3 = this + 144;
  v4 = *(this + 19) - v2;
  if (!v4)
  {
LABEL_5:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "WAVEAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2092;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "%25s:%-5d  Couldn't get the data chunk info";
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(this + 21);
  v9 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  while (1)
  {
    v10 = v2 + 24 * v6;
    if (*v10 == 1684108385)
    {
      break;
    }

    v6 = ++v7;
    if (v9 <= v7)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
  v18 = 1;
  while (1)
  {
    v19 = v2 + 24 * v17;
    if (*v19 == *(this + 42))
    {
      break;
    }

    v17 = v18;
    v37 = v9 > v18++;
    if (!v37)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315394;
      *&buf[4] = "WAVEAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2095;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "%25s:%-5d  Couldn't get the RIFF/RF64/BW64 container chunk info";
LABEL_7:
      v13 = buf;
LABEL_8:
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, v12, v13, 0x12u);
      goto LABEL_9;
    }
  }

  v20 = *(v10 + 8) - *(v10 + 4);
  v21 = (*(*this + 232))(this);
  v37 = v20 <= v21;
  v22 = v20 - v21;
  if (!v37)
  {
    ChunkyAudioFile::MoveUpTrailingChunks(this, v7, v22);
    v23 = (*(**(this + 13) + 24))(*(this + 13), &v59);
    if (v23)
    {
      v14 = v23;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136315394;
      *&buf[4] = "WAVEAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2105;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d  GetSize failed";
      goto LABEL_24;
    }

    (*(**(this + 13) + 32))(*(this + 13), v59 - v22);
  }

  v26 = (*(**(this + 13) + 24))(*(this + 13), &v59);
  if (v26)
  {
    v14 = v26;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315394;
    *&buf[4] = "WAVEAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2110;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "%25s:%-5d  GetSize failed";
    goto LABEL_24;
  }

  v28 = v59 - *(v19 + 4);
  v29 = *(this + 18);
  v30 = *(this + 19) - v29;
  if (v30)
  {
    v31 = 0;
    v32 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
    v33 = 1;
    while (1)
    {
      v34 = v29 + 24 * v31;
      if (*v34 == 1685272116)
      {
        break;
      }

      v31 = v33;
      v37 = v32 > v33++;
      if (!v37)
      {
        goto LABEL_30;
      }
    }

    if (*(v19 + 16) + 12 == *(v34 + 16) && (*(*this + 800))(this, *(v34 + 8)) >= 0x24)
    {
      v40 = *(this + 42);
      v35 = 1;
      if (v40 == 1113011764 || v40 == 1380333108)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }
  }

  else
  {
LABEL_30:
    v34 = 0;
  }

  v35 = 0;
LABEL_32:
  v36 = ~*(this + 45);
  v37 = v21 > v36 || v59 > v36;
  if (v37)
  {
    if ((*(*this + 808))(this))
    {
      goto LABEL_40;
    }

    if (!(*(*this + 816))(this))
    {
      v14 = 1868981823;
      goto LABEL_10;
    }
  }

  if (!v1)
  {
    goto LABEL_73;
  }

LABEL_40:
  v38 = (*(*this + 248))(this) * *(this + 11);
  *buf = 0x1C34367364;
  *&buf[8] = v28;
  *&buf[16] = v21;
  v63 = v38;
  v64 = 0;
  if (!v35)
  {
    v41 = *(this + 18);
    v42 = *(this + 19);
    v43 = v42 - v41;
    if (v42 == v41)
    {
LABEL_53:
      v48 = 0;
      v47 = 0;
    }

    else
    {
      v44 = 0;
      v45 = 0;
      v46 = 0xAAAAAAAAAAAAAAABLL * (v43 >> 3);
      while (1)
      {
        v47 = v41 + 24 * v44;
        if (*v47 == 1247104587)
        {
          break;
        }

        v44 = ++v45;
        if (v46 <= v45)
        {
          goto LABEL_53;
        }
      }

      v48 = 24 * v45;
    }

    v49 = (*(*this + 800))(this, *(v47 + 8));
    v50 = *(v19 + 16) + 12;
    if (v50 != *(v47 + 16) || (v51 = v49, v49 <= 0x23))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v61 = 136315394;
        *&v61[4] = "WAVEAudioFile.cpp";
        *&v61[12] = 1024;
        *&v61[14] = 2163;
        v11 = MEMORY[0x1E69E9C10];
        v12 = "%25s:%-5d  Couldn't find a suitable JUNK chunk at the required offset of a ds64 chunk";
        v13 = v61;
        goto LABEL_8;
      }

LABEL_9:
      v14 = 0;
      goto LABEL_10;
    }

    *v61 = 0x864733634;
    v52 = 36;
    if (v49 - 44 >= 0xFFFFFFFFFFFFFFF8)
    {
      v52 = v49;
    }

    *&v61[8] = v52;
    *&v61[16] = v50;
    v53 = (*(*this + 784))(this, v61, &v58);
    if (v53 || (v57 = 0, v53 = (*(*this + 792))(this, v61, &buf[8], &v57), v53))
    {
LABEL_62:
      v14 = v53;
      goto LABEL_10;
    }

    if (v51 == *&v61[8])
    {
      *v47 = *v61;
      *(v47 + 8) = v51;
    }

    else
    {
      std::vector<ChunkInfo64>::insert(v3, (v48 + *(this + 18)), v61);
      v54 = *(v47 + 16) + *&v61[8];
      *(v47 + 8) = v51 - *&v61[8];
      *(v47 + 16) = v54;
      v53 = (*(*this + 784))(this, v47, &v58);
      if (v53)
      {
        goto LABEL_62;
      }
    }

LABEL_68:
    v55 = 1113011764;
    if (v8 == 1113011764 || (v55 = 1380333108, v8 == 1380333108))
    {
      *(this + 42) = v55;
    }

    else
    {
      v55 = *(this + 42);
    }

    *v19 = v55;
LABEL_73:
    *(v10 + 8) = v21 + *(v10 + 4);
    v56 = (*(*this + 784))(this, v10, &v58);
    if (v56)
    {
      v14 = v56;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136315394;
      *&buf[4] = "WAVEAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2223;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d  Update to data chunk failed";
    }

    else
    {
      *(v19 + 8) = v28 + *(v19 + 4);
      v14 = (*(*this + 784))(this, v19, &v58);
      if (!v14 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136315394;
      *&buf[4] = "WAVEAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2228;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d  Update to RIFF/RF64/BW64 chunk failed";
    }

LABEL_24:
    v27 = buf;
LABEL_25:
    _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, v25, v27, 0x12u);
    goto LABEL_10;
  }

  v39 = (*(**(this + 13) + 56))(*(this + 13), 0, *(v34 + 16) + 8, 24, &buf[8], &v60);
  if (!v39)
  {
    goto LABEL_68;
  }

  v14 = v39;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v61 = 136315394;
    *&v61[4] = "WAVEAudioFile.cpp";
    *&v61[12] = 1024;
    *&v61[14] = 2152;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "%25s:%-5d  Couldn't update the ds64 chunk with new size";
    v27 = v61;
    goto LABEL_25;
  }

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t WAVEAudioFile::UpdateDataFormat(WAVEAudioFile *this, const AudioStreamBasicDescription *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = (*(*this + 184))(this);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = 1718449215;
  v7 = *(this + 10);
  mBitsPerChannel = a2->mBitsPerChannel;
  v16[1] = a2->mChannelsPerFrame;
  mSampleRate = a2->mSampleRate;
  v20 = mBitsPerChannel;
  v19 = v7;
  v17 = mSampleRate;
  v18 = v7 * mSampleRate;
  FormatTagFromFormatID = AudioFormat_GetFormatTagFromFormatID(a2->mFormatID, a2->mFormatFlags);
  if (!FormatTagFromFormatID)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    *buf = 136315394;
    v26 = "WAVEAudioFile.cpp";
    v27 = 1024;
    v28 = 2297;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  Unsupported data format file";
LABEL_17:
    _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
    goto LABEL_2;
  }

  v11 = *(this + 114);
  if (v11)
  {
    v16[0] = -2;
    v23 = v11;
    v24 = waveFormatExTagUUID;
    LOWORD(v24) = FormatTagFromFormatID;
    v22 = mBitsPerChannel;
    v21 = 22;
    v12 = 40;
  }

  else
  {
    v16[0] = FormatTagFromFormatID;
    if (FormatTagFromFormatID != 1)
    {
      v22 = 0;
    }

    v12 = 16;
  }

  v15 = ChunkyAudioFile::ReplaceChunk(this, 1718449184, 0, v12, v16);
  if (v15 == -1)
  {
    v4 = 1685348671;
  }

  else
  {
    v4 = v15;
  }

  if (v4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    *buf = 136315394;
    v26 = "WAVEAudioFile.cpp";
    v27 = 1024;
    v28 = 2329;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  FSWrite Failed";
    goto LABEL_17;
  }

  if (*(this + 114) && !*(this + 20))
  {
    v4 = (*(*this + 64))(this);
  }

  else
  {
    v4 = 0;
  }

LABEL_2:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t AudioFormat_GetFormatTagFromFormatID(int a1, char a2)
{
  if (a1 <= 1836253185)
  {
    switch(a1)
    {
      case 1096107074:
        if (IsACELPnetSupported(void)::sCheckForACELPnetOnce != -1)
        {
          dispatch_once(&IsACELPnetSupported(void)::sCheckForACELPnetOnce, &__block_literal_global_12341);
        }

        if (IsACELPnetSupported(void)::isACELPnetSupported)
        {
          return 304;
        }

        return 0;
      case 1634492791:
        return 6;
      case 1819304813:
        if (a2)
        {
          return 3;
        }

        else
        {
          return 1;
        }

      default:
        return 0;
    }
  }

  else if (a1 > 1836253232)
  {
    if (a1 != 1836253233)
    {
      if (a1 == 1970037111)
      {
        return 7;
      }

      return 0;
    }

    return 49;
  }

  else
  {
    if (a1 != 1836253186)
    {
      if (a1 == 1836253201)
      {
        return 17;
      }

      return 0;
    }

    return 2;
  }
}

uint64_t WAVEAudioFile::SetProperty(WAVEAudioFile *this, int a2, unsigned int a3, uint64_t *a4)
{
  if (a2 == 1714828386)
  {
    result = 1886681407;
    if ((*(this + 100) & 2) != 0)
    {
      v11 = *(this + 21);
      if (v11 == 1380333108 || v11 == 1113011764)
      {
        if (a3 < 4)
        {
          return 561211770;
        }

        *(this + 548) = *a4 != 0;
        v13 = *(*this + 224);

        return v13(this);
      }
    }
  }

  else
  {
    if (a2 == 1969321067)
    {
      if ((*(this + 100) & 2) != 0)
      {
        return 0;
      }

      if (a3 >= 4)
      {
        v5 = *a4;
        v6 = *(this + 126);
        if (*a4 >= v6)
        {
          return 2003334207;
        }

        if (v5 != *(this + 127))
        {
          v7 = *(this + 24);
          v8 = *(this + 40);
          *&v18.mSampleRate = v7;
          *&v18.mBytesPerPacket = v8;
          *&v18.mBitsPerChannel = *(this + 7);
          if (v6 >= 2)
          {
            if (v5)
            {
              v9 = 2;
            }

            else
            {
              LODWORD(v7) = *(this + 114) & 0x3FFFF;
              v14 = vcnt_s8(*&v7);
              v14.i16[0] = vaddlv_u8(v14);
              v9 = v14.i32[0];
            }

            v18.mBytesPerFrame = 0;
            v18.mChannelsPerFrame = v9;
            v18.mBytesPerPacket = 0;
            if (!FillOutAudioDescription(&v18, 0, 0, 0))
            {
              (*(*this + 184))(this, &v18);
            }

            v16 = *(this + 128);
            if (v5)
            {
              v17 = (v16 + 2 * (v5 - *(this + 126))) * (*(this + 14) >> 3);
            }

            else
            {
              v17 = 0;
            }

            *(this + 132) = v17;
            if (v16)
            {
              LODWORD(v15) = *(this + 13);
              *(this + 65) = v15 / v16;
            }

            *(this + 127) = v5;
          }
        }

        return 0;
      }

      return 561211770;
    }

    return ChunkyAudioFile::SetProperty(this, a2, a3, a4);
  }

  return result;
}

uint64_t WAVEAudioFile::GetProperty(WAVEAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  result = 561211770;
  if (!a3 || !a4)
  {
    return result;
  }

  if (a2 <= 1768174446)
  {
    if (a2 != 1635017588)
    {
      if (a2 == 1714828386)
      {
        result = 1886681407;
        if ((*(this + 100) & 2) != 0)
        {
          v6 = *(this + 21);
          if (v6 == 1380333108 || v6 == 1113011764)
          {
            result = 561211770;
            if (*a3 >= 4)
            {
              result = 0;
              *a4 = *(this + 548);
              v7 = 4;
LABEL_23:
              *a3 = v7;
              return result;
            }
          }
        }

        return result;
      }

      return ChunkyAudioFile::GetProperty(this, a2, a3, a4);
    }

    if (*a3 < 4)
    {
      return result;
    }

    result = 0;
    v8 = *(this + 126);
LABEL_18:
    *a4 = v8;
    return result;
  }

  if (a2 != 1768174447)
  {
    if (a2 != 1969321067)
    {
      return ChunkyAudioFile::GetProperty(this, a2, a3, a4);
    }

    if (*a3 < 4)
    {
      return result;
    }

    result = 0;
    v8 = *(this + 127);
    goto LABEL_18;
  }

  result = 1886681407;
  v9 = *(this + 70);
  if (v9)
  {
    if ((*(this + 100) & 2) == 0)
    {
      result = 561211770;
      if (*a3 >= 8)
      {
        result = 0;
        *a4 = v9;
        v7 = 8;
        goto LABEL_23;
      }
    }
  }

  return result;
}

uint64_t WAVEAudioFile::GetPropertyInfo(WAVEAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 > 1768174446)
  {
    if (a2 != 1768174447)
    {
      if (a2 == 1969321067)
      {
LABEL_10:
        if (a3)
        {
          *a3 = 4;
        }

        if (a4)
        {
          result = 0;
          *a4 = 1;
          return result;
        }

        return 0;
      }

      return ChunkyAudioFile::GetPropertyInfo(this, a2, a3, a4);
    }

    if (a3)
    {
      *a3 = 8;
    }

    if (!a4)
    {
      return 0;
    }

LABEL_22:
    result = 0;
    *a4 = 0;
    return result;
  }

  if (a2 == 1635017588)
  {
    if (a3)
    {
      *a3 = 4;
    }

    if (!a4)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (a2 != 1714828386)
  {
    return ChunkyAudioFile::GetPropertyInfo(this, a2, a3, a4);
  }

  result = 1886681407;
  if ((*(this + 100) & 2) != 0)
  {
    v6 = *(this + 21);
    if (v6 == 1380333108 || v6 == 1113011764)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t WAVEAudioFile::ReadPackets(WAVEAudioFile *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = 136315394;
      v33 = "WAVEAudioFile.cpp";
      v34 = 1024;
      v35 = 3416;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "%25s:%-5d  NULL buffer";
      goto LABEL_18;
    }

LABEL_19:
    v15 = 4294967246;
    goto LABEL_20;
  }

  if (!a6 || (v8 = *a6) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = 136315394;
      v33 = "WAVEAudioFile.cpp";
      v34 = 1024;
      v35 = 3418;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "%25s:%-5d  invalid num packets parameter";
LABEL_18:
      _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, v20, &v32, 0x12u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (*(this + 126) == 1)
  {
    v13 = *(this + 10);
    v32 = v13 * v8;
    v14 = (*(*this + 72))(this, a2, v13 * a5, &v32, a7);
    v15 = v14;
    if (!v14 || v14 == -39)
    {
      v16 = v32;
      v17 = *(this + 10);
      if (v32 != v17 * *a6)
      {
        v18 = v32 / v17;
        *a6 = v32 / v17;
        v16 = *(this + 10) * v18;
      }

      if (a3)
      {
        *a3 = v16;
      }

      if (v14 == -39)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }
    }

    goto LABEL_20;
  }

  v23 = *(this + 129);
  v24 = (v23 * v8);
  v32 = v23 * v8;
  v25 = v23 * a5;
  v26 = *(this + 67);
  if (v26)
  {
    if (*(this + 136) >= v24)
    {
      goto LABEL_25;
    }

    free(*(this + 67));
    v24 = *(this + 129) * *a6;
  }

  v26 = malloc_type_calloc(v24, 1uLL, 0x100004077774924uLL);
  *(this + 67) = v26;
  *(this + 136) = *(this + 129) * *a6;
LABEL_25:
  v27 = (*(*this + 72))(this, a2, v25, &v32, v26);
  v15 = v27;
  if (!v27 || v27 == -39)
  {
    v28 = v32;
    v29 = *(this + 129);
    if (v32 != v29 * *a6)
    {
      v30 = v32 / v29;
      *a6 = v32 / v29;
      v28 = *(this + 129) * v30;
      v32 = v28;
    }

    if (a3)
    {
      *a3 = (*(this + 65) * v28);
    }

    if (v27 == -39)
    {
      v15 = 0;
    }

    else
    {
      v15 = v27;
    }
  }

  if (*a6)
  {
    v31 = 0;
    do
    {
      memcpy(&a7[*(this + 10) * v31], (*(this + 67) + *(this + 132) + *(this + 129) * v31), *(this + 10));
      ++v31;
    }

    while (v31 < *a6);
  }

LABEL_20:
  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t WAVEAudioFile::ReadBytes(WAVEAudioFile *this, int a2, uint64_t a3, unsigned int *a4, void *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4 && a5)
  {
    v5 = *(this + 1);
    if (v5 <= a3)
    {
      *a4 = 0;
      result = 4294967257;
    }

    else
    {
      v6 = *(this + 9);
      v7 = v6 + a3 + *a4;
      v8 = v5 + v6;
      if (v7 > v5 + v6)
      {
        *a4 = v5 - a3;
      }

      LODWORD(result) = (*(**(this + 13) + 48))(*(this + 13), 32 * (a2 == 0));
      if (result)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7 <= v8;
      }

      if (v10)
      {
        result = result;
      }

      else
      {
        result = 4294967257;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "WAVEAudioFile.cpp";
      v14 = 1024;
      v15 = 3507;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid num bytes parameter", &v12, 0x12u);
    }

    result = 4294967246;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WAVEAudioFile::InitializeDataSource(WAVEAudioFile *this, const AudioStreamBasicDescription *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (IsSupportedWAVEFormat(a2->mFormatID))
  {
    v3 = WAVEAudioFile::InitializeWAVEChunks(this);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "WAVEAudioFile.cpp";
        v11 = 1024;
        v12 = 1515;
        v5 = MEMORY[0x1E69E9C10];
        v6 = "%25s:%-5d  InitializeWAVEChunks";
LABEL_7:
        _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, &v9, 0x12u);
      }
    }

    else
    {
      v4 = WAVEAudioFile::ParseAudioFile(this);
      if (v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "WAVEAudioFile.cpp";
        v11 = 1024;
        v12 = 1518;
        v5 = MEMORY[0x1E69E9C10];
        v6 = "%25s:%-5d  ParseAudioFile";
        goto LABEL_7;
      }
    }
  }

  else
  {
    v4 = 1718449215;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "WAVEAudioFile.cpp";
      v11 = 1024;
      v12 = 1512;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  Unsupported WAVE format";
      goto LABEL_7;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t IsSupportedWAVEFormat(int a1)
{
  result = 1;
  if (a1 <= 1819304812)
  {
    if (a1 != 1096107074)
    {
      v3 = 1634492791;
LABEL_7:
      if (a1 != v3)
      {
        return 0;
      }

      return result;
    }

    if (IsACELPnetSupported(void)::sCheckForACELPnetOnce != -1)
    {
      dispatch_once(&IsACELPnetSupported(void)::sCheckForACELPnetOnce, &__block_literal_global_12341);
    }

    return IsACELPnetSupported(void)::isACELPnetSupported;
  }

  else if (a1 != 1819304813 && a1 != 1836253233)
  {
    v3 = 1970037111;
    goto LABEL_7;
  }

  return result;
}

uint64_t WAVEAudioFile::InitializeWAVEChunks(WAVEAudioFile *this)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *(this + 21);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v3 = (*(*this + 808))();
  v4 = *(this + 10);
  v5 = *(this + 11);
  if (v2 == 1463170150)
  {
    *(this + 22) = 0x1800000028;
    *(this + 46) = 24;
  }

  v6 = *(this + 8);
  v7 = *(this + 9);
  v8 = *(this + 3);
  v9 = *(this + 13);
  v10 = *(this + 14);
  if (v3)
  {
    *&v48[0] = 0x1C4A554E4BLL;
    v11 = 1247104587;
  }

  else
  {
    v11 = 0;
  }

  memset(v44, 0, sizeof(v44));
  v43 = 0x10666D7420;
  *&v44[2] = v9;
  *&v44[4] = v8;
  *&v44[14] = v10;
  *&v44[12] = v4;
  if (v5)
  {
    *&v44[8] = v4 * v8 / v5;
  }

  v12 = 1718449215;
  v36 = 0;
  FormatTagFromFormatID = AudioFormat_GetFormatTagFromFormatID(v6, v7);
  if (FormatTagFromFormatID)
  {
    v14 = *(this + 114);
    if (v14)
    {
      *v44 = -2;
      *&v44[20] = v14;
      *&v44[24] = waveFormatExTagUUID;
      *&v44[24] = FormatTagFromFormatID;
      *&v44[18] = v10;
      *&v44[16] = 22;
      v15 = 40;
      HIDWORD(v43) = 40;
    }

    else
    {
      *v44 = FormatTagFromFormatID;
      if (FormatTagFromFormatID != 1)
      {
        *&v44[18] = 0;
      }

      v15 = 16;
    }

    v19 = *(this + 44);
    v18 = *(this + 45);
    LODWORD(v45) = 1718449184;
    HIDWORD(v45) = v18;
    if (v3)
    {
      v19 += 36;
    }

    v46 = (v15 + v18);
    v47 = v19;
    LODWORD(v40) = 1684108385;
    HIDWORD(v40) = v18;
    v20 = v19 + v46;
    v41 = v18;
    v42 = v19 + v46;
    if (*(this + 138))
    {
      v42 = (4096 - *(this + 46));
      LODWORD(v37) = 1179405394;
      HIDWORD(v37) = v18;
      v38 = v42 - v20;
      v39 = v19 + (v15 + v18);
      v21 = v42 == v20;
      v20 = v42;
    }

    else
    {
      v21 = 1;
    }

    LODWORD(v50) = 1380533830;
    HIDWORD(v50) = v18;
    v51 = v20 + v18;
    v52 = 0;
    v22 = (*(*this + 784))(this, &v50, &v36 + 4);
    if (v22)
    {
      v12 = v22;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v54 = "WAVEAudioFile.cpp";
        v55 = 1024;
        v56 = 1411;
        v16 = MEMORY[0x1E69E9C10];
        v17 = "%25s:%-5d  WriteChunkHeader for RIFF chunk Failed";
        goto LABEL_50;
      }
    }

    else
    {
      if (*(this + 21) == 1463170150)
      {
        v23 = 16;
        v24 = &unk_18F917F0C;
      }

      else
      {
        LODWORD(v36) = 1163280727;
        v23 = 4;
        v24 = &v36;
      }

      v25 = HIDWORD(v36);
      v26 = (*(**(this + 13) + 56))(*(this + 13), 0, *(this + 45), v23, v24, &v36 + 4);
      if (v26)
      {
        v12 = v26;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v54 = "WAVEAudioFile.cpp";
          v55 = 1024;
          v56 = 1427;
          v16 = MEMORY[0x1E69E9C10];
          v17 = "%25s:%-5d  WriteBytes for RIFF identifier failed";
          goto LABEL_50;
        }
      }

      else
      {
        v27 = HIDWORD(v36) + v25;
        if (v3)
        {
          LODWORD(v48[0]) = bswap32(v11);
          v28 = (*(**(this + 13) + 56))(*(this + 13), 0, v27, 36, v48, &v36 + 4);
          if (v28)
          {
            v12 = v28;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v54 = "WAVEAudioFile.cpp";
              v55 = 1024;
              v56 = 1434;
              v16 = MEMORY[0x1E69E9C10];
              v17 = "%25s:%-5d  FSWrite Failed";
              goto LABEL_50;
            }

            goto LABEL_51;
          }

          v27 += HIDWORD(v36);
        }

        v29 = (*(*this + 784))(this, &v45, &v36 + 4);
        if (v29)
        {
          v12 = v29;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v54 = "WAVEAudioFile.cpp";
            v55 = 1024;
            v56 = 1439;
            v16 = MEMORY[0x1E69E9C10];
            v17 = "%25s:%-5d  WriteChunkHeader for fmt chunk Failed";
            goto LABEL_50;
          }
        }

        else
        {
          v30 = v27 + HIDWORD(v36);
          LODWORD(v43) = 544501094;
          v31 = (*(**(this + 13) + 56))(*(this + 13), 0, v30, v15, v44, &v36 + 4);
          if (!v31)
          {
            if (v21)
            {
              v32 = v30 + HIDWORD(v36);
            }

            else
            {
              v33 = (*(*this + 784))(this, &v37, &v36 + 4);
              if (v33)
              {
                v12 = v33;
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v54 = "WAVEAudioFile.cpp";
                  v55 = 1024;
                  v56 = 1453;
                  v16 = MEMORY[0x1E69E9C10];
                  v17 = "%25s:%-5d  WriteChunkHeader for filler chunk Failed";
                  goto LABEL_50;
                }

                goto LABEL_51;
              }

              v32 = v38 + v39;
              (*(**(this + 13) + 32))(*(this + 13), v38 + v39);
            }

            v12 = (*(*this + 784))(this, &v40, &v36 + 4);
            if (!v12)
            {
              *(this + 9) = v32 + HIDWORD(v36);
              *(this + 20) = 1;
              goto LABEL_51;
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v54 = "WAVEAudioFile.cpp";
              v55 = 1024;
              v56 = 1461;
              v16 = MEMORY[0x1E69E9C10];
              v17 = "%25s:%-5d  WriteChunkHeader for data chunk Failed";
              goto LABEL_50;
            }

            goto LABEL_51;
          }

          v12 = v31;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v54 = "WAVEAudioFile.cpp";
            v55 = 1024;
            v56 = 1448;
            v16 = MEMORY[0x1E69E9C10];
            v17 = "%25s:%-5d  FSWrite Failed";
            goto LABEL_50;
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v54 = "WAVEAudioFile.cpp";
    v55 = 1024;
    v56 = 1351;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  Unsupported data format file";
LABEL_50:
    _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x12u);
  }

LABEL_51:
  v34 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t WAVEAudioFile::ParseAudioFile(WAVEAudioFile *this)
{
  v26 = *MEMORY[0x1E69E9840];
  *(this + 9) = 0;
  (*(*this + 240))(this, 0);
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if ((*(**(this + 13) + 24))(*(this + 13), &v15))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      v4 = 0;
      goto LABEL_6;
    }

    buf = 136315394;
    buf_4 = "WAVEAudioFile.cpp";
    v23 = 1024;
    v24 = 1534;
    v2 = MEMORY[0x1E69E9C10];
    v3 = "%25s:%-5d  GetSize Failed";
LABEL_4:
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_ERROR, v3, &buf, 0x12u);
    goto LABEL_5;
  }

  ioPropertyDataSize = 0;
  v8 = (*(**(this + 13) + 48))(*(this + 13), 0, 0, 8, v25, &ioPropertyDataSize);
  if (v8)
  {
    if (v8 == -39)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      buf = 136315394;
      buf_4 = "WAVEAudioFile.cpp";
      v23 = 1024;
      v24 = 1538;
      v2 = MEMORY[0x1E69E9C10];
      v3 = "%25s:%-5d  ";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      buf = 136315394;
      buf_4 = "WAVEAudioFile.cpp";
      v23 = 1024;
      v24 = 1539;
      v2 = MEMORY[0x1E69E9C10];
      v3 = "%25s:%-5d  ReadBytes Failed";
    }

    goto LABEL_4;
  }

  if (v25[0] == 84)
  {
    if (v25[1] != 65 || v25[2] != 71)
    {
      goto LABEL_5;
    }

    v4 = 128;
  }

  else
  {
    if (v25[0] != 73 || v25[1] != 68 || v25[2] != 51)
    {
      goto LABEL_5;
    }

    ioPropertyDataSize = 0;
    if ((*(**(this + 13) + 48))(*(this + 13), 0, 0, 10, &v17, &ioPropertyDataSize))
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      buf = 136315394;
      buf_4 = "WAVEAudioFile.cpp";
      v23 = 1024;
      v24 = 1549;
      v2 = MEMORY[0x1E69E9C10];
      v3 = "%25s:%-5d  ReadBytes Failed";
      goto LABEL_4;
    }

    v4 = ID3Size(0xAu, &v17, &buf);
  }

LABEL_6:
  v5 = *(this + 13);
  *v25 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5)
  {
    if ((*(*v5 + 24))(v5, v25))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = 136315394;
        v18 = "WAVEAudioFile.cpp";
        v19 = 1024;
        v20 = 3548;
        v6 = MEMORY[0x1E69E9C10];
        v7 = "%25s:%-5d  GetSize Failed";
LABEL_16:
        _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, v7, &v17, 0x12u);
      }
    }

    else
    {
      LODWORD(v15) = 48;
      v11 = (*(*v5 + 48))(v5, 0, v4, 48, &buf, &v15);
      if (v11 == -39 || v11 == 0)
      {
        v13 = bswap32(buf);
        if (v13 > 1380533829)
        {
          if (v13 == 1919510118)
          {
            operator new();
          }

          if (v13 == 1380533830)
          {
            operator new();
          }
        }

        else if (v13 == 1113011764 || v13 == 1380333108)
        {
          operator new();
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v17 = 136315394;
          v18 = "WAVEAudioFile.cpp";
          v19 = 1024;
          v20 = 3567;
          v6 = MEMORY[0x1E69E9C10];
          v7 = "%25s:%-5d  File identifier not recognized";
          goto LABEL_16;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = 136315394;
        v18 = "WAVEAudioFile.cpp";
        v19 = 1024;
        v20 = 3552;
        v6 = MEMORY[0x1E69E9C10];
        v7 = "%25s:%-5d  ReadBytes Failed";
        goto LABEL_16;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = 136315394;
    v18 = "WAVEAudioFile.cpp";
    v19 = 1024;
    v20 = 3545;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "%25s:%-5d  No data source";
    goto LABEL_16;
  }

  v9 = *MEMORY[0x1E69E9840];
  return 1685348671;
}

void sub_18F87F59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CADeprecated::CAAutoFree<char>::allocBytes(void **a1, size_t size, int a3)
{
  v6 = *a1;
  if (v6)
  {
    free(v6);
    *a1 = 0;
  }

  if (!a3)
  {
    v8 = malloc_type_malloc(size, 0xBAAF0B94uLL);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_8:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
  }

  v7 = malloc_type_malloc(size, 0xB2C9138AuLL);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  bzero(v7, size);
LABEL_7:
  *a1 = v8;
}