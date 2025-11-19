uint64_t ***std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string const>(unsigned long long &,std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>> *,std::string const &)::{lambda(void)#1}::operator()(uint64_t ***result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(*result + 23);
  v4 = **result;
  v5 = (*result)[1];
  v6 = *v2;
  if (*v2)
  {
    *result[2] = (*result[2] | (13 << v6));
  }

  else
  {
    *result[2] = 13;
  }

  v7 = v3;
  if (v3 < 0)
  {
    v3 = v5;
  }

  if (v7 < 0)
  {
    v1 = v4;
  }

  *v2 = v6 + 5;
  v8 = result[3];
  v9 = *v8;
  *v8 += 2;
  *v9 = v1;
  v9[1] = v3;
  return result;
}

void AudioDSPGraph::BoxRegistry::~BoxRegistry(AudioDSPGraph::BoxRegistry *this)
{
  v2 = (this + 80);
  std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,AudioDSPGraph::BoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,AudioDSPGraph::BoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>>>::~__hash_table(this + 40);

  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>>>::~__hash_table(this);
}

void std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 25);
        v4 -= 6;
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

uint64_t std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,AudioDSPGraph::BoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,AudioDSPGraph::BoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100]((v2 + 5));
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,0>((v2 + 2));
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

uint64_t std::__shared_ptr_pointer<AudioDSPGraph::Box  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AudioDSPGraph::Box  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,0>(uint64_t a1)
{
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1C91D97B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    if (v37)
    {
      CADSPErrorCreateFromCurrentException(*MEMORY[0x1E695E480]);
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    __cxa_end_catch();
    if (v37)
    {
      v40 = v39;
      *v37 = v39;
    }

    JUMPOUT(0x1C91D976CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADSPBoxSetProperty(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v5 = HIDWORD(a2);
  v6 = (*(**(a1 + 8) + 312))(*(a1 + 8));
  if (v6)
  {
    v9 = a3;
    v10 = v6;
    v12[0] = v4;
    v12[1] = 0;
    v12[2] = v5;
    v12[3] = 0;
    v12[5] = 0;
    v12[6] = 6342;
    v12[4] = v9;
    v13 = v17;
    *__len = xmmword_1C925F110;
    v15 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v16 = 0;
    __p = v17;
    __dst[0] = 3;
    __dst[1] = v12;
    __dst[2] = 6342;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v13, "failed to set property for ID {}, scope {}, element {}", 54, __dst);
    std::string::basic_string<std::string_view,0>(__dst, __p, __len[1]);
    if (__p != v17)
    {
      operator delete(__p);
    }

    AudioDSPGraph::ThrowException(v10, __dst, off_1E83345F8);
  }

  result = 1;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C91D9A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    if (v62)
    {
      CADSPRealTimeErrorCreateFromCurrentException();
      *v62 = v64;
    }

    __cxa_end_catch();
    JUMPOUT(0x1C91D9998);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADSPBoxGetPropertyInfo(uint64_t a1, unint64_t a2, unsigned int a3, int *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    __dst[0] = 0;
    memset(v21, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v15) = 134217984;
    *(&v15 + 4) = 0;
    _os_log_send_and_compose_impl();
    LODWORD(v8) = _os_crash_msg();
    __break(1u);
LABEL_8:
    v13 = v8;
    v15 = v5;
    v16 = v6;
    v17 = 0;
    v19 = 0;
    v20 = 6342;
    v18 = v4;
    *&v21[0] = &v21[2] + 8;
    *(v21 + 8) = xmmword_1C925F110;
    *(&v21[1] + 1) = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    *&v21[2] = 0;
    __p = &v21[2] + 8;
    __dst[0] = 3;
    __dst[1] = &v15;
    __dst[2] = 6342;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v21, "failed to get property info for ID {}, scope {}, element {}", 59, __dst);
    std::string::basic_string<std::string_view,0>(__dst, __p, *&v21[1]);
    if (__p != &v21[2] + 8)
    {
      operator delete(__p);
    }

    AudioDSPGraph::ThrowException(v13, __dst, off_1E83345C8);
  }

  v4 = a3;
  v5 = a2;
  v6 = HIDWORD(a2);
  v8 = (*(**(a1 + 8) + 296))(*(a1 + 8));
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((v8 & 0x100000000) != 0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  *a4 = v10;
  a4[1] = v8;
  result = 1;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C91D9D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (a17 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(a1);
    if (v63)
    {
      CADSPRealTimeErrorCreateFromCurrentException();
      *v63 = v64;
    }

    __cxa_end_catch();
    JUMPOUT(0x1C91D9C0CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1C91D9DE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CADSPBoxGetProperty(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    __dst[0] = 0;
    memset(v19, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v13) = 134217984;
    *(&v13 + 4) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = a3;
  if (a4)
  {
    v8 = (*(**(a1 + 8) + 304))(*(a1 + 8), a2, HIDWORD(a2), a3, a5, a4);
    if (v8)
    {
      v11 = v8;
      v13 = a2;
      v14 = HIDWORD(a2);
      v15 = 0;
      v17 = 0;
      v18 = 6342;
      v16 = v6;
      *&v19[0] = &v19[2] + 8;
      *(v19 + 8) = xmmword_1C925F110;
      *(&v19[1] + 1) = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      *&v19[2] = 0;
      __p = &v19[2] + 8;
      __dst[0] = 3;
      __dst[1] = &v13;
      __dst[2] = 6342;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v19, "failed to get property for ID {}, scope {}, element {}", 54, __dst);
      std::string::basic_string<std::string_view,0>(__dst, __p, *&v19[1]);
      if (__p != &v19[2] + 8)
      {
        operator delete(__p);
      }

      AudioDSPGraph::ThrowException(v11, __dst, off_1E83345E0);
    }

    result = 1;
  }

  else
  {
    result = CADSPBoxGetPropertyInfo(a1, a2, a3, v19);
    if (result)
    {
      *a5 = DWORD1(v19[0]);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C91DA094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (a17 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(a1);
    if (v63)
    {
      CADSPRealTimeErrorCreateFromCurrentException();
      *v63 = v64;
    }

    __cxa_end_catch();
    JUMPOUT(0x1C91D9F24);
  }

  _Unwind_Resume(a1);
}

void sub_1C91DA104(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *CADSPBoxSetParameter(uint64_t a1, uint64_t a2, uint64_t a3, const void ***a4)
{
  (*(**(a1 + 8) + 88))(v7);
  v5 = CA::DSP::RealTimeErrorGuard(a4, v7);
  std::__expected_void_base<AudioDSPGraph::Error>::__repr::~__repr[abi:ne200100](v7);
  return v5;
}

uint64_t std::destroy_at[abi:ne200100]<AudioDSPGraph::Error,0>(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (!v2)
  {
LABEL_6:
    *(v1 + 16) = 0;
    return result;
  }

  if (v2 == 1)
  {
    v3 = *(result + 16);
    if (v3)
    {
      (*(*v3 + 24))(*(result + 16));
      (**v3)(v3);
      result = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
        return result;
      }

      result = caulk::rt_safe_memory_resource::rt_deallocate(result, v3);
      goto LABEL_6;
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *CADSPBoxGetParameter(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, const void ***a5)
{
  (*(**(a1 + 8) + 96))(&v15);
  if (v18)
  {
    *a4 = v15;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v11 = v15;
    v8 = v16;
    v16 = 0;
    v12 = v8;
    LODWORD(v8) = v17;
    v17 = 0;
    v13 = v8;
  }

  v14 = v7;
  std::__expected_base<float,AudioDSPGraph::Error>::__repr::~__repr[abi:ne200100](&v15);
  v9 = CA::DSP::RealTimeErrorGuard(a5, &v11);
  std::__expected_void_base<AudioDSPGraph::Error>::__repr::~__repr[abi:ne200100](&v11);
  return v9;
}

void sub_1C91DA550(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C91DA650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1C91DA78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_1C91DA834(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

CADSPBox *CADSPBoxCreateWithModel(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v4 = [[CADSPBox allocWithZone:?]error:"initWithModel:error:", a2, &v8];
  v5 = v8;
  v6 = v5;
  if (a3 && !v4)
  {
    *a3 = v5;
  }

  return v4;
}

void *CADSPBoxGetModel(void *a1)
{
  v1 = [a1 model];

  return v1;
}

void sub_1C91DAAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

uint64_t AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::addLeaf(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[7];
  if (v3 == v4)
  {
    v5 = a1[6];
  }

  else
  {
    v5 = a1[6];
    while (*v5 != *a2)
    {
      v5 += 2;
      if (v5 == v4)
      {
        goto LABEL_9;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_9:
    v6 = a1[8];
    if (v4 >= v6)
    {
      v8 = (v4 - v3) >> 4;
      if ((v8 + 1) >> 60)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v9 = v6 - v3;
      v10 = v9 >> 3;
      if (v9 >> 3 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        std::allocator<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::allocate_at_least[abi:ne200100](v11);
      }

      *(16 * v8) = *a2;
      v7 = 16 * v8 + 16;
      *a2 = 0;
      a2[1] = 0;
      v12 = a1[6];
      v13 = a1[7] - v12;
      v14 = (16 * v8 - v13);
      memcpy(v14, v12, v13);
      v15 = a1[6];
      a1[6] = v14;
      a1[7] = v7;
      a1[8] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v4 = *a2;
      v7 = (v4 + 1);
      *a2 = 0;
      a2[1] = 0;
    }

    a1[7] = v7;
    operator new();
  }

  caulk::concurrent::exchanged_pointer_base<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::extract_retired(&v17, v3);
  std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v17);
  return 0;
}

void std::allocator<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__init_with_size[abi:ne200100]<std::shared_ptr<AudioDSPGraph::BoxEventHandler>*,std::shared_ptr<AudioDSPGraph::BoxEventHandler>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::allocator<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::write(void ***a1@<X1>, unint64_t a2@<X8>)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X0] }

  for (i = _X2; ; i = _X2)
  {
    a2 = a2 & 0xFFFFFFFF00000000 | (_X3 + 1) | 0x80000000;
    v13[0] = *a1;
    v13[1] = a2;
    v11 = _X3 | (v2 << 32);
    _X3 = v11;
    __asm { CASPAL          X2, X3, X4, X5, [X0] }

    if (_X2 == i)
    {
      break;
    }

    v2 = HIDWORD(v11);
  }

  *a1 = 0;
  if (i)
  {
    v13[0] = (i + 8);
    std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](v13);

    JUMPOUT(0x1CCA84AE0);
  }
}

uint64_t *std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 8);
    std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x1CCA84AE0](v2, 0xA1C4030951706);
  }

  return a1;
}

void *caulk::concurrent::exchanged_pointer_base<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::extract_retired@<X0>(void *result@<X0>, unint64_t a2@<X8>)
{
  _X2 = 0;
  _X3 = 0;
  v5 = 0;
  __asm { CASP            X2, X3, X2, X3, [X1] }

  if (_X2)
  {
    LODWORD(_X7) = 0;
    _X4 = 0;
    while (1)
    {
      a2 = a2 & 0xFFFFFFFF00000000 | (_X7 + 1) & 0x7FFFFFFF;
      v13 = _X7 | (v2 << 32);
      _X7 = v13;
      __asm { CASPAL          X6, X7, X4, X5, [X1] }

      if (_X6 == _X2)
      {
        break;
      }

      v5 = 0;
      if (_X6)
      {
        v2 = HIDWORD(v13);
        _X2 = _X6;
        if ((v13 & 0x80000000) == 0)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    v5 = _X2;
  }

LABEL_8:
  *result = v5;
  return result;
}

void std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void *AudioDSPGraph::BoxEventDispatcher<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::boxDidProcess(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  for (i = result[2]; v3 != i; v3 += 2)
  {
    result = *v3;
    if (*v3)
    {
      result = (*(*result + 24))(result, a2, a3);
    }
  }

  return result;
}

void *AudioDSPGraph::BoxEventDispatcher<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::boxWillProcess(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  for (i = result[2]; v3 != i; v3 += 2)
  {
    result = *v3;
    if (*v3)
    {
      result = (*(*result + 16))(result, a2, a3);
    }
  }

  return result;
}

void AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root::~Root(uint64_t a1)
{
  v1 = (a1 + 8);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root::~Root(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t CA::DSP::BoxEventHandler::boxDidProcess(CA::DSP::BoxEventHandler *this, const AudioDSPGraph::Box *a2, int a3)
{
  result = *(this + 1);
  if (result)
  {
    v4[0] = 1;
    v4[1] = a3;
    return (*(result + 16))(result, *(a2 + 1), v4);
  }

  return result;
}

uint64_t CA::DSP::BoxEventHandler::boxWillProcess(CA::DSP::BoxEventHandler *this, const AudioDSPGraph::Box *a2, int a3)
{
  result = *(this + 1);
  if (result)
  {
    v4[0] = 0;
    v4[1] = a3;
    return (*(result + 16))(result, *(a2 + 1), v4);
  }

  return result;
}

void CA::DSP::BoxEventHandler::~BoxEventHandler(id *this)
{

  JUMPOUT(0x1CCA84AE0);
}

{
}

void std::__shared_ptr_emplace<CA::DSP::BoxEventHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F48CB9A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

void sub_1C91DB5E4(_Unwind_Exception *a1)
{
  MEMORY[0x1CCA84AE0](v5, 0xA1C4030951706);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

uint64_t AudioDSPGraph::BoxEventDispatcher<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>>::boxDidProcess(uint64_t a1)
{
  result = AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::read(a1 + 16);
  if (result)
  {
    v2 = *(*result + 24);

    return v2();
  }

  return result;
}

uint64_t AudioDSPGraph::BoxEventDispatcher<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>>::boxWillProcess(uint64_t a1)
{
  result = AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::read(a1 + 16);
  if (result)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

void AudioDSPGraph::BoxEventHandlerTree::~BoxEventHandlerTree(AudioDSPGraph::BoxEventHandlerTree *this)
{
  *this = &unk_1F48CC910;
  v1 = this + 16;
  v2 = (this + 48);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v2);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(v1);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CC910;
  v1 = this + 16;
  v2 = (this + 48);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v2);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(v1);
}

{
  *this = &unk_1F48CC910;
  v1 = this + 16;
  v2 = (this + 48);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v2);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(v1);
}

uint64_t AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v11 = (v2 + 8);
    std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v11);
    MEMORY[0x1CCA84AE0](v2, 0xA1C4030951706);
  }

  _X22 = 0;
  _X23 = 0;
  __asm { CASPAL          X22, X23, X22, X23, [X19] }

  if (_X22)
  {
    v11 = (_X22 + 8);
    std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v11);
    MEMORY[0x1CCA84AE0](_X22, 0xA1C4030951706);
  }

  return a1;
}

void AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::~EventHandlerTree(uint64_t a1)
{
  *a1 = &unk_1F48CC910;
  v1 = a1 + 16;
  v2 = (a1 + 48);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v2);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(v1);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::~EventHandlerTree(uint64_t a1)
{
  *a1 = &unk_1F48CC910;
  v2 = a1 + 16;
  v4 = (a1 + 48);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v4);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(v2);
  return a1;
}

void std::__shared_ptr_emplace<AudioDSPGraph::BoxEventHandlerTree>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F48CB970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t CADSPBoxEventListenerCreate(uint64_t a1)
{
  v1 = [CADSPBoxEventListener allocWithZone:a1];

  return [(CADSPBoxEventListener *)v1 init];
}

id CADSPBoxEventListenerGetProcessPCMDataCallback(void *a1)
{
  v1 = [a1 processPCMDataCallback];

  return v1;
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

BOOL AudioDSPGraph::IR::BoxModel::operator==(void *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || !std::operator==[abi:ne200100]<std::string,std::string>(v7 + 3, v6 + 24))
  {
    return 0;
  }

  v9 = *(v7 + 76);
  v10 = v6[76];
  if (v9 == v10 && *(v7 + 76))
  {
    if (!AudioDSPGraph::IR::AudioComponentDescription::operator==(v7 + 14, v6 + 14))
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  if (*(v7 + 20) != *(v6 + 20) || *(v7 + 21) != *(v6 + 21))
  {
    return 0;
  }

  return std::operator==[abi:ne200100]<std::string,std::string>(v7 + 11, v6 + 88);
}

BOOL std::operator==[abi:ne200100]<std::string,std::string>(void *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 24);
  v3 = v2 == a2[24];
  if (v2 == a2[24] && v2 != 0)
  {
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v7 = a2[23];
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 1);
    }

    if (v6 == v7)
    {
      if (v5 < 0)
      {
        a1 = *a1;
      }

      v9 = *a2;
      if (v8 < 0)
      {
        a2 = *a2;
      }

      return memcmp(a1, a2, v6) == 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(std::string *this, char *__s)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::__assign_external(this, __s);
  }

  else
  {
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&this->__r_.__value_.__s + 23) = v4;
    if (v4)
    {
      memmove(this, __s, v4);
    }

    this->__r_.__value_.__s.__data_[v5] = 0;
    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

BOOL AudioDSPGraph::IR::BoxAlias::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t CADSPBoxModelCreate(uint64_t a1)
{
  v1 = [CADSPBoxModel allocWithZone:a1];

  return [(CADSPBoxModel *)v1 init];
}

uint64_t CADSPBoxModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutableBoxModel allocWithZone:a1];

  return [(CADSPMutableBoxModel *)v1 init];
}

uint64_t CADSPBoxRelationModelCreate(uint64_t a1)
{
  v1 = [CADSPBoxRelationModel allocWithZone:a1];

  return [(CADSPBoxRelationModel *)v1 init];
}

uint64_t CADSPBoxRelationModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutableBoxRelationModel allocWithZone:a1];

  return [(CADSPMutableBoxRelationModel *)v1 init];
}

uint64_t CADSPRealTimeErrorCopyDescription(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:256];
  [v2 appendFormat:@"RealTimeError Domain=%s Code=%ld", "com.apple.audio.AudioDSPGraph", *(a1 + 16)];
  v3 = *(a1 + 32);
  if (v3)
  {
    CA::DSP::ReferenceCounted<__CFString const*>::ReferenceCounted(&v17, v3);
    goto LABEL_22;
  }

  v4 = *(a1 + 40);
  if (*(a1 + 48))
  {
    if (!v4)
    {
      goto LABEL_12;
    }

    (*(*v4 + 16))(__p, *(a1 + 40));
    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v4)
    {
LABEL_12:
      v17 = 0;
      goto LABEL_22;
    }

    v5 = strlen(*(a1 + 40));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v23) = v5;
    if (v5)
    {
      memmove(&__dst, v4, v5);
    }

    *(&__dst + v6) = 0;
    *__p = __dst;
    v20 = v23;
    v21 = 1;
  }

  if (v20 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v7, 0x8000100u);
  BYTE8(__dst) = 1;
  *&__dst = 0;
  v17 = v8;
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&__dst);
  if ((v21 & 1) != 0 && SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_22:
  v9 = v17;
  v17 = 0;
  v18 = v9;
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v17);
  if (v9)
  {
    [v2 appendFormat:@" %@", v9];
  }

  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v18);
  [v2 appendString:@" UserInfo={"];
  CA::DSP::ReferenceCounted<__CFString const*>::ReferenceCounted(&v16, *(a1 + 56));
  v10 = v16;
  v16 = 0;
  __p[0] = v10;
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v16);
  if (v10)
  {
    [v2 appendFormat:@"CADSPErrorSourceFile=%@", v10];
    v10 = ", ";
  }

  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(__p);
  CA::DSP::ReferenceCounted<__CFNumber const*>::ReferenceCounted(&v15, *(a1 + 64));
  v11 = v15;
  v15 = 0;
  __p[0] = v11;
  CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(&v15);
  if (v11)
  {
    [v2 appendFormat:@"%sCADSPErrorSourceLine=%@", v10, v11];
    v10 = ", ";
  }

  CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(__p);
  v12 = *(a1 + 24);
  if (v12)
  {
    [v2 appendFormat:@"%sCADSPErrorStatus=%u", v10, v12];
  }

  [v2 appendString:@"}"];
  v13 = [v2 copy];

  return v13;
}

void *CA::DSP::ReferenceCounted<__CFString const*>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *CA::DSP::ReferenceCounted<__CFNumber const*>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void *CADSPRealTimeErrorCopySourceLine(uint64_t a1)
{
  CA::DSP::ReferenceCounted<__CFNumber const*>::ReferenceCounted(&v3, *(a1 + 64));
  v1 = v3;
  if (v3)
  {
    v3 = 0;
  }

  CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(&v3);
  return v1;
}

CFStringRef CADSPRealTimeErrorCopySourceFile(uint64_t a1)
{
  CA::DSP::ReferenceCounted<__CFString const*>::ReferenceCounted(&cf, *(a1 + 56));
  if (cf)
  {
    v1 = CFGetAllocator(cf);
    Copy = CFStringCreateCopy(v1, cf);
  }

  else
  {
    Copy = 0;
  }

  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&cf);
  return Copy;
}

void sub_1C91DD8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(va);
  _Unwind_Resume(a1);
}

const void **_CADSPRealTimeErrorCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a2;
    if (a3)
    {
      *(Instance + 24) = *a3;
      v8 = *(a3 + 8);
      if (v8)
      {
        Copy = CFStringCreateCopy(a1, v8);
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v7 + 4);
        v16 = 0;
        v7[4] = Copy;
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v16);
      }

      v10 = CFStringCreateWithCStringNoCopy(a1, *(a3 + 16), 0x8000100u, *MEMORY[0x1E695E498]);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v7 + 7);
      v15 = 0;
      v7[7] = v10;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v15);
      valuePtr = *(a3 + 24);
      v11 = CFNumberCreate(a1, kCFNumberCFIndexType, &valuePtr);
      CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(v7 + 8);
      v13 = 0;
      v7[8] = v11;
      CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(&v13);
    }
  }

  return v7;
}

uint64_t CADSPErrorCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [CADSPError allocWithZone:a1];

  return [(CADSPError *)v5 initWithCode:a2 userInfo:a3];
}

void CADSPErrorCreateFromCurrentException(uint64_t a1)
{
  std::current_exception();
  if (v4.__ptr_)
  {
    std::exception_ptr::exception_ptr(&v3, &v4);
    v2.__ptr_ = &v3;
    std::rethrow_exception(v2);
    __break(1u);
  }

  else
  {
    std::exception_ptr::~exception_ptr(&v4);
    [[CADSPError allocWithZone:?]userInfo:"initWithCode:userInfo:", 1970170734, 0];
  }
}

void sub_1C91DDD94(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, uint64_t a11, CFStringRef a12, std::exception_ptr a13)
{
  std::exception_ptr::~exception_ptr(&a13);
  v17 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v18 = v17;
    v19 = v17 + 16;
    if (v17[39] < 0)
    {
      v19 = *v19;
    }

    a12 = CFStringCreateWithCString(v13, v19, 0x8000100u);
    a9 = 0u;
    a10 = 0u;
    LODWORD(a9) = *(v18 + 2);
    *(&a9 + 1) = a12;
    v20 = *(v18 + 5);
    if (v20)
    {
      v21 = *v20;
      LODWORD(v20) = *(v20 + 16);
    }

    else
    {
      v21 = &byte_1C9279A7A;
    }

    *&a10 = v21;
    DWORD2(a10) = v20;
    [[CADSPError allocWithZone:?]userInfo:"initWithCode:userInfo:", 1702388592, &a9];
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&a12);
    __cxa_end_catch();
    std::exception_ptr::~exception_ptr((v14 - 40));
    JUMPOUT(0x1C91DDD64);
  }

  __cxa_end_catch();
  JUMPOUT(0x1C91DDD38);
}

void CADSPRealTimeErrorCreateFromCurrentException()
{
  std::current_exception();
  if (v3.__ptr_)
  {
    std::exception_ptr::exception_ptr(&v2, &v3);
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }

  else
  {
    std::exception_ptr::~exception_ptr(&v3);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      *(Instance + 16) = 1970170734;
    }
  }
}

void sub_1C91DDFB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, uint64_t a11, CFStringRef a12, std::exception_ptr a13)
{
  std::exception_ptr::~exception_ptr(&a13);
  v17 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v18 = v17;
    v19 = v17 + 16;
    if (v17[39] < 0)
    {
      v19 = *v19;
    }

    a12 = CFStringCreateWithCString(v13, v19, 0x8000100u);
    a9 = 0u;
    a10 = 0u;
    LODWORD(a9) = *(v18 + 2);
    *(&a9 + 1) = a12;
    v20 = *(v18 + 5);
    if (v20)
    {
      v21 = *v20;
      LODWORD(v20) = *(v20 + 16);
    }

    else
    {
      v21 = &byte_1C9279A7A;
    }

    *&a10 = v21;
    DWORD2(a10) = v20;
    _CADSPRealTimeErrorCreate(v13, 1702388592, &a9);
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&a12);
    __cxa_end_catch();
    std::exception_ptr::~exception_ptr((v14 - 40));
    JUMPOUT(0x1C91DDF88);
  }

  __cxa_end_catch();
  JUMPOUT(0x1C91DDF54);
}

uint64_t __CADSPErrorInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  gCADSPRealTimeErrorGetTypeID = _CFRuntimeRegisterClass();
  if (!gCADSPRealTimeErrorGetTypeID)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v0 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEDB8558]();
}

uint64_t _CADSPRealTimeErrorEqual(CFTypeRef cf, const void *a2)
{
  result = 0;
  if (cf && a2)
  {
    if (CFGetTypeID(cf) != gCADSPRealTimeErrorGetTypeID)
    {
      return 0;
    }

    if (CFGetTypeID(a2) != gCADSPRealTimeErrorGetTypeID)
    {
      return 0;
    }

    if (*(cf + 2) != *(a2 + 2))
    {
      return 0;
    }

    if (*(cf + 6) != *(a2 + 6))
    {
      return 0;
    }

    v5 = *(cf + 7);
    v6 = *(a2 + 7);
    if ((v5 == 0) != (v6 == 0))
    {
      return 0;
    }

    if (!v5 || !v6 || (result = CFEqual(v5, v6), result))
    {
      v7 = *(cf + 8);
      v8 = *(a2 + 8);
      if ((v7 == 0) != (v8 == 0))
      {
        return 0;
      }

      if (!v7)
      {
        return 1;
      }

      if (!v8)
      {
        return 1;
      }

      result = CFEqual(v7, v8);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

const void **_CADSPRealTimeErrorFinalize(const void **a1)
{
  CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(a1 + 8);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(a1 + 7);
  v2 = *(a1 + 12);
  if (!v2)
  {
LABEL_6:
    a1[5] = 0;
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v3 = a1[5];
    if (v3)
    {
      (*(*v3 + 24))(a1[5]);
      (**v3)(v3);
      result = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
        return result;
      }

      caulk::rt_safe_memory_resource::rt_deallocate(result, v3);
      goto LABEL_6;
    }
  }

LABEL_7:

  return CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(a1 + 4);
}

double _CADSPRealTimeErrorInit(char *a1)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 2) = 1970170734;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 12) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  return result;
}

void sub_1C91DE92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_1C91DEE00(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C91E0FB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (*(v14 - 121) < 0)
  {
    operator delete(*(v14 - 144));
  }

  AudioDSPGraph::BoxRegistry::~BoxRegistry(va);
  __cxa_begin_catch(a1);
  if (a10)
  {
    CADSPErrorCreateFromCurrentException(*MEMORY[0x1E695E480]);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  __cxa_end_catch();
  if (a10)
  {
    v18 = v17;
    *a10 = v17;
  }

  JUMPOUT(0x1C91E0210);
}

void std::__shared_ptr_emplace<AudioDSPGraph::Graph>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F48CBA30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t CADSPGraphGetTailTime(uint64_t a1, double *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 400);
  v5 = *(v3 + 408);
  if (((v5 - v4) & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      if (v6 >= (v5 - v4) >> 3)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v4 + 8 * v6);
      }

      v9 = *(v8 + 2);
      v10 = (*(*v8 + 80))(v8);
      v11 = AudioDSPGraph::Box::upstreamTailTimeInTicks(v8);
      v12 = *(v9 + 848);
      if ((v11 + v10) / v12 >= v7)
      {
        v7 = (v11 + v10) / v12;
      }

      ++v6;
      v4 = *(v3 + 400);
      v5 = *(v3 + 408);
    }

    while (v6 < ((v5 - v4) >> 3));
  }

  else
  {
    v7 = 0.0;
  }

  *a2 = v7;
  return 1;
}

void sub_1C91E1568(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CADSPRealTimeErrorCreateFromCurrentException();
    *v1 = v2;
  }

  __cxa_end_catch();
  JUMPOUT(0x1C91E154CLL);
}

void sub_1C91E17C4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  if (v15)
  {
    CADSPErrorCreateFromCurrentException(*MEMORY[0x1E695E480]);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  __cxa_end_catch();
  if (v15)
  {
    v19 = v18;
    *v15 = v18;
  }

  JUMPOUT(0x1C91E17A0);
}

uint64_t AudioDSPGraph::Boxes::GraphInput::getStreamDescription(AudioDSPGraph::Boxes::GraphInput *this)
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
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E83378B0);
  }

  return *(*(v1 + 16) + 120);
}

void sub_1C91E29DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

uint64_t AudioDSPGraph::Boxes::GraphOutput::getStreamDescription(AudioDSPGraph::Boxes::GraphOutput *this)
{
  v1 = *(this + 9);
  if (*(this + 10) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E8337898);
  }

  return *(*(v1 + 16) + 120);
}

void sub_1C91E2A78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

void sub_1C91E2B08(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C91E2BA0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1C91E31B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C91E3558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C91E3AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CADSPGraphGetPropertyInfo(uint64_t a1, unsigned int a2, int *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  PropertyInfo = AudioDSPGraph::Graph::getPropertyInfo(v5, a2);
  if ((v7 & 1) == 0)
  {
    v14[1] = 0;
    v14[2] = 6;
    __dst[2] = 6;
    v14[0] = a2;
    v15 = v19;
    *__len = xmmword_1C925F110;
    v17 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v18 = 0;
    __p = v19;
    __dst[0] = 1;
    __dst[1] = v14;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v15, "property {} not found", 21, __dst);
    std::string::basic_string<std::string_view,0>(__dst, __p, __len[1]);
    if (__p != v19)
    {
      operator delete(__p);
    }

    AudioDSPGraph::ThrowException(1852204065, __dst, off_1E8334730);
  }

  v8 = PropertyInfo;
  if ((PropertyInfo & 0x100000000) != 0)
  {
    v10 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(v5 + 78, a2);
    if (!v10)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (*(v10 + 64))
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v9 = 1;
  }

  *a3 = v9;
  a3[1] = v8;
  result = 1;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C91E3F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    if (v58)
    {
      CADSPRealTimeErrorCreateFromCurrentException();
      *v58 = v60;
    }

    __cxa_end_catch();
    JUMPOUT(0x1C91E3EACLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADSPGraphGetPropertyDirection(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((*(a1 + 8) + 624), a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *a3 = *(v4 + 64);
  result = 1;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C91E4108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t __dst, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, __int128 __len, uint64_t (*a20)(uint64_t result, uint64_t a2), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t *__p)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  a14 = 0;
  a15 = 6;
  a12 = 6;
  a13 = v54;
  a18 = &a22;
  __len = xmmword_1C925F110;
  a20 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  a21 = 0;
  __p = &a22;
  __dst = 1;
  a11 = &a13;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&a18, "property {} not found", 21, &__dst);
  std::string::basic_string<std::string_view,0>(&__dst, __p, *(&__len + 1));
  if (__p != &a22)
  {
    operator delete(__p);
  }

  AudioDSPGraph::ThrowException(1852204065, &__dst, off_1E8334718);
}

void sub_1C91E41BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    __cxa_end_catch();
    __cxa_begin_catch(a1);
    if (v58)
    {
      CADSPRealTimeErrorCreateFromCurrentException();
      *v58 = v60;
    }

    __cxa_end_catch();
    JUMPOUT(0x1C91E40C8);
  }

  JUMPOUT(0x1C91E4110);
}

void sub_1C91E421C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1C91E4110);
}

void CADSPGraphEnumerateProperties(uint64_t a1, void *a2)
{
  v4 = a2;
  for (i = *(*(a1 + 8) + 640); i; i = *i)
  {
    if (v4[2](v4, *(i + 4)) == 1)
    {
      break;
    }
  }
}

caulk::rt_safe_memory_resource *CADSPGraphSetParameter(uint64_t a1, unsigned int a2, const void ***a3, float a4)
{
  AudioDSPGraph::Graph::setParameter(v7, *(a1 + 8), a4, a2);
  v5 = CA::DSP::RealTimeErrorGuard(a3, v7);
  std::__expected_void_base<AudioDSPGraph::Error>::__repr::~__repr[abi:ne200100](v7);
  return v5;
}

caulk::rt_safe_memory_resource *CADSPGraphGetParameterDirection(uint64_t a1, unsigned int a2, _DWORD *a3, const void ***a4)
{
  v6 = *(a1 + 8);
  v20 = a2;
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((v6 + 584), a2);
  if (v7)
  {
    *&v16 = v7 + 3;
    *a3 = *(v7 + 36);
    v19 = 1;
    v15 = 1;
  }

  else
  {
    LODWORD(v12) = 1852204065;
    *(&v12 + 1) = off_1E83362E8;
    v13 = 0;
    v14 = 0;
    AudioDSPGraph::Error::saveDescription<unsigned int &>(&v12, "parameter {} not found", &v20);
    v16 = v12;
    v10 = v13;
    v13 = 0;
    v11 = v14;
    v14 = 0;
    AudioDSPGraph::Error::~Error(&v12);
    v12 = v16;
    v17 = 0;
    v13 = v10;
    v18 = 0;
    v14 = v11;
    v19 = 0;
    v15 = 0;
    std::destroy_at[abi:ne200100]<AudioDSPGraph::Error,0>(&v16);
  }

  v8 = CA::DSP::RealTimeErrorGuard(a4, &v12);
  std::__expected_void_base<AudioDSPGraph::Error>::__repr::~__repr[abi:ne200100](&v12);
  return v8;
}

void CADSPGraphEnumerateParameters(uint64_t a1, void *a2)
{
  v4 = a2;
  for (i = *(*(a1 + 8) + 600); i; i = *i)
  {
    if (v4[2](v4, *(i + 4)) == 1)
    {
      break;
    }
  }
}

void sub_1C91E4700(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CADSPErrorCreateFromCurrentException(*MEMORY[0x1E695E480]);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  __cxa_end_catch();
  if (v1)
  {
    v4 = v3;
    *v1 = v3;
  }

  JUMPOUT(0x1C91E46F4);
}

void sub_1C91E4778(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CADSPErrorCreateFromCurrentException(*MEMORY[0x1E695E480]);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  __cxa_end_catch();
  if (v1)
  {
    v4 = v3;
    *v1 = v3;
  }

  JUMPOUT(0x1C91E476CLL);
}

void sub_1C91E517C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    if (a22 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    if (a10)
    {
      CADSPErrorCreateFromCurrentException(*MEMORY[0x1E695E480]);
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    __cxa_end_catch();
    if (a10)
    {
      v25 = v24;
      *a10 = v24;
    }

    JUMPOUT(0x1C91E5040);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADSPGraphGetStreamDescription(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 1)
  {
    v5 = a2;
    v6 = *(*(result + 8) + 400);
    v7 = *(*(result + 8) + 408);
  }

  else
  {
    if (a3)
    {
LABEL_7:
      v8 = (*(*result + 672))(result);
      v9 = *(v8 + 32);
      v10 = *(v8 + 16);
      *a4 = *v8;
      *(a4 + 16) = v10;
      *(a4 + 32) = v9;
      return 1;
    }

    v5 = a2;
    v6 = *(*(result + 8) + 376);
    v7 = *(*(result + 8) + 384);
  }

  if (v5 >= (v7 - v6) >> 3)
  {
    return 0;
  }

  result = *(v6 + 8 * v5);
  if (result)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1C91E54AC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C91E55AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1C91E56E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_1C91E5790(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

CADSPGraph *CADSPGraphCreateWithModel(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v4 = [[CADSPGraph allocWithZone:?]error:"initWithModel:error:", a2, &v8];
  v5 = v8;
  v6 = v5;
  if (a3 && !v4)
  {
    *a3 = v5;
  }

  return v4;
}

uint64_t CADSPGraphSetModel(void *a1, uint64_t a2, int a3, void *a4)
{
  v9 = 0;
  v5 = [a1 setModel:a2 dryRun:a3 != 0 error:&v9];
  v6 = v9;
  v7 = CA::DSP::ErrorHandle(v5, v6, a4);

  return v7;
}

uint64_t CA::DSP::ErrorHandle(char a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      *a3 = v5;
    }
  }

  return v7;
}

void *CADSPGraphGetBoxForName(void *a1, uint64_t a2)
{
  v2 = [a1 boxForName:a2];

  return v2;
}

void *CADSPGraphGetSubsetForName(void *a1, uint64_t a2)
{
  v2 = [a1 subsetForName:a2];

  return v2;
}

uint64_t CADSPGraphInitialize(void *a1, void *a2)
{
  v7 = 0;
  v3 = [a1 initialize:&v7];
  v4 = v7;
  v5 = CA::DSP::ErrorHandle(v3, v4, a2);

  return v5;
}

uint64_t CADSPGraphUninitialize(void *a1, void *a2)
{
  v7 = 0;
  v3 = [a1 uninitialize:&v7];
  v4 = v7;
  v5 = CA::DSP::ErrorHandle(v3, v4, a2);

  return v5;
}

uint64_t CADSPGraphLoadStripWithResourcePath(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = 0;
  v6 = [a1 loadStrip:a2 type:a3 withResourcePath:a4 error:&v10];
  v7 = v10;
  v8 = CA::DSP::ErrorHandle(v6, v7, a5);

  return v8;
}

uint64_t CADSPGraphSaveStrip(void *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v4 = [a1 saveStrip:a2 error:&v7];
  v5 = v7;
  CA::DSP::ErrorHandle(v4 != 0, v5, a3);

  return v4;
}

uint64_t CADSPGraphGetNumberOfPorts@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    v3 = 384;
    v4 = 376;
    return (*(*(a1 + 8) + v3) - *(*(a1 + 8) + v4)) >> 3;
  }

  if (a2 == 1)
  {
    v3 = 408;
    v4 = 400;
    return (*(*(a1 + 8) + v3) - *(*(a1 + 8) + v4)) >> 3;
  }

  return a3;
}

uint64_t CADSPGraphCalculateRequiredNumberOfInputPCMFramesWithFlags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v11 = a5;
  v10 = a6;
  v9 = a7;
  v8[0] = &v15;
  v8[1] = &v10;
  v8[2] = &v13;
  v8[3] = &v11;
  v8[4] = &v9;
  v8[5] = &v14;
  v8[6] = &v12;
  CADSPGraphCalculateRequiredNumberOfInputPCMFramesWithFlags::$_0::operator()(v8);
  return 1;
}

void sub_1C91E5D20(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CADSPRealTimeErrorCreateFromCurrentException();
    *v1 = v2;
  }

  __cxa_end_catch();
  JUMPOUT(0x1C91E5D10);
}

uint64_t CADSPGraphCalculateRequiredNumberOfInputPCMFramesWithFlags::$_0::operator()(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = *(**a1 + 8);
  v2 = **(a1 + 8);
  v3 = (v2 + 4);
  v4 = (v1 + 104);
  if (v2)
  {
    v4 = **(a1 + 8);
  }

  else
  {
    v3 = v1 + 209;
  }

  v5 = ((v1[48] - v1[47]) >> 3);
  if (**(a1 + 16) != v5)
  {
    v30 = **(a1 + 16);
    v31 = 0;
    v33 = 0;
    v34 = 231;
    v32 = v5;
    v35 = v39;
    v36 = xmmword_1C925F110;
    v37 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v38 = 0;
    v40 = v39;
    v27 = 2;
    v28 = &v30;
    v29 = 231;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v35, "client provided {} inputs for graph with {} inputs", 50, &v27);
    std::string::basic_string<std::string_view,0>(v26, v40, *(&v36 + 1));
    if (v40 != v39)
    {
      operator delete(v40);
    }

    AudioDSPGraph::ThrowException(-50, v26, off_1E8334688);
  }

  v7 = **(a1 + 24);
  if (v7 != ((v1[51] - v1[50]) >> 3))
  {
    v30 = ((v1[51] - v1[50]) >> 3);
    v31 = 0;
    v33 = 0;
    v34 = 231;
    v32 = v7;
    v35 = v39;
    v36 = xmmword_1C925F110;
    v37 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v38 = 0;
    v40 = v39;
    v27 = 2;
    v28 = &v30;
    v29 = 231;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v35, "client provided {} outputs for graph with {} outputs", 52, &v27);
    std::string::basic_string<std::string_view,0>(v25, v40, *(&v36 + 1));
    if (v40 != v39)
    {
      operator delete(v40);
    }

    AudioDSPGraph::ThrowException(-50, v25, off_1E83346A0);
  }

  v8 = *v4;
  v9 = *v3;
  v10 = **(a1 + 32);
  v1[48];
  v1[47];
  MEMORY[0x1EEE9AC00](a1);
  v12 = (&v25[-1] - v11);
  bzero(&v25[-1] - v11, v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v25[-1] - v14);
  bzero(&v25[-1] - v14, v14);
  result = AudioDSPGraph::Graph::preflight(v1, v12, v15, v8, v9, v10 & 1);
  v17 = **(a1 + 16);
  if (v17)
  {
    v18 = **(a1 + 40);
    do
    {
      v19 = *v12;
      v12 += 20;
      *v18++ = v19;
      --v17;
    }

    while (v17);
  }

  v20 = **(a1 + 24);
  if (v20)
  {
    v21 = **(a1 + 48);
    do
    {
      v22 = *v15;
      v15 += 20;
      *v21++ = v22;
      --v20;
    }

    while (v20);
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CADSPGraphCalculateExpectedNumberOfOutputPCMFramesWithFlags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v11 = a5;
  v10 = a6;
  v9 = a7;
  v8[0] = &v15;
  v8[1] = &v10;
  v8[2] = &v13;
  v8[3] = &v11;
  v8[4] = &v9;
  v8[5] = &v14;
  v8[6] = &v12;
  CADSPGraphCalculateExpectedNumberOfOutputPCMFramesWithFlags::$_0::operator()(v8);
  return 1;
}

void sub_1C91E6114(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CADSPRealTimeErrorCreateFromCurrentException();
    *v1 = v2;
  }

  __cxa_end_catch();
  JUMPOUT(0x1C91E6104);
}

uint64_t CADSPGraphCalculateExpectedNumberOfOutputPCMFramesWithFlags::$_0::operator()(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *(**a1 + 8);
  v2 = **(a1 + 8);
  v3 = (v2 + 4);
  v4 = (v1 + 104);
  if (v2)
  {
    v4 = **(a1 + 8);
  }

  else
  {
    v3 = v1 + 209;
  }

  v5 = ((v1[48] - v1[47]) >> 3);
  if (**(a1 + 16) != v5)
  {
    v29 = **(a1 + 16);
    v30 = 0;
    v32 = 0;
    v33 = 231;
    v31 = v5;
    v34 = v38;
    v35 = xmmword_1C925F110;
    v36 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v37 = 0;
    v39 = v38;
    v26 = 2;
    v27 = &v29;
    v28 = 231;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v34, "client provided {} inputs for graph with {} inputs", 50, &v26);
    std::string::basic_string<std::string_view,0>(v25, v39, *(&v35 + 1));
    if (v39 != v38)
    {
      operator delete(v39);
    }

    AudioDSPGraph::ThrowException(-50, v25, off_1E83346B8);
  }

  v7 = **(a1 + 24);
  if (v7 != ((v1[51] - v1[50]) >> 3))
  {
    v29 = ((v1[51] - v1[50]) >> 3);
    v30 = 0;
    v32 = 0;
    v33 = 231;
    v31 = v7;
    v34 = v38;
    v35 = xmmword_1C925F110;
    v36 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v37 = 0;
    v39 = v38;
    v26 = 2;
    v27 = &v29;
    v28 = 231;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v34, "client provided {} outputs for graph with {} outputs", 52, &v26);
    std::string::basic_string<std::string_view,0>(v24, v39, *(&v35 + 1));
    if (v39 != v38)
    {
      operator delete(v39);
    }

    AudioDSPGraph::ThrowException(-50, v24, off_1E83346D0);
  }

  v8 = *v4;
  v9 = *v3;
  v10 = **(a1 + 32);
  v1[48];
  v1[47];
  MEMORY[0x1EEE9AC00]();
  v12 = (&v24[-1] - v11);
  bzero(&v24[-1] - v11, v11);
  MEMORY[0x1EEE9AC00]();
  v14 = (&v24[-1] - v13);
  bzero(&v24[-1] - v13, v13);
  result = AudioDSPGraph::Graph::preflight(v1, v12, v14, v8, v9, v10 & 1);
  v16 = **(a1 + 16);
  if (v16)
  {
    v17 = **(a1 + 40);
    do
    {
      v18 = *v12;
      v12 += 20;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }

  v19 = **(a1 + 24);
  if (v19)
  {
    v20 = **(a1 + 48);
    do
    {
      v21 = *v14;
      v14 += 20;
      *v20++ = v21;
      --v19;
    }

    while (v19);
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CADSPGraphCreateRemoteProcessingBlockHost(void *a1, void *a2)
{
  v6 = 0;
  v3 = [a1 createRemoteProcessingBlockHost:&v6];
  v4 = v6;
  CA::DSP::ErrorHandle(v3 != 0, v4, a2);

  return v3;
}

void sub_1C91E66B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

uint64_t *AudioDSPGraph::EventHandlerTree<AudioDSPGraph::GraphEventHandler,AudioDSPGraph::GraphEventHandlerAggregate>::addLeaf(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[7];
  if (v3 == v4)
  {
    v5 = a1[6];
  }

  else
  {
    v5 = a1[6];
    while (*v5 != *a2)
    {
      v5 += 2;
      if (v5 == v4)
      {
        goto LABEL_8;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_8:
    v6 = a1[8];
    if (v4 >= v6)
    {
      v8 = (v4 - v3) >> 4;
      if ((v8 + 1) >> 60)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v9 = v6 - v3;
      v10 = v9 >> 3;
      if (v9 >> 3 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        std::allocator<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::allocate_at_least[abi:ne200100](v11);
      }

      *(16 * v8) = *a2;
      v7 = 16 * v8 + 16;
      *a2 = 0;
      a2[1] = 0;
      v12 = a1[6];
      v13 = a1[7] - v12;
      v14 = (16 * v8 - v13);
      memcpy(v14, v12, v13);
      v15 = a1[6];
      a1[6] = v14;
      a1[7] = v7;
      a1[8] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v4 = *a2;
      v7 = (v4 + 1);
      *a2 = 0;
      a2[1] = 0;
    }

    a1[7] = v7;
    operator new();
  }

  caulk::concurrent::exchanged_pointer_base<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::extract_retired(&v17, v3);
  return std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v17);
}

void std::vector<std::shared_ptr<AudioDSPGraph::GraphEventHandler>>::__init_with_size[abi:ne200100]<std::shared_ptr<AudioDSPGraph::GraphEventHandler>*,std::shared_ptr<AudioDSPGraph::GraphEventHandler>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::allocator<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }
}

void *AudioDSPGraph::GraphEventHandlerAggregate<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::GraphEventHandler,AudioDSPGraph::GraphEventHandlerAggregate>::Root>::graphDidProcess(void *result, uint64_t a2)
{
  v2 = result[1];
  for (i = result[2]; v2 != i; v2 += 2)
  {
    result = *v2;
    if (*v2)
    {
      result = (*(*result + 24))(result, a2);
    }
  }

  return result;
}

void *AudioDSPGraph::GraphEventHandlerAggregate<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::GraphEventHandler,AudioDSPGraph::GraphEventHandlerAggregate>::Root>::graphWillProcess(void *result, uint64_t a2)
{
  v2 = result[1];
  for (i = result[2]; v2 != i; v2 += 2)
  {
    result = *v2;
    if (*v2)
    {
      result = (*(*result + 16))(result, a2);
    }
  }

  return result;
}

void AudioDSPGraph::EventHandlerTree<AudioDSPGraph::GraphEventHandler,AudioDSPGraph::GraphEventHandlerAggregate>::Root::~Root(uint64_t a1)
{
  v1 = (a1 + 8);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::EventHandlerTree<AudioDSPGraph::GraphEventHandler,AudioDSPGraph::GraphEventHandlerAggregate>::Root::~Root(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t CA::DSP::GraphEventHandler::graphDidProcess(CA::DSP::GraphEventHandler *this, const AudioDSPGraph::Graph *a2)
{
  result = *(this + 1);
  if (result)
  {
    v3 = 832;
    if (*(a2 + 920))
    {
      v3 = 880;
    }

    v4 = 836;
    if (*(a2 + 920))
    {
      v4 = 884;
    }

    v5 = *(a2 + v3);
    v6 = *(a2 + v4);
    v7[0] = 1;
    v7[1] = v5;
    v7[2] = v6;
    return (*(result + 16))(result, *(a2 + 1), v7);
  }

  return result;
}

uint64_t CA::DSP::GraphEventHandler::graphWillProcess(CA::DSP::GraphEventHandler *this, const AudioDSPGraph::Graph *a2)
{
  result = *(this + 1);
  if (result)
  {
    v3 = 832;
    if (*(a2 + 920))
    {
      v3 = 880;
    }

    v4 = 836;
    if (*(a2 + 920))
    {
      v4 = 884;
    }

    v5 = *(a2 + v3);
    v6 = *(a2 + v4);
    v7[0] = 0;
    v7[1] = v5;
    v7[2] = v6;
    return (*(result + 16))(result, *(a2 + 1), v7);
  }

  return result;
}

void CA::DSP::GraphEventHandler::~GraphEventHandler(id *this)
{

  JUMPOUT(0x1CCA84AE0);
}

{
}

void std::__shared_ptr_emplace<CA::DSP::GraphEventHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F48CBAA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

void sub_1C91E6F84(_Unwind_Exception *a1)
{
  MEMORY[0x1CCA84AE0](v5, 0xA1C4030951706);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

uint64_t AudioDSPGraph::GraphEventHandlerAggregate<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::GraphEventHandler,AudioDSPGraph::GraphEventHandlerAggregate>>::graphDidProcess(uint64_t a1)
{
  result = AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::read(a1 + 16);
  if (result)
  {
    v2 = *(*result + 24);

    return v2();
  }

  return result;
}

uint64_t AudioDSPGraph::GraphEventHandlerAggregate<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::GraphEventHandler,AudioDSPGraph::GraphEventHandlerAggregate>>::graphWillProcess(uint64_t a1)
{
  result = AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::read(a1 + 16);
  if (result)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

void AudioDSPGraph::GraphEventHandlerTree::~GraphEventHandlerTree(AudioDSPGraph::GraphEventHandlerTree *this)
{
  *this = &unk_1F48D0D68;
  v1 = this + 16;
  v2 = (this + 48);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v2);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(v1);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D0D68;
  v1 = this + 16;
  v2 = (this + 48);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v2);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(v1);
}

{
  *this = &unk_1F48D0D68;
  v1 = this + 16;
  v2 = (this + 48);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v2);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(v1);
}

void AudioDSPGraph::EventHandlerTree<AudioDSPGraph::GraphEventHandler,AudioDSPGraph::GraphEventHandlerAggregate>::~EventHandlerTree(uint64_t a1)
{
  *a1 = &unk_1F48D0D68;
  v1 = a1 + 16;
  v2 = (a1 + 48);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v2);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(v1);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::EventHandlerTree<AudioDSPGraph::GraphEventHandler,AudioDSPGraph::GraphEventHandlerAggregate>::~EventHandlerTree(uint64_t a1)
{
  *a1 = &unk_1F48D0D68;
  v2 = a1 + 16;
  v4 = (a1 + 48);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v4);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(v2);
  return a1;
}

void std::__shared_ptr_emplace<AudioDSPGraph::GraphEventHandlerTree>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F48CBA68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t CADSPGraphEventListenerCreate(uint64_t a1)
{
  v1 = [CADSPGraphEventListener allocWithZone:a1];

  return [(CADSPGraphEventListener *)v1 init];
}

id CADSPGraphEventListenerGetProcessPCMDataCallback(void *a1)
{
  v1 = [a1 processPCMDataCallback];

  return v1;
}

uint64_t AudioDSPGraph::IR::GraphModel::operator=(uint64_t a1, uint64_t a2)
{
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(a1, a2);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  if (a1 != a2)
  {
    v5 = *(a1 + 56);
    v7 = *(a2 + 56);
    v6 = *(a2 + 64);
    v8 = v6 - v7;
    v9 = *(a1 + 72);
    if (v9 - v5 < (v6 - v7))
    {
      v10 = 0xEEEEEEEEEEEEEEEFLL * (v8 >> 3);
      if (v5)
      {
        for (i = *(a1 + 64); i != v5; std::allocator_traits<std::allocator<AudioDSPGraph::IR::BoxModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::BoxModel,void,0>(i))
        {
          i -= 120;
        }

        *(a1 + 64) = v5;
        operator delete(*(a1 + 56));
        v9 = 0;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
      }

      if (v10 <= 0x222222222222222)
      {
        v14 = 0xEEEEEEEEEEEEEEEFLL * (v9 >> 3);
        v15 = 2 * v14;
        if (2 * v14 <= v10)
        {
          v15 = v10;
        }

        if (v14 >= 0x111111111111111)
        {
          v16 = 0x222222222222222;
        }

        else
        {
          v16 = v15;
        }

        if (v16 <= 0x222222222222222)
        {
          std::allocator<AudioDSPGraph::IR::BoxModel>::allocate_at_least[abi:ne200100](v16);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v12 = *(a1 + 64) - v5;
    if (v12 >= v8)
    {
      std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::BoxModel *,AudioDSPGraph::IR::BoxModel *,AudioDSPGraph::IR::BoxModel *>(*(a2 + 56), *(a2 + 64), *(a1 + 56));
      v18 = v17;
      for (j = *(a1 + 64); j != v18; std::allocator_traits<std::allocator<AudioDSPGraph::IR::BoxModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::BoxModel,void,0>(j))
      {
        j -= 120;
      }

      *(a1 + 64) = v18;
    }

    else
    {
      v13 = std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::BoxModel *,AudioDSPGraph::IR::BoxModel *,AudioDSPGraph::IR::BoxModel *>(*(a2 + 56), (v7 + v12), *(a1 + 56));
      *(a1 + 64) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::BoxModel>,AudioDSPGraph::IR::BoxModel*,AudioDSPGraph::IR::BoxModel*,AudioDSPGraph::IR::BoxModel*>(a1 + 56, v13, v6, *(a1 + 64));
    }

    v21 = (a1 + 80);
    v20 = *(a1 + 80);
    v23 = *(a2 + 80);
    v22 = *(a2 + 88);
    v24 = v22 - v23;
    v25 = *(a1 + 96);
    if (v25 - v20 < (v22 - v23))
    {
      v26 = 0x6DB6DB6DB6DB6DB7 * (v24 >> 3);
      if (v20)
      {
        v27 = *(a1 + 88);
        v28 = *(a1 + 80);
        if (v27 != v20)
        {
          do
          {
            v27 -= 56;
            std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v27);
          }

          while (v27 != v20);
          v28 = *v21;
        }

        *(a1 + 88) = v20;
        operator delete(v28);
        v25 = 0;
        *v21 = 0;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
      }

      if (v26 <= 0x492492492492492)
      {
        v34 = 0x6DB6DB6DB6DB6DB7 * (v25 >> 3);
        v35 = 2 * v34;
        if (2 * v34 <= v26)
        {
          v35 = v26;
        }

        if (v34 >= 0x249249249249249)
        {
          v36 = 0x492492492492492;
        }

        else
        {
          v36 = v35;
        }

        if (v36 <= 0x492492492492492)
        {
          std::allocator<AudioDSPGraph::IR::BoxRelationModel>::allocate_at_least[abi:ne200100](v36);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v29 = *(a1 + 88) - v20;
    if (v29 >= v24)
    {
      std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel *,AudioDSPGraph::IR::BoxRelationModel *,AudioDSPGraph::IR::BoxRelationModel *>(*(a2 + 80), *(a2 + 88), *(a1 + 80));
      v32 = v31;
      v33 = *(a1 + 88);
      if (v33 != v31)
      {
        do
        {
          v33 -= 56;
          std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v33);
        }

        while (v33 != v32);
      }

      *(a1 + 88) = v32;
    }

    else
    {
      v30 = std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel *,AudioDSPGraph::IR::BoxRelationModel *,AudioDSPGraph::IR::BoxRelationModel *>(*(a2 + 80), (v23 + v29), *(a1 + 80));
      *(a1 + 88) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::BoxRelationModel>,AudioDSPGraph::IR::BoxRelationModel*,AudioDSPGraph::IR::BoxRelationModel*,AudioDSPGraph::IR::BoxRelationModel*>(v30, v22, *(a1 + 88));
    }

    v37 = (a1 + 104);
    v38 = *(a1 + 104);
    v40 = *(a2 + 104);
    v39 = *(a2 + 112);
    v41 = v39 - v40;
    v42 = *(a1 + 120);
    if (v42 - v38 < (v39 - v40))
    {
      v43 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
      if (v38)
      {
        std::vector<AudioDSPGraph::IR::SubsetModel>::clear[abi:ne200100]((a1 + 104));
        operator delete(*v37);
        v42 = 0;
        *v37 = 0;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
      }

      if (v43 <= 0xAAAAAAAAAAAAAAALL)
      {
        v44 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 3);
        v45 = 2 * v44;
        if (2 * v44 <= v43)
        {
          v45 = v43;
        }

        if (v44 >= 0x555555555555555)
        {
          v46 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v46 = v45;
        }

        if (v46 <= 0xAAAAAAAAAAAAAAALL)
        {
          std::allocator<AudioDSPGraph::IR::SubsetModel>::allocate_at_least[abi:ne200100](v46);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v47 = *(a1 + 112);
    v48 = v47 - v38;
    if (v47 - v38 >= v41)
    {
      if (v40 != v39)
      {
        do
        {
          std::string::operator=(v38++, v40++);
        }

        while (v40 != v39);
        v47 = *(a1 + 112);
      }

      while (v47 != v38)
      {
        v50 = SHIBYTE(v47[-1].__r_.__value_.__r.__words[2]);
        --v47;
        if (v50 < 0)
        {
          operator delete(v47->__r_.__value_.__l.__data_);
        }
      }

      *(a1 + 112) = v38;
    }

    else
    {
      if (v47 == v38)
      {
        v49 = *(a2 + 104);
      }

      else
      {
        v49 = (v40 + v48);
        do
        {
          std::string::operator=(v38++, v40++);
          v48 -= 24;
        }

        while (v48);
        v47 = *(a1 + 112);
      }

      *(a1 + 112) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::SubsetModel>,AudioDSPGraph::IR::SubsetModel*,AudioDSPGraph::IR::SubsetModel*,AudioDSPGraph::IR::SubsetModel*>(a1 + 104, v49, v39, v47);
    }

    v51 = *(a1 + 128);
    v53 = *(a2 + 128);
    v52 = *(a2 + 136);
    v54 = v52 - v53;
    v55 = *(a1 + 144);
    if (v55 - v51 < (v52 - v53))
    {
      v56 = 0xEEEEEEEEEEEEEEEFLL * (v54 >> 3);
      if (v51)
      {
        for (k = *(a1 + 136); k != v51; std::allocator_traits<std::allocator<AudioDSPGraph::IR::WireModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::WireModel,void,0>(k))
        {
          k -= 120;
        }

        *(a1 + 136) = v51;
        operator delete(*(a1 + 128));
        v55 = 0;
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
      }

      if (v56 <= 0x222222222222222)
      {
        v60 = 0xEEEEEEEEEEEEEEEFLL * (v55 >> 3);
        v61 = 2 * v60;
        if (2 * v60 <= v56)
        {
          v61 = v56;
        }

        if (v60 >= 0x111111111111111)
        {
          v62 = 0x222222222222222;
        }

        else
        {
          v62 = v61;
        }

        if (v62 <= 0x222222222222222)
        {
          std::allocator<AudioDSPGraph::IR::WireModel>::allocate_at_least[abi:ne200100](v62);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v58 = *(a1 + 136) - v51;
    if (v58 >= v54)
    {
      std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::WireModel *,AudioDSPGraph::IR::WireModel *,AudioDSPGraph::IR::WireModel *>(*(a2 + 128), *(a2 + 136), *(a1 + 128));
      v64 = v63;
      for (m = *(a1 + 136); m != v64; std::allocator_traits<std::allocator<AudioDSPGraph::IR::WireModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::WireModel,void,0>(m))
      {
        m -= 120;
      }

      *(a1 + 136) = v64;
    }

    else
    {
      v59 = std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::WireModel *,AudioDSPGraph::IR::WireModel *,AudioDSPGraph::IR::WireModel *>(*(a2 + 128), (v53 + v58), *(a1 + 128));
      *(a1 + 136) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::WireModel>,AudioDSPGraph::IR::WireModel*,AudioDSPGraph::IR::WireModel*,AudioDSPGraph::IR::WireModel*>(a1 + 128, v59, v52, *(a1 + 136));
    }

    *(a1 + 184) = *(a2 + 184);
    v66 = *(a2 + 168);
    v67 = *(a1 + 160);
    if (v67)
    {
      for (n = 0; n != v67; ++n)
      {
        *(*(a1 + 152) + 8 * n) = 0;
      }

      v69 = *(a1 + 168);
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
      if (v69)
      {
        v70 = v66 == 0;
      }

      else
      {
        v70 = 1;
      }

      if (v70)
      {
        v71 = v69;
      }

      else
      {
        do
        {
          std::string::operator=((v69 + 2), (v66 + 2));
          v72 = *(v66 + 5);
          v73 = *(v66 + 7);
          *(v69 + 68) = *(v66 + 68);
          *(v69 + 7) = v73;
          *(v69 + 5) = v72;
          v71 = *v69;
          std::__hash_table<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::__unordered_map_hasher<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,true>,std::__unordered_map_equal<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,AudioDSPGraph::IR::Hash,true>,std::allocator<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>>>::__node_insert_multi(a1 + 152, v69);
          v66 = *v66;
          if (v71)
          {
            v74 = v66 == 0;
          }

          else
          {
            v74 = 1;
          }

          v69 = v71;
        }

        while (!v74);
      }

      std::__hash_table<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::__unordered_map_hasher<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,true>,std::__unordered_map_equal<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,AudioDSPGraph::IR::Hash,true>,std::allocator<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>>>::__deallocate_node(v71);
    }

    if (v66)
    {
      operator new();
    }

    std::vector<AudioDSPGraph::IR::PortModel>::__assign_with_size[abi:ne200100]<AudioDSPGraph::IR::PortModel*,AudioDSPGraph::IR::PortModel*>(a1 + 192, *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 5);
    std::vector<AudioDSPGraph::IR::PortModel>::__assign_with_size[abi:ne200100]<AudioDSPGraph::IR::PortModel*,AudioDSPGraph::IR::PortModel*>(a1 + 216, *(a2 + 216), *(a2 + 224), (*(a2 + 224) - *(a2 + 216)) >> 5);
    v75 = (a1 + 240);
    v76 = *(a1 + 240);
    v78 = *(a2 + 240);
    v77 = *(a2 + 248);
    v79 = v77 - v78;
    v80 = *(a1 + 256);
    if (v80 - v76 < (v77 - v78))
    {
      v81 = 0xAAAAAAAAAAAAAAABLL * (v79 >> 3);
      if (v76)
      {
        std::vector<AudioDSPGraph::IR::SubsetModel>::clear[abi:ne200100]((a1 + 240));
        operator delete(*v75);
        v80 = 0;
        *v75 = 0;
        *(a1 + 248) = 0;
        *(a1 + 256) = 0;
      }

      if (v81 <= 0xAAAAAAAAAAAAAAALL)
      {
        v82 = 0xAAAAAAAAAAAAAAABLL * (v80 >> 3);
        v83 = 2 * v82;
        if (2 * v82 <= v81)
        {
          v83 = v81;
        }

        if (v82 >= 0x555555555555555)
        {
          v84 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v84 = v83;
        }

        if (v84 <= 0xAAAAAAAAAAAAAAALL)
        {
          std::allocator<AudioDSPGraph::IR::SubsetModel>::allocate_at_least[abi:ne200100](v84);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v85 = *(a1 + 248);
    v86 = v85 - v76;
    if (v85 - v76 >= v79)
    {
      if (v78 != v77)
      {
        do
        {
          std::string::operator=(v76++, v78++);
        }

        while (v78 != v77);
        v85 = *(a1 + 248);
      }

      while (v85 != v76)
      {
        v88 = SHIBYTE(v85[-1].__r_.__value_.__r.__words[2]);
        --v85;
        if (v88 < 0)
        {
          operator delete(v85->__r_.__value_.__l.__data_);
        }
      }

      *(a1 + 248) = v76;
    }

    else
    {
      if (v85 == v76)
      {
        v87 = *(a2 + 240);
      }

      else
      {
        v87 = (v78 + v86);
        do
        {
          std::string::operator=(v76++, v78++);
          v86 -= 24;
        }

        while (v86);
        v85 = *(a1 + 248);
      }

      *(a1 + 248) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::JackModel>,AudioDSPGraph::IR::JackModel*,AudioDSPGraph::IR::JackModel*,AudioDSPGraph::IR::JackModel*>(a1 + 240, v87, v77, v85);
    }

    v89 = *(a2 + 264);
    v90 = *(a2 + 272);
    v91 = v90 - v89;
    v92 = *(a1 + 280);
    v93 = *(a1 + 264);
    if (v92 - v93 < (v90 - v89))
    {
      v94 = v91 >> 4;
      if (v93)
      {
        *(a1 + 272) = v93;
        operator delete(v93);
        v92 = 0;
        *(a1 + 264) = 0;
        *(a1 + 272) = 0;
        *(a1 + 280) = 0;
      }

      if (!(v94 >> 60))
      {
        v95 = v92 >> 3;
        if (v92 >> 3 <= v94)
        {
          v95 = v91 >> 4;
        }

        if (v92 >= 0x7FFFFFFFFFFFFFF0)
        {
          v96 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v96 = v95;
        }

        if (!(v96 >> 60))
        {
          std::allocator<AudioDSPGraph::IR::ParameterModel>::allocate_at_least[abi:ne200100](v96);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v97 = *(a1 + 272);
    v98 = v97 - v93;
    if (v97 - v93 >= v91)
    {
      if (v90 != v89)
      {
        memmove(v93, v89, v90 - v89);
      }

      v101 = &v93[v91];
    }

    else
    {
      if (v97 != v93)
      {
        memmove(*(a1 + 264), *(a2 + 264), v97 - v93);
        v97 = *(a1 + 272);
      }

      v99 = &v89[v98];
      v100 = v90 - &v89[v98];
      if (v100)
      {
        memmove(v97, v99, v100);
      }

      v101 = &v97[v100];
    }

    *(a1 + 272) = v101;
    v103 = *(a2 + 288);
    v102 = *(a2 + 296);
    v104 = v102 - v103;
    v105 = *(a1 + 304);
    v106 = *(a1 + 288);
    if (v105 - v106 < (v102 - v103))
    {
      v107 = 0xAAAAAAAAAAAAAAABLL * (v104 >> 4);
      if (v106)
      {
        std::vector<AudioDSPGraph::IR::ParameterConnectionModel>::clear[abi:ne200100]((a1 + 288));
        operator delete(*(a1 + 288));
        v105 = 0;
        *(a1 + 288) = 0;
        *(a1 + 296) = 0;
        *(a1 + 304) = 0;
      }

      if (v107 <= 0x555555555555555)
      {
        v108 = 0xAAAAAAAAAAAAAAABLL * (v105 >> 4);
        v109 = 2 * v108;
        if (2 * v108 <= v107)
        {
          v109 = v107;
        }

        if (v108 >= 0x2AAAAAAAAAAAAAALL)
        {
          v110 = 0x555555555555555;
        }

        else
        {
          v110 = v109;
        }

        if (v110 <= 0x555555555555555)
        {
          std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>::allocate_at_least[abi:ne200100](v110);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v111 = *(a1 + 296);
    if (v111 - v106 >= v104)
    {
      if (v103 != v102)
      {
        do
        {
          *v106 = *v103;
          std::string::operator=((v106 + 8), (v103 + 8));
          v114 = *(v103 + 40);
          *(v106 + 32) = *(v103 + 32);
          *(v106 + 40) = v114;
          v106 += 48;
          v103 += 48;
        }

        while (v103 != v102);
        v111 = *(a1 + 296);
      }

      while (v111 != v106)
      {
        if (*(v111 - 17) < 0)
        {
          operator delete(*(v111 - 40));
        }

        v111 -= 48;
      }

      *(a1 + 296) = v106;
    }

    else
    {
      if (v111 == v106)
      {
        v112 = *(a2 + 288);
      }

      else
      {
        v112 = v103 + v111 - v106;
        do
        {
          *v106 = *v103;
          std::string::operator=((v106 + 8), (v103 + 8));
          v113 = *(v103 + 40);
          *(v106 + 32) = *(v103 + 32);
          *(v106 + 40) = v113;
          v103 += 48;
          v106 += 48;
        }

        while (v103 != v112);
        v111 = *(a1 + 296);
      }

      *(a1 + 296) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>,AudioDSPGraph::IR::ParameterConnectionModel*,AudioDSPGraph::IR::ParameterConnectionModel*,AudioDSPGraph::IR::ParameterConnectionModel*>(a1 + 288, v112, v102, v111);
    }

    v116 = *(a2 + 312);
    v115 = *(a2 + 320);
    v117 = v115 - v116;
    v118 = *(a1 + 328);
    v119 = *(a1 + 312);
    if (v118 - v119 < (v115 - v116))
    {
      v120 = 0x2E8BA2E8BA2E8BA3 * (v117 >> 3);
      if (v119)
      {
        v121 = *(a1 + 320);
        v122 = *(a1 + 312);
        if (v121 != v119)
        {
          do
          {
            v121 -= 88;
            std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,0>(v121);
          }

          while (v121 != v119);
          v122 = *(a1 + 312);
        }

        *(a1 + 320) = v119;
        operator delete(v122);
        v118 = 0;
        *(a1 + 312) = 0;
        *(a1 + 320) = 0;
        *(a1 + 328) = 0;
      }

      if (v120 <= 0x2E8BA2E8BA2E8BALL)
      {
        v123 = 0x2E8BA2E8BA2E8BA3 * (v118 >> 3);
        v124 = 2 * v123;
        if (2 * v123 <= v120)
        {
          v124 = v120;
        }

        if (v123 >= 0x1745D1745D1745DLL)
        {
          v125 = 0x2E8BA2E8BA2E8BALL;
        }

        else
        {
          v125 = v124;
        }

        if (v125 <= 0x2E8BA2E8BA2E8BALL)
        {
          std::allocator<AudioDSPGraph::IR::ParameterWireModel>::allocate_at_least[abi:ne200100](v125);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v126 = *(a1 + 320) - v119;
    if (v126 >= v117)
    {
      std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel *,AudioDSPGraph::IR::ParameterWireModel *,AudioDSPGraph::IR::ParameterWireModel *>(*(a2 + 312), *(a2 + 320), *(a1 + 312));
      v129 = v128;
      v130 = *(a1 + 320);
      if (v130 != v128)
      {
        do
        {
          v130 -= 88;
          std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,0>(v130);
        }

        while (v130 != v129);
      }

      *(a1 + 320) = v129;
    }

    else
    {
      v127 = std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel *,AudioDSPGraph::IR::ParameterWireModel *,AudioDSPGraph::IR::ParameterWireModel *>(*(a2 + 312), (v116 + v126), *(a1 + 312));
      *(a1 + 320) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::ParameterWireModel>,AudioDSPGraph::IR::ParameterWireModel*,AudioDSPGraph::IR::ParameterWireModel*,AudioDSPGraph::IR::ParameterWireModel*>(v127, v115, *(a1 + 320));
    }

    v132 = *(a2 + 336);
    v131 = *(a2 + 344);
    v133 = v131 - v132;
    v134 = *(a1 + 352);
    v135 = *(a1 + 336);
    if (v134 - v135 < (v131 - v132))
    {
      v136 = 0xCCCCCCCCCCCCCCCDLL * (v133 >> 3);
      if (v135)
      {
        std::vector<AudioDSPGraph::IR::PropertyModel>::__base_destruct_at_end[abi:ne200100](a1 + 336, v135);
        operator delete(*(a1 + 336));
        v134 = 0;
        *(a1 + 336) = 0;
        *(a1 + 344) = 0;
        *(a1 + 352) = 0;
      }

      if (v136 <= 0x666666666666666)
      {
        v137 = 0xCCCCCCCCCCCCCCCDLL * (v134 >> 3);
        v138 = 2 * v137;
        if (2 * v137 <= v136)
        {
          v138 = v136;
        }

        if (v137 >= 0x333333333333333)
        {
          v139 = 0x666666666666666;
        }

        else
        {
          v139 = v138;
        }

        if (v139 <= 0x666666666666666)
        {
          std::allocator<AudioDSPGraph::IR::PropertyModel>::allocate_at_least[abi:ne200100](v139);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v140 = *(a1 + 344);
    if (v140 - v135 >= v133)
    {
      if (v132 != v131)
      {
        v145 = *(a2 + 336);
        v146 = *(a1 + 336);
        do
        {
          v147 = *v145;
          v145 += 40;
          *v146 = v147;
          v146 += 5;
          std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>(v135 + 8, (v132 + 8));
          v135 = v146;
          v132 = v145;
        }

        while (v145 != v131);
        v135 = v146;
      }

      std::vector<AudioDSPGraph::IR::PropertyModel>::__base_destruct_at_end[abi:ne200100](a1 + 336, v135);
    }

    else
    {
      if (v140 != v135)
      {
        v141 = v140 + v132 - v135;
        v142 = *(a2 + 336);
        v143 = *(a1 + 336);
        do
        {
          v144 = *v142;
          v142 += 40;
          *v143 = v144;
          v143 += 5;
          std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>(v135 + 8, (v132 + 8));
          v135 = v143;
          v132 = v142;
        }

        while (v142 != v141);
        v140 = *(a1 + 344);
        v132 = v141;
      }

      *(a1 + 344) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::PropertyModel>,AudioDSPGraph::IR::PropertyModel*,AudioDSPGraph::IR::PropertyModel*,AudioDSPGraph::IR::PropertyModel*>(a1 + 336, v132, v131, v140);
    }

    v149 = *(a2 + 360);
    v148 = *(a2 + 368);
    v150 = v148 - v149;
    v151 = *(a1 + 376);
    v152 = *(a1 + 360);
    if (v151 - v152 < (v148 - v149))
    {
      v153 = 0xAAAAAAAAAAAAAAABLL * (v150 >> 4);
      if (v152)
      {
        std::vector<AudioDSPGraph::IR::ParameterConnectionModel>::clear[abi:ne200100]((a1 + 360));
        operator delete(*(a1 + 360));
        v151 = 0;
        *(a1 + 360) = 0;
        *(a1 + 368) = 0;
        *(a1 + 376) = 0;
      }

      if (v153 <= 0x555555555555555)
      {
        v154 = 0xAAAAAAAAAAAAAAABLL * (v151 >> 4);
        v155 = 2 * v154;
        if (2 * v154 <= v153)
        {
          v155 = v153;
        }

        if (v154 >= 0x2AAAAAAAAAAAAAALL)
        {
          v156 = 0x555555555555555;
        }

        else
        {
          v156 = v155;
        }

        if (v156 <= 0x555555555555555)
        {
          std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>::allocate_at_least[abi:ne200100](v156);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v157 = *(a1 + 368);
    if (v157 - v152 >= v150)
    {
      if (v149 != v148)
      {
        do
        {
          *v152 = *v149;
          std::string::operator=((v152 + 8), (v149 + 8));
          v160 = *(v149 + 40);
          *(v152 + 32) = *(v149 + 32);
          *(v152 + 40) = v160;
          v152 += 48;
          v149 += 48;
        }

        while (v149 != v148);
        v157 = *(a1 + 368);
      }

      while (v157 != v152)
      {
        if (*(v157 - 17) < 0)
        {
          operator delete(*(v157 - 40));
        }

        v157 -= 48;
      }

      *(a1 + 368) = v152;
    }

    else
    {
      if (v157 == v152)
      {
        v158 = *(a2 + 360);
      }

      else
      {
        v158 = v149 + v157 - v152;
        do
        {
          *v152 = *v149;
          std::string::operator=((v152 + 8), (v149 + 8));
          v159 = *(v149 + 40);
          *(v152 + 32) = *(v149 + 32);
          *(v152 + 40) = v159;
          v149 += 48;
          v152 += 48;
        }

        while (v149 != v158);
        v157 = *(a1 + 368);
      }

      *(a1 + 368) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::PropertyConnectionModel>,AudioDSPGraph::IR::PropertyConnectionModel*,AudioDSPGraph::IR::PropertyConnectionModel*,AudioDSPGraph::IR::PropertyConnectionModel*>(a1 + 360, v158, v148, v157);
    }

    v162 = *(a2 + 384);
    v161 = *(a2 + 392);
    v163 = v161 - v162;
    v164 = *(a1 + 400);
    v165 = *(a1 + 384);
    if (v164 - v165 < (v161 - v162))
    {
      v166 = 0x2E8BA2E8BA2E8BA3 * (v163 >> 3);
      if (v165)
      {
        v167 = *(a1 + 392);
        v168 = *(a1 + 384);
        if (v167 != v165)
        {
          do
          {
            v167 -= 88;
            std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,0>(v167);
          }

          while (v167 != v165);
          v168 = *(a1 + 384);
        }

        *(a1 + 392) = v165;
        operator delete(v168);
        v164 = 0;
        *(a1 + 384) = 0;
        *(a1 + 392) = 0;
        *(a1 + 400) = 0;
      }

      if (v166 <= 0x2E8BA2E8BA2E8BALL)
      {
        v169 = 0x2E8BA2E8BA2E8BA3 * (v164 >> 3);
        v170 = 2 * v169;
        if (2 * v169 <= v166)
        {
          v170 = v166;
        }

        if (v169 >= 0x1745D1745D1745DLL)
        {
          v171 = 0x2E8BA2E8BA2E8BALL;
        }

        else
        {
          v171 = v170;
        }

        if (v171 <= 0x2E8BA2E8BA2E8BALL)
        {
          std::allocator<AudioDSPGraph::IR::ParameterWireModel>::allocate_at_least[abi:ne200100](v171);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v172 = *(a1 + 392) - v165;
    if (v172 >= v163)
    {
      std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel *,AudioDSPGraph::IR::ParameterWireModel *,AudioDSPGraph::IR::ParameterWireModel *>(*(a2 + 384), *(a2 + 392), *(a1 + 384));
      v175 = v174;
      v176 = *(a1 + 392);
      if (v176 != v174)
      {
        do
        {
          v176 -= 88;
          std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,0>(v176);
        }

        while (v176 != v175);
      }

      *(a1 + 392) = v175;
    }

    else
    {
      v173 = std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel *,AudioDSPGraph::IR::ParameterWireModel *,AudioDSPGraph::IR::ParameterWireModel *>(*(a2 + 384), (v162 + v172), *(a1 + 384));
      *(a1 + 392) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::PropertyWireModel>,AudioDSPGraph::IR::PropertyWireModel*,AudioDSPGraph::IR::PropertyWireModel*,AudioDSPGraph::IR::PropertyWireModel*>(v173, v161, *(a1 + 392));
    }

    v178 = *(a2 + 408);
    v177 = *(a2 + 416);
    v179 = v177 - v178;
    v180 = *(a1 + 424);
    v181 = *(a1 + 408);
    if (v180 - v181 < (v177 - v178))
    {
      v182 = 0x6DB6DB6DB6DB6DB7 * (v179 >> 3);
      if (v181)
      {
        std::vector<AudioDSPGraph::IR::GraphModel::Analyzer>::clear[abi:ne200100]((a1 + 408));
        operator delete(*(a1 + 408));
        v180 = 0;
        *(a1 + 408) = 0;
        *(a1 + 416) = 0;
        *(a1 + 424) = 0;
      }

      if (v182 <= 0x492492492492492)
      {
        v187 = 0x6DB6DB6DB6DB6DB7 * (v180 >> 3);
        v188 = 2 * v187;
        if (2 * v187 <= v182)
        {
          v188 = v182;
        }

        if (v187 >= 0x249249249249249)
        {
          v189 = 0x492492492492492;
        }

        else
        {
          v189 = v188;
        }

        if (v189 <= 0x492492492492492)
        {
          std::allocator<AudioDSPGraph::IR::GraphModel::Analyzer>::allocate_at_least[abi:ne200100](v189);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v183 = *(a1 + 416);
    if (v183 - v181 >= v179)
    {
      if (v178 != v177)
      {
        do
        {
          *v181 = *v178;
          std::string::operator=((v181 + 8), (v178 + 8));
          v186 = *(v178 + 48);
          *(v181 + 32) = *(v178 + 32);
          *(v181 + 48) = v186;
          v181 += 56;
          v178 += 56;
        }

        while (v178 != v177);
        v183 = *(a1 + 416);
      }

      while (v183 != v181)
      {
        if (*(v183 - 25) < 0)
        {
          operator delete(*(v183 - 48));
        }

        v183 -= 56;
      }

      *(a1 + 416) = v181;
    }

    else
    {
      if (v183 == v181)
      {
        v184 = *(a2 + 408);
      }

      else
      {
        v184 = v178 + v183 - v181;
        do
        {
          *v181 = *v178;
          std::string::operator=((v181 + 8), (v178 + 8));
          v185 = *(v178 + 48);
          *(v181 + 32) = *(v178 + 32);
          *(v181 + 48) = v185;
          v178 += 56;
          v181 += 56;
        }

        while (v178 != v184);
        v183 = *(a1 + 416);
      }

      *(a1 + 416) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::GraphModel::Analyzer>,AudioDSPGraph::IR::GraphModel::Analyzer*,AudioDSPGraph::IR::GraphModel::Analyzer*,AudioDSPGraph::IR::GraphModel::Analyzer*>(a1 + 408, v184, v177, v183);
    }

    v191 = *(a2 + 432);
    v190 = *(a2 + 440);
    v192 = v190 - v191;
    v193 = *(a1 + 448);
    v194 = *(a1 + 432);
    if (v193 - v194 < (v190 - v191))
    {
      v195 = 0xCCCCCCCCCCCCCCCDLL * (v192 >> 3);
      if (v194)
      {
        std::vector<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>::clear[abi:ne200100]((a1 + 432));
        operator delete(*(a1 + 432));
        v193 = 0;
        *(a1 + 432) = 0;
        *(a1 + 440) = 0;
        *(a1 + 448) = 0;
      }

      if (v195 <= 0x666666666666666)
      {
        v196 = 0xCCCCCCCCCCCCCCCDLL * (v193 >> 3);
        v197 = 2 * v196;
        if (2 * v196 <= v195)
        {
          v197 = v195;
        }

        if (v196 >= 0x333333333333333)
        {
          v198 = 0x666666666666666;
        }

        else
        {
          v198 = v197;
        }

        if (v198 <= 0x666666666666666)
        {
          std::allocator<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>::allocate_at_least[abi:ne200100](v198);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v199 = *(a1 + 440);
    if (v199 - v194 >= v192)
    {
      if (v191 != v190)
      {
        do
        {
          *v194 = *v191;
          std::string::operator=((v194 + 8), (v191 + 8));
          *(v194 + 32) = *(v191 + 32);
          v194 += 40;
          v191 += 40;
        }

        while (v191 != v190);
        v199 = *(a1 + 440);
      }

      while (v199 != v194)
      {
        if (*(v199 - 9) < 0)
        {
          operator delete(*(v199 - 32));
        }

        v199 -= 40;
      }

      *(a1 + 440) = v194;
    }

    else
    {
      if (v199 == v194)
      {
        v200 = *(a2 + 432);
      }

      else
      {
        v200 = v191 + v199 - v194;
        do
        {
          *v194 = *v191;
          std::string::operator=((v194 + 8), (v191 + 8));
          *(v194 + 32) = *(v191 + 32);
          v191 += 40;
          v194 += 40;
        }

        while (v191 != v200);
        v199 = *(a1 + 440);
      }

      *(a1 + 440) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>,AudioDSPGraph::IR::GraphModel::AnalyzerConnection*,AudioDSPGraph::IR::GraphModel::AnalyzerConnection*,AudioDSPGraph::IR::GraphModel::AnalyzerConnection*>(a1 + 432, v200, v190, v199);
    }

    v202 = *(a2 + 456);
    v201 = *(a2 + 464);
    v203 = v201 - v202;
    v204 = *(a1 + 472);
    v205 = *(a1 + 456);
    if (v204 - v205 < (v201 - v202))
    {
      v206 = 0x6DB6DB6DB6DB6DB7 * (v203 >> 3);
      if (v205)
      {
        v207 = *(a1 + 464);
        v208 = *(a1 + 456);
        if (v207 != v205)
        {
          do
          {
            v207 -= 56;
            std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v207);
          }

          while (v207 != v205);
          v208 = *(a1 + 456);
        }

        *(a1 + 464) = v205;
        operator delete(v208);
        v204 = 0;
        *(a1 + 456) = 0;
        *(a1 + 464) = 0;
        *(a1 + 472) = 0;
      }

      if (v206 <= 0x492492492492492)
      {
        v214 = 0x6DB6DB6DB6DB6DB7 * (v204 >> 3);
        v215 = 2 * v214;
        if (2 * v214 <= v206)
        {
          v215 = v206;
        }

        if (v214 >= 0x249249249249249)
        {
          v216 = 0x492492492492492;
        }

        else
        {
          v216 = v215;
        }

        if (v216 <= 0x492492492492492)
        {
          std::allocator<AudioDSPGraph::IR::InjectTapPointModel>::allocate_at_least[abi:ne200100](v216);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v209 = *(a1 + 464) - v205;
    if (v209 >= v203)
    {
      std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::InjectTapPointModel *,AudioDSPGraph::IR::InjectTapPointModel *,AudioDSPGraph::IR::InjectTapPointModel *>(*(a2 + 456), *(a2 + 464), *(a1 + 456));
      v212 = v211;
      v213 = *(a1 + 464);
      if (v213 != v211)
      {
        do
        {
          v213 -= 56;
          std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v213);
        }

        while (v213 != v212);
      }

      *(a1 + 464) = v212;
    }

    else
    {
      v210 = std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::InjectTapPointModel *,AudioDSPGraph::IR::InjectTapPointModel *,AudioDSPGraph::IR::InjectTapPointModel *>(*(a2 + 456), (v202 + v209), *(a1 + 456));
      *(a1 + 464) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::InjectTapPointModel>,AudioDSPGraph::IR::InjectTapPointModel*,AudioDSPGraph::IR::InjectTapPointModel*,AudioDSPGraph::IR::InjectTapPointModel*>(v210, v201, *(a1 + 464));
    }

    v218 = *(a2 + 480);
    v217 = *(a2 + 488);
    v219 = v217 - v218;
    v220 = *(a1 + 496);
    v221 = *(a1 + 480);
    if (v220 - v221 < (v217 - v218))
    {
      v222 = 0x6DB6DB6DB6DB6DB7 * (v219 >> 3);
      if (v221)
      {
        v223 = *(a1 + 488);
        v224 = *(a1 + 480);
        if (v223 != v221)
        {
          do
          {
            v223 -= 56;
            std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v223);
          }

          while (v223 != v221);
          v224 = *(a1 + 480);
        }

        *(a1 + 488) = v221;
        operator delete(v224);
        v220 = 0;
        *(a1 + 480) = 0;
        *(a1 + 488) = 0;
        *(a1 + 496) = 0;
      }

      if (v222 <= 0x492492492492492)
      {
        v230 = 0x6DB6DB6DB6DB6DB7 * (v220 >> 3);
        v231 = 2 * v230;
        if (2 * v230 <= v222)
        {
          v231 = v222;
        }

        if (v230 >= 0x249249249249249)
        {
          v232 = 0x492492492492492;
        }

        else
        {
          v232 = v231;
        }

        if (v232 <= 0x492492492492492)
        {
          std::allocator<AudioDSPGraph::IR::InjectTapPointModel>::allocate_at_least[abi:ne200100](v232);
        }
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v225 = *(a1 + 488) - v221;
    if (v225 >= v219)
    {
      std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::InjectTapPointModel *,AudioDSPGraph::IR::InjectTapPointModel *,AudioDSPGraph::IR::InjectTapPointModel *>(v218, v217, *(a1 + 480));
      v228 = v227;
      v229 = *(a1 + 488);
      if (v229 != v227)
      {
        do
        {
          v229 -= 56;
          std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v229);
        }

        while (v229 != v228);
      }

      *(a1 + 488) = v228;
    }

    else
    {
      v226 = std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::InjectTapPointModel *,AudioDSPGraph::IR::InjectTapPointModel *,AudioDSPGraph::IR::InjectTapPointModel *>(v218, (v218 + v225), *(a1 + 480));
      *(a1 + 488) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::RecordTapPointModel>,AudioDSPGraph::IR::RecordTapPointModel*,AudioDSPGraph::IR::RecordTapPointModel*,AudioDSPGraph::IR::RecordTapPointModel*>(v226, v217, *(a1 + 488));
    }
  }

  return a1;
}

void std::vector<AudioDSPGraph::IR::PortModel>::__assign_with_size[abi:ne200100]<AudioDSPGraph::IR::PortModel*,AudioDSPGraph::IR::PortModel*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *(a1 + 16);
  v9 = *a1;
  if (a4 > (v8 - *a1) >> 5)
  {
    if (v9)
    {
      std::vector<AudioDSPGraph::IR::PortModel>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 59))
    {
      v10 = v8 >> 4;
      if (v8 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (!(v11 >> 59))
      {
        std::allocator<AudioDSPGraph::IR::PortModel>::allocate_at_least[abi:ne200100](v11);
      }
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8);
  if (a4 <= (v12 - v9) >> 5)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v9, v6);
        *(v9 + 6) = v6[1].__r_.__value_.__l.__data_;
        v6 = (v6 + 32);
        v9 += 4;
      }

      while (v6 != a3);
      v12 = *(a1 + 8);
    }

    while (v12 != v9)
    {
      v14 = v12[-1].__r_.__value_.__s.__data_[15];
      v12 = (v12 - 32);
      if (v14 < 0)
      {
        operator delete(v12->__r_.__value_.__l.__data_);
      }
    }

    *(a1 + 8) = v9;
  }

  else
  {
    if (v12 == v9)
    {
      v13 = __str;
    }

    else
    {
      v13 = (__str + v12 - v9);
      do
      {
        std::string::operator=(v9, v6);
        *(v9 + 6) = v6[1].__r_.__value_.__l.__data_;
        v6 = (v6 + 32);
        v9 += 4;
      }

      while (v6 != v13);
      v12 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::PortModel>,AudioDSPGraph::IR::PortModel*,AudioDSPGraph::IR::PortModel*,AudioDSPGraph::IR::PortModel*>(a1, v13, a3, v12);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::RecordTapPointModel>,AudioDSPGraph::IR::RecordTapPointModel*,AudioDSPGraph::IR::RecordTapPointModel*,AudioDSPGraph::IR::RecordTapPointModel*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a1 + v6);
      v8 = a3 + v6;
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a3 + v6), *v7, *(v7 + 1));
      }

      else
      {
        v9 = *v7;
        *(v8 + 16) = *(v7 + 2);
        *v8 = v9;
      }

      v10 = (a3 + v6);
      v11 = a1 + v6;
      if (*(a1 + v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v10 + 1, *(v11 + 24), *(v11 + 32));
      }

      else
      {
        v12 = *(v11 + 24);
        v10[1].__r_.__value_.__r.__words[2] = *(v11 + 40);
        *&v10[1].__r_.__value_.__l.__data_ = v12;
      }

      v13 = a3 + v6;
      v14 = *(a1 + v6 + 48);
      *(v13 + 52) = *(a1 + v6 + 52);
      *(v13 + 48) = v14;
      v6 += 56;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_1C91E91F8(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 56;
    std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::InjectTapPointModel *,AudioDSPGraph::IR::InjectTapPointModel *,AudioDSPGraph::IR::InjectTapPointModel *>(std::string *__str, std::string *a2, std::string *this)
{
  v4 = __str;
  if (__str == a2)
  {
    return __str;
  }

  v5 = a2;
  do
  {
    std::string::operator=(this, v4);
    std::string::operator=(this + 1, v4 + 1);
    v6 = v4[2].__r_.__value_.__s.__data_[4];
    LODWORD(this[2].__r_.__value_.__l.__data_) = v4[2].__r_.__value_.__l.__data_;
    this[2].__r_.__value_.__s.__data_[4] = v6;
    this = (this + 56);
    v4 = (v4 + 56);
  }

  while (v4 != v5);
  return v5;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::InjectTapPointModel>,AudioDSPGraph::IR::InjectTapPointModel*,AudioDSPGraph::IR::InjectTapPointModel*,AudioDSPGraph::IR::InjectTapPointModel*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a1 + v6);
      v8 = a3 + v6;
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a3 + v6), *v7, *(v7 + 1));
      }

      else
      {
        v9 = *v7;
        *(v8 + 16) = *(v7 + 2);
        *v8 = v9;
      }

      v10 = (a3 + v6);
      v11 = a1 + v6;
      if (*(a1 + v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v10 + 1, *(v11 + 24), *(v11 + 32));
      }

      else
      {
        v12 = *(v11 + 24);
        v10[1].__r_.__value_.__r.__words[2] = *(v11 + 40);
        *&v10[1].__r_.__value_.__l.__data_ = v12;
      }

      v13 = a3 + v6;
      v14 = *(a1 + v6 + 48);
      *(v13 + 52) = *(a1 + v6 + 52);
      *(v13 + 48) = v14;
      v6 += 56;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_1C91E9388(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 56;
    std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<AudioDSPGraph::IR::InjectTapPointModel>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>,AudioDSPGraph::IR::GraphModel::AnalyzerConnection*,AudioDSPGraph::IR::GraphModel::AnalyzerConnection*,AudioDSPGraph::IR::GraphModel::AnalyzerConnection*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        v10 = v15;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
        v10 = v4;
      }

      *(v4 + 32) = *(v6 + 6);
      v4 = v10 + 40;
      v15 = v10 + 40;
      v6 = (v6 + 40);
    }

    while (v7 + 40 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>,AudioDSPGraph::IR::GraphModel::AnalyzerConnection*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  return v4;
}

void std::allocator<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>,AudioDSPGraph::IR::GraphModel::AnalyzerConnection*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
      }

      v3 -= 40;
    }
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::GraphModel::Analyzer>,AudioDSPGraph::IR::GraphModel::Analyzer*,AudioDSPGraph::IR::GraphModel::Analyzer*,AudioDSPGraph::IR::GraphModel::Analyzer*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        v10 = v16;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
        v10 = v4;
      }

      v11 = *(v6 + 24);
      *(v4 + 48) = *(v6 + 10);
      *(v4 + 32) = v11;
      v4 = v10 + 56;
      v16 = v10 + 56;
      v6 = (v6 + 56);
    }

    while (v7 + 56 != a3);
  }

  v14 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::GraphModel::Analyzer>,AudioDSPGraph::IR::GraphModel::Analyzer*>>::~__exception_guard_exceptions[abi:ne200100](v13);
  return v4;
}

void std::allocator<AudioDSPGraph::IR::GraphModel::Analyzer>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<AudioDSPGraph::IR::GraphModel::Analyzer>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  a1[1] = v2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::GraphModel::Analyzer>,AudioDSPGraph::IR::GraphModel::Analyzer*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 48));
      }

      v3 -= 56;
    }
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::PropertyWireModel>,AudioDSPGraph::IR::PropertyWireModel*,AudioDSPGraph::IR::PropertyWireModel*,AudioDSPGraph::IR::PropertyWireModel*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = (a1 + v6);
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a3 + v6), *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        *(v7 + 16) = *(v8 + 2);
        *v7 = v9;
      }

      v10 = a3 + v6;
      v11 = a1 + v6;
      v12 = *(a1 + v6 + 24);
      *(v10 + 32) = *(a1 + v6 + 32);
      *(v10 + 24) = v12;
      if (*(a1 + v6 + 63) < 0)
      {
        std::string::__init_copy_ctor_external((v10 + 40), *(v11 + 40), *(v11 + 48));
      }

      else
      {
        v13 = *(v11 + 40);
        *(v10 + 56) = *(v11 + 56);
        *(v10 + 40) = v13;
      }

      v14 = a3 + v6;
      v15 = *(a1 + v6 + 64);
      *(v14 + 72) = *(a1 + v6 + 72);
      *(v14 + 64) = v15;
      *(v14 + 80) = *(a1 + v6 + 80);
      v6 += 88;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_1C91E98E0(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 88;
    std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::PropertyConnectionModel>,AudioDSPGraph::IR::PropertyConnectionModel*,AudioDSPGraph::IR::PropertyConnectionModel*,AudioDSPGraph::IR::PropertyConnectionModel*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        v10 = v16;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
        v10 = v4;
      }

      v11 = *(v6 + 3);
      *(v4 + 40) = *(v6 + 8);
      *(v4 + 32) = v11;
      v4 = v10 + 48;
      v16 = v10 + 48;
      v6 += 3;
    }

    while (v7 + 48 != a3);
  }

  v14 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>,AudioDSPGraph::IR::ParameterConnectionModel*>>::~__exception_guard_exceptions[abi:ne200100](v13);
  return v4;
}

void std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2];
      v5 = *a2;

      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::PropertyModel>,AudioDSPGraph::IR::PropertyModel*,AudioDSPGraph::IR::PropertyModel*,AudioDSPGraph::IR::PropertyModel*>(uint64_t a1, void *a2, void *a3, void *a4)
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
      std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100]((v4 + 1), (v6 + 1));
      v6 += 5;
      v4 = v11 + 5;
      v11 += 5;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::PropertyModel>,AudioDSPGraph::IR::PropertyModel*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<AudioDSPGraph::IR::PropertyModel>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 40)
  {
    if (*(i - 8) == 1)
    {
      v5 = *(i - 32);
      if (v5)
      {
        *(i - 24) = v5;
        operator delete(v5);
      }
    }
  }

  *(a1 + 8) = a2;
}

void std::allocator<AudioDSPGraph::IR::PropertyModel>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1C91E9C6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::PropertyModel>,AudioDSPGraph::IR::PropertyModel*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 8) == 1)
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }
      }

      v3 -= 40;
    }
  }

  return a1;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C91E9D60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel *,AudioDSPGraph::IR::ParameterWireModel *,AudioDSPGraph::IR::ParameterWireModel *>(std::string *__str, std::string *a2, std::string *this)
{
  v4 = __str;
  if (__str == a2)
  {
    return __str;
  }

  v5 = a2;
  do
  {
    std::string::operator=(this, v4);
    v6 = v4[1].__r_.__value_.__r.__words[1];
    this[1].__r_.__value_.__r.__words[0] = v4[1].__r_.__value_.__r.__words[0];
    LODWORD(this[1].__r_.__value_.__r.__words[1]) = v6;
    std::string::operator=((this + 40), (v4 + 40));
    v7 = v4[2].__r_.__value_.__r.__words[2];
    LODWORD(this[3].__r_.__value_.__l.__data_) = v4[3].__r_.__value_.__l.__data_;
    this[2].__r_.__value_.__r.__words[2] = v7;
    this[3].__r_.__value_.__s.__data_[8] = v4[3].__r_.__value_.__s.__data_[8];
    this = (this + 88);
    v4 = (v4 + 88);
  }

  while (v4 != v5);
  return v5;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::ParameterWireModel>,AudioDSPGraph::IR::ParameterWireModel*,AudioDSPGraph::IR::ParameterWireModel*,AudioDSPGraph::IR::ParameterWireModel*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = (a1 + v6);
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a3 + v6), *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        *(v7 + 16) = *(v8 + 2);
        *v7 = v9;
      }

      v10 = a3 + v6;
      v11 = a1 + v6;
      v12 = *(a1 + v6 + 24);
      *(v10 + 32) = *(a1 + v6 + 32);
      *(v10 + 24) = v12;
      if (*(a1 + v6 + 63) < 0)
      {
        std::string::__init_copy_ctor_external((v10 + 40), *(v11 + 40), *(v11 + 48));
      }

      else
      {
        v13 = *(v11 + 40);
        *(v10 + 56) = *(v11 + 56);
        *(v10 + 40) = v13;
      }

      v14 = a3 + v6;
      v15 = *(a1 + v6 + 64);
      *(v14 + 72) = *(a1 + v6 + 72);
      *(v14 + 64) = v15;
      *(v14 + 80) = *(a1 + v6 + 80);
      v6 += 88;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_1C91EA080(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 88;
    std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,0>(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::allocator<AudioDSPGraph::IR::ParameterWireModel>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>,AudioDSPGraph::IR::ParameterConnectionModel*,AudioDSPGraph::IR::ParameterConnectionModel*,AudioDSPGraph::IR::ParameterConnectionModel*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        v10 = v16;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
        v10 = v4;
      }

      v11 = *(v6 + 3);
      *(v4 + 40) = *(v6 + 8);
      *(v4 + 32) = v11;
      v4 = v10 + 48;
      v16 = v10 + 48;
      v6 += 3;
    }

    while (v7 + 48 != a3);
  }

  v14 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>,AudioDSPGraph::IR::ParameterConnectionModel*>>::~__exception_guard_exceptions[abi:ne200100](v13);
  return v4;
}

void std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<AudioDSPGraph::IR::ParameterConnectionModel>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    if (*(i - 17) < 0)
    {
      operator delete(*(i - 40));
    }
  }

  a1[1] = v2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>,AudioDSPGraph::IR::ParameterConnectionModel*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 17) < 0)
      {
        operator delete(*(v3 - 40));
      }

      v3 -= 48;
    }
  }

  return a1;
}

void std::allocator<AudioDSPGraph::IR::ParameterModel>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::JackModel>,AudioDSPGraph::IR::JackModel*,AudioDSPGraph::IR::JackModel*,AudioDSPGraph::IR::JackModel*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::SubsetModel>,AudioDSPGraph::IR::SubsetModel*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::PortModel>,AudioDSPGraph::IR::PortModel*,AudioDSPGraph::IR::PortModel*,AudioDSPGraph::IR::PortModel*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      LODWORD(v4[1].__r_.__value_.__l.__data_) = *(v6 + 6);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::PortModel>,AudioDSPGraph::IR::PortModel*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

void std::allocator<AudioDSPGraph::IR::PortModel>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<AudioDSPGraph::IR::PortModel>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::PortModel>,AudioDSPGraph::IR::PortModel*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::__unordered_map_hasher<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,true>,std::__unordered_map_equal<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,AudioDSPGraph::IR::Hash,true>,std::allocator<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a2 + 2));
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  v28 = *a1;
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v23 = v20[1];
        if (v17 > 1)
        {
          v24 = v23;
          if (v23 >= v5)
          {
            v24 = v23 % v5;
          }
        }

        else
        {
          v24 = v23 & (v5 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v4 && AudioDSPGraph::IR::BoxAlias::operator==(v22 + 2, a2 + 2);
        if ((v21 & (v25 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v25 != (v21 & 1);
        v20 = *v22;
        v19 = v22;
      }

      while (*v22);
    }
  }

  v26 = a2[1];
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v28[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_65;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_65;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

void std::__hash_table<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::__unordered_map_hasher<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,true>,std::__unordered_map_equal<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,AudioDSPGraph::IR::Hash,true>,std::allocator<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::WireModel *,AudioDSPGraph::IR::WireModel *,AudioDSPGraph::IR::WireModel *>(std::string *__str, std::string *a2, std::string *this)
{
  v4 = __str;
  if (__str == a2)
  {
    return __str;
  }

  v5 = a2;
  do
  {
    std::string::operator=(this, v4);
    LODWORD(this[1].__r_.__value_.__l.__data_) = v4[1].__r_.__value_.__l.__data_;
    std::string::operator=((this + 32), (v4 + 32));
    LODWORD(this[2].__r_.__value_.__r.__words[1]) = v4[2].__r_.__value_.__r.__words[1];
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1> const&>(&this[2].__r_.__value_.__r.__words[2], &v4[2].__r_.__value_.__r.__words[2]);
    this += 5;
    v4 += 5;
  }

  while (v4 != v5);
  return v5;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::WireModel>,AudioDSPGraph::IR::WireModel*,AudioDSPGraph::IR::WireModel*,AudioDSPGraph::IR::WireModel*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a4 + v7), *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      *(a4 + v7 + 24) = *(a2 + v7 + 24);
      if (*(a2 + v7 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v11 + 32), *(v12 + 32), *(v12 + 40));
      }

      else
      {
        v13 = *(v12 + 32);
        *(v11 + 48) = *(v12 + 48);
        *(v11 + 32) = v13;
      }

      *(a4 + v7 + 56) = *(a2 + v7 + 56);
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a4 + v7 + 64, a2 + v7 + 64);
      v7 += 120;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1C91EB120(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  while (v2 != v1)
  {
    v2 -= 120;
    std::allocator_traits<std::allocator<AudioDSPGraph::IR::WireModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::WireModel,void,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<AudioDSPGraph::IR::WireModel>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator_traits<std::allocator<AudioDSPGraph::IR::WireModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::WireModel,void,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 64);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  if (v2 != -1)
  {
    result = (off_1F48CBAF8[v2])(&v3, result);
  }

  *(v1 + 48) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN13AudioDSPGraph2IR17WireConfigurationENSA_22WireConfigurationAliasEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSE_1EJS8_SB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = -1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v4 = *(a2 + 48);
  if (v4 != -1)
  {
    v6 = a1;
    (off_1F48CBB10[v4])(&v6, a2);
    *(a1 + 48) = v4;
  }

  return a1;
}

uint64_t AudioDSPGraph::IR::Pair<AudioDSPGraph::IR::Endpoint,AudioDSPGraph::IR::WireEndpoint>::~Pair(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN13AudioDSPGraph2IR17WireConfigurationENSA_22WireConfigurationAliasEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJS8_SB_SC_EEEEEEDcSM_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN13AudioDSPGraph2IR17WireConfigurationENSA_22WireConfigurationAliasEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJS8_SB_SC_EEEEEEDcSM_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 32);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 32) = v4;
  *v2 = result;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (*(result + 48) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_1F48CBB28[v4])(v6);
    }
  }

  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN13AudioDSPGraph2IR17WireConfigurationENSA_22WireConfigurationAliasEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJS8_SB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t *a1, std::string *this, std::string *__str)
{
  v3 = *a1;
  if (*(*a1 + 48) == 2)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v5, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *__str;
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v3);
    result = *&v5.__r_.__value_.__l.__data_;
    *v3 = v5;
    *(v3 + 48) = 2;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN13AudioDSPGraph2IR17WireConfigurationENSA_22WireConfigurationAliasEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJS8_SB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    result = *a3;
    v6 = *(a3 + 16);
    *(a2 + 28) = *(a3 + 28);
    *a2 = result;
    *(a2 + 16) = v6;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    v7 = *(a3 + 32);
    *(v4 + 16) = *(a3 + 16);
    *(v4 + 32) = v7;
    *v4 = result;
    *(v4 + 48) = 1;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN13AudioDSPGraph2IR17WireConfigurationENSA_22WireConfigurationAliasEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJS8_SB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 48))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *(v1 + 48) = 0;
  }

  return result;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::SubsetModel>,AudioDSPGraph::IR::SubsetModel*,AudioDSPGraph::IR::SubsetModel*,AudioDSPGraph::IR::SubsetModel*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::SubsetModel>,AudioDSPGraph::IR::SubsetModel*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::allocator<AudioDSPGraph::IR::SubsetModel>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<AudioDSPGraph::IR::SubsetModel>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::SubsetModel>,AudioDSPGraph::IR::SubsetModel*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel *,AudioDSPGraph::IR::BoxRelationModel *,AudioDSPGraph::IR::BoxRelationModel *>(std::string *__str, std::string *a2, std::string *this)
{
  v4 = __str;
  if (__str == a2)
  {
    return __str;
  }

  v5 = a2;
  do
  {
    std::string::operator=(this, v4);
    std::string::operator=(this + 1, v4 + 1);
    LODWORD(this[2].__r_.__value_.__l.__data_) = v4[2].__r_.__value_.__l.__data_;
    this = (this + 56);
    v4 = (v4 + 56);
  }

  while (v4 != v5);
  return v5;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::BoxRelationModel>,AudioDSPGraph::IR::BoxRelationModel*,AudioDSPGraph::IR::BoxRelationModel*,AudioDSPGraph::IR::BoxRelationModel*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a1 + v6);
      v8 = a3 + v6;
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a3 + v6), *v7, *(v7 + 1));
      }

      else
      {
        v9 = *v7;
        *(v8 + 16) = *(v7 + 2);
        *v8 = v9;
      }

      v10 = (a3 + v6);
      v11 = a1 + v6;
      if (*(a1 + v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v10 + 1, *(v11 + 24), *(v11 + 32));
      }

      else
      {
        v12 = *(v11 + 24);
        v10[1].__r_.__value_.__r.__words[2] = *(v11 + 40);
        *&v10[1].__r_.__value_.__l.__data_ = v12;
      }

      *(a3 + v6 + 48) = *(a1 + v6 + 48);
      v6 += 56;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_1C91EB864(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 56;
    std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(uint64_t a1)
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

void std::allocator<AudioDSPGraph::IR::BoxRelationModel>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__copy_impl::operator()[abi:ne200100]<AudioDSPGraph::IR::BoxModel *,AudioDSPGraph::IR::BoxModel *,AudioDSPGraph::IR::BoxModel *>(std::string *__str, std::string *a2, std::string *this)
{
  v4 = __str;
  if (__str == a2)
  {
    return __str;
  }

  v5 = a2;
  do
  {
    std::string::operator=(this, v4);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(this + 1, v4 + 1);
    v6 = *&v4[2].__r_.__value_.__r.__words[1];
    *&this[3].__r_.__value_.__l.__data_ = *&v4[3].__r_.__value_.__l.__data_;
    *&this[2].__r_.__value_.__r.__words[1] = v6;
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 88), (v4 + 88));
    this += 5;
    v4 += 5;
  }

  while (v4 != v5);
  return v5;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AudioDSPGraph::IR::BoxModel>,AudioDSPGraph::IR::BoxModel*,AudioDSPGraph::IR::BoxModel*,AudioDSPGraph::IR::BoxModel*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a4 + v7), *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a4 + v7 + 24), (a2 + v7 + 24));
      v12 = *(a2 + v7 + 56);
      *(v11 + 72) = *(a2 + v7 + 72);
      *(v11 + 56) = v12;
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a4 + v7 + 88), (a2 + v7 + 88));
      v7 += 120;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1C91EBAA4(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 120;
    std::allocator_traits<std::allocator<AudioDSPGraph::IR::BoxModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::BoxModel,void,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<AudioDSPGraph::IR::BoxModel>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator_traits<std::allocator<AudioDSPGraph::IR::BoxModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::BoxModel,void,0>(uint64_t a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_1C91EBC48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioDSPGraph::IR::PortModel>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<AudioDSPGraph::IR::PortModel>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

BOOL std::operator==[abi:ne200100]<AudioDSPGraph::IR::BoxModel,std::allocator<AudioDSPGraph::IR::BoxModel>>(char *a1, char *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  do
  {
    result = AudioDSPGraph::IR::BoxModel::operator==(v5, v6);
    if (!result)
    {
      break;
    }

    v5 += 120;
    v6 += 120;
  }

  while (v5 != a2);
  return result;
}

BOOL std::operator==[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,std::allocator<AudioDSPGraph::IR::BoxRelationModel>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  for (i = a3; ; i += 56)
  {
    result = AudioDSPGraph::IR::BoxAlias::operator==(v5, i);
    if (!result)
    {
      break;
    }

    v8 = v5 + 24;
    v9 = AudioDSPGraph::IR::BoxAlias::operator==((v5 + 24), (i + 24));
    result = 0;
    if (!v9 || *(v5 + 48) != *(i + 48))
    {
      break;
    }

    v5 += 56;
    if (v8 + 32 == a2)
    {
      return 1;
    }
  }

  return result;
}

BOOL std::operator==[abi:ne200100]<AudioDSPGraph::IR::SubsetModel,std::allocator<AudioDSPGraph::IR::SubsetModel>>(const void **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 3)
  {
    v8 = a3 + i * 8;
    v9 = &a1[i];
    v10 = SHIBYTE(a1[i + 2]);
    if (v10 >= 0)
    {
      v11 = HIBYTE(a1[i + 2]);
    }

    else
    {
      v11 = a1[i + 1];
    }

    v12 = *(v8 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v8 + 8);
    }

    if (v11 != v12)
    {
      break;
    }

    v14 = v9 + 3;
    if (v10 >= 0)
    {
      v15 = &a1[i];
    }

    else
    {
      v15 = *v9;
    }

    if (v13 >= 0)
    {
      v16 = (a3 + i * 8);
    }

    else
    {
      v16 = *v8;
    }

    v17 = memcmp(v15, v16, v11);
    result = v17 == 0;
    if (v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = v14 == a2;
    }

    if (v19)
    {
      return result;
    }
  }

  return 0;
}

uint64_t std::operator==[abi:ne200100]<AudioDSPGraph::IR::WireModel,std::allocator<AudioDSPGraph::IR::WireModel>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  do
  {
    result = AudioDSPGraph::IR::WireModel::operator==(v5, v6);
    if (!result)
    {
      break;
    }

    v5 += 120;
    v6 += 120;
  }

  while (v5 != a2);
  return result;
}

unint64_t std::operator==[abi:ne200100]<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,std::allocator<std::pair<AudioDSPGraph::IR::WireConfigurationAlias const,AudioDSPGraph::IR::WireConfiguration>>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  while (1)
  {
    v3 = *v3;
    result = v3 == 0;
    if (!v3)
    {
      break;
    }

    result = std::__hash_table<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::__unordered_map_hasher<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,true>,std::__unordered_map_equal<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,AudioDSPGraph::IR::Hash,true>,std::allocator<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>>>::find<AudioDSPGraph::IR::WireConfigurationAlias>(a2, v3 + 2);
    if (!result)
    {
      break;
    }

    v5 = result;
    result = AudioDSPGraph::IR::BoxAlias::operator==(v3 + 2, (result + 16));
    if (!result)
    {
      break;
    }

    if (!AudioDSPGraph::IR::WireConfiguration::operator==((v3 + 5), (v5 + 5)))
    {
      return 0;
    }
  }

  return result;
}

uint64_t AudioDSPGraph::IR::operator==<std::vector<AudioDSPGraph::IR::PortModel>>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v7 = 0;
    do
    {
      v8 = (v4 + v7);
      v9 = v3 + v7;
      v10 = *(v3 + v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v3 + v7 + 23);
      }

      else
      {
        v11 = *(v3 + v7 + 8);
      }

      v12 = *(v8 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = v8[1];
      }

      if (v11 != v12)
      {
        return 0;
      }

      v14 = v10 >= 0 ? (v3 + v7) : *v9;
      v15 = *v8;
      v16 = (v13 >= 0 ? v4 + v7 : *v8);
      if (memcmp(v14, v16, v11) || *(v9 + 24) != *(v8 + 6))
      {
        return 0;
      }

      v7 += 32;
    }

    while (v3 + v7 != v2);
  }

  v20 = a1 + 3;
  v18 = a1[3];
  v19 = v20[1];
  v22 = a2 + 3;
  v21 = a2[3];
  if (v19 - v18 != v22[1] - v21)
  {
    return 0;
  }

  if (v18 != v19)
  {
    v23 = 0;
    while (1)
    {
      v24 = (v21 + v23);
      v25 = v18 + v23;
      v26 = *(v18 + v23 + 23);
      if (v26 >= 0)
      {
        v27 = *(v18 + v23 + 23);
      }

      else
      {
        v27 = *(v18 + v23 + 8);
      }

      v28 = *(v24 + 23);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = v24[1];
      }

      if (v27 != v28)
      {
        break;
      }

      v30 = v26 >= 0 ? (v18 + v23) : *v25;
      v31 = *v24;
      v32 = (v29 >= 0 ? v21 + v23 : *v24);
      if (memcmp(v30, v32, v27) || *(v25 + 24) != *(v24 + 6))
      {
        break;
      }

      v23 += 32;
      result = 1;
      if (v18 + v23 == v19)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t std::operator==[abi:ne200100]<AudioDSPGraph::IR::ParameterModel,std::allocator<AudioDSPGraph::IR::ParameterModel>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 == a4 - a3)
  {
    if (a1 == a2)
    {
      return 1;
    }

    v4 = a3 + 8;
    for (i = a1 + 8; ; i += 16)
    {
      v6 = i - 8;
      if (*(i - 8) != *(v4 - 8) || *(i - 4) != *(v4 - 4))
      {
        break;
      }

      v7 = *(i + 4);
      v8 = *(v4 + 4);
      if (v7 != v8 || v7 == 0)
      {
        if (v7 != v8)
        {
          return 0;
        }
      }

      else if (*i != *v4)
      {
        return 0;
      }

      v4 += 16;
      if (v6 + 16 == a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<AudioDSPGraph::IR::ParameterConnectionModel,std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  do
  {
    result = AudioDSPGraph::IR::ParameterConnectionModel::operator==(v5, v6);
    if (!result)
    {
      break;
    }

    v5 += 48;
    v6 += 48;
  }

  while (v5 != a2);
  return result;
}

BOOL std::operator==[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,std::allocator<AudioDSPGraph::IR::ParameterWireModel>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  for (i = a3; ; i += 88)
  {
    result = AudioDSPGraph::IR::ParameterEndpoint::operator==(v5, i);
    if (!result)
    {
      break;
    }

    v8 = v5 + 40;
    v9 = AudioDSPGraph::IR::ParameterEndpoint::operator==((v5 + 40), (i + 40));
    result = 0;
    if (!v9 || *(v5 + 80) != *(i + 80))
    {
      break;
    }

    v5 += 88;
    if (v8 + 48 == a2)
    {
      return 1;
    }
  }

  return result;
}

BOOL std::operator==[abi:ne200100]<AudioDSPGraph::IR::PropertyModel,std::allocator<AudioDSPGraph::IR::PropertyModel>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  do
  {
    result = AudioDSPGraph::IR::PropertyModel::operator==(v5, v6);
    if (!result)
    {
      break;
    }

    v5 += 40;
    v6 += 40;
  }

  while (v5 != a2);
  return result;
}

BOOL std::operator==[abi:ne200100]<AudioDSPGraph::IR::GraphModel::Analyzer,std::allocator<AudioDSPGraph::IR::GraphModel::Analyzer>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  while (*v5 == *v6)
  {
    v7 = *(v5 + 31);
    if (v7 >= 0)
    {
      v8 = *(v5 + 31);
    }

    else
    {
      v8 = *(v5 + 16);
    }

    v9 = *(v6 + 31);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v6 + 16);
    }

    if (v8 != v9)
    {
      break;
    }

    v13 = *(v6 + 8);
    v12 = v6 + 8;
    v11 = v13;
    v16 = *(v5 + 8);
    v15 = v5 + 8;
    v14 = v16;
    v17 = (v7 >= 0 ? v15 : v14);
    v18 = (v10 >= 0 ? v12 : v11);
    if (memcmp(v17, v18, v8))
    {
      break;
    }

    result = AudioDSPGraph::IR::AudioComponentDescription::operator==((v15 + 24), (v12 + 24));
    if (result)
    {
      v5 = v15 + 48;
      v6 = v12 + 48;
      if (v5 != a2)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t std::operator==[abi:ne200100]<AudioDSPGraph::IR::GraphModel::AnalyzerConnection,std::allocator<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  while (*v5 == *v6)
  {
    v7 = *(v5 + 31);
    if (v7 >= 0)
    {
      v8 = *(v5 + 31);
    }

    else
    {
      v8 = *(v5 + 16);
    }

    v9 = *(v6 + 31);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v6 + 16);
    }

    if (v8 != v9)
    {
      break;
    }

    v13 = *(v6 + 8);
    v12 = v6 + 8;
    v11 = v13;
    v16 = *(v5 + 8);
    v15 = v5 + 8;
    v14 = v16;
    v17 = (v7 >= 0 ? v15 : v14);
    v18 = (v10 >= 0 ? v12 : v11);
    if (memcmp(v17, v18, v8) || *(v15 + 24) != *(v12 + 24))
    {
      break;
    }

    v5 = v15 + 32;
    v6 = v12 + 32;
    if (v5 == a2)
    {
      return 1;
    }
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<AudioDSPGraph::IR::InjectTapPointModel,std::allocator<AudioDSPGraph::IR::InjectTapPointModel>>(const std::string_view::value_type *a1, std::__fs::filesystem::path::__string_view a2, uint64_t a3)
{
  if (a2.__data_ - a1 != a3 - a2.__size_)
  {
    return 0;
  }

  data = a2.__data_;
  v4 = a1;
  if (a1 == a2.__data_)
  {
    return 1;
  }

  size = a2.__size_;
  do
  {
    a2.__data_ = size;
    result = AudioDSPGraph::IR::InjectTapPointModel::operator==(v4, a2);
    if (!result)
    {
      break;
    }

    v4 += 56;
    size += 56;
  }

  while (v4 != data);
  return result;
}

BOOL std::__fs::filesystem::operator==[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) == 0;
}

BOOL AudioDSPGraph::IR::InjectTapPointModel::operator==(uint64_t a1, std::__fs::filesystem::path::__string_view a2)
{
  data = a2.__data_;
  result = std::__fs::filesystem::operator==[abi:ne200100](a1, a2);
  if (result)
  {
    v5 = *(a1 + 47);
    if (v5 >= 0)
    {
      v6 = *(a1 + 47);
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = *(data + 47);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(data + 4);
    }

    if (v6 == v7 && (v5 >= 0 ? (v9 = (a1 + 24)) : (v9 = *(a1 + 24)), v8 >= 0 ? (v10 = data + 24) : (v10 = *(data + 3)), !memcmp(v9, v10, v6) && *(a1 + 48) == *(data + 12)))
    {
      return *(a1 + 52) == *(data + 52);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL AudioDSPGraph::IR::PropertyModel::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v2 == *(a2 + 32);
  if (v2 == *(a2 + 32) && v2 != 0)
  {
    v6 = a1 + 8;
    v5 = *(a1 + 8);
    v7 = *(v6 + 8) - v5;
    v9 = a2 + 8;
    v8 = *(a2 + 8);
    if (v7 == *(v9 + 8) - v8)
    {
      return memcmp(v5, v8, v7) == 0;
    }

    return 0;
  }

  return v3;
}

BOOL AudioDSPGraph::IR::ParameterEndpoint::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && v7[6] == v6[6] && v7[7] == v6[7] && v7[8] == v6[8];
}

BOOL AudioDSPGraph::IR::ParameterConnectionModel::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = *(a2 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 16);
  }

  if (v5 == v6 && (v4 >= 0 ? (v8 = (a1 + 8)) : (v8 = *(a1 + 8)), v7 >= 0 ? (v9 = (a2 + 8)) : (v9 = *(a2 + 8)), !memcmp(v8, v9, v5) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36)))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::__unordered_map_hasher<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,true>,std::__unordered_map_equal<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,AudioDSPGraph::IR::Hash,true>,std::allocator<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>>>::find<AudioDSPGraph::IR::WireConfigurationAlias>(void *a1, void *a2)
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
        if (AudioDSPGraph::IR::BoxAlias::operator==(v11 + 2, a2))
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

uint64_t AudioDSPGraph::IR::WireModel::operator==(uint64_t a1, uint64_t a2)
{
  result = AudioDSPGraph::IR::WireEndpoint::operator==(a1, a2);
  if (result)
  {
    result = AudioDSPGraph::IR::WireEndpoint::operator==((a1 + 32), (a2 + 32));
    if (result)
    {
      v5 = *(a1 + 112);
      v6 = *(a2 + 112);
      result = v6 == v5;
      if (v5 != -1 && v6 == v5)
      {
        v9 = &v8;
        return (off_1F48CBB40[v5])(&v9, a1 + 64, a2 + 64);
      }
    }
  }

  return result;
}

BOOL AudioDSPGraph::IR::WireEndpoint::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && *(v7 + 6) == *(v6 + 6);
}

void sub_1C91ED7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, char a13)
{
  if (*(v13 + 23) < 0)
  {
    operator delete(*v13);
  }

  std::__split_buffer<AudioDSPGraph::IR::WireModel>::~__split_buffer(&a13);

  _Unwind_Resume(a1);
}

uint64_t *CA::DSP::LazyCreate(uint64_t *result)
{
  if (!*result)
  {
    v1 = result;
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v3 = *v1;
    *v1 = v2;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

uint64_t std::__split_buffer<AudioDSPGraph::IR::WireModel>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 120;
    std::allocator_traits<std::allocator<AudioDSPGraph::IR::WireModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::WireModel,void,0>(v3 - 120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 32);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 32) = v4;
  *v2 = result;
  return result;
}

void sub_1C91EDB9C(_Unwind_Exception *a1, uint64_t a2, id a3, std::__split_buffer<std::string> *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::__split_buffer<AudioDSPGraph::IR::SubsetModel>::~__split_buffer(&a12);

  _Unwind_Resume(a1);
}

void sub_1C91EDE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, char a12)
{
  std::__split_buffer<AudioDSPGraph::IR::PortModel>::~__split_buffer(&a12);

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<AudioDSPGraph::IR::PortModel>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
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

void sub_1C91EE120(_Unwind_Exception *a1, uint64_t a2, id a3, std::__split_buffer<std::string> *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::__split_buffer<AudioDSPGraph::IR::SubsetModel>::~__split_buffer(&a12);

  _Unwind_Resume(a1);
}

void std::__split_buffer<AudioDSPGraph::IR::SubsetModel>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void sub_1C91EE45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, char a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  std::__split_buffer<AudioDSPGraph::IR::BoxRelationModel>::~__split_buffer(&a12);

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<AudioDSPGraph::IR::BoxRelationModel>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1C91EE7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, char a12)
{
  std::__split_buffer<AudioDSPGraph::IR::BoxModel>::~__split_buffer(&a12);

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<AudioDSPGraph::IR::BoxModel>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 120;
    std::allocator_traits<std::allocator<AudioDSPGraph::IR::BoxModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::BoxModel,void,0>(v3 - 120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1C91EEBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  std::__split_buffer<AudioDSPGraph::IR::BoxRelationModel>::~__split_buffer(&a10);

  _Unwind_Resume(a1);
}

void sub_1C91EEEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  std::__split_buffer<AudioDSPGraph::IR::BoxRelationModel>::~__split_buffer(&a10);

  _Unwind_Resume(a1);
}

void sub_1C91EF224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, char a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  std::__split_buffer<AudioDSPGraph::IR::ParameterWireModel>::~__split_buffer(&a12);

  _Unwind_Resume(a1);
}

void sub_1C91EF4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, char a12)
{
  std::__split_buffer<AudioDSPGraph::IR::ParameterConnectionModel>::~__split_buffer(&a12);

  _Unwind_Resume(a1);
}

void sub_1C91EF730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, char a12)
{
  std::__split_buffer<AudioDSPGraph::IR::PropertyModel>::~__split_buffer(&a12);

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<AudioDSPGraph::IR::PropertyModel>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 8) == 1)
      {
        v5 = *(v2 - 32);
        if (v5)
        {
          *(v2 - 24) = v5;
          operator delete(v5);
          v4 = *(a1 + 16);
        }
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

void sub_1C91EFAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, char a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  std::__split_buffer<AudioDSPGraph::IR::ParameterWireModel>::~__split_buffer(&a12);

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<AudioDSPGraph::IR::ParameterWireModel>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,0>(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1C91EFDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, char a12)
{
  std::__split_buffer<AudioDSPGraph::IR::ParameterConnectionModel>::~__split_buffer(&a12);

  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<AudioDSPGraph::IR::ParameterConnectionModel,AudioDSPGraph::IR::ParameterConnectionModel const&,AudioDSPGraph::IR::ParameterConnectionModel*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v6;
  return a1;
}

uint64_t std::__split_buffer<AudioDSPGraph::IR::ParameterConnectionModel>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 17) < 0)
      {
        operator delete(*(v2 - 40));
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

void std::__hash_table<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::__unordered_map_hasher<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,true>,std::__unordered_map_equal<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,AudioDSPGraph::IR::Hash,true>,std::allocator<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>>>::__erase_unique<AudioDSPGraph::IR::WireConfigurationAlias>(uint64_t *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (v5)
  {
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

    v10 = *a1;
    v11 = *(*a1 + 8 * v9);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = *&v5 - 1;
        do
        {
          v14 = v12[1];
          if (v14 == v6)
          {
            if (AudioDSPGraph::IR::BoxAlias::operator==(v12 + 2, a2))
            {
              v15 = v12[1];
              if (v8 > 1)
              {
                if (v15 >= *&v5)
                {
                  v15 %= *&v5;
                }
              }

              else
              {
                v15 &= v13;
              }

              v16 = *(v10 + 8 * v15);
              do
              {
                v17 = v16;
                v16 = *v16;
              }

              while (v16 != v12);
              if (v17 == (a1 + 2))
              {
                goto LABEL_36;
              }

              v18 = v17[1];
              if (v8 > 1)
              {
                if (v18 >= *&v5)
                {
                  v18 %= *&v5;
                }
              }

              else
              {
                v18 &= v13;
              }

              if (v18 != v15)
              {
LABEL_36:
                if (!*v12)
                {
                  goto LABEL_37;
                }

                v19 = *(*v12 + 1);
                if (v8 > 1)
                {
                  if (v19 >= *&v5)
                  {
                    v19 %= *&v5;
                  }
                }

                else
                {
                  v19 &= v13;
                }

                if (v19 != v15)
                {
LABEL_37:
                  *(v10 + 8 * v15) = 0;
                }
              }

              v20 = *v12;
              if (*v12)
              {
                v21 = v20[1];
                if (v8 > 1)
                {
                  if (v21 >= *&v5)
                  {
                    v21 %= *&v5;
                  }
                }

                else
                {
                  v21 &= v13;
                }

                if (v21 != v15)
                {
                  *(*a1 + 8 * v21) = v17;
                  v20 = *v12;
                }
              }

              *v17 = v20;
              *v12 = 0;
              --a1[3];

              std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,void *>>>::operator()[abi:ne200100](1, v12);
              return;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v14 >= *&v5)
              {
                v14 %= *&v5;
              }
            }

            else
            {
              v14 &= v13;
            }

            if (v14 != v9)
            {
              return;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }
}

id CA::DSP::LazyCopy(CA::DSP *this, NSArray *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    v4 = [(CA::DSP *)v2 copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

void sub_1C91F0A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a20 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1C91F0958);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADSPGraphGetAudioStreamConfigurationForPort(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  v4 = 3;
  if (!a3)
  {
    v4 = 0;
  }

  v6 = &a1[v4 + 25];
  v5 = *v6;
  if (a2 >= ((v6[1] - *v6) >> 5))
  {
    return 0;
  }

  v8 = a1[17];
  v9 = a1[18];
  if (v8 == v9)
  {
    return 0;
  }

  v11 = (v5 + 32 * a2);
  v12 = 32 * (a3 != 0);
  while (1)
  {
    v13 = *(v8 + v12 + 23);
    if (v13 >= 0)
    {
      v14 = *(v8 + v12 + 23);
    }

    else
    {
      v14 = *(v8 + v12 + 8);
    }

    v15 = *(v11 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = v11[1];
    }

    if (v14 != v15)
    {
      goto LABEL_21;
    }

    v17 = v13 >= 0 ? (v8 + v12) : *(v8 + v12);
    v18 = *v11;
    v19 = v16 >= 0 ? v11 : *v11;
    if (memcmp(v17, v19, v14))
    {
      goto LABEL_21;
    }

    v20 = *(v8 + 112);
    if (v20 == 2)
    {
      break;
    }

    if (v20 == 1)
    {
      v23 = (v8 + 64);
      if (!a4)
      {
        return 1;
      }

LABEL_27:
      v24 = *v23;
      v25 = *(v23 + 1);
      *(a4 + 32) = v23[4];
      *a4 = v24;
      *(a4 + 16) = v25;
      *(a4 + 40) = *(v23 + 10);
      return 1;
    }

LABEL_21:
    v8 += 120;
    if (v8 == v9)
    {
      return 0;
    }
  }

  v21 = std::__hash_table<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::__unordered_map_hasher<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,true>,std::__unordered_map_equal<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,AudioDSPGraph::IR::Hash,true>,std::allocator<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>>>::find<AudioDSPGraph::IR::WireConfigurationAlias>(a1 + 20, (v8 + 64));
  if (!v21)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v23 = v21 + 5;
  if (a4)
  {
    goto LABEL_27;
  }

  return 1;
}

uint64_t CADSPGraphModelCreate(uint64_t a1)
{
  v1 = [CADSPGraphModel allocWithZone:a1];

  return [(CADSPGraphModel *)v1 init];
}

uint64_t CADSPGraphModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutableGraphModel allocWithZone:a1];

  return [(CADSPMutableGraphModel *)v1 init];
}

uint64_t CADSPGraphModelCopyPorts(void *a1, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    [a1 outputs];
    return objc_claimAutoreleasedReturnValue();
  }

  if (!a2)
  {
    [a1 inputs];
    return objc_claimAutoreleasedReturnValue();
  }

  return a3;
}

uint64_t CADSPJackModelCreate(uint64_t a1)
{
  v1 = [CADSPJackModel allocWithZone:a1];

  return [(CADSPJackModel *)v1 init];
}

uint64_t CADSPJackModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutableJackModel allocWithZone:a1];

  return [(CADSPMutableJackModel *)v1 init];
}

uint64_t std::deque<std::string>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * v5 + -4080 * (v5 / 0xAA);
    v9 = v3[(*(a1 + 40) + v5) / 0xAA] + 24 * *(a1 + 40) + 24 * v5 + -4080 * ((*(a1 + 40) + v5) / 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 85;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 170;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1C91F21DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void **a63)
{
  if (a2)
  {
    a63 = &a46;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a63);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a57);
    __cxa_begin_catch(a1);
    if (a15)
    {
      CADSPErrorCreateFromCurrentException(*MEMORY[0x1E695E480]);
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    __cxa_end_catch();
    if (a15)
    {
      v66 = v65;
      *a15 = v65;
      JUMPOUT(0x1C91F1EFCLL);
    }

    JUMPOUT(0x1C91F1EF8);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<AudioDSPGraph::IR::SubsetModel>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>((v2 + 2));
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addRecordTapPoint(uint64_t a1, const UInt8 *a2, const UInt8 *a3, uint64_t a4)
{
  CA::DSP::MutableRecorderTapPointModel::Create(&cf, *MEMORY[0x1E695E480]);
  v8 = cf;
  v15 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v14, a2);
  [v8 setAudioFilePath:v14];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v14);
  CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v15);
  v13 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v14, a3);
  [v8 setBoxName:v14];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v14);
  CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v13);
  v12 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  [v8 setPortIndex:a4];
  CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v12);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v11, *(a1 + 8));
  cf = 0;
  v10 = v8;
  [v11 addRecorderTapPoint:v8];
  CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(&v10);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v11);
  return CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&cf);
}

CFStringRef CA::DSP::CreateUTF8StringNoCopy(CFStringRef *a1, const UInt8 *a2)
{
  v3 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  result = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, v4, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  *a1 = result;
  return result;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addInjectTapPoint(uint64_t a1, const UInt8 *a2, const UInt8 *a3, uint64_t a4, int a5)
{
  v10 = [[CADSPMutableInjectorTapPointModel allocWithZone:?]];
  v17 = v10;
  v18 = 0;
  CA::DSP::ReferenceCounted<__CADSPInjectorTapPointModel *>::~ReferenceCounted(&v18);
  v16 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v18, a2);
  [(CADSPMutableInjectorTapPointModel *)v10 setAudioFilePath:v18];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v18);
  CA::DSP::ReferenceCounted<__CADSPInjectorTapPointModel *>::~ReferenceCounted(&v16);
  v15 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v18, a3);
  [(CADSPMutableInjectorTapPointModel *)v10 setBoxName:v18];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v18);
  CA::DSP::ReferenceCounted<__CADSPInjectorTapPointModel *>::~ReferenceCounted(&v15);
  v14 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  [(CADSPMutableInjectorTapPointModel *)v10 setPortIndex:a4];
  CA::DSP::ReferenceCounted<__CADSPInjectorTapPointModel *>::~ReferenceCounted(&v14);
  if (a5)
  {
    v13 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    [(CADSPMutableInjectorTapPointModel *)v10 setOptions:1];
    CA::DSP::ReferenceCounted<__CADSPInjectorTapPointModel *>::~ReferenceCounted(&v13);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v12, *(a1 + 8));
  v17 = 0;
  [v12 addInjectorTapPoint:v10];
  if (v10)
  {
    CFRelease(v10);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v12);
  return CA::DSP::ReferenceCounted<__CADSPInjectorTapPointModel *>::~ReferenceCounted(&v17);
}

const void **CA::DSP::ReferenceCounted<__CADSPInjectorTapPointModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void CA::DSP::LanguageV1InterpreterCommandHandler::addAnalyzer(uint64_t a1, int a2, uint64_t *a3, int a4)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v30[0] = a3[1];
  *(v30 + 7) = *(a3 + 15);
  v5 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = *(a1 + 8);
  v7 = v6[56];
  v8 = v6[57];
  if (v7 >= v8)
  {
    v11 = v6[55];
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v11) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0x666666666666666)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v11) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x333333333333333)
    {
      v15 = 0x666666666666666;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::allocator<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>::allocate_at_least[abi:ne200100](v15);
    }

    v16 = 40 * v12;
    *v16 = a2;
    v17 = v30[0];
    *(v16 + 8) = v4;
    *(v16 + 16) = v17;
    *(v16 + 23) = *(v30 + 7);
    *(v16 + 31) = v5;
    v30[0] = 0;
    *(v30 + 7) = 0;
    v10 = 40 * v12 + 40;
    *(v16 + 32) = a4;
    v19 = v6[55];
    v18 = v6[56];
    v26[0] = v6 + 55;
    v26[1] = &v28;
    v26[2] = &v29;
    v20 = 40 * v12 + v19 - v18;
    v28 = v20;
    v29 = v20;
    if (v19 == v18)
    {
      v27 = 1;
    }

    else
    {
      v21 = v19;
      v22 = v16 + v19 - v18;
      do
      {
        *v22 = *v21;
        v23 = *(v21 + 8);
        *(v22 + 24) = *(v21 + 24);
        *(v22 + 8) = v23;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
        *(v21 + 8) = 0;
        *(v22 + 32) = *(v21 + 32);
        v21 += 40;
        v22 += 40;
      }

      while (v21 != v18);
      v29 = v22;
      v27 = 1;
      do
      {
        if (*(v19 + 31) < 0)
        {
          operator delete(*(v19 + 8));
        }

        v19 += 40;
      }

      while (v19 != v18);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>,AudioDSPGraph::IR::GraphModel::AnalyzerConnection*>>::~__exception_guard_exceptions[abi:ne200100](v26);
    v24 = v6[55];
    v6[55] = v20;
    *(v6 + 28) = 40 * v12 + 40;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v7 = a2;
    v9 = v30[0];
    *(v7 + 8) = v4;
    *(v7 + 16) = v9;
    *(v7 + 23) = *(v30 + 7);
    *(v7 + 31) = v5;
    *(v7 + 32) = a4;
    v10 = v7 + 40;
  }

  v6[56] = v10;
  v25 = *MEMORY[0x1E69E9840];
}

void sub_1C91F2A00(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void CA::DSP::LanguageV1InterpreterCommandHandler::registerAnalyzer(uint64_t a1, int a2, uint64_t *a3, __int128 *a4)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v35[0] = a3[1];
  *(v35 + 7) = *(a3 + 15);
  v5 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v29 = *a4;
  v30 = *(a4 + 4);
  v6 = *(a1 + 8);
  v7 = v6 + 53;
  v8 = v6[53];
  v9 = v6[54];
  if (v8 >= v9)
  {
    v12 = v6[52];
    v13 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v12) >> 3);
    v14 = v13 + 1;
    if ((v13 + 1) > 0x492492492492492)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x249249249249249)
    {
      v16 = 0x492492492492492;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::allocator<AudioDSPGraph::IR::GraphModel::Analyzer>::allocate_at_least[abi:ne200100](v16);
    }

    v17 = v6 + 52;
    v18 = 56 * v13;
    *v18 = a2;
    v19 = v35[0];
    *(v18 + 8) = v4;
    *(v18 + 16) = v19;
    *(v18 + 23) = *(v35 + 7);
    *(v18 + 31) = v5;
    v35[0] = 0;
    *(v35 + 7) = 0;
    *(v18 + 32) = v29;
    v11 = 56 * v13 + 56;
    *(v18 + 48) = v30;
    v20 = *v7;
    v21 = *v17;
    v31[0] = v17;
    v31[1] = &v33;
    v31[2] = &v34;
    v22 = 56 * v13 + v21 - v20;
    v33 = v18 + v21 - v20;
    v34 = v33;
    if (v21 == v20)
    {
      v32 = 1;
    }

    else
    {
      v23 = v21;
      v24 = v22;
      do
      {
        *v24 = *v23;
        v25 = *(v23 + 1);
        *(v24 + 24) = v23[3];
        *(v24 + 8) = v25;
        v23[2] = 0;
        v23[3] = 0;
        v23[1] = 0;
        v26 = *(v23 + 2);
        *(v24 + 48) = *(v23 + 12);
        *(v24 + 32) = v26;
        v23 += 7;
        v24 += 56;
      }

      while (v23 != v20);
      v34 = v24;
      v32 = 1;
      do
      {
        if (*(v21 + 31) < 0)
        {
          operator delete(v21[1]);
        }

        v21 += 7;
      }

      while (v21 != v20);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::GraphModel::Analyzer>,AudioDSPGraph::IR::GraphModel::Analyzer*>>::~__exception_guard_exceptions[abi:ne200100](v31);
    v27 = *v17;
    *v17 = v22;
    *v7 = v11;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v8 = a2;
    v10 = v35[0];
    *(v8 + 8) = v4;
    *(v8 + 16) = v10;
    *(v8 + 23) = *(v35 + 7);
    *(v8 + 31) = v5;
    *(v8 + 32) = v29;
    v11 = v8 + 56;
    *(v8 + 48) = v30;
  }

  *v7 = v11;
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1C91F2C88(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addOrderingConstraint(uint64_t a1, const UInt8 *a2, const UInt8 *a3)
{
  v6 = [[CADSPMutableBoxRelationModel allocWithZone:?]];
  v12 = v6;
  v13 = 0;
  CA::DSP::ReferenceCounted<__CADSPBoxRelationModel *>::~ReferenceCounted(&v13);
  v11 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  [(CADSPMutableBoxRelationModel *)v6 setType:1];
  CA::DSP::ReferenceCounted<__CADSPBoxRelationModel *>::~ReferenceCounted(&v11);
  v10 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v13, a2);
  [(CADSPMutableBoxRelationModel *)v6 setBoxName:v13 ofEndpoint:0];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v13);
  CA::DSP::ReferenceCounted<__CADSPBoxRelationModel *>::~ReferenceCounted(&v10);
  v9 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v13, a3);
  [(CADSPMutableBoxRelationModel *)v6 setBoxName:v13 ofEndpoint:1];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v13);
  CA::DSP::ReferenceCounted<__CADSPBoxRelationModel *>::~ReferenceCounted(&v9);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v8, *(a1 + 8));
  v12 = 0;
  [v8 addBoxRelation:v6];
  if (v6)
  {
    CFRelease(v6);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v8);
  return CA::DSP::ReferenceCounted<__CADSPBoxRelationModel *>::~ReferenceCounted(&v12);
}

const void **CA::DSP::ReferenceCounted<__CADSPBoxRelationModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addPropertyWire(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [[CADSPMutablePropertyWireModel allocWithZone:?]];
  v16 = v8;
  v17 = 0;
  CA::DSP::ReferenceCounted<__CADSPPropertyWireModel *>::~ReferenceCounted(&v17);
  v15 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v17, a2);
  [(CADSPMutablePropertyWireModel *)v8 setBoxName:v17 ofEndpoint:0];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v17);
  CA::DSP::ReferenceCounted<__CADSPPropertyWireModel *>::~ReferenceCounted(&v15);
  v14 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  [(CADSPMutablePropertyWireModel *)v8 setBoxPropertyAddress:*(a2 + 24) ofEndpoint:*(a2 + 32), 0];
  CA::DSP::ReferenceCounted<__CADSPPropertyWireModel *>::~ReferenceCounted(&v14);
  v13 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v17, a3);
  [(CADSPMutablePropertyWireModel *)v8 setBoxName:v17 ofEndpoint:1];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v17);
  CA::DSP::ReferenceCounted<__CADSPPropertyWireModel *>::~ReferenceCounted(&v13);
  v12 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  [(CADSPMutablePropertyWireModel *)v8 setBoxPropertyAddress:*(a3 + 24) ofEndpoint:*(a3 + 32), 1];
  CA::DSP::ReferenceCounted<__CADSPPropertyWireModel *>::~ReferenceCounted(&v12);
  v11 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  [(CADSPMutablePropertyWireModel *)v8 setOptions:a4];
  CA::DSP::ReferenceCounted<__CADSPPropertyWireModel *>::~ReferenceCounted(&v11);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v10, *(a1 + 8));
  v16 = 0;
  [v10 addPropertyWire:v8];
  if (v8)
  {
    CFRelease(v8);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v10);
  return CA::DSP::ReferenceCounted<__CADSPPropertyWireModel *>::~ReferenceCounted(&v16);
}

const void **CA::DSP::ReferenceCounted<__CADSPPropertyWireModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addPropertyWire(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [[CADSPMutablePropertyConnectionModel allocWithZone:?]];
  v12 = v6;
  v13 = 0;
  CA::DSP::ReferenceCounted<__CADSPPropertyConnectionModel *>::~ReferenceCounted(&v13);
  v11 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  [(CADSPMutablePropertyConnectionModel *)v6 setGraphPropertyID:a2];
  CA::DSP::ReferenceCounted<__CADSPPropertyConnectionModel *>::~ReferenceCounted(&v11);
  v10 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v13, a3);
  [(CADSPMutablePropertyConnectionModel *)v6 setBoxName:v13];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v13);
  CA::DSP::ReferenceCounted<__CADSPPropertyConnectionModel *>::~ReferenceCounted(&v10);
  v9 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  [(CADSPMutablePropertyConnectionModel *)v6 setBoxPropertyAddress:*(a3 + 24), *(a3 + 32)];
  CA::DSP::ReferenceCounted<__CADSPPropertyConnectionModel *>::~ReferenceCounted(&v9);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v8, *(a1 + 8));
  v12 = 0;
  [v8 addPropertyConnection:v6];
  if (v6)
  {
    CFRelease(v6);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v8);
  return CA::DSP::ReferenceCounted<__CADSPPropertyConnectionModel *>::~ReferenceCounted(&v12);
}

const void **CA::DSP::ReferenceCounted<__CADSPPropertyConnectionModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addProperty(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = [[CADSPMutablePropertyModel allocWithZone:?]];
  v17 = v8;
  v18 = 0;
  CA::DSP::ReferenceCounted<__CADSPPropertyModel *>::~ReferenceCounted(&v18);
  v16 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  [(CADSPMutablePropertyModel *)v8 setID:a2];
  CA::DSP::ReferenceCounted<__CADSPPropertyModel *>::~ReferenceCounted(&v16);
  if (a4)
  {
    v15 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    [(CADSPMutablePropertyModel *)v8 setDirection:1];
    v9 = &v15;
  }

  else
  {
    if (*(a3 + 24) == 1)
    {
      v14 = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      [(CADSPMutablePropertyModel *)v8 setDefaultValueBytes:*a3 size:*(a3 + 8) - *a3];
      CA::DSP::ReferenceCounted<__CADSPPropertyModel *>::~ReferenceCounted(&v14);
    }

    v13 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    [(CADSPMutablePropertyModel *)v8 setDirection:0];
    v9 = &v13;
  }

  CA::DSP::ReferenceCounted<__CADSPPropertyModel *>::~ReferenceCounted(v9);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v12, *(a1 + 8));
  v17 = 0;
  [v12 addProperty:{v8, v8}];
  CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(&v11);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v12);
  return CA::DSP::ReferenceCounted<__CADSPPropertyModel *>::~ReferenceCounted(&v17);
}

const void **CA::DSP::ReferenceCounted<__CADSPPropertyModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addParameterWire(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [[CADSPMutableParameterWireModel allocWithZone:?]];
  v16 = v8;
  v17 = 0;
  CA::DSP::ReferenceCounted<__CADSPParameterWireModel *>::~ReferenceCounted(&v17);
  v15 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v17, a2);
  [(CADSPMutableParameterWireModel *)v8 setBoxName:v17 ofEndpoint:0];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v17);
  CA::DSP::ReferenceCounted<__CADSPParameterWireModel *>::~ReferenceCounted(&v15);
  v14 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  [(CADSPMutableParameterWireModel *)v8 setBoxParameterAddress:*(a2 + 24) ofEndpoint:*(a2 + 32), 0];
  CA::DSP::ReferenceCounted<__CADSPParameterWireModel *>::~ReferenceCounted(&v14);
  v13 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v17, a3);
  [(CADSPMutableParameterWireModel *)v8 setBoxName:v17 ofEndpoint:1];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v17);
  CA::DSP::ReferenceCounted<__CADSPParameterWireModel *>::~ReferenceCounted(&v13);
  v12 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  [(CADSPMutableParameterWireModel *)v8 setBoxParameterAddress:*(a3 + 24) ofEndpoint:*(a3 + 32), 1];
  CA::DSP::ReferenceCounted<__CADSPParameterWireModel *>::~ReferenceCounted(&v12);
  v11 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  [(CADSPMutableParameterWireModel *)v8 setOptions:a4];
  CA::DSP::ReferenceCounted<__CADSPParameterWireModel *>::~ReferenceCounted(&v11);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v10, *(a1 + 8));
  v16 = 0;
  [v10 addParameterWire:v8];
  if (v8)
  {
    CFRelease(v8);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v10);
  return CA::DSP::ReferenceCounted<__CADSPParameterWireModel *>::~ReferenceCounted(&v16);
}

const void **CA::DSP::ReferenceCounted<__CADSPParameterWireModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addParameterWire(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [[CADSPMutableParameterConnectionModel allocWithZone:?]];
  v12 = v6;
  v13 = 0;
  CA::DSP::ReferenceCounted<__CADSPParameterConnectionModel *>::~ReferenceCounted(&v13);
  v11 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  [(CADSPMutableParameterConnectionModel *)v6 setGraphParameterID:a2];
  CA::DSP::ReferenceCounted<__CADSPParameterConnectionModel *>::~ReferenceCounted(&v11);
  v10 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v13, a3);
  [(CADSPMutableParameterConnectionModel *)v6 setBoxName:v13];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v13);
  CA::DSP::ReferenceCounted<__CADSPParameterConnectionModel *>::~ReferenceCounted(&v10);
  v9 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  [(CADSPMutableParameterConnectionModel *)v6 setBoxParameterAddress:*(a3 + 24), *(a3 + 32)];
  CA::DSP::ReferenceCounted<__CADSPParameterConnectionModel *>::~ReferenceCounted(&v9);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v8, *(a1 + 8));
  v12 = 0;
  [v8 addParameterConnection:v6];
  if (v6)
  {
    CFRelease(v6);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v8);
  return CA::DSP::ReferenceCounted<__CADSPParameterConnectionModel *>::~ReferenceCounted(&v12);
}

const void **CA::DSP::ReferenceCounted<__CADSPParameterConnectionModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addParameter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = [[CADSPMutableParameterModel allocWithZone:?]];
  v18 = v8;
  v19 = 0;
  CA::DSP::ReferenceCounted<__CADSPParameterModel *>::~ReferenceCounted(&v19);
  v17 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  [(CADSPMutableParameterModel *)v8 setID:a2];
  CA::DSP::ReferenceCounted<__CADSPParameterModel *>::~ReferenceCounted(&v17);
  if (a4)
  {
    v16 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    [(CADSPMutableParameterModel *)v8 setDirection:1];
    v10 = &v16;
  }

  else
  {
    if ((a3 & 0x100000000) != 0)
    {
      v15 = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      LODWORD(v9) = a3;
      [(CADSPMutableParameterModel *)v8 setDefaultValue:v9];
      CA::DSP::ReferenceCounted<__CADSPParameterModel *>::~ReferenceCounted(&v15);
    }

    v14 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    [(CADSPMutableParameterModel *)v8 setDirection:0];
    v10 = &v14;
  }

  CA::DSP::ReferenceCounted<__CADSPParameterModel *>::~ReferenceCounted(v10);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v13, *(a1 + 8));
  v18 = 0;
  [v13 addParameter:{v8, v8}];
  CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(&v12);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v13);
  return CA::DSP::ReferenceCounted<__CADSPParameterModel *>::~ReferenceCounted(&v18);
}

const void **CA::DSP::ReferenceCounted<__CADSPParameterModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addOutput(uint64_t a1, const UInt8 *a2)
{
  CA::DSP::MutablePortModel::Create(&cf, *MEMORY[0x1E695E480]);
  v4 = cf;
  v10 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v9, a2);
  [v4 setName:v9];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v9);
  CA::DSP::ReferenceCounted<__CADSPPortModel *>::~ReferenceCounted(&v10);
  v8 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  [v4 setDirection:1];
  CA::DSP::ReferenceCounted<__CADSPPortModel *>::~ReferenceCounted(&v8);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v7, *(a1 + 8));
  cf = 0;
  [v7 addPort:{v4, v4}];
  CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v6);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v7);
  return CA::DSP::ReferenceCounted<__CADSPPortModel *>::~ReferenceCounted(&cf);
}

const void **CA::DSP::MutablePortModel::Create(CA::DSP::MutablePortModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = [[CADSPMutablePortModel allocWithZone:?]];
  return CA::DSP::ReferenceCounted<__CADSPPortModel *>::~ReferenceCounted(&v3);
}

const void **CA::DSP::ReferenceCounted<__CADSPPortModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addInput(uint64_t a1, const UInt8 *a2)
{
  CA::DSP::MutablePortModel::Create(&cf, *MEMORY[0x1E695E480]);
  v4 = cf;
  v10 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v9, a2);
  [v4 setName:v9];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v9);
  CA::DSP::ReferenceCounted<__CADSPPortModel *>::~ReferenceCounted(&v10);
  v8 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  [v4 setDirection:0];
  CA::DSP::ReferenceCounted<__CADSPPortModel *>::~ReferenceCounted(&v8);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v7, *(a1 + 8));
  cf = 0;
  [v7 addPort:{v4, v4}];
  CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v6);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v7);
  return CA::DSP::ReferenceCounted<__CADSPPortModel *>::~ReferenceCounted(&cf);
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addSubset(uint64_t a1, const UInt8 *a2)
{
  CA::DSP::CreateUTF8StringNoCopy(&v21, a2);
  CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(&v19, *(a1 + 8));
  v3 = [v19 subsets];
  v22 = 0;
  v20 = v3;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v22);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v19);
  Count = CFArrayGetCount(v3);
  if (Count)
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v5);
      v7 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      v22 = 0;
      cf = v7;
      CA::DSP::ReferenceCounted<__CADSPSubsetModel const*>::~ReferenceCounted(&v22);
      v8 = cf;
      v16 = cf;
      if (cf)
      {
        CFRetain(cf);
        v8 = v16;
      }

      v9 = [v8 name];
      v22 = 0;
      v17 = v9;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v22);
      v10 = (v17 != 0) ^ (v21 != 0);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v17);
      CA::DSP::ReferenceCounted<__CADSPSubsetModel const*>::~ReferenceCounted(&v16);
      CA::DSP::ReferenceCounted<__CADSPSubsetModel const*>::~ReferenceCounted(&cf);
      if ((v10 & 1) == 0)
      {
        break;
      }

      if (Count == ++v5)
      {
        goto LABEL_9;
      }
    }

    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v20);
  }

  else
  {
LABEL_9:
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v20);
    v11 = [[CADSPMutableSubsetModel allocWithZone:?]];
    v22 = 0;
    v20 = v11;
    CA::DSP::ReferenceCounted<__CADSPSubsetModel *>::~ReferenceCounted(&v22);
    v15 = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    [(CADSPMutableSubsetModel *)v11 setName:v21];
    CA::DSP::ReferenceCounted<__CADSPSubsetModel *>::~ReferenceCounted(&v15);
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v14, *(a1 + 8));
    v20 = 0;
    [v14 addSubset:{v11, v11}];
    CA::DSP::ReferenceCounted<__CADSPSubsetModel const*>::~ReferenceCounted(&v13);
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v14);
    CA::DSP::ReferenceCounted<__CADSPSubsetModel *>::~ReferenceCounted(&v20);
  }

  return CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v21);
}

const void **CA::DSP::ReferenceCounted<__CADSPSubsetModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPSubsetModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addJack(uint64_t a1, const UInt8 *a2)
{
  v4 = [[CADSPMutableJackModel allocWithZone:?]];
  v8 = v4;
  v9 = 0;
  CA::DSP::ReferenceCounted<__CADSPJackModel *>::~ReferenceCounted(&v9);
  v7 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v9, a2);
  [(CADSPMutableJackModel *)v4 setName:v9];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v9);
  CA::DSP::ReferenceCounted<__CADSPJackModel *>::~ReferenceCounted(&v7);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v6, *(a1 + 8));
  v8 = 0;
  [v6 addJack:v4];
  if (v4)
  {
    CFRelease(v4);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v6);
  return CA::DSP::ReferenceCounted<__CADSPJackModel *>::~ReferenceCounted(&v8);
}