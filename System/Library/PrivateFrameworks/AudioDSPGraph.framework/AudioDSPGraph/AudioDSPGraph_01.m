void sub_1C91BED64(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CFTypeRef cf, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, std::locale a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (!a2)
  {
    JUMPOUT(0x1C91BF3D0);
  }

  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v64 - 224));
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a64);
  if (a29 == 1)
  {
    STACK[0x240] = &a26;
    std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  }

  v66 = __cxa_begin_catch(a1);
  v67 = *(a22 + 680);
  Log = CA::DSP::AU::DSPGraph::GetLog(v66);
  v69 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
  if (v67)
  {
    if (!v69)
    {
      goto LABEL_12;
    }

    v73 = *(a22 + 680);
    LODWORD(STACK[0x240]) = 134218498;
    STACK[0x244] = a22;
    LOWORD(STACK[0x24C]) = 2112;
    STACK[0x24E] = v73;
    LOWORD(STACK[0x256]) = 1024;
    LODWORD(STACK[0x258]) = a13;
    v70 = "[%p|%@] failed to apply DSP graph '*.propstrip' substitutions at index %u";
    v71 = Log;
    v72 = 28;
  }

  else
  {
    if (!v69)
    {
      goto LABEL_12;
    }

    LODWORD(STACK[0x240]) = 134218240;
    STACK[0x244] = a22;
    LOWORD(STACK[0x24C]) = 1024;
    LODWORD(STACK[0x24E]) = a13;
    v70 = "[%p] failed to apply DSP graph '*.propstrip' substitutions at index %u";
    v71 = Log;
    v72 = 18;
  }

  _os_log_error_impl(&dword_1C91AE000, v71, OS_LOG_TYPE_ERROR, v70, &STACK[0x240], v72);
LABEL_12:
  exception = __cxa_allocate_exception(4uLL);
  *exception = -10875;
}

void sub_1C91BF3C8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::DictionaryRef,CA::DSP::AUDSPGraph::SetProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_2>(CFTypeRef *a1, int a2, const void **a3, uint64_t a4)
{
  if (a2 != 8)
  {
    return 4294956445;
  }

  applesauce::CF::DictionaryRef::from_get(&v15, *a1);
  v6 = v15;
  CA::DSP::AUDSPGraph::ParameterManager::ConfigureMetaParameters((*a4 + 3328), v15);
  if (v6)
  {
    v7 = CFGetAllocator(v6);
    Copy = CFDictionaryCreateCopy(v7, v6);
    v9 = Copy;
    v15 = Copy;
    if (Copy)
    {
      v10 = CFGetTypeID(Copy);
      if (v10 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    v15 = v6;
    CFRelease(v6);
    v11 = *a3;
    *a3 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
    v11 = *a3;
    *a3 = 0;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  CFRelease(v11);
LABEL_12:
  v12 = 0;
  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

void sub_1C91BF510(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!v10)
  {
    JUMPOUT(0x1C91BF4BCLL);
  }

  JUMPOUT(0x1C91BF4B4);
}

void *applesauce::CF::DictionaryRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFDictionaryGetTypeID();
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

void sub_1C91BF614(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void CA::DSP::AUDSPGraph::ParameterManager::ConfigureMetaParameters(CA::DSP::AUDSPGraph::ParameterManager *this, const applesauce::CF::DictionaryRef *a2)
{
  v139 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v60 = *MEMORY[0x1E69E9840];

    std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::clear(this);
    return;
  }

  __p = 0u;
  v130 = 0u;
  v131 = 1065353216;
  *&v134 = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&cf, a2, @"Inputs", &v134);
  if (v134)
  {
    CFRelease(v134);
  }

  v2 = cf;
  if (!cf)
  {
    v99 = "Inputs key is missing";
    v100 = 23;
    goto LABEL_212;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFArrayGetTypeID())
  {
    v99 = "Inputs value is not valid";
    v100 = 27;
LABEL_212:
    CA::DSP::AU::DSPGraph::ThrowRuntimeError<>(v99, v100);
  }

  v4 = CFGetTypeID(v2);
  if (v4 != CFArrayGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::ArrayRef::from_get(&theArray, v2);
  v126 = 0;
  v5 = theArray;
  if (!theArray)
  {
LABEL_140:
    v59 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v59, "Could not construct");
  }

  v6 = 0;
  v102 = 38;
  v103 = "Inputs[{}][Outputs] key is missing";
  v104 = 52;
  v105 = "Inputs[{}][Outputs][{}][Points] key is missing";
  v7 = "Inputs[{}][Outputs][{}][Points][{}][Input] key is missing";
  v8 = "Inputs[{}][Outputs][{}][Points][{}][Output] key is missing";
  v9 = 65;
  while (1)
  {
    if (CFArrayGetCount(v5) <= v6)
    {
      goto LABEL_146;
    }

    if (!theArray)
    {
      v93 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v93, "Could not construct");
    }

    *&v134 = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef>(&v125, theArray, v6, &v134);
    if (v134)
    {
      CFRelease(v134);
    }

    v10 = v125;
    if (!v125 || (v11 = CFGetTypeID(v125), v11 != CFDictionaryGetTypeID()))
    {
      CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &>("Inputs[{}] value is not valid", 31, &v126);
    }

    v12 = CFGetTypeID(v10);
    if (v12 != CFDictionaryGetTypeID())
    {
      v96 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v96, "Could not construct");
    }

    applesauce::CF::DictionaryRef::from_get(&v124, v10);
    if (!v124)
    {
      v94 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v94, "Could not construct");
    }

    *&v134 = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v123, v124, @"ParameterID", &v134);
    if (v134)
    {
      CFRelease(v134);
    }

    v13 = v123;
    if (!v123)
    {
      CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &>("Inputs[{}][ParameterID] key is missing", 42, &v126);
    }

    v122 = 0;
    v14 = CFGetTypeID(v123);
    if (v14 != CFStringGetTypeID())
    {
      CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &>("Inputs[{}][ParameterID] value is invalid", 44, &v126);
    }

    v15 = CFGetTypeID(v13);
    if (v15 != CFStringGetTypeID())
    {
      v97 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v97, "Could not construct");
    }

    applesauce::CF::StringRef::from_get(&v134, v13);
    v17 = CA::DSP::AU::DSPGraph::ParseMetaParameterID(&v134, v16);
    if (v134)
    {
      CFRelease(v134);
    }

    if (!HIDWORD(v17))
    {
      CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &>("Inputs[{}][ParameterID] value is not supported", 50, &v126);
    }

    v122 = v17;
    if (!v124)
    {
      v95 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v95, "Could not construct");
    }

    *&v134 = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v121, v124, @"Outputs", &v134);
    if (v134)
    {
      CFRelease(v134);
    }

    v18 = v121;
    if (!v121)
    {
      goto LABEL_208;
    }

    v19 = CFGetTypeID(v121);
    if (v19 != CFArrayGetTypeID())
    {
      v102 = 40;
      v103 = "Inputs[{}][Outputs] value is invalid";
LABEL_208:
      CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &>(v103, v102, &v126);
    }

    v20 = CFGetTypeID(v18);
    if (v20 != CFArrayGetTypeID())
    {
      v98 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v98, "Could not construct");
    }

    applesauce::CF::ArrayRef::from_get(&v120, v18);
    v119 = 0;
    v21 = v120;
    if (!v120)
    {
LABEL_185:
      v85 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v85, "Could not construct");
    }

    v22 = 0;
LABEL_33:
    if (CFArrayGetCount(v21) > v22)
    {
      break;
    }

    if (v120)
    {
      CFRelease(v120);
    }

    if (v121)
    {
      CFRelease(v121);
    }

    if (v123)
    {
      CFRelease(v123);
    }

    if (v124)
    {
      CFRelease(v124);
    }

    if (v125)
    {
      CFRelease(v125);
    }

    v6 = ++v126;
    v5 = theArray;
    if (!theArray)
    {
      goto LABEL_140;
    }
  }

  if (!v120)
  {
    v86 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v86, "Could not construct");
  }

  *&v134 = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef>(&v118, v120, v22, &v134);
  if (v134)
  {
    CFRelease(v134);
  }

  v23 = v118;
  if (!v118 || (v24 = CFGetTypeID(v118), v24 != CFDictionaryGetTypeID()))
  {
    CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &,unsigned int &>("Inputs[{}][Outputs][{}] value is not valid", 46, &v126, &v119);
  }

  v25 = CFGetTypeID(v23);
  if (v25 != CFDictionaryGetTypeID())
  {
    v88 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v88, "Could not construct");
  }

  applesauce::CF::DictionaryRef::from_get(&v117, v23);
  if (!v117)
  {
    v87 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v87, "Could not construct");
  }

  *&v134 = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v116, v117, @"ParameterID", &v134);
  if (v134)
  {
    CFRelease(v134);
  }

  v26 = v116;
  if (!v116)
  {
    CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &,unsigned int &>("Inputs[{}][Outputs][{}][ParameterID] key is missing", 57, &v126, &v119);
  }

  v27 = CFGetTypeID(v116);
  if (v27 != CFStringGetTypeID())
  {
    CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &,unsigned int &>("Inputs[{}][Outputs][{}][ParameterID] value is invalid", 59, &v126, &v119);
  }

  v28 = CFGetTypeID(v26);
  if (v28 != CFStringGetTypeID())
  {
    v90 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v90, "Could not construct");
  }

  applesauce::CF::StringRef::from_get(&v134, v26);
  v107 = CA::DSP::AU::DSPGraph::ParseMetaParameterID(&v134, v29);
  if (v134)
  {
    CFRelease(v134);
  }

  if (!HIDWORD(v107))
  {
    CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &,unsigned int &>("Inputs[{}][Outputs][{}][ParameterID] value is not supported", 65, &v126, &v119);
  }

  if (!v117)
  {
    v92 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v92, "Could not construct");
  }

  *&v134 = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v115, v117, @"Points", &v134);
  if (v134)
  {
    CFRelease(v134);
  }

  v30 = v115;
  if (!v115)
  {
LABEL_192:
    CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &,unsigned int &>(v105, v104, &v126, &v119);
  }

  v31 = CFGetTypeID(v115);
  if (v31 != CFArrayGetTypeID())
  {
    v104 = 54;
    v105 = "Inputs[{}][Outputs][{}][Points] value is invalid";
    goto LABEL_192;
  }

  v32 = CFGetTypeID(v30);
  if (v32 != CFArrayGetTypeID())
  {
    v89 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v89, "Could not construct");
  }

  applesauce::CF::ArrayRef::from_get(&v114, v30);
  v113 = 0;
  v33 = v114;
  if (!v114)
  {
LABEL_196:
    v91 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v91, "Could not construct");
  }

  v34 = 0;
  v108 = 0u;
  while (1)
  {
    if (CFArrayGetCount(v33) <= v34)
    {
      *&v134 = &v122;
      v52 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&__p, v122);
      v53 = v52[5];
      if (!v53)
      {
        goto LABEL_114;
      }

      v54 = vcnt_s8(v53);
      v54.i16[0] = vaddlv_u8(v54);
      if (v54.u32[0] > 1uLL)
      {
        v55 = v107;
        if (v53 <= v107)
        {
          v55 = v107 % v53;
        }
      }

      else
      {
        v55 = (v53 - 1) & v107;
      }

      v56 = *(v52[4] + 8 * v55);
      if (!v56 || (v57 = *v56) == 0)
      {
LABEL_114:
        operator new();
      }

      while (1)
      {
        v58 = v57[1];
        if (v58 == v107)
        {
          if (*(v57 + 4) == v107)
          {
            if (v114)
            {
              CFRelease(v114);
            }

            if (v108)
            {
              operator delete(v108);
            }

            if (v115)
            {
              CFRelease(v115);
            }

            if (v116)
            {
              CFRelease(v116);
            }

            if (v117)
            {
              CFRelease(v117);
            }

            if (v118)
            {
              CFRelease(v118);
            }

            v22 = ++v119;
            v21 = v120;
            if (!v120)
            {
              goto LABEL_185;
            }

            goto LABEL_33;
          }
        }

        else
        {
          if (v54.u32[0] > 1uLL)
          {
            if (v58 >= v53)
            {
              v58 %= v53;
            }
          }

          else
          {
            v58 &= v53 - 1;
          }

          if (v58 != v55)
          {
            goto LABEL_114;
          }
        }

        v57 = *v57;
        if (!v57)
        {
          goto LABEL_114;
        }
      }
    }

    if (!v114)
    {
      v80 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v80, "Could not construct");
    }

    *&v134 = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef>(&v112, v114, v34, &v134);
    if (v134)
    {
      CFRelease(v134);
    }

    v35 = v112;
    if (!v112 || (v36 = CFGetTypeID(v112), v36 != CFDictionaryGetTypeID()))
    {
      CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &,unsigned int &,unsigned int &>("Inputs[{}][Outputs][{}][Points][{}] value is invalid", 58, &v126, &v119, &v113);
    }

    v37 = CFGetTypeID(v35);
    if (v37 != CFDictionaryGetTypeID())
    {
      v82 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v82, "Could not construct");
    }

    applesauce::CF::DictionaryRef::from_get(&v111, v35);
    if (!v111)
    {
      v81 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v81, "Could not construct");
    }

    *&v134 = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v110, v111, @"Input", &v134);
    if (v134)
    {
      CFRelease(v134);
    }

    v38 = v110;
    if (!v110)
    {
      goto LABEL_176;
    }

    v39 = CFGetTypeID(v110);
    if (v39 != CFNumberGetTypeID())
    {
      v7 = "Inputs[{}][Outputs][{}][Points][{}][Input] value is invalid";
      v9 = 67;
LABEL_176:
      CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &,unsigned int &,unsigned int &>(v7, v9, &v126, &v119, &v113);
    }

    v40 = applesauce::CF::convert_as<float,0>(v38);
    if (!HIDWORD(v40))
    {
      break;
    }

    if (!v111)
    {
      v83 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v83, "Could not construct");
    }

    v41 = v40;
    *&v134 = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v109, v111, @"Output", &v134);
    if (v134)
    {
      CFRelease(v134);
    }

    v42 = v109;
    if (!v109)
    {
      v84 = 66;
      goto LABEL_181;
    }

    v43 = CFGetTypeID(v109);
    if (v43 != CFNumberGetTypeID())
    {
      v8 = "Inputs[{}][Outputs][{}][Points][{}][Output] value is invalid";
      v84 = 68;
LABEL_181:
      CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &,unsigned int &,unsigned int &>(v8, v84, &v126, &v119, &v113);
    }

    v44 = applesauce::CF::convert_as<float,0>(v42);
    if (!HIDWORD(v44))
    {
      goto LABEL_145;
    }

    v45 = (*(&v108 + 1) - v108) >> 3;
    v46 = v45 + 1;
    if ((v45 + 1) >> 61)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    if (-v108 >> 2 > v46)
    {
      v46 = -v108 >> 2;
    }

    if (-v108 >= 0x7FFFFFFFFFFFFFF8)
    {
      v47 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v47 = v46;
    }

    if (v47)
    {
      if (!(v47 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v48 = (8 * v45);
    *v48 = v41;
    v48[1] = v44;
    v49 = 8 * v45 + 8;
    memcpy(0, v108, *(&v108 + 1) - v108);
    if (v108)
    {
      operator delete(v108);
      v42 = v109;
      *&v50 = 0;
      *(&v50 + 1) = 8 * v45 + 8;
      v108 = v50;
      v7 = "Inputs[{}][Outputs][{}][Points][{}][Input] key is missing";
      v8 = "Inputs[{}][Outputs][{}][Points][{}][Output] key is missing";
      v9 = 65;
      if (!v109)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v7 = "Inputs[{}][Outputs][{}][Points][{}][Input] key is missing";
      v8 = "Inputs[{}][Outputs][{}][Points][{}][Output] key is missing";
      v9 = 65;
      *&v51 = 0;
      *(&v51 + 1) = v49;
      v108 = v51;
    }

    CFRelease(v42);
LABEL_90:
    if (v110)
    {
      CFRelease(v110);
    }

    if (v111)
    {
      CFRelease(v111);
    }

    if (v112)
    {
      CFRelease(v112);
    }

    v34 = ++v113;
    v33 = v114;
    if (!v114)
    {
      goto LABEL_196;
    }
  }

  v109 = 0;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v134 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v132 = 134217984;
  v133 = 0;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_145:
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v134 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v132 = 134217984;
  v133 = 0;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_146:
  for (i = *(this + 2); i; i = *i)
  {
    v62 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(&__p, *(i + 4));
    if (v62)
    {
      v63 = *(i + 6);
      *(v62 + 28) = *(i + 28);
      *(v62 + 6) = v63;
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::clear(this);
  for (j = v130; j; j = *j)
  {
    v65 = *(j + 4);
    *&v134 = j + 2;
    v66 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this, v65);
    v67 = v66;
    v68 = *(j + 6);
    *(v66 + 28) = *(j + 28);
    *(v66 + 6) = v68;
    if (v66[7])
    {
      std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>>>::__deallocate_node(v66[6]);
      v67[6] = 0;
      v69 = v67[5];
      if (v69)
      {
        for (k = 0; k != v69; ++k)
        {
          *(v67[4] + 8 * k) = 0;
        }
      }

      v67[7] = 0;
    }

    v71 = j[4];
    j[4] = 0;
    v72 = v67[4];
    v67[4] = v71;
    if (v72)
    {
      operator delete(v72);
    }

    v73 = j[6];
    v74 = j[5];
    v67[6] = v73;
    v67[5] = v74;
    j[5] = 0;
    v75 = j[7];
    v67[7] = v75;
    *(v67 + 16) = *(j + 16);
    if (v75)
    {
      v76 = *(v73 + 8);
      v77 = v67[5];
      if ((v77 & (v77 - 1)) != 0)
      {
        if (v76 >= v77)
        {
          v76 %= v77;
        }
      }

      else
      {
        v76 &= v77 - 1;
      }

      *(v67[4] + 8 * v76) = v67 + 6;
      j[6] = 0;
      j[7] = 0;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::__deallocate_node(v130);
  v78 = __p;
  *&__p = 0;
  if (v78)
  {
    operator delete(v78);
  }

  v79 = *MEMORY[0x1E69E9840];
}

void sub_1C91C0BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, CFTypeRef a22, uint64_t a23, uint64_t a24, CFTypeRef a25, CFTypeRef a26, CFTypeRef a27, CFTypeRef a28, CFTypeRef a29, uint64_t a30, CFTypeRef a31, CFTypeRef a32, uint64_t a33, CFTypeRef a34, CFTypeRef a35, CFTypeRef a36, uint64_t a37, CFTypeRef a38, CFTypeRef cf, void *__p, uint64_t a41, uint64_t a42)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(void *a1, CFDictionaryRef theDict, const void *a3, void *a4)
{
  v6 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    CFRetain(v7);
    *a1 = v7;
    CFRelease(v7);
  }

  else
  {
    *a1 = *a4;
    *a4 = 0;
  }
}

void CA::DSP::AU::DSPGraph::ThrowRuntimeError<>(unsigned __int8 *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  exception = __cxa_allocate_exception(0x10uLL);
  v8 = v12;
  *__len = xmmword_1C925F110;
  v10 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v11 = 0;
  __src = v12;
  v7[0] = 0;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v8, a1, a2, v7);
  v5 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len[1] < 0x17)
  {
    *(&__dst.__r_.__value_.__s + 23) = __len[1];
    if (__len[1])
    {
      memmove(&__dst, __src, __len[1]);
    }

    __dst.__r_.__value_.__s.__data_[v5] = 0;
    if (__src != v12)
    {
      operator delete(__src);
    }

    std::runtime_error::runtime_error(exception, &__dst);
  }

  operator new();
}

void sub_1C91C1260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v57 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v57)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v56);
  goto LABEL_6;
}

void *applesauce::CF::ArrayRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFArrayGetTypeID();
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

void sub_1C91C1340(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::at_or<applesauce::CF::TypeRef>(void *a1, CFArrayRef theArray, unint64_t a3, void *a4)
{
  if (CFArrayGetCount(theArray) > a3 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3), (v9 = ValueAtIndex) != 0))
  {
    CFRetain(ValueAtIndex);
    CFRetain(v9);
    *a1 = v9;
    CFRelease(v9);
  }

  else
  {
    *a1 = *a4;
    *a4 = 0;
  }
}

void CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &>(unsigned __int8 *a1, uint64_t a2, unsigned int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  exception = __cxa_allocate_exception(0x10uLL);
  v7 = *a3;
  v11[1] = 0;
  v11[2] = 6;
  v10[2] = 6;
  v11[0] = v7;
  v12 = v16;
  *__len = xmmword_1C925F110;
  v14 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v15 = 0;
  __src = v16;
  v10[0] = 1;
  v10[1] = v11;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v12, a1, a2, v10);
  v8 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len[1] < 0x17)
  {
    *(&v9.__r_.__value_.__s + 23) = __len[1];
    if (__len[1])
    {
      memmove(&v9, __src, __len[1]);
    }

    v9.__r_.__value_.__s.__data_[v8] = 0;
    if (__src != v16)
    {
      operator delete(__src);
    }

    std::runtime_error::runtime_error(exception, &v9);
  }

  operator new();
}

void sub_1C91C1570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v61 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v61)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v60);
  goto LABEL_6;
}

void *applesauce::CF::StringRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFStringGetTypeID();
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

void sub_1C91C1650(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

unint64_t CA::DSP::AU::DSPGraph::ParseMetaParameterID(CFStringRef *this, const applesauce::CF::StringRef *a2)
{
  if (CFStringGetLength(*this) == 4 && CFStringGetCString(*this, buffer, 5, 0x600u))
  {
    v3 = buffer[3];
    v4 = (buffer[2] << 8) | (buffer[1] << 16) | (buffer[0] << 24);
    v5 = 0x100000000;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v4 = 0;
  }

  return v5 | v3 | v4;
}

void CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &,unsigned int &>(unsigned __int8 *a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  exception = __cxa_allocate_exception(0x10uLL);
  v13[0] = *a3;
  v13[1] = 0;
  v9 = *a4;
  v13[3] = 0;
  v13[4] = 198;
  v13[2] = v9;
  v14 = v18;
  *__len = xmmword_1C925F110;
  v16 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v17 = 0;
  __src = v18;
  v12[0] = 2;
  v12[1] = v13;
  v12[2] = 198;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v14, a1, a2, v12);
  v10 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len[1] < 0x17)
  {
    *(&v11.__r_.__value_.__s + 23) = __len[1];
    if (__len[1])
    {
      memmove(&v11, __src, __len[1]);
    }

    v11.__r_.__value_.__s.__data_[v10] = 0;
    if (__src != v18)
    {
      operator delete(__src);
    }

    std::runtime_error::runtime_error(exception, &v11);
  }

  operator new();
}

void sub_1C91C1884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v63 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v63)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v62);
  goto LABEL_6;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1C91C1D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CA::DSP::AU::DSPGraph::ThrowRuntimeError<unsigned int &,unsigned int &,unsigned int &>(unsigned __int8 *a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  exception = __cxa_allocate_exception(0x10uLL);
  v15[0] = *a3;
  v15[1] = 0;
  v15[2] = *a4;
  v15[3] = 0;
  v11 = *a5;
  v15[5] = 0;
  v15[6] = 6342;
  v15[4] = v11;
  v16 = v20;
  *__len = xmmword_1C925F110;
  v18 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v19 = 0;
  __src = v20;
  v14[0] = 3;
  v14[1] = v15;
  v14[2] = 6342;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v16, a1, a2, v14);
  v12 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len[1] < 0x17)
  {
    *(&v13.__r_.__value_.__s + 23) = __len[1];
    if (__len[1])
    {
      memmove(&v13, __src, __len[1]);
    }

    v13.__r_.__value_.__s.__data_[v12] = 0;
    if (__src != v20)
    {
      operator delete(__src);
    }

    std::runtime_error::runtime_error(exception, &v13);
  }

  operator new();
}

void sub_1C91C1EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        v1[4] = v3;
        operator delete(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>>>::~__hash_table((v1 + 4));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Transformer(std::vector<CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point> &&)::$_0 &,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point*,false>(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        if (*v8 >= *v9)
        {
          return result;
        }

        v63 = *v9;
LABEL_109:
        *v9 = *v8;
LABEL_110:
        *v8 = v63;
        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v66 = *(v9 + 8);
      v67 = *v9;
      v68 = *(v9 + 16);
      if (v66 >= *v9)
      {
        if (v68 < v66)
        {
          v112 = *(v9 + 8);
          v111 = *(v9 + 16);
          *(v9 + 8) = v111;
          *(v9 + 16) = v112;
          v68 = *&v112;
          if (v67 > *&v111)
          {
            v113 = *v9;
            *v9 = v111;
            *(v9 + 8) = v113;
          }
        }
      }

      else
      {
        v69 = *v9;
        LODWORD(v70) = *v9;
        if (v68 < v66)
        {
          *v9 = *(v9 + 16);
          goto LABEL_180;
        }

        *v9 = *(v9 + 8);
        *(v9 + 8) = v69;
        if (v68 < v70)
        {
          *(v9 + 8) = *(v9 + 16);
LABEL_180:
          *(v9 + 16) = v69;
          v68 = v70;
        }
      }

      if (*v8 < v68)
      {
        v119 = *(v9 + 16);
        *(v9 + 16) = *v8;
        *v8 = v119;
        if (*(v9 + 16) < *(v9 + 8))
        {
          v121 = *(v9 + 8);
          v120 = *(v9 + 16);
          *(v9 + 8) = v120;
          *(v9 + 16) = v121;
          if (*v9 > *&v120)
          {
            v122 = *v9;
            *v9 = v120;
            *(v9 + 8) = v122;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Transformer(std::vector<CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point> &&)::$_0 &,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point*,0>(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v71 = (v9 + 8);
      v73 = v9 == a2 || v71 == a2;
      if (a4)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = v9;
          do
          {
            v76 = v71;
            v77 = *(v75 + 8);
            if (v77 < *v75)
            {
              v78 = *(v75 + 12);
              v79 = v74;
              while (1)
              {
                *(v9 + v79 + 8) = *(v9 + v79);
                if (!v79)
                {
                  break;
                }

                v80 = *(v9 + v79 - 8);
                v79 -= 8;
                if (v80 <= v77)
                {
                  v81 = v9 + v79 + 8;
                  goto LABEL_129;
                }
              }

              v81 = v9;
LABEL_129:
              *v81 = v77;
              *(v81 + 4) = v78;
            }

            v71 = v76 + 2;
            v74 += 8;
            v75 = v76;
          }

          while (v76 + 2 != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v114 = v71;
          v115 = *(v7 + 8);
          if (v115 < *v7)
          {
            v116 = *(v7 + 12);
            do
            {
              v117 = v71;
              v118 = *(v71 - 1);
              v71 -= 2;
              *v117 = v118;
            }

            while (*(v117 - 4) > v115);
            *v71 = v115;
            *(v71 + 1) = v116;
          }

          v71 = (v114 + 8);
          v7 = v114;
        }

        while ((v114 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v82 = (v10 - 2) >> 1;
        v83 = v82;
        do
        {
          v84 = v83;
          if (v82 >= v83)
          {
            v85 = (2 * v83) | 1;
            v86 = (v9 + 8 * v85);
            if (2 * v84 + 2 < v10 && *v86 < v86[2])
            {
              v86 += 2;
              v85 = 2 * v84 + 2;
            }

            v87 = (v9 + 8 * v84);
            v88 = *v87;
            if (*v86 >= *v87)
            {
              v89 = *(v87 + 1);
              do
              {
                v90 = v87;
                v87 = v86;
                *v90 = *v86;
                if (v82 < v85)
                {
                  break;
                }

                v91 = 2 * v85;
                v85 = (2 * v85) | 1;
                v86 = (v9 + 8 * v85);
                v92 = v91 + 2;
                if (v92 < v10 && *v86 < v86[2])
                {
                  v86 += 2;
                  v85 = v92;
                }
              }

              while (*v86 >= v88);
              *v87 = v88;
              *(v87 + 1) = v89;
            }
          }

          v83 = v84 - 1;
        }

        while (v84);
        do
        {
          v93 = 0;
          v94 = *v9;
          v95 = v9;
          do
          {
            v96 = v95;
            v97 = &v95[2 * v93];
            v95 = v97 + 2;
            v98 = 2 * v93;
            v93 = (2 * v93) | 1;
            v99 = v98 + 2;
            if (v99 < v10)
            {
              v101 = v97[4];
              v100 = v97 + 4;
              if (*(v100 - 2) < v101)
              {
                v95 = v100;
                v93 = v99;
              }
            }

            *v96 = *v95;
          }

          while (v93 <= ((v10 - 2) >> 1));
          a2 -= 2;
          if (v95 == a2)
          {
            *v95 = v94;
          }

          else
          {
            *v95 = *a2;
            *a2 = v94;
            v102 = (v95 - v9 + 8) >> 3;
            v103 = v102 < 2;
            v104 = v102 - 2;
            if (!v103)
            {
              v105 = v104 >> 1;
              v106 = (v9 + 8 * v105);
              v107 = *v95;
              if (*v106 < *v95)
              {
                v108 = *(v95 + 1);
                do
                {
                  v109 = v95;
                  v95 = v106;
                  *v109 = *v106;
                  if (!v105)
                  {
                    break;
                  }

                  v105 = (v105 - 1) >> 1;
                  v106 = (v9 + 8 * v105);
                }

                while (*v106 < v107);
                *v95 = v107;
                *(v95 + 1) = v108;
              }
            }
          }

          v103 = v10-- <= 2;
        }

        while (!v103);
      }

      return result;
    }

    v11 = (v9 + 8 * (v10 >> 1));
    v12 = v11;
    v13 = *v8;
    if (v10 >= 0x81)
    {
      v14 = *v11;
      if (*v11 >= *v9)
      {
        if (v13 < v14)
        {
          v18 = *v11;
          *v11 = *v8;
          *v8 = v18;
          if (*v11 < *v9)
          {
            v19 = *v9;
            *v9 = *v11;
            *v11 = v19;
          }
        }
      }

      else
      {
        v15 = *v9;
        if (v13 < v14)
        {
          *v9 = *v8;
          goto LABEL_27;
        }

        *v9 = *v11;
        *v11 = v15;
        if (*v8 < *&v15)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v15;
        }
      }

      v22 = v11 - 2;
      v23 = *(v11 - 2);
      v24 = *(a2 - 4);
      if (v23 >= *(v9 + 8))
      {
        if (v24 < v23)
        {
          v26 = *v22;
          *v22 = *(a2 - 2);
          *(a2 - 2) = v26;
          if (*v22 < *(v9 + 8))
          {
            v27 = *(v9 + 8);
            *(v9 + 8) = *v22;
            *v22 = v27;
          }
        }
      }

      else
      {
        v25 = *(v9 + 8);
        if (v24 < v23)
        {
          *(v9 + 8) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v9 + 8) = *v22;
        *v22 = v25;
        if (*(a2 - 4) < *&v25)
        {
          *v22 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v29 = v11[2];
      v28 = (v11 + 2);
      v30 = v29;
      v31 = *(a2 - 6);
      if (v29 >= *(v9 + 16))
      {
        if (v31 < v30)
        {
          v33 = *v28;
          *v28 = *(a2 - 3);
          *(a2 - 3) = v33;
          if (*v28 < *(v9 + 16))
          {
            v34 = *(v9 + 16);
            *(v9 + 16) = *v28;
            *v28 = v34;
          }
        }
      }

      else
      {
        v32 = *(v9 + 16);
        if (v31 < v30)
        {
          *(v9 + 16) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v9 + 16) = *v28;
        *v28 = v32;
        if (*(a2 - 6) < *&v32)
        {
          *v28 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v32;
        }
      }

      v35 = *v12;
      v36 = *v22;
      v37 = *v28;
      if (*v12 >= *v22)
      {
        v38 = *v12;
        if (v37 < v35)
        {
          v39 = *v28;
          *v12 = *v28;
          *v28 = v38;
          if (v36 <= *&v39)
          {
            v38 = v39;
          }

          else
          {
            v38 = *v22;
            *v22 = v39;
            *v12 = v38;
          }
        }
      }

      else
      {
        v38 = *v22;
        if (v37 >= v35)
        {
          *v22 = *v12;
          *v12 = v38;
          if (v37 < *&v38)
          {
            v40 = *v28;
            *v12 = *v28;
            *v28 = v38;
            v38 = v40;
          }
        }

        else
        {
          *v22 = *v28;
          *v28 = v38;
          v38 = *v12;
        }
      }

      v41 = *v9;
      *v9 = v38;
      *v12 = v41;
      goto LABEL_59;
    }

    v16 = *v9;
    if (*v9 >= *v11)
    {
      if (v13 < v16)
      {
        v20 = *v9;
        *v9 = *v8;
        *v8 = v20;
        if (*v9 < *v11)
        {
          v21 = *v11;
          *v11 = *v9;
          *v9 = v21;
        }
      }

      goto LABEL_59;
    }

    v17 = *v11;
    if (v13 < v16)
    {
      *v11 = *v8;
LABEL_36:
      *v8 = v17;
      goto LABEL_59;
    }

    *v11 = *v9;
    *v9 = v17;
    if (*v8 < *&v17)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v42 = *v9;
LABEL_62:
      v43 = *(v9 + 4);
      v44 = v9;
      do
      {
        v45 = v44;
        v46 = *(v44 + 8);
        v44 += 8;
      }

      while (v46 < v42);
      v47 = a2;
      if (v45 == v9)
      {
        v47 = a2;
        do
        {
          if (v44 >= v47)
          {
            break;
          }

          v49 = *(v47 - 2);
          v47 -= 2;
        }

        while (v49 >= v42);
      }

      else
      {
        do
        {
          v48 = *(v47 - 2);
          v47 -= 2;
        }

        while (v48 >= v42);
      }

      v9 = v44;
      if (v44 < v47)
      {
        v50 = v47;
        do
        {
          v51 = *v9;
          *v9 = *v50;
          *v50 = v51;
          do
          {
            v52 = *(v9 + 8);
            v9 += 8;
          }

          while (v52 < v42);
          do
          {
            v53 = *(v50 - 2);
            v50 -= 2;
          }

          while (v53 >= v42);
        }

        while (v9 < v50);
      }

      if (v9 - 8 != v7)
      {
        *v7 = *(v9 - 8);
      }

      *(v9 - 8) = v42;
      *(v9 - 4) = v43;
      if (v44 < v47)
      {
        goto LABEL_81;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Transformer(std::vector<CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point> &&)::$_0 &,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point*>(v7, v9 - 8);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Transformer(std::vector<CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point> &&)::$_0 &,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point*>(v9, a2);
      if (result)
      {
        a2 = (v9 - 8);
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Transformer(std::vector<CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point> &&)::$_0 &,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point*,false>(v7, v9 - 8, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v42 = *v9;
      if (*(v9 - 8) < *v9)
      {
        goto LABEL_62;
      }

      if (*v8 <= v42)
      {
        v56 = v9 + 8;
        do
        {
          v9 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v56 += 8;
        }

        while (*v9 <= v42);
      }

      else
      {
        do
        {
          v55 = *(v9 + 8);
          v9 += 8;
        }

        while (v55 <= v42);
      }

      v57 = a2;
      if (v9 < a2)
      {
        v57 = a2;
        do
        {
          v58 = *(v57 - 2);
          v57 -= 2;
        }

        while (v58 > v42);
      }

      v59 = *(v7 + 4);
      while (v9 < v57)
      {
        v60 = *v9;
        *v9 = *v57;
        *v57 = v60;
        do
        {
          v61 = *(v9 + 8);
          v9 += 8;
        }

        while (v61 <= v42);
        do
        {
          v62 = *(v57 - 2);
          v57 -= 2;
        }

        while (v62 > v42);
      }

      if (v9 - 8 != v7)
      {
        *v7 = *(v9 - 8);
      }

      a4 = 0;
      *(v9 - 8) = v42;
      *(v9 - 4) = v59;
    }
  }

  v64 = *(v9 + 8);
  v65 = *v8;
  if (v64 >= *v9)
  {
    if (v65 < v64)
    {
      v110 = *(v9 + 8);
      *(v9 + 8) = *v8;
      *v8 = v110;
      if (*(v9 + 8) < *v9)
      {
        *v9 = vextq_s8(*v9, *v9, 8uLL);
      }
    }
  }

  else
  {
    v63 = *v9;
    if (v65 < v64)
    {
      goto LABEL_109;
    }

    *v9 = *(v9 + 8);
    *(v9 + 8) = v63;
    if (*v8 < *&v63)
    {
      *(v9 + 8) = *v8;
      goto LABEL_110;
    }
  }

  return result;
}

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Transformer(std::vector<CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point> &&)::$_0 &,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point*,0>(float *result, float *a2, float *a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (*a2 >= *result)
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = *a3;
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *&v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = *a3;
    if (*a3 < *&v7)
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *&v7;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *result)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*a5 < *a4)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*a4 < *a3)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*a3 < *a2)
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*a2 < *result)
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Transformer(std::vector<CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point> &&)::$_0 &,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point*>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 8);
      v5 = *(a2 - 8);
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          v16 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v16;
          if (*(a1 + 8) < *a1)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v3;
        if (*(a2 - 8) >= *&v3)
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 8);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 8);
LABEL_13:
      *(a2 - 8) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Transformer(std::vector<CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point> &&)::$_0 &,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer::Point*,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), (a2 - 8));
        return 1;
      }

      goto LABEL_14;
    }

    v11 = *(a1 + 8);
    v12 = *a1;
    v13 = *(a1 + 16);
    if (v11 >= *a1)
    {
      if (v13 < v11)
      {
        v21 = *(a1 + 8);
        v20 = *(a1 + 16);
        *(a1 + 8) = v20;
        *(a1 + 16) = v21;
        v13 = *&v21;
        if (v12 > *&v20)
        {
          v22 = *a1;
          *a1 = v20;
          *(a1 + 8) = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = *a1;
    LODWORD(v15) = *a1;
    if (v13 >= v11)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (*(a2 - 8) < v13)
        {
          v31 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          if (*(a1 + 16) < *(a1 + 8))
          {
            v33 = *(a1 + 8);
            v32 = *(a1 + 16);
            *(a1 + 8) = v32;
            *(a1 + 16) = v33;
            if (*a1 > *&v32)
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 8) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v14;
    v13 = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 8) < *a1)
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *a1)
  {
    if (v7 < v8)
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      if (v9 > *&v17)
      {
        v19 = *a1;
        *a1 = v17;
        *(a1 + 8) = v19;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v7 >= v8)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v10;
      if (v7 >= *&v10)
      {
        goto LABEL_34;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v10;
  }

LABEL_34:
  v23 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *v23;
    if (*v23 < *v6)
    {
      v27 = *(v23 + 4);
      v28 = v24;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 8);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      *(v30 + 4) = v27;
      if (++v25 == 8)
      {
        return v23 + 8 == a2;
      }
    }

    v6 = v23;
    v24 += 8;
    v23 += 8;
    if (v23 == a2)
    {
      return 1;
    }
  }
}

void *std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = a1;
  v5 = *a4;
  v6 = &a2[a3];
  v18[0] = a2;
  v18[1] = &a2[a3];
  v19 = 0;
  v20 = 0;
  v21 = v5;
  v14 = *a4;
  v15 = a4[2];
  LOBYTE(v11.__locale_) = 0;
  v12 = 0;
  v13 = a1;
  LOBYTE(v16.__locale_) = 0;
  v17 = 0;
  if (a3)
  {
    v7 = a2;
    v8 = "The format string terminates at a '{'";
    while (1)
    {
      v9 = *v7;
      if (v9 == 125)
      {
        break;
      }

      if (v9 != 123)
      {
        goto LABEL_10;
      }

      if (++v7 == v6)
      {
        goto LABEL_16;
      }

      if (*v7 == 123)
      {
        goto LABEL_10;
      }

      v13 = v4;
      v7 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v7, v6, v18, &v13);
      v4 = v13;
LABEL_11:
      if (v7 == v6)
      {
        goto LABEL_12;
      }
    }

    if (++v7 == v6 || *v7 != 125)
    {
      v8 = "The format string contains an invalid escape sequence";
LABEL_16:
      std::__throw_format_error[abi:ne200100](v8);
    }

LABEL_10:
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v4, v9);
    ++v7;
    goto LABEL_11;
  }

LABEL_12:
  if (v17 == 1)
  {
    std::locale::~locale(&v16);
  }

  return v4;
}

void sub_1C91C305C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void **a4)
{
  *&v292[1023] = *MEMORY[0x1E69E9840];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_523;
  }

  v9 = *v7;
  if (v9 != 125)
  {
    if (v9 == 58)
    {
      ++v7;
      goto LABEL_5;
    }

LABEL_523:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

LABEL_5:
  *a3 = v7;
  v10 = a4[1];
  if (v10 <= v8)
  {
LABEL_524:
    std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }

  if (v10 > 0xC)
  {
    v11 = &a4[2][4 * v8];
    v13 = *v11;
    v14 = *(v11 + 4);
    v15 = *(v11 + 8);
    v16 = *v11 >> 8;
    LODWORD(v11) = *(v11 + 16);
  }

  else
  {
    v11 = (a4[3] >> (5 * v8)) & 0x1F;
    v12 = &a4[2][2 * v8];
    v13 = *v12;
    v14 = *(v12 + 4);
    v15 = *(v12 + 8);
    v16 = *v12 >> 8;
  }

  switch(v11)
  {
    case 1:
      v286 = 0;
      v287 = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_225;
      }

      v17 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v286, a3, 55);
      v18 = v17;
      if (BYTE1(v286) - 2 < 6)
      {
        *a3 = v17;
        v19 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
        v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v13, a4, v19, v20, 0);
        goto LABEL_13;
      }

      if (BYTE1(v286) > 1u)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
      }

      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v286, "a BOOL");
      if ((v286 & 7) == 0)
      {
        LOBYTE(v286) = v286 | 1;
      }

      *a3 = v18;
LABEL_225:
      v125 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
      v127 = v126;
      if ((v125 & 0x40) != 0)
      {
        std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v290, a4);
        v130 = std::locale::use_facet(&v290, MEMORY[0x1E69E5368]);
        std::locale::~locale(&v290);
        v131 = v130->__vftable;
        if (v13)
        {
          (v131[2].~facet)(&v290, v130);
        }

        else
        {
          (v131[2].~facet_0)(&v290, v130);
        }

        if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v132 = &v290;
        }

        else
        {
          v132 = v290.__r_.__value_.__r.__words[0];
        }

        if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v290.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v290.__r_.__value_.__l.__size_;
        }

        v22 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v132, size, *a4, v125, v127);
        if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
        {
          v134 = v290.__r_.__value_.__r.__words[0];
          goto LABEL_466;
        }
      }

      else
      {
        if (v13)
        {
          v128 = 4;
        }

        else
        {
          v128 = 5;
        }

        v22 = *a4;
        if (v13)
        {
          v129 = "true";
        }

        else
        {
          v129 = "false";
        }

        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v129, v128, *a4, v125, v127, v128);
      }

      goto LABEL_467;
    case 2:
      v286 = 0;
      v287 = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_51;
      }

      v44 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v286, a3, 55);
      v45 = BYTE1(v286);
      if (BYTE1(v286) - 2 >= 6)
      {
        if (BYTE1(v286) > 0x13u || ((1 << SBYTE1(v286)) & 0x80401) == 0)
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a character");
        }

        std::__format_spec::__parser<char>::__validate[abi:ne200100](&v286, "a character");
        if ((v286 & 7) == 0)
        {
          LOBYTE(v286) = v286 | 1;
        }
      }

      *a3 = v44;
      switch(v45)
      {
        case 0:
          goto LABEL_51;
        case 19:
          v35 = *a4;
          v135 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
          v137 = v136;
          __p.__r_.__value_.__s.__data_[0] = v13;
          memset(&v290, 0, sizeof(v290));
          std::string::push_back(&v290, 39);
          std::__formatter::__escape[abi:ne200100]<char>(&v290, &__p, 1, 0);
          std::string::push_back(&v290, 39);
          if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v138 = &v290 + HIBYTE(v290.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v138 = (v290.__r_.__value_.__r.__words[0] + v290.__r_.__value_.__l.__size_);
          }

          if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v139 = &v290;
          }

          else
          {
            v139 = v290.__r_.__value_.__r.__words[0];
          }

          if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v140 = HIBYTE(v290.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v140 = v290.__r_.__value_.__l.__size_;
          }

          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v139, v138 - v139, v35, v135, v137, v140);
          if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v290.__r_.__value_.__l.__data_);
          }

          goto LABEL_113;
        case 10:
LABEL_51:
          v35 = *a4;
          v46 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
          v290.__r_.__value_.__s.__data_[0] = v13;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v290, 1uLL, v35, v46, v47, 1);
          goto LABEL_113;
      }

      v75 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
      v76 = v141;
      v53 = v13;
      v74 = a4;
      goto LABEL_106;
    case 3:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v48 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v48;
      }

      v31 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v33 = v49;
      v50 = v13 | (v16 << 8);
      if ((v31 & 0xFF00) == 0xA00)
      {
        if ((v13 | (v16 << 8)) == v13)
        {
          goto LABEL_27;
        }

LABEL_525:
        std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
      }

      if (v50 >= 0)
      {
        v53 = v13 | (v16 << 8);
      }

      else
      {
        v53 = -v50;
      }

      v73 = v16 << 8 >> 31;
      v74 = a4;
      v75 = v31;
      v76 = v33;
      goto LABEL_107;
    case 4:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v30 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v30;
      }

      v31 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v33 = v32;
      v34 = v13 | (v16 << 8) | (v14 << 32);
      if ((v31 & 0xFF00) != 0xA00)
      {
        if (v34 >= 0)
        {
          v62 = v13 | (v16 << 8) | (v14 << 32);
        }

        else
        {
          v62 = -v34;
        }

        v42 = v14 >> 31;
        v67 = a4;
        v68 = v31;
        v69 = v33;
        goto LABEL_111;
      }

      if (v34 != v34)
      {
        goto LABEL_525;
      }

LABEL_27:
      v35 = *a4;
      LOBYTE(v286) = v13;
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v286, 1uLL, v35, v31, v33, 1);
LABEL_113:
      *a4 = v35;
LABEL_468:
      v245 = *a3;
      if (*a3 == a2 || *v245 != 125)
      {
        std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
      }

      v246 = *MEMORY[0x1E69E9840];
      return v245 + 1;
    case 5:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v54 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v54;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v42 = v55;
      v56 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(-1, -257) >= __PAIR128__((v56 >= 0x80) + v15 - 1, v56 - 128))
        {
          goto LABEL_525;
        }

LABEL_80:
        v35 = *a4;
        LOBYTE(v286) = v13;
        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v286, 1uLL, v35, v40, v42, 1);
        goto LABEL_113;
      }

      v70 = (__PAIR128__(v15 ^ (v15 >> 63), v56 ^ (v15 >> 63)) - __PAIR128__(v15 >> 63, v15 >> 63)) >> 64;
      v43 = (v56 ^ (v15 >> 63)) - (v15 >> 63);
      v72 = v15 >> 63;
      v71 = a4;
LABEL_109:
      v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v43, v70, v71, v40, v42, v72);
      goto LABEL_112;
    case 6:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v51 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v51;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v42 = v52;
      v53 = v13 | (v16 << 8);
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (v53 >= 0x80)
        {
          goto LABEL_525;
        }

        goto LABEL_80;
      }

      v74 = a4;
      v75 = v40;
      v76 = v42;
LABEL_106:
      LOBYTE(v73) = 0;
LABEL_107:
      v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v53, v74, v75, v76, v73);
LABEL_112:
      v35 = v77;
      goto LABEL_113;
    case 7:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v60 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v60;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v42 = v61;
      v62 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) != 0xA00)
      {
        v67 = a4;
        v68 = v40;
        v69 = v42;
        LOBYTE(v42) = 0;
LABEL_111:
        v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v62, v67, v68, v69, v42);
        goto LABEL_112;
      }

      if (v62 >= 0x80)
      {
        goto LABEL_525;
      }

      goto LABEL_80;
    case 8:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v39 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v39;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v42 = v41;
      v43 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(v15, v43) >= 0x80)
        {
          goto LABEL_525;
        }

        goto LABEL_80;
      }

      v70 = v15;
      v71 = a4;
      LOBYTE(v72) = 0;
      goto LABEL_109;
    case 9:
      v278 = 0;
      v279 = -1;
      v280 = 32;
      v281 = 0;
      v282 = 0;
      if (v9 != 58)
      {
        goto LABEL_117;
      }

      v36 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v278, a3, 63);
      if (BYTE1(v278) - 13 < 6)
      {
        if (v279 != -1 || SWORD1(v278) <= -1)
        {
          v38 = v279;
        }

        else
        {
          v38 = 6;
        }

        v279 = v38;
LABEL_116:
        *a3 = v36;
LABEL_117:
        v79 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v278, a4);
        v80 = v78;
        v81 = v16 << 8;
        v82 = v13 | (v16 << 8);
        if ((v13 | (v16 << 8) & 0x7FFFFFFF) < 0x7F800000)
        {
          if (v78 == -1)
          {
            v83 = 149;
          }

          else
          {
            v83 = v78;
          }

          v290.__r_.__value_.__r.__words[0] = v83;
          if (v83 < 150)
          {
            v84 = v83 + 45;
            v290.__r_.__value_.__l.__size_ = v84;
            if ((v83 + 45) >= 0x101)
            {
              operator new();
            }
          }

          else
          {
            LODWORD(v290.__r_.__value_.__l.__data_) = 149;
            HIDWORD(v290.__r_.__value_.__r.__words[0]) = v83 - 149;
            v84 = 194;
            v290.__r_.__value_.__l.__size_ = 194;
            v83 = 149;
          }

          *v274 = v79;
          v85 = BYTE1(v79);
          v290.__r_.__value_.__r.__words[2] = &v291;
          v276 = v79;
          if ((v81 & 0x80000000) != 0)
          {
            v88 = 45;
          }

          else
          {
            v86 = (v79 >> 3) & 3;
            if (v86 == 2)
            {
              v88 = 43;
            }

            else
            {
              v87 = &v291;
              if (v86 != 3)
              {
                goto LABEL_132;
              }

              v88 = 32;
            }
          }

          v291 = v88;
          v87 = v292;
LABEL_132:
          v89 = fabsf(*&v82);
          if (BYTE1(v79) > 0xEu)
          {
            if (BYTE1(v79) - 15 < 2)
            {
              v286 = v87;
              v90 = MEMORY[0x1CCA849D0](v87, &v292[v84 - 1], 2, v83, v89);
              __src = v90;
              *v289 = v90;
              if (v83)
              {
                v91 = v83 + 1;
              }

              else
              {
                v91 = 0;
              }

              v92 = &v90[-v91];
              goto LABEL_142;
            }

            if (BYTE1(v79) == 17)
            {
LABEL_148:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v286, &v290, v83, v87);
              goto LABEL_300;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v286, &v290, v83, v87);
            v93 = __src;
            if (__src != *v289)
            {
              goto LABEL_265;
            }
          }

          else
          {
            if (BYTE1(v79) > 0xBu)
            {
              if (BYTE1(v79) == 12)
              {
                if ((v78 & 0x80000000) != 0)
                {
                  v142 = -1;
                }

                else
                {
                  v142 = v83;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v286, v84, &v291, v142, v87);
                v143 = v286;
                v93 = __src;
                while (v143 != v93)
                {
                  v144 = *v143;
                  if ((v144 - 97) < 6)
                  {
                    LOBYTE(v144) = v144 - 32;
                  }

                  *v143++ = v144;
                }

                v145 = 80;
                goto LABEL_299;
              }

              if (BYTE1(v79) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v286, v84, &v291, v83, v87);
                goto LABEL_300;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v286, v84, &v291, v83, v87);
              v93 = __src;
LABEL_265:
              v145 = 69;
LABEL_299:
              *v93 = v145;
              goto LABEL_300;
            }

            if (!BYTE1(v79))
            {
              if ((v78 & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              v286 = v87;
              v248 = std::to_chars(v87, &v292[v84 - 1], &v291, v89);
              v249 = v248;
              *v289 = v248;
              v250 = v248 - v87;
              if (v248 - v87 < 4)
              {
LABEL_483:
                v252 = v248;
              }

              else
              {
                if (v250 >= 6)
                {
                  v250 = 6;
                }

                v251 = -v250;
                while (*(v248 + v251) != 101)
                {
                  if (++v251 == -3)
                  {
                    goto LABEL_483;
                  }
                }

                v252 = (v248 + v251);
              }

              __src = v252;
              v263 = memchr(v87 + 1, 46, v252 - (v87 + 1));
              if (v263)
              {
                v92 = v263;
              }

              else
              {
                v92 = v252;
              }

              if (v92 == v252)
              {
                v92 = v249;
              }

LABEL_142:
              v287 = v92;
              goto LABEL_300;
            }

            if ((v78 & 0x80000000) != 0)
            {
              v146 = -1;
            }

            else
            {
              v146 = v83;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v286, v84, &v291, v146, v87);
          }

LABEL_300:
          if ((v276 & 0x20) != 0)
          {
            v157 = v287;
            v158 = *v289;
            if (v287 == *v289)
            {
              **v289 = 46;
              *v289 = ++v158;
              v159 = __src;
              if (__src != v157)
              {
                if (__src + 1 == v157)
                {
                  v166 = *__src;
                  *__src = *(__src + 1);
                  *(v159 + 1) = v166;
                }

                else
                {
                  memmove(&v158[-(v157 - __src)], __src, v157 - __src);
                  *v159 = 46;
                }
              }

              v287 = v159;
              __src = (v159 + 1);
            }

            else
            {
              v159 = v287;
            }

            if ((v85 - 17) <= 1)
            {
              if (v80 <= 1)
              {
                v167 = 1;
              }

              else
              {
                v167 = v80;
              }

              if ((v80 & 0x80000000) != 0)
              {
                v167 = 6;
              }

              v168 = v286 - v159;
              if (__src != v158)
              {
                v168 = -1;
              }

              v169 = v168 + v167;
              v170 = __src + ~v159;
              if (v170 < v169)
              {
                HIDWORD(v290.__r_.__value_.__r.__words[0]) += v169 - v170;
              }
            }
          }

          if ((v276 & 0x40) == 0)
          {
            v171 = *v289;
            v172 = v290.__r_.__value_.__r.__words[2];
            v173 = *v289 - v290.__r_.__value_.__r.__words[2];
            v174 = SHIDWORD(v290.__r_.__value_.__r.__words[0]);
            if ((*v289 - v290.__r_.__value_.__r.__words[2] + SHIDWORD(v290.__r_.__value_.__r.__words[0])) >= *v274 >> 32)
            {
              if (!HIDWORD(v290.__r_.__value_.__r.__words[0]) || (v187 = __src, __src == *v289))
              {
                v22 = *a4;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v290.__r_.__value_.__r.__words[2], *v289 - v290.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v174, 48);
              }

              else
              {
                v22 = *a4;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v290.__r_.__value_.__r.__words[2], __src - v290.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v174, 48);
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v187, v171 - v187);
              }
            }

            else
            {
              v22 = *a4;
              if ((v276 & 7) == 4)
              {
                if (v290.__r_.__value_.__r.__words[2] != v286)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v290.__r_.__value_.__r.__words[2]);
                  ++v172;
                }

                v175 = *v274;
                v176 = v274[0] & 0xB8 | 3;
                v177 = 48;
              }

              else
              {
                v175 = *v274;
                v176 = v274[0];
                v177 = BYTE4(v80);
              }

              v196 = v175 & 0xFFFFFFFFFFFFFF00 | v176;
              v197 = v80 & 0xFFFFFF00FFFFFFFFLL | (v177 << 32);
              if (v174)
              {
                std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v172, v171, v22, v196, v197, v173, __src, v174);
              }

              else
              {
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v172, v171 - v172, v22, v196, v197, v173);
              }
            }

            goto LABEL_416;
          }

          v22 = *a4;
          std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v283, a4);
          v178 = std::locale::use_facet(&v283, MEMORY[0x1E69E5368]);
          (v178->__vftable[1].__on_zero_shared)(&__p);
          v179 = v287;
          v180 = __src;
          v181 = v286;
          v271 = v287;
          v272 = v178;
          if (__src < v287)
          {
            v179 = __src;
          }

          v273 = v179 - v286;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v182 = __p.__r_.__value_.__l.__size_;
            if (!__p.__r_.__value_.__l.__size_)
            {
              goto LABEL_377;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
            v184 = *__p.__r_.__value_.__l.__data_;
            if (v273 <= v184)
            {
              *__p.__r_.__value_.__l.__data_ = 0;
              __p.__r_.__value_.__l.__size_ = 0;
              goto LABEL_377;
            }

            v186 = *__p.__r_.__value_.__l.__data_;
            v183 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&__p.__r_.__value_.__s + 23))
            {
              goto LABEL_377;
            }

            if (v273 <= __p.__r_.__value_.__s.__data_[0])
            {
              __p.__r_.__value_.__s.__data_[0] = 0;
              *(&__p.__r_.__value_.__s + 23) = 0;
              goto LABEL_377;
            }

            v182 = __p.__r_.__value_.__l.__size_;
            v183 = __p.__r_.__value_.__r.__words[0];
            v184 = __p.__r_.__value_.__s.__data_[0];
            p_p = &__p;
            v186 = __p.__r_.__value_.__s.__data_[0];
          }

          memset(&v284, 0, sizeof(v284));
          v188 = (v183 + v182);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v189 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v189 = v188;
          }

          v190 = v273 - v184;
          if (v273 - v184 >= 1)
          {
            v191 = (v189 - 1);
            do
            {
              std::string::push_back(&v284, v186);
              if (p_p == v191)
              {
                v186 = p_p->__r_.__value_.__s.__data_[0];
              }

              else
              {
                v192 = (&p_p->__r_.__value_.__l.__data_ + 1);
                v193 = &p_p->__r_.__value_.__s.__data_[1];
                do
                {
                  v194 = *v193++;
                  v186 = v194;
                  if (v194)
                  {
                    v195 = 1;
                  }

                  else
                  {
                    v195 = v192 == v191;
                  }

                  v192 = v193;
                }

                while (!v195);
                p_p = (v193 - 1);
              }

              v190 -= v186;
            }

            while (v190 > 0);
          }

          std::string::push_back(&v284, v186 + v190);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v284;
LABEL_377:
          v198 = HIDWORD(v80);
          v270 = *v289;
          v199 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v199 = __p.__r_.__value_.__l.__size_;
          }

          v200 = *v289 - v290.__r_.__value_.__r.__words[2] + SHIDWORD(v290.__r_.__value_.__r.__words[0]) + v199 - (v199 != 0);
          v201 = v276 & 7;
          v202 = (*v274 >> 32) - v200;
          if (*v274 >> 32 > v200)
          {
            if (v201 == 4)
            {
              v203 = 48;
            }

            else
            {
              v203 = v198;
            }

            if (v201 == 4)
            {
              v204 = 3;
            }

            else
            {
              v204 = v276 & 7;
            }

            if (v204 > 1)
            {
              if (v204 != 3)
              {
                *v275 = v202 - (v202 >> 1);
                v202 >>= 1;
                goto LABEL_393;
              }
            }

            else if (v204)
            {
              *v275 = v202;
              v202 = 0;
LABEL_393:
              if (v201 == 4 && v181 != v290.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, *v290.__r_.__value_.__r.__words[2]);
              }

              v205 = v198 & 0xFFFFFF00 | v203;
              std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v22, v202, v205);
              if (v201 != 4 && v181 != v290.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, *v290.__r_.__value_.__r.__words[2]);
              }

              v277 = v180;
              v206 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v206 = __p.__r_.__value_.__l.__size_;
                if (__p.__r_.__value_.__l.__size_)
                {
                  v207 = __p.__r_.__value_.__r.__words[0];
LABEL_404:
                  v208 = v207 + v206;
                  v209 = (v272->__vftable[1].~facet_0)(v272);
                  v210 = &v207->__r_.__value_.__s.__data_[1];
                  for (i = v208; ; v208 = i)
                  {
                    v212 = *--i;
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v181, v212);
                    if (v208 == v210)
                    {
                      break;
                    }

                    v181 += *i;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, v209);
                  }

LABEL_408:
                  v213 = v270;
                  if (v271 == v270)
                  {
                    v213 = v271;
                    v215 = v277;
                  }

                  else
                  {
                    v214 = (v272->__vftable[1].~facet)(v272);
                    v215 = v277;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, v214);
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, (v271 + 1), &v277[-v271 - 1]);
                    std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, SHIDWORD(v290.__r_.__value_.__r.__words[0]), 48);
                  }

                  if (v215 != v213)
                  {
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v215, v213 - v215);
                  }

                  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v22, *v275, v205);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v283);
LABEL_416:
                  if (v290.__r_.__value_.__l.__size_ < 0x101)
                  {
                    goto LABEL_467;
                  }

                  goto LABEL_465;
                }
              }

              else if (*(&__p.__r_.__value_.__s + 23))
              {
                v207 = &__p;
                goto LABEL_404;
              }

              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v181, v273);
              goto LABEL_408;
            }

            *v275 = 0;
            goto LABEL_393;
          }

          *v275 = 0;
          v202 = 0;
          v203 = v198;
          goto LABEL_393;
        }

        v266 = *a4;
        LODWORD(v267) = v81 >> 31;
        v268 = v79;
        v269 = v80;
LABEL_521:
        v21 = std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v266, v268, v269, v267, 0);
LABEL_13:
        v22 = v21;
        goto LABEL_467;
      }

      if (BYTE1(v278) <= 0xCu && ((1 << SBYTE1(v278)) & 0x1801) != 0)
      {
        goto LABEL_116;
      }

      goto LABEL_527;
    case 10:
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_188;
      }

      v63 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, a3, 63);
      if (__p.__r_.__value_.__s.__data_[1] - 13 < 6)
      {
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
        {
          v65 = __p.__r_.__value_.__r.__words[1];
        }

        else
        {
          v65 = 6;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = v65;
        goto LABEL_187;
      }

      if (__p.__r_.__value_.__s.__data_[1] <= 0xCu && ((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) != 0)
      {
LABEL_187:
        *a3 = v63;
LABEL_188:
        v95 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, a4);
        v96 = v111;
        v112 = v13 | (v16 << 8);
        v98 = v14 << 32;
        *&v113 = v112 | (v14 << 32);
        if ((v112 | (v14 << 32) & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
        {
          if (v111 == -1)
          {
            v114 = 1074;
          }

          else
          {
            v114 = v111;
          }

          v290.__r_.__value_.__r.__words[0] = v114;
          if (v114 >= 1075)
          {
            LODWORD(v290.__r_.__value_.__l.__data_) = 1074;
            HIDWORD(v290.__r_.__value_.__r.__words[0]) = v114 - 1074;
            v290.__r_.__value_.__l.__size_ = 1390;
            goto LABEL_195;
          }

          v115 = v114 + 316;
          v290.__r_.__value_.__l.__size_ = v115;
          if ((v114 + 316) >= 0x401)
          {
LABEL_195:
            operator new();
          }

          v116 = v95;
          v290.__r_.__value_.__r.__words[2] = &v291;
          if ((v98 & 0x8000000000000000) != 0)
          {
            v119 = 45;
          }

          else
          {
            v117 = (v95 >> 3) & 3;
            if (v117 == 2)
            {
              v119 = 43;
            }

            else
            {
              v118 = &v291;
              if (v117 != 3)
              {
                goto LABEL_203;
              }

              v119 = 32;
            }
          }

          v291 = v119;
          v118 = v292;
LABEL_203:
          v120 = fabs(v113);
          if (BYTE1(v95) > 0xEu)
          {
            if (BYTE1(v95) - 15 < 2)
            {
              v286 = v118;
              v121 = MEMORY[0x1CCA84970](v118, &v292[v115 - 1], 2, v114, v120);
              __src = v121;
              *v289 = v121;
              if (v114)
              {
                v122 = v114 + 1;
              }

              else
              {
                v122 = 0;
              }

              v123 = &v121[-v122];
              goto LABEL_213;
            }

            if (BYTE1(v95) == 17)
            {
LABEL_220:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v286, &v290, v114, v118);
              goto LABEL_316;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v286, &v290, v114, v118);
            v124 = __src;
            if (__src != *v289)
            {
              goto LABEL_289;
            }
          }

          else
          {
            if (BYTE1(v95) > 0xBu)
            {
              if (BYTE1(v95) == 12)
              {
                if ((v111 & 0x80000000) != 0)
                {
                  v150 = -1;
                }

                else
                {
                  v150 = v114;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v286, v115, &v291, v150, v118);
                v151 = v286;
                v124 = __src;
                while (v151 != v124)
                {
                  v152 = *v151;
                  if ((v152 - 97) < 6)
                  {
                    LOBYTE(v152) = v152 - 32;
                  }

                  *v151++ = v152;
                }

                v154 = 80;
                goto LABEL_315;
              }

              if (BYTE1(v95) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v286, v115, &v291, v114, v118);
                goto LABEL_316;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v286, v115, &v291, v114, v118);
              v124 = __src;
LABEL_289:
              v154 = 69;
LABEL_315:
              *v124 = v154;
              goto LABEL_316;
            }

            if (!BYTE1(v95))
            {
              if ((v111 & 0x80000000) == 0)
              {
                goto LABEL_220;
              }

              v286 = v118;
              v258 = std::to_chars(v118, &v292[v115 - 1], &v291, v120);
              v259 = v258;
              *v289 = v258;
              v260 = v258 - v118;
              if (v258 - v118 < 4)
              {
LABEL_497:
                v262 = v258;
              }

              else
              {
                if (v260 >= 6)
                {
                  v260 = 6;
                }

                v261 = -v260;
                while (*(v258 + v261) != 101)
                {
                  if (++v261 == -3)
                  {
                    goto LABEL_497;
                  }
                }

                v262 = (v258 + v261);
              }

              __src = v262;
              v265 = memchr(v118 + 1, 46, v262 - (v118 + 1));
              if (v265)
              {
                v123 = v265;
              }

              else
              {
                v123 = v262;
              }

              if (v123 == v262)
              {
                v123 = v259;
              }

LABEL_213:
              v287 = v123;
              if ((v95 & 0x20) == 0)
              {
                goto LABEL_457;
              }

              goto LABEL_317;
            }

            if ((v111 & 0x80000000) != 0)
            {
              v156 = -1;
            }

            else
            {
              v156 = v114;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v286, v115, &v291, v156, v118);
          }

LABEL_316:
          if ((v95 & 0x20) == 0)
          {
            goto LABEL_457;
          }

LABEL_317:
          v163 = v287;
          v164 = *v289;
          if (v287 == *v289)
          {
            **v289 = 46;
            *v289 = ++v164;
            v165 = __src;
            if (__src != v163)
            {
              if (__src + 1 == v163)
              {
                v234 = *__src;
                *__src = *(__src + 1);
                *(v165 + 1) = v234;
              }

              else
              {
                memmove(&v164[-(v163 - __src)], __src, v163 - __src);
                *v165 = 46;
              }
            }

            v287 = v165;
            __src = (v165 + 1);
          }

          else
          {
            v165 = v287;
          }

          if (BYTE1(v95) - 17 <= 1)
          {
            if (v96 <= 1)
            {
              v235 = 1;
            }

            else
            {
              v235 = v96;
            }

            if ((v96 & 0x80000000) != 0)
            {
              v235 = 6;
            }

            v236 = v286 - v165;
            if (__src != v164)
            {
              v236 = -1;
            }

            v237 = v236 + v235;
            v238 = __src + ~v165;
            if (v238 < v237)
            {
              HIDWORD(v290.__r_.__value_.__r.__words[0]) += v237 - v238;
            }
          }

LABEL_457:
          if ((v95 & 0x40) == 0)
          {
            v221 = *v289;
            v239 = v95;
            v223 = v290.__r_.__value_.__r.__words[2];
            v224 = *v289 - v290.__r_.__value_.__r.__words[2];
            v225 = SHIDWORD(v290.__r_.__value_.__r.__words[0]);
            if ((*v289 - v290.__r_.__value_.__r.__words[2] + SHIDWORD(v290.__r_.__value_.__r.__words[0])) < v239 >> 32)
            {
              v240 = v116;
              v241 = v96;
              v242 = v239;
              v22 = *a4;
              if ((v240 & 7) == 4)
              {
                if (v290.__r_.__value_.__r.__words[2] != v286)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v290.__r_.__value_.__r.__words[2]);
                  ++v223;
                }

                v243 = v242 & 0xB8 | 3;
                v244 = 48;
              }

              else
              {
                v243 = v239;
                v244 = BYTE4(v241);
              }

              v232 = v242 & 0xFFFFFFFFFFFFFF00 | v243;
              v233 = v241 & 0xFFFFFF00FFFFFFFFLL | (v244 << 32);
              if (!v225)
              {
LABEL_476:
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v223, v221 - v223, v22, v232, v233, v224);
LABEL_464:
                if (v290.__r_.__value_.__l.__size_ < 0x401)
                {
LABEL_467:
                  *a4 = v22;
                  goto LABEL_468;
                }

LABEL_465:
                v134 = v290.__r_.__value_.__r.__words[2];
LABEL_466:
                operator delete(v134);
                goto LABEL_467;
              }

LABEL_443:
              std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v223, v221, v22, v232, v233, v224, __src, v225);
              goto LABEL_464;
            }

            if (!HIDWORD(v290.__r_.__value_.__r.__words[0]))
            {
              goto LABEL_473;
            }

            v231 = __src;
            if (__src == *v289)
            {
              goto LABEL_473;
            }

            goto LABEL_439;
          }

          goto LABEL_463;
        }

LABEL_519:
        v266 = *a4;
        v267 = v98 >> 63;
        v268 = v95;
        v269 = v96;
        goto LABEL_521;
      }

      goto LABEL_527;
    case 11:
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_152;
      }

      v57 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, a3, 63);
      if (__p.__r_.__value_.__s.__data_[1] - 13 >= 6)
      {
        if (__p.__r_.__value_.__s.__data_[1] > 0xCu || ((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) == 0)
        {
LABEL_527:
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
        }
      }

      else
      {
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
        {
          v59 = __p.__r_.__value_.__r.__words[1];
        }

        else
        {
          v59 = 6;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = v59;
      }

      *a3 = v57;
LABEL_152:
      v95 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, a4);
      v96 = v94;
      v97 = v13 | (v16 << 8);
      v98 = v14 << 32;
      *&v99 = v97 | (v14 << 32);
      if ((v97 | (v14 << 32) & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
      {
        goto LABEL_519;
      }

      if (v94 == -1)
      {
        v100 = 1074;
      }

      else
      {
        v100 = v94;
      }

      v290.__r_.__value_.__r.__words[0] = v100;
      if (v100 >= 1075)
      {
        LODWORD(v290.__r_.__value_.__l.__data_) = 1074;
        HIDWORD(v290.__r_.__value_.__r.__words[0]) = v100 - 1074;
        v290.__r_.__value_.__l.__size_ = 1390;
        goto LABEL_159;
      }

      v101 = v100 + 316;
      v290.__r_.__value_.__l.__size_ = v101;
      if ((v100 + 316) >= 0x401)
      {
LABEL_159:
        operator new();
      }

      v102 = v95;
      v290.__r_.__value_.__r.__words[2] = &v291;
      if ((v98 & 0x8000000000000000) != 0)
      {
        v105 = 45;
      }

      else
      {
        v103 = (v95 >> 3) & 3;
        if (v103 == 2)
        {
          v105 = 43;
        }

        else
        {
          v104 = &v291;
          if (v103 != 3)
          {
            goto LABEL_167;
          }

          v105 = 32;
        }
      }

      v291 = v105;
      v104 = v292;
LABEL_167:
      v106 = fabs(v99);
      if (BYTE1(v95) > 0xEu)
      {
        if (BYTE1(v95) - 15 < 2)
        {
          v286 = v104;
          v107 = MEMORY[0x1CCA849A0](v104, &v292[v101 - 1], 2, v100, v106);
          __src = v107;
          *v289 = v107;
          if (v100)
          {
            v108 = v100 + 1;
          }

          else
          {
            v108 = 0;
          }

          v109 = &v107[-v108];
          goto LABEL_177;
        }

        if (BYTE1(v95) == 17)
        {
LABEL_184:
          std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v286, &v290, v100, v104);
          goto LABEL_308;
        }

        std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v286, &v290, v100, v104);
        v110 = __src;
        if (__src != *v289)
        {
          goto LABEL_287;
        }
      }

      else
      {
        if (BYTE1(v95) > 0xBu)
        {
          if (BYTE1(v95) == 12)
          {
            if ((v94 & 0x80000000) != 0)
            {
              v147 = -1;
            }

            else
            {
              v147 = v100;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v286, v101, &v291, v147, v104);
            v148 = v286;
            v110 = __src;
            while (v148 != v110)
            {
              v149 = *v148;
              if ((v149 - 97) < 6)
              {
                LOBYTE(v149) = v149 - 32;
              }

              *v148++ = v149;
            }

            v153 = 80;
            goto LABEL_307;
          }

          if (BYTE1(v95) == 13)
          {
            std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v286, v101, &v291, v100, v104);
            goto LABEL_308;
          }

          std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v286, v101, &v291, v100, v104);
          v110 = __src;
LABEL_287:
          v153 = 69;
LABEL_307:
          *v110 = v153;
          goto LABEL_308;
        }

        if (!BYTE1(v95))
        {
          if ((v94 & 0x80000000) == 0)
          {
            goto LABEL_184;
          }

          v286 = v104;
          v253 = std::to_chars(v104, &v292[v101 - 1], &v291, v106);
          v254 = v253;
          *v289 = v253;
          v255 = v253 - v104;
          if (v253 - v104 < 4)
          {
LABEL_490:
            v257 = v253;
          }

          else
          {
            if (v255 >= 6)
            {
              v255 = 6;
            }

            v256 = -v255;
            while (*(v253 + v256) != 101)
            {
              if (++v256 == -3)
              {
                goto LABEL_490;
              }
            }

            v257 = (v253 + v256);
          }

          __src = v257;
          v264 = memchr(v104 + 1, 46, v257 - (v104 + 1));
          if (v264)
          {
            v109 = v264;
          }

          else
          {
            v109 = v257;
          }

          if (v109 == v257)
          {
            v109 = v254;
          }

LABEL_177:
          v287 = v109;
          if ((v95 & 0x20) == 0)
          {
            goto LABEL_430;
          }

          goto LABEL_309;
        }

        if ((v94 & 0x80000000) != 0)
        {
          v155 = -1;
        }

        else
        {
          v155 = v100;
        }

        std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v286, v101, &v291, v155, v104);
      }

LABEL_308:
      if ((v95 & 0x20) == 0)
      {
        goto LABEL_430;
      }

LABEL_309:
      v160 = v287;
      v161 = *v289;
      if (v287 == *v289)
      {
        **v289 = 46;
        *v289 = ++v161;
        v162 = __src;
        if (__src != v160)
        {
          if (__src + 1 == v160)
          {
            v216 = *__src;
            *__src = *(__src + 1);
            *(v162 + 1) = v216;
          }

          else
          {
            memmove(&v161[-(v160 - __src)], __src, v160 - __src);
            *v162 = 46;
          }
        }

        v287 = v162;
        __src = (v162 + 1);
      }

      else
      {
        v162 = v287;
      }

      if (BYTE1(v95) - 17 <= 1)
      {
        if (v96 <= 1)
        {
          v217 = 1;
        }

        else
        {
          v217 = v96;
        }

        if ((v96 & 0x80000000) != 0)
        {
          v217 = 6;
        }

        v218 = v286 - v162;
        if (__src != v161)
        {
          v218 = -1;
        }

        v219 = v218 + v217;
        v220 = __src + ~v162;
        if (v220 < v219)
        {
          HIDWORD(v290.__r_.__value_.__r.__words[0]) += v219 - v220;
        }
      }

LABEL_430:
      if ((v95 & 0x40) == 0)
      {
        v221 = *v289;
        v222 = v95;
        v223 = v290.__r_.__value_.__r.__words[2];
        v224 = *v289 - v290.__r_.__value_.__r.__words[2];
        v225 = SHIDWORD(v290.__r_.__value_.__r.__words[0]);
        if ((*v289 - v290.__r_.__value_.__r.__words[2] + SHIDWORD(v290.__r_.__value_.__r.__words[0])) < v222 >> 32)
        {
          v226 = v102;
          v227 = v96;
          v228 = v222;
          v22 = *a4;
          if ((v226 & 7) == 4)
          {
            if (v290.__r_.__value_.__r.__words[2] != v286)
            {
              std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v290.__r_.__value_.__r.__words[2]);
              ++v223;
            }

            v229 = v228 & 0xB8 | 3;
            v230 = 48;
          }

          else
          {
            v229 = v222;
            v230 = BYTE4(v227);
          }

          v232 = v228 & 0xFFFFFFFFFFFFFF00 | v229;
          v233 = v227 & 0xFFFFFF00FFFFFFFFLL | (v230 << 32);
          if (!v225)
          {
            goto LABEL_476;
          }

          goto LABEL_443;
        }

        if (!HIDWORD(v290.__r_.__value_.__r.__words[0]) || (v231 = __src, __src == *v289))
        {
LABEL_473:
          v22 = *a4;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v290.__r_.__value_.__r.__words[2], *v289 - v290.__r_.__value_.__r.__words[2]);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v225, 48);
          goto LABEL_464;
        }

LABEL_439:
        v22 = *a4;
        std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v290.__r_.__value_.__r.__words[2], __src - v290.__r_.__value_.__r.__words[2]);
        std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v225, 48);
        std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v231, v221 - v231);
        goto LABEL_464;
      }

LABEL_463:
      v22 = *a4;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v284, a4);
      std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v22, &v290, &v286, &v284, v95, v96);
      std::locale::~locale(&v284);
      goto LABEL_464;
    case 12:
      LODWORD(v290.__r_.__value_.__l.__data_) = 1;
      *(v290.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v290.__r_.__value_.__s.__data_[12] = 32;
      *(&v290.__r_.__value_.__r.__words[1] + 5) = 0;
      v290.__r_.__value_.__s.__data_[15] = 0;
      if (v9 == 58)
      {
        *a3 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3);
      }

      v66 = strlen((v13 | (v16 << 8) | (v14 << 32)));
      v29 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, (v13 | (v16 << 8) | (v14 << 32)), v66, a4);
      goto LABEL_95;
    case 13:
      LODWORD(v290.__r_.__value_.__l.__data_) = 1;
      *(v290.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v290.__r_.__value_.__s.__data_[12] = 32;
      *(&v290.__r_.__value_.__r.__words[1] + 5) = 0;
      v290.__r_.__value_.__s.__data_[15] = 0;
      if (v9 == 58)
      {
        *a3 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3);
      }

      v29 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, (v13 | (v16 << 8) | (v14 << 32)), v15, a4);
      goto LABEL_95;
    case 14:
      v286 = 0;
      v287 = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v23 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v286, a3, 36);
        if (BYTE1(v286) - 8 >= 2 && BYTE1(v286))
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
        }

        *a3 = v23;
      }

      v25 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
      v26 = v13 | (v16 << 8) | (v14 << 32);
      v27 = v25 & 0xFF00;
      v28 = v25 & 0xFFFFFFFFFFFF00DFLL;
      if (v27 == 2304)
      {
        v29 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v26, a4, v28 | 0x720, v24, &v290, &v290.__r_.__value_.__r.__words[2] + 3, "0X", 0x10u);
      }

      else
      {
        v29 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v26, a4, v28 | 0x620, v24, &v290, &v290.__r_.__value_.__r.__words[2] + 3, "0x", 0x10u);
      }

LABEL_95:
      *a4 = v29;
      goto LABEL_468;
    case 15:
      (v15)(a3, a4, v13 | (v16 << 8) | (v14 << 32));
      goto LABEL_468;
    default:
      goto LABEL_524;
  }
}

void sub_1C91C5098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, std::locale a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, unint64_t a35, void *__p)
{
  if (a35 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format::__output_buffer<char>::push_back[abi:ne200100](uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = *(result + 16);
    *(result + 16) = v6 + 1;
    *(v5 + v6) = a2;
    if (*(result + 16) == *(result + 8))
    {
      return (*(result + 24))(result, 2);
    }
  }

  return result;
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *result;
  if (v4 == 125 || v4 == 58)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      if (v6 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 2;
    }

    ++*(a3 + 24);
  }

  else if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
LABEL_13:
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    ++result;
  }

  else
  {
    if ((v4 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    result = std::__format::__parse_number[abi:ne200100]<char const*>(result, a2);
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v25[0] = *a2;
  v25[1] = v3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v25) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v9 = v25[0];
  if (v25[0] >= v3)
  {
    goto LABEL_9;
  }

  v10 = *v25[0];
  switch(v10)
  {
    case '<':
      v11 = 1;
LABEL_18:
      *a1 = *a1 & 0xF8 | v11;
      v13 = v9 - v4;
      if (v9 - v4 == 1)
      {
        if (*v4 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }
      }

      else if (v9 == v4)
      {
LABEL_23:
        v4 += v13;
        goto LABEL_24;
      }

      memmove((a1 + 12), v4, v13);
      goto LABEL_23;
    case '>':
      v11 = 3;
      goto LABEL_18;
    case '^':
      v11 = 2;
      goto LABEL_18;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v12 = 1;
      break;
    case '>':
      v12 = 3;
      break;
    case '^':
      v12 = 2;
      break;
    default:
      goto LABEL_25;
  }

  *a1 = *a1 & 0xF8 | v12;
LABEL_24:
  if (++v4 == v3)
  {
    return v4;
  }

LABEL_25:
  if (a3)
  {
    v14 = *v4;
    switch(v14)
    {
      case ' ':
        v15 = *a1 | 0x18;
        break;
      case '+':
        v15 = *a1 & 0xE7 | 0x10;
        break;
      case '-':
        v15 = *a1 & 0xE7 | 8;
        break;
      default:
        goto LABEL_33;
    }

    *a1 = v15;
    if (++v4 == v3)
    {
      return v4;
    }
  }

LABEL_33:
  if ((a3 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((a3 & 4) != 0)
  {
    v16 = *v4;
    if (v16 != 48)
    {
      goto LABEL_42;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    if (++v4 == v3)
    {
      return v4;
    }
  }

  v16 = *v4;
LABEL_42:
  if (v16 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 1, v3, a2);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v16 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v16 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_48;
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v4, v3);
  }

  *(a1 + 4) = v17;
  if (v3 == v4)
  {
    return v4;
  }

LABEL_48:
  if ((a3 & 8) == 0 || *v4 != 46)
  {
    goto LABEL_56;
  }

  v18 = v4 + 1;
  if (v4 + 1 == v3)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
  }

  v19 = *v18;
  if (v19 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, v3, a2);
    *(a1 + 2) |= 0x8000u;
    *(a1 + 8) = v20;
  }

  else
  {
    if ((v19 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v18, v3);
    *(a1 + 8) = v21;
    *(a1 + 2) &= ~0x8000u;
  }

  if (v3 != v4)
  {
LABEL_56:
    if ((a3 & 0x10) != 0)
    {
      v22 = *v4;
      if (v22 != 76)
      {
        goto LABEL_60;
      }

      *a1 |= 0x40u;
      if (++v4 == v3)
      {
        return v4;
      }
    }

    v22 = *v4;
LABEL_60:
    if (v22 <= 97)
    {
      if (v22 <= 69)
      {
        if (v22 > 65)
        {
          if (v22 == 66)
          {
            v23 = 3;
            goto LABEL_103;
          }

          if (v22 == 69)
          {
            v23 = 14;
            goto LABEL_103;
          }
        }

        else
        {
          if (v22 == 63)
          {
            v23 = 19;
            goto LABEL_103;
          }

          if (v22 == 65)
          {
            v23 = 12;
            goto LABEL_103;
          }
        }
      }

      else if (v22 <= 79)
      {
        if (v22 == 70)
        {
          v23 = 16;
          goto LABEL_103;
        }

        if (v22 == 71)
        {
          v23 = 18;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'P':
            v23 = 9;
            goto LABEL_103;
          case 'X':
            v23 = 7;
            goto LABEL_103;
          case 'a':
            v23 = 11;
LABEL_103:
            *(a1 + 1) = v23;
            ++v4;
            break;
        }
      }
    }

    else
    {
      if (v22 <= 102)
      {
        if (v22 <= 99)
        {
          if (v22 == 98)
          {
            v23 = 2;
          }

          else
          {
            v23 = 10;
          }
        }

        else if (v22 == 100)
        {
          v23 = 5;
        }

        else if (v22 == 101)
        {
          v23 = 13;
        }

        else
        {
          v23 = 15;
        }

        goto LABEL_103;
      }

      if (v22 <= 111)
      {
        if (v22 == 103)
        {
          v23 = 17;
          goto LABEL_103;
        }

        if (v22 == 111)
        {
          v23 = 4;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'p':
            v23 = 8;
            goto LABEL_103;
          case 's':
            v23 = 1;
            goto LABEL_103;
          case 'x':
            v23 = 6;
            goto LABEL_103;
        }
      }
    }

    if (v4 != v3 && *v4 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
    }
  }

  return v4;
}

uint64_t std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(uint64_t result)
{
  v1 = *(result + 1);
  if ((v1 - 2) >= 6 && v1 != 0)
  {
    if (v1 != 10)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
    }

    v3 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, "an integer");
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  std::__throw_format_error[abi:ne200100](v7);
}

void sub_1C91C589C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

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

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  *&v26[23] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) != 0)
  {
    v9 = *(a1 + 1);
    v10 = a2[1];
    if (v10 <= v9)
    {
      LOBYTE(v12) = 0;
    }

    else if (v10 > 0xC)
    {
      v13 = a2[2] + 32 * v9;
      v2 = *v13;
      v9 = *(v13 + 8);
      LOBYTE(v12) = *(v13 + 16);
      *v22 = *(v13 + 17);
      *&v22[7] = *(v13 + 24);
    }

    else
    {
      v11 = a2[2];
      v12 = (a2[3] >> (5 * v9)) & 0x1FLL;
      v2 = *(v11 + 16 * v9);
      v9 = *(v11 + 16 * v9 + 8);
    }

    v23 = v2;
    v24 = v9;
    v25 = v12;
    *v26 = *v22;
    *&v26[7] = *&v22[7];
    v7 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v23);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
LABEL_3:
      v8 = *(a1 + 2);
      goto LABEL_16;
    }
  }

  v14 = *(a1 + 2);
  v15 = a2[1];
  if (v15 <= v14)
  {
    LOBYTE(v17) = 0;
  }

  else if (v15 > 0xC)
  {
    v18 = a2[2] + 32 * v14;
    v2 = *v18;
    v14 = *(v18 + 8);
    LOBYTE(v17) = *(v18 + 16);
    *v22 = *(v18 + 17);
    *&v22[7] = *(v18 + 24);
  }

  else
  {
    v16 = a2[2];
    v17 = (a2[3] >> (5 * v14)) & 0x1FLL;
    v2 = *(v16 + 16 * v14);
    v14 = *(v16 + 16 * v14 + 8);
  }

  v23 = v2;
  v24 = v14;
  v25 = v17;
  *v26 = *v22;
  *&v26[7] = *&v22[7];
  v8 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v23);
LABEL_16:
  v19 = *MEMORY[0x1E69E9840];
  v20 = v8 | (*(a1 + 3) << 32);
  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 40);
  v4 = *(a1 + 1);
  if (v4 >= 2 && v4 != 19)
  {
    std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2, size_t a3, void *a4)
{
  v6 = *(a1 + 1);
  v7 = *a4;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v10 = v8;
  if (v6 == 19)
  {
    memset(&v15, 0, sizeof(v15));
    std::string::push_back(&v15, 34);
    std::__formatter::__escape[abi:ne200100]<char>(&v15, a2, a3, 1);
    std::string::push_back(&v15, 34);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v13 = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, size, v7, v9, v10);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    return v13;
  }

  else
  {

    return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v7, v9, v8);
  }
}

void sub_1C91C5BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char *a5, uint64_t a6, _BYTE *a7, unsigned int a8)
{
  v8 = a5;
  v12 = (a3 >> 3) & 3;
  if (v12 == 2)
  {
    v14 = 43;
    goto LABEL_5;
  }

  v13 = a5;
  if (v12 == 3)
  {
    v14 = 32;
LABEL_5:
    *a5 = v14;
    v13 = a5 + 1;
  }

  if ((a3 & 0x20) != 0)
  {
    if (a7)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = a7 + 1;
        do
        {
          *v13++ = v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v13, a6, a1, a8);
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_38;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v41, a2);
  v19 = std::locale::use_facet(&v41, MEMORY[0x1E69E5368]);
  v20 = v18 - v13;
  std::locale::~locale(&v41);
  (v19->__vftable[1].__on_zero_shared)(&v41, v19);
  if ((v43 & 0x8000000000000000) != 0)
  {
    locale = v41.__locale_;
    v22 = v42;
    if (v42 && v20 > *v41.__locale_)
    {
      v23 = v41.__locale_;
      goto LABEL_19;
    }

    operator delete(v41.__locale_);
LABEL_38:
    v35 = HIDWORD(a3);
    if ((a3 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v8, v13 - v8);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v13 - v8)
      {
        LODWORD(v37) = v13 - v8;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v8 = v13;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v34 = *a2;
    v38 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18, *a2, v38 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18 - v8, *a2, v38 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v18 - v8);
    }

    return v34;
  }

  if (!v43 || v20 <= SLOBYTE(v41.__locale_))
  {
    goto LABEL_38;
  }

  locale = &v41;
  v23 = v41.__locale_;
  v22 = v42;
LABEL_19:
  v24 = *a2;
  memset(&__p, 0, sizeof(__p));
  v25 = v23 + v22;
  if (v43 >= 0)
  {
    v25 = &v41 + v43;
  }

  v26 = *locale;
  v27 = v20 - *locale;
  if (v27 >= 1)
  {
    v28 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (locale == v28)
      {
        v26 = *locale;
      }

      else
      {
        v29 = locale + 1;
        v30 = locale + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        locale = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v19->__vftable[1].~facet_0)(v19);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v8, v13, v18, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v41.__locale_);
  }

  return v34;
}

void sub_1C91C5F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v4 = a3;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v16 = a1;
      v10 = a2 - a1;
      v11 = a2;
      v12 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      a2 = v11;
      if (v10 >= v12)
      {
        a2 = &v16[v12];
        v13 = (a2 - 1);
        do
        {
          *v13-- = a0123456789abcd[v4 % a4];
          v14 = v4 >= a4;
          v4 /= a4;
        }

        while (v14);
      }

      return a2;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v7 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v7 - (std::__itoa::__pow10_64[v7] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 >= 0x2540BE400)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v4);
  }

  return a2;
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](std::locale *this, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x1CCA848F0](&v6);
    v4 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v4, &v6);
    }

    else
    {
      std::locale::locale(v4, &v6);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v6);
  }

  return std::locale::locale(this, (a2 + 32));
}

void *std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(void *a1, char *__src, unsigned __int8 *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = (*a5 + a5[1]);
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a1, v11, &v11[v29]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, a6);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v19, v15);
}

void *std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = *(v4 + 8) - v10;
    if (v11 < v8 + 1)
    {
      result = (*(v4 + 24))(v4, v8 + 2);
      v10 = *(v4 + 16);
      v11 = *(v4 + 8) - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = *(v4 + 16);
    }

    v10 += v12;
    *(v4 + 16) = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

void *std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 > a6)
  {
    v10 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v11 = v9 >> 1;
        v9 -= v9 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v11 = 0;
LABEL_9:
      v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v12, __src, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v9, v10);
      return a3;
    }

    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  return a3;
}

void *std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v8 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    v9 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v10 = v8 >> 1;
        v8 -= v8 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v10 = 0;
LABEL_9:
      v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v10, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v11, a1, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v8, v9);
      return a3;
    }

    v10 = (a4 >> 32) - (a2 - a1);
    v8 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a3, a1, a2);
  return a3;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2;
  v6 = *(result + 32);
  if (v6)
  {
    v8 = *v6;
    v7 = v6[1];
    if (*v6 - v7 >= v5)
    {
      v9 = a3 - a2;
    }

    else
    {
      v9 = *v6 - v7;
    }

    v6[1] = v7 + v5;
    if (v8 <= v7 || v9 == 0)
    {
      return result;
    }
  }

  else
  {
    v9 = a3 - a2;
  }

  v11 = *(result + 16);
  do
  {
    v12 = *(v4 + 8) - v11;
    if (v12 < v9 + 1)
    {
      result = (*(v4 + 24))(v4, v9 + 2);
      v11 = *(v4 + 16);
      v12 = *(v4 + 8) - v11;
    }

    if (v12 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = (*v4 + v11);
      v15 = v13;
      v16 = v3;
      do
      {
        v18 = *v16++;
        v17 = v18;
        v19 = v18 - 32;
        if ((v18 - 97) < 6)
        {
          v17 = v19;
        }

        *v14++ = v17;
        --v15;
      }

      while (v15);
      v11 = *(v4 + 16);
    }

    v3 += v13;
    v11 += v13;
    *(v4 + 16) = v11;
    v20 = v9 > v12;
    v9 -= v13;
  }

  while (v20);
  return result;
}

void *std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:ne200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = *(v5 + 8) - v10;
      if (v11 < v4 + 1)
      {
        result = (*(v5 + 24))(v5, v4 + 2);
        v10 = *(v5 + 16);
        v11 = *(v5 + 8) - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = *(v5 + 16);
      }

      v10 += v12;
      *(v5 + 16) = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

char *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v12 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v12 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v12 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        *(a1 + 3) = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v8 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        *(a1 + 5) = std::__itoa::__digits_base_10[v8 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v8 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v10 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v10 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v10 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v4 = a2 % 0xF4240 % 0x2710;
        *(a1 + 3) = std::__itoa::__digits_base_10[v4 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v4 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v5 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v5];
      v11 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v11 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v11 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v5 | 0x30;
      v6 = a2 % 0x2710;
      *(a1 + 1) = std::__itoa::__digits_base_10[v6 / 0x64u];
      *(a1 + 3) = std::__itoa::__digits_base_10[v6 % 0x64u];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v9 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v9];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v9 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

_WORD *std::__itoa::__append10[abi:ne200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  LOWORD(v2) = v2 % 0x2710;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = 0;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  while (1)
  {
    if (a1 < v4)
    {
      return v3 | 2u;
    }

    if (a1 < v4 * a2)
    {
      return v3 | 3u;
    }

    if (a1 < v5)
    {
      break;
    }

    a1 /= v5;
    v3 += 4;
    if (a1 < a2)
    {
      return v3 | 1u;
    }
  }

  return (v3 + 4);
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);
    std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }

  return a3;
}

unint64_t std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (!a2)
  {
    return result;
  }

  v6 = a3;
  if (!a3)
  {
    return result;
  }

  if (*a1 < 0)
  {
    v8 = a1;
  }

  else
  {
    v7 = 0;
    v8 = &a1[a3 - 1];
    while (1)
    {
      if (a2 - 1 == v7)
      {
        return a2;
      }

      if (a3 - 1 == v7)
      {
        break;
      }

      v9 = a1[++v7];
      if (v9 < 0)
      {
        v6 = a3 - v7 + 1;
        v8 = &a1[v7 - 1];
        goto LABEL_10;
      }
    }

    if ((a1[a3] & 0x80000000) == 0)
    {
      return a3;
    }

    v6 = 1;
  }

LABEL_10:
  v10 = &a1[a2];
  v33 = v8;
  v34 = &a1[a2];
  v11 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v33) & 0x7FFFFFFF;
  v35 = v11;
  v12 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v11);
  v36 = v12;
  v37 = 0;
  v38 = 0;
  if (v12 == 3)
  {
    v13 = 2;
    goto LABEL_16;
  }

  if (v12 == 9)
  {
    v13 = 3;
LABEL_16:
    LODWORD(v37) = v13;
    goto LABEL_17;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](v11))
  {
    v13 = 1;
    goto LABEL_16;
  }

LABEL_17:
  v31 = v8 - a1;
  if (v8 != v10)
  {
    v14 = 0;
    while (1)
    {
      v15 = v11;
      while (1)
      {
        v16 = v33;
        if (v33 == v34)
        {
          break;
        }

        v11 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v33) & 0x7FFFFFFF;
        v17 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v11);
        v18 = v17;
        if (v37 > 1)
        {
          if (v37 == 2)
          {
            if (HIDWORD(v37) == 2)
            {
              if (v17 == 3)
              {
                HIDWORD(v37) = 0;
                goto LABEL_44;
              }
            }

            else if (HIDWORD(v37) == 1)
            {
              if (v17 == 2)
              {
                goto LABEL_44;
              }

              if (v17 == 13)
              {
LABEL_40:
                HIDWORD(v37) = 2;
                goto LABEL_44;
              }
            }

            else
            {
              if (v17 == 13)
              {
                goto LABEL_40;
              }

              if (v17 == 2)
              {
                HIDWORD(v37) = 1;
                goto LABEL_44;
              }
            }

LABEL_45:
            LODWORD(v37) = 0;
            goto LABEL_46;
          }

          LODWORD(v37) = 0;
          if (v17 == 9)
          {
            goto LABEL_44;
          }

LABEL_46:
          v20 = std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](&v35, v11, v18);
          v35 = v11;
          v36 = v18;
          if (v20)
          {
            break;
          }
        }

        else
        {
          if (!v37)
          {
            goto LABEL_46;
          }

          v19 = std::__indic_conjunct_break::__get_property[abi:ne200100](v11);
          if (v19 == 3)
          {
            goto LABEL_45;
          }

          if (!v38)
          {
            if (v19 == 1)
            {
              goto LABEL_44;
            }

            if (v19 == 2)
            {
              v38 = 1;
              goto LABEL_44;
            }

            goto LABEL_45;
          }

          if ((v19 - 1) >= 2)
          {
            v38 = 0;
          }

LABEL_44:
          v35 = v11;
          v36 = v18;
        }
      }

      if (v15 - 262142 < 0xFFFC1102)
      {
        goto LABEL_57;
      }

      v21 = &std::__width_estimation_table::__entries[abi:ne200100];
      v22 = 107;
      do
      {
        v23 = v22 >> 1;
        v24 = &v21[v22 >> 1];
        v26 = *v24;
        v25 = v24 + 1;
        v22 += ~(v22 >> 1);
        if (((v15 << 14) | 0x3FFF) >= v26)
        {
          v21 = v25;
        }

        else
        {
          v22 = v23;
        }
      }

      while (v22);
      if (v21 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
LABEL_57:
        v28 = 1;
      }

      else
      {
        v27 = (*(v21 - 1) & 0x3FFF) + (*(v21 - 1) >> 14) >= v15;
        v28 = 1;
        if (v27)
        {
          v28 = 2;
        }
      }

      v29 = v14 + v28;
      if (a4 || v29 <= v6)
      {
        v30 = v16 == v10 || v29 > v6;
        v14 = v29;
        if (!v30)
        {
          continue;
        }
      }

      return v31 + v14;
    }
  }

  v14 = 0;
  return v31 + v14;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

LABEL_35:
    v5 = 2147549181;
    *a1 = v1 + 1;
    return v5;
  }

  if (v2 == 3)
  {
    if (a1[1] - v1 < 3)
    {
      goto LABEL_35;
    }

    v13 = 1;
    do
    {
      v14 = v1[v13] & 0xC0;
    }

    while (v14 == 128 && v13++ != 2);
    if (v14 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v16 = *v1 & 0xF;
    *a1 = v1 + 2;
    v17 = (v16 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    if (v17 >= 0x800)
    {
      v18 = v17 | v1[2] & 0x3F;
      if ((v17 & 0xF800) == 0xD800)
      {
        return 2147549181;
      }

      else
      {
        return v18;
      }
    }
  }

  else
  {
    if (v2 != 4 || a1[1] - v1 < 4)
    {
      goto LABEL_35;
    }

    v6 = 1;
    do
    {
      v7 = v1[v6] & 0xC0;
    }

    while (v7 == 128 && v6++ != 3);
    if (v7 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v9 = *v1 & 7;
    *a1 = v1 + 2;
    v10 = (v9 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    v11 = v1[2];
    *a1 = v1 + 4;
    if (v10 >= 0x400)
    {
      v12 = v1[3] & 0x3F | ((v10 | v11 & 0x3F) << 6);
      if (v10 >> 10 >= 0x11)
      {
        return 2147549181;
      }

      else
      {
        return v12;
      }
    }
  }

  return v5;
}

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

void std::__formatter::__escape[abi:ne200100]<char>(std::string *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v23 = a2;
  v24 = &a2[a3];
  if (a3)
  {
    v5 = a2;
    v7 = 1;
    do
    {
      v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v23);
      if (v8 < 0)
      {
        v12 = v23;
        while (v5 != v12)
        {
          v13 = *v5++;
          std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, v13, "\\x{");
        }

        goto LABEL_45;
      }

      v9 = v8;
      if (v8 <= 31)
      {
        switch(v8)
        {
          case 9:
            v10 = a1;
            v11 = "\\t";
            goto LABEL_43;
          case 10:
            v10 = a1;
            v11 = "\\n";
            goto LABEL_43;
          case 13:
            v10 = a1;
            v11 = "\\r";
            goto LABEL_43;
        }
      }

      else if (v8 > 38)
      {
        if (v8 == 39)
        {
          v10 = a1;
          if (!a4)
          {
            v11 = "\\'";
            goto LABEL_43;
          }

          v16 = 39;
          goto LABEL_41;
        }

        if (v8 == 92)
        {
          v10 = a1;
          v11 = "\\\";
          goto LABEL_43;
        }
      }

      else
      {
        if (v8 == 32)
        {
          v10 = a1;
          v16 = 32;
LABEL_41:
          std::string::push_back(v10, v16);
          goto LABEL_44;
        }

        if (v8 == 34)
        {
          v10 = a1;
          if (a4 == 1)
          {
            v11 = "\\"";
LABEL_43:
            std::string::append(v10, v11, 2uLL);
            goto LABEL_44;
          }

          v16 = 34;
          goto LABEL_41;
        }
      }

      if ((v8 - 917760) < 0xF0)
      {
        goto LABEL_23;
      }

      if (v8 <= 0x323AF)
      {
        v17 = &std::__escaped_output_table::__entries[abi:ne200100];
        v18 = 711;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[v18 >> 1];
          v22 = *v20;
          v21 = v20 + 1;
          v18 += ~(v18 >> 1);
          if (((v8 << 14) | 0x3FFFu) >= v22)
          {
            v17 = v21;
          }

          else
          {
            v18 = v19;
          }
        }

        while (v18);
        if (v17 == &std::__escaped_output_table::__entries[abi:ne200100] || (*(v17 - 1) & 0x3FFF) + (*(v17 - 1) >> 14) < v8)
        {
LABEL_23:
          if ((v7 & 1) == 0 || std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v8) != 2)
          {
            v14 = v23;
            if (v5 == v23)
            {
              v7 = 0;
            }

            else
            {
              do
              {
                v15 = *v5++;
                std::string::push_back(a1, v15);
                v7 = 0;
              }

              while (v5 != v14);
            }

            goto LABEL_45;
          }
        }
      }

      std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, v9, "\\u{");
LABEL_44:
      v7 = 1;
LABEL_45:
      v5 = v23;
    }

    while (v23 != v24);
  }
}

void std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(std::string *this, unsigned int a2, std::string::value_type *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = (a3 + 1);
    do
    {
      std::string::push_back(this, v5);
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  v8 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(&v12, &v13, a2);
  if (&v12 != v8)
  {
    v9 = v8;
    v10 = &v12;
    do
    {
      std::string::push_back(this, *v10++);
    }

    while (v10 != v9);
  }

  std::string::push_back(this, 125);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v6 = 45;
  }

  else
  {
    v7 = (a2 >> 3) & 3;
    if (v7 == 2)
    {
      v6 = 43;
    }

    else
    {
      if (v7 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v6 = 32;
    }
  }

  p_src = v15;
  __src = v6;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v9 = 6;
  }

  else
  {
    v9 = 6;
    if (BYTE1(a2) != 18)
    {
      v9 = 0;
    }
  }

  v10 = 3;
  if (!a5)
  {
    v10 = 0;
  }

  v11 = &aInfnaninfnan[v9 + v10];
  *p_src = *v11;
  p_src[2] = v11[2];
  if ((a2 & 7) == 4)
  {
    v12 = a2 & 0xF8 | 3;
  }

  else
  {
    v12 = a2;
  }

  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v12, a3, p_src - &__src + 3);
  return a1;
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x1E69E5368]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v49 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_30;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    v16 = *__p.__r_.__value_.__l.__data_;
    if (v49 <= v16)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_30;
    }

    v18 = *__p.__r_.__value_.__l.__data_;
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_30;
    }

    if (v49 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_30;
    }

    size = __p.__r_.__value_.__l.__size_;
    v15 = __p.__r_.__value_.__r.__words[0];
    v16 = __p.__r_.__value_.__s.__data_[0];
    p_p = &__p;
    v18 = __p.__r_.__value_.__s.__data_[0];
  }

  memset(&v50, 0, sizeof(v50));
  v19 = (v15 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v19;
  }

  v21 = v49 - v16;
  if (v49 - v16 >= 1)
  {
    v22 = (v20 - 1);
    do
    {
      std::string::push_back(&v50, v18);
      if (p_p == v22)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v23 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v24 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v25 = *v24++;
          v18 = v25;
          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = v23 == v22;
          }

          v23 = v24;
        }

        while (!v26);
        p_p = (v24 - 1);
      }

      v21 -= v18;
    }

    while (v21 > 0);
  }

  std::string::push_back(&v50, v18 + v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v50;
LABEL_30:
  v27 = HIDWORD(a6);
  v28 = *(a2 + 16);
  v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = __p.__r_.__value_.__l.__size_;
  }

  v30 = a3[3] - v28 + *(a2 + 4) + v29 - (v29 != 0);
  v31 = a5 & 7;
  v32 = (a5 >> 32) - v30;
  if (a5 >> 32 <= v30)
  {
    *v48 = 0;
    v32 = 0;
    v33 = v27;
    goto LABEL_46;
  }

  if (v31 == 4)
  {
    v33 = 48;
  }

  else
  {
    v33 = v27;
  }

  if (v31 == 4)
  {
    v34 = 3;
  }

  else
  {
    v34 = a5 & 7;
  }

  if (v34 > 1)
  {
    if (v34 != 3)
    {
      *v48 = v32 - (v32 >> 1);
      v32 >>= 1;
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (!v34)
  {
LABEL_44:
    *v48 = 0;
    goto LABEL_46;
  }

  *v48 = (a5 >> 32) - v30;
  v32 = 0;
LABEL_46:
  if (v31 == 4 && v13 != v28)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v28);
  }

  v35 = v27 & 0xFFFFFF00 | v33;
  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v32, v35);
  if (v31 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_57;
    }

LABEL_60:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v13, v49);
    goto LABEL_61;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_60;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_57:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, v40);
  }

LABEL_61:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v46, v44 - v46);
  }

  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, *v48, v35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C91C8028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v13 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v14 = (a4 >> 32) - (a6 + a8);
    v13 = 0;
    goto LABEL_7;
  }

  v14 = v13 >> 1;
  v13 -= v13 >> 1;
LABEL_7:
  v15 = HIDWORD(a5);
  v16 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v16, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:ne200100](a3, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, a7, a2 - a7);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, v15);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1CCA849A0](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (*(v6 + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1CCA849A0](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1CCA849A0](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1CCA84970](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (*(v6 + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1CCA84970](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1CCA84970](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1CCA849D0](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (*(v6 + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1CCA849D0](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 5), 112, 3uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1CCA849D0](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int *a1)
{
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_12;
      }

      return result;
    case 4:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_12:
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a1;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_10;
    case 7:
      result = *a1;
      if (result >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    v12 = 2;
    if (BYTE1(a4) == 2)
    {
      v11 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v11 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v16;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, __src, v9, v11, v12);
    goto LABEL_19;
  }

  if (BYTE1(a4) > 5u)
  {
    v12 = 16;
    if (BYTE1(a4) == 6)
    {
      v11 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v11 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v14;
    goto LABEL_18;
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, __src, &v14 + 5, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, __src, v15, v6, 8u);
LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *__src, uint64_t a8, _BYTE *a9, unsigned int a10)
{
  v10 = a8;
  v11 = __src;
  v12 = a5;
  v14 = a2;
  v15 = a1;
  v16 = a4;
  if (a6)
  {
    v17 = 45;
LABEL_7:
    *__src = v17;
    v19 = __src + 1;
    goto LABEL_8;
  }

  v18 = (a4 >> 3) & 3;
  if (v18 == 2)
  {
    v17 = 43;
    goto LABEL_7;
  }

  v19 = __src;
  if (v18 == 3)
  {
    v17 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v20 = *a9;
      if (*a9)
      {
        v21 = a9 + 1;
        do
        {
          *v19++ = v20;
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }
    }
  }

  HIDWORD(v24) = a10 - 2;
  LODWORD(v24) = a10 - 2;
  v23 = v24 >> 1;
  if (v23 != 4)
  {
    if (v23)
    {
      if (v23 == 3)
      {
        v61 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
      }

      else
      {
        if (v23 != 7)
        {
          v62 = a8 - v19;
          v63 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a1, a2, a10);
          if (v62 >= v63)
          {
            v10 = &v19[v63];
            v64 = v10 - 1;
            do
            {
              v65 = __udivti3();
              v66 = __PAIR128__(v14, v15) >= a10;
              *v64-- = a0123456789abcd[v15 - v65 * a10];
              v15 = v65;
              v14 = v67;
            }

            while (v66);
          }

LABEL_17:
          v27 = a3;
          if ((v16 & 0x40) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_38;
        }

        v61 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
      }
    }

    else
    {
      v61 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
    }

    v10 = v61;
    goto LABEL_17;
  }

  v25 = a8 - v19;
  if (!a2)
  {
    v27 = a3;
    if (v25 > 19 || (v28 = (1233 * (64 - __clz(a1 | 1))) >> 12, v25 >= v28 - (std::__itoa::__pow10_64[v28] > a1) + 1))
    {
      if (HIDWORD(a1))
      {
        v32 = v19;
        if (v15 > 0x2540BE3FFLL)
        {
          v32 = std::__itoa::__base_10_u32[abi:ne200100](v19, v15 / 0x2540BE400);
          v15 %= 0x2540BE400uLL;
        }

        v29 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v32, v15);
      }

      else
      {
        v29 = std::__itoa::__base_10_u32[abi:ne200100](v19, a1);
      }

      v10 = v29;
    }

    if ((v16 & 0x40) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_38;
  }

  if (v25 <= 38)
  {
    v26 = (1233 * (128 - __clz(a2))) >> 12;
    if (v25 < v26 - (__PAIR128__(a2, a1) < std::__itoa::__pow10_128[v26]) + 1)
    {
      goto LABEL_17;
    }
  }

  if (__PAIR128__(a2, a1) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *v19 = __udivti3() | 0x30;
    v33 = __udivti3();
    v19[1] = ((1441151881 * v33) >> 57) + 48;
    *(v19 + 1) = std::__itoa::__digits_base_10[v33 % 0x5F5E100 / 0xF4240uLL];
    v34 = v33 % 0x5F5E100 % 0xF4240;
    *(v19 + 2) = std::__itoa::__digits_base_10[v34 / 0x2710uLL];
    LOWORD(v34) = v34 % 0x2710;
    *(v19 + 3) = std::__itoa::__digits_base_10[v34 / 0x64u];
    *(v19 + 4) = std::__itoa::__digits_base_10[v34 % 0x64u];
    v35 = __udivti3();
    v31 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v19 + 5, v35);
    goto LABEL_33;
  }

  v30 = __udivti3();
  if (!HIDWORD(v30))
  {
    v31 = std::__itoa::__base_10_u32[abi:ne200100](v19, v30);
LABEL_33:
    v36 = v31;
    goto LABEL_37;
  }

  v37 = v19;
  if (v30 > 0x2540BE3FFLL)
  {
    v37 = std::__itoa::__base_10_u32[abi:ne200100](v19, v30 / 0x2540BE400);
    v30 %= 0x2540BE400uLL;
  }

  v36 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v37, v30);
LABEL_37:
  v38 = __umodti3();
  *v36 = v38 / 0x2540BE400 / 0x5F5E100 + 48;
  v39 = v38 / 0x2540BE400 % 0x5F5E100;
  *(v36 + 1) = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
  v39 %= 0xF4240u;
  *(v36 + 3) = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
  LOWORD(v39) = v39 % 0x2710;
  *(v36 + 5) = std::__itoa::__digits_base_10[v39 / 0x64u];
  *(v36 + 7) = std::__itoa::__digits_base_10[v39 % 0x64u];
  v10 = std::__itoa::__append10[abi:ne200100]<unsigned long long>((v36 + 9), v38 % 0x2540BE400);
  v12 = a5;
  v27 = a3;
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_64;
  }

LABEL_38:
  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v71, v27);
  v40 = std::locale::use_facet(&v71, MEMORY[0x1E69E5368]);
  v41 = v10 - v19;
  std::locale::~locale(&v71);
  (v40->__vftable[1].__on_zero_shared)(&v71, v40);
  if ((v73 & 0x8000000000000000) != 0)
  {
    locale = v71.__locale_;
    v43 = v72;
    if (v72 && v41 > *v71.__locale_)
    {
      v44 = v71.__locale_;
      goto LABEL_45;
    }

    operator delete(v71.__locale_);
    v27 = a3;
LABEL_64:
    v56 = HIDWORD(a4);
    if ((v16 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v27, v11, v19 - v11);
      v57 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v19 - v11)
      {
        LODWORD(v58) = v19 - v11;
      }

      else
      {
        LODWORD(v58) = HIDWORD(a4);
      }

      v56 = (HIDWORD(a4) - v58);
      LOBYTE(v58) = 48;
      v11 = v19;
    }

    else
    {
      v58 = HIDWORD(v12);
      v57 = a4;
    }

    v55 = *v27;
    v59 = v56 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10, *v27, v59 | a4 & 0xFFFF0000 | v57 | 0x700, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10 - v11, *v27, v59 | a4 & 0xFFFFFF00 | v57, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32), v10 - v11);
    }

    return v55;
  }

  if (!v73 || v41 <= SLOBYTE(v71.__locale_))
  {
    goto LABEL_64;
  }

  locale = &v71;
  v44 = v71.__locale_;
  v43 = v72;
LABEL_45:
  v45 = *a3;
  memset(&v70, 0, sizeof(v70));
  v46 = v44 + v43;
  if (v73 >= 0)
  {
    v46 = &v71 + v73;
  }

  v47 = *locale;
  v48 = v41 - *locale;
  if (v48 >= 1)
  {
    v49 = v46 - 1;
    do
    {
      std::string::push_back(&v70, v47);
      if (locale == v49)
      {
        v47 = *locale;
      }

      else
      {
        v50 = locale + 1;
        v51 = locale + 1;
        do
        {
          v52 = *v51++;
          v47 = v52;
          if (v52)
          {
            v53 = 1;
          }

          else
          {
            v53 = v50 == v49;
          }

          v50 = v51;
        }

        while (!v53);
        locale = v51 - 1;
      }

      v48 -= v47;
    }

    while (v48 > 0);
  }

  std::string::push_back(&v70, v47 + v48);
  v54 = (v40->__vftable[1].~facet_0)(v40);
  v55 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v45, v11, v19, v10, &v70, v54, a4, v12);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v73 < 0)
  {
    operator delete(v71.__locale_);
  }

  return v55;
}

void sub_1C91C91B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::locale a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v9 = a3;
    v11 = a4;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 4;
      v11 = a4 >> 4;
      *(v8 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v8 -= 4;
      v12 = a3 <= 0x10F;
      a3 = v9;
      a4 >>= 4;
    }

    while (!v12);
  }

  v13 = (v8 - 1);
  do
  {
    v14 = v9 & 1;
    v12 = v9 <= 1;
    *(&v15 + 1) = v11;
    *&v15 = v9;
    v9 = v15 >> 1;
    v11 >>= 1;
    *v13-- = a01[v14];
  }

  while (!v12);
  return v7;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 6;
      a4 >>= 6;
      *(v8 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x40);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 7;
    v13 = v9 <= 7;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 3;
    a4 >>= 3;
    *v11-- = a01234567[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 131 - v5;
  if (a2 - a1 < (v6 >> 2))
  {
    return a2;
  }

  v7 = a1 + (v6 >> 2);
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + (v6 >> 2);
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 8;
      a4 >>= 8;
      *(v8 - 2) = std::__itoa::__base_16_lut[a3];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x100);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 0xF;
    v13 = v9 <= 0xF;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 4;
    a4 >>= 4;
    *v11-- = a0123456789abcd_0[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = 0;
  v6 = a3 * a3;
  v7 = a3 * a3 * a3;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v6)
    {
      return v5 | 2u;
    }

    if (__PAIR128__(a2, a1) < v7)
    {
      return v5 | 3u;
    }

    if (__PAIR128__(a2, a1) < v6 * v6)
    {
      break;
    }

    a1 = __udivti3();
    v5 += 4;
    if (__PAIR128__(a2, a1) < a3)
    {
      return v5 | 1u;
    }
  }

  return (v5 + 4);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_40;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v43, a2);
  v21 = std::locale::use_facet(&v43, MEMORY[0x1E69E5368]);
  v22 = v20 - v16;
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    v24 = v44;
    if (v44 && v22 > *v43.__locale_)
    {
      v25 = v43.__locale_;
      goto LABEL_21;
    }

    operator delete(v43.__locale_);
LABEL_40:
    v37 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v38 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v39) = v16 - v9;
      }

      else
      {
        LODWORD(v39) = HIDWORD(a3);
      }

      v37 = (HIDWORD(a3) - v39);
      LOBYTE(v39) = 48;
      v9 = v16;
    }

    else
    {
      v39 = HIDWORD(a4);
      v38 = a3;
    }

    v36 = *a2;
    v40 = v37 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, *a2, v40 | a3 & 0xFFFF0000 | v38 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, *a2, v40 | a3 & 0xFFFFFF00 | v38, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32), v20 - v9);
    }

    return v36;
  }

  if (!v45 || v22 <= SLOBYTE(v43.__locale_))
  {
    goto LABEL_40;
  }

  locale = &v43;
  v25 = v43.__locale_;
  v24 = v44;
LABEL_21:
  v26 = *a2;
  memset(&__p, 0, sizeof(__p));
  v27 = v25 + v24;
  if (v45 >= 0)
  {
    v27 = &v43 + v45;
  }

  v28 = *locale;
  v29 = v22 - *locale;
  if (v29 >= 1)
  {
    v30 = v27 - 1;
    do
    {
      std::string::push_back(&__p, v28);
      if (locale == v30)
      {
        v28 = *locale;
      }

      else
      {
        v31 = locale + 1;
        v32 = locale + 1;
        do
        {
          v33 = *v32++;
          v28 = v33;
          if (v33)
          {
            v34 = 1;
          }

          else
          {
            v34 = v31 == v30;
          }

          v31 = v32;
        }

        while (!v34);
        locale = v32 - 1;
      }

      v29 -= v28;
    }

    while (v29 > 0);
  }

  std::string::push_back(&__p, v28 + v29);
  v35 = (v21->__vftable[1].~facet_0)(v21);
  v36 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v26, v9, v16, v20, &__p, v35, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v36;
}

void sub_1C91C9994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, __src, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, __src, v13, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, __src, v14, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *__src, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a7;
  v10 = __src;
  v14 = a1;
  v15 = a3;
  if (a5)
  {
    v16 = 45;
LABEL_7:
    *__src = v16;
    v18 = __src + 1;
    goto LABEL_8;
  }

  v17 = (a3 >> 3) & 3;
  if (v17 == 2)
  {
    v16 = 43;
    goto LABEL_7;
  }

  v18 = __src;
  if (v17 == 3)
  {
    v16 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v19 = *a8;
      if (*a8)
      {
        v20 = a8 + 1;
        do
        {
          *v18++ = v19;
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }
    }
  }

  HIDWORD(v23) = a9 - 2;
  LODWORD(v23) = a9 - 2;
  v22 = v23 >> 1;
  switch(v22)
  {
    case 4:
      if (a7 - v18 > 9 || (v24 = (1233 * (32 - __clz(a1 | 1))) >> 12, a7 - v18 >= (((__PAIR64__(v24, a1) - std::__itoa::__pow10_32[v24]) >> 32) + 1)))
      {
        v25 = std::__itoa::__base_10_u32[abi:ne200100](v18, a1);
LABEL_17:
        v9 = v25;
      }

      break;
    case 0:
      v25 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 3:
      v25 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 7:
      v25 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    default:
      v47 = a7 - v18;
      v48 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a1, a9);
      if (v47 >= v48)
      {
        v9 = &v18[v48];
        v49 = (v9 - 1);
        do
        {
          *v49-- = a0123456789abcd[v14 - v14 / a9 * a9];
          v50 = v14 >= a9;
          v14 /= a9;
        }

        while (v50);
      }

      break;
  }

  if ((v15 & 0x40) == 0)
  {
    goto LABEL_45;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v52, a2);
  v26 = std::locale::use_facet(&v52, MEMORY[0x1E69E5368]);
  v27 = v9 - v18;
  std::locale::~locale(&v52);
  (v26->__vftable[1].__on_zero_shared)(&v52, v26);
  if ((v54 & 0x8000000000000000) != 0)
  {
    locale = v52.__locale_;
    v29 = v53;
    if (v53 && v27 > *v52.__locale_)
    {
      v30 = v52.__locale_;
      goto LABEL_26;
    }

    operator delete(v52.__locale_);
LABEL_45:
    v42 = HIDWORD(a3);
    if ((v15 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v10, v18 - v10);
      v43 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v18 - v10)
      {
        LODWORD(v44) = v18 - v10;
      }

      else
      {
        LODWORD(v44) = HIDWORD(a3);
      }

      v42 = (HIDWORD(a3) - v44);
      LOBYTE(v44) = 48;
      v10 = v18;
    }

    else
    {
      v44 = HIDWORD(a4);
      v43 = a3;
    }

    v41 = *a2;
    v45 = v42 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v9, *a2, v45 | a3 & 0xFFFF0000 | v43 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v44 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v9 - v10, *a2, v45 | a3 & 0xFFFFFF00 | v43, a4 & 0xFFFFFF00FFFFFFFFLL | (v44 << 32), v9 - v10);
    }

    return v41;
  }

  if (!v54 || v27 <= SLOBYTE(v52.__locale_))
  {
    goto LABEL_45;
  }

  locale = &v52;
  v30 = v52.__locale_;
  v29 = v53;
LABEL_26:
  v31 = *a2;
  memset(&__p, 0, sizeof(__p));
  v32 = v30 + v29;
  if (v54 >= 0)
  {
    v32 = &v52 + v54;
  }

  v33 = *locale;
  v34 = v27 - *locale;
  if (v34 >= 1)
  {
    v35 = v32 - 1;
    do
    {
      std::string::push_back(&__p, v33);
      if (locale == v35)
      {
        v33 = *locale;
      }

      else
      {
        v36 = locale + 1;
        v37 = locale + 1;
        do
        {
          v38 = *v37++;
          v33 = v38;
          if (v38)
          {
            v39 = 1;
          }

          else
          {
            v39 = v36 == v35;
          }

          v36 = v37;
        }

        while (!v39);
        locale = v37 - 1;
      }

      v34 -= v33;
    }

    while (v34 > 0);
  }

  std::string::push_back(&__p, v33 + v34);
  v40 = (v26->__vftable[1].~facet_0)(v26);
  v41 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v31, v10, v18, v9, &__p, v40, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v52.__locale_);
  }

  return v41;
}

void sub_1C91C9F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a2 * a2;
  v5 = v4 * v4;
  while (1)
  {
    if (a1 < v4)
    {
      return v3 | 2u;
    }

    if (a1 < a2 * a2 * a2)
    {
      return v3 | 3u;
    }

    if (a1 < v5)
    {
      break;
    }

    a1 /= v5;
    v3 += 4;
    if (a1 < a2)
    {
      return v3 | 1u;
    }
  }

  return (v3 + 4);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, const char *a2)
{
  if ((*result & 0x18) != 0)
  {
    v2 = "sign";
    goto LABEL_11;
  }

  if ((*result & 0x20) != 0)
  {
    v2 = "alternate form";
    goto LABEL_11;
  }

  if ((*result & 7) == 4)
  {
    v2 = "zero-padding";
    goto LABEL_11;
  }

  if (*(result + 8) != -1)
  {
    v2 = "precision";
LABEL_11:
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a2, v2);
  }

  if (*(result + 1) >= 0x20u)
  {
    std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v15, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v17, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v18, " option", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  v19 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19;
  }

  std::__throw_format_error[abi:ne200100](v14);
}

void sub_1C91CA2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
  }

  v4 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v4 == a2 || *v4 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The argument index is invalid");
  }

  return v4 + 1;
}

unsigned __int8 *std::__format::__parse_number[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_1F48D3470;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    operator new();
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter::Transformer>>>::~__hash_table(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *applesauce::CF::details::at_key<__CFString const*>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryGetValue(theDict, a2);
    }
  }

  return result;
}

uint64_t CA::DSP::AU::DSPGraph::GetLog(CA::DSP::AU::DSPGraph *this)
{
  v1 = 0x1EC392000uLL;
  {
    v1 = 0x1EC392000;
    if (v3)
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      v1 = 0x1EC392000;
    }
  }

  return *(v1 + 3528);
}

const void **CA::DSP::Graph::LoadStripWithResourcePath(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  v6 = CADSPGraphLoadStripWithResourcePath(a2, a3, a4, a5, &v12);
  v7 = v12;
  if (!v6 && !v12)
  {
    v7 = [[CADSPError allocWithZone:?]userInfo:"initWithCode:userInfo:", 1970170734, 0];
    v12 = v7;
  }

  v11 = v7;
  if (v7)
  {
    v11 = 0;
    v10 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v11);
    v9 = 0;
    v12 = 0;
    *a1 = v7;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v12);
    *(a1 + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v9);
  }

  else
  {
    v10 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v11);
    *(a1 + 8) = 1;
  }

  return result;
}

const void **CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}