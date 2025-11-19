void *___ZL44getVCPRequestFrameHeightPropertyKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoProcessingLibrary();
  result = dlsym(v2, "VCPRequestFrameHeightPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestFrameHeightPropertyKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL26VideoProcessingLibraryCorePPc_block_invoke_11533()
{
  result = _sl_dlopen();
  VideoProcessingLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_1A5E27B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *___ZL41getVCPRequestForceCPUPropertyKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoProcessingLibrary();
  result = dlsym(v2, "VCPRequestForceCPUPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestForceCPUPropertyKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A5E2940C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E29888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E29B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E29E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E2F768(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5E2F918(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A5E309EC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A5E31034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, void *a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48)
{
  _Block_object_dispose(&a43, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12041(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5E313E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void apple::vision::ScopeExit::~ScopeExit(apple::vision::ScopeExit *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ152__VNFaceDetectorPrivateRevisionLegacyFaceCore_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler__EUb_ENK3__0clEP7CGImageEUlvE_NS_9allocatorIS5_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ152-[VNFaceDetectorPrivateRevisionLegacyFaceCore internalProcessUsingQualityOfServiceClass:options:regionOfInterest:warningRecorder:error:progressHandler:]EUb_ENK3$_0clEP7CGImageEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZZ152__VNFaceDetectorPrivateRevisionLegacyFaceCore_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler__EUb_ENK3__0clEP7CGImageEUlvE_NS_9allocatorIS5_EEFvvEE7__cloneEPNS0_6__baseIS8_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1972A20;
  a2[1] = v2;
  return result;
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *vision::mod::ImageClassfier_Graph::addParentChildRelation(void *a1, void *a2, void *a3)
{
  vision::mod::ImageClassfier_Graph::addNodeIfNotExists(a1, a2);
  vision::mod::ImageClassfier_Graph::addNodeIfNotExists(a1, a3);
  v6 = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2)[5];
  v7 = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3);
  std::vector<vImage_Buffer *>::push_back[abi:ne200100](v6 + 32, v7 + 5);
  v8 = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3)[5];
  v9 = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2);
  std::vector<vImage_Buffer *>::push_back[abi:ne200100](v8 + 56, v9 + 5);
  v10 = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3);
  v11 = (*(v10[5] + 64) - *(v10[5] + 56)) >> 3;
  result = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3);
  *(result[5] + 24) = v11;
  return result;
}

void *vision::mod::ImageClassfier_Graph::addNodeIfNotExists(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>(a1, a2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>(void *a1, void *a2)
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,BOOL>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::pair<std::string,BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::deque<vision::mod::ImageClassfier_GraphNode *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::ImageClassfier_GraphNode **>>(v13);
    }

    result[4] = v8 - 512;
    v14 = *v5;
    result[1] = v5 + 8;
    result = std::__split_buffer<vision::mod::ImageClassfier_GraphNode **>::emplace_back<vision::mod::ImageClassfier_GraphNode **&>(result, &v14);
    v5 = v3[1];
    v7 = v3[5];
    v9 = v3[4] + v7;
  }

  *(*&v5[(v9 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void sub_1A5E32478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<vision::mod::ImageClassfier_GraphNode **>::emplace_back<vision::mod::ImageClassfier_GraphNode **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::ImageClassfier_GraphNode **>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::ImageClassfier_GraphNode **>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void *std::__hash_table<vision::mod::ImageClassfier_GraphNode *,std::hash<vision::mod::ImageClassfier_GraphNode *>,std::equal_to<vision::mod::ImageClassfier_GraphNode *>,std::allocator<vision::mod::ImageClassfier_GraphNode *>>::find<vision::mod::ImageClassfier_GraphNode *>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= a2)
          {
            v10 %= a2;
          }
        }

        else
        {
          v10 &= a2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

unint64_t **vision::mod::ImageClassfier_GraphNode::filterVectorForValidNodes(unint64_t **result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    v5 = result;
    v6 = *a2;
    do
    {
      result = std::__hash_table<vision::mod::ImageClassfier_GraphNode *,std::hash<vision::mod::ImageClassfier_GraphNode *>,std::equal_to<vision::mod::ImageClassfier_GraphNode *>,std::allocator<vision::mod::ImageClassfier_GraphNode *>>::find<vision::mod::ImageClassfier_GraphNode *>(v6, *(a2 + 8), *v2);
      if (result)
      {
        ++v2;
      }

      else
      {
        v7 = v3 - (v2 + 1);
        if (v3 != v2 + 1)
        {
          result = memmove(v2, v2 + 1, v3 - (v2 + 1));
        }

        --v3;
        v5[1] = (v2 + v7);
        v6 = *a2;
      }
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t vision::mod::ImageClassifier_HierarchicalModel::infer(uint64_t a1, void **a2, void *a3, int a4)
{
  if (a4)
  {
    for (i = a3[2]; i; i = *i)
    {
      if (*(i + 39) < 0)
      {
        std::string::__init_copy_ctor_external(__p, i[2], i[3]);
      }

      else
      {
        *__p = *(i + 1);
        *&v31 = i[4];
      }

      v8 = *a2;
      if (!std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>(*a2, __p) || !std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>((v8 + 40), __p))
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = 3966;
        __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
      }

      if (SBYTE7(v31) < 0)
      {
        operator delete(__p[0]);
      }
    }

    for (j = (*a2)[7]; j; j = *j)
    {
      v10 = *a2;
      __p[0] = j + 2;
      if (!*(std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v10, j + 2)[5] + 84) && !std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a3, j + 2))
      {
        v29 = __cxa_allocate_exception(8uLL);
        *v29 = 3966;
        __cxa_throw(v29, MEMORY[0x1E69E54B0], 0);
      }
    }
  }

  for (k = (*a2)[2]; k; k = *k)
  {
    *(k[5] + 24) = (*(k[5] + 64) - *(k[5] + 56)) >> 3;
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v31 = 0u;
  v32 = 0u;
  *__p = 0u;
  v12 = a3[2];
  if (v12)
  {
    do
    {
      if (*(v12 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, v12[2], v12[3]);
      }

      else
      {
        v34 = *(v12 + 2);
      }

      v13 = *a2;
      if (std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>(*a2, &v34))
      {
        if (std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>(v13 + 5, &v34))
        {
          v35 = &v34;
          v14 = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v13, &v34)[5];
          v33 = v14;
          if (*(v14 + 84) != 2)
          {
            *(v14 + 80) = *(v12 + 10);
            std::deque<vision::mod::ImageClassfier_GraphNode *>::push_back(__p, &v33);
          }
        }
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      v12 = *v12;
    }

    while (v12);
    for (m = *(&v32 + 1); *(&v32 + 1); m = *(&v32 + 1))
    {
      v16 = *(*(__p[1] + ((v32 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v32 & 0x1FF));
      *&v32 = v32 + 1;
      *(&v32 + 1) = m - 1;
      if (v32 >= 0x400)
      {
        operator delete(*__p[1]);
        __p[1] = __p[1] + 8;
        *&v32 = v32 - 512;
      }

      if (!std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>(*a2 + 5, v16))
      {
        v17 = *(v16 + 56);
        v18 = *(v16 + 64);
        v19 = 0.0;
        while (v17 != v18)
        {
          if (!*(*v17 + 84))
          {
            v20 = powf(fminf(*(*v17 + 80), 1.0), 4.0);
            v19 = v19 - logf(1.0 - v20);
          }

          v17 += 8;
        }

        v21 = expf(-v19);
        v22 = powf(1.0 - v21, 0.25);
        *(v16 + 80) = v22;
        v34.__r_.__value_.__r.__words[0] = v16;
        *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v16) + 10) = v22;
      }

      v24 = *(v16 + 32);
      v23 = *(v16 + 40);
      while (v24 != v23)
      {
        v25 = *v24;
        v34.__r_.__value_.__r.__words[0] = v25;
        v26 = *(v25 + 24) - 1;
        *(v25 + 24) = v26;
        if (!v26 && *(v25 + 84) != 2)
        {
          std::deque<vision::mod::ImageClassfier_GraphNode *>::push_back(__p, &v34);
        }

        ++v24;
      }
    }
  }

  return std::deque<std::pair<int,int>>::~deque[abi:ne200100](__p);
}

void sub_1A5E32D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&a9);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v25);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::_readBinSerializerBlob(FILE *a1, _BYTE *a2, float *a3, uint64_t a4)
{
  v18 = a3;
  if (fseek(a1, 0, 0))
  {
    return 8565;
  }

  v16 = 0;
  v13 = 0;
  if (a2[23] >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  result = BinSerializer_fgetBlobInfo(a1, v8, &v17, &v16, &v15, &v14, &v13);
  if (result == 128)
  {
    if (v13 == a4)
    {
      if (v16 != 3)
      {
        return 8565;
      }

      v12 = 0;
      if (a2[23] >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      v10 = BinSerializer_freadInFloat(a1, v9, 0, &v18, &v12);
      if (v12 == a4 && v10 == 128)
      {
        return 8576;
      }

      else
      {
        return 8565;
      }
    }

    else
    {
      return 8564;
    }
  }

  return result;
}

void std::default_delete<std::vector<float>>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1AC556B00);
}

void ImageClassifier_readLinesFromFile(const char *a1, const char *__filename)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v38 = 0uLL;
  v39 = 0;
  v3 = fopen(__filename, "r");
  v4 = v3;
  if (!v3)
  {
    v21 = 0;
LABEL_21:
    v22 = 3957;
LABEL_22:
    free(v21);
    exception = __cxa_allocate_exception(8uLL);
    *exception = v22;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  fseek(v3, 0, 2);
  v5 = MEMORY[0x1AC5576A0](v4);
  fseek(v4, 0, 0);
  v6 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
  v7 = v6;
  if (!v6)
  {
    v21 = 0;
    v22 = 3963;
    goto LABEL_22;
  }

  if (fread(v6, 1uLL, v5, v4) != v5)
  {
    v21 = v7;
    goto LABEL_21;
  }

  v7[v5] = 0;
  fclose(v4);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v25) = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  *(&__dst + v9) = 0;
  v37[6] = 0;
  v10 = MEMORY[0x1E69E5560] + 104;
  v37[0] = MEMORY[0x1E69E5560] + 104;
  v11 = MEMORY[0x1E69E5560] + 64;
  v27 = MEMORY[0x1E69E5560] + 64;
  v12 = MEMORY[0x1E69E54D8];
  v13 = *(MEMORY[0x1E69E54D8] + 24);
  v26[0] = *(MEMORY[0x1E69E54D8] + 16);
  *(v26 + *(v26[0] - 24)) = v13;
  v26[1] = 0;
  v14 = (v26 + *(v26[0] - 24));
  std::ios_base::init(v14, &v28);
  v15 = MEMORY[0x1E69E5560] + 24;
  v14[1].__vftable = 0;
  v14[1].__fmtflags_ = -1;
  v16 = v12[5];
  v27 = v12[4];
  *(&v27 + *(v27 - 24)) = v16;
  v26[0] = v12[1];
  *(v26 + *(v26[0] - 24)) = v12[6];
  v37[0] = v10;
  v26[0] = v15;
  v17 = MEMORY[0x1E69E5538] + 16;
  v27 = v11;
  v28 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1AC5569F0](&v29);
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v18 = MEMORY[0x1E69E5548] + 16;
  v28 = MEMORY[0x1E69E5548] + 16;
  *__p = __dst;
  v19 = v25;
  __dst = 0uLL;
  v25 = 0;
  v34 = v19;
  v35 = 0;
  v36 = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v28);
  while (1)
  {
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v26, &v38, 0xAu);
    if ((*(&v29.__locale_ + *(v26[0] - 24)) & 5) != 0)
    {
      break;
    }

    std::vector<std::string>::push_back[abi:ne200100](a1, &v38);
  }

  v26[0] = *v12;
  v20 = v12[9];
  *(v26 + *(v26[0] - 24)) = v12[8];
  v27 = v20;
  v28 = v18;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  v28 = v17;
  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  MEMORY[0x1AC556A40](v37);
  free(v7);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }
}

void sub_1A5E33778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  MEMORY[0x1AC556A40](a10);
  if (*(v34 - 89) < 0)
  {
    operator delete(*(v34 - 112));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t ImageClassifier_splitAndTrim(uint64_t a1, const std::string *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v39, a2);
  __p = 0;
  v37 = 0;
  v38 = 0;
  v3 = MEMORY[0x1E69E9830];
  while (1)
  {
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v39, &__p, 0x2Cu);
    if ((*(&v41[0].__locale_ + *(v39[0] - 24)) & 5) != 0)
    {
      break;
    }

    v4 = HIBYTE(v38);
    v5 = HIBYTE(v38);
    v6 = __p;
    v7 = v37;
    if (v38 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v38 >= 0)
    {
      v9 = HIBYTE(v38);
    }

    else
    {
      v9 = v37;
    }

    if (v9)
    {
      v10 = (p_p + v9);
      while (1)
      {
        v11 = *p_p;
        if (!((v11 & 0x80000000) != 0 ? __maskrune(v11, 0x4000uLL) : *(v3 + 4 * v11 + 60) & 0x4000))
        {
          break;
        }

        p_p = (p_p + 1);
        if (!--v9)
        {
          p_p = v10;
          break;
        }
      }

      v4 = HIBYTE(v38);
      v6 = __p;
      v7 = v37;
      v5 = HIBYTE(v38);
    }

    v13 = (v6 + v7);
    v14 = (&__p + v4);
    if (v5 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if (v5 >= 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = v6;
    }

    while (v15 != v16)
    {
      v18 = *(v15 - 1);
      v15 = (v15 - 1);
      v17 = v18;
      if ((v18 & 0x80000000) != 0)
      {
        v19 = __maskrune(v17, 0x4000uLL);
      }

      else
      {
        v19 = *(v3 + 4 * v17 + 60) & 0x4000;
      }

      if (!v19)
      {
        v16 = (v15 + 1);
        break;
      }
    }

    if (v16 <= p_p)
    {
      __dst = 0uLL;
      v35 = 0;
    }

    else
    {
      std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__dst, p_p, v16, v16 - p_p);
    }

    v21 = *(a1 + 8);
    v20 = *(a1 + 16);
    if (v21 >= v20)
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a1) >> 3);
      v24 = v23 + 1;
      if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a1) >> 3);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v24;
      }

      v44.__end_cap_.__value_ = a1;
      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v26);
      }

      v27 = 24 * v23;
      *v27 = __dst;
      *(v27 + 16) = v35;
      v35 = 0;
      __dst = 0uLL;
      v22 = 24 * v23 + 24;
      v28 = *(a1 + 8) - *a1;
      v29 = 24 * v23 - v28;
      memcpy((v27 - v28), *a1, v28);
      v30 = *a1;
      *a1 = v29;
      *(a1 + 8) = v22;
      v31 = *(a1 + 16);
      *(a1 + 16) = 0;
      v44.__end_ = v30;
      v44.__end_cap_.__value_ = v31;
      v44.__first_ = v30;
      v44.__begin_ = v30;
      std::__split_buffer<std::string>::~__split_buffer(&v44);
    }

    else
    {
      *v21 = __dst;
      *(v21 + 16) = v35;
      v22 = v21 + 24;
    }

    *(a1 + 8) = v22;
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  v39[0] = *MEMORY[0x1E69E54D8];
  v32 = *(MEMORY[0x1E69E54D8] + 72);
  *(v39 + *(v39[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v39[2] = v32;
  v40 = MEMORY[0x1E69E5548] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v41);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC556A40](&v43);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1, const std::string *a2)
{
  *(a1 + 176) = 0;
  v4 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v5 = a1 + 16;
  v6 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v7 = a1 + 24;
  v8 = MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 24);
  v10 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v10;
  *(a1 + *(v10 - 24)) = v9;
  *(a1 + 8) = 0;
  v11 = (a1 + *(*a1 - 24));
  std::ios_base::init(v11, (a1 + 24));
  v12 = MEMORY[0x1E69E5560] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v13 = v8[5];
  v14 = v8[4];
  *(a1 + 16) = v14;
  *(v5 + *(v14 - 24)) = v13;
  v15 = v8[1];
  *a1 = v15;
  *(a1 + *(v15 - 24)) = v8[6];
  *a1 = v12;
  *(a1 + 128) = v4;
  v16 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v6;
  *(a1 + 24) = v16;
  MEMORY[0x1AC5569F0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::string::operator=((a1 + 88), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v7);
  return a1;
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1AC556880](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    ++v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1A5E340B8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1A5E34078);
  }

  __cxa_rethrow();
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void ImageClassifier_loadLabelsAndBooleanFlags(char *a1, const char *a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  ImageClassifier_readLinesFromFile(v17, a2);
  v3 = *v17;
  v4 = v18;
  if (*v17 != v18)
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      ImageClassifier_splitAndTrim(&v15, v3);
      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

      v7 = (v15 + 24);
      if ((v15 + 24) != v16)
      {
        break;
      }

      v5 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
LABEL_13:
      std::pair<std::string,std::vector<BOOL>>::pair[abi:ne200100]<std::string&,std::vector<BOOL>&,0>(&v10, v15, &v12);
      std::vector<std::pair<std::string,std::vector<BOOL>>>::push_back[abi:ne200100](a1, &v10);
      if (__p)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      if (v12)
      {
        operator delete(v12);
      }

      v10.__r_.__value_.__r.__words[0] = &v15;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
      v6 = 0;
      if (++v3 == v4)
      {
        goto LABEL_20;
      }
    }

    v5 = 0;
    do
    {
      if (!ImageClassifier_isBooleanFlag(v7))
      {
        break;
      }

      ++v5;
      v7 = (v7 + 24);
    }

    while (v7 != v16);
LABEL_8:
    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (v5)
    {
      v8 = 24;
      v9 = v5;
      do
      {
        v10.__r_.__value_.__s.__data_[0] = ImageClassifier_stringToBool(v15 + v8);
        std::vector<BOOL>::push_back(&v12, &v10);
        v8 += 24;
        --v9;
      }

      while (v9);
    }

    goto LABEL_13;
  }

LABEL_20:
  v10.__r_.__value_.__r.__words[0] = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
}

BOOL ImageClassifier_isBooleanFlag(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v1 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v1 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  while (p_p != v1)
  {
    p_p->__r_.__value_.__s.__data_[0] = __tolower(p_p->__r_.__value_.__s.__data_[0]);
    p_p = (p_p + 1);
  }

  v3 = !std::string::compare(&__p, "true") || std::string::compare(&__p, "false") == 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_1A5E345F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::vector<BOOL>>::pair[abi:ne200100]<std::string&,std::vector<BOOL>&,0>(std::string *this, __int128 *a2, uint64_t a3)
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

  std::vector<BOOL>::vector(this[1].__r_.__value_.__r.__words, a3);
  return this;
}

void sub_1A5E34670(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImageClassifier_stringToBool(uint64_t a1)
{
  if (!ImageClassifier_isBooleanFlag(a1))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3957;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v2 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  while (p_p != v2)
  {
    p_p->__r_.__value_.__s.__data_[0] = __tolower(p_p->__r_.__value_.__s.__data_[0]);
    p_p = (p_p + 1);
  }

  v4 = std::string::compare(&__p, "true");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4 == 0;
}

void sub_1A5E3476C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<std::string,std::vector<BOOL>>>::push_back[abi:ne200100](void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 4);
    v8 = v7 + 1;
    if (v7 + 1 > 0x555555555555555)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v8;
    }

    v21 = result;
    if (v10)
    {
      if (v10 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 48 * v7;
    *v11 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    *(v11 + 16) = *(a2 + 2);
    *(v11 + 24) = v12;
    *(v11 + 32) = a2[2];
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v13 = *result;
    v14 = v2[1];
    v15 = 48 * v7 + *v2 - v14;
    v20 = 48 * v7 + 48;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<BOOL>>>,std::pair<std::string,std::vector<BOOL>>*>(v13, v14, v15);
    v16 = *v2;
    *v2 = v15;
    v17 = v2[2];
    v18 = v20;
    *(v2 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v19[0] = v16;
    v19[1] = v16;
    result = std::__split_buffer<std::pair<std::string,std::vector<BOOL>>>::~__split_buffer(v19);
    v6 = v18;
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v3 + 24) = *(a2 + 3);
    *(v3 + 32) = a2[2];
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v6 = v3 + 48;
  }

  v2[1] = v6;
  return result;
}

uint64_t std::pair<std::string,std::vector<BOOL>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<std::string,std::vector<BOOL>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::tuple<std::string,std::vector<BOOL>,float>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<BOOL>>>,std::pair<std::string,std::vector<BOOL>>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = 0;
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 32) = *(v5 + 32);
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      v5 += 48;
      a3 += 48;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<std::tuple<std::string,std::vector<BOOL>,float>,0>(v4);
      v4 += 48;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<std::pair<std::string,std::vector<BOOL>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<std::tuple<std::string,std::vector<BOOL>,float>,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  for (i = this->__end_; i != begin; i = this->__end_)
  {
    this->__end_ = i - 1;
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(&i[-1]);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_1A5E3523C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__12179(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__12180(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1A5E35928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  a11 = &a17;
  std::vector<std::pair<std::string,BOOL>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = &a20;
  std::vector<std::pair<std::string,std::vector<BOOL>>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_1A5E36A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&a35);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v40 - 128);
  a26 = &a13;
  std::vector<std::pair<std::string,BOOL>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::__shared_weak_count::~__shared_weak_count(a12);
  operator delete(v42);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<vision::mod::ImageClassifier_HierarchicalModel>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    for (i = *(v1 + 16); i; i = *i)
    {
      v3 = i[5];
      if (v3)
      {
        v4 = *(v3 + 56);
        if (v4)
        {
          *(v3 + 64) = v4;
          operator delete(v4);
        }

        v5 = *(v3 + 32);
        if (v5)
        {
          *(v3 + 40) = v5;
          operator delete(v5);
        }

        if (*(v3 + 23) < 0)
        {
          operator delete(*v3);
        }

        MEMORY[0x1AC556B00](v3, 0x1092C40FB66ED40);
      }
    }

    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v1 + 40);
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(*(v1 + 16));
    v6 = *v1;
    *v1 = 0;
    if (v6)
    {
      operator delete(v6);
    }

    JUMPOUT(0x1AC556B00);
  }

  return result;
}

void std::__shared_ptr_emplace<vision::mod::ImageClassifier_HierarchicalModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19749D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5E36F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5E37018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void sub_1A5E378B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30, char *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  __p = &a40;
  std::vector<std::unordered_map<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v45 = *(v43 - 184);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E38070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, char *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  __p = &a37;
  std::vector<std::unordered_map<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);

  v40 = *(v38 - 144);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(a1);
}

id _modelBundlePathForClassifierResource(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = [a2 objectForKeyedSubscript:v10];
  if (v12)
  {
    v13 = [v9 pathForResource:v12 ofType:v11];
    if (v13)
    {
      v14 = v13;
      v15 = v14;
    }

    else
    {
      if (a5)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = [v9 resourcePath];
        v18 = [v16 stringWithFormat:@"could not locate %@ in %@", 0, v17];

        *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v18];
      }

      v14 = 0;
      v15 = 0;
    }

    goto LABEL_9;
  }

  if (a5)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"resource key %@ is not available", v10];
    [VNError errorForInternalErrorWithLocalizedDescription:v14];
    *a5 = v15 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:

  return v15;
}

void sub_1A5E39E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1A5E3A36C(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5E3B84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5E3B73CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5E3C4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5E3CB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5E3CABCLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<vision::mod::CamGazePredictorConcrete>::__on_zero_shared(uint64_t a1)
{
  free(*(a1 + 56));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  free(*(a1 + 88));
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  if (!espresso_plan_destroy())
  {
    *(a1 + 144) = 0;
    if (!espresso_context_destroy())
    {
      *(a1 + 136) = 0;
    }
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }
}

void std::__shared_ptr_emplace<vision::mod::CamGazePredictorConcrete>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1972D10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5E414F8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t Geometry2D_normalizePoints(const float **a1, float *a2, const float **a3, float *__C, float *a5, float *a6)
{
  if (!a1)
  {
    return 1917;
  }

  v7 = *a1;
  if (!v7 || !a1[1])
  {
    return 1917;
  }

  v9 = 1917;
  if (!a3)
  {
    return v9;
  }

  v10 = *(a1 + 4);
  if (v10 < 1)
  {
    return v9;
  }

  if (!*a3)
  {
    return 1917;
  }

  if (!a3[1])
  {
    return 1917;
  }

  v11 = *(a3 + 4);
  if (v11 < 1)
  {
    return 1917;
  }

  if (v10 != v11)
  {
    return 1916;
  }

  v16 = a2;
  if (!a2)
  {
    v17 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
    if (!v17)
    {
      return 1915;
    }

    v16 = v17;
    v7 = *a1;
  }

  vDSP_meanv(v7, 1, __C, v10);
  vDSP_meanv(a1[1], 1, a5, v10);
  v18 = -*__C;
  v21 = -*a5;
  v22 = v18;
  MEMORY[0x1AC558770](*a1, 1, &v22, *a3, 1, v10);
  MEMORY[0x1AC558770](a1[1], 1, &v21, a3[1], 1, v10);
  vDSP_vdist(*a3, 1, a3[1], 1, v16, 1, v10);
  __Ca = 0.0;
  vDSP_meanv(v16, 1, &__Ca, v10);
  if (fabsf(__Ca) >= 0.00000011921)
  {
    *a6 = 1.4142 / __Ca;
    MEMORY[0x1AC5587B0](*a3, 1, a6, *a3, 1, v10);
    MEMORY[0x1AC5587B0](a3[1], 1, a6, a3[1], 1, v10);
    v9 = 1920;
    if (!a2)
    {
LABEL_20:
      free(v16);
    }
  }

  else
  {
    v9 = 1901;
    if (!a2)
    {
      goto LABEL_20;
    }
  }

  return v9;
}

void sub_1A5E41B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12646(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void vision::mod::GreedyClustererWithTorso::deserializeStatus(vision::mod::GreedyClustererWithTorso *this, int a2, int a3)
{
  v12 = 0;
  read(a2, &v12, 8uLL);
  std::string::basic_string[abi:ne200100](__b, v12);
  if (v11 >= 0)
  {
    v6 = __b;
  }

  else
  {
    v6 = __b[0];
  }

  read(a2, v6, v12);
  createFullPath(&__p, *(this + 8), __b);
  if (a3)
  {
    cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>::createReadOnlyFromContentsOfFile(&__p);
    v7 = *(this + 8);
    v8 = *(v7 + 80);
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    std::shared_ptr<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const>::reset[abi:ne200100]<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const,0>();
  }

  cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>::createFromContentsOfFile(&__p);
}

void sub_1A5E42BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, 48, __len);
  }

  __b[__len] = 0;
  return __b;
}

std::string *createFullPath(std::string *this, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = (size & 0x80u) != 0;
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
  }

  if (v7->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/");
    v8 = (v15 & 0x80u) == 0 ? __p : __p[0];
    v9 = (v15 & 0x80u) == 0 ? v15 : __p[1];
    std::string::append(this, v8, v9);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  return std::string::append(this, v11, v12);
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = (size & 0x80u) != 0;
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
  }

  if (v7->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/");
    v8 = (v15 & 0x80u) == 0 ? __p : __p[0];
    v9 = (v15 & 0x80u) == 0 ? v15 : __p[1];
    std::string::append(this, v8, v9);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  return std::string::append(this, v11, v12);
}

void sub_1A5E42D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>::createReadOnlyFromContentsOfFile(uint64_t a1)
{
  v10[0] = 24;
  v10[1] = 0;
  v11 = 0;
  if (cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>::isValidHeader(a1, v10))
  {
    cvml::util::MMapFileBackingStore::createByMappingDirectlyFromFile(a1, 0);
  }

  if (*(a1 + 23) >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  VNValidatedLog(4, @"BackedBuffer<BackingStore>::createByMappingDirectlyFromFile -- Invalid header detected for file '%s'", v2, v3, v4, v5, v6, v7, v8);
  return 0;
}

void sub_1A5E42F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  MEMORY[0x1AC556B00](v15, 0x1092C4040FCC1CALL);
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>::createFromContentsOfFile(uint64_t a1)
{
  v33[0] = 24;
  v33[1] = 0;
  v34 = 0;
  if (cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>::isValidHeader(a1, v33))
  {
    v15 = v36;
    v16 = v36;
    if ((v36 & 0x80u) != 0)
    {
      v15 = __p[1];
    }

    if (v15 != 11)
    {
      goto LABEL_11;
    }

    v17 = __p[0];
    if ((v36 & 0x80u) == 0)
    {
      v17 = __p;
    }

    v18 = *v17;
    v19 = *(v17 + 3);
    if (v18 == 0x494C41564E492323 && v19 == 0x232344494C41564ELL)
    {
      v28 = @"MMapFileBackedBuffer::createFromContentsOfFile -- Could not generate a valid path for temporary file";
    }

    else
    {
LABEL_11:
      v21 = objc_autoreleasePoolPush();
      if (*(a1 + 23) >= 0)
      {
        v22 = a1;
      }

      else
      {
        v22 = *a1;
      }

      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22];
      if (v16 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v24];
      v26 = [MEMORY[0x1E696AC08] defaultManager];
      v27 = [v26 fileExistsAtPath:v23];
      if (v27)
      {
        v1 = [v26 copyItemAtPath:v23 toPath:v25 error:0];
      }

      objc_autoreleasePoolPop(v21);
      if (v27 & v1)
      {
        cvml::util::MMapFileBackingStore::createByMappingDirectlyFromFile(__p, 1);
      }

      v28 = @"MMapFileBackedBuffer::createFromContentsOfFile -- Could not create a temporary file for file backed storage";
    }

    VNValidatedLog(4, v28, v9, v10, v11, v12, v13, v14, v31);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    std::shared_ptr<cvml::util::MMapFileBackingStore>::shared_ptr[abi:ne200100]<cvml::util::MMapFileBackingStore,0>(&v32, 0);
  }

  if (*(a1 + 23) >= 0)
  {
    v29 = a1;
  }

  else
  {
    v29 = *a1;
  }

  VNValidatedLog(4, @"BackedBuffer<BackingStore>::createByMappingDirectlyFromFile -- Invalid header detected for file '%s'", v3, v4, v5, v6, v7, v8, v29);
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55E8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
}

void sub_1A5E4329C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  MEMORY[0x1AC556B00](v21, 0x1092C4040FCC1CALL);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E4340C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>>::operator()[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

cvml::util::MMapFileBackingStore *std::default_delete<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>>::operator()[abi:ne200100](cvml::util::MMapFileBackingStore *this)
{
  if (this)
  {
    v1 = this;
    v2 = *(this + 7);
    if (v2)
    {
      operator delete(v2);
    }

    cvml::util::MMapFileBackingStore::~MMapFileBackingStore(v1);

    JUMPOUT(0x1AC556B00);
  }

  return this;
}

uint64_t std::__shared_ptr_pointer<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> *,std::shared_ptr<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>>::__shared_ptr_default_delete<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>,cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>>,std::allocator<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4cvml4util12BackedBufferINS2_20MMapFileBackingStoreEEEE27__shared_ptr_default_deleteIS5_S5_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> *,std::shared_ptr<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>>::__shared_ptr_default_delete<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>,cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>>,std::allocator<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>::isValidHeader(uint64_t a1, _DWORD *a2)
{
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = open(a1, 0);
  v11 = v4;
  if (v4 == -1)
  {
    v23 = @"BackedBuffer<BackingStore>::isValidHeader -- cannot open source file '%s'";
    goto LABEL_14;
  }

  if (read(v4, a2, 0x18uLL) != 24)
  {
    v23 = @"BackedBuffer<BackingStore>::isValidHeader -- corrupt header detected in file '%s'";
    goto LABEL_14;
  }

  v12 = a2[4];
  if (!v12)
  {
    v23 = @"BackedBuffer<BackingStore>::isValidHeader -- inconsistent header detected -- zero element size detected for file '%s'";
LABEL_14:
    if (*(v3 + 23) >= 0)
    {
      v24 = v3;
    }

    else
    {
      v24 = *v3;
    }

    VNValidatedLog(4, v23, v5, v6, v7, v8, v9, v10, v24);
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x1E69E55E8] + 16;
    __cxa_throw(exception, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
  }

  v13 = *a2;
  v14 = (*a2 - 24) / v12;
  if (a2[3] != v14)
  {
    v26 = @"BackedBuffer<BackingStore>::isValidHeader -- inconsistent header detected -- element count does not match max free element capacity for file '%s'";
    goto LABEL_20;
  }

  if (a2[2] > v14)
  {
    v26 = @"BackedBuffer<BackingStore>::isValidHeader -- inconsistent header detected -- free element count exceeds free element capacity for file '%s'";
LABEL_20:
    if (*(v3 + 23) >= 0)
    {
      v27 = v3;
    }

    else
    {
      v27 = *v3;
    }

    VNValidatedLog(4, v26, v5, v6, v7, v8, v9, v10, v27);
    v28 = __cxa_allocate_exception(8uLL);
    *v28 = MEMORY[0x1E69E55E8] + 16;
    __cxa_throw(v28, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
  }

  v15 = lseek(v11, 0, 2);
  if (v15 == -1)
  {
    v29 = @"BackedBuffer<BackingStore>::isValidHeader -- inconsistent header detected -- could not validate file size for file '%s'";
    goto LABEL_26;
  }

  if (4 * v14 + v13 != v15)
  {
    v29 = @"BackedBuffer<BackingStore>::isValidHeader -- inconsistent header detected -- expected file size does not match actual file size for file '%s'";
LABEL_26:
    if (*(v3 + 23) >= 0)
    {
      v30 = v3;
    }

    else
    {
      v30 = *v3;
    }

    VNValidatedLog(4, v29, v16, v17, v18, v19, v20, v21, v30);
    v31 = __cxa_allocate_exception(8uLL);
    *v31 = MEMORY[0x1E69E55E8] + 16;
    __cxa_throw(v31, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
  }

  close(v11);
  return 1;
}

void sub_1A5E43744(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (v2 == -1)
    {
      JUMPOUT(0x1A5E435C4);
    }

    JUMPOUT(0x1A5E435B8);
  }

  _Unwind_Resume(a1);
}

void std::shared_ptr<cvml::util::MMapFileBackingStore>::shared_ptr[abi:ne200100]<cvml::util::MMapFileBackingStore,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1A5E437F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<cvml::util::MMapFileBackingStore>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

cvml::util::MMapFileBackingStore **std::unique_ptr<cvml::util::MMapFileBackingStore>::~unique_ptr[abi:ne200100](cvml::util::MMapFileBackingStore **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    cvml::util::MMapFileBackingStore::~MMapFileBackingStore(v2);
    MEMORY[0x1AC556B00]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<cvml::util::MMapFileBackingStore *,std::shared_ptr<cvml::util::MMapFileBackingStore>::__shared_ptr_default_delete<cvml::util::MMapFileBackingStore,cvml::util::MMapFileBackingStore>,std::allocator<cvml::util::MMapFileBackingStore>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4cvml4util20MMapFileBackingStoreEE27__shared_ptr_default_deleteIS3_S3_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

cvml::util::MMapFileBackingStore *std::__shared_ptr_pointer<cvml::util::MMapFileBackingStore *,std::shared_ptr<cvml::util::MMapFileBackingStore>::__shared_ptr_default_delete<cvml::util::MMapFileBackingStore,cvml::util::MMapFileBackingStore>,std::allocator<cvml::util::MMapFileBackingStore>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    cvml::util::MMapFileBackingStore::~MMapFileBackingStore(result);

    JUMPOUT(0x1AC556B00);
  }

  return result;
}

void std::__shared_ptr_pointer<cvml::util::MMapFileBackingStore *,std::shared_ptr<cvml::util::MMapFileBackingStore>::__shared_ptr_default_delete<cvml::util::MMapFileBackingStore,cvml::util::MMapFileBackingStore>,std::allocator<cvml::util::MMapFileBackingStore>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5E43998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>>::operator()[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const*,std::shared_ptr<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const>::__shared_ptr_default_delete<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const,cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const>,std::allocator<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIKN4cvml4util12BackedBufferINS2_20MMapFileBackingStoreEEEE27__shared_ptr_default_deleteIS6_S6_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const*,std::shared_ptr<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const>::__shared_ptr_default_delete<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const,cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const>,std::allocator<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

BOOL vision::mod::GreedyClustererWithTorso::serializeStatus(vision::mod::GreedyClustererWithTorso *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  VNValidatedLog(1, @"  GreedyClustererWithTorso::serializeStatus - enter", a3, a4, a5, a6, a7, a8, v46);
  if (a2 == -1)
  {
    VNValidatedLog(4, @"  GreedyClustererWithTorso: Failed to open file - skipping serialization", v10, v11, v12, v13, v14, v15, v47);
  }

  else
  {
    vision::mod::GreedyClustererWithTorso::private_t::clusters_t::newMapFilePath(&__s, *(this + 8));
    getRelativePath(&__str, *(this + 8), &__s);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    VNValidatedLog(1, @"  GreedyClustererWithTorso::serializeStatus - saving map file: %s", v16, v17, v18, v19, v20, v21, p_s);
    v23 = *(this + 8);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &__s;
    }

    else
    {
      v24 = __s.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v24);
    v31 = *(v23 + 88);
    if (v31 || (v31 = *(v23 + 72)) != 0)
    {
      v32 = cvml::util::MMapFileBackingStore::writeToFile(v31, __p);
    }

    else
    {
      v32 = 0;
    }

    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v32)
    {
      VNValidatedLog(4, @"  GreedyClustererWithTorso: failed to save the file", v25, v26, v27, v28, v29, v30, v48);
      exception = __cxa_allocate_exception(8uLL);
      *exception = 5236;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    __p[0] = size;
    write(a2, __p, 8uLL);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    write(a2, p_str, __p[0]);
    std::string::operator=((*(this + 8) + 24), &__str);
    write(a2, (*(this + 8) + 104), 4uLL);
    write(a2, (*(this + 8) + 108), 8uLL);
    __p[0] = ((*(*(this + 8) + 56) - *(*(this + 8) + 48)) >> 2);
    write(a2, __p, 8uLL);
    v41 = *(*(this + 8) + 48);
    if (((*(*(this + 8) + 56) - v41) >> 2) >= 1)
    {
      v42 = 0;
      v43 = 0;
      do
      {
        write(a2, (v41 + v42), 4uLL);
        ++v43;
        v41 = *(*(this + 8) + 48);
        v42 += 4;
      }

      while (v43 < ((*(*(this + 8) + 56) - v41) >> 2));
    }

    VNValidatedLog(1, @"  GreedyClustererWithTorso::serializeStatus - done", v35, v36, v37, v38, v39, v40, v48);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  return a2 != -1;
}

void sub_1A5E43C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vision::mod::GreedyClustererWithTorso::private_t::clusters_t::newMapFilePath(std::string *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v18 = 0;
  MEMORY[0x1AC558570](uu);
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  std::string::basic_string[abi:ne200100]<0>(&v14, out);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::string::insert(&v14, 0, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, ".cmap");
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v15, v9, v10);
  *a1 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1A5E43E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *getRelativePath(_BYTE *a1, char *a2, void *__s)
{
  v5 = a2[23];
  if (v5 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  v7 = *(__s + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = __s[1];
    if (v6 >= v7)
    {
      goto LABEL_19;
    }

    v8 = *__s;
  }

  else
  {
    v8 = __s;
    if (v6 >= v7)
    {
      goto LABEL_19;
    }
  }

  if (v5 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6)
  {
    if (v7 < v6)
    {
      goto LABEL_19;
    }

    v10 = v8 + v7;
    v11 = *v9;
    v12 = v8;
    while (1)
    {
      v13 = v7 - v6;
      if (v13 == -1)
      {
        goto LABEL_19;
      }

      v14 = memchr(v12, v11, v13 + 1);
      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = v14;
      if (!memcmp(v14, v9, v6))
      {
        break;
      }

      v12 = v15 + 1;
      v7 = v10 - (v15 + 1);
      if (v7 < v6)
      {
        goto LABEL_19;
      }
    }

    if (v15 == v10 || (v17 = v15 - v8, v15 - v8 == -1))
    {
LABEL_19:
      exception = __cxa_allocate_exception(8uLL);
      *exception = 5246;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }
  }

  else
  {
    v17 = 0;
  }

  return std::string::basic_string[abi:ne200100](a1, __s, v17 + v6);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, uint64_t *a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if (v5 < a3)
    {
      goto LABEL_13;
    }

    v3 = *a2;
  }

  else if (v5 < a3)
  {
LABEL_13:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = v5 - a3;
  if (v5 - a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v6;
  if (v5 != a3)
  {
    memmove(__dst, v3 + a3, v6);
  }

  __dst[v6] = 0;
  return __dst;
}

void vision::mod::GreedyClustererWithTorso::~GreedyClustererWithTorso(vision::mod::GreedyClustererWithTorso *this)
{
  vision::mod::GreedyClustererWithTorso::~GreedyClustererWithTorso(this);

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1972DA0;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void non-virtual thunk tovision::mod::GreedyClustererFacesWithTorso::~GreedyClustererFacesWithTorso(vision::mod::GreedyClustererFacesWithTorso *this)
{
  vision::mod::GreedyClustererFacesWithTorso::~GreedyClustererFacesWithTorso((this - 8));

  JUMPOUT(0x1AC556B00);
}

{
  vision::mod::GreedyClustererFacesWithTorso::~GreedyClustererFacesWithTorso((this - 8));
}

void vision::mod::GreedyClustererFacesWithTorso::~GreedyClustererFacesWithTorso(vision::mod::GreedyClustererFacesWithTorso *this)
{
  *this = &unk_1F1972DD0;
  v2 = (this + 8);
  *(this + 1) = &unk_1F1972EB0;
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(this + 22));
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(this + 19));
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(this + 16));
  std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(*(this + 13));
  vision::mod::GreedyClustererWithTorso::~GreedyClustererWithTorso(v2);
}

{
  vision::mod::GreedyClustererFacesWithTorso::~GreedyClustererFacesWithTorso(this);

  JUMPOUT(0x1AC556B00);
}

void std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(a1[1]);
    std::__list_imp<long long>::clear(a1 + 5);

    operator delete(a1);
  }
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::getCountForCluster(vision::mod::GreedyClustererFacesWithTorso *this, uint64_t a2)
{
  if (!vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(this, a2))
  {
    return 0;
  }

  v4 = this + 152;
  v5 = *(this + 19);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = this + 152;
  do
  {
    if (*(v5 + 4) >= a2)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 4) < a2)];
  }

  while (v5);
  if (v6 == v4 || *(v6 + 4) > a2)
  {
LABEL_9:
    v6 = this + 152;
  }

  v7 = *(this + 18);
  if (v7 == v4)
  {
    return 0;
  }

  result = 0;
  v9 = *(v6 + 5);
  do
  {
    if (*(v7 + 5) == v9)
    {
      ++result;
    }

    v10 = *(v7 + 1);
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = *(v7 + 2);
        v12 = *v11 == v7;
        v7 = v11;
      }

      while (!v12);
    }

    v7 = v11;
  }

  while (v11 != v4);
  return result;
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(vision::mod::GreedyClustererFacesWithTorso *this, uint64_t a2)
{
  v2 = *(this + 19);
  if (!v2)
  {
    v3 = "FaceId=%lld not present in clustering";
LABEL_9:
    syslog(5, v3, a2);
    return 0;
  }

  v3 = "FaceId=%lld not present in clustering";
  while (1)
  {
    v4 = v2[4];
    if (v4 <= a2)
    {
      break;
    }

LABEL_6:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if (v4 < a2)
  {
    ++v2;
    goto LABEL_6;
  }

  v6 = *(this + 16);
  if (!v6)
  {
    syslog(5, "FaceId=%lld not present in l0 clustering");
    return 0;
  }

  v3 = "FaceId=%lld not present in l0 clustering";
  while (1)
  {
    v7 = v6[4];
    if (v7 <= a2)
    {
      break;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if (v7 < a2)
  {
    ++v6;
    goto LABEL_17;
  }

  return 1;
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::removeIds(uint64_t **this, uint64_t *a2)
{
  v35 = 0;
  v36 = 0;
  v34 = &v35;
  v3 = *a2;
  if (a2[1] == *a2)
  {
LABEL_46:
    vision::mod::GreedyClustererFacesWithTorso::computeDeltaAfterUpdate(this);
  }

  v5 = 0;
  while (1)
  {
    v6 = (v3 + 8 * v5);
    if ((vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(this, *v6) & 1) == 0)
    {
      break;
    }

    v37 = v6;
    v33 = std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((this + 15), *v6)[5];
    LODWORD(v37) = v33;
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(&v34, v33);
    v7 = *this[9][9];
    v8 = v7 + v33 * *(v7 + 16);
    --*(v8 + 32);
    v37 = &v33;
    v9 = std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((this + 12), v33);
    v10 = std::remove[abi:ne200100]<std::__list_iterator<long long,void *>,long long>(v9[6], (v9 + 5), v6);
    std::list<long long>::erase((v9 + 5), v10, v9 + 5);
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__erase_unique<long long>(this + 15, *v6);
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__erase_unique<long long>(this + 18, *v6);
    if (!*(v8 + 32))
    {
      v11 = this[9];
      v12 = v33;
      v14 = v11[6];
      v13 = v11[7];
      v15 = v14;
      if (v14 != v13)
      {
        v15 = v11[6];
        while (*v15 != v33)
        {
          if (++v15 == v13)
          {
            goto LABEL_48;
          }
        }
      }

      if (v15 == v13 || (v16 = v11[9]) == 0)
      {
LABEL_48:
        exception = __cxa_allocate_exception(8uLL);
        *exception = 5246;
        __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
      }

      v17 = *v16;
      if (*(*v16 + 12) > v33)
      {
        v18 = v16[7];
        v19 = v33 >> 6;
        v20 = *(v18 + 8 * v19);
        if ((v20 & (1 << v33)) != 0)
        {
          *(v17 + *v17 + 4 * *(v17 + 8)) = v33;
          *(v18 + 8 * v19) = v20 & ~(1 << v12);
          ++*(v17 + 8);
        }
      }

      if (v14 != v13)
      {
        while (*v14 != v12)
        {
          if (++v14 == v13)
          {
            goto LABEL_29;
          }
        }

        if (v14 != v13)
        {
          for (i = v14 + 1; i != v13; ++i)
          {
            if (*i != v12)
            {
              *v14++ = *i;
            }
          }
        }
      }

      if (v14 != v13)
      {
        v11[7] = v14;
      }

LABEL_29:
      std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__erase_unique<unsigned long>(this + 12, v33);
      if (v35)
      {
        v22 = &v35;
        v23 = v35;
        do
        {
          v24 = v23;
          v25 = v22;
          v26 = *(v23 + 7);
          if (v26 >= v33)
          {
            v22 = v23;
          }

          v23 = v23[v26 < v33];
        }

        while (v23);
        if (v22 != &v35)
        {
          if (v26 < v33)
          {
            v24 = v25;
          }

          if (*(v24 + 7) <= v33)
          {
            v27 = v22[1];
            v28 = v22;
            if (v27)
            {
              do
              {
                v29 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v29 = v28[2];
                v30 = *v29 == v28;
                v28 = v29;
              }

              while (!v30);
            }

            if (v34 == v22)
            {
              v34 = v29;
            }

            --v36;
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v35, v22);
            operator delete(v22);
          }
        }
      }
    }

    ++v5;
    v3 = *a2;
    if (v5 >= (a2[1] - *a2) >> 3)
    {
      goto LABEL_46;
    }
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v35);
  return 5244;
}

void *std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(uint64_t result, unsigned int a2)
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
      v4 = *(v2 + 28);
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

void *std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
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
      v4 = v2[4];
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::remove[abi:ne200100]<std::__list_iterator<long long,void *>,long long>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = a2;
  if (a1 != a2)
  {
    v5 = *a3;
    result = a1;
    while (*(result + 16) != v5)
    {
      result = *(result + 8);
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = *(result + 8); i != a2; i = *(i + 8))
      {
        v7 = *(i + 16);
        if (v7 != v5)
        {
          *(result + 16) = v7;
          result = *(result + 8);
          v5 = *a3;
        }
      }
    }
  }

  return result;
}

uint64_t *std::list<long long>::erase(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      operator delete(__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

void std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__erase_unique<unsigned long>(uint64_t **a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);
      std::__list_imp<long long>::clear(v5 + 5);

      operator delete(v5);
    }
  }
}

void sub_1A5E46A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  vision::mod::GreedyClustererWithTorso::private_t::clusters_t::~clusters_t(&a21);
  a21 = (v38 - 256);
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a21);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v38 - 200));
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,false>(uint64_t a1, float *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2;
  v8 = a2 - 3;
  i = a1;
  while (1)
  {
    a1 = i;
    v10 = v7 - i;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - i) >> 2);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(a1, a1 + 12, v8);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(a1, a1 + 12, a1 + 24, v8);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(a1, a1 + 12, a1 + 24, a1 + 36, v8);
          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      v7 = a2;
      if (v11 == 2)
      {
        v66 = std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(v8, a1);
        if (v66 == -1)
        {
          v67 = *a1;
          *a1 = *(a2 - 3);
          *(a2 - 3) = v67;
          v68 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 2);
          *(a2 - 2) = v68;
          v69 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          *(a2 - 1) = v69;
        }

        return;
      }
    }

    if (v10 <= 287)
    {
      break;
    }

    if (!a3)
    {
      if (a1 != v7)
      {
        v88 = v12 >> 1;
        v89 = v12 >> 1;
        do
        {
          v90 = v89;
          if (v88 >= v89)
          {
            v91 = (2 * v89) | 1;
            v92 = a1 + 12 * v91;
            v93 = 2 * v89 + 2;
            v139 = v89;
            if (v93 < v11)
            {
              v94 = std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>((a1 + 12 * v91), v92 + 12);
              v90 = v139;
              if (v94 == 255)
              {
                v92 += 12;
                v91 = v93;
              }
            }

            v95 = a1 + 12 * v90;
            v96 = std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(v92, v95);
            v90 = v139;
            if (v96 != -1)
            {
              v97 = *v95;
              v140 = *(v95 + 4);
              v98 = *(v95 + 8);
              *v95 = *v92;
              *(v95 + 4) = *(v92 + 4);
              *(v95 + 8) = *(v92 + 8);
              if (v88 >= v91)
              {
                do
                {
                  v100 = 2 * v91;
                  v91 = (2 * v91) | 1;
                  v99 = a1 + 12 * v91;
                  v101 = v100 + 2;
                  if (v100 + 2 < v11 && std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>((a1 + 12 * v91), v99 + 12) == 255)
                  {
                    v99 += 12;
                    v91 = v101;
                  }

                  v102 = *v99 < v97;
                  if (*v99 == v97 && (v103 = *(v99 + 4), v71 = v103 == v140, v102 = v103 < v140, v71))
                  {
                    v104 = *(v99 + 8);
                    if (v104 < v98)
                    {
                      goto LABEL_166;
                    }
                  }

                  else
                  {
                    if (v102)
                    {
                      goto LABEL_166;
                    }

                    v104 = *(v99 + 8);
                  }

                  *v92 = *v99;
                  *(v92 + 4) = *(v99 + 4);
                  *(v92 + 8) = v104;
                  v92 = v99;
                }

                while (v88 >= v91);
              }

              else
              {
LABEL_166:
                v99 = v92;
              }

              *v99 = v97;
              *(v99 + 4) = v140;
              *(v99 + 8) = v98;
              v90 = v139;
            }
          }

          v89 = v90 - 1;
        }

        while (v90);
        v105 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 2);
        do
        {
          v106 = 0;
          v107 = *(a1 + 4);
          v141 = *a1;
          v108 = *(a1 + 8);
          v109 = a1;
          do
          {
            v110 = &v109[3 * v106];
            v111 = v110 + 3;
            v112 = (2 * v106) | 1;
            v113 = 2 * v106 + 2;
            if (v113 < v105)
            {
              v114 = v110 + 6;
              if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(v110 + 3, (v110 + 6)) == 255)
              {
                v111 = v114;
                v112 = v113;
              }
            }

            *v109 = *v111;
            v109[1] = *(v111 + 1);
            v109[2] = *(v111 + 2);
            v109 = v111;
            v106 = v112;
          }

          while (v112 <= (v105 - 2) / 2);
          if (v111 == a2 - 3)
          {
            *v111 = v141;
            *(v111 + 1) = v107;
            *(v111 + 2) = v108;
          }

          else
          {
            *v111 = *(a2 - 3);
            v111[1] = *(a2 - 2);
            v111[2] = *(a2 - 1);
            *(a2 - 3) = v141;
            *(a2 - 2) = v107;
            *(a2 - 1) = v108;
            v115 = v111 - a1 + 12;
            if (v115 >= 13)
            {
              v116 = -2 - 0x5555555555555555 * (v115 >> 2);
              v117 = v116 >> 1;
              v118 = a1 + 12 * (v116 >> 1);
              if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(v118, v111) == 0xFF)
              {
                v119 = *v111;
                v120 = *(v111 + 1);
                v121 = v111[2];
                *v111 = *v118;
                v111[1] = *(v118 + 4);
                v111[2] = *(v118 + 8);
                if (v116 >= 2)
                {
                  do
                  {
                    v123 = v117 - 1;
                    v117 = (v117 - 1) >> 1;
                    v122 = a1 + 12 * v117;
                    v124 = *v122 < v119;
                    if (*v122 == v119 && (v125 = *(v122 + 4), v71 = v125 == v120, v124 = v125 < v120, v71))
                    {
                      v126 = *(v122 + 8);
                      v127 = v120;
                      if (v126 >= v121)
                      {
                        goto LABEL_190;
                      }
                    }

                    else
                    {
                      if (!v124)
                      {
                        goto LABEL_190;
                      }

                      v127 = *(v122 + 4);
                      v126 = *(v122 + 8);
                    }

                    *v118 = *v122;
                    *(v118 + 4) = v127;
                    *(v118 + 8) = v126;
                    v118 = a1 + 12 * v117;
                  }

                  while (v123 > 1);
                }

                else
                {
LABEL_190:
                  v122 = v118;
                }

                *v122 = v119;
                *(v122 + 4) = v120;
                *(v122 + 8) = v121;
              }
            }
          }

          a2 -= 3;
        }

        while (v105-- > 2);
      }

      return;
    }

    v13 = v11 >> 1;
    v14 = (a1 + 12 * (v11 >> 1));
    if (v10 < 0x601)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(v14, a1, v8);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(a1, v14, v8);
      v15 = 3 * v13;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>((a1 + 12), a1 + 4 * v15 - 12, (a2 - 6));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>((a1 + 24), a1 + 12 + 4 * v15, (a2 - 9));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>((a1 + 4 * v15 - 12), v14, a1 + 12 + 4 * v15);
      v16 = *a1;
      *a1 = *v14;
      *v14 = v16;
      LODWORD(v16) = *(a1 + 8);
      *(a1 + 8) = v14[2];
      v14[2] = v16;
    }

    --a3;
    v7 = a2;
    if ((a4 & 1) == 0 && std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>((a1 - 12), a1) != 0xFF)
    {
      v43 = *a1;
      v42 = *(a1 + 4);
      v44 = *(a1 + 8);
      v45 = *v8;
      v46 = *a1 < *v8;
      if (*a1 == *v8 && (v47 = *(a2 - 2), v71 = v42 == v47, v46 = v42 < v47, v71))
      {
        if (v44 < *(a2 - 1))
        {
          goto LABEL_83;
        }
      }

      else if (v46)
      {
LABEL_83:
        for (i = a1 + 12; ; i += 12)
        {
          v50 = v43 < *i;
          if (v43 == *i && (v51 = *(i + 4), v71 = v42 == v51, v50 = v42 < v51, v71))
          {
            if (v44 < *(i + 8))
            {
              goto LABEL_91;
            }
          }

          else if (v50)
          {
            goto LABEL_91;
          }
        }
      }

      for (i = a1 + 12; i < a2; i += 12)
      {
        v48 = v43 < *i;
        if (v43 == *i && (v49 = *(i + 4), v71 = v42 == v49, v48 = v42 < v49, v71))
        {
          if (v44 < *(i + 8))
          {
            break;
          }
        }

        else if (v48)
        {
          break;
        }
      }

LABEL_91:
      j = a2;
      if (i < a2)
      {
        for (j = a2 - 3; ; j -= 3)
        {
          v71 = v43 == LODWORD(v45);
          v53 = v43 < LODWORD(v45);
          if (v71 && (v54 = *(j + 1), v71 = v42 == v54, v53 = v42 < v54, v71))
          {
            if (v44 >= j[2])
            {
              break;
            }
          }

          else if (!v53)
          {
            break;
          }

          v55 = *(j - 3);
          v45 = v55;
        }
      }

      if (i < j)
      {
        v56 = *i;
        v57 = *j;
        do
        {
          *i = v57;
          *j = v56;
          v58 = *(i + 4);
          *(i + 4) = j[1];
          *(j + 1) = v58;
          v59 = *(i + 8);
          *(i + 8) = j[2];
          *(j + 2) = v59;
          do
          {
            while (1)
            {
              v60 = *(i + 12);
              i += 12;
              v56 = v60;
              v61 = v43 < v60;
              if (v43 == v60)
              {
                v62 = *(i + 4);
                v71 = v42 == v62;
                v61 = v42 < v62;
                if (v71)
                {
                  break;
                }
              }

              if (v61)
              {
                goto LABEL_110;
              }
            }
          }

          while (v44 >= *(i + 8));
          v56 = v43;
          do
          {
LABEL_110:
            while (1)
            {
              v63 = *(j - 3);
              j -= 3;
              v57 = v63;
              v64 = v43 < v63;
              if (v43 == v63)
              {
                v65 = *(j + 1);
                v71 = v42 == v65;
                v64 = v42 < v65;
                if (v71)
                {
                  break;
                }
              }

              if (!v64)
              {
                goto LABEL_116;
              }
            }
          }

          while (v44 < j[2]);
          v57 = v43;
LABEL_116:
          ;
        }

        while (i < j);
      }

      if (i - 12 != a1)
      {
        *a1 = *(i - 12);
        *(a1 + 4) = *(i - 8);
        *(a1 + 8) = *(i - 4);
      }

      a4 = 0;
      *(i - 12) = v43;
      *(i - 8) = v42;
      *(i - 4) = v44;
      continue;
    }

    v17 = *a1;
    v18 = *(a1 + 4);
    v19 = a1 + 12;
    v20 = *(a1 + 8);
    while (1)
    {
      v21 = *v19;
      v22 = *v19 < v17;
      if (*v19 != v17)
      {
        break;
      }

      v23 = *(v19 + 4);
      v71 = v23 == v18;
      v22 = v23 < v18;
      if (!v71)
      {
        break;
      }

      if (*(v19 + 8) >= v20)
      {
        v24 = v19 - 12;
        v21 = *a1;
        goto LABEL_25;
      }

LABEL_23:
      v19 += 12;
    }

    if (v22)
    {
      goto LABEL_23;
    }

    v24 = v19 - 12;
LABEL_25:
    k = a2 - 3;
    if (v24 != a1)
    {
      while (1)
      {
        v26 = *k < v17;
        if (*k == v17 && (v27 = *(k + 1), v71 = v27 == v18, v26 = v27 < v18, v71))
        {
          if (k[2] < v20)
          {
            goto LABEL_47;
          }
        }

        else if (v26)
        {
          goto LABEL_47;
        }

        k -= 3;
      }
    }

    k = a2;
    if (v19 < a2)
    {
      for (k = a2 - 3; ; k -= 3)
      {
        v28 = *k < v17;
        if (*k == v17 && (v29 = *(k + 1), v71 = v29 == v18, v28 = v29 < v18, v71))
        {
          if (k[2] < v20 || v19 >= k)
          {
            break;
          }
        }

        else if (v19 >= k || v28)
        {
          break;
        }
      }
    }

LABEL_47:
    i = v19;
    if (v19 < k)
    {
      v31 = *k;
      i = v19;
      v32 = k;
      do
      {
        *i = v31;
        *v32 = v21;
        v33 = *(i + 4);
        *(i + 4) = v32[1];
        *(v32 + 1) = v33;
        v34 = *(i + 8);
        *(i + 8) = v32[2];
        *(v32 + 2) = v34;
        do
        {
          while (1)
          {
            v35 = *(i + 12);
            i += 12;
            v21 = v35;
            v36 = v35 < v17;
            if (v35 == v17)
            {
              v37 = *(i + 4);
              v71 = v37 == v18;
              v36 = v37 < v18;
              if (v71)
              {
                break;
              }
            }

            if (!v36)
            {
              goto LABEL_56;
            }
          }
        }

        while (*(i + 8) < v20);
        v21 = v17;
        do
        {
LABEL_56:
          while (1)
          {
            v38 = *(v32 - 3);
            v32 -= 3;
            v31 = v38;
            v39 = v38 < v17;
            if (v38 == v17)
            {
              v40 = *(v32 + 1);
              v71 = v40 == v18;
              v39 = v40 < v18;
              if (v71)
              {
                break;
              }
            }

            if (v39)
            {
              goto LABEL_62;
            }
          }
        }

        while (v32[2] >= v20);
        v31 = v17;
LABEL_62:
        ;
      }

      while (i < v32);
    }

    if (i - 12 != a1)
    {
      *a1 = *(i - 12);
      *(a1 + 4) = *(i - 8);
      *(a1 + 8) = *(i - 4);
    }

    *(i - 12) = v17;
    *(i - 8) = v18;
    *(i - 4) = v20;
    if (v19 < k)
    {
LABEL_68:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,false>(a1, i - 12, a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *>(a1, (i - 12));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *>(i, a2))
      {
        a2 = (i - 12);
        if (v41)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v41)
      {
        goto LABEL_68;
      }
    }
  }

  v70 = (a1 + 12);
  v71 = a1 == v7 || v70 == v7;
  v72 = v71;
  if ((a4 & 1) == 0)
  {
    if (v72)
    {
      return;
    }

    while (1)
    {
      v129 = v70;
      if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(v70, a1) == 0xFF)
      {
        v130 = *v129;
        v131 = *(a1 + 16);
        v132 = *(a1 + 20);
        v133 = *a1;
        do
        {
          while (1)
          {
            v134 = a1;
            v135 = *(a1 - 12);
            a1 -= 12;
            v136 = *(a1 + 16);
            *(a1 + 24) = v133;
            *(a1 + 28) = v136;
            *(a1 + 32) = *(a1 + 20);
            v133 = v135;
            v137 = v130 < v135;
            if (v130 != v135)
            {
              break;
            }

            v138 = *(v134 - 8);
            v71 = v131 == v138;
            v137 = v131 < v138;
            if (!v71)
            {
              break;
            }

            if (v132 >= *(v134 - 4))
            {
              goto LABEL_213;
            }
          }
        }

        while (v137);
LABEL_213:
        *v134 = v130;
        *(v134 + 4) = v131;
        *(v134 + 8) = v132;
      }

      v70 = v129 + 3;
      a1 = v129;
      if (v129 + 3 == a2)
      {
        return;
      }
    }
  }

  if (v72)
  {
    return;
  }

  v73 = 0;
  v74 = a1;
  while (2)
  {
    v75 = v70;
    if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(v70, v74) != 0xFF)
    {
      goto LABEL_156;
    }

    v76 = *(v74 + 12);
    v77 = *(v74 + 16);
    v78 = *(v74 + 20);
    v79 = *(v74 + 4);
    *(v74 + 12) = *v74;
    *(v75 + 1) = v79;
    v75[2] = *(v74 + 8);
    v80 = a1;
    if (v74 == a1)
    {
      goto LABEL_155;
    }

    v81 = v73;
    while (2)
    {
      v82 = *(a1 + v81 - 12);
      v83 = v76 < v82;
      if (v76 == v82)
      {
        v84 = *(a1 + v81 - 8);
        v71 = v77 == v84;
        v83 = v77 < v84;
        if (v71)
        {
          v85 = *(a1 + v81 - 4);
          v86 = v77;
          if (v78 >= v85)
          {
            v80 = v74;
            goto LABEL_155;
          }

LABEL_152:
          v74 -= 12;
          v87 = a1 + v81;
          *v87 = v82;
          *(v87 + 4) = v86;
          *(v87 + 8) = v85;
          v81 -= 12;
          if (!v81)
          {
            v80 = a1;
            goto LABEL_155;
          }

          continue;
        }
      }

      break;
    }

    if (v83)
    {
      v86 = *(a1 + v81 - 8);
      v85 = *(a1 + v81 - 4);
      goto LABEL_152;
    }

    v80 = a1 + v81;
LABEL_155:
    *v80 = v76;
    *(v80 + 4) = v77;
    *(v80 + 8) = v78;
LABEL_156:
    v70 = v75 + 3;
    v73 += 12;
    v74 = v75;
    if (v75 + 3 != a2)
    {
      continue;
    }

    break;
  }
}

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<long long,long long>,std::__tree_node<std::__value_type<long long,long long>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v12);
    goto LABEL_31;
  }

  v10 = std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v14 = v13[4];
      v9[4] = v14;
      v9[5] = v13[5];
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v16 = v15;
            if (v14 >= v15[4])
            {
              break;
            }

            v15 = *v15;
            v17 = v16;
            if (!*v16)
            {
              goto LABEL_16;
            }
          }

          v15 = v15[1];
        }

        while (v15);
        v17 = v16 + 1;
      }

LABEL_16:
      std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__insert_node_at(a1, v16, v17, v9);
      if (v10)
      {
        v10 = std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v18 = v13[1];
      if (v18)
      {
        do
        {
          a2 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v19 = *a2 == v13;
          v13 = a2;
        }

        while (!v19);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(float *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 < *a2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (LODWORD(v3) == *a2)
  {
    v5 = *(a1 + 1);
    v6 = *(a2 + 4);
    result = v5 < v6 ? 0xFFFFFFFFLL : 1;
    if (v5 == v6)
    {
      v7 = a1[2];
      v8 = *(a2 + 8);
      if (v7 == v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = -127;
      }

      if (v7 > v8)
      {
        v9 = 1;
      }

      if (v7 < v8)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v9;
      }
    }
  }

  return result;
}

float std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = ~std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a2, a1);
  v7 = std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a3, a2);
  if (!v6)
  {
    v15 = (a1 + 2);
    v16 = *a1;
    if (v7 == -1)
    {
      *a1 = *a3;
      *a3 = v16;
      v20 = a1[1];
      a1[1] = *(a3 + 4);
    }

    else
    {
      *a1 = *a2;
      *a2 = v16;
      v17 = a1[1];
      a1[1] = *(a2 + 4);
      *(a2 + 4) = v17;
      v15 = (a2 + 8);
      v18 = a1[2];
      a1[2] = *(a2 + 8);
      *(a2 + 8) = v18;
      if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a3, a2) != 0xFF)
      {
        return result;
      }

      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      v20 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
    }

    *(a3 + 4) = v20;
    v11 = (a3 + 8);
    goto LABEL_10;
  }

  if (v7 == -1)
  {
    v9 = *a2;
    *a2 = *a3;
    *a3 = v9;
    v10 = *(a2 + 4);
    *(a2 + 4) = *(a3 + 4);
    *(a3 + 4) = v10;
    v11 = (a2 + 8);
    v12 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v12;
    if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a2, a1) == 0xFF)
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
      v14 = a1[1];
      a1[1] = *(a2 + 4);
      *(a2 + 4) = v14;
      v15 = (a1 + 2);
LABEL_10:
      result = *v15;
      *v15 = *v11;
      *v11 = result;
    }
  }

  return result;
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(a1, a2, a3);
  if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a4, a3) == 0xFF)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    v10 = *(a3 + 4);
    *(a3 + 4) = *(a4 + 4);
    *(a4 + 4) = v10;
    v11 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v11;
    if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a3, a2) == 0xFF)
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      v13 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v13;
      v14 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v14;
      if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a2, a1) == 0xFF)
      {
        v15 = *a1;
        *a1 = *a2;
        *a2 = v15;
        v16 = *(a1 + 4);
        *(a1 + 4) = *(a2 + 4);
        *(a2 + 4) = v16;
        result = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = result;
      }
    }
  }

  return result;
}

float std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(a1, a2, a3, a4);
  if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a5, a4) == 0xFF)
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    v12 = *(a4 + 4);
    *(a4 + 4) = *(a5 + 4);
    *(a5 + 4) = v12;
    v13 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v13;
    if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a4, a3) == 0xFF)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      v15 = *(a3 + 4);
      *(a3 + 4) = *(a4 + 4);
      *(a4 + 4) = v15;
      v16 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v16;
      if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a3, a2) == 0xFF)
      {
        v17 = *a2;
        *a2 = *a3;
        *a3 = v17;
        v18 = *(a2 + 4);
        *(a2 + 4) = *(a3 + 4);
        *(a3 + 4) = v18;
        v19 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v19;
        if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a2, a1) == 0xFF)
        {
          v20 = *a1;
          *a1 = *a2;
          *a2 = v20;
          v21 = *(a1 + 4);
          *(a1 + 4) = *(a2 + 4);
          *(a2 + 4) = v21;
          result = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *>(_DWORD *a1, float *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(a2 - 3, a1) == 0xFF)
        {
          v5 = *a1;
          *a1 = *(a2 - 3);
          *(a2 - 3) = v5;
          v6 = a1[1];
          a1[1] = *(a2 - 2);
          *(a2 - 2) = v6;
          v7 = a1[2];
          a1[2] = *(a2 - 1);
          *(a2 - 1) = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(a1, (a1 + 3), (a2 - 3));
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(a1, (a1 + 3), (a1 + 6), (a2 - 3));
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(a1, (a1 + 3), (a1 + 6), (a1 + 9), (a2 - 3));
      return 1;
  }

LABEL_11:
  v8 = (a1 + 6);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned int,unsigned int,float> *,0>(a1, (a1 + 3), (a1 + 6));
  v9 = (a1 + 9);
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,float,unsigned int,unsigned int,float,0ul,1ul,2ul>(v9, v8) == 0xFF)
    {
      v12 = *v9;
      v13 = *(v9 + 1);
      v14 = v9[2];
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v15 = v10;
      do
      {
        v16 = a1 + v15;
        v17 = *(a1 + v15 + 12);
        v18 = LODWORD(v12) < v17;
        if (LODWORD(v12) == v17 && (v19 = *(v16 + 4), v20 = v13 == v19, v18 = v13 < v19, v20))
        {
          v21 = *(a1 + v15 + 20);
          v22 = v13;
          if (v14 >= v21)
          {
            v8 = (a1 + v15 + 24);
            goto LABEL_24;
          }
        }

        else
        {
          if (!v18)
          {
            goto LABEL_24;
          }

          v22 = *(a1 + v15 + 16);
          v21 = *(a1 + v15 + 20);
        }

        v8 -= 3;
        *(v16 + 6) = v17;
        v23 = a1 + v15;
        *(v23 + 7) = v22;
        *(v23 + 8) = v21;
        v15 -= 12;
      }

      while (v15 != -24);
      v8 = a1;
LABEL_24:
      *v8 = v12;
      *(v8 + 1) = v13;
      v8[2] = v14;
      if (++v11 == 8)
      {
        return v9 + 3 == a2;
      }
    }

    v8 = v9;
    v10 += 12;
    v9 += 3;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5E482E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
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

void sub_1A5E487E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_set<int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_set<int>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void vision::mod::GreedyClustererWithTorso::getConnectedComponentsWithoutFiltering(void *a1, uint64_t a2, void **a3)
{
  memset(&v28, 0, sizeof(v28));
  std::vector<int>::reserve(&v28, (*(*(a2 + 64) + 56) - *(*(a2 + 64) + 48)) >> 2);
  v6 = *(*(a2 + 64) + 48);
  if (*(*(a2 + 64) + 56) == v6)
  {
    v18 = 1;
  }

  else
  {
    v23 = a3;
    v7 = 0;
    v8 = 0;
    end = v28.__end_;
    value = v28.__end_cap_.__value_;
    begin = v28.__begin_;
    do
    {
      v12 = *(v6 + 4 * v7);
      if (end >= value)
      {
        v13 = end - begin;
        v14 = end - begin;
        v15 = v14 + 1;
        if ((v14 + 1) >> 62)
        {
          v28.__begin_ = begin;
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        if ((value - begin) >> 1 > v15)
        {
          v15 = (value - begin) >> 1;
        }

        if ((value - begin) >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v16);
        }

        v17 = (4 * v14);
        value = 0;
        *v17 = v12;
        end = v17 + 1;
        memcpy(0, begin, v13);
        if (begin)
        {
          operator delete(begin);
        }

        begin = 0;
      }

      else
      {
        *end++ = v12;
      }

      if (v12 > v8)
      {
        v8 = v12;
      }

      ++v7;
      v6 = *(*(a2 + 64) + 48);
    }

    while (v7 < (*(*(a2 + 64) + 56) - v6) >> 2);
    v28.__end_ = end;
    v28.__end_cap_.__value_ = value;
    v18 = (v8 + 1);
    v28.__begin_ = begin;
    a3 = v23;
  }

  std::vector<std::vector<unsigned int>>::vector[abi:ne200100](&v27, v18);
  v19 = *a3;
  v20 = **a3;
  for (i = v19[1]; v20 != i; v20 += 3)
  {
    v22 = v20[1];
    LODWORD(v29) = *v20;
    LODWORD(v25) = v22;
    std::vector<int>::push_back[abi:ne200100](v27 + 24 * v29, &v25);
    std::vector<int>::push_back[abi:ne200100](v27 + 24 * v22, &v29);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v26[0] = 0;
  v26[1] = 0;
  v24[2] = 0;
  v25 = v26;
  v24[0] = v24;
  v24[1] = v24;
  operator new();
}

void sub_1A5E48D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p)
{
  std::__list_imp<long long>::clear(&a15);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a19);
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a18);
  a18 = &a21;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<unsigned int>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<unsigned int>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<unsigned int>>>>::__deallocate_node(void *__p)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<unsigned int>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned int,unsigned int,float>>>(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(__n);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

void *std::vector<std::vector<unsigned int>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<unsigned int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,BOOL>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,BOOL>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
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
      v4 = *(v2 + 28);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<unsigned int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void vision::mod::GreedyClustererWithTorso::computeMergePairs(uint64_t a1, void *a2, void *a3, float ***a4, int a5)
{
  if (*(*(a1 + 64) + 56) != *(*(a1 + 64) + 48))
  {
    v5 = *a2;
    v48 = a2 + 1;
    if (*a2 != a2 + 1)
    {
      v8 = a3 + 1;
      do
      {
        v9 = *(v5 + 7);
        v10 = **(*(a1 + 64) + 72);
        v11 = *a3;
        if (*(v10 + *(v10 + 16) * v9 + 40))
        {
          v12 = v11 == v8;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          do
          {
            v13 = *(v11 + 7);
            if (v13 > v9 || a5 != 0)
            {
              v15 = **(*(a1 + 64) + 72);
              v16 = v15 + 24;
              v17 = *(v15 + 16);
              v18 = v15 + 24 + v17 * v13;
              if (*(v18 + 8))
              {
                if (*(v18 + 16))
                {
                  v19 = v16 + v17 * v9;
                  v20 = *(v18 + 12) >= *(v19 + 12) ? *(v19 + 12) : *(v18 + 12);
                  LODWORD(__C) = 0;
                  vDSP_dotpr((v19 + 40), 1, (v18 + 40), 1, &__C, 0x80uLL);
                  v21 = (*&__C * -0.5) + 0.5;
                  if (v21 < (v20 * *(*(a1 + 32) + 12)))
                  {
                    v24 = **(*(a1 + 64) + 72);
                    v22 = v24 + 24;
                    LODWORD(v24) = *(v24 + 16);
                    v23 = *(v22 + v24 * v13);
                    LODWORD(v24) = *(v22 + v24 * v9);
                    v25 = v23 >= v24 ? v24 : v23;
                    v24 = v23 <= v24 ? v24 : v23;
                    v26 = *a4;
                    __C = v25 | (v24 << 32);
                    v52 = v21 / v20;
                    std::vector<std::tuple<unsigned int,unsigned int,float>>::push_back[abi:ne200100](v26, &__C);
                    v27 = **a4;
                    v28 = (*a4)[1];
                    v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 2);
                    if (v29 >= 0x86471)
                    {
                      v30 = 126 - 2 * __clz(v29);
                      if (v28 == v27)
                      {
                        v31 = 0;
                      }

                      else
                      {
                        v31 = v30;
                      }

                      std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::computeMergePairs(std::set<unsigned int> &,std::set<unsigned int> &,std::shared_ptr<std::vector<std::tuple<unsigned int,unsigned int,float>>>,BOOL)::$_0 &,std::tuple<unsigned int,unsigned int,float>*,false>(v27, v28, v31, 1);
                      v32 = *a4;
                      v33 = **a4;
                      v34 = (*a4)[1];
                      v35 = v34 - v33;
                      v36 = 0xAAAAAAAAAAAAAAABLL * (v34 - v33);
                      v37 = v36 <= 0x7A120;
                      v38 = 500000 - v36;
                      if (v38 != 0 && v37)
                      {
                        v39 = v32[2];
                        if (0xAAAAAAAAAAAAAAABLL * (v39 - v34) < v38)
                        {
                          v40 = 0xAAAAAAAAAAAAAAABLL * (v39 - v33);
                          v41 = 2 * v40;
                          if (2 * v40 <= 0x7A120)
                          {
                            v41 = 500000;
                          }

                          if (v40 >= 0xAAAAAAAAAAAAAAALL)
                          {
                            v42 = 0x1555555555555555;
                          }

                          else
                          {
                            v42 = v41;
                          }

                          std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned int,unsigned int,float>>>(v42);
                        }

                        v43 = 12 * ((5999988 - v35) / 0xCuLL) + 12;
                        bzero((*a4)[1], v43);
                        v32[1] = (v34 + v43);
                      }

                      else if (v35 != 6000000)
                      {
                        v32[1] = v33 + 1500000;
                      }
                    }
                  }
                }
              }
            }

            v44 = v11[1];
            if (v44)
            {
              do
              {
                v45 = v44;
                v44 = *v44;
              }

              while (v44);
            }

            else
            {
              do
              {
                v45 = v11[2];
                v12 = *v45 == v11;
                v11 = v45;
              }

              while (!v12);
            }

            v11 = v45;
          }

          while (v45 != v8);
        }

        v46 = v5[1];
        if (v46)
        {
          do
          {
            v47 = v46;
            v46 = *v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v47 = v5[2];
            v12 = *v47 == v5;
            v5 = v47;
          }

          while (!v12);
        }

        v5 = v47;
      }

      while (v47 != v48);
    }
  }
}

void vision::mod::GreedyClustererWithTorso::private_t::clusters_t::~clusters_t(vision::mod::GreedyClustererWithTorso::private_t::clusters_t *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void std::vector<std::tuple<unsigned int,unsigned int,float>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned int,unsigned int,float>>>(v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

int *std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::private_t::clusters_t::sort(void)::{lambda(std::tuple<unsigned int,int> const&,std::tuple<unsigned int,int> const&)#1} &,std::tuple<unsigned int,int>*,false>(int *result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 2;
    v9 = a2 - 1;
    v164 = a2 - 3;
    v10 = a2 - 5;
    v11 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v11;
          v12 = (a2 - v11) >> 3;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v102 = v11 + 3;
                v103 = v11[3];
                v104 = v11 + 1;
                v105 = v11[1];
                v106 = *v9;
                if (v103 <= v105)
                {
                  if (v106 <= v103)
                  {
                    return result;
                  }

                  v152 = v11[2];
                  v11[2] = *v8;
                  *v8 = v152;
                  v153 = v11[3];
                  v11[3] = *v9;
                  *v9 = v153;
                  if (v11[3] <= v11[1])
                  {
                    return result;
                  }

                  v154 = *v11;
                  *v11 = v11[2];
                  v11[2] = v154;
                }

                else
                {
                  v107 = *v11;
                  if (v106 <= v103)
                  {
                    *v11 = v11[2];
                    v11[1] = v103;
                    v11[2] = v107;
                    v11[3] = v105;
                    if (*v9 <= v105)
                    {
                      return result;
                    }

                    v11[2] = *v8;
                    *v8 = v107;
                    v104 = v11 + 3;
                  }

                  else
                  {
                    *v11 = *v8;
                    *v8 = v107;
                  }

                  v102 = a2 - 1;
                }

                v163 = *v104;
                *v104 = *v102;
                *v102 = v163;
                return result;
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::private_t::clusters_t::sort(void)::{lambda(std::tuple<unsigned int,int> const&,std::tuple<unsigned int,int> const&)#1} &,std::tuple<unsigned int,int>*,0>(v11, v11 + 2, v11 + 4, a2 - 2);
              case 5:
                result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::private_t::clusters_t::sort(void)::{lambda(std::tuple<unsigned int,int> const&,std::tuple<unsigned int,int> const&)#1} &,std::tuple<unsigned int,int>*,0>(v11, v11 + 2, v11 + 4, v11 + 6);
                if (*v9 > v11[7])
                {
                  v90 = v11[6];
                  v11[6] = *v8;
                  *v8 = v90;
                  v91 = v11[7];
                  v11[7] = *v9;
                  *v9 = v91;
                  v92 = v11[7];
                  v93 = v11[5];
                  if (v92 > v93)
                  {
                    v94 = v11[6];
                    v95 = v11[3];
                    v96 = v11[4];
                    v11[4] = v94;
                    v11[5] = v92;
                    v11[6] = v96;
                    v11[7] = v93;
                    if (v92 > v95)
                    {
                      v97 = v11[1];
                      v98 = v11[2];
                      v11[2] = v94;
                      v11[3] = v92;
                      v11[4] = v98;
                      v11[5] = v95;
                      if (v92 > v97)
                      {
                        v99 = *v11;
                        *v11 = v94;
                        v11[1] = v92;
                        v11[2] = v99;
                        v11[3] = v97;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              if (*v9 > v11[1])
              {
                v100 = *v11;
                *v11 = *v8;
                *v8 = v100;
                v101 = v11[1];
                v11[1] = *v9;
                *v9 = v101;
              }

              return result;
            }
          }

          if (v12 <= 23)
          {
            v108 = v11 + 2;
            v110 = v11 == a2 || v108 == a2;
            if (a4)
            {
              if (!v110)
              {
                v111 = 0;
                v112 = v11;
                do
                {
                  v113 = v112[3];
                  v114 = v112[1];
                  v112 = v108;
                  if (v113 > v114)
                  {
                    v115 = *v108;
                    v116 = v112[1];
                    v117 = v111;
                    while (1)
                    {
                      v118 = v11 + v117;
                      v119 = *(v11 + v117 + 4);
                      *(v118 + 2) = *(v11 + v117);
                      *(v118 + 3) = v119;
                      if (!v117)
                      {
                        break;
                      }

                      v117 -= 8;
                      if (*(v118 - 1) >= v116)
                      {
                        v120 = (v11 + v117 + 8);
                        goto LABEL_138;
                      }
                    }

                    v120 = v11;
LABEL_138:
                    *v120 = v115;
                    v120[1] = v116;
                  }

                  v108 = v112 + 2;
                  v111 += 8;
                }

                while (v112 + 2 != a2);
              }
            }

            else if (!v110)
            {
              v155 = v11 + 1;
              do
              {
                v156 = v7[3];
                v157 = v7[1];
                v7 = v108;
                if (v156 > v157)
                {
                  v158 = *v108;
                  v159 = HIDWORD(*v7);
                  v160 = v155;
                  do
                  {
                    v161 = *v160;
                    v160[1] = *(v160 - 1);
                    v160[2] = v161;
                    v162 = *(v160 - 2);
                    v160 -= 2;
                  }

                  while (v162 < v159);
                  v160[1] = v158;
                  v160[2] = v159;
                }

                v108 = v7 + 2;
                v155 += 2;
              }

              while (v7 + 2 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v11 != a2)
            {
              v121 = (v12 - 2) >> 1;
              v122 = v121;
              do
              {
                v123 = v122;
                if (v121 >= v122)
                {
                  v124 = (2 * v122) | 1;
                  v125 = &v11[2 * v124];
                  if (2 * v123 + 2 < v12)
                  {
                    v126 = v125[1];
                    v127 = v125[3];
                    v125 += 2 * (v126 > v127);
                    if (v126 > v127)
                    {
                      v124 = 2 * v123 + 2;
                    }
                  }

                  v128 = &v11[2 * v123];
                  if (v125[1] <= v128[1])
                  {
                    v129 = *v128;
                    v130 = v128[1];
                    do
                    {
                      v131 = v128;
                      v128 = v125;
                      *v131 = *v125;
                      v131[1] = v125[1];
                      if (v121 < v124)
                      {
                        break;
                      }

                      v132 = (2 * v124) | 1;
                      v125 = &v11[2 * v132];
                      v133 = 2 * v124 + 2;
                      if (v133 < v12)
                      {
                        v134 = v125[1];
                        result = v125[3];
                        v125 += 2 * (v134 > result);
                        if (v134 > result)
                        {
                          v132 = v133;
                        }
                      }

                      v124 = v132;
                    }

                    while (v125[1] <= v130);
                    *v128 = v129;
                    v128[1] = v130;
                  }
                }

                v122 = v123 - 1;
              }

              while (v123);
              do
              {
                v135 = 0;
                v136 = *v11;
                v137 = v11;
                do
                {
                  v138 = &v137[2 * v135];
                  v139 = v138 + 2;
                  v140 = (2 * v135) | 1;
                  v135 = 2 * v135 + 2;
                  if (v135 >= v12)
                  {
                    v135 = v140;
                  }

                  else
                  {
                    v141 = v138[3];
                    v142 = v138[5];
                    v143 = v138 + 4;
                    if (v141 <= v142)
                    {
                      v135 = v140;
                    }

                    else
                    {
                      v139 = v143;
                    }
                  }

                  *v137 = *v139;
                  v137[1] = v139[1];
                  v137 = v139;
                }

                while (v135 <= ((v12 - 2) >> 1));
                if (v139 == a2 - 2)
                {
                  *v139 = v136;
                }

                else
                {
                  *v139 = *(a2 - 2);
                  v139[1] = *(a2 - 1);
                  *(a2 - 1) = v136;
                  v144 = (v139 - v11 + 8) >> 3;
                  v145 = v144 < 2;
                  v146 = v144 - 2;
                  if (!v145)
                  {
                    v147 = v146 >> 1;
                    v148 = &v11[2 * v147];
                    if (v148[1] > v139[1])
                    {
                      v149 = *v139;
                      v150 = v139[1];
                      do
                      {
                        v151 = v139;
                        v139 = v148;
                        *v151 = *v148;
                        v151[1] = v148[1];
                        if (!v147)
                        {
                          break;
                        }

                        v147 = (v147 - 1) >> 1;
                        v148 = &v11[2 * v147];
                      }

                      while (v148[1] > v150);
                      *v139 = v149;
                      v139[1] = v150;
                    }
                  }
                }

                a2 -= 2;
                v145 = v12-- <= 2;
              }

              while (!v145);
            }

            return result;
          }

          v13 = &v11[2 * (v12 >> 1)];
          v14 = *v9;
          if (v12 >= 0x81)
          {
            v15 = v13 + 1;
            v16 = v13[1];
            v17 = v11 + 1;
            v18 = v11[1];
            if (v16 <= v18)
            {
              if (v14 <= v16 || (v25 = *v13, *v13 = *v8, *v8 = v25, v26 = v13[1], v13[1] = *v9, *v9 = v26, v13[1] <= *v17))
              {
LABEL_29:
                v33 = v13 - 1;
                v34 = *(v13 - 1);
                v35 = v13 - 2;
                v36 = v11 + 3;
                v37 = v11[3];
                v38 = *v164;
                if (v34 <= v37)
                {
                  if (v38 <= v34 || (v40 = *v35, *v35 = *(a2 - 4), *(a2 - 4) = v40, v41 = *(v13 - 1), *(v13 - 1) = *(a2 - 3), *(a2 - 3) = v41, *(v13 - 1) <= *v36))
                  {
LABEL_43:
                    v46 = v13[3];
                    v47 = v13 + 2;
                    v48 = v11 + 5;
                    v49 = v11[5];
                    result = *v10;
                    if (v46 <= v49)
                    {
                      if (result <= v46 || (v51 = *v47, *v47 = *(a2 - 6), *(a2 - 6) = v51, v52 = v13[3], v13[3] = *(a2 - 5), *(a2 - 5) = v52, v46 = v13[3], v46 <= *v48))
                      {
LABEL_53:
                        v56 = *v15;
                        v57 = *v33;
                        if (*v15 <= *v33)
                        {
                          v58 = *v13;
                          if (v46 <= v56)
                          {
LABEL_63:
                            v61 = *v11;
                            *v11 = v58;
                            v11[1] = v56;
                            *v13 = v61;
                            goto LABEL_64;
                          }

                          v59 = *v47;
                          *v13 = *v47;
                          v13[1] = v46;
                          *v47 = v58;
                          v13[3] = v56;
                          if (v46 <= v57)
                          {
                            v56 = v46;
                            v58 = v59;
                            goto LABEL_63;
                          }

                          v60 = *v35;
                          *v35 = v59;
                          *v13 = v60;
                        }

                        else
                        {
                          v58 = *v35;
                          if (v46 <= v56)
                          {
                            *v35 = *v13;
                            *(v13 - 1) = v56;
                            *v13 = v58;
                            v13[1] = v57;
                            if (v46 <= v57)
                            {
                              v56 = v57;
                              goto LABEL_63;
                            }

                            *v13 = *v47;
                            *v47 = v58;
                            v33 = v13 + 1;
                          }

                          else
                          {
                            *v35 = *v47;
                            *v47 = v58;
                          }

                          v15 = v13 + 3;
                        }

                        *v33 = v46;
                        *v15 = v57;
                        v58 = *v13;
                        v56 = v13[1];
                        goto LABEL_63;
                      }

                      v53 = v11[4];
                      v11[4] = *v47;
                      *v47 = v53;
                      v54 = v13 + 3;
                    }

                    else
                    {
                      v50 = v11[4];
                      if (result <= v46)
                      {
                        v11[4] = *v47;
                        v11[5] = v46;
                        *v47 = v50;
                        v13[3] = v49;
                        v46 = v49;
                        if (*v10 <= v49)
                        {
                          goto LABEL_53;
                        }

                        *v47 = *(a2 - 6);
                        *(a2 - 6) = v50;
                        v48 = v13 + 3;
                      }

                      else
                      {
                        v11[4] = *(a2 - 6);
                        *(a2 - 6) = v50;
                      }

                      v54 = a2 - 5;
                    }

                    v55 = *v48;
                    *v48 = *v54;
                    *v54 = v55;
                    v46 = v13[3];
                    goto LABEL_53;
                  }

                  v42 = v11[2];
                  v11[2] = *v35;
                  *v35 = v42;
                  v43 = v13 - 1;
                }

                else
                {
                  v39 = v11[2];
                  if (v38 <= v34)
                  {
                    v11[2] = *v35;
                    v11[3] = v34;
                    *v35 = v39;
                    *(v13 - 1) = v37;
                    if (*v164 <= v37)
                    {
                      goto LABEL_43;
                    }

                    *v35 = *(a2 - 4);
                    *(a2 - 4) = v39;
                    v36 = v13 - 1;
                  }

                  else
                  {
                    v11[2] = *(a2 - 4);
                    *(a2 - 4) = v39;
                  }

                  v43 = a2 - 3;
                }

                v45 = *v36;
                *v36 = *v43;
                *v43 = v45;
                goto LABEL_43;
              }

              v27 = *v11;
              *v11 = *v13;
              *v13 = v27;
              v28 = v13 + 1;
            }

            else
            {
              v19 = *v11;
              if (v14 <= v16)
              {
                *v11 = *v13;
                v11[1] = v16;
                *v13 = v19;
                v13[1] = v18;
                if (*v9 <= v18)
                {
                  goto LABEL_29;
                }

                *v13 = *v8;
                *v8 = v19;
                v17 = v13 + 1;
              }

              else
              {
                *v11 = *v8;
                *v8 = v19;
              }

              v28 = a2 - 1;
            }

            v32 = *v17;
            *v17 = *v28;
            *v28 = v32;
            goto LABEL_29;
          }

          v20 = v11 + 1;
          v21 = v11[1];
          v22 = v13 + 1;
          v23 = v13[1];
          if (v21 <= v23)
          {
            if (v14 > v21)
            {
              v29 = *v11;
              *v11 = *v8;
              *v8 = v29;
              v30 = v11[1];
              v11[1] = *v9;
              *v9 = v30;
              if (v11[1] > *v22)
              {
                v31 = *v13;
                *v13 = *v11;
                *v11 = v31;
LABEL_38:
                v44 = *v22;
                *v22 = *v20;
                *v20 = v44;
              }
            }
          }

          else
          {
            v24 = *v13;
            if (v14 > v21)
            {
              *v13 = *v8;
              *v8 = v24;
LABEL_37:
              v20 = a2 - 1;
              goto LABEL_38;
            }

            *v13 = *v11;
            v13[1] = v21;
            *v11 = v24;
            v11[1] = v23;
            if (*v9 > v23)
            {
              *v11 = *v8;
              *v8 = v24;
              v22 = v11 + 1;
              goto LABEL_37;
            }
          }

LABEL_64:
          --a3;
          if ((a4 & 1) != 0 || *(v11 - 1) > v11[1])
          {
            break;
          }

          v77 = *v11;
          v78 = HIDWORD(*v11);
          if (*v9 >= v78)
          {
            v81 = v11 + 2;
            do
            {
              v11 = v81;
              if (v81 >= a2)
              {
                break;
              }

              v82 = v81[1];
              v81 += 2;
            }

            while (v82 >= v78);
          }

          else
          {
            v79 = v11;
            do
            {
              v11 = v79 + 2;
              v80 = v79[3];
              v79 += 2;
            }

            while (v80 >= v78);
          }

          v83 = a2;
          if (v11 < a2)
          {
            v84 = a2;
            do
            {
              v83 = v84 - 2;
              v85 = *(v84 - 1);
              v84 -= 2;
            }

            while (v85 < v78);
          }

          while (v11 < v83)
          {
            v86 = *v11;
            *v11 = *v83;
            *v83 = v86;
            v87 = v11[1];
            v11[1] = v83[1];
            v83[1] = v87;
            do
            {
              v88 = v11[3];
              v11 += 2;
            }

            while (v88 >= v78);
            do
            {
              v89 = *(v83 - 1);
              v83 -= 2;
            }

            while (v89 < v78);
          }

          if (v11 - 2 != v7)
          {
            *v7 = *(v11 - 2);
            v7[1] = *(v11 - 1);
          }

          a4 = 0;
          *(v11 - 2) = v77;
          *(v11 - 1) = v78;
        }

        v62 = *v11;
        v63 = HIDWORD(*v11);
        v64 = v11;
        do
        {
          v65 = v64;
          v64 += 2;
        }

        while (v65[3] > v63);
        v66 = a2;
        if (v65 == v11)
        {
          v69 = a2;
          while (v64 < v69)
          {
            v67 = v69 - 2;
            v70 = *(v69 - 1);
            v69 -= 2;
            if (v70 > v63)
            {
              goto LABEL_76;
            }
          }

          v67 = v69;
        }

        else
        {
          do
          {
            v67 = v66 - 2;
            v68 = *(v66 - 1);
            v66 -= 2;
          }

          while (v68 <= v63);
        }

LABEL_76:
        v11 = v64;
        if (v64 < v67)
        {
          v71 = v67;
          do
          {
            v72 = *v11;
            *v11 = *v71;
            *v71 = v72;
            v73 = v11[1];
            v11[1] = v71[1];
            v71[1] = v73;
            do
            {
              v74 = v11[3];
              v11 += 2;
            }

            while (v74 > v63);
            do
            {
              v75 = *(v71 - 1);
              v71 -= 2;
            }

            while (v75 <= v63);
          }

          while (v11 < v71);
        }

        if (v11 - 2 != v7)
        {
          *v7 = *(v11 - 2);
          v7[1] = *(v11 - 1);
        }

        *(v11 - 2) = v62;
        *(v11 - 1) = v63;
        if (v64 >= v67)
        {
          break;
        }

LABEL_87:
        result = std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::private_t::clusters_t::sort(void)::{lambda(std::tuple<unsigned int,int> const&,std::tuple<unsigned int,int> const&)#1} &,std::tuple<unsigned int,int>*,false>(v7, v11 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v76 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::private_t::clusters_t::sort(void)::{lambda(std::tuple<unsigned int,int> const&,std::tuple<unsigned int,int> const&)#1} &,std::tuple<unsigned int,int>*>(v7, v11 - 2);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::private_t::clusters_t::sort(void)::{lambda(std::tuple<unsigned int,int> const&,std::tuple<unsigned int,int> const&)#1} &,std::tuple<unsigned int,int>*>(v11, a2);
      if (result)
      {
        break;
      }

      if (!v76)
      {
        goto LABEL_87;
      }
    }

    a2 = v11 - 2;
    if (!v76)
    {
      continue;
    }

    return result;
  }
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::private_t::clusters_t::sort(void)::{lambda(std::tuple<unsigned int,int> const&,std::tuple<unsigned int,int> const&)#1} &,std::tuple<unsigned int,int>*,0>(int *result, int *a2, int *a3, int *a4)
{
  v4 = a2[1];
  v5 = result + 1;
  v6 = a3 + 1;
  v7 = a3[1];
  if (v4 <= result[1])
  {
    if (v7 > v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      v7 = a2[1];
      a2[1] = a3[1];
      a3[1] = v7;
      if (a2[1] > *v5)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
        v9 = result + 1;
        v12 = a2 + 1;
LABEL_10:
        v15 = *v9;
        *v9 = *v12;
        *v12 = v15;
        v7 = *v6;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v4)
    {
      *result = *a3;
      *a3 = v8;
      v9 = result + 1;
LABEL_9:
      v12 = a3 + 1;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v7 = *v6;
    if (*v6 > v13)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v9 = a2 + 1;
      goto LABEL_9;
    }
  }

  if (a4[1] > v7)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = a3[1];
    a3[1] = a4[1];
    a4[1] = v17;
    if (a3[1] > a2[1])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = a2[1];
      a2[1] = a3[1];
      a3[1] = v19;
      if (a2[1] > *v5)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        v21 = result[1];
        result[1] = a2[1];
        a2[1] = v21;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::private_t::clusters_t::sort(void)::{lambda(std::tuple<unsigned int,int> const&,std::tuple<unsigned int,int> const&)#1} &,std::tuple<unsigned int,int>*>(int *a1, int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v17 = a1 + 3;
      v18 = a1[3];
      v19 = a1 + 1;
      v20 = a1[1];
      v21 = *(a2 - 1);
      if (v18 <= v20)
      {
        if (v21 <= v18)
        {
          return 1;
        }

        v29 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v29;
        v30 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v30;
        if (a1[3] <= a1[1])
        {
          return 1;
        }

        v31 = *a1;
        *a1 = a1[2];
        a1[2] = v31;
      }

      else
      {
        v22 = *a1;
        if (v21 <= v18)
        {
          *a1 = a1[2];
          a1[1] = v18;
          a1[2] = v22;
          a1[3] = v20;
          if (*(a2 - 1) <= v20)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v22;
          v19 = a1 + 3;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v22;
        }

        v17 = a2 - 1;
      }

      v35 = *v19;
      *v19 = *v17;
      *v17 = v35;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::private_t::clusters_t::sort(void)::{lambda(std::tuple<unsigned int,int> const&,std::tuple<unsigned int,int> const&)#1} &,std::tuple<unsigned int,int>*,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        if (*(a2 - 1) > a1[7])
        {
          v7 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v7;
          v8 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v8;
          v9 = a1[7];
          v10 = a1[5];
          if (v9 > v10)
          {
            v11 = a1[6];
            v12 = a1[3];
            v13 = a1[4];
            a1[4] = v11;
            a1[5] = v9;
            a1[6] = v13;
            a1[7] = v10;
            if (v9 > v12)
            {
              v14 = a1[1];
              v15 = a1[2];
              a1[2] = v11;
              a1[3] = v9;
              a1[4] = v15;
              a1[5] = v12;
              if (v9 > v14)
              {
                v16 = *a1;
                *a1 = v11;
                a1[1] = v9;
                a1[2] = v16;
                a1[3] = v14;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::private_t::clusters_t::sort(void)::{lambda(std::tuple<unsigned int,int> const&,std::tuple<unsigned int,int> const&)#1} &,std::tuple<unsigned int,int>*,0>(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 1) > a1[1])
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      v6 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v23 = a1[3];
  v25 = a1 + 1;
  v24 = a1[1];
  v27 = a1 + 5;
  v26 = a1[5];
  if (v23 > v24)
  {
    v28 = *a1;
    if (v26 <= v23)
    {
      *a1 = a1[2];
      a1[1] = v23;
      a1[2] = v28;
      a1[3] = v24;
      if (v26 <= v24)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v28;
      v25 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v28;
    }

    goto LABEL_33;
  }

  if (v26 > v23)
  {
    v32 = a1[2];
    v33 = a1[4];
    a1[2] = v33;
    a1[3] = v26;
    a1[4] = v32;
    a1[5] = v23;
    if (v26 > v24)
    {
      v34 = *a1;
      *a1 = v33;
      a1[2] = v34;
      v27 = a1 + 3;
LABEL_33:
      *v25 = v26;
      *v27 = v24;
    }
  }

LABEL_34:
  v36 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  v39 = a1 + 4;
  while (1)
  {
    if (v36[1] > v39[1])
    {
      v40 = *v36;
      v41 = v36[1];
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 20);
        v43[6] = *(a1 + v42 + 16);
        v43[7] = v44;
        if (v42 == -16)
        {
          break;
        }

        v42 -= 8;
        if (v43[3] >= v41)
        {
          v45 = (a1 + v42 + 24);
          goto LABEL_42;
        }
      }

      v45 = a1;
LABEL_42:
      *v45 = v40;
      v45[1] = v41;
      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v39 = v36;
    v37 += 8;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>::createDeepCopy(void *a1)
{
  v2 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v2 = __p[1];
  }

  if (v2 != 11 || ((v9 & 0x80u) == 0 ? (v3 = __p) : (v3 = __p[0]), (v4 = *v3, v5 = *(v3 + 3), v4 == 0x494C41564E492323) ? (v6 = v5 == 0x232344494C41564ELL) : (v6 = 0), !v6))
  {
    {
      cvml::util::MMapFileBackingStore::createByMappingDirectlyFromFile(__p, 1);
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::shared_ptr<cvml::util::MMapFileBackingStore>::shared_ptr[abi:ne200100]<cvml::util::MMapFileBackingStore,0>(&v7, 0);
}

void sub_1A5E4B1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = v17;
  MEMORY[0x1AC556B00](v18, 0x1092C4040FCC1CALL);
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

float *std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::computeMergePairs(std::set<unsigned int> &,std::set<unsigned int> &,std::shared_ptr<std::vector<std::tuple<unsigned int,unsigned int,float>>>,BOOL)::$_0 &,std::tuple<unsigned int,unsigned int,float>*,false>(float *result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 2);
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v127 = *(a2 - 4);
        v128 = *(v8 + 8);
        if (v127 < v128)
        {
          v129 = *v8;
          *v8 = *(a2 - 12);
          *(a2 - 12) = v129;
          v130 = *(v8 + 4);
          *(v8 + 4) = *(a2 - 8);
          *(a2 - 8) = v130;
          *(v8 + 8) = v127;
          *(a2 - 4) = v128;
        }

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

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::computeMergePairs(std::set<unsigned int> &,std::set<unsigned int> &,std::shared_ptr<std::vector<std::tuple<unsigned int,unsigned int,float>>>,BOOL)::$_0 &,std::tuple<unsigned int,unsigned int,float>*,0>(v8, (v8 + 12), (v8 + 24), (a2 - 12));
    }

    if (v10 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::computeMergePairs(std::set<unsigned int> &,std::set<unsigned int> &,std::shared_ptr<std::vector<std::tuple<unsigned int,unsigned int,float>>>,BOOL)::$_0 &,std::tuple<unsigned int,unsigned int,float>*,0>(v8, (v8 + 12), (v8 + 24), (v8 + 36));
      v114 = *(a2 - 4);
      v115 = *(v8 + 44);
      if (v114 >= v115)
      {
        return result;
      }

      v116 = *(v8 + 36);
      *(v8 + 36) = *(a2 - 12);
      *(a2 - 12) = v116;
      v117 = *(v8 + 40);
      *(v8 + 40) = *(a2 - 8);
      *(a2 - 8) = v117;
      *(v8 + 44) = v114;
      *(a2 - 4) = v115;
      v118 = *(v8 + 44);
      v119 = *(v8 + 32);
      if (v118 >= v119)
      {
        return result;
      }

      v120 = *(v8 + 36);
      v121 = *(v8 + 40);
      v122 = *(v8 + 24);
      *(v8 + 24) = v120;
      *(v8 + 28) = v121;
      *(v8 + 36) = v122;
      *(v8 + 32) = v118;
      *(v8 + 44) = v119;
      v123 = *(v8 + 20);
      if (v118 >= v123)
      {
        return result;
      }

      v124 = *(v8 + 12);
      *(v8 + 12) = v120;
      *(v8 + 16) = v121;
      *(v8 + 24) = v124;
      *(v8 + 20) = v118;
      *(v8 + 32) = v123;
      v125 = *(v8 + 8);
      if (v118 >= v125)
      {
        return result;
      }

      v126 = *v8;
      *v8 = v120;
      *(v8 + 4) = v121;
      *(v8 + 12) = v126;
      goto LABEL_175;
    }

LABEL_10:
    if (v9 <= 287)
    {
      v136 = (v8 + 12);
      v138 = v8 == a2 || v136 == a2;
      if (a4)
      {
        if (!v138)
        {
          v139 = 0;
          v140 = v8;
          do
          {
            v141 = *(v140 + 5);
            v142 = *(v140 + 2);
            v140 = v136;
            if (v141 < v142)
            {
              v143 = *v136;
              v144 = v139;
              while (1)
              {
                v145 = (v8 + v144);
                v146 = *(v8 + v144 + 4);
                v145[3] = *(v8 + v144);
                *(v145 + 4) = v146;
                v145[5] = *(v8 + v144 + 8);
                if (!v144)
                {
                  break;
                }

                v144 -= 12;
                if (v141 >= *(v145 - 1))
                {
                  v147 = v8 + v144 + 12;
                  goto LABEL_134;
                }
              }

              v147 = v8;
LABEL_134:
              *v147 = v143;
              *(v147 + 8) = v141;
            }

            v136 = (v140 + 12);
            v139 += 12;
          }

          while ((v140 + 12) != a2);
        }
      }

      else if (!v138)
      {
        v182 = (v8 + 8);
        do
        {
          v183 = *(v7 + 20);
          v184 = *(v7 + 8);
          v7 = v136;
          if (v183 < v184)
          {
            v185 = *v136;
            v186 = v182;
            do
            {
              v187 = *(v186 - 1);
              v186[1] = *(v186 - 2);
              v186[2] = v187;
              v186[3] = *v186;
              v188 = *(v186 - 3);
              v186 -= 3;
            }

            while (v183 < v188);
            *(v186 + 1) = v185;
            *(v186 + 3) = v183;
          }

          v136 = (v7 + 12);
          v182 += 3;
        }

        while (v7 + 12 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v148 = (v10 - 2) >> 1;
      v149 = v148;
      do
      {
        v150 = v149;
        if (v148 >= v149)
        {
          v151 = (2 * v149) | 1;
          v152 = v8 + 12 * v151;
          if (2 * v150 + 2 < v10 && *(v152 + 8) < *(v152 + 20))
          {
            v152 += 12;
            v151 = 2 * v150 + 2;
          }

          v153 = v8 + 12 * v150;
          v154 = *(v152 + 8);
          v155 = *(v153 + 8);
          if (v154 >= v155)
          {
            v156 = *v153;
            do
            {
              v157 = v153;
              v153 = v152;
              *v157 = *v152;
              *(v157 + 4) = *(v152 + 4);
              *(v157 + 8) = v154;
              if (v148 < v151)
              {
                break;
              }

              v158 = 2 * v151;
              v151 = (2 * v151) | 1;
              v152 = v8 + 12 * v151;
              v159 = v158 + 2;
              if (v159 < v10 && *(v152 + 8) < *(v152 + 20))
              {
                v152 += 12;
                v151 = v159;
              }

              v154 = *(v152 + 8);
            }

            while (v154 >= v155);
            *v153 = v156;
            *(v153 + 8) = v155;
          }
        }

        v149 = v150 - 1;
      }

      while (v150);
      v160 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
      while (2)
      {
        v161 = 0;
        v162 = *v8;
        v163 = *(v8 + 4);
        v164 = *(v8 + 8);
        v165 = v8;
        do
        {
          v166 = &v165[3 * v161];
          v167 = v166 + 3;
          v168 = (2 * v161) | 1;
          v161 = 2 * v161 + 2;
          if (v161 >= v160)
          {
            v161 = v168;
          }

          else
          {
            v169 = *(v166 + 5);
            v170 = *(v166 + 8);
            v171 = v166 + 6;
            if (v169 >= v170)
            {
              v161 = v168;
            }

            else
            {
              v167 = v171;
            }
          }

          *v165 = *v167;
          result = v167[1];
          v165[1] = result;
          v165[2] = v167[2];
          v165 = v167;
        }

        while (v161 <= ((v160 - 2) >> 1));
        if (v167 != (a2 - 12))
        {
          *v167 = *(a2 - 12);
          v167[1] = *(a2 - 8);
          v167[2] = *(a2 - 4);
          *(a2 - 12) = v162;
          *(a2 - 8) = v163;
          *(a2 - 4) = v164;
          v172 = v167 - v8 + 12;
          if (v172 >= 13)
          {
            v173 = (-2 - 0x5555555555555555 * (v172 >> 2)) >> 1;
            v174 = v8 + 12 * v173;
            v175 = *(v174 + 8);
            v164 = *(v167 + 2);
            if (v175 < v164)
            {
              v176 = *v167;
              do
              {
                v177 = v167;
                v167 = v174;
                *v177 = *v174;
                v177[1] = *(v174 + 4);
                v177[2] = v175;
                if (!v173)
                {
                  break;
                }

                v173 = (v173 - 1) >> 1;
                v174 = v8 + 12 * v173;
                v175 = *(v174 + 8);
              }

              while (v175 < v164);
              *v167 = v176;
LABEL_168:
              *(v167 + 2) = v164;
            }
          }

          a2 -= 12;
          if (v160-- <= 2)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v167 = v162;
      v167[1] = v163;
      goto LABEL_168;
    }

    v11 = v10 >> 1;
    v12 = v8 + 12 * (v10 >> 1);
    v13 = *(a2 - 4);
    if (v9 >= 0x601)
    {
      v14 = *(v12 + 8);
      v15 = *(v8 + 8);
      if (v14 >= v15)
      {
        if (v13 < v14)
        {
          v22 = *v12;
          *v12 = *(a2 - 12);
          *(a2 - 12) = v22;
          v23 = *(v12 + 4);
          *(v12 + 4) = *(a2 - 8);
          *(a2 - 8) = v23;
          *(v12 + 8) = v13;
          *(a2 - 4) = v14;
          v24 = *(v12 + 8);
          v25 = *(v8 + 8);
          if (v24 < v25)
          {
            v26 = *v8;
            *v8 = *v12;
            *v12 = v26;
            *(v8 + 8) = v24;
            *(v12 + 8) = v25;
          }
        }
      }

      else
      {
        v16 = *v8;
        if (v13 < v14)
        {
          *v8 = *(a2 - 12);
          *(a2 - 12) = v16;
          v17 = *(v8 + 4);
          *(v8 + 4) = *(a2 - 8);
          *(a2 - 8) = v17;
          *(v8 + 8) = v13;
          goto LABEL_27;
        }

        v32 = *(v8 + 4);
        *v8 = *v12;
        *v12 = v16;
        *(v12 + 4) = v32;
        *(v8 + 8) = v14;
        *(v12 + 8) = v15;
        v33 = *(a2 - 4);
        if (v33 < v15)
        {
          *v12 = *(a2 - 12);
          *(a2 - 12) = v16;
          v34 = *(v12 + 4);
          *(v12 + 4) = *(a2 - 8);
          *(a2 - 8) = v34;
          *(v12 + 8) = v33;
LABEL_27:
          *(a2 - 4) = v15;
        }
      }

      v35 = v8 + 12 * v11;
      v36 = v35 - 12;
      v37 = *(v35 - 4);
      v38 = *(v8 + 20);
      v39 = *(a2 - 16);
      if (v37 >= v38)
      {
        if (v39 < v37)
        {
          v42 = *v36;
          *v36 = *(a2 - 24);
          *(a2 - 24) = v42;
          v43 = *(v36 + 4);
          *(v36 + 4) = *(a2 - 20);
          *(a2 - 20) = v43;
          *(v36 + 8) = v39;
          *(a2 - 16) = v37;
          v44 = *(v36 + 8);
          v45 = *(v8 + 20);
          if (v44 < v45)
          {
            v46 = *(v8 + 12);
            *(v8 + 12) = *v36;
            *v36 = v46;
            v47 = *(v8 + 16);
            *(v8 + 16) = *(v36 + 4);
            *(v36 + 4) = v47;
            *(v8 + 20) = v44;
            *(v36 + 8) = v45;
          }
        }
      }

      else
      {
        v40 = *(v8 + 12);
        if (v39 < v37)
        {
          *(v8 + 12) = *(a2 - 24);
          *(a2 - 24) = v40;
          v41 = *(v8 + 16);
          *(v8 + 16) = *(a2 - 20);
          *(a2 - 20) = v41;
          *(v8 + 20) = v39;
          goto LABEL_39;
        }

        *(v8 + 12) = *v36;
        *v36 = v40;
        v51 = *(v8 + 16);
        *(v8 + 16) = *(v36 + 4);
        *(v36 + 4) = v51;
        *(v8 + 20) = v37;
        *(v36 + 8) = v38;
        v52 = *(a2 - 16);
        if (v52 < v38)
        {
          v53 = *v36;
          *v36 = *(a2 - 24);
          *(a2 - 24) = v53;
          v54 = *(v36 + 4);
          *(v36 + 4) = *(a2 - 20);
          *(a2 - 20) = v54;
          *(v36 + 8) = v52;
LABEL_39:
          *(a2 - 16) = v38;
        }
      }

      v55 = v8 + 12 * v11;
      v56 = v55 + 12;
      v57 = *(v55 + 20);
      v58 = *(v8 + 32);
      v59 = *(a2 - 28);
      if (v57 >= v58)
      {
        if (v59 < v57)
        {
          v62 = *v56;
          *v56 = *(a2 - 36);
          *(a2 - 36) = v62;
          v63 = *(v56 + 4);
          *(v56 + 4) = *(a2 - 32);
          *(a2 - 32) = v63;
          *(v56 + 8) = v59;
          *(a2 - 28) = v57;
          v64 = *(v56 + 8);
          v65 = *(v8 + 32);
          if (v64 < v65)
          {
            v66 = *(v8 + 24);
            *(v8 + 24) = *v56;
            *v56 = v66;
            v67 = *(v8 + 28);
            *(v8 + 28) = *(v56 + 4);
            *(v56 + 4) = v67;
            *(v8 + 32) = v64;
            *(v56 + 8) = v65;
          }
        }
      }

      else
      {
        v60 = *(v8 + 24);
        if (v59 < v57)
        {
          *(v8 + 24) = *(a2 - 36);
          *(a2 - 36) = v60;
          v61 = *(v8 + 28);
          *(v8 + 28) = *(a2 - 32);
          *(a2 - 32) = v61;
          *(v8 + 32) = v59;
          goto LABEL_48;
        }

        *(v8 + 24) = *v56;
        *v56 = v60;
        v68 = *(v8 + 28);
        *(v8 + 28) = *(v56 + 4);
        *(v56 + 4) = v68;
        *(v8 + 32) = v57;
        *(v56 + 8) = v58;
        v69 = *(a2 - 28);
        if (v69 < v58)
        {
          v70 = *v56;
          *v56 = *(a2 - 36);
          *(a2 - 36) = v70;
          v71 = *(v56 + 4);
          *(v56 + 4) = *(a2 - 32);
          *(a2 - 32) = v71;
          *(v56 + 8) = v69;
LABEL_48:
          *(a2 - 28) = v58;
        }
      }

      v72 = *(v12 + 8);
      v73 = *(v36 + 8);
      v74 = *(v56 + 8);
      if (v72 >= v73)
      {
        v75 = *v12;
        if (v74 >= v72)
        {
LABEL_55:
          v73 = v72;
        }

        else
        {
          v77 = *(v12 + 4);
          v78 = *v56;
          v79 = *(v56 + 4);
          *v12 = *v56;
          *(v12 + 4) = v79;
          *v56 = v75;
          *(v56 + 4) = v77;
          *(v12 + 8) = v74;
          *(v56 + 8) = v72;
          if (v74 >= v73)
          {
            v73 = v74;
            v75 = v78;
          }

          else
          {
            v80 = *v36;
            *v36 = v78;
            *(v36 + 4) = v79;
            *v12 = v80;
            *(v36 + 8) = v74;
            *(v12 + 8) = v73;
            v75 = *&v80;
          }
        }
      }

      else
      {
        v75 = *v36;
        v76 = *(v36 + 4);
        if (v74 < v72)
        {
          *v36 = *v56;
          *v56 = v75;
          *(v56 + 4) = v76;
          *(v36 + 8) = v74;
          *(v56 + 8) = v73;
          v75 = *v12;
          goto LABEL_55;
        }

        *v36 = *v12;
        *v12 = v75;
        *(v12 + 4) = v76;
        *(v36 + 8) = v72;
        *(v12 + 8) = v73;
        if (v74 < v73)
        {
          v100 = *v56;
          *v12 = *v56;
          *v56 = v75;
          *(v56 + 4) = v76;
          *(v12 + 8) = v74;
          *(v56 + 8) = v73;
          v75 = *&v100;
          v73 = v74;
        }
      }

      v81 = *(v12 + 4);
      v82 = *v8;
      *v8 = v75;
      *(v8 + 4) = v81;
      *v12 = v82;
      LODWORD(v82) = *(v8 + 8);
      *(v8 + 8) = v73;
      *(v12 + 8) = v82;
      goto LABEL_57;
    }

    v18 = *(v8 + 8);
    v19 = *(v12 + 8);
    if (v18 >= v19)
    {
      if (v13 < v18)
      {
        v27 = *v8;
        *v8 = *(a2 - 12);
        *(a2 - 12) = v27;
        v28 = *(v8 + 4);
        *(v8 + 4) = *(a2 - 8);
        *(a2 - 8) = v28;
        *(v8 + 8) = v13;
        *(a2 - 4) = v18;
        v29 = *(v8 + 8);
        v30 = *(v12 + 8);
        if (v29 < v30)
        {
          v31 = *v12;
          *v12 = *v8;
          *v8 = v31;
          *(v12 + 8) = v29;
          *(v8 + 8) = v30;
        }
      }

      goto LABEL_57;
    }

    v20 = *v12;
    if (v13 < v18)
    {
      *v12 = *(a2 - 12);
      *(a2 - 12) = v20;
      v21 = *(v12 + 4);
      *(v12 + 4) = *(a2 - 8);
      *(a2 - 8) = v21;
      *(v12 + 8) = v13;
LABEL_36:
      *(a2 - 4) = v19;
      goto LABEL_57;
    }

    v48 = *(v12 + 4);
    *v12 = *v8;
    *v8 = v20;
    *(v8 + 4) = v48;
    *(v12 + 8) = v18;
    *(v8 + 8) = v19;
    v49 = *(a2 - 4);
    if (v49 < v19)
    {
      *v8 = *(a2 - 12);
      *(a2 - 12) = v20;
      v50 = *(v8 + 4);
      *(v8 + 4) = *(a2 - 8);
      *(a2 - 8) = v50;
      *(v8 + 8) = v49;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v83 = *v8;
      v84 = *(v8 + 8);
LABEL_60:
      v85 = *(v8 + 4);
      v86 = v8;
      do
      {
        v87 = v86;
        v86 += 12;
      }

      while (*(v87 + 20) < v84);
      v88 = a2;
      if (v87 == v8)
      {
        v91 = a2;
        while (v86 < v91)
        {
          v89 = (v91 - 12);
          v92 = *(v91 - 4);
          v91 -= 12;
          if (v92 < v84)
          {
            goto LABEL_70;
          }
        }

        v89 = v91;
      }

      else
      {
        do
        {
          v89 = (v88 - 12);
          v90 = *(v88 - 4);
          v88 -= 12;
        }

        while (v90 >= v84);
      }

LABEL_70:
      v8 = v86;
      if (v86 < v89)
      {
        v93 = v89;
        do
        {
          v94 = *v8;
          *v8 = *v93;
          *v93 = v94;
          v95 = *(v8 + 4);
          *(v8 + 4) = v93[1];
          *(v93 + 1) = v95;
          v96 = *(v8 + 8);
          *(v8 + 8) = v93[2];
          *(v93 + 2) = v96;
          do
          {
            v97 = *(v8 + 20);
            v8 += 12;
          }

          while (v97 < v84);
          do
          {
            v98 = *(v93 - 1);
            v93 -= 3;
          }

          while (v98 >= v84);
        }

        while (v8 < v93);
      }

      if (v8 - 12 != v7)
      {
        *v7 = *(v8 - 12);
        *(v7 + 4) = *(v8 - 8);
        *(v7 + 8) = *(v8 - 4);
      }

      *(v8 - 12) = v83;
      *(v8 - 8) = v85;
      *(v8 - 4) = v84;
      if (v86 < v89)
      {
        goto LABEL_81;
      }

      v99 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::computeMergePairs(std::set<unsigned int> &,std::set<unsigned int> &,std::shared_ptr<std::vector<std::tuple<unsigned int,unsigned int,float>>>,BOOL)::$_0 &,std::tuple<unsigned int,unsigned int,float>*>(v7, v8 - 12);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::computeMergePairs(std::set<unsigned int> &,std::set<unsigned int> &,std::shared_ptr<std::vector<std::tuple<unsigned int,unsigned int,float>>>,BOOL)::$_0 &,std::tuple<unsigned int,unsigned int,float>*>(v8, a2);
      if (result)
      {
        a2 = v8 - 12;
        if (v99)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v99)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::computeMergePairs(std::set<unsigned int> &,std::set<unsigned int> &,std::shared_ptr<std::vector<std::tuple<unsigned int,unsigned int,float>>>,BOOL)::$_0 &,std::tuple<unsigned int,unsigned int,float>*,false>(v7, v8 - 12, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v84 = *(v8 + 8);
      v83 = *v8;
      if (*(v8 - 4) < v84)
      {
        goto LABEL_60;
      }

      if (v84 >= *(a2 - 4))
      {
        v103 = v8 + 12;
        do
        {
          v8 = v103;
          if (v103 >= a2)
          {
            break;
          }

          v104 = *(v103 + 8);
          v103 += 12;
        }

        while (v84 >= v104);
      }

      else
      {
        v101 = v8;
        do
        {
          v8 = v101 + 12;
          v102 = *(v101 + 20);
          v101 += 12;
        }

        while (v84 >= v102);
      }

      v105 = a2;
      if (v8 < a2)
      {
        v106 = a2;
        do
        {
          v105 = (v106 - 12);
          v107 = *(v106 - 4);
          v106 -= 12;
        }

        while (v84 < v107);
      }

      v108 = *(v7 + 4);
      while (v8 < v105)
      {
        v109 = *v8;
        *v8 = *v105;
        *v105 = v109;
        v110 = *(v8 + 4);
        *(v8 + 4) = v105[1];
        *(v105 + 1) = v110;
        v111 = *(v8 + 8);
        *(v8 + 8) = v105[2];
        *(v105 + 2) = v111;
        do
        {
          v112 = *(v8 + 20);
          v8 += 12;
        }

        while (v84 >= v112);
        do
        {
          v113 = *(v105 - 1);
          v105 -= 3;
        }

        while (v84 < v113);
      }

      if (v8 - 12 != v7)
      {
        *v7 = *(v8 - 12);
        *(v7 + 4) = *(v8 - 8);
        *(v7 + 8) = *(v8 - 4);
      }

      a4 = 0;
      *(v8 - 12) = v83;
      *(v8 - 8) = v108;
      *(v8 - 4) = v84;
    }
  }

  v131 = *(v8 + 20);
  v132 = *(v8 + 8);
  v133 = *(a2 - 4);
  if (v131 >= v132)
  {
    if (v133 >= v131)
    {
      return result;
    }

    v179 = *(v8 + 12);
    *(v8 + 12) = *(a2 - 12);
    *(a2 - 12) = v179;
    v180 = *(v8 + 16);
    *(v8 + 16) = *(a2 - 8);
    *(a2 - 8) = v180;
    *(v8 + 20) = v133;
    *(a2 - 4) = v131;
    v118 = *(v8 + 20);
    v125 = *(v8 + 8);
    if (v118 >= v125)
    {
      return result;
    }

    v181 = *v8;
    *v8 = *(v8 + 12);
    *(v8 + 12) = v181;
LABEL_175:
    *(v8 + 8) = v118;
    *(v8 + 20) = v125;
    return result;
  }

  v134 = *v8;
  if (v133 >= v131)
  {
    v189 = *(v8 + 4);
    *v8 = *(v8 + 12);
    *(v8 + 12) = v134;
    *(v8 + 16) = v189;
    *(v8 + 8) = v131;
    *(v8 + 20) = v132;
    v190 = *(a2 - 4);
    if (v190 >= v132)
    {
      return result;
    }

    *(v8 + 12) = *(a2 - 12);
    *(a2 - 12) = v134;
    v191 = *(v8 + 16);
    *(v8 + 16) = *(a2 - 8);
    *(a2 - 8) = v191;
    *(v8 + 20) = v190;
  }

  else
  {
    *v8 = *(a2 - 12);
    *(a2 - 12) = v134;
    v135 = *(v8 + 4);
    *(v8 + 4) = *(a2 - 8);
    *(a2 - 8) = v135;
    *(v8 + 8) = v133;
  }

  *(a2 - 4) = v132;
  return result;
}

float *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::computeMergePairs(std::set<unsigned int> &,std::set<unsigned int> &,std::shared_ptr<std::vector<std::tuple<unsigned int,unsigned int,float>>>,BOOL)::$_0 &,std::tuple<unsigned int,unsigned int,float>*,0>(float *result, float *a2, float *a3, float *a4)
{
  v4 = a2[2];
  v5 = result[2];
  v6 = a3[2];
  if (v4 >= v5)
  {
    if (v6 >= v4)
    {
      v4 = a3[2];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      v10 = *(a2 + 1);
      a2[1] = a3[1];
      *(a3 + 1) = v10;
      a2[2] = v6;
      a3[2] = v4;
      v11 = a2[2];
      v12 = result[2];
      if (v11 < v12)
      {
        v13 = *result;
        *result = *a2;
        *a2 = v13;
        v14 = *(result + 1);
        result[1] = a2[1];
        *(a2 + 1) = v14;
        result[2] = v11;
        a2[2] = v12;
        v4 = a3[2];
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v4)
    {
      *result = *a3;
      *a3 = v7;
      v8 = *(result + 1);
      result[1] = a3[1];
      *(a3 + 1) = v8;
      result[2] = v6;
LABEL_9:
      a3[2] = v5;
      v4 = v5;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v7;
    v15 = *(result + 1);
    result[1] = a2[1];
    *(a2 + 1) = v15;
    result[2] = v4;
    a2[2] = v5;
    v4 = a3[2];
    if (v4 < v5)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *(a2 + 1);
      a2[1] = a3[1];
      *(a3 + 1) = v17;
      a2[2] = v4;
      goto LABEL_9;
    }
  }

LABEL_11:
  v18 = a4[2];
  if (v18 < v4)
  {
    v19 = *a3;
    *a3 = *a4;
    *a4 = v19;
    v20 = *(a3 + 1);
    a3[1] = a4[1];
    *(a4 + 1) = v20;
    a3[2] = v18;
    a4[2] = v4;
    v21 = a3[2];
    v22 = a2[2];
    if (v21 < v22)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 1);
      a2[1] = a3[1];
      *(a3 + 1) = v24;
      a2[2] = v21;
      a3[2] = v22;
      v25 = a2[2];
      v26 = result[2];
      if (v25 < v26)
      {
        v27 = *result;
        *result = *a2;
        *a2 = v27;
        v28 = *(result + 1);
        result[1] = a2[1];
        *(a2 + 1) = v28;
        result[2] = v25;
        a2[2] = v26;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::computeMergePairs(std::set<unsigned int> &,std::set<unsigned int> &,std::shared_ptr<std::vector<std::tuple<unsigned int,unsigned int,float>>>,BOOL)::$_0 &,std::tuple<unsigned int,unsigned int,float>*>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v22 = *(a1 + 20);
        v23 = *(a1 + 8);
        v24 = *(a2 - 4);
        if (v22 < v23)
        {
          v25 = *a1;
          if (v24 >= v22)
          {
            v41 = *(a1 + 4);
            *a1 = *(a1 + 12);
            *(a1 + 12) = v25;
            *(a1 + 16) = v41;
            *(a1 + 8) = v22;
            *(a1 + 20) = v23;
            v42 = *(a2 - 4);
            if (v42 >= v23)
            {
              return 1;
            }

            *(a1 + 12) = *(a2 - 12);
            *(a2 - 12) = v25;
            v43 = *(a1 + 16);
            *(a1 + 16) = *(a2 - 8);
            *(a2 - 8) = v43;
            *(a1 + 20) = v42;
          }

          else
          {
            *a1 = *(a2 - 12);
            *(a2 - 12) = v25;
            v26 = *(a1 + 4);
            *(a1 + 4) = *(a2 - 8);
            *(a2 - 8) = v26;
            *(a1 + 8) = v24;
          }

          *(a2 - 4) = v23;
          return 1;
        }

        if (v24 >= v22)
        {
          return 1;
        }

        v34 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 12);
        *(a2 - 12) = v34;
        v35 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 8);
        *(a2 - 8) = v35;
        *(a1 + 20) = v24;
        *(a2 - 4) = v22;
        v13 = *(a1 + 20);
        v20 = *(a1 + 8);
        if (v13 >= v20)
        {
          return 1;
        }

        v36 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 12) = v36;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::computeMergePairs(std::set<unsigned int> &,std::set<unsigned int> &,std::shared_ptr<std::vector<std::tuple<unsigned int,unsigned int,float>>>,BOOL)::$_0 &,std::tuple<unsigned int,unsigned int,float>*,0>(a1, (a1 + 12), (a1 + 24), (a2 - 12));
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererWithTorso::computeMergePairs(std::set<unsigned int> &,std::set<unsigned int> &,std::shared_ptr<std::vector<std::tuple<unsigned int,unsigned int,float>>>,BOOL)::$_0 &,std::tuple<unsigned int,unsigned int,float>*,0>(a1, (a1 + 12), (a1 + 24), (a1 + 36));
        v9 = *(a2 - 4);
        v10 = *(a1 + 44);
        if (v9 >= v10)
        {
          return 1;
        }

        v11 = *(a1 + 36);
        *(a1 + 36) = *(a2 - 12);
        *(a2 - 12) = v11;
        v12 = *(a1 + 40);
        *(a1 + 40) = *(a2 - 8);
        *(a2 - 8) = v12;
        *(a1 + 44) = v9;
        *(a2 - 4) = v10;
        v13 = *(a1 + 44);
        v14 = *(a1 + 32);
        if (v13 >= v14)
        {
          return 1;
        }

        v15 = *(a1 + 36);
        v16 = *(a1 + 40);
        v17 = *(a1 + 24);
        *(a1 + 24) = v15;
        *(a1 + 28) = v16;
        *(a1 + 36) = v17;
        *(a1 + 32) = v13;
        *(a1 + 44) = v14;
        v18 = *(a1 + 20);
        if (v13 >= v18)
        {
          return 1;
        }

        v19 = *(a1 + 12);
        *(a1 + 12) = v15;
        *(a1 + 16) = v16;
        *(a1 + 24) = v19;
        *(a1 + 20) = v13;
        *(a1 + 32) = v18;
        v20 = *(a1 + 8);
        if (v13 >= v20)
        {
          return 1;
        }

        v21 = *a1;
        *a1 = v15;
        *(a1 + 4) = v16;
        *(a1 + 12) = v21;
        break;
      default:
        goto LABEL_17;
    }

    *(a1 + 8) = v13;
    *(a1 + 20) = v20;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 4);
    v6 = *(a1 + 8);
    if (v5 < v6)
    {
      v7 = *a1;
      *a1 = *(a2 - 12);
      *(a2 - 12) = v7;
      v8 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 8);
      *(a2 - 8) = v8;
      *(a1 + 8) = v5;
      *(a2 - 4) = v6;
    }

    return 1;
  }

LABEL_17:
  v27 = *(a1 + 20);
  v28 = (a1 + 8);
  v29 = *(a1 + 8);
  v30 = (a1 + 32);
  v31 = *(a1 + 32);
  if (v27 < v29)
  {
    v33 = *a1;
    v32 = *(a1 + 4);
    if (v31 >= v27)
    {
      *a1 = *(a1 + 12);
      *(a1 + 12) = v33;
      *(a1 + 16) = v32;
      *(a1 + 8) = v27;
      *(a1 + 20) = v29;
      if (v31 >= v29)
      {
        goto LABEL_34;
      }

      *(a1 + 12) = *(a1 + 24);
      *(a1 + 24) = v33;
      *(a1 + 28) = v32;
      v28 = (a1 + 20);
    }

    else
    {
      *a1 = *(a1 + 24);
      *(a1 + 24) = v33;
      *(a1 + 28) = v32;
    }

    goto LABEL_33;
  }

  if (v31 < v27)
  {
    v37 = *(a1 + 24);
    v38 = *(a1 + 28);
    v39 = *(a1 + 12);
    *(a1 + 12) = v37;
    *(a1 + 16) = v38;
    *(a1 + 24) = v39;
    *(a1 + 20) = v31;
    *(a1 + 32) = v27;
    if (v31 < v29)
    {
      v40 = *a1;
      *a1 = v37;
      *(a1 + 4) = v38;
      *(a1 + 12) = v40;
      v30 = (a1 + 20);
LABEL_33:
      *v28 = v31;
      *v30 = v29;
    }
  }

LABEL_34:
  v44 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  v47 = a1 + 24;
  while (1)
  {
    v48 = *(v44 + 8);
    if (v48 < *(v47 + 8))
    {
      v49 = *v44;
      v50 = v45;
      while (1)
      {
        v51 = a1 + v50;
        v52 = *(a1 + v50 + 28);
        *(v51 + 36) = *(a1 + v50 + 24);
        *(v51 + 40) = v52;
        *(v51 + 44) = *(a1 + v50 + 32);
        if (v50 == -24)
        {
          break;
        }

        v50 -= 12;
        if (v48 >= *(v51 + 20))
        {
          v53 = a1 + v50 + 36;
          goto LABEL_42;
        }
      }

      v53 = a1;
LABEL_42:
      *v53 = v49;
      *(v53 + 8) = v48;
      if (++v46 == 8)
      {
        return v44 + 12 == a2;
      }
    }

    v47 = v44;
    v45 += 12;
    v44 += 12;
    if (v44 == a2)
    {
      return 1;
    }
  }
}

void std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

void *std::set<unsigned int>::set[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(a1, v3, *(v5 + 7));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void *std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(void *result, uint64_t *a2, unsigned int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 7), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 7) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 28);
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 7) <= a3)
  {
    for (i = *v3; i; i = v18[1])
    {
      while (1)
      {
        v18 = i;
        v19 = *(i + 28);
        if (v19 <= a3)
        {
          break;
        }

        i = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_39;
      }

      v3 = v18 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}

void std::__shared_ptr_emplace<std::vector<std::tuple<unsigned int,unsigned int,float>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<std::tuple<unsigned int,unsigned int,float>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1973030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long,std::list<long long>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::list<long long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<long long>::clear(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::getAverageDescriptorsOfClusters(vision::mod::GreedyClustererFacesWithTorso *a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v4 = (*(*a1 + 112))(a1, &v11);
  if (v4 == 5248)
  {
    if (*a2 == *(a2 + 8))
    {
      v4 = 5248;
    }

    else
    {
      v4 = 5243;
      v5 = **a2;
      v6 = malloc_type_malloc(4 * (*(*(a1 + 9) + 104) / 2), 0x100004052888210uLL);
      if (v6)
      {
        if (vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(a1, v5))
        {
          vision::mod::GreedyClustererFacesWithTorso::getAverageDescriptorOfClusterContainingFace(a1, v5, &v11, v6);
          v12[2] = v5;
          v9 = 0;
          v10 = 0;
          __p = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
        }

        free(v6);
        v4 = 5244;
      }
    }
  }

  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v12[0]);
  return v4;
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::getAverageDescriptorOfClusterContainingFace(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(a1, a2) & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v16 = 5244;
    goto LABEL_18;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v16 = 5245;
LABEL_18:
    *exception = v16;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v8 = *(a1[9] + 104) + (*(a1[9] + 104) >> 31);
  memset(a4, 48, 4 * (*(a1[9] + 104) / 2));
  v9 = a1[19];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = a1 + 19;
  do
  {
    if (v9[4] >= a2)
    {
      v10 = v9;
    }

    v9 = v9[v9[4] < a2];
  }

  while (v9);
  if (v10 == a1 + 19 || v10[4] > a2)
  {
LABEL_10:
    v10 = a1 + 19;
  }

  v11 = v10[5];
  v26 = v11;
  v12 = *(a3 + 8);
  if (!v12)
  {
LABEL_17:
    exception = __cxa_allocate_exception(8uLL);
    v16 = 5224;
    goto LABEL_18;
  }

  v13 = v8 >> 1;
  while (1)
  {
    v14 = v12[4];
    if (v11 >= v14)
    {
      break;
    }

LABEL_16:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (v14 < v11)
  {
    ++v12;
    goto LABEL_16;
  }

  v27 = &v26;
  v17 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a3, v11);
  v19 = v17[5];
  v18 = v17[6];
  *&v27 = 1.0 / (v18 - v19);
  if (v18 != v19)
  {
    v20 = a1 + 16;
    do
    {
      v21 = *v20;
      if (!*v20)
      {
        goto LABEL_28;
      }

      v22 = *v19;
      v23 = a1 + 16;
      do
      {
        if (v21[4] >= v22)
        {
          v23 = v21;
        }

        v21 = v21[v21[4] < v22];
      }

      while (v21);
      if (v23 == v20 || v22 < v23[4])
      {
LABEL_28:
        v23 = a1 + 16;
      }

      v24 = **(a1[9] + 88);
      MEMORY[0x1AC558670](v24 + *(v23 + 10) * *(v24 + 16) + 64, 1, a4, 1, a4, 1, v13);
      ++v19;
    }

    while (v19 != v18);
  }

  return MEMORY[0x1AC5587B0](a4, 1, &v27, a4, 1, v13);
}

void *std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::descriptorLength(vision::mod::GreedyClustererFacesWithTorso *this)
{
  v1 = *(this + 9);
  if (v1)
  {
    return *(v1 + 104);
  }

  else
  {
    return 0;
  }
}

void vision::mod::GreedyClustererFacesWithTorso::getIdsForCluster(void *a1, uint64_t a2, void *a3, void *a4)
{
  if ((vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(a1, a2) & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 5244;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v8 = a1 + 19;
  v9 = *std::map<long long,long long>::at(a1[19], a2);
  std::vector<long long>::reserve(a3, a1[20] + 1);
  if (a4)
  {
    v10 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__equal_range_multi<long long>(a4, v9);
    if (v10 != v11)
    {
      v12 = v10;
      v13 = v11;
      do
      {
        std::vector<long long>::push_back[abi:ne200100](a3, v12 + 3);
        v12 = *v12;
      }

      while (v12 != v13);
    }
  }

  else
  {
    v14 = a1[18];
    if (v14 != v8)
    {
      do
      {
        if (v14[5] == v9)
        {
          std::vector<long long>::push_back[abi:ne200100](a3, v14 + 4);
        }

        v15 = v14[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v14[2];
            v17 = *v16 == v14;
            v14 = v16;
          }

          while (!v17);
        }

        v14 = v16;
      }

      while (v16 != v8);
    }
  }
}

void *std::map<long long,long long>::at(void *a1, uint64_t a2)
{
  if (!a1)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = a1[4];
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_8;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__equal_range_multi<long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v4);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (!*v6)
  {
    return result;
  }

  while (1)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      return 0;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      return result;
    }
  }

  if (result[2] != a2)
  {
    goto LABEL_17;
  }

  v8 = result;
  do
  {
    v8 = *v8;
  }

  while (v8 && v8[2] == a2);
  return result;
}