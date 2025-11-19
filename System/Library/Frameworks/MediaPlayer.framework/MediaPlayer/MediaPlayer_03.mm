void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
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

  v5 = *(*result + 8 * v4);
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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

BOOL std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, void *a2)
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

void sub_1A256290C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, void *a22, uint64_t a23, std::__shared_weak_count *a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  *(v38 - 112) = &a25;
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100]((v38 - 112));
  v41 = *(v38 - 176);
  if (v41)
  {
    operator delete(v41);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v42 = *(v38 - 200);
  if (v42)
  {
    *(v38 - 192) = v42;
    operator delete(v42);
  }

  if (a2 == 2)
  {
    v43 = __cxa_begin_catch(a1);
    v44 = MEMORY[0x1E695DF30];
    v45 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions((v38 - 176));
    (*(*v43 + 24))(v43, v38 - 176);
    if (*(v38 - 177) >= 0)
    {
      v46 = v38 - 200;
    }

    else
    {
      v46 = *(v38 - 200);
    }

    v47 = [v45 stringWithUTF8String:v46];
    v48 = [v44 exceptionWithName:@"MediaPlatform" reason:v47 userInfo:0];
    v49 = v48;

    if (*(v38 - 177) < 0)
    {
      operator delete(*(v38 - 200));
    }

    objc_exception_throw(v48);
  }

  if (a2 == 1)
  {
    v50 = __cxa_begin_catch(a1);
    v51 = MEMORY[0x1E695DF30];
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v50 + 16))(v50)];
    v53 = [v51 exceptionWithName:*MEMORY[0x1E695D920] reason:v52 userInfo:0];
    v54 = v53;

    objc_exception_throw(v53);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<long long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(a1, i[2]);
  }

  return a1;
}

void sub_1A25630E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, void *a27, void *a28, uint64_t a29, std::__shared_weak_count *a30, char a31)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  *(v31 - 96) = &a31;
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100]((v31 - 96));
  v34 = *(v31 - 160);
  if (v34)
  {
    operator delete(v34);
  }

  v35 = *(v31 - 112);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  if (a2 == 2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = MEMORY[0x1E695DF30];
    v38 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&__p);
    (*(*v36 + 24))(v36, &__p);
    if (*(v31 - 137) >= 0)
    {
      v39 = v31 - 160;
    }

    else
    {
      v39 = *(v31 - 160);
    }

    v40 = [v38 stringWithUTF8String:v39];
    v41 = [v37 exceptionWithName:@"MediaPlatform" reason:v40 userInfo:0];
    v42 = v41;

    if (*(v31 - 137) < 0)
    {
      operator delete(*(v31 - 160));
    }

    objc_exception_throw(v41);
  }

  if (a2 == 1)
  {
    v43 = __cxa_begin_catch(a1);
    v44 = MEMORY[0x1E695DF30];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v43 + 16))(v43)];
    v46 = [v44 exceptionWithName:*MEMORY[0x1E695D920] reason:v45 userInfo:0];
    v47 = v46;

    objc_exception_throw(v46);
  }

  _Unwind_Resume(a1);
}

void sub_1A25637D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, void *a27, void *a28, uint64_t a29, std::__shared_weak_count *a30, char a31)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  *(v31 - 96) = &a31;
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100]((v31 - 96));
  v34 = *(v31 - 160);
  if (v34)
  {
    operator delete(v34);
  }

  v35 = *(v31 - 112);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  if (a2 == 2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = MEMORY[0x1E695DF30];
    v38 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&__p);
    (*(*v36 + 24))(v36, &__p);
    if (*(v31 - 137) >= 0)
    {
      v39 = v31 - 160;
    }

    else
    {
      v39 = *(v31 - 160);
    }

    v40 = [v38 stringWithUTF8String:v39];
    v41 = [v37 exceptionWithName:@"MediaPlatform" reason:v40 userInfo:0];
    v42 = v41;

    if (*(v31 - 137) < 0)
    {
      operator delete(*(v31 - 160));
    }

    objc_exception_throw(v41);
  }

  if (a2 == 1)
  {
    v43 = __cxa_begin_catch(a1);
    v44 = MEMORY[0x1E695DF30];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v43 + 16))(v43)];
    v46 = [v44 exceptionWithName:*MEMORY[0x1E695D920] reason:v45 userInfo:0];
    v47 = v46;

    objc_exception_throw(v46);
  }

  _Unwind_Resume(a1);
}

void sub_1A2563EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, void *a27, void *a28, uint64_t a29, std::__shared_weak_count *a30, char a31)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  *(v31 - 96) = &a31;
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100]((v31 - 96));
  v34 = *(v31 - 160);
  if (v34)
  {
    operator delete(v34);
  }

  v35 = *(v31 - 112);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  if (a2 == 2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = MEMORY[0x1E695DF30];
    v38 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&__p);
    (*(*v36 + 24))(v36, &__p);
    if (*(v31 - 137) >= 0)
    {
      v39 = v31 - 160;
    }

    else
    {
      v39 = *(v31 - 160);
    }

    v40 = [v38 stringWithUTF8String:v39];
    v41 = [v37 exceptionWithName:@"MediaPlatform" reason:v40 userInfo:0];
    v42 = v41;

    if (*(v31 - 137) < 0)
    {
      operator delete(*(v31 - 160));
    }

    objc_exception_throw(v41);
  }

  if (a2 == 1)
  {
    v43 = __cxa_begin_catch(a1);
    v44 = MEMORY[0x1E695DF30];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v43 + 16))(v43)];
    v46 = [v44 exceptionWithName:*MEMORY[0x1E695D920] reason:v45 userInfo:0];
    v47 = v46;

    objc_exception_throw(v46);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a3);
  }

  return result;
}

void sub_1A2564318(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1A25643C0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1A2564488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::vector<mlcore::ModelPropertyBase *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1A25647A4(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
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

  v5 = *(*result + 8 * v4);
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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1A2564E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, void *a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  *(v33 - 96) = &a29;
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100]((v33 - 96));
  v36 = *(v33 - 160);
  if (v36)
  {
    operator delete(v36);
  }

  v37 = *(v33 - 112);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  *(v33 - 160) = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v33 - 160));
  if (a2 == 2)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = MEMORY[0x1E695DF30];
    v40 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a10);
    (*(*v38 + 24))(v38, &a10);
    if (*(v33 - 137) >= 0)
    {
      v41 = v33 - 160;
    }

    else
    {
      v41 = *(v33 - 160);
    }

    v42 = [v40 stringWithUTF8String:v41];
    v43 = [v39 exceptionWithName:@"MediaPlatform" reason:v42 userInfo:0];
    v44 = v43;

    if (*(v33 - 137) < 0)
    {
      operator delete(*(v33 - 160));
    }

    objc_exception_throw(v43);
  }

  if (a2 == 1)
  {
    v45 = __cxa_begin_catch(a1);
    v46 = MEMORY[0x1E695DF30];
    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v45 + 16))(v45)];
    v48 = [v46 exceptionWithName:*MEMORY[0x1E695D920] reason:v47 userInfo:0];
    v49 = v48;

    objc_exception_throw(v48);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100]((i + 2));
    v6 = v5;
    v7 = *(a1 + 8);
    if (!*&v7)
    {
      goto LABEL_18;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *&v7)
      {
        v10 = v5 % *&v7;
      }
    }

    else
    {
      v10 = (*&v7 - 1) & v5;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v6)
      {
        break;
      }

      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, i + 2))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void sub_1A2565B1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<unsigned long long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1, i[2]);
  }

  return a1;
}

void sub_1A2565D18(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_1A2566300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, id a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (v39)
  {
    operator delete(v39);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  v43 = *(v40 - 216);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v44 = *(v40 - 208);
  if (v44)
  {
    *(v40 - 200) = v44;
    operator delete(v44);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a2 == 2)
  {
    v45 = __cxa_begin_catch(a1);
    v46 = MEMORY[0x1E695DF30];
    v47 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions((v40 - 176));
    (*(*v45 + 24))(v45, v40 - 176);
    if (*(v40 - 185) >= 0)
    {
      v48 = v40 - 208;
    }

    else
    {
      v48 = *(v40 - 208);
    }

    v49 = [v47 stringWithUTF8String:v48];
    v50 = [v46 exceptionWithName:@"MediaPlatform" reason:v49 userInfo:0];
    v51 = v50;

    if (*(v40 - 185) < 0)
    {
      operator delete(*(v40 - 208));
    }

    objc_exception_throw(v50);
  }

  if (a2 == 1)
  {
    v52 = __cxa_begin_catch(a1);
    v53 = MEMORY[0x1E695DF30];
    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v52 + 16))(v52)];
    v55 = [v53 exceptionWithName:*MEMORY[0x1E695D920] reason:v54 userInfo:0];
    v56 = v55;

    objc_exception_throw(v55);
  }

  _Unwind_Resume(a1);
}

void sub_1A2566C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, id a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (v39)
  {
    operator delete(v39);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  v43 = *(v40 - 216);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v44 = *(v40 - 208);
  if (v44)
  {
    *(v40 - 200) = v44;
    operator delete(v44);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a2 == 2)
  {
    v45 = __cxa_begin_catch(a1);
    v46 = MEMORY[0x1E695DF30];
    v47 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions((v40 - 176));
    (*(*v45 + 24))(v45, v40 - 176);
    if (*(v40 - 185) >= 0)
    {
      v48 = v40 - 208;
    }

    else
    {
      v48 = *(v40 - 208);
    }

    v49 = [v47 stringWithUTF8String:v48];
    v50 = [v46 exceptionWithName:@"MediaPlatform" reason:v49 userInfo:0];
    v51 = v50;

    if (*(v40 - 185) < 0)
    {
      operator delete(*(v40 - 208));
    }

    objc_exception_throw(v50);
  }

  if (a2 == 1)
  {
    v52 = __cxa_begin_catch(a1);
    v53 = MEMORY[0x1E695DF30];
    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v52 + 16))(v52)];
    v55 = [v53 exceptionWithName:*MEMORY[0x1E695D920] reason:v54 userInfo:0];
    v56 = v55;

    objc_exception_throw(v55);
  }

  _Unwind_Resume(a1);
}

void sub_1A25673E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  *(v33 - 120) = v33 - 96;
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100]((v33 - 120));
  if (a9)
  {
    operator delete(a9);
  }

  v36 = *(v33 - 136);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (a2 == 2)
  {
    v37 = __cxa_begin_catch(a1);
    v38 = MEMORY[0x1E695DF30];
    v39 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v37 + 24))(v37, &a9);
    if (*(v33 - 73) >= 0)
    {
      v40 = v33 - 96;
    }

    else
    {
      v40 = *(v33 - 96);
    }

    v41 = [v39 stringWithUTF8String:v40];
    v42 = [v38 exceptionWithName:@"MediaPlatform" reason:v41 userInfo:0];
    v43 = v42;

    if (*(v33 - 73) < 0)
    {
      operator delete(*(v33 - 96));
    }

    objc_exception_throw(v42);
  }

  if (a2 == 1)
  {
    v44 = __cxa_begin_catch(a1);
    v45 = MEMORY[0x1E695DF30];
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v44 + 16))(v44)];
    v47 = [v45 exceptionWithName:*MEMORY[0x1E695D920] reason:v46 userInfo:0];
    v48 = v47;

    objc_exception_throw(v47);
  }

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

void sub_1A256794C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_1A2567CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, void **a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  *(v37 - 96) = &a32;
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100]((v37 - 96));
  if (a9)
  {
    operator delete(a9);
  }

  v40 = *(v37 - 112);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a2 == 2)
  {
    v41 = __cxa_begin_catch(a1);
    v42 = MEMORY[0x1E695DF30];
    v43 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v41 + 24))(&a32, v41, &a9);
    if (a37 >= 0)
    {
      v44 = &a32;
    }

    else
    {
      v44 = a32;
    }

    v45 = [v43 stringWithUTF8String:v44];
    v46 = [v42 exceptionWithName:@"MediaPlatform" reason:v45 userInfo:0];
    v47 = v46;

    if (a37 < 0)
    {
      operator delete(a32);
    }

    objc_exception_throw(v46);
  }

  if (a2 == 1)
  {
    v48 = __cxa_begin_catch(a1);
    v49 = MEMORY[0x1E695DF30];
    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v48 + 16))(v48)];
    v51 = [v49 exceptionWithName:*MEMORY[0x1E695D920] reason:v50 userInfo:0];
    v52 = v51;

    objc_exception_throw(v51);
  }

  _Unwind_Resume(a1);
}

void sub_1A25680EC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__29750(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A25684C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, void *a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  v32 = *(v29 - 128);
  if (v32)
  {
    operator delete(v32);
  }

  v33 = *(v29 - 72);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  if (a2 == 2)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = MEMORY[0x1E695DF30];
    v36 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&__p);
    (*(*v34 + 24))(v34, &__p);
    if (*(v29 - 105) >= 0)
    {
      v37 = v29 - 128;
    }

    else
    {
      v37 = *(v29 - 128);
    }

    v38 = [v36 stringWithUTF8String:v37];
    v39 = [v35 exceptionWithName:@"MediaPlatform" reason:v38 userInfo:0];
    v40 = v39;

    if (*(v29 - 105) < 0)
    {
      operator delete(*(v29 - 128));
    }

    objc_exception_throw(v39);
  }

  if (a2 == 1)
  {
    v41 = __cxa_begin_catch(a1);
    v42 = MEMORY[0x1E695DF30];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v41 + 16))(v41)];
    v44 = [v42 exceptionWithName:*MEMORY[0x1E695D920] reason:v43 userInfo:0];
    v45 = v44;

    objc_exception_throw(v44);
  }

  _Unwind_Resume(a1);
}

void sub_1A25688F0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb25_E4__15NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb25_E4$_15"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb25_E4__15NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  v36 = a3;
  v60 = *MEMORY[0x1E69E9840];
  v4 = mlcore::ArtistPropertyCloudUniversalLibraryID(a1);
  v44 = MPMediaLibraryPropertyCacheValueForProperty(v4, a2);
  if (![v44 length])
  {
    goto LABEL_44;
  }

  if (![**(a1 + 8) count])
  {
    if (![**(a1 + 40) count])
    {
      goto LABEL_44;
    }

    v18 = [**(a1 + 40) copy];
    v53 = 0u;
    v54 = 0u;
    *v51 = 0u;
    v52 = 0u;
    obj = v18;
    v19 = [obj countByEnumeratingWithState:v51 objects:v59 count:16];
    if (!v19)
    {
      goto LABEL_43;
    }

    v39 = *v52;
LABEL_20:
    v20 = 0;
    v38 = v19;
    while (1)
    {
      if (*v52 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(v51[1] + v20);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v22 = [v21 allKeys];
      v23 = [v22 countByEnumeratingWithState:&v47 objects:&v55 count:16];
      v40 = v21;
      v41 = v20;
      if (v23)
      {
        v24 = *v48;
        v25 = 1;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v48 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v47 + 1) + 8 * i);
            v28 = [v27 personalizedStore];
            v29 = [v28 cloudArtistID];
            v30 = [v29 isEqualToString:v44];

            if (v30)
            {
              v32 = mlcore::ArtistPropertyPersistentID(v31);
              v33 = MPMediaLibraryPropertyCacheValueForProperty(v32, a2);
              [v33 longLongValue];

              v34 = MEMORY[0x1A58E11E0]();
              (*(*v34 + 48))(&v45);
              if (v45)
              {
                v35 = [**(a1 + 16) identifiersForPropertyCache:mlcore::Entity::propertyCache(v45) context:**(a1 + 24)];
                [**(a1 + 32) setLibraryIdentifierSet:v35 forIdentifierSet:v27];
              }

              if (v46)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              }
            }

            else
            {
              v25 = 0;
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v47 objects:&v55 count:16];
        }

        while (v23);

        if ((v25 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
      }

      [**(a1 + 40) removeObjectIdenticalTo:v40];
LABEL_40:
      if (![**(a1 + 40) count])
      {
        goto LABEL_43;
      }

      v20 = v41 + 1;
      if (v41 + 1 == v38)
      {
        v19 = [obj countByEnumeratingWithState:v51 objects:v59 count:16];
        if (!v19)
        {
          goto LABEL_43;
        }

        goto LABEL_20;
      }
    }
  }

  v5 = [**(a1 + 8) copy];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v6)
  {
    v7 = *v56;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v56 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v55 + 1) + 8 * v8);
      v10 = [v9 personalizedStore];
      v11 = [v10 cloudArtistID];
      v12 = [v11 isEqualToString:v44];

      if (v12)
      {
        v14 = mlcore::ArtistPropertyPersistentID(v13);
        v15 = MPMediaLibraryPropertyCacheValueForProperty(v14, a2);
        [v15 longLongValue];

        v16 = MEMORY[0x1A58E11E0]();
        (*(*v16 + 48))(v51);
        if (v51[0])
        {
          v17 = [**(a1 + 16) identifiersForPropertyCache:mlcore::Entity::propertyCache(v51[0]) context:**(a1 + 24)];
          [**(a1 + 32) setLibraryIdentifierSet:v17 forIdentifierSet:v9];
          [**(a1 + 8) removeObjectIdenticalTo:v9];
        }

        if (v51[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51[1]);
        }
      }

      if (![**(a1 + 8) count])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v6)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

LABEL_43:

LABEL_44:
  if (![**(a1 + 8) count] && !objc_msgSend(**(a1 + 40), "count") || objc_msgSend(**(a1 + 48), "isCancelled"))
  {
    *v37 = 1;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb25_E4__15NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F14973B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t __destroy_helper_block_ea8_88c75_ZTSNSt3__113unordered_setIxNS_4hashIxEENS_8equal_toIxEENS_9allocatorIxEEEE128c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  return std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(a1 + 88);
}

uint64_t __copy_helper_block_ea8_88c75_ZTSNSt3__113unordered_setIxNS_4hashIxEENS_8equal_toIxEENS_9allocatorIxEEEE128c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(void *a1, uint64_t a2)
{
  std::unordered_set<long long>::unordered_set((a1 + 11), a2 + 88);
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  return std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>((a1 + 16), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<long long,void *> *>,std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a3);
  }

  return result;
}

void sub_1A2569158(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A25691F0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1A2569380(_Unwind_Exception *a1)
{
  v4 = v3;

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb23_EUb24_E4__14NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb23_EUb24_E4$_14"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb23_EUb24_E4__14NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, _BYTE *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = mlcore::ArtistPropertyStoreID(a1);
  v58 = a2;
  v5 = MPMediaLibraryPropertyCacheValueForProperty(v4, a2);
  v59 = [v5 longLongValue];

  v7 = mlcore::ArtistPropertyGroupingKey(v6);
  v56 = MPMediaLibraryPropertyCacheValueForProperty(v7, v58);
  if (!v59)
  {
    goto LABEL_57;
  }

  if (![**(a1 + 8) count])
  {
    if (![**(a1 + 40) count])
    {
      goto LABEL_57;
    }

    v23 = [**(a1 + 40) copy];
    v66 = 0u;
    v67 = 0u;
    *v64 = 0u;
    v65 = 0u;
    obj = v23;
    v24 = [obj countByEnumeratingWithState:v64 objects:v73 count:16];
    if (!v24)
    {
      goto LABEL_56;
    }

    v49 = *v65;
    *&v25 = 138543362;
    v46 = v25;
LABEL_22:
    v50 = 0;
    v48 = v24;
    while (1)
    {
      if (*v65 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(v64[1] + v50);
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v57 = v26;
      v27 = [v26 allKeys];
      v54 = v27;
      v28 = [v27 countByEnumeratingWithState:&v60 objects:&v69 count:16];
      if (v28)
      {
        v55 = *v61;
        v53 = 1;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v61 != v55)
            {
              objc_enumerationMutation(v54);
            }

            v30 = *(*(&v60 + 1) + 8 * i);
            v31 = [v57 objectForKey:v30];
            v32 = [MEMORY[0x1E695DFB0] null];
            if (v31 == v32 && v56 == 0)
            {
              v34 = 1;
            }

            else
            {
              v34 = [v31 isEqualToData:?];
            }

            v35 = [v30 universalStore];
            if ([v35 adamID] == v59)
            {
              v36 = 1;
            }

            else
            {
              v37 = [v30 universalStore];
              v38 = [v37 formerAdamIDs];
              v39 = [MEMORY[0x1E696AD98] numberWithLongLong:v59];
              v36 = [v38 containsObject:v39];
            }

            v41 = mlcore::ArtistPropertyPersistentID(v40);
            v42 = MPMediaLibraryPropertyCacheValueForProperty(v41, v58);
            [v42 longLongValue];

            if ((v36 & v34) == 1)
            {
              v43 = MEMORY[0x1A58E11E0]();
              (*(*v43 + 48))(&buf);
              if (buf)
              {
                v44 = [**(a1 + 16) identifiersForPropertyCache:mlcore::Entity::propertyCache(buf) context:**(a1 + 24)];
                [**(a1 + 32) setLibraryIdentifierSet:v44 forIdentifierSet:v30];
              }

              if (*(&buf + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
              }
            }

            else
            {
              v53 = 0;
            }
          }

          v28 = [v54 countByEnumeratingWithState:&v60 objects:&v69 count:16];
        }

        while (v28);

        if ((v53 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
      }

      [**(a1 + 40) removeObjectIdenticalTo:v57];
      v45 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = v46;
        *(&buf + 4) = v57;
        _os_log_impl(&dword_1A238D000, v45, OS_LOG_TYPE_DEFAULT, "[LibraryMappingOperation] All identifiers matched for request=%{public}@", &buf, 0xCu);
      }

LABEL_53:
      if (![**(a1 + 40) count])
      {
        goto LABEL_56;
      }

      if (++v50 == v48)
      {
        v24 = [obj countByEnumeratingWithState:v64 objects:v73 count:16];
        if (!v24)
        {
          goto LABEL_56;
        }

        goto LABEL_22;
      }
    }
  }

  v8 = [**(a1 + 8) copy];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (!v9)
  {
    goto LABEL_56;
  }

  v10 = *v70;
  do
  {
    for (j = 0; j != v9; ++j)
    {
      if (*v70 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v69 + 1) + 8 * j);
      v13 = [v12 universalStore];
      if ([v13 adamID] == v59)
      {
      }

      else
      {
        v15 = [v12 universalStore];
        v16 = [v15 formerAdamIDs];
        v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v59];
        v18 = [v16 containsObject:v17];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      v19 = mlcore::ArtistPropertyPersistentID(v14);
      v20 = MPMediaLibraryPropertyCacheValueForProperty(v19, v58);
      [v20 longLongValue];

      v21 = MEMORY[0x1A58E11E0]();
      (*(*v21 + 48))(v64);
      if (v64[0])
      {
        v22 = [**(a1 + 16) identifiersForPropertyCache:mlcore::Entity::propertyCache(v64[0]) context:**(a1 + 24)];
        [**(a1 + 32) setLibraryIdentifierSet:v22 forIdentifierSet:v12];
        [**(a1 + 8) removeObjectIdenticalTo:v12];
      }

      if (v64[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v64[1]);
      }

LABEL_15:
      if (![**(a1 + 8) count])
      {
        goto LABEL_56;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
  }

  while (v9);
LABEL_56:

LABEL_57:
  if (![**(a1 + 8) count] && !objc_msgSend(**(a1 + 40), "count") || objc_msgSend(**(a1 + 48), "isCancelled"))
  {
    *a3 = 1;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb23_EUb24_E4__14NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1497338;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<mlcore::InPredicate<long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F14992C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t _ZNKSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb22_E4__13NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb22_E4$_13"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb22_E4__13NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  v19 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v5 = MPMediaLibraryPropertyCacheValueForProperty(**(a1 + 8), a2);
  if ([v5 length])
  {
    v6 = [**(a1 + 16) copy];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = *v25;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [v10 universalStore];
        v12 = [v11 universalCloudLibraryID];
        v13 = [v12 isEqualToString:v5];

        if (v13)
        {
          v15 = mlcore::AlbumPropertyPersistentID(v14);
          v16 = MPMediaLibraryPropertyCacheValueForProperty(v15, a2);
          [v16 longLongValue];

          v17 = MEMORY[0x1A58E1180]();
          (*(*v17 + 48))(&v22);
          if (v22)
          {
            v18 = [**(a1 + 24) identifiersForPropertyCache:mlcore::Entity::propertyCache(v22) context:**(a1 + 32)];
            [**(a1 + 40) setLibraryIdentifierSet:v18 forIdentifierSet:v10];
            [**(a1 + 16) removeObjectIdenticalTo:v10];
          }

          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }
        }

        if (![**(a1 + 16) count])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  if (![**(a1 + 16) count] || objc_msgSend(**(a1 + 48), "isCancelled"))
  {
    *v20 = 1;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb22_E4__13NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F14972B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_1A256A3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_88c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_ea8_88c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v2 = a1 + 88;
  *(v2 + 16) = 0;
  return std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(v2, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb20_EUb21_E4__12NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb20_EUb21_E4$_12"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb20_EUb21_E4__12NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  v18 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v5 = mlcore::ItemPropertyStoreCloudAlbumID(a1);
  v21 = a2;
  v23 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  if ([v23 length])
  {
    v6 = [**(a1 + 8) copy];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v7)
    {
      v8 = *v42;
      v20 = &v38;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        v11 = [v10 universalStore];
        v12 = [v11 universalCloudLibraryID];
        v13 = [v12 isEqualToString:v23];

        if (v13)
        {
          v15 = mlcore::ItemPropertyAlbumPersistentID(v14);
          v16 = MPMediaLibraryPropertyCacheValueForProperty(v15, v21);
          [v16 longLongValue];

          MEMORY[0x1A58E1180]();
          v37 = 1065353216;
          *&v34[8] = 0u;
          v32 = 1065353216;
          *&v29[8] = 0u;
          v27 = 1065353216;
          v26 = 0u;
          v25 = 0u;
          v28 = 0u;
          *v29 = 0u;
          *&v29[16] = 1065353216;
          v30 = 0u;
          v31 = 0u;
          v33 = 0u;
          *v34 = 0u;
          *&v34[16] = 1065353216;
          v36 = 0u;
          v35 = 0u;
          v24 = MEMORY[0x1E69B0818] + 16;
          v38 = MEMORY[0x1E69B0818] + 56;
          mlcore::EntityCache::entityForClassAndPersistentID();
          mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v24);
          if (v39)
          {
            v17 = [**(a1 + 24) identifiersForPropertyCache:mlcore::Entity::propertyCache(v39) context:**(a1 + 32)];
            [**(a1 + 40) setLibraryIdentifierSet:v17 forIdentifierSet:v10];
            [**(a1 + 8) removeObjectIdenticalTo:v10];
          }

          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }
        }

        if (![**(a1 + 8) count])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  if (![**(a1 + 8) count] || objc_msgSend(**(a1 + 48), "isCancelled"))
  {
    *v19 = 1;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb20_EUb21_E4__12NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1497238;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb19_E4__11NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb19_E4$_11"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb19_E4__11NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  v19 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v5 = MPMediaLibraryPropertyCacheValueForProperty(**(a1 + 8), a2);
  if ([v5 length])
  {
    v6 = [**(a1 + 16) copy];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = *v25;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [v10 personalizedStore];
        v12 = [v11 cloudAlbumID];
        v13 = [v12 isEqualToString:v5];

        if (v13)
        {
          v15 = mlcore::AlbumPropertyPersistentID(v14);
          v16 = MPMediaLibraryPropertyCacheValueForProperty(v15, a2);
          [v16 longLongValue];

          v17 = MEMORY[0x1A58E1180]();
          (*(*v17 + 48))(&v22);
          if (v22)
          {
            v18 = [**(a1 + 24) identifiersForPropertyCache:mlcore::Entity::propertyCache(v22) context:**(a1 + 32)];
            [**(a1 + 40) setLibraryIdentifierSet:v18 forIdentifierSet:v10];
            [**(a1 + 16) removeObjectIdenticalTo:v10];
          }

          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }
        }

        if (![**(a1 + 16) count])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  if (![**(a1 + 16) count] || objc_msgSend(**(a1 + 48), "isCancelled"))
  {
    *v20 = 1;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb19_E4__11NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F14971B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void __destroy_helper_block_ea8_88c89_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE112c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t __copy_helper_block_ea8_88c89_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE112c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(void *a1, uint64_t *a2)
{
  v3 = a1;
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 11), a2[11], a2[12], 0xAAAAAAAAAAAAAAABLL * ((a2[12] - a2[11]) >> 3));
  v3[14] = 0;
  v3[15] = 0;
  v3 += 14;
  v3[2] = 0;
  return std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(v3, a2[14], a2[15], (a2[15] - a2[14]) >> 3);
}

void sub_1A256AE1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1A256B054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb17_EUb18_E4__10NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb17_EUb18_E4$_10"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb17_EUb18_E4__10NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  v18 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v5 = mlcore::ItemPropertyStoreCloudAlbumID(a1);
  v21 = a2;
  v23 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  if ([v23 length])
  {
    v6 = [**(a1 + 8) copy];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v7)
    {
      v8 = *v42;
      v20 = &v38;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        v11 = [v10 personalizedStore];
        v12 = [v11 cloudAlbumID];
        v13 = [v12 isEqualToString:v23];

        if (v13)
        {
          v15 = mlcore::ItemPropertyAlbumPersistentID(v14);
          v16 = MPMediaLibraryPropertyCacheValueForProperty(v15, v21);
          [v16 longLongValue];

          MEMORY[0x1A58E1180]();
          v37 = 1065353216;
          *&v34[8] = 0u;
          v32 = 1065353216;
          *&v29[8] = 0u;
          v27 = 1065353216;
          v26 = 0u;
          v25 = 0u;
          v28 = 0u;
          *v29 = 0u;
          *&v29[16] = 1065353216;
          v30 = 0u;
          v31 = 0u;
          v33 = 0u;
          *v34 = 0u;
          *&v34[16] = 1065353216;
          v36 = 0u;
          v35 = 0u;
          v24 = MEMORY[0x1E69B0818] + 16;
          v38 = MEMORY[0x1E69B0818] + 56;
          mlcore::EntityCache::entityForClassAndPersistentID();
          mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v24);
          if (v39)
          {
            v17 = [**(a1 + 24) identifiersForPropertyCache:mlcore::Entity::propertyCache(v39) context:**(a1 + 32)];
            [**(a1 + 40) setLibraryIdentifierSet:v17 forIdentifierSet:v10];
            [**(a1 + 8) removeObjectIdenticalTo:v10];
          }

          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }
        }

        if (![**(a1 + 8) count])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  if (![**(a1 + 8) count] || objc_msgSend(**(a1 + 48), "isCancelled"))
  {
    *v19 = 1;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb17_EUb18_E4__10NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1497138;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_1A256B7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb15_EUb16_E3__9NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb15_EUb16_E3$_9"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb15_EUb16_E3__9NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, _BYTE *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = mlcore::ItemPropertyStorePlaylistID(a1);
  v26 = a2;
  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  v7 = [v6 longLongValue];

  if (v7)
  {
    v29 = v7;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [**(a1 + 8) copy];
    v8 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (!v8)
    {
      goto LABEL_23;
    }

    v27 = *v49;
    while (1)
    {
      v9 = 0;
      v28 = v8;
      do
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v48 + 1) + 8 * v9);
        v11 = [v10 universalStore];
        if ([v11 adamID] != v29)
        {
          v12 = [v10 universalStore];
          if ([v12 subscriptionAdamID] != v29)
          {
            v13 = [v10 universalStore];
            if ([v13 purchasedAdamID] != v29)
            {
              v24 = [v10 universalStore];
              v18 = [v24 formerAdamIDs];
              v19 = [MEMORY[0x1E696AD98] numberWithLongLong:v29];
              v20 = [v18 containsObject:v19];

              if ((v20 & 1) == 0)
              {
                goto LABEL_17;
              }

              goto LABEL_13;
            }
          }
        }

LABEL_13:
        v15 = mlcore::ItemPropertyAlbumPersistentID(v14);
        v16 = MPMediaLibraryPropertyCacheValueForProperty(v15, v26);
        [v16 longLongValue];

        MEMORY[0x1A58E1180]();
        v44 = 0;
        *&v40[8] = 0u;
        v38 = 1065353216;
        *&v35[8] = 0u;
        v33 = 1065353216;
        v32 = 0u;
        v31 = 0u;
        v34 = 0u;
        *v35 = 0u;
        *&v35[16] = 1065353216;
        v36 = 0u;
        v37 = 0u;
        v39 = 0u;
        *v40 = 0u;
        *&v40[16] = 1065353216;
        v42 = 0u;
        v41 = 0u;
        v43 = 1065353216;
        v30 = MEMORY[0x1E69B0818] + 16;
        v45 = MEMORY[0x1E69B0818] + 56;
        mlcore::EntityCache::entityForClassAndPersistentID();
        mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v30);
        if (v46)
        {
          v17 = [**(a1 + 24) identifiersForPropertyCache:mlcore::Entity::propertyCache(v46) context:**(a1 + 32)];
          [**(a1 + 40) setLibraryIdentifierSet:v17 forIdentifierSet:v10];
          [**(a1 + 8) removeObjectIdenticalTo:v10];
        }

        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

LABEL_17:
        if (![**(a1 + 8) count])
        {
          goto LABEL_23;
        }

        ++v9;
      }

      while (v28 != v9);
      v21 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      v8 = v21;
      if (!v21)
      {
LABEL_23:

        break;
      }
    }
  }

  result = [**(a1 + 8) count];
  if (!result || (result = [**(a1 + 48) isCancelled], result))
  {
    *a3 = 1;
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb15_EUb16_E3__9NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F14970B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_1A256C000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_80c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_ea8_80c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v2 = a1 + 80;
  *(v2 + 16) = 0;
  return std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(v2, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb13_EUb14_E3__8NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb13_EUb14_E3$_8"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb13_EUb14_E3__8NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, _BYTE *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = mlcore::ItemPropertyStorePlaylistID(a1);
  v26 = a2;
  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  v7 = [v6 longLongValue];

  if (v7)
  {
    v29 = v7;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [**(a1 + 8) copy];
    v8 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (!v8)
    {
      goto LABEL_23;
    }

    v27 = *v49;
    while (1)
    {
      v9 = 0;
      v28 = v8;
      do
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v48 + 1) + 8 * v9);
        v11 = [v10 universalStore];
        if ([v11 adamID] != v29)
        {
          v12 = [v10 universalStore];
          if ([v12 subscriptionAdamID] != v29)
          {
            v13 = [v10 universalStore];
            if ([v13 purchasedAdamID] != v29)
            {
              v24 = [v10 universalStore];
              v18 = [v24 formerAdamIDs];
              v19 = [MEMORY[0x1E696AD98] numberWithLongLong:v29];
              v20 = [v18 containsObject:v19];

              if ((v20 & 1) == 0)
              {
                goto LABEL_17;
              }

              goto LABEL_13;
            }
          }
        }

LABEL_13:
        v15 = mlcore::ItemPropertyAlbumPersistentID(v14);
        v16 = MPMediaLibraryPropertyCacheValueForProperty(v15, v26);
        [v16 longLongValue];

        MEMORY[0x1A58E1180]();
        v44 = 0;
        *&v40[8] = 0u;
        v38 = 1065353216;
        *&v35[8] = 0u;
        v33 = 1065353216;
        v32 = 0u;
        v31 = 0u;
        v34 = 0u;
        *v35 = 0u;
        *&v35[16] = 1065353216;
        v36 = 0u;
        v37 = 0u;
        v39 = 0u;
        *v40 = 0u;
        *&v40[16] = 1065353216;
        v42 = 0u;
        v41 = 0u;
        v43 = 1065353216;
        v30 = MEMORY[0x1E69B0818] + 16;
        v45 = MEMORY[0x1E69B0818] + 56;
        mlcore::EntityCache::entityForClassAndPersistentID();
        mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v30);
        if (v46)
        {
          v17 = [**(a1 + 24) identifiersForPropertyCache:mlcore::Entity::propertyCache(v46) context:**(a1 + 32)];
          [**(a1 + 40) setLibraryIdentifierSet:v17 forIdentifierSet:v10];
          [**(a1 + 8) removeObjectIdenticalTo:v10];
        }

        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

LABEL_17:
        if (![**(a1 + 8) count])
        {
          goto LABEL_23;
        }

        ++v9;
      }

      while (v28 != v9);
      v21 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      v8 = v21;
      if (!v21)
      {
LABEL_23:

        break;
      }
    }
  }

  result = [**(a1 + 8) count];
  if (!result || (result = [**(a1 + 48) isCancelled], result))
  {
    *a3 = 1;
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb13_EUb14_E3__8NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1497038;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb12_E3__7NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb12_E3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb12_E3__7NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(id **a1, int8x8_t *a2, uint64_t a3)
{
  v20 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v5 = mlcore::PlaylistPropertyCloudUniversalLibraryID(a1);
  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  if ([v6 length])
  {
    v7 = [*a1[1] copy];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = *v24;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = [v11 universalStore];
        v13 = [v12 universalCloudLibraryID];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          v15 = [MPModelSong kindWithVariants:3];
          v27 = v15;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
          v17 = [MPModelPlaylistEntry kindWithKinds:v16];

          v18 = [MPModelPlaylist kindWithPlaylistEntryKind:v17 options:0];
          [*a1[2] setModelKind:v18];

          v19 = [*a1[3] identifiersForPropertyCache:a2 context:*a1[2]];
          [*a1[4] setLibraryIdentifierSet:v19 forIdentifierSet:v11];
          [*a1[1] removeObjectIdenticalTo:v11];
        }

        if (![*a1[1] count])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  if (![*a1[1] count] || objc_msgSend(*a1[5], "isCancelled"))
  {
    *v21 = 1;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb12_E3__7NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1496FB8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t __destroy_helper_block_ea8_88c75_ZTSNSt3__113unordered_setIyNS_4hashIyEENS_8equal_toIyEENS_9allocatorIyEEEE128c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  return std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(a1 + 88);
}

uint64_t __copy_helper_block_ea8_88c75_ZTSNSt3__113unordered_setIyNS_4hashIyEENS_8equal_toIyEENS_9allocatorIyEEEE128c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(void *a1, uint64_t a2)
{
  std::unordered_set<unsigned long long>::unordered_set((a1 + 11), a2 + 88);
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  return std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>((a1 + 16), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
}

void sub_1A256CC7C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb10_EUb11_E3__6NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb10_EUb11_E3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb10_EUb11_E3__6NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = mlcore::PlaylistPropertyStoreCloudID(a1);
  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  v7 = [v6 longLongValue];

  if (v7)
  {
    v8 = [**(a1 + 8) copy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = [v13 personalizedStore];
        v15 = v7 == [v14 cloudID];

        if (v15)
        {
          v16 = [**(a1 + 16) identifiersForPropertyCache:a2 context:**(a1 + 24)];
          [**(a1 + 32) setLibraryIdentifierSet:v16 forIdentifierSet:v13];
          [**(a1 + 8) removeObjectIdenticalTo:v13];
        }

        if (![**(a1 + 8) count])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  result = [**(a1 + 8) count];
  if (!result || (result = [**(a1 + 40) isCancelled], result))
  {
    *a3 = 1;
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb10_EUb11_E3__6NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1496F38;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
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

uint64_t __destroy_helper_block_ea8_80c129_ZTSNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEEE120c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 80);
}

uint64_t __copy_helper_block_ea8_80c129_ZTSNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEEE120c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(void *a1, uint64_t a2)
{
  std::unordered_set<std::string>::unordered_set((a1 + 10), a2 + 80);
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  return std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>((a1 + 15), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
}

void sub_1A256D260(_Unwind_Exception *a1)
{
  v4 = v3;

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb8_EUb9_E3__5NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb8_EUb9_E3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb8_EUb9_E3__5NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  v16 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v5 = mlcore::PlaylistPropertyCloudGlobalID(a1);
  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  if ([v6 length])
  {
    v7 = [**(a1 + 8) copy];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = *v20;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [v11 universalStore];
        v13 = [v12 globalPlaylistID];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          v15 = [**(a1 + 16) identifiersForPropertyCache:a2 context:**(a1 + 24)];
          [**(a1 + 32) setLibraryIdentifierSet:v15 forIdentifierSet:v11];
          [**(a1 + 8) removeObjectIdenticalTo:v11];
        }

        if (![**(a1 + 8) count])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  if (![**(a1 + 8) count] || objc_msgSend(**(a1 + 40), "isCancelled"))
  {
    *v17 = 1;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb8_EUb9_E3__5NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1496EB8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb7_E3__4NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb7_E3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb7_E3__4NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  v16 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v5 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(a1);
  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  if ([v6 length])
  {
    v7 = [**(a1 + 8) copy];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = *v20;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [v11 universalStore];
        v13 = [v12 universalCloudLibraryID];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          v15 = [**(a1 + 16) identifiersForPropertyCache:a2 context:**(a1 + 24)];
          [**(a1 + 32) setLibraryIdentifierSet:v15 forIdentifierSet:v11];
          [**(a1 + 8) removeObjectIdenticalTo:v11];
        }

        if (![**(a1 + 8) count])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  if (![**(a1 + 8) count] || objc_msgSend(**(a1 + 40), "isCancelled"))
  {
    *v17 = 1;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb7_E3__4NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1496E38;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::SortDescriptor>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_ptr_emplace<mlcore::ComparisonPredicate<std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1496DE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::InPredicate<std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F14991D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A256DC58(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb5_EUb6_E3__3NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb5_EUb6_E3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb5_EUb6_E3__3NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = mlcore::ItemPropertyStoreCloudID(a1);
  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  v7 = [v6 longLongValue];

  if (v7)
  {
    v8 = [**(a1 + 8) copy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = [v13 personalizedStore];
        v15 = v7 == [v14 cloudID];

        if (v15)
        {
          v16 = [**(a1 + 16) identifiersForPropertyCache:a2 context:**(a1 + 24)];
          [**(a1 + 32) setLibraryIdentifierSet:v16 forIdentifierSet:v13];
          [**(a1 + 8) removeObjectIdenticalTo:v13];
        }

        if (![**(a1 + 8) count])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  result = [**(a1 + 8) count];
  if (!result || (result = [**(a1 + 40) isCancelled], result))
  {
    *a3 = 1;
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb5_EUb6_E3__3NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1496D68;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_1A256E134(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb3_EUb4_E3__2NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb3_EUb4_E3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb3_EUb4_E3__2NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  v19 = a3;
  v31 = *MEMORY[0x1E69E9840];
  v5 = mlcore::ItemPropertyStoreID(a1);
  v23 = a2;
  v21 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  v6 = [v21 longLongValue];
  if (v6)
  {
    v7 = [**(a1 + 8) copy];
    v25 = v6;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v8)
    {
      goto LABEL_18;
    }

    v24 = *v27;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = [v10 universalStore];
        if (v25 == [v11 adamID])
        {
          goto LABEL_10;
        }

        v12 = [v10 universalStore];
        if (v25 == [v12 purchasedAdamID])
        {

LABEL_10:
LABEL_11:
          v13 = [**(a1 + 16) identifiersForPropertyCache:v23 context:**(a1 + 24)];
          [**(a1 + 32) setLibraryIdentifierSet:v13 forIdentifierSet:v10];
          [**(a1 + 8) removeObjectIdenticalTo:v10];

          goto LABEL_12;
        }

        v14 = [v10 universalStore];
        v15 = [v14 formerAdamIDs];
        v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
        v17 = [v15 containsObject:v16];

        if (v17)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (![**(a1 + 8) count])
        {
          goto LABEL_18;
        }

        ++v9;
      }

      while (v8 != v9);
      v18 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v8 = v18;
      if (!v18)
      {
LABEL_18:

        break;
      }
    }
  }

  if (![**(a1 + 8) count] || objc_msgSend(**(a1 + 40), "isCancelled"))
  {
    *v20 = 1;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb3_EUb4_E3__2NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1496CE8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_1A256E6F8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb1_EUb2_E3__1NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb1_EUb2_E3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb1_EUb2_E3__1NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, _BYTE *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = mlcore::ItemPropertySubscriptionStoreItemID(a1);
  v23 = a2;
  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  v7 = [v6 longLongValue];

  if (v7)
  {
    v25 = v7;
    v8 = [**(a1 + 8) copy];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v9)
    {
      goto LABEL_18;
    }

    v24 = *v27;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = [v11 universalStore];
        if (v25 == [v12 adamID])
        {
          goto LABEL_10;
        }

        v13 = [v11 universalStore];
        if (v25 == [v13 subscriptionAdamID])
        {

LABEL_10:
LABEL_11:
          v14 = [**(a1 + 16) identifiersForPropertyCache:v23 context:**(a1 + 24)];
          [**(a1 + 32) setLibraryIdentifierSet:v14 forIdentifierSet:v11];
          [**(a1 + 8) removeObjectIdenticalTo:v11];

          goto LABEL_12;
        }

        v15 = [v11 universalStore];
        v16 = [v15 formerAdamIDs];
        v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
        v18 = [v16 containsObject:v17];

        if (v18)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (![**(a1 + 8) count])
        {
          goto LABEL_18;
        }

        ++v10;
      }

      while (v9 != v10);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v9 = v19;
      if (!v19)
      {
LABEL_18:

        break;
      }
    }
  }

  result = [**(a1 + 8) count];
  if (!result || (result = [**(a1 + 40) isCancelled], result))
  {
    *a3 = 1;
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb1_EUb2_E3__1NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1496C68;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t __destroy_helper_block_ea8_80c75_ZTSNSt3__113unordered_setIxNS_4hashIxEENS_8equal_toIxEENS_9allocatorIxEEEE120c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  return std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(a1 + 80);
}

uint64_t __copy_helper_block_ea8_80c75_ZTSNSt3__113unordered_setIxNS_4hashIxEENS_8equal_toIxEENS_9allocatorIxEEEE120c69_ZTSNSt3__16vectorIPN6mlcore17ModelPropertyBaseENS_9allocatorIS3_EEEE(void *a1, uint64_t a2)
{
  std::unordered_set<long long>::unordered_set((a1 + 10), a2 + 80);
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  return std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>((a1 + 15), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
}

void sub_1A256EF5C(_Unwind_Exception *a1)
{
  v4 = v3;

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb_EUb0_E3__0NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ48-[MPStoreLibraryMappingRequestOperation execute]EUb_EUb0_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb_EUb0_E3__0NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2, _BYTE *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = mlcore::ItemPropertySubscriptionStoreItemID(a1);
  v23 = a2;
  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  v7 = [v6 longLongValue];

  if (v7)
  {
    v25 = v7;
    v8 = [**(a1 + 8) copy];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v9)
    {
      goto LABEL_18;
    }

    v24 = *v27;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = [v11 universalStore];
        if (v25 == [v12 adamID])
        {
          goto LABEL_10;
        }

        v13 = [v11 universalStore];
        if (v25 == [v13 subscriptionAdamID])
        {

LABEL_10:
LABEL_11:
          v14 = [**(a1 + 16) identifiersForPropertyCache:v23 context:**(a1 + 24)];
          [**(a1 + 32) setLibraryIdentifierSet:v14 forIdentifierSet:v11];
          [**(a1 + 8) removeObjectIdenticalTo:v11];

          goto LABEL_12;
        }

        v15 = [v11 universalStore];
        v16 = [v15 formerAdamIDs];
        v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
        v18 = [v16 containsObject:v17];

        if (v18)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (![**(a1 + 8) count])
        {
          goto LABEL_18;
        }

        ++v10;
      }

      while (v9 != v10);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v9 = v19;
      if (!v19)
      {
LABEL_18:

        break;
      }
    }
  }

  result = [**(a1 + 8) count];
  if (!result || (result = [**(a1 + 40) isCancelled], result))
  {
    *a3 = 1;
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZZ48__MPStoreLibraryMappingRequestOperation_execute_EUb_EUb0_E3__0NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1496BE8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_1A2575DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A25778E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30535(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A257A62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *MPNSStringForFavoriteEntityChangeRequestAction(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown FavoriteEntityChangeRequestAction=%d", a1];
  }

  else
  {
    v2 = off_1E767AED0[a1];
  }

  return v2;
}

void sub_1A257C390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30854(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31176(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25804B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A25806E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31249(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25842C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50)
{
  _Block_object_dispose(&a43, 8);
  if (__p)
  {
    a50 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v56 - 248), 8);
  v57 = *(v56 - 200);
  if (v57)
  {
    *(v56 - 192) = v57;
    operator delete(v57);
  }

  _Block_object_dispose((v56 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31598(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__52(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__53(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__54(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__55(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1A2584A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::__function::__value_func<void ()(mlcore::PropertyCache const&,BOOL &)>::~__value_func[abi:ne200100](&a16);
  if (a2 == 2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = MEMORY[0x1E695DF30];
    v22 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a16);
    (*(*v20 + 24))(&__p, v20, &a16);
    if (a15 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v24 = [v22 stringWithUTF8String:p_p];
    v25 = [v21 exceptionWithName:@"MediaPlatform" reason:v24 userInfo:0];
    v26 = v25;

    if (a15 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v25);
  }

  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = MEMORY[0x1E695DF30];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v27 + 16))(v27)];
    v30 = [v28 exceptionWithName:*MEMORY[0x1E695D920] reason:v29 userInfo:0];
    v31 = v30;

    objc_exception_throw(v30);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZ88__MPModelLibraryPlaylistEditChangeRequestOperation__loadUpdatedTrackListWithCompletion__EUb_E3__0NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZ88-[MPModelLibraryPlaylistEditChangeRequestOperation _loadUpdatedTrackListWithCompletion:]EUb_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZ88__MPModelLibraryPlaylistEditChangeRequestOperation__loadUpdatedTrackListWithCompletion__EUb_E3__0NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(id **a1, int8x8_t *a2)
{
  v4 = mlcore::PlaylistItemPropertyItemPersistentID(a1);
  v7 = MPMediaLibraryPropertyCacheValueForProperty(v4, a2);
  v5 = mlcore::PlaylistItemPropertyPersistentID(v7);
  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5, a2);
  [*a1[1] setObject:v7 forKey:v6];
}

uint64_t _ZNKSt3__110__function6__funcIZZ88__MPModelLibraryPlaylistEditChangeRequestOperation__loadUpdatedTrackListWithCompletion__EUb_E3__0NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1497538;
  a2[1] = v2;
  return result;
}

void std::vector<_MPModelLibraryPlaylistEditIdentifier>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
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
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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

void sub_1A2585A70(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, id a24, id a25, id a26, id a27, id a28, id a29)
{
  _Block_object_dispose(&a11, 8);

  if (a2 == 2)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = MEMORY[0x1E695DF30];
    v40 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a11);
    (*(*v38 + 24))(v38, &a11);
    if (*(v35 - 121) >= 0)
    {
      v41 = v35 - 144;
    }

    else
    {
      v41 = *(v35 - 144);
    }

    v42 = [v40 stringWithUTF8String:v41];
    v43 = [v39 exceptionWithName:@"MediaPlatform" reason:v42 userInfo:0];
    v44 = v43;

    if (*(v35 - 121) < 0)
    {
      operator delete(*(v35 - 144));
    }

    objc_exception_throw(v43);
  }

  if (a2 == 1)
  {
    v45 = __cxa_begin_catch(a1);
    v46 = MEMORY[0x1E695DF30];
    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v45 + 16))(v45)];
    v48 = [v46 exceptionWithName:*MEMORY[0x1E695D920] reason:v47 userInfo:0];
    v49 = v48;

    objc_exception_throw(v48);
  }

  _Unwind_Resume(a1);
}

void sub_1A2588CB4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose((v34 - 200), 8);

  _Block_object_dispose(&a24, 8);
  if (a2 == 2)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = MEMORY[0x1E695DF30];
    v38 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a24);
    (*(*v36 + 24))(v36, &a24);
    if (*(v34 - 177) >= 0)
    {
      v39 = v34 - 200;
    }

    else
    {
      v39 = *(v34 - 200);
    }

    v40 = [v38 stringWithUTF8String:v39];
    v41 = [v37 exceptionWithName:@"MediaPlatform" reason:v40 userInfo:0];
    v42 = v41;

    if (*(v34 - 177) < 0)
    {
      operator delete(*(v34 - 200));
    }

    objc_exception_throw(v41);
  }

  if (a2 == 1)
  {
    v43 = __cxa_begin_catch(a1);
    v44 = MEMORY[0x1E695DF30];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v43 + 16))(v43)];
    v46 = [v44 exceptionWithName:*MEMORY[0x1E695D920] reason:v45 userInfo:0];
    v47 = v46;

    objc_exception_throw(v46);
  }

  _Unwind_Resume(a1);
}

uint64_t _MPModelLibraryRemovalSupportedOptionsForIndividualItemProperties(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  if ((a1 - 1) <= 1)
  {
    v11 = [v8 isRedownloadable];
LABEL_7:
    v10 |= v11;
    goto LABEL_8;
  }

  v12 = [v7 isNonPurgeable];
  v11 = [v9 isRedownloadable];
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

void sub_1A258E444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24)
{
  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(exception_object);
    v25 = MEMORY[0x1E695DF30];
    v26 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a10);
    (*(*v24 + 24))(&__p, v24, &a10);
    if (a22 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v28 = [v26 stringWithUTF8String:p_p];
    v29 = [v25 exceptionWithName:@"MediaPlatform" reason:v28 userInfo:0];
    v30 = v29;

    if (a22 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v29);
  }

  if (a2 == 1)
  {
    v31 = __cxa_begin_catch(exception_object);
    v32 = MEMORY[0x1E695DF30];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v31 + 16))(v31)];
    v34 = [v32 exceptionWithName:*MEMORY[0x1E695D920] reason:v33 userInfo:0];
    v35 = v34;

    objc_exception_throw(v34);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A258E9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, std::__shared_weak_count *a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  v30 = v26;

  v33 = *(v29 - 112);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  if (a2 == 2)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = MEMORY[0x1E695DF30];
    v36 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&__p);
    (*(*v34 + 24))(&a16, v34, &__p);
    if (a21 >= 0)
    {
      v37 = &a16;
    }

    else
    {
      v37 = a16;
    }

    v38 = [v36 stringWithUTF8String:v37];
    v39 = [v35 exceptionWithName:@"MediaPlatform" reason:v38 userInfo:0];
    v40 = v39;

    if (a21 < 0)
    {
      operator delete(a16);
    }

    objc_exception_throw(v39);
  }

  if (a2 == 1)
  {
    v41 = __cxa_begin_catch(a1);
    v42 = MEMORY[0x1E695DF30];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v41 + 16))(v41)];
    v44 = [v42 exceptionWithName:*MEMORY[0x1E695D920] reason:v43 userInfo:0];
    v45 = v44;

    objc_exception_throw(v44);
  }

  _Unwind_Resume(a1);
}

void sub_1A258ED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32244(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2591C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  v46 = v44;

  _Unwind_Resume(a1);
}

void sub_1A2595B2C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A2596528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50)
{
  _Block_object_dispose(&a43, 8);
  if (__p)
  {
    a50 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v55 - 224), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__32562(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__32563(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1A2596F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MPStoreLibraryPersonalizationResponse;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A259743C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__174(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2597644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1A25999C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  _Block_object_dispose(&STACK[0x2A0], 8);

  _Block_object_dispose(&STACK[0x330], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32682(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A259A278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17)
{
  objc_destroyWeak((v18 + 80));

  _Unwind_Resume(a1);
}

void sub_1A259A594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose((v32 - 136), 8);
  v34 = *(v32 - 88);
  if (v34)
  {
    *(v32 - 80) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__55(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__56(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A259A868(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A259AD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a2 == 2)
  {
    v25 = __cxa_begin_catch(exception_object);
    v26 = MEMORY[0x1E695DF30];
    v27 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions((v22 - 112));
    (*(*v25 + 24))(&__p, v25, v22 - 112);
    if (a14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v29 = [v27 stringWithUTF8String:p_p];
    v30 = [v26 exceptionWithName:@"MediaPlatform" reason:v29 userInfo:0];
    v31 = v30;

    if (a14 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v30);
  }

  if (a2 == 1)
  {
    v32 = __cxa_begin_catch(exception_object);
    v33 = MEMORY[0x1E695DF30];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v32 + 16))(v32)];
    v35 = [v33 exceptionWithName:*MEMORY[0x1E695D920] reason:v34 userInfo:0];
    v36 = v35;

    objc_exception_throw(v35);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A259B028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void std::vector<long long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_1A259B4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A259B938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28)
{
  std::__function::__value_func<void ()(mlcore::PropertyCache const&,BOOL &)>::~__value_func[abi:ne200100](v32 - 128);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v34 = *(v32 - 88);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

void sub_1A259BB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void sub_1A259D9F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  __cxa_end_catch();

  JUMPOUT(0x1A259DA60);
}

void sub_1A259DA4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1A259DD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, void *__p, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  MEMORY[0x1A58DF7C0](&a44);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::AnyInPredicate<long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1497668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A25A17F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A25A2890(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1A25A4918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33276(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25A4D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A25A5130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A25A6844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A25A8920(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A25A8CA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A25A902C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A25AE4A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<mlcore::LocalizedSearchScope>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>>(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
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
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void sub_1A25AE800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  *(v25 - 88) = v23;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v25 - 88));

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<mlcore::LocalizedSearchScope>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void __copy_helper_block_ea8_56c89_ZTSNSt3__16vectorINS_10shared_ptrIN6mlcore20LocalizedSearchScopeEEENS_9allocatorIS4_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  std::vector<std::shared_ptr<mlcore::LocalizedSearchScope>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*>(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
}

void sub_1A25AEB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_56c89_ZTSNSt3__16vectorINS_10shared_ptrIN6mlcore20LocalizedSearchScopeEEENS_9allocatorIS4_EEEE80c63_ZTSNSt3__110shared_ptrIN6mlcore26LocalizedSearchQueryResultEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (a1 + 56);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void __copy_helper_block_ea8_56c89_ZTSNSt3__16vectorINS_10shared_ptrIN6mlcore20LocalizedSearchScopeEEENS_9allocatorIS4_EEEE80c63_ZTSNSt3__110shared_ptrIN6mlcore26LocalizedSearchQueryResultEEE(void *a1, uint64_t *a2)
{
  a1[7] = 0;
  a1[8] = 0;
  v3 = a1 + 7;
  a1[9] = 0;
  std::vector<std::shared_ptr<mlcore::LocalizedSearchScope>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*>((a1 + 7), a2[7], a2[8], (a2[8] - a2[7]) >> 4);
  v4 = a2[11];
  v3[3] = a2[10];
  v3[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_ea8_40c57_ZTSNSt3__110shared_ptrIN6mlcore20LocalizedSearchQueryEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c57_ZTSNSt3__110shared_ptrIN6mlcore20LocalizedSearchQueryEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<mlcore::LocalizedSearchQuery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1497990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A25AEF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2 == 2)
  {
    v29 = __cxa_begin_catch(a1);
    v30 = MEMORY[0x1E695DF30];
    v31 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a13);
    (*(*v29 + 24))(&__p, v29, &a13);
    if (a25 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v33 = [v31 stringWithUTF8String:p_p];
    v34 = [v30 exceptionWithName:@"MediaPlatform" reason:v33 userInfo:0];
    v35 = v34;

    if (a25 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v34);
  }

  if (a2 == 1)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = MEMORY[0x1E695DF30];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v36 + 16))(v36)];
    v39 = [v37 exceptionWithName:*MEMORY[0x1E695D920] reason:v38 userInfo:0];
    v40 = v39;

    objc_exception_throw(v39);
  }

  _Unwind_Resume(a1);
}

void sub_1A25AF388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = MEMORY[0x1E695DF30];
    v26 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v24 + 24))(&__p, v24, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v28 = [v26 stringWithUTF8String:p_p];
    v29 = [v25 exceptionWithName:@"MediaPlatform" reason:v28 userInfo:0];
    v30 = v29;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v29);
  }

  if (a2 == 1)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = MEMORY[0x1E695DF30];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v31 + 16))(v31)];
    v34 = [v32 exceptionWithName:*MEMORY[0x1E695D920] reason:v33 userInfo:0];
    v35 = v34;

    objc_exception_throw(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1A25AF724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, std::__shared_weak_count *a17, int a18, __int16 a19, char a20, char a21)
{
  v27 = v23;

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a2 == 2)
  {
    v30 = __cxa_begin_catch(a1);
    v31 = MEMORY[0x1E695DF30];
    v32 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v30 + 24))(&__p, v30, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v34 = [v32 stringWithUTF8String:p_p];
    v35 = [v31 exceptionWithName:@"MediaPlatform" reason:v34 userInfo:0];
    v36 = v35;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v35);
  }

  if (a2 == 1)
  {
    v37 = __cxa_begin_catch(a1);
    v38 = MEMORY[0x1E695DF30];
    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v37 + 16))(v37)];
    v40 = [v38 exceptionWithName:*MEMORY[0x1E695D920] reason:v39 userInfo:0];
    v41 = v40;

    objc_exception_throw(v40);
  }

  _Unwind_Resume(a1);
}

void sub_1A25AFA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = MEMORY[0x1E695DF30];
    v26 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v24 + 24))(&__p, v24, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v28 = [v26 stringWithUTF8String:p_p];
    v29 = [v25 exceptionWithName:@"MediaPlatform" reason:v28 userInfo:0];
    v30 = v29;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v29);
  }

  if (a2 == 1)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = MEMORY[0x1E695DF30];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v31 + 16))(v31)];
    v34 = [v32 exceptionWithName:*MEMORY[0x1E695D920] reason:v33 userInfo:0];
    v35 = v34;

    objc_exception_throw(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1A25B01B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v29 = *(v26 - 72);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    if (!v25)
    {
LABEL_3:
      if (!v24)
      {
LABEL_8:

        if (a2 == 2)
        {
          v30 = __cxa_begin_catch(a1);
          v31 = MEMORY[0x1E695DF30];
          v32 = MEMORY[0x1E696AEC0];
          mediaplatform::FormatOptions::FormatOptions(&a9);
          (*(*v30 + 24))(&__p, v30, &a9);
          if (a22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          v34 = [v32 stringWithUTF8String:p_p];
          v35 = [v31 exceptionWithName:@"MediaPlatform" reason:v34 userInfo:0];
          v36 = v35;

          if (a22 < 0)
          {
            operator delete(__p);
          }

          objc_exception_throw(v35);
        }

        if (a2 == 1)
        {
          v37 = __cxa_begin_catch(a1);
          v38 = MEMORY[0x1E695DF30];
          v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v37 + 16))(v37)];
          v40 = [v38 exceptionWithName:*MEMORY[0x1E695D920] reason:v39 userInfo:0];
          v41 = v40;

          objc_exception_throw(v40);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      goto LABEL_8;
    }
  }

  else if (!v25)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  if (!v24)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1A25B047C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1A25B0550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::UnaryPredicate<long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B7F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A25B2034(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A25B27F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MPModelLibraryResponse;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A25B2F18(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A25B2FB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A25B30E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MPModelLibrarySearchResponse;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A25B3538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v28);

  _Block_object_dispose(&a24, 8);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);

  if (a2 == 2)
  {
    v29 = __cxa_begin_catch(a1);
    v30 = MEMORY[0x1E695DF30];
    v31 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a24);
    (*(*v29 + 24))(&__p, v29, &a24);
    if (a15 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v33 = [v31 stringWithUTF8String:p_p];
    v34 = [v30 exceptionWithName:@"MediaPlatform" reason:v33 userInfo:0];
    v35 = v34;

    if (a15 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v34);
  }

  if (a2 == 1)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = MEMORY[0x1E695DF30];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v36 + 16))(v36)];
    v39 = [v37 exceptionWithName:*MEMORY[0x1E695D920] reason:v38 userInfo:0];
    v40 = v39;

    objc_exception_throw(v39);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__34456(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1A25B38AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1A25B3A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::LocalizedSearchScope>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 72);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<mlcore::LocalizedSearchScope>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1497A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A25B44D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void), void (**a10)(void))
{
  a10[2]();

  a9[2]();
  _Unwind_Resume(a1);
}

void sub_1A25B4558(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1A25B50FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  v19[2](v19);

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long,unsigned long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,unsigned long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,unsigned long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,unsigned long>>>::find<long long>(void *a1, unint64_t a2)
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

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
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
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_1A25B6924(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1A25B6950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, uint64_t a38)
{
  __cxa_end_catch();

  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(&a38);
  if (a37)
  {
    operator delete(a37);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  std::__shared_weak_count::__release_shared[abi:ne200100](v39);

  JUMPOUT(0x1A25B6A94);
}

void sub_1A25B6960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, uint64_t a38)
{
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(&a38);
  if (a37)
  {
    operator delete(a37);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  std::__shared_weak_count::__release_shared[abi:ne200100](v39);

  JUMPOUT(0x1A25B6A94);
}

void sub_1A25B6A5C()
{
  *(v0 + 8) = v1;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&STACK[0x290]);
  JUMPOUT(0x1A25B6A8CLL);
}

void sub_1A25B6AF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MPObjectDatabaseToken>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::__unordered_map_hasher<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::hash<mlcore::EntityClass *>,std::equal_to<mlcore::EntityClass *>,true>,std::__unordered_map_equal<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::equal_to<mlcore::EntityClass *>,std::hash<mlcore::EntityClass *>,true>,std::allocator<std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>>>::__emplace_unique_key_args<mlcore::EntityClass *,std::piecewise_construct_t const&,std::tuple<mlcore::EntityClass * const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__hash_table<std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::__unordered_map_hasher<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::hash<mlcore::EntityClass *>,std::equal_to<mlcore::EntityClass *>,true>,std::__unordered_map_equal<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::equal_to<mlcore::EntityClass *>,std::hash<mlcore::EntityClass *>,true>,std::allocator<std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
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

void *std::__hash_table<std::__hash_value_type<long long,unsigned long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,unsigned long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,unsigned long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && v18[2] == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_1A25B83AC(_Unwind_Exception *a1)
{
  v2[2](v2);

  _Unwind_Resume(a1);
}

void sub_1A25B8638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = _MPLibraryObjectDatabaseProgressiveContext;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::MultiEntityQueryResult>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1497C68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
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

void std::__shared_ptr_emplace<std::vector<mlcore::PropertyCache>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1497C18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<std::vector<mlcore::EntityClass *>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<mlcore::EntityClass *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1497BC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A25B9430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void (**a15)(void), void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26)
{
  a15[2]();

  _Unwind_Resume(a1);
}

void sub_1A25BABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void), void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  if (a52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a52);
  }

  std::__hash_table<std::__hash_value_type<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>,std::__unordered_map_hasher<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>,std::equal_to,std::hash,true>,objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}<std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>>::~__hash_table(&a61);
  std::unordered_map<mlcore::ModelEntityType,-[MPLibraryObjectDatabase updateIdentifiersForResults:options:]::Node>::~unordered_map[abi:ne200100](&a67);
  a12[2](a12);

  _Unwind_Resume(a1);
}

void sub_1A25BB2CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlcore::ModelEntityType,-[MPLibraryObjectDatabase updateIdentifiersForResults:options:]::Node>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlcore::ModelEntityType,-[MPLibraryObjectDatabase updateIdentifiersForResults:options:]::Node>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>,std::__unordered_map_hasher<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>,std::equal_to,std::hash,true>,objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}<std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1A25BB754(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>,std::__unordered_map_hasher<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>,std::equal_to,std::hash,true>,objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}<std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>::__destroy_vector::operator()[abi:ne200100](&v6);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_ptr_emplace<mlcore::MultiEntityQuery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1498DA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void sub_1A25BE088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void), void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (STACK[0x350])
  {
    operator delete(STACK[0x350]);
  }

  std::vector<-[MPLibraryObjectDatabase updateTokensForResults:]::SlowPathNode>::~vector[abi:ne200100](&STACK[0x2F0]);
  std::vector<-[MPLibraryObjectDatabase updateTokensForResults:]::FastPathNode>::~vector[abi:ne200100](&STACK[0x308]);
  a9[2]();

  _Unwind_Resume(a1);
}

void sub_1A25BE740(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void SearchIDs::~SearchIDs(SearchIDs *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

void SearchIDs::SearchIDs(SearchIDs *this, const SearchIDs *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  v4 = *(a2 + 3);
  *(this + 4) = 0;
  *(this + 3) = v4;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  v5 = *(a2 + 56);
  *(this + 72) = *(a2 + 72);
  *(this + 56) = v5;
}

void std::vector<_MSVSQLVariant>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xF0F0F0F0F0F0F0F1 * (v4 - *a1);
    v8 = v7 + 1;
    if (v7 + 1 >= 0xF0F0F0F0F0F0F10)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xF0F0F0F0F0F0F0F1 * (v3 - *a1);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x787878787878787)
    {
      v10 = 0xF0F0F0F0F0F0F0FLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_MSVSQLVariant>>(v10);
    }

    v11 = 17 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *v11 = v12;
    v6 = 17 * v7 + 17;
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
    *(v4 + 16) = *(a2 + 16);
    *v4 = v5;
    v6 = v4 + 17;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_MSVSQLVariant>>(unint64_t a1)
{
  if (a1 < 0xF0F0F0F0F0F0F10)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1A25BF264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = MPLibraryObjectDatabase;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A25C0624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose((v32 - 176), 8);

  _Block_object_dispose(&a28, 8);
  v29[2](v29);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34964(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25C0B3C(_Unwind_Exception *a1)
{
  v1[2](v1);

  _Unwind_Resume(a1);
}

void sub_1A25C0E5C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A25C1310(_Unwind_Exception *a1)
{
  v2[2](v2);

  _Unwind_Resume(a1);
}

void sub_1A25C1488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _MPServerObjectDatabaseProgressiveContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A25C2A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a49, 8);
  if (__p)
  {
    a56 = __p;
    operator delete(__p);
  }

  a49 = &a58;
  std::vector<-[MPServerObjectDatabase updateIdentifiersForResults:options:]::Node>::__destroy_vector::operator()[abi:ne200100](&a49);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__193(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__194(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<-[MPServerObjectDatabase updateIdentifiersForResults:options:]::Node>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1A25C33AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (**a10)(void), void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  a10[2](a10);

  _Unwind_Resume(a1);
}

void sub_1A25C42D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__hash_table<std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>>>::~__hash_table(&a69);

  _Unwind_Resume(a1);
}

void sub_1A25C4714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,-[MPServerObjectDatabase updateTokensForResults:]::PersonNode>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,-[MPServerObjectDatabase updateTokensForResults:]::PersonNode>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<-[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1A25C54E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (**a17)(void), uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *__p, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  a17[2](a17);

  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

void std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * {__strong}*,NSString * {__strong}*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unint64_t _MSV_XXH_XXH64_digest(void *a1)
{
  if (*a1 < 0x20uLL)
  {
    v1 = a1[3] + 0x27D4EB2F165667C5;
  }

  else
  {
    v1 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(a1[2], 57) + __ROR8__(a1[1], 63) + __ROR8__(a1[3], 52) + __ROR8__(a1[4], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[2], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[3], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[4], 33))) - 0x7A1435883D4D519DLL;
  }

  v2 = v1 + *a1;
  v3 = a1 + 5;
  v4 = *a1 & 0x1FLL;
  if (v4 >= 8)
  {
    do
    {
      v5 = *v3++;
      v2 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v5, 33)) ^ v2, 37);
      v4 -= 8;
    }

    while (v4 > 7);
  }

  if (v4 >= 4)
  {
    v6 = *v3;
    v3 = (v3 + 4);
    v2 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v6) ^ v2, 41);
    v4 -= 4;
  }

  for (; v4; --v4)
  {
    v7 = *v3;
    v3 = (v3 + 1);
    v2 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v7) ^ v2, 53);
  }

  v8 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) >> 29));
  return v8 ^ HIDWORD(v8);
}

void sub_1A25C8214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1A25C9590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MPServerObjectDatabase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A25CBFDC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1A25CD554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, _Unwind_Exception *exception_object, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21)
{
  if (a20)
  {

    if (!a21)
    {
      goto LABEL_7;
    }
  }

  else if (!a21)
  {
LABEL_7:

    _Unwind_Resume(a1);
  }

  goto LABEL_7;
}

void sub_1A25CF160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _MPServerObjectDatabaseImporter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A25CFB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35967(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _MPServerObjectDatabaseMetadataImportEnumerateObjects(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v67 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v49 = a3;
  v16 = a4;
  v48 = a5;
  v47 = a6;
  v17 = a8;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  }

  v19 = v18;
  if (_NSIsNSArray())
  {
    v45 = v15;
    v20 = v15;
    v21 = v20;
    v44 = v16;
    if (a2)
    {
      v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v20, "count")}];
    }

    else
    {
      v22 = 0;
    }

    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v62 = 0u;
    v27 = v21;
    v28 = [v27 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = *v63;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v63 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v62 + 1) + 8 * i);
          if (a2)
          {
            v61 = 0;
            _MPServerObjectDatabaseMetadataImportEnumerateObjects(v33, &v61, v49, v19, v48, v47, v30, v17);
            v34 = v61;
            [v22 addObject:v34];
          }

          else
          {
            _MPServerObjectDatabaseMetadataImportEnumerateObjects(v33, 0, v49, v19, v48, v47, v30, v17);
          }

          ++v30;
        }

        v29 = [v27 countByEnumeratingWithState:&v62 objects:v66 count:16];
      }

      while (v29);
    }

    if (a2)
    {
      v35 = v22;
      *a2 = v22;
    }

    v16 = v44;
    v15 = v45;
  }

  else if (_NSIsNSDictionary())
  {
    v23 = v15;
    v24 = v23;
    v46 = v15;
    if (a2)
    {
      v25 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v23, "count")}];
    }

    else
    {
      v25 = 0;
    }

    v36 = [v24 objectForKeyedSubscript:v49];
    if ([v36 length] && objc_msgSend(v24, "count") >= 3)
    {
      v60 = 0;
      v43 = v24;
      v37 = v17[2](v17, v36, v24, v19, v48, v47, a7, &v60);
      v38 = v60;
      [v25 setObject:v38 forKeyedSubscript:@"🌚_identifierSet"];
      if (v37)
      {
        [v25 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"🌚_didImportObject"];
      }

      v24 = v43;
    }

    else
    {
      v38 = 0;
    }

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = ___MPServerObjectDatabaseMetadataImportEnumerateObjects_block_invoke;
    v50[3] = &unk_1E767C4F8;
    v39 = v25;
    v51 = v39;
    v52 = v19;
    v59 = a2 != 0;
    v53 = v49;
    v54 = v36;
    v55 = v48;
    v40 = v38;
    v56 = v40;
    v57 = v47;
    v58 = v17;
    v41 = v36;
    [v24 enumerateKeysAndObjectsUsingBlock:v50];
    if (a2)
    {
      v42 = v39;
      *a2 = v39;
    }

    v15 = v46;
  }

  else if (a2)
  {
    v26 = v15;
    *a2 = v15;
  }
}

void sub_1A25D5880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A25D7970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36416(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MusicURLQueryItemLanguageWithURLBag(void *a1)
{
  v1 = [a1 stringForBagKey:*MEMORY[0x1E69E4300]];
  if (_NSIsNSString() && [v1 length])
  {
    v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"l" value:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id MusicURLComponentsWithURLBag(void *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [a1 dictionaryForBagKey:*MEMORY[0x1E69E4308]];
  v4 = v3;
  if (v3)
  {
    v5 = [(__CFString *)v3 objectForKey:@"ampMusicAPIDomains"];
    if (_NSIsNSDictionary())
    {
      v6 = @"default";
      if (a2)
      {
        v6 = @"listenNow";
      }

      v7 = v6;
      v8 = [v5 objectForKey:v7];
      if (_NSIsNSString())
      {
        v9 = objc_opt_new();
        [v9 setScheme:@"https"];
        [v9 setHost:v8];
      }

      else
      {
        v10 = os_log_create("com.apple.amp.mediaplayer", "Default");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = 138543618;
          v13 = v7;
          v14 = 2114;
          v15 = v5;
          _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "No host found for API domain requested (%{public}@): %{public}@", &v12, 0x16u);
        }

        v9 = 0;
      }
    }

    else
    {
      v8 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = 138543362;
        v13 = v4;
        _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "No domains in music common dictionary of bag, can't generate URL: %{public}@", &v12, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "No music subscription dictionary in bag, can't get subscription properties to generate URL", &v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

id MusicURLWithPathUsingURLBag(void *a1, void *a2, int a3)
{
  v5 = MEMORY[0x1E695DFF8];
  v6 = a1;
  v7 = MusicURLComponentsWithURLBag(a2, a3);
  v8 = [v7 URL];
  v9 = [v5 URLWithString:v6 relativeToURL:v8];

  return v9;
}

void sub_1A25D8DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36751(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MPStoreContentReporterURLOperation(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E69E43A0]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MPStoreContentReporterURLOperation_block_invoke;
  v12[3] = &unk_1E767C670;
  v13 = 0;
  v14 = v5;
  v16 = a2;
  v15 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 initWithStartHandler:v12];

  return v10;
}

void __MPStoreContentReporterURLOperation_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v5 = [v4 ic_URLByAppendingQueryParameters:?];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v5];
  v8 = v7;
  if (*(a1 + 56))
  {
    v9 = @"GET";
  }

  else
  {
    v9 = @"POST";
  }

  [v7 setHTTPMethod:v9];
  v10 = objc_alloc(MEMORY[0x1E69E4618]);
  v11 = [MEMORY[0x1E69E4680] activeAccount];
  v12 = [v10 initWithIdentity:v11];

  v13 = [objc_alloc(MEMORY[0x1E69E4620]) initWithURLRequest:v8 requestContext:v12];
  v14 = [MEMORY[0x1E69E4678] defaultSession];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __MPStoreContentReporterURLOperation_block_invoke_2;
  v17[3] = &unk_1E767D2C8;
  v15 = *(a1 + 48);
  v18 = v3;
  v19 = v15;
  v16 = v3;
  [v14 enqueueDataRequest:v13 withCompletionHandler:v17];
}

void __MPStoreContentReporterURLOperation_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 parsedBodyDictionary];
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) finishWithError:v5];
}

void sub_1A25DBBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A25DBDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__37123(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25DC108(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1A25DC68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A25E09C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A25E1110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37622(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25E1EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A25E2458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A25E296C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_1A25E30F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37772(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25E337C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A25E38C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1A25E7D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2 == 2)
  {
    v21 = __cxa_begin_catch(exception_object);
    v22 = MEMORY[0x1E695DF30];
    v23 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v21 + 24))(&__p, v21, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v25 = [v23 stringWithUTF8String:p_p];
    v26 = [v22 exceptionWithName:@"MediaPlatform" reason:v25 userInfo:0];
    v27 = v26;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v26);
  }

  if (a2 == 1)
  {
    v28 = __cxa_begin_catch(exception_object);
    v29 = MEMORY[0x1E695DF30];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v28 + 16))(v28)];
    v31 = [v29 exceptionWithName:*MEMORY[0x1E695D920] reason:v30 userInfo:0];
    v32 = v31;

    objc_exception_throw(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__38435(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25EC910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38634(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25F7A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39977(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25F9310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40153(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25FC47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__40917(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A25FD6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41021(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A25FDC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__81(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A25FE0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v15 + 64));
  objc_destroyWeak((v15 + 56));
  objc_destroyWeak((v17 - 192));
  objc_destroyWeak((v17 - 184));
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A25FEA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v15 + 64));
  objc_destroyWeak((v15 + 56));
  objc_destroyWeak((v17 - 192));
  objc_destroyWeak((v17 - 184));
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

id MPStoreItemMetadataCacheableStorefrontForStorefront(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@" "];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v1;
  }

  else
  {
    v3 = [v1 substringToIndex:v2];
  }

  v4 = v3;

  return v4;
}

void sub_1A2601008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41387(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A26038F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2603A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41761(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::__tree<std::__value_type<long,MPIdentifierSet * {__strong}>,std::__map_value_compare<long,std::__value_type<long,MPIdentifierSet * {__strong}>,std::less<long>,true>,std::allocator<std::__value_type<long,MPIdentifierSet * {__strong}>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long,MPIdentifierSet * {__strong}>,std::__map_value_compare<long,std::__value_type<long,MPIdentifierSet * {__strong}>,std::less<long>,true>,std::allocator<std::__value_type<long,MPIdentifierSet * {__strong}>>>::destroy(*a1);
    std::__tree<std::__value_type<long,MPIdentifierSet * {__strong}>,std::__map_value_compare<long,std::__value_type<long,MPIdentifierSet * {__strong}>,std::less<long>,true>,std::allocator<std::__value_type<long,MPIdentifierSet * {__strong}>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void *std::__tree<std::__value_type<long,MPIdentifierSet * {__strong}>,std::__map_value_compare<long,std::__value_type<long,MPIdentifierSet * {__strong}>,std::less<long>,true>,std::allocator<std::__value_type<long,MPIdentifierSet * {__strong}>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<long,MPIdentifierSet * {__strong}>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long,MPIdentifierSet * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1A2607AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2607CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A2607E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2608034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42263(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A26085E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A260ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A260AEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A260B08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A260B270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id _MPKeyPathValueTransformFirstKeyPath(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 firstObject];
  v5 = [v3 valueForKeyPath:v4];

  return v5;
}

id _MPKeyPathValueTransformFirstNonnullKeyPath(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 valueForKeyPath:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t _MPKeyPathValueTransformHasNonnullValue(void *a1, void *a2)
{
  v2 = _MPKeyPathValueTransformFirstNonnullKeyPath(a1, a2);
  v3 = v2 != 0;

  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithBool:v3];
}

uint64_t __translatorMap(void)
{
  {
    operator new();
  }

  return __translatorMap(void)::__translatorMap;
}

void *std::__hash_table<std::__hash_value_type<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>,std::__unordered_map_hasher<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,void *>>>::operator()[abi:ne200100](char a1, id *a2)
{
  if (a1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      do
      {
        v4 = *v3;

        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *(a2 + 24);
    *(a2 + 24) = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

id _MPMediaKitDateFromString(void *a1)
{
  v1 = a1;
  if (_MPMediaKitDateFromString_sOnceToken != -1)
  {
    dispatch_once(&_MPMediaKitDateFromString_sOnceToken, &__block_literal_global_221);
  }

  if (_NSIsNSString())
  {
    v2 = [_MPMediaKitDateFromString_mediaKitDateFormatter dateFromString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id MPTranslatorUtilitiesTransformMillisecondsToSeconds(void *a1, void *a2)
{
  v2 = _MPKeyPathValueTransformFirstNonnullKeyPath(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = v2;
    if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (v6 = 0.0, (objc_opt_respondsToSelector()))
    {
      [v5 doubleValue];
      v6 = v7;
    }

    v8 = [v4 numberWithDouble:v6 / 1000.0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id MPMediaKitEntityTranslatorTransformArtwork(void *a1, void *a2)
{
  v2 = _MPKeyPathValueTransformFirstNonnullKeyPath(a1, a2);
  if (_NSIsNSArray())
  {
    v3 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseArray:v2];
  }

  else
  {
    if (!_NSIsNSDictionary())
    {
LABEL_8:

      v5 = 0;
      goto LABEL_9;
    }

    v3 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseDictionary:v2];
  }

  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = [MPStoreArtworkRequestToken tokenWithImageArtworkInfo:v3];

  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __MPMediaKitEntityTranslatorTransformArtwork_block_invoke;
    aBlock[3] = &unk_1E767E078;
    v5 = v5;
    v10 = v5;
    v6 = _Block_copy(aBlock);

    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = _Block_copy(v6);

  return v7;
}

MPArtworkCatalog *__MPMediaKitEntityTranslatorTransformArtwork_block_invoke(uint64_t a1)
{
  v2 = [MPArtworkCatalog alloc];
  v3 = *(a1 + 32);
  v4 = +[MPStoreArtworkDataSource sharedStoreArtworkDataSource];
  v5 = [(MPArtworkCatalog *)v2 initWithToken:v3 dataSource:v4];

  return v5;
}

id _MPMediaKitDateAndTimeFromString(void *a1)
{
  v1 = a1;
  if (_MPMediaKitDateAndTimeFromString_sOnceToken != -1)
  {
    dispatch_once(&_MPMediaKitDateAndTimeFromString_sOnceToken, &__block_literal_global_471);
  }

  if (_NSIsNSString())
  {
    v2 = [_MPMediaKitDateAndTimeFromString_mediaKitDateAndTimeFormatter dateFromString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _MPMediaKitCalendar()
{
  if (_MPMediaKitCalendar_sOnceToken != -1)
  {
    dispatch_once(&_MPMediaKitCalendar_sOnceToken, &__block_literal_global_43249);
  }

  v1 = _MPMediaKitCalendar_sGMTCalendar;

  return v1;
}

void sub_1A2617854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a34, 8);

  _Block_object_dispose(&a60, 8);
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(&a66);
  if (a2 == 2)
  {
    v71 = __cxa_begin_catch(a1);
    v72 = MEMORY[0x1E695DF30];
    v73 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a60);
    (*(*v71 + 24))(&__p, v71, &a60);
    if (a48 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v75 = [v73 stringWithUTF8String:p_p];
    v76 = [v72 exceptionWithName:@"MediaPlatform" reason:v75 userInfo:0];
    v77 = v76;

    if (a48 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v76);
  }

  if (a2 == 1)
  {
    v78 = __cxa_begin_catch(a1);
    v79 = MEMORY[0x1E695DF30];
    v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v78 + 16))(v78)];
    v81 = [v79 exceptionWithName:*MEMORY[0x1E695D920] reason:v80 userInfo:0];
    v82 = v81;

    objc_exception_throw(v81);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__168(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mlcore::ModelPropertyBase *> const&>(a1, i + 2);
  }

  return a1;
}

uint64_t _MPMLGetForeignPropertyMap(uint64_t result, ModelPropertyBase *a2, uint64_t a3)
{
  v3 = result;
  if (a2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 1065353216;
    v4 = *(a3 + 16);
    if (!v4)
    {
      return result;
    }

    v5 = a2;
    while (1)
    {
      Property = MPMediaLibraryGetProperty(v5, v4[5]);
      v7 = std::__string_hash<char>::operator()[abi:ne200100]((v4 + 2));
      v8 = v7;
      v9 = v3[1];
      if (!*&v9)
      {
        goto LABEL_20;
      }

      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v10.u32[0];
      if (v10.u32[0] > 1uLL)
      {
        v12 = v7;
        if (v7 >= *&v9)
        {
          v12 = v7 % *&v9;
        }
      }

      else
      {
        v12 = (*&v9 - 1) & v7;
      }

      v13 = *(*v3 + 8 * v12);
      if (!v13 || (v14 = *v13) == 0)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        v15 = v14[1];
        if (v15 == v8)
        {
          break;
        }

        if (v11 > 1)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v12)
        {
          goto LABEL_20;
        }

LABEL_19:
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      result = std::equal_to<std::string>::operator()[abi:ne200100](v14 + 2, v4 + 2);
      if ((result & 1) == 0)
      {
        goto LABEL_19;
      }

      v5 = a2;
      v14[5] = Property;
      v4 = *v4;
      if (!v4)
      {
        return result;
      }
    }
  }

  return std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(result, a3);
}

void sub_1A2617FE8(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](0, v2);
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase * const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1A2618798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(&a16);

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(void **__p)
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

BOOL std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mlcore::ModelPropertyBase *> const&>(void *a1, void *a2)
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

void sub_1A2618DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, void *a30, void *a31)
{
  if (a2 == 2)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = MEMORY[0x1E695DF30];
    v40 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a10);
    (*(*v38 + 24))(&__p, v38, &a10);
    if (a22 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v42 = [v40 stringWithUTF8String:p_p];
    v43 = [v39 exceptionWithName:@"MediaPlatform" reason:v42 userInfo:0];
    v44 = v43;

    if (a22 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v43);
  }

  if (a2 == 1)
  {
    v45 = __cxa_begin_catch(a1);
    v46 = MEMORY[0x1E695DF30];
    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v45 + 16))(v45)];
    v48 = [v46 exceptionWithName:*MEMORY[0x1E695D920] reason:v47 userInfo:0];
    v49 = v48;

    objc_exception_throw(v48);
  }

  _Unwind_Resume(a1);
}

void sub_1A2619328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  _Block_object_dispose(&a39, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__163(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A261A218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2 == 2)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = MEMORY[0x1E695DF30];
    v35 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a12);
    (*(*v33 + 24))(&__p, v33, &a12);
    if (a26 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v37 = [v35 stringWithUTF8String:p_p];
    v38 = [v34 exceptionWithName:@"MediaPlatform" reason:v37 userInfo:0];
    v39 = v38;

    if (a26 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v38);
  }

  if (a2 == 1)
  {
    v40 = __cxa_begin_catch(a1);
    v41 = MEMORY[0x1E695DF30];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v40 + 16))(v40)];
    v43 = [v41 exceptionWithName:*MEMORY[0x1E695D920] reason:v42 userInfo:0];
    v44 = v43;

    objc_exception_throw(v43);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::unordered_map<std::string,mlcore::ModelPropertyBase *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1498CA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A261A7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2 == 2)
  {
    v32 = __cxa_begin_catch(a1);
    v33 = MEMORY[0x1E695DF30];
    v34 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a15);
    (*(*v32 + 24))(&__p, v32, &a15);
    if (a27 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v36 = [v34 stringWithUTF8String:p_p];
    v37 = [v33 exceptionWithName:@"MediaPlatform" reason:v36 userInfo:0];
    v38 = v37;

    if (a27 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v37);
  }

  if (a2 == 1)
  {
    v39 = __cxa_begin_catch(a1);
    v40 = MEMORY[0x1E695DF30];
    v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v39 + 16))(v39)];
    v42 = [v40 exceptionWithName:*MEMORY[0x1E695D920] reason:v41 userInfo:0];
    v43 = v42;

    objc_exception_throw(v42);
  }

  _Unwind_Resume(a1);
}

void sub_1A261C434(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::lock);

  _Unwind_Resume(a1);
}

void sub_1A261CC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (a2 == 2)
  {
    v45 = __cxa_begin_catch(a1);
    v46 = MEMORY[0x1E695DF30];
    v47 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a17);
    (*(*v45 + 24))(&__p, v45, &a17);
    if (a29 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v49 = [v47 stringWithUTF8String:p_p];
    v50 = [v46 exceptionWithName:@"MediaPlatform" reason:v49 userInfo:0];
    v51 = v50;

    if (a29 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v50);
  }

  if (a2 == 1)
  {
    v52 = __cxa_begin_catch(a1);
    v53 = MEMORY[0x1E695DF30];
    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v52 + 16))(v52)];
    v55 = [v53 exceptionWithName:*MEMORY[0x1E695D920] reason:v54 userInfo:0];
    v56 = v55;

    objc_exception_throw(v55);
  }

  _Unwind_Resume(a1);
}

void sub_1A261CE5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  __cxa_end_catch();

  JUMPOUT(0x1A261CEC4);
}

void sub_1A261CEB0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1A261D504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a2 == 2)
  {
    v45 = __cxa_begin_catch(a1);
    v46 = MEMORY[0x1E695DF30];
    v47 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a19);
    (*(*v45 + 24))(&__p, v45, &a19);
    if (a31 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v49 = [v47 stringWithUTF8String:p_p];
    v50 = [v46 exceptionWithName:@"MediaPlatform" reason:v49 userInfo:0];
    v51 = v50;

    if (a31 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v50);
  }

  if (a2 == 1)
  {
    v52 = __cxa_begin_catch(a1);
    v53 = MEMORY[0x1E695DF30];
    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v52 + 16))(v52)];
    v55 = [v53 exceptionWithName:*MEMORY[0x1E695D920] reason:v54 userInfo:0];
    v56 = v55;

    objc_exception_throw(v55);
  }

  _Unwind_Resume(a1);
}

void sub_1A261D74C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  __cxa_end_catch();

  JUMPOUT(0x1A261D7B4);
}

void sub_1A261D7A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1A261DCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A261E79C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  v49 = STACK[0x278];
  if (STACK[0x278])
  {
    STACK[0x280] = v49;
    operator delete(v49);
  }

  v50 = *(a24 + 8);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (a2 == 2)
  {
    v51 = __cxa_begin_catch(a1);
    v52 = MEMORY[0x1E695DF30];
    v53 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a45);
    (*(*v51 + 24))(&STACK[0x278], v51, &a45);
    if (SLOBYTE(STACK[0x28F]) >= 0)
    {
      v54 = &STACK[0x278];
    }

    else
    {
      v54 = STACK[0x278];
    }

    v55 = [v53 stringWithUTF8String:v54];
    v56 = [v52 exceptionWithName:@"MediaPlatform" reason:v55 userInfo:0];
    v57 = v56;

    if (SLOBYTE(STACK[0x28F]) < 0)
    {
      operator delete(STACK[0x278]);
    }

    objc_exception_throw(v56);
  }

  if (a2 == 1)
  {
    v58 = __cxa_begin_catch(a1);
    v59 = MEMORY[0x1E695DF30];
    v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v58 + 16))(v58)];
    v61 = [v59 exceptionWithName:*MEMORY[0x1E695D920] reason:v60 userInfo:0];
    v62 = v61;

    objc_exception_throw(v61);
  }

  _Unwind_Resume(a1);
}

void sub_1A261EC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16)
{
  __cxa_end_catch();

  JUMPOUT(0x1A261ECE8);
}

void sub_1A261ECD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__43576(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__43577(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1A261F0E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A261F0C0);
}

__n128 __Block_byref_object_copy__127(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1A261F5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = (v28 - 128);
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100](&a23);

  _Unwind_Resume(a1);
}

void std::vector<mlcore::MultiSortDescriptor>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 56;
      v7 = v4 - 56;
      v8 = v4 - 56;
      do
      {
        v9 = *v8;
        v8 -= 56;
        (*v9)(v7);
        v6 -= 56;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::MultiSortDescriptor>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<mlcore::MultiSortDescriptor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 56);
    *(a1 + 16) = i - 56;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<mlcore::MultiSortDescriptor>,mlcore::MultiSortDescriptor*>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = a3;
    v5 = result;
    v6 = a3 + 8;
    v7 = v5;
    do
    {
      *(v6 - 8) = MEMORY[0x1E69B0830] + 16;
      v8 = std::__hash_table<std::__hash_value_type<mlcore::EntityClass *,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,mlcore::ModelPropertyBase *>,std::hash<mlcore::EntityClass *>,std::equal_to<mlcore::EntityClass *>,true>,std::__unordered_map_equal<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,mlcore::ModelPropertyBase *>,std::equal_to<mlcore::EntityClass *>,std::hash<mlcore::EntityClass *>,true>,std::allocator<std::__hash_value_type<mlcore::EntityClass *,mlcore::ModelPropertyBase *>>>::__hash_table(v6, v7 + 1);
      *(v8 + 40) = *(v7 + 12);
      v7 += 7;
      v6 = v8 + 56;
      v3 += 56;
    }

    while (v7 != a2);
    v9 = v5;
    v10 = v5;
    do
    {
      v11 = *v10;
      v10 += 7;
      result = (*v11)(v5);
      v9 += 7;
      v5 = v10;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<mlcore::EntityClass *,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,mlcore::ModelPropertyBase *>,std::hash<mlcore::EntityClass *>,std::equal_to<mlcore::EntityClass *>,true>,std::__unordered_map_equal<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,mlcore::ModelPropertyBase *>,std::equal_to<mlcore::EntityClass *>,std::hash<mlcore::EntityClass *>,true>,std::allocator<std::__hash_value_type<mlcore::EntityClass *,mlcore::ModelPropertyBase *>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::unordered_map<mlcore::EntityClass *,mlcore::ModelPropertyBase *>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
    v7 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v6 >> 47) ^ v6);
    v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    v9 = *(a1 + 8);
    if (!*&v9)
    {
      goto LABEL_18;
    }

    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= *&v9)
      {
        v11 = v8 % *&v9;
      }
    }

    else
    {
      v11 = v8 & (*&v9 - 1);
    }

    v12 = *(*a1 + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        break;
      }

      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v9)
        {
          v14 %= *&v9;
        }
      }

      else
      {
        v14 &= *&v9 - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_18;
      }

LABEL_17:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    if (v13[2] != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t std::vector<mlcore::MultiSortDescriptor>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if ((v8 + 1) > 0x492492492492492)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x249249249249249)
    {
      v11 = 0x492492492492492;
    }

    else
    {
      v11 = v10;
    }

    v21 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::MultiSortDescriptor>>(v11);
    }

    v12 = 56 * v8;
    v18 = 0;
    v19 = v12;
    v20 = v12;
    *v12 = MEMORY[0x1E69B0830] + 16;
    std::unordered_map<mlcore::EntityClass *,mlcore::ModelPropertyBase *>::unordered_map(v12 + 8, a2 + 8);
    *(v12 + 48) = *(a2 + 48);
    *&v20 = v20 + 56;
    v13 = a1[1];
    v14 = v19 + *a1 - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<mlcore::MultiSortDescriptor>,mlcore::MultiSortDescriptor*>(*a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    v16 = a1[2];
    v17 = v20;
    *(a1 + 1) = v20;
    *&v20 = v15;
    *(&v20 + 1) = v16;
    v18 = v15;
    v19 = v15;
    result = std::__split_buffer<mlcore::MultiSortDescriptor>::~__split_buffer(&v18);
    v7 = v17;
  }

  else
  {
    *v5 = MEMORY[0x1E69B0830] + 16;
    result = std::unordered_map<mlcore::EntityClass *,mlcore::ModelPropertyBase *>::unordered_map(v5 + 8, a2 + 8);
    *(v5 + 48) = *(a2 + 48);
    v7 = v5 + 56;
    a1[1] = v5 + 56;
  }

  a1[1] = v7;
  return result;
}

void sub_1A2620038(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1A2620250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mlcore::ModelPropertyBase *> const&>(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

void sub_1A26203AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, void *a2)
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

void sub_1A2620A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_1A2620CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(void *a1, void *a2)
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

void sub_1A2620FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va, a7);

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t __MPClassToTranslator(void)
{
  {
    operator new();
  }

  return __MPClassToTranslator(void)::__MPClassToTranslator;
}

void *std::__hash_table<std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}